uint64_t sub_24E109014@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = sub_24E346038();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FriendRequestCell(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E46B0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  sub_24E10B91C(v1, v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FriendRequestCell);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_24E10BC94(v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for FriendRequestCell);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E46B8);
  sub_24E10D0C4(&unk_27F1E46C0);
  sub_24E346BD8();
  sub_24E346028();
  sub_24E10D6AC(&unk_27F1E46C8);
  sub_24E103BB8(&unk_27F1E46D0);
  sub_24E346588();
  (*(v3 + 8))(v5, v2);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_24E109380(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_24E343288();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_24E348998();

  v16 = 0xD00000000000001FLL;
  v17 = 0x800000024E3A78E0;
  v9 = [*(a1 + 56) playerID];
  v10 = sub_24E347CF8();
  v12 = v11;

  MEMORY[0x25303E950](v10, v12);

  sub_24E343268();

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return sub_24E10CF40(v4, &qword_27F1DEFB8);
  }

  (*(v6 + 32))(v8, v4, v5);
  v14 = [objc_opt_self() sharedApplication];
  v15 = sub_24E343228();
  [v14 openURL_];

  return (*(v6 + 8))(v8, v5);
}

void sub_24E1095D0(uint64_t a1)
{
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FriendRequestCell(0);
  sub_24E32E900(1, 19, 1, 34, 9, a1 + *(v2 + 36));
  sub_24E0DFD5C(*(a1 + 56));
}

uint64_t sub_24E109668(uint64_t a1)
{
  v2 = type metadata accessor for FriendRequestCell(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  sub_24E10B91C(a1, v5, type metadata accessor for FriendRequestCell);
  sub_24E348068();
  v10 = sub_24E348058();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_24E10BC94(v5, v12 + v11, type metadata accessor for FriendRequestCell);
  sub_24DFC8700(0, 0, v8, &unk_24E379200, v12);
}

uint64_t sub_24E109824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_24E348068();
  v4[7] = sub_24E348058();
  v6 = sub_24E347FF8();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_24E1098BC, v6, v5);
}

uint64_t sub_24E1098BC()
{
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for FriendRequestCell(0);
  v0[10] = v2;
  sub_24E32E900(1, 19, 1, 33, 9, v1 + *(v2 + 36));
  v3 = *(v1 + 56);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_24E1099B8;

  return sub_24E0DEED0(v3);
}

uint64_t sub_24E1099B8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_24E109B54;
  }

  else
  {
    v5 = sub_24E109AF4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E109AF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E109B54()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);

  v4 = (v3 + *(v2 + 40));
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v0 + 16) = *v4;
  *(v0 + 24) = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B88();
  v7 = *(v0 + 104);
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  *(v0 + 105) = (v7 & 1) == 0;
  sub_24E346B98();

  v8 = *(v0 + 8);

  return v8();
}

void *sub_24E109C58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E347CB8();
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();

  v5 = sub_24E347CF8();
  v7 = v6;

  __src[0] = v5;
  __src[1] = v7;
  sub_24DF90C4C();
  v8 = sub_24E3464E8();
  v10 = v9;
  LOBYTE(v4) = v11;
  v13 = v12;
  sub_24E346E28();
  sub_24E3457F8();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v13;
  return memcpy((a1 + 32), __src, 0x70uLL);
}

uint64_t sub_24E109D7C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4588);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25[-v5];
  v26 = v1;
  sub_24E343AA8();
  v30 = sub_24E343A28();
  v31 = v7;
  sub_24DF90C4C();
  v8 = sub_24E3464E8();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_24E346208();
  v16 = sub_24E346228();
  sub_24E346228();
  if (sub_24E346228() != v15)
  {
    v16 = sub_24E346228();
  }

  sub_24E3451B8();
  v29 = v12 & 1;
  v28 = 0;
  v30 = v8;
  v31 = v10;
  v32 = v12 & 1;
  v33 = v14;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  v38 = v20;
  v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF880);
  sub_24E10C988();
  sub_24E10D0C4(&qword_27F1DF888);
  sub_24E346D38();
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for PlayerCardTheme();
  v22 = *(__swift_project_value_buffer(v21, qword_27F20BF00) + 64);
  v27 = sub_24E346948();
  v23 = sub_24E346C48();
  (*(v4 + 32))(a1, v6, v3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E45B0);
  *(a1 + *(result + 36)) = v23;
  return result;
}

uint64_t sub_24E10A024@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4450);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  sub_24E346D58();
  swift_getKeyPath();
  sub_24E346D78();

  (*(v3 + 8))(v5, v2);
  sub_24E346C28();
  sub_24E346D48();
  v6 = sub_24E0DE1CC();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4590);
  v8 = a1 + *(result + 36);
  *v8 = v6 & 1;
  *(v8 + 8) = sub_24E10A254;
  *(v8 + 16) = 0;
  return result;
}

uint64_t sub_24E10A1E0@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  sub_24E343AA8();
  a1();
  sub_24DF90C4C();
  result = sub_24E3464E8();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

void sub_24E10A254(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = objc_opt_self();
  v3 = [v2 shared];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v3 inboxContactsOnly];

  if (v1 == v5)
  {
    return;
  }

  v6 = [v2 shared];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 setInboxContactsOnly:v1 refresh:1];
}

uint64_t sub_24E10A33C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4480);
  sub_24E10D6AC(&unk_27F1E4488);
  sub_24E346D28();
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for PlayerCardTheme();
  v3 = *(__swift_project_value_buffer(v2, qword_27F20BF00) + 64);
  sub_24E346948();
  v4 = sub_24E346C48();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4490);
  *(a1 + *(result + 36)) = v4;
  return result;
}

uint64_t sub_24E10A46C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4498);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v15[-v8];
  v10 = sub_24E345D08();
  LOBYTE(v18[0]) = 1;
  sub_24E10A67C(v16);
  *&v15[7] = v16[0];
  *&v15[23] = v16[1];
  *&v15[39] = v16[2];
  *&v15[55] = v16[3];
  v11 = v18[0];
  *v9 = sub_24E345BF8();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E44A0);
  sub_24E10A888(a1, &v9[*(v12 + 44)]);
  sub_24DF95B98(v9, v6, &qword_27F1E4498);
  v17[0] = v10;
  v17[1] = 0;
  LOBYTE(v17[2]) = v11;
  memcpy(&v17[2] + 1, v15, 0x47uLL);
  memcpy(a2, v17, 0x58uLL);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E44A8);
  sub_24DF95B98(v6, a2 + *(v13 + 48), &qword_27F1E4498);
  sub_24DF95B98(v17, v18, &qword_27F1E3FE8);
  sub_24E10CF40(v9, &qword_27F1E4498);
  sub_24E10CF40(v6, &qword_27F1E4498);
  v18[0] = v10;
  v18[1] = 0;
  v19 = v11;
  memcpy(v20, v15, sizeof(v20));
  return sub_24E10CF40(v18, &qword_27F1E3FE8);
}

uint64_t sub_24E10A67C@<X0>(uint64_t a1@<X8>)
{
  sub_24E343AA8();
  sub_24E3438A8();
  sub_24DF90C4C();
  v2 = sub_24E3464E8();
  v4 = v3;
  v6 = v5;
  v7 = sub_24E346498();
  v30 = v8;
  v31 = v7;
  v29 = v9;
  v32 = v10;
  sub_24DFA92EC(v2, v4, v6 & 1);

  sub_24E343968();
  v11 = sub_24E3464E8();
  v13 = v12;
  v15 = v14;
  sub_24E346378();
  v16 = sub_24E3464B8();
  v18 = v17;
  v20 = v19;

  sub_24DFA92EC(v11, v13, v15 & 1);

  sub_24E3469E8();
  v21 = sub_24E346468();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_24DFA92EC(v16, v18, v20 & 1);

  *a1 = v31;
  *(a1 + 8) = v30;
  *(a1 + 16) = v29 & 1;
  *(a1 + 24) = v32;
  *(a1 + 32) = v21;
  *(a1 + 40) = v23;
  *(a1 + 48) = v25 & 1;
  *(a1 + 56) = v27;
  sub_24DF82DD4(v31, v30, v29 & 1);

  sub_24DF82DD4(v21, v23, v25 & 1);

  sub_24DFA92EC(v21, v23, v25 & 1);

  sub_24DFA92EC(v31, v30, v29 & 1);
}

uint64_t sub_24E10A888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InviteFriendsSection(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E44B0);
  MEMORY[0x28223BE20](v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  sub_24E10B91C(a1, v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InviteFriendsSection);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_24E10BC94(v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for InviteFriendsSection);
  sub_24E346BD8();
  type metadata accessor for GameCenterSettings();
  v15 = sub_24DFF20B4();
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = (v15 & 1) == 0;
  v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0150) + 36)];
  *v18 = KeyPath;
  v18[1] = sub_24DFEB7E4;
  v18[2] = v17;
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for PlayerCardTheme();
  v20 = *(__swift_project_value_buffer(v19, qword_27F20BF00) + *(v19 + 36));
  v21 = sub_24E346948();
  v22 = swift_getKeyPath();
  v27[1] = v21;
  v23 = sub_24E3453E8();
  v24 = &v12[*(v7 + 36)];
  *v24 = v22;
  v24[1] = v23;
  sub_24DF95B98(v12, v9, &qword_27F1E44B0);
  sub_24DF95B98(v9, a2, &qword_27F1E44B0);
  v25 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E44B8) + 48);
  *v25 = 0;
  *(v25 + 8) = 1;
  sub_24E10CF40(v12, &qword_27F1E44B0);
  return sub_24E10CF40(v9, &qword_27F1E44B0);
}

uint64_t sub_24E10ABEC(uint64_t a1)
{
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for InviteFriendsSection(0);
  sub_24E32E900(1, 19, 1, 17, 0, a1 + *(v2 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DF720);
  return sub_24E346C68();
}

uint64_t sub_24E10ACB8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E347CB8();
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  sub_24DF90C4C();
  result = sub_24E3464E8();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_24E10AD80@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);

  v15[0] = v5;
  v15[1] = v6;
  v15[2] = sub_24E345708();
  LOBYTE(v15[3]) = sub_24E3461E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E43F8);
  sub_24E10BA7C();
  sub_24E10056C();
  sub_24E3467B8();

  v7 = sub_24E346E28();
  v9 = v8;
  sub_24E10AEE8(v3, v4, __src);
  memcpy(__dst, __src, 0x48uLL);
  __dst[9] = v7;
  __dst[10] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4410);
  memcpy((a1 + *(v10 + 36)), __dst, 0x58uLL);
  memcpy(v15, __src, 0x48uLL);
  v15[9] = v7;
  v15[10] = v9;
  sub_24DF95B98(__dst, v12, &qword_27F1E3F90);
  return sub_24E10CF40(v15, &qword_27F1E3F90);
}

void sub_24E10AEE8(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_24E345B68();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = a1;
    v24 = a1;
  }

  else
  {
    sub_24E100480(a1, 0);
    sub_24E348268();
    v11 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24DE73F34(a1, 0);
    (*(v7 + 8))(v9, v6);
    v10 = v24;
  }

  if (v10 == 1)
  {
    if (qword_27F1DE118 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for PlayerCardTheme();
    v13 = __swift_project_value_buffer(v12, qword_27F20BF00);
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    v17 = *(v13 + 32);
    v18 = *(v13 + 40);
    v19 = *(v13 + 48);
    v20 = *(v13 + 56);
    v21 = sub_24E345708();
    v22 = sub_24E3461E8();
    sub_24DFD7E3C(v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v21 = 0;
    v22 = 0;
    v20 = 255;
  }

  *a3 = v14;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16;
  *(a3 + 24) = v17;
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;
  *(a3 + 48) = v20;
  *(a3 + 56) = v21;
  *(a3 + 64) = v22;
}

uint64_t sub_24E10B118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E10C1A0();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24E10B17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E10C1A0();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24E10B1E0()
{
  sub_24E10C1A0();
  sub_24E3460C8();
  __break(1u);
}

unint64_t sub_24E10B210()
{
  result = qword_27F1E4350;
  if (!qword_27F1E4350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4350);
  }

  return result;
}

void sub_24E10B2A8()
{
  sub_24E10BFC4(319, &qword_27F1E3EB8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24E10BE04(319, &qword_27F1E3EC0, &type metadata for PresentationContext, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24E10BFC4(319, &qword_27F1E1170, type metadata accessor for GameCenterSettingsState, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for FriendRequestsDataSource();
        if (v3 <= 0x3F)
        {
          type metadata accessor for FriendSuggestionsDataSource();
          if (v4 <= 0x3F)
          {
            type metadata accessor for FriendSuggestionInvitationStateManager();
            if (v5 <= 0x3F)
            {
              sub_24E347638();
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

unint64_t sub_24E10B428()
{
  result = qword_27F1E4378;
  if (!qword_27F1E4378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4380);
    sub_24E1039E8();
    sub_24E103BB8(&unk_27F1E4328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4378);
  }

  return result;
}

uint64_t sub_24E10B4E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E10B524(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24E10B59C()
{
  sub_24E10BE04(319, &qword_27F1E3EC0, &type metadata for PresentationContext, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24E347638();
    if (v1 <= 0x3F)
    {
      type metadata accessor for FriendRequestsDataSource();
      if (v2 <= 0x3F)
      {
        type metadata accessor for FriendSuggestionsDataSource();
        if (v3 <= 0x3F)
        {
          type metadata accessor for FriendSuggestionInvitationStateManager();
          if (v4 <= 0x3F)
          {
            sub_24E10BE04(319, &qword_27F1DF470, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
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

unint64_t sub_24E10B734()
{
  result = qword_27F1E43D0;
  if (!qword_27F1E43D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E43A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E43A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4398);
    type metadata accessor for InviteFriendsView(255);
    sub_24E10D6AC(&unk_27F1E43C8);
    sub_24E103BB8(&unk_27F1DF608);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E43D0);
  }

  return result;
}

uint64_t sub_24E10B91C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

uint64_t sub_24E10B978(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_26();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_24E10BA7C()
{
  result = qword_27F1E4400;
  if (!qword_27F1E4400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E43F8);
    sub_24E10BB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4400);
  }

  return result;
}

unint64_t sub_24E10BB08()
{
  result = qword_27F1E4408;
  if (!qword_27F1E4408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4408);
  }

  return result;
}

unint64_t sub_24E10BB6C()
{
  result = qword_27F1E4420;
  if (!qword_27F1E4420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4418);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF830);
    sub_24E10D6AC(&qword_27F1DF868);
    swift_getOpaqueTypeConformance2();
    sub_24E10D6AC(&qword_27F1E0D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4420);
  }

  return result;
}

uint64_t sub_24E10BC94(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

void sub_24E10BD44()
{
  sub_24E10BE04(319, &qword_27F1E4438, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_24E347638();
    if (v1 <= 0x3F)
    {
      type metadata accessor for FriendSuggestionInvitationStateManager();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E10BE04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24E10BE7C()
{
  result = type metadata accessor for FriendRequestsDataSource();
  if (v1 <= 0x3F)
  {
    result = sub_24E347638();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_24E10BF28()
{
  sub_24E10BFC4(319, &qword_27F1E4468, type metadata accessor for FriendRequestsDataSource, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24E10BFC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24E10C038()
{
  result = qword_27F1E4470;
  if (!qword_27F1E4470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4410);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E43F8);
    sub_24E10BA7C();
    sub_24E10056C();
    swift_getOpaqueTypeConformance2();
    sub_24E10D6AC(&qword_27F1E4090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4470);
  }

  return result;
}

unint64_t sub_24E10C1A0()
{
  result = qword_27F1E4478;
  if (!qword_27F1E4478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4478);
  }

  return result;
}

uint64_t sub_24E10C228(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_4_5(v2);
  v4 = OUTLINED_FUNCTION_22_18(*(v3 + 80));

  return a2(v4);
}

unint64_t sub_24E10C298()
{
  result = qword_27F1E44E0;
  if (!qword_27F1E44E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E44D8);
    sub_24E10C324();
    sub_24E10C734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E44E0);
  }

  return result;
}

unint64_t sub_24E10C324()
{
  result = qword_27F1E44E8;
  if (!qword_27F1E44E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E44D0);
    sub_24E10C3A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E44E8);
  }

  return result;
}

unint64_t sub_24E10C3A8()
{
  result = qword_27F1E44F0;
  if (!qword_27F1E44F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E44F8);
    sub_24E10C460();
    sub_24E10D6AC(&qword_27F1DF4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E44F0);
  }

  return result;
}

unint64_t sub_24E10C460()
{
  result = qword_27F1E4500;
  if (!qword_27F1E4500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4508);
    sub_24E10C518();
    sub_24E10D6AC(&unk_27F1E4558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4500);
  }

  return result;
}

unint64_t sub_24E10C518()
{
  result = qword_27F1E4510;
  if (!qword_27F1E4510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4518);
    sub_24E10C5D0();
    sub_24E10D6AC(&unk_27F1E4548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4510);
  }

  return result;
}

unint64_t sub_24E10C5D0()
{
  result = qword_27F1E4520;
  if (!qword_27F1E4520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4528);
    sub_24E103BB8(&unk_27F1E4530);
    sub_24E10C6B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4520);
  }

  return result;
}

unint64_t sub_24E10C6B8()
{
  result = qword_27F1E4538;
  if (!qword_27F1E4538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4538);
  }

  return result;
}

unint64_t sub_24E10C734()
{
  result = qword_27F1E4568;
  if (!qword_27F1E4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4568);
  }

  return result;
}

unint64_t sub_24E10C788(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_3(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_23_20(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    sub_24E10D6AC(&qword_27F1DF4A8);
    OUTLINED_FUNCTION_7_38();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_24E10C81C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4580);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24DF95B98(a1, &v6 - v3, &qword_27F1E4580);
  return MEMORY[0x25303C520](v4);
}

uint64_t sub_24E10C8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for FriendRequestsList(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24E105EC0(a1, a2, v3 + v8, v9, a3);
}

unint64_t sub_24E10C988()
{
  result = qword_27F1E4598;
  if (!qword_27F1E4598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4590);
    sub_24E10D6AC(qword_27F1E1790);
    sub_24E10D6AC(&unk_27F1E45A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4598);
  }

  return result;
}

void sub_24E10CAA4()
{
  sub_24E10BE04(319, &qword_27F1E3EC0, &type metadata for PresentationContext, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24E10BFC4(319, &qword_27F1E1170, type metadata accessor for GameCenterSettingsState, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24E02FD08();
      if (v2 <= 0x3F)
      {
        type metadata accessor for FriendRequestsDataSource();
        if (v3 <= 0x3F)
        {
          sub_24E01CAA4();
          if (v4 <= 0x3F)
          {
            sub_24E347638();
            if (v5 <= 0x3F)
            {
              sub_24E10BE04(319, &qword_27F1DF470, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_24DFEB518();
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

unint64_t sub_24E10CC30()
{
  result = qword_27F1E45D0;
  if (!qword_27F1E45D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E45D8);
    sub_24E10D6AC(&unk_27F1E4488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E45D0);
  }

  return result;
}

unint64_t sub_24E10CCEC()
{
  result = qword_27F1E45E0;
  if (!qword_27F1E45E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E45E8);
    sub_24E10C298();
    sub_24E10C788(&qword_27F1E3E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E45E0);
  }

  return result;
}

unint64_t sub_24E10CDA4()
{
  result = qword_27F1E45F8;
  if (!qword_27F1E45F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4588);
    sub_24E10C988();
    sub_24E10D0C4(&qword_27F1DF888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E45F8);
  }

  return result;
}

uint64_t sub_24E10CEC0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_4_5(v2);
  v4 = OUTLINED_FUNCTION_22_18(*(v3 + 80));

  return a2(v4);
}

uint64_t sub_24E10CF40(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_23_20(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_0_26();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_119Tm()
{
  type metadata accessor for FriendRequestCell(0);
  OUTLINED_FUNCTION_16_12();
  OUTLINED_FUNCTION_28_13();

  j__swift_release();

  v2 = *(v0 + 44);
  sub_24E347638();
  OUTLINED_FUNCTION_0_26();
  (*(v3 + 8))(v1 + v2);

  v4 = OUTLINED_FUNCTION_9_32();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

unint64_t sub_24E10D0C4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_3(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_23_20(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    OUTLINED_FUNCTION_7_38();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_24E10D118(uint64_t a1)
{
  v4 = type metadata accessor for FriendRequestCell(0);
  OUTLINED_FUNCTION_4_5(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24DF8CD84;

  return sub_24E109824(a1, v7, v8, v1 + v6);
}

uint64_t sub_24E10D230@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FriendRequestCell(0);
  OUTLINED_FUNCTION_4_5(v2);
  v4 = OUTLINED_FUNCTION_22_18(*(v3 + 80));

  return sub_24E107E2C(v4, a1);
}

unint64_t sub_24E10D294()
{
  result = qword_27F1E4728;
  if (!qword_27F1E4728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4720);
    sub_24E10D6AC(&unk_27F1E4730);
    sub_24E10D34C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4728);
  }

  return result;
}

unint64_t sub_24E10D34C()
{
  result = qword_27F1E4738;
  if (!qword_27F1E4738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4708);
    sub_24E10D6AC(&unk_27F1E4740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4738);
  }

  return result;
}

unint64_t sub_24E10D404()
{
  result = qword_27F1E4750;
  if (!qword_27F1E4750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E46F8);
    sub_24E10D6AC(&unk_27F1E4758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4750);
  }

  return result;
}

unint64_t sub_24E10D4E8()
{
  result = qword_27F1E4768;
  if (!qword_27F1E4768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4600);
    sub_24E10D6AC(&unk_27F1E4610);
    sub_24DF90C4C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4768);
  }

  return result;
}

unint64_t sub_24E10D620()
{
  result = qword_27F1E4780;
  if (!qword_27F1E4780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4788);
    sub_24E100704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4780);
  }

  return result;
}

unint64_t sub_24E10D6AC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_3(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_23_20(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_31()
{

  return sub_24E10B978(v0, type metadata accessor for FriendRequestsBaseView);
}

unint64_t OUTLINED_FUNCTION_13_29(uint64_t a1)
{

  return sub_24E10D6AC(a1);
}

uint64_t OUTLINED_FUNCTION_26_16()
{

  return sub_24E347638();
}

unint64_t OUTLINED_FUNCTION_27_11(uint64_t a1)
{

  return sub_24E10D6AC(a1);
}

uint64_t OUTLINED_FUNCTION_28_13()
{
  v3 = *(v0 + v1);
  v4 = *(v0 + v1 + 8);

  return sub_24DE73F34(v3, v4);
}

void OUTLINED_FUNCTION_29_13()
{
  v2 = *(v1 - 176);
  *v0 = *(v1 - 184);
  *(v0 + 8) = v2;
}

uint64_t type metadata accessor for ProfileSection()
{
  result = qword_27F1E4790;
  if (!qword_27F1E4790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E10D8E8()
{
  sub_24E10D9D4(319, &qword_27F1E0190, MEMORY[0x277CE02A8]);
  if (v0 <= 0x3F)
  {
    sub_24DFEB518();
    if (v1 <= 0x3F)
    {
      sub_24E10D9D4(319, &qword_27F1E1170, type metadata accessor for GameCenterSettingsState);
      if (v2 <= 0x3F)
      {
        sub_24E02FD08();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E10D9D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24E345278();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24E10DA44()
{
  v1 = sub_24E345B68();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ProfileSection() + 24));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_24E348268();
    v8 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_24E10DB94()
{
  v0 = sub_24E347CB8();
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  sub_24DF90C4C();
  sub_24E3464E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E47A0);
  sub_24DFB4C28(&qword_27F1E47A8, &qword_27F1E47A0);
  return sub_24E346D08();
}

uint64_t sub_24E10DCE0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0150) - 8;
  MEMORY[0x28223BE20](v47);
  v48 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = &v39 - v5;
  v6 = sub_24E345778();
  v7 = *(v6 - 8);
  v41 = v6;
  v42 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ProfileSection();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E47B0);
  v40 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E47B8);
  v44 = *(v16 - 8);
  v45 = v16;
  MEMORY[0x28223BE20](v16);
  v43 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v50 = &v39 - v19;
  v39 = a1;
  sub_24E10F9C0(a1, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v21 = swift_allocObject();
  sub_24E10FA24(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v51 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E47C0);
  sub_24E10FAA8();
  sub_24E346BD8();
  sub_24E345768();
  sub_24DFB4C28(&qword_27F1E47F0, &qword_27F1E47B0);
  sub_24E10FDDC(&qword_27F1DF5F0, MEMORY[0x277CDDB18]);
  v22 = v50;
  v23 = v13;
  v24 = v41;
  sub_24E346588();
  (*(v42 + 8))(v9, v24);
  (*(v40 + 8))(v15, v23);
  sub_24E10F9C0(v39, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = swift_allocObject();
  sub_24E10FA24(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v20);
  v26 = v46;
  sub_24E346BD8();
  type metadata accessor for GameCenterSettings();
  LOBYTE(v15) = sub_24DFECA04();
  KeyPath = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = (v15 & 1) == 0;
  v29 = (v26 + *(v47 + 44));
  *v29 = KeyPath;
  v29[1] = sub_24DFEB7E4;
  v29[2] = v28;
  v30 = v43;
  v31 = v44;
  v32 = *(v44 + 16);
  v33 = v45;
  v32(v43, v22, v45);
  v34 = v48;
  sub_24DF8BD90(v26, v48, &qword_27F1E0150);
  v35 = v49;
  v32(v49, v30, v33);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E47F8);
  sub_24DF8BD90(v34, &v35[*(v36 + 48)], &qword_27F1E0150);
  sub_24DF8BFF4(v26, &qword_27F1E0150);
  v37 = *(v31 + 8);
  v37(v50, v33);
  sub_24DF8BFF4(v34, &qword_27F1E0150);
  return (v37)(v30, v33);
}

uint64_t sub_24E10E2F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-1] - v3;
  v5 = sub_24E343288();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = &type metadata for GameCenterUIFeatureFlags;
  v15[4] = sub_24E032C80();
  v9 = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(v15);
  if ((v9 & 1) != 0 && (type metadata accessor for GameCenterSettings(), sub_24DFF1F8C()))
  {
    sub_24E343268();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      return sub_24DF8BFF4(v4, &qword_27F1DEFB8);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      v12 = [objc_opt_self() sharedApplication];
      v13 = sub_24E343228();
      [v12 openURL_];

      return (*(v6 + 8))(v8, v5);
    }
  }

  else if (*(a1 + *(type metadata accessor for ProfileSection() + 20)))
  {
    LOBYTE(v15[0]) = 1;

    sub_24E344DF8();

    v11 = sub_24E10DA44();
    swift_getKeyPath();
    v15[0] = v11;
    sub_24E10FDDC(&qword_27F1E03D8, type metadata accessor for GameCenterSettingsState);
    sub_24E343538();

    v15[0] = v11;
    swift_getKeyPath();
    sub_24E343558();

    swift_beginAccess();
    *(v11 + 16) = 0;
    v14 = v11;
    swift_getKeyPath();
    sub_24E343548();
  }

  else
  {
    type metadata accessor for GameCenterSettings();
    sub_24E10FDDC(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
    result = sub_24E345828();
    __break(1u);
  }

  return result;
}

uint64_t sub_24E10E6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24E345BF8();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4800);
  sub_24E10E754(a1, a2 + *(v4 + 44));
  v5 = sub_24E345CE8();
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E47D8) + 36));
  *v6 = v5;
  v6[1] = sub_24E0AC020;
  v6[2] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E47C0);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24E10E754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4808);
  MEMORY[0x28223BE20](v58);
  v56 = v51 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4810);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = (v51 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4818);
  MEMORY[0x28223BE20](v8);
  v10 = v51 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4820);
  MEMORY[0x28223BE20](v57);
  v12 = v51 - v11;
  v13 = sub_24E345CC8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4828);
  MEMORY[0x28223BE20](v17 - 8);
  v59 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v51 - v20;
  v22 = a1;
  sub_24E028EC4(v16);
  LOBYTE(a1) = sub_24E345CB8();
  (*(v14 + 8))(v16, v13);
  if (a1)
  {
    *v12 = sub_24E345D08();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4860);
    sub_24E10EFC0(v22, &v12[*(v23 + 44)]);
    sub_24DF8BD90(v12, v10, &qword_27F1E4820);
    swift_storeEnumTagMultiPayload();
    sub_24DFB4C28(&qword_27F1E4848, &qword_27F1E4820);
    sub_24DFB4C28(&qword_27F1E4850, &qword_27F1E4808);
    sub_24E345E38();
    v24 = v12;
    v25 = &qword_27F1E4820;
LABEL_5:
    sub_24DF8BFF4(v24, v25);
    v41 = sub_24E346A58();
    v42 = [objc_opt_self() secondaryLabelColor];
    v43 = sub_24E346948();
    KeyPath = swift_getKeyPath();
    v45 = v59;
    sub_24DF8BD90(v21, v59, &qword_27F1E4828);
    v46 = v60;
    sub_24DF8BD90(v45, v60, &qword_27F1E4828);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4858);
    v48 = v46 + *(v47 + 48);
    *v48 = 0;
    *(v48 + 8) = 1;
    v49 = (v46 + *(v47 + 64));
    *v49 = v41;
    v49[1] = KeyPath;
    v49[2] = v43;

    sub_24DF8BFF4(v21, &qword_27F1E4828);

    return sub_24DF8BFF4(v45, &qword_27F1E4828);
  }

  v51[1] = v8;
  v52 = v10;
  v53 = v21;
  if (*(v22 + *(type metadata accessor for ProfileSection() + 20)))
  {

    v26 = sub_24DFECF6C();

    v27 = [v26 internal];

    v28 = sub_24E1AF4F4(v27);
    v30 = v29;
    v32 = v31;
    sub_24E346E38();
    sub_24E3453D8();
    v66 = v32 & 1;
    *&v65[6] = v68;
    *&v65[22] = v69;
    *&v65[38] = v70;
    v33 = sub_24E3461E8();
    *&v62[18] = *v65;
    v67 = 0;
    *v62 = v28;
    *&v62[8] = v30;
    *&v62[16] = v32 & 0x101;
    *&v62[34] = *&v65[16];
    *&v62[50] = *&v65[32];
    *&v62[64] = *&v65[46];
    v62[72] = v33;
    *&v62[80] = xmmword_24E3792C0;
    *&v62[96] = xmmword_24E3792C0;
    v62[112] = 0;
    v34 = sub_24E345D08();
    v35 = v55;
    *v55 = v34;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4830);
    sub_24E10F46C(v22, v35 + *(v36 + 44));
    memcpy(v61, v62, sizeof(v61));
    v37 = v54;
    sub_24DF8BD90(v35, v54, &qword_27F1E4810);
    memcpy(v63, v61, 0x71uLL);
    v38 = v56;
    memcpy(v56, v61, 0x71uLL);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4838);
    sub_24DF8BD90(v37, v38 + *(v39 + 48), &qword_27F1E4810);
    sub_24DF8BD90(v62, v64, &qword_27F1E4840);
    sub_24DF8BD90(v63, v64, &qword_27F1E4840);
    sub_24DF8BFF4(v37, &qword_27F1E4810);
    memcpy(v64, v61, 0x71uLL);
    sub_24DF8BFF4(v64, &qword_27F1E4840);
    sub_24DF8BD90(v38, v52, &qword_27F1E4808);
    swift_storeEnumTagMultiPayload();
    sub_24DFB4C28(&qword_27F1E4848, &qword_27F1E4820);
    sub_24DFB4C28(&qword_27F1E4850, &qword_27F1E4808);
    v40 = v53;
    sub_24E345E38();
    v21 = v40;
    sub_24DF8BFF4(v62, &qword_27F1E4840);
    sub_24DF8BFF4(v38, &qword_27F1E4808);
    v24 = v35;
    v25 = &qword_27F1E4810;
    goto LABEL_5;
  }

  type metadata accessor for GameCenterSettings();
  sub_24E10FDDC(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
  result = sub_24E345828();
  __break(1u);
  return result;
}

uint64_t sub_24E10EFC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4810);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  if (*(a1 + *(type metadata accessor for ProfileSection() + 20)))
  {

    v9 = sub_24DFECF6C();

    v10 = [v9 internal];

    v11 = sub_24E1AF4F4(v10);
    v20 = v12;
    v21 = v11;
    v13 = v12;
    v15 = v14;
    sub_24E346E38();
    sub_24E3453D8();
    v30 = v15 & 1;
    *&v29[6] = v31;
    *&v29[22] = v32;
    *&v29[38] = v33;
    *v8 = sub_24E345D08();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4830);
    sub_24E10F46C(a1, &v8[*(v16 + 44)]);
    sub_24DF8BD90(v8, v5, &qword_27F1E4810);
    v23[0] = v11;
    v23[1] = v13;
    LOWORD(v23[2]) = v15 & 0x101;
    *(&v23[2] + 2) = *v29;
    *(&v23[4] + 2) = *&v29[16];
    *(&v23[6] + 2) = *&v29[32];
    v23[8] = *&v29[46];
    v17 = v22;
    memcpy(v22, v23, 0x48uLL);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4868);
    sub_24DF8BD90(v5, v17 + *(v18 + 48), &qword_27F1E4810);
    sub_24DF8BD90(v23, v24, &qword_27F1E4180);
    sub_24DF8BFF4(v8, &qword_27F1E4810);
    sub_24DF8BFF4(v5, &qword_27F1E4810);
    v24[0] = v21;
    v24[1] = v20;
    v25 = v15 & 0x101;
    v26 = *v29;
    v27 = *&v29[16];
    *v28 = *&v29[32];
    *&v28[14] = *&v29[46];
    return sub_24DF8BFF4(v24, &qword_27F1E4180);
  }

  else
  {
    type metadata accessor for GameCenterSettings();
    sub_24E10FDDC(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
    result = sub_24E345828();
    __break(1u);
  }

  return result;
}

uint64_t sub_24E10F2D8()
{
  v0 = sub_24E10DA44();
  swift_getKeyPath();
  sub_24E10FDDC(&qword_27F1E03D8, type metadata accessor for GameCenterSettingsState);
  sub_24E343538();

  swift_getKeyPath();
  sub_24E343558();

  swift_beginAccess();
  *(v0 + 16) = 1;
  swift_getKeyPath();
  sub_24E343548();
}

uint64_t sub_24E10F408@<X0>(uint64_t a1@<X8>)
{
  sub_24E343AA8();
  sub_24E343908();
  sub_24DF90C4C();
  result = sub_24E3464E8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_24E10F46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v49 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4878);
  MEMORY[0x28223BE20](v49);
  v51 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  if (*(a1 + *(type metadata accessor for ProfileSection() + 20)))
  {

    v12 = sub_24DFECF6C();

    v13 = [v12 alias];

    sub_24E347CF8();
    v14 = objc_opt_self();
    v15 = [v14 labelColor];
    sub_24E346948();
    v16 = sub_24E346468();
    v18 = v17;
    LOBYTE(v12) = v19;
    v21 = v20;

    v54 = v16;
    v55 = v18;
    v56 = v12 & 1;
    v57 = v21;
    v50 = v11;
    sub_24E346648();
    sub_24DFA92EC(v16, v18, v12 & 1);

    v22 = sub_24DFECF6C();

    v23 = [v22 accountName];

    v24 = sub_24E347CF8();
    v26 = v25;

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      sub_24E346378();
      v28 = sub_24E3464B8();
      v30 = v29;
      v32 = v31;

      v33 = [v14 secondaryLabelColor];
      sub_24E346948();
      v34 = sub_24E346468();
      v36 = v35;
      v38 = v37;
      v39 = v5;
      v41 = v40;

      sub_24DFA92EC(v28, v30, v32 & 1);

      v54 = v34;
      v55 = v36;
      v56 = v38 & 1;
      v57 = v41;
      v42 = v51;
      sub_24E346648();
      sub_24DFA92EC(v34, v36, v38 & 1);
      v5 = v39;

      v43 = v52;
      sub_24E10FE24(v42, v52);
      v44 = 0;
    }

    else
    {

      v44 = 1;
      v42 = v51;
      v43 = v52;
    }

    __swift_storeEnumTagSinglePayload(v43, v44, 1, v49);
    v45 = v50;
    sub_24DF8BD90(v50, v42, &qword_27F1E4878);
    sub_24DF8BD90(v43, v5, &qword_27F1E4870);
    v46 = v53;
    sub_24DF8BD90(v42, v53, &qword_27F1E4878);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4880);
    sub_24DF8BD90(v5, v46 + *(v47 + 48), &qword_27F1E4870);
    sub_24DF8BFF4(v43, &qword_27F1E4870);
    sub_24DF8BFF4(v45, &qword_27F1E4878);
    sub_24DF8BFF4(v5, &qword_27F1E4870);
    return sub_24DF8BFF4(v42, &qword_27F1E4878);
  }

  else
  {
    type metadata accessor for GameCenterSettings();
    sub_24E10FDDC(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
    result = sub_24E345828();
    __break(1u);
  }

  return result;
}

uint64_t sub_24E10F9C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProfileSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E10FA24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProfileSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E10FAA8()
{
  result = qword_27F1E47C8;
  if (!qword_27F1E47C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E47C0);
    sub_24E10FB60();
    sub_24DFB4C28(&qword_27F1E4140, &qword_27F1E4148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E47C8);
  }

  return result;
}

unint64_t sub_24E10FB60()
{
  result = qword_27F1E47D0;
  if (!qword_27F1E47D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E47D8);
    sub_24DFB4C28(&qword_27F1E47E0, &qword_27F1E47E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E47D0);
  }

  return result;
}

uint64_t objectdestroyTm_12()
{
  v1 = *(type metadata accessor for ProfileSection() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E01B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E345CC8();
    OUTLINED_FUNCTION_5_2();
    (*(v5 + 8))(v0 + v3);
  }

  else
  {
  }

  j__swift_release();

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24E10FD68(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ProfileSection() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24E10FDDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E10FE24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4878);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E10FE94()
{
  result = qword_27F1E4888;
  if (!qword_27F1E4888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4890);
    sub_24DFB4C28(&qword_27F1E47A8, &qword_27F1E47A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4888);
  }

  return result;
}

uint64_t FriendsSection.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v17 = *v1;
  v18 = v3;
  v19 = v1[2];
  v20 = *(v1 + 48);
  v4 = sub_24E347CB8();
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  sub_24DF90C4C();
  v14[0] = sub_24E3464E8();
  v14[1] = v7;
  v15 = v8 & 1;
  v16 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4898);
  sub_24DFB4C28(&qword_27F1E48A0, &qword_27F1E4898);
  sub_24E346D08();
  v10 = swift_allocObject();
  v11 = v18;
  *(v10 + 16) = v17;
  *(v10 + 32) = v11;
  *(v10 + 48) = v19;
  *(v10 + 64) = v20;
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E48A8) + 36));
  sub_24E345528();
  sub_24E111518(&v17, v14);
  result = sub_24E348078();
  *v12 = &unk_24E379490;
  v12[1] = v10;
  return result;
}

uint64_t sub_24E110140@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E48C8);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = (&v48 - v6);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E48D0);
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v48 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E48D8);
  v62 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = &v48 - v10;
  v11 = sub_24E345778();
  v63 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E48E0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - v16;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E48E8);
  v61 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v59 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v58 = &v48 - v20;
  v21 = swift_allocObject();
  v22 = *(a1 + 16);
  *(v21 + 16) = *a1;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(a1 + 32);
  *(v21 + 64) = *(a1 + 48);
  v65 = a1;
  sub_24E111518(a1, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E48F0);
  sub_24E1117E4();
  sub_24E346BD8();
  sub_24E345768();
  sub_24DFB4C28(&qword_27F1E4910, &qword_27F1E48E0);
  sub_24E111A4C(&qword_27F1DF5F0, MEMORY[0x277CDDB18]);
  sub_24E346588();
  v23 = *(v63 + 8);
  v63 += 8;
  v23(v13, v11);
  (*(v15 + 8))(v17, v14);
  v24 = swift_allocObject();
  v25 = *(a1 + 16);
  *(v24 + 16) = *a1;
  *(v24 + 32) = v25;
  *(v24 + 48) = *(a1 + 32);
  *(v24 + 64) = *(a1 + 48);
  v64 = a1;
  sub_24E111518(a1, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4918);
  sub_24E1118F0();
  v26 = v49;
  sub_24E346BD8();
  sub_24E345768();
  sub_24DFB4C28(&qword_27F1E4938, &qword_27F1E48D0);
  v27 = v57;
  v28 = v50;
  sub_24E346588();
  v23(v13, v11);
  (*(v51 + 8))(v26, v28);
  v29 = sub_24E345BF8();
  v30 = v60;
  *v60 = v29;
  v30[1] = 0;
  *(v30 + 16) = 1;
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4940) + 44);
  v32 = swift_allocObject();
  v33 = *(a1 + 16);
  *(v32 + 16) = *a1;
  *(v32 + 32) = v33;
  *(v32 + 48) = *(a1 + 32);
  *(v32 + 64) = *(a1 + 48);
  sub_24E111518(a1, v66);
  sub_24E346BD8();
  type metadata accessor for GameCenterSettings();
  LOBYTE(a1) = sub_24DFF20B4();
  KeyPath = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = (a1 & 1) == 0;
  v36 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0150) + 36)];
  *v36 = KeyPath;
  v36[1] = sub_24DFEB7E4;
  v36[2] = v35;
  v37 = *(v61 + 16);
  v38 = v59;
  v39 = v52;
  v37(v59, v58, v52);
  v63 = *(v62 + 16);
  v40 = v53;
  v41 = v54;
  (v63)(v53, v27, v54);
  v42 = v55;
  sub_24DF9DEAC(v30, v55, &qword_27F1E48C8);
  v43 = v56;
  v37(v56, v38, v39);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4948);
  (v63)(&v43[*(v44 + 48)], v40, v41);
  sub_24DF9DEAC(v42, &v43[*(v44 + 64)], &qword_27F1E48C8);
  sub_24DF8C95C(v60, &qword_27F1E48C8);
  v45 = *(v62 + 8);
  v45(v57, v41);
  v46 = *(v61 + 8);
  v46(v58, v39);
  sub_24DF8C95C(v42, &qword_27F1E48C8);
  v45(v40, v41);
  return (v46)(v59, v39);
}

void *sub_24E110A58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E345BF8();
  v8 = 1;
  sub_24E110B38();
  memcpy(__dst, __src, 0x5CuLL);
  memcpy(v10, __src, 0x5CuLL);
  sub_24DF9DEAC(__dst, &v5, &qword_27F1E4958);
  sub_24DF8C95C(v10, &qword_27F1E4958);
  memcpy(&v7[7], __dst, 0x5CuLL);
  v3 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  result = memcpy((a1 + 17), v7, 0x63uLL);
  *(a1 + 116) = 0;
  return result;
}

uint64_t sub_24E110B38()
{
  v0 = sub_24E347CB8();
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();

  v3 = sub_24E347CF8();
  v5 = v4;

  v38 = v3;
  v39 = v5;
  sub_24DF90C4C();
  v6 = sub_24E3464E8();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_24E0E0DD0();
  v14 = v13;
  if (v13)
  {
    v15 = sub_24DFD8654(v13);

    if (v15 < 1)
    {
      v14 = 0;
      v19 = 0;
      v24 = 0;
      v23 = 0;
    }

    else
    {
      v16 = sub_24E348178();
      v17 = [objc_opt_self() localizedStringFromNumber:v16 numberStyle:1];
      sub_24E347CF8();

      LODWORD(v38) = sub_24E345F28();
      v14 = sub_24E346478();
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v24 = v21 & 1;
      sub_24DF82DD4(v14, v19, v21 & 1);
    }
  }

  else
  {
    v19 = 0;
    v24 = 0;
    v23 = 1;
  }

  v34 = v6;
  v35 = v8;
  v36 = v10 & 1;
  v31 = v23;
  v32 = 0;
  v33 = 1;
  v37 = v12;
  v38 = &v34;
  v39 = &v32;
  v28 = v14;
  v29 = v19;
  v30 = v24;
  v26 = sub_24E346A58();
  v27 = sub_24E345F28();
  v40 = &v28;
  v41 = &v26;
  sub_24E13B2EC();
  sub_24E111A94(v14, v19, v24, v23);

  sub_24E111A94(v28, v29, v30, v31);
  sub_24DFA92EC(v34, v35, v36);
}

uint64_t sub_24E110DD4(uint64_t a1, char a2)
{
  v4 = sub_24E345B68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 48);
  v8 = *(a1 + 40);
  v14 = v8;
  v9 = v15;

  if ((v9 & 1) == 0)
  {
    sub_24E348268();
    v10 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24DF8C95C(&v14, &qword_27F1E4208);
    (*(v5 + 8))(v7, v4);
    v8 = v13;
  }

  swift_getKeyPath();
  v13 = v8;
  sub_24E111A4C(&qword_27F1E03D8, type metadata accessor for GameCenterSettingsState);
  OUTLINED_FUNCTION_0_103();
  sub_24E343538();

  v13 = v8;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_103();
  sub_24E343558();

  swift_beginAccess();
  *(v8 + 16) = a2;
  v12 = v8;
  swift_getKeyPath();
  sub_24E343548();
}

void *sub_24E111010@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E345BF8();
  v8 = 1;
  sub_24E1110F0();
  memcpy(__dst, __src, 0x4CuLL);
  memcpy(v10, __src, 0x4CuLL);
  sub_24DF9DEAC(__dst, &v5, &qword_27F1E4950);
  sub_24DF8C95C(v10, &qword_27F1E4950);
  memcpy(&v7[7], __dst, 0x4CuLL);
  v3 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  result = memcpy((a1 + 17), v7, 0x53uLL);
  *(a1 + 100) = 0;
  return result;
}

uint64_t sub_24E1110F0()
{
  v0 = sub_24E347CB8();
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();

  v3 = sub_24E347CF8();
  v5 = v4;

  v30 = v3;
  v31 = v5;
  sub_24DF90C4C();
  v6 = sub_24E3464E8();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_24E0DE4A0();
  v14 = v13;
  if (v13)
  {
    v15 = sub_24DFD8654(v13);

    v16 = v15 < 1;
    v17 = v15 & ~(v15 >> 63);
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v26 = v6;
  v27 = v8;
  v28 = v10 & 1;
  v24 = 0;
  v25 = 1;
  v29 = v12;
  v30 = &v26;
  v31 = &v24;
  v21 = v17;
  v22 = v16;
  v23 = v14 == 0;
  v19 = sub_24E346A58();
  v20 = sub_24E345F28();
  v32 = &v21;
  v33 = &v19;
  sub_24E13B394();

  sub_24DFA92EC(v26, v27, v28);
}

uint64_t sub_24E1112B0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E347CB8();
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  sub_24DF90C4C();
  result = sub_24E3464E8();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_24E111374(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_24E348068();
  *(v1 + 24) = sub_24E348058();
  v3 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E11140C, v3, v2);
}

uint64_t sub_24E11140C()
{

  sub_24E0E1220(v1);
  sub_24E0DE5D0();
  sub_24E0DCC54();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24E111484()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24DF8CD84;

  return sub_24E111374(v0 + 16);
}

uint64_t sub_24E111570(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E1115B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E111610()
{
  result = qword_27F1E48B0;
  if (!qword_27F1E48B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E48A8);
    sub_24E1116CC();
    sub_24E111A4C(&qword_27F1DE1E0, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E48B0);
  }

  return result;
}

unint64_t sub_24E1116CC()
{
  result = qword_27F1E48B8;
  if (!qword_27F1E48B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E48C0);
    sub_24DFB4C28(&qword_27F1E48A0, &qword_27F1E4898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E48B8);
  }

  return result;
}

unint64_t sub_24E1117E4()
{
  result = qword_27F1E48F8;
  if (!qword_27F1E48F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E48F0);
    sub_24DFB4C28(&qword_27F1E4900, &qword_27F1E4908);
    sub_24DFB4C28(&qword_27F1E4140, &qword_27F1E4148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E48F8);
  }

  return result;
}

unint64_t sub_24E1118F0()
{
  result = qword_27F1E4920;
  if (!qword_27F1E4920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4918);
    sub_24DFB4C28(&qword_27F1E4928, &qword_27F1E4930);
    sub_24DFB4C28(&qword_27F1E4140, &qword_27F1E4148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4920);
  }

  return result;
}

uint64_t objectdestroyTm_13()
{

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_24E111A4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E111A94(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_24E00B208(result, a2, a3, a4);
  }

  return result;
}

id sub_24E111AB8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contact];
  *a2 = result;
  return result;
}

void sub_24E111AF4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_24E347CF8();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t FriendSuggestionsDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[8];
  if (v3)
  {
    v6 = v1[6];
    v5 = v1[7];
    v7 = *(v1 + 40);
    v8 = v1[3];
    v9 = v1[4];
    v10 = v1[2];
    v11 = *v1;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v8 = 0;
    v9 = 0;
    v6 = 0;
    v5 = 0;
    v7 = 0;
  }

  result = sub_24E346B78();
  *a1 = v13;
  *(a1 + 8) = v14;
  *(a1 + 16) = v11;
  *(a1 + 24) = v3;
  *(a1 + 32) = v10;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v7;
  *(a1 + 64) = v6;
  *(a1 + 72) = v5;
  *(a1 + 80) = v4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI27FriendSuggestionsDetailViewV14MetricsContextVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24E111C64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E111CA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E111D04()
{
  result = qword_27F1E4960;
  if (!qword_27F1E4960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4960);
  }

  return result;
}

uint64_t sub_24E111D68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E111DA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E111E28@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3E40);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v2);
  v4 = v29 - v3;
  v29[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4968);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4970);
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4978);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  v16 = v29 - v15;
  v17 = sub_24E0DBE90();
  if (v17)
  {
    v18 = v17;
    v19 = sub_24DFD8654(v17);
    if (v19)
    {
      v29[0] = v29;
      MEMORY[0x28223BE20](v19);
      v29[-2] = v18;
      v29[-1] = v1;
      sub_24E343AA8();
      v32 = sub_24E3439B8();
      v33 = v20;
      sub_24DF90C4C();
      v32 = sub_24E3464E8();
      v33 = v21;
      v34 = v22 & 1;
      v35 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4998);
      sub_24E116924();
      sub_24E346D08();

      (*(v10 + 32))(v16, v13, v8);
      v24 = 0;
    }

    else
    {

      v24 = 1;
    }

    __swift_storeEnumTagSinglePayload(v16, v24, 1, v8);
    sub_24DF95B98(v16, v7, &qword_27F1E4978);
    swift_storeEnumTagMultiPayload();
    sub_24E116808();
    sub_24E0FF95C();
    sub_24E345E38();
    return sub_24E101ED8(v16, &qword_27F1E4978);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_19_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25);
    sub_24E1027E4(&qword_27F1E3E68, &qword_27F1E3E60);
    sub_24E346D28();
    if (qword_27F1DE118 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for PlayerCardTheme();
    v27 = *(__swift_project_value_buffer(v26, qword_27F20BF00) + 64);
    v32 = sub_24E346948();
    *&v4[*(v30 + 36)] = sub_24E346C48();
    sub_24DF95B98(v4, v7, &qword_27F1E3E40);
    swift_storeEnumTagMultiPayload();
    sub_24E116808();
    sub_24E0FF95C();
    sub_24E345E38();
    return sub_24E101ED8(v4, &qword_27F1E3E40);
  }
}

double sub_24E1122A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = sub_24E345FD8();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E49B0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E49D0);
  v29 = *(v12 - 8);
  v30 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E49A8);
  MEMORY[0x28223BE20](v26);
  v16 = &v26 - v15;
  sub_24E3461A8();
  v32 = a1;
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E49D8);
  sub_24E117760(&qword_27F1E49E0, &qword_27F1E49D8, &unk_24E379990, sub_24E116BF4);
  sub_24E345218();
  sub_24E345FC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4A08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E36A270;
  v18 = sub_24E3461C8();
  *(inited + 32) = v18;
  v19 = sub_24E3461A8();
  *(inited + 33) = v19;
  sub_24E3461B8();
  sub_24E3461B8();
  if (sub_24E3461B8() != v18)
  {
    sub_24E3461B8();
  }

  sub_24E3461B8();
  if (sub_24E3461B8() != v19)
  {
    sub_24E3461B8();
  }

  sub_24E1027E4(&qword_27F1E49B8, &qword_27F1E49B0);
  sub_24E3466D8();
  (*(v27 + 8))(v7, v28);
  (*(v9 + 8))(v11, v8);
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for PlayerCardTheme();
  v21 = *(__swift_project_value_buffer(v20, qword_27F20BF00) + 64);
  v34 = sub_24E346948();
  v22 = sub_24E346C48();
  (*(v29 + 32))(v16, v14, v30);
  *&v16[*(v26 + 36)] = v22;
  v23 = v31;
  sub_24E04B898(v16, v31, &qword_27F1E49A8);
  v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4998) + 36);
  *(v24 + 32) = 0;
  result = 0.0;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  return result;
}

uint64_t sub_24E11273C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_24E345BF8();
  *(a3 + 8) = 0x4020000000000000;
  *(a3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4A10);
  v28 = sub_24E116EA4(a1, sub_24DFD8654, &qword_27F1E4A20);
  swift_getKeyPath();
  v6 = swift_allocObject();
  memcpy((v6 + 16), a2, 0x58uLL);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_24E116DF0;
  *(v7 + 24) = v6;
  sub_24E116DF8(a2, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3C88);
  type metadata accessor for FriendSuggestionCell();
  sub_24E1027E4(&qword_27F1E3C90, &qword_27F1E3C88);
  sub_24E117C40(&qword_27F1E4A18, type metadata accessor for FriendSuggestionCell);
  sub_24E346CC8();
  LOBYTE(a1) = sub_24E346248();
  sub_24E3451B8();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E49F0) + 36);
  *v16 = a1;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  LOBYTE(a1) = sub_24E3461D8();
  sub_24E3451B8();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E49D8);
  v26 = a3 + *(result + 36);
  *v26 = a1;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

id sub_24E1129C0@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 24);
  if (v6)
  {
    v8 = *(a3 + 72);
    v20 = *(a3 + 56);
    v9 = *(a3 + 40);
    v21 = *(a3 + 48);
    v22 = *(a3 + 64);
    v18 = *(a3 + 16);
    v19 = *(a3 + 32);
    v17 = 0x800000024E3A79A0;

    v10 = 0xD000000000000010;
    v11 = 5;
  }

  else
  {
    v10 = 0;
    v17 = 0;
    v18 = 0;
    a1 = 0;
    v19 = 0;
    v20 = 0;
    v9 = 0;
    v21 = 0;
    v22 = 0;
    v8 = 0;
    v11 = 0;
  }

  v12 = *(a3 + 80);
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  v13 = type metadata accessor for FriendSuggestionCell();
  v14 = v13[6];
  *(a4 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0148);
  swift_storeEnumTagMultiPayload();
  *(a4 + v13[7]) = a2;
  v15 = (a4 + v13[8]);
  *v15 = v10;
  v15[1] = v17;
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = v11;
  v15[6] = v18;
  v15[7] = v6;
  v15[8] = v19;
  v15[9] = v9;
  v15[10] = v21;
  v15[11] = v20;
  v15[12] = v22;
  v15[13] = v8;
  *(a4 + v13[9]) = v12;

  return a2;
}

uint64_t sub_24E112B6C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24E345BF8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4048);
  return sub_24E112BBC(a1 + *(v2 + 44));
}

uint64_t sub_24E112BBC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4050);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  sub_24E345348();
  v9 = sub_24E3461E8();
  sub_24E3451B8();
  v10 = &v8[*(v3 + 44)];
  *v10 = v9;
  *(v10 + 1) = v11;
  *(v10 + 2) = v12;
  *(v10 + 3) = v13;
  *(v10 + 4) = v14;
  v10[40] = 0;
  sub_24DF95B98(v8, v5, &qword_27F1E4050);
  *a1 = 0;
  *(a1 + 8) = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4058);
  sub_24DF95B98(v5, a1 + *(v15 + 48), &qword_27F1E4050);
  v16 = a1 + *(v15 + 64);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_24E101ED8(v8, &qword_27F1E4050);
  return sub_24E101ED8(v5, &qword_27F1E4050);
}

uint64_t sub_24E112D68@<X0>(uint64_t a1@<X8>)
{
  v90 = sub_24E345E48();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v86 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_24E345778();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v79 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FriendSuggestionCell();
  v74 = *(v5 - 8);
  v6 = *(v74 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4A58);
  v77 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v72 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4A60);
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v11 = &v72 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4A68);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v81 = &v72 - v12;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4A70);
  MEMORY[0x28223BE20](v84);
  v85 = &v72 - v13;
  v14 = sub_24E3457C8();
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_24E345CF8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v18 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4A78) + 44);
  v76 = v1;
  sub_24E113844(v1, v18);
  sub_24E346E28();
  sub_24E3457F8();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4A80);
  memcpy((a1 + *(v19 + 36)), __src, 0x70uLL);
  v20 = *(v15 + 28);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_24E345C68();
  (*(*(v22 - 8) + 104))(&v17[v20], v21, v22);
  __asm { FMOV            V0.2D, #12.0 }

  *v17 = _Q0;
  if (qword_27F1DDDE0 != -1)
  {
    swift_once();
  }

  v28 = qword_27F20B808;
  v29 = sub_24E346948();
  sub_24E3452D8();
  v30 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4A88) + 36);
  sub_24E117688(v17, v30, MEMORY[0x277CDFC08]);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4A90) + 36);
  v32 = v97;
  *v31 = v96;
  *(v31 + 16) = v32;
  *(v31 + 32) = v98;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4A98);
  *(v30 + *(v33 + 52)) = v29;
  *(v30 + *(v33 + 56)) = 256;
  v34 = sub_24E346E28();
  v36 = v35;
  sub_24E11762C(v17);
  v37 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4AA0) + 36));
  *v37 = v34;
  v37[1] = v36;
  v38 = sub_24E346E28();
  v40 = v39;
  v41 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4AA8) + 36));
  *v41 = v38;
  v41[1] = v40;
  v42 = sub_24E346DD8();
  v73 = v43;
  v44 = v75;
  sub_24E117688(v76, v75, type metadata accessor for FriendSuggestionCell);
  v45 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v46 = swift_allocObject();
  sub_24E1176E4(v44, v46 + v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4AB0);
  sub_24E117760(&qword_27F1E4AB8, &qword_27F1E4AB0, &unk_24E379BB8, sub_24E1177E0);
  sub_24E346BD8();
  v47 = v79;
  sub_24E345768();
  v48 = sub_24E1027E4(&qword_27F1E4AE0, &qword_27F1E4A58);
  v49 = sub_24E117C40(&qword_27F1DF5F0, MEMORY[0x277CDDB18]);
  v50 = v83;
  sub_24E346588();
  (*(v82 + 8))(v47, v50);
  (*(v77 + 8))(v9, v7);
  v51 = v86;
  sub_24E345808();
  v91 = v7;
  v92 = v50;
  v93 = v48;
  v94 = v49;
  swift_getOpaqueTypeConformance2();
  sub_24E117C40(&qword_27F1E4AE8, MEMORY[0x277CDDFB0]);
  v52 = v81;
  v53 = v80;
  v54 = v90;
  sub_24E3465B8();
  (*(v89 + 8))(v51, v54);
  (*(v78 + 8))(v11, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E36A270;
  LOBYTE(v49) = sub_24E3461F8();
  *(inited + 32) = v49;
  v56 = sub_24E346238();
  *(inited + 33) = v56;
  v57 = sub_24E346228();
  sub_24E346228();
  if (sub_24E346228() != v49)
  {
    v57 = sub_24E346228();
  }

  sub_24E346228();
  if (sub_24E346228() != v56)
  {
    v57 = sub_24E346228();
  }

  v58 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4AF0) + 36);
  sub_24E3451B8();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = v85;
  (*(v87 + 32))(v85, v52, v88);
  v68 = v67 + *(v84 + 36);
  *v68 = v57;
  *(v68 + 8) = v60;
  *(v68 + 16) = v62;
  *(v68 + 24) = v64;
  *(v68 + 32) = v66;
  *(v68 + 40) = 0;
  sub_24E04B898(v67, v58, &qword_27F1E4A70);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4AF8);
  v70 = (v58 + *(result + 36));
  v71 = v73;
  *v70 = v42;
  v70[1] = v71;
  return result;
}

uint64_t sub_24E113844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4B00);
  MEMORY[0x28223BE20](v123);
  v112 = &v107 - v3;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4B08);
  MEMORY[0x28223BE20](v120);
  v122 = &v107 - v4;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4B10);
  MEMORY[0x28223BE20](v121);
  v111 = &v107 - v5;
  v6 = sub_24E345B68();
  v109 = *(v6 - 8);
  v110 = v6;
  MEMORY[0x28223BE20](v6);
  v108 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4B18);
  MEMORY[0x28223BE20](v8 - 8);
  v124 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v130 = &v107 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4B20);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v131 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v107 - v16;
  v18 = *(type metadata accessor for FriendSuggestionCell() + 28);
  v113 = a1;
  v19 = *(a1 + v18);
  *v17 = [v19 contact];
  *(v17 + 8) = vdupq_n_s64(0x4054000000000000uLL);
  *(v17 + 3) = swift_getKeyPath();
  v17[32] = 0;
  v20 = type metadata accessor for ContactAvatarView();
  v21 = *(v20 + 28);
  *&v17[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FF0);
  swift_storeEnumTagMultiPayload();
  v22 = *(v20 + 32);
  v147[0] = 0;
  sub_24E346B78();
  *&v17[v22] = *__dst;
  *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4B28) + 36)] = 256;
  v23 = sub_24E346DF8();
  v25 = v24;
  sub_24E114440(a1, v132);
  memcpy(v147, v132, 0x48uLL);
  v147[9] = v23;
  v147[10] = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4B30);
  memcpy(&v17[*(v26 + 36)], v147, 0x58uLL);
  memcpy(__dst, v132, sizeof(__dst));
  v149 = v23;
  v150 = v25;
  sub_24DF95B98(v147, &v135, &qword_27F1E4B38);
  sub_24E101ED8(__dst, &qword_27F1E4B38);
  v27 = sub_24E3461F8();
  v28 = *(v13 + 44);
  v129 = v17;
  v29 = &v17[v28];
  *v29 = v27;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  v30 = [v19 contact];
  v31 = [v30 _gkCompositeName];

  v32 = sub_24E347CF8();
  v34 = v33;

  v135 = v32;
  v136 = v34;
  sub_24DF90C4C();
  v35 = sub_24E3464E8();
  v37 = v36;
  v39 = v38;
  sub_24E346288();
  v40 = sub_24E3464B8();
  v118 = v41;
  v119 = v40;
  v43 = v42;
  v128 = v44;

  sub_24DFA92EC(v35, v37, v39 & 1);

  v127 = sub_24E3461E8();
  sub_24E3451B8();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v126 = v43 & 1;
  LOBYTE(v135) = v43 & 1;
  LOBYTE(v132[0]) = 0;
  v53 = sub_24E347CB8();
  v54 = GKGameCenterUIFrameworkBundle();
  v55 = GKGetLocalizedStringFromTableInBundle();

  v56 = sub_24E347CF8();
  v58 = v57;

  v135 = v56;
  v136 = v58;
  v59 = sub_24E3464E8();
  v61 = v60;
  LOBYTE(v55) = v62;
  sub_24E346378();
  v63 = sub_24E3464B8();
  v65 = v64;
  LOBYTE(v35) = v66;

  v67 = v113;
  sub_24DFA92EC(v59, v61, v55 & 1);

  LODWORD(v135) = sub_24E345F28();
  v68 = sub_24E346478();
  v115 = v69;
  v116 = v68;
  v114 = v70;
  v117 = v71;
  sub_24DFA92EC(v63, v65, v35 & 1);

  v72 = *v67;
  if (*(v67 + 8) == 1)
  {
    v73 = *v67;
    LOBYTE(v132[0]) = *v67;
  }

  else
  {

    sub_24E348268();
    v74 = sub_24E346198();
    sub_24E343EA8();

    v75 = v108;
    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24DE73F34(v72, 0);
    (*(v109 + 8))(v75, v110);
    v73 = LOBYTE(v132[0]);
  }

  v76 = v130;
  if (v73 == 1)
  {
    v77 = v112;
    sub_24E114774(v112);
    v78 = [objc_opt_self() whiteColor];
    v79 = [v78 colorWithAlphaComponent_];

    v80 = sub_24E346948();
    KeyPath = swift_getKeyPath();
    v135 = v80;
    v82 = sub_24E3453E8();
    v83 = (v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4B40) + 36));
    *v83 = KeyPath;
    v83[1] = v82;
    type metadata accessor for GameCenterSettings();
    LOBYTE(v82) = sub_24DFF20B4();
    v84 = swift_getKeyPath();
    v85 = swift_allocObject();
    *(v85 + 16) = (v82 & 1) == 0;
    v86 = v122;
    v87 = (v77 + *(v123 + 36));
    *v87 = v84;
    v87[1] = sub_24DFEB7E4;
    v87[2] = v85;
    v88 = &qword_27F1E4B00;
    sub_24DF95B98(v77, v86, &qword_27F1E4B00);
  }

  else
  {
    v77 = v111;
    sub_24E114774(v111);
    type metadata accessor for GameCenterSettings();
    v89 = sub_24DFF20B4();
    v90 = swift_getKeyPath();
    v91 = swift_allocObject();
    *(v91 + 16) = (v89 & 1) == 0;
    v92 = v122;
    v93 = (v77 + *(v121 + 36));
    *v93 = v90;
    v93[1] = sub_24E04BCC0;
    v93[2] = v91;
    v88 = &qword_27F1E4B10;
    sub_24DF95B98(v77, v92, &qword_27F1E4B10);
  }

  swift_storeEnumTagMultiPayload();
  sub_24E1178D4();
  sub_24E117C88();
  sub_24E345E38();
  sub_24E101ED8(v77, v88);
  v94 = v131;
  sub_24DF95B98(v129, v131, &qword_27F1E4B20);
  v95 = v124;
  sub_24DF95B98(v76, v124, &qword_27F1E4B18);
  v96 = v125;
  sub_24DF95B98(v94, v125, &qword_27F1E4B20);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4BB0);
  v98 = v97[12];
  v100 = v118;
  v99 = v119;
  v132[0] = v119;
  v132[1] = v118;
  LOBYTE(v132[2]) = v126;
  *(&v132[2] + 1) = *v134;
  HIDWORD(v132[2]) = *&v134[3];
  v132[3] = v128;
  LOBYTE(v132[4]) = v127;
  *(&v132[4] + 1) = *v133;
  HIDWORD(v132[4]) = *&v133[3];
  v132[5] = v46;
  v132[6] = v48;
  v132[7] = v50;
  v132[8] = v52;
  LOBYTE(v132[9]) = 0;
  memcpy((v96 + v98), v132, 0x49uLL);
  v101 = v96 + v97[16];
  v103 = v115;
  v102 = v116;
  *v101 = v116;
  *(v101 + 8) = v103;
  v104 = v114 & 1;
  *(v101 + 16) = v114 & 1;
  *(v101 + 24) = v117;
  v105 = v96 + v97[20];
  *v105 = 0;
  *(v105 + 8) = 1;
  sub_24DF95B98(v95, v96 + v97[24], &qword_27F1E4B18);
  sub_24DF95B98(v132, &v135, &qword_27F1DF880);
  sub_24DF82DD4(v102, v103, v104);

  sub_24E101ED8(v130, &qword_27F1E4B18);
  sub_24E101ED8(v129, &qword_27F1E4B20);
  sub_24E101ED8(v95, &qword_27F1E4B18);
  sub_24DFA92EC(v102, v103, v104);

  v135 = v99;
  v136 = v100;
  v137 = v126;
  *v138 = *v134;
  *&v138[3] = *&v134[3];
  v139 = v128;
  v140 = v127;
  *v141 = *v133;
  *&v141[3] = *&v133[3];
  v142 = v46;
  v143 = v48;
  v144 = v50;
  v145 = v52;
  v146 = 0;
  sub_24E101ED8(&v135, &qword_27F1DF880);
  return sub_24E101ED8(v131, &qword_27F1E4B20);
}

uint64_t sub_24E114440@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24E346A68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24E345B68();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for FriendSuggestionCell();
  sub_24E283414(*(a1 + *(v12 + 28)), &v28);
  if ((v29 & 1) == 0)
  {

LABEL_8:
    v17 = 0;
    v18 = 0.0;
    v20 = 0;
    v22 = 0;
    v23 = 0;
    v26 = 0;
    v25 = 0;
    v24 = 0;
    goto LABEL_9;
  }

  v13 = *(a1 + 16);
  if (*(a1 + 24) == 1)
  {
    v14 = *(a1 + 16);
  }

  else
  {

    sub_24E348268();
    v16 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24DE73F34(v13, 0);
    (*(v9 + 8))(v11, v8);
    v14 = v30;
  }

  result = sub_24DFE717C(26.6666667, 26.6666667, v14);
  if (!result)
  {
    goto LABEL_8;
  }

  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v17 = sub_24E346AE8();
  (*(v5 + 8))(v7, v4);
  sub_24E346E28();
  sub_24E3453D8();
  v18 = v30;
  v19 = v31;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v23 = v35;

  v27[16] = v19;
  v27[8] = v21;
  v24 = v19;
  v25 = v21;
  v26 = 0x4000000000000000;
LABEL_9:
  *a2 = v17;
  *(a2 + 1) = v18;
  a2[2] = v24;
  a2[3] = v20;
  a2[4] = v25;
  a2[5] = v22;
  a2[6] = v23;
  a2[7] = v26;
  a2[8] = 0;
  return result;
}

uint64_t sub_24E114774@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_24E346038();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FriendSuggestionCell();
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4B70);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  sub_24E117688(v2, &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FriendSuggestionCell);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  sub_24E1176E4(&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v33 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4BB8);
  sub_24E117FE0();
  sub_24E346BD8();
  v16 = &v13[*(v11 + 36)];
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_24E345C68();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4B98) + 36)] = 256;
  sub_24E346028();
  sub_24E117B5C();
  sub_24E117C40(&qword_27F1E46D0, MEMORY[0x277CDE400]);
  v19 = v31;
  sub_24E346588();
  (*(v4 + 8))(v6, v3);
  sub_24E101ED8(v13, &qword_27F1E4B70);
  LOBYTE(v13) = sub_24E3461E8();
  v20 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4B68) + 36);
  *v20 = v13;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  *(v20 + 40) = 1;
  sub_24E0DC238();
  v21 = [*(v2 + *(v8 + 36)) contact];
  v22 = [v21 identifier];

  v23 = sub_24E347CF8();
  v25 = v24;

  v34[0] = v23;
  v34[1] = v25;
  v32 = v34;
  LOBYTE(v23) = sub_24E023F8C();

  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = v23 & 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4B58);
  v29 = (v19 + *(result + 36));
  *v29 = KeyPath;
  v29[1] = sub_24E04BCC0;
  v29[2] = v27;
  return result;
}

void sub_24E114BF8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E24C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24E367D20;
  *(v2 + 32) = sub_24E323A3C();
  v3 = type metadata accessor for FriendSuggestionCell();
  v4 = v3;
  v5 = a1 + *(v3 + 32);
  if (*(v5 + 8))
  {
    v20 = v3;
    v21 = a1;
    v6 = sub_24E323A3C();
    v7 = *(v2 + 16);
    if (v7 >= *(v2 + 24) >> 1)
    {
      sub_24E077C78();
      v2 = v18;
    }

    *(v2 + 16) = v7 + 1;
    *(v2 + 8 * v7 + 32) = v6;
    v8 = sub_24E323A3C();
    v9 = *(v2 + 16);
    if (v9 >= *(v2 + 24) >> 1)
    {
      sub_24E077C78();
      v2 = v19;
    }

    *(v2 + 16) = v9 + 1;
    *(v2 + 8 * v9 + 32) = v8;
    v4 = v20;
    a1 = v21;
  }

  v10 = [objc_allocWithZone(MEMORY[0x277D0BFA8]) init];
  v11 = sub_24E347CB8();
  v12 = sub_24E347CB8();
  v13 = sub_24E347CB8();
  if (*(v5 + 8))
  {
  }

  v14 = sub_24E347CB8();

  v15 = sub_24E347CB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E367D20;
  *(inited + 32) = 0x6E6F697461636F6CLL;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3998);
  *(inited + 48) = v2;
  v17 = sub_24E347C28();
  sub_24E116D04(v11, v12, v13, v14, v15, v17, v10);

  sub_24E0DCF64(*(a1 + *(v4 + 28)));
}

uint64_t sub_24E114F44@<X0>(uint64_t a1@<X8>)
{
  sub_24E346A58();
  sub_24E346378();
  swift_getKeyPath();
  sub_24E3462E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF638);
  sub_24DFA9774();
  sub_24E346558();

  v2 = sub_24E345F28();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4AC8) + 36)) = v2;
  LOBYTE(v2) = sub_24E3461E8();
  sub_24E3451B8();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4AB0);
  v12 = a1 + *(result + 36);
  *v12 = v2;
  *(v12 + 8) = v4;
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
  return result;
}

uint64_t sub_24E115094(uint64_t a1)
{
  v55 = sub_24E346158();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FriendSuggestionCell();
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v51 = v4;
  v52 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v46 - v6;
  v70 = 0x657469766E69;
  v71 = 0xE600000000000000;
  v72 = xmmword_24E379720;
  v73 = 1;
  v74 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E24C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24E367D20;
  *(v7 + 32) = sub_24E323A3C();
  v8 = a1 + *(v3 + 32);
  v9 = *(v8 + 8);
  v57 = a1;
  if (v9)
  {
    v10 = *(v8 + 48);
    v11 = *(v8 + 56);
    v56 = *(v8 + 64);
    v12 = *(v8 + 80);
    v13 = *(v8 + 88);
    v14 = *(v8 + 40);
    v15 = *(v8 + 32);
    v65 = *v8;
    v66 = v9;
    v67 = *(v8 + 16);
    v68 = v15;
    v69 = v14;
    v16 = sub_24E323A3C();
    v17 = *(v7 + 16);
    if (v17 >= *(v7 + 24) >> 1)
    {
      sub_24E077C78();
      v7 = v44;
    }

    *(v7 + 16) = v17 + 1;
    *(v7 + 8 * v17 + 32) = v16;
    v60 = v10;
    v61 = v11;
    v62 = v56;
    v63 = v12;
    v64 = v13;
    v18 = sub_24E323A3C();
    v19 = *(v7 + 16);
    if (v19 >= *(v7 + 24) >> 1)
    {
      sub_24E077C78();
      v7 = v45;
    }

    a1 = v57;
    *(v7 + 16) = v19 + 1;
    *(v7 + 8 * v19 + 32) = v18;
  }

  v20 = *(a1 + *(v3 + 28));
  sub_24E283414(v20, v58);
  v21 = v58[0];
  v48 = v58[1];
  *&v56 = v58[2];
  v47 = v58[3];
  v22 = v59;
  v23 = [objc_allocWithZone(MEMORY[0x277D0BFA8]) init];
  v24 = sub_24E347CB8();
  v25 = *(v8 + 8);
  if (v22)
  {
    if (v25)
    {
    }

    v26 = sub_24E347CB8();

    v28 = v21 && (v27 = sub_24DFD8654(v21), , v27) || v56 != 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E24C8);
    v29 = sub_24E347EE8();

    [v23 recordInviteFriendClickEventWithPageType:v24 pageId:v26 pushBased:0 knownRecipient:v28 location:v29];

    v30 = v53;
    v31 = sub_24E028DF0(v53);
    MEMORY[0x28223BE20](v31);
    *(&v46 - 2) = v20;
    sub_24E346148();
    return (*(v54 + 8))(v30, v55);
  }

  else
  {
    if (v25)
    {
    }

    v33 = sub_24E347CB8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E24C8);
    v34 = sub_24E347EE8();

    [v23 recordInviteFriendClickEventWithPageType:v24 pageId:v33 pushBased:1 knownRecipient:1 location:v34];

    v35 = sub_24E348098();
    v36 = v50;
    __swift_storeEnumTagSinglePayload(v50, 1, 1, v35);
    v37 = v52;
    sub_24E117688(a1, v52, type metadata accessor for FriendSuggestionCell);
    sub_24E348068();
    v38 = sub_24E348058();
    v39 = (*(v49 + 80) + 64) & ~*(v49 + 80);
    v40 = swift_allocObject();
    v41 = MEMORY[0x277D85700];
    v40[2] = v38;
    v40[3] = v41;
    v42 = v48;
    v40[4] = v21;
    v40[5] = v42;
    v43 = v47;
    v40[6] = v56;
    v40[7] = v43;
    sub_24E1176E4(v37, v40 + v39);
    sub_24DFC8700(0, 0, v36, &unk_24E379D70, v40);
  }
}

uint64_t sub_24E11572C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v9 = sub_24E346158();
  v8[3] = v9;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  v10 = sub_24E343F88();
  v8[6] = v10;
  v8[7] = *(v10 - 8);
  v8[8] = swift_task_alloc();
  v8[9] = sub_24E348068();
  v8[10] = sub_24E348058();
  type metadata accessor for GameCenter();
  swift_initStaticObject();
  v11 = swift_task_alloc();
  v8[11] = v11;
  *v11 = v8;
  v11[1] = sub_24E1158D4;

  return sub_24E2EFF78();
}

uint64_t sub_24E1158D4()
{
  OUTLINED_FUNCTION_9_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_10();
  *v5 = v4;
  *(v6 + 96) = v0;

  v8 = sub_24E347FF8();
  if (v0)
  {
    v9 = sub_24E115A98;
  }

  else
  {
    v9 = sub_24E115A28;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24E115A28()
{

  OUTLINED_FUNCTION_12_5();

  return v0();
}

uint64_t sub_24E115A98()
{
  v1 = v0[12];

  sub_24E343CC8();
  v2 = v1;
  v3 = sub_24E343F78();
  v4 = sub_24E348258();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24DE53000, v3, v4, "Failed to send friend invitation via push, falling back to Messages flow. %@", v6, 0xCu);
    sub_24E101ED8(v7, &unk_27F1DF730);
    MEMORY[0x253040EE0](v7, -1, -1);
    MEMORY[0x253040EE0](v6, -1, -1);
  }

  v10 = v0[12];
  v12 = v0[7];
  v11 = v0[8];
  v13 = v0[5];
  v14 = v0[6];
  v15 = v0[3];
  v16 = v0[4];
  v17 = v0[2];

  (*(v12 + 8))(v11, v14);
  v18 = *(v17 + *(type metadata accessor for FriendSuggestionCell() + 28));
  sub_24E028DF0(v13);
  *(swift_task_alloc() + 16) = v18;
  sub_24E346148();

  (*(v16 + 8))(v13, v15);

  OUTLINED_FUNCTION_12_5();

  return v19();
}

uint64_t sub_24E115CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E115DEC(a1, &v21);
  v3 = v21;
  v4 = v22;
  v5 = v23;
  v6 = v24;
  v7 = v25;
  v8 = sub_24E346358();
  KeyPath = swift_getKeyPath();
  v21 = v3;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  v25 = v7;
  v26 = KeyPath;
  v27 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4BC8);
  sub_24E1180A8();
  sub_24E346818();
  sub_24E118268(v3, v4, v5, v6, v7);

  v10 = sub_24E3461D8();
  sub_24E3451B8();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4BB8);
  v20 = a2 + *(result + 36);
  *v20 = v10;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  return result;
}

double sub_24E115DEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FriendSuggestionCell();
  sub_24E0DC238();
  v5 = [*(a1 + *(v4 + 28)) contact];
  v6 = [v5 identifier];

  v7 = sub_24E347CF8();
  v9 = v8;

  *&v17 = v7;
  *(&v17 + 1) = v9;
  LOBYTE(v7) = sub_24E023F8C();

  if (v7)
  {
    sub_24E346A58();
  }

  else
  {
    v10 = sub_24E347CB8();
    v11 = GKGameCenterUIFrameworkBundle();
    v12 = GKGetLocalizedStringFromTableInBundle();

    v13 = sub_24E347CF8();
    v15 = v14;

    *&v17 = v13;
    *(&v17 + 1) = v15;
    sub_24DF90C4C();
    sub_24E3464E8();
  }

  sub_24E345E38();
  result = *&v17;
  *a2 = v17;
  *(a2 + 16) = v18;
  *(a2 + 32) = v19;
  return result;
}

void sub_24E115FDC(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_24E343F88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = a1;
    if (GKIsRemoteUI())
    {
      v12 = sub_24E348098();
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
      sub_24E348068();
      v13 = v11;
      v14 = a2;
      v15 = sub_24E348058();
      v16 = swift_allocObject();
      v17 = MEMORY[0x277D85700];
      v16[2] = v15;
      v16[3] = v17;
      v16[4] = v14;
      v16[5] = v13;
      sub_24DFC8700(0, 0, v6, &unk_24E379D80, v16);
    }

    else
    {
      type metadata accessor for FriendRequestFacilitator();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_24E369990;
      *(v21 + 32) = [a2 contact];
      v22 = swift_allocObject();
      *(v22 + 16) = v11;
      v25 = v11;
      static FriendRequestFacilitator.makeViewControllerForRemoteInvite(recipients:chatGUID:resultHandler:)(v21, 0, 0, sub_24E1183C8, v22);

      v23 = v25;
    }
  }

  else
  {
    sub_24E343CC8();
    v18 = sub_24E343F78();
    v19 = sub_24E348258();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24DE53000, v18, v19, "CompactFriendSuggestionLockup: Unable to present Messages compose sheet: No hosting controller", v20, 2u);
      MEMORY[0x253040EE0](v20, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_24E1162FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_24E348068();
  v5[4] = sub_24E348058();
  v7 = sub_24E347FF8();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_24E116394, v7, v6);
}

uint64_t sub_24E116394()
{
  v1 = v0[2];
  type metadata accessor for FriendRequestFacilitator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = xmmword_24E369990;
  *(v2 + 32) = [v1 contact];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_24E116498;

  return static FriendRequestFacilitator.makeViewController(recipients:chatGUID:)();
}

uint64_t sub_24E116498()
{
  v1 = *v0;
  OUTLINED_FUNCTION_9_10();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_10();
  *v5 = v4;
  *(v7 + 72) = v6;

  v8 = *(v1 + 48);
  v9 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_24E1165DC, v9, v8);
}

uint64_t sub_24E1165DC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);

  [v2 presentViewController:v1 animated:1 completion:0];

  OUTLINED_FUNCTION_12_5();

  return v3();
}

void sub_24E11665C(void *a1, void *a2, void *a3)
{
  v6 = sub_24E343F88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v16 = a1;
LABEL_5:
    v10 = a1;
    [a3 presentViewController:v16 animated:1 completion:0];
    v11 = v16;

    return;
  }

  if (a2)
  {
    v16 = a2;
    goto LABEL_5;
  }

  sub_24E343CC8();
  v12 = sub_24E343F78();
  v13 = sub_24E348258();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24DE53000, v12, v13, "CompactFriendSuggestionLockup: Unable to present Messages compose sheet: No view controller returned", v14, 2u);
    MEMORY[0x253040EE0](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
}

unint64_t sub_24E116808()
{
  result = qword_27F1E4980;
  if (!qword_27F1E4980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4978);
    sub_24E11688C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4980);
  }

  return result;
}

unint64_t sub_24E11688C()
{
  result = qword_27F1E4988;
  if (!qword_27F1E4988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4970);
    sub_24E116924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4988);
  }

  return result;
}

unint64_t sub_24E116924()
{
  result = qword_27F1E4990;
  if (!qword_27F1E4990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4998);
    sub_24E1169DC();
    sub_24E1027E4(&qword_27F1E49C0, &unk_27F1E49C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4990);
  }

  return result;
}

unint64_t sub_24E1169DC()
{
  result = qword_27F1E49A0;
  if (!qword_27F1E49A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E49A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E49B0);
    sub_24E1027E4(&qword_27F1E49B8, &qword_27F1E49B0);
    swift_getOpaqueTypeConformance2();
    sub_24E1027E4(&qword_27F1DF4A8, &qword_27F1DF488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E49A0);
  }

  return result;
}

uint64_t sub_24E116B28(uint64_t a1)
{
  sub_24E345678();
  OUTLINED_FUNCTION_0_14();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24E345978();
}

unint64_t sub_24E116BF4()
{
  result = qword_27F1E49E8;
  if (!qword_27F1E49E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E49F0);
    sub_24E1027E4(&qword_27F1E49F8, &unk_27F1E4A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E49E8);
  }

  return result;
}

uint64_t sub_24E116CAC@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x25303C5D0]();
  *a1 = result;
  return result;
}

void sub_24E116D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = sub_24E347BE8();

  [a7 recordClickWithAction:a1 targetId:a2 targetType:a3 pageId:a4 pageType:a5 additionalFields:v13];
}

uint64_t type metadata accessor for FriendSuggestionCell()
{
  result = qword_27F1E4A30;
  if (!qword_27F1E4A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_24E116EA4(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3)
{
  result = a2();
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a1 & 0xC000000000000001;
  v9 = MEMORY[0x277D84F90];
  v10 = (MEMORY[0x277D84F90] + 32);
  v11 = a1 & 0xFFFFFFFFFFFFFF8;
  v28 = a1 & 0xFFFFFFFFFFFFFF8;
  v29 = a1;
  while (1)
  {
    if (v5 == v6)
    {
      v25 = v9[3];
      if (v25 >= 2)
      {
        v26 = v25 >> 1;
        v24 = __OFSUB__(v26, v7);
        v27 = v26 - v7;
        if (v24)
        {
          goto LABEL_32;
        }

        v9[2] = v27;
      }

      return v9;
    }

    if (v8)
    {
      result = MEMORY[0x25303F560](v6, a1);
    }

    else
    {
      if (v6 >= *(v11 + 16))
      {
        goto LABEL_29;
      }

      result = *(a1 + 8 * v6 + 32);
    }

    v12 = result;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (!v7)
    {
      v13 = v9[3];
      if (((v13 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v14 = v5;
      v15 = v8;
      v16 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if (v16 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(a3);
      v18 = swift_allocObject();
      v19 = (_swift_stdlib_malloc_size_0(v18) - 32) / 16;
      v18[2] = v17;
      v18[3] = 2 * v19;
      v20 = (v18 + 4);
      v21 = v9[3];
      v22 = v21 >> 1;
      if (v9[2])
      {
        if (v18 != v9 || v20 >= &v9[2 * v22 + 4])
        {
          memmove(v18 + 4, v9 + 4, 16 * v22);
        }

        v9[2] = 0;
      }

      v10 = (v20 + 16 * v22);
      v7 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - (v21 >> 1);

      v9 = v18;
      v8 = v15;
      v5 = v14;
      v11 = v28;
      a1 = v29;
    }

    v24 = __OFSUB__(v7--, 1);
    if (v24)
    {
      goto LABEL_30;
    }

    *v10 = v6;
    v10[1] = v12;
    v10 += 2;
    ++v6;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *sub_24E117058(char *result)
{
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v22 = *(result + 2);
  v4 = MEMORY[0x277D84F90] + 32;
  for (i = result + 64; ; i += 40)
  {
    if (v22 == v2)
    {
      v18 = v3[3];
      if (v18 >= 2)
      {
        v19 = v18 >> 1;
        v17 = __OFSUB__(v19, v1);
        v20 = v19 - v1;
        if (v17)
        {
          goto LABEL_29;
        }

        v3[2] = v20;
      }

      return v3;
    }

    result = *(i - 4);
    v6 = *(i - 3);
    v7 = *(i - 2);
    v8 = *(i - 1);
    v9 = *i;
    v23 = result;
    if (v1)
    {
      result = OUTLINED_FUNCTION_10_32(result);
      v10 = v3;
      goto LABEL_21;
    }

    v11 = v3[3];
    if (((v11 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_28;
    }

    v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4A28);
    v10 = swift_allocObject();
    v14 = (_swift_stdlib_malloc_size_0(v10) - 32) / 48;
    v10[2] = v13;
    v10[3] = 2 * v14;
    v15 = v3[3];
    v1 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - (v15 >> 1);
    v4 = &v10[6 * (v15 >> 1) + 4];
    if (v3[2])
    {
      v21 = 48 * (v15 >> 1);
      if (v10 < v3 || v10 + 4 >= &v3[6 * (v15 >> 1) + 4])
      {
        sub_24E117238(v23, v6, v7, v8, v9);
      }

      else
      {
        sub_24E117238(v23, v6, v7, v8, v9);
        if (v10 == v3)
        {
          goto LABEL_19;
        }
      }

      memmove(v10 + 4, v3 + 4, v21);
LABEL_19:
      v3[2] = 0;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_10_32(v23);
LABEL_20:

LABEL_21:
    v17 = __OFSUB__(v1--, 1);
    if (v17)
    {
      break;
    }

    *v4 = v2;
    *(v4 + 8) = v23;
    *(v4 + 16) = v6;
    *(v4 + 24) = v7;
    *(v4 + 32) = v8;
    *(v4 + 40) = v9;
    v4 += 48;
    ++v2;
    v3 = v10;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

id sub_24E117238(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 2:

    case 1:

    case 0:

      return result;
  }

  return result;
}

void sub_24E1172DC()
{
  sub_24E117470(319, &qword_27F1E3EC0, &type metadata for PresentationContext, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24E117470(319, &qword_27F1E15F0, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24E028218();
      if (v2 <= 0x3F)
      {
        sub_24E11742C();
        if (v3 <= 0x3F)
        {
          sub_24E117470(319, &qword_27F1E4A40, &type metadata for FriendSuggestionCell.MetricsContext, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for FriendSuggestionsDataSource();
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

unint64_t sub_24E11742C()
{
  result = qword_27F1E21A0;
  if (!qword_27F1E21A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1E21A0);
  }

  return result;
}

void sub_24E117470(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24E1174C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E117508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E117584()
{
  result = qword_27F1E4A48;
  if (!qword_27F1E4A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4A50);
    sub_24E116808();
    sub_24E0FF95C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4A48);
  }

  return result;
}

uint64_t sub_24E11762C(uint64_t a1)
{
  v2 = sub_24E3457C8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E117688(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

uint64_t sub_24E1176E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendSuggestionCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E117760(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_23_20(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E1177E0()
{
  result = qword_27F1E4AC0;
  if (!qword_27F1E4AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4AC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF638);
    sub_24DFA9774();
    swift_getOpaqueTypeConformance2();
    sub_24E1027E4(&qword_27F1E4AD0, &unk_27F1E4AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4AC0);
  }

  return result;
}

unint64_t sub_24E1178D4()
{
  result = qword_27F1E4B48;
  if (!qword_27F1E4B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4B10);
    sub_24E11798C();
    sub_24E1027E4(&qword_27F1E0160, &qword_27F1E0168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4B48);
  }

  return result;
}

unint64_t sub_24E11798C()
{
  result = qword_27F1E4B50;
  if (!qword_27F1E4B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4B58);
    sub_24E117A44();
    sub_24E1027E4(&qword_27F1E0160, &qword_27F1E0168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4B50);
  }

  return result;
}

unint64_t sub_24E117A44()
{
  result = qword_27F1E4B60;
  if (!qword_27F1E4B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4B68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4B70);
    sub_24E346038();
    sub_24E117B5C();
    sub_24E117C40(&qword_27F1E46D0, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4B60);
  }

  return result;
}

unint64_t sub_24E117B5C()
{
  result = qword_27F1E4B78;
  if (!qword_27F1E4B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4B70);
    sub_24E1027E4(&qword_27F1E4B80, &unk_27F1E4B88);
    sub_24E1027E4(&qword_27F1E4B90, &unk_27F1E4B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4B78);
  }

  return result;
}

uint64_t sub_24E117C40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E117C88()
{
  result = qword_27F1E4BA0;
  if (!qword_27F1E4BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4B00);
    sub_24E117D40();
    sub_24E1027E4(&qword_27F1E0160, &qword_27F1E0168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4BA0);
  }

  return result;
}

unint64_t sub_24E117D40()
{
  result = qword_27F1E4BA8;
  if (!qword_27F1E4BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4B40);
    sub_24E11798C();
    sub_24E1027E4(&qword_27F1E4248, &unk_27F1E4250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4BA8);
  }

  return result;
}

uint64_t objectdestroy_47Tm()
{
  type metadata accessor for FriendSuggestionCell();
  OUTLINED_FUNCTION_3_13();
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = (v4 + 16) & ~v4;
  v8 = v1 + v7;
  OUTLINED_FUNCTION_11_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0148);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E346158();
    OUTLINED_FUNCTION_5_2();
    (*(v9 + 8))(v8 + v2);
  }

  else
  {
  }

  if (*(v8 + *(v0 + 32) + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v7 + v6, v4 | 7);
}

uint64_t sub_24E117F64(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FriendSuggestionCell() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_24E117FE0()
{
  result = qword_27F1E4BC0;
  if (!qword_27F1E4BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4BB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4BC8);
    sub_24E1180A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4BC0);
  }

  return result;
}

unint64_t sub_24E1180A8()
{
  result = qword_27F1E4BD0;
  if (!qword_27F1E4BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4BC8);
    sub_24E118160();
    sub_24E1027E4(&qword_27F1DF648, &qword_27F1DF650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4BD0);
  }

  return result;
}

unint64_t sub_24E118160()
{
  result = qword_27F1E4BD8;
  if (!qword_27F1E4BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4BE0);
    sub_24E1181E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4BD8);
  }

  return result;
}

unint64_t sub_24E1181E4()
{
  result = qword_27F1E4BE8;
  if (!qword_27F1E4BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4BE8);
  }

  return result;
}

uint64_t sub_24E118268(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_24DFA92EC(a1, a2, a3 & 1);
  }
}

uint64_t sub_24E1182C0()
{
  type metadata accessor for FriendSuggestionCell();
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24E059AA8;
  v6 = OUTLINED_FUNCTION_3_66();

  return sub_24E11572C(v6, v7, v8, v9, v2, v3, v4, v10);
}

uint64_t sub_24E1183D0()
{
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E059970;
  v4 = OUTLINED_FUNCTION_3_66();

  return sub_24E1162FC(v4, v5, v6, v7, v2);
}

unint64_t sub_24E118480()
{
  result = qword_27F1E4C00;
  if (!qword_27F1E4C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4AF0);
    sub_24E118538();
    sub_24E1027E4(&qword_27F1E4C30, &qword_27F1E4AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4C00);
  }

  return result;
}

unint64_t sub_24E118538()
{
  result = qword_27F1E4C08;
  if (!qword_27F1E4C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4A88);
    sub_24E1185F0();
    sub_24E1027E4(&qword_27F1E4C28, &qword_27F1E4AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4C08);
  }

  return result;
}

unint64_t sub_24E1185F0()
{
  result = qword_27F1E4C10;
  if (!qword_27F1E4C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4A80);
    sub_24E1027E4(&qword_27F1E4C18, &unk_27F1E4C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4C10);
  }

  return result;
}

id OUTLINED_FUNCTION_10_32(void *a1)
{

  return sub_24E117238(a1, v1, v2, v3, v4);
}

void sub_24E118780()
{
  sub_24E11F054(319, &qword_27F1E3EB8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24E11F0B8(319, &qword_27F1E3EC0, &type metadata for PresentationContext, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for FriendSuggestionInvitationStateManager();
      if (v2 <= 0x3F)
      {
        sub_24E11EFF0(319, &qword_280BE0100, &qword_27F1DF2F8, &unk_24E3800B0, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24E11F0B8(319, &unk_27F1DF780, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_24E11F0B8(319, &qword_27F1E4C48, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
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

uint64_t sub_24E118948()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4C90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4C98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4340);
  sub_24E11EBEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4358);
  sub_24E1027E4(&qword_27F1E4360, &qword_27F1E4358);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_24E3456F8();
}

uint64_t sub_24E118A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  v3 = type metadata accessor for InviteFriendsBaseView(0);
  MEMORY[0x28223BE20](v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4C98);
  MEMORY[0x28223BE20](v24[0]);
  v7 = v24 - v6;
  v8 = type metadata accessor for InviteFriendsView(0);
  v9 = a1 + *(v8 + 32);
  v10 = *v9;
  v11 = *(v9 + 16);
  *v26 = v10;
  *&v26[16] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF878);
  sub_24E346BA8();
  v12 = __dst[0];
  v13 = __dst[1];
  v14 = __dst[2];
  v15 = __dst[3];
  v16 = *(a1 + *(v8 + 24));

  sub_24E118E04(v12, v13, v14, v15, v16, v5);
  sub_24E343AA8();
  __dst[0] = sub_24E343708();
  __dst[1] = v17;
  sub_24E11ED40(&qword_27F1E4CA8, type metadata accessor for InviteFriendsBaseView);
  sub_24DF90C4C();
  sub_24E3466B8();

  sub_24E120200(v5, type metadata accessor for InviteFriendsBaseView);
  v18 = sub_24E346E28();
  v20 = v19;
  sub_24E118FEC(a1, v25);
  memcpy(v26, v25, 0x48uLL);
  *&v26[72] = v18;
  *&v26[80] = v20;
  memcpy(&v7[*(v24[0] + 36)], v26, 0x58uLL);
  memcpy(__dst, v25, 0x48uLL);
  __dst[9] = v18;
  __dst[10] = v20;
  sub_24DFA9240();
  sub_24E10CF40(__dst, &qword_27F1E3F90);
  v24[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4340);
  sub_24E11EBEC();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4358);
  v22 = sub_24E1027E4(&qword_27F1E4360, &qword_27F1E4358);
  v24[5] = v21;
  v24[6] = v22;
  swift_getOpaqueTypeConformance2();
  sub_24E3468B8();
  return sub_24E10CF40(v7, &qword_27F1E4C98);
}

uint64_t sub_24E118E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  v12 = type metadata accessor for InviteFriendsBaseView(0);
  v13 = v12[5];
  *(a6 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0148);
  swift_storeEnumTagMultiPayload();
  v14 = (a6 + v12[6]);
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;
  v14[3] = a4;
  *(a6 + v12[7]) = a5;
  v15 = (a6 + v12[8]);
  v57 = MEMORY[0x277D84F90];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0F30);
  OUTLINED_FUNCTION_25_18(v16, v16, v17, v18, v19, v20, v21, v22, v53, v57);
  sub_24E346B78();
  *v15 = v58;
  v15[1] = v59;
  v23 = (a6 + v12[9]);
  type metadata accessor for InviteFriendsSearchManager();
  swift_allocObject();
  v24 = sub_24E0F5D44();
  OUTLINED_FUNCTION_25_18(v24, v25, v26, v27, v28, v29, v30, v31, v54, v24);
  sub_24E346B78();
  *v23 = v58;
  v23[1] = v59;
  v32 = a6 + v12[10];
  v33 = [objc_opt_self() currentDevice];
  v34 = [v33 userInterfaceIdiom];

  OUTLINED_FUNCTION_25_18(v35, v36, v37, v38, v39, v40, v41, v42, v55, v34 == 1);
  v43 = sub_24E346B78();
  *v32 = v58;
  *(v32 + 8) = v59;
  v44 = a6 + v12[11];
  OUTLINED_FUNCTION_25_18(v43, v45, v46, v47, v48, v49, v50, v51, v56, 1);
  result = sub_24E346B78();
  *v44 = v58;
  *(v44 + 8) = v59;
  *(a6 + v12[12]) = 15;
  return result;
}

uint64_t sub_24E118FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24E345B68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for InviteFriendsView(0);
  v9 = a1 + *(result + 20);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    v11 = *v9;
    v25 = v10;
  }

  else
  {

    sub_24E348268();
    v12 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24DE73F34(v10, 0);
    result = (*(v5 + 8))(v7, v4);
    v11 = v25;
  }

  if (v11 == 1)
  {
    if (qword_27F1DE118 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for PlayerCardTheme();
    v14 = __swift_project_value_buffer(v13, qword_27F20BF00);
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    v18 = *(v14 + 32);
    v19 = *(v14 + 40);
    v20 = *(v14 + 48);
    v21 = *(v14 + 56);
    v22 = sub_24E345708();
    v23 = sub_24E3461E8();
    result = sub_24DFD7E3C(v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 255;
  }

  *a2 = v15;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  *(a2 + 48) = v21;
  *(a2 + 56) = v22;
  *(a2 + 64) = v23;
  return result;
}

uint64_t sub_24E11922C(uint64_t a1)
{
  v2 = sub_24E345EA8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4358);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24E345E88();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4418);
  sub_24E10BB6C();
  sub_24E3452E8();
  v7 = sub_24E1027E4(&qword_27F1E4360, &qword_27F1E4358);
  MEMORY[0x25303CA30](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E1193E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v31 = a2;
  v2 = sub_24E345B68();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InviteFriendsView(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF830);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4060);
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  sub_24E343AA8();
  v32 = sub_24E3438C8();
  v33 = v13;
  sub_24E11F434();
  swift_allocObject();
  sub_24E11F48C();
  sub_24DF90C4C();
  sub_24E346C08();
  sub_24E1027E4(&qword_27F1DF868, &qword_27F1DF830);
  sub_24E346818();
  (*(v7 + 8))(v9, v6);
  v14 = v28 + *(v5 + 28);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    v16 = *v14;
  }

  else
  {

    sub_24E348268();
    v17 = sub_24E346198();
    sub_24E343EA8();

    v18 = v25;
    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24DE73F34(v15, 0);
    (*(v26 + 8))(v18, v27);
    v16 = v32;
  }

  if (v16 == 1)
  {
    v19 = [objc_opt_self() labelColor];
  }

  else
  {
    if (qword_27F1DDDD8 != -1)
    {
      swift_once();
    }

    v20 = qword_27F20B800;
  }

  v21 = sub_24E346948();
  v22 = v31;
  (*(v29 + 32))(v31, v12, v30);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4418);
  *(v22 + *(result + 36)) = v21;
  return result;
}

uint64_t sub_24E119878(uint64_t a1)
{
  v2 = sub_24E345478();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + *(type metadata accessor for InviteFriendsView(0) + 28));
  if (v6)
  {

    v6(v7);

    return sub_24DE73FA0(v6);
  }

  else
  {
    sub_24E028E9C(v5);
    sub_24E345468();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_24E1199C8@<X0>(uint64_t a1@<X8>)
{
  v125 = a1;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4CF8);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15_3();
  v126 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4D00);
  OUTLINED_FUNCTION_0_14();
  v122 = v5;
  v123 = v4;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_3();
  v121 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE218);
  OUTLINED_FUNCTION_0_14();
  v119 = v9;
  v120 = v8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_3();
  v128 = v11;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4D08);
  OUTLINED_FUNCTION_0_14();
  v113 = v12;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v14);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4D10);
  OUTLINED_FUNCTION_0_14();
  v111 = v15;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v17);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4D18);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4D20);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v20);
  v104 = &v101 - v21;
  v127 = v1;
  v129 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4D28);
  sub_24E11F1E0();
  sub_24E3463B8();
  v110 = type metadata accessor for InviteFriendsBaseView(0);
  v22 = (v1 + *(v110 + 24));
  v23 = *v22;
  v24 = v22[1];
  v26 = v22[2];
  v25 = v22[3];
  v118 = v23;
  v131 = v23;
  v132 = v24;
  v117 = v24;
  v116 = v26;
  v133 = v26;
  v134 = v25;
  v115 = v25;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF718);
  sub_24E346C88();
  v101 = v130[2];
  v103 = sub_24E345E78();
  OUTLINED_FUNCTION_0_14();
  v102 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_1();
  v31 = v30 - v29;
  sub_24E345E68();
  sub_24E343AA8();
  v131 = sub_24E3438F8();
  v132 = v32;
  sub_24DF90C4C();
  v33 = sub_24E3464E8();
  v35 = v34;
  v37 = v36 & 1;
  sub_24E11F290();
  v38 = v105;
  v39 = v104;
  sub_24E346578();
  sub_24DFA92EC(v33, v35, v37);

  (*(v102 + 8))(v31, v103);
  sub_24E10CF40(v39, &qword_27F1E4D20);
  v40 = sub_24E346E28();
  v42 = v41;
  v43 = v106;
  v44 = v38 + *(v106 + 36);
  sub_24E11B7C0(v44);
  v45 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4D60) + 36));
  *v45 = v40;
  v45[1] = v42;
  v46 = sub_24E11F340();
  v47 = v107;
  sub_24E3467D8();
  sub_24E10CF40(v38, &qword_27F1E4D18);
  v48 = sub_24E345758();
  OUTLINED_FUNCTION_0_14();
  v50 = v49;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7_1();
  v54 = v53 - v52;
  sub_24E345748();
  v131 = v43;
  v132 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = MEMORY[0x277CDDAC8];
  v57 = v109;
  v58 = v108;
  sub_24E346908();
  (*(v50 + 8))(v54, v48);
  (v111[1])(v47, v58);
  v130[0] = sub_24E3469A8();
  v59 = sub_24E346058();
  OUTLINED_FUNCTION_0_14();
  v61 = v60;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_7_1();
  v65 = v64 - v63;
  sub_24E346048();
  v131 = v58;
  v132 = v48;
  v133 = OpaqueTypeConformance2;
  v134 = v56;
  swift_getOpaqueTypeConformance2();
  v66 = v112;
  sub_24E346768();
  (*(v61 + 8))(v65, v59);

  v67 = (*(v113 + 8))(v57, v66);
  v68 = *(v110 - 8);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  sub_24E11F434();
  sub_24E348068();
  v70 = sub_24E348058();
  v71 = *(v68 + 80);
  v112 = ~v71;
  v113 = v71;
  v72 = swift_allocObject();
  v73 = MEMORY[0x277D85700];
  *(v72 + 16) = v70;
  *(v72 + 24) = v73;
  sub_24E11F48C();
  v74 = sub_24E348098();
  OUTLINED_FUNCTION_0_14();
  v76 = v75;
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v80 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
  v81 = &v101 - v80;
  sub_24E348078();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v110 = sub_24E345608();
    v111 = &v101;
    OUTLINED_FUNCTION_0_14();
    v109 = v82;
    MEMORY[0x28223BE20](v83);
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_23(v85 - v84);
    v131 = 0;
    v132 = 0xE000000000000000;
    sub_24E348998();

    v131 = 0xD000000000000031;
    v132 = 0x800000024E3A79E0;
    v130[0] = 175;
    v86 = sub_24E348BA8();
    MEMORY[0x25303E950](v86);

    v88 = MEMORY[0x28223BE20](v87);
    (*(v76 + 16))(&v101 - v80, &v101 - v80, v74, v88);
    v89 = v108;
    sub_24E3455F8();
    (*(v76 + 8))(v81, v74);
    v90 = v121;
    (*(v119 + 32))(v121, v128, v120);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE220);
    v92 = (*(v109 + 32))(v90 + *(v91 + 36), v89, v110);
  }

  else
  {
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE228);
    v90 = v121;
    v94 = (v121 + *(v93 + 36));
    v95 = sub_24E345528();
    (*(v76 + 32))(&v94[*(v95 + 20)], &v101 - v80, v74);
    *v94 = &unk_24E37A130;
    *(v94 + 1) = v72;
    v92 = (*(v119 + 32))(v90, v128, v120);
  }

  MEMORY[0x28223BE20](v92);
  v128 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_24E11F434();
  v96 = swift_allocObject();
  OUTLINED_FUNCTION_20_20();
  sub_24E11F48C();
  v97 = v126;
  (*(v122 + 32))(v126, v90, v123);
  v98 = (v97 + *(v124 + 36));
  *v98 = sub_24E11F5BC;
  v98[1] = v96;
  v98[2] = 0;
  v98[3] = 0;
  v131 = v118;
  v132 = v117;
  v133 = v116;
  v134 = v115;
  v99 = MEMORY[0x25303D7B0](v130, v114);
  v131 = v130[0];
  v132 = v130[1];
  MEMORY[0x28223BE20](v99);
  sub_24E11F434();
  swift_allocObject();
  OUTLINED_FUNCTION_20_20();
  sub_24E11F48C();
  sub_24E11F7C4();
  sub_24E3468C8();

  return sub_24E10CF40(v97, &qword_27F1E4CF8);
}

uint64_t sub_24E11A788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4D40);
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4DE8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4DF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = (a1 + *(type metadata accessor for InviteFriendsBaseView(0) + 40));
  v18 = *v17;
  v19 = *(v17 + 1);
  v27 = v18;
  v28 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B88();
  if (v26)
  {
    v20 = 1;
  }

  else
  {
    sub_24E11AA90(v16);
    v21 = sub_24E346318();
    KeyPath = swift_getKeyPath();
    v23 = &v16[*(v11 + 36)];
    *v23 = KeyPath;
    v23[1] = v21;
    sub_24E11AF00(v10);
    sub_24DFA9240();
    v25 = v4;
    sub_24DFA9240();
    sub_24DFA9240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4DF8);
    sub_24DFA9240();
    sub_24E10CF40(v10, &qword_27F1E4DE8);
    sub_24E10CF40(v16, &qword_27F1E4DF0);
    v4 = v25;
    sub_24E10CF40(v7, &qword_27F1E4DE8);
    sub_24E10CF40(v13, &qword_27F1E4DF0);
    sub_24DE6370C();
    v20 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v20, 1, v4);
}

uint64_t sub_24E11AA90@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24E346058();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4E80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4E88);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v49 = &v41 - v13;
  if (sub_24E11D0FC() == 2)
  {
    v48 = a1;
    v14 = (v1 + *(type metadata accessor for InviteFriendsBaseView(0) + 36));
    v16 = *v14;
    v15 = v14[1];
    v50 = v16;
    v51 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4D80);
    sub_24E346B88();
    v17 = sub_24E0F08AC();

    v46 = v4;
    v47 = v3;
    v44 = v6;
    v45 = v7;
    v42 = v11;
    v43 = v8;
    v41 = v12;
    if (v17)
    {

      sub_24E343AA8();
      v18 = sub_24E3437F8();
    }

    else
    {
      sub_24E343AA8();
      v18 = sub_24E343728();
    }

    v50 = v18;
    v51 = v19;
    sub_24DF90C4C();
    v21 = sub_24E3464E8();
    v23 = v22;
    v25 = v24;
    v26 = sub_24E346498();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_24DFA92EC(v21, v23, v25 & 1);

    v33 = sub_24E346C48();
    v50 = v26;
    v51 = v28;
    v52 = v30 & 1;
    v53 = v32;
    v54 = v33;
    sub_24E345388();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4E90);
    v35 = sub_24E12035C();
    sub_24E3466C8();
    sub_24DFA92EC(v26, v28, v30 & 1);

    v55 = sub_24E3469A8();
    v36 = v44;
    sub_24E346048();
    v50 = v34;
    v51 = v35;
    swift_getOpaqueTypeConformance2();
    v37 = v49;
    v38 = v45;
    sub_24E346768();
    (*(v46 + 8))(v36, v47);

    (*(v43 + 8))(v10, v38);
    v39 = v42;
    v40 = v48;
    (*(v41 + 32))(v48, v37, v42);
    return __swift_storeEnumTagSinglePayload(v40, 0, 1, v39);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
  }
}

uint64_t sub_24E11AF00@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for InviteFriendsBaseView(0);
  v43[3] = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v43[4] = v3;
  v43[5] = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4E00);
  MEMORY[0x28223BE20](v48);
  v44 = v43 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4E08);
  MEMORY[0x28223BE20](v45);
  v46 = (v43 - v5);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4E10);
  MEMORY[0x28223BE20](v49);
  v47 = v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4E18);
  MEMORY[0x28223BE20](v7);
  v9 = v43 - v8;
  v10 = sub_24E3457A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4E20);
  MEMORY[0x28223BE20](v14);
  v16 = v43 - v15;
  v17 = (v1 + v2[11]);
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v51) = v18;
  v52 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B88();
  if (v55 == 1)
  {
    v20 = *(v1 + v2[7]);
    v51 = *(v1 + v2[12]);
    v52 = v20;

    sub_24E345798();
    sub_24E1200BC();
    sub_24E3468E8();
    (*(v11 + 8))(v13, v10);

    v21 = &qword_27F1E4E20;
    sub_24DFA9240();
    swift_storeEnumTagMultiPayload();
    sub_24E120004();
    sub_24E120110();
    sub_24E345E38();
    v22 = v16;
  }

  else
  {
    v43[0] = v14;
    v43[1] = v7;
    v43[2] = v9;
    v23 = (v1 + v2[9]);
    v24 = *v23;
    v25 = v23[1];
    v51 = *v23;
    v52 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4D80);
    sub_24E346B88();
    v26 = sub_24E0F08AC();

    if (v26)
    {
      v51 = v24;
      v52 = v25;
      sub_24E346B88();
      v27 = sub_24E0F0C00();

      v28 = *(v1 + v2[7]);
      v29 = v46;
      *v46 = v26;
      v29[1] = v27;
      v29[2] = v28;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4E30);
      sub_24E11FD98(&qword_27F1E4E38, &qword_27F1E4E30, &unk_24E37A260, sub_24E11FE18);
      sub_24E11FD98(&qword_27F1E4E50, &qword_27F1E4E00, &unk_24E37A1E8, sub_24E11FEC0);
      v30 = v47;
      sub_24E345E38();
    }

    else
    {
      v31 = (v1 + v2[8]);
      v33 = *v31;
      v32 = v31[1];
      v51 = v33;
      v52 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4D88);
      sub_24E346B88();
      v34 = sub_24E116DC8(v55);

      v55 = v34;
      swift_getKeyPath();
      sub_24E11F434();
      v35 = swift_allocObject();
      sub_24E11F48C();
      v36 = swift_allocObject();
      *(v36 + 16) = sub_24E11FD14;
      *(v36 + 24) = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3C88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4E28);
      sub_24E1027E4(&qword_27F1E3C90, &qword_27F1E3C88);
      v37 = type metadata accessor for FriendSuggestionLockup();
      v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF830);
      v39 = sub_24E11ED40(&qword_27F1E3C98, type metadata accessor for FriendSuggestionLockup);
      v40 = sub_24E1027E4(&qword_27F1DF868, &qword_27F1DF830);
      v51 = v37;
      v52 = v38;
      v53 = v39;
      v54 = v40;
      swift_getOpaqueTypeConformance2();
      v41 = v44;
      sub_24E346CC8();
      sub_24DFA9240();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4E30);
      sub_24E11FD98(&qword_27F1E4E38, &qword_27F1E4E30, &unk_24E37A260, sub_24E11FE18);
      sub_24E11FD98(&qword_27F1E4E50, &qword_27F1E4E00, &unk_24E37A1E8, sub_24E11FEC0);
      v30 = v47;
      sub_24E345E38();
      sub_24E10CF40(v41, &qword_27F1E4E00);
    }

    v21 = &qword_27F1E4E10;
    sub_24DFA9240();
    swift_storeEnumTagMultiPayload();
    sub_24E120004();
    sub_24E120110();
    sub_24E345E38();
    v22 = v30;
  }

  return sub_24E10CF40(v22, v21);
}

uint64_t sub_24E11B7C0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4D90);
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4D98);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4DA0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4DA8);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = sub_24E11D0FC();
  if (v13 == 2)
  {
    swift_storeEnumTagMultiPayload();
    sub_24E11FA90();
    return sub_24E345E38();
  }

  else
  {
    v39 = v7;
    v40 = v3;
    v41 = a1;
    v38 = &v33;
    MEMORY[0x28223BE20](v13);
    v37 = &v29;
    v31 = v1;
    if (v15)
    {
      MEMORY[0x28223BE20](v15);
      v36 = &v29;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4DC0);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4DC8);
      v33 = sub_24E1027E4(&qword_27F1E4DD0, &qword_27F1E4DC0);
      v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4DD8);
      v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF830);
      v18 = sub_24E1027E4(&qword_27F1DF868, &qword_27F1DF830);
      v19 = sub_24E11FB48();
      v43 = v17;
      v44 = &type metadata for PillButtonStyle;
      v45 = v18;
      v46 = v19;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v43 = v16;
      v44 = OpaqueTypeConformance2;
      v21 = swift_getOpaqueTypeConformance2();
      v31 = MEMORY[0x277CE0BC8];
      v32 = v21;
      v30 = v33;
      v29 = v34;
    }

    else
    {
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4DC0);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4DC8);
      v34 = sub_24E1027E4(&qword_27F1E4DD0, &qword_27F1E4DC0);
      v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4DD8);
      v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF830);
      v25 = sub_24E1027E4(&qword_27F1DF868, &qword_27F1DF830);
      v26 = sub_24E11FB48();
      v43 = v24;
      v44 = &type metadata for PillButtonStyle;
      v45 = v25;
      v46 = v26;
      v27 = swift_getOpaqueTypeConformance2();
      v43 = v23;
      v44 = v27;
      v28 = swift_getOpaqueTypeConformance2();
      v31 = MEMORY[0x277CE0BC8];
      v32 = v28;
      v30 = v34;
      v29 = v35;
    }

    sub_24E345EF8();
    v22 = v42;
    (*(v42 + 16))(v6, v12, v10);
    swift_storeEnumTagMultiPayload();
    sub_24E1027E4(&qword_27F1E4DB8, &qword_27F1E4DA8);
    sub_24E345E38();
    sub_24DFA9240();
    swift_storeEnumTagMultiPayload();
    sub_24E11FA90();
    sub_24E345E38();
    sub_24E10CF40(v9, &qword_27F1E4DA0);
    return (*(v22 + 8))(v12, v10);
  }
}

uint64_t sub_24E11BEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  v4 = type metadata accessor for InviteFriendsBaseView(0);
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  v3[10] = swift_task_alloc();
  v3[11] = sub_24E348068();
  v3[12] = sub_24E348058();
  v7 = sub_24E347FF8();
  v3[13] = v7;
  v3[14] = v6;

  return MEMORY[0x2822009F8](sub_24E11BFEC, v7, v6);
}

uint64_t sub_24E11BFEC()
{
  OUTLINED_FUNCTION_9_7();
  v1 = (*(v0 + 40) + *(*(v0 + 48) + 40));
  v2 = *v1;
  v3 = *(v1 + 1);
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 136) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B98();
  type metadata accessor for GameCenter();
  swift_initStaticObject();
  *(v0 + 120) = sub_24E2EFE4C();
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_24E11C0EC;

  return MEMORY[0x282180668](v0 + 32);
}

uint64_t sub_24E11C0EC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {

    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_24E11C324;
  }

  else
  {

    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_24E11C228;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_24E11C228()
{

  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[4];
  v4 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v4);
  OUTLINED_FUNCTION_6_49();
  sub_24E11F434();
  sub_24E348058();
  OUTLINED_FUNCTION_8_40();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_26_17(v5, MEMORY[0x277D85700]);
  *(v5 + v2) = v3;
  OUTLINED_FUNCTION_5_57();

  OUTLINED_FUNCTION_12_5();

  return v6();
}

uint64_t sub_24E11C324()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  OUTLINED_FUNCTION_6_49();
  sub_24E11F434();
  sub_24E348058();
  OUTLINED_FUNCTION_8_40();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_26_17(v4, MEMORY[0x277D85700]);
  *(v4 + v2) = 0;
  OUTLINED_FUNCTION_5_57();

  OUTLINED_FUNCTION_12_5();

  return v5();
}

uint64_t sub_24E11C420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_24E348068();
  v5[7] = sub_24E348058();
  v7 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E11C4B8, v7, v6);
}

uint64_t sub_24E11C4B8()
{
  v1 = v0[6];
  v2 = v0[5];

  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = type metadata accessor for InviteFriendsBaseView(0);
  v5 = (v2 + *(v4 + 32));
  v7 = *v5;
  v6 = v5[1];
  v0[2] = v7;
  v0[3] = v6;
  v0[4] = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4D88);
  sub_24E346B98();
  v8 = (v2 + *(v4 + 44));
  v9 = *v8;
  v10 = *(v8 + 1);
  *(v0 + 16) = v9;
  v0[3] = v10;
  *(v0 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B98();
  OUTLINED_FUNCTION_12_5();

  return v11();
}

uint64_t sub_24E11C5C8()
{
  v0 = sub_24E347638();
  OUTLINED_FUNCTION_0_14();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v6 = v5 - v4;
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  sub_24E347628();
  sub_24E32E770(1, 18, 3u, 0, v6, 0);
  return (*(v2 + 8))(v6, v0);
}

uint64_t sub_24E11C6C8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  type metadata accessor for InviteFriendsBaseView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4D80);
  sub_24E346B88();
  sub_24E0F0FC4(v2, v3);
}

uint64_t sub_24E11C74C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a4;
  v7 = type metadata accessor for FriendSuggestionLockup();
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = 0xD000000000000010;
  v25[1] = 0x800000024E3A79A0;
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = a1;
  v26 = 4;
  v27 = 0x6974736567677553;
  v28 = 0xEB00000000736E6FLL;
  v17 = xmmword_24E379DA0;
  v29 = xmmword_24E379DA0;
  v30 = 1;
  v31 = 2;
  v10 = *(a3 + *(type metadata accessor for InviteFriendsBaseView(0) + 28));
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  *(v9 + 2) = swift_getKeyPath();
  v9[24] = 0;
  v11 = v7[6];
  *&v9[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0148);
  swift_storeEnumTagMultiPayload();
  v12 = &v9[v7[7]];
  v22 = 0;

  sub_24E346B78();
  v13 = v24;
  *v12 = v23;
  *(v12 + 1) = v13;
  *&v9[v7[8]] = a2;
  *&v9[v7[9]] = v10;
  v14 = &v9[v7[10]];
  *v14 = 0xD000000000000010;
  *(v14 + 1) = 0x800000024E3A79A0;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a1;
  v14[40] = 4;
  *(v14 + 6) = 0x6974736567677553;
  *(v14 + 7) = 0xEB00000000736E6FLL;
  *(v14 + 4) = v17;
  *(v14 + 10) = 1;
  v14[88] = 2;
  *&v9[v7[11]] = 0;
  v19 = a3;
  v20 = a2;
  v21 = v25;
  v15 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF830);
  sub_24E11ED40(&qword_27F1E3C98, type metadata accessor for FriendSuggestionLockup);
  sub_24E1027E4(&qword_27F1DF868, &qword_27F1DF830);
  sub_24E346638();
  return sub_24E120200(v9, type metadata accessor for FriendSuggestionLockup);
}

uint64_t sub_24E11CA68(uint64_t a1, void *a2, const void *a3)
{
  v5 = type metadata accessor for InviteFriendsBaseView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17[-v9];
  sub_24E343AA8();
  v18 = sub_24E343808();
  v19 = v11;
  sub_24E345178();
  v12 = sub_24E345198();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  sub_24E11F434();
  v13 = (v7 + ((*(v6 + 80) + 16) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  sub_24E11F48C();
  *(v14 + v13) = a2;
  memcpy((v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), a3, 0x59uLL);
  v15 = a2;
  sub_24E1202E8(a3, v17);
  sub_24DF90C4C();
  return sub_24E346BF8();
}

void sub_24E11CC78(void *a1, _OWORD *a2)
{
  v3 = v2;
  v50 = 0xD000000000000016;
  v51 = 0x800000024E39E5B0;
  v52 = xmmword_24E379710;
  v53 = 0;
  v54 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E24C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24E369B70;
  *(v6 + 32) = sub_24E323A3C();
  v7 = a2[1];
  v48[2] = *a2;
  v49[0] = v7;
  *(v49 + 9) = *(a2 + 25);
  *(v6 + 40) = sub_24E323A3C();
  v8 = a2[4];
  v47 = a2[3];
  v48[0] = v8;
  *(v48 + 9) = *(a2 + 73);
  *(v6 + 48) = sub_24E323A3C();
  v9 = [objc_allocWithZone(MEMORY[0x277D0BFA8]) init];
  v10 = sub_24E347CB8();
  v11 = sub_24E347CB8();
  v12 = sub_24E347CB8();
  v13 = sub_24E347CB8();
  v14 = sub_24E347CB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E367D20;
  *(inited + 32) = 0x6E6F697461636F6CLL;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3998);
  *(inited + 48) = v6;
  v16 = sub_24E347C28();
  sub_24E116D04(v10, v11, v12, v13, v14, v16, v9);

  v17 = (v3 + *(type metadata accessor for InviteFriendsBaseView(0) + 32));
  v18 = *v17;
  v19 = v17[1];
  aBlock = *v17;
  v38 = v19;

  v20 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4D88);
  sub_24E346B88();
  sub_24E0DD93C(&v46, v20);
  v22 = v21;
  v23 = v46;
  v24 = sub_24DFD8654(v46);
  v25 = v24 - v22;
  if (v24 < v22)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v22 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (sub_24DFD8654(v23) < v24)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v26 = __OFSUB__(0, v25);
  v27 = -v25;
  if (v26)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v28 = sub_24DFD8654(v23);
  v26 = __OFADD__(v28, v27);
  v29 = v28 + v27;
  if (v26)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_24E05F670(v29, 1);
  sub_24E05EE44();
  v44 = v18;
  v45 = v19;
  v43 = v46;
  sub_24E346B98();

  v30 = [objc_opt_self() proxyForLocalPlayer];
  v31 = [v30 utilityServicePrivate];

  v32 = [v20 contact];
  v33 = [v32 identifier];

  if (!v33)
  {
    sub_24E347CF8();
    v33 = sub_24E347CB8();
  }

  v41 = sub_24E11DAA0;
  v42 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_24E052CF0;
  v40 = &block_descriptor_46;
  v34 = _Block_copy(&aBlock);
  v35 = OUTLINED_FUNCTION_20_20();
  [v35 v36];
  _Block_release(v34);
  swift_unknownObjectRelease();
}

uint64_t sub_24E11D0FC()
{
  v1 = v0;
  v2 = type metadata accessor for InviteFriendsBaseView(0);
  v3 = (v0 + v2[11]);
  v4 = *v3;
  v5 = *(v3 + 1);
  LOBYTE(v25) = v4;
  *(&v25 + 1) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B88();
  if ((v24[0] & 1) == 0)
  {
    v7 = (v0 + v2[6]);
    v8 = *v7;
    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    v25 = v8;
    v26 = v10;
    v27 = v9;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF718);
    MEMORY[0x25303D7B0](v24, v11);
    v13 = v24[0];
    v12 = v24[1];

    v14 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v14 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      v15 = (v1 + v2[9]);
      v17 = *v15;
      v16 = v15[1];
      *&v25 = v17;
      *(&v25 + 1) = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4D80);
      sub_24E346B88();
      v18 = sub_24E0F08AC();

      if (v18)
      {
        v19 = sub_24DFD8654(v18);

        if (!v19)
        {
          return 1;
        }
      }
    }

    else
    {
      v20 = (v1 + v2[8]);
      v22 = *v20;
      v21 = v20[1];
      *&v25 = v22;
      *(&v25 + 1) = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4D88);
      sub_24E346B88();
      v23 = sub_24DFD8654(v24[0]);

      if (!v23)
      {
        return 0;
      }
    }
  }

  return 2;
}

uint64_t sub_24E11D2C8@<X0>(uint64_t a1@<X8>)
{
  sub_24E343AA8();
  sub_24E343998();
  sub_24DF90C4C();
  result = sub_24E3464E8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_24E11D32C@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = type metadata accessor for InviteFriendsBaseView(0) - 8;
  MEMORY[0x28223BE20](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF830);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - v4;
  v14[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4DD8);
  v6 = *(v14[0] - 8);
  MEMORY[0x28223BE20](v14[0]);
  v8 = v14 - v7;
  sub_24E343AA8();
  KeyPath = sub_24E3439E8();
  v16 = v9;
  sub_24E11F434();
  swift_allocObject();
  sub_24E11F48C();
  sub_24DF90C4C();
  sub_24E346C08();
  KeyPath = swift_getKeyPath();
  LOWORD(v16) = 0;
  v10 = sub_24E1027E4(&qword_27F1DF868, &qword_27F1DF830);
  v11 = sub_24E11FB48();
  sub_24E346588();
  sub_24DE73F34(KeyPath, v16);
  (*(v3 + 8))(v5, v2);
  KeyPath = v2;
  v16 = &type metadata for PillButtonStyle;
  v17 = v10;
  v18 = v11;
  swift_getOpaqueTypeConformance2();
  v12 = v14[0];
  sub_24E346818();
  return (*(v6 + 8))(v8, v12);
}

uint64_t sub_24E11D6B4(void (*a1)(void))
{
  sub_24E343AA8();
  a1();
  sub_24DF90C4C();
  return sub_24E346B08();
}

uint64_t sub_24E11D734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E343AA8();
  v4 = (a1 + *(type metadata accessor for InviteFriendsBaseView(0) + 24));
  v5 = *v4;
  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  v17 = v5;
  v18 = v7;
  v19 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF718);
  MEMORY[0x25303D7B0](&v16, v8);
  v9 = sub_24E343A38();
  v11 = v10;

  *&v17 = v9;
  *(&v17 + 1) = v11;
  sub_24DF90C4C();
  result = sub_24E3464E8();
  *a2 = result;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_24E11D800()
{
  v13 = sub_24E345B68();
  v0 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0148);
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - v4;
  v6 = sub_24E346158();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InviteFriendsBaseView(0);
  sub_24DFA9240();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  else
  {
    sub_24E348268();
    v10 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    (*(v0 + 8))(v2, v13);
  }

  sub_24E346148();
  return (*(v7 + 8))(v9, v6);
}

void sub_24E11DAA0(void *a1)
{
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    sub_24E343CC8();
    v7 = a1;
    v8 = sub_24E343F78();
    v9 = sub_24E348258();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_24DE53000, v8, v9, "Error adding contact to suggestions denylist: %@", v10, 0xCu);
      sub_24E10CF40(v11, &unk_27F1DF730);
      MEMORY[0x253040EE0](v11, -1, -1);
      MEMORY[0x253040EE0](v10, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }
}

void sub_24E11DC6C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_24E343F88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    if (GKIsRemoteUI())
    {
      v10 = sub_24E348098();
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
      sub_24E348068();
      v11 = v9;
      v12 = sub_24E348058();
      v13 = swift_allocObject();
      v14 = MEMORY[0x277D85700];
      v13[2] = v12;
      v13[3] = v14;
      v13[4] = v11;
      sub_24DFC8700(0, 0, v4, &unk_24E37A198, v13);
    }

    else
    {
      type metadata accessor for FriendRequestFacilitator();
      v18 = swift_allocObject();
      *(v18 + 16) = v9;
      v21 = v9;
      static FriendRequestFacilitator.makeViewControllerForRemoteInvite(recipients:chatGUID:resultHandler:)(MEMORY[0x277D84F90], 0, 0, sub_24E11FC64, v18);

      v19 = v21;
    }
  }

  else
  {
    sub_24E343CC8();
    v15 = sub_24E343F78();
    v16 = sub_24E348258();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24DE53000, v15, v16, "InviteFriendsBaseView: Unable to present Messages compose sheet: No hosting controller", v17, 2u);
      MEMORY[0x253040EE0](v17, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_24E11DF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_24E348068();
  v4[4] = sub_24E348058();
  type metadata accessor for FriendRequestFacilitator();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_24E11DFF4;

  return static FriendRequestFacilitator.makeViewController(recipients:chatGUID:)();
}

uint64_t sub_24E11DFF4()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;
  *(v4 + 48) = v3;

  v6 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E11E12C, v6, v5);
}

uint64_t sub_24E11E12C()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  [v2 presentViewController:v1 animated:1 completion:0];

  OUTLINED_FUNCTION_12_5();

  return v3();
}

void sub_24E11E1AC(void *a1, void *a2, void *a3)
{
  v6 = sub_24E343F88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v16 = a1;
LABEL_5:
    v10 = a1;
    [a3 presentViewController:v16 animated:1 completion:0];
    v11 = v16;

    return;
  }

  if (a2)
  {
    v16 = a2;
    goto LABEL_5;
  }

  sub_24E343CC8();
  v12 = sub_24E343F78();
  v13 = sub_24E348258();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24DE53000, v12, v13, "InviteFriendsBaseView: Unable to present Messages compose sheet: No view controller returned", v14, 2u);
    MEMORY[0x253040EE0](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
}

uint64_t sub_24E11E358(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4C78);
  type metadata accessor for FriendSuggestionLockup();
  sub_24E11EA84();
  sub_24E11ED40(&qword_27F1E3C98, type metadata accessor for FriendSuggestionLockup);
  return sub_24E346CC8();
}

double sub_24E11E47C@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_24E03A93C();
  v4 = sub_24E11E5EC(0xD000000000000010, 0x800000024E3A79C0, 0);
  v5 = objc_allocWithZone(GKSuggestedFriend);
  v6 = sub_24E11EB64(v4, 0, 0xE000000000000000);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  v7 = type metadata accessor for FriendSuggestionLockup();
  v8 = v7[6];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0148);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v7[7];

  sub_24E346B78();
  *v9 = v12;
  *(v9 + 8) = v13;
  *(a2 + v7[8]) = v6;
  *(a2 + v7[9]) = a1;
  v10 = (a2 + v7[10]);
  result = 0.0;
  *(v10 + 73) = 0u;
  v10[3] = 0u;
  v10[4] = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  *v10 = 0u;
  *(a2 + v7[11]) = 0;
  return result;
}

id sub_24E11E5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = sub_24E347CB8();

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = sub_24E347EE8();

LABEL_6:
  v6 = [swift_getObjCClassFromMetadata() contactWithDisplayName:v4 handleStrings:v5];

  return v6;
}

uint64_t sub_24E11E6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v18 = sub_24E346058();
  v3 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4C50);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4C58);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - v11;
  v13 = sub_24E346C48();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4C60);
  (*(*(v14 - 8) + 16))(v8, a1, v14);
  *&v8[*(v6 + 36)] = v13;
  sub_24E345388();
  v15 = sub_24E11E998();
  sub_24E3466C8();
  sub_24E10CF40(v8, &qword_27F1E4C50);
  v21 = sub_24E3469A8();
  sub_24E346048();
  v19 = v6;
  v20 = v15;
  swift_getOpaqueTypeConformance2();
  sub_24E346768();
  (*(v3 + 8))(v5, v18);

  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_24E11E998()
{
  result = qword_27F1E4C68;
  if (!qword_27F1E4C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4C50);
    sub_24E1027E4(&qword_27F1E4C70, &unk_27F1E4C60);
    sub_24E1027E4(&qword_27F1DF4A8, &qword_27F1DF488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4C68);
  }

  return result;
}

unint64_t sub_24E11EA84()
{
  result = qword_27F1E4C80;
  if (!qword_27F1E4C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4C78);
    sub_24E11EB10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4C80);
  }

  return result;
}

unint64_t sub_24E11EB10()
{
  result = qword_27F1E4C88;
  if (!qword_27F1E4C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4C88);
  }

  return result;
}

id sub_24E11EB64(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    OUTLINED_FUNCTION_23_20(a1, a2);
    v4 = sub_24E347CB8();
  }

  else
  {
    v4 = 0;
  }

  v5 = OUTLINED_FUNCTION_20_20();
  v7 = [v5 v6];

  return v7;
}

unint64_t sub_24E11EBEC()
{
  result = qword_27F1E4CA0;
  if (!qword_27F1E4CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4C98);
    type metadata accessor for InviteFriendsBaseView(255);
    sub_24E11ED40(&qword_27F1E4CA8, type metadata accessor for InviteFriendsBaseView);
    sub_24DF90C4C();
    swift_getOpaqueTypeConformance2();
    sub_24E1027E4(&qword_27F1E4090, &qword_27F1E3F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4CA0);
  }

  return result;
}

uint64_t sub_24E11ED40(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24E11EDEC()
{
  sub_24E11F0B8(319, &qword_27F1E3EC0, &type metadata for PresentationContext, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24E11F054(319, &qword_27F1E0FA8, MEMORY[0x277CDE530], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24E11F0B8(319, &qword_27F1E4CC0, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for FriendSuggestionInvitationStateManager();
        if (v3 <= 0x3F)
        {
          sub_24E11EFF0(319, &qword_27F1E4CC8, &qword_27F1E0F30, &unk_24E37A040, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_24E11F054(319, &qword_27F1E4CD0, type metadata accessor for InviteFriendsSearchManager, MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_24E11F0B8(319, &qword_27F1DF470, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
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

void sub_24E11EFF0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_24E11F054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24E11F0B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24E11F108()
{
  result = qword_27F1E4CD8;
  if (!qword_27F1E4CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4CE0);
    sub_24E11ED40(&qword_27F1E3C98, type metadata accessor for FriendSuggestionLockup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4CD8);
  }

  return result;
}

unint64_t sub_24E11F1E0()
{
  result = qword_27F1E4D30;
  if (!qword_27F1E4D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4D28);
    sub_24E1027E4(&qword_27F1E4D38, &qword_27F1E4D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4D30);
  }

  return result;
}

unint64_t sub_24E11F290()
{
  result = qword_27F1E4D48;
  if (!qword_27F1E4D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4D20);
    sub_24E1027E4(&qword_27F1E4D50, &unk_27F1E4D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4D48);
  }

  return result;
}

unint64_t sub_24E11F340()
{
  result = qword_27F1E4D68;
  if (!qword_27F1E4D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4D18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4D20);
    sub_24E11F290();
    swift_getOpaqueTypeConformance2();
    sub_24E1027E4(&qword_27F1E4D70, &unk_27F1E4D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4D68);
  }

  return result;
}

uint64_t sub_24E11F434()
{
  OUTLINED_FUNCTION_0_8();
  v1(0);
  OUTLINED_FUNCTION_5_2();
  v2 = OUTLINED_FUNCTION_19_1();
  v3(v2);
  return v0;
}

uint64_t sub_24E11F48C()
{
  OUTLINED_FUNCTION_0_8();
  v1(0);
  OUTLINED_FUNCTION_5_2();
  v2 = OUTLINED_FUNCTION_19_1();
  v3(v2);
  return v0;
}

uint64_t sub_24E11F4E4()
{
  v2 = type metadata accessor for InviteFriendsBaseView(0);
  OUTLINED_FUNCTION_4_5(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24E0334A8;

  return sub_24E11BEB4(v5, v6, v0 + v4);
}

uint64_t objectdestroy_45Tm()
{
  type metadata accessor for InviteFriendsBaseView(0);
  OUTLINED_FUNCTION_3_13();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_24DE73F34(*v3, *(v3 + 8));
  v4 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0148);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E346158();
    OUTLINED_FUNCTION_0_26();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_10_33(v0[6]);

  OUTLINED_FUNCTION_10_33(v0[8]);

  OUTLINED_FUNCTION_10_33(v0[9]);

  OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_28_14();
  v6 = OUTLINED_FUNCTION_19_19();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_24E11F748(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for InviteFriendsBaseView(0);
  OUTLINED_FUNCTION_4_5(v4);

  return sub_24E11C6C8(a1, a2);
}

unint64_t sub_24E11F7C4()
{
  result = qword_27F1E4D78;
  if (!qword_27F1E4D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4CF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DE218);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4D08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4D10);
    sub_24E345758();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4D18);
    sub_24E11F340();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4D78);
  }

  return result;
}

uint64_t sub_24E11F97C()
{
  v2 = *(type metadata accessor for InviteFriendsBaseView(0) - 8);
  v3 = *(v0 + ((*(v2 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24E0334A8;
  v5 = OUTLINED_FUNCTION_23_22();

  return sub_24E11C420(v5, v6, v7, v8, v3);
}

unint64_t sub_24E11FA90()
{
  result = qword_27F1E4DB0;
  if (!qword_27F1E4DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4DA0);
    sub_24E1027E4(&qword_27F1E4DB8, &unk_27F1E4DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4DB0);
  }

  return result;
}

unint64_t sub_24E11FB48()
{
  result = qword_27F1E4DE0;
  if (!qword_27F1E4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4DE0);
  }

  return result;
}

uint64_t sub_24E11FBEC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_4_5(v3);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(v5);
}

uint64_t sub_24E11FC6C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E032B70;
  v4 = OUTLINED_FUNCTION_23_22();

  return sub_24E11DF28(v4, v5, v6, v2);
}

uint64_t sub_24E11FD14@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for InviteFriendsBaseView(0);
  OUTLINED_FUNCTION_4_5(v7);
  v9 = v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return sub_24E11C74C(a1, a2, v9, a3);
}

uint64_t sub_24E11FD98(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_23_20(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    sub_24E11FE6C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E11FE18()
{
  result = qword_27F1E4E40;
  if (!qword_27F1E4E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4E40);
  }

  return result;
}

unint64_t sub_24E11FE6C()
{
  result = qword_27F1E4E48;
  if (!qword_27F1E4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4E48);
  }

  return result;
}

unint64_t sub_24E11FEC0()
{
  result = qword_27F1E4E58;
  if (!qword_27F1E4E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4E60);
    type metadata accessor for FriendSuggestionLockup();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF830);
    sub_24E11ED40(&qword_27F1E3C98, type metadata accessor for FriendSuggestionLockup);
    sub_24E1027E4(&qword_27F1DF868, &qword_27F1DF830);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4E58);
  }

  return result;
}

unint64_t sub_24E120004()
{
  result = qword_27F1E4E68;
  if (!qword_27F1E4E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4E20);
    sub_24E1200BC();
    swift_getOpaqueTypeConformance2();
    sub_24E11FE6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4E68);
  }

  return result;
}

unint64_t sub_24E1200BC()
{
  result = qword_27F1E4E70;
  if (!qword_27F1E4E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4E70);
  }

  return result;
}

unint64_t sub_24E120110()
{
  result = qword_27F1E4E78;
  if (!qword_27F1E4E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4E10);
    sub_24E11FD98(&qword_27F1E4E38, &unk_27F1E4E30, &unk_24E37A260, sub_24E11FE18);
    sub_24E11FD98(&qword_27F1E4E50, &unk_27F1E4E00, &unk_24E37A1E8, sub_24E11FEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4E78);
  }

  return result;
}

uint64_t sub_24E120200(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_26();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_24E120254()
{
  v1 = *(type metadata accessor for InviteFriendsBaseView(0) - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_24E11CC78(*(v0 + v2), (v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E12035C()
{
  result = qword_27F1E4E98;
  if (!qword_27F1E4E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4E90);
    sub_24E1027E4(&qword_27F1DF4A8, &qword_27F1DF488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4E98);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_57()
{

  return sub_24DFC8700(0, 0, v0, &unk_24E37A148, v1);
}

uint64_t OUTLINED_FUNCTION_16_23()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_26_17@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = a2;

  return sub_24E11F48C();
}

uint64_t OUTLINED_FUNCTION_27_12()
{
}

uint64_t OUTLINED_FUNCTION_28_14()
{
}

void sub_24E120660(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_13_30();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_36();
  sub_24E120A58(a2, v4);
  sub_24E120A58(a3, v4 + *(v5 + 56));
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3();
  }

  v10 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v10, qword_27F20BF00);
  v11 = [a4 traitCollection];
  sub_24E336638();
  OUTLINED_FUNCTION_8_2();

  sub_24E120AC8(v4);
  OUTLINED_FUNCTION_7_2();
}

void sub_24E1208D8()
{
  OUTLINED_FUNCTION_11_29();
  v7 = v6;
  OUTLINED_FUNCTION_7_39();
  OUTLINED_FUNCTION_4_55();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_8_41();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_36();
  sub_24E120A58(v4, v0);
  sub_24E120A58(v3, v0 + *(v5 + 56));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  OUTLINED_FUNCTION_12_24();

  v10 = *(v2 + *(v1 + 32));
  sub_24DF82D00(v2);
  if (v10 == 1)
  {
    if (qword_27F1DE118 != -1)
    {
      OUTLINED_FUNCTION_10_3();
    }

    v11 = type metadata accessor for PlayerCardTheme();
    __swift_project_value_buffer(v11, qword_27F20BF00);
    v12 = [v7 traitCollection];
    sub_24E336638();
    OUTLINED_FUNCTION_8_2();
  }

  sub_24E120AC8(v0);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_10_34();
}

uint64_t sub_24E120A58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E120AC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24E120B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_11_29();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  sub_24E120A58(v27, &a9 - v30);
  sub_24E120A58(v25, &v31[*(v28 + 56)]);
  sub_24E120AC8(v31);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_10_34();
}

void sub_24E120BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_11_29();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_13_30();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  sub_24E120A58(v28, &a9 - v30);
  sub_24E120A58(v26, &v31[*(v22 + 56)]);
  sub_24E120AC8(v31);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_10_34();
}

double sub_24E120CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_16_24(v7, v9);
  sub_24E120A58(a3, v3 + *(v5 + 56));
  sub_24E120AC8(v3);
  return 0.0;
}

double sub_24E120D50@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_4_55();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_24E120A58(a1, &v11 - v8);
  sub_24E120A58(a2, &v9[*(v3 + 56)]);
  sub_24E120AC8(v9);
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 3;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
  *(a3 + 96) = 1;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 1;
  return result;
}

void OUTLINED_FUNCTION_6_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{

  sub_24E120BFC(a1, a2, a3, a4, a5, a6, a7, a7 + 8, a7 + 16, a7 + 24, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t OUTLINED_FUNCTION_7_39()
{

  return type metadata accessor for Shelf.Presentation(0);
}

uint64_t OUTLINED_FUNCTION_12_24()
{

  return sub_24E347128();
}

uint64_t OUTLINED_FUNCTION_14_24()
{

  return sub_24DF82D00(v0);
}

uint64_t OUTLINED_FUNCTION_16_24@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_24E120A58(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_17_25@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_24E120A58(v2, &a2 - a1);
}

void OUTLINED_FUNCTION_18_23(uint64_t a1)
{

  sub_24E0D03A0(a1, v1);
}

uint64_t sub_24E120FD0(void *a1, uint64_t *a2, char *a3, uint64_t a4, char a5, char a6, double a7, double a8, double a9)
{
  v19 = sub_24E347358();
  OUTLINED_FUNCTION_0_14();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_1();
  v25 = v24 - v23;
  v26 = a1[1];
  v27 = *a2;
  v28 = a2[1];
  v29 = *a3;
  *(v9 + 16) = *a1;
  *(v9 + 24) = v26;
  *(v9 + 32) = a7;
  *(v9 + 40) = a8;
  *(v9 + 72) = v29;
  *(v9 + 48) = v27;
  *(v9 + 56) = v28;
  *(v9 + 64) = a9;
  *(v9 + 80) = a4;
  *(v9 + 88) = a5 & 1;
  *(v9 + 89) = a6;
  if (a7 <= 0.0 || a8 <= 0.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
    sub_24E347018();
    *(swift_allocObject() + 16) = xmmword_24E36A270;
    sub_24E346FB8();
    v31[3] = type metadata accessor for ArtworkLoaderConfig();
    v31[0] = v9;

    sub_24E347008();
    sub_24DF8C95C(v31, &qword_27F1E0370);
    (*(v21 + 104))(v25, *MEMORY[0x277D21DF0], v19);
    sub_24E0EF428();

    (*(v21 + 8))(v25, v19);
  }

  return v9;
}

uint64_t sub_24E121240()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32) * v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF670);
  result = swift_initStackObject();
  *(result + 16) = xmmword_24E369E30;
  *(result + 32) = 0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v5 = result;
  v6 = v1 * v2;
  result = sub_24E348BA8();
  *(v5 + 40) = result;
  *(v5 + 48) = v7;
  *(v5 + 56) = 1;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6 < 9.22337204e18)
  {
    *(v5 + 64) = sub_24E348BA8();
    *(v5 + 72) = v8;
    *(v5 + 80) = 2;
    *(v5 + 88) = sub_24E121A8C();
    *(v5 + 96) = v9;
    *(v5 + 104) = 3;
    v10 = 0xE300000000000000;
    v11 = 6778480;
    switch(*(v0 + 72))
    {
      case 1:
        v10 = 0xE400000000000000;
        v11 = 1734701162;
        break;
      case 2:
        v10 = 0xE400000000000000;
        v11 = 1667851624;
        break;
      case 3:
        v11 = 7496556;
        break;
      default:
        break;
    }

    *(v5 + 112) = v11;
    *(v5 + 120) = v10;
    sub_24DFAD584();
    v12 = sub_24E347C28() + 64;
    OUTLINED_FUNCTION_2_18();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;

    v18 = 0;
    if (v15)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        sub_24E343268();
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        v18 = v19;
        do
        {
LABEL_17:
          v15 &= v15 - 1;
          sub_24DF90C4C();

          OUTLINED_FUNCTION_3_15();
          sub_24E348738();
        }

        while (v15);
        continue;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24E121570()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E36A270;
  *(inited + 32) = 2;
  *(inited + 40) = sub_24E121A8C();
  *(inited + 48) = v2;
  *(inited + 56) = 3;
  v3 = 0xE300000000000000;
  v4 = 6778480;
  switch(*(v0 + 72))
  {
    case 1:
      v3 = 0xE400000000000000;
      v4 = 1734701162;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v4 = 1667851624;
      break;
    case 3:
      v4 = 7496556;
      break;
    default:
      break;
  }

  *(inited + 64) = v4;
  *(inited + 72) = v3;
  sub_24DFAD584();
  v5 = sub_24E347C28();
  OUTLINED_FUNCTION_2_18();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v12 = 0;
  if (v8)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      v14 = sub_24E347CB8();

      return v14;
    }

    v8 = *(v5 + 64 + 8 * v13);
    ++v12;
    if (v8)
    {
      v12 = v13;
      do
      {
LABEL_11:
        v8 &= v8 - 1;
        sub_24DF90C4C();

        OUTLINED_FUNCTION_3_15();
        sub_24E348738();
      }

      while (v8);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24E1217A8()
{
  v0 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_24E343288();
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_1();
  v16 = v15 - v14;
  sub_24E121240();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_24DF8C95C(v9, &qword_27F1DEFB8);
    sub_24E343C98();

    v17 = sub_24E343F78();
    v18 = sub_24E348258();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      v21 = sub_24E121D4C();
      v23 = sub_24E1C2BE0(v21, v22, &v27);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_24DE53000, v17, v18, "Could not create request key for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x253040EE0](v20, -1, -1);
      MEMORY[0x253040EE0](v19, -1, -1);
    }

    (*(v2 + 8))(v6, v0);
    return sub_24E347CB8();
  }

  else
  {
    (*(v12 + 32))(v16, v9, v10);
    v24 = sub_24E343228();
    (*(v12 + 8))(v16, v10);
  }

  return v24;
}

uint64_t sub_24E121A8C()
{
  if (*(v0 + 88) == 1 && *(v0 + 89) != 1)
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v3 = *(v0 + 48);
    if (*(v0 + 88))
    {
    }

    else
    {

      sub_24E348BA8();
      OUTLINED_FUNCTION_8_42();

      MEMORY[0x25303E950](45, 0xE100000000000000);
    }

    if (*(v0 + 89) == 1)
    {
      MEMORY[0x25303E950](3362861, 0xE300000000000000);
    }

    return v3;
  }

  return v1;
}

uint64_t sub_24E121B9C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    if (sub_24DFD315C(*(a1 + 72), *(a2 + 72)))
    {
      v6 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
      if (v6 || (sub_24E348C08()) && *(a1 + 64) == *(a2 + 64))
      {
        v7 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
        if (v7 || (sub_24E348C08() & 1) != 0)
        {
          v3 = *(a2 + 88);
          if (*(a1 + 88))
          {
            if (!*(a2 + 88))
            {
              return v3 & 1;
            }

LABEL_26:
            v3 = *(a1 + 89) ^ *(a2 + 89) ^ 1;
            return v3 & 1;
          }

          if (*(a1 + 80) != *(a2 + 80))
          {
            v3 = 1;
          }

          if ((v3 & 1) == 0)
          {
            goto LABEL_26;
          }
        }
      }
    }

    v3 = 0;
    return v3 & 1;
  }

  v3 = 0;
  return v3 & 1;
}

uint64_t sub_24E121C84()
{
  v1 = *(v0 + 32);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v2 = *(v0 + 40);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v3 = v2;
  v4 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = v6 / 2 + v3;
  if (__OFADD__(v6 / 2, v3))
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_24E121D4C()
{
  sub_24E3480F8();
  OUTLINED_FUNCTION_8_42();

  MEMORY[0x25303E950](120, 0xE100000000000000);
  sub_24E3480F8();
  OUTLINED_FUNCTION_8_42();

  MEMORY[0x25303E950](64, 0xE100000000000000);
  sub_24E3480F8();
  OUTLINED_FUNCTION_8_42();

  MEMORY[0x25303E950](14968, 0xE200000000000000);
  sub_24E348AA8();
  return 0;
}

uint64_t sub_24E121E20()
{
  MEMORY[0x25303E950](0x6574616C706D6574, 0xEA0000000000203ALL);
  OUTLINED_FUNCTION_0_104();
  OUTLINED_FUNCTION_3_67();
  MEMORY[0x25303E950](0, 0xE000000000000000);

  MEMORY[0x25303E950](0x203A657A6973, 0xE600000000000000);
  type metadata accessor for CGSize(0);
  OUTLINED_FUNCTION_0_104();
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_6_51();
  OUTLINED_FUNCTION_5_58();

  v0 = sub_24E3480F8();
  MEMORY[0x25303E950](v0);

  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_6_51();
  OUTLINED_FUNCTION_5_58();

  MEMORY[0x25303E950](0x203A74616D726F66, 0xE800000000000000);
  OUTLINED_FUNCTION_0_104();
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_6_51();
  OUTLINED_FUNCTION_5_58();

  MEMORY[0x25303E950](0x203A706F7263, 0xE600000000000000);
  OUTLINED_FUNCTION_0_104();

  MEMORY[0x25303E950](0, 0xE000000000000000);

  MEMORY[0x25303E950](41, 0xE100000000000000);

  return 0;
}

uint64_t sub_24E122078()
{

  return v0;
}

uint64_t sub_24E1220A0()
{
  sub_24E122078();

  return MEMORY[0x2821FE8D8](v0, 90, 7);
}

uint64_t sub_24E122190()
{
  sub_24E348D18();
  sub_24E1220F8();
  return sub_24E348D68();
}

unint64_t sub_24E12221C()
{
  result = qword_27F1E4EA0;
  if (!qword_27F1E4EA0)
  {
    type metadata accessor for ArtworkLoaderConfig();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4EA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_104()
{

  return sub_24E348AA8();
}

void OUTLINED_FUNCTION_3_67()
{

  JUMPOUT(0x25303E950);
}

void OUTLINED_FUNCTION_5_58()
{

  JUMPOUT(0x25303E950);
}

uint64_t OUTLINED_FUNCTION_6_51()
{
}

void OUTLINED_FUNCTION_8_42()
{

  JUMPOUT(0x25303E950);
}

char *AppStoreContentViewController.init(gameRecord:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA7D0);
  OUTLINED_FUNCTION_0_14();
  v46 = v5;
  v47 = v4;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  v45 = &v41 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CD0);
  OUTLINED_FUNCTION_0_14();
  v43 = v9;
  v44 = v8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  v42 = &v41 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6C60);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = sub_24E347638();
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_7_1();
  v16 = sub_24E347388();
  OUTLINED_FUNCTION_0_14();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_1();
  v22 = v21 - v20;
  *&v2[OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_preferredLargeTitleDisplayMode] = 2;
  *&v2[OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_bootstrapPresenter] = 0;
  v23 = OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_appStoreContentView;
  *&v2[v23] = [objc_allocWithZone(type metadata accessor for AppStoreContentView()) init];
  v24 = &v2[OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_startTime];
  *v24 = 0;
  v24[8] = 1;
  *&v2[OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_kvoTokens] = MEMORY[0x277D84F90];
  v2[OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_isDeeplinked] = 0;
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  (*(v18 + 16))(v22, qword_27F20B960 + OBJC_IVAR____TtC12GameCenterUI9GKMetrics_pipeline, v16);
  sub_24E347628();
  v25 = sub_24E347118();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v25);
  sub_24E3476A8();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_pageMetricsPresenter] = sub_24E347658();
  type metadata accessor for AppStoreContentPresenter();
  swift_allocObject();
  v41 = a1;

  sub_24E1328E4();
  *&v2[OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_dataPresenter] = v26;
  v27 = type metadata accessor for AppStoreContentViewController();
  v51.receiver = v2;
  v51.super_class = v27;
  v28 = objc_msgSendSuper2(&v51, sel_init);
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  v29 = *&v28[OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_pageMetricsPresenter];
  sub_24DF8BD90(v49, v48, &qword_27F1E1B70);
  v30 = objc_allocWithZone(type metadata accessor for BootstrapPresenter());
  v31 = v28;
  swift_retain_n();
  v32 = v31;
  v33 = sub_24E190B5C(v28, v48, 0, v29, 0, 0, 0);
  OUTLINED_FUNCTION_16_4();
  *(swift_allocObject() + 24) = &off_28611E018;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CF0);
  sub_24E041D60(&qword_27F1DFB10, &unk_27F1E1CF0);
  sub_24E347198();
  v34 = v42;
  sub_24E3471B8();

  __swift_destroy_boxed_opaque_existential_1(v48);
  (*(v43 + 8))(v34, v44);
  OUTLINED_FUNCTION_16_4();
  *(swift_allocObject() + 24) = &off_28611E018;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1D00);
  sub_24E041D60(&qword_27F1DFB18, &unk_27F1E1D00);
  sub_24E347198();
  v35 = v45;
  sub_24E3471B8();

  __swift_destroy_boxed_opaque_existential_1(v48);
  (*(v46 + 8))(v35, v47);

  sub_24DF8BFF4(v49, &qword_27F1E1B70);
  v36 = *&v32[OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_bootstrapPresenter];
  *&v32[OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_bootstrapPresenter] = v33;

  v37 = *&v32[OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_dataPresenter];
  v38 = *(v37 + 16);
  v39 = *(v37 + 24);

  sub_24DFF79C8(v38, v39, v32);
  sub_24E16F758(1);

  return v32;
}

void sub_24E1229D4()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_preferredLargeTitleDisplayMode) = 2;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_bootstrapPresenter) = 0;
  v1 = OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_appStoreContentView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for AppStoreContentView()) init];
  v2 = v0 + OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_startTime;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_kvoTokens) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_isDeeplinked) = 0;
  sub_24E348AE8();
  __break(1u);
}

uint64_t sub_24E122AC8()
{
}

id AppStoreContentViewController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_kvoTokens;
  swift_beginAccess();
  *&v0[v1] = MEMORY[0x277D84F90];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AppStoreContentViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_24E122CE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_bootstrapPresenter);
  v2 = v1;
  return v1;
}

void *sub_24E122DBC()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_appStoreContentView) + OBJC_IVAR____TtC12GameCenterUI19AppStoreContentView_scrollView);
  v2 = v1;
  return v1;
}

uint64_t sub_24E122DFC()
{
  result = [v0 isViewLoaded];
  if (result)
  {
    result = OUTLINED_FUNCTION_5_59();
    if (result)
    {
      v2 = result;
      [result bounds];
      v4 = v3;

      result = OUTLINED_FUNCTION_5_59();
      if (result)
      {
        v5 = result;
        [result bounds];
        v7 = v6;

        result = OUTLINED_FUNCTION_5_59();
        if (result)
        {
          v8 = result;
          v9 = [result traitCollection];

          v10 = [v9 horizontalSizeClass];
          if (v10 != 1 || v7 >= v4)
          {
            return 0;
          }

          result = OUTLINED_FUNCTION_5_59();
          if (result)
          {
            v12 = result;
            v13 = [result traitCollection];

            v14 = [v13 userInterfaceIdiom];
            if (v14)
            {
              return GKIsXRUIIdiomShouldUsePhoneUI();
            }

            else
            {
              return 1;
            }
          }

LABEL_18:
          __break(1u);
          return result;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_24E122FB4(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_isDeeplinked) = result;
  *(*(v1 + OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_dataPresenter) + 88) = *(v1 + OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_isDeeplinked);
  return result;
}

void sub_24E122FDC()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for AppStoreContentViewController();
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_bootstrapPresenter];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  sub_24E19116C();

  sub_24E3476A8();
  sub_24E347888();
  v4 = [v1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = *&v1[OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_appStoreContentView];
  [v4 addSubview_];

  v7 = OBJC_IVAR____TtC12GameCenterUI19AppStoreContentView_scrollView;
  v8 = *(v6 + OBJC_IVAR____TtC12GameCenterUI19AppStoreContentView_scrollView);
  sub_24E3482D8();

  sub_24E1238A8();
  v9 = [v1 navigationItem];
  [v9 setLargeTitleDisplayMode_];

  sub_24E16F7D0();
  v10 = *(v6 + v7);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = v10;
  v12 = sub_24E3431E8();

  v13 = OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_kvoTokens;
  swift_beginAccess();
  v14 = v12;
  MEMORY[0x25303EA30]();
  sub_24E124330(*((*&v1[v13] & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_24E347F88();
  swift_endAccess();
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v15 = [v1 navigationItem];
    [v15 setStyle_];
  }
}

void sub_24E123258(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_24E12375C(v1);
  }
}

void sub_24E1232FC(char a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for AppStoreContentViewController();
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, a1 & 1);
  sub_24E347668();
  Current = CFAbsoluteTimeGetCurrent();
  v5 = &v2[OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_startTime];
  *v5 = Current;
  *(v5 + 8) = 0;
  v6 = [v2 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 setNeedsFocusUpdate];
  }
}

uint64_t sub_24E1233F0(char a1)
{
  v3 = sub_24E347908();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for AppStoreContentViewController();
  objc_msgSendSuper2(&v15, sel_viewWillDisappear_, a1 & 1);
  if ((v1[OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_startTime + 8] & 1) == 0)
  {
    v10 = *&v1[OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_startTime];
    v11 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
    v12 = sub_24E347CF8();
    sub_24E0595AC(v10, v12, v13, v11);
  }

  sub_24E3478F8();
  sub_24E347678();
  return (*(v5 + 8))(v9, v3);
}

id sub_24E12358C()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for AppStoreContentViewController();
  objc_msgSendSuper2(&v12, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_appStoreContentView];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    return [v1 setFrame_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24E123690(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AppStoreContentViewController();
  objc_msgSendSuper2(&v4, sel_traitCollectionDidChange_, a1);
  sub_24E1238A8();
  return [*&v1[OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_appStoreContentView] setNeedsLayout];
}

void sub_24E12375C(void *a1)
{
  v3 = [v1 navigationItem];
  v4 = [v3 largeTitleDisplayMode];

  if (v4 != 2)
  {
    v5 = [v1 navigationItem];
    [a1 layoutMargins];
    v7 = v6;
    [a1 layoutMargins];
    [v5 setLargeTitleInsets_];

    v8 = [v1 navigationController];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 navigationBar];

      [v10 setNeedsLayout];
    }
  }
}

void sub_24E1238A8()
{
  v1 = v0;
  if (GKIsXRUIIdiomShouldUsePadUI() & 1) != 0 || (v2 = [v0 traitCollection], v3 = objc_msgSend(v2, sel_userInterfaceIdiom), v2, v3 == 1) || (v5 = objc_msgSend(v1, sel_traitCollection), v6 = sub_24E348398(), v5, (v6) && (sub_24E122DFC() & 1) == 0)
  {
    v4 = 1;
  }

  else
  {
    v7 = [v1 traitCollection];
    v8 = sub_24E3483C8();

    v4 = v8 & 1;
  }

  sub_24DFC5D68(v4);
}

void sub_24E123984()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4EF8);
  OUTLINED_FUNCTION_0_14();
  v12 = v1;
  v13 = v0;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v2);
  v11 = &v11 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4F00);
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_24E1333C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4F08);
  sub_24E041D60(&qword_27F1E4F10, &qword_27F1E4F08);

  sub_24E347198();
  type metadata accessor for AppStoreContentViewController();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v14);
  (*(v6 + 8))(v9, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4F18);
  sub_24E041D60(&qword_27F1E4F20, &qword_27F1E4F18);

  sub_24E347198();
  v10 = v11;
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v14);
  (*(v12 + 8))(v10, v13);
  sub_24E1339B0();
}

void (*sub_24E123C4C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E124468;
}

uint64_t (*sub_24E123CB0(void *a1))(void *a1)
{
  v1 = sub_24E123C4C(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E0EAC04;
}

uint64_t (*sub_24E123D08(void *a1))(_BYTE *a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E124460;
}

uint64_t sub_24E123D6C(_BYTE *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4EE8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v13[-v9];
  v13[-v9] = *a1;
  sub_24DF8BD90(a2, &v13[*(v5 + 56) - v9], &qword_27F1E4EF0);
  sub_24DF8BD90(v10, v7, &qword_27F1E4EE8);
  v11 = *(v5 + 56);
  v14 = *v7;
  sub_24E124024(&v14, &v7[v11]);
  sub_24DF8BFF4(v10, &qword_27F1E4EE8);
  return sub_24DF8BFF4(&v7[v11], &qword_27F1E4EF0);
}

uint64_t (*sub_24E123EB4(void *a1))(uint64_t a1)
{
  v1 = sub_24E123D08(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E124458;
}

void sub_24E123F64(uint64_t a1)
{
  v3 = sub_24DFBCE58();
  sub_24DFC6864(a1, v3);

  v4 = [v1 navigationController];
  if (v4)
  {
    v5 = v4;
    [v4 setNeedsFocusUpdate];
  }
}

uint64_t sub_24E124024(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStorePlatterData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4EE8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  *(&v21 - v14) = *a1;
  sub_24DF8BD90(a2, &v21 + *(v10 + 56) - v14, &qword_27F1E4EF0);
  sub_24DF8BD90(v15, v12, &qword_27F1E4EE8);
  v16 = *(v10 + 56);
  if (__swift_getEnumTagSinglePayload(&v12[v16], 1, v4) == 1)
  {
    sub_24DF8BFF4(v15, &qword_27F1E4EE8);
    v17 = &qword_27F1E4EF0;
    v18 = &v12[v16];
  }

  else
  {
    sub_24DFC7750(&v12[v16], v8);
    v19 = sub_24DFBCE58();
    sub_24DFC6D88(v8, v19);

    sub_24E1243FC(v8);
    v17 = &qword_27F1E4EE8;
    v18 = v15;
  }

  return sub_24DF8BFF4(v18, v17);
}

id AppStoreContentViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_24E124330(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_24E347F48();
  }

  return result;
}

uint64_t sub_24E124374(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_24E1243FC(uint64_t a1)
{
  v2 = type metadata accessor for AppStorePlatterData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id OUTLINED_FUNCTION_5_59()
{

  return [v0 (v1 + 2808)];
}

uint64_t type metadata accessor for AllFriendsListFlowAction()
{
  result = qword_27F1E4F28;
  if (!qword_27F1E4F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E124558()
{
  sub_24E12463C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AllFriendsDataSource();
    if (v1 <= 0x3F)
    {
      type metadata accessor for FriendRequestsDataSource();
      if (v2 <= 0x3F)
      {
        type metadata accessor for FriendSuggestionsDataSource();
        if (v3 <= 0x3F)
        {
          type metadata accessor for FriendSuggestionInvitationStateManager();
          if (v4 <= 0x3F)
          {
            sub_24E347208();
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

void sub_24E12463C()
{
  if (!qword_27F1E4F38)
  {
    type metadata accessor for GKDeepLinkDestinationInternal(255);
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E4F38);
    }
  }
}

uint64_t sub_24E124694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_24E347208();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_24E124708(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FriendListAccessActionImplementation();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t sub_24E12477C()
{
  v0 = sub_24E347218();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  type metadata accessor for FriendListAccessAction();
  sub_24DFD8A60();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [objc_allocWithZone(GKSettingsFriendListAccess) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EACB0);
    sub_24E347328();
    if (v15)
    {
      sub_24DE56CE8(&v14, v16);
      v8 = v17;
      v9 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v9 + 8))(v7, 1, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {
      sub_24E0B9DD0(&v14);
      v11 = [v6 navigationController];
      if (v11)
      {
        v12 = v11;
        [v11 pushViewController:v7 animated:1];
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
    (*(v1 + 104))(v3, *MEMORY[0x277D21CA8], v0);
    v10 = sub_24E347AA8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
    (*(v1 + 104))(v3, *MEMORY[0x277D21CA8], v0);
    return sub_24E347AA8();
  }

  return v10;
}

id sub_24E124A40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FriendListAccessActionImplementation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24E124AAC()
{
  result = qword_27F1E0AC0;
  if (!qword_27F1E0AC0)
  {
    type metadata accessor for FriendListAccessAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0AC0);
  }

  return result;
}

uint64_t HostingContainerContentView.init(dismissHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for HostingContentPayload();
  OUTLINED_FUNCTION_3_68();
  sub_24E12901C(v6, v7);
  *a3 = sub_24E345848();
  *(a3 + 8) = v8;
  result = sub_24E346B78();
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  return result;
}

uint64_t type metadata accessor for HostingContentPayload()
{
  result = qword_27F1E5018;
  if (!qword_27F1E5018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E124C18@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v38 = *v1;
  v39 = v2;
  v40 = v1[2];
  if (v38)
  {
    switch(*(v38 + 16))
    {
      case 1:
      case 2:
      case 3:

        v4 = sub_24E125D10();

        if (v4)
        {
          v33[0] = 0;
          BYTE8(__dst[4]) = 0;
          sub_24E126014();
        }

        else
        {

          v5 = sub_24E125C2C();

          v6 = 4;
          v7 = *(v38 + 40);
          if (!*(v38 + 56))
          {
            v6 = *(v38 + 48);
          }

          v8 = *(v38 + 17);
          v33[0] = 1;
          *&__dst[0] = v5;
          *(&__dst[0] + 1) = v6;
          LOBYTE(__dst[1]) = 5;
          *(&__dst[1] + 1) = 0;
          *&__dst[2] = 0;
          *(&__dst[2] + 8) = v39;
          BYTE8(__dst[3]) = v8;
          *&__dst[4] = v7;
          BYTE8(__dst[4]) = 1;
          sub_24DF88BEC(v39);
          sub_24E126014();
        }

        sub_24E345E38();
        memcpy(__dst, __src, 0x49uLL);
        BYTE9(__dst[4]) = 0;
        v9 = &qword_27F1E4FD0;
        sub_24DF8BD90(__src, v33, &qword_27F1E4FD0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4FD0);
        sub_24E1261AC();
        sub_24E345E38();
        memcpy(__dst, v33, 0x4AuLL);
        v35 = 1;
        BYTE10(__dst[4]) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4FA0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4FC0);
        sub_24E128B68(&qword_27F1E4F98, &qword_27F1E4FA0, &unk_24E37A630, sub_24E126014);
        sub_24E126120();
        sub_24E345E38();
        memcpy(__dst, v34, 0x4BuLL);
        v36 = 1;
        BYTE11(__dst[4]) = 1;
        goto LABEL_22;
      case 4:
        __dst[0] = v1[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
        sub_24E346B88();
        if (v33[0] == 1)
        {
          v33[0] = 0;
          __dst[0] = v39;
          BYTE8(__dst[3]) = 0;
          sub_24DF88BEC(v39);
        }

        else
        {

          v15 = sub_24E1262B4();
          v17 = v16;

          v18 = v39;
          v19 = *(v38 + 17);
          v20 = swift_allocObject();
          v21 = v39;
          v20[1] = v38;
          v20[2] = v21;
          v20[3] = v40;
          v34[0] = 1;
          *&__dst[0] = v15;
          *(&__dst[0] + 1) = v17;
          __dst[1] = v18;
          LOBYTE(__dst[2]) = v19;
          *(&__dst[2] + 1) = sub_24E05BE00;
          *&__dst[3] = v20;
          BYTE8(__dst[3]) = 1;
          sub_24DF88BEC(v18);
          sub_24E129094(&v38, v33);
        }

        sub_24E0ECBF4();
        sub_24E0ECD5C();
        sub_24E345E38();
        __dst[0] = __src[0];
        __dst[1] = __src[1];
        __dst[2] = __src[2];
        *(&__dst[2] + 9) = *(&__src[2] + 9);
        BYTE8(__dst[4]) = 0;
        v9 = &qword_27F1E4F88;
        sub_24DF8BD90(__src, v33, &qword_27F1E4F88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4F88);
        sub_24E125F88();
        sub_24E126014();
        sub_24E345E38();
        memcpy(__dst, v33, 0x49uLL);
        v35 = 0;
        BYTE9(__dst[4]) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4F78);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4FA0);
        sub_24E125EFC();
        sub_24E128B68(&qword_27F1E4F98, &qword_27F1E4FA0, &unk_24E37A630, sub_24E126014);
        sub_24E345E38();
        memcpy(__dst, v34, 0x4AuLL);
        v36 = 0;
        BYTE11(__dst[4]) = 0;
LABEL_22:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4F68);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4FB0);
        sub_24E125E44();
        sub_24E126068();
        sub_24E345E38();
        sub_24DF8BFF4(__src, v9);
        goto LABEL_23;
      case 5:
        v23 = *(v38 + 24);
        v28 = v39;
        v10 = *(v38 + 17);
        __src[0] = xmmword_24E37A600;
        LOBYTE(__src[1]) = 1;
        *(&__src[2] + 8) = v39;
        *(&__src[1] + 8) = v23;
        BYTE8(__src[3]) = v10;
        *&__src[4] = 0;
        memcpy(__dst, __src, 0x48uLL);
        BYTE8(__dst[4]) = 0;
        goto LABEL_16;
      case 6:
        v26 = *(v38 + 24);
        v28 = v39;
        v13 = *(v38 + 17);
        __src[0] = xmmword_24E37A600;
        LOBYTE(__src[1]) = 2;
        *(&__src[2] + 8) = v39;
        *(&__src[1] + 8) = v26;
        BYTE8(__src[3]) = v13;
        *&__src[4] = 0;
        memcpy(__dst, __src, 0x48uLL);
        BYTE8(__dst[4]) = 1;
LABEL_16:

        sub_24DF88BEC(v28);
        sub_24E128EF0(__src, v33);
        sub_24E126014();
        sub_24E345E38();
        memcpy(__dst, v33, 0x49uLL);
        v35 = 1;
        BYTE9(__dst[4]) = 1;
        goto LABEL_17;
      case 7:
        v25 = *(v38 + 24);
        v30 = v39;
        v12 = *(v38 + 17);
        __src[0] = xmmword_24E37A600;
        LOBYTE(__src[1]) = 4;
        *(&__src[2] + 8) = v39;
        *(&__src[1] + 8) = v25;
        BYTE8(__src[3]) = v12;
        *&__src[4] = 0;
        memcpy(__dst, __src, 0x48uLL);
        BYTE8(__dst[4]) = 0;

        sub_24DF88BEC(v30);
        sub_24E128EF0(__src, v33);
        sub_24E126014();
        sub_24E345E38();
        memcpy(__dst, v33, 0x49uLL);
        v35 = 0;
        BYTE10(__dst[4]) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4FA0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4FC0);
        sub_24E128B68(&qword_27F1E4F98, &qword_27F1E4FA0, &unk_24E37A630, sub_24E126014);
        sub_24E126120();
        sub_24E345E38();
        memcpy(__dst, v34, 0x4BuLL);
        v36 = 1;
        BYTE11(__dst[4]) = 1;
        goto LABEL_19;
      case 8:
        v27 = *(v38 + 24);
        v31 = v39;
        v14 = *(v38 + 17);
        __src[0] = xmmword_24E37A600;
        LOBYTE(__src[1]) = 3;
        *(&__src[2] + 8) = v39;
        *(&__src[1] + 8) = v27;
        BYTE8(__src[3]) = v14;
        *&__src[4] = 0;
        memcpy(__dst, __src, 0x48uLL);
        BYTE8(__dst[4]) = 1;

        sub_24DF88BEC(v31);
        sub_24E128EF0(__src, v33);
        sub_24E126014();
        sub_24E345E38();
        memcpy(__dst, v33, 0x49uLL);
        v35 = 0;
        BYTE10(__dst[4]) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4FA0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4FC0);
        sub_24E128B68(&qword_27F1E4F98, &qword_27F1E4FA0, &unk_24E37A630, sub_24E126014);
        sub_24E126120();
        sub_24E345E38();
        memcpy(__dst, v34, 0x4BuLL);
        v36 = 1;
        BYTE11(__dst[4]) = 1;
        goto LABEL_19;
      case 9:
        v35 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4FD0);
        sub_24E1261AC();
        sub_24E345E38();
        memcpy(__dst, v33, 0x4AuLL);
        v36 = 1;
        BYTE10(__dst[4]) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4FA0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4FC0);
        sub_24E128B68(&qword_27F1E4F98, &qword_27F1E4FA0, &unk_24E37A630, sub_24E126014);
        sub_24E126120();
        sub_24E345E38();
        memcpy(v33, v34, 0x4BuLL);
        LOBYTE(__src[0]) = 1;
        v33[75] = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4F68);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4FB0);
        sub_24E125E44();
        sub_24E126068();
        sub_24E345E38();
        goto LABEL_24;
      default:
        v24 = *(v38 + 24);
        v29 = v39;
        v11 = *(v38 + 17);
        __src[0] = xmmword_24E37A600;
        LOBYTE(__src[1]) = 0;
        *(&__src[2] + 8) = v39;
        *(&__src[1] + 8) = v24;
        BYTE8(__src[3]) = v11;
        *&__src[4] = 0;
        memcpy(__dst, __src, 0x48uLL);
        BYTE8(__dst[4]) = 1;

        sub_24DF88BEC(v29);
        sub_24E128EF0(__src, v33);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4F88);
        sub_24E125F88();
        sub_24E126014();
        sub_24E345E38();
        memcpy(__dst, v33, 0x49uLL);
        v35 = 0;
        BYTE9(__dst[4]) = 0;
LABEL_17:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4F78);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4FA0);
        sub_24E125EFC();
        sub_24E128B68(&qword_27F1E4F98, &qword_27F1E4FA0, &unk_24E37A630, sub_24E126014);
        sub_24E345E38();
        memcpy(__dst, v34, 0x4AuLL);
        v36 = 0;
        BYTE11(__dst[4]) = 0;
LABEL_19:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4F68);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4FB0);
        sub_24E125E44();
        sub_24E126068();
        sub_24E345E38();
        sub_24E129064(__src);
LABEL_23:
        memcpy(__dst, v33, 0x4CuLL);
LABEL_24:
        result = memcpy(a1, __dst, 0x4CuLL);
        break;
    }
  }

  else
  {
    type metadata accessor for HostingContentPayload();
    sub_24E12901C(&qword_27F1E4F48, type metadata accessor for HostingContentPayload);
    result = sub_24E345828();
    __break(1u);
  }

  return result;
}

void *HostingContainerContentView.body.getter@<X0>(void *a1@<X8>)
{
  if (*v1)
  {

    v3 = sub_24E125D38();

    OUTLINED_FUNCTION_6_52(v4, v5, v6, v7, v8, v9, v10, v11, *v15, *&v15[8], *&v15[16], *&v15[24], *&v15[32], *&v15[40], *&v15[48], *&v15[56], *&v15[64], *&v15[72], __src[0], *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], v17[0], v17[1], v17[2], v17[3], v17[4], v17[5]);
    memcpy(v15, __src, 0x4CuLL);
    if (v3)
    {
      __src[76] = 0;
      v15[76] = 0;
    }

    else
    {
      __src[76] = 1;
      v15[76] = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4F50);
    sub_24E125DB8();
    sub_24E345E38();
    return memcpy(a1, v17, 0x4DuLL);
  }

  else
  {
    type metadata accessor for HostingContentPayload();
    OUTLINED_FUNCTION_3_68();
    sub_24E12901C(v13, v14);
    result = sub_24E345828();
    __break(1u);
  }

  return result;
}

uint64_t sub_24E125A10()
{
  v0 = sub_24E348B78();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24E125A5C(char a1)
{
  result = 0x656C69666F7270;
  switch(a1)
  {
    case 1:
      result = 0x72616F6268736164;
      break;
    case 2:
      result = 0x6F6272656461656CLL;
      break;
    case 3:
      result = 0x6D65766569686361;
      break;
    case 4:
      result = 0x696472616F626E6FLL;
      break;
    case 5:
      result = 0x6E656972466C6C61;
      break;
    case 6:
      result = 0x6552646E65697266;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x49656C69666F7270;
      break;
    case 9:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E125BD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E125A10();
  *a1 = result;
  return result;
}

unint64_t sub_24E125C00@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24E125A5C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24E125C2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24E344E58();

  return v1;
}

uint64_t sub_24E125CA0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24E344E68();
}

uint64_t sub_24E125D4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24E344E58();

  return v1;
}

unint64_t sub_24E125DB8()
{
  result = qword_27F1E4F58;
  if (!qword_27F1E4F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4F50);
    sub_24E125E44();
    sub_24E126068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4F58);
  }

  return result;
}

unint64_t sub_24E125E44()
{
  result = qword_27F1E4F60;
  if (!qword_27F1E4F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4F68);
    sub_24E125EFC();
    sub_24E128B68(&qword_27F1E4F98, &qword_27F1E4FA0, &unk_24E37A630, sub_24E126014);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4F60);
  }

  return result;
}

unint64_t sub_24E125EFC()
{
  result = qword_27F1E4F70;
  if (!qword_27F1E4F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4F78);
    sub_24E125F88();
    sub_24E126014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4F70);
  }

  return result;
}

unint64_t sub_24E125F88()
{
  result = qword_27F1E4F80;
  if (!qword_27F1E4F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4F88);
    sub_24E0ECBF4();
    sub_24E0ECD5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4F80);
  }

  return result;
}

unint64_t sub_24E126014()
{
  result = qword_27F1E4F90;
  if (!qword_27F1E4F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4F90);
  }

  return result;
}

unint64_t sub_24E126068()
{
  result = qword_27F1E4FA8;
  if (!qword_27F1E4FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4FB0);
    sub_24E128B68(&qword_27F1E4F98, &qword_27F1E4FA0, &unk_24E37A630, sub_24E126014);
    sub_24E126120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4FA8);
  }

  return result;
}

unint64_t sub_24E126120()
{
  result = qword_27F1E4FB8;
  if (!qword_27F1E4FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4FC0);
    sub_24E1261AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4FB8);
  }

  return result;
}

unint64_t sub_24E1261AC()
{
  result = qword_27F1E4FC8;
  if (!qword_27F1E4FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4FD0);
    sub_24E126014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4FC8);
  }

  return result;
}

uint64_t sub_24E12624C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_8_43();
  return sub_24E344E68();
}

uint64_t sub_24E1262B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24E344E58();

  return v1;
}

uint64_t sub_24E126328()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_8_43();
  return sub_24E344E68();
}

uint64_t HostingContentPayload.__allocating_init(_:switchView:)(uint64_t a1, int a2)
{
  v4 = swift_allocObject();
  HostingContentPayload.init(_:switchView:)(a1, a2);
  return v4;
}

uint64_t HostingContentPayload.init(_:switchView:)(uint64_t a1, int a2)
{
  v3 = v2;
  v73 = a2;
  v72 = a1;
  sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v68 = v5;
  v69 = v4;
  MEMORY[0x28223BE20](v4);
  v67 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v66 = &v65 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v70 = &v65 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0218);
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v65 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0220);
  OUTLINED_FUNCTION_0_14();
  v18 = v17;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v65 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4FD8);
  OUTLINED_FUNCTION_0_14();
  v24 = v23;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v25);
  v27 = &v65 - v26;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  v28 = OBJC_IVAR____TtC12GameCenterUI21HostingContentPayload__currentGame;
  v75 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1728);
  sub_24E344E28();
  (*(v24 + 32))(v3 + v28, v27, v22);
  v29 = OBJC_IVAR____TtC12GameCenterUI21HostingContentPayload__checkingForegroundedGame;
  LOBYTE(v75) = 0;
  sub_24E344E28();
  v30 = *(v18 + 32);
  v30(v3 + v29, v21, v16);
  v31 = OBJC_IVAR____TtC12GameCenterUI21HostingContentPayload__switchView;
  LOBYTE(v75) = 0;
  sub_24E344E28();
  v30(v3 + v31, v21, v16);
  v32 = v72;
  v33 = OBJC_IVAR____TtC12GameCenterUI21HostingContentPayload__bundleIdentifier;
  v75 = 0;
  v76 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFEF0);
  sub_24E344E28();
  (*(v12 + 32))(v3 + v33, v15, v71);
  if (v32)
  {
    strcpy(v74, "invocationType");
    HIBYTE(v74[3]) = -18;

    OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_4_56();

    sub_24DF8BE60(&v75);
    OUTLINED_FUNCTION_10_35();
    if (v34)
    {
      OUTLINED_FUNCTION_2_64();
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_60();
    OUTLINED_FUNCTION_10_35();
  }

  sub_24DF8BFF4(v78, &qword_27F1E0370);
LABEL_6:
  v35 = sub_24E125A10();
  if (v35 == 10)
  {
    v36 = 9;
  }

  else
  {
    v36 = v35;
  }

  *(v3 + 16) = v36;
  if (v32)
  {
    strcpy(v74, "playerID");
    BYTE1(v74[2]) = 0;
    HIWORD(v74[2]) = 0;
    v74[3] = -402653184;

    OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_4_56();

    sub_24DF8BE60(&v75);
    if (v79)
    {
      v37 = OUTLINED_FUNCTION_2_64();
      v38 = v75;
      v39 = v76;
      if (!v37)
      {
        v38 = 0;
        v39 = 0;
      }

      *(v3 + 24) = v38;
      *(v3 + 32) = v39;
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_60();
  }

  sub_24DF8BFF4(v78, &qword_27F1E0370);
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  if (!v32)
  {
    OUTLINED_FUNCTION_5_60();
    goto LABEL_20;
  }

LABEL_16:
  strcpy(v74, "launchContext");
  HIWORD(v74[3]) = -4864;

  OUTLINED_FUNCTION_13_31();
  OUTLINED_FUNCTION_4_56();

  sub_24DF8BE60(&v75);
  if (!v79)
  {
LABEL_20:
    sub_24DF8BFF4(v78, &qword_27F1E0370);
    goto LABEL_21;
  }

  if (OUTLINED_FUNCTION_2_64())
  {
    v40 = v75;
    v41 = v76;
    goto LABEL_22;
  }

LABEL_21:
  v40 = 0;
  v41 = 0xE000000000000000;
LABEL_22:
  DashboardLaunchContext.init(rawValue:)(*&v40);
  v42 = v77;
  if (v77 == 13)
  {
    v42 = 8;
  }

  *(v3 + 17) = v42;
  if (!v32)
  {
    OUTLINED_FUNCTION_5_60();
    goto LABEL_30;
  }

  strcpy(v78, "userInfo");
  BYTE1(v78[2]) = 0;
  HIWORD(v78[2]) = 0;
  v78[3] = -402653184;

  sub_24E348918();
  OUTLINED_FUNCTION_4_56();

  sub_24DF8BE60(&v75);
  if (!v79)
  {
LABEL_30:
    sub_24DF8BFF4(v78, &qword_27F1E0370);
    v44 = 0;
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5010);
  v43 = OUTLINED_FUNCTION_2_64();
  v44 = v75;
  if (!v43)
  {
    v44 = 0;
  }

LABEL_31:
  *(v3 + 40) = v44;
  sub_24E126238();
  if (sub_24E125A5C(*(v3 + 16)) == v33 && v45 == 0xE700000000000000)
  {
  }

  else
  {
    v47 = sub_24E348C08();

    if ((v47 & 1) == 0)
    {
      if (v32)
      {
        strcpy(v78, "gameBundleId");
        BYTE1(v78[3]) = 0;
        HIWORD(v78[3]) = -5120;

        sub_24E348918();
        OUTLINED_FUNCTION_4_56();

        sub_24DF8BE60(&v75);
        if (v79)
        {
          OUTLINED_FUNCTION_2_64();
          goto LABEL_41;
        }
      }

      else
      {
        OUTLINED_FUNCTION_5_60();
      }

      sub_24DF8BFF4(v78, &qword_27F1E0370);
LABEL_41:
      sub_24E126328();
      if (sub_24E125A5C(*(v3 + 16)) != 0x656C69666F7270 || v48 != 0xE700000000000000)
      {
        OUTLINED_FUNCTION_8_43();
        v50 = sub_24E348C08();

        if (v50)
        {
          goto LABEL_56;
        }

        if (sub_24E125A5C(*(v3 + 16)) != 0x696472616F626E6FLL || v51 != 0xEA0000000000676ELL)
        {
          OUTLINED_FUNCTION_8_43();
          v53 = sub_24E348C08();

          if ((v53 & 1) == 0)
          {
            if (v32)
            {
              strcpy(v74, "gameInternal");
              BYTE1(v74[3]) = 0;
              HIWORD(v74[3]) = -5120;
              OUTLINED_FUNCTION_13_31();
              OUTLINED_FUNCTION_4_56();

              sub_24DF8BE60(&v75);
              if (v79)
              {
                if (OUTLINED_FUNCTION_2_64())
                {
                  sub_24DF88A8C(0, &qword_27F1E5000);
                  sub_24DF88A8C(0, &qword_27F1E5008);
                  v54 = sub_24E348308();
                  v60 = v54;
                  if (v54)
                  {
                    [objc_allocWithZone(MEMORY[0x277D0C048]) initWithInternalRepresentation_];
                    sub_24E125CA0();
                    OUTLINED_FUNCTION_12_25();
                  }

                  else
                  {
                    v61 = v66;
                    sub_24E343C98();
                    v62 = sub_24E343F78();
                    v63 = sub_24E348258();
                    if (os_log_type_enabled(v62, v63))
                    {
                      v64 = swift_slowAlloc();
                      *v64 = 0;
                      _os_log_impl(&dword_24DE53000, v62, v63, "Game Center Hosting Container could not deserialize data", v64, 2u);
                      MEMORY[0x253040EE0](v64, -1, -1);
                    }

                    OUTLINED_FUNCTION_12_25();

                    (*(v68 + 8))(v61, v69);
                  }

                  goto LABEL_61;
                }

LABEL_60:
                sub_24E125D24();
                v56 = sub_24E348098();
                v57 = v70;
                __swift_storeEnumTagSinglePayload(v70, 1, 1, v56);
                v58 = swift_allocObject();
                v58[2] = 0;
                v58[3] = 0;
                v58[4] = v3;

                sub_24DFC8700(0, 0, v57, &unk_24E37A670, v58);

LABEL_61:
                switch(*(v3 + 16))
                {
                  case 0:
                  case 7:
                  case 8:
                    v59 = 3;
                    goto LABEL_66;
                  case 2:
                    *(v3 + 48) = 0;
                    goto LABEL_67;
                  case 3:
                    v59 = 1;
                    goto LABEL_66;
                  default:
                    v59 = 4;
LABEL_66:
                    *(v3 + 48) = v59;
LABEL_67:
                    *(v3 + 56) = 0;
                    break;
                }

                return v3;
              }
            }

            else
            {
              OUTLINED_FUNCTION_5_60();
            }

            sub_24DF8BFF4(v78, &qword_27F1E0370);
            goto LABEL_60;
          }

LABEL_56:

          return v3;
        }
      }

      goto LABEL_56;
    }
  }

  result = sub_24E348AE8();
  __break(1u);
  return result;
}