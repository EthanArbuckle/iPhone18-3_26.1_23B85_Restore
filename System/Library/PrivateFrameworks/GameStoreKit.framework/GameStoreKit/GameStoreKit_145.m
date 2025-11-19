uint64_t sub_24F4F1A3C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AsymmetricalInsetRoundedRectangle();
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_24F4F2F44(v1, &v12 - v7, type metadata accessor for AsymmetricalInsetRoundedRectangle);
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v9 = sub_24F926D08();

  sub_24F4F2F44(v8, v5, type metadata accessor for AsymmetricalInsetRoundedRectangle);
  sub_24F4F1DE8(&qword_27F215938, type metadata accessor for AsymmetricalInsetRoundedRectangle);
  v10 = sub_24F927348();
  result = sub_24F4F1E30(v8, type metadata accessor for AsymmetricalInsetRoundedRectangle);
  *(a1 + 40) = v10;
  *(a1 + 48) = v9;
  return result;
}

uint64_t sub_24F4F1BB4()
{
  MEMORY[0x28223BE20](v0);
  sub_24F47D218(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F4F1DE8(&qword_27F2150D8, type metadata accessor for PlayerLockupComponent);
  return sub_24F9218E8();
}

unint64_t sub_24F4F1C78()
{
  result = qword_27F2466D8;
  if (!qword_27F2466D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2466D8);
  }

  return result;
}

unint64_t sub_24F4F1CCC()
{
  result = qword_27F2466E0;
  if (!qword_27F2466E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2466E0);
  }

  return result;
}

unint64_t sub_24F4F1D20()
{
  result = qword_27F2466E8;
  if (!qword_27F2466E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2466E8);
  }

  return result;
}

unint64_t sub_24F4F1D94()
{
  result = qword_27F246710;
  if (!qword_27F246710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246710);
  }

  return result;
}

uint64_t sub_24F4F1DE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F4F1E30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_24F4F1ED8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_24F4F1F30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlayerLockup(0);
  sub_24E60169C(a1 + *(v4 + 44), v7, qword_27F24EC90);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_24F4F2064(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

uint64_t sub_24F4F21FC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

void sub_24F4F2380()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PlayerAvatar(319);
    if (v1 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v2 <= 0x3F)
      {
        sub_24E61C938();
        if (v3 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
          if (v4 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F21C120, &qword_27F213840);
            if (v5 <= 0x3F)
            {
              sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
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

unint64_t sub_24F4F251C()
{
  result = qword_27F246738;
  if (!qword_27F246738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246738);
  }

  return result;
}

unint64_t sub_24F4F2574()
{
  result = qword_27F246740;
  if (!qword_27F246740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246740);
  }

  return result;
}

unint64_t sub_24F4F25CC()
{
  result = qword_27F246748;
  if (!qword_27F246748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246748);
  }

  return result;
}

unint64_t sub_24F4F2624()
{
  result = qword_27F246750;
  if (!qword_27F246750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246750);
  }

  return result;
}

unint64_t sub_24F4F267C()
{
  result = qword_27F246758;
  if (!qword_27F246758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246758);
  }

  return result;
}

unint64_t sub_24F4F26D4()
{
  result = qword_27F246760;
  if (!qword_27F246760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246760);
  }

  return result;
}

unint64_t sub_24F4F272C()
{
  result = qword_27F246768;
  if (!qword_27F246768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246768);
  }

  return result;
}

unint64_t sub_24F4F2784()
{
  result = qword_27F246770;
  if (!qword_27F246770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246770);
  }

  return result;
}

unint64_t sub_24F4F27DC()
{
  result = qword_27F246778;
  if (!qword_27F246778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246778);
  }

  return result;
}

unint64_t sub_24F4F2834()
{
  result = qword_27F246780;
  if (!qword_27F246780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246780);
  }

  return result;
}

unint64_t sub_24F4F288C()
{
  result = qword_27F246788;
  if (!qword_27F246788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246788);
  }

  return result;
}

unint64_t sub_24F4F28E4()
{
  result = qword_27F246790;
  if (!qword_27F246790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246790);
  }

  return result;
}

uint64_t sub_24F4F2938(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E6964616568 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x634170756B636F6CLL && a2 == 0xEF79726F73736563 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x654D6C6169636F73 && a2 == 0xEA0000000000756ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65)
  {

    return 9;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_24F4F2C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsymmetricalInsetRoundedRectangle();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F4F2D00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsymmetricalInsetRoundedRectangle();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F4F2D90()
{
  result = type metadata accessor for AsymmetricalInsetRoundedRectangle();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F4F2F44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4F2FB4()
{
  v1 = type metadata accessor for PlayerLockup(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  __swift_destroy_boxed_opaque_existential_1(v2);
  v3 = v2 + v1[5];

  v4 = type metadata accessor for PlayerAvatar(0);
  v5 = *(v4 + 20);
  v6 = type metadata accessor for PlayerAvatar.Overlay(0);
  if (!(*(*(v6 - 8) + 48))(v3 + v5, 1, v6) && !swift_getEnumCaseMultiPayload())
  {
    v7 = sub_24F9289E8();
    (*(*(v7 - 8) + 8))(v3 + v5, v7);
  }

  v8 = v3 + *(v4 + 24);
  if (*(v8 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  sub_24E63FFA4();
  v9 = v1[10];
  v10 = sub_24F929608();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  v12 = v2 + v1[11];
  if (*(v12 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  v13 = v1[13];
  v14 = sub_24F92A6D8();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v2 + v13, 1, v14))
  {
    (*(v15 + 8))(v2 + v13, v14);
  }

  return swift_deallocObject();
}

uint64_t sub_24F4F3280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4F32E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayerLockup(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F4F10D0(v4, a1);
}

uint64_t sub_24F4F3368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F4F33E0()
{
  result = qword_27F246810;
  if (!qword_27F246810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2467D8);
    sub_24F4F346C();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246810);
  }

  return result;
}

unint64_t sub_24F4F346C()
{
  result = qword_27F246818;
  if (!qword_27F246818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2467D0);
    sub_24E602068(&qword_27F246820, &qword_27F2467C8);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246818);
  }

  return result;
}

uint64_t ChallengesSuggestedLeaderboardDataIntent.initiatorID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ChallengesSuggestedLeaderboardDataIntent.gameBundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24F4F35E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for ChallengesPlayerInviteType(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_9;
  }

  v11 = type metadata accessor for Player(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[10];
    goto LABEL_9;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[11];
    goto LABEL_9;
  }

  v15 = *(a1 + a3[14]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_24F4F37A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = type metadata accessor for ChallengesPlayerInviteType(0);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[7];
    }

    else
    {
      v13 = type metadata accessor for Player(0);
      if (*(*(v13 - 8) + 84) == a3)
      {
        v9 = v13;
        v10 = *(v13 - 8);
        v11 = a4[10];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[14]) = (a2 - 1);
          return result;
        }

        v9 = result;
        v10 = *(result - 8);
        v11 = a4[11];
      }
    }
  }

  v15 = *(v10 + 56);

  return v15(a1 + v11, a2, a2, v9);
}

void sub_24F4F3974()
{
  sub_24E600550();
  if (v0 <= 0x3F)
  {
    sub_24F4FBB98(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24F4FBE18(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ChallengesPlayerInviteType(319);
        if (v3 <= 0x3F)
        {
          sub_24F4FBE18(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Player(319);
            if (v5 <= 0x3F)
            {
              sub_24F4FBB98(319, &qword_27F21FB48, type metadata accessor for GameActivityDraftGameInfo, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_24E6C5550();
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

id sub_24F4F3B60()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAAF0]) init];
  qword_27F246828 = result;
  return result;
}

BOOL sub_24F4F3B94()
{
  v1 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ChallengesPlayerInviteType(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlayTogetherPlayerSelectionRow(0);
  sub_24F4FB334(v0 + *(v7 + 28), v6, type metadata accessor for ChallengesPlayerInviteType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F0) + 48);
      sub_24F4FB39C(v6, v3, type metadata accessor for Player);
      if (*(v0 + *(v7 + 52)) == 2)
      {
        v10 = v1[21];
      }

      else
      {
        v10 = v1[20];
      }

      v12 = v3[v10];
      if (v12 == 2 || (v12 & 1) != 0)
      {
        sub_24F4FB6DC(v3, type metadata accessor for Player);
        sub_24E601704(&v6[v9], &qword_27F2212F8);
        return 0;
      }

      else
      {
        v13 = *&v3[v1[10] + 8];

        sub_24F4FB6DC(v3, type metadata accessor for Player);
        if (v13)
        {
        }

        sub_24E601704(&v6[v9], &qword_27F2212F8);
        return v13 != 0;
      }
    }

    else
    {
      sub_24F4FB6DC(v6, type metadata accessor for ChallengesPlayerInviteType);
      return 1;
    }
  }

  else
  {
    sub_24F4FB6DC(v6, type metadata accessor for ChallengesPlayerInviteType);
    return 0;
  }
}

BOOL sub_24F4F3DEC()
{
  v1 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ChallengesPlayerInviteType(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlayTogetherPlayerSelectionRow(0);
  sub_24F4FB334(v0 + *(v7 + 28), v6, type metadata accessor for ChallengesPlayerInviteType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24F4FB6DC(v6, type metadata accessor for ChallengesPlayerInviteType);
    return 1;
  }

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F0) + 48);
  sub_24F4FB39C(v6, v3, type metadata accessor for Player);
  if (*(v0 + *(v7 + 52)) == 2)
  {
    v9 = v1[21];
  }

  else
  {
    v9 = v1[20];
  }

  v10 = v3[v9];
  if (v10 == 2 || (v10 & 1) != 0)
  {
    sub_24F4FB6DC(v3, type metadata accessor for Player);
    sub_24E601704(&v6[v8], &qword_27F2212F8);
    return 1;
  }

  v12 = *&v3[v1[10] + 8];

  sub_24F4FB6DC(v3, type metadata accessor for Player);
  if (v12)
  {
  }

  sub_24E601704(&v6[v8], &qword_27F2212F8);
  return v12 != 0;
}

uint64_t sub_24F4F401C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = sub_24F9241F8();
  v4 = *(v3 - 8);
  v30 = v3;
  v31 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlayTogetherPlayerSelectionRow(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246848);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  sub_24F4FB334(v2, &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlayTogetherPlayerSelectionRow);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_24F4FB39C(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PlayTogetherPlayerSelectionRow);
  v33 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246850);
  sub_24F4F7B34();
  sub_24F926F88();
  sub_24F9241E8();
  sub_24E602068(&qword_27F246880, &qword_27F246848);
  sub_24F4FC16C(&qword_27F212838, MEMORY[0x277CDDB18]);
  v17 = v32;
  v18 = v30;
  sub_24F926178();
  (*(v31 + 8))(v6, v18);
  (*(v12 + 8))(v14, v11);
  v19 = sub_24F4F4FF4();
  v21 = v20;
  v22 = v2 + *(v8 + 32);
  v23 = *v22;
  v24 = *(v22 + 8);
  v37 = v23;
  v38 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F58();
  v25 = v34;
  v26 = v35;
  LOBYTE(v8) = v36;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246888);
  v28 = v17 + *(result + 36);
  *v28 = v19;
  *(v28 + 8) = v21;
  *(v28 + 16) = v25;
  *(v28 + 24) = v26;
  *(v28 + 32) = v8;
  return result;
}

uint64_t sub_24F4F43D4()
{
  sub_24F9276F8();
  sub_24F923B18();
}

uint64_t sub_24F4F4440@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246890);
  MEMORY[0x28223BE20](v2);
  v4 = &v39 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246898);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2468A0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - v10;
  sub_24F4F4864(v7);
  v7[*(v5 + 36)] = 0;
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v12 = sub_24F9248C8();
  __swift_project_value_buffer(v12, qword_27F39F078);
  sub_24F4FB404();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v7, &qword_27F246898);
  v13 = *(sub_24F924258() + 20);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_24F924B38();
  (*(*(v15 - 8) + 104))(&v4[v13], v14, v15);
  __asm { FMOV            V0.2D, #10.0 }

  *v4 = _Q0;
  *&v4[*(sub_24F924248() + 20)] = 0xC018000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v21 = sub_24F926D08();

  *&v4[*(v2 + 52)] = v21;
  sub_24E60169C(v4, a1, &qword_27F246890);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246878);
  (*(v9 + 16))(a1 + v22[9], v11, v8);
  v23 = a1 + v22[10];
  *v23 = sub_24F923398() & 1;
  *(v23 + 8) = v24;
  *(v23 + 16) = v25 & 1;
  v26 = a1 + v22[11];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v27 = qword_27F24E488;
  v28 = sub_24F923398();
  v30 = v29;
  v32 = v31;
  v33 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246868) + 36);
  *v33 = v27;
  *(v33 + 8) = v28 & 1;
  *(v33 + 16) = v30;
  *(v33 + 24) = v32 & 1;
  LOBYTE(v27) = sub_24F923398();
  v35 = v34;
  LOBYTE(v30) = v36;
  sub_24E601704(v4, &qword_27F246890);
  (*(v9 + 8))(v11, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246850);
  v38 = a1 + *(result + 36);
  *v38 = v27 & 1;
  *(v38 + 8) = v35;
  *(v38 + 16) = v30 & 1;
  return result;
}

uint64_t sub_24F4F4864@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for ChallengesPlayerInviteType(0);
  MEMORY[0x28223BE20](v50);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F929888();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v45 - v9;
  v10 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v10 - 8);
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F92B088();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_24F925508();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2468C0);
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2468E0);
  v20 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v22 = &v45 - v21;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2468B0);
  MEMORY[0x28223BE20](v48);
  v24 = &v45 - v23;
  *v19 = sub_24F9249A8();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v25 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2468E8) + 44)];
  v51 = v2;
  sub_24F4F5830(v2, v25);
  sub_24F9254E8();
  v26 = sub_24F4FB5F0();
  sub_24F926678();
  (*(v14 + 8))(v16, v13);
  sub_24E601704(v19, &qword_27F2468C0);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v27 = qword_27F24F280;
  sub_24F91F778();
  v58 = sub_24F92B148();
  v59 = v28;
  *&v57[0] = v17;
  *(&v57[0] + 1) = v26;
  swift_getOpaqueTypeConformance2();
  sub_24E600AEC();
  v29 = v46;
  sub_24F9264D8();

  (*(v20 + 8))(v22, v29);
  v30 = type metadata accessor for PlayTogetherPlayerSelectionRow(0);
  v31 = v51;
  v32 = v49;
  sub_24F4FB334(v51 + *(v30 + 28), v49, type metadata accessor for ChallengesPlayerInviteType);
  v33 = v24;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F0) + 48);
    v35 = v45;
    sub_24F4FB39C(v32, v45, type metadata accessor for Player);
    v37 = *v35;
    v36 = v35[1];

    sub_24F4FB6DC(v35, type metadata accessor for Player);
    sub_24E601704(v32 + v34, &qword_27F2212F8);
    v38 = MEMORY[0x277D837D0];
  }

  else
  {
    sub_24F4FB6DC(v32, type metadata accessor for ChallengesPlayerInviteType);
    v38 = 0;
    v37 = 0;
    v36 = 0;
    v60 = 0;
  }

  v61 = v38;
  v58 = v37;
  v59 = v36;
  memset(v57, 0, sizeof(v57));
  v39 = v52;
  sub_24F9297C8();
  sub_24E601704(v57, &qword_27F2129B0);
  sub_24E601704(&v58, &qword_27F2129B0);
  v40 = *(v31 + *(v30 + 32));
  v61 = MEMORY[0x277D839B0];
  LOBYTE(v58) = v40;
  v41 = v53;
  sub_24F929868();
  v42 = v55;
  v43 = *(v54 + 8);
  v43(v39, v55);
  sub_24E601704(&v58, &qword_27F2129B0);
  sub_24F4FB4F8();
  sub_24F925EE8();
  v43(v41, v42);
  return sub_24E601704(v33, &qword_27F2468B0);
}

uint64_t sub_24F4F4FF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F68);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v60 - v2;
  v4 = sub_24F91F1A8();
  v74 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Player(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v60 - v12;
  v14 = type metadata accessor for ChallengesPlayerInviteType(0);
  MEMORY[0x28223BE20](v14);
  v16 = (v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for PlayTogetherPlayerSelectionRow(0);
  sub_24F4FB334(v0 + *(v17 + 28), v16, type metadata accessor for ChallengesPlayerInviteType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v21 = v8;
    v22 = v74;
    v65 = v13;
    v66 = v7;
    v23 = v16[2];
    v24 = *(v23 + 16);
    if (v24)
    {
      v60[2] = v16[1];
      v63 = v6;
      v64 = v3;
      v75 = v4;
      v80 = MEMORY[0x277D84F90];
      sub_24F4578E0(0, v24, 0);
      v25 = v80;
      v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v60[1] = v23;
      v27 = v23 + v26;
      v28 = objc_opt_self();
      v78 = "dCAIDFriendRequests";
      v79 = v28;
      v29 = *(v21 + 72);
      v31 = v65;
      v30 = v66;
      v76 = v65 + 8;
      v77 = v29;
      v61 = (v22 + 8);
      v62 = (v22 + 56);
      do
      {
        sub_24F4FB334(v27, v31, type metadata accessor for Player);
        v32 = [v79 standardUserDefaults];
        v33 = sub_24F92B098();
        v34 = [v32 BOOLForKey_];

        if (v34)
        {
          v35 = (v31 + v30[9]);
          if (v35[1] == 1)
          {
            v36 = (v31 + v30[8]);
            if (!v36[1])
            {
              v36 = (v31 + v30[7]);
            }

            v40 = v36[1];
            v39 = *v36;
          }

          else
          {
            v41 = v35[10];
            v42 = v35[9];
            v71 = v35[8];
            v72 = v41;
            v43 = v35[6];
            v73 = v35[4];
            v74 = v43;
            v69 = v35[2];
            v44 = *v35;
            v67 = v42;
            v68 = v44;
            v70 = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
            [v70 setStyle_];
            (*v62)(v64, 1, 1, v75);

            v31 = v65;
            v45 = v63;
            sub_24F91F178();
            v46 = sub_24F91F188();
            v30 = v66;
            (*v61)(v45, v75);
            v47 = v70;
            v48 = [v70 stringFromPersonNameComponents_];

            v39 = sub_24F92B0D8();
            v40 = v49;
          }
        }

        else
        {
          v37 = (v31 + v30[7]);
          v39 = *v37;
          v38 = v37[1];

          v40 = v38;
        }

        sub_24F4FB6DC(v31, type metadata accessor for Player);

        v80 = v25;
        v51 = *(v25 + 16);
        v50 = *(v25 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_24F4578E0((v50 > 1), v51 + 1, 1);
          v25 = v80;
        }

        *(v25 + 16) = v51 + 1;
        v52 = v25 + 16 * v51;
        *(v52 + 32) = v39;
        *(v52 + 40) = v40;
        v27 += v77;
        --v24;
      }

      while (v24);
    }

    if (qword_27F211310 != -1)
    {
      swift_once();
    }

    v56 = qword_27F246828;
    v57 = sub_24F92B588();

    v58 = [v56 stringForObjectValue_];

    if (v58)
    {
      v20 = sub_24F92B0D8();

      return v20;
    }

    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v53 = *v16;
    v54 = [objc_opt_self() stringFromContact:*v16 style:0];
    if (v54)
    {
      v55 = v54;
      v20 = sub_24F92B0D8();

      return v20;
    }

    return 0;
  }

  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F0) + 48);
  sub_24F4FB39C(v16, v10, type metadata accessor for Player);
  v20 = sub_24F37B534();
  sub_24F4FB6DC(v10, type metadata accessor for Player);

  sub_24E601704(v16 + v19, &qword_27F2212F8);
  return v20;
}

uint64_t sub_24F4F5758(uint64_t a1)
{
  v2 = type metadata accessor for PlayTogetherPlayerSelectionRow(0);
  v3 = (a1 + *(v2 + 56));
  v4 = *v3;
  v5 = *(v2 + 28);
  result = (*v3)(a1 + v5);
  if (result)
  {
    result = sub_24F4F3DEC();
    if ((result & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
      sub_24F926F48();
      return v4(a1 + v5);
    }
  }

  return result;
}

uint64_t sub_24F4F5830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v47 = sub_24F927748();
  v3 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2468F0);
  MEMORY[0x28223BE20](v45);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  MEMORY[0x28223BE20](v10);
  v49 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2468F8);
  MEMORY[0x28223BE20](v12 - 8);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v17 = type metadata accessor for PlayerIcon(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v46 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - v21;
  v23 = type metadata accessor for PlayTogetherPlayerSelectionRow(0);
  sub_24F4FB334(a1 + *(v23 + 28), &v22[*(v18 + 28)], type metadata accessor for ChallengesPlayerInviteType);
  v24 = sub_24F4F3B94();
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v22[*(v18 + 32)] = v24;
  *v16 = sub_24F924C98();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246900);
  sub_24F4F5D74(a1, &v16[*(v25 + 44)]);
  v26 = *(a1 + *(v23 + 32));
  v27 = sub_24F926DF8();
  v28 = sub_24F9258F8();
  KeyPath = swift_getKeyPath();
  if (v26)
  {
    v30 = MEMORY[0x277CE13D8];
    v31 = sub_24F925198();
  }

  else
  {
    v30 = MEMORY[0x277CE13B8];
    v31 = sub_24F9251B8();
  }

  v32 = v31;
  v33 = *v30;
  v34 = v47;
  (*(v3 + 104))(v5, v33, v47);
  (*(v3 + 32))(&v9[*(v45 + 36)], v5, v34);
  *v9 = v27;
  *(v9 + 1) = KeyPath;
  *(v9 + 2) = v28;
  *(v9 + 6) = v32;
  v35 = v9;
  v36 = v49;
  sub_24E6009C8(v35, v49, &qword_27F2468F0);
  v37 = v46;
  sub_24F4FB334(v22, v46, type metadata accessor for PlayerIcon);
  v38 = v48;
  sub_24E60169C(v16, v48, &qword_27F2468F8);
  v39 = v50;
  sub_24E60169C(v36, v50, &qword_27F2468F0);
  v40 = v51;
  sub_24F4FB334(v37, v51, type metadata accessor for PlayerIcon);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246908);
  sub_24E60169C(v38, v40 + v41[12], &qword_27F2468F8);
  v42 = v40 + v41[16];
  *v42 = 0;
  *(v42 + 8) = 1;
  sub_24E60169C(v39, v40 + v41[20], &qword_27F2468F0);
  sub_24E601704(v36, &qword_27F2468F0);
  sub_24E601704(v16, &qword_27F2468F8);
  sub_24F4FB6DC(v22, type metadata accessor for PlayerIcon);
  sub_24E601704(v39, &qword_27F2468F0);
  sub_24E601704(v38, &qword_27F2468F8);
  return sub_24F4FB6DC(v37, type metadata accessor for PlayerIcon);
}

uint64_t sub_24F4F5D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v95 = type metadata accessor for GameHistoryInfoView(0);
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v88 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F8);
  MEMORY[0x28223BE20](v4 - 8);
  v87 = &v83 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246910);
  MEMORY[0x28223BE20](v6 - 8);
  v96 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v94 = &v83 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v101 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v99 = &v83 - v14;
  v15 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v15 - 8);
  v86 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v83 - v18;
  v20 = type metadata accessor for ChallengesPlayerInviteType(0);
  MEMORY[0x28223BE20](v20);
  v91 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v83 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246918);
  MEMORY[0x28223BE20](v25 - 8);
  v92 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v83 - v28;
  v85 = type metadata accessor for PlayTogetherPlayerSelectionRow(0);
  v89 = *(v85 + 28);
  sub_24F4FB334(a1 + v89, v24, type metadata accessor for ChallengesPlayerInviteType);
  v90 = v20;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v100 = v29;
  v98 = v10;
  if (EnumCaseMultiPayload == 1)
  {
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F0) + 48);
    sub_24F4FB39C(v24, v19, type metadata accessor for Player);
    sub_24F37B534();
    v33 = v32;
    v35 = v34;
    sub_24F4FB6DC(v19, type metadata accessor for Player);

    sub_24E601704(&v24[v31], &qword_27F2212F8);
    if (v35)
    {
      v102 = v33;
      v103 = v35;
      sub_24E600AEC();
      v36 = sub_24F925E18();
      v38 = v37;
      v40 = v39;
      sub_24F925A08();
      v41 = sub_24F925C98();
      v84 = a1;
      v43 = v42;
      v44 = v11;
      v46 = v45;
      v48 = v47;

      sub_24E600B40(v36, v38, v40 & 1);

      v102 = v41;
      v103 = v43;
      LOBYTE(v38) = v46 & 1;
      v11 = v44;
      v104 = v38;
      v105 = v48;
      v49 = v99;
      sub_24F9268B8();
      v50 = v41;
      v10 = v98;
      a1 = v84;
      sub_24E600B40(v50, v43, v38);

      *(v49 + *(v10 + 36)) = sub_24F9251C8();
      v29 = v100;
      sub_24E6009C8(v49, v100, &qword_27F217358);
      v51 = 0;
    }

    else
    {
      v51 = 1;
      v29 = v100;
    }
  }

  else
  {
    sub_24F4FB6DC(v24, type metadata accessor for ChallengesPlayerInviteType);
    v51 = 1;
  }

  (*(v11 + 56))(v29, v51, 1, v10);
  v102 = sub_24F4F4FF4();
  v103 = v52;
  sub_24E600AEC();
  v53 = sub_24F925E18();
  v55 = v54;
  v57 = v56;
  sub_24F9258D8();
  v58 = sub_24F925C98();
  v60 = v59;
  v62 = v61;
  v64 = v63;

  sub_24E600B40(v53, v55, v57 & 1);

  v102 = v58;
  v103 = v60;
  v104 = v62 & 1;
  v105 = v64;
  v65 = v101;
  sub_24F9268B8();
  sub_24E600B40(v58, v60, v62 & 1);

  *(v65 + *(v98 + 36)) = sub_24F925198();
  v66 = v91;
  sub_24F4FB334(a1 + v89, v91, type metadata accessor for ChallengesPlayerInviteType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F0) + 48);
    v68 = v86;
    sub_24F4FB39C(v66, v86, type metadata accessor for Player);
    v69 = v66 + v67;
    v70 = v87;
    sub_24E6009C8(v69, v87, &qword_27F2212F8);
    v71 = v88;
    sub_24F4FB39C(v68, v88, type metadata accessor for Player);
    v72 = v95;
    sub_24E60169C(a1 + *(v85 + 44), v71 + *(v95 + 20), &qword_27F212B28);
    sub_24E6009C8(v70, v71 + *(v72 + 24), &qword_27F2212F8);
    v73 = v94;
    sub_24F4FB39C(v71, v94, type metadata accessor for GameHistoryInfoView);
    v74 = 0;
  }

  else
  {
    sub_24F4FB6DC(v66, type metadata accessor for ChallengesPlayerInviteType);
    v74 = 1;
    v73 = v94;
    v72 = v95;
  }

  (*(v93 + 56))(v73, v74, 1, v72);
  v75 = v100;
  v76 = v92;
  sub_24E60169C(v100, v92, &qword_27F246918);
  v77 = v101;
  v78 = v99;
  sub_24E60169C(v101, v99, &qword_27F217358);
  v79 = v96;
  sub_24E60169C(v73, v96, &qword_27F246910);
  v80 = v97;
  sub_24E60169C(v76, v97, &qword_27F246918);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246920);
  sub_24E60169C(v78, v80 + *(v81 + 48), &qword_27F217358);
  sub_24E60169C(v79, v80 + *(v81 + 64), &qword_27F246910);
  sub_24E601704(v73, &qword_27F246910);
  sub_24E601704(v77, &qword_27F217358);
  sub_24E601704(v75, &qword_27F246918);
  sub_24E601704(v79, &qword_27F246910);
  sub_24E601704(v78, &qword_27F217358);
  return sub_24E601704(v76, &qword_27F246918);
}

uint64_t sub_24F4F66F4()
{
  v1 = type metadata accessor for PlayTogetherPlayerSelectionRow(0);
  v96 = *(*(v1 - 1) + 80);
  v95 = (v96 + 16) & ~v96;
  v2 = v0 + v95;
  if (*(v0 + v95 + 40))
  {
    if (*(v2 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + v95);
    }
  }

  else
  {
  }

  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F921B58();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = (v2 + v1[7]);
  type metadata accessor for ChallengesPlayerInviteType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v99 = v0 + v95;
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:

      v7 = type metadata accessor for Player(0);
      v8 = v7[6];
      v9 = sub_24F9289E8();
      v92 = *(v9 - 8);
      v97 = *(v92 + 8);
      v97(v5 + v8, v9);

      if (*(v5 + v7[9] + 8) != 1)
      {
      }

      v10 = v5 + v7[13];
      v11 = type metadata accessor for CallProviderConversationHandleSet();
      v91 = *(*(v11 - 8) + 48);
      if (!v91(v10, 1, v11))
      {
        v12 = type metadata accessor for CallProviderConversationHandle();
        v13 = *(*(v12 - 8) + 48);
        if (!v13(v10, 1, v12))
        {
          v14 = v1;

          v15 = *(type metadata accessor for CallProvider() + 24);
          if (!(*(v92 + 48))(&v10[v15], 1, v9))
          {
            v97(&v10[v15], v9);
          }

          v1 = v14;
        }

        v16 = &v10[*(v11 + 20)];
        if (!v13(v16, 1, v12))
        {

          v17 = *(type metadata accessor for CallProvider() + 24);
          if (!(*(v92 + 48))(&v16[v17], 1, v9))
          {
            v97(&v16[v17], v9);
          }
        }

        v2 = v0 + v95;
      }

      if (*(v5 + v7[15] + 8))
      {
      }

      v18 = v5 + v7[16];
      PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
      v89 = *(*(PlayedTogetherInfo - 8) + 48);
      v90 = PlayedTogetherInfo;
      v93 = v1;
      if (!v89(v18, 1))
      {

        v20 = type metadata accessor for Game();
        v97(&v18[v20[18]], v9);
        v21 = v20[19];
        if (!(*(v92 + 48))(&v18[v21], 1, v9))
        {
          v97(&v18[v21], v9);
        }

        v22 = v20[21];
        v23 = sub_24F920818();
        v24 = *(v23 - 8);
        if (!(*(v24 + 48))(&v18[v22], 1, v23))
        {
          (*(v24 + 8))(&v18[v22], v23);
        }

        v2 = v99;
      }

      v25 = v5 + v7[17];
      ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
      v88 = *(*(ChallengeInfo - 8) + 48);
      if (!v88(v25, 1, ChallengeInfo))
      {
        v86 = ChallengeInfo;

        v27 = type metadata accessor for Game();
        v97(&v25[v27[18]], v9);
        v28 = v27[19];
        if (!(*(v92 + 48))(&v25[v28], 1, v9))
        {
          v97(&v25[v28], v9);
        }

        v29 = v27[21];
        v30 = sub_24F920818();
        v31 = *(v30 - 8);
        if (!(*(v31 + 48))(&v25[v29], 1, v30))
        {
          (*(v31 + 8))(&v25[v29], v30);
        }

        v1 = v93;
        v2 = v99;
        ChallengeInfo = v86;
      }

      v32 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F0) + 48);
      v33 = type metadata accessor for PlayActivity();
      if (!(*(*(v33 - 8) + 48))(v32, 1, v33))
      {
        v87 = v33;

        v97(&v32[v7[6]], v9);

        if (*&v32[v7[9] + 8] != 1)
        {
        }

        v34 = &v32[v7[13]];
        if (!v91(v34, 1, v11))
        {
          v35 = type metadata accessor for CallProviderConversationHandle();
          v36 = *(*(v35 - 8) + 48);
          if (!v36(v34, 1, v35))
          {

            v37 = *(type metadata accessor for CallProvider() + 24);
            if (!(*(v92 + 48))(&v34[v37], 1, v9))
            {
              v97(&v34[v37], v9);
            }
          }

          v38 = &v34[*(v11 + 20)];
          v1 = v93;
          if (!v36(v38, 1, v35))
          {

            v39 = *(type metadata accessor for CallProvider() + 24);
            if (!(*(v92 + 48))(&v38[v39], 1, v9))
            {
              v97(&v38[v39], v9);
            }
          }

          v2 = v99;
        }

        if (*&v32[v7[15] + 8])
        {
        }

        v40 = &v32[v7[16]];
        if (!(v89)(v40, 1, v90))
        {

          v41 = type metadata accessor for Game();
          v97(&v40[v41[18]], v9);
          v42 = v41[19];
          if (!(*(v92 + 48))(&v40[v42], 1, v9))
          {
            v97(&v40[v42], v9);
          }

          v43 = v41[21];
          v44 = sub_24F920818();
          v45 = *(v44 - 8);
          if (!(*(v45 + 48))(&v40[v43], 1, v44))
          {
            (*(v45 + 8))(&v40[v43], v44);
          }

          v1 = v93;
          v2 = v99;
        }

        v46 = &v32[v7[17]];
        v47 = v88(v46, 1, ChallengeInfo);
        v48 = v87;
        if (!v47)
        {

          v49 = type metadata accessor for Game();
          v97(&v46[v49[18]], v9);
          v50 = v49[19];
          if (!(*(v92 + 48))(&v46[v50], 1, v9))
          {
            v97(&v46[v50], v9);
          }

          v51 = v49[21];
          v52 = sub_24F920818();
          v53 = *(v52 - 8);
          if (!(*(v53 + 48))(&v46[v51], 1, v52))
          {
            (*(v53 + 8))(&v46[v51], v52);
          }

          v48 = v87;
        }

        v54 = *(v48 + 20);
        v55 = sub_24F91F648();
        (*(*(v55 - 8) + 8))(&v32[v54], v55);
      }

      break;
    case 0:

      break;
  }

  v56 = v2 + v1[10];

  v57 = type metadata accessor for Player(0);
  v58 = v57[6];
  v59 = sub_24F9289E8();
  v98 = *(v59 - 8);
  v100 = *(v98 + 8);
  v100(v56 + v58, v59);

  if (*(v56 + v57[9] + 8) != 1)
  {
  }

  v60 = v56 + v57[13];
  v61 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v61 - 8) + 48))(v60, 1, v61))
  {
    v94 = v1;
    v62 = type metadata accessor for CallProviderConversationHandle();
    v63 = *(*(v62 - 8) + 48);
    if (!v63(v60, 1, v62))
    {

      v64 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v98 + 48))(v60 + v64, 1, v59))
      {
        v100(v60 + v64, v59);
      }
    }

    v65 = v60 + *(v61 + 20);
    v66 = v63(v65, 1, v62);
    v1 = v94;
    if (!v66)
    {

      v67 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v98 + 48))(v65 + v67, 1, v59))
      {
        v100(v65 + v67, v59);
      }
    }

    v2 = v99;
  }

  if (*(v56 + v57[15] + 8))
  {
  }

  v68 = v56 + v57[16];
  v69 = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(v69 - 8) + 48))(v68, 1, v69))
  {
    v70 = v1;

    v71 = type metadata accessor for Game();
    v100(v68 + v71[18], v59);
    v72 = v71[19];
    if (!(*(v98 + 48))(v68 + v72, 1, v59))
    {
      v100(v68 + v72, v59);
    }

    v73 = v71[21];
    v74 = sub_24F920818();
    v75 = *(v74 - 8);
    if (!(*(v75 + 48))(v68 + v73, 1, v74))
    {
      (*(v75 + 8))(v68 + v73, v74);
    }

    v1 = v70;
    v2 = v99;
  }

  v76 = v56 + v57[17];
  v77 = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(v77 - 8) + 48))(v76, 1, v77))
  {

    v78 = type metadata accessor for Game();
    v100(v76 + v78[18], v59);
    v79 = v78[19];
    if (!(*(v98 + 48))(v76 + v79, 1, v59))
    {
      v100(v76 + v79, v59);
    }

    v80 = v78[21];
    v81 = sub_24F920818();
    v82 = *(v81 - 8);
    if (!(*(v82 + 48))(v76 + v80, 1, v81))
    {
      (*(v82 + 8))(v76 + v80, v81);
    }
  }

  v83 = v2 + v1[11];
  v84 = type metadata accessor for GameActivityDraftGameInfo(0);
  if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
  {

    v100(v83 + *(v84 + 28), v59);
  }

  return swift_deallocObject();
}

uint64_t sub_24F4F7ACC()
{
  type metadata accessor for PlayTogetherPlayerSelectionRow(0);

  return sub_24F4F43D4();
}

unint64_t sub_24F4F7B34()
{
  result = qword_27F246858;
  if (!qword_27F246858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246850);
    sub_24F4F7BC0();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246858);
  }

  return result;
}

unint64_t sub_24F4F7BC0()
{
  result = qword_27F246860;
  if (!qword_27F246860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246868);
    sub_24E602068(&qword_27F246870, &qword_27F246878);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246860);
  }

  return result;
}

uint64_t sub_24F4F7C78()
{
  v0._object = 0x800000024FA75ED0;
  v0._countAndFlagsBits = 0xD000000000000036;
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  localizedString(_:comment:)(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
  sub_24F927198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D08);
  sub_24E602068(&qword_27F246968, &qword_27F246960);
  sub_24E600AEC();
  sub_24E602068(&qword_27F222D00, &qword_27F222D08);
  sub_24F926908();
}

uint64_t sub_24F4F7E94@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000024FA580D0;
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  localizedString(_:comment:)(v2, v3);
  sub_24E600AEC();
  result = sub_24F925E18();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_24F4F7F0C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
  inited = swift_initStackObject();
  *(inited + 32) = 1701667182;
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 40) = 0xE400000000000000;
  v13 = *a1;
  *(inited + 48) = v13;
  sub_24E614DB0(&v13, &v12);
  v5 = sub_24E6086DC(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F219F90);
  v6._object = 0x800000024FA75F10;
  v6._countAndFlagsBits = 0xD000000000000039;
  v7 = localizedString(_:with:)(v6, v5);

  v12 = v7;
  sub_24E600AEC();
  result = sub_24F925E18();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_24F4F8068@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a1;
  v110 = a2;
  v102 = sub_24F91EAA8();
  v101 = *(v102 - 1);
  MEMORY[0x28223BE20](v102);
  v100 = &v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for PlayerAvatarView(0);
  MEMORY[0x28223BE20](v111);
  v117 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v112 = &v94 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v6 - 8);
  v116 = &v94 - v7;
  v8 = type metadata accessor for Player(0);
  v98 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v115 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlayerAvatar(0);
  v113 = *(v10 - 8);
  v114 = v10;
  MEMORY[0x28223BE20](v10);
  v99 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v94 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v94 - v16;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2469B0);
  MEMORY[0x28223BE20](v108);
  v19 = &v94 - v18;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2469B8);
  MEMORY[0x28223BE20](v104);
  v21 = &v94 - v20;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2469C0);
  MEMORY[0x28223BE20](v109);
  v105 = &v94 - v22;
  v23 = sub_24F927748();
  v103 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for PlayerGroupView();
  MEMORY[0x28223BE20](v107);
  v27 = (&v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v30 = (&v94 - v29);
  v31 = type metadata accessor for ChallengesPlayerInviteType(0);
  MEMORY[0x28223BE20](v31);
  v33 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for PlayerIcon(0);
  sub_24F4FB334(&v118[*(v34 + 20)], v33, type metadata accessor for ChallengesPlayerInviteType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v106 = v19;
    if (EnumCaseMultiPayload == 1)
    {
      v118 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F0) + 48);
      v36 = v115;
      sub_24F4FB39C(v33, v115, type metadata accessor for Player);
      v37 = *(v36 + 16);
      v38 = *(v36 + 24);
      v117 = v37;
      v39 = type metadata accessor for PlayerAvatar.Overlay(0);
      v40 = *(*(v39 - 8) + 56);
      v41 = v116;
      v40(v116, 1, 1, v39);
      v125 = 0;
      v123 = 0u;
      v124 = 0u;
      v42 = v21;
      v43 = v114;
      v44 = *(v114 + 20);
      v40(&v14[v44], 1, 1, v39);
      v45 = &v14[*(v43 + 24)];
      v122 = 0;
      v120 = 0u;
      v121 = 0u;
      *v45 = 0u;
      *(v45 + 16) = 0u;
      *(v45 + 32) = 0;

      sub_24E61DA68(&v120, v45, qword_27F21B590);
      *v14 = v117;
      *(v14 + 1) = v38;
      sub_24E61DA68(v41, &v14[v44], &qword_27F22DF80);
      sub_24E61DA68(&v123, v45, qword_27F21B590);
      LOBYTE(v123) = 7;
      v46 = v112;
      sub_24F8319B8(v14, &v123, v112);
      sub_24F4FB334(v46, v42, type metadata accessor for PlayerAvatarView);
      swift_storeEnumTagMultiPayload();
      sub_24F4FC16C(&qword_27F240F40, type metadata accessor for PlayerGroupView);
      sub_24F4FC16C(&qword_27F214AD0, type metadata accessor for PlayerAvatarView);
      v47 = v105;
      sub_24F924E28();
      sub_24E60169C(v47, v106, &qword_27F2469C0);
      swift_storeEnumTagMultiPayload();
      sub_24F4FC080();
      sub_24F924E28();
      sub_24E601704(v47, &qword_27F2469C0);
      sub_24F4FB6DC(v46, type metadata accessor for PlayerAvatarView);
      sub_24F4FB6DC(v115, type metadata accessor for Player);
      return sub_24E601704(&v118[v33], &qword_27F2212F8);
    }

    v72 = *v33;
    v73 = [*v33 identifier];
    v74 = sub_24F92B0D8();
    v76 = v75;

    *&v123 = v74;
    *(&v123 + 1) = v76;
    v77 = v100;
    sub_24F91EA28();
    sub_24E600AEC();
    v78 = sub_24F92C578();
    v80 = v79;
    v101[1](v77, v102);
    if (!v80)
    {

      v78 = v74;
      v80 = v76;
    }

    *&v123 = 0x3A746361746E6F63;
    *(&v123 + 1) = 0xEA00000000002F2FLL;
    MEMORY[0x253050C20](v78, v80);

    v81 = v123;
    v82 = type metadata accessor for PlayerAvatar.Overlay(0);
    v83 = *(*(v82 - 8) + 56);
    v84 = v116;
    v83(v116, 1, 1, v82);
    v125 = 0;
    v123 = 0u;
    v124 = 0u;
    v85 = v114;
    v86 = *(v114 + 20);
    v87 = v99;
    v83(&v99[v86], 1, 1, v82);
    v88 = v87 + *(v85 + 24);
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
    *v88 = 0u;
    *(v88 + 16) = 0u;
    *(v88 + 32) = 0;
    sub_24E61DA68(&v120, v88, qword_27F21B590);
    *v87 = v81;
    sub_24E61DA68(v84, v87 + v86, &qword_27F22DF80);
    sub_24E61DA68(&v123, v88, qword_27F21B590);
    LOBYTE(v123) = 7;
    v89 = v117;
    sub_24F8319B8(v87, &v123, v117);
    sub_24F4FB334(v89, v106, type metadata accessor for PlayerAvatarView);
    swift_storeEnumTagMultiPayload();
    sub_24F4FC080();
    sub_24F4FC16C(&qword_27F214AD0, type metadata accessor for PlayerAvatarView);
    sub_24F924E28();

    v90 = type metadata accessor for PlayerAvatarView;
    v91 = v89;
  }

  else
  {
    v118 = v17;
    v101 = v30;
    v102 = v21;
    v50 = *(v33 + 8);
    v49 = *(v33 + 16);
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    v51 = sub_24F926D08();

    v52 = v103;
    (*(v103 + 104))(v25, *MEMORY[0x277CE13D8], v23);
    v53 = v49;
    v54 = v107;
    *(v27 + *(v107 + 28)) = vdupq_n_s64(0x4052000000000000uLL);
    *(v27 + *(v54 + 32)) = 7;
    v55 = *(v49 + 16);
    v56 = v25;
    if (v55)
    {
      v95 = v51;
      v96 = v50;
      v97 = v27;
      v99 = v25;
      v100 = v23;
      v106 = v19;
      v119 = MEMORY[0x277D84F90];
      v57 = v53;
      sub_24F457BF8(0, v55, 0);
      v58 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v94 = v57;
      v59 = v57 + v58;
      v112 = *(v98 + 72);
      v61 = v118;
      v60 = v119;
      do
      {
        v118 = v60;
        v62 = v115;
        sub_24F4FB334(v59, v115, type metadata accessor for Player);
        v63 = *(v62 + 24);
        v117 = *(v62 + 16);

        sub_24F4FB6DC(v62, type metadata accessor for Player);
        v64 = type metadata accessor for PlayerAvatar.Overlay(0);
        v65 = *(*(v64 - 8) + 56);
        v66 = v116;
        v65(v116, 1, 1, v64);
        v125 = 0;
        v123 = 0u;
        v124 = 0u;
        v67 = v114;
        v68 = *(v114 + 20);
        v65(&v61[v68], 1, 1, v64);
        v69 = &v61[*(v67 + 24)];
        v122 = 0;
        v120 = 0u;
        v121 = 0u;
        *v69 = 0u;
        *(v69 + 16) = 0u;
        *(v69 + 32) = 0;
        sub_24E61DA68(&v120, v69, qword_27F21B590);
        *v61 = v117;
        *(v61 + 1) = v63;
        v60 = v118;
        sub_24E61DA68(v66, &v61[v68], &qword_27F22DF80);
        sub_24E61DA68(&v123, v69, qword_27F21B590);
        v119 = v60;
        v71 = *(v60 + 2);
        v70 = *(v60 + 3);
        if (v71 >= v70 >> 1)
        {
          sub_24F457BF8(v70 > 1, v71 + 1, 1);
          v60 = v119;
        }

        *(v60 + 2) = v71 + 1;
        sub_24F4FB39C(v61, &v60[((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v71], type metadata accessor for PlayerAvatar);
        v59 += v112;
        --v55;
      }

      while (v55);

      v19 = v106;
      v23 = v100;
      v52 = v103;
      v56 = v99;
      v27 = v97;
      v51 = v95;
    }

    else
    {

      v60 = MEMORY[0x277D84F90];
    }

    *v27 = v60;
    v27[1] = v51;
    (*(v52 + 32))(v27 + *(v107 + 24), v56, v23);
    v92 = v101;
    sub_24F4FB39C(v27, v101, type metadata accessor for PlayerGroupView);
    sub_24F4FB334(v92, v102, type metadata accessor for PlayerGroupView);
    swift_storeEnumTagMultiPayload();
    sub_24F4FC16C(&qword_27F240F40, type metadata accessor for PlayerGroupView);
    sub_24F4FC16C(&qword_27F214AD0, type metadata accessor for PlayerAvatarView);
    v93 = v105;
    sub_24F924E28();
    sub_24E60169C(v93, v19, &qword_27F2469C0);
    swift_storeEnumTagMultiPayload();
    sub_24F4FC080();
    sub_24F924E28();
    sub_24E601704(v93, &qword_27F2469C0);
    v90 = type metadata accessor for PlayerGroupView;
    v91 = v92;
  }

  return sub_24F4FB6DC(v91, v90);
}

uint64_t sub_24F4F9070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F929888();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_24F926E08();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F924848();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D040);
  v40 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v39 = &v33 - v17;
  if (*(a1 + *(type metadata accessor for PlayerIcon(0) + 24)) == 1)
  {
    v35 = v13;
    v18 = *a1;
    v19 = *(a1 + 8) == 1;
    v34 = v5;
    if (v19)
    {
      v25 = *&v18;
    }

    else
    {

      sub_24F92BDC8();
      v22 = v4;
      v23 = a2;
      v24 = sub_24F9257A8();
      sub_24F921FD8();

      a2 = v23;
      v4 = v22;
      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v18, 0);
      (*(v10 + 8))(v12, v9);
      v25 = *v43;
    }

    v26 = 1;
    LOBYTE(v43[0]) = 1;
    if (sub_24EFFE798(v43, 0, 20.0, 20.0, v25))
    {
      sub_24F926DE8();
      v27 = v36;
      v28 = v37;
      (*(v36 + 104))(v8, *MEMORY[0x277CE0FE0], v37);
      v29 = sub_24F926E88();

      (*(v27 + 8))(v8, v28);
      sub_24F927618();
      sub_24F9238C8();
      v43[0] = v29;
      v43[1] = v48;
      v44 = v49;
      v45 = v50;
      v46 = v51;
      v47 = v52;
      memset(v42, 0, sizeof(v42));
      memset(v41, 0, sizeof(v41));
      v30 = v38;
      sub_24F929828();
      sub_24E601704(v41, &qword_27F2129B0);
      sub_24E601704(v42, &qword_27F2129B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217338);
      sub_24E6A6234();
      sub_24F925EE8();
      (*(v34 + 8))(v30, v4);

      v26 = 0;
    }

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218200);
    (*(*(v31 - 8) + 56))(v15, v26, 1, v31);
    v32 = v39;
    sub_24E6009C8(v15, v39, &qword_27F23D040);
    sub_24E6009C8(v32, a2, &qword_27F23D040);
    return (*(v40 + 56))(a2, 0, 1, v35);
  }

  else
  {
    v20 = *(v40 + 56);

    return v20(a2, 1, 1, v13);
  }
}

uint64_t sub_24F4F9688@<X0>(uint64_t a1@<X8>)
{
  sub_24F4F8068(v1, a1);
  sub_24F927618();
  sub_24F9238C8();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246998) + 36));
  *v3 = v10;
  v3[1] = v11;
  v3[2] = v12;
  v4 = sub_24F9275D8();
  v6 = v5;
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2469A0) + 36);
  sub_24F4F9070(v1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2469A8);
  v9 = (v7 + *(result + 36));
  *v9 = v4;
  v9[1] = v6;
  return result;
}

id sub_24F4F9764()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAC78]) init];
  [v0 setUnitsStyle_];
  result = [v0 setDateTimeStyle_];
  qword_27F246830 = v0;
  return result;
}

uint64_t sub_24F4F97C8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246970);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_24F9289E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F4F9AA0(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24E601704(v8, &qword_27F213FB0);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_24F4FA2A8();
    if (v13)
    {
      *v5 = sub_24F9249A8();
      *(v5 + 1) = 0;
      v5[16] = 1;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246978);
      sub_24F4FAE98(v12, &v5[*(v14 + 44)]);

      sub_24E6009C8(v5, a1, &qword_27F246970);
      (*(v3 + 56))(a1, 0, 1, v2);
      return (*(v10 + 8))(v12, v9);
    }

    (*(v10 + 8))(v12, v9);
  }

  return (*(v3 + 56))(a1, 1, 1, v2);
}

uint64_t sub_24F4F9AA0@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255200);
  MEMORY[0x28223BE20](v2 - 8);
  v65 = &v57 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F255210);
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  v60 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246990);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28);
  MEMORY[0x28223BE20](v14 - 8);
  v62 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  v19 = type metadata accessor for GameActivityDraftGameInfo(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v58 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v57 - v23;
  v25 = type metadata accessor for GameHistoryInfoView(0);
  v61 = *(v25 + 20);
  sub_24E60169C(v1 + v61, v18, &qword_27F212B28);
  v26 = *(v20 + 48);
  if (v26(v18, 1, v19) == 1)
  {
    sub_24E601704(v18, &qword_27F212B28);
  }

  else
  {
    sub_24F4FB39C(v18, v24, type metadata accessor for GameActivityDraftGameInfo);
    sub_24F37F45C(*(v24 + 2), *(v24 + 3), v13);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2551F0);
    v28 = (*(*(v27 - 8) + 48))(v13, 1, v27);
    sub_24E601704(v13, &qword_27F246990);
    if (v28 != 1)
    {
      v46 = *(v19 + 28);
      v47 = sub_24F9289E8();
      v48 = *(v47 - 8);
      v49 = &v24[v46];
      v50 = v66;
      (*(v48 + 16))(v66, v49, v47);
      sub_24F4FB6DC(v24, type metadata accessor for GameActivityDraftGameInfo);
      return (*(v48 + 56))(v50, 0, 1, v47);
    }

    sub_24F4FB6DC(v24, type metadata accessor for GameActivityDraftGameInfo);
  }

  sub_24E60169C(v1 + *(v25 + 24), v10, &qword_27F2212F8);
  v29 = type metadata accessor for PlayActivity();
  v30 = (*(*(v29 - 8) + 48))(v10, 1, v29);
  sub_24E601704(v10, &qword_27F2212F8);
  if (v30 != 1)
  {
    v31 = v62;
    sub_24E60169C(v1 + v61, v62, &qword_27F212B28);
    if (v26(v31, 1, v19) != 1)
    {
      v51 = v58;
      sub_24F4FB39C(v31, v58, type metadata accessor for GameActivityDraftGameInfo);
      v52 = *(v19 + 28);
      v53 = sub_24F9289E8();
      v54 = *(v53 - 8);
      v55 = v51 + v52;
      v56 = v66;
      (*(v54 + 16))(v66, v55, v53);
      sub_24F4FB6DC(v51, type metadata accessor for GameActivityDraftGameInfo);
      return (*(v54 + 56))(v56, 0, 1, v53);
    }

    sub_24E601704(v31, &qword_27F212B28);
  }

  v32 = v65;
  sub_24F37E69C(v65);
  v33 = v64;
  if ((*(v63 + 48))(v32, 1, v64) == 1)
  {
    sub_24E601704(v32, &unk_27F255200);
    v34 = sub_24F9289E8();
    return (*(*(v34 - 8) + 56))(v66, 1, 1, v34);
  }

  else
  {
    v36 = v32;
    v37 = v59;
    sub_24E6009C8(v36, v59, &qword_27F255210);
    v38 = v60;
    sub_24E6009C8(v37, v60, &qword_27F255210);
    v39 = v38 + *(v33 + 64);
    v40 = *(type metadata accessor for Game() + 72);
    v41 = sub_24F9289E8();
    v42 = *(v41 - 8);
    v43 = v39 + v40;
    v44 = v66;
    (*(v42 + 16))(v66, v43, v41);
    sub_24F4FB6DC(v39, type metadata accessor for Game);
    (*(v42 + 56))(v44, 0, 1, v41);
    v45 = sub_24F91F648();
    return (*(*(v45 - 8) + 8))(v38, v45);
  }
}

uint64_t sub_24F4FA2A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255200);
  MEMORY[0x28223BE20](v1 - 8);
  v77 = &v70 - v2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F255210);
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v72 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v79 = &v70 - v5;
  v81 = sub_24F91F648();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v70 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F8);
  MEMORY[0x28223BE20](v7 - 8);
  v83 = &v70 - v8;
  v84 = type metadata accessor for PlayActivity();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v75 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246990);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v70 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2409F8);
  MEMORY[0x28223BE20](v71);
  v14 = &v70 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28);
  MEMORY[0x28223BE20](v15 - 8);
  v74 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v70 - v18;
  v20 = type metadata accessor for GameActivityDraftGameInfo(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for GameHistoryInfoView(0);
  v73 = *(v24 + 20);
  sub_24E60169C(v0 + v73, v19, &qword_27F212B28);
  v25 = *(v21 + 48);
  if (v25(v19, 1, v20) == 1)
  {
    sub_24E601704(v19, &qword_27F212B28);
  }

  else
  {
    sub_24F4FB39C(v19, v23, type metadata accessor for GameActivityDraftGameInfo);
    sub_24F37F45C(v23[2], v23[3], v12);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2551F0);
    if ((*(*(v26 - 8) + 48))(v12, 1, v26) != 1)
    {
      v39 = v12[*(v26 + 48)];
      v40 = v71;
      v41 = *(v71 + 48);
      v42 = v80;
      v43 = v12;
      v44 = v81;
      (*(v80 + 32))(v14, v43, v81);
      v14[v41] = v39;
      v45 = v14[*(v40 + 48)];
      (*(v42 + 8))(v14, v44);
      if (v45)
      {
        v46._object = 0x800000024FA75FA0;
        v46._countAndFlagsBits = 0xD000000000000042;
        v47._countAndFlagsBits = 0;
        v47._object = 0xE000000000000000;
        countAndFlagsBits = localizedString(_:comment:)(v46, v47)._countAndFlagsBits;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24F93DE60;
        *(inited + 32) = 0x656D614E656D6167;
        *(inited + 40) = 0xE800000000000000;
        v64 = v23[5];
        *(inited + 48) = v23[4];
        *(inited + 56) = v64;

        v65 = sub_24E6086DC(inited);
        swift_setDeallocating();
        sub_24E601704(inited + 32, &qword_27F219F90);
        v66._countAndFlagsBits = 0xD000000000000046;
        v66._object = 0x800000024FA75F50;
        countAndFlagsBits = localizedString(_:with:)(v66, v65)._countAndFlagsBits;
      }

      sub_24F4FB6DC(v23, type metadata accessor for GameActivityDraftGameInfo);
      return countAndFlagsBits;
    }

    sub_24E601704(v12, &qword_27F246990);
    sub_24F4FB6DC(v23, type metadata accessor for GameActivityDraftGameInfo);
  }

  v27 = v83;
  sub_24E60169C(v0 + *(v24 + 24), v83, &qword_27F2212F8);
  if ((*(v82 + 48))(v27, 1, v84) == 1)
  {
    v28 = &qword_27F2212F8;
    goto LABEL_9;
  }

  v29 = v75;
  sub_24F4FB39C(v27, v75, type metadata accessor for PlayActivity);
  v27 = v74;
  sub_24E60169C(v0 + v73, v74, &qword_27F212B28);
  if (v25(v27, 1, v20) == 1)
  {
    sub_24F4FB6DC(v29, type metadata accessor for PlayActivity);
    v28 = &qword_27F212B28;
LABEL_9:
    sub_24E601704(v27, v28);
    v30 = v77;
    sub_24F37E69C(v77);
    v31 = v78;
    v32 = (*(v76 + 48))(v30, 1, v78);
    v33 = v79;
    if (v32 == 1)
    {
      sub_24E601704(v30, &unk_27F255200);
      return 0;
    }

    else
    {
      sub_24E6009C8(v30, v79, &qword_27F255210);
      v35 = v72;
      sub_24E60169C(v33, v72, &qword_27F255210);
      v36 = *(v35 + *(v31 + 48));
      sub_24F4FB6DC(v35 + *(v31 + 64), type metadata accessor for Game);
      (*(v80 + 8))(v35, v81);
      if (v36 == 1)
      {
        v37._object = 0x800000024FA75FA0;
        v37._countAndFlagsBits = 0xD000000000000042;
        v38._countAndFlagsBits = 0;
        v38._object = 0xE000000000000000;
        countAndFlagsBits = localizedString(_:comment:)(v37, v38)._countAndFlagsBits;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
        v59 = swift_initStackObject();
        *(v59 + 32) = 0x656D614E656D6167;
        *(v59 + 16) = xmmword_24F93DE60;
        *(v59 + 40) = 0xE800000000000000;
        v60 = (v33 + *(v31 + 64));
        if (v60[7])
        {
          v61 = v60[6];
          v62 = v60[7];
        }

        else
        {
          v61 = v60[4];
          v62 = v60[5];
        }

        *(v59 + 48) = v61;
        *(v59 + 56) = v62;

        v67 = sub_24E6086DC(v59);
        swift_setDeallocating();
        sub_24E601704(v59 + 32, &qword_27F219F90);
        v68._countAndFlagsBits = 0xD000000000000046;
        v68._object = 0x800000024FA75F50;
        countAndFlagsBits = localizedString(_:with:)(v68, v67)._countAndFlagsBits;
      }

      sub_24E601704(v33, &qword_27F255210);
    }

    return countAndFlagsBits;
  }

  sub_24E601704(v27, &qword_27F212B28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
  v48 = swift_initStackObject();
  strcpy((v48 + 32), "lastPlayedDate");
  *(v48 + 16) = xmmword_24F93DE60;
  *(v48 + 47) = -18;
  if (qword_27F211318 != -1)
  {
    swift_once();
  }

  v49 = qword_27F246830;
  v50 = sub_24F91F578();
  v51 = v70;
  sub_24F91F638();
  v52 = sub_24F91F578();
  (*(v80 + 8))(v51, v81);
  v53 = [v49 localizedStringForDate:v50 relativeToDate:v52];

  v54 = sub_24F92B0D8();
  v56 = v55;

  *(v48 + 48) = v54;
  *(v48 + 56) = v56;
  v57 = sub_24E6086DC(v48);
  swift_setDeallocating();
  sub_24E601704(v48 + 32, &qword_27F219F90);
  v58._countAndFlagsBits = 0xD00000000000003BLL;
  v58._object = 0x800000024FA75FF0;
  countAndFlagsBits = localizedString(_:with:)(v58, v57)._countAndFlagsBits;

  sub_24F4FB6DC(v29, type metadata accessor for PlayActivity);
  return countAndFlagsBits;
}

uint64_t sub_24F4FAE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246980) - 8;
  MEMORY[0x28223BE20](v41);
  v43 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245B00);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v42 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v13 = sub_24F9289E8();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a1, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  v15 = type metadata accessor for GameIcon(0);
  v16 = v15[8];
  *&v12[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  swift_storeEnumTagMultiPayload();
  v12[v15[5]] = 1;
  v12[v15[6]] = 1;
  v12[v15[7]] = 0;
  v17 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245B08) + 36)];
  *v17 = 0x3FF0000000000000;
  *(v17 + 4) = 0;
  sub_24F927618();
  sub_24F9238C8();
  v18 = &v12[*(v8 + 44)];
  v19 = v47;
  *v18 = v46;
  *(v18 + 1) = v19;
  *(v18 + 2) = v48;

  sub_24F925A18();
  v20 = sub_24F925C98();
  v22 = v21;
  v24 = v23;

  v45 = sub_24F9251C8();
  v25 = sub_24F925C58();
  v27 = v26;
  LOBYTE(v15) = v28;
  v30 = v29;
  sub_24E600B40(v20, v22, v24 & 1);

  KeyPath = swift_getKeyPath();
  v32 = &v6[*(v41 + 44)];
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDC0) + 28);
  v34 = *MEMORY[0x277CE0B28];
  v35 = sub_24F925C38();
  (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
  *v32 = swift_getKeyPath();
  *v6 = v25;
  *(v6 + 1) = v27;
  v6[16] = v15 & 1;
  *(v6 + 3) = v30;
  *(v6 + 4) = KeyPath;
  *(v6 + 5) = 1;
  v6[48] = 0;
  v36 = v42;
  sub_24E60169C(v12, v42, &qword_27F245B00);
  v37 = v43;
  sub_24E60169C(v6, v43, &qword_27F246980);
  v38 = v44;
  sub_24E60169C(v36, v44, &qword_27F245B00);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246988);
  sub_24E60169C(v37, v38 + *(v39 + 48), &qword_27F246980);
  sub_24E601704(v6, &qword_27F246980);
  sub_24E601704(v12, &qword_27F245B00);
  sub_24E601704(v37, &qword_27F246980);
  return sub_24E601704(v36, &qword_27F245B00);
}

uint64_t sub_24F4FB334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4FB39C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F4FB404()
{
  result = qword_27F2468A8;
  if (!qword_27F2468A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246898);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2468B0);
    sub_24F4FB4F8();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2468A8);
  }

  return result;
}

unint64_t sub_24F4FB4F8()
{
  result = qword_27F2468B8;
  if (!qword_27F2468B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2468B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2468C0);
    sub_24F4FB5F0();
    swift_getOpaqueTypeConformance2();
    sub_24F4FC16C(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2468B8);
  }

  return result;
}

unint64_t sub_24F4FB5F0()
{
  result = qword_27F2468C8;
  if (!qword_27F2468C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2468C0);
    sub_24E602068(&qword_27F2468D0, &qword_27F2468D8);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2468C8);
  }

  return result;
}

uint64_t sub_24F4FB6DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F4FB7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_24F4FB938(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Player(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F8);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_24F4FBA9C()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24F4FBB98(319, &qword_27F21FB48, type metadata accessor for GameActivityDraftGameInfo, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24F4FBB98(319, &qword_27F246938, type metadata accessor for PlayActivity, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F4FBB98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F4FBC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for ChallengesPlayerInviteType(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F4FBCC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for ChallengesPlayerInviteType(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F4FBD68()
{
  sub_24F4FBE18(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ChallengesPlayerInviteType(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F4FBE18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24F4FBE6C()
{
  result = qword_27F246950;
  if (!qword_27F246950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246848);
    sub_24F9241F8();
    sub_24E602068(&qword_27F246880, &qword_27F246848);
    sub_24F4FC16C(&qword_27F212838, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_24F4FBFB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246950);
  }

  return result;
}

unint64_t sub_24F4FBFB8()
{
  result = qword_27F246958;
  if (!qword_27F246958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246958);
  }

  return result;
}

unint64_t sub_24F4FC080()
{
  result = qword_27F2469C8;
  if (!qword_27F2469C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2469C0);
    sub_24F4FC16C(&qword_27F240F40, type metadata accessor for PlayerGroupView);
    sub_24F4FC16C(&qword_27F214AD0, type metadata accessor for PlayerAvatarView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2469C8);
  }

  return result;
}

uint64_t sub_24F4FC16C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F4FC1B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246960);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222D08);
  sub_24E602068(&qword_27F246968, &qword_27F246960);
  sub_24E600AEC();
  sub_24E602068(&qword_27F222D00, &qword_27F222D08);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F4FC2D0()
{
  result = qword_27F2469D0;
  if (!qword_27F2469D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2469D8);
    sub_24E602068(&qword_27F2469E0, &qword_27F246970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2469D0);
  }

  return result;
}

unint64_t sub_24F4FC384()
{
  result = qword_27F2469E8;
  if (!qword_27F2469E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2469A0);
    sub_24F4FC43C();
    sub_24E602068(&qword_27F246A18, &qword_27F2469A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2469E8);
  }

  return result;
}

unint64_t sub_24F4FC43C()
{
  result = qword_27F2469F0;
  if (!qword_27F2469F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246998);
    sub_24F4FC4C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2469F0);
  }

  return result;
}

unint64_t sub_24F4FC4C8()
{
  result = qword_27F2469F8;
  if (!qword_27F2469F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246A00);
    sub_24F4FC54C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2469F8);
  }

  return result;
}

unint64_t sub_24F4FC54C()
{
  result = qword_27F246A08;
  if (!qword_27F246A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246A10);
    sub_24F4FC080();
    sub_24F4FC16C(&qword_27F214AD0, type metadata accessor for PlayerAvatarView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246A08);
  }

  return result;
}

uint64_t AchievementRecordingsDataIntent.achievements.getter()
{
  type metadata accessor for AchievementRecordingsDataIntent();
}

uint64_t type metadata accessor for AchievementRecordingsDataIntent()
{
  result = qword_27F246A50;
  if (!qword_27F246A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F4FC6D8()
{
  if (*v0)
  {
    return 0x6D65766569686361;
  }

  else
  {
    return 1701667175;
  }
}

uint64_t sub_24F4FC714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667175 && a2 == 0xE400000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D65766569686361 && a2 == 0xEC00000073746E65)
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

uint64_t sub_24F4FC7F4(uint64_t a1)
{
  v2 = sub_24F4FCA88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4FC830(uint64_t a1)
{
  v2 = sub_24F4FCA88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AchievementRecordingsDataIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246A20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4FCA88();
  sub_24F92D128();
  v12 = 0;
  type metadata accessor for Game();
  sub_24F4FCECC(&qword_27F214950, type metadata accessor for Game);
  sub_24F92CD48();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for AchievementRecordingsDataIntent() + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246A30);
    sub_24F4FCE30(&qword_27F246A38, &qword_27F218950);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24F4FCA88()
{
  result = qword_27F246A28;
  if (!qword_27F246A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246A28);
  }

  return result;
}

uint64_t AchievementRecordingsDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246A40);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for AchievementRecordingsDataIntent();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4FCA88();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v18;
  v23 = 0;
  sub_24F4FCECC(&qword_27F214968, type metadata accessor for Game);
  v14 = v19;
  sub_24F92CC68();
  sub_24E636644(v20, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246A30);
  v22 = 1;
  sub_24F4FCE30(&qword_27F246A48, &qword_27F218968);
  sub_24F92CC68();
  (*(v13 + 8))(v8, v14);
  *(v12 + *(v9 + 20)) = v21;
  sub_24F4FCF14(v12, v17, type metadata accessor for AchievementRecordingsDataIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F4FCF7C(v12, type metadata accessor for AchievementRecordingsDataIntent);
}

uint64_t sub_24F4FCE30(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246A30);
    sub_24F4FCECC(a2, type metadata accessor for Achievement);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F4FCECC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F4FCF14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4FCF7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F4FD040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Game();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F4FD110(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Game();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24F4FD1C8()
{
  type metadata accessor for Game();
  if (v0 <= 0x3F)
  {
    sub_24F4FD24C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F4FD24C()
{
  if (!qword_27F246A60)
  {
    type metadata accessor for Achievement(255);
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F246A60);
    }
  }
}

unint64_t sub_24F4FD2B8()
{
  result = qword_27F246A68;
  if (!qword_27F246A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246A68);
  }

  return result;
}

unint64_t sub_24F4FD310()
{
  result = qword_27F246A70;
  if (!qword_27F246A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246A70);
  }

  return result;
}

unint64_t sub_24F4FD368()
{
  result = qword_27F246A78;
  if (!qword_27F246A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246A78);
  }

  return result;
}

uint64_t ChallengesAllLeaderboardsDataIntentImplementation.perform(_:objectGraph:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v2[7] = a2;
  v2[8] = v4;
  v5 = a1[2];
  v6 = a1[3];
  v2[9] = v3;
  v2[10] = v5;
  v2[11] = v6;

  return MEMORY[0x2822009F8](sub_24F4FD444, 0, 0);
}

uint64_t sub_24F4FD444()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_24F4FD504;
  v4 = *(v0 + 56);

  return sub_24E64AB1C(v0 + 16, v4);
}

uint64_t sub_24F4FD504(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24F4FD65C, 0, 0);
  }

  else
  {
    sub_24F4FD6C0(v4 + 16);
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_24F4FD65C()
{
  sub_24F4FD6C0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F4FD718(uint64_t a1, void *a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v4 = a2[1];
  v3[9] = *a2;
  v3[10] = v4;
  v5 = a2[3];
  v3[11] = a2[2];
  v3[12] = v5;

  return MEMORY[0x2822009F8](sub_24F4FD79C, 0, 0);
}

uint64_t sub_24F4FD79C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_24F4FD85C;
  v4 = *(v0 + 64);

  return sub_24E64AB1C(v0 + 16, v4);
}

uint64_t sub_24F4FD85C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_24F4FD9B0;
  }

  else
  {
    *(v4 + 120) = a1;
    sub_24F4FD6C0(v4 + 16);
    v5 = sub_24F4FD98C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F4FD9B0()
{
  sub_24F4FD6C0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void sub_24F4FDA24()
{
  type metadata accessor for AchievementsCard();
  if (v0 <= 0x3F)
  {
    sub_24E6E8928(319, &qword_27F246B00, &type metadata for AchievementCardsCount, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24E6C5550();
      if (v2 <= 0x3F)
      {
        sub_24E6E8928(319, &qword_27F21B190, &type metadata for HeroLayoutMode, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_24E7268F0();
          if (v4 <= 0x3F)
          {
            sub_24F4FDD1C();
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

uint64_t sub_24F4FDB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AchievementsCard();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 48));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F4FDC4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AchievementsCard();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 48)) = (a2 - 1);
  }

  return result;
}

void sub_24F4FDD1C()
{
  if (!qword_27F23EA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214D88);
    v0 = sub_24F926F68();
    if (!v1)
    {
      atomic_store(v0, &qword_27F23EA20);
    }
  }
}

uint64_t sub_24F4FDDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_24F924848();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA38);
  v8 = *(a1 + 16);
  v55 = *(a1 + 24);
  type metadata accessor for AchievementsCardFanView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216590);
  sub_24F924038();
  sub_24F92C4A8();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v78 = MEMORY[0x277CDF678];
  v75 = swift_getWitnessTable();
  v76 = MEMORY[0x277CDF690];
  v73 = swift_getWitnessTable();
  v74 = MEMORY[0x277CDF748];
  swift_getWitnessTable();
  v45 = sub_24F923B88();
  v9 = sub_24F924038();
  sub_24F924E78();
  v44 = v9;
  v10 = sub_24F924038();
  v51 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v46 = &v40 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246B08);
  v48 = v10;
  v49 = sub_24F924038();
  v52 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v50 = &v40 - v15;
  v16 = v43;
  (*(v5 + 16))(&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v43, a1, v14);
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = swift_allocObject();
  v53 = v8;
  v19 = v55;
  *(v18 + 16) = v8;
  *(v18 + 24) = v19;
  (*(v5 + 32))(v18 + v17, &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v68 = sub_24F923B78();
  v69 = v20;
  v21 = &v16[*(a1 + 56)];
  v22 = *v21;
  if (v21[8] == 1)
  {
    v67 = *v21;
  }

  else
  {

    sub_24F92BDC8();
    v23 = sub_24F9257A8();
    sub_24F921FD8();

    v24 = v40;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v41 + 8))(v24, v42);
    v22 = v67;
  }

  swift_getKeyPath();
  *&v70 = v22;
  sub_24F501898(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  v25 = swift_getWitnessTable();
  sub_24F926A38();

  v65[0] = v70;
  v65[1] = v71;
  v66[0] = v72[0];
  *(v66 + 9) = *(v72 + 9);
  v62 = v70;
  v63 = v71;
  v64[0] = v72[0];
  *(v64 + 9) = *(v72 + 9);
  v60 = v25;
  v61 = MEMORY[0x277CDF918];
  v26 = v44;
  v27 = swift_getWitnessTable();
  v28 = v46;
  sub_24F2DAA5C(1, v26, v27);
  v29 = (*(*(v26 - 8) + 8))(v65, v26);
  v45 = &v40;
  MEMORY[0x28223BE20](v29);
  v30 = v55;
  *(&v40 - 4) = v53;
  *(&v40 - 3) = v30;
  *(&v40 - 2) = v16;
  sub_24F927618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F40);
  v58 = v27;
  v59 = MEMORY[0x277CE0350];
  v31 = v48;
  v32 = swift_getWitnessTable();
  sub_24EAACEBC();
  v33 = v47;
  sub_24F9268D8();
  (*(v51 + 8))(v28, v31);
  v34 = sub_24E602068(&qword_27F246B10, &qword_27F246B08);
  v56 = v32;
  v57 = v34;
  v35 = v49;
  v36 = swift_getWitnessTable();
  v37 = v50;
  sub_24E7896B8(v33, v35, v36);
  v38 = *(v52 + 8);
  v38(v33, v35);
  sub_24E7896B8(v37, v35, v36);
  return (v38)(v37, v35);
}

uint64_t sub_24F4FE670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA38);
  type metadata accessor for AchievementsCardFanView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216590);
  sub_24F924038();
  sub_24F92C4A8();
  swift_getTupleTypeMetadata3();
  v38 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_24F927108();
  v43 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v41 = sub_24F924038();
  v45 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v36 = &v33 - v12;
  v42 = sub_24F924038();
  v46 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v33 - v13;
  v14 = sub_24F924038();
  v47 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v40 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v44 = &v33 - v17;
  v34 = a1;
  sub_24F923998();
  v18 = type metadata accessor for AchievementCardsVisualView();
  v35 = a2;
  sub_24F4FECD8(v18);
  sub_24F4FEFF8(v18, v59, v19);
  v49 = a3;
  v50 = a4;
  v51 = a2;
  v52 = v59;
  sub_24F924C88();
  v20 = v11;
  sub_24F9270F8();
  sub_24F500F18(v59);
  sub_24F923998();
  sub_24F923998();
  sub_24F9275F8();
  v21 = swift_getWitnessTable();
  v22 = v36;
  sub_24F926938();
  (*(v43 + 8))(v20, v9);
  sub_24F9278A8();
  v57 = v21;
  v58 = MEMORY[0x277CDF678];
  v23 = v41;
  v24 = swift_getWitnessTable();
  v25 = v39;
  sub_24F926228();
  (*(v45 + 8))(v22, v23);
  sub_24F50088C(v34, v18);
  v55 = v24;
  v56 = MEMORY[0x277CDF690];
  v26 = v42;
  v27 = swift_getWitnessTable();
  v28 = v40;
  sub_24F926978();
  (*(v46 + 8))(v25, v26);
  v53 = v27;
  v54 = MEMORY[0x277CDF748];
  v29 = swift_getWitnessTable();
  v30 = v44;
  sub_24E7896B8(v28, v14, v29);
  v31 = *(v47 + 8);
  v31(v28, v14);
  sub_24E7896B8(v30, v14, v29);
  return (v31)(v30, v14);
}

uint64_t sub_24F4FECD8(int *a1)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LODWORD(v5) = *(v1 + a1[9]);
  if (v5 > 4)
  {
  }

  else
  {
    v7 = sub_24F92CE08();

    if ((v7 & 1) == 0)
    {
      return result;
    }
  }

  v9 = (v1 + a1[15]);
  v10 = *(v9 + 16);
  v11 = *(v9 + 3);
  v17 = *v9;
  v18 = v10;
  v19 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA88);
  result = sub_24F926F38();
  if ((v16[24] & 1) == 0)
  {
    v12 = *(v1 + a1[11]);
    if (v12 != 4)
    {
      v13 = v1 + a1[13];
      v14 = *v13;
      if (*(v13 + 8) != 1)
      {

        sub_24F92BDC8();
        v15 = sub_24F9257A8();
        sub_24F921FD8();

        sub_24F924838();
        swift_getAtKeyPath();
        sub_24E62A5EC(v14, 0);
        return (*(v4 + 8))(v6, v3);
      }
    }
  }

  return result;
}

uint64_t sub_24F4FEFF8@<X0>(int *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v7 = *(v3 + a1[11]);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v24 = *(v3 + *(type metadata accessor for AchievementsCard() + 36));
      v76 = *(v3 + a1[9]);
      v80 = *(v3 + a1[10]);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F246B20);
      v25 = type metadata accessor for AchievementsCardFanLayoutMetrics.Card();
      v26 = *(*(v25 - 1) + 72);
      v27 = (*(*(v25 - 1) + 80) + 32) & ~*(*(v25 - 1) + 80);
      result = swift_allocObject();
      *(result + 16) = xmmword_24F9479A0;
      if (*(v24 + 16) >= 3uLL)
      {
        v78 = result;
        v28 = result + v27;
        v29 = *(type metadata accessor for Achievement(0) - 8);
        v30 = v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
        v31 = *(v29 + 72);
        sub_24F5018E0(v30 + 2 * v31, v28, type metadata accessor for Achievement);
        *(v28 + v25[5]) = 0xC01C000000000000;
        *(v28 + v25[6]) = 0x3FED99999999999ALL;
        *(v28 + v25[7]) = 0xBFF0000000000000;
        *(v28 + v25[8]) = 0x4000000000000000;
        *(v28 + v25[9]) = 0x3FE999999999999ALL;
        v32 = v28 + v26;
        sub_24F5018E0(v30 + v31, v28 + v26, type metadata accessor for Achievement);
        *(v32 + v25[5]) = 0x401C000000000000;
        *(v32 + v25[6]) = 0x3FED99999999999ALL;
        *(v32 + v25[7]) = 0x3FF0000000000000;
        *(v32 + v25[8]) = 0x4000000000000000;
        *(v32 + v25[9]) = 0x3FE999999999999ALL;
        v33 = v28 + 2 * v26;
        sub_24F5018E0(v30, v33, type metadata accessor for Achievement);
        *(v33 + v25[5]) = 0;
        *(v33 + v25[6]) = 0x3FF0000000000000;
        *(v33 + v25[7]) = 0;
        *(v33 + v25[8]) = 0;
        *(v33 + v25[9]) = 0x3FF0000000000000;
        if ((v76 & 0xFFFFFFFE) == 2)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_24F93FC20;
          sub_24F926C98();
          *(v34 + 32) = sub_24F9273C8();
          *(v34 + 40) = v35;
          sub_24F926C98();
          *(v34 + 48) = sub_24F9273C8();
          *(v34 + 56) = v36;
          sub_24F926C88();
          *(v34 + 64) = sub_24F9273C8();
          *(v34 + 72) = v37;
          sub_24F926C88();
          v38 = sub_24F9273C8();
          result = v34;
          *(v34 + 80) = v38;
          *(v34 + 88) = v39;
        }

        else
        {
          result = MEMORY[0x277D84F90];
        }

        v21 = qword_24FA04690[v76];
        v22 = xmmword_24FA045B0;
        v23 = 0x4000000000000000;
        v14 = v80;
        v18 = v78;
        goto LABEL_31;
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v7 != 3)
    {
      v18 = 0;
      result = 0;
      v21 = 0;
      v23 = 0;
      v14 = 0;
      v22 = 0uLL;
      a3 = 0.0;
LABEL_31:
      *a2 = v18;
      *(a2 + 8) = result;
      *(a2 + 16) = v21;
      *(a2 + 24) = v23;
      *(a2 + 32) = a3;
      *(a2 + 40) = v14;
      *(a2 + 48) = v22;
      return result;
    }

    v8 = *(v3 + *(type metadata accessor for AchievementsCard() + 36));
    v9 = *(v3 + a1[9]);
    v10 = *(v3 + a1[10]);
    if (v9 == 2)
    {
    }

    else
    {
      v55 = sub_24F92CE08();

      if ((v55 & 1) == 0)
      {
        v77 = 0x4000000000000000;
        v57 = 1.7;
        v56 = 0.9;
LABEL_26:
        v81 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F246B20);
        v58 = type metadata accessor for AchievementsCardFanLayoutMetrics.Card();
        v59 = *(*(v58 - 1) + 72);
        v60 = (*(*(v58 - 1) + 80) + 32) & ~*(*(v58 - 1) + 80);
        result = swift_allocObject();
        *(result + 16) = xmmword_24F942000;
        if (*(v8 + 16) >= 5uLL)
        {
          v75 = v9;
          v79 = result;
          v61 = result + v60;
          v62 = *(type metadata accessor for Achievement(0) - 8);
          v63 = v8 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
          v64 = *(v62 + 72);
          sub_24F5018E0(v63 + 4 * v64, v61, type metadata accessor for Achievement);
          *(v61 + v58[5]) = 0xC02C000000000000;
          *(v61 + v58[6]) = 0x3FEA666666666666;
          *(v61 + v58[7]) = -v57;
          *(v61 + v58[8]) = 0x4018000000000000;
          *(v61 + v58[9]) = 0x3FE3333333333333;
          v65 = v61 + v59;
          sub_24F5018E0(v63 + 3 * v64, v61 + v59, type metadata accessor for Achievement);
          *(v65 + v58[5]) = 0x402C000000000000;
          *(v65 + v58[6]) = 0x3FEA666666666666;
          *(v65 + v58[7]) = v57;
          *(v65 + v58[8]) = 0x4018000000000000;
          *(v65 + v58[9]) = 0x3FE3333333333333;
          v66 = v61 + 2 * v59;
          sub_24F5018E0(v63 + 2 * v64, v66, type metadata accessor for Achievement);
          *(v66 + v58[5]) = 0xC01C000000000000;
          *(v66 + v58[6]) = 0x3FED99999999999ALL;
          *(v66 + v58[7]) = -v56;
          *(v66 + v58[8]) = 0x4000000000000000;
          *(v66 + v58[9]) = 0x3FE999999999999ALL;
          v67 = v61 + 3 * v59;
          sub_24F5018E0(v63 + v64, v67, type metadata accessor for Achievement);
          *(v67 + v58[5]) = 0x401C000000000000;
          *(v67 + v58[6]) = 0x3FED99999999999ALL;
          *(v67 + v58[7]) = v56;
          *(v67 + v58[8]) = 0x4000000000000000;
          *(v67 + v58[9]) = 0x3FE999999999999ALL;
          v68 = v61 + 4 * v59;
          sub_24F5018E0(v63, v68, type metadata accessor for Achievement);
          *(v68 + v58[5]) = 0;
          *(v68 + v58[6]) = 0x3FF0000000000000;
          *(v68 + v58[7]) = 0;
          *(v68 + v58[8]) = 0;
          *(v68 + v58[9]) = 0x3FF0000000000000;
          if ((v75 & 0xFFFFFFFE) == 2)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
            v69 = swift_allocObject();
            *(v69 + 16) = xmmword_24F93FC20;
            sub_24F926C98();
            *(v69 + 32) = sub_24F9273C8();
            *(v69 + 40) = v70;
            sub_24F926C98();
            *(v69 + 48) = sub_24F9273C8();
            *(v69 + 56) = v71;
            sub_24F926C88();
            *(v69 + 64) = sub_24F9273C8();
            *(v69 + 72) = v72;
            sub_24F926C88();
            v73 = sub_24F9273C8();
            result = v69;
            *(v69 + 80) = v73;
            *(v69 + 88) = v74;
          }

          else
          {
            result = MEMORY[0x277D84F90];
          }

          v14 = v81;
          v21 = qword_24FA046C0[v75];
          v22 = xmmword_24FA045A0;
          v23 = v77;
          v18 = v79;
          goto LABEL_31;
        }

        goto LABEL_33;
      }
    }

    v77 = 0x3FF4000000000000;
    v56 = 0.5;
    v57 = 0.95;
    goto LABEL_26;
  }

  if (!*(v3 + a1[11]))
  {
    v11 = *(v3 + *(type metadata accessor for AchievementsCard() + 36));
    v12 = a1[10];
    v13 = *(v3 + a1[9]);
    v14 = *(v3 + v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F246B20);
    v15 = type metadata accessor for AchievementsCardFanLayoutMetrics.Card();
    v16 = (*(*(v15 - 1) + 80) + 32) & ~*(*(v15 - 1) + 80);
    result = swift_allocObject();
    *(result + 16) = xmmword_24F93DE60;
    if (*(v11 + 16))
    {
      v18 = result;
      v19 = result + v16;
      v20 = *(type metadata accessor for Achievement(0) - 8);
      sub_24F5018E0(v11 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19, type metadata accessor for Achievement);
      *(v19 + v15[5]) = 0xC018000000000000;
      *(v19 + v15[6]) = 0x3FF0000000000000;
      *(v19 + v15[7]) = 0;
      *(v19 + v15[8]) = 0;
      *(v19 + v15[9]) = 0x3FF0000000000000;
      result = sub_24ECF9254(0, v13);
      v21 = 0x3FC999999999999ALL;
      if ((v13 & 0xFE) != 4)
      {
        v21 = 0;
      }

      v22 = xmmword_24F969540;
      v23 = 0x3FF3333333333333;
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  v40 = *(v3 + *(type metadata accessor for AchievementsCard() + 36));
  v41 = *(v3 + a1[9]);
  v14 = *(v3 + a1[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F246B20);
  v42 = type metadata accessor for AchievementsCardFanLayoutMetrics.Card();
  v43 = *(*(v42 - 1) + 72);
  v44 = (*(*(v42 - 1) + 80) + 32) & ~*(*(v42 - 1) + 80);
  result = swift_allocObject();
  *(result + 16) = xmmword_24F93A400;
  if (*(v40 + 16) >= 2uLL)
  {
    v18 = result;
    v45 = result + v44;
    v46 = *(type metadata accessor for Achievement(0) - 8);
    v47 = v40 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    sub_24F5018E0(v47 + *(v46 + 72), v45, type metadata accessor for Achievement);
    *(v45 + v42[5]) = 0x401C000000000000;
    *(v45 + v42[6]) = 0x3FED99999999999ALL;
    *(v45 + v42[7]) = 0x3FDCCCCCCCCCCCCDLL;
    *(v45 + v42[8]) = 0x3FF0000000000000;
    *(v45 + v42[9]) = 0x3FF0000000000000;
    v48 = v45 + v43;
    sub_24F5018E0(v47, v48, type metadata accessor for Achievement);
    *(v48 + v42[5]) = 0xC028000000000000;
    *(v48 + v42[6]) = 0x3FF0000000000000;
    *(v48 + v42[7]) = 0xBFDCCCCCCCCCCCCDLL;
    *(v48 + v42[8]) = 0;
    *(v48 + v42[9]) = 0x3FF0000000000000;
    if ((v41 & 0xFFFFFFFE) == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_24F93FC20;
      sub_24F926C98();
      *(v49 + 32) = sub_24F9273C8();
      *(v49 + 40) = v50;
      sub_24F926C98();
      *(v49 + 48) = sub_24F9273C8();
      *(v49 + 56) = v51;
      sub_24F926C88();
      *(v49 + 64) = sub_24F9273C8();
      *(v49 + 72) = v52;
      sub_24F926C88();
      v53 = sub_24F9273C8();
      result = v49;
      *(v49 + 80) = v53;
      *(v49 + 88) = v54;
    }

    else
    {
      result = MEMORY[0x277D84F90];
    }

    v21 = qword_24FA04690[v41];
    v22 = xmmword_24FA045B0;
    v23 = 0x3FF6666666666666;
    goto LABEL_31;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_24F4FFC68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v81 = a5;
  v8 = *a2;
  v9 = a2 + 1;
  v69 = a2[1];
  v10 = type metadata accessor for AchievementCardsVisualView();
  v72 = *(v10 - 8);
  v84 = *(v72 + 64);
  MEMORY[0x28223BE20](v10);
  v68 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v12 - 8);
  v67 = &v63 - v13;
  v66 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v66);
  v82 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a3;
  v74 = a4;
  v15 = type metadata accessor for AchievementsCardFanView();
  v70 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v83 = (&v63 - v16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216590);
  v85 = v15;
  v17 = sub_24F924038();
  v78 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v75 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v71 = &v63 - v20;
  v21 = sub_24F92C4A8();
  v80 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v79 = &v63 - v25;
  v73 = v10;
  v26 = *(a1 + *(v10 + 36));
  if (v26 > 4)
  {

    v77 = 0;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    (*(v78 + 56))(v23, 1, 1, v17);
    WitnessTable = swift_getWitnessTable();
    v56 = sub_24E602068(&qword_27F216588, &qword_27F216590);
    v100[3] = WitnessTable;
    v100[4] = v56;
    swift_getWitnessTable();
    goto LABEL_6;
  }

  v27 = sub_24F92CE08();

  v77 = v27 ^ 1;
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v28 = *(v9 + 1);
  v102 = *v9;
  v103 = v28;
  v104 = *(v9 + 2);
  v29 = v9[6];
  v101 = v8;
  v105 = v29;
  v30 = *(type metadata accessor for AchievementsCard() + 44);
  v31 = type metadata accessor for PlayerAvatar.Overlay(0);
  v32 = v67;
  (*(*(v31 - 8) + 56))(v67, 1, 1, v31);
  v65 = a1;
  v33 = v82;
  sub_24F5018E0(a1 + v30, v82, type metadata accessor for PlayerAvatar);
  v34 = *(v66 + 20);

  sub_24E717FD0(v32, v33 + v34);
  v35 = v72;
  v64 = *(v72 + 16);
  v36 = v68;
  v37 = v73;
  v64(v68, a1, v73);
  v67 = v17;
  v38 = v74;
  v66 = v21;
  v39 = *(v35 + 80);
  v69 = v23;
  v40 = (v39 + 32) & ~v39;
  v41 = swift_allocObject();
  v42 = v76;
  *(v41 + 16) = v76;
  *(v41 + 24) = v38;
  v72 = *(v35 + 32);
  (v72)(v41 + v40, v36, v37);
  sub_24F02E404(&v101, v82, sub_24F500F80, v41, v83);
  v64(v36, v65, v37);
  v21 = v66;
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v38;
  v44 = v67;
  v45 = v43 + v40;
  v46 = v85;
  v23 = v69;
  (v72)(v45, v36, v37);
  type metadata accessor for CGSize(0);
  v47 = swift_getWitnessTable();
  sub_24F501898(&qword_27F224B90, type metadata accessor for CGSize);
  v48 = v75;
  v49 = v83;
  sub_24F9264C8();

  (*(v70 + 8))(v49, v46);
  v50 = sub_24E602068(&qword_27F216588, &qword_27F216590);
  v86 = v47;
  v87 = v50;
  v51 = swift_getWitnessTable();
  v52 = v71;
  sub_24E7896B8(v48, v44, v51);
  v53 = v78;
  v54 = *(v78 + 8);
  v54(v48, v44);
  sub_24E7896B8(v52, v44, v51);
  v54(v52, v44);
  (*(v53 + 32))(v23, v48, v44);
  (*(v53 + 56))(v23, 0, 1, v44);
LABEL_6:
  v57 = v79;
  sub_24E8D5004(v23, v79);
  v58 = v80;
  v59 = *(v80 + 8);
  v59(v23, v21);
  v97 = 0;
  v98 = 0;
  v99 = v77 & 1;
  v100[0] = &v97;
  (*(v58 + 16))(v23, v57, v21);
  v95 = 0;
  v96 = 0;
  v100[1] = v23;
  v100[2] = &v95;
  v94[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA38);
  v94[1] = v21;
  v94[2] = MEMORY[0x277CE1180];
  v91 = sub_24F314B24();
  v60 = swift_getWitnessTable();
  v61 = sub_24E602068(&qword_27F216588, &qword_27F216590);
  v89 = v60;
  v90 = v61;
  v88 = swift_getWitnessTable();
  v92 = swift_getWitnessTable();
  v93 = MEMORY[0x277CE1170];
  sub_24F57BA64(v100, 3uLL, v94);
  v59(v57, v21);
  return (v59)(v23, v21);
}

uint64_t sub_24F5007B8(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for AchievementCardsVisualView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA88);
  result = sub_24F926F38();
  if (v7)
  {
    return sub_24F926F48();
  }

  if (v5 != v1 || v6 != v2)
  {
    return sub_24F926F48();
  }

  return result;
}

uint64_t sub_24F50088C(uint64_t a1, int *a2)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LODWORD(v6) = *(v2 + a2[9]);
  if (v6 > 4)
  {
  }

  else
  {
    v8 = sub_24F92CE08();

    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  v10 = v2 + a2[13];
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    v12 = *v10;
  }

  else
  {

    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v11, 0);
    result = (*(v5 + 8))(v7, v4);
    v12 = v18;
  }

  if (v12 == 1)
  {
    v14 = (v2 + a2[15]);
    v15 = *(v14 + 16);
    v16 = *(v14 + 3);
    v18 = *v14;
    v19 = v15;
    v20 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA88);
    result = sub_24F926F38();
    if ((v17[24] & 1) == 0)
    {
      return sub_24F923998();
    }
  }

  return result;
}

uint64_t sub_24F500B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F925828();
  v9 = type metadata accessor for AchievementCardsVisualView();
  v10 = *(a1 + *(v9 + 36));
  if (v10 > 4)
  {
  }

  else
  {
    v11 = sub_24F92CE08();

    if ((v11 & 1) == 0)
    {
      v12 = (a1 + *(v9 + 56));
      v13 = *v12;
      v14 = *(v12 + 8);

      if ((v14 & 1) == 0)
      {
        sub_24F92BDC8();
        v15 = sub_24F9257A8();
        sub_24F921FD8();

        sub_24F924838();
        swift_getAtKeyPath();

        (*(v5 + 8))(v7, v4);
        v13 = v22;
      }

      swift_getKeyPath();
      v22 = v13;
      sub_24F501898(&qword_27F214D10, type metadata accessor for CardSafeArea);
      sub_24F91FD88();
    }
  }

  result = sub_24F923318();
  *a2 = v8;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_24F500E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for AchievementCardsVisualView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_24F4FE670(a1, v8, v5, v6, a2);
}

uint64_t sub_24F500F18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246B18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_71()
{
  v48 = type metadata accessor for AchievementCardsVisualView();
  v49 = *(*(v48 - 8) + 80);
  v1 = v0 + ((v49 + 32) & ~v49);
  __swift_destroy_boxed_opaque_existential_1(v1);
  if (*(v1 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1(v1 + 40);
  }

  v2 = type metadata accessor for AchievementsCard();
  v3 = v2[6];
  v4 = sub_24F92A6D8();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v1 + v3, 1, v4))
  {
    (*(v5 + 8))(v1 + v3, v4);
  }

  v6 = v2[7];
  v7 = sub_24F929608();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v1 + v6, 1, v7))
  {
    (*(v8 + 8))(v1 + v6, v7);
  }

  v9 = v1 + v2[8];

  v10 = type metadata accessor for CommonCardAttributes(0);
  v11 = v10[6];
  v12 = sub_24F9289E8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!v14(v9 + v11, 1, v12))
  {
    (*(v13 + 8))(v9 + v11, v12);
  }

  v15 = v10[7];
  v47 = v14;
  if (!v14(v9 + v15, 1, v12))
  {
    (*(v13 + 8))(v9 + v15, v12);
  }

  v50 = v13;
  v16 = v9 + v10[8];
  v17 = type metadata accessor for GSKVideo();
  if (!(*(*(v17 - 1) + 48))(v16, 1, v17))
  {
    v44 = v1;
    v46 = v2;
    v18 = sub_24F91F4A8();
    (*(*(v18 - 8) + 8))(v16, v18);
    v45 = v12;
    (*(v50 + 8))(v16 + v17[5], v12);
    v19 = v17[9];
    v20 = sub_24F928698();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    if (!v22(v16 + v19, 1, v20))
    {
      (*(v21 + 8))(v16 + v19, v20);
    }

    v43 = v21;
    v23 = v17[10];
    if (!v22(v16 + v23, 1, v20))
    {
      (*(v43 + 8))(v16 + v23, v20);
    }

    v2 = v46;
    v1 = v44;
    v12 = v45;
  }

  if (*(v9 + v10[9]))
  {
  }

  v24 = v10[10];
  v25 = v50;
  if (!v47(v9 + v24, 1, v12))
  {
    (*(v50 + 8))(v9 + v24, v12);
  }

  v26 = v9 + v10[17];
  v27 = type metadata accessor for CommonCardAttributes.CardBackgroundColor(0);
  if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
  {
    v28 = sub_24F928388();
    (*(*(v28 - 8) + 8))(v26, v28);

    v25 = v50;
  }

  v29 = v9 + v10[19];
  if (*(v29 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v30 = v9 + v10[20];
  v31 = type metadata accessor for CardPrimaryActionType();
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:

        v40 = *(type metadata accessor for OfferButtonInfo() + 24);
        v41 = sub_24F91F4A8();
        v42 = *(v41 - 8);
        if (!(*(v42 + 48))(v30 + v40, 1, v41))
        {
          (*(v42 + 8))(v30 + v40, v41);
        }

        break;
      case 1:

        break;
      case 0:

        break;
    }
  }

  v32 = *(v25 + 8);
  v32(v1 + v2[10], v12);
  v33 = v1 + v2[11];

  v34 = type metadata accessor for PlayerAvatar(0);
  v35 = *(v34 + 20);
  v36 = type metadata accessor for PlayerAvatar.Overlay(0);
  if (!(*(*(v36 - 8) + 48))(v33 + v35, 1, v36) && !swift_getEnumCaseMultiPayload())
  {
    v32(v33 + v35, v12);
  }

  v37 = v33 + *(v34 + 24);
  if (*(v37 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  sub_24E62A5EC(*(v1 + *(v48 + 52)), *(v1 + *(v48 + 52) + 8));

  return swift_deallocObject();
}

uint64_t sub_24F50180C(double *a1)
{
  type metadata accessor for AchievementCardsVisualView();

  return sub_24F5007B8(a1);
}

uint64_t sub_24F501898(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F5018E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F501948()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA38);
  type metadata accessor for AchievementsCardFanView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216590);
  sub_24F924038();
  sub_24F92C4A8();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F923B88();
  sub_24F924038();
  sub_24F924E78();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246B08);
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F246B10, &qword_27F246B08);
  return swift_getWitnessTable();
}

uint64_t sub_24F501C24@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v464 = a5;
  v541 = a4;
  v539 = a3;
  v540 = a1;
  v543 = a8;
  v468 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A10);
  MEMORY[0x28223BE20](v468);
  v451 = (&v422 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v429 = (&v422 - v13);
  v424 = type metadata accessor for JSColor();
  MEMORY[0x28223BE20](v424);
  v423 = &v422 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v427 = type metadata accessor for CommonCardAttributes.CardBackgroundColor(0);
  v426 = *(v427 - 8);
  MEMORY[0x28223BE20](v427);
  v422 = &v422 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F550);
  MEMORY[0x28223BE20](v16 - 8);
  v428 = &v422 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  MEMORY[0x28223BE20](v18 - 8);
  v430 = &v422 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v449 = &v422 - v21;
  v466 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D80);
  MEMORY[0x28223BE20](v466);
  v467 = &v422 - v22;
  v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D88);
  MEMORY[0x28223BE20](v433);
  v434 = (&v422 - v23);
  v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CA8);
  MEMORY[0x28223BE20](v465);
  v435 = &v422 - v24;
  v496 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C98);
  MEMORY[0x28223BE20](v496);
  v498 = &v422 - v25;
  v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D90);
  MEMORY[0x28223BE20](v493);
  v495 = &v422 - v26;
  v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C88);
  MEMORY[0x28223BE20](v518);
  v497 = &v422 - v27;
  v494 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v494);
  v462 = &v422 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v463 = &v422 - v30;
  v523 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BE0);
  MEMORY[0x28223BE20](v523);
  v525 = &v422 - v31;
  v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BE8);
  MEMORY[0x28223BE20](v515);
  v517 = &v422 - v32;
  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BF0);
  MEMORY[0x28223BE20](v472);
  v491 = &v422 - v33;
  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C70);
  MEMORY[0x28223BE20](v516);
  v492 = &v422 - v34;
  v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C60);
  MEMORY[0x28223BE20](v524);
  v519 = &v422 - v35;
  v537 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C50);
  MEMORY[0x28223BE20](v537);
  v526 = &v422 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B270);
  MEMORY[0x28223BE20](v37 - 8);
  v458 = &v422 - v38;
  v489 = type metadata accessor for CardPrimaryActionButton(0);
  MEMORY[0x28223BE20](v489);
  v459 = &v422 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v490 = &v422 - v41;
  v448 = sub_24F924B38();
  v443 = *(v448 - 8);
  MEMORY[0x28223BE20](v448);
  v442 = &v422 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v446 = sub_24F921AF8();
  v445 = *(v446 - 8);
  MEMORY[0x28223BE20](v446);
  v444 = &v422 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C10);
  v460 = *(v461 - 8);
  MEMORY[0x28223BE20](v461);
  v447 = &v422 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v45 - 8);
  v450 = &v422 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v425 = &v422 - v48;
  MEMORY[0x28223BE20](v49);
  v456 = &v422 - v50;
  v469 = sub_24F9289E8();
  v470 = *(v469 - 8);
  MEMORY[0x28223BE20](v469);
  v441 = &v422 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v457 = &v422 - v53;
  v484 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C00);
  MEMORY[0x28223BE20](v484);
  v488 = &v422 - v54;
  v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DB8);
  MEMORY[0x28223BE20](v480);
  v482 = &v422 - v55;
  v509 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BF0);
  MEMORY[0x28223BE20](v509);
  v486 = &v422 - v56;
  v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DC8);
  MEMORY[0x28223BE20](v506);
  v508 = &v422 - v57;
  v476 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DD0);
  MEMORY[0x28223BE20](v476);
  v477 = &v422 - v58;
  v507 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BD8);
  MEMORY[0x28223BE20](v507);
  v481 = &v422 - v59;
  v531 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BC8);
  MEMORY[0x28223BE20](v531);
  v510 = &v422 - v60;
  v475 = type metadata accessor for DefaultCardTitleView(0);
  MEMORY[0x28223BE20](v475);
  v455 = &v422 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v478 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D98);
  MEMORY[0x28223BE20](v478);
  v479 = &v422 - v62;
  v514 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BB8);
  MEMORY[0x28223BE20](v514);
  v485 = &v422 - v63;
  v521 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98);
  v505 = *(v521 - 8);
  MEMORY[0x28223BE20](v521);
  v471 = &v422 - v64;
  v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B88);
  MEMORY[0x28223BE20](v522);
  v502 = &v422 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v501 = &v422 - v67;
  MEMORY[0x28223BE20](v68);
  v500 = &v422 - v69;
  MEMORY[0x28223BE20](v70);
  v499 = &v422 - v71;
  v534 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BD8);
  MEMORY[0x28223BE20](v534);
  v536 = &v422 - v72;
  v528 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DC0);
  MEMORY[0x28223BE20](v528);
  v530 = &v422 - v73;
  v520 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DA8);
  MEMORY[0x28223BE20](v520);
  v512 = &v422 - v74;
  v503 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DB0);
  MEMORY[0x28223BE20](v503);
  v483 = &v422 - v75;
  v511 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B30);
  MEMORY[0x28223BE20](v511);
  v487 = &v422 - v76;
  v529 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B20);
  MEMORY[0x28223BE20](v529);
  v513 = &v422 - v77;
  v535 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B10);
  MEMORY[0x28223BE20](v535);
  v532 = &v422 - v78;
  v440 = type metadata accessor for CardElementView.Category(0);
  MEMORY[0x28223BE20](v440);
  v431 = &v422 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DA0);
  MEMORY[0x28223BE20](v436);
  v439 = &v422 - v80;
  v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B60);
  MEMORY[0x28223BE20](v438);
  v432 = &v422 - v81;
  v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B50);
  v453 = *(v454 - 8);
  MEMORY[0x28223BE20](v454);
  v437 = &v422 - v82;
  v474 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B40);
  MEMORY[0x28223BE20](v474);
  v473 = &v422 - v83;
  v542 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B00);
  v544 = *(v542 - 8);
  MEMORY[0x28223BE20](v542);
  v533 = &v422 - v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  MEMORY[0x28223BE20](v85 - 8);
  v538 = &v422 - v86;
  v504 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v504);
  v88 = (&v422 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  v527 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v527);
  v90 = &v422 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91);
  v93 = &v422 - v92;
  MEMORY[0x28223BE20](v94);
  v96 = &v422 - v95;
  v98 = MEMORY[0x28223BE20](v97);
  v100 = &v422 - v99;
  v101 = a7;
  v102 = *(a7 + 24);
  v452 = a2;
  v103 = a6;
  v104 = a6;
  v105 = v101;
  v102(v104, v98);
  v106 = v539;
  v545 = v88;
  v107 = v88;
  v108 = v540;
  sub_24F506FA4(v539, v541, v107);
  if (sub_24F509134(v108, v106))
  {
    v541 = v100;
    switch(v108)
    {
      case 1u:
        LOBYTE(v549) = 0;
        goto LABEL_28;
      case 2u:
        swift_storeEnumTagMultiPayload();
        sub_24F509500(&qword_27F214C78, type metadata accessor for CardPrimaryActionButton);
        v188 = v492;
        sub_24F924E28();
        sub_24E60169C(v188, v517, &qword_27F214C70);
        swift_storeEnumTagMultiPayload();
        sub_24E63CEC4();
        sub_24E717ADC();
        v189 = v519;
        sub_24F924E28();
        sub_24E601704(v188, &qword_27F214C70);
        sub_24E60169C(v189, v525, &qword_27F214C60);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0);
        sub_24E63CE0C();
        sub_24E63D208();
        v190 = v526;
        sub_24F924E28();
        sub_24E601704(v189, &qword_27F214C60);
        goto LABEL_30;
      case 3u:
        v191 = v456;
        sub_24E60169C(&v541[v527[10]], v456, &qword_27F213FB0);
        v192 = v470;
        v193 = v469;
        if ((*(v470 + 48))(v191, 1, v469) == 1)
        {
          sub_24E601704(v191, &qword_27F213FB0);
          v194 = 1;
          v137 = v543;
          v138 = v542;
          v139 = v544;
          v140 = v538;
          v195 = v488;
          v196 = v461;
        }

        else
        {
          (*(v192 + 32))();
          v327 = v441;
          sub_24F9289C8();
          v328 = *MEMORY[0x277CE0118];
          v329 = v443;
          v540 = *(v443 + 104);
          v330 = v442;
          v331 = v448;
          v540(v442, v328, v448);
          v332 = v444;
          sub_24F9219A8();
          (*(v329 + 8))(v330, v331);
          sub_24F509500(&qword_27F214C28, MEMORY[0x277D21C48]);
          sub_24F509500(&qword_27F214C30, MEMORY[0x277D7EBE8]);
          v333 = v447;
          v334 = v446;
          sub_24F925ED8();
          (*(v445 + 8))(v332, v334);
          v335 = *(v192 + 8);
          v335(v327, v193);
          v336 = sub_24F927618();
          v338 = v337;
          v339 = (v333 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C20) + 36));
          v340 = sub_24F924258();
          v540(&v339[*(v340 + 20)], v328, v331);
          __asm { FMOV            V0.2D, #8.0 }

          *v339 = _Q0;
          v346 = v504;
          v347 = v545;
          v348 = v545 + v504[32];
          v349 = *v348;
          v350 = *(v348 + 1);
          v351 = *(v348 + 2);
          v352 = *(v348 + 3);
          v353 = &v339[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1C8) + 36)];
          *v353 = v352;
          *(v353 + 1) = v351;
          *(v353 + 2) = v349;
          *(v353 + 3) = v350;
          v354 = &v339[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C40) + 36)];
          *v354 = v336;
          v354[1] = v338;
          v355 = *(v347 + v346[31]);

          sub_24F9278A8();
          v357 = v356;
          v359 = v358;
          v335(v457, v193);
          v196 = v461;
          v360 = (v333 + *(v461 + 36));
          *v360 = v355;
          v360[1] = v357;
          v360[2] = v359;
          v195 = v488;
          sub_24E6009C8(v333, v488, &qword_27F214C10);
          v194 = 0;
          v137 = v543;
          v138 = v542;
          v139 = v544;
          v140 = v538;
        }

        (*(v460 + 56))(v195, v194, 1, v196);
        sub_24E60169C(v195, v482, &qword_27F214C00);
        swift_storeEnumTagMultiPayload();
        sub_24E701AFC();
        v361 = v486;
        sub_24F924E28();
        sub_24E60169C(v361, v508, &qword_27F214BF0);
        swift_storeEnumTagMultiPayload();
        sub_24E63C9EC();
        sub_24E63CAD4();
        v362 = v510;
        sub_24F924E28();
        sub_24E601704(v361, &qword_27F214BF0);
        sub_24E60169C(v362, v530, &qword_27F214BC8);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v363 = v532;
        sub_24F924E28();
        sub_24E601704(v362, &qword_27F214BC8);
        sub_24E60169C(v363, v536, &qword_27F214B10);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v533;
        sub_24F924E28();
        sub_24E601704(v363, &qword_27F214B10);
        sub_24E601704(v488, &qword_27F214C00);
        goto LABEL_73;
      case 4u:
        v149 = &v541[v527[11]];
        v150 = *(v149 + 1);
        if (!v150)
        {
          goto LABEL_51;
        }

        v151 = *v149;
        v152 = HIBYTE(v150) & 0xF;
        if ((v150 & 0x2000000000000000) == 0)
        {
          v152 = v151 & 0xFFFFFFFFFFFFLL;
        }

        if (v152)
        {
          *&v546 = v151;
          *(&v546 + 1) = v150;
          sub_24E600AEC();

          v153 = sub_24F925E18();
          v155 = v154;
          v157 = v156;
          v158 = v504;
          v159 = v545;
          v160 = sub_24F925C98();
          v162 = v161;
          v164 = v163;
          sub_24E600B40(v153, v155, v157 & 1);

          LODWORD(v546) = sub_24F9251C8();
          v165 = sub_24F925C58();
          v167 = v166;
          v169 = v168;
          v171 = v170;
          sub_24E600B40(v160, v162, v164 & 1);

          v172 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8) + 36);
          v173 = *MEMORY[0x277CE13B8];
          v174 = sub_24F927748();
          v175 = v471;
          (*(*(v174 - 8) + 104))(&v471[v172], v173, v174);
          *v175 = v165;
          *(v175 + 8) = v167;
          *(v175 + 16) = v169 & 1;
          *(v175 + 24) = v171;
          v176 = *(v159 + v158[19]);
          KeyPath = swift_getKeyPath();
          v178 = v521;
          v179 = v175 + *(v521 + 36);
          *v179 = KeyPath;
          *(v179 + 8) = v176;
          *(v179 + 16) = 0;
          v180 = v499;
          sub_24E6009C8(v175, v499, &qword_27F214B98);
          v181 = 0;
          v137 = v543;
          v138 = v542;
          v139 = v544;
        }

        else
        {
LABEL_51:
          v181 = 1;
          v137 = v543;
          v138 = v542;
          v139 = v544;
          v178 = v521;
          v180 = v499;
        }

        (*(v505 + 56))(v180, v181, 1, v178);
        sub_24E60169C(v180, v483, &qword_27F214B88);
        swift_storeEnumTagMultiPayload();
        sub_24E7019F4();
        sub_24E701A78();
        v310 = v487;
        sub_24F924E28();
        sub_24E60169C(v310, v512, &qword_27F214B30);
        swift_storeEnumTagMultiPayload();
        sub_24E63C434();
        sub_24E63C8B0();
        v311 = v513;
        sub_24F924E28();
        sub_24E601704(v310, &qword_27F214B30);
        sub_24E60169C(v311, v530, &qword_27F214B20);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v312 = v532;
        sub_24F924E28();
        sub_24E601704(v311, &qword_27F214B20);
        sub_24E60169C(v312, v536, &qword_27F214B10);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v533;
        sub_24F924E28();
        sub_24E601704(v312, &qword_27F214B10);
        v313 = &v531;
        goto LABEL_58;
      case 5u:
        v204 = &v541[v527[12]];
        v205 = *(v204 + 1);
        if (!v205)
        {
          goto LABEL_54;
        }

        v206 = *v204;
        v207 = HIBYTE(v205) & 0xF;
        if ((v205 & 0x2000000000000000) == 0)
        {
          v207 = v206 & 0xFFFFFFFFFFFFLL;
        }

        if (v207)
        {
          *&v546 = v206;
          *(&v546 + 1) = v205;
          sub_24E600AEC();

          v208 = sub_24F925E18();
          v210 = v209;
          v212 = v211;
          v213 = v504;
          v214 = v545;
          v215 = sub_24F925C98();
          v217 = v216;
          v219 = v218;
          sub_24E600B40(v208, v210, v212 & 1);

          LODWORD(v546) = sub_24F9251C8();
          v220 = sub_24F925C58();
          v222 = v221;
          v224 = v223;
          v226 = v225;
          sub_24E600B40(v215, v217, v219 & 1);

          v227 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8) + 36);
          v228 = *MEMORY[0x277CE13B8];
          v229 = sub_24F927748();
          v230 = v471;
          (*(*(v229 - 8) + 104))(&v471[v227], v228, v229);
          *v230 = v220;
          *(v230 + 8) = v222;
          *(v230 + 16) = v224 & 1;
          *(v230 + 24) = v226;
          v231 = *(v214 + v213[24]);
          v232 = swift_getKeyPath();
          v233 = v521;
          v234 = v230 + *(v521 + 36);
          *v234 = v232;
          *(v234 + 8) = v231;
          *(v234 + 16) = 0;
          v235 = v500;
          sub_24E6009C8(v230, v500, &qword_27F214B98);
          v236 = 0;
          v137 = v543;
          v138 = v542;
          v139 = v544;
        }

        else
        {
LABEL_54:
          v236 = 1;
          v137 = v543;
          v138 = v542;
          v139 = v544;
          v233 = v521;
          v235 = v500;
        }

        (*(v505 + 56))(v235, v236, 1, v233);
        sub_24E60169C(v235, v479, &qword_27F214B88);
        swift_storeEnumTagMultiPayload();
        sub_24E701A78();
        v316 = v485;
        sub_24F924E28();
        sub_24E60169C(v316, v512, &qword_27F214BB8);
        swift_storeEnumTagMultiPayload();
        sub_24E63C434();
        sub_24E63C8B0();
        v317 = v513;
        sub_24F924E28();
        sub_24E601704(v316, &qword_27F214BB8);
        sub_24E60169C(v317, v530, &qword_27F214B20);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v318 = v532;
        sub_24F924E28();
        sub_24E601704(v317, &qword_27F214B20);
        sub_24E60169C(v318, v536, &qword_27F214B10);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v533;
        sub_24F924E28();
        sub_24E601704(v318, &qword_27F214B10);
        v313 = &v532;
        goto LABEL_58;
      case 6u:
        v241 = &v541[v527[13]];
        v242 = *(v241 + 1);
        if (!v242)
        {
          goto LABEL_56;
        }

        v243 = *v241;
        v244 = HIBYTE(v242) & 0xF;
        if ((v242 & 0x2000000000000000) == 0)
        {
          v244 = v243 & 0xFFFFFFFFFFFFLL;
        }

        if (v244)
        {
          *&v546 = v243;
          *(&v546 + 1) = v242;
          sub_24E600AEC();

          v245 = sub_24F925E18();
          v247 = v246;
          v249 = v248;
          v250 = v504;
          v251 = v545;
          v252 = sub_24F925C98();
          v254 = v253;
          v256 = v255;
          sub_24E600B40(v245, v247, v249 & 1);

          LODWORD(v546) = sub_24F9251C8();
          v257 = sub_24F925C58();
          v259 = v258;
          v261 = v260;
          v263 = v262;
          sub_24E600B40(v252, v254, v256 & 1);

          v264 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8) + 36);
          v265 = *MEMORY[0x277CE13B8];
          v266 = sub_24F927748();
          v267 = v471;
          (*(*(v266 - 8) + 104))(&v471[v264], v265, v266);
          *v267 = v257;
          *(v267 + 8) = v259;
          *(v267 + 16) = v261 & 1;
          *(v267 + 24) = v263;
          v268 = *(v251 + v250[26]);
          v269 = swift_getKeyPath();
          v270 = v521;
          v271 = v267 + *(v521 + 36);
          *v271 = v269;
          *(v271 + 8) = v268;
          *(v271 + 16) = 0;
          v272 = v501;
          sub_24E6009C8(v267, v501, &qword_27F214B98);
          v273 = 0;
          v137 = v543;
          v138 = v542;
          v139 = v544;
        }

        else
        {
LABEL_56:
          v273 = 1;
          v137 = v543;
          v138 = v542;
          v139 = v544;
          v270 = v521;
          v272 = v501;
        }

        (*(v505 + 56))(v272, v273, 1, v270);
        sub_24E60169C(v272, v479, &qword_27F214B88);
        swift_storeEnumTagMultiPayload();
        sub_24E701A78();
        v319 = v485;
        sub_24F924E28();
        sub_24E60169C(v319, v512, &qword_27F214BB8);
        swift_storeEnumTagMultiPayload();
        sub_24E63C434();
        sub_24E63C8B0();
        v320 = v513;
        sub_24F924E28();
        sub_24E601704(v319, &qword_27F214BB8);
        sub_24E60169C(v320, v530, &qword_27F214B20);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v321 = v532;
        sub_24F924E28();
        sub_24E601704(v320, &qword_27F214B20);
        sub_24E60169C(v321, v536, &qword_27F214B10);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v533;
        sub_24F924E28();
        sub_24E601704(v321, &qword_27F214B10);
        v313 = &v533;
LABEL_58:
        v322 = *(v313 - 32);
        v323 = &qword_27F214B88;
        goto LABEL_71;
      case 7u:
        v197 = v455;
        sub_24F5095B0(v541, v455, type metadata accessor for CommonCardAttributes);
        v198 = v475;
        sub_24F5095B0(v545, v197 + *(v475 + 20), type metadata accessor for CardLayoutMetrics);
        *(v197 + *(v198 + 24)) = v106;
        sub_24F5095B0(v197, v477, type metadata accessor for DefaultCardTitleView);
        swift_storeEnumTagMultiPayload();
        sub_24F509500(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView);
        sub_24E701A78();
        v199 = v481;
        sub_24F924E28();
        sub_24E60169C(v199, v508, &qword_27F214BD8);
        swift_storeEnumTagMultiPayload();
        sub_24E63C9EC();
        sub_24E63CAD4();
        v200 = v510;
        sub_24F924E28();
        sub_24E601704(v199, &qword_27F214BD8);
        sub_24E60169C(v200, v530, &qword_27F214BC8);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v201 = v532;
        sub_24F924E28();
        sub_24E601704(v200, &qword_27F214BC8);
        sub_24E60169C(v201, v536, &qword_27F214B10);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v533;
        sub_24F924E28();
        sub_24E601704(v201, &qword_27F214B10);
        sub_24F5094A0(v197, type metadata accessor for DefaultCardTitleView);
        goto LABEL_31;
      case 8u:
        v277 = &v541[v527[15]];
        v278 = *(v277 + 1);
        if (!v278)
        {
          goto LABEL_59;
        }

        v279 = *v277;
        v280 = HIBYTE(v278) & 0xF;
        if ((v278 & 0x2000000000000000) == 0)
        {
          v280 = v279 & 0xFFFFFFFFFFFFLL;
        }

        if (v280)
        {
          *&v546 = v279;
          *(&v546 + 1) = v278;
          sub_24E600AEC();

          v281 = sub_24F925E18();
          v283 = v282;
          v285 = v284;
          v286 = v504;
          v287 = v545;
          v288 = sub_24F925C98();
          v290 = v289;
          v292 = v291;
          sub_24E600B40(v281, v283, v285 & 1);

          LODWORD(v546) = sub_24F9251C8();
          v293 = sub_24F925C58();
          v295 = v294;
          v297 = v296;
          v299 = v298;
          sub_24E600B40(v288, v290, v292 & 1);

          v300 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8) + 36);
          v301 = *MEMORY[0x277CE13B8];
          v302 = sub_24F927748();
          v303 = v471;
          (*(*(v302 - 8) + 104))(&v471[v300], v301, v302);
          *v303 = v293;
          *(v303 + 8) = v295;
          *(v303 + 16) = v297 & 1;
          *(v303 + 24) = v299;
          v304 = *(v287 + v286[28]);
          v305 = swift_getKeyPath();
          v306 = v521;
          v307 = v303 + *(v521 + 36);
          *v307 = v305;
          *(v307 + 8) = v304;
          *(v307 + 16) = 0;
          v308 = v502;
          sub_24E6009C8(v303, v502, &qword_27F214B98);
          v309 = 0;
          v137 = v543;
          v138 = v542;
          v139 = v544;
          v140 = v538;
        }

        else
        {
LABEL_59:
          v309 = 1;
          v137 = v543;
          v138 = v542;
          v139 = v544;
          v140 = v538;
          v306 = v521;
          v308 = v502;
        }

        (*(v505 + 56))(v308, v309, 1, v306);
        sub_24E60169C(v308, v477, &qword_27F214B88);
        swift_storeEnumTagMultiPayload();
        sub_24F509500(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView);
        sub_24E701A78();
        v324 = v481;
        sub_24F924E28();
        sub_24E60169C(v324, v508, &qword_27F214BD8);
        swift_storeEnumTagMultiPayload();
        sub_24E63C9EC();
        sub_24E63CAD4();
        v325 = v510;
        sub_24F924E28();
        sub_24E601704(v324, &qword_27F214BD8);
        sub_24E60169C(v325, v530, &qword_27F214BC8);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v326 = v532;
        sub_24F924E28();
        sub_24E601704(v325, &qword_27F214BC8);
        sub_24E60169C(v326, v536, &qword_27F214B10);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v533;
        sub_24F924E28();
        sub_24E601704(v326, &qword_27F214B10);
        sub_24E601704(v502, &qword_27F214B88);
        goto LABEL_73;
      case 9u:
        v549 = 256;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D00);
        sub_24E63D294();
        goto LABEL_29;
      case 0xAu:
        swift_storeEnumTagMultiPayload();
        sub_24E701AFC();
        v274 = v486;
        sub_24F924E28();
        sub_24E60169C(v274, v508, &qword_27F214BF0);
        swift_storeEnumTagMultiPayload();
        sub_24E63C9EC();
        sub_24E63CAD4();
        v275 = v510;
        sub_24F924E28();
        sub_24E601704(v274, &qword_27F214BF0);
        sub_24E60169C(v275, v530, &qword_27F214BC8);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v276 = v532;
        sub_24F924E28();
        sub_24E601704(v275, &qword_27F214BC8);
        sub_24E60169C(v276, v536, &qword_27F214B10);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v533;
        sub_24F924E28();
        sub_24E601704(v276, &qword_27F214B10);
        goto LABEL_31;
      case 0xBu:
        if (v106 == 1)
        {
          v141 = 2;
        }

        else
        {
          v141 = 1;
        }

        v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
        v143 = v462;
        (*(*(v142 - 8) + 56))(v462, v141, 5, v142);
        v144 = v463;
        sub_24F509548(v143, v463, type metadata accessor for CardContentBackgroundStyle);
        sub_24F5095B0(v144, v495, type metadata accessor for CardContentBackgroundStyle);
        swift_storeEnumTagMultiPayload();
        sub_24F509500(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
        sub_24E63CF80();
        v145 = v497;
        sub_24F924E28();
        sub_24E60169C(v145, v517, &qword_27F214C88);
        swift_storeEnumTagMultiPayload();
        sub_24E63CEC4();
        sub_24E717ADC();
        v146 = v519;
        sub_24F924E28();
        sub_24E601704(v145, &qword_27F214C88);
        sub_24E60169C(v146, v525, &qword_27F214C60);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0);
        sub_24E63CE0C();
        sub_24E63D208();
        v147 = v526;
        sub_24F924E28();
        sub_24E601704(v146, &qword_27F214C60);
        sub_24E60169C(v147, v536, &qword_27F214C50);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v533;
        sub_24F924E28();
        sub_24E601704(v147, &qword_27F214C50);
        sub_24F5094A0(v144, type metadata accessor for CardContentBackgroundStyle);
        goto LABEL_31;
      case 0xCu:
        if (v106 - 2 < 4)
        {
          v182 = sub_24F926C98();
          (v102)(v103, v105);
          v183 = v450;
          sub_24E60169C(&v90[v527[10]], v450, &qword_27F213FB0);
          sub_24F5094A0(v90, type metadata accessor for CommonCardAttributes);
          v184 = v451;
          sub_24F6C4E24(v183, v106 != 5, v182, v451);

          sub_24E601704(v183, &qword_27F213FB0);
          sub_24E60169C(v184, v467, &qword_27F214A10);
          swift_storeEnumTagMultiPayload();
          sub_24E63D00C();
          sub_24E63D150();
          v185 = v498;
          sub_24F924E28();
          v186 = v184;
          v187 = &qword_27F214A10;
LABEL_69:
          sub_24E601704(v186, v187);
          v137 = v543;
          v138 = v542;
          v139 = v544;
          goto LABEL_70;
        }

        if (!v106)
        {
          v364 = sub_24F926C98();
          v365 = sub_24F925808();
          v366 = v434;
          *v434 = v364;
          *(v366 + 8) = v365;
          swift_storeEnumTagMultiPayload();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8);
          sub_24E63D098();
          sub_24E63D150();
          v367 = v435;
          sub_24F924E28();
          sub_24E60169C(v367, v467, &qword_27F214CA8);
          swift_storeEnumTagMultiPayload();
          sub_24E63D00C();
          v185 = v498;
          sub_24F924E28();

          v186 = v367;
          v187 = &qword_27F214CA8;
          goto LABEL_69;
        }

        v381 = v103;
        v382 = v103;
        v383 = v105;
        (v102)(v382, v105);
        v384 = v428;
        sub_24E60169C(&v96[v527[17]], v428, &qword_27F21F550);
        sub_24F5094A0(v96, type metadata accessor for CommonCardAttributes);
        if ((*(v426 + 48))(v384, 1, v427) == 1)
        {
          sub_24E601704(v384, &qword_27F21F550);
          v385 = type metadata accessor for ColorGroup();
          v386 = v430;
          (*(*(v385 - 8) + 56))(v430, 1, 1, v385);
          v387 = v470;
        }

        else
        {
          v398 = v422;
          sub_24F5095B0(v384, v422, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
          v399 = v398;
          v400 = v423;
          sub_24F509548(v399, v423, type metadata accessor for JSColor);
          v386 = v430;
          v387 = v470;
          if (qword_27F20FEE0 != -1)
          {
            swift_once();
          }

          ColorGrouping.colorGroup(for:)(*(v400 + *(v424 + 24)));
          sub_24F5094A0(v400, type metadata accessor for JSColor);
          sub_24F5094A0(v384, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
          v401 = type metadata accessor for ColorGroup();
          v402 = *(v401 - 8);
          if ((*(v402 + 48))(v386, 1, v401) != 1)
          {
            v410 = v449;
            sub_24F509548(v386, v449, type metadata accessor for ColorGroup);
            (*(v402 + 56))(v410, 0, 1, v401);
            v137 = v543;
            v138 = v542;
            v139 = v544;
            goto LABEL_98;
          }
        }

        (v102)(v381, v383);
        v403 = v425;
        sub_24E60169C(&v93[v527[10]], v425, &qword_27F213FB0);
        sub_24F5094A0(v93, type metadata accessor for CommonCardAttributes);
        if ((*(v387 + 48))(v403, 1, v469) == 1)
        {
          sub_24E601704(v403, &qword_27F213FB0);
          v404 = type metadata accessor for ColorGroup();
          (*(*(v404 - 8) + 56))(v449, 1, 1, v404);
          v137 = v543;
          v138 = v542;
          v139 = v544;
        }

        else
        {
          v405 = sub_24F9289A8();
          if (v405)
          {
            v406 = qword_27F20FEE0;
            v407 = v405;
            v137 = v543;
            v138 = v542;
            v139 = v544;
            if (v406 != -1)
            {
              v421 = v407;
              swift_once();
              v407 = v421;
            }

            v408 = v407;
            v409 = sub_24F926BD8();
            ColorGrouping.colorGroup(for:)(v409);
          }

          else
          {
            v411 = type metadata accessor for ColorGroup();
            (*(*(v411 - 8) + 56))(v449, 1, 1, v411);
            v137 = v543;
            v138 = v542;
            v139 = v544;
          }

          (*(v470 + 8))(v403, v469);
        }

        v412 = type metadata accessor for ColorGroup();
        if ((*(*(v412 - 8) + 48))(v386, 1, v412) != 1)
        {
          sub_24E601704(v386, &qword_27F2190D8);
        }

LABEL_98:
        v413 = sub_24F926C98();
        v414 = sub_24F927618();
        v416 = v415;
        v417 = v429;
        v418 = v429 + *(v468 + 36);
        sub_24F594764(v449, 1, v418);
        v419 = (v418 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CE0) + 36));
        *v419 = v414;
        v419[1] = v416;
        *v417 = v413;
        sub_24E60169C(v417, v434, &qword_27F214A10);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8);
        sub_24E63D098();
        sub_24E63D150();
        v420 = v435;
        sub_24F924E28();
        sub_24E60169C(v420, v467, &qword_27F214CA8);
        swift_storeEnumTagMultiPayload();
        sub_24E63D00C();
        v185 = v498;
        sub_24F924E28();
        sub_24E601704(v420, &qword_27F214CA8);
        sub_24E601704(v417, &qword_27F214A10);
        sub_24E601704(v449, &qword_27F2190D8);
LABEL_70:
        sub_24E60169C(v185, v495, &qword_27F214C98);
        swift_storeEnumTagMultiPayload();
        sub_24F509500(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
        sub_24E63CF80();
        v368 = v497;
        sub_24F924E28();
        sub_24E60169C(v368, v517, &qword_27F214C88);
        swift_storeEnumTagMultiPayload();
        sub_24E63CEC4();
        sub_24E717ADC();
        v369 = v519;
        sub_24F924E28();
        sub_24E601704(v368, &qword_27F214C88);
        sub_24E60169C(v369, v525, &qword_27F214C60);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0);
        sub_24E63CE0C();
        sub_24E63D208();
        v370 = v526;
        sub_24F924E28();
        sub_24E601704(v369, &qword_27F214C60);
        sub_24E60169C(v370, v536, &qword_27F214C50);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v533;
        sub_24F924E28();
        sub_24E601704(v370, &qword_27F214C50);
        v322 = v498;
        v323 = &qword_27F214C98;
LABEL_71:
        sub_24E601704(v322, v323);
LABEL_72:
        v140 = v538;
        goto LABEL_73;
      case 0xDu:
        v237 = v527;
        v238 = v541;
        v239 = v458;
        sub_24E60169C(&v541[v527[20]], v458, &qword_27F21B270);
        sub_24E60169C(v238 + v237[19], &v546, qword_27F24EC90);
        if (v106 <= 2u)
        {
          v240 = v464;
          if (v106)
          {
            v139 = v544;
            v137 = v543;
            v138 = v542;
LABEL_81:
            v140 = v538;
            v148 = v533;
            goto LABEL_82;
          }

LABEL_80:
          v137 = v543;
          v138 = v542;
          v139 = v544;
          goto LABEL_81;
        }

        v240 = v464;
        if (v106 == 3)
        {
          goto LABEL_80;
        }

        v137 = v543;
        v138 = v542;
        v139 = v544;
        v140 = v538;
        v148 = v533;
        if (v106 != 4)
        {
          v397 = 1;
          goto LABEL_83;
        }

LABEL_82:
        v397 = sub_24F92CE08();
LABEL_83:

        v388 = v459;
        sub_24E6009C8(v239, v459, &qword_27F21B270);
        v389 = v489;
        v390 = v388 + *(v489 + 20);
        v391 = v547;
        *v390 = v546;
        *(v390 + 16) = v391;
        *(v390 + 32) = v548;
        *(v388 + *(v389 + 24)) = v397 & 1;
        *(v388 + *(v389 + 28)) = v240;
        v392 = v388;
        v393 = v490;
        sub_24F509548(v392, v490, type metadata accessor for CardPrimaryActionButton);
        sub_24F5095B0(v393, v491, type metadata accessor for CardPrimaryActionButton);
        swift_storeEnumTagMultiPayload();
        sub_24F509500(&qword_27F214C78, type metadata accessor for CardPrimaryActionButton);

        v394 = v492;
        sub_24F924E28();
        sub_24E60169C(v394, v517, &qword_27F214C70);
        swift_storeEnumTagMultiPayload();
        sub_24E63CEC4();
        sub_24E717ADC();
        v395 = v519;
        sub_24F924E28();
        sub_24E601704(v394, &qword_27F214C70);
        sub_24E60169C(v395, v525, &qword_27F214C60);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0);
        sub_24E63CE0C();
        sub_24E63D208();
        v396 = v526;
        sub_24F924E28();
        sub_24E601704(v395, &qword_27F214C60);
        sub_24E60169C(v396, v536, &qword_27F214C50);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        sub_24F924E28();
        sub_24E601704(v396, &qword_27F214C50);
        sub_24F5094A0(v490, type metadata accessor for CardPrimaryActionButton);
LABEL_73:
        sub_24F5094A0(v541, type metadata accessor for CommonCardAttributes);
        sub_24E6009C8(v148, v140, &qword_27F214B00);
        v136 = 0;
        break;
      case 0xEu:
        LOBYTE(v549) = 1;
LABEL_28:
        sub_24F924E28();
        v549 = v546;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D00);
        sub_24E63D294();
LABEL_29:
        sub_24F924E28();
        v202 = BYTE1(v546);
        v203 = v525;
        *v525 = v546;
        v203[1] = v202;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0);
        sub_24E63CE0C();
        sub_24E63D208();
        v190 = v526;
        sub_24F924E28();
LABEL_30:
        sub_24E60169C(v190, v536, &qword_27F214C50);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v533;
        sub_24F924E28();
        sub_24E601704(v190, &qword_27F214C50);
LABEL_31:
        v137 = v543;
        v138 = v542;
        v139 = v544;
        goto LABEL_72;
      default:
        v109 = *(v541 + 2);
        if (!v109)
        {
          goto LABEL_53;
        }

        v110 = *(v541 + 1);
        v111 = HIBYTE(v109) & 0xF;
        if ((v109 & 0x2000000000000000) == 0)
        {
          v111 = v110 & 0xFFFFFFFFFFFFLL;
        }

        if (v111)
        {
          if (v106 == 1)
          {
            *&v546 = *(v541 + 1);
            *(&v546 + 1) = v109;
            sub_24E600AEC();

            v112 = sub_24F925E18();
            v114 = v113;
            v116 = v115;
            v117 = v504;
            v118 = v545;
            v119 = sub_24F925C98();
            v121 = v120;
            v123 = v122;
            v125 = v124;
            sub_24E600B40(v112, v114, v116 & 1);

            *&v546 = v119;
            *(&v546 + 1) = v121;
            v126 = v119;
            LOBYTE(v547) = v123 & 1;
            *(&v547 + 1) = v125;
            v127 = v432;
            sub_24F9268B8();
            sub_24E600B40(v126, v121, v123 & 1);

            v128 = *(v118 + v117[7]);
            v129 = swift_getKeyPath();
            v130 = v127 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B70) + 36);
            *v130 = v129;
            *(v130 + 8) = v128;
            *(v130 + 16) = 0;
            LODWORD(v129) = sub_24F9251C8();
            v131 = (v127 + *(v438 + 36));
            v132 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
            v133 = *MEMORY[0x277CE13B8];
            v134 = sub_24F927748();
            (*(*(v134 - 8) + 104))(&v131[v132], v133, v134);
            *v131 = v129;
            sub_24E60169C(v127, v439, &qword_27F214B60);
            swift_storeEnumTagMultiPayload();
            sub_24E63C5D4();
            sub_24F509500(&qword_27F214B78, type metadata accessor for CardElementView.Category);
            v135 = v437;
            sub_24F924E28();
            sub_24E601704(v127, &qword_27F214B60);
          }

          else
          {
            v372 = v440;
            v373 = v431;
            sub_24E60169C(&v541[v527[6]], &v431[*(v440 + 20)], &qword_27F213FB0);
            v374 = *(v545 + v504[9]);
            v375 = *(v545 + v504[10]);
            v376 = *(v545 + v504[8]);
            v377 = *(v545 + v504[6]);
            *v373 = v110;
            v373[1] = v109;
            *(v373 + v372[6]) = v374;
            *(v373 + v372[7]) = v375;
            *(v373 + v372[8]) = v376;
            *(v373 + v372[9]) = v377;
            *&v546 = 0x4034000000000000;
            sub_24E66ED98();

            sub_24F9237C8();
            *&v546 = 0x4008000000000000;
            sub_24F9237C8();
            *&v546 = 0x4018000000000000;
            sub_24F9237C8();
            *&v546 = 0x4010000000000000;
            sub_24F9237C8();
            sub_24F5095B0(v373, v439, type metadata accessor for CardElementView.Category);
            swift_storeEnumTagMultiPayload();
            sub_24E63C5D4();
            sub_24F509500(&qword_27F214B78, type metadata accessor for CardElementView.Category);
            v135 = v437;
            sub_24F924E28();
            sub_24F5094A0(v373, type metadata accessor for CardElementView.Category);
          }

          v137 = v543;
          v138 = v542;
          v140 = v538;
          v315 = v473;
          sub_24E6009C8(v135, v473, &qword_27F214B50);
          v314 = 0;
          v139 = v544;
        }

        else
        {
LABEL_53:
          v314 = 1;
          v137 = v543;
          v138 = v542;
          v139 = v544;
          v140 = v538;
          v315 = v473;
        }

        (*(v453 + 56))(v315, v314, 1, v454);
        sub_24E60169C(v315, v483, &qword_27F214B40);
        swift_storeEnumTagMultiPayload();
        sub_24E7019F4();
        sub_24E701A78();
        v378 = v487;
        sub_24F924E28();
        sub_24E60169C(v378, v512, &qword_27F214B30);
        swift_storeEnumTagMultiPayload();
        sub_24E63C434();
        sub_24E63C8B0();
        v379 = v513;
        sub_24F924E28();
        sub_24E601704(v378, &qword_27F214B30);
        sub_24E60169C(v379, v530, &qword_27F214B20);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v380 = v532;
        sub_24F924E28();
        sub_24E601704(v379, &qword_27F214B20);
        sub_24E60169C(v380, v536, &qword_27F214B10);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v533;
        sub_24F924E28();
        sub_24E601704(v380, &qword_27F214B10);
        sub_24E601704(v473, &qword_27F214B40);
        goto LABEL_73;
    }
  }

  else
  {
    sub_24F5094A0(v100, type metadata accessor for CommonCardAttributes);
    v136 = 1;
    v137 = v543;
    v138 = v542;
    v139 = v544;
    v140 = v538;
  }

  (*(v139 + 56))(v140, v136, 1, v138);
  sub_24E6009C8(v140, v137, &qword_27F214A20);
  return sub_24F5094A0(v545, type metadata accessor for CardLayoutMetrics);
}

void sub_24F506FA4(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, uint64_t (**a3)(uint64_t a1, char a2, uint64_t a3, char a4)@<X8>)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {

        sub_24F4E9E44(a2, a3);
        return;
      }

      if (qword_27F2112F8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for CardLayoutMetrics(0);
      v5 = qword_27F39E628;
    }

    else
    {
      if (qword_27F211300 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for CardLayoutMetrics(0);
      v5 = qword_27F39E640;
    }

LABEL_24:
    v6 = __swift_project_value_buffer(v4, v5);
    sub_24F5095B0(v6, a3, type metadata accessor for CardLayoutMetrics);
    return;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for CardLayoutMetrics(0);
      v5 = qword_27F39E610;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for CardLayoutMetrics(0);
      v5 = qword_27F39E658;
    }

    goto LABEL_24;
  }

  sub_24F4E9558(a2, a3);
}

uint64_t sub_24F507174@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C70);
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v37 - v4;
  v6 = (v1 + *(type metadata accessor for CommonCardAttributes(0) + 56));
  v7 = v6[1];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *v6;
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = *(type metadata accessor for DefaultCardTitleView(0) + 20);
    v41 = a1;
    v11 = (v1 + v10 + *(type metadata accessor for CardLayoutMetrics(0) + 88));
    v12 = v11[4];
    v38 = v11[3];
    v39 = v12;
    v37[1] = __swift_project_boxed_opaque_existential_1(v11, v38);
    v43 = v8;
    v44 = v7;
    sub_24E600AEC();

    v13 = sub_24F925E18();
    v15 = v14;
    v17 = v16;
    v18 = sub_24F925C98();
    v20 = v19;
    v40 = v3;
    v22 = v21;
    sub_24E600B40(v13, v15, v17 & 1);

    v23 = sub_24F925C58();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    sub_24E600B40(v18, v20, v22 & 1);

    sub_24F507458(v1, v23, v25, v27 & 1, v29, v5);
    sub_24E600B40(v23, v25, v27 & 1);

    v30 = sub_24F507B30();
    KeyPath = swift_getKeyPath();
    v32 = v40;
    v33 = &v5[*(v40 + 36)];
    *v33 = KeyPath;
    *(v33 + 1) = v30;
    v33[16] = 0;
    v34 = v41;
    sub_24E6009C8(v5, v41, &qword_27F246C70);
    return (*(v42 + 56))(v34, 0, 1, v32);
  }

  else
  {
LABEL_6:
    v36 = *(v42 + 56);

    return v36(a1, 1, 1, v3);
  }
}

uint64_t sub_24F507458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v73 = a4;
  v75 = a6;
  v70 = type metadata accessor for FadeOutTruncationTextView(0);
  MEMORY[0x28223BE20](v70);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F924A78();
  MEMORY[0x28223BE20](v12 - 8);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C78);
  MEMORY[0x28223BE20](v71);
  v72 = (v55 - v13);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C80);
  MEMORY[0x28223BE20](v74);
  v15 = v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C88);
  MEMORY[0x28223BE20](v16);
  v18 = v55 - v17;
  v19 = type metadata accessor for DefaultCardTitleView(0);
  if (*(a1 + *(v19 + 24)) == 1)
  {
    *v18 = a2;
    *(v18 + 1) = a3;
    v20 = v73 & 1;
    v18[16] = v73 & 1;
    *(v18 + 3) = a5;
    swift_storeEnumTagMultiPayload();
    sub_24E5FD138(a2, a3, v20);
    sub_24F50A1A0();

    return sub_24F924E28();
  }

  else
  {
    v22 = v19;
    v67 = a2;
    v68 = a3;
    v69 = a5;
    v23 = (a1 + *(type metadata accessor for CommonCardAttributes(0) + 72));
    v24 = v23[1];
    if (v24)
    {
      v25 = *v23;
      v63 = v24;
      v64 = v25;
      v76 = v25;
      v77 = v24;
      sub_24E600AEC();
      v65 = v16;
      swift_bridgeObjectRetain_n();
      v26 = sub_24F925E18();
      v28 = v27;
      v30 = v29;
      v31 = a1 + *(v22 + 20);
      v61 = v31;
      v60 = type metadata accessor for CardLayoutMetrics(0);
      v62 = *(v31 + *(v60 + 116));
      v32 = sub_24F925C98();
      v34 = v33;
      v66 = v15;
      v36 = v35;
      v55[1] = v37;
      sub_24E600B40(v26, v28, v30 & 1);

      LODWORD(v76) = sub_24F9251C8();
      v59 = sub_24F925C58();
      v58 = v38;
      v56 = v39;
      v57 = v40;
      sub_24E600B40(v32, v34, v36 & 1);

      sub_24F924A68();
      sub_24F924A58();
      sub_24F924A28();
      sub_24F924A58();
      LOBYTE(v32) = v56 & 1;
      sub_24F924A28();
      sub_24F924A58();
      sub_24F924A98();
      v41 = sub_24F925DE8();
      v43 = v42;
      LOBYTE(v34) = v44;
      v46 = v45;
      v47 = *(v61 + *(v60 + 80));
      *&v11[*(v70 + 36)] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
      swift_storeEnumTagMultiPayload();
      *v11 = v41;
      *(v11 + 1) = v43;
      v11[16] = v34 & 1;
      *(v11 + 3) = v46;
      v15 = v66;
      v48 = v58;
      *(v11 + 4) = v59;
      *(v11 + 5) = v48;
      v11[48] = v32;
      v49 = v63;
      v50 = v64;
      *(v11 + 7) = v57;
      *(v11 + 8) = v50;
      *(v11 + 9) = v49;
      *(v11 + 10) = v47;
      *(v11 + 11) = v62;
      sub_24F5095B0(v11, v72, type metadata accessor for FadeOutTruncationTextView);
      swift_storeEnumTagMultiPayload();
      sub_24F509500(&qword_27F246C90, type metadata accessor for FadeOutTruncationTextView);

      sub_24F924E28();
      sub_24F5094A0(v11, type metadata accessor for FadeOutTruncationTextView);
    }

    else
    {
      v51 = v72;
      v52 = v67;
      v53 = v68;
      *v72 = v67;
      v51[1] = v53;
      v54 = v73 & 1;
      *(v51 + 16) = v73 & 1;
      v51[3] = v69;
      swift_storeEnumTagMultiPayload();
      sub_24E5FD138(v52, v53, v54);
      sub_24F509500(&qword_27F246C90, type metadata accessor for FadeOutTruncationTextView);

      sub_24F924E28();
    }

    sub_24E60169C(v15, v18, &qword_27F246C80);
    swift_storeEnumTagMultiPayload();
    sub_24F50A1A0();
    sub_24F924E28();
    return sub_24E601704(v15, &qword_27F246C80);
  }
}

uint64_t sub_24F507B30()
{
  v1 = type metadata accessor for DefaultCardTitleView(0);
  if (*(v0 + *(v1 + 24)) != 5 || (v2 = (v0 + *(type metadata accessor for CommonCardAttributes(0) + 60)), (v3 = v2[1]) != 0) && ((v4 = *v2 & 0xFFFFFFFFFFFFLL, (v3 & 0x2000000000000000) != 0) ? (v5 = HIBYTE(v3) & 0xF) : (v5 = v4), v5))
  {
    v6 = v0 + *(v1 + 20);
    return *(v6 + *(type metadata accessor for CardLayoutMetrics(0) + 84));
  }

  else
  {
    v8 = v0 + *(v1 + 20);
    v9 = type metadata accessor for CardLayoutMetrics(0);
    v10 = *(v8 + *(v9 + 84));
    v11 = *(v8 + *(v9 + 112));
    result = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      __break(1u);
    }
  }

  return result;
}

double sub_24F507BE4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246BC8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246BD0);
  MEMORY[0x28223BE20](v46);
  v7 = &v46 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246BD8);
  MEMORY[0x28223BE20](v48);
  v9 = &v46 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246BE0);
  MEMORY[0x28223BE20](v47);
  v11 = &v46 - v10;
  v12 = sub_24F9249A8();
  v13 = type metadata accessor for CardElementView.Category(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  sub_24F9237D8();
  v14 = v50;
  *v5 = v12;
  *(v5 + 1) = v14;
  v5[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246BE8);
  sub_24F507FE8(v1, &v5[*(v15 + 44)]);
  v16 = sub_24F925868();
  v17 = *(v1 + *(v13 + 24));
  if (v17 == 1)
  {
    sub_24F9237D8();
  }

  sub_24F923318();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_24E6009C8(v5, v7, &qword_27F246BC8);
  v26 = &v7[*(v46 + 36)];
  *v26 = v16;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_24F9257F8();
  if (v17)
  {
    sub_24F9237D8();
  }

  sub_24F923318();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_24E6009C8(v7, v9, &qword_27F246BD0);
  v36 = &v9[*(v48 + 36)];
  *v36 = v27;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = sub_24F927618();
  v39 = v38;
  v40 = &v11[*(v47 + 36)];
  sub_24F508A14(v2, v40);
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246BF0) + 36));
  *v41 = v37;
  v41[1] = v39;
  sub_24E6009C8(v9, v11, &qword_27F246BD8);
  if (v17)
  {
    sub_24F9237D8();
  }

  sub_24F927618();
  sub_24F9238C8();
  v42 = v49;
  sub_24E6009C8(v11, v49, &qword_27F246BE0);
  v43 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246BF8) + 36));
  v44 = v51;
  *v43 = v50;
  v43[1] = v44;
  result = *&v52;
  v43[2] = v52;
  return result;
}

uint64_t sub_24F507FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v64 = a2;
  v2 = type metadata accessor for CardElementView.Category(0);
  v59 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v60 = v3;
  v61 = &v53[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C18);
  MEMORY[0x28223BE20](v63);
  v65 = &v53[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v53[-v6];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C20);
  MEMORY[0x28223BE20](v56);
  v9 = &v53[-v8];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C28);
  v10 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v53[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v53[-v13];
  v15 = sub_24F9289E8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v53[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C30);
  MEMORY[0x28223BE20](v19 - 8);
  v62 = &v53[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v58 = &v53[-v22];
  v66 = v2;
  sub_24E60169C(v67 + *(v2 + 20), v14, &qword_27F213FB0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_24E601704(v14, &qword_27F213FB0);
    v23 = v58;
    (*(v10 + 56))(v58, 1, 1, v57);
    v24 = *MEMORY[0x277CE1050];
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    v25 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C48) + 36)];
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
    v54 = *MEMORY[0x277CE1050];
    v27 = v54;
    v28 = sub_24F926E78();
    (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
    *v25 = swift_getKeyPath();
    (*(v16 + 16))(v9, v18, v15);
    v29 = *(v67 + *(v66 + 36));
    KeyPath = swift_getKeyPath();
    v31 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C50) + 36)];
    *v31 = KeyPath;
    v31[1] = v29;
    *&v9[*(v56 + 36)] = 257;
    sub_24F509F74();
    sub_24F258DA8();

    v32 = v55;
    sub_24F925ED8();
    sub_24E601704(v9, &qword_27F246C20);
    (*(v16 + 8))(v18, v15);
    v33 = v57;
    v23 = v58;
    (*(v10 + 32))(v58, v32, v57);
    (*(v10 + 56))(v23, 0, 1, v33);
    v24 = v54;
  }

  v35 = v66;
  v34 = v67;
  v36 = *(v67 + *(v66 + 32));
  v37 = v61;
  sub_24F5095B0(v67, v61, type metadata accessor for CardElementView.Category);
  v38 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v39 = swift_allocObject();
  sub_24F509548(v37, v39 + v38, type metadata accessor for CardElementView.Category);
  v40 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D250) + 36)];
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
  v42 = sub_24F926E78();
  (*(*(v42 - 8) + 104))(v40 + v41, v24, v42);
  *v40 = swift_getKeyPath();
  *v7 = v36;
  *(v7 + 1) = sub_24F509EFC;
  *(v7 + 2) = v39;
  *(v7 + 3) = sub_24F508850;
  *(v7 + 4) = 0;
  v43 = *(v34 + *(v35 + 36));
  v44 = swift_getKeyPath();
  v45 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C38) + 36)];
  *v45 = v44;
  v45[1] = v43;
  v46 = swift_getKeyPath();
  v47 = v62;
  v48 = &v7[*(v63 + 36)];
  *v48 = v46;
  v48[8] = 0;
  sub_24E60169C(v23, v47, &qword_27F246C30);
  v49 = v65;
  sub_24E60169C(v7, v65, &qword_27F246C18);
  v50 = v64;
  sub_24E60169C(v47, v64, &qword_27F246C30);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C40);
  sub_24E60169C(v49, v50 + *(v51 + 48), &qword_27F246C18);

  sub_24E601704(v7, &qword_27F246C18);
  sub_24E601704(v23, &qword_27F246C30);
  sub_24E601704(v49, &qword_27F246C18);
  return sub_24E601704(v47, &qword_27F246C30);
}

uint64_t sub_24F5087FC()
{
  sub_24E600AEC();

  return sub_24F925E18();
}

uint64_t sub_24F508850()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v0);
  v2 = &v14 - v1;
  sub_24F926DF8();
  v3 = sub_24F925E28();
  v5 = v4;
  v7 = v6;
  v8 = sub_24F9251C8();
  v9 = *(v0 + 36);
  v10 = *MEMORY[0x277CE13B8];
  v11 = sub_24F927748();
  (*(*(v11 - 8) + 104))(&v2[v9], v10, v11);
  *v2 = v8;
  sub_24E602068(&qword_27F214428, &qword_27F213F10);
  v12 = sub_24F925C58();
  sub_24E600B40(v3, v5, v7 & 1);

  sub_24E601704(v2, &qword_27F213F10);
  return v12;
}

uint64_t sub_24F508A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DC0);
  MEMORY[0x28223BE20](v4);
  v6 = (v29 - v5);
  v7 = sub_24F927538();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C00);
  MEMORY[0x28223BE20](v8);
  v10 = (v29 - v9);
  v11 = sub_24F926C98();
  v12 = type metadata accessor for CardElementView.Category(0);
  if (*(a1 + *(v12 + 24)) == 1)
  {
    if (*(a1 + *(v12 + 28)) == 1)
    {
      sub_24F927438();
    }

    else
    {
      sub_24F926C88();
      v13 = sub_24F926D08();

      v14 = *(v4 + 36);
      v15 = *MEMORY[0x277CE13B0];
      v16 = sub_24F927748();
      (*(*(v16 - 8) + 104))(v6 + v14, v15, v16);
      *v6 = v13;
      sub_24E602068(&qword_27F236200, &qword_27F217DC0);
    }
  }

  else
  {
    v29[1] = sub_24F926C98();
  }

  v17 = sub_24F9238D8();
  v18 = (v10 + *(v8 + 36));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C08);
  v20 = *(v19 + 52);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_24F924B38();
  (*(*(v22 - 8) + 104))(v18 + v20, v21, v22);
  *v18 = v17;
  *(v18 + *(v19 + 56)) = 256;
  *v10 = v11;
  KeyPath = swift_getKeyPath();
  v24 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C10) + 36));
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858) + 28);
  v26 = *MEMORY[0x277CDF3C0];
  v27 = sub_24F9234D8();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = KeyPath;
  return sub_24E6009C8(v10, a2, &qword_27F246C00);
}

uint64_t sub_24F508DA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v3 = type metadata accessor for MixedMediaItemView();
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F924848();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v16 = type metadata accessor for CardElementView.PrimaryMixedMediaView(0);
  sub_24F769764(v15);
  sub_24F769764(v12);
  v17 = v1 + *(v16 + 32);
  v18 = *v17;
  if (*(v17 + 8) != 1)
  {

    sub_24F92BDC8();
    v19 = sub_24F9257A8();
    v29 = v6;
    v20 = v19;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v18, 0);
    (*(v7 + 8))(v9, v29);
    LODWORD(v18) = v31;
  }

  v21 = sub_24F5502F0(v15, v12, v18);
  v22 = 0xCu >> (v21 & 0xF);
  v23 = 0x1000100u >> (8 * v21);
  v25 = *v2;
  v24 = v2[1];
  v26 = 0x102030303uLL >> (8 * *(v2 + 16));
  *&v5[*(v3 + 32)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  *&v5[*(v3 + 36)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  *v5 = v25;
  *(v5 + 1) = v24;
  v5[16] = v26;
  v5[17] = v23;
  v5[18] = v22 & 1;
  sub_24F509548(v5, v30, type metadata accessor for MixedMediaItemView);
}

uint64_t sub_24F509134(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1;
  if (a1 <= 8u)
  {
    if (a1 > 2u || !a1)
    {
      return v2 & 1;
    }

    if (a1 == 1)
    {
      v2 = a2 > 2u;
      return v2 & 1;
    }

    if (a2 > 2u || a2)
    {
LABEL_25:
      v7 = sub_24F92CE08();

      v2 = v7 ^ 1;
      return v2 & 1;
    }

    goto LABEL_22;
  }

  if (a1 > 0xBu)
  {
    return v2 & 1;
  }

  if (a1 == 9)
  {
LABEL_23:
    v2 = 0;
    return v2 & 1;
  }

  if (a1 != 10)
  {
    if (a2 > 2u)
    {
      v3 = a2;
    }

    else
    {
      if (!a2)
      {
LABEL_22:

        goto LABEL_23;
      }

      v3 = a2;
    }

    v4 = sub_24F92CE08();

    v2 = 0;
    if (v4)
    {
      return v2 & 1;
    }

    if (v3 <= 4u)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (a2 != 2)
  {
    v5 = sub_24F92CE08();

    return v5 & 1;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t sub_24F5094A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F509500(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F509548(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5095B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F509620()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24F509688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CommonCardAttributes(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for CardLayoutMetrics(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 6)
      {
        return v14 - 5;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_24F5097A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CommonCardAttributes(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for CardLayoutMetrics(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 5;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24F5098AC()
{
  result = type metadata accessor for CommonCardAttributes(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CardLayoutMetrics(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F50995C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F509AAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F509BE8()
{
  sub_24E6A7820();
  if (v0 <= 0x3F)
  {
    sub_24E66ED3C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F509D28()
{
  v1 = type metadata accessor for CardElementView.Category(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = sub_24F9289E8();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = v1[10];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  v8 = *(*(v7 - 8) + 8);
  v8(v2 + v6, v7);
  v8(v2 + v1[11], v7);
  v8(v2 + v1[12], v7);
  v8(v2 + v1[13], v7);

  return swift_deallocObject();
}

uint64_t sub_24F509EFC()
{
  type metadata accessor for CardElementView.Category(0);

  return sub_24F5087FC();
}

unint64_t sub_24F509F74()
{
  result = qword_27F246C58;
  if (!qword_27F246C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246C20);
    sub_24F50A000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246C58);
  }

  return result;
}

unint64_t sub_24F50A000()
{
  result = qword_27F246C60;
  if (!qword_27F246C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246C50);
    sub_24F50A0B8();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246C60);
  }

  return result;
}

unint64_t sub_24F50A0B8()
{
  result = qword_27F246C68;
  if (!qword_27F246C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246C48);
    sub_24F509500(&qword_27F214C28, MEMORY[0x277D21C48]);
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246C68);
  }

  return result;
}

unint64_t sub_24F50A1A0()
{
  result = qword_27F246C98;
  if (!qword_27F246C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246C80);
    sub_24F509500(&qword_27F246C90, type metadata accessor for FadeOutTruncationTextView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246C98);
  }

  return result;
}

uint64_t sub_24F50A278(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24F50A348(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F50A418()
{
  sub_24E684120();
  if (v0 <= 0x3F)
  {
    sub_24F50A4B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F50A4B4()
{
  if (!qword_27F21CF60)
  {
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21CF60);
    }
  }
}

unint64_t sub_24F50A508()
{
  result = qword_27F246CB0;
  if (!qword_27F246CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246BF8);
    sub_24F50A594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246CB0);
  }

  return result;
}

unint64_t sub_24F50A594()
{
  result = qword_27F246CB8;
  if (!qword_27F246CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246BE0);
    sub_24F50A64C();
    sub_24E602068(&qword_27F246CD8, &qword_27F246BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246CB8);
  }

  return result;
}

unint64_t sub_24F50A64C()
{
  result = qword_27F246CC0;
  if (!qword_27F246CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246BD8);
    sub_24F50A6D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246CC0);
  }

  return result;
}

unint64_t sub_24F50A6D8()
{
  result = qword_27F246CC8;
  if (!qword_27F246CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246BD0);
    sub_24E602068(&qword_27F246CD0, &qword_27F246BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246CC8);
  }

  return result;
}

unint64_t sub_24F50A794()
{
  result = qword_27F246CE0;
  if (!qword_27F246CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246CE8);
    sub_24F50A818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246CE0);
  }

  return result;
}

unint64_t sub_24F50A818()
{
  result = qword_27F246CF0;
  if (!qword_27F246CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246C70);
    sub_24F50A8D0();
    sub_24E602068(&qword_27F214778, &qword_27F214780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246CF0);
  }

  return result;
}

unint64_t sub_24F50A8D0()
{
  result = qword_27F246CF8;
  if (!qword_27F246CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246D00);
    sub_24F50A954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246CF8);
  }

  return result;
}

unint64_t sub_24F50A954()
{
  result = qword_27F246D08;
  if (!qword_27F246D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246D10);
    sub_24F50A1A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246D08);
  }

  return result;
}

uint64_t sub_24F50AA5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24F50AAA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_24F50AB1C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[14];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[15];

  return v15(v16, a2, v14);
}

uint64_t sub_24F50ACB4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[14];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[15];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ChallengeDetailPlayerLockup()
{
  result = qword_27F246D18;
  if (!qword_27F246D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F50AE84()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PlayerAvatar(319);
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F21C120, &qword_27F213840);
        if (v3 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
          if (v4 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
            if (v5 <= 0x3F)
            {
              sub_24E61C938();
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

uint64_t sub_24F50B000(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E48);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F50F54C();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CCE8();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_24F92CCA8();
  v8[13] = 2;
  sub_24F92CD38();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F50B1A4()
{
  v1 = 0x657474616D726F66;
  if (*v0 != 1)
  {
    v1 = 0x4374706D65747461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4C74706D65747461;
  }
}

uint64_t sub_24F50B21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F50F914(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F50B244(uint64_t a1)
{
  v2 = sub_24F50F54C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F50B280(uint64_t a1)
{
  v2 = sub_24F50F54C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24F50B2BC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24F50F348(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_24F50B31C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6575676573;
    v7 = 0x4D747865746E6F63;
    if (a1 != 10)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x696C686769487369;
    v9 = 0xD00000000000001ALL;
    if (a1 != 7)
    {
      v9 = 0x654D6C6169636F73;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x676E6964616568;
    v3 = 0x656C746974;
    if (a1 != 4)
    {
      v3 = 0x746E4565726F6373;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x697274536B6E6172;
    if (a1 != 1)
    {
      v4 = 0x726174617661;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F50B4A8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F50F13C();
  sub_24F92D128();
  LOBYTE(v15) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_24F92CCA8();
    v9 = type metadata accessor for ChallengeDetailPlayerLockup();
    LOBYTE(v15) = 2;
    type metadata accessor for PlayerAvatar(0);
    sub_24F50F300(&qword_27F218A38, type metadata accessor for PlayerAvatar);
    sub_24F92CD48();
    LOBYTE(v15) = 3;
    sub_24F92CCA8();
    LOBYTE(v15) = 4;
    sub_24F92CD08();
    v10 = (v3 + *(v9 + 36));
    v11 = *(v10 + 8);
    v12 = v10[4];
    v15 = *v10;
    v16 = v11;
    v17 = *(v10 + 1);
    v18 = v12;
    HIBYTE(v14) = 5;
    sub_24F50F2AC();
    sub_24F92CD48();
    LOBYTE(v15) = 6;
    sub_24F92CD18();
    LOBYTE(v15) = 7;
    sub_24F92CD18();
    v15 = *(v3 + *(v9 + 48));
    HIBYTE(v14) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0);
    sub_24E785388(&qword_27F21C1D8, sub_24E785400);
    sub_24F92CD48();
    LOBYTE(v15) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    LOBYTE(v15) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    LOBYTE(v15) = 11;
    sub_24F929608();
    sub_24F50F300(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F50B9C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E10);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v12 = &v40 - v11;
  v13 = type metadata accessor for ChallengeDetailPlayerLockup();
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v15[*(v16 + 52)];
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v52 = v17;
  sub_24E61DA68(&v54, v17, qword_27F21B590);
  v18 = *(v13 + 56);
  v19 = sub_24F92A6D8();
  v20 = *(*(v19 - 8) + 56);
  v51 = v18;
  v53 = v15;
  v20(&v15[v18], 1, 1, v19);
  v21 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24F50F13C();
  v47 = v12;
  v22 = v49;
  sub_24F92D108();
  if (v22)
  {
    v23 = v53;
    __swift_destroy_boxed_opaque_existential_1(v50);

    sub_24E601704(v52, qword_27F24EC90);
    return sub_24E601704(v23 + v51, &qword_27F215440);
  }

  else
  {
    v42 = v8;
    v43 = v10;
    v41 = v7;
    v49 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v57 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v24 = v55;
    v25 = v53;
    *v53 = v54;
    v25[1] = v24;
    *(v25 + 4) = v56;
    LOBYTE(v54) = 1;
    *(v25 + 5) = sub_24F92CBC8();
    *(v25 + 6) = v26;
    LOBYTE(v54) = 2;
    sub_24F50F300(&qword_27F2185A0, type metadata accessor for PlayerAvatar);
    v27 = v43;
    sub_24F92CC68();
    v28 = v49;
    sub_24F50F190(v27, v25 + v49[6], type metadata accessor for PlayerAvatar);
    LOBYTE(v54) = 3;
    v29 = sub_24F92CBC8();
    v30 = (v25 + v28[7]);
    *v30 = v29;
    v30[1] = v31;
    LOBYTE(v54) = 4;
    v32 = sub_24F92CC28();
    v33 = (v25 + v28[8]);
    *v33 = v32;
    v33[1] = v34;
    v57 = 5;
    sub_24F50F1F8();
    sub_24F92CC68();
    v35 = BYTE8(v54);
    v36 = v56;
    v37 = v25 + v28[9];
    *v37 = v54;
    v37[8] = v35;
    *(v37 + 1) = v55;
    *(v37 + 4) = v36;
    LOBYTE(v54) = 6;
    *(v25 + v28[10]) = sub_24F92CC38() & 1;
    LOBYTE(v54) = 7;
    *(v25 + v28[11]) = sub_24F92CC38() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0);
    v57 = 8;
    sub_24E785388(&qword_27F21C1A8, sub_24E7851CC);
    sub_24F92CC68();
    *(v25 + v49[12]) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v57 = 9;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v54, v52, qword_27F24EC90);
    LOBYTE(v54) = 10;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v41, v53 + v51, &qword_27F215440);
    sub_24F929608();
    LOBYTE(v54) = 11;
    sub_24F50F300(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    (*(v46 + 8))(v47, v48);
    v38 = v53;
    sub_24E6009C8(v45, v53 + v49[15], &qword_27F213E68);
    sub_24F50ECB4(v38, v44, type metadata accessor for ChallengeDetailPlayerLockup);
    __swift_destroy_boxed_opaque_existential_1(v50);
    return sub_24F50F24C(v38, type metadata accessor for ChallengeDetailPlayerLockup);
  }
}

uint64_t sub_24F50C3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F50FA3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F50C424(uint64_t a1)
{
  v2 = sub_24F50F13C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F50C460(uint64_t a1)
{
  v2 = sub_24F50F13C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F50C49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 56), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

BOOL sub_24F50C5DC()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(v0 + 8);
  v5 = *v0;
  v18 = *v0;
  if (v19 == 1)
  {
    if (v5 != 0.0)
    {
      return 0;
    }
  }

  else
  {

    sub_24F92BDC8();
    v7 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v18, &qword_27F218208);
    (*(v2 + 8))(v4, v1);
    if (*&v15 != 0.0)
    {
      return 0;
    }
  }

  v17 = *(v0 + 48);
  v8 = *(v0 + 32);
  v15 = *(v0 + 16);
  v16 = v8;
  if (v17 == 1)
  {
    v9 = *(&v16 + 1);
    v10 = *(&v15 + 1);
  }

  else
  {

    sub_24F92BDC8();
    v11 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v15, &qword_27F2445E0);
    (*(v2 + 8))(v4, v1);
    v10 = v13;
    v9 = v14;
  }

  return v10 + v9 == 0.0;
}

uint64_t sub_24F50C830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v50 = sub_24F924258();
  MEMORY[0x28223BE20](v50);
  v47 = (&v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_24F9248C8();
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2237D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2237C0);
  v10 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v12 = &v43 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246D38);
  MEMORY[0x28223BE20](v45);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246D40);
  v48 = *(v15 - 8);
  v49 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  *v9 = sub_24F9249A8();
  *(v9 + 1) = 0x4030000000000000;
  v9[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246D48);
  sub_24F50CE34(a1, &v9[*(v18 + 44)]);
  v19 = sub_24F925868();
  v20 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223808) + 36)];
  *v20 = v19;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  v20[40] = 1;
  v21 = sub_24F9257F8();
  sub_24F923318();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2237F8) + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2237E8) + 36)] = 0;
  sub_24F9248B8();
  sub_24E99CE70();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v4 + 8))(v6, v46);
  sub_24E601704(v9, &qword_27F2237D0);
  v31 = type metadata accessor for ChallengeDetailPlayerLockup();
  sub_24E9945E8(*(a1 + *(v31 + 48)));
  (*(v10 + 8))(v12, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246D50);
  sub_24F50EAD4();
  sub_24E6A4C1C();
  sub_24F50EB60();
  sub_24F926B08();
  sub_24E601704(v14, &qword_27F246D38);
  if (*(a1 + *(v31 + 40)) == 1)
  {
    v52 = sub_24F9251A8();
  }

  else
  {
    v53 = sub_24F926C98();
  }

  v32 = sub_24F9238D8();
  if (sub_24F50C5DC())
  {
    v33 = 0.0;
  }

  else
  {
    v33 = 12.0;
  }

  v34 = *(v50 + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_24F924B38();
  v37 = v47;
  (*(*(v36 - 8) + 104))(v47 + v34, v35, v36);
  *v37 = v33;
  v37[1] = v33;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246D88);
  v39 = v51;
  v40 = (v51 + *(v38 + 36));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246D90);
  sub_24F50F190(v37, v40 + *(v41 + 52), MEMORY[0x277CDFC08]);
  *v40 = v32;
  *(v40 + *(v41 + 56)) = 256;
  return (*(v48 + 32))(v39, v17, v49);
}

uint64_t sub_24F50CE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246D98);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v76 = (&v67 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DA0);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v75 = (&v67 - v10);
  v11 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F60);
  MEMORY[0x28223BE20](v14);
  v74 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v73 = &v67 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v67 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D8);
  MEMORY[0x28223BE20](v22 - 8);
  v80 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = *(a1 + 48);
  v79 = &v67 - v25;
  if (v26)
  {
    *&v81 = *(a1 + 40);
    *(&v81 + 1) = v26;
    sub_24E600AEC();
    v69 = v13;

    v27 = sub_24F925E18();
    v29 = v28;
    v31 = v30;
    sub_24F925888();
    v67 = v21;
    v32 = sub_24F925C98();
    v70 = v14;
    v71 = a1;
    v33 = v32;
    v68 = v18;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v40 = v79;
    sub_24E600B40(v27, v29, v31 & 1);

    *&v81 = v33;
    *(&v81 + 1) = v35;
    LOBYTE(v27) = v37 & 1;
    a1 = v71;
    LOBYTE(v82) = v27;
    *(&v82 + 1) = v39;
    v41 = v67;
    sub_24F9268B8();
    v42 = v33;
    v13 = v69;
    v14 = v70;
    sub_24E600B40(v42, v35, v27);

    v43 = v68;
    (*(v19 + 32))(v40, v41, v68);
    v44 = v40;
    (*(v19 + 56))(v40, 0, 1, v43);
  }

  else
  {
    v44 = &v67 - v25;
    (*(v19 + 56))(&v67 - v25, 1, 1, v18);
  }

  v45 = type metadata accessor for ChallengeDetailPlayerLockup();
  sub_24F50ECB4(a1 + *(v45 + 24), v13, type metadata accessor for PlayerAvatar);
  LOBYTE(v81) = 7;
  v46 = v73;
  sub_24F8319B8(v13, &v81, v73);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F78);
  v48 = v46 + *(v47 + 44);
  *(v48 + 24) = MEMORY[0x277CE1120];
  *(v48 + 32) = sub_24E63E454();
  v49 = v46 + *(v47 + 48);
  *v49 = swift_getKeyPath();
  *(v49 + 8) = 0;
  sub_24F927618();
  sub_24F9238C8();
  v50 = (v46 + *(v14 + 36));
  v51 = v82;
  *v50 = v81;
  v50[1] = v51;
  v50[2] = v83;
  v52 = sub_24F924C98();
  v53 = v75;
  *v75 = v52;
  *(v53 + 8) = 0;
  *(v53 + 16) = 1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DA8);
  sub_24F50D5B0(a1, (v53 + *(v54 + 44)));
  v55 = sub_24F924CA8();
  v56 = v76;
  *v76 = v55;
  *(v56 + 8) = 0x4010000000000000;
  *(v56 + 16) = 0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DB0);
  sub_24F50E0B4(a1, v56 + *(v57 + 44));
  v58 = v80;
  sub_24E60169C(v44, v80, &qword_27F2128D8);
  v59 = v74;
  sub_24E60169C(v46, v74, &qword_27F226F60);
  v60 = v77;
  sub_24E60169C(v53, v77, &qword_27F246DA0);
  v61 = v72;
  sub_24E60169C(v56, v72, &qword_27F246D98);
  v62 = v58;
  v63 = v78;
  sub_24E60169C(v62, v78, &qword_27F2128D8);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DB8);
  sub_24E60169C(v59, v63 + v64[12], &qword_27F226F60);
  sub_24E60169C(v60, v63 + v64[16], &qword_27F246DA0);
  v65 = v63 + v64[20];
  *v65 = 0;
  *(v65 + 8) = 0;
  sub_24E60169C(v61, v63 + v64[24], &qword_27F246D98);
  sub_24E601704(v56, &qword_27F246D98);
  sub_24E601704(v53, &qword_27F246DA0);
  sub_24E601704(v46, &qword_27F226F60);
  sub_24E601704(v79, &qword_27F2128D8);
  sub_24E601704(v61, &qword_27F246D98);
  sub_24E601704(v60, &qword_27F246DA0);
  sub_24E601704(v59, &qword_27F226F60);
  return sub_24E601704(v80, &qword_27F2128D8);
}

uint64_t sub_24F50D5B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v77 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DE0);
  v72 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v4 = &KeyPath - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DE8);
  MEMORY[0x28223BE20](v5 - 8);
  v80 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = &KeyPath - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DF0);
  MEMORY[0x28223BE20](v9 - 8);
  v78 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &KeyPath - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v14);
  v16 = (&KeyPath - v15);
  v17 = type metadata accessor for ChallengeDetailPlayerLockup();
  v18 = (a1 + *(v17 + 28));
  v19 = v18[1];
  v81 = v13;
  v71 = v14;
  if (v19)
  {
    v82 = *v18;
    v83 = v19;
    sub_24E600AEC();
    *&v70 = a1;

    v20 = sub_24F925E18();
    v22 = v21;
    v24 = v23;
    v69 = v17;
    sub_24F925A18();
    v25 = sub_24F925C98();
    v76 = v26;
    v28 = v27;
    v74 = v29;

    sub_24E600B40(v20, v22, v24 & 1);

    v30 = sub_24F9251C8();
    v31 = *(v14 + 36);
    v32 = *MEMORY[0x277CE13B8];
    v33 = sub_24F927748();
    v34 = v16 + v31;
    v13 = v81;
    (*(*(v33 - 8) + 104))(v34, v32, v33);
    *v16 = v30;
    sub_24E602068(&qword_27F214428, &qword_27F213F10);
    LOBYTE(v32) = v28;
    v35 = v76;
    v36 = sub_24F925C58();
    v68 = v4;
    v38 = v37;
    LOBYTE(v30) = v39;
    v41 = v40;
    sub_24E600B40(v25, v35, v32 & 1);

    v17 = v69;
    sub_24E601704(v16, &qword_27F213F10);
    v42 = v30 & 1;
    a1 = v70;
    v43 = v36;
    v76 = v38;
    v44 = v38;
    v4 = v68;
    v73 = v42;
    sub_24E5FD138(v36, v44, v42);
    v74 = v41;
  }

  else
  {
    v43 = 0;
    v76 = 0;
    v73 = 0;
    v74 = 0;
  }

  *v13 = sub_24F9249A8();
  *(v13 + 1) = 0x4014000000000000;
  v13[16] = 0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DF8);
  sub_24F50DCD0(a1, &v13[*(v45 + 44)]);
  if (*(a1 + *(v17 + 44)) == 1)
  {
    v68 = sub_24F9249A8();
    sub_24F50DFA4(&v82);
    v46 = v82;
    v69 = v83;
    v47 = v84;
    v70 = v85;
    v87 = 0;
    v86 = v84;
    v67 = sub_24F925A18();
    KeyPath = swift_getKeyPath();
    v48 = sub_24F9251C8();
    v49 = v75;
    v50 = &v4[*(v75 + 36)];
    v51 = *(v71 + 36);
    v52 = *MEMORY[0x277CE13B8];
    v53 = sub_24F927748();
    (*(*(v53 - 8) + 104))(&v50[v51], v52, v53);
    *v50 = v48;
    *v4 = v68;
    *(v4 + 1) = 0x4000000000000000;
    v4[16] = 0;
    *(v4 + 17) = v82;
    *(v4 + 5) = *(&v82 + 3);
    v54 = v69;
    *(v4 + 3) = v46;
    *(v4 + 4) = v54;
    v4[40] = v47;
    *(v4 + 41) = v88[0];
    *(v4 + 11) = *(v88 + 3);
    *(v4 + 3) = v70;
    v55 = v67;
    *(v4 + 8) = KeyPath;
    *(v4 + 9) = v55;
    v56 = v79;
    sub_24E6009C8(v4, v79, &qword_27F246DE0);
    (*(v72 + 56))(v56, 0, 1, v49);
  }

  else
  {
    v56 = v79;
    (*(v72 + 56))(v79, 1, 1, v75);
  }

  v57 = v13;
  v58 = v78;
  sub_24E60169C(v57, v78, &qword_27F246DF0);
  v59 = v80;
  sub_24E60169C(v56, v80, &qword_27F246DE8);
  v60 = v76;
  v61 = v77;
  *v77 = v43;
  v61[1] = v60;
  v62 = v73;
  v63 = v74;
  v61[2] = v73;
  v61[3] = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E00);
  sub_24E60169C(v58, v61 + *(v64 + 48), &qword_27F246DF0);
  sub_24E60169C(v59, v61 + *(v64 + 64), &qword_27F246DE8);
  sub_24E65D2B4(v43, v60, v62, v63);
  sub_24E65D2F8(v43, v60, v62, v63);
  sub_24E601704(v56, &qword_27F246DE8);
  sub_24E601704(v81, &qword_27F246DF0);
  sub_24E601704(v59, &qword_27F246DE8);
  sub_24E601704(v58, &qword_27F246DF0);
  return sub_24E65D2F8(v43, v60, v62, v63);
}

uint64_t sub_24F50DCD0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for ChallengeDetailPlayerLockup();
  v10 = (a1 + *(v9 + 32));
  v11 = v10[1];
  v33 = *v10;
  v34 = v11;
  sub_24E600AEC();

  v12 = sub_24F925E18();
  v14 = v13;
  v33 = v12;
  v34 = v13;
  v16 = v15 & 1;
  v35 = v15 & 1;
  v36 = v17;
  sub_24F9268B8();
  sub_24E600B40(v12, v14, v16);

  v18 = 0;
  v19 = 0;
  KeyPath = 0;
  v21 = 0;
  if (*(a1 + *(v9 + 40)) == 1)
  {
    v18 = sub_24F926DF8();
    v22 = sub_24F9251C8();
    v21 = sub_24F925A18();
    KeyPath = swift_getKeyPath();
    v19 = v22;
  }

  v23 = *(v4 + 16);
  v24 = v32;
  v23(v32, v8, v3);
  v30 = v8;
  v25 = v31;
  v23(v31, v24, v3);
  v26 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E08) + 48)];
  sub_24F50F094(v18);
  sub_24F50F0E4(v18);
  *v26 = v18;
  v26[1] = v19;
  v26[2] = KeyPath;
  v26[3] = v21;
  v27 = *(v4 + 8);
  v27(v30, v3);
  sub_24F50F0E4(v18);
  return (v27)(v24, v3);
}

uint64_t sub_24F50DFA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F211678 != -1)
  {
    swift_once();
  }

  sub_24E600AEC();

  v2 = sub_24F925E18();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_24F926DF8();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  sub_24E5FD138(v2, v4, v6);

  sub_24E600B40(v2, v4, v6);
}

uint64_t sub_24F50E0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D8);
  MEMORY[0x28223BE20](v5 - 8);
  v52 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = v45 - v8;
  v9 = type metadata accessor for ChallengeDetailPlayerLockup();
  v10 = v9 - 8;
  v47 = *(v9 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DC0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DC8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v22 = v45 - v20;
  v23 = a1;
  v24 = a1 + *(v10 + 44);
  if (*(v24 + 8) == 1)
  {
    (*(v13 + 56))(v45 - v20, 1, 1, v12, v21);
  }

  else
  {
    v46 = v12;
    v25 = *v24;
    result = sub_24F9249A8();
    *v15 = result;
    *(v15 + 1) = 0;
    v15[16] = 0;
    if (v25 < 0)
    {
      __break(1u);
      return result;
    }

    v45[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DD8) + 44);
    v54 = 0;
    v55 = v25;
    v45[0] = swift_getKeyPath();
    sub_24F50ECB4(v23, v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChallengeDetailPlayerLockup);
    v27 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v28 = swift_allocObject();
    sub_24F50F190(v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for ChallengeDetailPlayerLockup);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236EE8);
    sub_24E62A6CC();
    sub_24F00558C();
    sub_24F927228();
    sub_24E6009C8(v15, v22, &qword_27F246DC0);
    (*(v13 + 56))(v22, 0, 1, v46, v29);
  }

  v30 = *(v24 + 24);
  v31 = v49;
  if (v30)
  {
    v54 = *(v24 + 16);
    v55 = v30;
    sub_24E600AEC();

    v32 = sub_24F925E18();
    v34 = v33;
    v54 = v32;
    v55 = v33;
    v36 = v35 & 1;
    v56 = v35 & 1;
    v57 = v37;
    v38 = v48;
    sub_24F9268B8();
    sub_24E600B40(v32, v34, v36);

    v40 = v50;
    v39 = v51;
    (*(v50 + 32))(v31, v38, v51);
    v41 = 0;
  }

  else
  {
    v41 = 1;
    v40 = v50;
    v39 = v51;
  }

  (*(v40 + 56))(v31, v41, 1, v39);
  sub_24E60169C(v22, v18, &qword_27F246DC8);
  v42 = v52;
  sub_24E60169C(v31, v52, &qword_27F2128D8);
  v43 = v53;
  sub_24E60169C(v18, v53, &qword_27F246DC8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DD0);
  sub_24E60169C(v42, v43 + *(v44 + 48), &qword_27F2128D8);
  sub_24E601704(v31, &qword_27F2128D8);
  sub_24E601704(v22, &qword_27F246DC8);
  sub_24E601704(v42, &qword_27F2128D8);
  return sub_24E601704(v18, &qword_27F246DC8);
}

uint64_t sub_24F50E6AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + *(type metadata accessor for ChallengeDetailPlayerLockup() + 36) + 32);
  v6 = sub_24F926DF8();
  if (v4 >= v5)
  {
    v7 = sub_24F9251B8();
  }

  else
  {
    v7 = sub_24F925198();
  }

  v8 = v7;
  v9 = sub_24F925A18();
  result = swift_getKeyPath();
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = result;
  *(a3 + 24) = v9;
  return result;
}

uint64_t sub_24F50E770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, a2, &qword_27F246D38);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246D80);
  v4 = a2 + *(v3 + 40);
  *v4 = sub_24F923398() & 1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6 & 1;
  v7 = a2 + *(v3 + 44);
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v8 = qword_27F24E488;
  v9 = sub_24F923398();
  v11 = v10;
  v13 = v12;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246D70) + 36);
  *v14 = v8;
  *(v14 + 8) = v9 & 1;
  *(v14 + 16) = v11;
  *(v14 + 24) = v13 & 1;
  LOBYTE(v8) = sub_24F923398();
  v16 = v15;
  LOBYTE(v11) = v17;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246D50);
  v19 = a2 + *(result + 36);
  *v19 = v8 & 1;
  *(v19 + 8) = v16;
  *(v19 + 16) = v11 & 1;
  return result;
}

uint64_t sub_24F50E914()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_24E62AB1C(*v0, *(v0 + 8));
  sub_24F50F130(v2, v3, v4, v5, v6);
  sub_24F47DBD4();
  return sub_24F9218E8();
}

unint64_t sub_24F50EA00()
{
  result = qword_27F246D30;
  if (!qword_27F246D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246D30);
  }

  return result;
}

unint64_t sub_24F50EAD4()
{
  result = qword_27F246D58;
  if (!qword_27F246D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246D38);
    sub_24E99CDA8();
    sub_24E99D124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246D58);
  }

  return result;
}

unint64_t sub_24F50EB60()
{
  result = qword_27F246D60;
  if (!qword_27F246D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246D50);
    sub_24F50EBEC();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246D60);
  }

  return result;
}

unint64_t sub_24F50EBEC()
{
  result = qword_27F246D68;
  if (!qword_27F246D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246D70);
    sub_24E602068(&qword_27F246D78, &qword_27F246D80);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246D68);
  }

  return result;
}

uint64_t sub_24F50ECB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F50ED1C()
{
  v1 = type metadata accessor for ChallengeDetailPlayerLockup();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  __swift_destroy_boxed_opaque_existential_1(v2);

  v3 = v2 + v1[6];

  v4 = type metadata accessor for PlayerAvatar(0);
  v5 = *(v4 + 20);
  v6 = type metadata accessor for PlayerAvatar.Overlay(0);
  if (!(*(*(v6 - 8) + 48))(v3 + v5, 1, v6) && !swift_getEnumCaseMultiPayload())
  {
    v7 = sub_24F9289E8();
    (*(*(v7 - 8) + 8))(v3 + v5, v7);
  }

  v8 = v3 + *(v4 + 24);
  if (*(v8 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  v9 = v2 + v1[13];
  if (*(v9 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  v10 = v1[14];
  v11 = sub_24F92A6D8();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v2 + v10, 1, v11))
  {
    (*(v12 + 8))(v2 + v10, v11);
  }

  v13 = v1[15];
  v14 = sub_24F929608();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v2 + v13, 1, v14))
  {
    (*(v15 + 8))(v2 + v13, v14);
  }

  return swift_deallocObject();
}

uint64_t sub_24F50F00C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ChallengeDetailPlayerLockup() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F50E6AC(a1, v6, a2);
}

uint64_t sub_24F50F094(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24F50F0E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24F50F130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_24F50F13C()
{
  result = qword_27F246E18;
  if (!qword_27F246E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E18);
  }

  return result;
}

uint64_t sub_24F50F190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F50F1F8()
{
  result = qword_27F246E20;
  if (!qword_27F246E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E20);
  }

  return result;
}

uint64_t sub_24F50F24C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F50F2AC()
{
  result = qword_27F246E30;
  if (!qword_27F246E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E30);
  }

  return result;
}

uint64_t sub_24F50F300(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F50F348@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F50F54C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v9 = sub_24F92CC08();
  v19 = v10;
  v11 = v9;
  v21 = 1;
  v12 = sub_24F92CBC8();
  v14 = v13;
  v18 = v12;
  v20 = 2;
  v15 = sub_24F92CC58();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  *(a2 + 8) = v19 & 1;
  *(a2 + 16) = v18;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  return result;
}

unint64_t sub_24F50F54C()
{
  result = qword_27F246E40;
  if (!qword_27F246E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E40);
  }

  return result;
}

unint64_t sub_24F50F5C8()
{
  result = qword_27F246E50;
  if (!qword_27F246E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246D88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246D38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246D50);
    sub_24F50EAD4();
    sub_24E6A4C1C();
    sub_24F50EB60();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F246E58, &qword_27F246D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E50);
  }

  return result;
}

unint64_t sub_24F50F708()
{
  result = qword_27F246E60;
  if (!qword_27F246E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E60);
  }

  return result;
}

unint64_t sub_24F50F760()
{
  result = qword_27F246E68;
  if (!qword_27F246E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E68);
  }

  return result;
}

unint64_t sub_24F50F7B8()
{
  result = qword_27F246E70;
  if (!qword_27F246E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E70);
  }

  return result;
}

unint64_t sub_24F50F810()
{
  result = qword_27F246E78;
  if (!qword_27F246E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E78);
  }

  return result;
}

unint64_t sub_24F50F868()
{
  result = qword_27F246E80;
  if (!qword_27F246E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E80);
  }

  return result;
}

unint64_t sub_24F50F8C0()
{
  result = qword_27F246E88;
  if (!qword_27F246E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E88);
  }

  return result;
}

uint64_t sub_24F50F914(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C74706D65747461 && a2 == 0xEC00000074696D69;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657474616D726F66 && a2 == 0xEE0065726F635364 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4374706D65747461 && a2 == 0xEC000000746E756FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F50FA3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697274536B6E6172 && a2 == 0xEA0000000000676ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E6964616568 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E4565726F6373 && a2 == 0xEA00000000007972 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696C686769487369 && a2 == 0xED00006465746867 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024FA74770 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x654D6C6169636F73 && a2 == 0xEA0000000000756ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_24F50FE24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E90);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F50FF74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E90);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for FriendsPlayingAccessoryView()
{
  result = qword_27F246E98;
  if (!qword_27F246E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F5100FC()
{
  sub_24F510208(319, &qword_27F246EA8, type metadata accessor for FriendsPlayingOptionProvider, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_24E600550();
    if (v1 <= 0x3F)
    {
      sub_24F510208(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F510208(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F510288@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = sub_24F929888();
  v73 = *(v3 - 8);
  v74 = v3;
  MEMORY[0x28223BE20](v3);
  v72 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_24F927768();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for FriendsPlayingAccessoryView();
  v6 = *(v69 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v69);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246EB0);
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v9 = v57 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246EB8);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v11 = v57 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246EC0);
  MEMORY[0x28223BE20](v67);
  v13 = v57 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246EC8);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = v57 - v14;
  sub_24F512908(v2, v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v6 + 80);
  v16 = (v15 + 16) & ~v15;
  v75 = v7;
  v65 = v15;
  v17 = swift_allocObject();
  v66 = v16;
  v76 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F512970(v76, v17 + v16);
  v80 = v2;
  v77 = v2;
  v79 = v2;
  v57[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CA8);
  v57[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246ED0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234CB8);
  v19 = sub_24EF69804();
  v82 = v18;
  v83 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246ED8);
  v21 = sub_24F9248E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246EE0);
  v23 = sub_24E602068(&qword_27F246EE8, &qword_27F246EE0);
  v82 = v22;
  v83 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = v20;
  v83 = v21;
  v25 = v11;
  v84 = OpaqueTypeConformance2;
  v85 = MEMORY[0x277CDDDA0];
  swift_getOpaqueTypeConformance2();
  v26 = v58;
  sub_24F925AA8();
  v27 = v62;
  sub_24F927758();
  sub_24E602068(&qword_27F246EF0, &qword_27F246EB0);
  v28 = v60;
  sub_24F926BA8();
  v29 = v59;
  (*(v63 + 8))(v27, v64);
  (*(v61 + 8))(v9, v28);
  v85 = MEMORY[0x277CE1120];
  v86 = sub_24E63E454();
  sub_24F512A70(&v82, v13);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F00);
  (*(v26 + 16))(&v13[v30[9]], v25, v29);
  v31 = &v13[v30[10]];
  *v31 = sub_24F923398() & 1;
  *(v31 + 1) = v32;
  v31[16] = v33 & 1;
  v34 = &v13[v30[11]];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v35 = qword_27F24E488;
  v36 = sub_24F923398();
  v38 = v37;
  v40 = v39;
  v41 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F08) + 36)];
  *v41 = v35;
  v41[8] = v36 & 1;
  *(v41 + 2) = v38;
  v41[24] = v40 & 1;
  LOBYTE(v35) = sub_24F923398();
  v43 = v42;
  LOBYTE(v38) = v44;
  sub_24E601704(&v82, &qword_27F246EF8);
  (*(v26 + 8))(v25, v29);
  v45 = v67;
  v46 = &v13[*(v67 + 36)];
  *v46 = v35 & 1;
  *(v46 + 1) = v43;
  v46[16] = v38 & 1;
  v47 = v72;
  sub_24F9297E8();
  v48 = sub_24F512AE8();
  v49 = v68;
  sub_24F925EE8();
  (*(v73 + 8))(v47, v74);
  sub_24E601704(v13, &qword_27F246EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E90);
  v50 = v77;
  sub_24F927358();
  v51 = v82;
  swift_getKeyPath();
  v82 = v51;
  sub_24EAC45B0();
  sub_24F91FD88();

  LOBYTE(v43) = *(v51 + 24);

  v81 = v43;
  v52 = v76;
  sub_24F512908(v50, v76);
  v53 = v66;
  v54 = swift_allocObject();
  sub_24F512970(v52, v54 + v53);
  v82 = v45;
  v83 = v48;
  swift_getOpaqueTypeConformance2();
  sub_24EAC4450();
  v55 = v71;
  sub_24F926AB8();

  return (*(v70 + 8))(v49, v55);
}

uint64_t sub_24F510C40(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F921B58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F924848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FriendsPlayingAccessoryView();
  sub_24EF69E54(a2 + *(v11 + 24), &v20);
  if (v23 == 1)
  {
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v12 = *(&v21 + 1);
    if (*(&v21 + 1))
    {
LABEL_3:
      __swift_project_boxed_opaque_existential_1(&v24, v12);
      *(&v21 + 1) = sub_24F9284A8();
      v22 = MEMORY[0x277D21B60];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      sub_24F510F10(boxed_opaque_existential_1);
      sub_24F76973C(v6);
      sub_24F9218A8();
      (*(v4 + 8))(v6, v3);
      __swift_destroy_boxed_opaque_existential_1(&v20);
      return __swift_destroy_boxed_opaque_existential_1(&v24);
    }
  }

  else
  {
    sub_24F92BDC8();
    v15 = sub_24F9257A8();
    v19 = v7;
    v16 = v4;
    v17 = v15;
    sub_24F921FD8();

    v4 = v16;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v19);
    v12 = *(&v25 + 1);
    if (*(&v25 + 1))
    {
      goto LABEL_3;
    }
  }

  return sub_24E601704(&v24, &unk_27F212740);
}

uint64_t sub_24F510F10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_24F9294C8();
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F929458();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24F928698();
  v33 = *(v34 - 8);
  v9 = v33;
  MEMORY[0x28223BE20](v34);
  v31 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928AD8();
  MEMORY[0x28223BE20](v11 - 8);
  v32 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  sub_24F9293F8();
  v14 = sub_24F929448();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = MEMORY[0x277D837D0];
  *(inited + 48) = v14;
  *(inited + 56) = v16;
  *(inited + 72) = v17;
  *(inited + 80) = 0x6449746567726174;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = 0x7265746C6966;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v17;
  *(inited + 128) = 0x7954746567726174;
  *(inited + 136) = 0xEA00000000006570;
  *(inited + 144) = 0x7265746C6966;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v17;
  *(inited + 176) = 0x79546E6F69746361;
  *(inited + 216) = v17;
  *(inited + 184) = 0xEA00000000006570;
  *(inited + 192) = 0x6E6F74747562;
  *(inited + 200) = 0xE600000000000000;
  sub_24E608448(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948);
  v18 = sub_24F92A2C8();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v29 = xmmword_24F93DE60;
  *(v21 + 16) = xmmword_24F93DE60;
  sub_24F92A2A8();
  sub_24E805DFC(v21);
  swift_setDeallocating();
  (*(v19 + 8))(v21 + v20, v18);
  swift_deallocClassInstance();

  v22 = v31;
  sub_24F928658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2137C8);
  v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v29;
  v25 = v22;
  v26 = v22;
  v27 = v34;
  (*(v9 + 16))(v24 + v23, v25, v34);
  sub_24F9294B8();
  sub_24F928AA8();
  (*(v9 + 8))(v26, v27);
  return sub_24F928498();
}

uint64_t sub_24F511450@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_24F9248E8();
  v2 = *(v1 - 8);
  v23 = v1;
  v24 = v2;
  MEMORY[0x28223BE20](v1);
  v22 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246EE0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246ED8);
  v12 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v14 = &v20 - v13;
  type metadata accessor for FriendsPlayingAccessoryView();
  sub_24F927368();
  swift_getKeyPath();
  sub_24F927388();

  (*(v5 + 8))(v7, v4);
  v26 = v29;
  v27 = v30;
  v28 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F28);
  sub_24F512E6C();
  sub_24F512EC0();
  sub_24F927088();
  v15 = sub_24E602068(&qword_27F246EE8, &qword_27F246EE0);
  sub_24F926968();
  (*(v9 + 8))(v11, v8);
  v16 = v22;
  sub_24F9248D8();
  v29 = v8;
  v30 = v15;
  swift_getOpaqueTypeConformance2();
  v17 = v21;
  v18 = v23;
  sub_24F9261F8();
  (*(v24 + 8))(v16, v18);
  return (*(v12 + 8))(v14, v17);
}

uint64_t sub_24F51185C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v45 = sub_24F9248C8();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &KeyPath - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214410);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &KeyPath - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CE0);
  MEMORY[0x28223BE20](v7);
  v9 = (&KeyPath - v8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CD0);
  MEMORY[0x28223BE20](v38);
  v39 = &KeyPath - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CB8);
  MEMORY[0x28223BE20](v41);
  v12 = &KeyPath - v11;
  v37 = sub_24F926DF8();
  v36 = sub_24F9258F8();
  KeyPath = swift_getKeyPath();
  type metadata accessor for FriendsPlayingAccessoryView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E90);
  v40 = a1;
  sub_24F927358();
  v13 = v46;
  swift_getKeyPath();
  v46 = v13;
  sub_24EAC45B0();
  sub_24F91FD88();

  if (*(v13 + 24))
  {
    v14 = sub_24F92CE08();

    if ((v14 & 1) == 0)
    {
      v15 = 1;
      goto LABEL_6;
    }
  }

  else
  {
  }

  sub_24F924CF8();
  v15 = 0;
LABEL_6:
  v16 = sub_24F924D08();
  (*(*(v16 - 8) + 56))(v6, v15, 1, v16);
  v17 = swift_getKeyPath();
  v18 = (v9 + *(v7 + 36));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0);
  sub_24E6009C8(v6, v18 + *(v19 + 28), &qword_27F214410);
  *v18 = v17;
  v21 = KeyPath;
  v20 = v36;
  *v9 = v37;
  v9[1] = v21;
  v9[2] = v20;
  sub_24F927358();
  v22 = v46;
  swift_getKeyPath();
  v46 = v22;
  sub_24F91FD88();

  if (*(v22 + 24))
  {
    v23 = sub_24F92CE08();

    v24 = v39;
    if ((v23 & 1) == 0)
    {
      v25 = 0;
      goto LABEL_11;
    }
  }

  else
  {

    v24 = v39;
  }

  v25 = sub_24F926D18();
LABEL_11:
  v26 = swift_getKeyPath();
  sub_24E6009C8(v9, v24, &qword_27F234CE0);
  v27 = (v24 + *(v38 + 36));
  *v27 = v26;
  v27[1] = v25;
  sub_24F927358();
  v28 = v46;
  swift_getKeyPath();
  v46 = v28;
  sub_24F91FD88();

  if (*(v28 + 24))
  {
    v29 = sub_24F92CE08();

    if (v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    }
  }

  else
  {

    v30 = 0;
  }

  v31 = swift_getKeyPath();
  sub_24E6009C8(v24, v12, &qword_27F234CD0);
  v32 = &v12[*(v41 + 36)];
  *v32 = v31;
  v32[1] = v30;
  v33 = v42;
  sub_24F9248B8();
  sub_24EF69804();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v43 + 8))(v33, v45);
  return sub_24E601704(v12, &qword_27F234CB8);
}

uint64_t sub_24F511E74(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v22 = sub_24F921B58();
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F924848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = *(type metadata accessor for FriendsPlayingAccessoryView() + 24);
  v21 = a3;
  sub_24EF69E54(a3 + v13, &v23);
  if (v26 != 1)
  {
    sub_24F92BDC8();
    v20 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v14 = *(&v28 + 1);
    if (*(&v28 + 1))
    {
      goto LABEL_3;
    }

    return sub_24E601704(&v27, &unk_27F212740);
  }

  v27 = v23;
  v28 = v24;
  v29 = v25;
  v14 = *(&v24 + 1);
  if (!*(&v24 + 1))
  {
    return sub_24E601704(&v27, &unk_27F212740);
  }

LABEL_3:
  __swift_project_boxed_opaque_existential_1(&v27, v14);
  v15 = v12 == 0;
  if (v12)
  {
    v16 = 0x614E794274726F53;
  }

  else
  {
    v16 = 0x6552794274726F53;
  }

  if (v15)
  {
    v17 = 0xEC000000746E6563;
  }

  else
  {
    v17 = 0xEA0000000000656DLL;
  }

  *(&v24 + 1) = sub_24F9284A8();
  v25 = MEMORY[0x277D21B60];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
  sub_24F512184(v16, v17, boxed_opaque_existential_1);

  sub_24F76973C(v7);
  sub_24F9218A8();
  (*(v5 + 8))(v7, v22);
  __swift_destroy_boxed_opaque_existential_1(&v23);
  return __swift_destroy_boxed_opaque_existential_1(&v27);
}