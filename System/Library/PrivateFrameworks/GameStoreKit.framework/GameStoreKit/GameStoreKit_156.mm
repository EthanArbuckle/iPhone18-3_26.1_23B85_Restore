uint64_t sub_24F6370C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F637128(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F63719C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_24F63725C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_24F637300()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24F6373C4();
    if (v1 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F6373C4()
{
  if (!qword_27F24B168)
  {
    type metadata accessor for ChallengesHistoryData.FriendHistory(255);
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F24B168);
    }
  }
}

unint64_t sub_24F637430()
{
  result = qword_27F24B170;
  if (!qword_27F24B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B170);
  }

  return result;
}

unint64_t sub_24F637488()
{
  result = qword_27F24B178;
  if (!qword_27F24B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B178);
  }

  return result;
}

unint64_t sub_24F6374E0()
{
  result = qword_27F24B180;
  if (!qword_27F24B180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B180);
  }

  return result;
}

uint64_t sub_24F637534(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616C506C61636F6CLL && a2 == 0xEB00000000726579 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6948646E65697266 && a2 == 0xEF736569726F7473 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x796C6E4F6E6977 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5479616C70736964 && a2 == 0xEB00000000657079 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
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

uint64_t sub_24F637750(uint64_t a1, uint64_t a2, int *a3)
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

  v16 = sub_24F91F648();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[12];

  return v17(v18, a2, v16);
}

uint64_t sub_24F637978(uint64_t result, uint64_t a2, int a3, int *a4)
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

  v16 = sub_24F91F648();
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[12];

  return v17(v18, a2, a2, v16);
}

void sub_24F637BAC()
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
        sub_24E61C938();
        if (v3 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v4 <= 0x3F)
          {
            sub_24F9289E8();
            if (v5 <= 0x3F)
            {
              sub_24F91F648();
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

uint64_t sub_24F637D08(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_24F637D70(int a1)
{
  v31 = type metadata accessor for ChallengeCard.ParticipantsInfo.Participant(0);
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217C08);
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v26 - v7;
  v9 = (v1 + *(type metadata accessor for ChallengeCard(0) + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = *(*v9 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v27 = v9[1];
    v28 = a1;
    v32 = MEMORY[0x277D84F90];
    v29 = v12;
    result = sub_24F457C3C(0, v12, 0);
    v15 = 0;
    v13 = v32;
    v16 = v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    while (v15 < *(v11 + 16))
    {
      v17 = v3;
      sub_24F639DD0(v16 + *(v3 + 72) * v15, v5, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant);
      v18 = &v8[*(v30 + 48)];
      sub_24F639DD0(v5, v8, type metadata accessor for PlayerAvatar);
      v19 = &v5[*(v31 + 20)];
      v20 = *v19;
      LOBYTE(v19) = v19[8];
      *v18 = v20;
      v18[8] = v19;
      sub_24F19A0B4(v5, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant);
      v32 = v13;
      v22 = v13[2];
      v21 = v13[3];
      if (v22 >= v21 >> 1)
      {
        sub_24F457C3C(v21 > 1, v22 + 1, 1);
        v13 = v32;
      }

      ++v15;
      v13[2] = v22 + 1;
      result = sub_24E6009C8(v8, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v22, &qword_27F217C08);
      v3 = v17;
      if (v29 == v15)
      {
        LOBYTE(a1) = v28;
        v10 = v27;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    if (a1)
    {
      v23 = 1;
    }

    else
    {
      v23 = 4;
    }

    if (a1)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }

    v25 = sub_24F5289A8(v10, 0, v13, v24, v23);

    return v25;
  }

  return result;
}

uint64_t sub_24F638078(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B268);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F63A984();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for PlayerAvatar(0);
  sub_24F637D08(&qword_27F218A38, type metadata accessor for PlayerAvatar);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for ChallengeCard.ParticipantsInfo.Participant(0);
    v8[14] = 1;
    sub_24F92CCE8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F638238@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v4);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B258);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v21 - v6;
  v8 = type metadata accessor for ChallengeCard.ParticipantsInfo.Participant(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F63A984();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v8;
  v11 = v10;
  v12 = v24;
  v28 = 0;
  sub_24F637D08(&qword_27F2185A0, type metadata accessor for PlayerAvatar);
  v14 = v25;
  v13 = v26;
  sub_24F92CC68();
  sub_24E7CB43C(v14, v11, type metadata accessor for PlayerAvatar);
  v27 = 1;
  v15 = sub_24F92CC08();
  v17 = v16;
  (*(v12 + 8))(v7, v13);
  v18 = v23;
  v19 = v11 + *(v22 + 20);
  *v19 = v15;
  *(v19 + 8) = v17 & 1;
  sub_24F639DD0(v11, v18, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F19A0B4(v11, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant);
}

uint64_t sub_24F638574(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B200);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F63A1E4();
  sub_24F92D128();
  v11 = a2;
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B1E8);
  sub_24F63A238(&qword_27F24B208, &qword_27F24B210);
  sub_24F92CD48();
  if (!v2)
  {
    v10[14] = 1;
    sub_24F92CD38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F638760(uint64_t a1)
{
  v2 = sub_24F63A984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F63879C(uint64_t a1)
{
  v2 = sub_24F63A984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F638808()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7069636974726170;
  }
}

uint64_t sub_24F638850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA77760 == a2)
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

uint64_t sub_24F638938(uint64_t a1)
{
  v2 = sub_24F63A1E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F638974(uint64_t a1)
{
  v2 = sub_24F63A1E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F6389B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24F639E38(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_24F638A04()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F638AE8()
{
  sub_24F92B218();
}

uint64_t sub_24F638BB8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F638C98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F63A048();
  *a1 = result;
  return result;
}

void sub_24F638CC8(unint64_t *a1@<X8>)
{
  v2 = 0xED00006275487365;
  v3 = 0x676E656C6C616863;
  v4 = 0x800000024FA40430;
  v5 = 0xD000000000000019;
  if (*v1 != 2)
  {
    v5 = 0x6669636570736E75;
    v4 = 0xEB00000000646569;
  }

  if (*v1)
  {
    v3 = 0x61746544656D6167;
    v2 = 0xEB00000000736C69;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_24F638DCC()
{
  result = qword_27F24B198;
  if (!qword_27F24B198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B198);
  }

  return result;
}

uint64_t sub_24F638E20(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 0x4D747865746E6F63;
    v8 = 0xD000000000000014;
    if (a1 == 3)
    {
      v8 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6575676573;
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
    v1 = 0x73656D6954646E65;
    v2 = 0xD000000000000018;
    if (a1 != 9)
    {
      v2 = 0x747865746E6F63;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6E6F6349656D6167;
    v4 = 0x656D614E656D6167;
    if (a1 != 6)
    {
      v4 = 0xD000000000000010;
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

uint64_t sub_24F638F90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_24F91F648();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9289E8();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v46);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B1B0);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v16 = &v42 - v15;
  v17 = type metadata accessor for ChallengeCard(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v19 + 40) = 0u;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  *(v19 + 56) = 0u;
  *(v19 + 9) = 0;
  v59 = v19 + 40;
  sub_24E61DA68(&v60, (v19 + 40), qword_27F21B590);
  v57 = v17;
  v20 = *(v17 + 24);
  v21 = sub_24F92A6D8();
  v22 = *(*(v21 - 8) + 56);
  v58 = v20;
  v56 = v19;
  v22(&v19[v20], 1, 1, v21);
  v23 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24F63A094();
  v48 = v16;
  v24 = v54;
  sub_24F92D108();
  if (v24)
  {
    v25 = v56;
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_24E601704(v59, qword_27F24EC90);
    return sub_24E601704(v25 + v58, &qword_27F215440);
  }

  else
  {
    v54 = v11;
    v42 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v63 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v26 = v61;
    v27 = v56;
    *v56 = v60;
    v27[1] = v26;
    *(v27 + 4) = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v63 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v28 = v57;
    sub_24E61DA68(&v60, v59, qword_27F24EC90);
    LOBYTE(v60) = 2;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v14, v27 + v58, &qword_27F215440);
    sub_24F929608();
    LOBYTE(v60) = 3;
    sub_24F637D08(&qword_27F213F48, MEMORY[0x277D21F70]);
    v29 = v54;
    sub_24F92CC18();
    sub_24E6009C8(v29, v27 + v28[7], &qword_27F213E68);
    LOBYTE(v60) = 4;
    sub_24F637D08(&qword_27F219690, type metadata accessor for CommonCardAttributes);
    v30 = v42;
    sub_24F92CC68();
    sub_24E7CB43C(v30, v27 + v28[8], type metadata accessor for CommonCardAttributes);
    LOBYTE(v60) = 5;
    sub_24F637D08(&qword_27F214018, MEMORY[0x277D21C48]);
    v31 = v45;
    v32 = v53;
    sub_24F92CC68();
    (*(v52 + 32))(v27 + v28[9], v31, v32);
    LOBYTE(v60) = 6;
    v33 = sub_24F92CC28();
    v34 = (v27 + v28[10]);
    *v34 = v33;
    v34[1] = v35;
    v63 = 7;
    sub_24F63A0E8();
    sub_24F92CC68();
    v36 = *(&v60 + 1);
    v37 = (v27 + v28[11]);
    *v37 = v60;
    v37[1] = v36;
    LOBYTE(v60) = 8;
    sub_24F637D08(&qword_27F21B778, MEMORY[0x277CC9578]);
    v38 = v44;
    sub_24F92CC68();
    (*(v50 + 32))(v27 + v28[12], v38, v51);
    LOBYTE(v60) = 9;
    sub_24F92CC48();
    *(v56 + v57[13]) = v39;
    v63 = 10;
    sub_24F63A13C();
    sub_24F92CC68();
    (*(v47 + 8))(v48, v49);
    v40 = v56;
    *(v56 + v57[14]) = v60;
    sub_24F639DD0(v40, v43, type metadata accessor for ChallengeCard);
    __swift_destroy_boxed_opaque_existential_1(v55);
    return sub_24F19A0B4(v40, type metadata accessor for ChallengeCard);
  }
}

uint64_t sub_24F639B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F63A608(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F639B5C(uint64_t a1)
{
  v2 = sub_24F63A094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F639B98(uint64_t a1)
{
  v2 = sub_24F63A094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F639C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24F639CE4(uint64_t a1)
{
  *(a1 + 8) = sub_24F637D08(&qword_27F21AAC0, type metadata accessor for ChallengeCard);
  result = sub_24F637D08(&qword_27F24B1A0, type metadata accessor for ChallengeCard);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24F639DD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F639E38(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B1D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_24F63A1E4();
  sub_24F92D108();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B1E8);
    v9[7] = 0;
    sub_24F63A238(&qword_27F24B1F0, &qword_27F24B1F8);
    sub_24F92CC68();
    v7 = v10;
    v9[6] = 1;
    sub_24F92CC58();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_24F63A048()
{
  v0 = sub_24F92CB88();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24F63A094()
{
  result = qword_27F24B1B8;
  if (!qword_27F24B1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B1B8);
  }

  return result;
}

unint64_t sub_24F63A0E8()
{
  result = qword_27F24B1C0;
  if (!qword_27F24B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B1C0);
  }

  return result;
}

unint64_t sub_24F63A13C()
{
  result = qword_27F24B1C8;
  if (!qword_27F24B1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B1C8);
  }

  return result;
}

unint64_t sub_24F63A190()
{
  result = qword_27F24B1D0;
  if (!qword_27F24B1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B1D0);
  }

  return result;
}

unint64_t sub_24F63A1E4()
{
  result = qword_27F24B1E0;
  if (!qword_27F24B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B1E0);
  }

  return result;
}

uint64_t sub_24F63A238(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B1E8);
    sub_24F637D08(a2, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F63A308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerAvatar(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F63A388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerAvatar(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_24F63A3FC()
{
  result = qword_27F24B228;
  if (!qword_27F24B228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B228);
  }

  return result;
}

unint64_t sub_24F63A454()
{
  result = qword_27F24B230;
  if (!qword_27F24B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B230);
  }

  return result;
}

unint64_t sub_24F63A4AC()
{
  result = qword_27F24B238;
  if (!qword_27F24B238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B238);
  }

  return result;
}

unint64_t sub_24F63A504()
{
  result = qword_27F24B240;
  if (!qword_27F24B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B240);
  }

  return result;
}

unint64_t sub_24F63A55C()
{
  result = qword_27F24B248;
  if (!qword_27F24B248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B248);
  }

  return result;
}

unint64_t sub_24F63A5B4()
{
  result = qword_27F24B250;
  if (!qword_27F24B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B250);
  }

  return result;
}

uint64_t sub_24F63A608(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D614E656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA77720 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x73656D6954646E65 && a2 == 0xEC000000706D6174 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA77740 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
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

unint64_t sub_24F63A984()
{
  result = qword_27F24B260;
  if (!qword_27F24B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B260);
  }

  return result;
}

unint64_t sub_24F63A9EC()
{
  result = qword_27F24B270;
  if (!qword_27F24B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B270);
  }

  return result;
}

unint64_t sub_24F63AA44()
{
  result = qword_27F24B278;
  if (!qword_27F24B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B278);
  }

  return result;
}

unint64_t sub_24F63AA9C()
{
  result = qword_27F24B280;
  if (!qword_27F24B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B280);
  }

  return result;
}

uint64_t sub_24F63AB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AchievementProgressStatus(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_24F63AC40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AchievementProgressStatus(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for AchievementBadgeModel()
{
  result = qword_27F24B288;
  if (!qword_27F24B288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F63ADA4()
{
  sub_24E6A7820();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AchievementProgressStatus(319);
    if (v1 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24F63AE40@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x6B726F77747261;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  *(inited + 80) = sub_24E7F1D38();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E6F66C4(v2, boxed_opaque_existential_1);
  strcpy((inited + 88), "progressStatus");
  *(inited + 103) = -18;
  v6 = type metadata accessor for AchievementBadgeModel();
  v7 = v6[5];
  *(inited + 128) = type metadata accessor for AchievementProgressStatus(0);
  *(inited + 136) = sub_24F63BAE0(&qword_27F249948, type metadata accessor for AchievementProgressStatus);
  v8 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F63BB28(v2 + v7, v8, type metadata accessor for AchievementProgressStatus);
  *(inited + 144) = 0x43746E6563726570;
  *(inited + 152) = 0xEF6574656C706D6FLL;
  v9 = (v2 + v6[6]);
  v11 = *v9;
  v10 = v9[1];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 184) = v12;
  v13 = sub_24E605DB4();
  *(inited + 160) = v11;
  *(inited + 168) = v10;
  *(inited + 192) = v13;
  strcpy((inited + 200), "completionDate");
  *(inited + 215) = -18;
  v14 = (v2 + v6[7]);
  v16 = *v14;
  v15 = v14[1];
  *(inited + 240) = v12;
  *(inited + 248) = v13;
  *(inited + 216) = v16;
  *(inited + 224) = v15;

  v17 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v17;
  return result;
}

uint64_t sub_24F63B0B0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B298);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F63B954();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F9289E8();
  sub_24F63BAE0(&qword_27F214060, MEMORY[0x277D21C48]);
  sub_24F92CCF8();
  if (!v1)
  {
    type metadata accessor for AchievementBadgeModel();
    v8[14] = 1;
    type metadata accessor for AchievementProgressStatus(0);
    sub_24F63BAE0(&qword_27F2463F0, type metadata accessor for AchievementProgressStatus);
    sub_24F92CD48();
    v8[13] = 2;
    sub_24F92CCA8();
    v8[12] = 3;
    sub_24F92CCA8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F63B314@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for AchievementProgressStatus(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B2A8);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v35 = type metadata accessor for AchievementBadgeModel();
  MEMORY[0x28223BE20](v35);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F9289E8();
  v15 = v13;
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v16 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_24F63B954();
  v32 = v11;
  v17 = v33;
  sub_24F92D108();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
    sub_24F63B9A8(v15);
  }

  else
  {
    v18 = v30;
    v39 = 0;
    sub_24F63BAE0(&qword_27F214018, MEMORY[0x277D21C48]);
    sub_24F92CC18();
    sub_24F63BA10(v8, v15);
    v38 = 1;
    sub_24F63BAE0(&qword_27F2463D0, type metadata accessor for AchievementProgressStatus);
    sub_24F92CC68();
    v19 = v35;
    sub_24F5D1C54(v5, v15 + *(v35 + 20));
    v37 = 2;
    v20 = sub_24F92CBC8();
    v21 = (v15 + *(v19 + 24));
    *v21 = v20;
    v21[1] = v22;
    v36 = 3;
    v23 = sub_24F92CBC8();
    v25 = v24;
    v26 = (v15 + *(v19 + 28));
    (*(v18 + 8))(v32, v31);
    *v26 = v23;
    v26[1] = v25;
    sub_24F63BB28(v15, v29, type metadata accessor for AchievementBadgeModel);
    __swift_destroy_boxed_opaque_existential_1(v34);
    return sub_24F63BA80(v15, type metadata accessor for AchievementBadgeModel);
  }
}

uint64_t sub_24F63B7CC()
{
  v1 = 0x6B726F77747261;
  v2 = 0x43746E6563726570;
  if (*v0 != 2)
  {
    v2 = 0x6974656C706D6F63;
  }

  if (*v0)
  {
    v1 = 0x73736572676F7270;
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

uint64_t sub_24F63B86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F63BCA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F63B894(uint64_t a1)
{
  v2 = sub_24F63B954();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F63B8D0(uint64_t a1)
{
  v2 = sub_24F63B954();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F63B954()
{
  result = qword_27F24B2A0;
  if (!qword_27F24B2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B2A0);
  }

  return result;
}

uint64_t sub_24F63B9A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F63BA10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F63BA80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F63BAE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F63BB28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F63BBA4()
{
  result = qword_27F24B2B0;
  if (!qword_27F24B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B2B0);
  }

  return result;
}

unint64_t sub_24F63BBFC()
{
  result = qword_27F24B2B8;
  if (!qword_27F24B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B2B8);
  }

  return result;
}

unint64_t sub_24F63BC54()
{
  result = qword_27F24B2C0[0];
  if (!qword_27F24B2C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F24B2C0);
  }

  return result;
}

uint64_t sub_24F63BCA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xEE00737574617453 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x43746E6563726570 && a2 == 0xEF6574656C706D6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974656C706D6F63 && a2 == 0xEE00657461446E6FLL)
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

uint64_t sub_24F63BE24()
{
  v0 = sub_24F9289E8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v4 = sub_24F928AD8();
  MEMORY[0x28223BE20](v4 - 8);
  sub_24F928A98();
  v5 = sub_24F92A628();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6._countAndFlagsBits = 0xD000000000000031;
  v6._object = 0x800000024FA777B0;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  localizedString(_:comment:)(v6, v7);
  v8._countAndFlagsBits = 0xD000000000000033;
  v8._object = 0x800000024FA777F0;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  localizedString(_:comment:)(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB8);
  sub_24F92A618();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v10._object = 0x800000024FA580D0;
  v10._countAndFlagsBits = 0xD00000000000001FLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  localizedString(_:comment:)(v10, v11);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_24F92A608();
  sub_24F9289D8();
  return sub_24F92A5E8();
}

uint64_t UpdateFriendRequestActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  updated = type metadata accessor for UpdateFriendRequestAction(0);
  v14 = *(updated - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](updated - 8);
  sub_24F63FFF8(a1, &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UpdateFriendRequestAction);
  (*(v10 + 16))(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a3);
  v16 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v17 = (v15 + *(v10 + 80) + v16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = *(a3 + 16);
  sub_24F640060(&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for UpdateFriendRequestAction);
  (*(v10 + 32))(v18 + v17, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  *(v18 + ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v19 = sub_24F92A9E8();
  v20 = sub_24F92B858();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_24FA16860;
  v21[5] = v18;
  v21[6] = v19;

  sub_24E6959D8(0, 0, v9, &unk_24F94D7B0, v21);

  return v19;
}

uint64_t sub_24F63C414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  type metadata accessor for Player(0);
  v5[27] = swift_task_alloc();
  updated = type metadata accessor for UpdateFriendRequestActionImplementation();
  v5[28] = updated;
  v7 = *(updated - 8);
  v5[29] = v7;
  v5[30] = *(v7 + 64);
  v5[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v5[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F63C550, 0, 0);
}

id sub_24F63C550()
{
  if (**(v0 + 184))
  {
    v1 = sub_24F92CE08();

    v2 = 0;
    if ((v1 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  result = [objc_opt_self() shared];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [result isAddingFriendsRestricted];

  if (!v5)
  {
    v2 = 1;
LABEL_15:
    *(v0 + 344) = v2;
    v24 = *(v0 + 184);
    updated = type metadata accessor for UpdateFriendRequestAction(0);
    *(v0 + 264) = updated;
    v26 = *(updated + 20);
    v27 = swift_task_alloc();
    *(v0 + 272) = v27;
    *v27 = v0;
    v27[1] = sub_24F63C924;
    v28 = *(v0 + 216);
    v29 = *(v0 + 200);

    return sub_24F63E2F0(v28, v24 + v26, v29);
  }

  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E808);
  v7 = sub_24F9220B8();
  v8 = sub_24F92BD98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24E5DD000, v7, v8, "Accepting friend requests is restricted via ScreenTime.", v9, 2u);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  v11 = *(v0 + 248);
  v10 = *(v0 + 256);
  v12 = *(v0 + 232);
  v13 = *(v0 + 240);
  v14 = *(v0 + 224);
  v16 = *(v0 + 200);
  v15 = *(v0 + 208);
  v17 = *(v0 + 192);
  v30 = *(v0 + 176);

  v18 = sub_24F92B858();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  (*(v12 + 16))(v11, v17, v14);
  v19 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v15;
  (*(v12 + 32))(&v20[v19], v11, v14);
  *&v20[(v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8] = v16;

  sub_24F1D4600(0, 0, v10, &unk_24FA16900, v20);

  v21 = *MEMORY[0x277D21CA8];
  v22 = sub_24F928AE8();
  (*(*(v22 - 8) + 104))(v30, v21, v22);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_24F63C924()
{
  v2 = *v1;
  *(v2 + 280) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F63D270, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 288) = v3;
    *v3 = v2;
    v3[1] = sub_24F63CA98;
    v4 = *(v2 + 344);
    v5 = *(v2 + 216);

    return sub_24F63F83C(v5, v4);
  }
}

uint64_t sub_24F63CA98()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_24F63CD68;
  }

  else
  {
    v2 = sub_24F63CBAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F63CBAC()
{
  sub_24E60169C(*(v0 + 184) + *(*(v0 + 264) + 24), v0 + 136, qword_27F24EC90);
  if (*(v0 + 160))
  {
    sub_24E612C80((v0 + 136), v0 + 96);
    v1 = swift_task_alloc();
    *(v0 + 304) = v1;
    WitnessTable = swift_getWitnessTable();
    *v1 = v0;
    v1[1] = sub_24F63CF34;
    v3 = *(v0 + 224);
    v4 = *(v0 + 200);
    v5 = *(v0 + 176);

    return sub_24F1487B0(v5, v0 + 96, v4, v3, WitnessTable);
  }

  else
  {
    sub_24E71BF38(*(v0 + 216));
    sub_24E601704(v0 + 136, qword_27F21B590);
    v7 = *(v0 + 176);
    v8 = *MEMORY[0x277D21CA8];
    v9 = sub_24F928AE8();
    (*(*(v9 - 8) + 104))(v7, v8, v9);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_24F63CD68()
{
  sub_24E71BF38(*(v0 + 216));
  v1 = *(v0 + 296);
  *(v0 + 320) = v1;
  sub_24E60169C(*(v0 + 184) + *(*(v0 + 264) + 28), v0 + 56, qword_27F24EC90);
  if (*(v0 + 80))
  {
    sub_24E612C80((v0 + 56), v0 + 16);
    v2 = swift_task_alloc();
    *(v0 + 328) = v2;
    WitnessTable = swift_getWitnessTable();
    *v2 = v0;
    v2[1] = sub_24F63D0D4;
    v4 = *(v0 + 224);
    v5 = *(v0 + 200);
    v6 = *(v0 + 176);

    return sub_24F1487B0(v6, v0 + 16, v5, v4, WitnessTable);
  }

  else
  {

    sub_24E601704(v0 + 56, qword_27F21B590);
    v8 = *(v0 + 176);
    v9 = *MEMORY[0x277D21CA8];
    v10 = sub_24F928AE8();
    (*(*(v10 - 8) + 104))(v8, v9, v10);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_24F63CF34()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_24F63D434;
  }

  else
  {
    v2 = sub_24F63D048;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F63D048()
{
  v1 = *(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  sub_24E71BF38(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F63D0D4()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_24F63D60C;
  }

  else
  {
    v2 = sub_24F63D1E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F63D1E8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F63D270()
{
  v1 = *(v0 + 280);
  *(v0 + 320) = v1;
  sub_24E60169C(*(v0 + 184) + *(*(v0 + 264) + 28), v0 + 56, qword_27F24EC90);
  if (*(v0 + 80))
  {
    sub_24E612C80((v0 + 56), v0 + 16);
    v2 = swift_task_alloc();
    *(v0 + 328) = v2;
    WitnessTable = swift_getWitnessTable();
    *v2 = v0;
    v2[1] = sub_24F63D0D4;
    v4 = *(v0 + 224);
    v5 = *(v0 + 200);
    v6 = *(v0 + 176);

    return sub_24F1487B0(v6, v0 + 16, v5, v4, WitnessTable);
  }

  else
  {

    sub_24E601704(v0 + 56, qword_27F21B590);
    v8 = *(v0 + 176);
    v9 = *MEMORY[0x277D21CA8];
    v10 = sub_24F928AE8();
    (*(*(v10 - 8) + 104))(v8, v9, v10);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_24F63D434()
{
  v1 = *(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  sub_24E71BF38(v1);
  v2 = *(v0 + 312);
  *(v0 + 320) = v2;
  sub_24E60169C(*(v0 + 184) + *(*(v0 + 264) + 28), v0 + 56, qword_27F24EC90);
  if (*(v0 + 80))
  {
    sub_24E612C80((v0 + 56), v0 + 16);
    v3 = swift_task_alloc();
    *(v0 + 328) = v3;
    WitnessTable = swift_getWitnessTable();
    *v3 = v0;
    v3[1] = sub_24F63D0D4;
    v5 = *(v0 + 224);
    v6 = *(v0 + 200);
    v7 = *(v0 + 176);

    return sub_24F1487B0(v7, v0 + 16, v6, v5, WitnessTable);
  }

  else
  {

    sub_24E601704(v0 + 56, qword_27F21B590);
    v9 = *(v0 + 176);
    v10 = *MEMORY[0x277D21CA8];
    v11 = sub_24F928AE8();
    (*(*(v11 - 8) + 104))(v9, v10, v11);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_24F63D60C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F63D6A0()
{
  updated = type metadata accessor for UpdateFriendRequestAction(0);
  v2 = *(*(updated - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(updated - 1) + 64);
  v5 = *(*(type metadata accessor for UpdateFriendRequestActionImplementation() - 8) + 80);
  v6 = v0 + v3;
  v7 = v0 + v3 + updated[5];
  type metadata accessor for UpdateFriendRequestAction.PlayerInfo(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {
    v45 = v4;
    v44 = v5;

    v9 = type metadata accessor for Player(0);
    v10 = v9[6];
    v11 = sub_24F9289E8();
    v42 = *(v11 - 8);
    v43 = v11;
    v41 = *(v42 + 8);
    v41(v7 + v10);

    if (*(v7 + v9[9] + 8) != 1)
    {
    }

    v12 = v7 + v9[13];
    v13 = type metadata accessor for CallProviderConversationHandleSet();
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      v39 = v0;
      v14 = type metadata accessor for CallProviderConversationHandle();
      v15 = *(*(v14 - 8) + 48);
      if (!v15(v12, 1, v14))
      {

        v16 = *(type metadata accessor for CallProvider() + 24);
        if (!(*(v42 + 48))(v12 + v16, 1, v43))
        {
          (v41)(v12 + v16, v43);
        }
      }

      v17 = v12 + *(v13 + 20);
      if (!v15(v17, 1, v14))
      {

        v18 = *(type metadata accessor for CallProvider() + 24);
        if (!(*(v42 + 48))(v17 + v18, 1, v43))
        {
          (v41)(v17 + v18, v43);
        }
      }

      v3 = (v2 + 24) & ~v2;
      v0 = v39;
    }

    if (*(v7 + v9[15] + 8))
    {
    }

    v19 = v7 + v9[16];
    PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
    if (!(*(*(PlayedTogetherInfo - 8) + 48))(v19, 1, PlayedTogetherInfo))
    {
      v40 = v3;

      v21 = type metadata accessor for Game();
      (v41)(v19 + v21[18], v43);
      v22 = v21[19];
      if (!(*(v42 + 48))(v19 + v22, 1, v43))
      {
        (v41)(v19 + v22, v43);
      }

      v23 = v21[21];
      v24 = sub_24F920818();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(v19 + v23, 1, v24))
      {
        (*(v25 + 8))(v19 + v23, v24);
      }

      v3 = v40;
    }

    v26 = v7 + v9[17];
    ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
    v5 = v44;
    v4 = v45;
    if (!(*(*(ChallengeInfo - 8) + 48))(v26, 1, ChallengeInfo))
    {

      v28 = type metadata accessor for Game();
      (v41)(v26 + v28[18], v43);
      v29 = v28[19];
      if (!(*(v42 + 48))(v26 + v29, 1, v43))
      {
        (v41)(v26 + v29, v43);
      }

      v30 = v28[21];
      v31 = sub_24F920818();
      v32 = *(v31 - 8);
      if (!(*(v32 + 48))(v26 + v30, 1, v31))
      {
        (*(v32 + 8))(v26 + v30, v31);
      }

      v5 = v44;
      v4 = v45;
    }
  }

  v33 = v6 + updated[6];
  if (*(v33 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v34 = v6 + updated[7];
  if (*(v34 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v35 = updated[8];
  v36 = sub_24F928AD8();
  (*(*(v36 - 8) + 8))(v6 + v35, v36);
  v37 = sub_24F92A638();
  (*(*(v37 - 8) + 8))(v0 + ((v3 + v4 + v5) & ~v5), v37);

  return swift_deallocObject();
}

uint64_t sub_24F63DE7C(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = *(type metadata accessor for UpdateFriendRequestAction(0) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = *(type metadata accessor for UpdateFriendRequestActionImplementation() - 8);
  v10 = (v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24E6541E4;

  return sub_24F63C414(a1, v1 + v7, v1 + v10, v11, v5);
}

uint64_t sub_24F63DFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  return MEMORY[0x2822009F8](sub_24F63E020, 0, 0);
}

uint64_t sub_24F63E020()
{
  v1 = v0[8];
  v2 = sub_24F92A638();
  v3 = MEMORY[0x277D223B8];
  v0[5] = v2;
  v0[6] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v1, v2);
  v5 = swift_task_alloc();
  v0[11] = v5;
  updated = type metadata accessor for UpdateFriendRequestActionImplementation();
  WitnessTable = swift_getWitnessTable();
  *v5 = v0;
  v5[1] = sub_24F63E150;
  v8 = v0[9];
  v9 = v0[7];

  return sub_24F1487B0(v9, (v0 + 2), v8, updated, WitnessTable);
}

uint64_t sub_24F63E150()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F63E28C, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24F63E28C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F63E2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = type metadata accessor for Player(0);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = type metadata accessor for UpdateFriendRequestAction.PlayerInfo(0);
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F63E428, 0, 0);
}

uint64_t sub_24F63E428()
{
  sub_24F63FFF8(v0[13], v0[21], type metadata accessor for UpdateFriendRequestAction.PlayerInfo);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[21];
    v0[22] = *v1;
    v0[23] = v1[1];
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
    v3 = swift_task_alloc();
    v0[24] = v3;
    *v3 = v0;
    v3[1] = sub_24F63E5B8;

    return MEMORY[0x28217F228](v0 + 2, v2, v2);
  }

  else
  {
    sub_24F640060(v0[21], v0[12], type metadata accessor for Player);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24F63E5B8()
{
  *(*v1 + 200) = v0;

  if (v0)
  {

    v2 = sub_24F63ECF4;
  }

  else
  {
    v2 = sub_24F63E6D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F63E6D4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  *(v0 + 224) = 1;
  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  v4 = sub_24E650FC4();
  *v3 = v0;
  v3[1] = sub_24F63E7BC;
  v5 = *(v0 + 112);

  return MEMORY[0x28217F4B0](v0 + 88, v0 + 224, v5, &type metadata for FriendRequestsDataIntent, v4, v1, v2);
}

uint64_t sub_24F63E7BC()
{
  *(*v1 + 216) = v0;

  if (v0)
  {

    v2 = sub_24F63EED0;
  }

  else
  {
    v2 = sub_24F63E8D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F63E8D8()
{
  v34 = v1;
  v2 = v1[11];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v6 = v1[16];
    v5 = v1[17];
    while (v4 < *(v2 + 16))
    {
      v8 = v1[22];
      v7 = v1[23];
      v0 = v1[17];
      sub_24F63FFF8(v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, v0, type metadata accessor for Player);
      v9 = *v0 == v8 && *(v5 + 8) == v7;
      if (v9 || (sub_24F92CE08() & 1) != 0)
      {
        v11 = v1[19];
        v12 = v1[17];

        sub_24F640060(v12, v11, type metadata accessor for Player);
        v10 = 0;
        goto LABEL_12;
      }

      ++v4;
      sub_24E71BF38(v1[17]);
      if (v3 == v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_14;
  }

LABEL_10:

  v10 = 1;
LABEL_12:
  v13 = v1[18];
  v14 = v1[19];
  v15 = v1[15];
  v16 = v1[16];
  (*(v16 + 56))(v14, v10, 1, v15);
  sub_24E60169C(v14, v13, &unk_27F23E1F0);
  v17 = (*(v16 + 48))(v13, 1, v15);
  v18 = v1[18];
  v19 = v1[19];
  if (v17 != 1)
  {
    v31 = v1[12];
    sub_24E601704(v1[19], &unk_27F23E1F0);
    sub_24F640060(v18, v31, type metadata accessor for Player);
    __swift_destroy_boxed_opaque_existential_1((v1 + 2));

    v30 = v1[1];
    goto LABEL_18;
  }

  sub_24E601704(v1[18], &unk_27F23E1F0);
  sub_24F6400C8();
  v0 = swift_allocError();
  *v20 = 1;
  swift_willThrow();
  sub_24E601704(v19, &unk_27F23E1F0);
  __swift_destroy_boxed_opaque_existential_1((v1 + 2));
  if (qword_27F2113E8 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v21 = sub_24F9220D8();
  __swift_project_value_buffer(v21, qword_27F39E808);
  v22 = v0;
  v23 = sub_24F9220B8();
  v24 = sub_24F92BDB8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33 = v26;
    *v25 = 136315138;
    swift_getErrorValue();
    v27 = sub_24F92CFE8();
    v29 = sub_24E7620D4(v27, v28, &v33);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_24E5DD000, v23, v24, "UpdateFriendRequestActionImplementation perform: Unable to build player from player info --- Error: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530542D0](v26, -1, -1);
    MEMORY[0x2530542D0](v25, -1, -1);
  }

  swift_willThrow();

  v30 = v1[1];
LABEL_18:

  return v30();
}

uint64_t sub_24F63ECF4()
{
  v14 = v0;
  v1 = *(v0 + 200);
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E808);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_24F92CFE8();
    v10 = sub_24E7620D4(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "UpdateFriendRequestActionImplementation perform: Unable to build player from player info --- Error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24F63EED0()
{
  v14 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 216);
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E808);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_24F92CFE8();
    v10 = sub_24E7620D4(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "UpdateFriendRequestActionImplementation perform: Unable to build player from player info --- Error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24F63F0B4(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [objc_opt_self() proxyForLocalPlayer];
  v11 = [v10 friendServicePrivate];

  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 17) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v7 + 32))(v13 + v12, v9, v6);
  aBlock[4] = sub_24F63FF60;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E9FABA0;
  aBlock[3] = &block_descriptor_166;
  v14 = _Block_copy(aBlock);

  [v11 didAccept:a2 & 1 friendRequest:a3 handler:v14];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

uint64_t sub_24F63F2C4(void *a1, char a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v5 = sub_24F9220D8();
    __swift_project_value_buffer(v5, qword_27F39E808);
    v6 = a1;
    v7 = sub_24F9220B8();
    v8 = sub_24F92BDB8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25 = v11;
      *v9 = 136315394;
      if (a2)
      {
        v12 = 0x747065636361;
      }

      else
      {
        v12 = 0x65726F6E6769;
      }

      v13 = sub_24E7620D4(v12, 0xE600000000000000, &v25);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2112;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v15;
      *v10 = v15;
      _os_log_impl(&dword_24E5DD000, v7, v8, "UpdateFriendRequestActionImplementation: Unable to %s friend request: %@", v9, 0x16u);
      sub_24E601704(v10, &qword_27F227B20);
      MEMORY[0x2530542D0](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x2530542D0](v11, -1, -1);
      MEMORY[0x2530542D0](v9, -1, -1);
    }

    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0);
    return sub_24F92B788();
  }

  else
  {
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v17 = sub_24F9220D8();
    __swift_project_value_buffer(v17, qword_27F39E808);
    v18 = sub_24F9220B8();
    v19 = sub_24F92BD98();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25 = v21;
      *v20 = 136315138;
      if (a2)
      {
        v22 = 0x6465747065636361;
      }

      else
      {
        v22 = 0x6465726F6E6769;
      }

      if (a2)
      {
        v23 = 0xE800000000000000;
      }

      else
      {
        v23 = 0xE700000000000000;
      }

      v24 = sub_24E7620D4(v22, v23, &v25);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_24E5DD000, v18, v19, "UpdateFriendRequestActionImplementation: Successfully %s friend request", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x2530542D0](v21, -1, -1);
      MEMORY[0x2530542D0](v20, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0);
    return sub_24F92B798();
  }
}

uint64_t sub_24F63F628()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_24F63F674()
{
  result = qword_27F2163C8;
  if (!qword_27F2163C8)
  {
    type metadata accessor for UpdateFriendRequestAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2163C8);
  }

  return result;
}

uint64_t sub_24F63F6CC()
{
  result = sub_24F92A638();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F63F74C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A638();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F63F7CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A638();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F63F83C(uint64_t a1, char a2)
{
  *(v2 + 56) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_24F63F860, 0, 0);
}

uint64_t sub_24F63F860()
{
  v1 = *(v0 + 16);
  v2 = sub_24F92B098();
  v3 = [objc_opt_self() playerFromPlayerID_];

  v4 = [v3 internal];
  *(v0 + 24) = v4;

  v5 = v1 + *(type metadata accessor for Player(0) + 60);
  if (*(v5 + 8))
  {
    v6 = *(v5 + 40);
    v7 = [objc_allocWithZone(MEMORY[0x277D0C160]) init];
    v8 = sub_24F92B098();
    [v7 setFriendCode_];

    v9 = sub_24F92B098();
    [v7 setSenderHandle_];

    if (v6)
    {

      v10 = sub_24F92B098();
    }

    else
    {
      v10 = 0;
    }

    [v7 setContactID_];

    [v4 setInboxEntry_];
  }

  v11 = *(v0 + 56);
  v12 = swift_task_alloc();
  *(v0 + 32) = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v4;
  v13 = swift_task_alloc();
  *(v0 + 40) = v13;
  *v13 = v0;
  v13[1] = sub_24F63FAB4;
  v14 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v13, 0, 0, 0xD000000000000027, 0x800000024FA77780, sub_24F63FEC0, v12, v14);
}

uint64_t sub_24F63FAB4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24F63FC34;
  }

  else
  {

    v2 = sub_24F63FBD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F63FBD0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F63FC34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F63FCA0()
{
  v1 = *(type metadata accessor for UpdateFriendRequestActionImplementation() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = sub_24F92A638();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_24F63FD8C(uint64_t a1)
{
  v4 = v1[4];
  v5 = *(type metadata accessor for UpdateFriendRequestActionImplementation() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E614970;

  return sub_24F63DFFC(a1, v7, v8, v1 + v6, v9, v4);
}

uint64_t sub_24F63FECC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 17) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F63FF60(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0);
  v3 = *(v1 + 16);

  return sub_24F63F2C4(a1, v3);
}

uint64_t block_copy_helper_166(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F63FFF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F640060(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F6400C8()
{
  result = qword_27F24B348;
  if (!qword_27F24B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B348);
  }

  return result;
}

unint64_t sub_24F640130()
{
  result = qword_27F24B350[0];
  if (!qword_27F24B350[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F24B350);
  }

  return result;
}

uint64_t sub_24F640184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v10 = type metadata accessor for CardCompactView();
  (*(*(a4 - 8) + 32))(a6 + *(v10 + 44), a2, a4);
  v11 = *(v10 + 48);
  v12 = sub_24F923E98();
  (*(*(v12 - 8) + 32))(a6 + v11, a3, v12);
  return sub_24F6402C8(sub_24E8CA6B0, 0);
}

uint64_t sub_24F6402C8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for CardSafeArea(0);

  return sub_24F9233C8();
}

void sub_24F64034C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = type metadata accessor for CardLayoutMetrics.CardHeight(0);
  MEMORY[0x28223BE20](v3 - 8);
  v89 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B3D8);
  v91 = a1;
  v7 = a1[3];
  v86 = a1[2];
  v8 = a1[4];
  v74 = v7;
  v75 = v8;
  type metadata accessor for CardContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216590);
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();
  swift_getTupleTypeMetadata2();
  v77 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_24F927108();
  v84 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v78 = v54 - v10;
  type metadata accessor for CardHeightViewModifier(255);
  v71 = v9;
  v11 = sub_24F924038();
  v85 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v82 = v54 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40);
  swift_getAssociatedTypeWitness();
  sub_24F927598();
  swift_getTupleTypeMetadata2();
  v79 = sub_24F927808();
  v80 = swift_getWitnessTable();
  sub_24F924E08();
  v73 = v11;
  v13 = sub_24F924038();
  v81 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v76 = v54 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E040);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170A0);
  v15 = sub_24F924038();
  v16 = swift_getWitnessTable();
  v70 = v16;
  v17 = sub_24F645410(&qword_27F217CC0, type metadata accessor for CardHeightViewModifier);
  v114 = v16;
  v115 = v17;
  v18 = swift_getWitnessTable();
  v72 = v18;
  v19 = swift_getWitnessTable();
  v112 = v18;
  v113 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_24E6A4C1C();
  v22 = sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
  v110 = v20;
  v111 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_24E602068(&qword_27F217098, &qword_27F2170A0);
  v108 = v23;
  v109 = v24;
  v25 = swift_getWitnessTable();
  v102 = v13;
  v103 = &type metadata for GameOverlayViewPredicate;
  v63 = v13;
  v104 = v15;
  v105 = v20;
  v62 = v20;
  v106 = v21;
  v107 = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v68 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v65 = v54 - v26;
  v27 = sub_24F924038();
  v69 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v64 = v54 - v28;
  v102 = v13;
  v103 = &type metadata for GameOverlayViewPredicate;
  v104 = v15;
  v105 = v20;
  v106 = v21;
  v107 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = OpaqueTypeConformance2;
  v30 = sub_24E6BC1C8();
  v100 = OpaqueTypeConformance2;
  v101 = v30;
  v31 = swift_getWitnessTable();
  v102 = v27;
  v103 = v31;
  v54[1] = v27;
  v32 = v31;
  v54[3] = v31;
  v33 = swift_getOpaqueTypeMetadata2();
  v58 = v33;
  v66 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v54[4] = v54 - v34;
  v35 = type metadata accessor for CardSafeArea(255);
  v57 = v35;
  v102 = v27;
  v103 = v32;
  v36 = swift_getOpaqueTypeConformance2();
  v56 = v36;
  v55 = sub_24F645410(&qword_27F214D10, type metadata accessor for CardSafeArea);
  v102 = v33;
  v103 = v35;
  v104 = v36;
  v105 = v55;
  v59 = MEMORY[0x277CE0C50];
  v37 = swift_getOpaqueTypeMetadata2();
  v61 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v54[0] = v54 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v54[2] = v54 - v40;
  v41 = v86;
  v42 = v74;
  v96 = v86;
  v97 = v74;
  v43 = v75;
  v44 = v88;
  v98 = v75;
  v99 = v88;
  sub_24F924C88();
  v45 = v78;
  sub_24F9270F8();
  v46 = *(v91 + 12);
  WitnessTable = *(v91 + 11);
  v47 = v87;
  (*(v43 + 56))(v44 + WitnessTable, 1, v44 + v46, v42, v43);
  v48 = v89;
  sub_24E8D2DD8(v47, v89);
  sub_24F3AC968(v47, type metadata accessor for CardLayoutMetrics);
  v49 = v82;
  v50 = v71;
  sub_24F4E8DBC(v48, v71, v70, v82);
  sub_24F3AC968(v48, type metadata accessor for CardLayoutMetrics.CardHeight);
  (*(v84 + 8))(v45, v50);
  v92 = v41;
  v93 = v42;
  v94 = v43;
  v95 = v44;
  sub_24F927618();
  v51 = v76;
  v52 = v73;
  sub_24F926088();
  (*(v85 + 8))(v49, v52);
  v53 = v63;
  sub_24E739274();
  (*(v81 + 8))(v51, v53);
  sub_24E739404();
}

uint64_t sub_24F640F44()
{
  (*(*(v6 - 512) + 8))(v4, v0);
  v7 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(v6 - 624);
  v10 = *(v6 - 648);
  sub_24E739418(v3 + *(v6 - 392), v10, v7, *(v6 - 632), AssociatedConformanceWitness);
  (*(*(v6 - 504) + 8))(v1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68);
  sub_24F9233D8();
  v11 = *(v6 - 656);
  v12 = *(v6 - 592);
  v13 = *(v6 - 600);
  v14 = *(v6 - 608);
  v15 = *(v6 - 616);
  sub_24F9261A8();

  (*(*(v6 - 528) + 8))(v9, v12);
  *(v6 - 200) = v12;
  *(v6 - 192) = v13;
  *(v6 - 184) = v14;
  *(v6 - 176) = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = *(v6 - 640);
  sub_24E7896B8(v11, v5, OpaqueTypeConformance2);
  v18 = *(*(v6 - 568) + 8);
  v18(v11, v5);
  sub_24E7896B8(v17, v5, OpaqueTypeConformance2);
  return (v18)(v17, v5);
}

uint64_t sub_24F64112C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a1;
  v26 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B3D8);
  v8 = a3;
  type metadata accessor for CardContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216590);
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_24F927018();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v22[-v14];
  v16 = v8;
  v17 = a4;
  type metadata accessor for CardCompactView();
  v18 = v25;
  v23 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v27 = a2;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  sub_24F9249A8();
  sub_24F927008();
  v19 = swift_getWitnessTable();
  sub_24E7896B8(v12, v9, v19);
  v20 = *(v10 + 8);
  v20(v12, v9);
  v34 = 0;
  v35 = 0;
  v36 = (v23 & 1) == 0;
  v37[0] = &v34;
  (*(v10 + 16))(v12, v15, v9);
  v37[1] = v12;
  v33[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA38);
  v33[1] = v9;
  v31 = sub_24F314B24();
  v32 = v19;
  sub_24F57BA64(v37, 2uLL, v33);
  v20(v15, v9);
  return (v20)(v12, v9);
}

uint64_t sub_24F641424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a5;
  v46 = a4;
  v8 = type metadata accessor for CardCompactView();
  v58 = *(v8 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v8);
  v56 = &v46 - v9;
  v51 = sub_24F923E98();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 - 8);
  MEMORY[0x28223BE20](v12);
  v47 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for CardContent();
  v57 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v62 = &v46 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216590);
  v19 = sub_24F924038();
  v59 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v52 = &v46 - v23;
  v24 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v25 = 0x3FF0000000000000;
  if (v24)
  {
    v25 = 0;
  }

  v54 = v25;
  v55 = (v24 & 1) == 0;
  if (v24)
  {
    v26 = 512;
  }

  else
  {
    v26 = 0;
  }

  v53 = v26;
  (*(v14 + 16))(v17, a1 + *(v8 + 44), a2);
  v27 = v47;
  (*(v11 + 16))(v47, a1, a3);
  v28 = a1;
  v29 = v49;
  (*(v50 + 16))(v49, a1 + *(v8 + 48), v51);
  v30 = v27;
  v31 = v46;
  sub_24F641B10(v17, v30, v29, a2, a3, v62);
  v32 = v58;
  v33 = v56;
  (*(v58 + 16))(v56, v28, v8);
  v34 = v32;
  v35 = (*(v32 + 80) + 40) & ~*(v32 + 80);
  v36 = swift_allocObject();
  *(v36 + 2) = a2;
  *(v36 + 3) = a3;
  *(v36 + 4) = v31;
  (*(v34 + 32))(&v36[v35], v33, v8);
  type metadata accessor for CGSize(0);
  v37 = v48;
  WitnessTable = swift_getWitnessTable();
  sub_24F645410(&qword_27F224B90, type metadata accessor for CGSize);
  v39 = v62;
  sub_24F9264C8();

  (*(v57 + 8))(v39, v37);
  v40 = sub_24E602068(&qword_27F216588, &qword_27F216590);
  v68[2] = WitnessTable;
  v68[3] = v40;
  v41 = swift_getWitnessTable();
  v42 = v52;
  sub_24E7896B8(v21, v19, v41);
  v43 = v59;
  v44 = *(v59 + 8);
  v44(v21, v19);
  v66[0] = 0;
  v66[1] = v55;
  v66[2] = v54;
  v67 = v53;
  v68[0] = v66;
  (*(v43 + 16))(v21, v42, v19);
  v68[1] = v21;
  v65[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B3D8);
  v65[1] = v19;
  v63 = sub_24F645458();
  v64 = v41;
  sub_24F57BA64(v68, 2uLL, v65);
  v44(v42, v19);
  return (v44)(v21, v19);
}

uint64_t sub_24F641B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v10 = type metadata accessor for CardContent();
  (*(*(a5 - 8) + 32))(a6 + *(v10 + 44), a2, a5);
  v11 = *(v10 + 48);
  v12 = sub_24F923E98();
  v13 = *(*(v12 - 8) + 32);

  return v13(a6 + v11, a3, v12);
}

uint64_t sub_24F641C24(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for CardCompactView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68);
  sub_24F9233D8();
  if (_s12GameStoreKit15PageEnvironmentV4isAXSbvg_0())
  {
    v1 = 0.0;
  }

  else
  {
    v2 = 0.0;
  }

  if (sub_24F923308())
  {
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F645410(&qword_27F214D10, type metadata accessor for CardSafeArea);
    sub_24F91FD78();
  }
}

uint64_t sub_24F641DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
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
  v22 = type metadata accessor for CardCompactView();
  v23 = v42;
  (*(a4 + 72))(2, v47 + *(v22 + 44), 1, v47 + *(v22 + 48), v18, a4);
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

uint64_t sub_24F6422A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v14 = type metadata accessor for CardCompactView();
  (*(a4 + 72))(12, a1 + *(v14 + 44), 1, a1 + *(v14 + 48), a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24E7896B8(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = *(v8 + 8);
  v16(v10, AssociatedTypeWitness);
  sub_24E7896B8(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v16)(v13, AssociatedTypeWitness);
}

uint64_t sub_24F64246C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40);
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v49 - v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A578);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213F90);
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8);
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();
  sub_24F924E38();
  swift_getTupleTypeMetadata2();
  v70 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_24F927108();
  v71 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v67 = &v49 - v7;
  v55 = v6;
  v8 = sub_24F924038();
  v72 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v66 = &v49 - v9;
  v60 = v8;
  v10 = sub_24F924038();
  v73 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v68 = &v49 - v11;
  sub_24F92C4A8();
  v12 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_24F924E08();
  v13 = sub_24F924038();
  v54 = swift_getWitnessTable();
  v97 = v54;
  v98 = MEMORY[0x277CDF918];
  v56 = swift_getWitnessTable();
  v95 = v56;
  v96 = MEMORY[0x277CDFC60];
  v14 = v10;
  v59 = v10;
  v15 = swift_getWitnessTable();
  v58 = v15;
  v62 = sub_24E6A4C1C();
  v87 = &type metadata for GameOverlayViewPredicate;
  v88 = v62;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = OpaqueTypeConformance2;
  v17 = swift_getWitnessTable();
  v93 = v15;
  v94 = v17;
  v53 = v13;
  v18 = swift_getWitnessTable();
  v87 = v14;
  v88 = v78;
  v89 = v13;
  v90 = v15;
  v91 = OpaqueTypeConformance2;
  v92 = v18;
  v19 = v18;
  v63 = MEMORY[0x277CE0E68];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v50 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v61 = &v49 - v22;
  v23 = type metadata accessor for CardLayoutMetrics(0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = a1;
  v27 = *(v4 + 56);
  v52 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v74;
  v51 = v12;
  v29 = v4;
  v27(v24);
  sub_24F924C98();
  v83 = *(v26 + 16);
  v30 = v83;
  v84 = v12;
  v85 = v4;
  v86 = v28;
  v31 = v67;
  sub_24F9270F8();
  v32 = v66;
  v33 = v55;
  sub_24F926A38();
  (*(v71 + 8))(v31, v33);
  _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  sub_24F927618();
  v34 = v60;
  v35 = v68;
  sub_24F926948();
  (*(v72 + 8))(v32, v34);
  v36 = v75;
  sub_24F924B68();
  v79 = v30;
  v80 = v51;
  v81 = v29;
  v82 = v28;
  v37 = swift_checkMetadataState();
  v38 = v36;
  v39 = v59;
  v40 = v78;
  v41 = v58;
  v42 = v57;
  sub_24F926B08();
  (*(v76 + 8))(v38, v40);
  (*(v73 + 8))(v35, v39);
  sub_24F3AC968(v52, type metadata accessor for CardLayoutMetrics);
  v87 = v39;
  v88 = v40;
  v89 = v37;
  v90 = v41;
  v91 = v42;
  v92 = v19;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v61;
  v45 = v50;
  v46 = OpaqueTypeMetadata2;
  sub_24E7896B8(v50, OpaqueTypeMetadata2, v43);
  v47 = *(v65 + 8);
  v47(v45, v46);
  sub_24E7896B8(v44, v46, v43);
  return (v47)(v44, v46);
}

uint64_t sub_24F642EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v81 = a4;
  v80 = a3;
  v67 = a2;
  v78 = a5;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  v7 = sub_24F927018();
  v66 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v65 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v64 = &v61 - v10;
  swift_getTupleTypeMetadata2();
  v11 = sub_24F927808();
  v63 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v62 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v61 = &v61 - v14;
  v73 = v15;
  v77 = v7;
  v76 = sub_24F924E38();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v82 = &v61 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A578);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213F90);
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v19 = sub_24F927108();
  v71 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v61 - v20;
  v22 = sub_24F924038();
  v72 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8);
  v25 = sub_24F924038();
  v68 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = (&v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v79 = &v61 - v29;
  sub_24F924C98();
  v83 = a2;
  v84 = v80;
  v85 = v81;
  v86 = a1;
  sub_24F9270F8();
  sub_24F927628();
  WitnessTable = swift_getWitnessTable();
  sub_24F926948();
  (*(v71 + 8))(v21, v19);
  v92[4] = WitnessTable;
  v92[5] = MEMORY[0x277CDFC60];
  v30 = swift_getWitnessTable();
  sub_24F926728();
  v72[1](v24, v22);
  v31 = sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
  v92[2] = v30;
  v92[3] = v31;
  v69 = swift_getWitnessTable();
  sub_24E7896B8(v27, v25, v69);
  v32 = v68;
  v33 = *(v68 + 8);
  v72 = v27;
  v34 = v25;
  v71 = v68 + 8;
  v70 = v33;
  v33(v27, v25);
  v35 = type metadata accessor for CardContent();
  if (_s12GameStoreKit15PageEnvironmentV4isAXSbvg_0())
  {
    v36 = v62;
    sub_24F644084(v35, v62);
    v37 = v73;
    v38 = swift_getWitnessTable();
    v39 = v61;
    sub_24E7896B8(v36, v37, v38);
    v40 = *(v63 + 8);
    v40(v36, v37);
    sub_24E7896B8(v39, v37, v38);
    swift_getWitnessTable();
    sub_24ECCCBA0(v36, v37);
    v40(v36, v37);
    v41 = v39;
    v42 = v37;
  }

  else
  {
    v43 = v65;
    sub_24F64437C(v35, v65);
    v44 = v77;
    v45 = swift_getWitnessTable();
    v46 = v64;
    sub_24E7896B8(v43, v44, v45);
    v40 = *(v66 + 8);
    v40(v43, v44);
    sub_24E7896B8(v46, v44, v45);
    v47 = v73;
    swift_getWitnessTable();
    sub_24ECCCC98(v43, v47, v44);
    v40(v43, v44);
    v41 = v46;
    v42 = v44;
  }

  v40(v41, v42);
  v48 = *(v32 + 16);
  v49 = v72;
  v50 = v79;
  v48(v72, v79, v25);
  v92[0] = v49;
  v51 = v75;
  v52 = v74;
  v53 = v82;
  v54 = v76;
  (*(v75 + 16))(v74, v82, v76);
  v92[1] = v52;
  v91[0] = v34;
  v91[1] = v54;
  v89 = v69;
  v55 = swift_getWitnessTable();
  v56 = swift_getWitnessTable();
  v87 = v55;
  v88 = v56;
  v90 = swift_getWitnessTable();
  sub_24F57BA64(v92, 2uLL, v91);
  v57 = *(v51 + 8);
  v57(v53, v54);
  v58 = v70;
  v70(v50, v34);
  v57(v52, v54);
  return v58(v49, v34);
}

uint64_t sub_24F6439CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v62 = a4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v57);
  v58 = &v47 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213F90);
  v9 = sub_24F924038();
  v10 = *(v9 - 8);
  v60 = v9;
  v61 = v10;
  MEMORY[0x28223BE20](v9);
  v56 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v59 = &v47 - v13;
  v65 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A578);
  v17 = sub_24F924038();
  v64 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v63 = &v47 - v21;
  v47 = a2;
  v22 = type metadata accessor for CardContent();
  v49 = *(v22 + 44);
  v48 = *(v22 + 48);
  v50 = *(a3 + 72);
  v23 = a3;
  v50(0, a1, 1, a1 + v48, a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24F926378();
  v25 = *(v65 + 8);
  v65 += 8;
  v51 = v25;
  v25(v16, AssociatedTypeWitness);
  v26 = sub_24E602068(&qword_27F23A570, &qword_27F23A578);
  v69[4] = AssociatedConformanceWitness;
  v69[5] = v26;
  v27 = v17;
  WitnessTable = swift_getWitnessTable();
  v52 = v17;
  sub_24E7896B8(v19, v17, WitnessTable);
  v54 = *(v64 + 8);
  v55 = v64 + 8;
  v28 = v19;
  v54(v19, v27);
  v50(7, a1, 1, a1 + v48, v47, v23);
  LODWORD(v27) = sub_24F9251C8();
  v29 = *(v57 + 36);
  v30 = *MEMORY[0x277CE13B8];
  v31 = sub_24F927748();
  v32 = v58;
  (*(*(v31 - 8) + 104))(&v58[v29], v30, v31);
  *v32 = v27;
  v33 = v32;
  sub_24E602068(&qword_27F214428, &qword_27F213F10);
  v34 = v56;
  sub_24F926418();
  sub_24EAAD700(v33);
  v51(v16, AssociatedTypeWitness);
  v35 = sub_24E602068(&qword_27F213F88, &qword_27F213F90);
  v69[2] = AssociatedConformanceWitness;
  v69[3] = v35;
  v36 = v60;
  v37 = swift_getWitnessTable();
  v38 = v59;
  sub_24E7896B8(v34, v36, v37);
  v39 = v61;
  v40 = *(v61 + 8);
  v40(v34, v36);
  v41 = v28;
  v42 = v28;
  v43 = v63;
  v44 = v52;
  (*(v64 + 16))(v42, v63, v52);
  v69[0] = v41;
  (*(v39 + 16))(v34, v38, v36);
  v69[1] = v34;
  v68[0] = v44;
  v68[1] = v36;
  v66 = WitnessTable;
  v67 = v37;
  sub_24F57BA64(v69, 2uLL, v68);
  v40(v38, v36);
  v45 = v54;
  v54(v43, v44);
  v40(v34, v36);
  return v45(v41, v44);
}

uint64_t sub_24F644084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v30 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v17 = *(a1 + 44);
  v26 = *(a1 + 48);
  v27 = v17;
  v28 = *(v6 + 72);
  v29 = &v25 - v18;
  v25 = v5;
  v28(8, v3, 1, v3 + v26, v5, v6, v16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24E7896B8(v14, AssociatedTypeWitness, AssociatedConformanceWitness);
  v20 = *(v32 + 8);
  v20(v14, AssociatedTypeWitness);
  (v28)(13, v3, 1, v3 + v26, v25, v6);
  sub_24E7896B8(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  v20(v11, AssociatedTypeWitness);
  v21 = *(v32 + 16);
  v22 = v29;
  v21(v11, v29, AssociatedTypeWitness);
  v36[0] = v11;
  v23 = v30;
  v21(v30, v14, AssociatedTypeWitness);
  v36[1] = v23;
  v35[0] = AssociatedTypeWitness;
  v35[1] = AssociatedTypeWitness;
  v33 = AssociatedConformanceWitness;
  v34 = AssociatedConformanceWitness;
  sub_24F57BA64(v36, 2uLL, v35);
  v20(v14, AssociatedTypeWitness);
  v20(v22, AssociatedTypeWitness);
  v20(v23, AssociatedTypeWitness);
  return (v20)(v11, AssociatedTypeWitness);
}

uint64_t sub_24F64437C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v5 = a1[3];
  v4 = a1[4];
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  v6 = sub_24F927018();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v16 - v11;
  sub_24F924998();
  v16[4] = a1[2];
  v16[5] = v5;
  v16[6] = v4;
  v17 = v2;
  sub_24F927008();
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v9, v6, WitnessTable);
  v14 = *(v7 + 8);
  v14(v9, v6);
  sub_24E7896B8(v12, v6, WitnessTable);
  return (v14)(v12, v6);
}

uint64_t sub_24F644590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a3;
  v23 = a2;
  v24 = a1;
  v25 = a6;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A578);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213F90);
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8);
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();
  sub_24F924E38();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  sub_24F924038();
  sub_24F92C4A8();
  v8 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21[0] = swift_getWitnessTable();
  v21[1] = sub_24F924E08();
  v9 = sub_24F924038();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v21 - v14;
  v26 = v22;
  v27 = a4;
  v28 = v8;
  v29 = v23;
  sub_24F927618();
  WitnessTable = swift_getWitnessTable();
  v35 = MEMORY[0x277CDF918];
  v32 = swift_getWitnessTable();
  v33 = MEMORY[0x277CDFC60];
  v16 = swift_getWitnessTable();
  sub_24F926088();
  v17 = swift_getWitnessTable();
  v30 = v16;
  v31 = v17;
  v18 = swift_getWitnessTable();
  sub_24E7896B8(v12, v9, v18);
  v19 = *(v10 + 8);
  v19(v12, v9);
  sub_24E7896B8(v15, v9, v18);
  return (v19)(v15, v9);
}

uint64_t sub_24F644A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v30 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v27 = &v26 - v12;
  v13 = sub_24F92C4A8();
  v29 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v28 = &v26 - v17;
  v18 = type metadata accessor for CardContent();
  if (_s12GameStoreKit15PageEnvironmentV4isAXSbvg_0())
  {
    (*(v8 + 56))(v15, 1, 1, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  }

  else
  {
    (*(a3 + 72))(11, a1, 1, a1 + *(v18 + 48), a2, a3);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20 = v27;
    sub_24E7896B8(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
    v21 = *(v8 + 8);
    v21(v10, AssociatedTypeWitness);
    sub_24E7896B8(v20, AssociatedTypeWitness, AssociatedConformanceWitness);
    v21(v20, AssociatedTypeWitness);
    (*(v8 + 32))(v15, v10, AssociatedTypeWitness);
    (*(v8 + 56))(v15, 0, 1, AssociatedTypeWitness);
  }

  v22 = v28;
  sub_24E8D5004(v15, v28);
  v23 = *(v29 + 8);
  v23(v15, v13);
  v31 = AssociatedConformanceWitness;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v22, v13, WitnessTable);
  return (v23)(v22, v13);
}

uint64_t sub_24F644DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
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
  v17 = type metadata accessor for CardContent();
  v18 = *(v17 + 44);
  v26 = *(v17 + 48);
  v27 = v18;
  v28 = *(a3 + 72);
  v28(8, a1, 1, a1 + v26, a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24E7896B8(v14, AssociatedTypeWitness, AssociatedConformanceWitness);
  v20 = *(v32 + 8);
  v20(v14, AssociatedTypeWitness);
  v28(13, a1, 1, a1 + v26, v25, a3);
  sub_24E7896B8(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  v20(v11, AssociatedTypeWitness);
  v21 = *(v32 + 16);
  v22 = v29;
  v21(v11, v29, AssociatedTypeWitness);
  v37 = 0x4024000000000000;
  v38 = 0;
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

uint64_t sub_24F645110()
{

  return swift_deallocObject();
}

uint64_t sub_24F6451A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (type metadata accessor for CardCompactView() - 8);
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

uint64_t sub_24F645370(double *a1)
{
  type metadata accessor for CardCompactView();

  return sub_24F641C24(a1);
}

uint64_t sub_24F645410(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F645458()
{
  result = qword_27F24B3E0;
  if (!qword_27F24B3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B3D8);
    sub_24F6454DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B3E0);
  }

  return result;
}

unint64_t sub_24F6454DC()
{
  result = qword_27F24B3E8;
  if (!qword_27F24B3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F24B3F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B3E8);
  }

  return result;
}

uint64_t sub_24F645568()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B3D8);
  type metadata accessor for CardContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216590);
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  type metadata accessor for CardHeightViewModifier(255);
  sub_24F924038();
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
  sub_24F645410(&qword_27F217CC0, type metadata accessor for CardHeightViewModifier);
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
  type metadata accessor for CardSafeArea(255);
  swift_getOpaqueTypeConformance2();
  sub_24F645410(&qword_27F214D10, type metadata accessor for CardSafeArea);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F645ABC()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A578);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213F90);
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8);
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();
  sub_24F924E38();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40);
  sub_24F92C4A8();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E6A4C1C();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F645EBC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Leaderboard.LeaderboardType(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[14];

  return v15(v16, a2, v14);
}

uint64_t sub_24F646054(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Leaderboard.LeaderboardType(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[14];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for LeaderboardCard()
{
  result = qword_27F24B478;
  if (!qword_27F24B478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F646224(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B568);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F649838();
  sub_24F92D128();
  LOBYTE(v18) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for LeaderboardCard();
    LOBYTE(v18) = 1;
    type metadata accessor for Leaderboard.LeaderboardType(0);
    sub_24F6499F0(&qword_27F238FC8, type metadata accessor for Leaderboard.LeaderboardType);
    sub_24F92CD48();
    LOBYTE(v18) = 2;
    sub_24F9289E8();
    sub_24F6499F0(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CCF8();
    LOBYTE(v18) = 3;
    sub_24F92CD08();
    LOBYTE(v18) = 4;
    sub_24F92CD38();
    LOBYTE(v18) = 5;
    sub_24F92CD38();
    LOBYTE(v18) = 6;
    sub_24F92CD38();
    v18 = *(v3 + *(v9 + 44));
    v24 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
    sub_24F64988C(&qword_27F21BC30, &qword_27F213E28);
    sub_24F92CD48();
    v10 = (v3 + *(v9 + 48));
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v14 = v10[4];
    v15 = v10[5];
    v18 = *v10;
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v24 = 8;
    sub_24E68FE2C(v18, v11);
    sub_24F005230();
    sub_24F92CCF8();
    sub_24E687F7C(v18, v19);
    LOBYTE(v18) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    LOBYTE(v18) = 10;
    sub_24F929608();
    sub_24F6499F0(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F646750@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v5 - 8);
  *&v45 = &v42 - v6;
  v7 = type metadata accessor for Leaderboard.LeaderboardType(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B558);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v11 = &v42 - v10;
  v12 = type metadata accessor for LeaderboardCard();
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 24);
  v17 = sub_24F9289E8();
  v18 = *(*(v17 - 8) + 56);
  v54 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = &v14[v12[12]];
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  v53 = v19;
  *v19 = 0u;
  v20 = &v14[v12[13]];
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v52 = v20;
  sub_24E61DA68(&v56, v20, qword_27F21B590);
  v21 = v12[14];
  v22 = sub_24F929608();
  v23 = *(*(v22 - 8) + 56);
  v50 = v21;
  v55 = v14;
  v23(&v14[v21], 1, 1, v22);
  v24 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24F649838();
  v47 = v11;
  v25 = v49;
  sub_24F92D108();
  if (v25)
  {
    v26 = v55;
    __swift_destroy_boxed_opaque_existential_1(v51);
    sub_24E601704(v26 + v54, &qword_27F213FB0);
    sub_24E687F7C(*v53, v53[1]);
    sub_24E601704(v52, qword_27F24EC90);
    return sub_24E601704(v26 + v50, &qword_27F213E68);
  }

  else
  {
    *&v42 = v7;
    v49 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v60 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v27 = v57;
    v28 = v55;
    *v55 = v56;
    v28[1] = v27;
    *(v28 + 4) = v58;
    LOBYTE(v56) = 1;
    sub_24F6499F0(&qword_27F238FB8, type metadata accessor for Leaderboard.LeaderboardType);
    sub_24F92CC68();
    sub_24F0C2344(v9, v28 + v49[5]);
    LOBYTE(v56) = 2;
    sub_24F6499F0(&qword_27F214018, MEMORY[0x277D21C48]);
    v29 = v45;
    sub_24F92CC18();
    sub_24E61DA68(v29, v28 + v54, &qword_27F213FB0);
    LOBYTE(v56) = 3;
    v30 = sub_24F92CC28();
    v31 = v49;
    v32 = (v28 + v49[7]);
    *v32 = v30;
    v32[1] = v33;
    LOBYTE(v56) = 4;
    *(v28 + v31[8]) = sub_24F92CC58();
    LOBYTE(v56) = 5;
    *(v28 + v31[9]) = sub_24F92CC58();
    LOBYTE(v56) = 6;
    *(v28 + v31[10]) = sub_24F92CC58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
    v60 = 7;
    sub_24F64988C(&qword_27F2196A8, &qword_27F213E38);
    sub_24F92CC68();
    *(v55 + v49[11]) = v56;
    v60 = 8;
    sub_24E688020();
    sub_24F92CC18();
    v35 = v58;
    v34 = v59;
    v36 = v53;
    v37 = *v53;
    v38 = v53[1];
    v45 = v56;
    v42 = v57;
    sub_24E687F7C(v37, v38);
    v39 = v42;
    *v36 = v45;
    *(v36 + 1) = v39;
    v36[4] = v35;
    v36[5] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v60 = 9;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v56, v52, qword_27F24EC90);
    LOBYTE(v56) = 10;
    sub_24F6499F0(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    (*(v46 + 8))(v47, v48);
    v40 = v55;
    sub_24E61DA68(v44, v55 + v50, &qword_27F213E68);
    sub_24F649928(v40, v43, type metadata accessor for LeaderboardCard);
    __swift_destroy_boxed_opaque_existential_1(v51);
    return sub_24F649990(v40, type metadata accessor for LeaderboardCard);
  }
}

uint64_t sub_24F647224(uint64_t a1)
{
  v2 = sub_24F649838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F647260(uint64_t a1)
{
  v2 = sub_24F649838();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F64731C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27[0] = a1;
  v27[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40);
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B498);
  MEMORY[0x28223BE20](v6);
  v8 = v27 - v7;
  *v8 = sub_24F924C88();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B4A0);
  sub_24F6476CC(a1, v2, &v8[*(v9 + 44)]);
  v10 = *(v2 + 8);
  v11 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B4A8) + 36)];
  v12 = *(sub_24F924258() + 20);
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_24F924B38();
  (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
  *v11 = v10;
  *(v11 + 1) = v10;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB48);
  v16 = *(v15 + 36);
  v17 = type metadata accessor for GradientBackground(0);
  (*(*(v17 - 8) + 56))(&v11[v16], 1, 1, v17);
  *&v11[*(v15 + 40)] = 0;
  v18 = sub_24F927618();
  v20 = v19;
  v21 = &v8[*(v6 + 36)];
  v22 = sub_24E6A4C1C();
  sub_24F924B68();
  v27[4] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E810);
  v28[0] = &type metadata for GameOverlayViewPredicate;
  v28[1] = v22;
  swift_getOpaqueTypeConformance2();
  sub_24F0C1E88();
  sub_24F927578();
  v23 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238ED8) + 36)];
  *v23 = v18;
  v23[1] = v20;
  v24 = type metadata accessor for LeaderboardCard();
  sub_24E60169C(v27[0] + *(v24 + 52), v28, qword_27F24EC90);
  sub_24E601704(v28, qword_27F21B590);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v25 = sub_24F9248C8();
  __swift_project_value_buffer(v25, qword_27F39F078);
  sub_24F649674();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return sub_24E601704(v8, &qword_27F24B498);
}

uint64_t sub_24F6476CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B4D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v46 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B4D8);
  MEMORY[0x28223BE20](v47);
  v46 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B4E0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  v22 = type metadata accessor for LeaderboardCard();
  sub_24E60169C(a1 + *(v22 + 24), v21, &qword_27F213FB0);
  sub_24F927618();
  sub_24F9238C8();
  v23 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F18) + 36)];
  v24 = v50;
  *v23 = v49;
  *(v23 + 1) = v24;
  *(v23 + 2) = v51;
  sub_24F924EE8();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v21[*(v16 + 44)];
  v34 = *(sub_24F9251F8() + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_24F924B38();
  (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
  *v33 = v26;
  *(v33 + 1) = v28;
  *(v33 + 2) = v30;
  *(v33 + 3) = v32;
  *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B4E8) + 36)] = 256;
  *v7 = sub_24F924C88();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B4F0);
  sub_24F647BF4(a1, a2, &v7[*(v37 + 44)]);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v7, v11, &qword_27F24B4D0);
  v38 = &v11[*(v47 + 36)];
  v39 = v57;
  *(v38 + 4) = v56;
  *(v38 + 5) = v39;
  *(v38 + 6) = v58;
  v40 = v53;
  *v38 = v52;
  *(v38 + 1) = v40;
  v41 = v55;
  *(v38 + 2) = v54;
  *(v38 + 3) = v41;
  sub_24E6009C8(v11, v14, &qword_27F24B4D8);
  sub_24E60169C(v21, v18, &qword_27F24B4E0);
  v42 = v46;
  sub_24E60169C(v14, v46, &qword_27F24B4D8);
  v43 = v48;
  sub_24E60169C(v18, v48, &qword_27F24B4E0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B4F8);
  sub_24E60169C(v42, v43 + *(v44 + 48), &qword_27F24B4D8);
  sub_24E601704(v14, &qword_27F24B4D8);
  sub_24E601704(v21, &qword_27F24B4E0);
  sub_24E601704(v42, &qword_27F24B4D8);
  return sub_24E601704(v18, &qword_27F24B4E0);
}

uint64_t sub_24F647BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B500);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v46 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B508);
  MEMORY[0x28223BE20](v48);
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  MEMORY[0x28223BE20](v12);
  v49 = &v46 - v13;
  *v7 = sub_24F924C98();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v14 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B510) + 44)];
  v47 = a1;
  sub_24F64824C(a1, a2, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24F93A400;
  v16 = sub_24F925818();
  *(v15 + 32) = v16;
  v17 = sub_24F9257F8();
  *(v15 + 33) = v17;
  v18 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v16)
  {
    v18 = sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v17)
  {
    v18 = sub_24F925848();
  }

  sub_24F923318();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_24E6009C8(v7, v11, &qword_27F24B500);
  v27 = v49;
  v28 = &v11[*(v48 + 36)];
  *v28 = v18;
  *(v28 + 1) = v20;
  *(v28 + 2) = v22;
  *(v28 + 3) = v24;
  *(v28 + 4) = v26;
  v28[40] = 0;
  sub_24E6009C8(v11, v27, &qword_27F24B508);
  v48 = sub_24F924998();
  LOBYTE(v81) = 1;
  sub_24F648F04(v47, &v53);
  v77 = *&v54[10];
  v78[0] = *&v54[12];
  *(v78 + 9) = *(&v54[13] + 1);
  v73 = *&v54[2];
  v74 = *&v54[4];
  v76 = *&v54[8];
  v75 = *&v54[6];
  v71 = v53;
  v72 = *v54;
  v79[6] = *&v54[10];
  v80[0] = *&v54[12];
  *(v80 + 9) = *(&v54[13] + 1);
  v79[2] = *&v54[2];
  v79[3] = *&v54[4];
  v79[5] = *&v54[8];
  v79[4] = *&v54[6];
  v79[1] = *v54;
  v79[0] = v53;
  sub_24E60169C(&v71, v52, &qword_27F24B518);
  sub_24E601704(v79, &qword_27F24B518);
  *(&v68[5] + 7) = v76;
  *(&v68[6] + 7) = v77;
  *(&v68[7] + 7) = v78[0];
  v68[8] = *(v78 + 9);
  *(&v68[1] + 7) = v72;
  *(&v68[2] + 7) = v73;
  *(&v68[3] + 7) = v74;
  *(&v68[4] + 7) = v75;
  *(v68 + 7) = v71;
  LODWORD(v47) = v81;
  v29 = sub_24F9257F8();
  sub_24F923318();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v69 = 0;
  sub_24F927618();
  sub_24F9242E8();
  *&v70[55] = v84;
  *&v70[71] = v85;
  *&v70[87] = v86;
  *&v70[103] = v87;
  *&v70[7] = v81;
  *&v70[23] = v82;
  *&v70[39] = v83;
  v38 = v51;
  sub_24E60169C(v27, v51, &qword_27F24B508);
  v39 = v50;
  sub_24E60169C(v38, v50, &qword_27F24B508);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B520);
  v41 = v39 + *(v40 + 48);
  *v41 = 0;
  *(v41 + 8) = 0;
  v42 = *(v40 + 64);
  *(&v52[4] + 1) = v68[1];
  *(&v52[2] + 1) = v68[0];
  *(&v52[12] + 1) = v68[5];
  *(&v52[14] + 1) = v68[6];
  *(&v52[16] + 1) = v68[7];
  *(&v52[18] + 1) = v68[8];
  *(&v52[6] + 1) = v68[2];
  *(&v52[8] + 1) = v68[3];
  *(&v52[10] + 1) = v68[4];
  *(&v52[36] + 1) = *&v70[80];
  *(&v52[38] + 1) = *&v70[96];
  *(&v52[32] + 1) = *&v70[48];
  *(&v52[34] + 1) = *&v70[64];
  *(&v52[26] + 1) = *v70;
  v43 = v48;
  v52[0] = v48;
  v52[1] = 0;
  v44 = v47;
  LOBYTE(v52[2]) = v47;
  LOBYTE(v52[21]) = v29;
  v52[22] = v31;
  v52[23] = v33;
  v52[24] = v35;
  v52[25] = v37;
  LOBYTE(v52[26]) = 0;
  v52[40] = *&v70[111];
  *(&v52[28] + 1) = *&v70[16];
  *(&v52[30] + 1) = *&v70[32];
  memcpy((v39 + v42), v52, 0x148uLL);
  sub_24E60169C(v52, &v53, &qword_27F24B528);
  sub_24E601704(v27, &qword_27F24B508);
  *(&v54[10] + 1) = v68[5];
  *(&v54[12] + 1) = v68[6];
  *(&v54[14] + 1) = v68[7];
  *(&v54[16] + 1) = v68[8];
  *(&v54[2] + 1) = v68[1];
  *(&v54[4] + 1) = v68[2];
  *(&v54[6] + 1) = v68[3];
  *(&v54[8] + 1) = v68[4];
  v53 = v43;
  LOBYTE(v54[0]) = v44;
  *(v54 + 1) = v68[0];
  v55 = v29;
  v56 = v31;
  v57 = v33;
  v58 = v35;
  v59 = v37;
  v60 = 0;
  v66 = *&v70[80];
  *v67 = *&v70[96];
  v64 = *&v70[48];
  v65 = *&v70[64];
  *&v67[15] = *&v70[111];
  v61 = *v70;
  v62 = *&v70[16];
  v63 = *&v70[32];
  sub_24E601704(&v53, &qword_27F24B528);
  return sub_24E601704(v38, &qword_27F24B508);
}

uint64_t sub_24F64824C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v101 = a2;
  v102 = a3;
  v103 = a1;
  v91 = sub_24F9259C8();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v88 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F38);
  MEMORY[0x28223BE20](v89);
  v5 = &v82 - v4;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B530);
  MEMORY[0x28223BE20](v92);
  v95 = &v82 - v6;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B538);
  MEMORY[0x28223BE20](v94);
  v98 = &v82 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B540);
  MEMORY[0x28223BE20](v8 - 8);
  v97 = &v82 - v9;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B548);
  MEMORY[0x28223BE20](v96);
  v100 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v93 = &v82 - v12;
  MEMORY[0x28223BE20](v13);
  v99 = &v82 - v14;
  v15 = type metadata accessor for LeaderboardTimer();
  MEMORY[0x28223BE20](v15);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F50);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v82 - v18;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F58);
  v19 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v21 = &v82 - v20;
  v22 = type metadata accessor for Leaderboard.LeaderboardType(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24F91F648();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F60);
  MEMORY[0x28223BE20](v29 - 8);
  v87 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v82 - v32;
  v34 = type metadata accessor for LeaderboardCard();
  sub_24F649928(v103 + *(v34 + 20), v24, type metadata accessor for Leaderboard.LeaderboardType);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0);
  if ((*(*(v35 - 8) + 48))(v24, 1, v35) == 1)
  {
    sub_24F649990(v24, type metadata accessor for Leaderboard.LeaderboardType);
    v36 = 1;
  }

  else
  {
    (*(v26 + 32))(v28, v24, v25);
    sub_24F91F5C8();
    if (v37 <= 0.0)
    {
      (*(v26 + 8))(v28, v25);
      v46 = 1;
      v45 = v85;
      v44 = v84;
    }

    else
    {
      *&v104 = 0x72656D6974;
      *(&v104 + 1) = 0xE500000000000000;
      sub_24F92C7F8();
      (*(v26 + 16))(&v17[v15[5]], v28, v25);
      *&v106 = 0;
      v104 = 0u;
      v105 = 0u;
      v38 = v15[8];
      v39 = sub_24F92A6D8();
      (*(*(v39 - 8) + 56))(&v17[v38], 1, 1, v39);
      v40 = v15[9];
      v41 = sub_24F929608();
      (*(*(v41 - 8) + 56))(&v17[v40], 1, 1, v41);
      v17[v15[6]] = 0;
      v42 = &v17[v15[7]];
      *(v42 + 32) = 0;
      *v42 = 0u;
      *(v42 + 16) = 0u;
      sub_24E61DA68(&v104, v42, qword_27F21B590);
      sub_24E768848();
      v43 = v83;
      sub_24F921D38();
      (*(v26 + 8))(v28, v25);
      sub_24F649990(v17, type metadata accessor for LeaderboardTimer);
      v44 = v84;
      v45 = v85;
      (*(v84 + 32))(v21, v43, v85);
      v46 = 0;
    }

    (*(v44 + 56))(v21, v46, 1, v45);
    sub_24E6009C8(v21, v33, &qword_27F238F58);
    v36 = 0;
  }

  v47 = (*(v19 + 56))(v33, v36, 1, v86);
  MEMORY[0x28223BE20](v47);
  MEMORY[0x28223BE20](v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F68);
  sub_24F0C2178();
  sub_24F926EA8();
  sub_24F9258D8();
  v49 = v90;
  v50 = v88;
  v51 = v91;
  (*(v90 + 104))(v88, *MEMORY[0x277CE0A10], v91);
  v52 = sub_24F9259F8();

  (*(v49 + 8))(v50, v51);
  KeyPath = swift_getKeyPath();
  v54 = &v5[*(v89 + 36)];
  *v54 = KeyPath;
  v54[1] = v52;
  sub_24F0C2204();
  v55 = v95;
  sub_24F9268B8();
  sub_24E601704(v5, &qword_27F238F38);
  v56 = swift_getKeyPath();
  v57 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F90) + 36);
  *v57 = v56;
  *(v57 + 8) = 2;
  *(v57 + 16) = 0;
  v58 = swift_getKeyPath();
  v59 = v55 + *(v92 + 36);
  *v59 = v58;
  *(v59 + 8) = 0;
  sub_24F927628();
  sub_24F9242E8();
  v60 = v98;
  sub_24E6009C8(v55, v98, &qword_27F24B530);
  v61 = (v60 + *(v94 + 36));
  v62 = v109;
  v61[4] = v108;
  v61[5] = v62;
  v61[6] = v110;
  v63 = v105;
  *v61 = v104;
  v61[1] = v63;
  v64 = v107;
  v61[2] = v106;
  v61[3] = v64;
  v65 = v97;
  sub_24E6009C8(v60, v97, &qword_27F24B538);
  LOBYTE(v60) = sub_24F925828();
  sub_24F923318();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v93;
  sub_24E6009C8(v65, v93, &qword_27F24B540);
  v75 = v74 + *(v96 + 36);
  *v75 = v60;
  *(v75 + 8) = v67;
  *(v75 + 16) = v69;
  *(v75 + 24) = v71;
  *(v75 + 32) = v73;
  *(v75 + 40) = 0;
  v76 = v99;
  sub_24E6009C8(v74, v99, &qword_27F24B548);
  v77 = v87;
  sub_24E60169C(v33, v87, &qword_27F238F60);
  v78 = v100;
  sub_24E60169C(v76, v100, &qword_27F24B548);
  v79 = v102;
  sub_24E60169C(v77, v102, &qword_27F238F60);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B550);
  sub_24E60169C(v78, v79 + *(v80 + 48), &qword_27F24B548);
  sub_24E601704(v76, &qword_27F24B548);
  sub_24E601704(v33, &qword_27F238F60);
  sub_24E601704(v78, &qword_27F24B548);
  return sub_24E601704(v77, &qword_27F238F60);
}

uint64_t sub_24F648F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LeaderboardCard();
  v5 = *(a1 + v4[8]);
  v6 = *(a1 + v4[9]);
  v7 = *(a1 + v4[10]);
  v8 = sub_24F925828();
  sub_24F923318();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *(a1 + v4[11]);

  LOBYTE(a1) = sub_24F925828();
  result = sub_24F923318();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12;
  *(a2 + 48) = v14;
  *(a2 + 56) = v16;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  *(a2 + 88) = v17;
  *(a2 + 96) = a1;
  *(a2 + 104) = v19;
  *(a2 + 112) = v20;
  *(a2 + 120) = v21;
  *(a2 + 128) = v22;
  *(a2 + 136) = 0;
  return result;
}

uint64_t sub_24F64900C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924258();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + 8);
  v9 = *(v8 + 28);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_24F924B38();
  (*(*(v11 - 8) + 104))(&v6[v9], v10, v11);
  *v6 = v7;
  *(v6 + 1) = v7;
  LODWORD(v10) = sub_24F925188();
  sub_24F923658();
  sub_24F649928(v6, a2, MEMORY[0x277CDFC08]);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E7F8) + 36);
  v13 = v24;
  *v12 = *&v23[8];
  *(v12 + 16) = v13;
  *(v12 + 32) = v25;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E800);
  *(a2 + *(v14 + 52)) = v10;
  *(a2 + *(v14 + 56)) = 256;
  v15 = sub_24F927618();
  v17 = v16;
  sub_24F649990(v6, MEMORY[0x277CDFC08]);
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E808) + 36));
  *v18 = v15;
  v18[1] = v17;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E810) + 36);
  v20 = *MEMORY[0x277CE13B8];
  v21 = sub_24F927748();
  return (*(*(v21 - 8) + 104))(a2 + v19, v20, v21);
}

uint64_t sub_24F64922C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LeaderboardCard();
  sub_24E600AEC();

  result = sub_24F925E18();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_24F6492AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for LeaderboardCard() + 48) + 8))
  {

    v3 = sub_24F926E48();
    result = sub_24F9251C8();
  }

  else
  {
    v3 = 0;
    result = 0;
  }

  *a2 = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24F649360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F924B38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 8);
  sub_24E60169C(a1, v15, &qword_27F213F18);
  v10 = v15[1];
  *a2 = v15[0];
  *(a2 + 16) = v10;
  *(a2 + 32) = v16;
  (*(v6 + 104))(v8, *MEMORY[0x277CE0118], v5);
  v11 = sub_24F924258();
  *(a2 + 64) = v11;
  *(a2 + 72) = sub_24F6499F0(&qword_27F212868, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a2 + 40));
  (*(v6 + 16))(boxed_opaque_existential_1 + *(v11 + 20), v8, v5);
  *boxed_opaque_existential_1 = v9;
  boxed_opaque_existential_1[1] = v9;
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24F6495B4()
{
  result = qword_27F24B490;
  if (!qword_27F24B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B490);
  }

  return result;
}

unint64_t sub_24F649674()
{
  result = qword_27F24B4B0;
  if (!qword_27F24B4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B498);
    sub_24F64972C();
    sub_24E602068(&qword_27F238F00, &qword_27F238ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B4B0);
  }

  return result;
}

unint64_t sub_24F64972C()
{
  result = qword_27F24B4B8;
  if (!qword_27F24B4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B4A8);
    sub_24E602068(&qword_27F24B4C0, &qword_27F24B4C8);
    sub_24E602068(&qword_27F22E7A8, &qword_27F21CB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B4B8);
  }

  return result;
}

unint64_t sub_24F649838()
{
  result = qword_27F24B560;
  if (!qword_27F24B560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B560);
  }

  return result;
}

uint64_t sub_24F64988C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247240);
    sub_24F6499F0(a2, type metadata accessor for Player);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F649928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F649990(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F6499F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F649A58()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B498);
  sub_24F649674();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F649AC0()
{
  result = qword_27F24B570;
  if (!qword_27F24B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B570);
  }

  return result;
}

unint64_t sub_24F649B18()
{
  result = qword_27F24B578;
  if (!qword_27F24B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B578);
  }

  return result;
}

unint64_t sub_24F649B70()
{
  result = qword_27F24B580;
  if (!qword_27F24B580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B580);
  }

  return result;
}

__n128 ChallengesHubHeaderShelfConstructionIntent.challengesStats.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t type metadata accessor for ChallengesHubHeaderShelfConstructionIntent()
{
  result = qword_27F24B5B8;
  if (!qword_27F24B5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ChallengesHubHeaderShelfConstructionIntent.pageID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ChallengesHubHeaderShelfConstructionIntent() + 28));

  return v1;
}

uint64_t ChallengesHubHeaderShelfConstructionIntent.game.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ChallengesHubHeaderShelfConstructionIntent() + 32);

  return sub_24E736938(v3, a1);
}

unint64_t ChallengesHubHeaderShelfConstructionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x676E656C6C616863;
  *(inited + 40) = 0xEF73746174537365;
  v4 = *v1;
  v5 = v1[1];
  *(inited + 72) = &type metadata for ChallengesStats;
  v6 = sub_24F649F84();
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 80) = v6;
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x800000024FA48960;
  v7 = v1[2];
  *(inited + 128) = MEMORY[0x277D83B88];
  v8 = sub_24E65901C();
  *(inited + 104) = v7;
  *(inited + 136) = v8;
  *(inited + 144) = 0x726579616C70;
  *(inited + 152) = 0xE600000000000000;
  v9 = type metadata accessor for ChallengesHubHeaderShelfConstructionIntent();
  v10 = v9[6];
  *(inited + 184) = type metadata accessor for Player(0);
  *(inited + 192) = sub_24E7B74F8(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24F64A9F4(v1 + v10, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 200) = 0x444965676170;
  *(inited + 208) = 0xE600000000000000;
  v12 = (v1 + v9[7]);
  v13 = *v12;
  v14 = v12[1];
  v15 = MEMORY[0x277D22580];
  *(inited + 240) = MEMORY[0x277D837D0];
  *(inited + 248) = v15;
  *(inited + 216) = v13;
  *(inited + 224) = v14;
  *(inited + 256) = 1701667175;
  *(inited + 264) = 0xE400000000000000;
  v16 = v9[8];
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  *(inited + 304) = sub_24E736C00();
  v17 = __swift_allocate_boxed_opaque_existential_1((inited + 272));
  sub_24E736938(v1 + v16, v17);

  v18 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v18;
  return result;
}

unint64_t sub_24F649F84()
{
  result = qword_27F24B588;
  if (!qword_27F24B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B588);
  }

  return result;
}

unint64_t sub_24F649FD8()
{
  v1 = *v0;
  v2 = 0x676E656C6C616863;
  v3 = 0x726579616C70;
  v4 = 0x444965676170;
  if (v1 != 3)
  {
    v4 = 1701667175;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_24F64A074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F64AF10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F64A09C(uint64_t a1)
{
  v2 = sub_24F64A8F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F64A0D8(uint64_t a1)
{
  v2 = sub_24F64A8F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesHubHeaderShelfConstructionIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B590);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F64A8F8();
  sub_24F92D128();
  v11 = *v3;
  v10[15] = 0;
  sub_24F64A94C();
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_24F92CD38();
    type metadata accessor for ChallengesHubHeaderShelfConstructionIntent();
    LOBYTE(v11) = 2;
    type metadata accessor for Player(0);
    sub_24E7B74F8(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
    LOBYTE(v11) = 3;
    sub_24F92CD08();
    LOBYTE(v11) = 4;
    type metadata accessor for Game();
    sub_24E7B74F8(&qword_27F214950, type metadata accessor for Game);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ChallengesHubHeaderShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  MEMORY[0x28223BE20](v3 - 8);
  v24 = &v22 - v4;
  v5 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B5A8);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v9 = &v22 - v8;
  v10 = type metadata accessor for ChallengesHubHeaderShelfConstructionIntent();
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24F64A8F8();
  v14 = v26;
  sub_24F92D108();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v26 = v7;
  v15 = v23;
  v16 = v24;
  v29 = 0;
  sub_24F64A9A0();
  sub_24F92CC68();
  *v12 = v28;
  LOBYTE(v28) = 1;
  *(v12 + 2) = sub_24F92CC58();
  LOBYTE(v28) = 2;
  sub_24E7B74F8(&qword_27F213E38, type metadata accessor for Player);
  v17 = v26;
  sub_24F92CC68();
  sub_24E61C0A8(v17, &v12[v10[6]]);
  LOBYTE(v28) = 3;
  v18 = sub_24F92CC28();
  v20 = &v12[v10[7]];
  *v20 = v18;
  v20[1] = v21;
  type metadata accessor for Game();
  LOBYTE(v28) = 4;
  sub_24E7B74F8(&qword_27F214968, type metadata accessor for Game);
  sub_24F92CC18();
  (*(v15 + 8))(v9, v25);
  sub_24E7374E4(v16, &v12[v10[8]]);
  sub_24F64A9F4(v12, v22, type metadata accessor for ChallengesHubHeaderShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_24F64AA5C(v12, type metadata accessor for ChallengesHubHeaderShelfConstructionIntent);
}

unint64_t sub_24F64A8F8()
{
  result = qword_27F24B598;
  if (!qword_27F24B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B598);
  }

  return result;
}

unint64_t sub_24F64A94C()
{
  result = qword_27F24B5A0;
  if (!qword_27F24B5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B5A0);
  }

  return result;
}

unint64_t sub_24F64A9A0()
{
  result = qword_27F24B5B0;
  if (!qword_27F24B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B5B0);
  }

  return result;
}

uint64_t sub_24F64A9F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F64AA5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F64AAD0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[8];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24F64AC1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Player(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_24F64AD54()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24E737854();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F64AE0C()
{
  result = qword_27F24B5C8;
  if (!qword_27F24B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B5C8);
  }

  return result;
}

unint64_t sub_24F64AE64()
{
  result = qword_27F24B5D0;
  if (!qword_27F24B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B5D0);
  }

  return result;
}

unint64_t sub_24F64AEBC()
{
  result = qword_27F24B5D8;
  if (!qword_27F24B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B5D8);
  }

  return result;
}

uint64_t sub_24F64AF10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E656C6C616863 && a2 == 0xEF73746174537365;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA48960 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x444965676170 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000)
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

uint64_t sub_24F64B0E4()
{
  v1 = 0x796C6E4F6E6977;
  if (*v0 != 1)
  {
    v1 = 0x4449656C646E7562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449726579616C70;
  }
}

uint64_t sub_24F64B140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F64B7AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F64B168(uint64_t a1)
{
  v2 = sub_24F64B3A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F64B1A4(uint64_t a1)
{
  v2 = sub_24F64B3A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesHistoryDataIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B5E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v11 = *(v1 + 16);
  v7 = *(v1 + 24);
  v10[1] = *(v1 + 32);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F64B3A4();
  sub_24F92D128();
  v14 = 0;
  v8 = v10[3];
  sub_24F92CCA8();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_24F92CD18();
  v12 = 2;
  sub_24F92CCA8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F64B3A4()
{
  result = qword_27F24B5E8;
  if (!qword_27F24B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B5E8);
  }

  return result;
}

uint64_t ChallengesHistoryDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B5F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F64B3A4();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v9 = sub_24F92CBC8();
  v11 = v10;
  v12 = v9;
  v22 = 1;
  v20 = sub_24F92CC38();
  v21 = 2;
  v13 = sub_24F92CBC8();
  v16 = v15;
  v20 &= 1u;
  v17 = *(v6 + 8);
  v19 = v13;
  v17(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v20;
  *(a2 + 24) = v19;
  *(a2 + 32) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F64B6A8()
{
  result = qword_27F24B5F8;
  if (!qword_27F24B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B5F8);
  }

  return result;
}

unint64_t sub_24F64B700()
{
  result = qword_27F24B600;
  if (!qword_27F24B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B600);
  }

  return result;
}

unint64_t sub_24F64B758()
{
  result = qword_27F24B608;
  if (!qword_27F24B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B608);
  }

  return result;
}

uint64_t sub_24F64B7AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449726579616C70 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796C6E4F6E6977 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
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

uint64_t sub_24F64B8C4(uint64_t a1, uint64_t *a2)
{
  v3[3] = a1;
  v3[4] = v2;
  v3[5] = type metadata accessor for ImpedimentFlowAuthorityProvider.State(0);
  v3[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v3[7] = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a2;
  v3[8] = v5;
  v3[9] = v6;
  sub_24F92B7F8();
  v3[10] = sub_24F92B7E8();
  v8 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F64B9D8, v8, v7);
}

uint64_t sub_24F64B9D8()
{
  v30 = v0;

  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[3];
  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E8E0);
  sub_24E60169C(v2, v1, &unk_27F23E1F0);
  v4 = sub_24F9220B8();
  v5 = sub_24F92BD98();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29[0] = v10;
    *v9 = 136315394;
    sub_24E60169C(v7, v8, &unk_27F23E1F0);
    v11 = type metadata accessor for Player(0);
    v12 = (*(*(v11 - 8) + 48))(v8, 1, v11);
    v13 = v0[7];
    if (v12 == 1)
    {
      sub_24E601704(v0[7], &unk_27F23E1F0);
      v14 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      v15 = *v13;
      v14 = v13[1];

      sub_24F6587D0(v13, type metadata accessor for Player);
    }

    v16 = v0[9];
    sub_24E601704(v0[8], &unk_27F23E1F0);
    v17 = sub_24E7620D4(v15, v14, v29);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2080;
    v0[11] = v16;
    v18 = sub_24F92B188();
    v20 = sub_24E7620D4(v18, v19, v29);

    *(v9 + 14) = v20;
    _os_log_impl(&dword_24E5DD000, v4, v5, "finish: Changing the impediment flow state to .finished with player %s and onboarding status %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v10, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  else
  {

    sub_24E601704(v7, &unk_27F23E1F0);
  }

  v21 = v0[9];
  v22 = v0[6];
  v23 = v0[4];
  v24 = v0[3];
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B110) + 48);
  sub_24E60169C(v24, v22, &unk_27F23E1F0);
  *(v22 + v25) = v21;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v26 = swift_task_alloc();
  *(v26 + 16) = v23;
  *(v26 + 24) = v22;
  v0[2] = v23;
  sub_24F658634(&qword_27F23B0B0, type metadata accessor for ImpedimentFlowAuthorityProvider);
  sub_24F91FD78();

  sub_24F6587D0(v22, type metadata accessor for ImpedimentFlowAuthorityProvider.State);

  v27 = v0[1];

  return v27();
}

uint64_t sub_24F64BE00@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24F658634(&qword_27F23B0B0, type metadata accessor for ImpedimentFlowAuthorityProvider);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowAuthorityProvider__state;
  swift_beginAccess();
  return sub_24F65A404(v5 + v3, a1, type metadata accessor for ImpedimentFlowAuthorityProvider.State);
}

uint64_t sub_24F64BEDC()
{
  v1[3] = v0;
  v1[4] = type metadata accessor for ImpedimentFlowAuthorityProvider.State(0);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = type metadata accessor for ImpedimentFlowDestination();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  sub_24F92B7F8();
  v1[12] = sub_24F92B7E8();
  v3 = sub_24F92B778();
  v1[13] = v3;
  v1[14] = v2;

  return MEMORY[0x2822009F8](sub_24F64C030, v3, v2);
}

uint64_t sub_24F64C030()
{
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[15] = __swift_project_value_buffer(v1, qword_27F39E8E0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "prepare: Looking if there is any impediment to present..", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_24F64C188;
  v6 = v0[11];

  return sub_24F64F370(v6);
}

uint64_t sub_24F64C188()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_24F64C2A8, v3, v2);
}

uint64_t sub_24F64C2A8()
{
  v34 = v0;
  sub_24F65A404(v0[11], v0[10], type metadata accessor for ImpedimentFlowDestination);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v1 = v0[10];
    v3 = v0[7];
    v2 = v0[8];
    v4 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B110) + 48));
    sub_24E6009C8(v1, v2, &unk_27F23E1F0);
    sub_24E60169C(v2, v3, &unk_27F23E1F0);
    v5 = sub_24F9220B8();
    v6 = sub_24F92BD98();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[7];
    if (v7)
    {
      v9 = v0[6];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v33[0] = v11;
      *v10 = 136315394;
      sub_24E60169C(v8, v9, &unk_27F23E1F0);
      v12 = type metadata accessor for Player(0);
      v13 = (*(*(v12 - 8) + 48))(v9, 1, v12);
      v14 = v0[6];
      if (v13 == 1)
      {
        sub_24E601704(v0[6], &unk_27F23E1F0);
        v15 = 0xE300000000000000;
        v16 = 7104878;
      }

      else
      {
        v16 = *v14;
        v15 = v14[1];

        sub_24F6587D0(v14, type metadata accessor for Player);
      }

      sub_24E601704(v0[7], &unk_27F23E1F0);
      v27 = sub_24E7620D4(v16, v15, v33);

      *(v10 + 4) = v27;
      *(v10 + 12) = 2080;
      v0[19] = v4;
      v28 = sub_24F92B188();
      v30 = sub_24E7620D4(v28, v29, v33);

      *(v10 + 14) = v30;
      _os_log_impl(&dword_24E5DD000, v5, v6, "prepare: There is no impediment to be presented. Finishing with player %s and onboarding state %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v11, -1, -1);
      MEMORY[0x2530542D0](v10, -1, -1);
    }

    else
    {

      sub_24E601704(v8, &unk_27F23E1F0);
    }

    v0[18] = v4;
    v31 = swift_task_alloc();
    v0[17] = v31;
    *v31 = v0;
    v31[1] = sub_24F64C830;
    v32 = v0[8];

    return sub_24F64B8C4(v32, v0 + 18);
  }

  else
  {
    v17 = v0[10];

    sub_24F6587D0(v17, type metadata accessor for ImpedimentFlowDestination);
    v18 = sub_24F9220B8();
    v19 = sub_24F92BD98();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24E5DD000, v18, v19, "prepare: Need to present an impediment. Changing the impediment flow state to .impedimentFlowRequired..", v20, 2u);
      MEMORY[0x2530542D0](v20, -1, -1);
    }

    v21 = v0[11];
    v22 = v0[5];
    v23 = v0[3];

    sub_24F65A404(v21, v22, type metadata accessor for ImpedimentFlowDestination);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v24 = swift_task_alloc();
    *(v24 + 16) = v23;
    *(v24 + 24) = v22;
    v0[2] = v23;
    sub_24F658634(&qword_27F23B0B0, type metadata accessor for ImpedimentFlowAuthorityProvider);
    sub_24F91FD78();

    sub_24F6587D0(v21, type metadata accessor for ImpedimentFlowDestination);

    sub_24F6587D0(v22, type metadata accessor for ImpedimentFlowAuthorityProvider.State);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_24F64C830()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_24F64C950, v3, v2);
}

uint64_t sub_24F64C950()
{
  v1 = v0[11];
  v2 = v0[8];

  sub_24E601704(v2, &unk_27F23E1F0);
  sub_24F6587D0(v1, type metadata accessor for ImpedimentFlowDestination);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24F64CA30@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_24F658634(&qword_27F23B0B0, type metadata accessor for ImpedimentFlowAuthorityProvider);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowAuthorityProvider__flowAuthority;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3A0);
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_24F64CB34()
{
  v1[7] = v0;
  v2 = sub_24F9208F8();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4D8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v3 = sub_24F920958();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D530);
  v1[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v1[23] = v4;
  v1[24] = *(v4 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  sub_24F92B7F8();
  v1[27] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v1[28] = v6;
  v1[29] = v5;

  return MEMORY[0x2822009F8](sub_24F64CDE0, v6, v5);
}

uint64_t sub_24F64CDE0()
{
  v1 = objc_opt_self();
  v2 = *MEMORY[0x277CEE160];
  v0[30] = v1;
  v0[31] = v2;
  v3 = [v1 ams_sharedAccountStoreForMediaType_];
  v4 = [v3 ams_activeiTunesAccount];

  if (v4)
  {

    v5 = swift_task_alloc();
    v0[32] = v5;
    *v5 = v0;
    v5[1] = sub_24F64D06C;
    v6 = v0[22];

    return sub_24F653BA8(v6);
  }

  else
  {

    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v8 = sub_24F9220D8();
    __swift_project_value_buffer(v8, qword_27F39E8E0);
    v9 = sub_24F9220B8();
    v10 = sub_24F92BD98();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24E5DD000, v9, v10, "needResetImpedimentFlow: true, because App Store is signed out.", v11, 2u);
      MEMORY[0x2530542D0](v11, -1, -1);
    }

    v12 = v0[1];

    return v12(1);
  }
}

uint64_t sub_24F64D06C()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return MEMORY[0x2822009F8](sub_24F64D18C, v3, v2);
}

uint64_t sub_24F64D18C()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  v4 = *(v2 + 48);
  v0[33] = v4;
  v0[34] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {

    sub_24E601704(v3, &qword_27F22D4E0);
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v5 = sub_24F9220D8();
    __swift_project_value_buffer(v5, qword_27F39E8E0);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BD98();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24E5DD000, v6, v7, "needResetImpedimentFlow: true, because Game Center is signed out.", v8, 2u);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    v9 = v0[1];

    return v9(1);
  }

  else
  {
    v11 = v0[26];
    v12 = *(v2 + 32);
    v0[35] = v12;
    v0[36] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v12(v11, v3, v1);
    v13 = type metadata accessor for ImpedimentFlowDestinationStates();
    v0[37] = v13;
    v14 = swift_task_alloc();
    v0[38] = v14;
    *v14 = v0;
    v14[1] = sub_24F64D45C;

    return MEMORY[0x28217F228](v0 + 5, v13, v13);
  }
}

uint64_t sub_24F64D45C()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_24F64E31C;
  }

  else
  {
    v5 = sub_24F64D598;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F64D598()
{
  v58 = v0;
  v1 = *(v0 + 40);
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  *(v0 + 320) = __swift_project_value_buffer(v2, qword_27F39E8E0);

  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v57 = v6;
    *v5 = 136315138;
    *(v0 + 48) = v1;

    v7 = sub_24F92B188();
    v9 = sub_24E7620D4(v7, v8, &v57);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24E5DD000, v3, v4, "ImpedimentFlowDestinationStates: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v10 = *(v1 + OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowDestinationStates_lastRecordedSignedInAppStoreDSID);
  v11 = *(v1 + OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowDestinationStates_lastRecordedSignedInAppStoreDSID + 8);
  v12 = [*(v0 + 240) ams:*(v0 + 248) sharedAccountStoreForMediaType:?];
  v13 = [v12 ams_activeiTunesAccount];
  v14 = [v13 ams_DSID];

  if (v14)
  {
    v15 = [v14 integerValue];

    if (v10 == v15)
    {
      v16 = v11;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
LABEL_10:

      v17 = sub_24F9220B8();
      v18 = sub_24F92BD98();
      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 208);
      v21 = *(v0 + 184);
      v22 = *(v0 + 192);
      if (v19)
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        v24 = "needResetImpedimentFlow: true, because the signed in App Store account has changed.";
LABEL_22:
        _os_log_impl(&dword_24E5DD000, v17, v18, v24, v23, 2u);
        MEMORY[0x2530542D0](v23, -1, -1);

LABEL_24:
        (*(v22 + 8))(v20, v21);

        v43 = *(v0 + 8);

        return v43(1);
      }

      goto LABEL_23;
    }
  }

  else if ((v11 & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = *(v0 + 264);
  v26 = *(v0 + 208);
  v27 = *(v0 + 184);
  v28 = *(v0 + 192);
  v29 = *(v0 + 168);
  v31 = *(v0 + 144);
  v30 = *(v0 + 152);
  v56 = v1;
  v32 = OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowDestinationStates_lastRecordedSignedInPlayer;
  swift_beginAccess();
  (*(v28 + 16))(v29, v26, v27);
  (*(v28 + 56))(v29, 0, 1, v27);
  v33 = *(v31 + 48);
  sub_24E60169C(v56 + v32, v30, &qword_27F22D4E0);
  sub_24E60169C(v29, v30 + v33, &qword_27F22D4E0);
  v34 = v25(v30, 1, v27);
  v35 = *(v0 + 264);
  v36 = *(v0 + 184);
  if (v34 != 1)
  {
    sub_24E60169C(*(v0 + 152), *(v0 + 160), &qword_27F22D4E0);
    if (v35(v30 + v33, 1, v36) != 1)
    {
      v45 = *(v0 + 192);
      v46 = *(v0 + 200);
      v47 = *(v0 + 184);
      v49 = *(v0 + 160);
      v48 = *(v0 + 168);
      v50 = *(v0 + 152);
      (*(v0 + 280))(v46, v30 + v33, v47);
      sub_24ECCA9F8();
      v51 = sub_24F92AFF8();
      v52 = *(v45 + 8);
      v52(v46, v47);
      sub_24E601704(v48, &qword_27F22D4E0);
      v52(v49, v47);
      sub_24E601704(v50, &qword_27F22D4E0);
      if (v51)
      {

        goto LABEL_29;
      }

LABEL_20:
      v17 = sub_24F9220B8();
      v18 = sub_24F92BD98();
      v42 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 208);
      v21 = *(v0 + 184);
      v22 = *(v0 + 192);
      if (v42)
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        v24 = "needResetImpedimentFlow: true, because the signed in Game Center account has changed.";
        goto LABEL_22;
      }

LABEL_23:

      goto LABEL_24;
    }

    v39 = *(v0 + 184);
    v38 = *(v0 + 192);
    v41 = *(v0 + 160);
    v40 = *(v0 + 168);

    sub_24E601704(v40, &qword_27F22D4E0);
    (*(v38 + 8))(v41, v39);
LABEL_19:
    sub_24E601704(*(v0 + 152), &qword_27F22D530);
    goto LABEL_20;
  }

  sub_24E601704(*(v0 + 168), &qword_27F22D4E0);
  if (v35(v30 + v33, 1, v36) != 1)
  {

    goto LABEL_19;
  }

  v37 = *(v0 + 152);

  sub_24E601704(v37, &qword_27F22D4E0);
LABEL_29:
  v53 = swift_task_alloc();
  *(v0 + 328) = v53;
  *v53 = v0;
  v53[1] = sub_24F64DC74;
  v54 = *(v0 + 208);
  v55 = *(v0 + 96);

  return sub_24F655C98(v55, v54);
}

uint64_t sub_24F64DC74()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return MEMORY[0x2822009F8](sub_24F64DD94, v3, v2);
}

uint64_t sub_24F64DD94()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24E601704(v0[12], &qword_27F22D4D8);
    v4 = sub_24F9220B8();
    v5 = sub_24F92BD98();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[26];
    v8 = v0[23];
    v9 = v0[24];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24E5DD000, v4, v5, "needResetImpedimentFlow: true, because failed getting the onboarding state.", v10, 2u);
      MEMORY[0x2530542D0](v10, -1, -1);
    }

    (*(v9 + 8))(v7, v8);
    goto LABEL_11;
  }

  (*(v0[14] + 32))(v0[17], v0[12], v0[13]);
  if (sub_24F920928() & 1) != 0 || (sub_24F920948())
  {
    v11 = v0[17];
    v12 = v0[15];
    v13 = v0[13];
    v14 = *(v0[14] + 16);
    v14(v0[16], v11, v13);
    v14(v12, v11, v13);
    v15 = sub_24F9220B8();
    v16 = sub_24F92BD98();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[15];
    v18 = v0[16];
    v20 = v0[13];
    v21 = v0[14];
    if (v17)
    {
      logb = v15;
      v22 = swift_slowAlloc();
      *v22 = 67109376;
      v23 = sub_24F920928() & 1;
      v24 = *(v21 + 8);
      v24(v18, v20);
      *(v22 + 4) = v23;
      *(v22 + 8) = 1024;
      v25 = sub_24F920948() & 1;
      v24(v19, v20);
      *(v22 + 10) = v25;
      _os_log_impl(&dword_24E5DD000, logb, v16, "needResetImpedimentFlow: true, because isDefaultNickname is %{BOOL}d or isDefaultPrivacyVisibility is %{BOOL}d.", v22, 0xEu);
      v26 = v22;
      v15 = logb;
      MEMORY[0x2530542D0](v26, -1, -1);
    }

    else
    {
      v24 = *(v21 + 8);
      v24(v0[15], v0[13]);
      v24(v18, v20);
    }

    v27 = v0[26];
    v29 = v0[23];
    v28 = v0[24];
    v30 = v0[17];
    v31 = v0[13];

    v24(v30, v31);
    (*(v28 + 8))(v27, v29);
LABEL_11:
    log = 1;
    goto LABEL_12;
  }

  v34 = v0[13];
  v35 = v0[14];
  v37 = v0[10];
  v36 = v0[11];
  v38 = v0[8];
  v39 = v0[9];
  (*(v35 + 16))(v36, v0[17], v34);
  (*(v35 + 56))(v36, 0, 1, v34);
  v40 = sub_24F659360(v36);
  sub_24E601704(v36, &qword_27F22D4D8);
  sub_24F920938();
  v41 = sub_24F9208E8();
  (*(v39 + 8))(v37, v38);
  v42 = sub_24F9220B8();
  v43 = sub_24F92BD98();
  v44 = os_log_type_enabled(v42, v43);
  loga = v0[26];
  v45 = v0[23];
  v46 = v0[24];
  v47 = v0[17];
  v49 = v0[13];
  v48 = v0[14];
  if ((v40 & 1) == 0 || (v41 & 1) == 0)
  {
    if (v44)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_24E5DD000, v42, v43, "needResetImpedimentFlow: true, because the user needs to accept cross use.", v51, 2u);
      MEMORY[0x2530542D0](v51, -1, -1);
    }

    (*(v48 + 8))(v47, v49);
    (*(v46 + 8))(loga, v45);
    goto LABEL_11;
  }

  if (v44)
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_24E5DD000, v42, v43, "needResetImpedimentFlow: false.", v50, 2u);
    MEMORY[0x2530542D0](v50, -1, -1);
  }

  (*(v48 + 8))(v47, v49);
  (*(v46 + 8))(loga, v45);
  log = 0;
LABEL_12:

  v32 = v0[1];

  return v32(log);
}

uint64_t sub_24F64E31C()
{

  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = v0[39];
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[39];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "needResetImpedimentFlow: true, because failed getting the impediment, error: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[24] + 8))(v0[26], v0[23]);

  v12 = v0[1];

  return v12(1);
}

uint64_t sub_24F64E570(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 192) = a2;
  *(v4 + 200) = v3;
  *(v4 + 388) = a3;
  *(v4 + 184) = a1;
  v5 = type metadata accessor for Player(0);
  *(v4 + 208) = v5;
  *(v4 + 216) = *(v5 - 8);
  *(v4 + 224) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  *(v4 + 232) = v6;
  *(v4 + 240) = *(v6 - 8);
  *(v4 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B670);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24B678);
  *(v4 + 272) = v7;
  *(v4 + 280) = *(v7 - 8);
  *(v4 + 288) = swift_task_alloc();
  v8 = sub_24F9211A8();
  *(v4 + 296) = v8;
  *(v4 + 304) = *(v8 - 8);
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F64E7B4, 0, 0);
}

uint64_t sub_24F64E7B4()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[24];
  sub_24F921338();
  sub_24F658634(&qword_27F2370E8, MEMORY[0x277D54FC0]);
  sub_24F920548();
  v4 = v0[21];
  v5 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D0);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[41] = v7;
  *(v7 + 16) = xmmword_24F93DE60;
  (*(v2 + 16))(v7 + v6, v3, v1);
  v8 = swift_task_alloc();
  v0[42] = v8;
  *v8 = v0;
  v8[1] = sub_24F64E934;

  return MEMORY[0x282165110](v7, v4, v5);
}

uint64_t sub_24F64E934(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {
    v4 = sub_24F64EEB0;
  }

  else
  {

    v4 = sub_24F64EA50;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F64EA50()
{
  v1 = v0[43];
  if (*(v1 + 16))
  {
    v2 = *(v0[35] + 80);
    sub_24E60169C(v1 + ((v2 + 32) & ~v2), v0[33], qword_27F24B678);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[34];
  v5 = v0[35];
  v7 = v0[32];
  v6 = v0[33];

  (*(v5 + 56))(v6, v3, 1, v4);
  sub_24E6009C8(v6, v7, &qword_27F24B670);
  if ((*(v5 + 48))(v7, 1, v4) == 1)
  {
    (*(v0[38] + 56))(v0[36], 1, 1, v0[37]);
  }

  else
  {
    sub_24E6009C8(v0[32], v0[36], qword_27F24B678);
  }

  v8 = v0[37];
  v9 = v0[38];
  v10 = v0[36];
  __swift_destroy_boxed_opaque_existential_1((v0 + 18));
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    sub_24E601704(v0[36], qword_27F24B678);
    (*(v0[27] + 56))(v0[23], 1, 1, v0[26]);

    v11 = v0[1];
LABEL_11:

    return v11();
  }

  v12 = v0[44];
  (*(v0[38] + 32))(v0[40], v0[36], v0[37]);
  sub_24F921168();
  sub_24F920FD8();
  v0[45] = v12;
  v14 = v0[30];
  v13 = v0[31];
  v15 = v0[29];
  if (v12)
  {
    v16 = v0[40];
    v17 = v0[37];
    v18 = v0[38];
    (*(v14 + 8))(v13, v15);
    (*(v18 + 8))(v16, v17);

    v11 = v0[1];
    goto LABEL_11;
  }

  (*(v14 + 8))(v13, v15);
  v20 = [objc_opt_self() proxyForLocalPlayer];
  v21 = [v20 accountServicePrivate];
  v0[46] = v21;

  v22 = sub_24F92B098();
  v0[47] = v22;

  v0[2] = v0;
  v0[7] = v0 + 48;
  v0[3] = sub_24F64EF7C;
  v23 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229BE0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24F1676B4;
  v0[13] = &block_descriptor_167;
  v0[14] = v23;
  [v21 getAccountAgeCategoryForPlayerID:v22 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24F64EEB0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F64EF7C()
{

  return MEMORY[0x2822009F8](sub_24F64F05C, 0, 0);
}

uint64_t sub_24F64F05C()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 296);
  v6 = *(v0 + 304);
  v7 = *(v0 + 224);
  v8 = *(v0 + 384);
  swift_unknownObjectRelease();

  (*(v6 + 16))(v3, v4, v5);
  sub_24EC471A4(v3, v8 == 3, v7);
  v9 = *(v0 + 320);
  v10 = *(v0 + 296);
  v11 = *(v0 + 304);
  if (v2)
  {
    (*(v11 + 8))(v9, v10);

    v12 = *(v0 + 8);
  }

  else
  {
    v13 = *(v0 + 388);
    (*(v11 + 8))(v9, v10);
    if (v13 != 2)
    {
      *(*(v0 + 224) + *(*(v0 + 208) + 56)) = *(v0 + 388) & 1;
    }

    sub_24F65A46C(*(v0 + 224), *(v0 + 184), type metadata accessor for Player);
    (*(*(v0 + 216) + 56))(*(v0 + 184), 0, 1, *(v0 + 208));

    v12 = *(v0 + 8);
  }

  return v12();
}

uint64_t sub_24F64F25C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowAuthorityProvider__flowAuthority;
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3A0);
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_24F64F304(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowAuthorityProvider__state;
  swift_beginAccess();
  sub_24F658838(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_24F64F370(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for ImpedimentFlowDestination();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for ImpedimentFlowDestinationsIntent();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = sub_24F9208F8();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v5 = sub_24F920958();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4D8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v6 = type metadata accessor for Player(0);
  v2[36] = v6;
  v2[37] = *(v6 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v2[40] = v7;
  v2[41] = *(v7 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  sub_24F92B7F8();
  v2[52] = sub_24F92B7E8();
  v9 = sub_24F92B778();
  v2[53] = v9;
  v2[54] = v8;

  return MEMORY[0x2822009F8](sub_24F64F7C0, v9, v8);
}

uint64_t sub_24F64F7C0()
{
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[55] = __swift_project_value_buffer(v1, qword_27F39E8E0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "Evaluating the next impediment..", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[56] = v5;
  *v5 = v0;
  v5[1] = sub_24F64F918;
  v6 = v0[51];

  return sub_24F653BA8(v6);
}

uint64_t sub_24F64F918()
{
  v1 = *v0;

  v2 = *(v1 + 432);
  v3 = *(v1 + 424);

  return MEMORY[0x2822009F8](sub_24F64FA38, v3, v2);
}

uint64_t sub_24F64FA38()
{
  v87 = v0;
  v1 = v0[50];
  v2 = v0[40];
  v3 = v0[41];
  sub_24E60169C(v0[51], v1, &qword_27F22D4E0);
  v4 = *(v3 + 48);
  v0[57] = v4;
  v0[58] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_24E601704(v0[50], &qword_27F22D4E0);
    v5 = v0[47];
    v6 = v0[48];
    v7 = v0[46];
    v8 = v0[36];
    v9 = v0[37];
    (*(v9 + 56))(v5, 1, 1, v8);
    sub_24E6009C8(v5, v6, &unk_27F23E1F0);
    sub_24E60169C(v6, v7, &unk_27F23E1F0);
    v10 = *(v9 + 48);
    v11 = v10(v7, 1, v8);
    v12 = v0[46];
    if (v11 == 1)
    {
      sub_24E601704(v12, &unk_27F23E1F0);
      v13 = sub_24F9220B8();
      v14 = sub_24F92BDB8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_24E5DD000, v13, v14, "No player received.", v15, 2u);
        MEMORY[0x2530542D0](v15, -1, -1);
      }
    }

    else
    {
      v21 = v0[38];
      v20 = v0[39];
      sub_24F65A46C(v12, v20, type metadata accessor for Player);
      sub_24F65A404(v20, v21, type metadata accessor for Player);
      v22 = sub_24F9220B8();
      v23 = sub_24F92BD98();
      v24 = os_log_type_enabled(v22, v23);
      v26 = v0[38];
      v25 = v0[39];
      if (v24)
      {
        v84 = v10;
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v86 = v28;
        *v27 = 136315138;
        v29 = Player.debugDescription.getter();
        v31 = v30;
        sub_24F6587D0(v26, type metadata accessor for Player);
        v32 = sub_24E7620D4(v29, v31, &v86);

        *(v27 + 4) = v32;
        _os_log_impl(&dword_24E5DD000, v22, v23, "Received %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x2530542D0](v28, -1, -1);
        v33 = v27;
        v10 = v84;
        MEMORY[0x2530542D0](v33, -1, -1);
      }

      else
      {

        sub_24F6587D0(v26, type metadata accessor for Player);
      }

      sub_24F6587D0(v25, type metadata accessor for Player);
    }

    v34 = v0[45];
    v35 = v0[36];
    sub_24E60169C(v0[48], v34, &unk_27F23E1F0);
    v36 = v10(v34, 1, v35);
    v37 = v0[45];
    if (v36 == 1)
    {
      sub_24E601704(v0[45], &unk_27F23E1F0);
      v38 = 0;
      v39 = 0;
    }

    else
    {
      v38 = *v37;
      v39 = v37[1];

      sub_24F6587D0(v37, type metadata accessor for Player);
    }

    v40 = v0[57];
    v41 = v0[51];
    v42 = v0[49];
    v43 = v0[40];
    sub_24F65889C(v38, v39);

    sub_24E60169C(v41, v42, &qword_27F22D4E0);
    if (v40(v42, 1, v43) == 1)
    {
      v44 = v0[34];
      v45 = v0[19];
      v46 = v0[20];
      sub_24E601704(v0[49], &qword_27F22D4E0);
      (*(v46 + 56))(v44, 1, 1, v45);
      v47 = v0[35];
      v48 = v0[33];
      v49 = v0[19];
      v50 = v0[20];
      sub_24E6009C8(v0[34], v47, &qword_27F22D4D8);
      sub_24E60169C(v47, v48, &qword_27F22D4D8);
      v51 = *(v50 + 48);
      v0[61] = v51;
      v0[62] = (v50 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v51(v48, 1, v49) == 1)
      {
        sub_24E601704(v0[33], &qword_27F22D4D8);
        v52 = sub_24F9220B8();
        v53 = sub_24F92BDB8();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_24E5DD000, v52, v53, "No OnboardingState received.", v54, 2u);
          MEMORY[0x2530542D0](v54, -1, -1);
        }
      }

      else
      {
        v59 = v0[22];
        v58 = v0[23];
        v60 = v0[19];
        v61 = v0[20];
        (*(v61 + 32))(v58, v0[33], v60);
        v62 = *(v61 + 16);
        v62(v59, v58, v60);
        v63 = sub_24F9220B8();
        v64 = sub_24F92BD98();
        v65 = os_log_type_enabled(v63, v64);
        v67 = v0[22];
        v66 = v0[23];
        if (v65)
        {
          v68 = v0[21];
          v82 = v0[20];
          v69 = v0[19];
          v85 = v0[23];
          v70 = swift_slowAlloc();
          v83 = v64;
          v71 = swift_slowAlloc();
          v86 = v71;
          *v70 = 136315138;
          v62(v68, v67, v69);
          v72 = sub_24F92B188();
          v74 = v73;
          v75 = *(v82 + 8);
          v75(v67, v69);
          v76 = sub_24E7620D4(v72, v74, &v86);

          *(v70 + 4) = v76;
          _os_log_impl(&dword_24E5DD000, v63, v83, "Received %s", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v71);
          MEMORY[0x2530542D0](v71, -1, -1);
          MEMORY[0x2530542D0](v70, -1, -1);

          v75(v85, v69);
        }

        else
        {
          v78 = v0[19];
          v77 = v0[20];

          v79 = *(v77 + 8);
          v79(v67, v78);
          v79(v66, v78);
        }
      }

      if (*(v0[9] + OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowAuthorityProvider_inAppSettings))
      {
        v80 = swift_task_alloc();
        v0[63] = v80;
        *v80 = v0;
        v80[1] = sub_24F651240;

        return sub_24ECC19D4();
      }

      else
      {
        v81 = swift_task_alloc();
        v0[64] = v81;
        *v81 = v0;
        v81[1] = sub_24F651380;

        return sub_24F6577CC();
      }
    }

    else
    {
      (*(v0[41] + 32))(v0[42], v0[49], v0[40]);
      v55 = swift_task_alloc();
      v0[60] = v55;
      *v55 = v0;
      v55[1] = sub_24F650D1C;
      v56 = v0[42];
      v57 = v0[34];

      return sub_24F655C98(v57, v56);
    }
  }

  else
  {
    (*(v0[41] + 32))(v0[43], v0[50], v0[40]);
    v16 = swift_task_alloc();
    v0[59] = v16;
    *v16 = v0;
    v16[1] = sub_24F650394;
    v17 = v0[47];
    v18 = v0[43];

    return sub_24F654824(v17, v18);
  }
}

uint64_t sub_24F650394()
{
  v1 = *v0;

  v2 = *(v1 + 432);
  v3 = *(v1 + 424);

  return MEMORY[0x2822009F8](sub_24F6504B4, v3, v2);
}

uint64_t sub_24F6504B4()
{
  v80 = v0;
  (*(v0[41] + 8))(v0[43], v0[40]);
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[46];
  v4 = v0[36];
  v5 = v0[37];
  (*(v5 + 56))(v1, 0, 1, v4);
  sub_24E6009C8(v1, v2, &unk_27F23E1F0);
  sub_24E60169C(v2, v3, &unk_27F23E1F0);
  v6 = *(v5 + 48);
  v7 = v6(v3, 1, v4);
  v8 = v0[46];
  if (v7 == 1)
  {
    sub_24E601704(v8, &unk_27F23E1F0);
    v9 = sub_24F9220B8();
    v10 = sub_24F92BDB8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24E5DD000, v9, v10, "No player received.", v11, 2u);
      MEMORY[0x2530542D0](v11, -1, -1);
    }
  }

  else
  {
    v13 = v0[38];
    v12 = v0[39];
    sub_24F65A46C(v8, v12, type metadata accessor for Player);
    sub_24F65A404(v12, v13, type metadata accessor for Player);
    v14 = sub_24F9220B8();
    v15 = sub_24F92BD98();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[38];
    v17 = v0[39];
    if (v16)
    {
      v77 = v6;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v79 = v20;
      *v19 = 136315138;
      v21 = Player.debugDescription.getter();
      v23 = v22;
      sub_24F6587D0(v18, type metadata accessor for Player);
      v24 = sub_24E7620D4(v21, v23, &v79);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_24E5DD000, v14, v15, "Received %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x2530542D0](v20, -1, -1);
      v25 = v19;
      v6 = v77;
      MEMORY[0x2530542D0](v25, -1, -1);
    }

    else
    {

      sub_24F6587D0(v18, type metadata accessor for Player);
    }

    sub_24F6587D0(v17, type metadata accessor for Player);
  }

  v26 = v0[45];
  v27 = v0[36];
  sub_24E60169C(v0[48], v26, &unk_27F23E1F0);
  v28 = v6(v26, 1, v27);
  v29 = v0[45];
  if (v28 == 1)
  {
    sub_24E601704(v0[45], &unk_27F23E1F0);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = *v29;
    v31 = v29[1];

    sub_24F6587D0(v29, type metadata accessor for Player);
  }

  v32 = v0[57];
  v33 = v0[51];
  v34 = v0[49];
  v35 = v0[40];
  sub_24F65889C(v30, v31);

  sub_24E60169C(v33, v34, &qword_27F22D4E0);
  if (v32(v34, 1, v35) == 1)
  {
    v36 = v0[34];
    v37 = v0[19];
    v38 = v0[20];
    sub_24E601704(v0[49], &qword_27F22D4E0);
    (*(v38 + 56))(v36, 1, 1, v37);
    v39 = v0[35];
    v40 = v0[33];
    v41 = v0[19];
    v42 = v0[20];
    sub_24E6009C8(v0[34], v39, &qword_27F22D4D8);
    sub_24E60169C(v39, v40, &qword_27F22D4D8);
    v43 = *(v42 + 48);
    v0[61] = v43;
    v0[62] = (v42 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v43(v40, 1, v41) == 1)
    {
      sub_24E601704(v0[33], &qword_27F22D4D8);
      v44 = sub_24F9220B8();
      v45 = sub_24F92BDB8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_24E5DD000, v44, v45, "No OnboardingState received.", v46, 2u);
        MEMORY[0x2530542D0](v46, -1, -1);
      }
    }

    else
    {
      v52 = v0[22];
      v51 = v0[23];
      v53 = v0[19];
      v54 = v0[20];
      (*(v54 + 32))(v51, v0[33], v53);
      v55 = *(v54 + 16);
      v55(v52, v51, v53);
      v56 = sub_24F9220B8();
      v57 = sub_24F92BD98();
      v58 = os_log_type_enabled(v56, v57);
      v60 = v0[22];
      v59 = v0[23];
      if (v58)
      {
        v61 = v0[21];
        v75 = v0[20];
        v62 = v0[19];
        v78 = v0[23];
        v63 = swift_slowAlloc();
        v76 = v57;
        v64 = swift_slowAlloc();
        v79 = v64;
        *v63 = 136315138;
        v55(v61, v60, v62);
        v65 = sub_24F92B188();
        v67 = v66;
        v68 = *(v75 + 8);
        v68(v60, v62);
        v69 = sub_24E7620D4(v65, v67, &v79);

        *(v63 + 4) = v69;
        _os_log_impl(&dword_24E5DD000, v56, v76, "Received %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);
        MEMORY[0x2530542D0](v64, -1, -1);
        MEMORY[0x2530542D0](v63, -1, -1);

        v68(v78, v62);
      }

      else
      {
        v71 = v0[19];
        v70 = v0[20];

        v72 = *(v70 + 8);
        v72(v60, v71);
        v72(v59, v71);
      }
    }

    if (*(v0[9] + OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowAuthorityProvider_inAppSettings))
    {
      v73 = swift_task_alloc();
      v0[63] = v73;
      *v73 = v0;
      v73[1] = sub_24F651240;

      return sub_24ECC19D4();
    }

    else
    {
      v74 = swift_task_alloc();
      v0[64] = v74;
      *v74 = v0;
      v74[1] = sub_24F651380;

      return sub_24F6577CC();
    }
  }

  else
  {
    (*(v0[41] + 32))(v0[42], v0[49], v0[40]);
    v47 = swift_task_alloc();
    v0[60] = v47;
    *v47 = v0;
    v47[1] = sub_24F650D1C;
    v48 = v0[42];
    v49 = v0[34];

    return sub_24F655C98(v49, v48);
  }
}

uint64_t sub_24F650D1C()
{
  v1 = *v0;

  v2 = *(v1 + 432);
  v3 = *(v1 + 424);

  return MEMORY[0x2822009F8](sub_24F650E3C, v3, v2);
}

uint64_t sub_24F650E3C()
{
  v38 = v0;
  (*(v0[41] + 8))(v0[42], v0[40]);
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[19];
  v4 = v0[20];
  sub_24E6009C8(v0[34], v1, &qword_27F22D4D8);
  sub_24E60169C(v1, v2, &qword_27F22D4D8);
  v5 = *(v4 + 48);
  v0[61] = v5;
  v0[62] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v2, 1, v3) == 1)
  {
    sub_24E601704(v0[33], &qword_27F22D4D8);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BDB8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24E5DD000, v6, v7, "No OnboardingState received.", v8, 2u);
      MEMORY[0x2530542D0](v8, -1, -1);
    }
  }

  else
  {
    v10 = v0[22];
    v9 = v0[23];
    v11 = v0[19];
    v12 = v0[20];
    (*(v12 + 32))(v9, v0[33], v11);
    v13 = *(v12 + 16);
    v13(v10, v9, v11);
    v14 = sub_24F9220B8();
    v15 = sub_24F92BD98();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[22];
    v17 = v0[23];
    if (v16)
    {
      v19 = v0[21];
      v34 = v0[20];
      v20 = v0[19];
      v36 = v0[23];
      v21 = swift_slowAlloc();
      v35 = v15;
      v22 = swift_slowAlloc();
      v37 = v22;
      *v21 = 136315138;
      v13(v19, v18, v20);
      v23 = sub_24F92B188();
      v25 = v24;
      v26 = *(v34 + 8);
      v26(v18, v20);
      v27 = sub_24E7620D4(v23, v25, &v37);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_24E5DD000, v14, v35, "Received %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x2530542D0](v22, -1, -1);
      MEMORY[0x2530542D0](v21, -1, -1);

      v26(v36, v20);
    }

    else
    {
      v29 = v0[19];
      v28 = v0[20];

      v30 = *(v28 + 8);
      v30(v18, v29);
      v30(v17, v29);
    }
  }

  if (*(v0[9] + OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowAuthorityProvider_inAppSettings))
  {
    v31 = swift_task_alloc();
    v0[63] = v31;
    *v31 = v0;
    v31[1] = sub_24F651240;

    return sub_24ECC19D4();
  }

  else
  {
    v33 = swift_task_alloc();
    v0[64] = v33;
    *v33 = v0;
    v33[1] = sub_24F651380;

    return sub_24F6577CC();
  }
}

uint64_t sub_24F651240()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 512) = v3;
  *v3 = v2;
  v3[1] = sub_24F651380;

  return sub_24F6577CC();
}

uint64_t sub_24F651380(int a1)
{
  v2 = *v1;
  *(*v1 + 632) = a1;

  v3 = *(v2 + 432);
  v4 = *(v2 + 424);

  return MEMORY[0x2822009F8](sub_24F6514A8, v4, v3);
}

uint64_t sub_24F6514A8()
{
  v1 = objc_opt_self();
  v0[65] = v1;
  v0[66] = *MEMORY[0x277CEE160];
  v2 = [v1 ams_sharedAccountStoreForMediaType_];
  v3 = [v2 ams_activeiTunesAccount];
  v4 = [v3 ams_DSID];

  if (v4)
  {
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = 0;
  }

  v6 = swift_task_alloc();
  v0[67] = v6;
  *v6 = v0;
  v6[1] = sub_24F6515EC;
  v7 = v0[51];

  return sub_24F657DE8(v7, v5, v4 == 0);
}

uint64_t sub_24F6515EC()
{
  v1 = *v0;

  v2 = *(v1 + 432);
  v3 = *(v1 + 424);

  return MEMORY[0x2822009F8](sub_24F65170C, v3, v2);
}

uint64_t sub_24F65170C()
{
  v1 = *(v0 + 280);
  v129 = sub_24F659360(v1);
  *(v0 + 636) = v129 & 1;
  if (sub_24F6597E4(v1))
  {
    v2 = sub_24F9220B8();
    v3 = sub_24F92BD98();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_24E5DD000, v2, v3, "The user already saw the welcome screen but misses lastSeenWelcomeScreenVersion. This will be retroactively recorded.", v4, 2u);
      MEMORY[0x2530542D0](v4, -1, -1);
    }

    v5 = [objc_opt_self() standardUserDefaults];
    sub_24F005DA4(1);
  }

  v6 = [*(v0 + 520) ams:*(v0 + 528) sharedAccountStoreForMediaType:?];
  v7 = [v6 ams_activeiTunesAccount];
  *(v0 + 544) = v7;

  if (v7)
  {
  }

  v8 = (*(v0 + 456))(*(v0 + 408), 1, *(v0 + 320)) != 1 && (*(v0 + 488))(*(v0 + 280), 1, *(v0 + 152)) != 1;
  v128 = v8;
  *(v0 + 637) = v8;
  v9 = [*(v0 + 520) ams:*(v0 + 528) sharedAccountStoreForMediaType:?];
  v10 = [v9 ams_activeiTunesAccount];

  if (v10)
  {

    v11 = 1;
  }

  else
  {
    v11 = 1;
    if ((*(v0 + 456))(*(v0 + 408), 1, *(v0 + 320)) == 1)
    {
      sub_24F659B50();
      sub_24F56B614();
      v11 = v12;
    }
  }

  v127 = v11;
  *(v0 + 638) = v11 & 1;
  v13 = *(v0 + 488);
  v14 = *(v0 + 256);
  v15 = *(v0 + 152);
  sub_24E60169C(*(v0 + 280), v14, &qword_27F22D4D8);
  v16 = v13(v14, 1, v15);
  v17 = *(v0 + 256);
  if (v16 == 1)
  {
    sub_24E601704(*(v0 + 256), &qword_27F22D4D8);
    v18 = 0;
    v19 = 1;
  }

  else
  {
    v21 = *(v0 + 152);
    v20 = *(v0 + 160);
    v23 = *(v0 + 136);
    v22 = *(v0 + 144);
    v24 = *(v0 + 128);
    sub_24F920918();
    v25 = (*(v20 + 8))(v17, v21);
    v26 = MEMORY[0x253046260](v25);
    v19 = v27;
    (*(v23 + 8))(v22, v24);
    v18 = v26;
  }

  v28 = *(v0 + 488);
  v29 = *(v0 + 280);
  v30 = *(v0 + 248);
  v31 = *(v0 + 152);
  v32 = sub_24F659B9C(v18, v19 & 1);
  *(v0 + 639) = v32 & 1;
  sub_24E60169C(v29, v30, &qword_27F22D4D8);
  v33 = v28(v30, 1, v31);
  v34 = *(v0 + 248);
  if (v33 == 1)
  {
    sub_24E601704(*(v0 + 248), &qword_27F22D4D8);
    v35 = 1;
  }

  else
  {
    v37 = *(v0 + 152);
    v36 = *(v0 + 160);
    v39 = *(v0 + 136);
    v38 = *(v0 + 144);
    v40 = *(v0 + 128);
    sub_24F920918();
    (*(v36 + 8))(v34, v37);
    v35 = sub_24F9208E8();
    (*(v39 + 8))(v38, v40);
  }

  *(v0 + 640) = v35 & 1;
  v41 = *(v0 + 488);
  v42 = *(v0 + 240);
  v43 = *(v0 + 152);
  sub_24E60169C(*(v0 + 280), v42, &qword_27F22D4D8);
  v44 = v41(v42, 1, v43);
  v45 = *(v0 + 240);
  if (v44 == 1)
  {
    sub_24E601704(*(v0 + 240), &qword_27F22D4D8);
    v46 = 1;
  }

  else
  {
    v48 = *(v0 + 152);
    v47 = *(v0 + 160);
    v49 = *(v0 + 136);
    v50 = *(v0 + 144);
    v51 = *(v0 + 128);
    sub_24F920908();
    (*(v47 + 8))(v45, v48);
    v46 = sub_24F9208E8();
    (*(v49 + 8))(v50, v51);
  }

  *(v0 + 641) = v46 & 1;
  v52 = *(v0 + 488);
  v53 = *(v0 + 232);
  v54 = *(v0 + 152);
  sub_24E60169C(*(v0 + 280), v53, &qword_27F22D4D8);
  v55 = v52(v53, 1, v54);
  v56 = *(v0 + 232);
  if (v55 == 1)
  {
    sub_24E601704(*(v0 + 232), &qword_27F22D4D8);
    v57 = 1;
  }

  else
  {
    v59 = *(v0 + 152);
    v58 = *(v0 + 160);
    v126 = v46;
    v60 = v35;
    v61 = v32;
    v62 = v7;
    v63 = *(v0 + 136);
    v64 = *(v0 + 144);
    v65 = *(v0 + 128);
    sub_24F920938();
    (*(v58 + 8))(v56, v59);
    v57 = sub_24F9208E8();
    (*(v63 + 8))(v64, v65);
    v7 = v62;
    v32 = v61;
    v35 = v60;
    v46 = v126;
  }

  *(v0 + 642) = v57 & 1;
  v66 = *(v0 + 72);
  if (*(v66 + 25))
  {

    v67 = sub_24F9220B8();
    v68 = sub_24F92BD98();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_24E5DD000, v67, v68, "Returning because impediments are suppressed.", v69, 2u);
      MEMORY[0x2530542D0](v69, -1, -1);
    }

    v70 = *(v0 + 384);
    v71 = *(v0 + 64);

    v72 = (v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B110) + 48));
    sub_24E6009C8(v70, v71, &unk_27F23E1F0);
    *v72 = v7 != 0;
    v72[1] = v128;
    v72[2] = v127 & 1;
    v72[3] = v32 & 1;
    v72[4] = v35 & 1;
    v72[5] = v46 & 1;
    v72[6] = v129 & 1;
    v72[7] = v57 & 1;
    swift_storeEnumTagMultiPayload();
    v73 = *(v0 + 408);
    sub_24E601704(*(v0 + 280), &qword_27F22D4D8);
    sub_24E601704(v73, &qword_27F22D4E0);

    v74 = *(v0 + 8);

    return v74();
  }

  else
  {
    v76 = sub_24F9220B8();
    v77 = sub_24F92BD98();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_24E5DD000, v76, v77, "Composing ImpedimentFlowDestinationsIntent..", v78, 2u);
      MEMORY[0x2530542D0](v78, -1, -1);
    }

    v79 = *(v0 + 488);
    v80 = *(v0 + 384);
    v81 = *(v0 + 352);
    v82 = *(v0 + 280);
    v83 = *(v0 + 224);
    v84 = *(v0 + 152);

    sub_24E60169C(v80, v81, &unk_27F23E1F0);
    *(v0 + 643) = *(v66 + 24);
    sub_24E60169C(v82, v83, &qword_27F22D4D8);
    v85 = v79(v83, 1, v84);
    v86 = *(v0 + 224);
    if (v85 == 1)
    {
      sub_24E601704(*(v0 + 224), &qword_27F22D4D8);
      v87 = 0;
    }

    else
    {
      v88 = *(v0 + 152);
      v89 = *(v0 + 160);
      v91 = *(v0 + 136);
      v90 = *(v0 + 144);
      v92 = *(v0 + 128);
      sub_24F920908();
      v93 = (*(v89 + 8))(v86, v88);
      v94 = MEMORY[0x253046260](v93);
      LOBYTE(v88) = v95;
      (*(v91 + 8))(v90, v92);
      if (v88)
      {
        v87 = 0;
      }

      else
      {
        v87 = v94;
      }
    }

    *(v0 + 552) = v87;
    v96 = *(v0 + 488);
    v97 = *(v0 + 216);
    v98 = *(v0 + 152);
    sub_24E60169C(*(v0 + 280), v97, &qword_27F22D4D8);
    v99 = v96(v97, 1, v98);
    v100 = *(v0 + 216);
    if (v99 == 1)
    {
      sub_24E601704(*(v0 + 216), &qword_27F22D4D8);
      v101 = 0;
    }

    else
    {
      v102 = *(v0 + 152);
      v103 = *(v0 + 160);
      v105 = *(v0 + 136);
      v104 = *(v0 + 144);
      v106 = *(v0 + 128);
      sub_24F920918();
      v107 = (*(v103 + 8))(v100, v102);
      v108 = MEMORY[0x253046260](v107);
      LOBYTE(v102) = v109;
      (*(v105 + 8))(v104, v106);
      if (v102)
      {
        v101 = 0;
      }

      else
      {
        v101 = v108;
      }
    }

    *(v0 + 560) = v101;
    v110 = *(v0 + 488);
    v111 = *(v0 + 208);
    v112 = *(v0 + 152);
    sub_24E60169C(*(v0 + 280), v111, &qword_27F22D4D8);
    v113 = v110(v111, 1, v112);
    v114 = *(v0 + 208);
    if (v113 == 1)
    {
      sub_24E601704(*(v0 + 208), &qword_27F22D4D8);
      v115 = 0;
    }

    else
    {
      v116 = *(v0 + 152);
      v117 = *(v0 + 160);
      v119 = *(v0 + 136);
      v118 = *(v0 + 144);
      v120 = *(v0 + 128);
      sub_24F920938();
      v121 = (*(v117 + 8))(v114, v116);
      v122 = MEMORY[0x253046260](v121);
      LOBYTE(v116) = v123;
      (*(v119 + 8))(v118, v120);
      if (v116)
      {
        v115 = 0;
      }

      else
      {
        v115 = v122;
      }
    }

    *(v0 + 568) = v115;
    v124 = [objc_opt_self() standardUserDefaults];
    *(v0 + 576) = sub_24F008F04();

    v125 = swift_task_alloc();
    *(v0 + 584) = v125;
    *v125 = v0;
    v125[1] = sub_24F6522E0;

    return sub_24F659EB8();
  }
}

uint64_t sub_24F6522E0(char a1)
{
  v2 = *v1;
  *(*v1 + 644) = a1;

  v3 = *(v2 + 432);
  v4 = *(v2 + 424);

  return MEMORY[0x2822009F8](sub_24F652408, v4, v3);
}

uint64_t sub_24F652408()
{
  v65 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 200);
  v3 = *(v0 + 152);
  sub_24E60169C(*(v0 + 280), v2, &qword_27F22D4D8);
  v4 = v1(v2, 1, v3);
  v5 = *(v0 + 200);
  if (v4 == 1)
  {
    sub_24E601704(*(v0 + 200), &qword_27F22D4D8);
    v6 = 0;
  }

  else
  {
    v8 = *(v0 + 152);
    v7 = *(v0 + 160);
    v6 = sub_24F920928();
    (*(v7 + 8))(v5, v8);
  }

  v9 = *(v0 + 488);
  v10 = *(v0 + 192);
  v11 = *(v0 + 152);
  sub_24E60169C(*(v0 + 280), v10, &qword_27F22D4D8);
  v12 = v9(v10, 1, v11);
  v13 = *(v0 + 192);
  if (v12 == 1)
  {
    sub_24E601704(*(v0 + 192), &qword_27F22D4D8);
    v14 = 0;
  }

  else
  {
    v16 = *(v0 + 152);
    v15 = *(v0 + 160);
    v14 = sub_24F920948();
    (*(v15 + 8))(v13, v16);
  }

  v17 = objc_opt_self();
  v18 = [v17 shared];
  if (!v18)
  {
    __break(1u);
    goto LABEL_24;
  }

  v21 = v18;
  v22 = [v18 isAccountModificationRestricted];

  if (v22)
  {
    v23 = 1;
  }

  else
  {
    v18 = [v17 shared];
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v24 = v18;
    v23 = [v18 isProfileModificationRestricted];
  }

  v18 = [v17 shared];
  if (!v18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v25 = v18;
  v26 = [v18 isAccountModificationRestricted];

  v62 = v14;
  v63 = v6;
  v61 = v23;
  if ((v26 & 1) == 0)
  {
    v18 = [v17 shared];
    if (v18)
    {
      v27 = v18;
      v60 = [v18 isProfilePrivacyModificationRestricted];

      goto LABEL_17;
    }

LABEL_26:
    __break(1u);
    return MEMORY[0x28217F228](v18, v19, v20);
  }

  v60 = 1;
LABEL_17:
  v28 = *(v0 + 576);
  v29 = *(v0 + 568);
  v30 = *(v0 + 560);
  v31 = *(v0 + 552);
  v32 = *(v0 + 643);
  v58 = *(v0 + 641);
  v59 = *(v0 + 642);
  v56 = *(v0 + 639);
  v57 = *(v0 + 640);
  v51 = *(v0 + 644);
  v52 = *(v0 + 637);
  v54 = *(v0 + 638);
  v55 = *(v0 + 636);
  v33 = *(v0 + 632);
  v34 = *(v0 + 544) != 0;
  v35 = *(v0 + 120);
  v53 = *(v0 + 112);
  v36 = *(v0 + 104);
  sub_24E6009C8(*(v0 + 352), v35, &unk_27F23E1F0);
  *(v35 + v36[5]) = v32;
  *(v35 + v36[6]) = v33 & 1;
  *(v35 + v36[7]) = BYTE1(v33) & 1;
  *(v35 + v36[8]) = BYTE2(v33) & 1;
  *(v35 + v36[9]) = v31;
  *(v35 + v36[10]) = v30;
  *(v35 + v36[11]) = v29;
  *(v35 + v36[12]) = v28;
  *(v35 + v36[13]) = v51;
  *(v35 + v36[14]) = v63 & 1;
  *(v35 + v36[15]) = v62 & 1;
  *(v35 + v36[16]) = v61;
  *(v35 + v36[17]) = v60;
  v37 = (v35 + v36[18]);
  *v37 = v34;
  v37[1] = v52;
  v37[2] = v54;
  v37[3] = v56;
  v37[4] = v57;
  v37[5] = v58;
  v37[6] = v55;
  v37[7] = v59;
  sub_24F65A404(v35, v53, type metadata accessor for ImpedimentFlowDestinationsIntent);
  v38 = sub_24F9220B8();
  v39 = sub_24F92BD98();
  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v0 + 112);
  if (v40)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v64 = v43;
    *v42 = 136315138;
    v44 = sub_24EBB6BC4();
    v46 = v45;
    sub_24F6587D0(v41, type metadata accessor for ImpedimentFlowDestinationsIntent);
    v47 = sub_24E7620D4(v44, v46, &v64);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_24E5DD000, v38, v39, "Resulting ImpedimentFlowDestinationsIntent: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x2530542D0](v43, -1, -1);
    MEMORY[0x2530542D0](v42, -1, -1);
  }

  else
  {

    sub_24F6587D0(v41, type metadata accessor for ImpedimentFlowDestinationsIntent);
  }

  *(v0 + 592) = *(*(v0 + 72) + 16);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v49 = swift_task_alloc();
  *(v0 + 600) = v49;
  *v49 = v0;
  v49[1] = sub_24F652980;
  v18 = (v0 + 16);
  v19 = v48;
  v20 = v48;

  return MEMORY[0x28217F228](v18, v19, v20);
}

uint64_t sub_24F652980()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  v3 = *(v2 + 432);
  v4 = *(v2 + 424);
  if (v0)
  {
    v5 = sub_24F6532F0;
  }

  else
  {
    v5 = sub_24F652ABC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F652ABC()
{
  v1 = sub_24F9220B8();
  v2 = sub_24F92BD98();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24E5DD000, v1, v2, "Dispatching ImpedimentFlowDestinationsIntent to JS...", v3, 2u);
    MEMORY[0x2530542D0](v3, -1, -1);
  }

  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v6 = swift_task_alloc();
  v0[77] = v6;
  v7 = sub_24F658634(&qword_27F21D5F0, type metadata accessor for ImpedimentFlowDestinationsIntent);
  *v6 = v0;
  v6[1] = sub_24F652C2C;
  v8 = v0[74];
  v9 = v0[15];
  v10 = v0[13];

  return MEMORY[0x28217F4B0](v0 + 7, v9, v8, v10, v7, v4, v5);
}

uint64_t sub_24F652C2C()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  v3 = *(v2 + 432);
  v4 = *(v2 + 424);
  if (v0)
  {
    v5 = sub_24F653748;
  }

  else
  {
    v5 = sub_24F652D68;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F652D68()
{
  v37 = v0;

  v1 = *(v0 + 56);
  if (*(v1 + 16))
  {
    v2 = *(*(v0 + 88) + 80);
    sub_24F65A404(v1 + ((v2 + 32) & ~v2), *(v0 + 96), type metadata accessor for ImpedimentFlowDestination);

    v3 = sub_24F9220B8();
    v4 = sub_24F92BD98();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 384);
    v7 = *(v0 + 120);
    if (v5)
    {
      v8 = *(v0 + 80);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36 = v10;
      *v9 = 136315138;
      v11 = MEMORY[0x253050F40](v1, v8);
      v13 = v12;

      v14 = sub_24E7620D4(v11, v13, &v36);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_24E5DD000, v3, v4, "JS returned %s.\nPresenting the first impediment..", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x2530542D0](v10, -1, -1);
      MEMORY[0x2530542D0](v9, -1, -1);
    }

    else
    {
    }

    sub_24F6587D0(v7, type metadata accessor for ImpedimentFlowDestinationsIntent);
    sub_24E601704(v6, &unk_27F23E1F0);
    sub_24F65A46C(*(v0 + 96), *(v0 + 64), type metadata accessor for ImpedimentFlowDestination);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  else
  {

    v15 = sub_24F9220B8();
    v16 = sub_24F92BD98();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24E5DD000, v15, v16, "JS returned no impediments.", v17, 2u);
      MEMORY[0x2530542D0](v17, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    v18 = sub_24F9220B8();
    v19 = sub_24F92BD98();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24E5DD000, v18, v19, "There is no impediments to be presented.", v20, 2u);
      MEMORY[0x2530542D0](v20, -1, -1);
    }

    v35 = *(v0 + 642);
    v34 = *(v0 + 641);
    v33 = *(v0 + 640);
    v32 = *(v0 + 639);
    v21 = *(v0 + 638);
    v22 = *(v0 + 637);
    v23 = *(v0 + 544);
    v24 = *(v0 + 636);
    v25 = *(v0 + 384);
    v26 = *(v0 + 120);
    v27 = *(v0 + 64);

    sub_24F6587D0(v26, type metadata accessor for ImpedimentFlowDestinationsIntent);
    v28 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B110) + 48));
    sub_24E6009C8(v25, v27, &unk_27F23E1F0);
    *v28 = v23 != 0;
    v28[1] = v22;
    v28[2] = v21;
    v28[3] = v32;
    v28[4] = v33;
    v28[5] = v34;
    v28[6] = v24;
    v28[7] = v35;
    swift_storeEnumTagMultiPayload();
  }

  v29 = *(v0 + 408);
  sub_24E601704(*(v0 + 280), &qword_27F22D4D8);
  sub_24E601704(v29, &qword_27F22D4E0);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_24F6532F0()
{

  v1 = *(v0 + 608);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Failed to resolve ImpedimentFlowDestinationsIntent: %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = sub_24F9220B8();
  v10 = sub_24F92BD98();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24E5DD000, v9, v10, "There is no impediments to be presented.", v11, 2u);
    MEMORY[0x2530542D0](v11, -1, -1);
  }

  v26 = *(v0 + 642);
  v25 = *(v0 + 641);
  v24 = *(v0 + 640);
  v23 = *(v0 + 639);
  v12 = *(v0 + 638);
  v13 = *(v0 + 637);
  v14 = *(v0 + 544);
  v15 = *(v0 + 636);
  v16 = *(v0 + 384);
  v17 = *(v0 + 120);
  v18 = *(v0 + 64);

  sub_24F6587D0(v17, type metadata accessor for ImpedimentFlowDestinationsIntent);
  v19 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B110) + 48));
  sub_24E6009C8(v16, v18, &unk_27F23E1F0);
  *v19 = v14 != 0;
  v19[1] = v13;
  v19[2] = v12;
  v19[3] = v23;
  v19[4] = v24;
  v19[5] = v25;
  v19[6] = v15;
  v19[7] = v26;
  swift_storeEnumTagMultiPayload();
  v20 = *(v0 + 408);
  sub_24E601704(*(v0 + 280), &qword_27F22D4D8);
  sub_24E601704(v20, &qword_27F22D4E0);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24F653748()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 624);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Failed to resolve ImpedimentFlowDestinationsIntent: %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = sub_24F9220B8();
  v10 = sub_24F92BD98();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24E5DD000, v9, v10, "There is no impediments to be presented.", v11, 2u);
    MEMORY[0x2530542D0](v11, -1, -1);
  }

  v26 = *(v0 + 642);
  v25 = *(v0 + 641);
  v24 = *(v0 + 640);
  v23 = *(v0 + 639);
  v12 = *(v0 + 638);
  v13 = *(v0 + 637);
  v14 = *(v0 + 544);
  v15 = *(v0 + 636);
  v16 = *(v0 + 384);
  v17 = *(v0 + 120);
  v18 = *(v0 + 64);

  sub_24F6587D0(v17, type metadata accessor for ImpedimentFlowDestinationsIntent);
  v19 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B110) + 48));
  sub_24E6009C8(v16, v18, &unk_27F23E1F0);
  *v19 = v14 != 0;
  v19[1] = v13;
  v19[2] = v12;
  v19[3] = v23;
  v19[4] = v24;
  v19[5] = v25;
  v19[6] = v15;
  v19[7] = v26;
  swift_storeEnumTagMultiPayload();
  v20 = *(v0 + 408);
  sub_24E601704(*(v0 + 280), &qword_27F22D4D8);
  sub_24E601704(v20, &qword_27F22D4E0);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24F653BA8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_24F921338();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = sub_24F92B7F8();
  v2[13] = sub_24F92B7E8();
  v5 = sub_24F92B778();
  v2[14] = v5;
  v2[15] = v4;

  return MEMORY[0x2822009F8](sub_24F653CA0, v5, v4);
}

uint64_t sub_24F653CA0()
{
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[16] = __swift_project_value_buffer(v1, qword_27F39E8E0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "Getting authenticated player..", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v0[17] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v0[18] = v6;
  v0[19] = v5;

  return MEMORY[0x2822009F8](sub_24F653DEC, v6, v5);
}

uint64_t sub_24F653DEC()
{
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_24F653E94;
  v2 = v0[11];
  v3 = v0[9];

  return MEMORY[0x28217F228](v2, v3, v3);
}

uint64_t sub_24F653E94()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_24F654254;
  }

  else
  {
    v5 = sub_24F653FD0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F653FD0()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_24F654034, v1, v2);
}

uint64_t sub_24F654034()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  sub_24F921318();
  (*(v2 + 8))(v1, v3);
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_24F654110;

  return MEMORY[0x282165230](v4, v5);
}

uint64_t sub_24F654110(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  v5 = *(v3 + 120);
  v6 = *(v3 + 112);
  if (v1)
  {
    v7 = sub_24F654660;
  }

  else
  {
    v7 = sub_24F654474;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24F654254()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_24F6542B8, v1, v2);
}

uint64_t sub_24F6542B8()
{

  v1 = v0[21];
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Error getting the authenticated player: %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = v0[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24F654474()
{
  v1 = v0[23];

  v2 = v0[23];
  if (*(v1 + 16))
  {
    v3 = v0[7];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
    v5 = *(v4 - 8);
    (*(v5 + 16))(v3, v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

    (*(v5 + 56))(v3, 0, 1, v4);
  }

  else
  {

    v6 = sub_24F9220B8();
    v7 = sub_24F92BDB8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24E5DD000, v6, v7, "No authenticated player found. Need to sign in?", v8, 2u);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    v9 = v0[7];

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v11 = v0[1];

  return v11();
}

uint64_t sub_24F654660()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[24];
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Error getting the authenticated player: %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = v0[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24F654824(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Player(0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_24F921338();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = sub_24F92B7F8();
  v3[15] = sub_24F92B7E8();
  v7 = sub_24F92B778();
  v3[16] = v7;
  v3[17] = v6;

  return MEMORY[0x2822009F8](sub_24F6549CC, v7, v6);
}

uint64_t sub_24F6549CC()
{
  (*(v0[6] + 56))(v0[13], 1, 1, v0[5]);
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[18] = __swift_project_value_buffer(v1, qword_27F39E8E0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "Getting the player's profile..", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v0[19] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v0[20] = v6;
  v0[21] = v5;

  return MEMORY[0x2822009F8](sub_24F654B38, v6, v5);
}

uint64_t sub_24F654B38()
{
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_24F654BE0;
  v2 = v0[10];
  v3 = v0[8];

  return MEMORY[0x28217F228](v2, v3, v3);
}

uint64_t sub_24F654BE0()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_24F654F70;
  }

  else
  {
    v5 = sub_24F654D1C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F654D1C()
{

  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_24F654DD8;
  v2 = v0[12];
  v3 = v0[3];

  return sub_24F64E570(v2, v3, 2);
}

uint64_t sub_24F654DD8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 200) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_24F6558DC;
  }

  else
  {
    v8 = sub_24F655390;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24F654F70()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_24F654FD4, v1, v2);
}

uint64_t sub_24F654FD4()
{
  v1 = v0[23];
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Error getting Player from gamed via GameService, reason: %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = v0[11];
  v10 = v0[5];
  v11 = v0[6];
  sub_24E60169C(v0[13], v9, &unk_27F23E1F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24E601704(v0[11], &unk_27F23E1F0);
    v12 = sub_24F9220B8();
    v13 = sub_24F92BDB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24E5DD000, v12, v13, "Unable to get the player. Using GKLocalPlayer as a last resort.", v14, 2u);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    v15 = swift_task_alloc();
    v0[26] = v15;
    *v15 = v0;
    v15[1] = sub_24F655688;

    return sub_24F3FE354();
  }

  else
  {
    v17 = v0[11];
    v18 = v0[7];

    sub_24F65A46C(v17, v18, type metadata accessor for Player);
    v19 = sub_24F9220B8();
    v20 = sub_24F92BD98();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24E5DD000, v19, v20, "A valid player is received.", v21, 2u);
      MEMORY[0x2530542D0](v21, -1, -1);
    }

    v22 = v0[13];
    v23 = v0[7];
    v24 = v0[2];

    sub_24E601704(v22, &unk_27F23E1F0);
    sub_24F65A46C(v23, v24, type metadata accessor for Player);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_24F655390()
{
  v1 = v0[12];
  v2 = v0[13];
  sub_24E601704(v2, &unk_27F23E1F0);
  sub_24E6009C8(v1, v2, &unk_27F23E1F0);
  v3 = v0[11];
  v4 = v0[5];
  v5 = v0[6];
  sub_24E60169C(v0[13], v3, &unk_27F23E1F0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_24E601704(v0[11], &unk_27F23E1F0);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BDB8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24E5DD000, v6, v7, "Unable to get the player. Using GKLocalPlayer as a last resort.", v8, 2u);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    v9 = swift_task_alloc();
    v0[26] = v9;
    *v9 = v0;
    v9[1] = sub_24F655688;

    return sub_24F3FE354();
  }

  else
  {
    v11 = v0[11];
    v12 = v0[7];

    sub_24F65A46C(v11, v12, type metadata accessor for Player);
    v13 = sub_24F9220B8();
    v14 = sub_24F92BD98();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24E5DD000, v13, v14, "A valid player is received.", v15, 2u);
      MEMORY[0x2530542D0](v15, -1, -1);
    }

    v16 = v0[13];
    v17 = v0[7];
    v18 = v0[2];

    sub_24E601704(v16, &unk_27F23E1F0);
    sub_24F65A46C(v17, v18, type metadata accessor for Player);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_24F655688(uint64_t a1)
{
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_24F655788, 0, 0);
}

uint64_t sub_24F655788()
{
  v1 = v0[27];
  v2 = v0[2];
  v3 = [v1 internal];

  sub_24F3FAC70(v3, 0, 0, v2);
  v4 = v0[16];
  v5 = v0[17];

  return MEMORY[0x2822009F8](sub_24F655828, v4, v5);
}

uint64_t sub_24F655828()
{
  v1 = *(v0 + 104);

  sub_24E601704(v1, &unk_27F23E1F0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F6558DC()
{
  v1 = v0[25];
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Error getting Player from gamed via GameService, reason: %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = v0[11];
  v10 = v0[5];
  v11 = v0[6];
  sub_24E60169C(v0[13], v9, &unk_27F23E1F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24E601704(v0[11], &unk_27F23E1F0);
    v12 = sub_24F9220B8();
    v13 = sub_24F92BDB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24E5DD000, v12, v13, "Unable to get the player. Using GKLocalPlayer as a last resort.", v14, 2u);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    v15 = swift_task_alloc();
    v0[26] = v15;
    *v15 = v0;
    v15[1] = sub_24F655688;

    return sub_24F3FE354();
  }

  else
  {
    v17 = v0[11];
    v18 = v0[7];

    sub_24F65A46C(v17, v18, type metadata accessor for Player);
    v19 = sub_24F9220B8();
    v20 = sub_24F92BD98();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24E5DD000, v19, v20, "A valid player is received.", v21, 2u);
      MEMORY[0x2530542D0](v21, -1, -1);
    }

    v22 = v0[13];
    v23 = v0[7];
    v24 = v0[2];

    sub_24E601704(v22, &unk_27F23E1F0);
    sub_24F65A46C(v23, v24, type metadata accessor for Player);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_24F655C98(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v3[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_24F921338();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = sub_24F92B7F8();
  v3[20] = sub_24F92B7E8();
  v3[21] = sub_24F92B7E8();
  v7 = sub_24F92B778();
  v3[22] = v7;
  v3[23] = v6;

  return MEMORY[0x2822009F8](sub_24F655E40, v7, v6);
}

uint64_t sub_24F655E40()
{
  v0[24] = *(v0[11] + 16);
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_24F655EEC;
  v2 = v0[18];
  v3 = v0[16];

  return MEMORY[0x28217F228](v2, v3, v3);
}

uint64_t sub_24F655EEC()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_24F6562C8;
  }

  else
  {
    v5 = sub_24F656028;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F656028()
{

  v2 = sub_24F92B778();
  *(v0 + 216) = v2;
  *(v0 + 224) = v1;

  return MEMORY[0x2822009F8](sub_24F6560AC, v2, v1);
}

uint64_t sub_24F6560AC()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  sub_24F9212E8();
  (*(v2 + 8))(v1, v3);
  v4 = type metadata accessor for ASKBagContract();
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_24F65618C;

  return MEMORY[0x28217F210](v0 + 7, v4, v4);
}

uint64_t sub_24F65618C()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_24F656EF8;
  }

  else
  {
    v5 = sub_24F65655C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F6562C8()
{

  v1 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F65634C, v1, v0);
}

uint64_t sub_24F65634C()
{

  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[26];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Error getting onboarding service for player: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[9];
  v13 = sub_24F920958();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24F65655C()
{
  if (v0[7])
  {
    if (qword_27F210A48 != -1)
    {
      swift_once();
    }

    v2 = v0[14];
    v1 = v0[15];
    v3 = v0[13];
    sub_24F92A398();
    sub_24F92A408();

    (*(v2 + 8))(v1, v3);
    v4 = v0[8];
  }

  else
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v5 = sub_24F9220D8();
    __swift_project_value_buffer(v5, qword_27F39E8E0);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BDB8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = 0x40F5180000000000;
      _os_log_impl(&dword_24E5DD000, v6, v7, "Failure to get ASK Bag, using %f seconds TTL as fallback", v8, 0xCu);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    v4 = 86400.0;
  }

  if (sub_24F658E00(v4))
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v9 = sub_24F9220D8();
    v0[31] = __swift_project_value_buffer(v9, qword_27F39E8E0);
    v10 = sub_24F9220B8();
    v11 = sub_24F92BD98();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24E5DD000, v10, v11, "Refreshing onboarding state..", v12, 2u);
      MEMORY[0x2530542D0](v12, -1, -1);
    }

    v13 = v0[5];
    v14 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
    v15 = swift_task_alloc();
    v0[32] = v15;
    *v15 = v0;
    v15[1] = sub_24F6569C0;
    v16 = v0[10];

    return MEMORY[0x2821651F8](v16, v13, v14);
  }

  else
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v17 = sub_24F9220D8();
    v0[34] = __swift_project_value_buffer(v17, qword_27F39E8E0);
    v18 = sub_24F9220B8();
    v19 = sub_24F92BD98();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24E5DD000, v18, v19, "Getting onboarding state..", v20, 2u);
      MEMORY[0x2530542D0](v20, -1, -1);
    }

    v21 = v0[5];
    v22 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v21);
    v23 = swift_task_alloc();
    v0[35] = v23;
    *v23 = v0;
    v23[1] = sub_24F656CF0;
    v24 = v0[9];
    v25 = v0[10];

    return MEMORY[0x282165208](v24, v25, v21, v22);
  }
}

uint64_t sub_24F6569C0()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_24F65731C;
  }

  else
  {
    v5 = sub_24F656AFC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F656AFC()
{
  v1 = v0[12];
  v2 = [objc_opt_self() standardUserDefaults];
  sub_24F91F638();
  v3 = sub_24F91F648();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  sub_24F005A08(v1);

  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v4 = sub_24F9220D8();
  v0[34] = __swift_project_value_buffer(v4, qword_27F39E8E0);
  v5 = sub_24F9220B8();
  v6 = sub_24F92BD98();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24E5DD000, v5, v6, "Getting onboarding state..", v7, 2u);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v10 = swift_task_alloc();
  v0[35] = v10;
  *v10 = v0;
  v10[1] = sub_24F656CF0;
  v11 = v0[9];
  v12 = v0[10];

  return MEMORY[0x282165208](v11, v12, v8, v9);
}

uint64_t sub_24F656CF0()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_24F6575F8;
  }

  else
  {
    v5 = sub_24F656E2C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F656E2C()
{
  v1 = *(v0 + 72);

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v2 = sub_24F920958();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24F656EF8()
{
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[30];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218242;
    *(v8 + 4) = 0x40F5180000000000;
    *(v8 + 12) = 2112;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Error reading the bag value for TTL, falling back to %f seconds: %@", v8, 0x16u);
    sub_24E601704(v9, &qword_27F227B20);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  if (sub_24F658E00(86400.0))
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v0[31] = __swift_project_value_buffer(v2, qword_27F39E8E0);
    v12 = sub_24F9220B8();
    v13 = sub_24F92BD98();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24E5DD000, v12, v13, "Refreshing onboarding state..", v14, 2u);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    v15 = v0[5];
    v16 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
    v17 = swift_task_alloc();
    v0[32] = v17;
    *v17 = v0;
    v17[1] = sub_24F6569C0;
    v18 = v0[10];

    return MEMORY[0x2821651F8](v18, v15, v16);
  }

  else
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v0[34] = __swift_project_value_buffer(v2, qword_27F39E8E0);
    v19 = sub_24F9220B8();
    v20 = sub_24F92BD98();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24E5DD000, v19, v20, "Getting onboarding state..", v21, 2u);
      MEMORY[0x2530542D0](v21, -1, -1);
    }

    v22 = v0[5];
    v23 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v22);
    v24 = swift_task_alloc();
    v0[35] = v24;
    *v24 = v0;
    v24[1] = sub_24F656CF0;
    v25 = v0[9];
    v26 = v0[10];

    return MEMORY[0x282165208](v25, v26, v22, v23);
  }
}

uint64_t sub_24F65731C()
{
  v1 = v0[33];
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[33];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Error refreshing onboarding state for player. Refresh will be attempted next time: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[33];
  v11 = v0[12];

  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_24F91F648();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_24F005A08(v11);

  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v14 = sub_24F9220D8();
  v0[34] = __swift_project_value_buffer(v14, qword_27F39E8E0);
  v15 = sub_24F9220B8();
  v16 = sub_24F92BD98();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_24E5DD000, v15, v16, "Getting onboarding state..", v17, 2u);
    MEMORY[0x2530542D0](v17, -1, -1);
  }

  v18 = v0[5];
  v19 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v18);
  v20 = swift_task_alloc();
  v0[35] = v20;
  *v20 = v0;
  v20[1] = sub_24F656CF0;
  v21 = v0[9];
  v22 = v0[10];

  return MEMORY[0x282165208](v21, v22, v18, v19);
}

uint64_t sub_24F6575F8()
{
  v1 = v0[36];

  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[36];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Error getting onboarding state for player: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[9];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v12 = sub_24F920958();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24F6577CC()
{
  v1[4] = v0;
  sub_24F92B7F8();
  v1[5] = sub_24F92B7E8();
  v3 = sub_24F92B778();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_24F657864, v3, v2);
}