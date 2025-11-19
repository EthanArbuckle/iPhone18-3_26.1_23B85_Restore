unint64_t sub_24E89261C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000016;
  if (v1 == 2)
  {
    v5 = 7955819;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24E892708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E893C28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E892730(uint64_t a1)
{
  v2 = sub_24E893604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E89276C(uint64_t a1)
{
  v2 = sub_24E893604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E8927A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 40), &v9 - v6, &qword_27F215440);
  return sub_24E68039C(v7, a2);
}

unint64_t sub_24E8928D8()
{
  result = qword_27F2203C8;
  if (!qword_27F2203C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2203C8);
  }

  return result;
}

uint64_t sub_24E89292C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v77 = a4;
  v76 = a3;
  v81 = a2;
  v79 = a6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2203E0) - 8;
  MEMORY[0x28223BE20](v80);
  v78 = &v74 - v8;
  v9 = type metadata accessor for BoolSetting();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = *(a1 + 48);
  v75 = *(a1 + 40);
  v87 = *(a1 + 56);
  v13 = v87;
  v14 = BoolSettingKey.rawValue.getter();
  v16 = v15;
  sub_24E8931C0(a1, &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  sub_24E893434(&v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = v18 + ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = v76;
  v21 = v81;
  *v19 = v81;
  v22 = v21 & 1;
  *(v19 + 8) = v20;
  v81 = v77 & 1;
  *(v19 + 16) = v77;
  *(v19 + 24) = a5;

  v23 = sub_24F923278();
  *&v88 = v75;
  *(&v88 + 1) = v12;
  *&v89 = v14;
  *(&v89 + 1) = v16;
  LOBYTE(v90) = (v13 < 0x2A) & (0x22017800202uLL >> v13);
  *(&v90 + 1) = v82[0];
  DWORD1(v90) = *(v82 + 3);
  *(&v90 + 1) = sub_24E893498;
  *&v91 = v18;
  *(&v91 + 1) = v23;
  v92[0] = v75;
  v92[1] = v12;
  v92[2] = v14;
  v24 = v78;
  v92[3] = v16;
  v25 = v79;
  v93 = v90;
  *&v94[3] = *(v82 + 3);
  *v94 = v82[0];
  v95 = sub_24E893498;
  v96 = v18;
  v97 = v23;
  sub_24E893544(&v88, &v84);
  sub_24E8935A0(v92);
  v26 = *(sub_24F924258() + 20);
  v27 = *MEMORY[0x277CE0118];
  v28 = sub_24F924B38();
  (*(*(v28 - 8) + 104))(&v24[v26], v27, v28);
  __asm { FMOV            V0.2D, #12.0 }

  *v24 = _Q0;
  *&v24[*(sub_24F924248() + 20)] = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v34 = sub_24F926D08();

  *&v24[*(v80 + 60)] = v34;
  sub_24E60169C(v24, v25, &qword_27F2203E0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2203E8);
  v36 = (v25 + v35[9]);
  v37 = v89;
  *v36 = v88;
  v36[1] = v37;
  v38 = v91;
  v36[2] = v90;
  v36[3] = v38;
  v39 = v25 + v35[10];
  sub_24E893544(&v88, &v84);
  *v39 = sub_24F923398() & 1;
  *(v39 + 8) = v40;
  *(v39 + 16) = v41 & 1;
  v42 = v25 + v35[11];
  *v42 = swift_getKeyPath();
  *(v42 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v43 = qword_27F24E488;
  v44 = sub_24F923398();
  v46 = v45;
  v48 = v47;
  v49 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2203F0) + 36);
  *v49 = v43;
  *(v49 + 8) = v44 & 1;
  *(v49 + 16) = v46;
  *(v49 + 24) = v48 & 1;
  LOBYTE(v43) = sub_24F923398();
  v51 = v50;
  LOBYTE(v46) = v52;
  sub_24E8935A0(&v88);
  sub_24E601704(v24, &qword_27F2203E0);
  v53 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2203F8) + 36);
  *v53 = v43 & 1;
  *(v53 + 8) = v51;
  *(v53 + 16) = v46 & 1;
  LOBYTE(v43) = sub_24F925868();
  sub_24F923318();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220400) + 36);
  *v62 = v43;
  *(v62 + 8) = v55;
  *(v62 + 16) = v57;
  *(v62 + 24) = v59;
  *(v62 + 32) = v61;
  *(v62 + 40) = 0;
  v63 = sub_24F926CA8();
  KeyPath = swift_getKeyPath();
  v65 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220408) + 36));
  *v65 = KeyPath;
  v65[1] = v63;
  LOBYTE(v82[0]) = v22;
  v83 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F58();
  v66 = v84;
  v67 = v85;
  v68 = v86;
  LOBYTE(v82[0]) = v81;
  v83 = a5;
  sub_24F926F58();
  v69 = v84;
  v70 = v85;
  v71 = v86;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220410);
  v73 = v25 + *(result + 36);
  *v73 = v66;
  *(v73 + 8) = v67;
  *(v73 + 16) = v68;
  *(v73 + 24) = v69;
  *(v73 + 32) = v70;
  *(v73 + 40) = v71;
  return result;
}

uint64_t sub_24E892F54(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 58) == 1 || *(a2 + 57) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
    return sub_24F926F48();
  }

  return result;
}

uint64_t sub_24E892FEC()
{
  sub_24E8928D8();

  return sub_24F9218E8();
}

unint64_t sub_24E8930C0()
{
  result = qword_27F2203D8;
  if (!qword_27F2203D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2203D8);
  }

  return result;
}

uint64_t sub_24E8931C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BoolSetting();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E893224()
{
  v1 = type metadata accessor for BoolSetting();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  __swift_destroy_boxed_opaque_existential_1(v2);

  if (*(v2 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 64);
  }

  v3 = *(v1 + 40);
  v4 = sub_24F92A6D8();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = *(v1 + 44);
  v7 = sub_24F929608();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_24E893434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BoolSetting();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E893498(uint64_t a1)
{
  v3 = *(type metadata accessor for BoolSetting() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24E892F54(a1, v4);
}

unint64_t sub_24E893604()
{
  result = qword_27F220420;
  if (!qword_27F220420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220420);
  }

  return result;
}

unint64_t sub_24E893658()
{
  result = qword_27F220428;
  if (!qword_27F220428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220428);
  }

  return result;
}

uint64_t sub_24E8936AC(uint64_t a1)
{
  v2 = type metadata accessor for BoolSetting();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E893708()
{
  result = qword_27F220438;
  if (!qword_27F220438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220438);
  }

  return result;
}

uint64_t sub_24E89375C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E8937B8()
{
  result = qword_27F220440;
  if (!qword_27F220440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220410);
    sub_24E893844();
    sub_24E893ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220440);
  }

  return result;
}

unint64_t sub_24E893844()
{
  result = qword_27F220448;
  if (!qword_27F220448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220408);
    sub_24E8938FC();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220448);
  }

  return result;
}

unint64_t sub_24E8938FC()
{
  result = qword_27F220450;
  if (!qword_27F220450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220400);
    sub_24E893988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220450);
  }

  return result;
}

unint64_t sub_24E893988()
{
  result = qword_27F220458;
  if (!qword_27F220458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2203F8);
    sub_24E893A14();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220458);
  }

  return result;
}

unint64_t sub_24E893A14()
{
  result = qword_27F220460;
  if (!qword_27F220460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2203F0);
    sub_24E602068(&qword_27F220468, &qword_27F2203E8);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220460);
  }

  return result;
}

unint64_t sub_24E893ACC()
{
  result = qword_27F220470;
  if (!qword_27F220470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220470);
  }

  return result;
}

unint64_t sub_24E893B24()
{
  result = qword_27F220478;
  if (!qword_27F220478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220478);
  }

  return result;
}

unint64_t sub_24E893B7C()
{
  result = qword_27F220480;
  if (!qword_27F220480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220480);
  }

  return result;
}

unint64_t sub_24E893BD4()
{
  result = qword_27F220488;
  if (!qword_27F220488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220488);
  }

  return result;
}

uint64_t sub_24E893C28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA48A20 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA48A40 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
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

uint64_t ChallengesHubDataIntent.playerID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ChallengesHubDataIntent.gameBundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24E893F34()
{
  if (*v0)
  {
    return 0x646E7542656D6167;
  }

  else
  {
    return 0x4449726579616C70;
  }
}

uint64_t sub_24E893F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449726579616C70 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E7542656D6167 && a2 == 0xEC0000004449656CLL)
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

uint64_t sub_24E894058(uint64_t a1)
{
  v2 = sub_24E894264();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E894094(uint64_t a1)
{
  v2 = sub_24E894264();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesHubDataIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220490);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E894264();
  sub_24F92D128();
  v12 = 0;
  v8 = v10[3];
  sub_24F92CD08();
  if (!v8)
  {
    v11 = 1;
    sub_24F92CCA8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24E894264()
{
  result = qword_27F220498;
  if (!qword_27F220498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220498);
  }

  return result;
}

uint64_t ChallengesHubDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2204A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E894264();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_24F92CBC8();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24E89452C()
{
  result = qword_27F2204A8;
  if (!qword_27F2204A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2204A8);
  }

  return result;
}

unint64_t sub_24E894584()
{
  result = qword_27F2204B0;
  if (!qword_27F2204B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2204B0);
  }

  return result;
}

unint64_t sub_24E8945DC()
{
  result = qword_27F2204B8;
  if (!qword_27F2204B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2204B8);
  }

  return result;
}

uint64_t ChallengesLeaderboardPickerPageIntent.initiatorID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ChallengesLeaderboardPickerPageIntent.gameBundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t ChallengesLeaderboardPickerPageIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x6F74616974696E69;
  v8 = MEMORY[0x277D837D0];
  v9 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v9;
  *(inited + 40) = 0xEB00000000444972;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  strcpy((inited + 88), "gameBundleID");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 128) = v8;
  *(inited + 136) = v9;
  *(inited + 104) = v6;
  *(inited + 112) = v5;

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

uint64_t sub_24E8947FC()
{
  if (*v0)
  {
    return 0x646E7542656D6167;
  }

  else
  {
    return 0x6F74616974696E69;
  }
}

uint64_t sub_24E894848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F74616974696E69 && a2 == 0xEB00000000444972;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E7542656D6167 && a2 == 0xEC0000004449656CLL)
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

uint64_t sub_24E89492C(uint64_t a1)
{
  v2 = sub_24E894ED8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E894968(uint64_t a1)
{
  v2 = sub_24E894ED8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesLeaderboardPickerPageIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2204C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E894ED8();
  sub_24F92D128();
  v12 = 0;
  v8 = v10[3];
  sub_24F92CD08();
  if (!v8)
  {
    v11 = 1;
    sub_24F92CD08();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ChallengesLeaderboardPickerPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2204D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E894ED8();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_24F92CC28();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24E894D88@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x6F74616974696E69;
  v8 = MEMORY[0x277D837D0];
  v9 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v9;
  *(inited + 40) = 0xEB00000000444972;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  strcpy((inited + 88), "gameBundleID");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 128) = v8;
  *(inited + 136) = v9;
  *(inited + 104) = v6;
  *(inited + 112) = v5;

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

unint64_t sub_24E894ED8()
{
  result = qword_27F2204C8;
  if (!qword_27F2204C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2204C8);
  }

  return result;
}

unint64_t sub_24E894F50()
{
  result = qword_27F2204D8;
  if (!qword_27F2204D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2204D8);
  }

  return result;
}

unint64_t sub_24E894FA8()
{
  result = qword_27F2204E0;
  if (!qword_27F2204E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2204E0);
  }

  return result;
}

unint64_t sub_24E895000()
{
  result = qword_27F2204E8;
  if (!qword_27F2204E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2204E8);
  }

  return result;
}

uint64_t type metadata accessor for ButtonGroupItemType()
{
  result = qword_27F2204F0;
  if (!qword_27F2204F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E8950A0()
{
  sub_24E60257C();
  if (v0 <= 0x3F)
  {
    sub_24E89513C(319);
    if (v1 <= 0x3F)
    {
      sub_24E895270();
      if (v2 <= 0x3F)
      {
        sub_24E8952E8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_24E89513C(uint64_t a1)
{
  if (!qword_27F220500)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220508);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F220500);
    }
  }
}

void sub_24E895270()
{
  if (!qword_27F220510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212E30);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F220510);
    }
  }
}

void sub_24E8952E8()
{
  if (!qword_27F220518)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F220518);
    }
  }
}

uint64_t sub_24E895350@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220520);
  v87 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v94 = &v76 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220528);
  v84 = *(v4 - 8);
  v85 = v4;
  MEMORY[0x28223BE20](v4);
  v93 = &v76 - v5;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220530);
  v86 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v76 - v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220538);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v88 = &v76 - v7;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220540);
  v96 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v9 = &v76 - v8;
  v89 = type metadata accessor for ButtonGroupItemType();
  MEMORY[0x28223BE20](v89);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v76 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v76 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = (&v76 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v76 - v22;
  v24 = a1[3];
  v98 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24E8964E4();
  v25 = v97;
  sub_24F92D108();
  if (!v25)
  {
    v78 = v20;
    v77 = v11;
    v80 = v14;
    v76 = v17;
    v27 = v93;
    v26 = v94;
    v28 = v91;
    v29 = v92;
    v97 = 0;
    v79 = v23;
    v30 = v95;
    v31 = v90;
    v32 = sub_24F92CC78();
    v33 = (2 * *(v32 + 16)) | 1;
    v99 = v32;
    v100 = v32 + 32;
    v101 = 0;
    v102 = v33;
    v34 = sub_24E643440();
    if (v34 == 4 || v101 != v102 >> 1)
    {
      v39 = sub_24F92C918();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
      *v41 = v89;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
      swift_willThrow();
    }

    else if (v34 > 1u)
    {
      if (v34 == 2)
      {
        v105 = 2;
        sub_24E8965E0();
        v43 = v97;
        sub_24F92CBA8();
        v44 = v96;
        if (!v43)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E30);
          v45 = v27;
          v105 = 0;
          sub_24E6036BC();
          v46 = v80;
          v47 = v85;
          sub_24F92CC68();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220568);
          v105 = 1;
          sub_24E89658C();
          sub_24F92CC68();
          (*(v84 + 8))(v45, v47);
          (*(v44 + 8))(v9, v31);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v72 = v46;
LABEL_21:
          v69 = v79;
          sub_24E7D8334(v72, v79);
          v35 = v30;
          goto LABEL_22;
        }
      }

      else
      {
        v105 = 3;
        sub_24E896538();
        v56 = v97;
        sub_24F92CBA8();
        v57 = v96;
        if (!v56)
        {
          v105 = 0;
          v58 = v83;
          v59 = sub_24F92CC28();
          v61 = v60;
          v97 = v59;
          v105 = 1;
          v62 = sub_24F92CC28();
          v64 = v63;
          v93 = v62;
          v104 = 2;
          sub_24E89658C();
          sub_24F92CC68();
          (*(v87 + 8))(v26, v58);
          (*(v57 + 8))(v9, v31);
          swift_unknownObjectRelease();
          v73 = v105;
          v75 = v77;
          *v77 = v97;
          v75[1] = v61;
          v75[2] = v93;
          v75[3] = v64;
          *(v75 + 32) = v73;
          goto LABEL_20;
        }
      }
    }

    else
    {
      if (!v34)
      {
        v35 = v30;
        v105 = 0;
        sub_24E896744();
        v36 = v88;
        v37 = v97;
        sub_24F92CBA8();
        if (!v37)
        {
          v38 = v82;
          v65 = sub_24F92CC28();
          v67 = v66;
          (*(v81 + 8))(v36, v38);
          (*(v96 + 8))(v9, v31);
          swift_unknownObjectRelease();
          v68 = v78;
          *v78 = v65;
          *(v68 + 8) = v67;
          swift_storeEnumTagMultiPayload();
          v69 = v79;
          sub_24E7D8334(v68, v79);
LABEL_22:
          sub_24E7D8334(v69, v35);
          return __swift_destroy_boxed_opaque_existential_1(v98);
        }

        goto LABEL_9;
      }

      v105 = 1;
      sub_24E89669C();
      v48 = v97;
      sub_24F92CBA8();
      if (!v48)
      {
        v105 = 0;
        v49 = v29;
        v50 = sub_24F92CC28();
        v51 = v28;
        v52 = v96;
        v54 = v53;
        v97 = v50;
        v105 = 1;
        v55 = sub_24F92CBC8();
        v71 = v70;
        v94 = v55;
        v104 = 2;
        sub_24E89658C();
        sub_24F92CC68();
        LODWORD(v93) = v105;
        v103 = 3;
        sub_24E8966F0();
        sub_24F92CC18();
        (*(v86 + 8))(v51, v49);
        (*(v52 + 8))(v9, v31);
        swift_unknownObjectRelease();
        v74 = v104;
        v75 = v76;
        *v76 = v97;
        v75[1] = v54;
        v75[2] = v94;
        v75[3] = v71;
        *(v75 + 32) = v93;
        *(v75 + 33) = v74;
LABEL_20:
        swift_storeEnumTagMultiPayload();
        v72 = v75;
        goto LABEL_21;
      }
    }

LABEL_9:
    (*(v96 + 8))(v9, v31);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v98);
}

uint64_t sub_24E895F50()
{
  v1 = 0x656E696C6E69;
  v2 = 0x66664F656772616CLL;
  if (*v0 != 2)
  {
    v2 = 0x64656B63617473;
  }

  if (*v0)
  {
    v1 = 0x656772616CLL;
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

uint64_t sub_24E895FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E896D10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E895FF0(uint64_t a1)
{
  v2 = sub_24E8964E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E89602C(uint64_t a1)
{
  v2 = sub_24E8964E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E896068(uint64_t a1)
{
  v2 = sub_24E896744();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E8960A4(uint64_t a1)
{
  v2 = sub_24E896744();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E8960E0()
{
  v1 = 0x656C746974;
  v2 = 0x756F726765726F66;
  if (*v0 != 2)
  {
    v2 = 0x694474756F79616CLL;
  }

  if (*v0)
  {
    v1 = 0x614E6C6F626D7973;
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

uint64_t sub_24E896174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E896E74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E89619C(uint64_t a1)
{
  v2 = sub_24E89669C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E8961D8(uint64_t a1)
{
  v2 = sub_24E89669C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E896214()
{
  if (*v0)
  {
    return 0x756F726765726F66;
  }

  else
  {
    return 0x6E496E6F74747562;
  }
}

uint64_t sub_24E896260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E496E6F74747562 && a2 == 0xEA00000000006F66;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x756F726765726F66 && a2 == 0xEF656C797453646ELL)
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

uint64_t sub_24E89634C(uint64_t a1)
{
  v2 = sub_24E8965E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E896388(uint64_t a1)
{
  v2 = sub_24E8965E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E8963C4()
{
  v1 = 0x614E6C6F626D7973;
  if (*v0 != 1)
  {
    v1 = 0x756F726765726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_24E89642C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E896FEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E896454(uint64_t a1)
{
  v2 = sub_24E896538();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E896490(uint64_t a1)
{
  v2 = sub_24E896538();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E8964E4()
{
  result = qword_27F220548;
  if (!qword_27F220548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220548);
  }

  return result;
}

unint64_t sub_24E896538()
{
  result = qword_27F220550;
  if (!qword_27F220550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220550);
  }

  return result;
}

unint64_t sub_24E89658C()
{
  result = qword_27F220558;
  if (!qword_27F220558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220558);
  }

  return result;
}

unint64_t sub_24E8965E0()
{
  result = qword_27F220560;
  if (!qword_27F220560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220560);
  }

  return result;
}

uint64_t sub_24E896634(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E89669C()
{
  result = qword_27F220570;
  if (!qword_27F220570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220570);
  }

  return result;
}

unint64_t sub_24E8966F0()
{
  result = qword_27F220578;
  if (!qword_27F220578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220578);
  }

  return result;
}

unint64_t sub_24E896744()
{
  result = qword_27F220580;
  if (!qword_27F220580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220580);
  }

  return result;
}

unint64_t sub_24E8967EC()
{
  result = qword_27F220588;
  if (!qword_27F220588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220588);
  }

  return result;
}

unint64_t sub_24E896844()
{
  result = qword_27F220590;
  if (!qword_27F220590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220590);
  }

  return result;
}

unint64_t sub_24E89689C()
{
  result = qword_27F220598;
  if (!qword_27F220598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220598);
  }

  return result;
}

unint64_t sub_24E8968F4()
{
  result = qword_27F2205A0;
  if (!qword_27F2205A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2205A0);
  }

  return result;
}

unint64_t sub_24E89694C()
{
  result = qword_27F2205A8;
  if (!qword_27F2205A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2205A8);
  }

  return result;
}

unint64_t sub_24E8969A4()
{
  result = qword_27F2205B0;
  if (!qword_27F2205B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2205B0);
  }

  return result;
}

unint64_t sub_24E8969FC()
{
  result = qword_27F2205B8;
  if (!qword_27F2205B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2205B8);
  }

  return result;
}

unint64_t sub_24E896A54()
{
  result = qword_27F2205C0;
  if (!qword_27F2205C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2205C0);
  }

  return result;
}

unint64_t sub_24E896AAC()
{
  result = qword_27F2205C8;
  if (!qword_27F2205C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2205C8);
  }

  return result;
}

unint64_t sub_24E896B04()
{
  result = qword_27F2205D0;
  if (!qword_27F2205D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2205D0);
  }

  return result;
}

unint64_t sub_24E896B5C()
{
  result = qword_27F2205D8;
  if (!qword_27F2205D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2205D8);
  }

  return result;
}

unint64_t sub_24E896BB4()
{
  result = qword_27F2205E0;
  if (!qword_27F2205E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2205E0);
  }

  return result;
}

unint64_t sub_24E896C0C()
{
  result = qword_27F2205E8;
  if (!qword_27F2205E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2205E8);
  }

  return result;
}

unint64_t sub_24E896C64()
{
  result = qword_27F2205F0;
  if (!qword_27F2205F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2205F0);
  }

  return result;
}

unint64_t sub_24E896CBC()
{
  result = qword_27F2205F8;
  if (!qword_27F2205F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2205F8);
  }

  return result;
}

uint64_t sub_24E896D10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E696C6E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656772616CLL && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x66664F656772616CLL && a2 == 0xEA00000000007265 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656B63617473 && a2 == 0xE700000000000000)
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

uint64_t sub_24E896E74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F726765726F66 && a2 == 0xEF656C797453646ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x694474756F79616CLL && a2 == 0xEF6E6F6974636572)
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

uint64_t sub_24E896FEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F726765726F66 && a2 == 0xEF656C797453646ELL)
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

uint64_t sub_24E897164(uint64_t a1, uint64_t *a2)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218918);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v30 - v7;
  v9 = type metadata accessor for RecordingAssociation();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v30[1] = v2;
    v44 = MEMORY[0x277D84F90];
    sub_24F4580A4(0, v12, 0);
    v13 = v44;
    v35 = type metadata accessor for PhotosAsset();
    v14 = a1 + ((*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80));
    v34 = *(*(v35 - 8) + 72);
    v15 = type metadata accessor for Achievement(0);
    v31 = *(v15 - 8);
    v38 = *(v31 + 56);
    v39 = v31 + 56;
    v40 = v15;
    while (1)
    {
      v38(v8, 1, 1, v40);
      v16 = (v14 + *(v35 + 32));
      v17 = v16[1];
      if (!v17)
      {
        goto LABEL_11;
      }

      v18 = *v16;
      v42 = *v16;
      v43 = v17;
      strcpy(v41, "achievement://");
      v41[15] = -18;
      sub_24E8B97C4();
      sub_24E8B9818();
      if ((sub_24F92AF38() & 1) == 0)
      {
        goto LABEL_11;
      }

      v42 = v18;
      v43 = v17;
      sub_24F92B228();
      sub_24F92B268();
      sub_24E600AEC();
      v19 = sub_24F92C608();
      v21 = *v32;
      if (!*(*v32 + 16))
      {
        break;
      }

      v22 = sub_24E76D644(v19, v20);
      v24 = v23;

      if ((v24 & 1) == 0)
      {
        goto LABEL_9;
      }

      sub_24E8B9930(*(v21 + 56) + *(v31 + 72) * v22, v33, type metadata accessor for Achievement);
      v25 = 0;
LABEL_10:
      sub_24E8B986C(v8);
      v26 = v33;
      v38(v33, v25, 1, v40);
      sub_24E6009C8(v26, v8, &qword_27F218918);
LABEL_11:
      sub_24E8B9930(v14, v11, type metadata accessor for PhotosAsset);
      sub_24E6009C8(v8, &v11[*(v37 + 20)], &qword_27F218918);
      v44 = v13;
      v28 = *(v13 + 16);
      v27 = *(v13 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_24F4580A4(v27 > 1, v28 + 1, 1);
        v13 = v44;
      }

      *(v13 + 16) = v28 + 1;
      sub_24E8B9998(v11, v13 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v28, type metadata accessor for RecordingAssociation);
      v14 += v34;
      if (!--v12)
      {
        return v13;
      }
    }

LABEL_9:
    v25 = 1;
    goto LABEL_10;
  }

  return v13;
}

uint64_t GameRecordingsDataIntentImplementation.perform(_:objectGraph:)(uint64_t *a1, uint64_t a2)
{
  *(v2 + 120) = a2;
  *(v2 + 128) = *(type metadata accessor for Achievement(0) - 8);
  *(v2 + 136) = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *a1;
  *(v2 + 144) = v4;
  *(v2 + 152) = v5;
  *(v2 + 160) = *(a1 + 1);
  v6 = swift_task_alloc();
  *(v2 + 176) = v6;
  *v6 = v2;
  v6[1] = sub_24E8976F4;

  return sub_24F6F8018();
}

uint64_t sub_24E8976F4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 184) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24E89784C, 0, 0);
  }
}

uint64_t sub_24E89784C()
{
  if (v0[23])
  {
    v1 = swift_task_alloc();
    v0[24] = v1;
    *v1 = v0;
    v1[1] = sub_24E897944;
    v2 = v0[21];

    return PhotosAssetManager.fetchAssetsForGames(gameBundleIDs:)(v2);
  }

  else
  {
    v4 = sub_24E60B804(MEMORY[0x277D84F90]);

    v5 = v0[1];

    return v5(v4);
  }
}

uint64_t sub_24E897944(uint64_t a1)
{
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_24E897A44, 0, 0);
}

uint64_t sub_24E897A44()
{
  v1 = *(v0 + 200);
  v2 = sub_24E60B804(MEMORY[0x277D84F90]);
  v3 = *(v1 + 32);
  *(v0 + 288) = v3;
  v4 = -1;
  v5 = -1 << v3;
  v6 = *(v1 + 64);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  *(v0 + 208) = v2;
  v7 = v4 & v6;
  if (v7)
  {
    v8 = 0;
    v9 = *(v0 + 200);
LABEL_8:
    *(v0 + 216) = v7;
    *(v0 + 224) = v8;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v9 + 48) + 16 * v13);
    v15 = *v14;
    *(v0 + 232) = *v14;
    v16 = v14[1];
    *(v0 + 240) = v16;
    v17 = *(*(v9 + 56) + 8 * v13);
    v18 = *(v0 + 152);
    v19 = *(v0 + 160);
    *(v0 + 248) = v17;
    *(v0 + 56) = v18;
    *(v0 + 64) = v19;
    *(v0 + 72) = v15;
    *(v0 + 80) = v16;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
    swift_bridgeObjectRetain_n();

    v21 = swift_task_alloc();
    *(v0 + 256) = v21;
    *v21 = v0;
    v21[1] = sub_24E897C54;

    return MEMORY[0x28217F228](v0 + 16, v20, v20);
  }

  else
  {
    v10 = v2;
    v11 = 0;
    v12 = ((63 - v5) >> 6) - 1;
    v9 = *(v0 + 200);
    while (v12 != v11)
    {
      v8 = v11 + 1;
      v7 = *(v9 + 8 * v11++ + 72);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v22 = *(v0 + 8);

    return v22(v10);
  }
}

uint64_t sub_24E897C54()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_24E897F50;
  }

  else
  {
    v2 = sub_24E897D68;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E897D68()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[34] = v3;
  v4 = sub_24E6F6358();
  *v3 = v0;
  v3[1] = sub_24E897E3C;
  v5 = v0[15];

  return MEMORY[0x28217F4B0](v0 + 11, v0 + 7, v5, &type metadata for GameAchievementsListDataIntent, v4, v1, v2);
}

uint64_t sub_24E897E3C()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_24E89800C;
  }

  else
  {
    v2 = sub_24E8980D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E897F50()
{

  swift_bridgeObjectRelease_n();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E89800C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  swift_bridgeObjectRelease_n();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E8980D0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v2 = *(v0 + 88);
  v3 = MEMORY[0x277D84F98];
  *(v0 + 96) = MEMORY[0x277D84F98];
  v4 = (v0 + 96);
  v61 = *(v2 + 16);
  if (v61)
  {
    v5 = 0;
    v6 = *(*(v0 + 128) + 80);
    v60 = v2 + ((v6 + 32) & ~v6);
    while (1)
    {
      if (v5 >= *(v2 + 16))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v9 = *(v0 + 136);
      v8 = *(v0 + 144);
      v4 = *(*(v0 + 128) + 72);
      sub_24E8B9930(v60 + v4 * v5, v8, type metadata accessor for Achievement);
      v11 = *v8;
      v10 = v8[1];
      sub_24E8B9998(v8, v9, type metadata accessor for Achievement);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 104) = v3;
      v1 = sub_24E76D644(v11, v10);
      v14 = v3[2];
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        goto LABEL_41;
      }

      v18 = v13;
      if (v3[3] < v17)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v24 = v1;
      sub_24E8AF608();
      v1 = v24;
      v20 = *(v0 + 136);
      if ((v18 & 1) == 0)
      {
LABEL_12:
        v3 = *(v0 + 104);
        v3[(v1 >> 6) + 8] |= 1 << v1;
        v21 = (v3[6] + 16 * v1);
        *v21 = v11;
        v21[1] = v10;
        v1 = sub_24E8B9998(v20, v3[7] + v1 * v4, type metadata accessor for Achievement);
        v22 = v3[2];
        v16 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v16)
        {
          goto LABEL_42;
        }

        v3[2] = v23;
        goto LABEL_4;
      }

LABEL_3:
      v7 = v1;

      v3 = *(v0 + 104);
      v1 = sub_24E8B9400(v20, v3[7] + v7 * v4);
LABEL_4:
      if (v61 == ++v5)
      {
        v4 = (v0 + 96);
        *(v0 + 96) = v3;
        goto LABEL_17;
      }
    }

    sub_24E89BEEC(v17, isUniquelyReferenced_nonNull_native);
    v1 = sub_24E76D644(v11, v10);
    if ((v18 & 1) != (v19 & 1))
    {
      goto LABEL_20;
    }

LABEL_11:
    v20 = *(v0 + 136);
    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

LABEL_17:
  v26 = *(v0 + 240);
  v25 = *(v0 + 248);
  v27 = *(v0 + 232);
  v28 = *(v0 + 208);

  v5 = sub_24E897164(v25, v4);

  v29 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 112) = v28;
  v1 = sub_24E76D644(v27, v26);
  v32 = *(v28 + 16);
  v33 = (v30 & 1) == 0;
  v16 = __OFADD__(v32, v33);
  v34 = v32 + v33;
  if (v16)
  {
    goto LABEL_44;
  }

  LOBYTE(v4) = v30;
  if (*(*(v0 + 208) + 24) >= v34)
  {
    if ((v29 & 1) == 0)
    {
      goto LABEL_45;
    }

    while (1)
    {
LABEL_24:
      v38 = *(v0 + 112);
      v39 = *(v0 + 240);
      if (v4)
      {
        v40 = v38[7];
        v4 = *(v40 + 8 * v1);
        *(v40 + 8 * v1) = v5;
      }

      else
      {
        v41 = *(v0 + 232);
        v38[(v1 >> 6) + 8] |= 1 << v1;
        v42 = (v38[6] + 16 * v1);
        *v42 = v41;
        v42[1] = v39;
        *(v38[7] + 8 * v1) = v5;
        v43 = v38[2];
        v16 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v16)
        {
          __break(1u);
          return MEMORY[0x28217F228](v1, v30, v31);
        }

        v38[2] = v44;
      }

      v46 = *(v0 + 216);
      v45 = *(v0 + 224);
      *(v0 + 208) = v38;
      v47 = (v46 - 1) & v46;
      if (v47)
      {
        break;
      }

      while (1)
      {
        v48 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        v1 = *(v0 + 200);
        if (v48 >= (((1 << *(v0 + 288)) + 63) >> 6))
        {

          v58 = *(v0 + 8);

          return v58(v38);
        }

        v47 = *(v1 + 8 * v48 + 64);
        ++v45;
        if (v47)
        {
          v45 = v48;
          goto LABEL_34;
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      v59 = v1;
      sub_24E8B6A38(&qword_27F213608);
      v1 = v59;
    }

    v1 = *(v0 + 200);
LABEL_34:
    *(v0 + 216) = v47;
    *(v0 + 224) = v45;
    v49 = __clz(__rbit64(v47)) | (v45 << 6);
    v50 = (*(v1 + 48) + 16 * v49);
    v51 = *v50;
    *(v0 + 232) = *v50;
    v52 = v50[1];
    *(v0 + 240) = v52;
    v53 = *(*(v1 + 56) + 8 * v49);
    v54 = *(v0 + 152);
    v55 = *(v0 + 160);
    *(v0 + 248) = v53;
    *(v0 + 56) = v54;
    *(v0 + 64) = v55;
    *(v0 + 72) = v51;
    *(v0 + 80) = v52;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
    swift_bridgeObjectRetain_n();

    v57 = swift_task_alloc();
    *(v0 + 256) = v57;
    *v57 = v0;
    v57[1] = sub_24E897C54;
    v1 = v0 + 16;
    v30 = v56;
    v31 = v56;

    return MEMORY[0x28217F228](v1, v30, v31);
  }

  else
  {
    v36 = *(v0 + 232);
    v35 = *(v0 + 240);
    sub_24E8A9294(v34, v29, &qword_27F213608);
    v1 = sub_24E76D644(v36, v35);
    if ((v4 & 1) == (v30 & 1))
    {
      goto LABEL_24;
    }

LABEL_20:

    return sub_24F92CF88();
  }
}

uint64_t sub_24E89869C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E67D244;

  return GameRecordingsDataIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t sub_24E89873C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135B8);
  v33 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_24E612B0C(v24, v34);
      }

      else
      {
        sub_24E643A9C(v24, v34);
      }

      sub_24F92D068();
      sub_24F92B218();
      result = sub_24F92D0B8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_24E612B0C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24E8989F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2131F0);
  v31 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v31 & 1) == 0)
      {
        v25 = v24;
      }

      sub_24F92D068();
      sub_24F92B218();

      result = sub_24F92D0B8();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v15) >> 6;
        while (++v17 != v27 || (v26 & 1) == 0)
        {
          v28 = v17 == v27;
          if (v17 == v27)
          {
            v17 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v17);
          if (v29 != -1)
          {
            v18 = __clz(__rbit64(~v29)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_24E898D44(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ColorGroup();
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C040);
  v37 = a2;
  result = sub_24F92CB38();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        sub_24E8B9998(v25, v7, type metadata accessor for ColorGroup);
      }

      else
      {
        sub_24E8B9930(v25, v7, type metadata accessor for ColorGroup);
      }

      result = sub_24F92D058();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_24E8B9998(v7, *(v10 + 56) + v24 * v18, type metadata accessor for ColorGroup);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_24E8990DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213318);
  v30 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v30 & 1) == 0)
      {
      }

      sub_24F92D068();
      sub_24F92B218();

      result = sub_24F92D0B8();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24E899498(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213370);
  v45 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v44 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v23 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v26 = v23 | (v8 << 6);
      v27 = *(v5 + 48) + 136 * v26;
      if (v45)
      {
        v28 = *(v27 + 16);
        v29 = *(v27 + 32);
        v30 = *(v27 + 48);
        v51 = *(v27 + 64);
        v50 = v30;
        v31 = *(v27 + 80);
        v32 = *(v27 + 96);
        v33 = *(v27 + 112);
        v55 = *(v27 + 128);
        v53 = v32;
        v54 = v33;
        v52 = v31;
        v34 = *v27;
        v48 = v28;
        v49 = v29;
        v47 = v34;
        v35 = *(*(v5 + 56) + 8 * v26);
      }

      else
      {
        sub_24E772674(v27, &v47);
        v35 = *(*(v5 + 56) + 8 * v26);
      }

      sub_24F92D068();
      sub_24F92B218();
      sub_24F92B218();
      sub_24F92B218();
      sub_24F92B218();

      sub_24EDC9948(v46, v51);
      sub_24EA1DCB8(v46, *(&v50 + 1));
      sub_24F92D088();
      sub_24F92D088();
      sub_24F92D088();
      result = sub_24F92D0B8();
      v36 = -1 << *(v7 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v14 + 8 * v38);
          if (v42 != -1)
          {
            v15 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v37) & ~*(v14 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 136 * v15;
      v17 = v48;
      v18 = v49;
      v19 = v51;
      *(v16 + 48) = v50;
      *(v16 + 64) = v19;
      *(v16 + 16) = v17;
      *(v16 + 32) = v18;
      v20 = v52;
      v21 = v53;
      v22 = v54;
      *(v16 + 128) = v55;
      *(v16 + 96) = v21;
      *(v16 + 112) = v22;
      *(v16 + 80) = v20;
      *v16 = v47;
      *(*(v7 + 56) + 8 * v15) = v35;
      ++*(v7 + 16);
    }

    v24 = v8;
    while (1)
    {
      v8 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v25 = v9[v8];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v12 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero((v5 + 64), ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24E899898(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213070);
  v36 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      sub_24F92B0D8();
      sub_24F92D068();
      sub_24F92B218();
      v25 = sub_24F92D0B8();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24E899B98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220678);
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
      }

      else
      {
        sub_24E772724(v23, &v36);
      }

      v26 = *(*(v5 + 56) + 8 * v22);
      sub_24F92D068();
      _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
      result = sub_24F92D0B8();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_24E899E5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2134B0);
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        sub_24E772724(v23, &v36);
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      sub_24F92D068();
      _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
      result = sub_24F92D0B8();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24E89A120(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2134A0);
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v44 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v24 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v27 = v24 | (v8 << 6);
      v28 = *(v5 + 48) + 40 * v27;
      if (a2)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v53 = *(v28 + 32);
        v51 = v29;
        v52 = v30;
        v31 = *(v5 + 56) + 88 * v27;
        v32 = *(v31 + 80);
        v33 = *(v31 + 64);
        v34 = *(v31 + 32);
        v48 = *(v31 + 48);
        v49 = v33;
        v50 = v32;
        v35 = *(v31 + 16);
        v45 = *v31;
        v46 = v35;
        v47 = v34;
      }

      else
      {
        sub_24E772724(v28, &v51);
        sub_24E60169C(*(v5 + 56) + 88 * v27, &v45, &qword_27F21EC48);
      }

      sub_24F92D068();
      _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
      result = sub_24F92D0B8();
      v36 = -1 << *(v7 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v14 + 8 * v38);
          if (v42 != -1)
          {
            v15 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v37) & ~*(v14 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v51;
      v18 = v52;
      *(v16 + 32) = v53;
      *v16 = v17;
      *(v16 + 16) = v18;
      v19 = *(v7 + 56) + 88 * v15;
      v20 = v46;
      *v19 = v45;
      *(v19 + 16) = v20;
      v21 = v47;
      v22 = v48;
      v23 = v49;
      *(v19 + 80) = v50;
      *(v19 + 48) = v22;
      *(v19 + 64) = v23;
      *(v19 + 32) = v21;
      ++*(v7 + 16);
    }

    v25 = v8;
    while (1)
    {
      v8 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v26 = v9[v8];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v12 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero((v5 + 64), ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24E89A448(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213110);
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        sub_24E65864C(v23, &v37);
        v26 = *(*(v5 + 56) + 8 * v22);
        v27 = v26;
      }

      result = sub_24F92C7B8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24E89A6F8(uint64_t a1, int a2)
{
  v3 = v2;
  v42 = sub_24F91F4A8();
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213108);
  v40 = a2;
  result = sub_24F92CB38();
  v9 = result;
  if (*(v7 + 16))
  {
    v38[0] = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38[1] = v5 + 16;
    v39 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v22 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v25 = v22 | (v10 << 6);
      v26 = *(v7 + 48) + 40 * v25;
      if (v40)
      {
        v27 = *v26;
        v28 = *(v26 + 16);
        v45 = *(v26 + 32);
        v43 = v27;
        v44 = v28;
        v29 = *(v39 + 72);
        (*(v39 + 32))(v41, *(v7 + 56) + v29 * v25, v42);
      }

      else
      {
        sub_24E65864C(v26, &v43);
        v29 = *(v39 + 72);
        (*(v39 + 16))(v41, *(v7 + 56) + v29 * v25, v42);
      }

      result = sub_24F92C7B8();
      v30 = -1 << *(v9 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = *(v9 + 48) + 40 * v18;
      v20 = v43;
      v21 = v44;
      *(v19 + 32) = v45;
      *v19 = v20;
      *(v19 + 16) = v21;
      result = (*v16)(*(v9 + 56) + v29 * v18, v41, v42);
      ++*(v9 + 16);
    }

    v23 = v10;
    while (1)
    {
      v10 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v24 = v11[v10];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v14 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38[0];
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v38[0];
    if (v37 >= 64)
    {
      bzero((v7 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_24E89AA98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213640);
  v37 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 72 * v21;
      if (v37)
      {
        v38 = *(v25 + 8);
        v39 = *(v25 + 24);
        v40 = *v25;
        v41 = *(v25 + 40);
        v42 = *(v25 + 16);
        v43 = *(v25 + 48);
        v44 = *(v25 + 32);
        v45 = *(v25 + 56);
        v46 = *(v25 + 64);
        v47 = *(v25 + 65);
      }

      else
      {
        v26 = *(v25 + 16);
        v27 = *(v25 + 32);
        v28 = *(v25 + 48);
        v49 = *(v25 + 64);
        v48[2] = v27;
        v48[3] = v28;
        v48[1] = v26;
        v48[0] = *v25;
        v47 = HIBYTE(v49);
        v46 = v49;
        v44 = v27;
        v45 = *(&v28 + 1);
        v42 = v26;
        v43 = v28;
        v40 = *&v48[0];
        v41 = *(&v27 + 1);
        v38 = *(&v48[0] + 1);
        v39 = *(&v26 + 1);

        sub_24E627A14(v48, v50);
      }

      sub_24F92D068();
      sub_24F92B218();
      result = sub_24F92D0B8();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 72 * v15;
      *v17 = v40;
      *(v17 + 8) = v38;
      *(v17 + 16) = v42;
      *(v17 + 24) = v39;
      *(v17 + 32) = v44;
      *(v17 + 40) = v41;
      *(v17 + 48) = v43;
      *(v17 + 56) = v45;
      *(v17 + 64) = v46;
      *(v17 + 65) = v47;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24E89AE4C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v34 = a2;
  result = sub_24F92CB38();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v6 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v35 = *(*(v6 + 56) + v22);
      if ((v34 & 1) == 0)
      {
      }

      sub_24F92D068();
      sub_24F92B218();
      result = sub_24F92D0B8();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v35;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero((v6 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_24E89B128(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213268);
  v38 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 88 * v21;
      if (v38)
      {
        v39 = *(v25 + 8);
        v40 = *(v25 + 24);
        v41 = *v25;
        v42 = *(v25 + 40);
        v43 = *(v25 + 16);
        v44 = *(v25 + 56);
        v45 = *(v25 + 32);
        v49 = *(v25 + 64);
        v46 = *(v25 + 72);
        v47 = *(v25 + 48);
        v48 = *(v25 + 80);
        v50 = *(v25 + 81);
      }

      else
      {
        v26 = *(v25 + 32);
        v27 = *(v25 + 48);
        v28 = *(v25 + 64);
        v55 = *(v25 + 80);
        v53 = v27;
        v54 = v28;
        v52[2] = v26;
        v29 = *(v25 + 16);
        v52[0] = *v25;
        v52[1] = v29;
        v50 = HIBYTE(v55);
        v48 = v55;
        v46 = *(&v28 + 1);
        v49 = v28;
        v44 = *(&v53 + 1);
        v47 = v53;
        v42 = *(&v26 + 1);
        v45 = v26;
        v40 = *(&v29 + 1);
        v43 = v29;
        v39 = *(&v52[0] + 1);
        v41 = *&v52[0];

        sub_24E7FA89C(v52, v51);
      }

      sub_24F92D068();
      sub_24F92B218();
      result = sub_24F92D0B8();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 88 * v15;
      *v17 = v41;
      *(v17 + 8) = v39;
      *(v17 + 16) = v43;
      *(v17 + 24) = v40;
      *(v17 + 32) = v45;
      *(v17 + 40) = v42;
      *(v17 + 48) = v47;
      *(v17 + 56) = v44;
      *(v17 + 64) = v49;
      *(v17 + 72) = v46;
      *(v17 + 80) = v48;
      *(v17 + 81) = v50;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24E89B4DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D360);
  v34 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_24F92D068();
      sub_24F92B218();
      result = sub_24F92D0B8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24E89B77C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213638);
  v37 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_24F92D068();
      sub_24F92B218();
      result = sub_24F92D0B8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24E89BA60(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Game();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220648);
  v43 = a2;
  result = sub_24F92CB38();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_24E8B9998(v27 + v28 * v24, v47, type metadata accessor for Game);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_24E8B9930(v29 + v28 * v24, v47, type metadata accessor for Game);
      }

      sub_24E8B958C();
      result = sub_24F92AEE8();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_24E8B9998(v47, *(v12 + 56) + v28 * v20, type metadata accessor for Game);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_24E89BEEC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Achievement(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213600);
  v40 = a2;
  result = sub_24F92CB38();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_24E8B9998(v28, v41, type metadata accessor for Achievement);
      }

      else
      {
        sub_24E8B9930(v28, v41, type metadata accessor for Achievement);
      }

      sub_24F92D068();
      sub_24F92B218();
      result = sub_24F92D0B8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_24E8B9998(v41, *(v9 + 56) + v27 * v17, type metadata accessor for Achievement);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_24E89C288(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v7 = v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v9 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - v10;
  v11 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v46 = a2;
  result = sub_24F92CB38();
  v13 = result;
  if (*(v11 + 16))
  {
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v42 = v5;
    v43 = (v9 + 16);
    v44 = v11;
    v45 = v9;
    v47 = (v9 + 32);
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v14 << 6);
      v27 = *(v11 + 56);
      v28 = (*(v11 + 48) + 16 * v26);
      v30 = *v28;
      v29 = v28[1];
      v31 = *(v45 + 72);
      v32 = v27 + v31 * v26;
      if (v46)
      {
        (*v47)(v48, v32, v49);
      }

      else
      {
        (*v43)(v48, v32, v49);
      }

      sub_24F92D068();
      sub_24F92B218();
      result = sub_24F92D0B8();
      v33 = -1 << *(v13 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v21 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v30;
      v22[1] = v29;
      result = (*v47)(*(v13 + 56) + v31 * v21, v48, v49);
      ++*(v13 + 16);
      v11 = v44;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v7 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v11 + 32);
    v7 = v42;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v7 = v13;
  return result;
}

uint64_t sub_24E89C620(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for PhotosAsset();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135E8);
  v40 = a2;
  result = sub_24F92CB38();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_24E8B9998(v28, v41, type metadata accessor for PhotosAsset);
      }

      else
      {
        sub_24E8B9930(v28, v41, type metadata accessor for PhotosAsset);
      }

      sub_24F92D068();
      sub_24F92B218();
      result = sub_24F92D0B8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_24E8B9998(v41, *(v9 + 56) + v27 * v17, type metadata accessor for PhotosAsset);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_24E89C998(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for RecordingAssociation();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2136A0);
  v40 = a2;
  result = sub_24F92CB38();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_24E8B9998(v28, v41, type metadata accessor for RecordingAssociation);
      }

      else
      {
        sub_24E8B9930(v28, v41, type metadata accessor for RecordingAssociation);
      }

      sub_24F92D068();
      sub_24F92B218();
      result = sub_24F92D0B8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_24E8B9998(v41, *(v9 + 56) + v27 * v17, type metadata accessor for RecordingAssociation);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_24E89CD10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213458);
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v41 = *(v24 + 32);
        v39 = v25;
        v40 = v26;
      }

      else
      {
        sub_24E65864C(v24, &v39);
      }

      v27 = (*(v5 + 56) + 32 * v23);
      v37 = v27[1];
      v38 = *v27;
      result = sub_24F92C7B8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v39;
      v18 = v40;
      *(v16 + 32) = v41;
      *v16 = v17;
      *(v16 + 16) = v18;
      v19 = (*(v7 + 56) + 32 * v15);
      *v19 = v38;
      v19[1] = v37;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_24E89CFB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213428);
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + (v20 << 6));
      v32 = *v22;
      v33 = v22[1];
      v34 = v22[2];
      v35 = v22[3];
      result = sub_24F92D058();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + (v15 << 6));
      *v16 = v32;
      v16[1] = v33;
      v16[2] = v34;
      v16[3] = v35;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_24E89D25C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220690);
  v40 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v39 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (v40)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v43 = *(v24 + 32);
        v41 = v25;
        v42 = v26;
        v27 = (*(v5 + 56) + 16 * v23);
        v28 = *v27;
        v29 = v27[1];
      }

      else
      {
        sub_24E65864C(v24, &v41);
        v30 = (*(v5 + 56) + 16 * v23);
        v28 = *v30;
        v29 = v30[1];
      }

      result = sub_24F92C7B8();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v41;
      v18 = v42;
      *(v16 + 32) = v43;
      *v16 = v17;
      *(v16 + 16) = v18;
      v19 = (*(v7 + 56) + 16 * v15);
      *v19 = v28;
      v19[1] = v29;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24E89D524(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213558);
  v35 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_24E612B0C(v22, v36);
      }

      else
      {
        sub_24E643A9C(v22, v36);
        v23 = v21;
      }

      sub_24F92B0D8();
      sub_24F92D068();
      sub_24F92B218();
      v24 = sub_24F92D0B8();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_24E612B0C(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24E89D7F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135D8);
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_24E612B0C((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_24E65864C(v23, &v36);
        sub_24E643A9C(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_24F92C7B8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_24E612B0C(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_24E89DAE8(uint64_t a1, int a2)
{
  v3 = v2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2133F0);
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = v38 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2133E8);
  v40 = a2;
  result = sub_24F92CB38();
  v9 = result;
  if (*(v7 + 16))
  {
    v38[0] = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38[1] = v5 + 16;
    v39 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v22 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v25 = v22 | (v10 << 6);
      v26 = *(v7 + 48) + 40 * v25;
      if (v40)
      {
        v27 = *v26;
        v28 = *(v26 + 16);
        v45 = *(v26 + 32);
        v43 = v27;
        v44 = v28;
        v29 = *(v39 + 72);
        (*(v39 + 32))(v41, *(v7 + 56) + v29 * v25, v42);
      }

      else
      {
        sub_24E65864C(v26, &v43);
        v29 = *(v39 + 72);
        (*(v39 + 16))(v41, *(v7 + 56) + v29 * v25, v42);
      }

      result = sub_24F92C7B8();
      v30 = -1 << *(v9 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = *(v9 + 48) + 40 * v18;
      v20 = v43;
      v21 = v44;
      *(v19 + 32) = v45;
      *v19 = v20;
      *(v19 + 16) = v21;
      result = (*v16)(*(v9 + 56) + v29 * v18, v41, v42);
      ++*(v9 + 16);
    }

    v23 = v10;
    while (1)
    {
      v10 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v24 = v11[v10];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v14 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38[0];
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v38[0];
    if (v37 >= 64)
    {
      bzero((v7 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_24E89DE90(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213630);
  v34 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_24F92D068();
      sub_24F92B218();
      result = sub_24F92D0B8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24E89E130(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_24F929598();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213518);
  v40 = a2;
  result = sub_24F92CB38();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_24E8B9720(&qword_27F21BCE8, MEMORY[0x277D21F50]);
      result = sub_24F92AEE8();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_24E89E4F0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_24F929598();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213528);
  v39 = a2;
  result = sub_24F92CB38();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_24E8B9720(&qword_27F21BCE8, MEMORY[0x277D21F50]);
      result = sub_24F92AEE8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_24E89E908(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213408);
  v34 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = sub_24F92D058();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24E89EBA0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213568);
  v30 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_24F92D068();
      sub_24F92B218();

      result = sub_24F92D0B8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24E89EFE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2134C8);
  v54 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v23 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v26 = v23 | (v8 << 6);
      v27 = *(v5 + 48) + 168 * v26;
      if (v54)
      {
        v77 = *(v27 + 112);
        v78 = *(v27 + 128);
        v79 = *(v27 + 144);
        v80 = *(v27 + 160);
        v73 = *(v27 + 48);
        v74 = *(v27 + 64);
        v75 = *(v27 + 80);
        v76 = *(v27 + 96);
        v70 = *v27;
        v71 = *(v27 + 16);
        v72 = *(v27 + 32);
        v28 = *(v5 + 56) + 392 * v26;
        v58 = *v28;
        v55 = *(v28 + 8);
        v57 = *(v28 + 16);
        v56 = *(v28 + 24);
        v61 = *(v28 + 72);
        v59 = *(v28 + 40);
        v60 = *(v28 + 56);
        v29 = *(v28 + 88);
        v30 = *(v28 + 96);
        v31 = *(v28 + 216);
        v99 = *(v28 + 200);
        v100 = v31;
        v32 = *(v28 + 248);
        v101 = *(v28 + 232);
        v102 = v32;
        v33 = *(v28 + 152);
        v95 = *(v28 + 136);
        v96 = v33;
        v34 = *(v28 + 184);
        v97 = *(v28 + 168);
        v98 = v34;
        v35 = *(v28 + 120);
        v93 = *(v28 + 104);
        v94 = v35;
        v62 = *(v28 + 264);
        v64 = *(v28 + 272);
        v63 = *(v28 + 280);
        v65 = *(v28 + 296);
        v66 = *(v28 + 312);
        v69 = *(v28 + 360);
        v67 = *(v28 + 328);
        v68 = *(v28 + 344);
        v36 = *(v28 + 376);
        v37 = *(v28 + 384);
      }

      else
      {
        v38 = *(v27 + 48);
        v39 = *(v27 + 64);
        v40 = *(v27 + 96);
        v86 = *(v27 + 80);
        v87 = v40;
        v84 = v38;
        v85 = v39;
        v41 = *(v27 + 112);
        v42 = *(v27 + 128);
        v43 = *(v27 + 144);
        v91 = *(v27 + 160);
        v89 = v42;
        v90 = v43;
        v88 = v41;
        v45 = *(v27 + 16);
        v44 = *(v27 + 32);
        v81 = *v27;
        v82 = v45;
        v83 = v44;
        memcpy(__dst, (*(v5 + 56) + 392 * v26), 0x188uLL);
        v36 = *(&__dst[23] + 1);
        v37 = *&__dst[24];
        v68 = *(&__dst[21] + 8);
        v69 = *(&__dst[22] + 8);
        v66 = *(&__dst[19] + 8);
        v67 = *(&__dst[20] + 8);
        v65 = *(&__dst[18] + 8);
        v63 = *(&__dst[17] + 8);
        v64 = __dst[17];
        v62 = *(&__dst[16] + 1);
        v29 = *(&__dst[5] + 1);
        v30 = *&__dst[6];
        v60 = *(&__dst[3] + 8);
        v61 = *(&__dst[4] + 8);
        v59 = *(&__dst[2] + 8);
        v56 = *(&__dst[1] + 8);
        v57 = __dst[1];
        v55 = *(&__dst[0] + 1);
        v58 = *&__dst[0];
        sub_24E7727D4(&v81, &v70);
        sub_24E8B9768(__dst, &v70);
        v78 = v89;
        v79 = v90;
        v80 = v91;
        v74 = v85;
        v75 = v86;
        v76 = v87;
        v77 = v88;
        v70 = v81;
        v71 = v82;
        v72 = v83;
        v73 = v84;
        v99 = *(&__dst[12] + 8);
        v100 = *(&__dst[13] + 8);
        v101 = *(&__dst[14] + 8);
        v102 = *(&__dst[15] + 8);
        v95 = *(&__dst[8] + 8);
        v96 = *(&__dst[9] + 8);
        v97 = *(&__dst[10] + 8);
        v98 = *(&__dst[11] + 8);
        v93 = *(&__dst[6] + 8);
        v94 = *(&__dst[7] + 8);
      }

      __dst[8] = v78;
      __dst[9] = v79;
      *&__dst[10] = v80;
      __dst[4] = v74;
      __dst[5] = v75;
      __dst[6] = v76;
      __dst[7] = v77;
      __dst[0] = v70;
      __dst[1] = v71;
      __dst[2] = v72;
      __dst[3] = v73;
      sub_24F92D068();
      sub_24EB1FE0C(&v81);
      result = sub_24F92D0B8();
      v46 = -1 << *(v7 + 32);
      v47 = result & ~v46;
      v48 = v47 >> 6;
      if (((-1 << v47) & ~*(v14 + 8 * (v47 >> 6))) == 0)
      {
        v49 = 0;
        v50 = (63 - v46) >> 6;
        while (++v48 != v50 || (v49 & 1) == 0)
        {
          v51 = v48 == v50;
          if (v48 == v50)
          {
            v48 = 0;
          }

          v49 |= v51;
          v52 = *(v14 + 8 * v48);
          if (v52 != -1)
          {
            v15 = __clz(__rbit64(~v52)) + (v48 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v47) & ~*(v14 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 168 * v15;
      *(v16 + 96) = v76;
      *(v16 + 80) = v75;
      *(v16 + 64) = v74;
      *(v16 + 48) = v73;
      *(v16 + 160) = v80;
      *(v16 + 144) = v79;
      *(v16 + 128) = v78;
      *(v16 + 112) = v77;
      *v16 = v70;
      *(v16 + 16) = v71;
      *(v16 + 32) = v72;
      v17 = *(v7 + 56) + 392 * v15;
      *v17 = v58;
      *(v17 + 8) = v55;
      *(v17 + 16) = v57;
      *(v17 + 40) = v59;
      *(v17 + 24) = v56;
      *(v17 + 72) = v61;
      *(v17 + 56) = v60;
      *(v17 + 88) = v29;
      *(v17 + 96) = v30;
      v18 = v93;
      *(v17 + 120) = v94;
      *(v17 + 104) = v18;
      v19 = v97;
      *(v17 + 184) = v98;
      *(v17 + 168) = v19;
      v20 = v95;
      *(v17 + 152) = v96;
      *(v17 + 136) = v20;
      v21 = v101;
      *(v17 + 248) = v102;
      *(v17 + 232) = v21;
      v22 = v99;
      *(v17 + 216) = v100;
      *(v17 + 200) = v22;
      *(v17 + 264) = v62;
      *(v17 + 272) = v64;
      *(v17 + 280) = v63;
      *(v17 + 296) = v65;
      *(v17 + 312) = v66;
      *(v17 + 328) = v67;
      *(v17 + 344) = v68;
      *(v17 + 360) = v69;
      *(v17 + 376) = v36;
      *(v17 + 384) = v37;
      ++*(v7 + 16);
    }

    v24 = v8;
    while (1)
    {
      v8 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v25 = v9[v8];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v12 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v54 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v53 = 1 << *(v5 + 32);
    v3 = v2;
    if (v53 >= 64)
    {
      bzero((v5 + 64), ((v53 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v53;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24E89F678(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v38 = a2;
  result = sub_24F92CB38();
  v8 = result;
  if (*(v6 + 16))
  {
    v36 = v3;
    v37 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v22 = v19 | (v9 << 6);
      v23 = (*(v6 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = (*(v6 + 56) + 24 * v22);
      v26 = v25[1];
      v39 = *v25;
      v40 = *v23;
      v27 = v25[2];
      if ((v38 & 1) == 0)
      {
      }

      sub_24F92D068();
      sub_24F92B218();
      result = sub_24F92D0B8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v40;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v39;
      v18[1] = v26;
      v18[2] = v27;
      ++*(v8 + 16);
      v6 = v37;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v4 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v6 + 32);
    v4 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_24E89F948(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213058);
  v37 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 40 * v21);
      v25 = v24[1];
      v40 = *v24;
      v41 = *v22;
      v26 = v24[3];
      v38 = v24[4];
      v39 = v24[2];
      if ((v37 & 1) == 0)
      {
      }

      sub_24F92D068();
      sub_24F92B218();
      result = sub_24F92D0B8();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v41;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 40 * v15);
      *v17 = v40;
      v17[1] = v25;
      v17[2] = v39;
      v17[3] = v26;
      v17[4] = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24E89FC30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2206D8);
  v37 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 32 * v21);
      v25 = v24[1];
      v39 = *v24;
      v40 = *v22;
      v26 = v24[3];
      v38 = v24[2];
      if ((v37 & 1) == 0)
      {
      }

      sub_24F92D068();
      sub_24F92B218();
      result = sub_24F92D0B8();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v39;
      v17[1] = v25;
      v17[2] = v38;
      v17[3] = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24E89FF04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220698);
  v34 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_24F92D068();
      sub_24F92B218();
      result = sub_24F92D0B8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24E8A01A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213540);
  v34 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 24 * v20);
      v23 = *v22;
      v35 = v22[1];
      v24 = v22[2];
      if ((v34 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_24F92D068();
      MEMORY[0x253052A00]([v21 hash]);
      result = sub_24F92D0B8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 24 * v15);
      *v16 = v23;
      v16[1] = v35;
      v16[2] = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24E8A0474(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213548);
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v42 = *(v24 + 32);
        v40 = v25;
        v41 = v26;
        v27 = *(v5 + 56) + 24 * v23;
        v39 = *v27;
        v28 = *(v27 + 16);
      }

      else
      {
        sub_24E65864C(v24, &v40);
        v29 = *(v5 + 56) + 24 * v23;
        v28 = *(v29 + 16);
        v39 = *v29;
        swift_unknownObjectRetain();
      }

      result = sub_24F92C7B8();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v40;
      v18 = v41;
      *(v16 + 32) = v42;
      *v16 = v17;
      *(v16 + 16) = v18;
      v19 = *(v7 + 56) + 24 * v15;
      *v19 = v39;
      *(v19 + 16) = v28;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24E8A0784(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_24F92CB38();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 40 * v23;
      if (v36)
      {
        a5(v27, v38);
      }

      else
      {
        sub_24E615E00(v27, v38);
      }

      sub_24F92D068();
      sub_24F92B218();
      result = sub_24F92D0B8();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = (a5)(v38, *(v10 + 56) + 40 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
  return result;
}

uint64_t sub_24E8A0A68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213450);
  v34 = a2;
  v6 = sub_24F92CB38();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_33:

    goto LABEL_34;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  while (v12)
  {
    v21 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v24 = v21 | (v8 << 6);
    v25 = *(*(v5 + 48) + v24);
    v26 = (*(v5 + 56) + 16 * v24);
    v27 = v26[1];
    v35 = *v26;
    if ((v34 & 1) == 0)
    {
    }

    sub_24F92D068();
    sub_24F92B218();

    v15 = sub_24F92D0B8();
    v16 = -1 << *(v7 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = 0;
      v29 = (63 - v16) >> 6;
      do
      {
        if (++v18 == v29 && (v28 & 1) != 0)
        {
          goto LABEL_36;
        }

        v30 = v18 == v29;
        if (v18 == v29)
        {
          v18 = 0;
        }

        v28 |= v30;
        v31 = *(v14 + 8 * v18);
      }

      while (v31 == -1);
      v19 = __clz(__rbit64(~v31)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v7 + 48) + v19) = v25;
    v20 = (*(v7 + 56) + 16 * v19);
    *v20 = v35;
    v20[1] = v27;
    ++*(v7 + 16);
  }

  v22 = v8;
  while (1)
  {
    v8 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      JUMPOUT(0x24E8A0F34);
    }

    if (v8 >= v13)
    {
      break;
    }

    v23 = v9[v8];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v12 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  if (v34)
  {
    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  v3 = v2;
LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24E8A0F7C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for GameSearchResultsTabContent(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213048);
  v40 = a2;
  result = sub_24F92CB38();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_24E8B9998(v28, v41, type metadata accessor for GameSearchResultsTabContent);
      }

      else
      {
        sub_24E8B9930(v28, v41, type metadata accessor for GameSearchResultsTabContent);
      }

      sub_24F92D068();
      sub_24F92B218();
      result = sub_24F92D0B8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_24E8B9998(v41, *(v9 + 56) + v27 * v17, type metadata accessor for GameSearchResultsTabContent);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_24E8A12F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213028);
  v35 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = v22[1];
      v37 = *v22;
      v24 = v22[3];
      v36 = v22[2];
      v25 = *(v21 + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_24F92D068();
      sub_24F92B218();
      sub_24F92B218();
      result = sub_24F92D0B8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v37;
      v16[1] = v23;
      v16[2] = v36;
      v16[3] = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24E8A15C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2134F8);
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        v35 = *(*(v5 + 56) + 16 * v22);
      }

      else
      {
        sub_24E65864C(v23, &v36);
        v35 = *(*(v5 + 56) + 16 * v22);
      }

      result = sub_24F92C7B8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 16 * v15) = v35;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_24E8A188C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220630);
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_24F92D058();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_24E8A1B18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2131C8);
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + 8 * v22);
      v24 = *(v5 + 56) + 40 * v22;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v38 = *(v24 + 32);
        v36 = v25;
        v37 = v26;
      }

      else
      {
        sub_24E8B9530(v24, &v36);
      }

      result = sub_24F92D058();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v23;
      v16 = *(v7 + 56) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_24E8A1DE4(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v7 = v5;
  v46 = a3;
  v47 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v44 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - v10;
  v12 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v45 = a2;
  result = sub_24F92CB38();
  v14 = result;
  if (*(v12 + 16))
  {
    v43 = v5;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v29 = v26 | (v15 << 6);
      v30 = *(v12 + 48) + 40 * v29;
      if (v45)
      {
        v31 = *v30;
        v32 = *(v30 + 16);
        v50 = *(v30 + 32);
        v48 = v31;
        v49 = v32;
        v33 = *(v44 + 72);
        sub_24E6009C8(*(v12 + 56) + v33 * v29, v11, v46);
      }

      else
      {
        sub_24E65864C(v30, &v48);
        v33 = *(v44 + 72);
        sub_24E60169C(*(v12 + 56) + v33 * v29, v11, v46);
      }

      result = sub_24F92C7B8();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = *(v14 + 48) + 40 * v22;
      v24 = v48;
      v25 = v49;
      *(v23 + 32) = v50;
      *v23 = v24;
      *(v23 + 16) = v25;
      result = sub_24E6009C8(v11, *(v14 + 56) + v33 * v22, v46);
      ++*(v14 + 16);
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v19 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero((v12 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v7 = v14;
  return result;
}

uint64_t sub_24E8A216C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Player(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2136E0);
  v40 = a2;
  result = sub_24F92CB38();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_24E8B9998(v28, v41, type metadata accessor for Player);
      }

      else
      {
        sub_24E8B9930(v28, v41, type metadata accessor for Player);
      }

      sub_24F92D068();
      sub_24F92B218();
      result = sub_24F92D0B8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_24E8B9998(v41, *(v9 + 56) + v27 * v17, type metadata accessor for Player);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_24E8A24E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213138);
  v34 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_24F92D068();
      sub_24F92B218();
      result = sub_24F92D0B8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24E8A27F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220688);
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_24F92D068();
      sub_24F92B218();

      result = sub_24F92D0B8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}