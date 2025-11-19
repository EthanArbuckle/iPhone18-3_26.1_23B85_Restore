uint64_t ChallengesSuggestedGamesDataIntent.playerID.getter()
{
  v1 = *v0;

  return v1;
}

char *sub_24F5BC5B8(char *a1, char *a2, __int128 *a3, int a4)
{
  v40 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_24F91F4A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v37 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  v16 = a3[1];
  v45 = *a3;
  v46 = v16;
  v17 = sub_24F91F648();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = sub_24F55DFB0(a1, a2, &v45);
  sub_24E601704(v15, &unk_27F22EC30);
  v43 = a1;
  v44 = a2;
  v19 = *(v18 + 16);
  if (v19)
  {
    v39 = v10;
    v38 = (v11 + 48);
    v35 = (v11 + 32);
    v34 = (v11 + 8);

    v20 = v18 + (v19 << 7) - 96;
    v21 = v18;
    v36 = v18;
    while (v19 <= *(v21 + 16))
    {
      v23 = *(v20 + 16);
      v22 = *(v20 + 24);
      v25 = *(v20 + 80);
      v24 = *(v20 + 96);
      v26 = *(v20 + 64);
      v50 = *(v20 + 112);
      v48 = v25;
      v49 = v24;
      v47 = v26;
      v27 = *(v20 + 48);
      v45 = *(v20 + 32);
      v46 = v27;
      if (v40)
      {

        sub_24F5BCAA4(&v45, &v41);
        sub_24F6F518C(&v45, v9);
        sub_24F5BCB00(&v45);
        v28 = v39;
        if ((*v38)(v9, 1, v39) == 1)
        {
          sub_24E601704(v9, &qword_27F228530);
        }

        else
        {
          v29 = v9;
          v30 = v37;
          (*v35)(v37, v29, v28);
          v41 = 5974570;
          v42 = 0xE300000000000000;
          MEMORY[0x253050C20](v23, v22);

          MEMORY[0x253050C20](10333, 0xE200000000000000);
          v31 = sub_24F91F398();
          MEMORY[0x253050C20](v31);

          MEMORY[0x253050C20](41, 0xE100000000000000);
          MEMORY[0x253050C20](9142498, 0xA300000000000000);
          MEMORY[0x253050C20](10794, 0xE200000000000000);
          v23 = v41;
          v22 = v42;
          v32 = v30;
          v9 = v29;
          v21 = v36;
          (*v34)(v32, v28);
        }

        v41 = v23;
        v42 = v22;
        sub_24F5BCA50();
        sub_24F92B1D8();
      }

      else
      {
        v41 = v23;
        v42 = v22;
        sub_24F5BCA50();
        sub_24F92B1D8();
      }

      v20 -= 128;
      if (!--v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_12:

    return v43;
  }

  else
  {

    return a1;
  }
}

unint64_t sub_24F5BCA50()
{
  result = qword_27F249400;
  if (!qword_27F249400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249400);
  }

  return result;
}

uint64_t sub_24F5BCB68(uint64_t a1, uint64_t a2, int *a3)
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
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = sub_24F9289E8();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_24F5BCD48(uint64_t result, uint64_t a2, int a3, int *a4)
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
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = sub_24F9289E8();
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for FriendsArePlayingCard()
{
  result = qword_27F249408;
  if (!qword_27F249408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F5BCF60()
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
        sub_24F254198(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v4 <= 0x3F)
          {
            sub_24F9289E8();
            if (v5 <= 0x3F)
            {
              sub_24F254198(319, &qword_27F214D28, type metadata accessor for PlayerAvatar, MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
              {
                sub_24F3F6AFC();
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

uint64_t sub_24F5BD104@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_24F9289E8();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v39);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249428);
  v41 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v13 = &v36 - v12;
  v14 = type metadata accessor for FriendsArePlayingCard();
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + 40) = 0u;
  *&v52 = 0;
  v50 = 0u;
  v51 = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 9) = 0;
  v46 = v16 + 40;
  sub_24E61DA68(&v50, (v16 + 40), qword_27F21B590);
  v47 = v14;
  v17 = *(v14 + 24);
  v18 = sub_24F92A6D8();
  v19 = *(*(v18 - 8) + 56);
  v49 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24F5BDDD4();
  v21 = v45;
  sub_24F92D108();
  if (v21)
  {
    v24 = v46;
    __swift_destroy_boxed_opaque_existential_1(v48);
    sub_24E601704(v24, qword_27F24EC90);
    return sub_24E601704(&v16[v49], &qword_27F215440);
  }

  else
  {
    v45 = v11;
    v36 = v8;
    v22 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v53 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v23 = v13;
    sub_24F92CC68();
    v25 = v51;
    *v16 = v50;
    *(v16 + 1) = v25;
    *(v16 + 4) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v53 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v26 = v22;
    sub_24E61DA68(&v50, v46, qword_27F24EC90);
    LOBYTE(v50) = 2;
    sub_24E65CAA0();
    v27 = v45;
    sub_24F92CC68();
    sub_24E61DA68(v27, &v16[v49], &qword_27F215440);
    sub_24F929608();
    LOBYTE(v50) = 3;
    sub_24F5BDE28(&qword_27F213F48, MEMORY[0x277D21F70]);
    v28 = v36;
    sub_24F92CC18();
    v29 = v47;
    sub_24E6009C8(v28, &v16[v47[7]], &qword_27F213E68);
    LOBYTE(v50) = 4;
    sub_24F5BDE28(&qword_27F219690, type metadata accessor for CommonCardAttributes);
    v30 = v40;
    sub_24F92CC68();
    sub_24E706B90(v30, &v16[v29[8]]);
    LOBYTE(v50) = 5;
    sub_24F5BDE28(&qword_27F214018, MEMORY[0x277D21C48]);
    v31 = v38;
    v32 = v43;
    sub_24F92CC68();
    (*(v42 + 32))(&v16[v29[9]], v31, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218590);
    v53 = 6;
    sub_24E6DCCC8();
    sub_24F92CC68();
    *&v16[v29[10]] = v50;
    v53 = 7;
    sub_24E6E8474();
    sub_24F92CC18();
    (*(v26 + 8))(v23, v44);
    v33 = &v16[v29[11]];
    v34 = v51;
    *v33 = v50;
    *(v33 + 1) = v34;
    *(v33 + 2) = v52;
    sub_24F5BDE70(v16, v37, type metadata accessor for FriendsArePlayingCard);
    __swift_destroy_boxed_opaque_existential_1(v48);
    return sub_24F5BDED8(v16, type metadata accessor for FriendsArePlayingCard);
  }
}

uint64_t sub_24F5BDA40()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x7641726579616C70;
    if (v1 != 6)
    {
      v5 = 0xD000000000000023;
    }

    v6 = 0xD000000000000014;
    if (v1 != 4)
    {
      v6 = 0x6E6F6349656D6167;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 25705;
    v3 = 0x4D747865746E6F63;
    if (v1 != 2)
    {
      v3 = 0xD000000000000011;
    }

    if (*v0)
    {
      v2 = 0x6575676573;
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
}

uint64_t sub_24F5BDB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F5BE050(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F5BDB80(uint64_t a1)
{
  v2 = sub_24F5BDDD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5BDBBC(uint64_t a1)
{
  v2 = sub_24F5BDDD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F5BDC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24F5BDD08(uint64_t a1)
{
  *(a1 + 8) = sub_24F5BDE28(&qword_27F21ABA8, type metadata accessor for FriendsArePlayingCard);
  result = sub_24F5BDE28(&qword_27F249418, type metadata accessor for FriendsArePlayingCard);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24F5BDDD4()
{
  result = qword_27F249430;
  if (!qword_27F249430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249430);
  }

  return result;
}

uint64_t sub_24F5BDE28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F5BDE70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5BDED8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F5BDF4C()
{
  result = qword_27F249438;
  if (!qword_27F249438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249438);
  }

  return result;
}

unint64_t sub_24F5BDFA4()
{
  result = qword_27F249440;
  if (!qword_27F249440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249440);
  }

  return result;
}

unint64_t sub_24F5BDFFC()
{
  result = qword_27F249448;
  if (!qword_27F249448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249448);
  }

  return result;
}

uint64_t sub_24F5BE050(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xEF6B726F77747241 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7641726579616C70 && a2 == 0xED00007372617461 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000023 && 0x800000024FA45EC0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t AddFriendsPageIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E61C064(&qword_27F215388);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E70D960(v2, boxed_opaque_existential_1);
  v6 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_24F5BE45C(uint64_t a1)
{
  v2 = sub_24F5BEA34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5BE498(uint64_t a1)
{
  v2 = sub_24F5BEA34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AddFriendsPageIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249450);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5BEA34();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t AddFriendsPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249460);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for AddFriendsPageIntent();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5BEA34();
  sub_24F92D108();
  if (!v2)
  {
    v12 = v16;
    sub_24E61C064(&qword_27F213E38);
    v13 = v17;
    sub_24F92CC68();
    (*(v15 + 8))(v8, v6);
    sub_24F5BEAD4(v13, v11, type metadata accessor for Player);
    sub_24F5BEAD4(v11, v12, type metadata accessor for AddFriendsPageIntent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F5BE8D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249450);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5BEA34();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F5BEA34()
{
  result = qword_27F249458;
  if (!qword_27F249458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249458);
  }

  return result;
}

uint64_t type metadata accessor for AddFriendsPageIntent()
{
  result = qword_27F249468;
  if (!qword_27F249468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F5BEAD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5BEB50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F5BEBD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_24F5BEC54()
{
  result = qword_27F249478;
  if (!qword_27F249478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249478);
  }

  return result;
}

unint64_t sub_24F5BECAC()
{
  result = qword_27F249480;
  if (!qword_27F249480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249480);
  }

  return result;
}

unint64_t sub_24F5BED04()
{
  result = qword_27F249488;
  if (!qword_27F249488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249488);
  }

  return result;
}

uint64_t sub_24F5BED6C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Game();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Leaderboard(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[7] + 8);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = type metadata accessor for Player(0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[8];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_24F5BEEF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Game();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = type metadata accessor for Leaderboard(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v14 = type metadata accessor for Player(0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[8];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t type metadata accessor for LeaderboardEntriesShelfIntent()
{
  result = qword_27F249490;
  if (!qword_27F249490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F5BF0B4()
{
  result = type metadata accessor for Game();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Leaderboard(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Player(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_24F5BF168@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  strcpy((inited + 32), "entriesPerPage");
  *(inited + 47) = -18;
  v4 = *v1;
  *(inited + 72) = MEMORY[0x277D83B88];
  v5 = sub_24E65901C();
  *(inited + 48) = v4;
  *(inited + 80) = v5;
  *(inited + 88) = 1701667175;
  *(inited + 96) = 0xE400000000000000;
  v6 = type metadata accessor for LeaderboardEntriesShelfIntent();
  v7 = v6[5];
  *(inited + 128) = type metadata accessor for Game();
  *(inited + 136) = sub_24F5BFFE8(&qword_27F217960, type metadata accessor for Game);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F5C0030(v1 + v7, boxed_opaque_existential_1, type metadata accessor for Game);
  *(inited + 144) = 0x6F6272656461656CLL;
  *(inited + 152) = 0xEB00000000647261;
  v9 = v6[6];
  *(inited + 184) = type metadata accessor for Leaderboard(0);
  *(inited + 192) = sub_24F5BFFE8(&qword_27F21B450, type metadata accessor for Leaderboard);
  v10 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24F5C0030(v1 + v9, v10, type metadata accessor for Leaderboard);
  *(inited + 200) = 0x444965676170;
  *(inited + 208) = 0xE600000000000000;
  v11 = (v1 + v6[7]);
  v12 = *v11;
  v13 = v11[1];
  v14 = MEMORY[0x277D22580];
  *(inited + 240) = MEMORY[0x277D837D0];
  *(inited + 248) = v14;
  *(inited + 216) = v12;
  *(inited + 224) = v13;
  *(inited + 256) = 0x726579616C70;
  *(inited + 264) = 0xE600000000000000;
  v15 = v6[8];
  *(inited + 296) = type metadata accessor for Player(0);
  *(inited + 304) = sub_24F5BFFE8(&qword_27F215388, type metadata accessor for Player);
  v16 = __swift_allocate_boxed_opaque_existential_1((inited + 272));
  sub_24F5C0030(v1 + v15, v16, type metadata accessor for Player);

  v17 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v18 = sub_24E80FFAC(v17);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v18;
  return result;
}

uint64_t sub_24F5BF470(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2494B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5BFECC();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD38();
  if (!v1)
  {
    type metadata accessor for LeaderboardEntriesShelfIntent();
    v8[14] = 1;
    type metadata accessor for Game();
    sub_24F5BFFE8(&qword_27F214950, type metadata accessor for Game);
    sub_24F92CD48();
    v8[13] = 2;
    type metadata accessor for Leaderboard(0);
    sub_24F5BFFE8(&qword_27F21B470, type metadata accessor for Leaderboard);
    sub_24F92CD48();
    v8[12] = 3;
    sub_24F92CD08();
    v8[11] = 4;
    type metadata accessor for Player(0);
    sub_24F5BFFE8(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F5BF744@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v26 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v26);
  v25 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Leaderboard(0);
  MEMORY[0x28223BE20](v27);
  v28 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2494A0);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for LeaderboardEntriesShelfIntent();
  MEMORY[0x28223BE20](v11);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5BFECC();
  v31 = v10;
  v14 = v32;
  sub_24F92D108();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v28;
  v37 = 0;
  *v13 = sub_24F92CC58();
  v36 = 1;
  sub_24F5BFFE8(&qword_27F214968, type metadata accessor for Game);
  sub_24F92CC68();
  v16 = v11;
  sub_24F5BFF20(v7, v13 + v11[5], type metadata accessor for Game);
  v35 = 2;
  sub_24F5BFFE8(&qword_27F21B488, type metadata accessor for Leaderboard);
  sub_24F92CC68();
  sub_24F5BFF20(v15, v13 + v11[6], type metadata accessor for Leaderboard);
  v34 = 3;
  v17 = sub_24F92CC28();
  v18 = (v13 + v11[7]);
  *v18 = v17;
  v18[1] = v19;
  v33 = 4;
  sub_24F5BFFE8(&qword_27F213E38, type metadata accessor for Player);
  v20 = v25;
  v21 = v30;
  sub_24F92CC68();
  (*(v29 + 8))(v31, v21);
  sub_24F5BFF20(v20, v13 + v16[8], type metadata accessor for Player);
  sub_24F5C0030(v13, v24, type metadata accessor for LeaderboardEntriesShelfIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F5BFF88(v13, type metadata accessor for LeaderboardEntriesShelfIntent);
}

uint64_t sub_24F5BFD24()
{
  v1 = *v0;
  v2 = 0x5073656972746E65;
  v3 = 0x6F6272656461656CLL;
  v4 = 0x444965676170;
  if (v1 != 3)
  {
    v4 = 0x726579616C70;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667175;
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

uint64_t sub_24F5BFDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F5C01B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F5BFDEC(uint64_t a1)
{
  v2 = sub_24F5BFECC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5BFE28(uint64_t a1)
{
  v2 = sub_24F5BFECC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F5BFECC()
{
  result = qword_27F2494A8;
  if (!qword_27F2494A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2494A8);
  }

  return result;
}

uint64_t sub_24F5BFF20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5BFF88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F5BFFE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F5C0030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F5C00AC()
{
  result = qword_27F2494B8;
  if (!qword_27F2494B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2494B8);
  }

  return result;
}

unint64_t sub_24F5C0104()
{
  result = qword_27F2494C0;
  if (!qword_27F2494C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2494C0);
  }

  return result;
}

unint64_t sub_24F5C015C()
{
  result = qword_27F2494C8;
  if (!qword_27F2494C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2494C8);
  }

  return result;
}

uint64_t sub_24F5C01B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5073656972746E65 && a2 == 0xEE00656761507265;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xEB00000000647261 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x444965676170 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

unint64_t ActivityFeed.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x736E6F6974636573;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2494D0);
  *(inited + 80) = sub_24F5C0B5C(&qword_27F2494D8, sub_24F5C0498);
  *(inited + 48) = v3;

  v5 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v5;
  return result;
}

unint64_t sub_24F5C0498()
{
  result = qword_27F2494E0;
  if (!qword_27F2494E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2494E0);
  }

  return result;
}

uint64_t sub_24F5C0504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F5C058C(uint64_t a1)
{
  v2 = sub_24F5C0AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5C05C8(uint64_t a1)
{
  v2 = sub_24F5C0AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityFeed.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2494E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5C0AB4();

  sub_24F92D128();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2494D0);
  sub_24F5C0B5C(&qword_27F2494F8, sub_24F5C0B08);
  sub_24F92CD48();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ActivityFeed.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249508);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5C0AB4();
  sub_24F92D108();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2494D0);
    sub_24F5C0B5C(&qword_27F249510, sub_24F5C0BD4);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F5C0988@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x736E6F6974636573;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2494D0);
  *(inited + 80) = sub_24F5C0B5C(&qword_27F2494D8, sub_24F5C0498);
  *(inited + 48) = v3;

  v5 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v5;
  return result;
}

unint64_t sub_24F5C0AB4()
{
  result = qword_27F2494F0;
  if (!qword_27F2494F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2494F0);
  }

  return result;
}

unint64_t sub_24F5C0B08()
{
  result = qword_27F249500;
  if (!qword_27F249500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249500);
  }

  return result;
}

uint64_t sub_24F5C0B5C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2494D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F5C0BD4()
{
  result = qword_27F249518;
  if (!qword_27F249518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249518);
  }

  return result;
}

unint64_t sub_24F5C0C4C()
{
  result = qword_27F249520;
  if (!qword_27F249520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249520);
  }

  return result;
}

unint64_t sub_24F5C0CA4()
{
  result = qword_27F249528;
  if (!qword_27F249528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249528);
  }

  return result;
}

unint64_t sub_24F5C0CFC()
{
  result = qword_27F249530;
  if (!qword_27F249530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249530);
  }

  return result;
}

uint64_t GameIcon.init(icon:wantsIconShapeMask:useDefaultBackgroundShape:focusable:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for GameIcon(0);
  v11 = v10[8];
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  swift_storeEnumTagMultiPayload();
  result = sub_24E94B678(a1, a5);
  *(a5 + v10[5]) = a2;
  *(a5 + v10[6]) = a3;
  *(a5 + v10[7]) = a4;
  return result;
}

uint64_t GameIcon.init(model:focusable:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GameIcon(0);
  v7 = v6[8];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  swift_storeEnumTagMultiPayload();
  v8 = sub_24F9289E8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a3, a1, v8);
  (*(v9 + 56))(a3, 0, 1, v8);
  LOBYTE(v8) = *(a1 + *(type metadata accessor for GameIconModel(0) + 20));
  result = sub_24F5C1084(a1);
  *(a3 + v6[5]) = (v8 & 1) == 0;
  *(a3 + v6[6]) = 1;
  *(a3 + v6[7]) = a2;
  return result;
}

uint64_t sub_24F5C0F98(uint64_t a1)
{
  v2 = sub_24F924218();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24F924628();
}

uint64_t sub_24F5C1084(uint64_t a1)
{
  v2 = type metadata accessor for GameIconModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F5C10E0()
{
  if (*v0)
  {
    return 0x6E65726572507369;
  }

  else
  {
    return 1852793705;
  }
}

uint64_t sub_24F5C1120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1852793705 && a2 == 0xE400000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E65726572507369 && a2 == 0xED00006465726564)
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

uint64_t sub_24F5C1204(uint64_t a1)
{
  v2 = sub_24F5C1434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5C1240(uint64_t a1)
{
  v2 = sub_24F5C1434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameIconModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249550);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5C1434();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F9289E8();
  sub_24F5C42FC(&qword_27F214060, MEMORY[0x277D21C48]);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for GameIconModel(0);
    v8[14] = 1;
    sub_24F92CD18();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F5C1434()
{
  result = qword_27F249558;
  if (!qword_27F249558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249558);
  }

  return result;
}

uint64_t GameIconModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_24F9289E8();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249560);
  v22 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v8 = &v20 - v7;
  v9 = type metadata accessor for GameIconModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5C1434();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v11;
  v12 = v22;
  v13 = v23;
  v27 = 0;
  sub_24F5C42FC(&qword_27F214018, MEMORY[0x277D21C48]);
  v14 = v24;
  sub_24F92CC68();
  (*(v13 + 32))(v20, v6, v14);
  v26 = 1;
  v15 = sub_24F92CC38();
  (*(v12 + 8))(v8, v25);
  v16 = v15 & 1;
  v18 = v20;
  v17 = v21;
  v20[*(v9 + 20)] = v16;
  sub_24F5C28C8(v18, v17, type metadata accessor for GameIconModel);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F5C1084(v18);
}

uint64_t TransitionalGameIcon.TransitionalGameIcon.hashValue.getter()
{
  sub_24F92D068();
  MEMORY[0x253052A00](0);
  return sub_24F92D0B8();
}

uint64_t TransitionalGameIcon.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v23 = sub_24F9289E8();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249568);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for GameIconModel(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E615E00(a1, v24);
  GameIconModel.init(from:)(v24, v11);
  if (v2)
  {
    v16 = v25;

    (*(v13 + 56))(v11, 1, 1, v12);
    sub_24E601704(v11, &qword_27F249568);
    sub_24E615E00(a1, v24);
    sub_24F928988();
    v17 = v23;
    (*(v7 + 56))(v6, 0, 1, v23);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v18 = *(v7 + 32);
    v19 = v22;
    v18(v22, v6, v17);
    v18(v16, v19, v17);
  }

  else
  {
    (*(v13 + 56))(v11, 0, 1, v12);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_24F5C2B1C(v11, v15, type metadata accessor for GameIconModel);
    sub_24F5C2B1C(v15, v25, type metadata accessor for GameIconModel);
  }

  type metadata accessor for TransitionalGameIcon(0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_24F5C1C44()
{
  result = qword_27F249570;
  if (!qword_27F249570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249570);
  }

  return result;
}

uint64_t sub_24F5C1CB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for GameIcon(0);
  sub_24E60169C(v1 + *(v10 + 32), v9, &qword_27F2167A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F924218();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double GameIcon.body.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v49 = sub_24F926C08();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GameIcon(0);
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = v5;
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F924218();
  v45 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_24F9289E8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v41 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  v48 = v2;
  v21 = v2;
  v23 = v22;
  sub_24E60169C(v21, v14, &qword_27F213FB0);
  if ((*(v16 + 48))(v14, 1, v23) == 1)
  {
    sub_24E601704(v14, &qword_27F213FB0);
  }

  else
  {
    v24 = *(v16 + 32);
    v40 = v16 + 32;
    v39 = v24;
    v24(v20, v14, v23);
    sub_24F5C1CB8(v11);
    sub_24F924208();
    sub_24F5C42FC(&qword_27F216C88, MEMORY[0x277CDFB98]);
    v25 = sub_24F92C678();
    v26 = *(v45 + 8);
    v26(v8, v6);
    v26(v11, v6);
    if ((v25 & 1) == 0)
    {
      v28 = v41;
      (*(v16 + 16))(v41, v20, v23);
      v29 = v44;
      sub_24F5C28C8(v48, v44, type metadata accessor for GameIcon);
      v30 = v20;
      v31 = (*(v16 + 80) + 16) & ~*(v16 + 80);
      v32 = (v17 + *(v42 + 80) + v31) & ~*(v42 + 80);
      v33 = swift_allocObject();
      v39(v33 + v31, v28, v23);
      sub_24F5C2B1C(v29, v33 + v32, type metadata accessor for GameIcon);
      v51 = sub_24F5C2B84;
      v52 = v33;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249578);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249580);
      sub_24E602068(&qword_27F249588, &qword_27F249578);
      sub_24F5C2548();
      sub_24F924E28();
      (*(v16 + 8))(v30, v23);
      goto LABEL_7;
    }

    (*(v16 + 8))(v20, v23);
  }

  (*(v47 + 104))(v46, *MEMORY[0x277CE0EE0], v49);
  v27 = sub_24F926D48();
  v51 = 1;
  v52 = 0;
  v53 = 0;
  v54 = v27;
  v55 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249580);
  sub_24E602068(&qword_27F249588, &qword_27F249578);
  sub_24F5C2548();
  sub_24F924E28();
LABEL_7:
  result = *&v56;
  v35 = v57;
  v36 = v58;
  v37 = v50;
  *v50 = v56;
  v37[1] = v35;
  *(v37 + 32) = v36;
  return result;
}

unint64_t sub_24F5C2548()
{
  result = qword_27F249590;
  if (!qword_27F249590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249580);
    sub_24E6907FC();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249590);
  }

  return result;
}

uint64_t sub_24F5C2600@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v17 = a2;
  v18 = sub_24F9248C8();
  v3 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249668);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  sub_24F923998();
  sub_24F923998();
  sub_24F9289C8();
  v13 = type metadata accessor for GameIcon(0);
  v14 = *(a1 + *(v13 + 24));
  v19 = *(a1 + *(v13 + 20));
  v20 = 0;
  v21 = 0;
  v22 = v14;
  sub_24F5C42FC(&qword_27F214C28, MEMORY[0x277D21C48]);
  sub_24F5C4344();
  sub_24F925ED8();
  (*(v7 + 8))(v9, v6);
  v15 = &v12[*(v10 + 36)];
  *v15 = 0x3FF0000000000000;
  *(v15 + 4) = 0;
  sub_24F9248B8();
  sub_24F5C4398();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v18);
  return sub_24F5C44A0(v12);
}

uint64_t sub_24F5C28C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5C2930()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for GameIcon(0);
  v6 = (v3 + v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v7 = *(v2 + 8);
  v7(v0 + v3, v1);
  if (!(*(v2 + 48))(v0 + v6, 1, v1))
  {
    v7(v0 + v6, v1);
  }

  v8 = *(v5 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F924218();
    (*(*(v9 - 8) + 8))(v0 + v6 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F5C2B1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5C2B84@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_24F9289E8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for GameIcon(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_24F5C2600(v7, a1);
}

unint64_t sub_24F5C2C6C()
{
  result = qword_27F249598;
  if (!qword_27F249598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249598);
  }

  return result;
}

uint64_t sub_24F5C2CDC@<X0>(char a1@<W1>, char a2@<W2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_24F926E08();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_24F921C08();
  if (result)
  {
    (*(v11 + 104))(v13, *MEMORY[0x277CE0FE0], v10);
    v15 = sub_24F926E88();
    (*(v11 + 8))(v13, v10);
    *v25 = v15;
    *&v25[8] = xmmword_24F9406F0;
    *&v25[24] = a1 & 1;
    v26 = a4;
    v27 = a5;
    v28 = 0;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249638);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249640);
    sub_24F5C41B0();
    sub_24F5C4268();
    sub_24F924E28();

LABEL_9:
    v20 = v29;
    v22 = v30;
    v23 = v31;
    v21 = v32;
    goto LABEL_10;
  }

  if (a2)
  {
    v16 = sub_24F921BF8();
    v17 = a1 & 1;
    if (v16)
    {
      v18 = *&v16;
      KeyPath = swift_getKeyPath();
      *v25 = v17;
      *&v25[8] = a4;
      *&v25[16] = a5;
      *&v25[24] = KeyPath;
      v26 = v18;
      LOBYTE(v27) = 0;
    }

    else
    {
      v24 = sub_24F925188();
      *v25 = v17;
      *&v25[8] = a4;
      *&v25[16] = a5;
      *&v25[24] = v24;
      v26 = 0.0;
      LOBYTE(v27) = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249618);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249620);
    sub_24F5C4040();
    sub_24F5C40F8();
    sub_24F924E28();
    *v25 = v29;
    *&v25[16] = v30;
    v26 = *&v31;
    *&v27 = BYTE8(v31);
    v28 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249638);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249640);
    sub_24F5C41B0();
    sub_24F5C4268();
    result = sub_24F924E28();
    goto LABEL_9;
  }

  v20 = 0uLL;
  v21 = -1;
  v22 = 0uLL;
  v23 = 0uLL;
LABEL_10:
  *a3 = v20;
  *(a3 + 16) = v22;
  *(a3 + 32) = v23;
  *(a3 + 48) = v21;
  return result;
}

uint64_t sub_24F5C3038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F5C3118(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F9289E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_24F5C31D0()
{
  result = sub_24F9289E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F5C3244()
{
  result = sub_24F9289E8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GameIconModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F5C32DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A80);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24F5C3438(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A80);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24F5C3570()
{
  sub_24F5C3660(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24F5C3660(319, &qword_27F216A98, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F5C3660(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24F5C36C8()
{
  result = qword_27F2495D0;
  if (!qword_27F2495D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2495D8);
    sub_24E602068(&qword_27F249588, &qword_27F249578);
    sub_24F5C2548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2495D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeroPageControlProgressCoordinator.AutoAdvanceConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24F5C37E4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[25])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24F5C3838(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24F5C38A4()
{
  result = qword_27F2495E0;
  if (!qword_27F2495E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2495E0);
  }

  return result;
}

void sub_24F5C3914()
{
  v0 = *MEMORY[0x277D1B220];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 imageDescriptorNamed_];

  [v3 size];
  v5 = v4;
  v7 = v6;

  qword_27F249538 = v5;
  qword_27F249540 = v7;
}

void sub_24F5C39A8()
{
  v0 = *MEMORY[0x277D1B220];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 imageDescriptorNamed_];

  [v3 continuousCornerRadius];
  v5 = v4;

  qword_27F249548 = v5;
}

double sub_24F5C3A34@<D0>(char a1@<W0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  v16 = sub_24F924B38();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31.origin.x = a3;
  v31.origin.y = a4;
  v31.size.width = a5;
  v31.size.height = a6;
  v32 = CGRectInset(v31, a5 * a8 + a7, a6 * a8 + a7);
  width = v32.size.width;
  height = v32.size.height;
  if (a1)
  {
    if (v32.size.height >= v32.size.width)
    {
      if (qword_27F211360 != -1)
      {
        swift_once();
      }

      v22 = qword_27F211358;
      v23 = &qword_27F249540;
      v24 = height;
    }

    else
    {
      if (qword_27F211360 != -1)
      {
        swift_once();
      }

      v22 = qword_27F211358;
      v23 = &qword_27F249538;
      v24 = width;
    }

    if (v22 != -1)
    {
      swift_once();
    }

    v32.origin.x = v24 / *v23;
  }

  (*(v17 + 104))(v19, *MEMORY[0x277CE0118], v16, v32.origin, *&v32.origin.y);
  sub_24F925AD8();
  result = *&v28;
  v26 = v29;
  *a2 = v28;
  *(a2 + 16) = v26;
  *(a2 + 32) = v30;
  return result;
}

double sub_24F5C3C7C@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  result = *(v2 + 8) + a2;
  *a1 = 1;
  *(a1 + 8) = result;
  *(a1 + 16) = v3;
  return result;
}

double sub_24F5C3C94@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_24F5C3A34(*v5, v9, a2, a3, a4, a5, *(v5 + 8), *(v5 + 16));
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_24F5C3CE0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

unint64_t sub_24F5C3D6C()
{
  result = qword_27F2495E8;
  if (!qword_27F2495E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2495E8);
  }

  return result;
}

unint64_t sub_24F5C3DC8()
{
  result = qword_27F2495F0;
  if (!qword_27F2495F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2495F0);
  }

  return result;
}

uint64_t sub_24F5C3E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F5C3DC8();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24F5C3EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F5C3DC8();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24F5C3F44(uint64_t a1)
{
  v2 = sub_24F5C3DC8();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_24F5C3F94()
{
  result = qword_27F249608;
  if (!qword_27F249608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249608);
  }

  return result;
}

unint64_t sub_24F5C3FEC()
{
  result = qword_27F249610;
  if (!qword_27F249610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249610);
  }

  return result;
}

unint64_t sub_24F5C4040()
{
  result = qword_27F249628;
  if (!qword_27F249628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249618);
    sub_24E6907FC();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249628);
  }

  return result;
}

unint64_t sub_24F5C40F8()
{
  result = qword_27F249630;
  if (!qword_27F249630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249620);
    sub_24E6907FC();
    sub_24E602068(&qword_27F217388, &qword_27F217390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249630);
  }

  return result;
}

unint64_t sub_24F5C41B0()
{
  result = qword_27F249648;
  if (!qword_27F249648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249638);
    sub_24E6E97A8();
    sub_24E602068(&qword_27F249650, &qword_27F249658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249648);
  }

  return result;
}

unint64_t sub_24F5C4268()
{
  result = qword_27F249660;
  if (!qword_27F249660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249640);
    sub_24F5C4040();
    sub_24F5C40F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249660);
  }

  return result;
}

uint64_t sub_24F5C42FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F5C4344()
{
  result = qword_27F249670;
  if (!qword_27F249670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249670);
  }

  return result;
}

unint64_t sub_24F5C4398()
{
  result = qword_27F249678;
  if (!qword_27F249678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249668);
    sub_24F9289E8();
    sub_24F5C42FC(&qword_27F214C28, MEMORY[0x277D21C48]);
    sub_24F5C4344();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249678);
  }

  return result;
}

uint64_t sub_24F5C44A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249668);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F5C450C()
{
  result = qword_27F249680;
  if (!qword_27F249680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249680);
  }

  return result;
}

unint64_t sub_24F5C4564()
{
  result = qword_27F249688;
  if (!qword_27F249688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249690);
    sub_24F5C45E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249688);
  }

  return result;
}

unint64_t sub_24F5C45E8()
{
  result = qword_27F249698;
  if (!qword_27F249698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2496A0);
    sub_24F5C41B0();
    sub_24F5C4268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249698);
  }

  return result;
}

uint64_t sub_24F5C4688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsEvent();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F5C4708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsEvent();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for GSKDebugMetricsCompactSummaryView()
{
  result = qword_27F2496A8;
  if (!qword_27F2496A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F5C47E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214410);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  sub_24F77748C();
  sub_24F926DF8();
  sub_24F924CF8();
  v10 = sub_24F924D08();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v34 = sub_24F926E58();

  sub_24E601704(v9, &qword_27F214410);
  v11 = sub_24F925908();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = sub_24F925968();
  sub_24E601704(v6, &qword_27F214698);
  KeyPath = swift_getKeyPath();
  sub_24F927618();
  sub_24F9238C8();
  v13 = sub_24F924C98();
  LOBYTE(v65) = 1;
  sub_24F5C4E40(a1, v76);
  *&v64[7] = v76[0];
  *&v64[23] = v76[1];
  *&v64[39] = v76[2];
  *&v64[55] = v76[3];
  v14 = v65;
  if (*(*(a1 + *(type metadata accessor for GSKDebugMetricsEvent() + 24)) + 16))
  {
    v15 = sub_24F9249A8();
    LOBYTE(v47[0]) = 0;
    sub_24F5C52E4(a1, &v65);
    v36[3] = v69;
    v36[4] = v70;
    v37 = v71;
    v35 = v65;
    v36[0] = v66;
    v36[1] = v67;
    v36[2] = v68;
    v49 = v65;
    v50 = v66;
    v51 = v67;
    v52 = v68;
    v53 = v69;
    v54 = v70;
    *&v55 = v71;
    sub_24E60169C(&v35, &v62, &qword_27F2496C0);
    sub_24E601704(&v49, &qword_27F2496C0);
    *(&v61[3] + 7) = v36[2];
    *(&v61[4] + 7) = v36[3];
    *(&v61[5] + 7) = v36[4];
    *(&v61[6] + 7) = v37;
    *(v61 + 7) = v35;
    *(&v61[1] + 7) = v36[0];
    *(&v61[2] + 7) = v36[1];
    v62 = v15;
    LOBYTE(v63[0]) = v47[0];
    *(&v63[2] + 1) = v61[2];
    *(&v63[1] + 1) = v61[1];
    *(v63 + 1) = v61[0];
    v63[6] = *(&v61[5] + 15);
    *(&v63[5] + 1) = v61[5];
    *(&v63[4] + 1) = v61[4];
    *(&v63[3] + 1) = v61[3];
    CGSizeMake(&v62, v16, v17);
    v69 = v63[3];
    v70 = v63[4];
    v71 = v63[5];
    v72 = v63[6];
    v65 = v62;
    v66 = v63[0];
    v67 = v63[1];
    v68 = v63[2];
  }

  else
  {
    sub_24F5C5888(&v65);
  }

  v63[3] = v69;
  v63[4] = v70;
  v63[5] = v71;
  v63[6] = v72;
  v62 = v65;
  v63[0] = v66;
  v63[1] = v67;
  v63[2] = v68;
  v18 = KeyPath;
  *&v45 = v34;
  *(&v45 + 1) = KeyPath;
  *v46 = v12;
  *&v46[8] = v73;
  *&v46[24] = v74;
  *&v46[40] = v75;
  v40 = v45;
  v41 = *v46;
  v42 = *&v46[16];
  v43 = *&v46[32];
  v47[0] = v13;
  v47[1] = 0;
  v48[0] = v14;
  *&v48[1] = *v64;
  *&v48[64] = *&v64[63];
  v32 = v12;
  *&v48[49] = *&v64[48];
  *&v48[33] = *&v64[32];
  *&v48[17] = *&v64[16];
  *(&v44[1] + 8) = *v48;
  *(v44 + 8) = v13;
  *(&v44[4] + 8) = *&v48[48];
  *(&v44[3] + 8) = *&v48[32];
  *(&v44[2] + 8) = *&v48[16];
  v51 = v67;
  v52 = v68;
  v49 = v65;
  v50 = v66;
  v55 = v71;
  v56 = v72;
  v53 = v69;
  v54 = v70;
  *&v38[55] = v68;
  *&v38[39] = v67;
  *&v38[23] = v66;
  *&v38[7] = v65;
  *&v44[0] = *(&v75 + 1);
  *(&v44[5] + 1) = *&v48[64];
  v39 = 1;
  *&v38[119] = v72;
  *&v38[103] = v71;
  *&v38[87] = v70;
  *&v38[71] = v69;
  v19 = *v46;
  *a2 = v45;
  *(a2 + 16) = v19;
  v20 = v42;
  v21 = v43;
  v22 = v44[1];
  *(a2 + 64) = v44[0];
  *(a2 + 80) = v22;
  *(a2 + 32) = v20;
  *(a2 + 48) = v21;
  v23 = v44[2];
  v24 = v44[3];
  v25 = v44[5];
  *(a2 + 128) = v44[4];
  *(a2 + 144) = v25;
  *(a2 + 96) = v23;
  *(a2 + 112) = v24;
  *(a2 + 160) = 0;
  *(a2 + 168) = 1;
  v26 = *&v38[64];
  *(a2 + 249) = *&v38[80];
  v27 = *&v38[112];
  *(a2 + 265) = *&v38[96];
  *(a2 + 281) = v27;
  *(a2 + 296) = *&v38[127];
  v28 = *v38;
  *(a2 + 185) = *&v38[16];
  v29 = *&v38[48];
  *(a2 + 201) = *&v38[32];
  *(a2 + 217) = v29;
  *(a2 + 233) = v26;
  *(a2 + 169) = v28;
  sub_24E60169C(&v45, &v35, &qword_27F2128C8);
  sub_24E60169C(v47, &v35, &qword_27F225978);
  sub_24E60169C(&v49, &v35, &qword_27F2496C8);
  sub_24E601704(&v62, &qword_27F2496C8);
  v35 = v13;
  LOBYTE(v36[0]) = v14;
  *(&v36[1] + 1) = *&v64[16];
  *(&v36[2] + 1) = *&v64[32];
  *(&v36[3] + 1) = *&v64[48];
  *&v36[4] = *&v64[63];
  *(v36 + 1) = *v64;
  sub_24E601704(&v35, &qword_27F225978);
  v57[0] = v34;
  v57[1] = v18;
  v57[2] = v32;
  v58 = v73;
  v59 = v74;
  v60 = v75;
  return sub_24E601704(v57, &qword_27F2128C8);
}

uint64_t sub_24F5C4E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v49 - v5;
  v55 = sub_24F91F008();
  v7 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v50 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220998);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v49 - v12;
  v14 = aEventtype_6[0];
  v15 = aEventtype_6[1];
  v16 = off_281C9F358;

  v53 = a1;
  sub_24F5C56AC(v14, v15, v16, MEMORY[0x277D21E98], v13);

  v17 = sub_24F929458();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v13, 1, v17);
  v54 = v7;
  if (v19 == 1)
  {
    sub_24E601704(v13, &qword_27F220998);
    v20 = 0xE700000000000000;
    v21 = 0x6E776F6E6B6E55;
  }

  else
  {
    v21 = sub_24F929448();
    v20 = v22;
    (*(v18 + 8))(v13, v17);
  }

  v56 = v21;
  v57 = v20;
  sub_24E600AEC();
  v23 = sub_24F925E18();
  v25 = v24;
  v27 = v26;
  sub_24F925A28();
  v28 = sub_24F925C98();
  v30 = v29;
  v52 = v31;
  v33 = v32;

  sub_24E600B40(v23, v25, v27 & 1);

  sub_24F7780D8(v6);
  v35 = v54;
  v34 = v55;
  if ((*(v54 + 48))(v6, 1, v55) == 1)
  {
    sub_24E601704(v6, &qword_27F215340);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
  }

  else
  {
    v40 = *(v35 + 32);
    v53 = v33;
    v41 = v51;
    v40(v51, v6, v34);
    (*(v35 + 16))(v50, v41, v34);
    v36 = sub_24F925DF8();
    v37 = v42;
    v44 = v43;
    v39 = v45;
    v46 = v41;
    v33 = v53;
    (*(v35 + 8))(v46, v34);
    v38 = v44 & 1;
    sub_24E5FD138(v36, v37, v38);
  }

  v47 = v52 & 1;
  sub_24E5FD138(v28, v30, v52 & 1);

  sub_24E65D2B4(v36, v37, v38, v39);
  sub_24E65D2F8(v36, v37, v38, v39);
  LOBYTE(v56) = v47;
  *a2 = v28;
  *(a2 + 8) = v30;
  *(a2 + 16) = v47;
  *(a2 + 24) = v33;
  *(a2 + 32) = v36;
  *(a2 + 40) = v37;
  *(a2 + 48) = v38;
  *(a2 + 56) = v39;
  sub_24E65D2F8(v36, v37, v38, v39);
  sub_24E600B40(v28, v30, v47);
}

uint64_t sub_24F5C52E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21[-v5];
  v7 = sub_24F926DF8();
  v8 = sub_24F925908();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_24F925968();
  sub_24E601704(v6, &qword_27F214698);
  KeyPath = swift_getKeyPath();
  sub_24F927618();
  sub_24F9238C8();
  v27[0] = *(*(a1 + *(type metadata accessor for GSKDebugMetricsEvent() + 24)) + 16);
  sub_24F92CD88();
  sub_24F925A18();
  v11 = sub_24F925C98();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  *&v25 = v7;
  *(&v25 + 1) = KeyPath;
  *v26 = v9;
  *&v26[8] = v22;
  *&v26[24] = v23;
  *&v26[40] = v24;
  v21[8] = v15 & 1;
  v18 = *v26;
  *a2 = v25;
  *(a2 + 16) = v18;
  v19 = *&v26[32];
  *(a2 + 32) = *&v26[16];
  *(a2 + 48) = v19;
  *(a2 + 64) = *&v26[48];
  *(a2 + 72) = v11;
  *(a2 + 80) = v13;
  *(a2 + 88) = v15 & 1;
  *(a2 + 96) = v17;
  sub_24E60169C(&v25, v27, &qword_27F2128C8);
  sub_24E5FD138(v11, v13, v15 & 1);

  sub_24E600B40(v11, v13, v15 & 1);

  v27[0] = v7;
  v27[1] = KeyPath;
  v27[2] = v9;
  v28 = v22;
  v29 = v23;
  v30 = v24;
  return sub_24E601704(v27, &qword_27F2128C8);
}

void *sub_24F5C55A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F9249A8();
  v9 = 1;
  sub_24F5C47E0(v1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v11, __src, sizeof(v11));
  sub_24E60169C(__dst, &v6, &qword_27F2496B8);
  sub_24E601704(v11, &qword_27F2496B8);
  memcpy(&v8[7], __dst, 0x130uLL);
  v4 = v9;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  return memcpy((a1 + 17), v8, 0x137uLL);
}

uint64_t sub_24F5C56AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *)@<X2>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v11 = *(v5 + *(type metadata accessor for GSKDebugMetricsEvent() + 20));
  if (*(v11 + 16) && (v12 = sub_24E76D644(a1, a2), (v13 & 1) != 0))
  {
    sub_24E643A9C(*(v11 + 56) + 32 * v12, v17);
    sub_24E612B0C(v17, v18);
    a3(v18);
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v15 = a4(0);
    v16 = *(*(v15 - 8) + 56);

    return v16(a5, 1, 1, v15);
  }
}

uint64_t sub_24F5C57CC(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *__return_ptr, _OWORD *))
{
  v7 = *(v3 + *(type metadata accessor for GSKDebugMetricsEvent() + 20));
  if (!*(v7 + 16))
  {
    return 0;
  }

  v8 = sub_24E76D644(a1, a2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  sub_24E643A9C(*(v7 + 56) + 32 * v8, v11);
  sub_24E612B0C(v11, v12);
  a3(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return *&v11[0];
}

double sub_24F5C5888(_OWORD *a1)
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

unint64_t sub_24F5C58A4()
{
  result = qword_27F2496D0;
  if (!qword_27F2496D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2496D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2496D0);
  }

  return result;
}

uint64_t sub_24F5C591C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24F17DAEC;

  return (sub_24F5C59D4)(a2, a3);
}

uint64_t sub_24F5C59D4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_24F5C5A7C;

  return MEMORY[0x28217F210](v0 + 16, &type metadata for PlayerID, &type metadata for PlayerID);
}

uint64_t sub_24F5C5A7C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_24F5C5DD0;
  }

  else
  {
    v2 = sub_24F5C5B90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F5C5B90()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    if (qword_27F211400 != -1)
    {
      swift_once();
    }

    v3 = sub_24F9220D8();
    __swift_project_value_buffer(v3, qword_27F39E850);
    v4 = sub_24F9220B8();
    v5 = sub_24F92BD98();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24E5DD000, v4, v5, "PlayerIDDataIntentImplementation: Returning player id successfully", v6, 2u);
      MEMORY[0x2530542D0](v6, -1, -1);
    }

    v7 = v0[1];

    return v7(v2, v1);
  }

  else
  {
    if (qword_27F211400 != -1)
    {
      swift_once();
    }

    v9 = sub_24F9220D8();
    __swift_project_value_buffer(v9, qword_27F39E850);
    v10 = sub_24F9220B8();
    v11 = sub_24F92BDB8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24E5DD000, v10, v11, "PlayerIDDataIntentImplementation: Unable to get player id from object graph", v12, 2u);
      MEMORY[0x2530542D0](v12, -1, -1);
    }

    sub_24F5C5DE8();
    swift_allocError();
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

unint64_t sub_24F5C5DE8()
{
  result = qword_27F2496E0;
  if (!qword_27F2496E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2496E0);
  }

  return result;
}

unint64_t sub_24F5C5E50()
{
  result = qword_27F2496E8;
  if (!qword_27F2496E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2496E8);
  }

  return result;
}

BOOL ShelfGridLayout.isHorizontal.getter()
{
  v1 = v0;
  v2 = sub_24F9218F8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = *MEMORY[0x277D7EB20];
  if (v7 == *MEMORY[0x277D7EB20])
  {
    (*(v3 + 96))(v6, v2);
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140B8) + 48);
    v10 = sub_24F9219E8();
    (*(*(v10 - 8) + 8))(&v6[v9], v10);
  }

  else
  {
    (*(v3 + 8))(v6, v2);
  }

  return v7 == v8;
}

uint64_t sub_24F5C6044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F5C60D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for LeaderboardArtworkView()
{
  result = qword_27F2496F0;
  if (!qword_27F2496F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F5C6198()
{
  sub_24E6A7820();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24F5C6220@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249700);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DCD0);
  MEMORY[0x28223BE20](v22);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_24F9289E8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(v2, v10, &qword_27F213FB0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E601704(v10, &qword_27F213FB0);
    v15 = sub_24F926E48();
    v16 = sub_24F925888();
    KeyPath = swift_getKeyPath();
    v18 = sub_24F925808();
    v24 = 1;
    *v5 = v15;
    *(v5 + 1) = KeyPath;
    *(v5 + 2) = v16;
    v5[24] = v18;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    v5[64] = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249708);
    sub_24E7DD978();
    sub_24F5C65E4();
    return sub_24F924E28();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    (*(v12 + 16))(v7, v14, v11);
    v20 = &v7[*(v22 + 36)];
    *v20 = 0x3FF0000000000000;
    *(v20 + 4) = 256;
    sub_24E60169C(v7, v5, &qword_27F21DCD0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249708);
    sub_24E7DD978();
    sub_24F5C65E4();
    sub_24F924E28();
    sub_24E601704(v7, &qword_27F21DCD0);
    return (*(v12 + 8))(v14, v11);
  }
}

unint64_t sub_24F5C65E4()
{
  result = qword_27F249710;
  if (!qword_27F249710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249708);
    sub_24F5C669C();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249710);
  }

  return result;
}

unint64_t sub_24F5C669C()
{
  result = qword_27F249718;
  if (!qword_27F249718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249720);
    sub_24E60156C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249718);
  }

  return result;
}

unint64_t sub_24F5C672C()
{
  result = qword_27F249728;
  if (!qword_27F249728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F249730);
    sub_24E7DD978();
    sub_24F5C65E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249728);
  }

  return result;
}

uint64_t ChallengesAllGamesShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = type metadata accessor for GSKShelf();
  *(v3 + 40) = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a2;
  v8 = a2[1];
  *(v3 + 48) = v6;
  *(v3 + 56) = v7;
  *(v3 + 64) = v8;
  *(v3 + 104) = *(a2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 72) = v9;
  *v9 = v3;
  v9[1] = sub_24F5C68BC;

  return sub_24E64B3F4(a3);
}

uint64_t sub_24F5C68BC(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24F5C6A14, 0, 0);
  }
}

uint64_t sub_24F5C6A14()
{

  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_24F5C6AD8;
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = *(v0 + 104);

  return sub_24E64B7AC(v5, v2, v3, v4, v7, v6);
}

uint64_t sub_24F5C6AD8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24F5C6C00;
  }

  else
  {

    v2 = sub_24E73805C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F5C6C00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F5C6C84(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return ChallengesAllGamesShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t sub_24F5C6D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v10 = type metadata accessor for CardPortraitView();
  (*(*(a4 - 8) + 32))(a6 + *(v10 + 44), a2, a4);
  v11 = *(v10 + 48);
  v12 = sub_24F923E98();
  (*(*(v12 - 8) + 32))(a6 + v11, a3, v12);
  return sub_24F5C6E88(sub_24E8CA6B0, 0);
}

uint64_t sub_24F5C6E88(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for CardSafeArea(0);

  return sub_24F9233C8();
}

void sub_24F5C6F0C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = type metadata accessor for CardLayoutMetrics.CardHeight(0);
  MEMORY[0x28223BE20](v3 - 8);
  v85 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a1;
  v7 = a1[3];
  v8 = a1[4];
  v80 = a1[2];
  type metadata accessor for CardPortraitView.TopAccessory();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720);
  sub_24F924038();
  v73 = v7;
  v74 = v8;
  type metadata accessor for CardPortraitView.Footer();
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  v79 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_24F927108();
  v81 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v70 = v49 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40);
  swift_getAssociatedTypeWitness();
  sub_24F927598();
  swift_getTupleTypeMetadata2();
  v75 = sub_24F927808();
  v76 = swift_getWitnessTable();
  sub_24F924E08();
  v71 = v9;
  v11 = sub_24F924038();
  v77 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v72 = v49 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E040);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170A0);
  v13 = sub_24F924038();
  v14 = swift_getWitnessTable();
  v69 = v14;
  v15 = swift_getWitnessTable();
  v109 = v14;
  v110 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_24E6A4C1C();
  v18 = sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
  v107 = v16;
  v108 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_24E602068(&qword_27F217098, &qword_27F2170A0);
  v105 = v19;
  v106 = v20;
  v21 = swift_getWitnessTable();
  v99 = v11;
  v100 = &type metadata for GameOverlayViewPredicate;
  v60 = v11;
  v101 = v13;
  v102 = v16;
  v59 = v16;
  v103 = v17;
  v104 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v67 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v63 = v49 - v22;
  v23 = sub_24F924038();
  v68 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v62 = v49 - v24;
  v99 = v11;
  v100 = &type metadata for GameOverlayViewPredicate;
  v101 = v13;
  v102 = v16;
  v103 = v17;
  v104 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = OpaqueTypeConformance2;
  v26 = sub_24E6BC1C8();
  v97 = OpaqueTypeConformance2;
  v98 = v26;
  v27 = swift_getWitnessTable();
  v99 = v23;
  v100 = v27;
  v28 = v23;
  v49[1] = v23;
  v29 = v27;
  v49[2] = v27;
  v61 = swift_getOpaqueTypeMetadata2();
  v65 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v53 = v49 - v30;
  type metadata accessor for CardHeightViewModifier(255);
  v31 = sub_24F924038();
  v54 = v31;
  v66 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v56 = v49 - v32;
  v33 = type metadata accessor for CardSafeArea(255);
  v52 = v33;
  v99 = v28;
  v100 = v29;
  v34 = swift_getOpaqueTypeConformance2();
  v49[3] = v34;
  v35 = sub_24F3AD224(&qword_27F217CC0, type metadata accessor for CardHeightViewModifier);
  v95 = v34;
  v96 = v35;
  v36 = swift_getWitnessTable();
  v51 = v36;
  v50 = sub_24F3AD224(&qword_27F214D10, type metadata accessor for CardSafeArea);
  v99 = v31;
  v100 = v33;
  v101 = v36;
  v102 = v50;
  v55 = MEMORY[0x277CE0C50];
  v37 = swift_getOpaqueTypeMetadata2();
  v57 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v49[0] = v49 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v49[4] = v49 - v40;
  v41 = v80;
  v42 = v73;
  v91 = v80;
  v92 = v73;
  v43 = v74;
  v44 = v82;
  v93 = v74;
  v94 = v82;
  sub_24F924C88();
  v45 = v70;
  sub_24F9270F8();
  v87 = v41;
  v88 = v42;
  v89 = v43;
  v90 = v44;
  sub_24F927618();
  v46 = v72;
  v47 = v71;
  sub_24F926088();
  (*(v81 + 8))(v45, v47);
  v48 = v60;
  sub_24E739274();
  (*(v77 + 8))(v46, v48);
  sub_24E739404();
}

uint64_t sub_24F5C79E4()
{
  (*(*(v8 - 480) + 8))(v6, v3);
  v9 = *(v8 - 352);
  v10 = *(v9 + 44);
  v11 = v0;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(v8 - 592);
  v14 = *(v8 - 648);
  sub_24E739418(v5 + v10, v14, v11, *(v8 - 640), AssociatedConformanceWitness);
  (*(*(v8 - 472) + 8))(v2, v14);
  v15 = v5 + v10;
  v16 = *(v8 - 344);
  (*(v7 + 56))(v15, 2, v5 + *(v9 + 48), v4, v7);
  v17 = *(v8 - 336);
  sub_24E8D2DD8(v16, v17);
  sub_24F3AC968(v16, type metadata accessor for CardLayoutMetrics);
  v18 = *(v8 - 568);
  v19 = *(v8 - 528);
  sub_24F4E8DBC(v17, v19, *(v8 - 632), v18);
  sub_24F3AC968(v17, type metadata accessor for CardLayoutMetrics.CardHeight);
  (*(*(v8 - 496) + 8))(v13, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68);
  sub_24F9233D8();
  v20 = *(v8 - 656);
  v21 = *(v8 - 584);
  v22 = *(v8 - 600);
  v23 = *(v8 - 608);
  v24 = *(v8 - 616);
  sub_24F9261A8();

  (*(*(v8 - 488) + 8))(v18, v21);
  *(v8 - 184) = v21;
  *(v8 - 176) = v22;
  *(v8 - 168) = v23;
  *(v8 - 160) = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = *(v8 - 624);
  sub_24E7896B8(v20, v1, OpaqueTypeConformance2);
  v27 = *(*(v8 - 560) + 8);
  v27(v20, v1);
  sub_24E7896B8(v26, v1, OpaqueTypeConformance2);
  return (v27)(v26, v1);
}

uint64_t sub_24F5C7CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v113 = a1;
  v105 = a5;
  v100 = type metadata accessor for CardPortraitView.Footer();
  v104 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v78 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720);
  v102 = sub_24F924038();
  v103 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v99 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v101 = &v78 - v11;
  v106 = a4;
  v12 = type metadata accessor for CardPortraitView();
  v117 = *(v12 - 8);
  v115 = *(v117 + 64);
  MEMORY[0x28223BE20](v12);
  v96 = &v78 - v13;
  v111 = sub_24F923E98();
  v116 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 - 8);
  MEMORY[0x28223BE20](v16);
  v108 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CardPortraitView.TopAccessory();
  v97 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v78 - v23;
  v110 = sub_24F924038();
  v112 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v107 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v114 = &v78 - v28;
  v92 = *(v12 + 44);
  v29 = *(v18 + 16);
  v93 = v18 + 16;
  v94 = v29;
  v30 = v113;
  v31 = v21;
  v80 = v21;
  (v29)(v21, v113 + v92, a2, v27);
  v32 = *(v15 + 16);
  v90 = v15 + 16;
  v91 = v32;
  v33 = v108;
  v32(v108, v30, a3);
  v88 = *(v12 + 48);
  v34 = v12;
  v35 = *(v116 + 16);
  v116 += 16;
  v89 = v35;
  v36 = v109;
  v35(v109, v30 + v88, v111);
  v37 = v33;
  v78 = a2;
  v38 = v106;
  sub_24F5C8998(v31, v37, v36, a2, a3, v106, type metadata accessor for CardPortraitView.TopAccessory, v24);
  v39 = v117;
  v40 = *(v117 + 16);
  v85 = v117 + 16;
  v86 = v40;
  v41 = v96;
  v40(v96, v30, v12);
  v84 = *(v39 + 80);
  v42 = (v84 + 40) & ~v84;
  v81 = v42;
  v43 = swift_allocObject();
  v43[2] = a2;
  v43[3] = a3;
  v44 = a3;
  v43[4] = v38;
  v45 = *(v39 + 32);
  v117 = v39 + 32;
  v83 = v45;
  v46 = v43 + v42;
  v47 = v41;
  v45(v46, v41, v34);
  WitnessTable = swift_getWitnessTable();
  v82 = sub_24E7DDA4C();
  v49 = v107;
  sub_24E8D5070(MEMORY[0x277D85048], sub_24E8D4880, 0, sub_24F5CB41C, v43, v22, MEMORY[0x277D85048], WitnessTable);

  v97[1](v24, v22);
  v79 = sub_24E602068(&qword_27F21A718, &qword_27F21A720);
  v124[5] = WitnessTable;
  v124[6] = v79;
  v50 = v110;
  v95 = swift_getWitnessTable();
  sub_24E7896B8(v49, v50, v95);
  v51 = *(v112 + 8);
  v87 = v112 + 8;
  v97 = v51;
  (v51)(v49, v50);
  v52 = v113;
  v53 = v80;
  v54 = v78;
  v94(v80, v113 + v92, v78);
  v55 = v108;
  v56 = v44;
  v91(v108, v52, v44);
  v57 = v109;
  v89(v109, v52 + v88, v111);
  v58 = v98;
  v59 = v57;
  v60 = v56;
  v61 = v56;
  v62 = v106;
  sub_24F5C8998(v53, v55, v59, v54, v60, v106, type metadata accessor for CardPortraitView.Footer, v98);
  v86(v47, v52, v34);
  v63 = v81;
  v64 = swift_allocObject();
  *(v64 + 2) = v54;
  *(v64 + 3) = v61;
  *(v64 + 4) = v62;
  v83(&v64[v63], v47, v34);
  v65 = v100;
  v66 = swift_getWitnessTable();
  v67 = v99;
  sub_24E8D5070(MEMORY[0x277D85048], sub_24E8D4880, 0, sub_24F5CB5FC, v64, v65, MEMORY[0x277D85048], v66);

  (*(v104 + 8))(v58, v65);
  v124[3] = v66;
  v124[4] = v79;
  v68 = v102;
  v69 = swift_getWitnessTable();
  v70 = v101;
  sub_24E7896B8(v67, v68, v69);
  v71 = v103;
  v72 = *(v103 + 8);
  v72(v67, v68);
  v73 = v107;
  v74 = v114;
  v75 = v110;
  (*(v112 + 16))(v107, v114, v110);
  v122 = 0;
  v123 = 1;
  v124[0] = v73;
  v124[1] = &v122;
  (*(v71 + 16))(v67, v70, v68);
  v124[2] = v67;
  v121[0] = v75;
  v121[1] = MEMORY[0x277CE1180];
  v121[2] = v68;
  v118 = v95;
  v119 = MEMORY[0x277CE1170];
  v120 = v69;
  sub_24F57BA64(v124, 3uLL, v121);
  v72(v70, v68);
  v76 = v97;
  (v97)(v74, v75);
  v72(v67, v68);
  return (v76)(v73, v75);
}

uint64_t sub_24F5C8840(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for CardPortraitView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68);
  sub_24F9233D8();
  swift_getKeyPath();
  sub_24F3AD224(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  swift_getKeyPath();
  sub_24F91FDA8();

  *(v3 + 16) = v1;
  swift_getKeyPath();
  sub_24F91FD98();
}

uint64_t sub_24F5C8998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v15 = a7(0, a4, a5, a6);
  (*(*(a5 - 8) + 32))(a8 + *(v15 + 44), a2, a5);
  v16 = *(v15 + 48);
  v17 = sub_24F923E98();
  v18 = *(*(v17 - 8) + 32);

  return v18(a8 + v16, a3, v17);
}

uint64_t sub_24F5C8ABC(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for CardPortraitView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68);
  sub_24F9233D8();
  swift_getKeyPath();
  sub_24F3AD224(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  swift_getKeyPath();
  sub_24F91FDA8();

  *(v3 + 32) = v1;
  swift_getKeyPath();
  sub_24F91FD98();
}

uint64_t sub_24F5C8C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a3;
  v38 = a2;
  v47 = a1;
  v45 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v42 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40);
  MEMORY[0x28223BE20](v11);
  v12 = sub_24F927598();
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v46 = &v34 - v16;
  v17 = sub_24E6A4C1C();
  sub_24F924B68();
  v48 = a2;
  v18 = v40;
  v49 = v40;
  v50 = a4;
  v51 = v47;
  v55 = &type metadata for GameOverlayViewPredicate;
  v56 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = AssociatedConformanceWitness;
  sub_24F927578();
  v54[2] = OpaqueTypeConformance2;
  v54[3] = AssociatedConformanceWitness;
  v54[4] = MEMORY[0x277CE1410];
  WitnessTable = swift_getWitnessTable();
  v34 = v14;
  v35 = v12;
  sub_24E7896B8(v14, v12, WitnessTable);
  v21 = v41;
  v39 = *(v41 + 8);
  v39(v14, v12);
  v22 = type metadata accessor for CardPortraitView();
  v23 = v42;
  (*(a4 + 72))(2, v47 + *(v22 + 44), 2, v47 + *(v22 + 48), v18, a4);
  v24 = v43;
  v25 = AssociatedTypeWitness;
  v26 = v36;
  sub_24E7896B8(v23, AssociatedTypeWitness, v36);
  v27 = v44;
  v28 = *(v44 + 8);
  v28(v23, AssociatedTypeWitness);
  v29 = *(v21 + 16);
  v30 = v34;
  v31 = v35;
  v29(v34, v46, v35);
  v55 = v30;
  (*(v27 + 16))(v23, v24, v25);
  v56 = v23;
  v54[0] = v31;
  v54[1] = v25;
  v52 = WitnessTable;
  v53 = v26;
  sub_24F57BA64(&v55, 2uLL, v54);
  v28(v24, v25);
  v32 = v39;
  v39(v46, v31);
  v28(v23, v25);
  return v32(v30, v31);
}

uint64_t sub_24F5C90EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v14 = type metadata accessor for CardPortraitView();
  (*(a4 + 72))(12, a1 + *(v14 + 44), 2, a1 + *(v14 + 48), a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24E7896B8(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = *(v8 + 8);
  v16(v10, AssociatedTypeWitness);
  sub_24E7896B8(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v16)(v13, AssociatedTypeWitness);
}

uint64_t sub_24F5C92AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  v24[1] = sub_24F927808();
  v24[0] = swift_getWitnessTable();
  v6 = sub_24F927018();
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  v12 = type metadata accessor for CardLayoutMetrics(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4;
  v17 = *(v4 + 56);
  v18 = v5;
  v19 = v5;
  v20 = v16;
  v17(v2, 2, v2 + *(a1 + 48), v19, v13);
  v27 = *(a1 + 16);
  v28 = v18;
  v29 = v20;
  v30 = v2;
  v31 = v15;
  sub_24F927008();
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v8, v6, WitnessTable);
  v22 = *(v25 + 8);
  v22(v8, v6);
  sub_24E7896B8(v11, v6, WitnessTable);
  v22(v11, v6);
  return sub_24F3AC968(v15, type metadata accessor for CardLayoutMetrics);
}

uint64_t sub_24F5C9584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v44 = a2;
  v43 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v33 - v9;
  v11 = sub_24F924038();
  v47 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v42 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45 = &v33 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v18);
  v46 = &v33 - v19;
  v20 = type metadata accessor for CardPortraitView.TopAccessory();
  v40 = *(v20 + 44);
  v39 = *(v20 + 48);
  v41 = *(a4 + 72);
  v35 = a3;
  v37 = a4;
  v41(0, a1, 2, a1 + v39, a3, a4);
  v38 = type metadata accessor for CardLayoutMetrics(0);
  v21 = AssociatedTypeWitness;
  v34 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24F926A38();
  v23 = *(v48 + 8);
  v48 += 8;
  v36 = v23;
  v23(v10, v21);
  v55[3] = AssociatedConformanceWitness;
  v55[4] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v25 = v17;
  sub_24E7896B8(v17, v11, WitnessTable);
  v26 = *(v47 + 8);
  v26(v25, v11);
  v41(1, a1, 2, a1 + v39, v35, v37);
  v27 = v45;
  v28 = v34;
  sub_24F926A38();
  v36(v10, v28);
  sub_24E7896B8(v27, v11, WitnessTable);
  v26(v27, v11);
  v29 = v46;
  v30 = *(v47 + 16);
  v30(v27, v46, v11);
  v53 = 0;
  v54 = 1;
  v55[0] = v27;
  v55[1] = &v53;
  v31 = v42;
  v30(v42, v25, v11);
  v55[2] = v31;
  v52[0] = v11;
  v52[1] = MEMORY[0x277CE1180];
  v52[2] = v11;
  v49 = WitnessTable;
  v50 = MEMORY[0x277CE1170];
  v51 = WitnessTable;
  sub_24F57BA64(v55, 3uLL, v52);
  v26(v25, v11);
  v26(v29, v11);
  v26(v31, v11);
  return (v26)(v45, v11);
}

uint64_t sub_24F5C9AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = AssociatedTypeWitness;
  v66 = AssociatedTypeWitness;
  v67 = AssociatedTypeWitness;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();
  swift_getTupleTypeMetadata2();
  v43 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_24F927108();
  v45 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v38 = &v33 - v6;
  v34 = sub_24F924038();
  v46 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v33 - v7;
  type metadata accessor for CardContentBackgroundStyle(255);
  v8 = sub_24F927598();
  v9 = sub_24E6A4C1C();
  v10 = sub_24F3AD224(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v61 = v9;
  v62 = v10;
  v63 = AssociatedConformanceWitness;
  v35 = v8;
  v36 = swift_getWitnessTable();
  v40 = sub_24F924E08();
  v41 = sub_24F924038();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v33 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v39 = &v33 - v14;
  v15 = type metadata accessor for CardLayoutMetrics(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v47;
  (*(v3 + 56))(v47, 2, v47 + *(a1 + 48), v4, v3, v16);
  sub_24F924C98();
  v20 = *(a1 + 16);
  v53 = v20;
  v54 = v4;
  v55 = v3;
  v56 = v19;
  v21 = v38;
  sub_24F9270F8();
  v22 = swift_getWitnessTable();
  v23 = v37;
  sub_24F926A38();
  (*(v45 + 8))(v21, v5);
  v49 = v20;
  v50 = v4;
  v51 = v3;
  v52 = v19;
  sub_24F927618();
  v59 = v22;
  v60 = MEMORY[0x277CDF918];
  v24 = v34;
  v25 = swift_getWitnessTable();
  v26 = v33;
  sub_24F926088();
  (*(v46 + 8))(v23, v24);
  sub_24F3AC968(v18, type metadata accessor for CardLayoutMetrics);
  v27 = swift_getWitnessTable();
  v57 = v25;
  v58 = v27;
  v28 = v41;
  v29 = swift_getWitnessTable();
  v30 = v39;
  sub_24E7896B8(v26, v28, v29);
  v31 = *(v44 + 8);
  v31(v26, v28);
  sub_24E7896B8(v30, v28, v29);
  return (v31)(v30, v28);
}

uint64_t sub_24F5CA1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a1;
  v45 = a5;
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata3();
  v43 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_24F927018();
  v44 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v32 - v12;
  v57 = AssociatedTypeWitness;
  v58 = AssociatedTypeWitness;
  v59 = AssociatedTypeWitness;
  v60 = AssociatedTypeWitness;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  v13 = sub_24F927108();
  v35 = *(v13 - 8);
  v14 = v35;
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  sub_24F924C98();
  v50 = a2;
  v51 = a3;
  v20 = v39;
  v52 = a4;
  v53 = v39;
  sub_24F9270F8();
  v34 = v13;
  v36 = swift_getWitnessTable();
  sub_24E7896B8(v16, v13, v36);
  v37 = *(v14 + 8);
  v38 = v14 + 8;
  v37(v16, v13);
  sub_24F924998();
  v46 = a2;
  v47 = v33;
  v48 = a4;
  v49 = v20;
  v21 = v40;
  sub_24F927008();
  v22 = v9;
  v23 = swift_getWitnessTable();
  v24 = v41;
  sub_24E7896B8(v21, v9, v23);
  v25 = v44;
  v26 = *(v44 + 8);
  v26(v21, v9);
  v27 = v19;
  v28 = v19;
  v29 = v34;
  (*(v35 + 16))(v16, v28, v34);
  v57 = v16;
  (*(v25 + 16))(v21, v24, v22);
  v58 = v21;
  v56[0] = v29;
  v56[1] = v22;
  v54 = v36;
  v55 = v23;
  sub_24F57BA64(&v57, 2uLL, v56);
  v26(v24, v22);
  v30 = v37;
  v37(v27, v29);
  v26(v21, v22);
  return v30(v16, v29);
}

uint64_t sub_24F5CA690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v49 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v48 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v47 = v44 - v10;
  MEMORY[0x28223BE20](v11);
  v55 = v44 - v12;
  MEMORY[0x28223BE20](v13);
  v53 = v44 - v14;
  MEMORY[0x28223BE20](v15);
  v52 = v44 - v16;
  MEMORY[0x28223BE20](v17);
  v51 = v44 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v44 - v20;
  MEMORY[0x28223BE20](v22);
  v54 = v44 - v23;
  v24 = type metadata accessor for CardPortraitView.Footer();
  v25 = *(v24 + 44);
  v45 = *(v24 + 48);
  v58 = *(a3 + 72);
  v59 = a3 + 72;
  v44[1] = v25;
  v57 = a3;
  v58(4, a1, 2, a1 + v45, a2, a3);
  v44[0] = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v50 = AssociatedConformanceWitness;
  sub_24E7896B8(v21, AssociatedTypeWitness, AssociatedConformanceWitness);
  v27 = *(v56 + 8);
  v46 = v21;
  v27(v21, AssociatedTypeWitness);
  v28 = v45;
  v29 = v51;
  v58(7, a1, 2, a1 + v45, a2, v57);
  sub_24E7896B8(v29, AssociatedTypeWitness, AssociatedConformanceWitness);
  v27(v29, AssociatedTypeWitness);
  v30 = v28;
  v31 = a1 + v28;
  v32 = v52;
  v33 = v44[0];
  v58(8, a1, 2, v31, v44[0], v57);
  v34 = v50;
  sub_24E7896B8(v32, AssociatedTypeWitness, v50);
  v27(v32, AssociatedTypeWitness);
  v35 = v53;
  v58(10, a1, 2, a1 + v30, v33, v57);
  v36 = v52;
  sub_24E7896B8(v35, AssociatedTypeWitness, v34);
  v27(v35, AssociatedTypeWitness);
  v37 = *(v56 + 16);
  v37(v35, v54, AssociatedTypeWitness);
  v65[0] = v35;
  v38 = v55;
  v39 = v46;
  v37(v55, v46, AssociatedTypeWitness);
  v65[1] = v38;
  v40 = v47;
  v41 = v51;
  v37(v47, v51, AssociatedTypeWitness);
  v65[2] = v40;
  v42 = v48;
  v37(v48, v36, AssociatedTypeWitness);
  v65[3] = v42;
  v64[0] = AssociatedTypeWitness;
  v64[1] = AssociatedTypeWitness;
  v64[2] = AssociatedTypeWitness;
  v64[3] = AssociatedTypeWitness;
  v60 = v50;
  v61 = v50;
  v62 = v50;
  v63 = v50;
  sub_24F57BA64(v65, 4uLL, v64);
  v27(v36, AssociatedTypeWitness);
  v27(v41, AssociatedTypeWitness);
  v27(v39, AssociatedTypeWitness);
  v27(v54, AssociatedTypeWitness);
  v27(v42, AssociatedTypeWitness);
  v27(v40, AssociatedTypeWitness);
  v27(v55, AssociatedTypeWitness);
  return (v27)(v53, AssociatedTypeWitness);
}

uint64_t sub_24F5CABFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v31 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v30 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  MEMORY[0x28223BE20](v15);
  v29 = &v25 - v16;
  v25 = a2;
  v17 = type metadata accessor for CardPortraitView.Footer();
  v18 = *(v17 + 44);
  v26 = *(v17 + 48);
  v27 = v18;
  v28 = *(a3 + 72);
  v28(13, a1, 2, a1 + v26, a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24E7896B8(v14, AssociatedTypeWitness, AssociatedConformanceWitness);
  v20 = *(v32 + 8);
  v20(v14, AssociatedTypeWitness);
  v28(3, a1, 2, a1 + v26, v25, a3);
  sub_24E7896B8(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  v20(v11, AssociatedTypeWitness);
  v21 = *(v32 + 16);
  v22 = v29;
  v21(v11, v29, AssociatedTypeWitness);
  v37 = 0;
  v38 = 1;
  v39[0] = v11;
  v39[1] = &v37;
  v23 = v30;
  v21(v30, v14, AssociatedTypeWitness);
  v39[2] = v23;
  v36[0] = AssociatedTypeWitness;
  v36[1] = MEMORY[0x277CE1180];
  v36[2] = AssociatedTypeWitness;
  v33 = AssociatedConformanceWitness;
  v34 = MEMORY[0x277CE1170];
  v35 = AssociatedConformanceWitness;
  sub_24F57BA64(v39, 3uLL, v36);
  v20(v14, AssociatedTypeWitness);
  v20(v22, AssociatedTypeWitness);
  v20(v23, AssociatedTypeWitness);
  return (v20)(v11, AssociatedTypeWitness);
}

uint64_t sub_24F5CAF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22[1] = a5;
  type metadata accessor for CardContentBackgroundStyle(255);
  swift_getAssociatedTypeWitness();
  v9 = sub_24F927598();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v22 - v14;
  v22[4] = a2;
  v22[5] = a3;
  v22[6] = a4;
  v22[7] = a1;
  v16 = sub_24E6A4C1C();
  v20 = sub_24F3AD224(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24F927568();
  v22[9] = v16;
  v22[10] = v20;
  v22[11] = AssociatedConformanceWitness;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v12, v9, WitnessTable);
  v18 = *(v10 + 8);
  v18(v12, v9);
  sub_24E7896B8(v15, v9, WitnessTable);
  return (v18)(v15, v9);
}

uint64_t sub_24F5CB1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v14 = type metadata accessor for CardPortraitView.Footer();
  (*(a4 + 72))(11, a1, 2, a1 + *(v14 + 48), a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24E7896B8(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = *(v8 + 8);
  v16(v10, AssociatedTypeWitness);
  sub_24E7896B8(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v16)(v13, AssociatedTypeWitness);
}

uint64_t sub_24F5CB374()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_6Tm_3()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (type metadata accessor for CardPortraitView() - 8);
  v4 = v0 + ((*(*v3 + 80) + 40) & ~*(*v3 + 80));
  (*(*(v2 - 8) + 8))(v4, v2);
  (*(*(v1 - 8) + 8))(v4 + v3[13], v1);
  v5 = v3[14];
  v6 = sub_24F923E98();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v4 + v3[15];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220BD8);
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220C70);

  return swift_deallocObject();
}

uint64_t sub_24F5CB614(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(type metadata accessor for CardPortraitView() - 8);
  v8 = v2 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  return a2(a1, v8, v4, v5, v6);
}

uint64_t sub_24F5CB6D0()
{
  type metadata accessor for CardPortraitView.TopAccessory();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720);
  sub_24F924038();
  type metadata accessor for CardPortraitView.Footer();
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40);
  swift_getAssociatedTypeWitness();
  sub_24F927598();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E040);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170A0);
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E6A4C1C();
  sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F217098, &qword_27F2170A0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24E6BC1C8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CardHeightViewModifier(255);
  sub_24F924038();
  type metadata accessor for CardSafeArea(255);
  swift_getOpaqueTypeConformance2();
  sub_24F3AD224(&qword_27F217CC0, type metadata accessor for CardHeightViewModifier);
  swift_getWitnessTable();
  sub_24F3AD224(&qword_27F214D10, type metadata accessor for CardSafeArea);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F5CBC0C()
{
  swift_getAssociatedTypeWitness();
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();

  return swift_getWitnessTable();
}

uint64_t sub_24F5CBCDC()
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  type metadata accessor for CardContentBackgroundStyle(255);
  sub_24F927598();
  sub_24E6A4C1C();
  sub_24F3AD224(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24F5CBFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v7 = sub_24F9204D8();
  v6[28] = v7;
  v6[29] = *(v7 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v8 = type metadata accessor for ActivityDefinitionDetail();
  v6[32] = v8;
  v6[33] = *(v8 - 8);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0);
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E00) - 8);
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C048);
  v6[42] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E08);
  v6[43] = v9;
  v6[44] = *(v9 - 8);
  v6[45] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  v6[46] = v10;
  v11 = *(v10 - 8);
  v6[47] = v11;
  v6[48] = *(v11 + 64);
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F5CC2E8, 0, 0);
}

uint64_t sub_24F5CC2E8()
{

  sub_24F920EF8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  *(v0 + 408) = v1;
  v2 = swift_task_alloc();
  *(v0 + 416) = v2;
  *v2 = v0;
  v2[1] = sub_24F5CC3D0;

  return MEMORY[0x28217F228](v0 + 56, v1, v1);
}

uint64_t sub_24F5CC3D0()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_24F5CC6E0;
  }

  else
  {
    v2 = sub_24F5CC4E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F5CC4E4()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920528();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[54] = v3;
  *v3 = v0;
  v3[1] = sub_24F5CC5CC;
  v4 = v0[50];

  return MEMORY[0x282164988](v4, v1, v2);
}

uint64_t sub_24F5CC5CC()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_24F5CDB18;
  }

  else
  {
    v2 = sub_24F5CC940;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F5CC6E0()
{
  v1 = v0[53];
  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8B0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "GameActivityDefinitionDataIntentImplementation error: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[50];
  v11 = v4;
  v13 = v0[46];
  v12 = v0[47];

  swift_willThrow();
  (*(v12 + 8))(v10, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24F5CC940()
{
  v1 = v0[49];
  v2 = v0[50];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[46];
  v6 = v0[42];
  v7 = v0[26];
  v8 = v0[27];
  v9 = v0[24];
  v17 = v0[23];
  v18 = v0[25];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v10 = sub_24F921038();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  (*(v4 + 16))(v1, v2, v5);
  v11 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  (*(v4 + 32))(v12 + v11, v1, v5);
  v13 = (v12 + ((v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v17;
  v13[1] = v9;
  v13[2] = v18;
  v13[3] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E10);
  sub_24EF6D3E0(&qword_27F234E18);
  sub_24EF6D3E0(&qword_27F234E20);
  sub_24F920A28();
  v14 = swift_task_alloc();
  v0[56] = v14;
  *v14 = v0;
  v14[1] = sub_24F5CCB88;
  v15 = v0[43];

  return MEMORY[0x282164EA8](v15);
}

uint64_t sub_24F5CCB88(uint64_t a1)
{
  v3 = *v2;
  v3[57] = a1;
  v3[58] = v1;

  if (v1)
  {
    (*(v3[44] + 8))(v3[45], v3[43]);

    return MEMORY[0x2822009F8](sub_24F5CDD80, 0, 0);
  }

  else
  {
    (*(v3[44] + 8))(v3[45], v3[43]);
    v4 = swift_task_alloc();
    v3[59] = v4;
    *v4 = v3;
    v4[1] = sub_24F5CCD38;
    v5 = v3[51];

    return MEMORY[0x28217F228](v3 + 17, v5, v5);
  }
}

uint64_t sub_24F5CCD38()
{
  *(*v1 + 480) = v0;

  if (v0)
  {

    v2 = sub_24F5CD078;
  }

  else
  {
    v2 = sub_24F5CCE54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F5CCE54()
{
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  sub_24F920528();
  __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  v3 = swift_task_alloc();
  v0[61] = v3;
  *v3 = v0;
  v3[1] = sub_24F5CCF3C;
  v4 = v0[57];

  return MEMORY[0x282164998](v4, v1, v2);
}

uint64_t sub_24F5CCF3C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 496) = a1;
  *(v3 + 504) = v1;

  if (v1)
  {
    v4 = sub_24F5CDFE0;
  }

  else
  {
    v4 = sub_24F5CD2D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F5CD078()
{
  v1 = v0[60];
  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8B0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "GameActivityDefinitionDataIntentImplementation error: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[50];
  v11 = v4;
  v13 = v0[46];
  v12 = v0[47];

  swift_willThrow();
  (*(v12 + 8))(v10, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24F5CD2D8()
{
  v77 = v0;
  v1 = v0[62];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[39];
    v72 = v0[33];
    v4 = v0[29];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    v7 = (v4 + 48);
    v67 = (v4 + 16);
    v68 = (v4 + 32);
    v66 = (v4 + 8);
    v74 = MEMORY[0x277D84F90];
    v8 = &qword_27F234E00;
    v69 = (v4 + 48);
    v70 = v6;
    do
    {
      v10 = v0[40];
      v9 = v0[41];
      v11 = v0[28];
      sub_24E60169C(v5, v9, v8);
      sub_24E60169C(v9, v10, v8);
      v12 = (*v7)(v10, 1, v11);
      v14 = v0[40];
      v13 = v0[41];
      if (v12 == 1)
      {
        sub_24E601704(v0[41], v8);
        sub_24E601704(v14, v8);
      }

      else
      {
        v15 = v0;
        v16 = v0[36];
        v17 = v8;
        v19 = v15[30];
        v18 = v15[31];
        v20 = v15[28];
        (*v68)(v18, v14, v20);
        (*v67)(v19, v18, v20);
        v21 = v19;
        v8 = v17;
        ActivityDefinitionDetail.init(def:)(v21, v16);
        (*v66)(v18, v20);
        sub_24E601704(v13, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = sub_24E619900(0, v74[2] + 1, 1, v74);
        }

        v23 = v74[2];
        v22 = v74[3];
        v7 = v69;
        v0 = v65;
        if (v23 >= v22 >> 1)
        {
          v74 = sub_24E619900(v22 > 1, v23 + 1, 1, v74);
        }

        v24 = v65[36];
        v74[2] = v23 + 1;
        sub_24EF1EB34(v24, v74 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v23);
        v6 = v70;
      }

      v5 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {

    v74 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  if (v74[2])
  {
    v25 = *(v0[33] + 80);
    sub_24EF6D508(v74 + ((v25 + 32) & ~v25), v0[38]);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v28 = v0[37];
  v27 = v0[38];
  v29 = v0[32];
  v30 = v0[33];

  v31 = *(v30 + 56);
  v31(v27, v26, 1, v29);
  sub_24E60169C(v27, v28, &qword_27F2142A0);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    v32 = v0[38];
    sub_24E601704(v0[37], &qword_27F2142A0);
    sub_24F5CE90C();
    v33 = swift_allocError();
    swift_willThrow();
    sub_24E601704(v32, &qword_27F2142A0);
    if (qword_27F211420 != -1)
    {
      swift_once();
    }

    v34 = sub_24F9220D8();
    __swift_project_value_buffer(v34, qword_27F39E8B0);
    v35 = v33;
    v36 = sub_24F9220B8();
    v37 = sub_24F92BDB8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = v33;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_24E5DD000, v36, v37, "GameActivityDefinitionDataIntentImplementation error: %@", v38, 0xCu);
      sub_24E601704(v39, &qword_27F227B20);
      MEMORY[0x2530542D0](v39, -1, -1);
      MEMORY[0x2530542D0](v38, -1, -1);
    }

    v42 = v0[50];
    v44 = v0[46];
    v43 = v0[47];

    swift_willThrow();
    (*(v43 + 8))(v42, v44);

    v45 = v0[1];
  }

  else
  {
    v75 = v31;
    sub_24EF1EB34(v0[37], v0[35]);
    if (qword_27F211420 != -1)
    {
      swift_once();
    }

    v46 = v0[34];
    v47 = v0[35];
    v48 = sub_24F9220D8();
    __swift_project_value_buffer(v48, qword_27F39E8B0);
    sub_24EF6D508(v47, v46);
    v49 = sub_24F9220B8();
    v50 = sub_24F92BDB8();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v0[50];
    v54 = v0[46];
    v53 = v0[47];
    v55 = v0[38];
    v56 = v0[34];
    if (v51)
    {
      v73 = v0[46];
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v76 = v58;
      *v57 = 136315138;
      v71 = v52;
      v60 = *v56;
      v59 = v56[1];

      sub_24EF6D56C(v56);
      v61 = sub_24E7620D4(v60, v59, &v76);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_24E5DD000, v49, v50, "GameActivityDefinitionDataIntentImplementation returning activity %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x2530542D0](v58, -1, -1);
      MEMORY[0x2530542D0](v57, -1, -1);

      sub_24E601704(v55, &qword_27F2142A0);
      (*(v53 + 8))(v71, v73);
    }

    else
    {

      sub_24EF6D56C(v56);
      sub_24E601704(v55, &qword_27F2142A0);
      (*(v53 + 8))(v52, v54);
    }

    v62 = v0[32];
    v63 = v0[22];
    sub_24EF1EB34(v0[35], v63);
    v75(v63, 0, 1, v62);

    v45 = v0[1];
  }

  return v45();
}

uint64_t sub_24F5CDB18()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[55];
  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8B0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "GameActivityDefinitionDataIntentImplementation error: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[50];
  v11 = v4;
  v13 = v0[46];
  v12 = v0[47];

  swift_willThrow();
  (*(v12 + 8))(v10, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24F5CDD80()
{
  v1 = v0[58];
  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8B0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "GameActivityDefinitionDataIntentImplementation error: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[50];
  v11 = v4;
  v13 = v0[46];
  v12 = v0[47];

  swift_willThrow();
  (*(v12 + 8))(v10, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24F5CDFE0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  v1 = v0[63];
  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8B0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "GameActivityDefinitionDataIntentImplementation error: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[50];
  v11 = v4;
  v13 = v0[46];
  v12 = v0[47];

  swift_willThrow();
  (*(v12 + 8))(v10, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24F5CE248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a2;
  v8[14] = a4;
  v8[12] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  v10 = swift_task_alloc();
  v8[17] = v10;
  *v10 = v8;
  v10[1] = sub_24F5CE310;

  return MEMORY[0x28217F228](v8 + 7, v9, v9);
}

uint64_t sub_24F5CE310()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24E77F8B0;
  }

  else
  {
    v2 = sub_24F5CE424;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F5CE424()
{
  v2 = v0[15];
  v1 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920528();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2498C0);
  v5 = *(sub_24F920648() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v0[19] = v7;
  *(v7 + 16) = xmmword_24F93DE60;
  v8 = (v7 + v6);
  *v8 = v2;
  v8[1] = v1;
  (*(v5 + 104))();

  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_24E77FAD4;
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[12];

  return MEMORY[0x282164978](v12, v10, v7, v11, v3, v4);
}

uint64_t sub_24F5CE5FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24E614970;

  return sub_24F5CBFD0(a1, v6, v7, v8, v9, a3);
}

uint64_t sub_24F5CE6C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F5CE7B4(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v2 + 16);
  v10 = (v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_24E614970;

  return sub_24F5CE248(a1, a2, v9, v2 + v8, v11, v12, v13, v14);
}

unint64_t sub_24F5CE90C()
{
  result = qword_27F2498B8;
  if (!qword_27F2498B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2498B8);
  }

  return result;
}

unint64_t sub_24F5CE974()
{
  result = qword_27F2498C8;
  if (!qword_27F2498C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2498C8);
  }

  return result;
}

uint64_t AchievementProgressStatus.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = v1;
  v41 = a1;
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AchievementProgressStatus(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F5D1F48(v3, v10, type metadata accessor for AchievementProgressStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      inited = swift_initStackObject();
      v24 = inited;
      *(inited + 16) = xmmword_24F93A400;
      *(inited + 32) = 0x646E696B24;
      v25 = MEMORY[0x277D22580];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 80) = v25;
      v26 = 0x64656B636F6CLL;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      inited = swift_initStackObject();
      v24 = inited;
      *(inited + 16) = xmmword_24F93A400;
      *(inited + 32) = 0x646E696B24;
      v36 = MEMORY[0x277D22580];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 80) = v36;
      v26 = 0x6E6564646968;
    }

    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v26;
    *(inited + 56) = 0xE600000000000000;
    *(inited + 88) = v26;
    *(inited + 96) = 0xE600000000000000;
    v24[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
    v24[17] = sub_24EA14AE4(&qword_27F21BD70, &qword_27F227A20);
    v24[13] = MEMORY[0x277D84F98];
    v37 = sub_24E607E40(v24);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
    swift_arrayDestroy();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
    v39 = v41;
    v41[3] = v38;
    result = sub_24E6060B8();
    v39[4] = result;
    *v39 = v37;
  }

  else
  {
    v40[0] = v2;
    if (EnumCaseMultiPayload)
    {
      v27 = *v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_24F93A400;
      *(v28 + 32) = 0x646E696B24;
      v29 = MEMORY[0x277D22580];
      *(v28 + 72) = MEMORY[0x277D837D0];
      *(v28 + 80) = v29;
      *(v28 + 40) = 0xE500000000000000;
      *(v28 + 48) = 0x6572676F72506E69;
      *(v28 + 56) = 0xEA00000000007373;
      *(v28 + 88) = 0x6572676F72506E69;
      *(v28 + 96) = 0xEA00000000007373;
      v30 = swift_initStackObject();
      *(v30 + 32) = 0x43746E6563726570;
      *(v30 + 16) = xmmword_24F93DE60;
      *(v30 + 40) = 0xEF6574656C706D6FLL;
      *(v30 + 72) = MEMORY[0x277D83B88];
      *(v30 + 80) = sub_24E65901C();
      *(v30 + 48) = v27;
      v31 = sub_24E607E40(v30);
      swift_setDeallocating();
      sub_24E601704(v30 + 32, &qword_27F212FB0);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
      *(v28 + 128) = v32;
      v33 = sub_24E6060B8();
      *(v28 + 136) = v33;
      *(v28 + 104) = v31;
      v34 = sub_24E607E40(v28);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
      result = swift_arrayDestroy();
      v35 = v41;
      v41[3] = v32;
      v35[4] = v33;
      *v35 = v34;
    }

    else
    {
      (*(v5 + 32))(v7, v10, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_24F93A400;
      *(v12 + 32) = 0x646E696B24;
      v13 = MEMORY[0x277D22580];
      *(v12 + 72) = MEMORY[0x277D837D0];
      *(v12 + 80) = v13;
      *(v12 + 40) = 0xE500000000000000;
      *(v12 + 48) = 0x6574656C706D6F63;
      *(v12 + 56) = 0xE900000000000064;
      *(v12 + 88) = 0x6574656C706D6F63;
      *(v12 + 96) = 0xE900000000000064;
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_24F93DE60;
      strcpy((v14 + 32), "completedDate");
      *(v14 + 46) = -4864;
      v15 = MEMORY[0x277D21908];
      *(v14 + 72) = v4;
      *(v14 + 80) = v15;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v14 + 48));
      (*(v5 + 16))(boxed_opaque_existential_1, v7, v4);
      v17 = sub_24E607E40(v14);
      swift_setDeallocating();
      sub_24E601704(v14 + 32, &qword_27F212FB0);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
      *(v12 + 128) = v18;
      v19 = sub_24E6060B8();
      *(v12 + 136) = v19;
      *(v12 + 104) = v17;
      v20 = sub_24E607E40(v12);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
      swift_arrayDestroy();
      v21 = v41;
      v41[3] = v18;
      v21[4] = v19;
      *v21 = v20;
      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

uint64_t sub_24F5CF028()
{
  v1 = 0x6574656C706D6F63;
  v2 = 0x64656B636F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x6E6564646968;
  }

  if (*v0)
  {
    v1 = 0x6572676F72506E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24F5CF0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F5D2BA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F5CF0CC(uint64_t a1)
{
  v2 = sub_24F5D1AB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5CF108(uint64_t a1)
{
  v2 = sub_24F5D1AB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F5CF168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574656C706D6F63 && a2 == 0xED00006574614464)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F5CF1F8(uint64_t a1)
{
  v2 = sub_24F5D1C00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5CF234(uint64_t a1)
{
  v2 = sub_24F5D1C00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F5CF270(uint64_t a1)
{
  v2 = sub_24F5D1B04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5CF2AC(uint64_t a1)
{
  v2 = sub_24F5D1B04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F5CF30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x43746E6563726570 && a2 == 0xEF6574656C706D6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F5CF39C(uint64_t a1)
{
  v2 = sub_24F5D1BAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5CF3D8(uint64_t a1)
{
  v2 = sub_24F5D1BAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F5CF414(uint64_t a1)
{
  v2 = sub_24F5D1B58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5CF450(uint64_t a1)
{
  v2 = sub_24F5D1B58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AchievementProgressStatus.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2498D0);
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v25 - v3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2498D8);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v28 = &v25 - v4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2498E0);
  v27 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v6 = &v25 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2498E8);
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v25 = &v25 - v7;
  v29 = sub_24F91F648();
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AchievementProgressStatus(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2498F0);
  v39 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5D1AB0();
  sub_24F92D128();
  sub_24F5D1F48(v38, v12, type metadata accessor for AchievementProgressStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v42 = 2;
      sub_24F5D1B58();
      v21 = v28;
      sub_24F92CC98();
      (*(v32 + 8))(v21, v34);
    }

    else
    {
      v43 = 3;
      sub_24F5D1B04();
      v23 = v35;
      sub_24F92CC98();
      (*(v36 + 8))(v23, v37);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v41 = 1;
    sub_24F5D1BAC();
    sub_24F92CC98();
    v22 = v30;
    sub_24F92CD38();
    (*(v27 + 8))(v6, v22);
  }

  else
  {
    v17 = v26;
    v18 = v29;
    (*(v26 + 32))(v9, v12, v29);
    v40 = 0;
    sub_24F5D1C00();
    v19 = v25;
    sub_24F92CC98();
    sub_24F5D1CB8(&qword_27F21BB08, MEMORY[0x277CC9578]);
    v20 = v33;
    sub_24F92CD48();
    (*(v31 + 8))(v19, v20);
    (*(v17 + 8))(v9, v18);
  }

  return (*(v39 + 8))(v15, v13);
}

uint64_t AchievementProgressStatus.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249920);
  v50 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v60 = &v44 - v3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249928);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v59 = &v44 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249930);
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v57 = &v44 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249938);
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v7 = &v44 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249940);
  v62 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v9 = &v44 - v8;
  v10 = type metadata accessor for AchievementProgressStatus(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v19 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24F5D1AB0();
  v20 = v63;
  sub_24F92D108();
  if (!v20)
  {
    v45 = v12;
    v46 = v15;
    v47 = v7;
    v21 = v59;
    v22 = v60;
    v48 = v18;
    v63 = v10;
    v23 = v61;
    v24 = v58;
    v25 = sub_24F92CC78();
    v26 = (2 * *(v25 + 16)) | 1;
    v65 = v25;
    v66 = v25 + 32;
    v67 = 0;
    v68 = v26;
    v27 = sub_24E643440();
    if (v27 == 4 || v67 != v68 >> 1)
    {
      v32 = sub_24F92C918();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
      *v34 = v63;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
      (*(v62 + 8))(v9, v24);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v27 > 1u)
      {
        v36 = v62;
        if (v27 == 2)
        {
          v69 = 2;
          sub_24F5D1B58();
          sub_24F92CBA8();
          (*(v53 + 8))(v21, v55);
        }

        else
        {
          v69 = 3;
          sub_24F5D1B04();
          sub_24F92CBA8();
          (*(v50 + 8))(v22, v56);
        }

        (*(v36 + 8))(v9, v24);
        swift_unknownObjectRelease();
        v37 = v48;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        if (v27)
        {
          v69 = 1;
          sub_24F5D1BAC();
          v38 = v57;
          sub_24F92CBA8();
          v39 = v54;
          v40 = sub_24F92CC58();
          v41 = v62;
          v42 = v40;
          (*(v52 + 8))(v38, v39);
          (*(v41 + 8))(v9, v24);
          swift_unknownObjectRelease();
          v43 = v45;
          *v45 = v42;
          swift_storeEnumTagMultiPayload();
          v31 = v43;
        }

        else
        {
          v69 = 0;
          sub_24F5D1C00();
          v28 = v47;
          sub_24F92CBA8();
          sub_24F91F648();
          sub_24F5D1CB8(&qword_27F21B778, MEMORY[0x277CC9578]);
          v29 = v46;
          v30 = v51;
          sub_24F92CC68();
          (*(v49 + 8))(v28, v30);
          (*(v62 + 8))(v9, v24);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v31 = v29;
        }

        v37 = v48;
        sub_24F5D1C54(v31, v48);
      }

      sub_24F5D1C54(v37, v23);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v64);
}

unint64_t Achievement.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v59 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030);
  MEMORY[0x28223BE20](v2 - 8);
  v58 = v54 - v3;
  v4 = type metadata accessor for AchievementProgressStatus(0);
  MEMORY[0x28223BE20](v4);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9C5960;
  *(inited + 32) = 0x696669746E656469;
  v57 = inited + 32;
  *(inited + 40) = 0xEA00000000007265;
  v8 = *v1;
  v9 = v1[1];
  v10 = MEMORY[0x277D837D0];
  v11 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v11;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  v54[1] = v9;
  *(inited + 88) = 0x656C746974;
  *(inited + 96) = 0xE500000000000000;
  v12 = v1[2];
  v13 = v1[3];
  *(inited + 128) = v10;
  *(inited + 136) = v11;
  *(inited + 104) = v12;
  *(inited + 112) = v13;
  v55 = v13;
  *(inited + 144) = 0x7470697263736564;
  *(inited + 152) = 0xEB000000006E6F69;
  v14 = v1[4];
  v15 = v1[5];
  *(inited + 184) = v10;
  *(inited + 192) = v11;
  *(inited + 160) = v14;
  *(inited + 168) = v15;
  v56 = v15;
  *(inited + 200) = 0x6B726F77747261;
  *(inited + 208) = 0xE700000000000000;
  v16 = type metadata accessor for Achievement(0);
  v17 = v16[7];
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  *(inited + 248) = sub_24E7F1D38();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E60169C(v1 + v17, boxed_opaque_existential_1, &qword_27F213FB0);
  strcpy((inited + 256), "progressStatus");
  *(inited + 271) = -18;
  v19 = v16[8];
  *(inited + 296) = v4;
  *(inited + 304) = sub_24F5D1CB8(&qword_27F249948, type metadata accessor for AchievementProgressStatus);
  v20 = __swift_allocate_boxed_opaque_existential_1((inited + 272));
  sub_24F5D1F48(v1 + v19, v20, type metadata accessor for AchievementProgressStatus);
  *(inited + 312) = 0x656C706D6F437369;
  *(inited + 320) = 0xEB00000000646574;
  sub_24F5D1F48(v1 + v19, v6, type metadata accessor for AchievementProgressStatus);
  if (swift_getEnumCaseMultiPayload())
  {

    v23 = 0;
  }

  else
  {
    v21 = sub_24F91F648();
    v22 = *(*(v21 - 8) + 8);

    v22(v6, v21);
    v23 = 1;
  }

  v24 = MEMORY[0x277D22598];
  *(inited + 352) = MEMORY[0x277D839B0];
  *(inited + 360) = v24;
  *(inited + 328) = v23;
  strcpy((inited + 368), "rarityPercent");
  *(inited + 382) = -4864;
  v25 = v1 + v16[9];
  v26 = *v25;
  v27 = v25[8];
  *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E320);
  v28 = sub_24F5D1D20();
  *(inited + 384) = v26;
  *(inited + 392) = v27;
  *(inited + 416) = v28;
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x800000024FA75D70;
  v56 = *(v1 + v16[10]);
  v29 = v56;
  *(inited + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249950);
  v30 = sub_24F5D1D9C();
  *(inited + 440) = v29;
  *(inited + 472) = v30;
  *(inited + 480) = 0xD000000000000016;
  *(inited + 488) = 0x800000024FA76F00;
  v31 = (v1 + v16[11]);
  v33 = *v31;
  v55 = v31[1];
  v32 = v55;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 520) = v34;
  v35 = sub_24EA14AE4(&qword_27F212F10, &unk_27F23B740);
  *(inited + 528) = v35;
  *(inited + 496) = v33;
  *(inited + 504) = v32;
  v36 = v34;
  *(inited + 536) = 0xD000000000000012;
  *(inited + 544) = 0x800000024FA6E4C0;
  v37 = (v1 + v16[12]);
  v38 = *v37;
  v39 = v37[1];
  *(inited + 576) = v34;
  *(inited + 584) = v35;
  *(inited + 552) = v38;
  *(inited + 560) = v39;
  *(inited + 592) = 0xD000000000000012;
  *(inited + 600) = 0x800000024FA6E530;
  v40 = *(v1 + v16[13]);
  *(inited + 632) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225228);
  *(inited + 640) = sub_24EA14930();
  *(inited + 608) = v40;
  strcpy((inited + 648), "releaseState");
  *(inited + 661) = 0;
  *(inited + 662) = -5120;
  v41 = v1 + v16[14];
  v42 = v58;
  sub_24E60169C(v41, v58, &qword_27F219030);
  v43 = sub_24F920818();
  v44 = *(v43 - 8);
  v45 = (*(v44 + 48))(v42, 1, v43);

  if (v45 == 1)
  {
    sub_24E601704(v42, &qword_27F219030);
    v46 = 0;
    v47 = 0;
  }

  else
  {
    v48 = v42;
    v46 = sub_24F920808();
    v47 = v49;
    (*(v44 + 8))(v48, v43);
  }

  *(inited + 688) = v36;
  *(inited + 696) = v35;
  *(inited + 664) = v46;
  *(inited + 672) = v47;
  v50 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  v52 = v59;
  v59[3] = v51;
  result = sub_24E6060B8();
  v52[4] = result;
  *v52 = v50;
  return result;
}

unint64_t sub_24F5D0A60(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x696669746E656469;
    v7 = 0x7470697263736564;
    v8 = 0x6B726F77747261;
    if (a1 != 3)
    {
      v8 = 0x73736572676F7270;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000012;
    v2 = 0xD000000000000012;
    if (a1 != 9)
    {
      v2 = 0x53657361656C6572;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6550797469726172;
    v4 = 0xD000000000000012;
    if (a1 != 6)
    {
      v4 = 0xD000000000000016;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24F5D0BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F5D2D14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F5D0C20(uint64_t a1)
{
  v2 = sub_24F5D1E58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5D0C5C(uint64_t a1)
{
  v2 = sub_24F5D1E58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Achievement.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249970);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5D1E58();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_24F92CD08();
    LOBYTE(v12) = 2;
    sub_24F92CD08();
    v9 = type metadata accessor for Achievement(0);
    LOBYTE(v12) = 3;
    sub_24F9289E8();
    sub_24F5D1CB8(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CCF8();
    LOBYTE(v12) = 4;
    type metadata accessor for AchievementProgressStatus(0);
    sub_24F5D1CB8(&qword_27F2463F0, type metadata accessor for AchievementProgressStatus);
    sub_24F92CD48();
    LOBYTE(v12) = 5;
    sub_24F92CCC8();
    v12 = *(v3 + *(v9 + 40));
    HIBYTE(v11) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2462A0);
    sub_24F5D1EAC(&qword_27F2463E0, &qword_27F2463E8);
    sub_24F92CCF8();
    LOBYTE(v12) = 7;
    sub_24F92CCA8();
    LOBYTE(v12) = 8;
    sub_24F92CCA8();
    v12 = *(v3 + *(v9 + 52));
    HIBYTE(v11) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
    sub_24E6D0A9C(&qword_27F218308);
    sub_24F92CCF8();
    LOBYTE(v12) = 10;
    sub_24F920818();
    sub_24F5D1CB8(&qword_27F21E360, MEMORY[0x277D0CF00]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Achievement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v52 - v4;
  v5 = type metadata accessor for AchievementProgressStatus(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249980);
  v12 = *(v11 - 8);
  v56 = v11;
  v57 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - v13;
  v15 = type metadata accessor for Achievement(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24F5D1E58();
  v58 = v14;
  v19 = v59;
  sub_24F92D108();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v53 = v15;
  LOBYTE(v62) = 0;
  v20 = v56;
  v22 = v17;
  *v17 = sub_24F92CC28();
  v17[1] = v23;
  LOBYTE(v62) = 1;
  v17[2] = sub_24F92CC28();
  v17[3] = v25;
  LOBYTE(v62) = 2;
  v52 = 0;
  v26 = sub_24F92CC28();
  v59 = 0;
  v17[4] = v26;
  v17[5] = v30;
  sub_24F9289E8();
  LOBYTE(v62) = 3;
  sub_24F5D1CB8(&qword_27F214018, MEMORY[0x277D21C48]);
  v31 = v59;
  sub_24F92CC18();
  v59 = v31;
  if (v31)
  {
    (*(v57 + 8))(v58, v20);
    v32 = 0;
    v33 = 0;
    v27 = v52;
    v24 = v53;
    goto LABEL_5;
  }

  v34 = v53;
  sub_24E6009C8(v10, v17 + v53[7], &qword_27F213FB0);
  LOBYTE(v62) = 4;
  sub_24F5D1CB8(&qword_27F2463D0, type metadata accessor for AchievementProgressStatus);
  v35 = v59;
  sub_24F92CC68();
  v59 = v35;
  if (v35)
  {
    v24 = v34;
    (*(v57 + 8))(v58, v20);
    v33 = 0;
    v32 = 1;
LABEL_4:
    v27 = v52;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v60);

    if (!v27)
    {
    }

    if (v32)
    {
      result = sub_24E601704(v22 + v24[7], &qword_27F213FB0);
      if ((v33 & 1) == 0)
      {
        return result;
      }
    }

    else if (!v33)
    {
      return result;
    }

    v28 = type metadata accessor for AchievementProgressStatus;
    v29 = v22 + v24[8];
    return sub_24F5D1FB0(v29, v28);
  }

  sub_24F5D1C54(v7, v17 + v34[8]);
  LOBYTE(v62) = 5;
  v36 = v59;
  v37 = sub_24F92CBE8();
  v59 = v36;
  v39 = v57;
  v24 = v34;
  if (v36)
  {
LABEL_21:
    (*(v39 + 8))(v58, v20);
    v32 = 1;
    v33 = 1;
    goto LABEL_4;
  }

  v40 = v17 + v34[9];
  *v40 = v37;
  v40[8] = v38 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2462A0);
  v61 = 6;
  sub_24F5D1EAC(&qword_27F2463C0, &qword_27F2463C8);
  v41 = v59;
  sub_24F92CC18();
  if (v41)
  {
    v59 = v41;
    goto LABEL_21;
  }

  *(v17 + v34[10]) = v62;
  LOBYTE(v62) = 7;
  v42 = sub_24F92CBC8();
  v43 = (v17 + v34[11]);
  *v43 = v42;
  v43[1] = v44;
  LOBYTE(v62) = 8;
  v45 = sub_24F92CBC8();
  v59 = 0;
  v46 = (v17 + v34[12]);
  *v46 = v45;
  v46[1] = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
  v61 = 9;
  sub_24E6D0A9C(&qword_27F2182E8);
  v48 = v59;
  sub_24F92CC18();
  v59 = v48;
  if (v48)
  {
    (*(v57 + 8))(v58, v56);
    v49 = 0;
  }

  else
  {
    *(v17 + v53[13]) = v62;
    sub_24F920818();
    LOBYTE(v62) = 10;
    sub_24F5D1CB8(&qword_27F21E378, MEMORY[0x277D0CF00]);
    v50 = v59;
    sub_24F92CC18();
    v59 = v50;
    if (!v50)
    {
      (*(v57 + 8))(v58, v56);
      sub_24E6009C8(v55, v17 + v53[14], &qword_27F219030);
      sub_24F5D1F48(v17, v54, type metadata accessor for Achievement);
      __swift_destroy_boxed_opaque_existential_1(v60);
      v29 = v17;
      v28 = type metadata accessor for Achievement;
      return sub_24F5D1FB0(v29, v28);
    }

    (*(v57 + 8))(v58, v56);
    v49 = 1;
  }

  v51 = v53;
  __swift_destroy_boxed_opaque_existential_1(v60);

  sub_24E601704(v17 + v51[7], &qword_27F213FB0);
  sub_24F5D1FB0(v17 + v51[8], type metadata accessor for AchievementProgressStatus);

  if (v49)
  {
  }

  return result;
}

unint64_t sub_24F5D1AB0()
{
  result = qword_27F2498F8;
  if (!qword_27F2498F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2498F8);
  }

  return result;
}

unint64_t sub_24F5D1B04()
{
  result = qword_27F249900;
  if (!qword_27F249900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249900);
  }

  return result;
}

unint64_t sub_24F5D1B58()
{
  result = qword_27F249908;
  if (!qword_27F249908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249908);
  }

  return result;
}

unint64_t sub_24F5D1BAC()
{
  result = qword_27F249910;
  if (!qword_27F249910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249910);
  }

  return result;
}

unint64_t sub_24F5D1C00()
{
  result = qword_27F249918;
  if (!qword_27F249918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249918);
  }

  return result;
}

uint64_t sub_24F5D1C54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementProgressStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5D1CB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F5D1D20()
{
  result = qword_27F21E328;
  if (!qword_27F21E328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E328);
  }

  return result;
}

unint64_t sub_24F5D1D9C()
{
  result = qword_27F249958;
  if (!qword_27F249958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249950);
    sub_24F5D1EAC(&qword_27F249960, &qword_27F249968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249958);
  }

  return result;
}

unint64_t sub_24F5D1E58()
{
  result = qword_27F249978;
  if (!qword_27F249978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249978);
  }

  return result;
}

uint64_t sub_24F5D1EAC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2462A0);
    sub_24F5D1CB8(a2, type metadata accessor for PlayerWithTimeStamp);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F5D1F48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5D1FB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_24F5D2010()
{
  sub_24F5D2084();
  if (v0 <= 0x3F)
  {
    sub_24F5D20CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24F5D2084()
{
  if (!qword_27F249998)
  {
    v0 = sub_24F91F648();
    if (!v1)
    {
      atomic_store(v0, &qword_27F249998);
    }
  }
}

uint64_t sub_24F5D20CC()
{
  result = qword_27F2499A0;
  if (!qword_27F2499A0)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_27F2499A0);
  }

  return result;
}

uint64_t sub_24F5D2110(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for AchievementProgressStatus(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[14];

  return v15(v16, a2, v14);
}

uint64_t sub_24F5D22A8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for AchievementProgressStatus(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[14];

  return v15(v16, a2, a2, v14);
}

void sub_24F5D242C()
{
  sub_24E7F42E8(319, &qword_27F213FD0, MEMORY[0x277D21C48]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AchievementProgressStatus(319);
    if (v1 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F2191B8);
      if (v2 <= 0x3F)
      {
        sub_24E8EF898(319, &qword_27F246298, &qword_27F2462A0);
        if (v3 <= 0x3F)
        {
          sub_24E66ECF0(319, &qword_27F254DE0);
          if (v4 <= 0x3F)
          {
            sub_24E8EF898(319, &qword_27F23B5E0, &qword_27F227A20);
            if (v5 <= 0x3F)
            {
              sub_24E7F42E8(319, &qword_27F21E390, MEMORY[0x277D0CF00]);
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

unint64_t sub_24F5D262C()
{
  result = qword_27F2499B8;
  if (!qword_27F2499B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2499B8);
  }

  return result;
}

unint64_t sub_24F5D2684()
{
  result = qword_27F2499C0;
  if (!qword_27F2499C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2499C0);
  }

  return result;
}

unint64_t sub_24F5D26DC()
{
  result = qword_27F2499C8;
  if (!qword_27F2499C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2499C8);
  }

  return result;
}

unint64_t sub_24F5D2734()
{
  result = qword_27F2499D0;
  if (!qword_27F2499D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2499D0);
  }

  return result;
}

unint64_t sub_24F5D278C()
{
  result = qword_27F2499D8;
  if (!qword_27F2499D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2499D8);
  }

  return result;
}

unint64_t sub_24F5D27E4()
{
  result = qword_27F2499E0;
  if (!qword_27F2499E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2499E0);
  }

  return result;
}

unint64_t sub_24F5D283C()
{
  result = qword_27F2499E8;
  if (!qword_27F2499E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2499E8);
  }

  return result;
}

unint64_t sub_24F5D2894()
{
  result = qword_27F2499F0;
  if (!qword_27F2499F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2499F0);
  }

  return result;
}

unint64_t sub_24F5D28EC()
{
  result = qword_27F2499F8;
  if (!qword_27F2499F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2499F8);
  }

  return result;
}

unint64_t sub_24F5D2944()
{
  result = qword_27F249A00;
  if (!qword_27F249A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249A00);
  }

  return result;
}

unint64_t sub_24F5D299C()
{
  result = qword_27F249A08;
  if (!qword_27F249A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249A08);
  }

  return result;
}

unint64_t sub_24F5D29F4()
{
  result = qword_27F249A10;
  if (!qword_27F249A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249A10);
  }

  return result;
}

unint64_t sub_24F5D2A4C()
{
  result = qword_27F249A18;
  if (!qword_27F249A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249A18);
  }

  return result;
}

unint64_t sub_24F5D2AA4()
{
  result = qword_27F249A20;
  if (!qword_27F249A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249A20);
  }

  return result;
}

unint64_t sub_24F5D2AFC()
{
  result = qword_27F249A28;
  if (!qword_27F249A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249A28);
  }

  return result;
}

unint64_t sub_24F5D2B54()
{
  result = qword_27F249A30;
  if (!qword_27F249A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249A30);
  }

  return result;
}

uint64_t sub_24F5D2BA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572676F72506E69 && a2 == 0xEA00000000007373 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656B636F6CLL && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6564646968 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24F5D2D14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xEE00737574617453 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6550797469726172 && a2 == 0xED0000746E656372 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA75D70 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA76F00 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA6E4C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA6E530 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x53657361656C6572 && a2 == 0xEC00000065746174)
  {

    return 10;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

void sub_24F5D30C4()
{
  v1 = v0;
  v40[1] = *MEMORY[0x277D85DE8];
  if (qword_27F211368 != -1)
  {
    swift_once();
  }

  v2 = sub_24F91F4A8();
  __swift_project_value_buffer(v2, qword_27F249A38);
  sub_24F91F398();
  v3 = sub_24F92B098();

  v4 = [v0 fileExistsAtPath_];

  if (v4)
  {
    v5 = sub_24F91F3B8();
    v40[0] = 0;
    v6 = [v1 removeItemAtURL:v5 error:v40];

    if (v6)
    {
      v7 = qword_27F211438;
      v8 = v40[0];
      if (v7 != -1)
      {
        swift_once();
      }

      v9 = sub_24F9220D8();
      __swift_project_value_buffer(v9, qword_27F39E8F8);
      v10 = sub_24F9220B8();
      v11 = sub_24F92BD98();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_24E5DD000, v10, v11, "Avatar cache directory cleared.", v12, 2u);
        MEMORY[0x2530542D0](v12, -1, -1);
      }

      goto LABEL_13;
    }

    v13 = v40[0];
    v14 = sub_24F91F278();

    swift_willThrow();
    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v15 = sub_24F9220D8();
    __swift_project_value_buffer(v15, qword_27F39E8F8);
    v16 = v14;
    v10 = sub_24F9220B8();
    v17 = sub_24F92BDB8();

    if (os_log_type_enabled(v10, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v14;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_24E5DD000, v10, v17, "Failed to clear the avatar cache, error: %@", v18, 0xCu);
      sub_24E6D44CC(v19);
      MEMORY[0x2530542D0](v19, -1, -1);
      MEMORY[0x2530542D0](v18, -1, -1);

LABEL_13:
      goto LABEL_15;
    }
  }

LABEL_15:
  v22 = sub_24F91F3B8();
  v40[0] = 0;
  v23 = [v1 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:v40];

  if (v23)
  {
    v24 = qword_27F211438;
    v25 = v40[0];
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = sub_24F9220D8();
    __swift_project_value_buffer(v26, qword_27F39E8F8);
    v27 = sub_24F9220B8();
    v28 = sub_24F92BD98();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_24E5DD000, v27, v28, "Avatar cache directory created.", v29, 2u);
      MEMORY[0x2530542D0](v29, -1, -1);
    }
  }

  else
  {
    v30 = v40[0];
    v31 = sub_24F91F278();

    swift_willThrow();
    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v32 = sub_24F9220D8();
    __swift_project_value_buffer(v32, qword_27F39E8F8);
    v33 = v31;
    v34 = sub_24F9220B8();
    v35 = sub_24F92BDB8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = v31;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_24E5DD000, v34, v35, "Failed to create the avatar cache directory, error: %@", v36, 0xCu);
      sub_24E6D44CC(v37);
      MEMORY[0x2530542D0](v37, -1, -1);
      MEMORY[0x2530542D0](v36, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_24F5D3628@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91F4A8();
  v22[0] = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v13 = sub_24F9220D8();
    __swift_project_value_buffer(v13, qword_27F39E8F8);
    v14 = sub_24F9220B8();
    v15 = sub_24F92BD98();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24E5DD000, v14, v15, "There is no data to save.", v16, 2u);
      MEMORY[0x2530542D0](v16, -1, -1);
    }

    v17 = *(v22[0] + 56);

    return v17(a3, 1, 1, v10);
  }

  else
  {
    sub_24E781610(a1, a2);
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v21 = v20;
    (*(v7 + 8))(v9, v6);
    v22[2] = v19;
    v22[3] = v21;
    MEMORY[0x253050C20](1735290926, 0xE400000000000000);
    if (qword_27F211368 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v10, qword_27F249A38);
    sub_24F91F3E8();

    sub_24F91F4F8();
    sub_24E71CBAC(a1, a2);
    (*(v22[0] + 32))(a3, v12, v10);
    return (*(v22[0] + 56))(a3, 0, 1, v10);
  }
}

uint64_t sub_24F5D3B04()
{
  v0 = sub_24F91F4A8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_27F249A38);
  __swift_project_value_buffer(v0, qword_27F249A38);
  v5 = NSTemporaryDirectory();
  sub_24F92B0D8();

  sub_24F91F3A8();

  sub_24F91F3E8();
  return (*(v1 + 8))(v3, v0);
}

id GameLayerBackgroundBlurView.makeUIView(context:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  sub_24F5D3FD0();
  sub_24F5D4120();
  v1 = sub_24F92B588();

  [v0 setBackgroundEffects_];

  v2 = sub_24F92B098();
  [v0 _setGroupName_];

  return v0;
}

id sub_24F5D3D10()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  sub_24F5D3FD0();
  sub_24F5D4120();
  v1 = sub_24F92B588();

  [v0 setBackgroundEffects_];

  v2 = sub_24F92B098();
  [v0 _setGroupName_];

  return v0;
}

uint64_t sub_24F5D3DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F5D41D4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24F5D3E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F5D41D4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24F5D3E9C()
{
  sub_24F5D41D4();
  sub_24F924DC8();
  __break(1u);
}

id sub_24F5D3EC4(void *a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19 = 0.0;
  v20[0] = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  [a1 getRed:v20 green:&v19 blue:&v18 alpha:&v17];
  v19 = v17 * v19;
  v20[0] = v17 * v20[0];
  v18 = v17 * v18;
  v3 = 1.0 - v17;
  v4 = 0u;
  v5 = 0u;
  v6 = 1.0 - v17;
  v7 = 0u;
  v8 = 0u;
  v9 = 1.0 - v17;
  v10 = 0u;
  v11 = 0u;
  v12 = 1.0 - v17;
  v13 = v20[0];
  v14 = v19;
  v15 = v18;
  v16 = v17;
  v1 = [objc_opt_self() colorEffectMatrix_];

  return v1;
}

id sub_24F5D3FD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F9BA030;
  result = [objc_opt_self() effectWithBlurRadius_];
  if (result)
  {
    *(v0 + 32) = result;
    *(v0 + 40) = [objc_opt_self() colorEffectSaturate_];
    v2 = [objc_opt_self() whiteColor];
    v3 = [v2 colorWithAlphaComponent_];

    v4 = sub_24F5D3EC4(v3);
    *(v0 + 48) = v4;
    v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.062745098 green:0.062745098 blue:0.062745098 alpha:0.5];
    v6 = sub_24F5D3EC4(v5);

    *(v0 + 56) = v6;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24F5D4120()
{
  result = qword_27F249A50;
  if (!qword_27F249A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F249A50);
  }

  return result;
}

unint64_t sub_24F5D4170()
{
  result = qword_27F249A58;
  if (!qword_27F249A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249A58);
  }

  return result;
}

unint64_t sub_24F5D41D4()
{
  result = qword_27F249A60;
  if (!qword_27F249A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249A60);
  }

  return result;
}

unint64_t PlayerProfileStats.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v12 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 32) = 0x664F7265626D756ELL;
  *(inited + 16) = xmmword_24F942000;
  *(inited + 40) = 0xEF73646E65697246;
  v8 = MEMORY[0x277D83B88];
  *(inited + 72) = MEMORY[0x277D83B88];
  v9 = sub_24E65901C();
  *(inited + 48) = v3;
  *(inited + 80) = v9;
  *(inited + 88) = 0xD000000000000017;
  *(inited + 128) = v8;
  *(inited + 136) = v9;
  *(inited + 96) = 0x800000024FA76F40;
  *(inited + 104) = v4;
  strcpy((inited + 144), "numberOfGames");
  *(inited + 158) = -4864;
  *(inited + 184) = v8;
  *(inited + 192) = v9;
  *(inited + 160) = v6;
  *(inited + 200) = 0xD000000000000015;
  *(inited + 208) = 0x800000024FA76F60;
  *(inited + 240) = v8;
  *(inited + 248) = v9;
  *(inited + 216) = v5;
  *(inited + 256) = 0xD000000000000014;
  *(inited + 264) = 0x800000024FA76F80;
  *(inited + 296) = v8;
  *(inited + 304) = v9;
  *(inited + 272) = v12;
  v10 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v10;
  return result;
}

unint64_t sub_24F5D43D4()
{
  v1 = 0x664F7265626D756ELL;
  v2 = *v0;
  v3 = 0xD000000000000015;
  if (v2 != 3)
  {
    v3 = 0xD000000000000014;
  }

  if (v2 == 2)
  {
    v3 = 0x664F7265626D756ELL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F5D4484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F5D4AFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F5D44AC(uint64_t a1)
{
  v2 = sub_24F5D4980();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5D44E8(uint64_t a1)
{
  v2 = sub_24F5D4980();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayerProfileStats.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249A68);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v11[2] = v1[2];
  v11[3] = v8;
  v11[0] = v1[4];
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5D4980();
  sub_24F92D128();
  v16 = 0;
  sub_24F92CD38();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v15 = 1;
  sub_24F92CD38();
  v14 = 2;
  sub_24F92CD38();
  v13 = 3;
  sub_24F92CD38();
  v12 = 4;
  sub_24F92CD38();
  return (*(v5 + 8))(v7, v4);
}

uint64_t PlayerProfileStats.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249A78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5D4980();
  sub_24F92D108();
  if (!v2)
  {
    v21 = 0;
    v9 = sub_24F92CC58();
    v20 = 1;
    v10 = sub_24F92CC58();
    v19 = 2;
    v16 = sub_24F92CC58();
    v18 = 3;
    v15 = sub_24F92CC58();
    v17 = 4;
    v14 = sub_24F92CC58();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    v12 = v15;
    a2[2] = v16;
    a2[3] = v12;
    a2[4] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F5D4980()
{
  result = qword_27F249A70;
  if (!qword_27F249A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249A70);
  }

  return result;
}

unint64_t sub_24F5D49F8()
{
  result = qword_27F249A80;
  if (!qword_27F249A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249A80);
  }

  return result;
}

unint64_t sub_24F5D4A50()
{
  result = qword_27F249A88;
  if (!qword_27F249A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249A88);
  }

  return result;
}

unint64_t sub_24F5D4AA8()
{
  result = qword_27F249A90;
  if (!qword_27F249A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249A90);
  }

  return result;
}

uint64_t sub_24F5D4AFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x664F7265626D756ELL && a2 == 0xEF73646E65697246;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA76F40 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xED000073656D6147 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA76F60 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA76F80 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F5D4CD4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F5D4D94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ContinuePlayingShelfConstructionIntent()
{
  result = qword_27F249A98;
  if (!qword_27F249A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F5D4E84()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24E7B7820();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F5D4F20@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x4449666C656873;
  *(inited + 40) = 0xE700000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v7 = type metadata accessor for ContinuePlayingShelfConstructionIntent();
  v8 = v7[5];
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E7B74F8(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F36EBE4(v1 + v8, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 0x73656D6167;
  *(inited + 152) = 0xE500000000000000;
  v10 = *(v1 + v7[6]);
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0);
  v11 = sub_24E7B745C(&qword_27F219830, &qword_27F217960);
  *(inited + 160) = v10;
  *(inited + 192) = v11;
  *(inited + 200) = 1937207154;
  *(inited + 208) = 0xE400000000000000;
  v12 = *(v1 + v7[7]);
  *(inited + 240) = MEMORY[0x277D83B88];
  *(inited + 248) = sub_24E65901C();
  *(inited + 216) = v12;

  v13 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v14 = sub_24E80FFAC(v13);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v14;
  return result;
}

uint64_t sub_24F5D5190(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249AB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5D59A4();
  sub_24F92D128();
  v14 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v9 = type metadata accessor for ContinuePlayingShelfConstructionIntent();
    v13 = 1;
    type metadata accessor for Player(0);
    sub_24E7B74F8(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0);
    sub_24E7B745C(&qword_27F219848, &qword_27F214950);
    sub_24F92CD48();
    v11[14] = 3;
    sub_24F92CD38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F5D5408@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249AA8);
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v16 - v6;
  v8 = type metadata accessor for ContinuePlayingShelfConstructionIntent();
  MEMORY[0x28223BE20](v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5D59A4();
  v18 = v7;
  v11 = v20;
  sub_24F92D108();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v17;
  v25 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v13;
  v20 = v13;
  v24 = 1;
  sub_24E7B74F8(&qword_27F213E38, type metadata accessor for Player);
  sub_24F92CC68();
  sub_24E61C0A8(v5, v10 + v8[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0);
  v23 = 2;
  sub_24E7B745C(&qword_27F219858, &qword_27F214968);
  sub_24F92CC68();
  *(v10 + v8[6]) = v21;
  v22 = 3;
  v14 = sub_24F92CC58();
  (*(v12 + 8))(v18, v19);
  *(v10 + v8[7]) = v14;
  sub_24F36EBE4(v10, v16, type metadata accessor for ContinuePlayingShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F5D59F8(v10, type metadata accessor for ContinuePlayingShelfConstructionIntent);
}

uint64_t sub_24F5D5830()
{
  v1 = 0x4449666C656873;
  v2 = 0x73656D6167;
  if (*v0 != 2)
  {
    v2 = 1937207154;
  }

  if (*v0)
  {
    v1 = 0x726579616C70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24F5D589C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F5D5B70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F5D58C4(uint64_t a1)
{
  v2 = sub_24F5D59A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5D5900(uint64_t a1)
{
  v2 = sub_24F5D59A4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F5D59A4()
{
  result = qword_27F249AB0;
  if (!qword_27F249AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249AB0);
  }

  return result;
}

uint64_t sub_24F5D59F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F5D5A6C()
{
  result = qword_27F249AC0;
  if (!qword_27F249AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249AC0);
  }

  return result;
}

unint64_t sub_24F5D5AC4()
{
  result = qword_27F249AC8;
  if (!qword_27F249AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249AC8);
  }

  return result;
}

unint64_t sub_24F5D5B1C()
{
  result = qword_27F249AD0;
  if (!qword_27F249AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249AD0);
  }

  return result;
}

uint64_t sub_24F5D5B70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449666C656873 && a2 == 0xE700000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656D6167 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1937207154 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t ResetTipDatastoreDebugSettingsAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F928AD8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24F5D5D34(uint64_t a1)
{
  v2 = sub_24F5D5F10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5D5D70(uint64_t a1)
{
  v2 = sub_24F5D5F10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResetTipDatastoreDebugSettingsAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249AD8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5D5F10();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F5D5F10()
{
  result = qword_27F249AE0;
  if (!qword_27F249AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249AE0);
  }

  return result;
}

uint64_t ResetTipDatastoreDebugSettingsAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249AE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ResetTipDatastoreDebugSettingsAction();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5D5F10();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24F5D621C(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for ResetTipDatastoreDebugSettingsAction()
{
  result = qword_27F249AF0;
  if (!qword_27F249AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F5D621C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResetTipDatastoreDebugSettingsAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5D6298(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249AD8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5D5F10();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24F5D6410(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F5D6490(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_24F5D6514()
{
  result = qword_27F249B00;
  if (!qword_27F249B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249B00);
  }

  return result;
}

unint64_t sub_24F5D656C()
{
  result = qword_27F249B08;
  if (!qword_27F249B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249B08);
  }

  return result;
}

unint64_t sub_24F5D65C4()
{
  result = qword_27F249B10;
  if (!qword_27F249B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249B10);
  }

  return result;
}

uint64_t sub_24F5D663C(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F5D678C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ChallengesHubHeaderButton()
{
  result = qword_27F249B18;
  if (!qword_27F249B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F5D6914(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249B70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5D8020();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    v8[13] = 2;
    sub_24F92CD08();
    v8[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    type metadata accessor for ChallengesHubHeaderButton();
    v8[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    v8[10] = 5;
    sub_24F929608();
    sub_24F5D813C(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F5D6C78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249B60);
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for ChallengesHubHeaderButton();
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 72) = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 13) = 0;
  v41 = v13 + 72;
  sub_24E61DA68(&v43, (v13 + 72), qword_27F21B590);
  v14 = *(v11 + 32);
  v15 = sub_24F92A6D8();
  v16 = *(*(v15 - 8) + 56);
  v40 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_24F5D8020();
  v18 = v39;
  sub_24F92D108();
  if (v18)
  {
    v21 = v40;
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_24E601704(v41, qword_27F24EC90);
    return sub_24E601704(&v13[v21], &qword_27F215440);
  }

  else
  {
    v33 = v11;
    v34 = v5;
    v39 = v7;
    v19 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v46 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v20 = v38;
    sub_24F92CC68();
    v22 = v44;
    *v13 = v43;
    *(v13 + 1) = v22;
    *(v13 + 4) = v45;
    LOBYTE(v43) = 1;
    v23 = sub_24F92CC28();
    v24 = v40;
    v25 = v19;
    *(v13 + 5) = v23;
    *(v13 + 6) = v26;
    LOBYTE(v43) = 2;
    v27 = sub_24F92CC28();
    v28 = v41;
    *(v13 + 7) = v27;
    *(v13 + 8) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v46 = 3;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v43, v28, qword_27F24EC90);
    LOBYTE(v43) = 4;
    sub_24E65CAA0();
    v30 = v39;
    sub_24F92CC68();
    v34 = 0;
    sub_24E61DA68(v30, &v13[v24], &qword_27F215440);
    sub_24F929608();
    LOBYTE(v43) = 5;
    sub_24F5D813C(&qword_27F213F48, MEMORY[0x277D21F70]);
    v31 = v36;
    sub_24F92CC18();
    (*(v25 + 8))(v10, v20);
    sub_24E6009C8(v31, &v13[*(v33 + 36)], &qword_27F213E68);
    sub_24F5D8074(v13, v35, type metadata accessor for ChallengesHubHeaderButton);
    __swift_destroy_boxed_opaque_existential_1(v42);
    return sub_24F5D80DC(v13, type metadata accessor for ChallengesHubHeaderButton);
  }
}

uint64_t sub_24F5D72F0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6575676573;
  v4 = 0x4D747865746E6F63;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D614E6567616D69;
  if (v1 != 1)
  {
    v5 = 1954047348;
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

uint64_t sub_24F5D73A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F5D8300(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F5D73CC(uint64_t a1)
{
  v2 = sub_24F5D8020();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5D7408(uint64_t a1)
{
  v2 = sub_24F5D8020();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F5D7444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 32), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24F5D7534@<X0>(char *a1@<X8>)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140B8) + 48);
  *a1 = 1;
  *&a1[v2] = 0x4008000000000000;
  v3 = *MEMORY[0x277D7EB60];
  v4 = sub_24F9219E8();
  (*(*(v4 - 8) + 104))(&a1[v2], v3, v4);
  v5 = *MEMORY[0x277D7EB20];
  v6 = sub_24F9218F8();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

uint64_t sub_24F5D7670(uint64_t a1)
{
  v2 = sub_24F924C88();
  v9 = 0;
  sub_24F5D795C(a1, __src);
  v16 = *&__src[64];
  v17 = *&__src[80];
  v18[0] = *&__src[96];
  *(v18 + 9) = *&__src[105];
  v12 = *__src;
  v13 = *&__src[16];
  v14 = *&__src[32];
  v15 = *&__src[48];
  v19[0] = *__src;
  v19[1] = *&__src[16];
  v19[2] = *&__src[32];
  v19[3] = *&__src[48];
  v19[4] = *&__src[64];
  v19[5] = *&__src[80];
  v20[0] = *&__src[96];
  *(v20 + 9) = *&__src[105];
  sub_24E60169C(&v12, __dst, &qword_27F249B38);
  sub_24E601704(v19, &qword_27F249B38);
  *&v8[71] = v16;
  *&v8[87] = v17;
  *&v8[103] = v18[0];
  *&v8[112] = *(v18 + 9);
  *&v8[7] = v12;
  *&v8[23] = v13;
  *&v8[39] = v14;
  *&v8[55] = v15;
  v3 = v9;
  sub_24F927618();
  sub_24F9242E8();
  *(&v10[6] + 7) = *&v10[21];
  *(&v10[8] + 7) = *&v10[23];
  *(&v10[10] + 7) = *&v10[25];
  *(&v10[12] + 7) = v11;
  *(v10 + 7) = *&v10[15];
  *(&v10[2] + 7) = *&v10[17];
  *(&v10[4] + 7) = *&v10[19];
  *__src = v2;
  *&__src[8] = 0x4028000000000000;
  __src[16] = v3;
  *&__src[81] = *&v8[64];
  *&__src[97] = *&v8[80];
  *&__src[113] = *&v8[96];
  *&__src[129] = *&v8[112];
  *&__src[17] = *v8;
  *&__src[33] = *&v8[16];
  *&__src[49] = *&v8[32];
  *&__src[65] = *&v8[48];
  *&__src[193] = *&v10[6];
  *&__src[177] = *&v10[4];
  *&__src[161] = *&v10[2];
  *&__src[145] = *v10;
  *&__src[256] = *(&v11 + 1);
  *&__src[241] = *&v10[12];
  *&__src[225] = *&v10[10];
  *&__src[209] = *&v10[8];
  sub_24E60169C(a1 + 72, __dst, qword_27F24EC90);
  sub_24E601704(__dst, qword_27F21B590);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v4 = sub_24F9248C8();
  __swift_project_value_buffer(v4, qword_27F39F078);
  memcpy(__dst, __src, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249B40);
  sub_24F5D7F60();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return sub_24E601704(__src, &qword_27F249B40);
}

uint64_t sub_24F5D795C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F926E08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = qword_27F211820;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_27F24F280;
  sub_24F926E98();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v10 = sub_24F926E88();

  (*(v5 + 8))(v7, v4);
  sub_24F927618();
  sub_24F9238C8();
  LOBYTE(v22[0]) = 1;
  *&v19[3] = *&v19[27];
  *&v19[11] = *&v19[35];
  *&v19[19] = *&v19[43];
  v12 = *(a1 + 56);
  v11 = *(a1 + 64);
  KeyPath = swift_getKeyPath();
  v20[0] = v10;
  v20[1] = 0;
  *v21 = 1;
  *&v21[2] = *v19;
  *&v21[18] = *&v19[8];
  *&v21[34] = *&v19[16];
  *&v21[48] = *&v19[23];
  v18[16] = 0;
  v18[8] = 0;
  v14 = *v21;
  v15 = *&v21[32];
  v16 = *&v19[23];
  *(a2 + 32) = *&v21[16];
  *(a2 + 48) = v15;
  *a2 = v10;
  *(a2 + 16) = v14;
  *(a2 + 64) = v16;
  *(a2 + 72) = v12;
  *(a2 + 80) = v11;
  *(a2 + 88) = 0;
  *(a2 + 96) = MEMORY[0x277D84F90];
  *(a2 + 104) = KeyPath;
  *(a2 + 112) = 1;
  *(a2 + 120) = 0;

  sub_24E60169C(v20, v22, &qword_27F235A20);
  sub_24E5FD138(v12, v11, 0);

  sub_24E600B40(v12, v11, 0);

  v22[0] = v10;
  v22[1] = 0;
  v23 = 1;
  v24 = *v19;
  v25 = *&v19[8];
  *v26 = *&v19[16];
  *&v26[14] = *&v19[23];
  return sub_24E601704(v22, &qword_27F235A20);
}

uint64_t sub_24F5D7C5C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AsymmetricalInsetRoundedRectangle();
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = sub_24F924258();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v9 = *(v8 + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_24F924B38();
  (*(*(v11 - 8) + 104))(&v7[v9], v10, v11);
  __asm { FMOV            V0.2D, #12.0 }

  *v7 = _Q0;
  v17 = &v7[*(v2 + 20)];
  *v17 = xmmword_24FA108A0;
  *(v17 + 1) = xmmword_24FA108A0;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v18 = sub_24F926D08();

  sub_24F5D8074(v7, v4, type metadata accessor for AsymmetricalInsetRoundedRectangle);
  sub_24F5D813C(&qword_27F215938, type metadata accessor for AsymmetricalInsetRoundedRectangle);
  v19 = sub_24F927348();
  result = sub_24F5D80DC(v7, type metadata accessor for AsymmetricalInsetRoundedRectangle);
  *(a1 + 40) = v19;
  *(a1 + 48) = v18;
  return result;
}

uint64_t sub_24F5D7E18()
{
  sub_24F47DAD8();

  return sub_24F9218E8();
}

unint64_t sub_24F5D7EA8()
{
  result = qword_27F249B30;
  if (!qword_27F249B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249B30);
  }

  return result;
}

unint64_t sub_24F5D7F60()
{
  result = qword_27F249B48;
  if (!qword_27F249B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249B40);
    sub_24E602068(&qword_27F249B50, &qword_27F249B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249B48);
  }

  return result;
}

unint64_t sub_24F5D8020()
{
  result = qword_27F249B68;
  if (!qword_27F249B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249B68);
  }

  return result;
}

uint64_t sub_24F5D8074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5D80DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F5D813C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F5D8194()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249B40);
  sub_24F5D7F60();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F5D81FC()
{
  result = qword_27F249B78;
  if (!qword_27F249B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249B78);
  }

  return result;
}

unint64_t sub_24F5D8254()
{
  result = qword_27F249B80;
  if (!qword_27F249B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249B80);
  }

  return result;
}

unint64_t sub_24F5D82AC()
{
  result = qword_27F249B88[0];
  if (!qword_27F249B88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F249B88);
  }

  return result;
}

uint64_t sub_24F5D8300(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E6567616D69 && a2 == 0xE900000000000065 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F5D8504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24F5D8554(a1, a3);
  *(a3 + *(type metadata accessor for DefaultPageShelvesContentView() + 20)) = a2;
}

uint64_t sub_24F5D8554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Page(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_24F5D85B8()
{
  sub_24E6D753C(319, &qword_27F21B368, &unk_27F23B740, &unk_24F93EC10, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24EB8E758();
    if (v1 <= 0x3F)
    {
      sub_24F1C2654();
      if (v2 <= 0x3F)
      {
        sub_24F5D8B54(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_24EDA2B80();
          if (v4 <= 0x3F)
          {
            sub_24F928FD8();
            if (v5 <= 0x3F)
            {
              sub_24F929158();
              if (v6 <= 0x3F)
              {
                sub_24F5D8B54(319, &qword_27F2483E8, type metadata accessor for LocalPlayerProvider, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_24E6C5550();
                  if (v8 <= 0x3F)
                  {
                    sub_24E6D753C(319, &qword_27F2483F0, &qword_27F216F48, &unk_24F944850, MEMORY[0x277CE10B8]);
                    if (v9 <= 0x3F)
                    {
                      sub_24F5D8B54(319, &qword_27F2157B8, MEMORY[0x277D221C8], MEMORY[0x277CE10B8]);
                      if (v10 <= 0x3F)
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
}

uint64_t sub_24F5D8820(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[15];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_24F929158();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[19];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[24];

  return v15(v16, a2, v14);
}

uint64_t sub_24F5D89B8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[15];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_24F929158();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[19];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[24];

  return v15(v16, a2, a2, v14);
}

void sub_24F5D8B54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F5D8BFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_24F923E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for Page(0) + 88)) == 3 && qword_27F211128 != -1)
  {
    swift_once();
  }

  sub_24F769788(v11);
  v12 = *(v9 + 56);
  v12(v7, 1, 1, v8);
  v12(v4, 1, 1, v8);
  v13 = sub_24EF13DC0(v7, v4);
  sub_24E601704(v4, &qword_27F2140C0);
  sub_24E601704(v7, &qword_27F2140C0);
  (*(v9 + 8))(v11, v8);
  if (v13 + 0.0 + -20.0 > 0.0)
  {
    *&result = v13 + 0.0 + -20.0;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_24F5D8E5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_24F923E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for Page(0) + 88)) == 3 && qword_27F211128 != -1)
  {
    swift_once();
  }

  sub_24F769788(v11);
  v12 = *(v9 + 56);
  v12(v7, 1, 1, v8);
  v12(v4, 1, 1, v8);
  v13 = sub_24EF13DC0(v7, v4);
  sub_24E601704(v4, &qword_27F2140C0);
  sub_24E601704(v7, &qword_27F2140C0);
  (*(v9 + 8))(v11, v8);
  if (v13 + -20.0 > 0.0)
  {
    *&result = v13 + -20.0;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_24F5D90C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8);
  MEMORY[0x28223BE20](v3 - 8);
  v142 = v104 - v4;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48);
  v140 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v138 = v104 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B380);
  MEMORY[0x28223BE20](v6 - 8);
  v137 = v104 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0);
  MEMORY[0x28223BE20](v8 - 8);
  v141 = v104 - v9;
  v10 = a1;
  v131 = a1;
  v134 = *(a1 - 8);
  *&v135 = *(v134 + 64);
  MEMORY[0x28223BE20](v11);
  v133 = v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50);
  MEMORY[0x28223BE20](v13 - 8);
  v132 = v104 - v14;
  v146 = type metadata accessor for Page(255);
  v144 = sub_24F921BC8();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408);
  v147 = v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410);
  v145 = *(v10 + 16);
  v148 = v145;
  v149 = sub_24F924038();
  v150 = v15;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  type metadata accessor for IndexedSectionListView();
  v16 = sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v170 = MEMORY[0x277CE0880];
  v17 = swift_getWitnessTable();
  v147 = v16;
  v148 = v17;
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  v18 = sub_24F926DC8();
  v147 = v16;
  v148 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_24E667ED0();
  v167 = OpaqueTypeConformance2;
  v168 = v20;
  v165 = swift_getWitnessTable();
  v166 = OpaqueTypeConformance2;
  v164 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v147 = v18;
  v148 = v21;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8);
  sub_24F924038();
  sub_24F924038();
  v22 = sub_24F924038();
  v147 = v18;
  v148 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_24F5DC448(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier);
  v162 = v23;
  v163 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8);
  v160 = v25;
  v161 = v26;
  v27 = swift_getWitnessTable();
  v28 = sub_24E669F00();
  v158 = v27;
  v159 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_24E669F54();
  v156 = v29;
  v157 = v30;
  v31 = swift_getWitnessTable();
  v147 = v22;
  v148 = v31;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418);
  v32 = sub_24F924038();
  v33 = sub_24F921C58();
  v116 = v33;
  v34 = sub_24F5DC448(&qword_27F2477E8, MEMORY[0x277D7EC50]);
  v115 = v34;
  v147 = v22;
  v148 = v31;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = sub_24E602068(&qword_27F248428, &qword_27F248418);
  v154 = v35;
  v155 = v36;
  v117 = v32;
  v37 = swift_getWitnessTable();
  v114 = v37;
  v113 = sub_24F5DC448(&qword_27F248440, MEMORY[0x277D7EC80]);
  v147 = v146;
  v148 = v144;
  v149 = v32;
  v150 = v33;
  v151 = v34;
  v152 = v37;
  v153 = v113;
  v38 = sub_24F921908();
  v118 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v110 = v104 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248448);
  v41 = swift_getWitnessTable();
  v42 = sub_24E602068(&qword_27F248450, &qword_27F248448);
  v147 = v38;
  v148 = v40;
  v149 = v41;
  v150 = v42;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v111 = sub_24F924038();
  v112 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = v104 - v44;
  v147 = v38;
  v148 = v40;
  v149 = v41;
  v150 = v42;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = sub_24F5DC448(&qword_27F23FB90, type metadata accessor for Page);
  v147 = v38;
  v148 = OpaqueTypeMetadata2;
  v105 = v41;
  v149 = v41;
  v150 = v45;
  v151 = v46;
  v47 = v45;
  v108 = v45;
  v48 = v46;
  v107 = v46;
  v49 = swift_getOpaqueTypeMetadata2();
  v128 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v106 = v104 - v50;
  v147 = v38;
  v148 = OpaqueTypeMetadata2;
  v149 = v41;
  v150 = v47;
  v151 = v48;
  v51 = swift_getOpaqueTypeConformance2();
  v147 = v49;
  v148 = v51;
  v52 = swift_getOpaqueTypeMetadata2();
  v127 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v125 = v104 - v53;
  v54 = sub_24F928FD8();
  v130 = v49;
  v147 = v49;
  v119 = v51;
  v148 = v51;
  v55 = swift_getOpaqueTypeConformance2();
  v129 = v52;
  v147 = v52;
  v120 = v54;
  v148 = v54;
  v123 = v55;
  v149 = v55;
  v126 = swift_getOpaqueTypeMetadata2();
  v124 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v121 = v104 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v122 = v104 - v58;
  v59 = v131;
  v60 = *(v131 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8);
  v61 = v136;
  v104[1] = v60;
  v62 = v132;
  sub_24F926F58();
  v63 = v134;
  v64 = v133;
  (*(v134 + 16))(v133, v61, v59);
  v65 = (*(v63 + 80) + 48) & ~*(v63 + 80);
  v66 = swift_allocObject();
  v67 = *(v59 + 32);
  *(v66 + 16) = v145;
  *(v66 + 32) = v67;
  v135 = v67;
  (*(v63 + 32))(v66 + v65, v64, v59);
  v68 = v110;
  v69 = v62;
  v70 = v146;
  sub_24F921918();
  v71 = *(v59 + 64);
  sub_24F926F58();
  v72 = v109;
  sub_24F57C3CC((v61 + v71), v69, v38, v70, v105);
  sub_24E601704(v69, &qword_27F216F50);
  (*(v118 + 8))(v68, v38);
  v73 = v61;
  v74 = v106;
  v75 = v111;
  sub_24F923FA8();
  (*(v112 + 8))(v72, v75);
  v76 = v73;
  v77 = v138;
  v78 = v137;
  sub_24F926F38();
  v79 = v139;
  sub_24F9217F8();
  v80 = v79;
  v81 = v146;
  (*(v140 + 8))(v77, v80);
  if ((*(*(v81 - 8) + 48))(v78, 1, v81) == 1)
  {
    sub_24E601704(v78, &qword_27F22B380);
    v82 = sub_24F928818();
    v83 = v141;
    (*(*(v82 - 8) + 56))(v141, 1, 1, v82);
  }

  else
  {
    v84 = *(v81 + 24);
    v85 = sub_24F928818();
    v86 = *(v85 - 8);
    v83 = v141;
    (*(v86 + 16))(v141, v78 + v84, v85);
    sub_24F5DC7B8(v78);
    (*(v86 + 56))(v83, 0, 1, v85);
  }

  v87 = (v76 + *(v59 + 100));
  v89 = *v87;
  v88 = v87[1];
  v147 = v89;
  v148 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215810);
  sub_24F926F38();
  v90 = v142;
  sub_24F921B38();
  v91 = sub_24F921B48();
  (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
  v92 = v125;
  v93 = v130;
  sub_24F925E58();

  sub_24E601704(v90, &qword_27F2157E8);
  sub_24E601704(v83, &qword_27F2157F0);
  v94 = (*(v128 + 8))(v74, v93);
  MEMORY[0x28223BE20](v94);
  v95 = swift_checkMetadataState();
  v96 = v121;
  v97 = v129;
  v98 = v123;
  sub_24F925EB8();
  (*(v127 + 8))(v92, v97);
  v147 = v97;
  v148 = v95;
  v149 = v98;
  v99 = swift_getOpaqueTypeConformance2();
  v100 = v122;
  v101 = v126;
  sub_24E7896B8(v96, v126, v99);
  v102 = *(v124 + 8);
  v102(v96, v101);
  sub_24E7896B8(v100, v101, v99);
  return (v102)(v100, v101);
}

void sub_24F5DA4F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v119 = a6;
  v118 = a5;
  v134 = a2;
  v137 = a1;
  v157 = a7;
  v94 = sub_24F924848();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  MEMORY[0x28223BE20](v12 - 8);
  v156 = &v92 - v13;
  v153 = sub_24F929888();
  v155 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v154 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for Page(0);
  v116 = *(v158 - 8);
  v117 = *(v116 + 64);
  MEMORY[0x28223BE20](v158);
  v111 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = a3;
  *&v159 = a3;
  *(&v159 + 1) = a4;
  v100 = a4;
  *&v160 = a5;
  *(&v160 + 1) = a6;
  v102 = type metadata accessor for IndexedSectionListPageView();
  v101 = *(v102 - 8);
  v105 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v97 = &v92 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408);
  *&v159 = v17;
  *(&v159 + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410);
  *&v160 = sub_24F924038();
  *(&v160 + 1) = v17;
  swift_getTupleTypeMetadata();
  v99 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v18 = type metadata accessor for IndexedSectionListView();
  v129 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v95 = &v92 - v19;
  v20 = sub_24F924038();
  v138 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v132 = &v92 - v21;
  v130 = v18;
  v110 = swift_getWitnessTable();
  v175 = v110;
  v176 = MEMORY[0x277CE0880];
  v22 = swift_getWitnessTable();
  *&v159 = v20;
  *(&v159 + 1) = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v149 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v146 = &v92 - v24;
  sub_24F924038();
  v151 = OpaqueTypeMetadata2;
  sub_24F924E38();
  v25 = sub_24F926DC8();
  v143 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v136 = &v92 - v26;
  v122 = v20;
  *&v159 = v20;
  *(&v159 + 1) = v22;
  v128 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_24E667ED0();
  v173 = OpaqueTypeConformance2;
  v174 = v28;
  v171 = swift_getWitnessTable();
  v172 = OpaqueTypeConformance2;
  v127 = OpaqueTypeConformance2;
  v170 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  *&v159 = v25;
  *(&v159 + 1) = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  v125 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v120 = &v92 - v31;
  type metadata accessor for PageBackgroundViewModifier(255);
  v126 = v30;
  v32 = sub_24F924038();
  v150 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v148 = &v92 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8);
  v34 = sub_24F924038();
  v144 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v141 = &v92 - v35;
  v36 = sub_24F924038();
  v139 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v133 = &v92 - v37;
  v38 = sub_24F924038();
  v135 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v131 = &v92 - v39;
  v145 = v25;
  *&v159 = v25;
  *(&v159 + 1) = v29;
  v123 = v29;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_24F5DC448(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier);
  v96 = v40;
  v168 = v40;
  v169 = v41;
  v152 = v32;
  v42 = swift_getWitnessTable();
  v43 = sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8);
  v108 = v42;
  v166 = v42;
  v167 = v43;
  v147 = v34;
  v44 = swift_getWitnessTable();
  v45 = sub_24E669F00();
  v106 = v44;
  v164 = v44;
  v165 = v45;
  v142 = v36;
  v46 = v95;
  v47 = swift_getWitnessTable();
  v48 = sub_24E669F54();
  v104 = v47;
  v162 = v47;
  v163 = v48;
  v49 = swift_getWitnessTable();
  v140 = v38;
  *&v159 = v38;
  *(&v159 + 1) = v49;
  v109 = v49;
  v50 = swift_getOpaqueTypeMetadata2();
  v113 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v107 = &v92 - v51;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418);
  v115 = v50;
  v124 = sub_24F924038();
  v121 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v112 = &v92 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v53);
  v114 = &v92 - v55;
  v56 = v101;
  v57 = v97;
  v58 = v134;
  v59 = v102;
  (*(v101 + 16))(v97, v134, v102, v54);
  v60 = v137;
  v61 = v111;
  sub_24F5D8554(v137, v111);
  v62 = v56;
  v63 = (*(v56 + 80) + 48) & ~*(v56 + 80);
  v64 = (v105 + *(v116 + 80) + v63) & ~*(v116 + 80);
  v65 = swift_allocObject();
  v66 = v100;
  *(v65 + 2) = v103;
  *(v65 + 3) = v66;
  v67 = v119;
  *(v65 + 4) = v118;
  *(v65 + 5) = v67;
  (*(v62 + 32))(&v65[v63], v57, v59);
  sub_24F5DE514(v61, &v65[v64]);
  sub_24E615E00(v58 + 24, &v159);
  sub_24EB82000(sub_24F5DE578, v65, &v159, v46);
  v68 = *(v60 + *(v158 + 128));
  if (v68 == 2 || (v68 & 1) == 0 || (v69 = sub_24F925818(), sub_24F925848(), sub_24F925848(), sub_24F925848() != v69))
  {
    sub_24F925848();
  }

  sub_24F924058();
  v70 = v132;
  v71 = v130;
  sub_24F926438();
  (*(v129 + 8))(v46, v71);
  *&v159 = 0;
  *(&v159 + 1) = 0xE000000000000000;
  sub_24F92A708();
  sub_24F92CA38();
  v159 = 0u;
  v160 = 0u;
  v72 = v154;
  sub_24F929838();

  sub_24E601704(&v159, &qword_27F2129B0);
  v73 = v146;
  v74 = v122;
  sub_24F925EE8();
  (*(v155 + 8))(v72, v153);
  (*(v138 + 8))(v70, v74);
  type metadata accessor for ASKBagContract();
  sub_24F928F28();
  type metadata accessor for ArcadeSubscription();
  sub_24F928F28();
  type metadata accessor for NetworkConnectionMonitor();
  sub_24F928F28();
  v75 = v58;
  v76 = v158;
  *(&v160 + 1) = v158;
  v161 = &protocol witness table for Page;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v159);
  sub_24F5D8554(v60, boxed_opaque_existential_1);
  v78 = v136;
  v79 = v151;
  sub_24F67B57C();

  (*(v149 + 8))(v73, v79);
  __swift_destroy_boxed_opaque_existential_1(&v159);
  v80 = v120;
  v81 = v145;
  sub_24F926398();
  (*(v143 + 8))(v78, v81);
  v82 = *(v76 + 96);
  v83 = v148;
  v84 = v126;
  View.pageBackground(using:dragIndicatorVisibility:isSideBySide:)(v60 + v82, *(v60 + *(v76 + 100)), 0, v126, v96);
  (*(v125 + 8))(v80, v84);
  v85 = v60 + v82;
  v88 = v156;
  sub_24E7D14D8(v85, v156);
  v86 = type metadata accessor for Page.Background(0);
  v87 = (*(*(v86 - 8) + 48))(v88, 1, v86);
  sub_24E601704(v88, &qword_27F21D8F8);
  LOBYTE(v88) = 0;
  if (v87 == 1)
  {
    v88 = *(v75 + 64);
    if (*(v75 + 72) != 1)
    {

      sub_24F92BDC8();
      v89 = sub_24F9257A8();
      sub_24F921FD8();

      v90 = v92;
      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E83C01C(v88, 0);
      (*(v93 + 8))(v90, v94);
      LOBYTE(v88) = v159;
    }
  }

  LOBYTE(v159) = v88 & 1;
  v91 = v152;
  View.backgroundTheme(_:)();
  (*(v150 + 8))(v83, v91);
  sub_24F5634EC();
}

uint64_t sub_24F5DB7F8()
{
  (*(*(v3 - 456) + 8))(v1, v0);
  v4 = *(v3 - 712);
  v5 = *(v3 - 448);
  v6 = *(v3 - 696);
  sub_24F926858();
  (*(*(v3 - 488) + 8))(v2, v5);
  *(v3 - 256) = v5;
  *(v3 - 248) = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v8 = *(v3 - 672);
  v9 = *(v3 - 648);
  sub_24EB9DC48();
  (*(*(v3 - 664) + 8))(v4, v9);
  v10 = sub_24E602068(&qword_27F248428, &qword_27F248418);
  *(v3 - 296) = OpaqueTypeConformance2;
  *(v3 - 288) = v10;
  v11 = *(v3 - 576);
  WitnessTable = swift_getWitnessTable();
  v13 = *(v3 - 656);
  sub_24E7896B8(v8, v11, WitnessTable);
  v14 = *(*(v3 - 600) + 8);
  v14(v8, v11);
  sub_24E7896B8(v13, v11, WitnessTable);
  return (v14)(v13, v11);
}

uint64_t sub_24F5DB9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X8>)
{
  v67 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50);
  MEMORY[0x28223BE20](v13 - 8);
  v51 = &v45 - v14;
  WitnessTable = *(a4 - 8);
  MEMORY[0x28223BE20](v15);
  v50 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410);
  v73 = sub_24F924038();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v68 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v69 = &v45 - v19;
  v70 = *(a3 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v72 = &v45 - v24;
  v81 = a3;
  v82 = a4;
  v83 = a5;
  v84 = a6;
  v63 = a6;
  v25 = type metadata accessor for IndexedSectionListPageView();
  sub_24F5D8BFC(a2);
  if (v26)
  {
    v60 = 0;
    v57 = 0;
    v58 = 0;
    v56 = 0;
    v53 = 0;
    v54 = 0;
    v52 = 0;
    v59 = 1;
  }

  else
  {
    sub_24F927618();
    sub_24F9238C8();
    v59 = 0;
    v60 = v90[8];
    v57 = v94;
    v58 = v92;
    v56 = v95;
    LOBYTE(v79[0]) = 0;
    LOBYTE(v96) = v91;
    LOBYTE(v90[0]) = v93;
    v52 = 0;
    v53 = v91;
    v54 = v93;
    LOBYTE(v81) = 0;
  }

  (*(a1 + *(v25 + 88)))(a2);
  v66 = a5;
  sub_24E7896B8(v22, a3, a5);
  v27 = *(v70 + 8);
  v64 = v22;
  v65 = a3;
  v61 = v27;
  v62 = v70 + 8;
  v27(v22, a3);
  v28 = v50;
  (*(a1 + *(v25 + 92)))(a2);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8);
  v29 = v51;
  sub_24F926F58();
  v30 = v68;
  v49 = v25;
  v31 = v63;
  sub_24F9261B8();

  sub_24E601704(v29, &qword_27F216F50);
  (*(WitnessTable + 8))(v28, a4);
  v32 = sub_24E602068(&qword_27F2484A8, &qword_27F248410);
  v90[5] = v31;
  v90[6] = v32;
  v33 = v73;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v30, v33, WitnessTable);
  v63 = *(v71 + 8);
  v63(v30, v33);
  sub_24F5D8E5C(a2);
  if (v34)
  {
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v35 = 0;
    LODWORD(v50) = 1;
  }

  else
  {
    sub_24F927618();
    sub_24F9238C8();
    LODWORD(v50) = 0;
    v51 = v96;
    v48 = v100;
    v49 = v98;
    LOBYTE(v79[0]) = 0;
    LOBYTE(v90[0]) = v97;
    LOBYTE(v78[0]) = v99;
    v35 = v97;
    v46 = v99;
    v47 = v101;
    LOBYTE(v81) = 0;
  }

  v81 = 0;
  v82 = v52;
  v83 = v60;
  v84 = v53;
  v85 = v58;
  v86 = v54;
  v87 = v57;
  v88 = v56;
  v89 = v59;
  v90[0] = &v81;
  v37 = v64;
  v36 = v65;
  v38 = v72;
  (*(v70 + 16))(v64, v72, v65);
  v90[1] = v37;
  v39 = v68;
  v40 = v69;
  v41 = v73;
  (*(v71 + 16))(v68, v69, v73);
  v79[0] = 0;
  v79[1] = 0;
  v79[2] = v51;
  v79[3] = v35;
  v79[4] = v49;
  v79[5] = v46;
  v79[6] = v48;
  v79[7] = v47;
  v80 = v50;
  v90[2] = v39;
  v90[3] = v79;
  v78[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248408);
  v78[1] = v36;
  v78[2] = v41;
  v78[3] = v78[0];
  v74 = sub_24F58D3F0();
  v75 = v66;
  v76 = WitnessTable;
  v77 = v74;
  sub_24F57BA64(v90, 4uLL, v78);
  v42 = v63;
  v63(v40, v41);
  v43 = v61;
  v61(v38, v36);
  v42(v39, v41);
  return v43(v37, v36);
}

uint64_t sub_24F5DC0C0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)()@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a1;
  v30 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50);
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  type metadata accessor for IndexedSectionListPageView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8);
  sub_24F926F58();
  v20 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v21 = swift_allocObject();
  sub_24F5DC91C(v12, v21 + v20);
  v29 = sub_24F928FD8();
  sub_24F929298();
  v31 = sub_24F587A28;
  v32 = v21;
  v22 = *(v14 + 16);
  v22(v19, v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248458);
  sub_24E602068(&qword_27F248460, &qword_27F248458);
  sub_24F929238();
  v23 = *(v14 + 8);
  v23(v16, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF8);
  v24 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v25 = swift_allocObject();
  v22((v25 + v24), v19, v13);
  sub_24F929298();
  v22(v16, (v25 + v24), v13);
  swift_setDeallocating();
  v23((v25 + v24), v13);
  swift_deallocClassInstance();
  sub_24F929228();
  v23(v16, v13);
  return (v23)(v19, v13);
}

uint64_t sub_24F5DC448(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F5DC490()
{
  v1 = type metadata accessor for IndexedSectionListPageView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80));
  sub_24E74C370(*v2, *(v2 + 8), *(v2 + 16));
  __swift_destroy_boxed_opaque_existential_1(v2 + 24);
  sub_24E83C01C(*(v2 + 64), *(v2 + 72));
  v3 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923E98();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[16]);

  v5 = v1[19];
  v6 = sub_24F929158();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  v7 = v2 + v1[24];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48);
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8);

  return swift_deallocObject();
}

void sub_24F5DC6EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for IndexedSectionListPageView() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  sub_24F5DA4F0(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_24F5DC7B8(uint64_t a1)
{
  v2 = type metadata accessor for Page(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F5DC814()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[10];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}