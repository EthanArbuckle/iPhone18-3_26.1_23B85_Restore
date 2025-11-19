uint64_t sub_24F4982E4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD00000000000001DLL;
    if (v1 != 1)
    {
      v5 = 0xD000000000000019;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 25705;
    }
  }

  else
  {
    v2 = 0x6575676573;
    if (v1 != 5)
    {
      v2 = 0xD000000000000011;
    }

    v3 = 0xD000000000000018;
    if (v1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F4983CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F49A808(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F4983F4(uint64_t a1)
{
  v2 = sub_24F49A5E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F498430(uint64_t a1)
{
  v2 = sub_24F49A5E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4984B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244CA0);
  MEMORY[0x28223BE20](v4 - 8);
  v21 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for AchievementsCountHeaderItem(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F499C5C(a1, v11);
  if (qword_27F211478 != -1)
  {
    swift_once();
  }

  v13 = qword_27F39E9B8;
  v12 = unk_27F39E9C0;
  v14 = *(v11 + 5);
  v15 = *(v11 + 6);
  v16 = v11[*(v9 + 32)];

  sub_24F49AA8C(v11, type metadata accessor for AchievementsCountHeaderItem);
  sub_24F6698FC(a1 + *(v9 + 28), v8);
  v17 = v21;
  sub_24E60169C(v8, v21, &qword_27F244CA0);
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244CA8);
  sub_24E60169C(v17, a2 + *(v18 + 48), &qword_27F244CA0);

  sub_24E601704(v8, &qword_27F244CA0);
  sub_24E601704(v17, &qword_27F244CA0);
}

uint64_t sub_24F4986DC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = type metadata accessor for AchievementsCountHeaderItem(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_24F499C5C(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_24F49A514(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *a2 = sub_24F49A578;
  a2[1] = v8;
  return result;
}

uint64_t sub_24F4987D4()
{
  sub_24F47DE08();

  return sub_24F9218E8();
}

uint64_t sub_24F498818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_24F924218();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v48 - v6;
  v60 = type metadata accessor for AchievementCountHeaderText();
  MEMORY[0x28223BE20](v60);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244D30);
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244D38);
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x28223BE20](v12);
  v53 = &v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v48 - v15;
  v17 = sub_24F91F008();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244D40);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v48 - v28;
  v59 = a1;
  sub_24F498FB0(v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_24E601704(v16, &qword_27F215340);
    v30 = 1;
    v31 = v59;
    v33 = v61;
    v32 = v62;
  }

  else
  {
    (*(v18 + 32))(v23, v16, v17);
    v34 = *(v18 + 16);
    v50 = v23;
    v34(v20, v23, v17);
    v35 = v52;
    sub_24E984D7C(v20, v52);
    v49 = *(v18 + 8);
    v49(v20, v17);
    sub_24F91EF98();
    v36 = sub_24F91EFA8();
    (*(*(v36 - 8) + 56))(v7, 0, 1, v36);
    v37 = sub_24F4977B8(&qword_27F244D50, type metadata accessor for AchievementCountHeaderText);
    v51 = v11;
    sub_24F9260F8();
    sub_24E601704(v7, &qword_27F233180);
    sub_24F49AA8C(v35, type metadata accessor for AchievementCountHeaderText);
    v31 = v59;
    if (*(v59 + 32))
    {
      v38 = v56;
      sub_24F924208();
      v39 = v58;
    }

    else
    {
      v64[0] = MEMORY[0x277D84F90];
      sub_24F4977B8(&qword_27F216C88, MEMORY[0x277CDFB98]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40);
      sub_24E602068(&qword_27F21AE48, &qword_27F21AE40);
      v38 = v56;
      v39 = v58;
      sub_24F92C6A8();
    }

    v64[0] = v60;
    v64[1] = v37;
    swift_getOpaqueTypeConformance2();
    v40 = v53;
    v41 = v55;
    v42 = v51;
    sub_24F926AE8();
    (*(v57 + 8))(v38, v39);
    (*(v54 + 8))(v42, v41);
    v49(v50, v17);
    v33 = v61;
    v32 = v62;
    (*(v61 + 32))(v29, v40, v62);
    v30 = 0;
  }

  (*(v33 + 56))(v29, v30, 1, v32);
  v43 = *v31;
  v44 = v31[1];
  sub_24E60169C(v29, v26, &qword_27F244D40);
  v45 = v63;
  sub_24E60169C(v26, v63, &qword_27F244D40);
  v46 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244D48) + 48));
  *v46 = v43;
  v46[1] = v44;
  sub_24F49AA54(v31, v64);

  sub_24E601704(v29, &qword_27F244D40);

  return sub_24E601704(v26, &qword_27F244D40);
}

uint64_t sub_24F498FB0@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v20 - v3;
  v4 = sub_24F91EE98();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24F91EEA8();
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91EEC8();
  MEMORY[0x28223BE20](v10 - 8);
  v21 = "showPlaceholders";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x6F746172656D756ELL;
  *(inited + 40) = 0xE900000000000072;
  v27 = *(v1 + 16);
  sub_24E9B5BEC();
  *(inited + 48) = sub_24F92C628();
  *(inited + 56) = v12;
  *(inited + 64) = 0x616E696D6F6E6564;
  *(inited + 72) = 0xEB00000000726F74;
  v27 = *(v1 + 24);
  *(inited + 80) = sub_24F92C628();
  *(inited + 88) = v13;
  v14 = sub_24E6086DC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90);
  swift_arrayDestroy();
  v15._object = (v21 | 0x8000000000000000);
  v15._countAndFlagsBits = 0xD00000000000001ELL;
  localizedString(_:with:)(v15, v14);

  type metadata accessor for AttributeScopes.AchievementCountTextAttributes();
  (*(v7 + 104))(v9, *MEMORY[0x277CC8BA8], v22);
  v16 = v25;
  (*(v23 + 104))(v6, *MEMORY[0x277CC8BA0], v24);
  sub_24F91EEB8();
  v17 = sub_24F91F4A8();
  (*(*(v17 - 8) + 56))(v26, 1, 1, v17);
  sub_24F4977B8(&qword_27F223A78, type metadata accessor for AttributeScopes.AchievementCountTextAttributes);
  sub_24F91EFE8();
  v18 = sub_24F91F008();
  return (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
}

uint64_t sub_24F499538@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v3;
  v11 = *(v1 + 32);
  *a1 = sub_24F924C98();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244D20);
  sub_24F498818(v10, a1 + *(v4 + 44));
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244D28) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858) + 28);
  v7 = *MEMORY[0x277CDF3C0];
  v8 = sub_24F9234D8();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  result = swift_getKeyPath();
  *v5 = result;
  return result;
}

uint64_t sub_24F499638@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244CA0);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217710);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for AchievementsCountHeaderItem(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F499C5C(a1, v16);
  if (qword_27F211478 != -1)
  {
    swift_once();
  }

  v17 = unk_27F39E9C0;
  v18 = *(v16 + 6);
  v46 = *(v16 + 5);
  v47 = qword_27F39E9B8;
  v45 = v18;
  v44 = v16[*(v14 + 32)];

  sub_24F49AA8C(v16, type metadata accessor for AchievementsCountHeaderItem);
  sub_24F9271E8();
  v19 = sub_24F9251C8();
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2145B0) + 36)] = v19;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214598) + 36);
  v21 = *MEMORY[0x277CE13B8];
  v22 = sub_24F927748();
  (*(*(v22 - 8) + 104))(&v13[v20], v21, v22);
  LOBYTE(v21) = sub_24F9257F8();
  sub_24F923318();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217788) + 36)];
  *v31 = v21;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  LOBYTE(v21) = sub_24F925868();
  sub_24F923318();
  v32 = &v13[*(v8 + 36)];
  *v32 = v21;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  sub_24F6698FC(a1 + *(v14 + 28), v7);
  sub_24E60169C(v13, v10, &qword_27F217710);
  v37 = v48;
  sub_24E60169C(v7, v48, &qword_27F244CA0);
  v38 = v46;
  v39 = v43;
  *v43 = v47;
  v39[1] = v17;
  v40 = v45;
  v39[2] = v38;
  v39[3] = v40;
  *(v39 + 32) = v44;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244CB8);
  sub_24E60169C(v10, v39 + *(v41 + 48), &qword_27F217710);
  sub_24E60169C(v37, v39 + *(v41 + 64), &qword_27F244CA0);

  sub_24E601704(v7, &qword_27F244CA0);
  sub_24E601704(v13, &qword_27F217710);
  sub_24E601704(v37, &qword_27F244CA0);
  sub_24E601704(v10, &qword_27F217710);
}

uint64_t sub_24F499A70@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24F924998();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244CB0);
  return sub_24F499638(v1, (a1 + *(v3 + 44)));
}

unint64_t sub_24F499B5C()
{
  result = qword_27F244C98;
  if (!qword_27F244C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244C98);
  }

  return result;
}

uint64_t sub_24F499C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementsCountHeaderItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F499CC0()
{
  v1 = type metadata accessor for AchievementsCountHeaderItem(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  __swift_destroy_boxed_opaque_existential_1(v3);
  v4 = v3 + v1[7];
  v5 = type metadata accessor for FriendsPlayingHeaderItem();
  if (!(*(*(v5 - 1) + 48))(v4, 1, v5))
  {
    __swift_destroy_boxed_opaque_existential_1(v4);

    v6 = v4 + v5[6];

    v7 = type metadata accessor for Player(0);
    v8 = v7[6];
    v9 = sub_24F9289E8();
    v47 = *(v9 - 8);
    v48 = v9;
    v10 = v6 + v8;
    v11 = *(v47 + 8);
    v11(v10);

    if (*(v6 + v7[9] + 8) != 1)
    {
    }

    v12 = v6 + v7[13];
    v13 = type metadata accessor for CallProviderConversationHandleSet();
    v49 = v11;
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      v44 = v5;
      v45 = v4;
      v14 = type metadata accessor for CallProviderConversationHandle();
      v15 = *(*(v14 - 8) + 48);
      if (!(v15)(v12, 1, v14))
      {
        v16 = v11;

        v17 = *(type metadata accessor for CallProvider() + 24);
        if (!(*(v47 + 48))(v12 + v17, 1, v48))
        {
          v16(v12 + v17, v48);
        }
      }

      v43 = v12 + *(v13 + 20);
      v18 = v15();
      v5 = v44;
      if (!v18)
      {

        v19 = *(type metadata accessor for CallProvider() + 24);
        if (!(*(v47 + 48))(v43 + v19, 1, v48))
        {
          v49(v43 + v19, v48);
        }
      }

      v4 = v45;
    }

    if (*(v6 + v7[15] + 8))
    {
    }

    v20 = v6 + v7[16];
    PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
    if (!(*(*(PlayedTogetherInfo - 8) + 48))(v20, 1, PlayedTogetherInfo))
    {
      v46 = v1;

      v22 = type metadata accessor for Game();
      v49(v20 + v22[18], v48);
      v23 = v22[19];
      if (!(*(v47 + 48))(v20 + v23, 1, v48))
      {
        v49(v20 + v23, v48);
      }

      v24 = v22[21];
      v25 = sub_24F920818();
      v26 = *(v25 - 8);
      if (!(*(v26 + 48))(v20 + v24, 1, v25))
      {
        (*(v26 + 8))(v20 + v24, v25);
      }

      v1 = v46;
    }

    v27 = v6 + v7[17];
    ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
    if (!(*(*(ChallengeInfo - 8) + 48))(v27, 1, ChallengeInfo))
    {

      v29 = type metadata accessor for Game();
      v49(v27 + v29[18], v48);
      v30 = v29[19];
      if (!(*(v47 + 48))(v27 + v30, 1, v48))
      {
        v49(v27 + v30, v48);
      }

      v31 = v29[21];
      v32 = sub_24F920818();
      v33 = *(v32 - 8);
      if (!(*(v33 + 48))(v27 + v31, 1, v32))
      {
        (*(v33 + 8))(v27 + v31, v32);
      }
    }

    v34 = v4 + v5[8];
    if (*(v34 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v34);
    }

    v35 = v5[9];
    v36 = sub_24F929608();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v4 + v35, 1, v36))
    {
      (*(v37 + 8))(v4 + v35, v36);
    }
  }

  v38 = v3 + v1[9];
  if (*(v38 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v39 = v1[10];
  v40 = sub_24F929608();
  v41 = *(v40 - 8);
  if (!(*(v41 + 48))(v3 + v39, 1, v40))
  {
    (*(v41 + 8))(v3 + v39, v40);
  }

  return swift_deallocObject();
}

uint64_t sub_24F49A514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementsCountHeaderItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F49A578@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AchievementsCountHeaderItem(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F4984B8(v4, a1);
}

unint64_t sub_24F49A5E8()
{
  result = qword_27F244CC8;
  if (!qword_27F244CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244CC8);
  }

  return result;
}

unint64_t sub_24F49A704()
{
  result = qword_27F244D08;
  if (!qword_27F244D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244D08);
  }

  return result;
}

unint64_t sub_24F49A75C()
{
  result = qword_27F244D10;
  if (!qword_27F244D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244D10);
  }

  return result;
}

unint64_t sub_24F49A7B4()
{
  result = qword_27F244D18;
  if (!qword_27F244D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244D18);
  }

  return result;
}

uint64_t sub_24F49A808(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA75860 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FA75880 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA758A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA758C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_24F49AA8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F49AAF0()
{
  result = qword_27F244D58;
  if (!qword_27F244D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244D28);
    sub_24F49ABA8();
    sub_24E602068(&qword_27F21B308, &qword_27F212858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244D58);
  }

  return result;
}

unint64_t sub_24F49ABA8()
{
  result = qword_27F244D60;
  if (!qword_27F244D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244D68);
    sub_24E602068(&qword_27F244D70, qword_27F244D78);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244D60);
  }

  return result;
}

__n128 FullScreenCoverFlowActionImplementation.init(following:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[0];
  *a2 = *a1;
  a2[1].n128_u64[0] = v3;
  return result;
}

uint64_t sub_24F49ACB4(uint64_t a1)
{
  v3 = sub_24F928AE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = (a1 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  swift_beginAccess();
  v11 = *v10 == 0xD000000000000016 && 0x800000024FA75900 == v10[1];
  if (v11 || (sub_24F92CE08() & 1) != 0)
  {
    v14[5] = v7;
    v14[6] = v8;
    v14[7] = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F21C2A8);
    MEMORY[0x25304CAF0](&v15);

    v15 = a1;
    v14[2] = v7;
    v14[3] = v8;
    v14[4] = v9;
    v14[1] = a1;

    sub_24F927178();

    v12 = MEMORY[0x277D21CA8];
  }

  else
  {
    v12 = MEMORY[0x277D21CA0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  (*(v4 + 104))(v6, *v12, v3);
  return sub_24F92A988();
}

unint64_t sub_24F49AEC0()
{
  result = qword_27F216400;
  if (!qword_27F216400)
  {
    type metadata accessor for FlowAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216400);
  }

  return result;
}

uint64_t sub_24F49AF18()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t FriendshipStatusDataIntentImplementation.perform(_:objectGraph:)(uint64_t *a1, uint64_t a2)
{
  v2[7] = a2;
  type metadata accessor for FriendsDataIntent();
  v2[8] = swift_task_alloc();
  v2[9] = *(type metadata accessor for Player(0) - 8);
  v2[10] = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *a1;
  v6 = a1[1];
  v2[11] = v4;
  v2[12] = v5;
  v2[13] = v6;

  return MEMORY[0x2822009F8](sub_24F49B06C, 0, 0);
}

uint64_t sub_24F49B06C()
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[14] = __swift_project_value_buffer(v1, qword_27F39E808);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendshipStatusDataIntentImplementation] Fetching friendship status...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v0[15] = sub_24F92B7F8();
  v0[16] = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F49B1C4, v6, v5);
}

uint64_t sub_24F49B1C4()
{

  type metadata accessor for LocalPlayerProvider();
  sub_24F928F28();
  *(v0 + 136) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24F49B24C, 0, 0);
}

uint64_t sub_24F49B24C()
{
  *(v0 + 144) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F49B2D8, v2, v1);
}

uint64_t sub_24F49B2D8()
{
  v1 = v0[17];
  v2 = v0[11];
  v3 = v0[8];

  swift_getKeyPath();
  v0[6] = v1;
  sub_24E69A53C();
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24E70D960(v1 + v4, v2);

  sub_24E70D960(v2, v3);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_24F49B420;
  v6 = v0[7];
  v7 = v0[8];

  return sub_24E6480C8(v7, v6);
}

uint64_t sub_24F49B420(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_24F49B750;
  }

  else
  {
    v4 = sub_24F49B534;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_24F49B534()
{
  v1 = 0;
  v2 = v0[20];
  v4 = v0[9];
  v3 = v0[10];
  v5 = *(v2 + 16);
  do
  {
    v6 = v1;
    if (v5 == v1)
    {
      break;
    }

    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[10];
    sub_24E70D960(v0[20] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v6, v9);
    if (*v9 == v8 && *(v3 + 8) == v7)
    {
      sub_24EADE8B0(v0[10], type metadata accessor for Player);
      break;
    }

    v1 = v6 + 1;
    v11 = v0[10];
    v12 = sub_24F92CE08();
    sub_24EADE8B0(v11, type metadata accessor for Player);
  }

  while ((v12 & 1) == 0);

  v13 = sub_24F9220B8();
  v14 = sub_24F92BD98();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24E5DD000, v13, v14, "[FriendshipStatusDataIntentImplementation] Fetched friendship status.", v15, 2u);
    MEMORY[0x2530542D0](v15, -1, -1);
  }

  v16 = v5 != v6;
  v17 = v0[11];
  v18 = v0[8];

  sub_24EADE8B0(v18, type metadata accessor for FriendsDataIntent);
  sub_24EADE8B0(v17, type metadata accessor for Player);

  v19 = v0[1];

  v19(v16);
}

uint64_t sub_24F49B750()
{
  v1 = v0[11];
  sub_24EADE8B0(v0[8], type metadata accessor for FriendsDataIntent);
  sub_24EADE8B0(v1, type metadata accessor for Player);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24F49B80C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24EA2DAEC;

  return FriendshipStatusDataIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t sub_24F49B8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24F49B8F4, 0, 0);
}

uint64_t sub_24F49B8F4()
{
  v1 = v0[3];
  v3 = *v1;
  v2 = *(v1 + 8);
  if (*(v1 + 16))
  {
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_24F49BB3C;

    return sub_24F49C7E8(v3, v2);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = sub_24F49BA0C;

    return sub_24F49C5B0(v3, v2);
  }
}

uint64_t sub_24F49BA0C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24E93AB90, 0, 0);
  }
}

uint64_t sub_24F49BB3C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24F49CC58, 0, 0);
  }
}

void sub_24F49BC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v22 = a6;
  v23 = a7;
  v21 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  v14 = [objc_opt_self() proxyForLocalPlayer];
  v15 = [v14 utilityServicePrivate];

  v16 = sub_24F92B098();
  (*(v11 + 16))(v13, a1, v10);
  v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  (*(v11 + 32))(v18 + v17, v13, v10);
  aBlock[4] = v21;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E9FABA0;
  aBlock[3] = v22;
  v19 = _Block_copy(aBlock);

  [v15 *v23];
  _Block_release(v19);
  swift_unknownObjectRelease();
}

uint64_t sub_24F49BE90(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, const char *a5)
{
  if (a1)
  {
    v9 = a1;
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v10 = sub_24F9220D8();
    __swift_project_value_buffer(v10, qword_27F39E808);
    v11 = a1;

    v12 = sub_24F9220B8();
    v13 = sub_24F92BDB8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v14 = 136315394;
      *(v14 + 4) = sub_24E7620D4(a2, a3, &v20);
      *(v14 + 12) = 2112;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v18;
      *v15 = v18;
      _os_log_impl(&dword_24E5DD000, v12, v13, a5, v14, 0x16u);
      sub_24E6D44CC(v15);
      MEMORY[0x2530542D0](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x2530542D0](v16, -1, -1);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    v20 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0);
    return sub_24F92B788();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0);
    return sub_24F92B798();
  }
}

uint64_t sub_24F49C0A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for RemoveFriendSuggestionAction();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_24E6741C8(a1, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = *(a2 + 16);
  sub_24F49C420(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v12 = sub_24F92A9E8();
  v13 = sub_24F92B858();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24F9FDDE0;
  v14[5] = v11;
  v14[6] = v12;

  sub_24E6959D8(0, 0, v6, &unk_24F94D7B0, v14);

  return v12;
}

unint64_t sub_24F49C2C4()
{
  result = qword_27F216348;
  if (!qword_27F216348)
  {
    type metadata accessor for RemoveFriendSuggestionAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216348);
  }

  return result;
}

uint64_t sub_24F49C334()
{
  v1 = (type metadata accessor for RemoveFriendSuggestionAction() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  sub_24E63FFA4();
  v3 = v1[7];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F49C420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveFriendSuggestionAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F49C484(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for RemoveFriendSuggestionAction() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F49B8D0(a1, v1 + v6, v4);
}

uint64_t sub_24F49C568()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F49C5B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24F49C5D0, 0, 0);
}

uint64_t sub_24F49C5D0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_24F49C6CC;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0x746E6F43796E6564, 0xEF293A5F28746361, sub_24F49CA38, v3, v5);
}

uint64_t sub_24F49C6CC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24F49CC64;
  }

  else
  {

    v2 = sub_24F49CC5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F49C7E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24F49C808, 0, 0);
}

uint64_t sub_24F49C808()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_24F49C904;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0x79616C50796E6564, 0xEE00293A5F287265, sub_24F49CAA8, v3, v5);
}

uint64_t sub_24F49C904()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24EA53D04;
  }

  else
  {

    v2 = sub_24F49CA20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t block_copy_helper_155(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_16Tm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t static ContactAvatarProtocol.placeholderTemplate.getter()
{
  v0 = sub_24F91EAA8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0x6C6F686563616C70;
  v11 = 0xEB00000000726564;
  sub_24F91EA28();
  sub_24E600AEC();
  v4 = sub_24F92C578();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6C6F686563616C70;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEB00000000726564;
  }

  v10 = 0x3A746361746E6F63;
  v11 = 0xEA00000000002F2FLL;
  MEMORY[0x253050C20](v7, v8);

  return v10;
}

id sub_24F49CDC8()
{
  result = [objc_allocWithZone(MEMORY[0x277CBDBD0]) init];
  qword_27F244E80 = result;
  return result;
}

uint64_t sub_24F49CDFC()
{
  v0 = sub_24F928CE8();
  __swift_allocate_value_buffer(v0, qword_27F244E88);
  __swift_project_value_buffer(v0, qword_27F244E88);
  return sub_24F928CC8();
}

uint64_t ContactAvatarProtocol.match(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244EB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_24F928CB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  if (qword_27F211298 != -1)
  {
    swift_once();
  }

  v12 = sub_24F928CE8();
  __swift_project_value_buffer(v12, qword_27F244E88);
  sub_24F928CD8();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_24EC61CB0(v4);
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    sub_24EC606EC(v8, a1);
    return (*(v6 + 8))(v11, v5);
  }

  return result;
}

uint64_t ContactAvatarProtocol.fetch(contentsOf:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C4B0);
  v3 = MEMORY[0x28223BE20](v2);
  v8 = a1;
  (*(v5 + 104))(&v7[-v4], *MEMORY[0x277D85778], v3);
  return sub_24F92B928();
}

void sub_24F49D1C8(uint64_t a1)
{
  v35 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0);
  v1 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = &v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C4C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244EE0);
  sub_24F9288F8();
  v43 = aBlock;
  v44 = v38;
  v7 = sub_24F49D654();

  if (v7)
  {
    v8 = objc_opt_self();
    sub_24F928908();
    v10 = v9;
    v12 = v11;
    sub_24F928918();
    v14 = [v8 scopeWithPointSize:0 scale:0 rightToLeft:v10 style:{v12, v13}];
    if (qword_27F211290 != -1)
    {
      swift_once();
    }

    v15 = qword_27F244E80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24F941C80;
    *(v16 + 32) = v7;
    sub_24E7FA974();
    v17 = v7;
    v18 = sub_24F92B588();

    v19 = v34;
    v20 = v36;
    (*(v1 + 16))(v34, v35, v36);
    v21 = (*(v1 + 80) + 16) & ~*(v1 + 80);
    v22 = swift_allocObject();
    (*(v1 + 32))(v22 + v21, v19, v20);
    v41 = sub_24F49DF64;
    v42 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_24ECAEFC8;
    v40 = &block_descriptor_156;
    v23 = _Block_copy(&aBlock);

    v24 = [v15 renderAvatarsForContacts:v18 scope:v14 imageHandler:v23];
    _Block_release(v23);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27F211290 != -1)
    {
      swift_once();
    }

    v25 = [qword_27F244E80 placeholderImageProvider];
    sub_24F928908();
    v27 = v26;
    v29 = v28;
    sub_24F928918();
    v31 = [v25 imageForSize:0 scale:v27 style:{v29, v30}];
    swift_unknownObjectRelease();
    v32 = v31;
    aBlock = sub_24F926DD8();
    sub_24F92B8C8();

    (*(v4 + 8))(v6, v3);
  }
}

id sub_24F49D654()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = v0[1];
  v3 = *v0 == 0x6C6F686563616C70 && v2 == 0xEB00000000726564;
  if (!v3 && (sub_24F92CE08() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_24F95C300;
    *(v4 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
    *(v4 + 40) = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
    *(v4 + 48) = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
    *(v4 + 56) = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
    *(v4 + 64) = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
    *(v4 + 72) = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
    v5 = [objc_opt_self() descriptorForRequiredKeys];
    MEMORY[0x253050F00]();
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    sub_24F92B638();
    if (qword_27F2112A0 != -1)
    {
      swift_once();
    }

    v6 = qword_27F244EA0;
    v7 = sub_24F92B098();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0);
    v8 = sub_24F92B588();

    v19[0] = 0;
    v9 = [v6 unifiedContactWithIdentifier:v7 keysToFetch:v8 error:v19];

    if (v9)
    {
      v10 = v19[0];
      return v9;
    }

    v12 = v19[0];
    v13 = sub_24F91F278();

    swift_willThrow();
    if (qword_27F211408 != -1)
    {
      swift_once();
    }

    v14 = sub_24F9220D8();
    __swift_project_value_buffer(v14, qword_27F39E868);

    v15 = sub_24F9220B8();
    v16 = sub_24F92BDB8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_24E7620D4(v1, v2, v19);
      _os_log_impl(&dword_24E5DD000, v15, v16, "Failed to fetch contact for identifier: %s, so cannot fetch avatar", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x2530542D0](v18, -1, -1);
      MEMORY[0x2530542D0](v17, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_24F49DA88(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C4C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - v4;
  v6 = a1;
  v8[1] = sub_24F926DD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0);
  sub_24F92B8C8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24F49DBAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C4B0);
  v3 = MEMORY[0x28223BE20](v2);
  v8 = a1;
  (*(v5 + 104))(&v7[-v4], *MEMORY[0x277D85778], v3);
  return sub_24F92B928();
}

id sub_24F49DCB4()
{
  result = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  qword_27F244EA0 = result;
  return result;
}

uint64_t _s12GameStoreKit21ContactAvatarProtocolV14avatarTemplate3forS2S_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_24F91EAA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  v14 = a1;
  v15 = a2;
  sub_24F91EA28();
  sub_24E600AEC();
  v9 = sub_24F92C578();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  if (v11)
  {
    v12 = v9;
    a2 = v11;
  }

  else
  {

    v12 = v8;
  }

  v14 = 0x3A746361746E6F63;
  v15 = 0xEA00000000002F2FLL;
  MEMORY[0x253050C20](v12, a2);

  return v14;
}

unint64_t sub_24F49DE4C()
{
  result = qword_27F244EC0;
  if (!qword_27F244EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244EC0);
  }

  return result;
}

uint64_t sub_24F49DED0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F49DF64(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0);

  return sub_24F49DA88(a1);
}

uint64_t block_copy_helper_156(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for QuoteViewModel()
{
  result = qword_27F244EE8;
  if (!qword_27F244EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F49E06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F49E1BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for FriendInviteButton()
{
  result = qword_27F244EF8;
  if (!qword_27F244EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F49E344(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244F58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F49F528();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    type metadata accessor for FriendInviteButton();
    v8[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    v8[12] = 3;
    sub_24F929608();
    sub_24F49F77C(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F49E624@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244F48);
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for FriendInviteButton();
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 40) = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 9) = 0;
  v40 = v14 + 40;
  sub_24E61DA68(&v41, (v14 + 40), qword_27F21B590);
  v15 = *(v12 + 32);
  v16 = sub_24F92A6D8();
  v17 = *(*(v16 - 8) + 56);
  v38 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = *(v12 + 36);
  v19 = sub_24F929608();
  v20 = *(*(v19 - 8) + 56);
  v37 = v18;
  v20(&v14[v18], 1, 1, v19);
  v21 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24F49F528();
  v35 = v10;
  v22 = v36;
  sub_24F92D108();
  if (v22)
  {
    v24 = v38;
    __swift_destroy_boxed_opaque_existential_1(v39);
    sub_24E601704(v40, qword_27F24EC90);
    sub_24E601704(&v14[v24], &qword_27F215440);
    return sub_24E601704(&v14[v37], &qword_27F213E68);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v44 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v23 = v34;
    sub_24F92CC68();
    v25 = v42;
    *v14 = v41;
    *(v14 + 1) = v25;
    *(v14 + 4) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v44 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    v26 = v38;
    v27 = v33;
    sub_24E61DA68(&v41, v40, qword_27F24EC90);
    LOBYTE(v41) = 2;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v7, &v14[v26], &qword_27F215440);
    LOBYTE(v41) = 3;
    sub_24F49F77C(&qword_27F213F48, MEMORY[0x277D21F70]);
    v28 = v32;
    v29 = v35;
    sub_24F92CC18();
    (*(v27 + 8))(v29, v23);
    sub_24E61DA68(v28, &v14[v37], &qword_27F213E68);
    sub_24F49F57C(v14, v31);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return sub_24F49F5E0(v14);
  }
}

uint64_t sub_24F49EBEC(uint64_t a1)
{
  v2 = sub_24F49F528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F49EC28(uint64_t a1)
{
  v2 = sub_24F49F528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F49EC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E68039C(v7, a2);
}

uint64_t sub_24F49ED94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244F18);
  MEMORY[0x28223BE20](v4);
  v6 = &v18[-v5 - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244F20);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18[-v9 - 8];
  *v6 = sub_24F9249A8();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244F28);
  sub_24F49F06C(&v6[*(v11 + 44)]);
  sub_24E60169C(a1 + 40, v18, qword_27F24EC90);
  sub_24E601704(v18, qword_27F21B590);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v12 = sub_24F9248C8();
  __swift_project_value_buffer(v12, qword_27F39F078);
  sub_24E602068(&qword_27F244F30, &qword_27F244F18);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24F49F4B0(v6);
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244F38) + 36);
  v14 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v15 = type metadata accessor for GradientBackground(0);
  (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *(v13 + 16) = xmmword_24F956A30;
  *(v13 + 32) = 0x4030000000000000;
  *(v13 + 40) = 257;
  return (*(v8 + 32))(a2, v10, v7);
}

uint64_t sub_24F49F06C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177F8);
  MEMORY[0x28223BE20](v2);
  v4 = v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  if (qword_27F211520 != -1)
  {
    swift_once();
  }

  v20[0] = qword_27F39EB08;
  v20[1] = unk_27F39EB10;
  sub_24E600AEC();

  sub_24F926EB8();
  v12 = sub_24F925A28();
  KeyPath = swift_getKeyPath();
  v14 = &v4[*(v2 + 36)];
  *v14 = KeyPath;
  v14[1] = v12;
  sub_24E6AFC48();
  sub_24F9268B8();
  sub_24E601704(v4, &qword_27F2177F8);
  v15 = *(v6 + 16);
  v15(v8, v11, v5);
  *a1 = 0;
  *(a1 + 8) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244F40);
  v15((a1 + *(v16 + 48)), v8, v5);
  v17 = a1 + *(v16 + 64);
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = *(v6 + 8);
  v18(v11, v5);
  return (v18)(v8, v5);
}

uint64_t sub_24F49F320()
{
  sub_24F47D7E4();

  return sub_24F9218E8();
}

unint64_t sub_24F49F3B0()
{
  result = qword_27F244F10;
  if (!qword_27F244F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244F10);
  }

  return result;
}

uint64_t sub_24F49F4B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F49F528()
{
  result = qword_27F244F50;
  if (!qword_27F244F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244F50);
  }

  return result;
}

uint64_t sub_24F49F57C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendInviteButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F49F5E0(uint64_t a1)
{
  v2 = type metadata accessor for FriendInviteButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F49F650()
{
  result = qword_27F244F60;
  if (!qword_27F244F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244F38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244F18);
    sub_24E602068(&qword_27F244F30, &qword_27F244F18);
    swift_getOpaqueTypeConformance2();
    sub_24F49F77C(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244F60);
  }

  return result;
}

uint64_t sub_24F49F77C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F49F7C8()
{
  result = qword_27F244F68;
  if (!qword_27F244F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244F68);
  }

  return result;
}

unint64_t sub_24F49F820()
{
  result = qword_27F244F70;
  if (!qword_27F244F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244F70);
  }

  return result;
}

unint64_t sub_24F49F878()
{
  result = qword_27F244F78;
  if (!qword_27F244F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244F78);
  }

  return result;
}

uint64_t sub_24F49F8E0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = sub_24F9289E8();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216968);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[11];

  return v17(v18, a2, v16);
}

uint64_t sub_24F49FB14(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = sub_24F9289E8();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216968);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[11];

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for ChartCard()
{
  result = qword_27F244F80;
  if (!qword_27F244F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F49FD80()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
      if (v2 <= 0x3F)
      {
        sub_24F49FEF4(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v4 <= 0x3F)
          {
            sub_24F9289E8();
            if (v5 <= 0x3F)
            {
              sub_24F49FEF4(319, &qword_27F216990, type metadata accessor for DescriptionLabelConfig);
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

void sub_24F49FEF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24F49FF48@<X0>(double *a1@<X0>, char *a2@<X8>)
{
  v3 = qword_24F9FE458[sub_24E6B00B4(*a1)];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140B8) + 48);
  *a2 = 1;
  *&a2[v4] = v3;
  v5 = *MEMORY[0x277D7EB60];
  v6 = sub_24F9219E8();
  (*(*(v6 - 8) + 104))(&a2[v4], v5, v6);
  v7 = *MEMORY[0x277D7EB20];
  v8 = sub_24F9218F8();
  v9 = *(*(v8 - 8) + 104);

  return v9(a2, v7, v8);
}

unint64_t sub_24F4A0050(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x4D747865746E6F63;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0x6575676573;
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
    v1 = 1802396018;
    v2 = 0xD000000000000017;
    if (a1 == 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000014;
    if (a1 != 4)
    {
      v3 = 0x77747241656D6167;
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

uint64_t sub_24F4A016C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216968);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = v41 - v4;
  v5 = sub_24F9289E8();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v45);
  v46 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v10);
  v12 = v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244FA0);
  v14 = *(v13 - 8);
  v48 = v13;
  v49 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = v41 - v15;
  v17 = type metadata accessor for ChartCard();
  MEMORY[0x28223BE20](v17);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v19 + 40) = 0u;
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  *(v19 + 56) = 0u;
  *(v19 + 9) = 0;
  v55 = v19 + 40;
  sub_24E61DA68(&v59, (v19 + 40), qword_27F21B590);
  v20 = *(v17 + 24);
  v21 = sub_24F92A6D8();
  v22 = *(*(v21 - 8) + 56);
  v57 = v20;
  v22(&v19[v20], 1, 1, v21);
  v54 = v17;
  v23 = *(v17 + 44);
  v24 = type metadata accessor for DescriptionLabelConfig(0);
  (*(*(v24 - 8) + 56))(&v19[v23], 1, 1, v24);
  v25 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_24F4A0E38();
  v52 = v16;
  v26 = v53;
  sub_24F92D108();
  if (v26)
  {
    v28 = v55;
    __swift_destroy_boxed_opaque_existential_1(v56);
    sub_24E601704(v28, qword_27F24EC90);
    sub_24E601704(&v19[v57], &qword_27F215440);
    return sub_24E601704(&v19[v23], &qword_27F216968);
  }

  else
  {
    v41[2] = v10;
    v53 = v12;
    v41[1] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v58 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v27 = v48;
    sub_24F92CC68();
    v29 = v60;
    *v19 = v59;
    *(v19 + 1) = v29;
    *(v19 + 4) = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v58 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v30 = v23;
    v31 = v54;
    sub_24E61DA68(&v59, v55, qword_27F24EC90);
    LOBYTE(v59) = 2;
    sub_24E65CAA0();
    v32 = v53;
    sub_24F92CC68();
    sub_24E61DA68(v32, &v19[v57], &qword_27F215440);
    sub_24F929608();
    LOBYTE(v59) = 3;
    sub_24F4A0E8C(&qword_27F213F48, MEMORY[0x277D21F70]);
    v33 = v47;
    sub_24F92CC18();
    sub_24E6009C8(v33, &v19[v31[7]], &qword_27F213E68);
    LOBYTE(v59) = 4;
    sub_24F4A0E8C(&qword_27F219690, type metadata accessor for CommonCardAttributes);
    v34 = v46;
    sub_24F92CC68();
    sub_24E706B90(v34, &v19[v31[8]]);
    LOBYTE(v59) = 5;
    sub_24F4A0E8C(&qword_27F214018, MEMORY[0x277D21C48]);
    v35 = v44;
    v36 = v51;
    sub_24F92CC68();
    (*(v50 + 32))(&v19[v31[9]], v35, v36);
    LOBYTE(v59) = 6;
    *&v19[v31[10]] = sub_24F92CC58();
    LOBYTE(v59) = 7;
    sub_24F4A0E8C(&qword_27F216A18, type metadata accessor for DescriptionLabelConfig);
    v37 = v43;
    sub_24F92CC18();
    sub_24E61DA68(v37, &v19[v30], &qword_27F216968);
    LOBYTE(v59) = 8;
    sub_24F92CC48();
    v39 = v38;
    (*(v49 + 8))(v52, v27);
    *&v19[v31[12]] = v39;
    sub_24F4A0ED4(v19, v42, type metadata accessor for ChartCard);
    __swift_destroy_boxed_opaque_existential_1(v56);
    return sub_24F4A0F3C(v19, type metadata accessor for ChartCard);
  }
}

uint64_t sub_24F4A0BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F4A10B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F4A0BCC(uint64_t a1)
{
  v2 = sub_24F4A0E38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4A0C08(uint64_t a1)
{
  v2 = sub_24F4A0E38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4A0C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24F4A0D6C(uint64_t a1)
{
  *(a1 + 8) = sub_24F4A0E8C(&qword_27F21AB48, type metadata accessor for ChartCard);
  result = sub_24F4A0E8C(&qword_27F244F90, type metadata accessor for ChartCard);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24F4A0E38()
{
  result = qword_27F244FA8;
  if (!qword_27F244FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244FA8);
  }

  return result;
}

uint64_t sub_24F4A0E8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F4A0ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4A0F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F4A0FB0()
{
  result = qword_27F244FB0;
  if (!qword_27F244FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244FB0);
  }

  return result;
}

unint64_t sub_24F4A1008()
{
  result = qword_27F244FB8;
  if (!qword_27F244FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244FB8);
  }

  return result;
}

unint64_t sub_24F4A1060()
{
  result = qword_27F244FC0[0];
  if (!qword_27F244FC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F244FC0);
  }

  return result;
}

uint64_t sub_24F4A10B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46110 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x77747241656D6167 && a2 == 0xEB000000006B726FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1802396018 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA75970 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA75990 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_24F92CE08();

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

void sub_24F4A13A8()
{
  sub_24E79CAE4();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F4A1430(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 9) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
      }

      v15 = *(a1 + 8);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_24F4A15B4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 9) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 9] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    a1[8] = 0;
    *a1 = a2 - 255;
  }

  else
  {
    a1[8] = -a2;
  }
}

uint64_t sub_24F4A186C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_24F923658();
  sub_24F4A1910(a1, a2, a3, a4, a5, a6, a7);
  return sub_24F4A1F90(v15);
}

uint64_t sub_24F4A1910@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v26 = a2;
  v13 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v25[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v20 + 16))(v19, v22, v21, v17);
  (*(v13 + 16))(v15, a1, a4);

  return sub_24F4A1FE4(v19, v15, v26, v23, a3, a4, MEMORY[0x277CE1428], a7, a5, a6, MEMORY[0x277CE1410]);
}

uint64_t sub_24F4A1AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = sub_24F927748();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F924848();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 24);
  v33 = *(a1 + 16);
  v43 = v33;
  v44 = MEMORY[0x277CE04F8];
  v45 = MEMORY[0x277CE1428];
  v46 = v7;
  v47 = MEMORY[0x277CE04E8];
  v48 = MEMORY[0x277CE1410];
  v8 = sub_24F925098();
  v34 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  sub_24F9242D8();
  v11 = sub_24F924038();
  v35 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v42 = sub_24F9251B8();
  v17 = *v2;
  if (*(v2 + 8) != 1)
  {

    sub_24F92BDC8();
    v29 = v5;
    v18 = sub_24F9257A8();
    v30 = a1;
    v19 = v18;
    sub_24F921FD8();

    v20 = v31;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v17, 0);
    (*(v32 + 8))(v20, v29);
  }

  sub_24F4A186C(&v42, 1, v33, MEMORY[0x277CE04F8], v7, MEMORY[0x277CE04E8], v10);
  v21 = v36;
  v22 = v37;
  v23 = v39;
  (*(v37 + 104))(v36, *MEMORY[0x277CE13B8], v39);
  WitnessTable = swift_getWitnessTable();
  sub_24F926B48();
  (*(v22 + 8))(v21, v23);
  (*(v34 + 8))(v10, v8);
  v40 = WitnessTable;
  v41 = MEMORY[0x277CDFC30];
  v25 = swift_getWitnessTable();
  sub_24E7896B8(v13, v11, v25);
  v26 = *(v35 + 8);
  v26(v13, v11);
  sub_24E7896B8(v16, v11, v25);
  return (v26)(v16, v11);
}

uint64_t sub_24F4A1FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v53 = a4;
  LODWORD(v51) = a3;
  v49 = a2;
  v43 = a8;
  v56 = a10;
  v57 = a1;
  v47 = a7;
  v50 = *(a7 - 8);
  v54 = a11;
  MEMORY[0x28223BE20](a1);
  v48 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_24F924E08();
  MEMORY[0x28223BE20](v55);
  v52 = &v37 - v15;
  v37 = a6;
  v46 = *(a6 - 8);
  MEMORY[0x28223BE20](v16);
  v44 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v42 = a9;
  v40 = *(swift_getAssociatedConformanceWitness() + 8);
  v19 = sub_24F923AC8();
  MEMORY[0x28223BE20](v19);
  WitnessTable = swift_getWitnessTable();
  v58 = v19;
  v59 = a6;
  v60 = WitnessTable;
  v61 = v56;
  v45 = sub_24F9234B8();
  v20 = MEMORY[0x28223BE20](v45);
  v39 = &v37 - v21;
  v22 = a5;
  v23 = *(a5 - 8);
  v24 = *(v23 + 16);
  v38 = v22;
  v24(a8, v57, v22, v20);
  sub_24F923F58();
  sub_24F923AB8();
  v25 = v46;
  v26 = v49;
  v27 = v37;
  (*(v46 + 16))(v44, v49, v37);
  v28 = v27;
  v29 = v56;
  sub_24F9234A8();
  v30 = v50;
  v31 = v47;
  v32 = v53;
  (*(v50 + 16))(v48, v53, v47);
  sub_24F927618();
  v51 = v33;
  (*(v30 + 8))(v32, v31);
  (*(v25 + 8))(v26, v27);
  v34 = v38;
  (*(v23 + 8))(v57, v38);
  v35 = v54;
  sub_24F924DF8();
  v58 = v34;
  v59 = v28;
  v60 = v31;
  v61 = v42;
  v62 = v29;
  v63 = v35;
  sub_24F925098();
  return sub_24F923FD8();
}

uint64_t sub_24F4A24E4()
{
  sub_24F925098();
  sub_24F9242D8();
  sub_24F924038();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

BOOL sub_24F4A25AC()
{
  swift_getKeyPath();
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft);
  sub_24F91FD88();

  swift_beginAccess();
  if (*(v0[2] + 16))
  {
    return 1;
  }

  swift_getKeyPath();
  sub_24F91FD88();

  swift_beginAccess();
  if (*(v0[3] + 16))
  {
    return 1;
  }

  swift_getKeyPath();
  sub_24F91FD88();

  swift_beginAccess();
  return *(v0[4] + 16) != 0;
}

uint64_t sub_24F4A2720()
{
  swift_getKeyPath();
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft);
  sub_24F91FD88();

  swift_beginAccess();
}

uint64_t sub_24F4A27D8()
{
  swift_getKeyPath();
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft);
  sub_24F91FD88();

  swift_beginAccess();
}

uint64_t sub_24F4A2890()
{
  v1 = v0;
  swift_getKeyPath();
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft);
  sub_24F91FD88();

  swift_beginAccess();
  v2 = *(v0 + 32);

  v3 = sub_24E6086DC(MEMORY[0x277D84F90]);
  v4 = v2 + 56;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 56);
  v47 = v2;

  swift_beginAccess();
  v8 = 0;
  v9 = (v5 + 63) >> 6;
LABEL_4:
  v10 = v8;
  v11 = v3;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
    v8 = v10;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (*(v47 + 48) + ((v8 << 10) | (16 * v12)));
    v15 = *v13;
    v14 = v13[1];
    swift_getKeyPath();

    sub_24F91FD88();

    v16 = *(v1 + 40);
    v3 = v11;
    if (*(v16 + 16))
    {

      v17 = sub_24E76D644(v15, v14);
      if (v18)
      {
        v22 = (*(v16 + 56) + 16 * v17);
        v23 = v22[1];
        v46 = *v22;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v3;
        v24 = sub_24E76D644(v15, v14);
        v26 = v3;
        v27 = v24;
        v28 = *(v26 + 16);
        v29 = (v25 & 1) == 0;
        v30 = v28 + v29;
        if (__OFADD__(v28, v29))
        {
          goto LABEL_31;
        }

        v44 = v23;
        if (*(v26 + 24) >= v30)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v33 = v48;
            if (v25)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v35 = v25;
            sub_24E8AF124();
            v36 = v35;
            v33 = v48;
            if (v36)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
          v43 = v25;
          sub_24E89B77C(v30, isUniquelyReferenced_nonNull_native);
          v31 = sub_24E76D644(v15, v14);
          if ((v43 & 1) != (v32 & 1))
          {
            goto LABEL_33;
          }

          v27 = v31;
          v33 = v48;
          if (v43)
          {
LABEL_25:
            v34 = (v33[7] + 16 * v27);
            *v34 = v46;
            v34[1] = v44;

            v3 = v33;
            goto LABEL_4;
          }
        }

        v33[(v27 >> 6) + 8] |= 1 << v27;
        v37 = (v33[6] + 16 * v27);
        *v37 = v15;
        v37[1] = v14;
        v38 = (v33[7] + 16 * v27);
        *v38 = v46;
        v38[1] = v44;
        v39 = v33[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_32;
        }

        v3 = v33;
        v33[2] = v41;
        goto LABEL_4;
      }
    }

    v19 = sub_24E76D644(v15, v14);
    if (v20)
    {
      v21 = v19;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_24E8AF124();
        v3 = v11;
      }

      sub_24EB53354(v21, v3);

      goto LABEL_4;
    }

    v10 = v8;
  }

  while (v7);
LABEL_6:
  while (1)
  {
    v8 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v8 >= v9)
    {

      return v3;
    }

    v7 = *(v4 + 8 * v8);
    ++v10;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F4A2CAC()
{
  swift_getKeyPath();
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft);
  sub_24F91FD88();

  swift_beginAccess();
}

uint64_t sub_24F4A2D64(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_24EBAE06C(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft);
    sub_24F91FD78();
  }
}

uint64_t sub_24F4A2EAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft);
  sub_24F91FD88();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_24F4A2F98(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_24EDD4478(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft);
    sub_24F91FD78();
  }
}

uint64_t sub_24F4A30E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
}

uint64_t sub_24F4A3148()
{
  swift_getKeyPath();
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft);
  sub_24F91FD88();

  swift_beginAccess();
}

uint64_t sub_24F4A3200@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft);
  sub_24F91FD88();

  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_24F4A32C0(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_24EBACE54(v3, a1);

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft);
    sub_24F91FD78();
  }
}

uint64_t sub_24F4A3408(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
}

uint64_t sub_24F4A3470()
{
  swift_getKeyPath();
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft);
  sub_24F91FD88();
}

uint64_t sub_24F4A3514@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft);
  sub_24F91FD88();

  *a2 = *(v3 + 56);
}

uint64_t sub_24F4A35C0(uint64_t a1)
{
  if (!*(v1 + 56))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft);
    sub_24F91FD78();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = sub_24F92B938();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 56) = a1;
}

uint64_t sub_24F4A3748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227AD0);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F4A3814, 0, 0);
}

uint64_t sub_24F4A3814()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227AD8);
  sub_24F92B8F8();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_24F4A390C;
  v2 = *(v0 + 64);

  return MEMORY[0x2822003E8](v0 + 40, 0, 0, v2);
}

uint64_t sub_24F4A390C()
{

  return MEMORY[0x2822009F8](sub_24F4A3A08, 0, 0);
}

uint64_t sub_24F4A3A08()
{
  v1 = v0[5];
  if (v1)
  {
    if (swift_weakLoadStrong())
    {
      sub_24F4A3B48(v1);
    }

    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_24F4A390C;
    v3 = v0[8];

    return MEMORY[0x2822003E8](v0 + 5, 0, 0, v3);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24F4A3B48(uint64_t a1)
{
  v2 = v1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v35 = v3;
  v34 = v7;
  while (v6)
  {
LABEL_11:
    v11 = (v8 << 10) | (16 * __clz(__rbit64(v6)));
    v12 = (*(a1 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v16 = v15[1];
    v37 = *v15;
    swift_getKeyPath();
    sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft);
    swift_bridgeObjectRetain_n();
    v38 = v16;
    swift_bridgeObjectRetain_n();
    sub_24F91FD88();

    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v2 + 40);
    *(v2 + 40) = 0x8000000000000000;
    v20 = sub_24E76D644(v14, v13);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_24;
    }

    v24 = v19;
    if (v18[3] >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v27 = v18;
        if (v19)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_24E8AF124();
        v27 = v18;
        if (v24)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_24E89B77C(v23, isUniquelyReferenced_nonNull_native);
      v25 = sub_24E76D644(v14, v13);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_26;
      }

      v20 = v25;
      v27 = v18;
      if (v24)
      {
LABEL_4:
        v9 = (v27[7] + 16 * v20);
        *v9 = v37;
        v9[1] = v38;

        goto LABEL_5;
      }
    }

    v27[(v20 >> 6) + 8] |= 1 << v20;
    v28 = (v27[6] + 16 * v20);
    *v28 = v14;
    v28[1] = v13;
    v29 = (v27[7] + 16 * v20);
    *v29 = v37;
    v29[1] = v38;
    v30 = v27[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_25;
    }

    v27[2] = v32;
LABEL_5:
    v6 &= v6 - 1;
    *(v2 + 40) = v27;
    swift_endAccess();
    swift_getKeyPath();
    sub_24F91FD98();

    v3 = v35;
    v7 = v34;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F4A3EA0()
{
  swift_getKeyPath();
  v1 = OBJC_IVAR____TtC12GameStoreKit24GameActivityPlayersDraft___observationRegistrar;
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft);
  sub_24F91FD88();

  if (*(v0 + 56))
  {

    sub_24F92B958();
  }

  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_24F4A3FE0()
{
  sub_24F4A3EA0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GameActivityPlayersDraft()
{
  result = qword_27F245050;
  if (!qword_27F245050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F4A408C()
{
  result = sub_24F91FDC8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F4A4148(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  swift_getKeyPath();
  v14 = v1;
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft);
  sub_24F91FD88();

  swift_beginAccess();
  v5 = *(*(v1 + 16) + 16);

  if (v5 && (, sub_24E76D644(v3, v2), v7 = v6, , (v7 & 1) != 0))
  {

    swift_getKeyPath();
    sub_24F91FD88();

    v13[0] = v1;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    sub_24E98F6B0(v3, v2, v13);
    v8 = v13[0];
    v9 = v13[1];
    swift_endAccess();
    sub_24EAD7A84(v8, v9);
    swift_getKeyPath();
    sub_24F91FD98();

    return 0;
  }

  else
  {
    swift_getKeyPath();

    sub_24F91FD88();

    v13[0] = v1;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v1 + 16);
    *(v1 + 16) = 0x8000000000000000;
    sub_24E81D970(v3, v2, v4, v3, v2, isUniquelyReferenced_nonNull_native);

    *(v1 + 16) = v12;
    swift_endAccess();
    swift_getKeyPath();
    sub_24F91FD98();

    return 1;
  }
}

uint64_t sub_24F4A443C(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v7 = OBJC_IVAR____TtC12GameStoreKit24GameActivityPlayersDraft___observationRegistrar;
  v36[0] = v1;
  v8 = sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft);
  sub_24F91FD88();

  swift_beginAccess();
  v10 = *a1;
  v9 = a1[1];
  if (*(*(v1 + 24) + 16) && (, sub_24E76D644(v10, v9), v12 = v11, , (v12 & 1) != 0))
  {
    swift_getKeyPath();
    v36[0] = v1;
    sub_24F91FD88();

    v36[0] = v1;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    sub_24E98F238(v10, v9, v36);
    swift_endAccess();
    sub_24F4A58D8(v36);
    v35 = v1;
    swift_getKeyPath();
    sub_24F91FD98();

    return 0;
  }

  else
  {
    sub_24E70D960(a1, v6);
    v14 = v6[1];
    v31 = *v6;

    v28 = sub_24F37B534();
    v16 = v15;

    v32 = v10;
    v33 = v9;
    v17 = v6[2];
    v18 = v6[3];
    v19 = v4[11];
    v20 = v4[12];
    v29 = v7;
    v30 = v8;
    v21 = *(v6 + v19);
    v22 = *(v6 + v20);
    v23 = v4[21];
    v24 = *(v6 + v4[20]);
    v25 = *(v6 + v23);

    sub_24E71BF38(v6);
    v36[0] = v31;
    v36[1] = v14;
    v36[2] = v28;
    v36[3] = v16;
    v36[4] = v17;
    v36[5] = v18;
    v36[6] = v21;
    v36[7] = v22;
    v37 = v24;
    v38 = v25;
    swift_getKeyPath();
    v35 = v2;
    sub_24F91FD88();

    v35 = v2;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    sub_24E81CDA0(v36, v32, v33, isUniquelyReferenced_nonNull_native);

    *(v2 + 24) = v34;
    swift_endAccess();
    v35 = v2;
    swift_getKeyPath();
    sub_24F91FD98();

    return 1;
  }
}

BOOL sub_24F4A47F0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v38 - v5;
  swift_getKeyPath();
  v45 = v1;
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft);
  sub_24F91FD88();

  swift_beginAccess();
  v6 = *(v1 + 32);

  v7 = [a1 identifier];
  v8 = sub_24F92B0D8();
  v10 = v9;

  LODWORD(v7) = sub_24F4D36F8(v8, v10, v6);

  v40 = v7;
  if ((v7 & 1) == 0)
  {
    v16 = [a1 identifier];
    v17 = sub_24F92B0D8();
    v19 = v18;

    swift_getKeyPath();
    v44 = v2;
    sub_24F91FD88();

    v44 = v2;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    sub_24ED7C5F0(&v43, v17, v19);
    swift_endAccess();

    v44 = v2;
    swift_getKeyPath();
    sub_24F91FD98();

    v20 = [a1 identifier];
    v21 = sub_24F92B0D8();
    v23 = v22;

    swift_getKeyPath();
    v44 = v2;
    sub_24F91FD88();

    swift_beginAccess();
    if (*(*(v2 + 40) + 16))
    {

      sub_24E76D644(v21, v23);
      v25 = v24;

      if (v25)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v26 = [a1 identifier];
    v39 = sub_24F92B0D8();
    v28 = v27;

    v29 = sub_24EEA5788();
    v31 = v30;
    swift_getKeyPath();
    v43 = v2;
    sub_24F91FD88();

    v43 = v2;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v2 + 40);
    *(v2 + 40) = 0x8000000000000000;
    sub_24E81D324(v29, v31, v39, v28, isUniquelyReferenced_nonNull_native);

    *(v2 + 40) = v42;
    swift_endAccess();
    v43 = v2;
    swift_getKeyPath();
    sub_24F91FD98();

LABEL_8:
    v15 = &unk_24F9FE740;
    goto LABEL_9;
  }

  v11 = [a1 identifier];
  v12 = sub_24F92B0D8();
  v14 = v13;

  swift_getKeyPath();
  v44 = v2;
  sub_24F91FD88();

  v44 = v2;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  sub_24F7A57A0(v12, v14);
  swift_endAccess();

  v44 = v2;
  swift_getKeyPath();
  sub_24F91FD98();

  v15 = &unk_24F9FE750;
LABEL_9:
  v33 = sub_24F92B858();
  v34 = v41;
  (*(*(v33 - 8) + 56))(v41, 1, 1, v33);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v2;
  v35[5] = a1;

  v36 = a1;
  sub_24EA998B8(0, 0, v34, v15, v35);

  return (v40 & 1) == 0;
}

uint64_t sub_24F4A4E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24F4A4E2C, 0, 0);
}

uint64_t sub_24F4A4E2C()
{
  v1 = v0[3];
  v2 = *(v0[2] + 48);
  v0[4] = v2;
  v3 = [v1 identifier];
  v4 = sub_24F92B0D8();
  v6 = v5;

  v0[5] = v4;
  v0[6] = v6;

  return MEMORY[0x2822009F8](sub_24F4A4ECC, v2, 0);
}

uint64_t sub_24F4A4ECC()
{
  sub_24EAD3B00(v0[5], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F4A4F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return MEMORY[0x2822009F8](sub_24F4A4F5C, 0, 0);
}

uint64_t sub_24F4A4F5C()
{
  v1 = v0[8];
  v2 = *(v0[7] + 48);
  v0[9] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  inited = swift_initStackObject();
  v0[10] = inited;
  *(inited + 16) = xmmword_24F941C80;
  *(inited + 32) = v1;
  v4 = v1;

  return MEMORY[0x2822009F8](sub_24F4A5008, v2, 0);
}

uint64_t sub_24F4A5008()
{
  sub_24EAD51D4(*(v0 + 80));
  swift_setDeallocating();
  swift_arrayDestroy();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F4A5170()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

uint64_t sub_24F4A51AC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v53 - v5;
  type metadata accessor for IMessageReachabilityManager(0);
  swift_allocObject();
  sub_24EAD30CC();
  v1[6] = v7;
  v1[7] = 0;
  sub_24F91FDB8();
  if (!a1)
  {
    v45 = MEMORY[0x277D84F90];
    v2[2] = sub_24E609EB8(MEMORY[0x277D84F90]);
    v2[3] = sub_24E60B05C(v45);
    v44 = sub_24E6086DC(v45);
    goto LABEL_19;
  }

  v55 = v6;
  swift_getKeyPath();
  *&v60 = a1;
  v8 = sub_24F4A5880(&qword_27F212898, type metadata accessor for GameActivityDraft);

  sub_24F91FD88();

  v9 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playerGroupsToInvite);

  v56 = v2;
  v2[2] = v9;
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft___observationRegistrar;
  *&v60 = a1;

  v53[0] = v10;
  v53[1] = v8;
  sub_24F91FD88();

  v11 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playersToInvite);

  v54 = a1;

  v12 = sub_24E60B05C(MEMORY[0x277D84F90]);
  v13 = *(v11 + 16);
  if (!v13)
  {
LABEL_17:

    v2 = v56;
    v56[3] = v12;
    swift_getKeyPath();
    v43 = v54;
    *&v60 = v54;

    sub_24F91FD88();

    v44 = *(v43 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__contactHandlesToInvite);

    v6 = v55;
LABEL_19:
    v2[5] = v44;

    v2[4] = sub_24F461F6C(v46);
    v47 = sub_24F92B858();
    (*(*(v47 - 8) + 56))(v6, 1, 1, v47);
    v48 = swift_allocObject();
    swift_weakInit();
    v49 = v2[6];
    v50 = swift_allocObject();
    v50[2] = 0;
    v50[3] = 0;
    v50[4] = v49;
    v50[5] = v48;

    v51 = sub_24EA998B8(0, 0, v6, &unk_24F9FE6A0, v50);
    sub_24F4A35C0(v51);
    return v2;
  }

  v14 = 0;
  v15 = (v11 + 32);
  while (v14 < *(v11 + 16))
  {
    v60 = *v15;
    v23 = v15[1];
    v24 = v15[2];
    v25 = v15[3];
    v64 = *(v15 + 32);
    v63 = v25;
    v61 = v23;
    v62 = v24;
    v26 = v60;
    sub_24E627A14(&v60, v58);
    sub_24E627A14(&v60, v58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v12;
    v28 = sub_24E76D644(v26, *(&v26 + 1));
    v30 = v12[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_21;
    }

    v34 = v29;
    if (v12[3] < v33)
    {
      sub_24E89AA98(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_24E76D644(v26, *(&v26 + 1));
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_23;
      }

LABEL_12:
      if (v34)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v42 = v28;
    sub_24E8AEA70();
    v28 = v42;
    if (v34)
    {
LABEL_4:
      v12 = v57;
      v16 = v57[7] + 72 * v28;
      v58[0] = *v16;
      v17 = *(v16 + 16);
      v18 = *(v16 + 32);
      v19 = *(v16 + 48);
      v59 = *(v16 + 64);
      v58[2] = v18;
      v58[3] = v19;
      v58[1] = v17;
      v20 = v63;
      v22 = v61;
      v21 = v62;
      *(v16 + 64) = v64;
      *(v16 + 32) = v21;
      *(v16 + 48) = v20;
      *(v16 + 16) = v22;
      *v16 = v60;
      sub_24E627A70(v58);
      sub_24E627A70(&v60);
      goto LABEL_5;
    }

LABEL_13:
    v12 = v57;
    v57[(v28 >> 6) + 8] |= 1 << v28;
    *(v12[6] + 16 * v28) = v26;
    v36 = v12[7] + 72 * v28;
    v37 = v64;
    v38 = v63;
    v39 = v62;
    *(v36 + 16) = v61;
    *(v36 + 32) = v39;
    *(v36 + 48) = v38;
    *(v36 + 64) = v37;
    *v36 = v60;

    sub_24E627A70(&v60);
    v40 = v12[2];
    v32 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v32)
    {
      goto LABEL_22;
    }

    v12[2] = v41;
LABEL_5:
    ++v14;
    v15 = (v15 + 72);
    if (v13 == v14)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F4A5738()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F4A5770()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F4A57B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24F4A3748(a1, v4, v5, v7, v6);
}

uint64_t sub_24F4A5880(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F4A58D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F4A5944(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F4A4F3C(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_37Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F4A5A4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24F4A4E0C(a1, v4, v5, v7, v6);
}

uint64_t SocialUserGroup.init(user:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SocialUserGroup();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for PlayerAvatar.Overlay(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v47 = v11 + 56;
  v48 = v12;
  v12(&v7[v9], 1, 1, v10);
  v13 = &v7[v4[10]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = -1;
  v14 = v4[11];
  v15 = type metadata accessor for CallProviderConversationHandleSet();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v49 = v14;
  v45 = v16 + 56;
  v46 = v17;
  v17(&v7[v14], 1, 1, v15);
  v18 = a1[5];
  if (v18)
  {
    v41 = v10;
    v42 = v9;
    v43 = v5;
    v44 = a2;
    v19 = a1[4];
    v20 = &v7[v4[8]];
    v21 = &v7[v4[9]];
    v22 = a1[1];
    v23 = &v7[v4[6]];
    *v23 = *a1;
    *(v23 + 1) = v22;
    v24 = &v7[v4[7]];
    *v24 = v19;
    *(v24 + 1) = v18;
    v25 = a1[7];
    *v20 = a1[6];
    *(v20 + 1) = v25;
    *v21 = 0;
    *(v21 + 1) = 0;
    v26 = *v13;
    v27 = *(v13 + 1);
    v28 = v13[16];

    sub_24E640000(v26, v27, v28);
    *v13 = 0;
    *(v13 + 1) = 0;
    v13[16] = -1;
    v29 = v49;
    sub_24E601704(&v7[v49], &unk_27F23E170);
    v46(&v7[v29], 1, 1, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213850);
    v30 = *(type metadata accessor for SocialUser() - 8);
    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_24F93DE60;
    sub_24F4A5FC8(a1, v32 + v31, type metadata accessor for SocialUser);
    *&v7[v4[12]] = v32;
    *v7 = xmmword_24F9406F0;
    v33 = a1[3];

    sub_24F4A6030(a1, type metadata accessor for SocialUser);
    if (v33)
    {

      v34 = v42;
      sub_24E601704(&v7[v42], &qword_27F22DF80);
      v35 = v41;
      swift_storeEnumTagMultiPayload();
      v36 = 0;
      v37 = v43;
    }

    else
    {
      v34 = v42;
      sub_24E601704(&v7[v42], &qword_27F22DF80);
      v36 = 1;
      v37 = v43;
      v35 = v41;
    }

    v48(&v7[v34], v36, 1, v35);
    v39 = v44;
    sub_24F4A5FC8(v7, v44, type metadata accessor for SocialUserGroup);
    (*(v37 + 56))(v39, 0, 1, v4);
    return sub_24F4A6030(v7, type metadata accessor for SocialUserGroup);
  }

  else
  {
    sub_24F4A6030(a1, type metadata accessor for SocialUser);
    sub_24E601704(&v7[v9], &qword_27F22DF80);
    sub_24E640000(*v13, *(v13 + 1), v13[16]);
    sub_24E601704(&v7[v49], &unk_27F23E170);
    return (*(v5 + 56))(a2, 1, 1, v4);
  }
}

uint64_t type metadata accessor for SocialUserGroup()
{
  result = qword_27F245100;
  if (!qword_27F245100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F4A5FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4A6030(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SocialUserGroup.integrationIdentifier.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_24E6AD46C(v2, v3);
}

uint64_t SocialUserGroup.id.getter()
{
  v1 = *(v0 + *(type metadata accessor for SocialUserGroup() + 24));

  return v1;
}

uint64_t SocialUserGroup.primaryTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for SocialUserGroup() + 28));

  return v1;
}

uint64_t SocialUserGroup.primaryTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SocialUserGroup() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SocialUserGroup.secondaryTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for SocialUserGroup() + 32));

  return v1;
}

uint64_t SocialUserGroup.secondaryTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SocialUserGroup() + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SocialUserGroup.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for SocialUserGroup() + 36));

  return v1;
}

uint64_t SocialUserGroup.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SocialUserGroup() + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SocialUserGroup.lockupAccessory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SocialUserGroup() + 40);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_24ECECA74(v4, v5, v6);
}

uint64_t SocialUserGroup.lockupAccessory.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for SocialUserGroup() + 40);
  result = sub_24E640000(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t SocialUserGroup.users.getter()
{
  type metadata accessor for SocialUserGroup();
}

uint64_t SocialUserGroup.users.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SocialUserGroup() + 48);

  *(v1 + v3) = a1;
  return result;
}

unint64_t SocialUserGroup.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F95AD70;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x800000024FA75A90;
  v3 = *v1;
  v4 = v1[1];
  v37 = *v1;
  v36 = v4;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245068);
  v5 = sub_24F4A6BCC(&qword_27F245070, &qword_27F245068, &unk_24F9FE758, sub_24E94B390);
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 80) = v5;
  *(inited + 88) = 0xD000000000000012;
  *(inited + 96) = 0x800000024FA75AB0;
  v6 = type metadata accessor for SocialUserGroup();
  v7 = v6[5];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  *(inited + 136) = sub_24F4A6B18();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E60169C(v1 + v7, boxed_opaque_existential_1, &qword_27F22DF80);
  *(inited + 144) = 25705;
  *(inited + 152) = 0xE200000000000000;
  v9 = (v1 + v6[6]);
  v10 = *v9;
  v11 = v9[1];
  v12 = MEMORY[0x277D837D0];
  v13 = MEMORY[0x277D22580];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v13;
  *(inited + 160) = v10;
  *(inited + 168) = v11;
  strcpy((inited + 200), "primaryTitle");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  v14 = (v1 + v6[7]);
  v15 = *v14;
  v35 = v14[1];
  *(inited + 240) = v12;
  *(inited + 248) = v13;
  *(inited + 216) = v15;
  *(inited + 224) = v35;
  strcpy((inited + 256), "secondaryTitle");
  *(inited + 271) = -18;
  v16 = (v1 + v6[8]);
  v17 = *v16;
  v18 = v16[1];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 296) = v19;
  v20 = sub_24E605DB4();
  *(inited + 272) = v17;
  *(inited + 280) = v18;
  *(inited + 304) = v20;
  *(inited + 312) = 0x656C746974627573;
  *(inited + 320) = 0xE800000000000000;
  v21 = (v1 + v6[9]);
  v22 = *v21;
  v23 = v21[1];
  *(inited + 352) = v19;
  *(inited + 360) = v20;
  *(inited + 328) = v22;
  *(inited + 336) = v23;
  *(inited + 368) = 0x634170756B636F6CLL;
  *(inited + 376) = 0xEF79726F73736563;
  v24 = v1 + v6[10];
  v25 = *v24;
  v26 = *(v24 + 1);
  LOBYTE(v19) = v24[16];
  v34 = v19;
  *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245088);
  v27 = sub_24F4A6BCC(&qword_27F245090, &qword_27F245088, &unk_24F9FE760, sub_24F4A6C48);
  *(inited + 384) = v25;
  *(inited + 392) = v26;
  *(inited + 400) = v19;
  *(inited + 416) = v27;
  *(inited + 424) = 0x6553656C646E6168;
  *(inited + 432) = 0xE900000000000074;
  v28 = v6[11];
  *(inited + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170);
  *(inited + 472) = sub_24F141A10();
  v29 = __swift_allocate_boxed_opaque_existential_1((inited + 440));
  sub_24E60169C(v1 + v28, v29, &unk_27F23E170);
  *(inited + 480) = 0x7372657375;
  *(inited + 488) = 0xE500000000000000;
  v30 = *(v1 + v6[12]);
  *(inited + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2450A0);
  *(inited + 528) = sub_24F4A6C9C(&qword_27F2450A8, &qword_27F2450B0);
  *(inited + 496) = v30;
  sub_24E6AD46C(v37, v36);

  sub_24ECECA74(v25, v26, v34);

  v31 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v32 = sub_24E80FFAC(v31);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v32;
  return result;
}

unint64_t sub_24F4A6B18()
{
  result = qword_27F245078;
  if (!qword_27F245078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DF80);
    sub_24F4A7BAC(&qword_27F245080, type metadata accessor for PlayerAvatar.Overlay);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245078);
  }

  return result;
}

uint64_t sub_24F4A6BCC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F4A6C48()
{
  result = qword_27F245098;
  if (!qword_27F245098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245098);
  }

  return result;
}

uint64_t sub_24F4A6C9C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2450A0);
    sub_24F4A7BAC(a2, type metadata accessor for SocialUser);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F4A6D38(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v1 = 25705;
    if (a1 != 2)
    {
      v1 = 0x547972616D697270;
    }

    v3 = 0xD000000000000015;
    if (a1)
    {
      v3 = 0xD000000000000012;
    }

    v4 = a1 <= 1u;
  }

  else
  {
    v1 = 0x634170756B636F6CLL;
    v2 = 0x6553656C646E6168;
    if (a1 != 7)
    {
      v2 = 0x7372657375;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7261646E6F636573;
    if (a1 != 4)
    {
      v3 = 0x656C746974627573;
    }

    v4 = a1 <= 5u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24F4A6E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F4A81CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F4A6E9C(uint64_t a1)
{
  v2 = sub_24F4A7B58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4A6ED8(uint64_t a1)
{
  v2 = sub_24F4A7B58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SocialUserGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2450B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4A7B58();
  sub_24F92D128();
  v9 = v3[1];
  v16 = *v3;
  v17 = v9;
  v19 = 0;
  sub_24E6AD46C(v16, v9);
  sub_24E94B538();
  sub_24F92CCF8();
  if (v2)
  {
    sub_24EEA5774(v16, v17);
  }

  else
  {
    sub_24EEA5774(v16, v17);
    v10 = type metadata accessor for SocialUserGroup();
    LOBYTE(v16) = 1;
    type metadata accessor for PlayerAvatar.Overlay(0);
    sub_24F4A7BAC(&qword_27F2450C8, type metadata accessor for PlayerAvatar.Overlay);
    sub_24F92CCF8();
    LOBYTE(v16) = 2;
    sub_24F92CD08();
    LOBYTE(v16) = 3;
    sub_24F92CD08();
    LOBYTE(v16) = 4;
    sub_24F92CCA8();
    LOBYTE(v16) = 5;
    sub_24F92CCA8();
    v11 = v3 + *(v10 + 40);
    v12 = *(v11 + 1);
    v13 = v11[16];
    v16 = *v11;
    v17 = v12;
    v18 = v13;
    v19 = 6;
    sub_24ECECA74(v16, v12, v13);
    sub_24ECECA8C();
    sub_24F92CCF8();
    sub_24E640000(v16, v17, v18);
    LOBYTE(v16) = 7;
    type metadata accessor for CallProviderConversationHandleSet();
    sub_24F4A7BAC(&qword_27F23A0C0, type metadata accessor for CallProviderConversationHandleSet);
    sub_24F92CCF8();
    v16 = *(v3 + *(v10 + 48));
    v19 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2450A0);
    sub_24F4A6C9C(&qword_27F2450D0, &qword_27F2450D8);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SocialUserGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2450E0);
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = type metadata accessor for SocialUserGroup();
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 20);
  v15 = type metadata accessor for PlayerAvatar.Overlay(0);
  v16 = *(*(v15 - 8) + 56);
  v55 = v14;
  v16(&v12[v14], 1, 1, v15);
  v17 = &v12[v10[10]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = v17;
  v17[16] = -1;
  v19 = v10[11];
  v20 = type metadata accessor for CallProviderConversationHandleSet();
  v21 = *(*(v20 - 8) + 56);
  v22 = v19;
  v53 = v12;
  v21(&v12[v19], 1, 1, v20);
  v23 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24F4A7B58();
  v51 = v9;
  v24 = v52;
  sub_24F92D108();
  if (v24)
  {
    v25 = v18;
    v28 = v53;
    __swift_destroy_boxed_opaque_existential_1(v54);
    sub_24E601704(v28 + v55, &qword_27F22DF80);

    sub_24E640000(*v25, *(v25 + 1), v25[16]);
    return sub_24E601704(v28 + v22, &unk_27F23E170);
  }

  else
  {
    v26 = v48;
    v52 = v20;
    v58 = 0;
    sub_24E94B6E8();
    sub_24F92CC18();
    v27 = v18;
    v30 = v53;
    *v53 = v56;
    LOBYTE(v56) = 1;
    sub_24F4A7BAC(&qword_27F2450E8, type metadata accessor for PlayerAvatar.Overlay);
    sub_24F92CC18();
    sub_24E61DA68(v26, v30 + v55, &qword_27F22DF80);
    LOBYTE(v56) = 2;
    v31 = sub_24F92CC28();
    v32 = (v30 + v10[6]);
    *v32 = v31;
    v32[1] = v33;
    LOBYTE(v56) = 3;
    v34 = sub_24F92CC28();
    v35 = (v30 + v10[7]);
    *v35 = v34;
    v35[1] = v36;
    LOBYTE(v56) = 4;
    v37 = sub_24F92CBC8();
    v38 = (v30 + v10[8]);
    *v38 = v37;
    v38[1] = v39;
    LOBYTE(v56) = 5;
    v40 = sub_24F92CBC8();
    v41 = (v30 + v10[9]);
    *v41 = v40;
    v41[1] = v42;
    v48 = v42;
    v58 = 6;
    sub_24ECED500();
    sub_24F92CC18();
    v43 = v56;
    v44 = v57;
    sub_24E640000(*v27, *(v27 + 1), v27[16]);
    *v27 = v43;
    v27[16] = v44;
    LOBYTE(v56) = 7;
    sub_24F4A7BAC(&qword_27F23A0D0, type metadata accessor for CallProviderConversationHandleSet);
    v45 = v47;
    sub_24F92CC18();
    sub_24E61DA68(v45, v30 + v22, &unk_27F23E170);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2450A0);
    v58 = 8;
    sub_24F4A6C9C(&qword_27F2450F0, &qword_27F2450F8);
    sub_24F92CC68();
    (*(v49 + 8))(v51, v50);
    *(v30 + v10[12]) = v56;
    sub_24F4A5FC8(v30, v46, type metadata accessor for SocialUserGroup);
    __swift_destroy_boxed_opaque_existential_1(v54);
    return sub_24F4A6030(v30, type metadata accessor for SocialUserGroup);
  }
}

unint64_t sub_24F4A7B58()
{
  result = qword_27F2450C0;
  if (!qword_27F2450C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2450C0);
  }

  return result;
}

uint64_t sub_24F4A7BAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F4A7C08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24F4A7D60(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_24F4A7EA4()
{
  sub_24E66ECF0(319, &qword_27F245110);
  if (v0 <= 0x3F)
  {
    sub_24F4A8050(319, &qword_27F245118, type metadata accessor for PlayerAvatar.Overlay, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F254DE0);
      if (v2 <= 0x3F)
      {
        sub_24E66ECF0(319, &qword_27F22DA58);
        if (v3 <= 0x3F)
        {
          sub_24F4A8050(319, &qword_27F23A0E8, type metadata accessor for CallProviderConversationHandleSet, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_24F4A8050(319, &qword_27F245120, type metadata accessor for SocialUser, MEMORY[0x277D83940]);
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

void sub_24F4A8050(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24F4A80C8()
{
  result = qword_27F245128;
  if (!qword_27F245128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245128);
  }

  return result;
}

unint64_t sub_24F4A8120()
{
  result = qword_27F245130;
  if (!qword_27F245130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245130);
  }

  return result;
}

unint64_t sub_24F4A8178()
{
  result = qword_27F245138;
  if (!qword_27F245138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245138);
  }

  return result;
}

uint64_t sub_24F4A81CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x800000024FA75A90 == a2;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA75AB0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x547972616D697270 && a2 == 0xEC000000656C7469 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEE00656C74695479 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x634170756B636F6CLL && a2 == 0xEF79726F73736563 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6553656C646E6168 && a2 == 0xE900000000000074 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7372657375 && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F4A84C8@<X0>(uint64_t a1@<X8>)
{
  v247 = a1;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245140);
  v216 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v228 = &v184 - v2;
  v227 = sub_24F91F4A8();
  v215 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v211 = &v184 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v226 = &v184 - v5;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245498);
  MEMORY[0x28223BE20](v235);
  v237 = (&v184 - v6);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454A0);
  MEMORY[0x28223BE20](v224);
  v8 = &v184 - v7;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454A8);
  MEMORY[0x28223BE20](v236);
  v225 = &v184 - v9;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454B0);
  MEMORY[0x28223BE20](v248);
  v238 = &v184 - v10;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454B8);
  MEMORY[0x28223BE20](v232);
  v233 = (&v184 - v11);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454C0);
  MEMORY[0x28223BE20](v243);
  v234 = &v184 - v12;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454C8);
  MEMORY[0x28223BE20](v217);
  v218 = (&v184 - v13);
  v14 = type metadata accessor for PageToolbarItemView(0);
  v15 = v14 - 8;
  v190 = *(v14 - 8);
  v16 = *(v190 + 64);
  MEMORY[0x28223BE20](v14);
  v191 = &v184 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v17 - 8);
  v193 = &v184 - v18;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454D0);
  v205 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v200 = &v184 - v19;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454D8);
  v201 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v199 = &v184 - v20;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454E0);
  MEMORY[0x28223BE20](v213);
  v197 = &v184 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v204 = &v184 - v23;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454E8);
  MEMORY[0x28223BE20](v231);
  v229 = &v184 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v25 - 8);
  v186 = &v184 - v26;
  v185 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v185);
  v187 = (&v184 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454F0);
  MEMORY[0x28223BE20](v244);
  v245 = &v184 - v28;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454F8);
  MEMORY[0x28223BE20](v239);
  v241 = &v184 - v29;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245500);
  MEMORY[0x28223BE20](v220);
  v221 = &v184 - v30;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245508);
  MEMORY[0x28223BE20](v240);
  v222 = &v184 - v31;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245510);
  MEMORY[0x28223BE20](v246);
  v242 = &v184 - v32;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245518);
  MEMORY[0x28223BE20](v208);
  v209 = (&v184 - v33);
  v196 = sub_24F929888();
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v194 = &v184 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_24F9289E8();
  v188 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v37 = &v184 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0);
  MEMORY[0x28223BE20](v214);
  v192 = &v184 - v38;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2451A8);
  v202 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v198 = &v184 - v39;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245520);
  MEMORY[0x28223BE20](v207);
  v189 = &v184 - v40;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245528);
  MEMORY[0x28223BE20](v212);
  v210 = &v184 - v41;
  v42 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v184 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v223 = (&v184 - v46);
  v47 = type metadata accessor for PageToolbarItem.Appearance(0);
  MEMORY[0x28223BE20](v47);
  v49 = &v184 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v1 + *(v15 + 44);
  v51 = type metadata accessor for PageToolbarItem(0);
  sub_24F4ADCF8(&v50[*(v51 + 20)], v49, type metadata accessor for PageToolbarItem.Appearance);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      v74 = v245;
      if (EnumCaseMultiPayload == 4)
      {
        v75 = v215;
        v76 = v226;
        v77 = v227;
        (*(v215 + 32))(v226, v49, v227);
        (*(v75 + 16))(v211, v76, v77);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245220);
        sub_24F4AEBC4();
        v78 = v228;
        sub_24F9277C8();
        v79 = v216;
        v80 = v230;
        (*(v216 + 16))(v8, v78, v230);
        swift_storeEnumTagMultiPayload();
        sub_24F4B2AB0();
        sub_24E602068(&qword_27F245210, &qword_27F245140);
        v81 = v225;
        sub_24F924E28();
        sub_24E60169C(v81, v237, &qword_27F2454A8);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2374A0);
        sub_24F4B29F8();
        sub_24F02E9B8();
        v82 = v238;
        sub_24F924E28();
        sub_24E601704(v81, &qword_27F2454A8);
        sub_24E60169C(v82, v74, &qword_27F2454B0);
        swift_storeEnumTagMultiPayload();
        sub_24F4B2B04();
        sub_24F4B3164();
        sub_24F924E28();
        sub_24E601704(v82, &qword_27F2454B0);
        (*(v79 + 8))(v228, v80);
        return (*(v75 + 8))(v226, v227);
      }

      sub_24F927618();
      sub_24F9238C8();
      v118 = BYTE8(v256);
      v119 = v257;
      v120 = BYTE8(v257);
      v121 = v237;
      *v237 = v256;
      *(v121 + 8) = v118;
      *(v121 + 2) = v119;
      *(v121 + 24) = v120;
      *(v121 + 2) = v258;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2374A0);
      sub_24F4B29F8();
      sub_24F02E9B8();
      v122 = v238;
      sub_24F924E28();
      v105 = &qword_27F2454B0;
      sub_24E60169C(v122, v74, &qword_27F2454B0);
      swift_storeEnumTagMultiPayload();
      sub_24F4B2B04();
      sub_24F4B3164();
      sub_24F924E28();
      v123 = v122;
      goto LABEL_22;
    }

    v101 = *(v49 + 1);
    v102 = *(v49 + 4);
    *v8 = *v49;
    *(v8 + 1) = v101;
    *(v8 + 1) = *(v49 + 1);
    *(v8 + 4) = v102;
    swift_storeEnumTagMultiPayload();
    sub_24F4B2AB0();
    sub_24E602068(&qword_27F245210, &qword_27F245140);
    v103 = v225;
    sub_24F924E28();
    sub_24E60169C(v103, v237, &qword_27F2454A8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2374A0);
    sub_24F4B29F8();
    sub_24F02E9B8();
    v104 = v238;
    sub_24F924E28();
    sub_24E601704(v103, &qword_27F2454A8);
    v105 = &qword_27F2454B0;
    sub_24E60169C(v104, v245, &qword_27F2454B0);
    swift_storeEnumTagMultiPayload();
    sub_24F4B2B04();
    sub_24F4B3164();
LABEL_21:
    sub_24F924E28();
    v123 = v104;
LABEL_22:
    v127 = v105;
    return sub_24E601704(v123, v127);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v53 = v1;
      v55 = *v49;
      v54 = *(v49 + 1);
      v57 = *(v49 + 2);
      v56 = *(v49 + 3);
      LODWORD(v238) = v49[32];
      v58 = v49[33];
      v59 = *(v51 + 24);
      sub_24E60169C(&v50[v59], &v256, qword_27F24EC90);
      v60 = *(&v257 + 1);
      sub_24E601704(&v256, qword_27F21B590);
      if (v60)
      {
        v61 = sub_24F9232F8();
        v62 = *(*(v61 - 8) + 56);
        LODWORD(v237) = v58;
        v62(v193, 1, 1, v61);
        sub_24E60169C(&v50[v59], &v256, qword_27F24EC90);
        v63 = v53;
        v64 = v191;
        sub_24F4ADCF8(v63, v191, type metadata accessor for PageToolbarItemView);
        v65 = (*(v190 + 80) + 49) & ~*(v190 + 80);
        v66 = swift_allocObject();
        *(v66 + 16) = v55;
        *(v66 + 24) = v54;
        *(v66 + 32) = v57;
        *(v66 + 40) = v56;
        *(v66 + 48) = v238;
        sub_24F4AF5E0(v64, v66 + v65, type metadata accessor for PageToolbarItemView);
        *(v66 + v65 + v16) = v237;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2455A8);
        v67 = sub_24F4B3038();
        *&v253 = &type metadata for ButtonContent;
        *(&v253 + 1) = v67;
        swift_getOpaqueTypeConformance2();
        v68 = v200;
        v69 = v237;
        sub_24F921788();
        if (v69 == 2)
        {
          *(&v254 + 1) = sub_24F9271D8();
          v255 = sub_24F4B3EF0(&qword_27F214E38, MEMORY[0x277CE1260]);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v253);
          v71 = *MEMORY[0x277CE0118];
          v72 = sub_24F924B38();
          (*(*(v72 - 8) + 104))(boxed_opaque_existential_1, v71, v72);
          v73 = v229;
        }

        else
        {
          if (v69)
          {
            *(&v254 + 1) = MEMORY[0x277CE1120];
            v255 = sub_24E63E454();
          }

          else
          {
            *(&v254 + 1) = sub_24F9271D8();
            v255 = sub_24F4B3EF0(&qword_27F214E38, MEMORY[0x277CE1260]);
            v171 = __swift_allocate_boxed_opaque_existential_1(&v253);
            v172 = *MEMORY[0x277CE0118];
            v173 = sub_24F924B38();
            (*(*(v173 - 8) + 104))(v171, v172, v173);
          }

          v73 = v229;
          sub_24E612C80(&v253, &v256);
          sub_24E612C80(&v256, &v253);
        }

        sub_24E612C80(&v253, &v258 + 8);
        v256 = 0u;
        v257 = 0u;
        *&v258 = 0;
        sub_24E602068(&qword_27F245578, &qword_27F2454D0);
        sub_24E620DE8();
        v174 = v199;
        v175 = v206;
        sub_24F926178();
        sub_24E6A56E8(&v256);
        (*(v205 + 8))(v68, v175);
        v176 = sub_24F926D18();
        KeyPath = swift_getKeyPath();
        v178 = v197;
        (*(v201 + 32))(v197, v174, v203);
        v179 = &v178[*(v213 + 36)];
        *v179 = KeyPath;
        v179[1] = v176;
        v180 = v178;
        v181 = v204;
        sub_24E6009C8(v180, v204, &qword_27F2454E0);
        sub_24E60169C(v181, v218, &qword_27F2454E0);
        swift_storeEnumTagMultiPayload();
        sub_24F4B2EFC();
        sub_24F924E28();
        sub_24E601704(v181, &qword_27F2454E0);
        v150 = v245;
      }

      else
      {
        v148 = *v53;
        v149 = v218;
        *v218 = v55;
        v149[1] = v54;
        v149[2] = v57;
        v149[3] = v56;
        *(v149 + 32) = v238;
        v149[5] = v148;
        *(v149 + 48) = v58;
        swift_storeEnumTagMultiPayload();
        sub_24F4B2EFC();
        sub_24F4B3038();
        v73 = v229;
        sub_24F924E28();
        v150 = v245;
      }

      sub_24E60169C(v73, v233, &qword_27F2454E8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245590);
      sub_24F4B2E70();
      sub_24F4B308C();
      v182 = v234;
      sub_24F924E28();
      sub_24E60169C(v182, v241, &qword_27F2454C0);
      swift_storeEnumTagMultiPayload();
      sub_24F4B2B90();
      sub_24F4B2DE4();
      v183 = v242;
      sub_24F924E28();
      sub_24E601704(v182, &qword_27F2454C0);
      sub_24E60169C(v183, v150, &qword_27F245510);
      swift_storeEnumTagMultiPayload();
      sub_24F4B2B04();
      sub_24F4B3164();
      sub_24F924E28();
      sub_24E601704(v183, &qword_27F245510);
      v123 = v229;
      v127 = &qword_27F2454E8;
      return sub_24E601704(v123, v127);
    }

    v106 = *v49;
    v107 = *(v49 + 1);
    v108 = v49[16];
    v109 = *(v49 + 3);
    v110 = *(v49 + 4);
    v111 = v49[40];
    v112 = v1[2];
    swift_getKeyPath();
    *&v256 = v112;
    sub_24F4B3EF0(&qword_27F21FE50, type metadata accessor for ArcadeSubscription);
    sub_24F91FD88();

    if (*(v112 + 16) > 1u)
    {
      sub_24E63FFA4();
      sub_24E63FFA4();
      v106 = 0;
      v107 = 0;
      v109 = 0;
      v110 = 0;
      v113 = 0;
      v114 = 0;
      v116 = 0;
      v115 = 0;
      v117 = 0uLL;
    }

    else
    {
      v113 = *v1;
      LOBYTE(v256) = v108;
      LOBYTE(v253) = v111;
      v114 = 0x800000024FA75AF0;
      v115 = v108;
      v116 = v111;
      v117 = xmmword_24F9FE980;
    }

    v124 = v245;
    v125 = v233;
    *v233 = v106;
    v125[1] = v107;
    v125[2] = v115;
    v125[3] = v109;
    v125[4] = v110;
    v125[5] = v116;
    v125[6] = v113;
    *(v125 + 7) = v117;
    v125[9] = v114;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245590);
    sub_24F4B2E70();
    sub_24F4B308C();
    v126 = v234;
    sub_24F924E28();
    sub_24E60169C(v126, v241, &qword_27F2454C0);
    swift_storeEnumTagMultiPayload();
    sub_24F4B2B90();
    sub_24F4B2DE4();
    v104 = v242;
    sub_24F924E28();
    sub_24E601704(v126, &qword_27F2454C0);
    v105 = &qword_27F245510;
    sub_24E60169C(v104, v124, &qword_27F245510);
    swift_storeEnumTagMultiPayload();
    sub_24F4B2B04();
    sub_24F4B3164();
    goto LABEL_21;
  }

  v235 = v44;
  v84 = v223;
  sub_24F4ADCF8(v49, v223, type metadata accessor for Player);
  v85 = *v84;
  v86 = v84[1];
  v238 = v1;
  v87 = v1[1];
  swift_getKeyPath();
  v88 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider___observationRegistrar;
  *&v256 = v87;
  v89 = sub_24F4B3EF0(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  v237 = v88;
  v236 = v89;
  sub_24F91FD88();

  v90 = (v87 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  if (v85 == *v90 && v86 == v90[1] || (sub_24F92CE08() & 1) != 0)
  {
    v91 = v238;
    v92 = *(v238 + 3);
    swift_getKeyPath();
    *&v256 = v92;
    sub_24F4B3EF0(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor);
    sub_24F91FD88();

    if (*(v92 + 16) == 2)
    {
      sub_24F927618();
      sub_24F9238C8();
      v93 = BYTE8(v256);
      v94 = v257;
      v95 = BYTE8(v257);
      v96 = v209;
      *v209 = v256;
      *(v96 + 8) = v93;
      v96[2] = v94;
      *(v96 + 24) = v95;
      *(v96 + 2) = v258;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2374A0);
      sub_24F4B2CEC();
      sub_24F02E9B8();
      v97 = v210;
      sub_24F924E28();
      v98 = v245;
      v99 = v221;
      v100 = v214;
    }

    else
    {
      swift_getKeyPath();
      *&v256 = v87;
      sub_24F91FD88();

      v128 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__avatarMediaArtwork;
      swift_beginAccess();
      v129 = v188;
      (*(v188 + 16))(v37, v87 + v128, v35);
      sub_24E60169C(&v50[*(v51 + 24)], &v256, qword_27F24EC90);
      v130 = type metadata accessor for PlayerAvatarView(0);
      v131 = v192;
      v132 = v192 + v130[6];
      v133 = v257;
      *v132 = v256;
      *(v132 + 16) = v133;
      *(v132 + 32) = v258;
      v134 = v91[32];
      (*(v129 + 32))(v131, v37, v35);
      type metadata accessor for PlayerAvatarView.AvatarType(0);
      swift_storeEnumTagMultiPayload();
      v135 = v130[5];
      v136 = type metadata accessor for PlayerAvatarView.Overlay(0);
      (*(*(v136 - 8) + 56))(v131 + v135, 1, 1, v136);
      *(v131 + v130[7]) = v134;
      sub_24F927618();
      sub_24F9238C8();
      v137 = v214;
      v138 = (v131 + *(v214 + 36));
      v139 = v257;
      *v138 = v256;
      v138[1] = v139;
      v138[2] = v258;
      v140 = v194;
      sub_24F9297F8();
      v141 = sub_24E680290();
      v142 = v198;
      sub_24F925EE8();
      (*(v195 + 8))(v140, v196);
      sub_24E601704(v131, &qword_27F2233D0);
      v98 = v245;
      v99 = v221;
      if (qword_27F2116B0 != -1)
      {
        swift_once();
      }

      v251 = qword_27F39EE28;
      v252 = unk_27F39EE30;
      v249 = v137;
      v250 = v141;
      swift_getOpaqueTypeConformance2();
      sub_24E600AEC();
      v143 = v189;
      v144 = v219;
      sub_24F926538();
      (*(v202 + 8))(v142, v144);
      sub_24E60169C(v143, v209, &qword_27F245520);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2374A0);
      v100 = v137;
      sub_24F4B2CEC();
      sub_24F02E9B8();
      v97 = v210;
      sub_24F924E28();
      sub_24E601704(v143, &qword_27F245520);
    }

    sub_24E60169C(v97, v99, &qword_27F245528);
    swift_storeEnumTagMultiPayload();
    sub_24F4B2C60();
    v145 = sub_24E680290();
    v251 = v100;
    v252 = v145;
    swift_getOpaqueTypeConformance2();
    v146 = v222;
    sub_24F924E28();
    sub_24E60169C(v146, v241, &qword_27F245508);
    swift_storeEnumTagMultiPayload();
    sub_24F4B2B90();
    sub_24F4B2DE4();
    v147 = v242;
    sub_24F924E28();
    sub_24E601704(v146, &qword_27F245508);
    sub_24E60169C(v147, v98, &qword_27F245510);
    swift_storeEnumTagMultiPayload();
    sub_24F4B2B04();
    sub_24F4B3164();
    sub_24F924E28();
    sub_24E601704(v147, &qword_27F245510);
    sub_24E601704(v97, &qword_27F245528);
    sub_24F4B15B0(v223, type metadata accessor for Player);
    return sub_24F4B15B0(v49, type metadata accessor for Player);
  }

  else
  {
    v237 = type metadata accessor for Player;
    sub_24F4B15B0(v223, type metadata accessor for Player);
    v151 = v235;
    sub_24F4AF5E0(v49, v235, type metadata accessor for Player);
    v152 = *(v151 + 24);
    v236 = *(v151 + 16);
    v153 = type metadata accessor for PlayerAvatar.Overlay(0);
    v154 = *(*(v153 - 8) + 56);
    v155 = v186;
    v154(v186, 1, 1, v153);
    sub_24E60169C(&v50[*(v51 + 24)], &v256, qword_27F24EC90);
    v156 = v185;
    v157 = *(v185 + 20);
    v158 = v187;
    v154(v187 + v157, 1, 1, v153);
    v159 = v158 + *(v156 + 24);
    v255 = 0;
    v253 = 0u;
    v254 = 0u;
    *v159 = 0u;
    *(v159 + 16) = 0u;
    *(v159 + 32) = 0;

    sub_24E61DA68(&v253, v159, qword_27F21B590);
    *v158 = v236;
    v158[1] = v152;
    sub_24E61DA68(v155, v158 + v157, &qword_27F22DF80);
    sub_24E61DA68(&v256, v159, qword_27F21B590);
    LOBYTE(v256) = v238[32];
    v160 = v192;
    sub_24F8319B8(v158, &v256, v192);
    sub_24F927618();
    sub_24F9238C8();
    v161 = v214;
    v162 = (v160 + *(v214 + 36));
    v163 = v257;
    *v162 = v256;
    v162[1] = v163;
    v162[2] = v258;
    v164 = v194;
    sub_24F9297F8();
    v165 = sub_24E680290();
    v166 = v198;
    sub_24F925EE8();
    (*(v195 + 8))(v164, v196);
    sub_24E601704(v160, &qword_27F2233D0);
    v167 = v202;
    v168 = v219;
    (*(v202 + 16))(v221, v166, v219);
    swift_storeEnumTagMultiPayload();
    sub_24F4B2C60();
    *&v253 = v161;
    *(&v253 + 1) = v165;
    swift_getOpaqueTypeConformance2();
    v169 = v222;
    sub_24F924E28();
    sub_24E60169C(v169, v241, &qword_27F245508);
    swift_storeEnumTagMultiPayload();
    sub_24F4B2B90();
    sub_24F4B2DE4();
    v170 = v242;
    sub_24F924E28();
    sub_24E601704(v169, &qword_27F245508);
    sub_24E60169C(v170, v245, &qword_27F245510);
    swift_storeEnumTagMultiPayload();
    sub_24F4B2B04();
    sub_24F4B3164();
    sub_24F924E28();
    sub_24E601704(v170, &qword_27F245510);
    (*(v167 + 8))(v166, v168);
    return sub_24F4B15B0(v151, v237);
  }
}

uint64_t sub_24F4AAE74@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2455C0);
  MEMORY[0x28223BE20](v2);
  v4 = &v37 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2455C8);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  v41 = sub_24F9271D8();
  MEMORY[0x28223BE20](v41);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2455D0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2455D8);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v44 = *(v1 + 48);
  v17 = v44;
  v18 = *(v1 + 16);
  v43[0] = *v1;
  v43[1] = v18;
  v43[2] = *(v1 + 32);
  if (v44 == 2)
  {
    *v4 = sub_24F9249A8();
    *(v4 + 1) = 0x4010000000000000;
    v4[16] = 0;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2455E0);
    sub_24F4AB358(v43, &v4[*(v19 + 44)]);
    v20 = sub_24F926D18();
    KeyPath = swift_getKeyPath();
    v22 = &v4[*(v2 + 36)];
    *v22 = KeyPath;
    v22[1] = v20;
    sub_24E60169C(v4, v7, &qword_27F2455C0);
    swift_storeEnumTagMultiPayload();
    sub_24F4B3C9C();
    sub_24F4B3E0C();
    sub_24F924E28();
    v23 = v4;
    v24 = &qword_27F2455C0;
  }

  else
  {
    v38 = &v37 - v16;
    *v11 = sub_24F9249A8();
    *(v11 + 1) = 0x4010000000000000;
    v11[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2455E0);
    sub_24F4AB358(v43, &v11[*(v25 + 44)]);
    v26 = sub_24F926D18();
    v27 = swift_getKeyPath();
    v39 = v2;
    v28 = &v11[*(v2 + 36)];
    *v28 = v27;
    v28[1] = v26;
    v29 = &v11[*(v9 + 36)];
    sub_24F927438();
    v30 = sub_24F925808();
    v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870) + 36)] = v30;
    if (v17)
    {
      sub_24E63E314();
    }

    else
    {
      v31 = *MEMORY[0x277CE0118];
      v32 = sub_24F924B38();
      (*(*(v32 - 8) + 104))(v40, v31, v32);
      sub_24F4B3EF0(&qword_27F214E30, MEMORY[0x277CE1260]);
    }

    v33 = sub_24F927348();
    sub_24E6009C8(v11, v14, &qword_27F2455D0);
    v34 = &v14[*(v12 + 36)];
    *v34 = v33;
    *(v34 + 4) = 256;
    v35 = v38;
    sub_24E6009C8(v14, v38, &qword_27F2455D8);
    sub_24E60169C(v35, v7, &qword_27F2455D8);
    swift_storeEnumTagMultiPayload();
    sub_24F4B3C9C();
    sub_24F4B3E0C();
    sub_24F924E28();
    v23 = v35;
    v24 = &qword_27F2455D8;
  }

  return sub_24E601704(v23, v24);
}

uint64_t sub_24F4AB358@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBF8);
  MEMORY[0x28223BE20](v3);
  v5 = &v54 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245610);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245618);
  MEMORY[0x28223BE20](v10 - 8);
  v58 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v54 - v13;
  v16 = *(a1 + 32);
  if (v16 == 255)
  {
    (*(v7 + 56))(&v54 - v13, 1, 1, v6, v14);
    v31 = a1[1];
    if (v31)
    {
      goto LABEL_3;
    }

LABEL_5:
    v44 = 0;
    v49 = 0;
    v47 = 0;
    goto LABEL_6;
  }

  v57 = &v54 - v13;
  v18 = a1[2];
  v17 = a1[3];
  v19 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC20) + 36)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30);
  v56 = v7;
  v21 = v3;
  v22 = *(v20 + 28);
  v55 = v6;
  v23 = *MEMORY[0x277CE1058];
  v24 = sub_24F926E78();
  (*(*(v24 - 8) + 104))(v19 + v22, v23, v24);
  *v19 = swift_getKeyPath();
  *v5 = v18;
  *(v5 + 1) = v17;
  v5[16] = v16 & 1;
  v5[17] = 1;
  v15 = v57;
  sub_24E672C48();
  v25 = sub_24F9259D8();
  KeyPath = swift_getKeyPath();
  v27 = &v5[*(v21 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  sub_24E7DD170();
  sub_24F9268B8();
  sub_24E601704(v5, &qword_27F21DBF8);
  sub_24F927618();
  sub_24F9238C8();
  v28 = v55;
  v29 = &v9[*(v55 + 36)];
  v30 = v63;
  *v29 = v62;
  *(v29 + 1) = v30;
  *(v29 + 2) = v64;
  sub_24E6009C8(v9, v15, &qword_27F245610);
  (*(v56 + 56))(v15, 0, 1, v28);
  v31 = a1[1];
  if (!v31)
  {
    goto LABEL_5;
  }

LABEL_3:
  v60 = *a1;
  v61 = v31;
  sub_24E600AEC();

  v32 = sub_24F925E18();
  v34 = v33;
  v36 = v35;
  sub_24F925898();
  v37 = sub_24F925C98();
  v38 = v15;
  v40 = v39;
  v42 = v41;

  sub_24E600B40(v32, v34, v36 & 1);

  sub_24F925938();
  v31 = sub_24F925B78();
  v44 = v43;
  LOBYTE(v32) = v45;
  v47 = v46;
  v48 = v40;
  v15 = v38;
  sub_24E600B40(v37, v48, v42 & 1);

  v49 = v32 & 1;
  sub_24E5FD138(v31, v44, v32 & 1);

LABEL_6:
  v50 = v58;
  sub_24E60169C(v15, v58, &qword_27F245618);
  v51 = v59;
  sub_24E60169C(v50, v59, &qword_27F245618);
  v52 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245620) + 48));
  sub_24E65D2B4(v31, v44, v49, v47);
  sub_24E65D2F8(v31, v44, v49, v47);
  *v52 = v31;
  v52[1] = v44;
  v52[2] = v49;
  v52[3] = v47;
  sub_24E601704(v15, &qword_27F245618);
  sub_24E65D2F8(v31, v44, v49, v47);
  return sub_24E601704(v50, &qword_27F245618);
}

uint64_t sub_24F4AB88C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v36[2] = v1[2];
  v36[3] = v3;
  v36[4] = v1[4];
  v4 = v1[1];
  v36[0] = *v1;
  v36[1] = v4;
  v5 = sub_24F927618();
  v31 = v6;
  v32 = v5;
  sub_24F4ABB2C(v36, &v33);
  v7 = v33;
  v8 = v34;
  v30 = BYTE1(v34);
  v9 = *(&v34 + 1);
  v10 = v35;
  v11 = WORD4(v35);
  sub_24E672C48();
  sub_24F4B3F40(v9, v10, v11);
  sub_24E63FFA4();
  sub_24F4B3F58(v9, v10, v11);
  LOBYTE(v33) = v8;
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245628) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
  v14 = *MEMORY[0x277CE1058];
  v15 = sub_24F926E78();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  *a1 = v32;
  *(a1 + 8) = v31;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v30;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  sub_24F927618();
  sub_24F9238C8();
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245630) + 36));
  v17 = v34;
  *v16 = v33;
  v16[1] = v17;
  v16[2] = v35;
  LOBYTE(v13) = sub_24F925808();
  sub_24F923318();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245638) + 36);
  *v26 = v13;
  *(v26 + 8) = v19;
  *(v26 + 16) = v21;
  *(v26 + 24) = v23;
  *(v26 + 32) = v25;
  *(v26 + 40) = 0;
  v27 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245640) + 36);
  sub_24F927468();
  *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245648) + 56)) = 256;
  v28 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245650);
  *(a1 + *(result + 36)) = v28;
  return result;
}

uint64_t sub_24F4ABB2C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *a1;
  v3 = *(a1 + 16);
  v15 = v3;
  v4 = v14;
  if (*(a1 + 40))
  {
    sub_24F4B3F70(&v14, v13);
    v5 = 0;
    v6 = 0;
    v7 = 255;
  }

  else
  {
    v5 = *(a1 + 3);
    v6 = *(a1 + 4);
    sub_24F4B3F70(&v14, v13);
    sub_24E672C48();
    if (qword_27F211820 != -1)
    {
      swift_once();
    }

    v9 = qword_27F24F280;
    v10 = sub_24F92B098();
    v11 = [objc_opt_self() imageNamed:v10 inBundle:v9];

    if (v11)
    {
    }

    else
    {
      sub_24E63FFA4();
      v5 = *(a1 + 8);
      v6 = *(a1 + 9);
    }

    v7 = 256;
  }

  *a2 = v4;
  *(a2 + 16) = v3 & 1;
  *(a2 + 17) = 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  sub_24E672C48();
  sub_24F4B3F40(v5, v6, v7);
  sub_24F4B3F58(v5, v6, v7);
  return sub_24E63FFA4();
}

uint64_t sub_24F4ABCE0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214E98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245388);
  sub_24E602068(&qword_27F245428, &qword_27F214E98);
  sub_24E602068(&qword_27F245380, &qword_27F245388);
  sub_24F4B2534();
  return sub_24F927238();
}

uint64_t sub_24F4ABE28()
{
  sub_24E600AEC();

  return sub_24F926EB8();
}

uint64_t sub_24F4ABEBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245348);
  sub_24E602068(&qword_27F212910, &qword_27F211B58);
  sub_24F4B1F00();
  return sub_24F925AB8();
}

uint64_t OverlayPageToolbarItemView.init(item:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0x4044000000000000;
  v4 = type metadata accessor for OverlayPageToolbarItemView(0);
  return sub_24F4AF5E0(a1, a2 + *(v4 + 20), type metadata accessor for PageToolbarItem);
}

uint64_t OverlayPageToolbarItemView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v187 = a1;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245140);
  v157 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v170 = &v138 - v2;
  v169 = sub_24F91F4A8();
  v156 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v155 = &v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v168 = &v138 - v5;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245148);
  MEMORY[0x28223BE20](v166);
  v165 = (&v138 - v6);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245150);
  MEMORY[0x28223BE20](v183);
  v167 = &v138 - v7;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245158);
  MEMORY[0x28223BE20](v160);
  v163 = (&v138 - v8);
  v161 = sub_24F9241F8();
  v149 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v148 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OverlayPageToolbarItemView(0);
  v11 = v10 - 8;
  v139 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v140 = v12;
  v141 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v13 - 8);
  v164 = &v138 - v14;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245160);
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v142 = &v138 - v15;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245168);
  MEMORY[0x28223BE20](v158);
  v145 = &v138 - v16;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245170);
  v147 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v146 = &v138 - v17;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245178);
  MEMORY[0x28223BE20](v177);
  v162 = &v138 - v18;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245180);
  MEMORY[0x28223BE20](v184);
  v186 = (&v138 - v19);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245188);
  MEMORY[0x28223BE20](v179);
  v181 = &v138 - v20;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245190);
  MEMORY[0x28223BE20](v174);
  v175 = &v138 - v21;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245198);
  MEMORY[0x28223BE20](v180);
  v176 = &v138 - v22;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2451A0);
  MEMORY[0x28223BE20](v185);
  v182 = &v138 - v23;
  v152 = sub_24F929888();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = &v138 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v138 - v26;
  v28 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v28);
  v30 = (&v138 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0);
  MEMORY[0x28223BE20](v172);
  v32 = &v138 - v31;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2451A8);
  v154 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v153 = &v138 - v33;
  v34 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v138 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for PageToolbarItem.Appearance(0);
  MEMORY[0x28223BE20](v37);
  v39 = &v138 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v11 + 28);
  v178 = v1;
  v41 = v1 + v40;
  v42 = type metadata accessor for PageToolbarItem(0);
  sub_24F4ADCF8(&v41[*(v42 + 20)], v39, type metadata accessor for PageToolbarItem.Appearance);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v138 = v36;
      sub_24F4AF5E0(v39, v36, type metadata accessor for Player);
      v77 = *(v36 + 3);
      v171 = *(v36 + 2);
      v78 = type metadata accessor for PlayerAvatar.Overlay(0);
      v79 = *(*(v78 - 8) + 56);
      v79(v27, 1, 1, v78);
      sub_24E60169C(&v41[*(v42 + 24)], &v191, qword_27F24EC90);
      v80 = *(v28 + 20);
      v79(v30 + v80, 1, 1, v78);
      v81 = v30 + *(v28 + 24);
      v190 = 0;
      v188 = 0u;
      v189 = 0u;
      *v81 = 0u;
      *(v81 + 16) = 0u;
      *(v81 + 32) = 0;

      sub_24E61DA68(&v188, v81, qword_27F21B590);
      *v30 = v171;
      v30[1] = v77;
      sub_24E61DA68(v27, v30 + v80, &qword_27F22DF80);
      sub_24E61DA68(&v191, v81, qword_27F21B590);
      LOBYTE(v191) = 4;
      sub_24F8319B8(v30, &v191, v32);
      sub_24F927618();
      sub_24F9238C8();
      v82 = v172;
      v83 = &v32[*(v172 + 36)];
      v84 = v192;
      *v83 = v191;
      *(v83 + 1) = v84;
      *(v83 + 2) = v193;
      v85 = v150;
      sub_24F9297F8();
      v86 = sub_24E680290();
      v87 = v153;
      sub_24F925EE8();
      (*(v151 + 8))(v85, v152);
      sub_24E601704(v32, &qword_27F2233D0);
      v88 = v154;
      v89 = v173;
      (*(v154 + 16))(v175, v87, v173);
      swift_storeEnumTagMultiPayload();
      *&v188 = v82;
      *(&v188 + 1) = v86;
      swift_getOpaqueTypeConformance2();
      sub_24F4ADEB4();
      v90 = v176;
      sub_24F924E28();
      sub_24E60169C(v90, v181, &qword_27F245198);
      swift_storeEnumTagMultiPayload();
      sub_24F4ADDEC();
      sub_24F4AE164();
      v91 = v182;
      sub_24F924E28();
      sub_24E601704(v90, &qword_27F245198);
      sub_24E60169C(v91, v186, &qword_27F2451A0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2451B0);
      sub_24F4ADD60();
      sub_24F4AE270();
      sub_24F924E28();
      sub_24E601704(v91, &qword_27F2451A0);
      (*(v88 + 8))(v87, v89);
      v75 = type metadata accessor for Player;
      v76 = v138;
      return sub_24F4B15B0(v76, v75);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v45 = *v39;
      v44 = *(v39 + 1);
      v47 = *(v39 + 2);
      v46 = *(v39 + 3);
      v48 = v39[32];
      v49 = v39[33];
      v50 = *(v42 + 24);
      sub_24E60169C(&v41[v50], &v191, qword_27F24EC90);
      v51 = *(&v192 + 1);
      sub_24E601704(&v191, qword_27F21B590);
      if (v51)
      {
        v52 = sub_24F9232F8();
        (*(*(v52 - 8) + 56))(v164, 1, 1, v52);
        sub_24E60169C(&v41[v50], &v191, qword_27F24EC90);
        v53 = v141;
        sub_24F4ADCF8(v178, v141, type metadata accessor for OverlayPageToolbarItemView);
        v54 = (*(v139 + 80) + 49) & ~*(v139 + 80);
        v55 = v54 + v140;
        v56 = swift_allocObject();
        *(v56 + 16) = v45;
        *(v56 + 24) = v44;
        *(v56 + 32) = v47;
        *(v56 + 40) = v46;
        *(v56 + 48) = v48;
        sub_24F4AF5E0(v53, v56 + v54, type metadata accessor for OverlayPageToolbarItemView);
        *(v56 + v55) = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245260);
        v57 = sub_24F4AE110();
        *&v188 = &type metadata for OverlayButtonContent;
        *(&v188 + 1) = v57;
        swift_getOpaqueTypeConformance2();
        v58 = v142;
        sub_24F921788();
        if (v49 == 2)
        {
          *(&v189 + 1) = sub_24F9271D8();
          v190 = sub_24F4B3EF0(&qword_27F214E38, MEMORY[0x277CE1260]);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v188);
          v60 = *MEMORY[0x277CE0118];
          v61 = sub_24F924B38();
          (*(*(v61 - 8) + 104))(boxed_opaque_existential_1, v60, v61);
          v62 = v149;
          v63 = v145;
          v64 = v144;
          v65 = v143;
        }

        else
        {
          v62 = v149;
          v63 = v145;
          v64 = v144;
          v65 = v143;
          if (v49)
          {
            *(&v189 + 1) = MEMORY[0x277CE1120];
            v190 = sub_24E63E454();
          }

          else
          {
            *(&v189 + 1) = sub_24F9271D8();
            v190 = sub_24F4B3EF0(&qword_27F214E38, MEMORY[0x277CE1260]);
            v105 = __swift_allocate_boxed_opaque_existential_1(&v188);
            v106 = *MEMORY[0x277CE0118];
            v107 = sub_24F924B38();
            (*(*(v107 - 8) + 104))(v105, v106, v107);
          }

          sub_24E612C80(&v188, &v191);
          sub_24E612C80(&v191, &v188);
        }

        sub_24E612C80(&v188, &v191);
        sub_24E60169C(&v191, v63, &qword_27F245268);
        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2451F0);
        (*(v65 + 16))(v63 + v108[9], v58, v64);
        v109 = v63 + v108[10];
        *v109 = sub_24F923398() & 1;
        *(v109 + 8) = v110;
        *(v109 + 16) = v111 & 1;
        v112 = v63 + v108[11];
        *v112 = swift_getKeyPath();
        *(v112 + 8) = 0;
        v113 = v58;
        if (qword_27F211808 != -1)
        {
          swift_once();
        }

        v114 = qword_27F24E488;
        v115 = sub_24F923398();
        v117 = v116;
        v119 = v118;
        v120 = v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2451E0) + 36);
        *v120 = v114;
        *(v120 + 8) = v115 & 1;
        *(v120 + 16) = v117;
        *(v120 + 24) = v119 & 1;
        LOBYTE(v114) = sub_24F923398();
        v122 = v121;
        LOBYTE(v117) = v123;
        sub_24E601704(&v191, &qword_27F245268);
        (*(v65 + 8))(v113, v64);
        v124 = v158;
        v125 = v63 + *(v158 + 36);
        *v125 = v114 & 1;
        *(v125 + 8) = v122;
        *(v125 + 16) = v117 & 1;
        v126 = v63;
        v127 = v148;
        sub_24F9241E8();
        v128 = sub_24F4ADFCC();
        v129 = sub_24F4B3EF0(&qword_27F212838, MEMORY[0x277CDDB18]);
        v130 = v146;
        v131 = v161;
        sub_24F926178();
        (*(v62 + 8))(v127, v131);
        sub_24E601704(v126, &qword_27F245168);
        v132 = v147;
        v133 = v159;
        (*(v147 + 16))(v163, v130, v159);
        swift_storeEnumTagMultiPayload();
        *&v191 = v124;
        *(&v191 + 1) = v131;
        *&v192 = v128;
        *(&v192 + 1) = v129;
        swift_getOpaqueTypeConformance2();
        v104 = v162;
        sub_24F924E28();
        (*(v132 + 8))(v130, v133);
      }

      else
      {
        v100 = *v178;
        v101 = v163;
        *v163 = v45;
        v101[1] = v44;
        v101[2] = v47;
        v101[3] = v46;
        *(v101 + 32) = v48;
        v101[5] = v100;
        *(v101 + 48) = v49;
        swift_storeEnumTagMultiPayload();
        v102 = sub_24F4ADFCC();
        v103 = sub_24F4B3EF0(&qword_27F212838, MEMORY[0x277CDDB18]);
        *&v191 = v158;
        *(&v191 + 1) = v161;
        *&v192 = v102;
        *(&v192 + 1) = v103;
        swift_getOpaqueTypeConformance2();
        sub_24F4AE110();
        v104 = v162;
        sub_24F924E28();
      }

      v134 = v182;
      v135 = v186;
      sub_24E60169C(v104, v175, &qword_27F245178);
      swift_storeEnumTagMultiPayload();
      v136 = sub_24E680290();
      *&v191 = v172;
      *(&v191 + 1) = v136;
      swift_getOpaqueTypeConformance2();
      sub_24F4ADEB4();
      v137 = v176;
      sub_24F924E28();
      sub_24E60169C(v137, v181, &qword_27F245198);
      swift_storeEnumTagMultiPayload();
      sub_24F4ADDEC();
      sub_24F4AE164();
      sub_24F924E28();
      sub_24E601704(v137, &qword_27F245198);
      sub_24E60169C(v134, v135, &qword_27F2451A0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2451B0);
      sub_24F4ADD60();
      sub_24F4AE270();
      sub_24F924E28();
      sub_24E601704(v134, &qword_27F2451A0);
      v98 = v104;
      v99 = &qword_27F245178;
      return sub_24E601704(v98, v99);
    }

LABEL_10:
    *v186 = sub_24F926C98();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2451B0);
    sub_24F4ADD60();
    sub_24F4AE270();
    sub_24F924E28();
    v75 = type metadata accessor for PageToolbarItem.Appearance;
    v76 = v39;
    return sub_24F4B15B0(v76, v75);
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v66 = v156;
      v67 = v168;
      v68 = v169;
      (*(v156 + 32))(v168, v39, v169);
      (*(v66 + 16))(v155, v67, v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245220);
      sub_24F4AEBC4();
      v69 = v170;
      sub_24F9277C8();
      v70 = v157;
      v71 = v171;
      (*(v157 + 16))(v165, v69, v171);
      swift_storeEnumTagMultiPayload();
      sub_24F4AE21C();
      sub_24E602068(&qword_27F245210, &qword_27F245140);
      v72 = v167;
      sub_24F924E28();
      sub_24E60169C(v72, v181, &qword_27F245150);
      swift_storeEnumTagMultiPayload();
      sub_24F4ADDEC();
      sub_24F4AE164();
      v73 = v182;
      sub_24F924E28();
      sub_24E601704(v72, &qword_27F245150);
      sub_24E60169C(v73, v186, &qword_27F2451A0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2451B0);
      sub_24F4ADD60();
      sub_24F4AE270();
      sub_24F924E28();
      sub_24E601704(v73, &qword_27F2451A0);
      (*(v70 + 8))(v170, v71);
      return (*(v66 + 8))(v168, v169);
    }

    goto LABEL_10;
  }

  v92 = *(v39 + 1);
  v93 = *(v39 + 4);
  v94 = *v178;
  v95 = v165;
  *v165 = *v39;
  v95[1] = v92;
  v95[2] = v94;
  *(v95 + 3) = *(v39 + 1);
  v95[5] = v93;
  swift_storeEnumTagMultiPayload();
  sub_24F4AE21C();
  sub_24E602068(&qword_27F245210, &qword_27F245140);
  v96 = v167;
  sub_24F924E28();
  sub_24E60169C(v96, v181, &qword_27F245150);
  swift_storeEnumTagMultiPayload();
  sub_24F4ADDEC();
  sub_24F4AE164();
  v97 = v182;
  sub_24F924E28();
  sub_24E601704(v96, &qword_27F245150);
  sub_24E60169C(v97, v186, &qword_27F2451A0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2451B0);
  sub_24F4ADD60();
  sub_24F4AE270();
  sub_24F924E28();
  v98 = v97;
  v99 = &qword_27F2451A0;
  return sub_24E601704(v98, v99);
}

uint64_t sub_24F4ADCF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F4ADD60()
{
  result = qword_27F2451B8;
  if (!qword_27F2451B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2451A0);
    sub_24F4ADDEC();
    sub_24F4AE164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2451B8);
  }

  return result;
}

unint64_t sub_24F4ADDEC()
{
  result = qword_27F2451C0;
  if (!qword_27F2451C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245198);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2233D0);
    sub_24E680290();
    swift_getOpaqueTypeConformance2();
    sub_24F4ADEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2451C0);
  }

  return result;
}

unint64_t sub_24F4ADEB4()
{
  result = qword_27F2451C8;
  if (!qword_27F2451C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245168);
    sub_24F9241F8();
    sub_24F4ADFCC();
    sub_24F4B3EF0(&qword_27F212838, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_24F4AE110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2451C8);
  }

  return result;
}

unint64_t sub_24F4ADFCC()
{
  result = qword_27F2451D0;
  if (!qword_27F2451D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245168);
    sub_24F4AE058();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2451D0);
  }

  return result;
}

unint64_t sub_24F4AE058()
{
  result = qword_27F2451D8;
  if (!qword_27F2451D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2451E0);
    sub_24E602068(&qword_27F2451E8, &qword_27F2451F0);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2451D8);
  }

  return result;
}

unint64_t sub_24F4AE110()
{
  result = qword_27F2451F8;
  if (!qword_27F2451F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2451F8);
  }

  return result;
}

unint64_t sub_24F4AE164()
{
  result = qword_27F245200;
  if (!qword_27F245200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245150);
    sub_24F4AE21C();
    sub_24E602068(&qword_27F245210, &qword_27F245140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245200);
  }

  return result;
}

unint64_t sub_24F4AE21C()
{
  result = qword_27F245208;
  if (!qword_27F245208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245208);
  }

  return result;
}

unint64_t sub_24F4AE270()
{
  result = qword_27F245218;
  if (!qword_27F245218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2451B0);
    sub_24F02EAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245218);
  }

  return result;
}

uint64_t sub_24F4AE2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v24[0] = a8;
  v24[1] = a9;
  v24[2] = a10;
  v17 = sub_24F9248C8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a6;

  sub_24ECECA74(a3, a4, a5);
  v22 = sub_24F9248B8();
  v24[3] = a1;
  v24[4] = a2;
  v24[5] = a3;
  v24[6] = a4;
  v25 = a5;
  v26 = v21;
  v27 = a7;
  (v24[0])(v22);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v18 + 8))(v20, v17);

  return sub_24E640000(a3, a4, a5);
}

uint64_t sub_24F4AE474@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = sub_24F929888();
  v53 = *(v1 - 8);
  v54 = v1;
  MEMORY[0x28223BE20](v1);
  v52 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245438);
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245440);
  v9 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v11 = &v46 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245230);
  MEMORY[0x28223BE20](v49);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245448);
  v50 = *(v14 - 8);
  v51 = v14;
  MEMORY[0x28223BE20](v14);
  v48 = &v46 - v15;
  v16 = sub_24F925908();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = sub_24F925968();
  sub_24E601704(v5, &qword_27F214698);
  KeyPath = swift_getKeyPath();
  v19 = &v8[*(v6 + 36)];
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0) + 28);
  sub_24F924CF8();
  v21 = sub_24F924D08();
  (*(*(v21 - 8) + 56))(v19 + v20, 0, 1, v21);
  *v19 = swift_getKeyPath();
  *v8 = 0xD00000000000001FLL;
  *(v8 + 1) = 0x800000024FA75AD0;
  *(v8 + 8) = 1;
  *(v8 + 3) = KeyPath;
  *(v8 + 4) = v17;
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v22 = sub_24F9248C8();
  __swift_project_value_buffer(v22, qword_27F39F078);
  sub_24F4B2594();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v8, &qword_27F245438);
  *(&v58 + 1) = MEMORY[0x277CE1120];
  v59 = sub_24E63E454();
  sub_24E60169C(&v57, v13, &qword_27F245458);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245258);
  v24 = v47;
  (*(v9 + 16))(&v13[v23[9]], v11, v47);
  v25 = &v13[v23[10]];
  *v25 = sub_24F923398() & 1;
  *(v25 + 1) = v26;
  v25[16] = v27 & 1;
  v28 = &v13[v23[11]];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v29 = qword_27F24E488;
  v30 = sub_24F923398();
  v32 = v31;
  v34 = v33;
  v35 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245248) + 36)];
  *v35 = v29;
  v35[8] = v30 & 1;
  *(v35 + 2) = v32;
  v35[24] = v34 & 1;
  LOBYTE(v29) = sub_24F923398();
  v37 = v36;
  LOBYTE(v32) = v38;
  sub_24E601704(&v57, &qword_27F245458);
  (*(v9 + 8))(v11, v24);
  v39 = v49;
  v40 = &v13[*(v49 + 36)];
  *v40 = v29 & 1;
  *(v40 + 1) = v37;
  v40[16] = v32 & 1;
  v57 = 0u;
  v58 = 0u;
  memset(v56, 0, sizeof(v56));
  v41 = v52;
  sub_24F9297C8();
  sub_24E601704(v56, &qword_27F2129B0);
  sub_24E601704(&v57, &qword_27F2129B0);
  v42 = sub_24F4AECBC();
  v43 = v48;
  sub_24F925EE8();
  (*(v53 + 8))(v41, v54);
  sub_24E601704(v13, &qword_27F245230);
  if (qword_27F211510 != -1)
  {
    swift_once();
  }

  v57 = xmmword_27F39EAE8;
  *&v56[0] = v39;
  *(&v56[0] + 1) = v42;
  swift_getOpaqueTypeConformance2();
  sub_24E600AEC();
  v44 = v51;
  sub_24F926538();
  return (*(v50 + 8))(v43, v44);
}

unint64_t sub_24F4AEBC4()
{
  result = qword_27F245228;
  if (!qword_27F245228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245230);
    sub_24F4AECBC();
    swift_getOpaqueTypeConformance2();
    sub_24F4B3EF0(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245228);
  }

  return result;
}

unint64_t sub_24F4AECBC()
{
  result = qword_27F245238;
  if (!qword_27F245238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245230);
    sub_24F4AED48();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245238);
  }

  return result;
}

unint64_t sub_24F4AED48()
{
  result = qword_27F245240;
  if (!qword_27F245240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245248);
    sub_24E602068(&qword_27F245250, &qword_27F245258);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245240);
  }

  return result;
}

uint64_t sub_24F4AEE00()
{
  v1 = type metadata accessor for OverlayPageToolbarItemView(0);
  v2 = *(*(v1 - 8) + 80);

  if (*(v0 + 48) != 255)
  {
    sub_24E63FFA4();
  }

  v3 = v0 + ((v2 + 49) & ~v2) + *(v1 + 20);

  v4 = type metadata accessor for PageToolbarItem(0);
  v5 = v3 + *(v4 + 20);
  type metadata accessor for PageToolbarItem.Appearance(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        if (*(v5 + 32) != 255)
        {
          sub_24E63FFA4();
        }
      }
    }

    else
    {

      v8 = type metadata accessor for Player(0);
      v9 = v8[6];
      v36 = sub_24F9289E8();
      v35 = *(v36 - 8);
      v34 = *(v35 + 8);
      v34(v5 + v9);

      if (*(v5 + v8[9] + 8) != 1)
      {
      }

      v10 = v5 + v8[13];
      v11 = type metadata accessor for CallProviderConversationHandleSet();
      if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
      {
        v33 = v11;
        v12 = type metadata accessor for CallProviderConversationHandle();
        v13 = *(*(v12 - 8) + 48);
        if (!(v13)(v10, 1, v12))
        {

          v14 = *(type metadata accessor for CallProvider() + 24);
          if (!(*(v35 + 48))(v10 + v14, 1, v36))
          {
            (v34)(v10 + v14, v36);
          }
        }

        v32 = v10 + *(v33 + 20);
        if (!v13())
        {

          v15 = *(type metadata accessor for CallProvider() + 24);
          if (!(*(v35 + 48))(v32 + v15, 1, v36))
          {
            (v34)(v32 + v15, v36);
          }
        }
      }

      if (*(v5 + v8[15] + 8))
      {
      }

      v16 = v5 + v8[16];
      PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
      if (!(*(*(PlayedTogetherInfo - 8) + 48))(v16, 1, PlayedTogetherInfo))
      {

        v18 = type metadata accessor for Game();
        (v34)(v16 + v18[18], v36);
        v19 = v18[19];
        if (!(*(v35 + 48))(v16 + v19, 1, v36))
        {
          (v34)(v16 + v19, v36);
        }

        v20 = v18[21];
        v21 = sub_24F920818();
        v22 = *(v21 - 8);
        if (!(*(v22 + 48))(v16 + v20, 1, v21))
        {
          (*(v22 + 8))(v16 + v20, v21);
        }
      }

      v23 = v5 + v8[17];
      ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
      if (!(*(*(ChallengeInfo - 8) + 48))(v23, 1, ChallengeInfo))
      {

        v25 = type metadata accessor for Game();
        (v34)(v23 + v25[18], v36);
        v26 = v25[19];
        if (!(*(v35 + 48))(v23 + v26, 1, v36))
        {
          (v34)(v23 + v26, v36);
        }

        v27 = v25[21];
        v28 = sub_24F920818();
        v29 = *(v28 - 8);
        if (!(*(v29 + 48))(v23 + v27, 1, v28))
        {
          (*(v29 + 8))(v23 + v27, v28);
        }
      }
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:
        sub_24E63FFA4();
        sub_24E63FFA4();
        break;
      case 3:

        break;
      case 4:
        v7 = sub_24F91F4A8();
        (*(*(v7 - 8) + 8))(v5, v7);
        break;
    }
  }

  v30 = v3 + *(v4 + 24);
  if (*(v30 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return swift_deallocObject();
}

uint64_t sub_24F4AF5E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4AF680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2452A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v54 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2452A8);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = &v54 - v10;
  v13 = *(a1 + 32);
  v60 = &v54 - v10;
  if (v13 == 255)
  {
    (*(v4 + 56))(&v54 - v10, 1, 1, v3, v11);
    v32 = *(a1 + 8);
    if (v32)
    {
      goto LABEL_3;
    }

LABEL_5:
    v44 = 0;
    v49 = 0;
    v47 = 0;
    goto LABEL_6;
  }

  v56 = v3;
  v57 = v4;
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = v13 & 1;
  sub_24E672C48();
  v54 = sub_24F9258D8();
  KeyPath = swift_getKeyPath();
  v55 = v6;
  v18 = KeyPath;
  v19 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v20 = sub_24F925808();
  sub_24F923318();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  LOBYTE(v68[0]) = v16;
  LOBYTE(v61) = 0;
  sub_24F927618();
  sub_24F9238C8();
  *&v67[7] = v68[10];
  *&v67[23] = v68[11];
  *&v67[39] = v69;
  *&v61 = v15;
  *(&v61 + 1) = v14;
  LOWORD(v62) = v16;
  *(&v62 + 1) = v18;
  *&v63 = v54;
  *(&v63 + 1) = v19;
  LOBYTE(v64) = v20;
  *(&v64 + 1) = v22;
  *&v65 = v24;
  *(&v65 + 1) = v26;
  *&v66[0] = v28;
  BYTE8(v66[0]) = 0;
  *(v66 + 9) = *v67;
  *(&v66[1] + 9) = *&v67[16];
  *(&v66[2] + 9) = *&v67[32];
  *(&v66[3] + 1) = *(&v69 + 1);
  sub_24F927558();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2452B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2452C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2452C8);
  sub_24F4B18D0();
  sub_24F4B1B58();
  sub_24F4B1C3C();
  v29 = v55;
  sub_24F926AF8();
  v68[5] = v66[0];
  v68[6] = v66[1];
  v68[7] = v66[2];
  v68[8] = v66[3];
  v68[1] = v62;
  v68[2] = v63;
  v68[3] = v64;
  v68[4] = v65;
  v68[0] = v61;
  v12 = v60;
  sub_24E601704(v68, &qword_27F2452B8);
  v30 = v56;
  v31 = (v29 + *(v56 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245328);
  sub_24F924358();
  *v31 = 0;
  sub_24E6009C8(v29, v12, &qword_27F2452A0);
  (*(v57 + 56))(v12, 0, 1, v30);
  v32 = *(a1 + 8);
  if (!v32)
  {
    goto LABEL_5;
  }

LABEL_3:
  *&v68[0] = *a1;
  *(&v68[0] + 1) = v32;
  sub_24E600AEC();

  v33 = sub_24F925E18();
  v35 = v34;
  v37 = v36;
  sub_24F925898();
  v38 = sub_24F925C98();
  v40 = v39;
  v42 = v41;

  sub_24E600B40(v33, v35, v37 & 1);

  sub_24F925938();
  v32 = sub_24F925B78();
  v44 = v43;
  LOBYTE(v35) = v45;
  v47 = v46;
  v48 = v42 & 1;
  v12 = v60;
  sub_24E600B40(v38, v40, v48);

  v49 = v35 & 1;
  sub_24E5FD138(v32, v44, v35 & 1);

LABEL_6:
  v50 = v58;
  sub_24E60169C(v12, v58, &qword_27F2452A8);
  v51 = v59;
  sub_24E60169C(v50, v59, &qword_27F2452A8);
  v52 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2452B0) + 48));
  sub_24E65D2B4(v32, v44, v49, v47);
  sub_24E65D2F8(v32, v44, v49, v47);
  *v52 = v32;
  v52[1] = v44;
  v52[2] = v49;
  v52[3] = v47;
  sub_24E601704(v12, &qword_27F2452A8);
  sub_24E65D2F8(v32, v44, v49, v47);
  return sub_24E601704(v50, &qword_27F2452A8);
}

uint64_t sub_24F4AFC6C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2452C8);
  MEMORY[0x28223BE20](v45);
  v4 = (&v37 - v3);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245330);
  MEMORY[0x28223BE20](v43);
  v44 = &v37 - v5;
  v40 = sub_24F927418();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927538();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_24F927148();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245338);
  v14 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v16 = &v37 - v15;
  v17 = a1[7];
  v62 = a1[6];
  v63 = v17;
  v64 = a1[8];
  v18 = a1[3];
  v58 = a1[2];
  v59 = v18;
  v19 = a1[5];
  v60 = a1[4];
  v61 = v19;
  v20 = a1[1];
  v56 = *a1;
  v57 = v20;
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27F2301A8 == 1)
  {
    v53 = v62;
    v54 = v63;
    v55 = v64;
    v49 = v58;
    v50 = v59;
    v51 = v60;
    v52 = v61;
    v47 = v56;
    v48 = v57;
    sub_24F9273F8();
    sub_24F927448();
    (*(v38 + 8))(v7, v40);
    sub_24F927138();
    (*(v9 + 8))(v11, v8);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2452B8);
    v22 = sub_24F4B18D0();
    v23 = sub_24E63E314();
    v24 = MEMORY[0x277CE1120];
    sub_24F926248();
    (*(v39 + 8))(v13, v41);
    v25 = v42;
    (*(v14 + 16))(v44, v16, v42);
    swift_storeEnumTagMultiPayload();
    *&v47 = v21;
    *(&v47 + 1) = v24;
    *&v48 = v22;
    *(&v48 + 1) = v23;
    swift_getOpaqueTypeConformance2();
    sub_24F4B1C3C();
    sub_24F924E28();
    return (*(v14 + 8))(v16, v25);
  }

  else
  {
    v27 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245320) + 36);
    sub_24F927468();
    v28 = sub_24F925808();
    v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870) + 36)] = v28;
    v29 = v59;
    v4[2] = v58;
    v4[3] = v29;
    v30 = v64;
    v4[7] = v63;
    v4[8] = v30;
    v31 = v62;
    v4[5] = v61;
    v4[6] = v31;
    v4[4] = v60;
    v32 = v57;
    *v4 = v56;
    v4[1] = v32;
    v33 = v44;
    *(v4 + *(v45 + 36)) = 256;
    sub_24E60169C(v4, v33, &qword_27F2452C8);
    swift_storeEnumTagMultiPayload();
    sub_24E60169C(&v56, &v47, &qword_27F2452B8);
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2452B8);
    v35 = sub_24F4B18D0();
    v36 = sub_24E63E314();
    *&v47 = v34;
    *(&v47 + 1) = MEMORY[0x277CE1120];
    *&v48 = v35;
    *(&v48 + 1) = v36;
    swift_getOpaqueTypeConformance2();
    sub_24F4B1C3C();
    sub_24F924E28();
    return sub_24E601704(v4, &qword_27F2452C8);
  }
}

uint64_t sub_24F4B02AC@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[7];
  v16[6] = a1[6];
  v16[7] = v4;
  v16[8] = a1[8];
  v5 = a1[3];
  v16[2] = a1[2];
  v16[3] = v5;
  v6 = a1[5];
  v16[4] = a1[4];
  v16[5] = v6;
  v7 = a1[1];
  v16[0] = *a1;
  v16[1] = v7;
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245320) + 36);
  sub_24F927468();
  v9 = sub_24F925808();
  v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870) + 36)] = v9;
  v10 = a1[3];
  a2[2] = a1[2];
  a2[3] = v10;
  v11 = a1[1];
  *a2 = *a1;
  a2[1] = v11;
  v12 = a1[8];
  a2[7] = a1[7];
  a2[8] = v12;
  v13 = a1[6];
  a2[5] = a1[5];
  a2[6] = v13;
  a2[4] = a1[4];
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2452C8) + 36)) = 256;
  return sub_24E60169C(v16, &v15, &qword_27F2452B8);
}

uint64_t sub_24F4B03BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v3;
  v9[2] = *(v1 + 32);
  v10 = *(v1 + 48);
  *a1 = sub_24F9249A8();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245290);
  sub_24F4AF680(v9, a1 + *(v4 + 44));
  v5 = sub_24F926D18();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245298);
  v8 = (a1 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = v5;
  return result;
}

uint64_t sub_24F4B0470()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214E98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245388);
  sub_24E602068(&qword_27F245428, &qword_27F214E98);
  sub_24E602068(&qword_27F245380, &qword_27F245388);
  sub_24F4B2534();
  return sub_24F927238();
}

uint64_t sub_24F4B05B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v10 - v3;
  v5 = sub_24F9232F8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_24E60169C(a1 + 48, v12, qword_27F24EC90);
  sub_24E7FB760(a1, v10);
  v6 = swift_allocObject();
  v7 = v10[3];
  *(v6 + 48) = v10[2];
  *(v6 + 64) = v7;
  *(v6 + 80) = v10[4];
  *(v6 + 96) = v11;
  v8 = v10[1];
  *(v6 + 16) = v10[0];
  *(v6 + 32) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58);
  sub_24E602068(&qword_27F212910, &qword_27F211B58);
  return sub_24F921788();
}

uint64_t sub_24F4B0754()
{
  sub_24E600AEC();

  return sub_24F926EB8();
}

uint64_t sub_24F4B07D0@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = sub_24F9248C8();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x28223BE20](v1);
  v48 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245390);
  MEMORY[0x28223BE20](v47);
  v4 = &v45 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245398);
  v6 = *(v5 - 8);
  v45 = v5;
  v46 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - v7;

  v9 = sub_24F926E48();
  v10 = sub_24F9258D8();
  KeyPath = swift_getKeyPath();
  v12 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v13 = sub_24F925808();
  sub_24F923318();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  LOBYTE(v59[0]) = 0;
  sub_24F927618();
  sub_24F9238C8();
  *(&v57[4] + 7) = v58;
  *(&v57[2] + 7) = *&v57[9];
  *(v57 + 7) = *&v57[7];
  *&v52 = v9;
  *(&v52 + 1) = KeyPath;
  *&v53 = v10;
  *(&v53 + 1) = v12;
  LOBYTE(v54) = v13;
  *(&v54 + 1) = v15;
  *&v55 = v17;
  *(&v55 + 1) = v19;
  *&v56[0] = v21;
  BYTE8(v56[0]) = 0;
  *(v56 + 9) = *v57;
  *(&v56[1] + 9) = *&v57[2];
  *(&v56[2] + 9) = *&v57[4];
  *(&v56[3] + 1) = *(&v58 + 1);
  sub_24F927558();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2453A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2453A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2453B0);
  sub_24F4B1FB0();
  sub_24F4B2180();
  sub_24F4B2264();
  v22 = v45;
  sub_24F926AF8();
  v59[4] = v56[0];
  v59[5] = v56[1];
  v59[6] = v56[2];
  v59[7] = v56[3];
  v59[0] = v52;
  v59[1] = v53;
  v59[2] = v54;
  v59[3] = v55;
  v23 = v46;
  sub_24E601704(v59, &qword_27F2453A0);
  v24 = &v4[*(v47 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245328);
  sub_24F924358();
  *v24 = 0;
  v25 = v48;
  sub_24F9248B8();
  sub_24F4B23D4();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v49 + 8))(v25, v50);
  sub_24E601704(v4, &qword_27F245390);
  *(&v53 + 1) = MEMORY[0x277CE1120];
  *&v54 = sub_24E63E454();
  v26 = v51;
  sub_24E60169C(&v52, v51, &qword_27F245410);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245370);
  (*(v23 + 16))(v26 + v27[9], v8, v22);
  v28 = v26 + v27[10];
  *v28 = sub_24F923398() & 1;
  *(v28 + 8) = v29;
  *(v28 + 16) = v30 & 1;
  v31 = v26;
  v32 = v26 + v27[11];
  *v32 = swift_getKeyPath();
  *(v32 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v33 = qword_27F24E488;
  v34 = sub_24F923398();
  v36 = v35;
  v38 = v37;
  v39 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245360) + 36);
  *v39 = v33;
  *(v39 + 8) = v34 & 1;
  *(v39 + 16) = v36;
  *(v39 + 24) = v38 & 1;
  LOBYTE(v33) = sub_24F923398();
  v41 = v40;
  LOBYTE(v36) = v42;
  sub_24E601704(&v52, &qword_27F245410);
  (*(v23 + 8))(v8, v22);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245340);
  v44 = v31 + *(result + 36);
  *v44 = v33 & 1;
  *(v44 + 8) = v41;
  *(v44 + 16) = v36 & 1;
  return result;
}

uint64_t sub_24F4B0DB0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2453B0);
  MEMORY[0x28223BE20](v45);
  v4 = (&v37 - v3);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245418);
  MEMORY[0x28223BE20](v43);
  v44 = &v37 - v5;
  v40 = sub_24F927418();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927538();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_24F927148();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245420);
  v14 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v16 = &v37 - v15;
  v17 = a1[5];
  v59 = a1[4];
  v60 = v17;
  v18 = a1[7];
  v61 = a1[6];
  v62 = v18;
  v19 = a1[1];
  v55 = *a1;
  v56 = v19;
  v20 = a1[3];
  v57 = a1[2];
  v58 = v20;
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27F2301A8 == 1)
  {
    v51 = v59;
    v52 = v60;
    v53 = v61;
    v54 = v62;
    v47 = v55;
    v48 = v56;
    v49 = v57;
    v50 = v58;
    sub_24F9273F8();
    sub_24F927448();
    (*(v38 + 8))(v7, v40);
    sub_24F927138();
    (*(v9 + 8))(v11, v8);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2453A0);
    v22 = sub_24F4B1FB0();
    v23 = sub_24E63E314();
    v24 = MEMORY[0x277CE1120];
    sub_24F926248();
    (*(v39 + 8))(v13, v41);
    v25 = v42;
    (*(v14 + 16))(v44, v16, v42);
    swift_storeEnumTagMultiPayload();
    *&v47 = v21;
    *(&v47 + 1) = v24;
    *&v48 = v22;
    *(&v48 + 1) = v23;
    swift_getOpaqueTypeConformance2();
    sub_24F4B2264();
    sub_24F924E28();
    return (*(v14 + 8))(v16, v25);
  }

  else
  {
    v27 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2453F8) + 36);
    sub_24F927468();
    v28 = sub_24F925808();
    v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870) + 36)] = v28;
    v29 = v58;
    v4[2] = v57;
    v4[3] = v29;
    v30 = v62;
    v4[6] = v61;
    v4[7] = v30;
    v31 = v60;
    v4[4] = v59;
    v4[5] = v31;
    v32 = v56;
    *v4 = v55;
    v4[1] = v32;
    v33 = v44;
    *(v4 + *(v45 + 36)) = 256;
    sub_24E60169C(v4, v33, &qword_27F2453B0);
    swift_storeEnumTagMultiPayload();
    sub_24E60169C(&v55, &v47, &qword_27F2453A0);
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453A0);
    v35 = sub_24F4B1FB0();
    v36 = sub_24E63E314();
    *&v47 = v34;
    *(&v47 + 1) = MEMORY[0x277CE1120];
    *&v48 = v35;
    *(&v48 + 1) = v36;
    swift_getOpaqueTypeConformance2();
    sub_24F4B2264();
    sub_24F924E28();
    return sub_24E601704(v4, &qword_27F2453B0);
  }
}

uint64_t sub_24F4B13D8@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[5];
  v16[4] = a1[4];
  v16[5] = v4;
  v5 = a1[7];
  v16[6] = a1[6];
  v16[7] = v5;
  v6 = a1[1];
  v16[0] = *a1;
  v16[1] = v6;
  v7 = a1[3];
  v16[2] = a1[2];
  v16[3] = v7;
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2453F8) + 36);
  sub_24F927468();
  v9 = sub_24F925808();
  v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870) + 36)] = v9;
  v10 = a1[3];
  a2[2] = a1[2];
  a2[3] = v10;
  v11 = a1[1];
  *a2 = *a1;
  a2[1] = v11;
  v12 = a1[7];
  a2[6] = a1[6];
  a2[7] = v12;
  v13 = a1[5];
  a2[4] = a1[4];
  a2[5] = v13;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2453B0) + 36)) = 256;
  return sub_24E60169C(v16, &v15, &qword_27F2453A0);
}

uint64_t sub_24F4B14D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245348);
  sub_24F4B1DBC();
  sub_24F4B1F00();
  return sub_24F925AB8();
}

uint64_t sub_24F4B15B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F4B1640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for PageToolbarItem(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24F4B16CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for PageToolbarItem(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_24F4B1748()
{
  result = type metadata accessor for PageToolbarItem(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F4B17C8()
{
  result = qword_27F245280;
  if (!qword_27F245280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245288);
    sub_24F4ADD60();
    sub_24F4AE270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245280);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit14ImageProvidingOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_24F4B18D0()
{
  result = qword_27F2452D0;
  if (!qword_27F2452D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2452B8);
    sub_24F4B195C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2452D0);
  }

  return result;
}

unint64_t sub_24F4B195C()
{
  result = qword_27F2452D8;
  if (!qword_27F2452D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2452E0);
    sub_24F4B19E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2452D8);
  }

  return result;
}

unint64_t sub_24F4B19E8()
{
  result = qword_27F2452E8;
  if (!qword_27F2452E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2452F0);
    sub_24F4B1AA0();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2452E8);
  }

  return result;
}

unint64_t sub_24F4B1AA0()
{
  result = qword_27F2452F8;
  if (!qword_27F2452F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245300);
    sub_24E7DD2E0();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2452F8);
  }

  return result;
}

unint64_t sub_24F4B1B58()
{
  result = qword_27F245308;
  if (!qword_27F245308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2452C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2452B8);
    sub_24F4B18D0();
    sub_24E63E314();
    swift_getOpaqueTypeConformance2();
    sub_24F4B1C3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245308);
  }

  return result;
}

unint64_t sub_24F4B1C3C()
{
  result = qword_27F245310;
  if (!qword_27F245310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2452C8);
    sub_24F4B1CF4();
    sub_24E602068(&qword_27F2188E8, &qword_27F2188F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245310);
  }

  return result;
}

unint64_t sub_24F4B1CF4()
{
  result = qword_27F245318;
  if (!qword_27F245318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245320);
    sub_24F4B18D0();
    sub_24E602068(&qword_27F2188E0, &qword_27F217870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245318);
  }

  return result;
}

unint64_t sub_24F4B1DBC()
{
  result = qword_27F245350;
  if (!qword_27F245350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245340);
    sub_24F4B1E48();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245350);
  }

  return result;
}

unint64_t sub_24F4B1E48()
{
  result = qword_27F245358;
  if (!qword_27F245358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245360);
    sub_24E602068(&qword_27F245368, &qword_27F245370);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245358);
  }

  return result;
}

unint64_t sub_24F4B1F00()
{
  result = qword_27F245378;
  if (!qword_27F245378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245348);
    sub_24E602068(&qword_27F245380, &qword_27F245388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245378);
  }

  return result;
}

unint64_t sub_24F4B1FB0()
{
  result = qword_27F2453B8;
  if (!qword_27F2453B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453A0);
    sub_24F4B203C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2453B8);
  }

  return result;
}

unint64_t sub_24F4B203C()
{
  result = qword_27F2453C0;
  if (!qword_27F2453C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453C8);
    sub_24F4B20C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2453C0);
  }

  return result;
}

unint64_t sub_24F4B20C8()
{
  result = qword_27F2453D0;
  if (!qword_27F2453D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453D8);
    sub_24E60156C();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2453D0);
  }

  return result;
}

unint64_t sub_24F4B2180()
{
  result = qword_27F2453E0;
  if (!qword_27F2453E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453A0);
    sub_24F4B1FB0();
    sub_24E63E314();
    swift_getOpaqueTypeConformance2();
    sub_24F4B2264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2453E0);
  }

  return result;
}

unint64_t sub_24F4B2264()
{
  result = qword_27F2453E8;
  if (!qword_27F2453E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453B0);
    sub_24F4B231C();
    sub_24E602068(&qword_27F2188E8, &qword_27F2188F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2453E8);
  }

  return result;
}

unint64_t sub_24F4B231C()
{
  result = qword_27F2453F0;
  if (!qword_27F2453F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453F8);
    sub_24F4B1FB0();
    sub_24E602068(&qword_27F2188E0, &qword_27F217870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2453F0);
  }

  return result;
}

unint64_t sub_24F4B23D4()
{
  result = qword_27F245400;
  if (!qword_27F245400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245390);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453B0);
    sub_24F4B1FB0();
    sub_24F4B2180();
    sub_24F4B2264();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F245408, &qword_27F245328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245400);
  }

  return result;
}

unint64_t sub_24F4B2534()
{
  result = qword_27F245430;
  if (!qword_27F245430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245430);
  }

  return result;
}

unint64_t sub_24F4B2594()
{
  result = qword_27F245450;
  if (!qword_27F245450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245438);
    sub_24F4B1AA0();
    sub_24E602068(&qword_27F21A958, &qword_27F2365A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245450);
  }

  return result;
}

uint64_t sub_24F4B2660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PageToolbarItem(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F4B2720(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PageToolbarItem(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F4B27E4()
{
  result = type metadata accessor for LocalPlayerProvider();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ArcadeSubscription();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for NetworkConnectionMonitor();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for PageToolbarItem(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_24F4B28B4()
{
  result = qword_27F245470;
  if (!qword_27F245470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245298);
    sub_24E602068(&qword_27F245478, &qword_27F245480);
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245470);
  }

  return result;
}

unint64_t sub_24F4B29F8()
{
  result = qword_27F245530;
  if (!qword_27F245530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2454A8);
    sub_24F4B2AB0();
    sub_24E602068(&qword_27F245210, &qword_27F245140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245530);
  }

  return result;
}

unint64_t sub_24F4B2AB0()
{
  result = qword_27F245538;
  if (!qword_27F245538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245538);
  }

  return result;
}

unint64_t sub_24F4B2B04()
{
  result = qword_27F245540;
  if (!qword_27F245540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245510);
    sub_24F4B2B90();
    sub_24F4B2DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245540);
  }

  return result;
}

unint64_t sub_24F4B2B90()
{
  result = qword_27F245548;
  if (!qword_27F245548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245508);
    sub_24F4B2C60();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2233D0);
    sub_24E680290();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245548);
  }

  return result;
}

unint64_t sub_24F4B2C60()
{
  result = qword_27F245550;
  if (!qword_27F245550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245528);
    sub_24F4B2CEC();
    sub_24F02E9B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245550);
  }

  return result;
}

unint64_t sub_24F4B2CEC()
{
  result = qword_27F245558;
  if (!qword_27F245558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245520);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2233D0);
    sub_24E680290();
    swift_getOpaqueTypeConformance2();
    sub_24F4B3EF0(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245558);
  }

  return result;
}

unint64_t sub_24F4B2DE4()
{
  result = qword_27F245560;
  if (!qword_27F245560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2454C0);
    sub_24F4B2E70();
    sub_24F4B308C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245560);
  }

  return result;
}

unint64_t sub_24F4B2E70()
{
  result = qword_27F245568;
  if (!qword_27F245568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2454E8);
    sub_24F4B2EFC();
    sub_24F4B3038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245568);
  }

  return result;
}

unint64_t sub_24F4B2EFC()
{
  result = qword_27F245570;
  if (!qword_27F245570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2454E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2454D0);
    sub_24E602068(&qword_27F245578, &qword_27F2454D0);
    sub_24E620DE8();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245570);
  }

  return result;
}

unint64_t sub_24F4B3038()
{
  result = qword_27F245580;
  if (!qword_27F245580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245580);
  }

  return result;
}

unint64_t sub_24F4B308C()
{
  result = qword_27F245588;
  if (!qword_27F245588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245590);
    sub_24F4B3110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245588);
  }

  return result;
}

unint64_t sub_24F4B3110()
{
  result = qword_27F245598;
  if (!qword_27F245598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245598);
  }

  return result;
}

unint64_t sub_24F4B3164()
{
  result = qword_27F2455A0;
  if (!qword_27F2455A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2454B0);
    sub_24F4B29F8();
    sub_24F02E9B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2455A0);
  }

  return result;
}

uint64_t sub_24F4B31F8()
{
  v1 = type metadata accessor for PageToolbarItemView(0);
  v2 = *(*(v1 - 8) + 80);

  if (*(v0 + 48) != 255)
  {
    sub_24E63FFA4();
  }

  v3 = v0 + ((v2 + 49) & ~v2) + *(v1 + 36);

  v4 = type metadata accessor for PageToolbarItem(0);
  v5 = v3 + *(v4 + 20);
  type metadata accessor for PageToolbarItem.Appearance(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        if (*(v5 + 32) != 255)
        {
          sub_24E63FFA4();
        }
      }
    }

    else
    {

      v8 = type metadata accessor for Player(0);
      v9 = v8[6];
      v36 = sub_24F9289E8();
      v35 = *(v36 - 8);
      v34 = *(v35 + 8);
      v34(v5 + v9);

      if (*(v5 + v8[9] + 8) != 1)
      {
      }

      v10 = v5 + v8[13];
      v11 = type metadata accessor for CallProviderConversationHandleSet();
      if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
      {
        v33 = v11;
        v12 = type metadata accessor for CallProviderConversationHandle();
        v13 = *(*(v12 - 8) + 48);
        if (!(v13)(v10, 1, v12))
        {

          v14 = *(type metadata accessor for CallProvider() + 24);
          if (!(*(v35 + 48))(v10 + v14, 1, v36))
          {
            (v34)(v10 + v14, v36);
          }
        }

        v32 = v10 + *(v33 + 20);
        if (!v13())
        {

          v15 = *(type metadata accessor for CallProvider() + 24);
          if (!(*(v35 + 48))(v32 + v15, 1, v36))
          {
            (v34)(v32 + v15, v36);
          }
        }
      }

      if (*(v5 + v8[15] + 8))
      {
      }

      v16 = v5 + v8[16];
      PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
      if (!(*(*(PlayedTogetherInfo - 8) + 48))(v16, 1, PlayedTogetherInfo))
      {

        v18 = type metadata accessor for Game();
        (v34)(v16 + v18[18], v36);
        v19 = v18[19];
        if (!(*(v35 + 48))(v16 + v19, 1, v36))
        {
          (v34)(v16 + v19, v36);
        }

        v20 = v18[21];
        v21 = sub_24F920818();
        v22 = *(v21 - 8);
        if (!(*(v22 + 48))(v16 + v20, 1, v21))
        {
          (*(v22 + 8))(v16 + v20, v21);
        }
      }

      v23 = v5 + v8[17];
      ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
      if (!(*(*(ChallengeInfo - 8) + 48))(v23, 1, ChallengeInfo))
      {

        v25 = type metadata accessor for Game();
        (v34)(v23 + v25[18], v36);
        v26 = v25[19];
        if (!(*(v35 + 48))(v23 + v26, 1, v36))
        {
          (v34)(v23 + v26, v36);
        }

        v27 = v25[21];
        v28 = sub_24F920818();
        v29 = *(v28 - 8);
        if (!(*(v29 + 48))(v23 + v27, 1, v28))
        {
          (*(v29 + 8))(v23 + v27, v28);
        }
      }
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:
        sub_24E63FFA4();
        sub_24E63FFA4();
        break;
      case 3:

        break;
      case 4:
        v7 = sub_24F91F4A8();
        (*(*(v7 - 8) + 8))(v5, v7);
        break;
    }
  }

  v30 = v3 + *(v4 + 24);
  if (*(v30 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return swift_deallocObject();
}

uint64_t sub_24F4B3A24@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1(0) - 8);
  v9 = (*(v8 + 80) + 49) & ~*(v8 + 80);
  return sub_24F4AE2FC(*(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), (v4 + v9), *(v4 + v9 + *(v8 + 64)), a2, a4, a3);
}

unint64_t sub_24F4B3B38()
{
  result = qword_27F2455B0;
  if (!qword_27F2455B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2455B8);
    sub_24F4B2B04();
    sub_24F4B3164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2455B0);
  }

  return result;
}

uint64_t objectdestroy_27Tm_0()
{

  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  }

  return swift_deallocObject();
}

unint64_t sub_24F4B3C9C()
{
  result = qword_27F2455E8;
  if (!qword_27F2455E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2455D8);
    sub_24F4B3D54();
    sub_24E602068(&qword_27F232F18, &qword_27F232F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2455E8);
  }

  return result;
}

unint64_t sub_24F4B3D54()
{
  result = qword_27F2455F0;
  if (!qword_27F2455F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2455D0);
    sub_24F4B3E0C();
    sub_24E602068(&qword_27F2188E0, &qword_27F217870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2455F0);
  }

  return result;
}

unint64_t sub_24F4B3E0C()
{
  result = qword_27F2455F8;
  if (!qword_27F2455F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2455C0);
    sub_24E602068(&qword_27F245600, &qword_27F245608);
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2455F8);
  }

  return result;
}

uint64_t sub_24F4B3EF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F4B3F40(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24E672C48();
  }

  return result;
}

uint64_t sub_24F4B3F58(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24E63FFA4();
  }

  return result;
}

unint64_t sub_24F4B4014()
{
  result = qword_27F245668;
  if (!qword_27F245668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245670);
    sub_24F4B3C9C();
    sub_24F4B3E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245668);
  }

  return result;
}

unint64_t sub_24F4B40A4()
{
  result = qword_27F245678;
  if (!qword_27F245678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245650);
    sub_24F4B415C();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245678);
  }

  return result;
}

unint64_t sub_24F4B415C()
{
  result = qword_27F245680;
  if (!qword_27F245680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245640);
    sub_24F4B4214();
    sub_24E602068(&qword_27F2456B0, &qword_27F245648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245680);
  }

  return result;
}

unint64_t sub_24F4B4214()
{
  result = qword_27F245688;
  if (!qword_27F245688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245638);
    sub_24F4B42A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245688);
  }

  return result;
}

unint64_t sub_24F4B42A0()
{
  result = qword_27F245690;
  if (!qword_27F245690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245630);
    sub_24F4B432C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245690);
  }

  return result;
}

unint64_t sub_24F4B432C()
{
  result = qword_27F245698;
  if (!qword_27F245698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245628);
    sub_24E602068(&qword_27F2456A0, &qword_27F2456A8);
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245698);
  }

  return result;
}

uint64_t sub_24F4B4428(uint64_t a1)
{
  v2 = sub_24F4B4A5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4B4464(uint64_t a1)
{
  v2 = sub_24F4B4A5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4B44A0()
{
  if (*v0)
  {
    return 0x79536D6574737973;
  }

  else
  {
    return 0x6D49656C646E7562;
  }
}

uint64_t sub_24F4B44EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D49656C646E7562 && a2 == 0xEB00000000656761;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79536D6574737973 && a2 == 0xEC0000006C6F626DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F4B45D0(uint64_t a1)
{
  v2 = sub_24F4B49B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4B460C(uint64_t a1)
{
  v2 = sub_24F4B49B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4B4648(uint64_t a1)
{
  v2 = sub_24F4B4A08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4B4684(uint64_t a1)
{
  v2 = sub_24F4B4A08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageProviding.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2456B8);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2456C0);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2456C8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = *v1;
  v23 = v1[1];
  v24 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4B49B4();
  sub_24F92D128();
  if (v13)
  {
    v26 = 1;
    sub_24F4B4A08();
    v14 = v20;
    sub_24F92CC98();
    v15 = v22;
    sub_24F92CD08();
    (*(v21 + 8))(v14, v15);
  }

  else
  {
    v25 = 0;
    sub_24F4B4A5C();
    sub_24F92CC98();
    v16 = v19;
    sub_24F92CD08();
    (*(v18 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_24F4B49B4()
{
  result = qword_27F2456D0;
  if (!qword_27F2456D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2456D0);
  }

  return result;
}

unint64_t sub_24F4B4A08()
{
  result = qword_27F2456D8;
  if (!qword_27F2456D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2456D8);
  }

  return result;
}

unint64_t sub_24F4B4A5C()
{
  result = qword_27F2456E0;
  if (!qword_27F2456E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2456E0);
  }

  return result;
}

uint64_t ImageProviding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2456E8);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2456F0);
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2456F8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24F4B49B4();
  v13 = v34;
  sub_24F92D108();
  if (!v13)
  {
    v34 = v9;
    v14 = sub_24F92CC78();
    v15 = (2 * *(v14 + 16)) | 1;
    v36 = v14;
    v37 = v14 + 32;
    v38 = 0;
    v39 = v15;
    v16 = sub_24E643430();
    v17 = v8;
    if (v16 == 2 || v38 != v39 >> 1)
    {
      v24 = sub_24F92C918();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
      *v26 = &type metadata for ImageProviding;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v34 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = v16;
      if (v16)
      {
        v41 = 1;
        sub_24F4B4A08();
        sub_24F92CBA8();
        v19 = v33;
        v18 = v34;
        v20 = v30;
        v21 = sub_24F92CC28();
        v23 = v22;
        (*(v32 + 8))(v4, v20);
      }

      else
      {
        v41 = 0;
        sub_24F4B4A5C();
        v28 = v7;
        sub_24F92CBA8();
        v19 = v33;
        v18 = v34;
        v21 = sub_24F92CC28();
        v23 = v29;
        (*(v31 + 8))(v28, v5);
      }

      (*(v18 + 8))(v11, v17);
      swift_unknownObjectRelease();
      *v19 = v21;
      *(v19 + 8) = v23;
      *(v19 + 16) = v40 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

unint64_t sub_24F4B5010()
{
  result = qword_27F245700;
  if (!qword_27F245700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245700);
  }

  return result;
}

unint64_t sub_24F4B5068()
{
  result = qword_27F245708;
  if (!qword_27F245708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245708);
  }

  return result;
}

unint64_t sub_24F4B50C0()
{
  result = qword_27F245710;
  if (!qword_27F245710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245710);
  }

  return result;
}

unint64_t sub_24F4B5118()
{
  result = qword_27F245718;
  if (!qword_27F245718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245718);
  }

  return result;
}

unint64_t sub_24F4B5170()
{
  result = qword_27F245720;
  if (!qword_27F245720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245720);
  }

  return result;
}

unint64_t sub_24F4B51C8()
{
  result = qword_27F245728;
  if (!qword_27F245728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245728);
  }

  return result;
}

unint64_t sub_24F4B5220()
{
  result = qword_27F245730;
  if (!qword_27F245730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245730);
  }

  return result;
}

unint64_t sub_24F4B5278()
{
  result = qword_27F245738;
  if (!qword_27F245738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245738);
  }

  return result;
}

unint64_t sub_24F4B52D0()
{
  result = qword_27F245740;
  if (!qword_27F245740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245740);
  }

  return result;
}

id sub_24F4B535C()
{
  result = [objc_opt_self() shared];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    v4 = [result inboxContactsOnly];

    *v3 = v4 ^ 1;
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t GSKTabChangeAction.init(navigationTab:actions:popToRoot:actionMetrics:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *a1;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  v7 = *(type metadata accessor for GSKTabChangeAction() + 28);
  v8 = sub_24F928AD8();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t type metadata accessor for GSKTabChangeAction()
{
  result = qword_27F245748;
  if (!qword_27F245748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GSKTabChangeAction.NavigationTab.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_24F928348();
  if (!v7)
  {
    goto LABEL_6;
  }

  if (v6 == 0x64657463656C6573 && v7 == 0xE800000000000000 || (v8 = v6, v9 = v7, (sub_24F92CE08() & 1) != 0))
  {

LABEL_6:
    v10 = sub_24F9285B8();
    (*(*(v10 - 8) + 8))(a2, v10);
    v11 = sub_24F928388();
    result = (*(*(v11 - 8) + 8))(a1, v11);
    v13 = 0;
    v14 = 11;
    goto LABEL_7;
  }

  StoreTab.Identifier.init(rawValue:)(v8, v9, &v17);
  v15 = sub_24F9285B8();
  (*(*(v15 - 8) + 8))(a2, v15);
  v16 = sub_24F928388();
  result = (*(*(v16 - 8) + 8))(a1, v16);
  v14 = v18;
  if (v18 == 11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v17;
  }

LABEL_7:
  *a3 = v13;
  a3[1] = v14;
  return result;
}

uint64_t GSKTabChangeAction.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v54 = a3;
  v56 = a2;
  v63 = sub_24F9285B8();
  v60 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v46 - v6;
  v7 = sub_24F928AD8();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v51 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v49 = &v46 - v16;
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  v21 = sub_24F92AC28();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v25 = v20;
  v26 = *(v13 + 8);
  v53 = v12;
  v55 = v13 + 8;
  v26(v25, v12);
  if ((*(v22 + 48))(v11, 1, v21) == 1)
  {
    sub_24E601704(v11, &qword_27F2213B0);
    v48 = MEMORY[0x277D84F90];
    v27 = v56;
  }

  else
  {
    (*(v22 + 32))(v24, v11, v21);
    v27 = v56;
    v48 = sub_24F928CF8();
    (*(v22 + 8))(v24, v21);
  }

  v28 = v52;
  sub_24F928398();
  (*(v60 + 16))(v47, v27, v63);
  v29 = v50;
  v30 = v59;
  sub_24F929548();
  v31 = v58;
  v32 = *(v58 + 48);
  if (v32(v29, 1, v30) == 1)
  {
    sub_24F928A98();
    if (v32(v29, 1, v30) != 1)
    {
      sub_24E601704(v29, &qword_27F223CE8);
    }
  }

  else
  {
    (*(v31 + 32))(v57, v29, v30);
  }

  v33 = v49;
  sub_24F928398();
  v34 = sub_24F928348();
  if (!v35)
  {
    v37 = v53;
    v26(v33, v53);
    goto LABEL_14;
  }

  v36 = v35;
  v37 = v53;
  if (v34 == 0x64657463656C6573 && v35 == 0xE800000000000000 || (v38 = v34, (sub_24F92CE08() & 1) != 0))
  {
    v26(v33, v37);

LABEL_14:
    v39 = 0;
    v40 = 11;
    goto LABEL_15;
  }

  StoreTab.Identifier.init(rawValue:)(v38, v36, &v61);
  v26(v33, v37);
  v40 = v62;
  if (v62 == 11)
  {
    v39 = 0;
  }

  else
  {
    v39 = v61;
  }

LABEL_15:
  v41 = v51;
  sub_24F928398();
  v42 = sub_24F928278();
  (*(v60 + 8))(v56, v63);
  v26(v28, v37);
  v26(v41, v37);
  v43 = v54;
  *v54 = v39;
  v43[1] = v40;
  v43[2] = v48;
  *(v43 + 24) = v42 & 1;
  v44 = type metadata accessor for GSKTabChangeAction();
  return (*(v58 + 32))(v43 + *(v44 + 28), v57, v59);
}

uint64_t GSKTabChangeAction.navigationTab.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_24E9557A0(v2, v3);
}

uint64_t GSKTabChangeAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GSKTabChangeAction() + 28);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t _s12GameStoreKit18GSKTabChangeActionV13NavigationTabO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 == 11)
  {
    if (v5 == 11)
    {
      sub_24E955DF8(*a1, 0xBuLL);
      sub_24E955DF8(v4, 0xBuLL);
      v6 = 1;
      return v6 & 1;
    }

LABEL_5:
    sub_24E9557A0(*a2, *(a2 + 8));
    sub_24E9557A0(v2, v3);
    sub_24E955DF8(v2, v3);
    sub_24E955DF8(v4, v5);
    v6 = 0;
    return v6 & 1;
  }

  if (v5 == 11)
  {
    goto LABEL_5;
  }

  v7 = StoreTab.Identifier.rawValue.getter();
  v9 = v8;
  if (v7 == StoreTab.Identifier.rawValue.getter() && v9 == v10)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_24F92CE08();
  }

  sub_24E9557A0(v4, v5);
  sub_24E9557A0(v2, v3);
  sub_24E955DF8(v2, v3);
  sub_24E955DF8(v4, v5);

  return v6 & 1;
}

uint64_t sub_24F4B5FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F4B6090(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F4B6134()
{
  sub_24F4B61D0();
  if (v0 <= 0x3F)
  {
    sub_24F928AD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F4B61D0()
{
  if (!qword_27F225340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22C070);
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F225340);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit18GSKTabChangeActionV13NavigationTabO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 11;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F4B6258(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 16))
  {
    return (*a1 + 2147483636);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 10;
  if (v4 < 0xC)
  {
    v5 = 0;
  }

  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F4B62BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 11;
    }
  }

  return result;
}

void *sub_24F4B630C(void *result, unsigned int a2)
{
  if (a2 >= 0x7FFFFFF5)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 2147483637;
  }

  else if (a2)
  {
    result[1] = a2 + 10;
  }

  return result;
}

uint64_t sub_24F4B6350()
{
  if (([v0 supportsAudioOnly] & 1) != 0 || (result = objc_msgSend(v0, sel_supportsAudioAndVideo), result))
  {
    v2 = [v0 bundleIdentifier];
    if (!v2)
    {
      return 1;
    }

    v3 = v2;
    v4 = sub_24F92B0D8();
    v6 = v5;

    if (v4 == 0xD000000000000012 && 0x800000024FA75B70 == v6)
    {
    }

    else
    {
      v8 = sub_24F92CE08();

      if ((v8 & 1) == 0)
      {
        return 1;
      }
    }

    return [objc_opt_self() supportsFaceTimeAudioCalls];
  }

  return result;
}

id sub_24F4B6440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v257 = a3;
  v264 = a2;
  v250 = type metadata accessor for CallProviderConversationHandles();
  v249 = *(v250 - 8);
  MEMORY[0x28223BE20](v250);
  v252 = (&v244 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245758);
  MEMORY[0x28223BE20](v7 - 8);
  v251 = (&v244 - v8);
  v9 = type metadata accessor for CallProviderConversationHandle();
  v10 = MEMORY[0x28223BE20](v9);
  v265 = (&v244 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v247 = (&v244 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v244 = &v244 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v248 = (&v244 - v17);
  MEMORY[0x28223BE20](v16);
  v245 = &v244 - v18;
  v19 = *(a1 + 8);
  v261 = *a1;
  v20 = *(a1 + 24);
  *&v271 = *(a1 + 16);
  v21 = *(a1 + 32);
  v255 = *(a1 + 40);
  v256 = v21;
  v267 = v22;
  v23 = v22 + 56;
  v24 = *(v22 + 56);
  v24(a4, 1, 1, v9);
  v246 = type metadata accessor for CallProviderConversationHandleSet();
  v25 = *(v246 + 20);
  v253 = a4;
  v254 = v25;
  v263 = v9;
  v269 = v24;
  *&v270 = v23;
  v24(v25 + a4, 1, 1, v9);
  v260 = 0x800000024FA75B70;
  v262 = v20;
  v26 = (v20 >> 62);
  v268 = v19;
  v266 = (v20 >> 62);
  if (v19)
  {
    v27 = v268;
    if ((sub_24F4B6350() & 1) == 0)
    {
LABEL_10:

      goto LABEL_11;
    }

    v28 = [v27 bundleIdentifier];
    if (v28)
    {
      v29 = v28;
      v30 = sub_24F92B0D8();
      v32 = v31;

      if (v30 == 0xD000000000000012 && v260 == v32)
      {

        goto LABEL_8;
      }

      v33 = sub_24F92CE08();

      if (v33)
      {
LABEL_8:
        if ([objc_opt_self() supportsFaceTimeAudioCalls])
        {
          goto LABEL_9;
        }

        goto LABEL_10;
      }
    }

LABEL_9:
    v259 = v268;
    goto LABEL_44;
  }

LABEL_11:
  if (v26)
  {
    goto LABEL_41;
  }

  for (i = *((v262 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v35 = 0;
    v36 = v262 & 0xC000000000000001;
    v26 = (v262 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v36)
      {
        v38 = MEMORY[0x253052270](v35, v262);
      }

      else
      {
        if (v35 >= *(v26 + 2))
        {
          goto LABEL_40;
        }

        v38 = *(v262 + 8 * v35 + 32);
      }

      v27 = v38;
      v39 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (([v38 supportsAudioOnly] & 1) != 0 || objc_msgSend(v27, sel_supportsAudioAndVideo))
      {
        v40 = [v27 bundleIdentifier];
        if (!v40)
        {
          goto LABEL_32;
        }

        v41 = v40;
        v42 = sub_24F92B0D8();
        v44 = v43;

        if (v42 == 0xD000000000000012 && v260 == v44)
        {
        }

        else
        {
          v46 = sub_24F92CE08();

          if ((v46 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        if ([objc_opt_self() supportsFaceTimeAudioCalls])
        {
LABEL_32:
          v47 = [v27 bundleIdentifier];
          if (!v47)
          {
            goto LABEL_38;
          }

          v48 = v47;
          v49 = sub_24F92B0D8();
          v51 = v50;

          if (v49 == 0xD000000000000012 && v260 == v51)
          {
          }

          else
          {
            v37 = sub_24F92CE08();

            if ((v37 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          if ([objc_opt_self() supportsFaceTimeAudioCalls])
          {
            goto LABEL_38;
          }
        }
      }

      ++v35;
      if (v39 == i)
      {
        v27 = 0;
LABEL_38:
        v26 = v266;
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  v27 = 0;
LABEL_43:
  v259 = v27;
LABEL_44:
  v52 = v27;
  if (!v271)
  {
LABEL_55:
    if (v26)
    {
      goto LABEL_74;
    }

    for (j = *((v262 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_24F92C738())
    {
      v61 = 0;
      v62 = v262 & 0xC000000000000001;
      v63 = v262 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v62)
        {
          v65 = MEMORY[0x253052270](v61, v262);
        }

        else
        {
          if (v61 >= *(v63 + 16))
          {
            goto LABEL_73;
          }

          v65 = *(v262 + 8 * v61 + 32);
        }

        v53 = v65;
        v66 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          break;
        }

        if ([v65 supportsAudioAndVideo] && (objc_msgSend(v53, sel_isSystemProvider) & 1) != 0)
        {
          v67 = [v53 bundleIdentifier];
          if (!v67)
          {
            goto LABEL_76;
          }

          v68 = v67;
          v69 = sub_24F92B0D8();
          v71 = v70;

          if (v69 == 0xD000000000000012 && v260 == v71)
          {
          }

          else
          {
            v64 = sub_24F92CE08();

            if ((v64 & 1) == 0)
            {
              goto LABEL_76;
            }
          }

          if ([objc_opt_self() supportsFaceTimeVideoCalls])
          {
            goto LABEL_76;
          }
        }

        ++v61;
        if (v66 == j)
        {
          goto LABEL_75;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      ;
    }

LABEL_75:
    v53 = 0;
LABEL_76:
    v258 = v53;
    goto LABEL_77;
  }

  v53 = v271;
  if (![v53 supportsAudioAndVideo] || !objc_msgSend(v53, sel_isSystemProvider))
  {
LABEL_54:

    goto LABEL_55;
  }

  v54 = [v53 bundleIdentifier];
  if (v54)
  {
    v55 = v54;
    v56 = sub_24F92B0D8();
    v58 = v57;

    if (v56 == 0xD000000000000012 && v260 == v58)
    {

      goto LABEL_52;
    }

    v59 = sub_24F92CE08();

    if (v59)
    {
LABEL_52:
      if ([objc_opt_self() supportsFaceTimeVideoCalls])
      {
        goto LABEL_53;
      }

      goto LABEL_54;
    }
  }

LABEL_53:
  v258 = v271;
LABEL_77:
  result = v53;
  if (!v259)
  {
    goto LABEL_134;
  }

  v73 = v264;
  v74 = *(v264 + 16);
  if (v74)
  {
    v75 = 0;
    v76 = v264 + 32;
    do
    {
      if (v75 >= *(v73 + 16))
      {
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
        return result;
      }

      v77 = (v76 + 16 * v75);
      v78 = v77[1];
      if (*(v78 + 16))
      {
        v79 = *v77;
        v80 = 1 << *(v78 + 32);
        if (v80 < 64)
        {
          v81 = ~(-1 << v80);
        }

        else
        {
          v81 = -1;
        }

        v82 = v81 & *(v78 + 56);
        v83 = (v80 + 63) >> 6;

        swift_bridgeObjectRetain_n();
        v84 = 0;
        do
        {
          if (v82)
          {
            v85 = v84;
          }

          else
          {
            do
            {
              v85 = v84 + 1;
              if (__OFADD__(v84, 1))
              {
                goto LABEL_294;
              }

              if (v85 >= v83)
              {

                goto LABEL_99;
              }

              v82 = *(v78 + 56 + 8 * v85);
              ++v84;
            }

            while (!v82);
            v84 = v85;
          }

          v86 = __clz(__rbit64(v82));
          v82 &= v82 - 1;
        }

        while (([v259 supportsHandleType_] & 1) != 0);

        v73 = v264;
      }

      ++v75;
    }

    while (v75 != v74);
  }

  v87 = v257;
  if (!v257)
  {
    goto LABEL_133;
  }

  v88 = v257[2];
  if (!v88)
  {
    goto LABEL_133;
  }

  v89 = v257 + ((*(v267 + 80) + 32) & ~*(v267 + 80));

  v90 = 0;
  while (1)
  {
    if (v90 >= v87[2])
    {
      goto LABEL_307;
    }

    v100 = v248;
    sub_24F4B9AF8(&v89[*(v267 + 72) * v90], v248, type metadata accessor for CallProviderConversationHandle);
    v101 = *v100;
    v102 = v100[1];
    v103 = [v259 identifier];
    v104 = sub_24F92B0D8();
    v106 = v105;

    if (v101 == v104 && v102 == v106)
    {
      break;
    }

    v108 = sub_24F92CE08();

    if (v108)
    {
      goto LABEL_119;
    }

LABEL_110:
    ++v90;
    result = sub_24F4B9A98(v248, type metadata accessor for CallProviderConversationHandle);
    v87 = v257;
    if (v90 == v88)
    {
      goto LABEL_296;
    }
  }

LABEL_119:
  v109 = *(v248 + *(v263 + 20) + 8);
  if (!*(v109 + 16))
  {
    goto LABEL_110;
  }

  v110 = 1 << *(v109 + 32);
  if (v110 < 64)
  {
    v111 = ~(-1 << v110);
  }

  else
  {
    v111 = -1;
  }

  v112 = v111 & *(v109 + 56);
  v113 = (v110 + 63) >> 6;

  swift_bridgeObjectRetain_n();
  v114 = 0;
LABEL_124:
  if (v112)
  {
    v115 = v114;
    goto LABEL_130;
  }

  while (1)
  {
    v115 = v114 + 1;
    if (__OFADD__(v114, 1))
    {
      goto LABEL_299;
    }

    if (v115 >= v113)
    {
      break;
    }

    v112 = *(v109 + 56 + 8 * v115);
    ++v114;
    if (v112)
    {
      v114 = v115;
LABEL_130:
      v116 = __clz(__rbit64(v112));
      v112 &= v112 - 1;
      if (([v259 supportsHandleType_] & 1) == 0)
      {

        goto LABEL_110;
      }

      goto LABEL_124;
    }
  }

  v240 = v245;
  sub_24F4B9B60(v248, v245, type metadata accessor for CallProviderConversationHandle);
  v241 = (v240 + *(v263 + 20));
  v79 = *v241;
  v78 = v241[1];

  sub_24F4B9A98(v240, type metadata accessor for CallProviderConversationHandle);
LABEL_99:
  v91 = [v259 bundleIdentifier];
  if (!v91)
  {
LABEL_108:
    v98 = v251;
    sub_24F042070(v259, v251);
    v99 = (v98 + *(v263 + 20));
    *v99 = v79;
    v99[1] = v78;
    (v269)(v98, 0, 1);
    result = sub_24F4B803C(v98, v253);
    if (v258)
    {
      goto LABEL_135;
    }

    goto LABEL_164;
  }

  v92 = v91;
  v93 = sub_24F92B0D8();
  v95 = v94;

  if (v93 == 0xD000000000000012 && v260 == v95)
  {
  }

  else
  {
    v97 = sub_24F92CE08();

    if ((v97 & 1) == 0)
    {
      goto LABEL_108;
    }
  }

  if ([objc_opt_self() supportsFaceTimeAudioCalls])
  {
    goto LABEL_108;
  }

LABEL_133:

LABEL_134:
  while (2)
  {
    v117 = v253;
    sub_24E601704(v253, &qword_27F245758);
    result = (v269)(v117, 1, 1, v263);
    if (!v258)
    {
      goto LABEL_164;
    }

LABEL_135:
    v118 = v264;
    v119 = *(v264 + 16);
    if (!v119)
    {
      goto LABEL_152;
    }

    v120 = 0;
    v121 = v264 + 32;
    do
    {
      if (v120 >= *(v118 + 16))
      {
        goto LABEL_306;
      }

      v122 = (v121 + 16 * v120);
      v123 = v122[1];
      if (!*(v123 + 16))
      {
        goto LABEL_151;
      }

      v124 = *v122;
      v125 = 1 << *(v123 + 32);
      if (v125 < 64)
      {
        v126 = ~(-1 << v125);
      }

      else
      {
        v126 = -1;
      }

      v127 = v126 & *(v123 + 56);
      v128 = (v125 + 63) >> 6;

      swift_bridgeObjectRetain_n();
      v129 = 0;
      do
      {
        if (v127)
        {
          v130 = v129;
          goto LABEL_149;
        }

        do
        {
          v130 = v129 + 1;
          if (__OFADD__(v129, 1))
          {
            goto LABEL_295;
          }

          if (v130 >= v128)
          {

            goto LABEL_156;
          }

          v127 = *(v123 + 56 + 8 * v130);
          ++v129;
        }

        while (!v127);
        v129 = v130;
LABEL_149:
        v131 = __clz(__rbit64(v127));
        v127 &= v127 - 1;
      }

      while (([v258 supportsHandleType_] & 1) != 0);

      v118 = v264;
LABEL_151:
      ++v120;
    }

    while (v120 != v119);
LABEL_152:
    v132 = v257;
    if (!v257 || (v133 = v257[2]) == 0)
    {

LABEL_164:
      v144 = v253;
      v145 = v254;
      sub_24E601704(v254 + v253, &qword_27F245758);
      v269(v145 + v144, 1, 1, v263);
      v137 = v266;
      goto LABEL_191;
    }

    v134 = v257 + ((*(v267 + 80) + 32) & ~*(v267 + 80));

    v135 = 0;
    while (1)
    {
      if (v135 >= v132[2])
      {
        goto LABEL_308;
      }

      v148 = v247;
      sub_24F4B9AF8(&v134[*(v267 + 72) * v135], v247, type metadata accessor for CallProviderConversationHandle);
      v149 = *v148;
      v150 = v148[1];
      v151 = [v258 identifier];
      v152 = sub_24F92B0D8();
      v154 = v153;

      if (v149 == v152 && v150 == v154)
      {
      }

      else
      {
        v156 = sub_24F92CE08();

        if ((v156 & 1) == 0)
        {
          goto LABEL_168;
        }
      }

      v157 = *(v247 + *(v263 + 20) + 8);
      if (*(v157 + 16))
      {
        break;
      }

LABEL_168:
      ++v135;
      result = sub_24F4B9A98(v247, type metadata accessor for CallProviderConversationHandle);
      v132 = v257;
      if (v135 == v133)
      {

        goto LABEL_164;
      }
    }

    v158 = 1 << *(v157 + 32);
    if (v158 < 64)
    {
      v159 = ~(-1 << v158);
    }

    else
    {
      v159 = -1;
    }

    v160 = v159 & *(v157 + 56);
    v161 = (v158 + 63) >> 6;

    swift_bridgeObjectRetain_n();
    v162 = 0;
LABEL_182:
    if (v160)
    {
      v163 = v162;
      goto LABEL_188;
    }

    while (1)
    {
      v163 = v162 + 1;
      if (__OFADD__(v162, 1))
      {
        goto LABEL_300;
      }

      if (v163 >= v161)
      {
        break;
      }

      v160 = *(v157 + 56 + 8 * v163);
      ++v162;
      if (v160)
      {
        v162 = v163;
LABEL_188:
        v164 = __clz(__rbit64(v160));
        v160 &= v160 - 1;
        if (([v258 supportsHandleType_] & 1) == 0)
        {

          goto LABEL_168;
        }

        goto LABEL_182;
      }
    }

    v242 = v244;
    sub_24F4B9B60(v247, v244, type metadata accessor for CallProviderConversationHandle);
    v243 = (v242 + *(v263 + 20));
    v124 = *v243;
    v123 = v243[1];

    sub_24F4B9A98(v242, type metadata accessor for CallProviderConversationHandle);
LABEL_156:
    v136 = [v258 bundleIdentifier];
    v137 = v266;
    if (v136)
    {
      v138 = v136;
      v139 = sub_24F92B0D8();
      v141 = v140;

      if (v139 == 0xD000000000000012 && v260 == v141)
      {
      }

      else
      {
        v143 = sub_24F92CE08();

        if ((v143 & 1) == 0)
        {
          goto LABEL_167;
        }
      }

      if ([objc_opt_self() supportsFaceTimeVideoCalls])
      {
        goto LABEL_167;
      }

      v165 = v253;
      v166 = v254;
      sub_24E601704(v254 + v253, &qword_27F245758);
      v167 = v166 + v165;
      v137 = v266;
      v269(v167, 1, 1, v263);
    }

    else
    {
LABEL_167:
      v146 = v251;
      sub_24F042070(v258, v251);
      v147 = (v146 + *(v263 + 20));
      *v147 = v124;
      v147[1] = v123;
      (v269)(v146, 0, 1);
      sub_24F4B803C(v146, v254 + v253);
    }

LABEL_191:

    if (!v137)
    {
      v168 = *((v262 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v169 = v264;
      if (v168)
      {
        goto LABEL_193;
      }

LABEL_303:

      v239 = MEMORY[0x277D84F90];
      goto LABEL_304;
    }

LABEL_302:
    v168 = sub_24F92C738();
    v169 = v264;
    if (!v168)
    {
      goto LABEL_303;
    }

LABEL_193:
    v170 = 0;
    v255 = (v262 & 0xC000000000000001);
    v248 = (v262 & 0xFFFFFFFFFFFFFF8);
    v247 = (v262 + 32);
    v171 = (v169 + 32);
    v172 = v257;
    if (!v257)
    {
      v172 = MEMORY[0x277D84F90];
    }

    v268 = v172;
    v269 = v171;
    v254 = MEMORY[0x277D84F90];
    v251 = v168;
    while (1)
    {
      if (v255)
      {
        v173 = MEMORY[0x253052270](v170, v262);
      }

      else
      {
        if (v170 >= v248[2])
        {
          goto LABEL_301;
        }

        v173 = v247[v170];
      }

      v174 = v173;
      v175 = __OFADD__(v170, 1);
      v170 = v170 + 1;
      if (v175)
      {
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
        goto LABEL_302;
      }

      if (([v173 supportsAudioOnly] & 1) != 0 || objc_msgSend(v174, sel_supportsAudioAndVideo))
      {
        v176 = [v174 bundleIdentifier];
        if (!v176)
        {
          goto LABEL_216;
        }

        v177 = v170;
        v178 = v176;
        v179 = sub_24F92B0D8();
        v181 = v180;

        if (v179 == 0xD000000000000012 && v260 == v181)
        {

          v170 = v177;
        }

        else
        {
          v183 = sub_24F92CE08();

          v170 = v177;
          if ((v183 & 1) == 0)
          {
            goto LABEL_216;
          }
        }

        if ([objc_opt_self() supportsFaceTimeAudioCalls])
        {
          goto LABEL_216;
        }
      }

      if (![v174 supportsAudioAndVideo] || (objc_msgSend(v174, sel_isSystemProvider) & 1) == 0)
      {

        goto LABEL_197;
      }

LABEL_216:
      v256 = v170;
      v184 = [v174 bundleIdentifier];
      if (!v184)
      {
        goto LABEL_223;
      }

      v185 = v184;
      v186 = sub_24F92B0D8();
      v188 = v187;

      if (v186 == 0xD000000000000012 && v260 == v188)
      {
      }

      else
      {
        v189 = sub_24F92CE08();

        if ((v189 & 1) == 0)
        {
          goto LABEL_223;
        }
      }

      v190 = objc_opt_self();
      if (([v190 supportsFaceTimeAudioCalls] & 1) == 0 && !objc_msgSend(v190, sel_supportsFaceTimeVideoCalls))
      {

        v170 = v256;
        goto LABEL_197;
      }

LABEL_223:
      v191 = v264;
      v192 = *(v264 + 16);
      if (v192)
      {
        break;
      }

      v194 = MEMORY[0x277D84F90];
LABEL_246:
      v208 = *(v268 + 2);
      if (v208)
      {
        v266 = &v268[(*(v267 + 80) + 32) & ~*(v267 + 80)];

        v209 = 0;
        v210 = MEMORY[0x277D84F90];
        v211 = v265;
        v261 = v208;
        while (1)
        {
          if (v209 >= *(v268 + 2))
          {
            goto LABEL_293;
          }

          *&v271 = v210;
          sub_24F4B9AF8(&v266[*(v267 + 72) * v209], v211, type metadata accessor for CallProviderConversationHandle);
          v212 = *v211;
          v213 = v211[1];
          v214 = [v174 identifier];
          v215 = sub_24F92B0D8();
          v217 = v216;

          if (v212 == v215 && v213 == v217)
          {
          }

          else
          {
            v219 = sub_24F92CE08();

            if ((v219 & 1) == 0)
            {
              goto LABEL_248;
            }
          }

          v220 = v211 + *(v263 + 20);
          v221 = *(v220 + 1);
          if (*(v221 + 16))
          {
            v222 = 1 << *(v221 + 32);
            if (v222 < 64)
            {
              v223 = ~(-1 << v222);
            }

            else
            {
              v223 = -1;
            }

            v224 = v223 & *(v221 + 56);
            v225 = (v222 + 63) >> 6;

            swift_bridgeObjectRetain_n();
            v226 = 0;
            while (v224)
            {
              v227 = v226;
LABEL_269:
              v228 = __clz(__rbit64(v224));
              v224 &= v224 - 1;
              if (([v174 supportsHandleType_] & 1) == 0)
              {

                v211 = v265;
                v208 = v261;
                goto LABEL_248;
              }
            }

            while (1)
            {
              v227 = v226 + 1;
              if (__OFADD__(v226, 1))
              {
                goto LABEL_288;
              }

              if (v227 >= v225)
              {

                v270 = *v220;

                sub_24F4B9A98(v265, type metadata accessor for CallProviderConversationHandle);
                v210 = v271;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v210 = sub_24E616D5C(0, *(v210 + 2) + 1, 1, v210);
                }

                v208 = v261;
                v230 = *(v210 + 2);
                v229 = *(v210 + 3);
                if (v230 >= v229 >> 1)
                {
                  v210 = sub_24E616D5C((v229 > 1), v230 + 1, 1, v210);
                }

                *(v210 + 2) = v230 + 1;
                *&v210[16 * v230 + 32] = v270;
                v211 = v265;
                goto LABEL_249;
              }

              v224 = *(v221 + 56 + 8 * v227);
              ++v226;
              if (v224)
              {
                v226 = v227;
                goto LABEL_269;
              }
            }
          }

LABEL_248:
          sub_24F4B9A98(v211, type metadata accessor for CallProviderConversationHandle);
          v210 = v271;
LABEL_249:
          if (++v209 == v208)
          {

            goto LABEL_278;
          }
        }
      }

      v210 = MEMORY[0x277D84F90];
LABEL_278:
      v272 = v194;
      sub_24EA0A5CC(v210);
      v231 = v272;
      if (*(v272 + 16))
      {
        v232 = v174;
        v233 = v252;
        sub_24F042070(v232, v252);
        *(v233 + *(v250 + 20)) = v231;
        v234 = v254;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v234 = sub_24E616D34(0, v234[2] + 1, 1, v234);
        }

        v235 = v234;
        v236 = v234[2];
        v254 = v235;
        v237 = v235[3];
        if (v236 >= v237 >> 1)
        {
          v254 = sub_24E616D34(v237 > 1, v236 + 1, 1, v254);
        }

        v238 = v254;
        v254[2] = v236 + 1;
        sub_24F4B9B60(v252, v238 + ((*(v249 + 80) + 32) & ~*(v249 + 80)) + *(v249 + 72) * v236, type metadata accessor for CallProviderConversationHandles);
      }

      else
      {
      }

      v168 = v251;
      v170 = v256;
LABEL_197:
      if (v170 == v168)
      {
        goto LABEL_289;
      }
    }

    v193 = 0;
    v194 = MEMORY[0x277D84F90];
LABEL_229:
    if (v193 >= *(v191 + 16))
    {
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:

      continue;
    }

    break;
  }

  v198 = *(v269 + v193++);
  v199 = *(&v198 + 1);
  if (!*(*(&v198 + 1) + 16))
  {
    goto LABEL_228;
  }

  v200 = 1 << *(*(&v198 + 1) + 32);
  if (v200 < 64)
  {
    v201 = ~(-1 << v200);
  }

  else
  {
    v201 = -1;
  }

  v202 = v201 & *(*(&v198 + 1) + 56);
  v203 = (v200 + 63) >> 6;
  v271 = v198;

  swift_bridgeObjectRetain_n();
  v204 = 0;
LABEL_235:
  if (v202)
  {
    v205 = v204;
    goto LABEL_241;
  }

  while (1)
  {
    v205 = v204 + 1;
    if (__OFADD__(v204, 1))
    {
      break;
    }

    if (v205 >= v203)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v272 = v194;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24F457D04(0, *(v194 + 16) + 1, 1);
        v194 = v272;
      }

      v191 = v264;
      v195 = v271;
      v197 = *(v194 + 16);
      v196 = *(v194 + 24);
      if (v197 >= v196 >> 1)
      {
        sub_24F457D04((v196 > 1), v197 + 1, 1);
        v195 = v271;
        v191 = v264;
        v194 = v272;
      }

      *(v194 + 16) = v197 + 1;
      *(v194 + 16 * v197 + 32) = v195;
LABEL_228:
      if (v193 == v192)
      {
        goto LABEL_246;
      }

      goto LABEL_229;
    }

    v202 = *(v199 + 56 + 8 * v205);
    ++v204;
    if (v202)
    {
      v204 = v205;
LABEL_241:
      v206 = __clz(__rbit64(v202));
      v202 &= v202 - 1;
      if (([v174 supportsHandleType_] & 1) == 0)
      {

        v191 = v264;
        goto LABEL_228;
      }

      goto LABEL_235;
    }
  }

  __break(1u);
LABEL_288:
  __break(1u);
LABEL_289:

  v239 = v254;
LABEL_304:

  *(v253 + *(v246 + 24)) = v239;
  return result;
}