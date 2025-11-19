uint64_t sub_24F380758()
{
  if (*(v0 + 24) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F3807C0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24F38083C()
{
  result = qword_27F2408B8;
  if (!qword_27F2408B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2408B8);
  }

  return result;
}

uint64_t sub_24F380890()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_24F3808E4()
{
  result = qword_27F2408C0;
  if (!qword_27F2408C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23E220);
    sub_24F380998(&qword_27F2408C8, type metadata accessor for Player.LastPlayedTogetherInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2408C0);
  }

  return result;
}

uint64_t sub_24F380998(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F3809E0()
{
  result = qword_27F2408D0;
  if (!qword_27F2408D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247220);
    sub_24F380998(&qword_27F2408D8, type metadata accessor for Player.LastChallengeInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2408D0);
  }

  return result;
}

unint64_t sub_24F380A94()
{
  result = qword_27F2408E0;
  if (!qword_27F2408E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2408E0);
  }

  return result;
}

unint64_t sub_24F380AEC(char a1)
{
  result = 0x4449726579616C70;
  switch(a1)
  {
    case 1:
      result = 0x726174617661;
      break;
    case 2:
      result = 0x7241726174617661;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 0x4E746361746E6F63;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x48746361746E6F63;
      break;
    case 7:
    case 10:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x6553656C646E6168;
      break;
    case 11:
      result = 0x746E45786F626E69;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      result = 0x50656C69666F7270;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0xD00000000000001CLL;
      break;
    case 18:
      result = 0x547265646E557369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24F380D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F384620(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F380DAC(uint64_t a1)
{
  v2 = sub_24F3839E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F380DE8(uint64_t a1)
{
  v2 = sub_24F3839E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Player.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2408E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3839E8();
  sub_24F92D128();
  LOBYTE(v47[0]) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    LOBYTE(v47[0]) = 1;
    sub_24F92CD08();
    v9 = type metadata accessor for Player(0);
    LOBYTE(v47[0]) = 2;
    sub_24F9289E8();
    sub_24F380998(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CD48();
    LOBYTE(v47[0]) = 3;
    sub_24F92CD08();
    v52 = 4;
    sub_24F92CCA8();
    v10 = (v3 + v9[9]);
    v11 = v10[3];
    v12 = v10[1];
    v48 = v10[2];
    v49 = v11;
    v13 = v10[3];
    v14 = v10[5];
    v50 = v10[4];
    v51 = v14;
    v15 = v10[1];
    v47[0] = *v10;
    v47[1] = v15;
    v43 = v48;
    v44 = v13;
    v16 = v10[5];
    v45 = v50;
    v46 = v16;
    v41 = v47[0];
    v42 = v12;
    v40 = 5;
    sub_24E60169C(v47, v39, &qword_27F212F50);
    sub_24F383A3C();
    sub_24F92CCF8();
    v39[2] = v43;
    v39[3] = v44;
    v39[4] = v45;
    v39[5] = v46;
    v39[0] = v41;
    v39[1] = v42;
    sub_24E601704(v39, &qword_27F212F50);
    LOBYTE(v34) = 6;
    sub_24F92CCA8();
    *&v34 = *(v3 + v9[11]);
    LOBYTE(v30) = 7;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    v18 = sub_24F352CA8();
    v53 = v17;
    v25 = v18;
    sub_24F92CCF8();
    *&v34 = *(v3 + v9[12]);
    LOBYTE(v30) = 8;
    sub_24F92CCF8();
    v53 = v9[13];
    LOBYTE(v34) = 9;
    type metadata accessor for CallProviderConversationHandleSet();
    sub_24F380998(&qword_27F23A0C0, type metadata accessor for CallProviderConversationHandleSet);
    sub_24F92CCF8();
    v38 = 10;
    sub_24F92CD18();
    v19 = (v3 + v9[15]);
    v20 = *v19;
    v21 = v19[2];
    v35 = v19[1];
    v36 = v21;
    v22 = v19[2];
    v37 = v19[3];
    v30 = v20;
    v31 = v35;
    v23 = *v19;
    v32 = v22;
    v33 = v19[3];
    v34 = v23;
    v29 = 11;
    sub_24E60169C(&v34, v28, &qword_27F2408A0);
    sub_24F383A90();
    sub_24F92CCF8();
    v28[0] = v30;
    v28[1] = v31;
    v28[2] = v32;
    v28[3] = v33;
    sub_24E601704(v28, &qword_27F2408A0);
    v27 = 12;
    type metadata accessor for Player.LastPlayedTogetherInfo(0);
    sub_24F380998(&qword_27F240908, type metadata accessor for Player.LastPlayedTogetherInfo);
    sub_24F92CCF8();
    v27 = 13;
    type metadata accessor for Player.LastChallengeInfo(0);
    sub_24F380998(&qword_27F240910, type metadata accessor for Player.LastChallengeInfo);
    sub_24F92CCF8();
    v27 = 14;
    sub_24F92CD18();
    v27 = *(v3 + v9[19]);
    v26 = 15;
    sub_24F383AE4();
    sub_24F92CD48();
    v27 = 16;
    sub_24F92CCB8();
    v27 = 17;
    sub_24F92CCB8();
    v27 = 18;
    sub_24F92CCB8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Player.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220);
  MEMORY[0x28223BE20](v3 - 8);
  v92 = &v85 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220);
  MEMORY[0x28223BE20](v5 - 8);
  v93 = &v85 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v85 - v8;
  v10 = sub_24F9289E8();
  v94 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240920);
  v95 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v14 = &v85 - v13;
  v15 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v98 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24F3839E8();
  v96 = v14;
  v19 = v113;
  sub_24F92D108();
  if (v19)
  {
    v113 = v19;
    return __swift_destroy_boxed_opaque_existential_1(v98);
  }

  v20 = v12;
  v87 = v9;
  v88 = v10;
  v89 = v15;
  v90 = v17;
  LOBYTE(v107) = 0;
  v21 = v97;
  v22 = v96;
  v23 = sub_24F92CC28();
  v25 = v90;
  *v90 = v23;
  *(v25 + 1) = v26;
  LOBYTE(v107) = 1;
  *(v25 + 2) = sub_24F92CC28();
  *(v25 + 3) = v27;
  LOBYTE(v107) = 2;
  sub_24F380998(&qword_27F214018, MEMORY[0x277D21C48]);
  v28 = v88;
  v86 = 0;
  sub_24F92CC68();
  v113 = 0;
  v29 = v89;
  (*(v94 + 32))(&v25[v89[6]], v20, v28);
  LOBYTE(v107) = 3;
  v30 = v113;
  v31 = sub_24F92CC28();
  if (v30)
  {
    v113 = v30;
    (*(v95 + 8))(v22, v21);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    LODWORD(v93) = 0;
    LODWORD(v95) = 0;
    LODWORD(v96) = 0;
    LODWORD(v97) = 0;
    v38 = 0;
    goto LABEL_17;
  }

  v39 = &v25[v29[7]];
  *v39 = v31;
  v39[1] = v32;
  LOBYTE(v107) = 4;
  v40 = sub_24F92CBC8();
  v113 = 0;
  v41 = v29;
  v42 = &v25[v29[8]];
  *v42 = v40;
  v42[1] = v43;
  v106 = 5;
  sub_24E606978();
  v44 = v113;
  sub_24F92CC18();
  v45 = v95;
  if (v44)
  {
    v113 = v44;
    (*(v95 + 8))(v22, v21);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    LODWORD(v93) = 0;
    LODWORD(v95) = 0;
    LODWORD(v96) = 0;
    LODWORD(v97) = 0;
    v38 = 0;
    v33 = 1;
    v34 = 1;
    goto LABEL_17;
  }

  v46 = &v25[v41[9]];
  v47 = v110;
  *(v46 + 2) = v109;
  *(v46 + 3) = v47;
  v48 = v112;
  *(v46 + 4) = v111;
  *(v46 + 5) = v48;
  v49 = v108;
  *v46 = v107;
  *(v46 + 1) = v49;
  LOBYTE(v101) = 6;
  v50 = sub_24F92CBC8();
  v113 = 0;
  v51 = &v25[v41[10]];
  *v51 = v50;
  v51[1] = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  v105 = 7;
  sub_24E7C1498();
  v53 = v113;
  sub_24F92CC18();
  if (v53)
  {
    v113 = v53;
    (*(v45 + 8))(v22, v21);
    v37 = 0;
    LODWORD(v93) = 0;
    LODWORD(v95) = 0;
    LODWORD(v96) = 0;
    LODWORD(v97) = 0;
    v38 = 0;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    goto LABEL_17;
  }

  *(v90 + v89[11]) = v101;
  v105 = 8;
  sub_24F92CC18();
  v113 = 0;
  *(v90 + v89[12]) = v101;
  type metadata accessor for CallProviderConversationHandleSet();
  LOBYTE(v101) = 9;
  sub_24F380998(&qword_27F23A0D0, type metadata accessor for CallProviderConversationHandleSet);
  v54 = v113;
  sub_24F92CC18();
  v113 = v54;
  if (v54)
  {
    (*(v95 + 8))(v96, v97);
    LODWORD(v95) = 0;
    LODWORD(v96) = 0;
    LODWORD(v97) = 0;
    v38 = 0;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v55 = &v114;
LABEL_16:
    *(v55 - 64) = 1;
    goto LABEL_17;
  }

  sub_24E6009C8(v87, v90 + v89[13], &unk_27F23E170);
  LOBYTE(v101) = 10;
  v56 = v113;
  v57 = sub_24F92CC38();
  v113 = v56;
  if (v56 || (*(v90 + v89[14]) = v57 & 1, v105 = 11, sub_24F383B38(), v58 = v113, sub_24F92CC18(), (v113 = v58) != 0))
  {
    (*(v95 + 8))(v96, v97);
    LODWORD(v96) = 0;
    LODWORD(v97) = 0;
    v38 = 0;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    LODWORD(v93) = 1;
    v55 = &v115;
    goto LABEL_16;
  }

  v69 = (v90 + v89[15]);
  v70 = v102;
  *v69 = v101;
  v69[1] = v70;
  v71 = v104;
  v69[2] = v103;
  v69[3] = v71;
  type metadata accessor for Player.LastPlayedTogetherInfo(0);
  v100 = 12;
  sub_24F380998(&qword_27F240930, type metadata accessor for Player.LastPlayedTogetherInfo);
  v72 = v113;
  sub_24F92CC18();
  v113 = v72;
  if (v72)
  {
    (*(v95 + 8))(v96, v97);
    LODWORD(v97) = 0;
    v38 = 0;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    LODWORD(v93) = 1;
    LODWORD(v95) = 1;
    v55 = &v116;
    goto LABEL_16;
  }

  sub_24E6009C8(v93, v90 + v89[16], &unk_27F23E220);
  type metadata accessor for Player.LastChallengeInfo(0);
  v100 = 13;
  sub_24F380998(&qword_27F240938, type metadata accessor for Player.LastChallengeInfo);
  v73 = v113;
  sub_24F92CC18();
  v113 = v73;
  if (v73)
  {
    (*(v95 + 8))(v96, v97);
    v38 = 0;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    LODWORD(v93) = 1;
    LODWORD(v95) = 1;
    LODWORD(v96) = 1;
    v55 = &v117;
    goto LABEL_16;
  }

  sub_24E6009C8(v92, v90 + v89[17], &unk_27F247220);
  v100 = 14;
  v74 = v113;
  v75 = sub_24F92CC38();
  v113 = v74;
  if (v74)
  {
    (*(v95 + 8))(v96, v97);
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    LODWORD(v93) = 1;
    LODWORD(v95) = 1;
    LODWORD(v96) = 1;
    LODWORD(v97) = 1;
    v38 = 1;
LABEL_17:
    v59 = v86;
    __swift_destroy_boxed_opaque_existential_1(v98);
    v60 = v90;

    if (!v59)
    {
    }

    goto LABEL_19;
  }

  *(v90 + v89[18]) = v75 & 1;
  v99 = 15;
  sub_24F383B8C();
  v76 = v113;
  sub_24F92CC68();
  v113 = v76;
  if (!v76)
  {
    *(v90 + v89[19]) = v100;
    v100 = 16;
    v77 = v113;
    v78 = sub_24F92CBD8();
    v113 = v77;
    if (!v77)
    {
      *(v90 + v89[20]) = v78;
      v100 = 17;
      v79 = v113;
      v80 = sub_24F92CBD8();
      v113 = v79;
      if (!v79)
      {
        *(v90 + v89[21]) = v80;
        v100 = 18;
        v81 = v113;
        v82 = sub_24F92CBD8();
        v113 = v81;
        if (!v81)
        {
          v83 = v82;
          (*(v95 + 8))(v96, v97);
          v84 = v90;
          *(v90 + v89[22]) = v83;
          sub_24F38456C(v84, v91, type metadata accessor for Player);
          __swift_destroy_boxed_opaque_existential_1(v98);
          return sub_24F384D60(v84, type metadata accessor for Player);
        }
      }
    }
  }

  (*(v95 + 8))(v96, v97);
  __swift_destroy_boxed_opaque_existential_1(v98);
  v60 = v90;

  v33 = 1;
  v34 = 1;
  v35 = 1;
  v36 = 1;
  v37 = 1;
  LODWORD(v93) = 1;
  LODWORD(v95) = 1;
  LODWORD(v96) = 1;
  LODWORD(v97) = 1;
  v38 = 1;
LABEL_19:
  v61 = v89;
  result = (*(v94 + 8))(v60 + v89[6], v88);
  if (v33)
  {

    if ((v34 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (!v34)
  {
LABEL_21:
    if (v35)
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  if (v35)
  {
LABEL_22:
    v62 = (v60 + v61[9]);
    v63 = v62[3];
    v109 = v62[2];
    v110 = v63;
    v64 = v62[5];
    v111 = v62[4];
    v112 = v64;
    v65 = v62[1];
    v107 = *v62;
    v108 = v65;
    result = sub_24E601704(&v107, &qword_27F212F50);
    if ((v36 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  if (!v36)
  {
LABEL_23:
    if (v37)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_33:

  if (v37)
  {
LABEL_24:

    if ((v93 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_34:
  if (!v93)
  {
LABEL_25:
    if (v95)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:

  if (v95)
  {
LABEL_26:
    result = sub_24E601704(v60 + v61[13], &unk_27F23E170);
    if ((v96 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  if (!v96)
  {
LABEL_27:
    if (v97)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  v66 = (v60 + v61[15]);
  v67 = v66[1];
  v107 = *v66;
  v108 = v67;
  v68 = v66[3];
  v109 = v66[2];
  v110 = v68;
  result = sub_24E601704(&v107, &qword_27F2408A0);
  if (v97)
  {
LABEL_28:
    result = sub_24E601704(v60 + v61[16], &unk_27F23E220);
    if (v38)
    {
      return sub_24E601704(v60 + v61[17], &unk_27F247220);
    }

    return result;
  }

LABEL_38:
  if (v38)
  {
    return sub_24E601704(v60 + v61[17], &unk_27F247220);
  }

  return result;
}

BOOL _s12GameStoreKit6PlayerV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  v131 = *(ChallengeInfo - 8);
  MEMORY[0x28223BE20](ChallengeInfo);
  v130 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220);
  MEMORY[0x28223BE20](v5 - 8);
  v132 = &v125 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A18);
  MEMORY[0x28223BE20](v7);
  v9 = &v125 - v8;
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  v136 = *(PlayedTogetherInfo - 8);
  v137 = PlayedTogetherInfo;
  MEMORY[0x28223BE20](PlayedTogetherInfo);
  v133 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220);
  MEMORY[0x28223BE20](v12 - 8);
  v138 = &v125 - v13;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A20);
  MEMORY[0x28223BE20](v135);
  v139 = (&v125 - v14);
  v15 = type metadata accessor for CallProviderConversationHandleSet();
  v140 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v125 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A28);
  MEMORY[0x28223BE20](v21);
  v23 = &v125 - v22;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  v129 = v7;
  v24 = type metadata accessor for Player(0);
  if ((MEMORY[0x25304E2E0](a1 + v24[6], a2 + v24[6]) & 1) == 0)
  {
    return 0;
  }

  v25 = v24[7];
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  if ((v26 != *v28 || v27 != v28[1]) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  v29 = v24[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33 || (*v30 != *v32 || v31 != v33) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v128 = v9;
  v34 = (a1 + v24[9]);
  v35 = v34[3];
  v36 = v34[1];
  v181 = v34[2];
  v182 = v35;
  v37 = v34[3];
  v38 = v34[5];
  v183 = v34[4];
  v184 = v38;
  v39 = v34[1];
  v180[0] = *v34;
  v180[1] = v39;
  v40 = (a2 + v24[9]);
  v41 = v40[1];
  v185[0] = *v40;
  v185[1] = v41;
  v42 = v40[5];
  v185[4] = v40[4];
  v185[5] = v42;
  v43 = v40[3];
  v185[2] = v40[2];
  v185[3] = v43;
  v177 = v37;
  v178 = v183;
  v179 = v34[5];
  v44 = *(&v180[0] + 1);
  v175 = v36;
  v176 = v181;
  if (*(&v180[0] + 1) == 1)
  {
    if (*(&v185[0] + 1) == 1)
    {
      v127 = v24;
      *&v163 = *&v180[0];
      *(&v163 + 1) = 1;
      v45 = v34[4];
      v166 = v34[3];
      v167 = v45;
      v168 = v34[5];
      v46 = v34[2];
      v164 = v34[1];
      v165 = v46;
      sub_24E60169C(v180, v187, &qword_27F212F50);
      sub_24E60169C(v185, v187, &qword_27F212F50);
      sub_24E601704(&v163, &qword_27F212F50);
      goto LABEL_27;
    }

LABEL_22:
    v163 = v180[0];
    v47 = v34[4];
    v166 = v34[3];
    v167 = v47;
    v168 = v34[5];
    v48 = v34[2];
    v164 = v34[1];
    v165 = v48;
    v169 = v185[0];
    v49 = v40[5];
    v173 = v40[4];
    v174 = v49;
    v50 = v40[3];
    v171 = v40[2];
    v172 = v50;
    v170 = v40[1];
    sub_24E60169C(v180, v187, &qword_27F212F50);
    sub_24E60169C(v185, v187, &qword_27F212F50);
    v51 = &unk_27F240A30;
LABEL_23:
    v52 = &v163;
LABEL_24:
    sub_24E601704(v52, v51);
    return 0;
  }

  if (*(&v185[0] + 1) == 1)
  {
    goto LABEL_22;
  }

  v127 = v24;
  v141 = v185[0];
  v54 = v40[4];
  v144 = v40[3];
  v145 = v54;
  v146 = v40[5];
  v55 = v40[2];
  v142 = v40[1];
  v143 = v55;
  v187[4] = v54;
  v187[5] = v146;
  v187[2] = v55;
  v187[3] = v144;
  v187[0] = v185[0];
  v187[1] = v142;
  v56 = v34[4];
  v186[3] = v34[3];
  v186[4] = v56;
  v186[5] = v34[5];
  v57 = v34[1];
  v186[2] = v34[2];
  v186[1] = v57;
  v186[0] = v180[0];
  v125 = *&v180[0];
  v126 = sub_24E605E30(v186, v187);
  sub_24E60169C(v180, &v163, &qword_27F212F50);
  sub_24E60169C(v185, &v163, &qword_27F212F50);
  sub_24E601704(&v141, &qword_27F212F50);
  *&v163 = v125;
  *(&v163 + 1) = v44;
  v166 = v177;
  v167 = v178;
  v168 = v179;
  v164 = v175;
  v165 = v176;
  sub_24E601704(&v163, &qword_27F212F50);
  if ((v126 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  v58 = v127;
  v59 = v127[10];
  v60 = (a1 + v59);
  v61 = *(a1 + v59 + 8);
  v62 = (a2 + v59);
  v63 = v62[1];
  if (v61)
  {
    if (!v63 || (*v60 != *v62 || v61 != v63) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v63)
  {
    return 0;
  }

  v64 = v58[11];
  v65 = *(a1 + v64);
  v66 = *(a2 + v64);
  if (v65)
  {
    if (!v66 || (sub_24EA14BB8(v65, v66) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v66)
  {
    return 0;
  }

  v67 = v58[12];
  v68 = *(a1 + v67);
  v69 = *(a2 + v67);
  if (v68)
  {
    if (!v69 || (sub_24EA14BB8(v68, v69) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v69)
  {
    return 0;
  }

  v127 = v58;
  v70 = v58[13];
  v71 = *(v21 + 48);
  sub_24E60169C(a1 + v70, v23, &unk_27F23E170);
  sub_24E60169C(a2 + v70, &v23[v71], &unk_27F23E170);
  v72 = *(v140 + 48);
  if (v72(v23, 1, v15) == 1)
  {
    if (v72(&v23[v71], 1, v15) == 1)
    {
      sub_24E601704(v23, &unk_27F23E170);
      goto LABEL_51;
    }

LABEL_49:
    v51 = &qword_27F240A28;
    v52 = v23;
    goto LABEL_24;
  }

  sub_24E60169C(v23, v20, &unk_27F23E170);
  if (v72(&v23[v71], 1, v15) == 1)
  {
    sub_24F384D60(v20, type metadata accessor for CallProviderConversationHandleSet);
    goto LABEL_49;
  }

  sub_24F37CA40(&v23[v71], v17, type metadata accessor for CallProviderConversationHandleSet);
  v73 = static CallProviderConversationHandleSet.== infix(_:_:)(v20, v17);
  sub_24F384D60(v17, type metadata accessor for CallProviderConversationHandleSet);
  sub_24F384D60(v20, type metadata accessor for CallProviderConversationHandleSet);
  sub_24E601704(v23, &unk_27F23E170);
  if ((v73 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  if (*(a1 + v127[14]) != *(a2 + v127[14]))
  {
    return 0;
  }

  v74 = (a1 + v127[15]);
  v75 = v74[1];
  v175 = *v74;
  v176 = v75;
  v76 = v74[1];
  v77 = v74[3];
  v177 = v74[2];
  v178 = v77;
  v78 = (a2 + v127[15]);
  v79 = v78[1];
  v141 = *v78;
  v142 = v79;
  v80 = v78[1];
  v81 = v78[3];
  v143 = v78[2];
  v144 = v81;
  v160 = v76;
  v161 = v177;
  v162 = v74[3];
  v82 = v175;
  v83 = v141;
  v157 = v80;
  v158 = v143;
  v159 = v78[3];
  if (!*(&v175 + 1))
  {
    if (!*(&v141 + 1))
    {
      v163 = v175;
      v87 = v74[2];
      v164 = v74[1];
      v165 = v87;
      v166 = v74[3];
      sub_24E60169C(&v175, &v153, &qword_27F2408A0);
      sub_24E60169C(&v141, &v153, &qword_27F2408A0);
      sub_24E601704(&v163, &qword_27F2408A0);
      goto LABEL_61;
    }

    sub_24E60169C(&v175, &v163, &qword_27F2408A0);
    sub_24E60169C(&v141, &v163, &qword_27F2408A0);
    goto LABEL_59;
  }

  v163 = v175;
  v84 = v74[2];
  v164 = v74[1];
  v165 = v84;
  v166 = v74[3];
  v153 = v175;
  v154 = v164;
  v155 = v84;
  v156 = v166;
  if (!*(&v141 + 1))
  {
    v149 = v163;
    v150 = v164;
    v151 = v165;
    v152 = v166;
    sub_24E60169C(&v175, v148, &qword_27F2408A0);
    sub_24E60169C(&v141, v148, &qword_27F2408A0);
    sub_24E60169C(&v163, v148, &qword_27F2408A0);
    sub_24F384DC0(&v149);
LABEL_59:
    v163 = v82;
    v164 = v160;
    v165 = v161;
    v166 = v162;
    v167 = v83;
    v168 = v157;
    v169 = v158;
    v170 = v159;
    v51 = &unk_27F240A38;
    goto LABEL_23;
  }

  v85 = v78[2];
  v150 = v78[1];
  v151 = v85;
  v152 = v78[3];
  v149 = v141;
  v86 = _s12GameStoreKit6PlayerV23FriendRequestInboxEntryV2eeoiySbAE_AEtFZ_0(&v153, &v149);
  v147[0] = v149;
  v147[1] = v150;
  v147[2] = v151;
  v147[3] = v152;
  sub_24E60169C(&v175, v148, &qword_27F2408A0);
  sub_24E60169C(&v141, v148, &qword_27F2408A0);
  sub_24E60169C(&v163, v148, &qword_27F2408A0);
  sub_24F384DC0(v147);
  v148[0] = v153;
  v148[1] = v154;
  v148[2] = v155;
  v148[3] = v156;
  sub_24F384DC0(v148);
  v149 = v82;
  v150 = v160;
  v151 = v161;
  v152 = v162;
  sub_24E601704(&v149, &qword_27F2408A0);
  if ((v86 & 1) == 0)
  {
    return 0;
  }

LABEL_61:
  v88 = v127[16];
  v89 = *(v135 + 48);
  v90 = v139;
  sub_24E60169C(a1 + v88, v139, &unk_27F23E220);
  sub_24E60169C(a2 + v88, v90 + v89, &unk_27F23E220);
  v91 = v137;
  v92 = *(v136 + 48);
  if (v92(v90, 1, v137) == 1)
  {
    if (v92(v90 + v89, 1, v91) == 1)
    {
      sub_24E601704(v90, &unk_27F23E220);
      goto LABEL_69;
    }

    goto LABEL_66;
  }

  sub_24E60169C(v90, v138, &unk_27F23E220);
  if (v92(v90 + v89, 1, v91) == 1)
  {
    sub_24F384D60(v138, type metadata accessor for Player.LastPlayedTogetherInfo);
    v90 = v139;
LABEL_66:
    v51 = &qword_27F240A20;
    v52 = v90;
    goto LABEL_24;
  }

  v93 = v133;
  sub_24F37CA40(v139 + v89, v133, type metadata accessor for Player.LastPlayedTogetherInfo);
  if ((static Game.== infix(_:_:)(v138, v93) & 1) == 0)
  {
    sub_24F384D60(v133, type metadata accessor for Player.LastPlayedTogetherInfo);
    sub_24F384D60(v138, type metadata accessor for Player.LastPlayedTogetherInfo);
    v51 = &unk_27F23E220;
    v52 = v139;
    goto LABEL_24;
  }

  v94 = v138;
  v95 = *(v137 + 20);
  v96 = *(v138 + v95);
  v97 = *(v133 + v95);
  sub_24F384D60(v133, type metadata accessor for Player.LastPlayedTogetherInfo);
  sub_24F384D60(v94, type metadata accessor for Player.LastPlayedTogetherInfo);
  sub_24E601704(v139, &unk_27F23E220);
  if (v96 != v97)
  {
    return 0;
  }

LABEL_69:
  v98 = v128;
  v99 = v127[17];
  v100 = *(v129 + 48);
  sub_24E60169C(a1 + v99, v128, &unk_27F247220);
  sub_24E60169C(a2 + v99, v98 + v100, &unk_27F247220);
  v101 = *(v131 + 48);
  if (v101(v98, 1, ChallengeInfo) == 1)
  {
    if (v101(v128 + v100, 1, ChallengeInfo) == 1)
    {
      sub_24E601704(v128, &unk_27F247220);
      goto LABEL_79;
    }

    goto LABEL_74;
  }

  v102 = v128;
  sub_24E60169C(v128, v132, &unk_27F247220);
  if (v101((v102 + v100), 1, ChallengeInfo) == 1)
  {
    sub_24F384D60(v132, type metadata accessor for Player.LastChallengeInfo);
LABEL_74:
    v51 = &qword_27F240A18;
LABEL_75:
    v52 = v128;
    goto LABEL_24;
  }

  v103 = v130;
  sub_24F37CA40(v128 + v100, v130, type metadata accessor for Player.LastChallengeInfo);
  if ((static Game.== infix(_:_:)(v132, v103) & 1) == 0)
  {
    sub_24F384D60(v130, type metadata accessor for Player.LastChallengeInfo);
    sub_24F384D60(v132, type metadata accessor for Player.LastChallengeInfo);
    v51 = &unk_27F247220;
    goto LABEL_75;
  }

  v104 = *(ChallengeInfo + 20);
  v105 = v132;
  v106 = *(v132 + v104);
  v107 = *(v130 + v104);
  sub_24F384D60(v130, type metadata accessor for Player.LastChallengeInfo);
  sub_24F384D60(v105, type metadata accessor for Player.LastChallengeInfo);
  sub_24E601704(v128, &unk_27F247220);
  if (v106 != v107)
  {
    return 0;
  }

LABEL_79:
  if (*(a1 + v127[18]) != *(a2 + v127[18]))
  {
    return 0;
  }

  v108 = 0x656E6F7972657665;
  v109 = v127[19];
  v110 = *(a1 + v109);
  v111 = *(a2 + v109);
  if (v110)
  {
    if (v110 == 1)
    {
      v112 = 0x4F73646E65697266;
      v113 = 0xEB00000000796C6ELL;
    }

    else
    {
      v113 = 0xE600000000000000;
      v112 = 0x796C6E4F656DLL;
    }
  }

  else
  {
    v113 = 0xE800000000000000;
    v112 = 0x656E6F7972657665;
  }

  if (v111)
  {
    if (v111 == 1)
    {
      v108 = 0x4F73646E65697266;
      v114 = 0xEB00000000796C6ELL;
    }

    else
    {
      v114 = 0xE600000000000000;
      v108 = 0x796C6E4F656DLL;
    }
  }

  else
  {
    v114 = 0xE800000000000000;
  }

  if (v112 == v108 && v113 == v114)
  {
  }

  else
  {
    v115 = sub_24F92CE08();

    if ((v115 & 1) == 0)
    {
      return 0;
    }
  }

  v116 = v127[20];
  v117 = *(a1 + v116);
  v118 = *(a2 + v116);
  if (v117 == 2)
  {
    if (v118 != 2)
    {
      return 0;
    }
  }

  else if (v118 == 2 || ((v118 ^ v117) & 1) != 0)
  {
    return 0;
  }

  v119 = v127[21];
  v120 = *(a1 + v119);
  v121 = *(a2 + v119);
  if (v120 == 2)
  {
    if (v121 != 2)
    {
      return 0;
    }
  }

  else if (v121 == 2 || ((v121 ^ v120) & 1) != 0)
  {
    return 0;
  }

  v122 = v127[22];
  v123 = *(a1 + v122);
  v124 = *(a2 + v122);
  if (v123 != 2)
  {
    return v124 != 2 && ((v124 ^ v123) & 1) == 0;
  }

  return v124 == 2;
}

unint64_t sub_24F3839E8()
{
  result = qword_27F2408F0;
  if (!qword_27F2408F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2408F0);
  }

  return result;
}

unint64_t sub_24F383A3C()
{
  result = qword_27F2408F8;
  if (!qword_27F2408F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2408F8);
  }

  return result;
}

unint64_t sub_24F383A90()
{
  result = qword_27F240900;
  if (!qword_27F240900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240900);
  }

  return result;
}

unint64_t sub_24F383AE4()
{
  result = qword_27F240918;
  if (!qword_27F240918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240918);
  }

  return result;
}

unint64_t sub_24F383B38()
{
  result = qword_27F240928;
  if (!qword_27F240928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240928);
  }

  return result;
}

unint64_t sub_24F383B8C()
{
  result = qword_27F240940;
  if (!qword_27F240940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240940);
  }

  return result;
}

uint64_t sub_24F383BF4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_24F9289E8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[16];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[17];

  return v16(v17, a2, v15);
}

uint64_t sub_24F383DE0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_24F9289E8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[16];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[17];

  return v16(v17, a2, a2, v15);
}

void sub_24F383FB8()
{
  sub_24F9289E8();
  if (v0 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F254DE0);
    if (v1 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F240958);
      if (v2 <= 0x3F)
      {
        sub_24E6BCB54();
        if (v3 <= 0x3F)
        {
          sub_24F3841B0(319, &qword_27F23A0E8, type metadata accessor for CallProviderConversationHandleSet);
          if (v4 <= 0x3F)
          {
            sub_24E66ECF0(319, &qword_27F240960);
            if (v5 <= 0x3F)
            {
              sub_24F3841B0(319, &qword_27F240968, type metadata accessor for Player.LastPlayedTogetherInfo);
              if (v6 <= 0x3F)
              {
                sub_24F3841B0(319, &qword_27F240970, type metadata accessor for Player.LastChallengeInfo);
                if (v7 <= 0x3F)
                {
                  sub_24E66ECF0(319, &qword_27F2169A0);
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

void sub_24F3841B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_21Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Game();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_22Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Game();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F38435C()
{
  result = type metadata accessor for Game();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F384468()
{
  result = qword_27F2409A8;
  if (!qword_27F2409A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2409A8);
  }

  return result;
}

unint64_t sub_24F3844C0()
{
  result = qword_27F2409B0;
  if (!qword_27F2409B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2409B0);
  }

  return result;
}

unint64_t sub_24F384518()
{
  result = qword_27F2409B8;
  if (!qword_27F2409B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2409B8);
  }

  return result;
}

uint64_t sub_24F38456C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F3845D4()
{
  v0 = sub_24F92CB88();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24F384620(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449726579616C70 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7241726174617661 && a2 == 0xED00006B726F7774 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4E746361746E6F63 && a2 == 0xEB00000000656D61 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA746F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x48746361746E6F63 && a2 == 0xED0000656C646E61 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA73FB0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA73FD0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6553656C646E6168 && a2 == 0xE900000000000074 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA74710 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x746E45786F626E69 && a2 == 0xEA00000000007972 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA74730 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA74750 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024FA74770 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x50656C69666F7270 && a2 == 0xEE00796361766972 || (sub_24F92CE08() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA73FF0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024FA74010 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x547265646E557369 && a2 == 0xEF6E656574726968)
  {

    return 18;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

unint64_t sub_24F384C64()
{
  result = qword_27F2409C8;
  if (!qword_27F2409C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2409C8);
  }

  return result;
}

unint64_t sub_24F384CB8()
{
  result = qword_27F2409D8;
  if (!qword_27F2409D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2409D8);
  }

  return result;
}

unint64_t sub_24F384D0C()
{
  result = qword_27F2409E0;
  if (!qword_27F2409E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2409E0);
  }

  return result;
}

uint64_t sub_24F384D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F384E38()
{
  result = qword_27F240A40;
  if (!qword_27F240A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240A40);
  }

  return result;
}

unint64_t sub_24F384E90()
{
  result = qword_27F240A48;
  if (!qword_27F240A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240A48);
  }

  return result;
}

unint64_t sub_24F384EE8()
{
  result = qword_27F240A50;
  if (!qword_27F240A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240A50);
  }

  return result;
}

unint64_t sub_24F384F40()
{
  result = qword_27F240A58;
  if (!qword_27F240A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240A58);
  }

  return result;
}

unint64_t sub_24F384F98()
{
  result = qword_27F240A60;
  if (!qword_27F240A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240A60);
  }

  return result;
}

unint64_t sub_24F384FF0()
{
  result = qword_27F240A68;
  if (!qword_27F240A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240A68);
  }

  return result;
}

uint64_t sub_24F3850E4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v492 = a5;
  v563 = a4;
  v586 = a3;
  v573 = a2;
  LODWORD(v579) = a1;
  v578 = a6;
  v542 = type metadata accessor for ChallengeCardCapsuleSubtitle();
  MEMORY[0x28223BE20](v542);
  v500 = &v418 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v544 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A78);
  MEMORY[0x28223BE20](v544);
  v545 = &v418 - v7;
  v539 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A80);
  MEMORY[0x28223BE20](v539);
  v540 = &v418 - v8;
  v541 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A88);
  MEMORY[0x28223BE20](v541);
  v543 = &v418 - v9;
  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A90);
  MEMORY[0x28223BE20](v516);
  v515 = &v418 - v10;
  v519 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A98);
  v518 = *(v519 - 8);
  MEMORY[0x28223BE20](v519);
  v517 = &v418 - v11;
  v538 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AA0);
  MEMORY[0x28223BE20](v538);
  v520 = &v418 - v12;
  v549 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AA8);
  MEMORY[0x28223BE20](v549);
  v556 = &v418 - v13;
  v547 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AB0);
  MEMORY[0x28223BE20](v547);
  v548 = &v418 - v14;
  v562 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AB8);
  MEMORY[0x28223BE20](v562);
  v550 = &v418 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v16 - 8);
  v436 = &v418 - v17;
  v453 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A10);
  MEMORY[0x28223BE20](v453);
  v437 = (&v418 - v18);
  v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AC0);
  MEMORY[0x28223BE20](v449);
  v451 = &v418 - v19;
  v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AC8);
  MEMORY[0x28223BE20](v450);
  v435 = (&v418 - v20);
  v481 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AD0);
  MEMORY[0x28223BE20](v481);
  v452 = &v418 - v21;
  v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AD8);
  MEMORY[0x28223BE20](v479);
  v480 = &v418 - v22;
  v546 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AE0);
  MEMORY[0x28223BE20](v546);
  v482 = &v418 - v23;
  v537 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v537);
  v474 = &v418 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v475 = &v418 - v26;
  v558 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AE8);
  MEMORY[0x28223BE20](v558);
  v560 = &v418 - v27;
  v532 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AF0);
  MEMORY[0x28223BE20](v532);
  v535 = &v418 - v28;
  v559 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AF8);
  MEMORY[0x28223BE20](v559);
  v536 = &v418 - v29;
  v568 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B00);
  MEMORY[0x28223BE20](v568);
  v561 = &v418 - v30;
  v584 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v504 = *(v584 - 8);
  MEMORY[0x28223BE20](v584);
  v574 = &v418 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v588 = type metadata accessor for PlayerAvatarView(0);
  v583 = *(v588 - 8);
  MEMORY[0x28223BE20](v588);
  v585 = &v418 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v513 = type metadata accessor for OverlappingPlayerAvatarsView();
  v511 = *(v513 - 8);
  MEMORY[0x28223BE20](v513);
  v505 = &v418 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v526 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B08);
  MEMORY[0x28223BE20](v526);
  v512 = &v418 - v34;
  v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B10);
  MEMORY[0x28223BE20](v524);
  v525 = &v418 - v35;
  v529 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B18);
  MEMORY[0x28223BE20](v529);
  v527 = &v418 - v36;
  v423 = type metadata accessor for ChallengeCardTitleView();
  MEMORY[0x28223BE20](v423);
  v419 = (&v418 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B20);
  MEMORY[0x28223BE20](v420);
  v422 = &v418 - v38;
  v503 = sub_24F91F648();
  v501 = *(v503 - 8);
  MEMORY[0x28223BE20](v503);
  v502 = &v418 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v448 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B28);
  v447 = *(v448 - 8);
  MEMORY[0x28223BE20](v448);
  v421 = &v418 - v40;
  v462 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B30);
  MEMORY[0x28223BE20](v462);
  v459 = &v418 - v41;
  v476 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B38);
  MEMORY[0x28223BE20](v476);
  v478 = &v418 - v42;
  v460 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B40);
  MEMORY[0x28223BE20](v460);
  v461 = (&v418 - v43);
  v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B48);
  MEMORY[0x28223BE20](v477);
  v463 = &v418 - v44;
  v533 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B50);
  MEMORY[0x28223BE20](v533);
  v483 = &v418 - v45;
  v530 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B58);
  MEMORY[0x28223BE20](v530);
  v531 = &v418 - v46;
  v555 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B60);
  MEMORY[0x28223BE20](v555);
  v534 = &v418 - v47;
  v510 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98);
  MEMORY[0x28223BE20](v510);
  v488 = &v418 - v48;
  v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A060);
  MEMORY[0x28223BE20](v522);
  v523 = &v418 - v49;
  v507 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A068);
  MEMORY[0x28223BE20](v507);
  v508 = &v418 - v50;
  v521 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A070);
  MEMORY[0x28223BE20](v521);
  v509 = &v418 - v51;
  v486 = type metadata accessor for HeroCardGameHeadingView();
  v485 = *(v486 - 8);
  MEMORY[0x28223BE20](v486);
  v464 = &v418 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E50);
  MEMORY[0x28223BE20](v506);
  v487 = &v418 - v53;
  v528 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A078);
  MEMORY[0x28223BE20](v528);
  v557 = &v418 - v54;
  v468 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B68);
  MEMORY[0x28223BE20](v468);
  v458 = &v418 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v56 - 8);
  v582 = &v418 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v425 = &v418 - v59;
  v589 = type metadata accessor for PlayerAvatar(0);
  v514 = *(v589 - 8);
  MEMORY[0x28223BE20](v589);
  v61 = &v418 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v581 = &v418 - v63;
  MEMORY[0x28223BE20](v64);
  v484 = &v418 - v65;
  MEMORY[0x28223BE20](v66);
  v424 = &v418 - v67;
  v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0);
  MEMORY[0x28223BE20](v442);
  v426 = &v418 - v68;
  v69 = type metadata accessor for ChallengeCard.ParticipantsInfo.Participant(0);
  v489 = *(v69 - 8);
  MEMORY[0x28223BE20](v69 - 8);
  v490 = &v418 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B70);
  MEMORY[0x28223BE20](v465);
  v467 = &v418 - v71;
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B78);
  MEMORY[0x28223BE20](v439);
  v440 = &v418 - v72;
  v466 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B80);
  MEMORY[0x28223BE20](v466);
  v441 = &v418 - v73;
  v433 = sub_24F924B38();
  v429 = *(v433 - 8);
  MEMORY[0x28223BE20](v433);
  v427 = &v418 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v432 = sub_24F921AF8();
  v431 = *(v432 - 8);
  MEMORY[0x28223BE20](v432);
  v430 = &v418 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v499 = sub_24F9289E8();
  v498 = *(v499 - 8);
  MEMORY[0x28223BE20](v499);
  v428 = &v418 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C10);
  MEMORY[0x28223BE20](v438);
  v434 = &v418 - v77;
  v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B88);
  MEMORY[0x28223BE20](v493);
  v469 = &v418 - v78;
  v569 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B90);
  MEMORY[0x28223BE20](v569);
  v571 = &v418 - v79;
  v564 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B98);
  MEMORY[0x28223BE20](v564);
  v566 = &v418 - v80;
  v551 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BA0);
  MEMORY[0x28223BE20](v551);
  v553 = &v418 - v81;
  v495 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BA8);
  MEMORY[0x28223BE20](v495);
  v496 = &v418 - v82;
  v552 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BB0);
  MEMORY[0x28223BE20](v552);
  v497 = &v418 - v83;
  v565 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BB8);
  MEMORY[0x28223BE20](v565);
  v554 = &v418 - v84;
  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BC0);
  MEMORY[0x28223BE20](v570);
  v567 = &v418 - v85;
  v575 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  MEMORY[0x28223BE20](v575);
  v491 = &v418 - v86;
  v444 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BC8);
  MEMORY[0x28223BE20](v444);
  v445 = &v418 - v87;
  v473 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BD0);
  MEMORY[0x28223BE20](v473);
  v446 = &v418 - v88;
  v443 = type metadata accessor for CompactVisualView(0);
  MEMORY[0x28223BE20](v443);
  v90 = &v418 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v456 = type metadata accessor for PortraitVisualView(0);
  MEMORY[0x28223BE20](v456);
  v92 = &v418 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v470 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BD8);
  MEMORY[0x28223BE20](v470);
  v472 = &v418 - v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BE0);
  MEMORY[0x28223BE20](v94);
  v455 = &v418 - v95;
  v471 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BE8);
  MEMORY[0x28223BE20](v471);
  v457 = &v418 - v96;
  v454 = type metadata accessor for LargeVisualView(0);
  MEMORY[0x28223BE20](v454);
  v98 = &v418 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v494 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BF0);
  MEMORY[0x28223BE20](v494);
  v100 = &v418 - v99;
  v580 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BF8);
  v577 = *(v580 - 8);
  MEMORY[0x28223BE20](v580);
  v572 = &v418 - v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240C00);
  MEMORY[0x28223BE20](v102 - 8);
  v576 = &v418 - v103;
  v104 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v104);
  v106 = &v418 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v107);
  v109 = (&v418 - v108);
  MEMORY[0x28223BE20](v110);
  v112 = &v418 - v111;
  MEMORY[0x28223BE20](v113);
  v587 = &v418 - v114;
  if (v586 <= 2u)
  {
    if (!v586)
    {
      if (qword_27F211300 != -1)
      {
        swift_once();
      }

      v117 = __swift_project_value_buffer(v104, qword_27F39E640);
      sub_24F391C98(v117, v112, type metadata accessor for CardLayoutMetrics);
      goto LABEL_18;
    }

    if (v586 == 1)
    {
      sub_24F4E9E44(v563, v109);
      sub_24F391D78(v109, v112, type metadata accessor for CardLayoutMetrics);
LABEL_18:
      v115 = v579;
      goto LABEL_23;
    }

    if (qword_27F2112F8 != -1)
    {
      swift_once();
    }

    v118 = __swift_project_value_buffer(v104, qword_27F39E628);
    sub_24F391C98(v118, v112, type metadata accessor for CardLayoutMetrics);
    v119 = &v112[v104[12]];
    *v119 = 0;
    *(v119 + 1) = 0;
    *(v119 + 2) = 0;
    *(v119 + 3) = 0x4024000000000000;
LABEL_17:
    *&v112[v104[30]] = 0x403A000000000000;
    goto LABEL_18;
  }

  if (v586 == 3)
  {
    sub_24F4E9558(v563, v109);
    sub_24F391D78(v109, v112, type metadata accessor for CardLayoutMetrics);
    v112[v104[17]] = 0;
    goto LABEL_17;
  }

  if (v586 == 4)
  {
    v115 = v579;
    if (qword_27F2112F0 != -1)
    {
      swift_once();
    }

    v116 = qword_27F39E610;
  }

  else
  {
    v115 = v579;
    if (qword_27F211308 != -1)
    {
      swift_once();
    }

    v116 = qword_27F39E658;
  }

  v120 = __swift_project_value_buffer(v104, v116);
  sub_24F391C98(v120, v112, type metadata accessor for CardLayoutMetrics);
LABEL_23:
  sub_24F391D78(v112, v587, type metadata accessor for CardLayoutMetrics);
  if (v115 == 1)
  {
    LOBYTE(v121) = v586;
    if (v586 <= 1u)
    {
      goto LABEL_49;
    }

    goto LABEL_33;
  }

  v121 = v586;
  if (v115 == 8)
  {
    if (v586 > 2u)
    {
      v154 = type metadata accessor for ChallengeCard(0);
      v155 = v573;
      v156 = v573 + *(v154 + 32);
      v157 = (v156 + *(type metadata accessor for CommonCardAttributes(0) + 60));
      v158 = v157[1];
      if (v158)
      {
        v159 = v515;
        sub_24F38BA0C(v155, *v157, v158, v515);
        v160 = sub_24F925A18();
        KeyPath = swift_getKeyPath();
        v162 = (v159 + *(v516 + 36));
        *v162 = KeyPath;
        v162[1] = v160;
        sub_24F391AA0();
        v163 = v517;
        sub_24F9268B8();
        sub_24E601704(v159, &qword_27F240A90);
        LODWORD(v160) = sub_24F9251C8();
        *(v163 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240D10) + 36)) = v160;
        v164 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240D00) + 36);
        v165 = *MEMORY[0x277CE13B8];
        v166 = sub_24F927748();
        (*(*(v166 - 8) + 104))(v163 + v164, v165, v166);
        v167 = *(v587 + v104[28]);
        v168 = swift_getKeyPath();
        v169 = v519;
        v170 = v163 + *(v519 + 36);
        *v170 = v168;
        *(v170 + 8) = v167;
        *(v170 + 16) = 0;
        v171 = v520;
        sub_24E6009C8(v163, v520, &qword_27F240A98);
        v172 = 0;
        v132 = v550;
        v133 = v548;
        v173 = v540;
      }

      else
      {
        v172 = 1;
        v132 = v550;
        v133 = v548;
        v173 = v540;
        v171 = v520;
        v169 = v519;
      }

      (*(v518 + 56))(v171, v172, 1, v169);
      sub_24E60169C(v171, v173, &qword_27F240AA0);
      swift_storeEnumTagMultiPayload();
      sub_24F3917E4();
      sub_24F390BB4(&qword_27F21A0F8, type metadata accessor for ChallengeCardCapsuleSubtitle);
      v228 = v543;
      sub_24F924E28();
      sub_24E60169C(v228, v545, &qword_27F240A88);
      swift_storeEnumTagMultiPayload();
      sub_24F391728();
      sub_24E701970();
      v123 = v556;
      sub_24F924E28();
      sub_24E601704(v228, &qword_27F240A88);
      sub_24E601704(v171, &qword_27F240AA0);
    }

    else
    {
      v123 = v556;
      if (v586 != 1)
      {
        goto LABEL_49;
      }

      v124 = type metadata accessor for ChallengeCard(0);
      v125 = v501;
      v126 = *(v501 + 16);
      v127 = v502;
      v128 = v503;
      v126(v502, v573 + *(v124 + 48), v503);
      v129 = v500;
      v126(v500, v127, v128);
      v130 = sub_24F268DBC();
      (*(v125 + 8))(v127, v128);
      *(v129 + *(v542 + 20)) = v130;
      sub_24F391C98(v129, v540, type metadata accessor for ChallengeCardCapsuleSubtitle);
      swift_storeEnumTagMultiPayload();
      sub_24F3917E4();
      sub_24F390BB4(&qword_27F21A0F8, type metadata accessor for ChallengeCardCapsuleSubtitle);
      v131 = v543;
      sub_24F924E28();
      sub_24E60169C(v131, v545, &qword_27F240A88);
      swift_storeEnumTagMultiPayload();
      sub_24F391728();
      sub_24E701970();
      sub_24F924E28();
      sub_24E601704(v131, &qword_27F240A88);
      sub_24F391D00(v129, type metadata accessor for ChallengeCardCapsuleSubtitle);
      v132 = v550;
      v133 = v548;
    }

    v229 = &qword_27F240AA8;
    sub_24E60169C(v123, v133, &qword_27F240AA8);
    swift_storeEnumTagMultiPayload();
    sub_24F3914C8();
    sub_24F39169C();
    sub_24F924E28();
    sub_24E60169C(v132, v560, &qword_27F240AB8);
    swift_storeEnumTagMultiPayload();
    sub_24F39121C();
    sub_24F39143C();
    v230 = v561;
    sub_24F924E28();
    sub_24E601704(v132, &qword_27F240AB8);
    sub_24E60169C(v230, v566, &qword_27F240B00);
    swift_storeEnumTagMultiPayload();
    sub_24F390924();
    sub_24F391190();
    v231 = v567;
    sub_24F924E28();
    sub_24E601704(v230, &qword_27F240B00);
    sub_24E60169C(v231, v571, &qword_27F240BC0);
    swift_storeEnumTagMultiPayload();
    sub_24F390898();
    sub_24E701970();
    v147 = v572;
    goto LABEL_69;
  }

  if (v115 == 4)
  {
    if ((v586 & 0xFE) == 4)
    {
      goto LABEL_27;
    }

LABEL_49:
    v153 = v576;
    (*(v577 + 56))(v576, 1, 1, v580);
LABEL_123:
    sub_24E6009C8(v153, v578, &qword_27F240C00);
    return sub_24F391D00(v587, type metadata accessor for CardLayoutMetrics);
  }

  if ((sub_24E92D030(v115, v573, v586) & 1) == 0)
  {
    goto LABEL_49;
  }

  if (v115 > 3u)
  {
    if (v115 > 0xAu)
    {
      if (v115 == 11)
      {
        v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
        v252 = v474;
        (*(*(v251 - 8) + 56))(v474, dword_24F9ECB54[v121], 5, v251);
        v253 = v475;
        sub_24F391D78(v252, v475, type metadata accessor for CardContentBackgroundStyle);
        sub_24F391C98(v253, v535, type metadata accessor for CardContentBackgroundStyle);
        swift_storeEnumTagMultiPayload();
        sub_24F391304(&qword_27F240CA8, &qword_27F240B18, &unk_24F9EC498, sub_24F391388);
        sub_24F390BB4(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
        v254 = v536;
        sub_24F924E28();
        sub_24E60169C(v254, v560, &qword_27F240AF8);
        swift_storeEnumTagMultiPayload();
        sub_24F39121C();
        sub_24F39143C();
        v255 = v561;
        sub_24F924E28();
        sub_24E601704(v254, &qword_27F240AF8);
        sub_24E60169C(v255, v566, &qword_27F240B00);
        swift_storeEnumTagMultiPayload();
        sub_24F390924();
        sub_24F391190();
        v256 = v567;
        sub_24F924E28();
        sub_24E601704(v255, &qword_27F240B00);
        sub_24E60169C(v256, v571, &qword_27F240BC0);
        swift_storeEnumTagMultiPayload();
        sub_24F390898();
        sub_24E701970();
        v147 = v572;
        sub_24F924E28();
        sub_24E601704(v256, &qword_27F240BC0);
        sub_24F391D00(v253, type metadata accessor for CardContentBackgroundStyle);
        goto LABEL_121;
      }

      v147 = v572;
      if (v115 == 12)
      {
        if (v121 > 1u)
        {
          v312 = type metadata accessor for ChallengeCard(0);
          v313 = v573;
          v314 = *(v573 + *(v312 + 56)) - 1;
          v315 = sub_24F926C98();
          v235 = v550;
          v236 = v548;
          if (v314 > 1)
          {
            v393 = v498;
            v394 = v313 + *(v312 + 36);
            v395 = v436;
            v396 = v499;
            (*(v498 + 16))(v436, v394, v499);
            (*(v393 + 56))(v395, 0, 1, v396);
            v316 = v437;
            sub_24F6C4E24(v395, v121 != 5, v315, v437);

            sub_24E601704(v395, &qword_27F213FB0);
            v320 = &qword_27F214A10;
            sub_24E60169C(v316, v451, &qword_27F214A10);
          }

          else
          {
            v316 = v435;
            v317 = v435 + *(v450 + 36);
            v318 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
            v319 = type metadata accessor for GradientBackground(0);
            (*(*(v319 - 8) + 56))(&v317[v318], 1, 1, v319);
            *v317 = swift_getKeyPath();
            v317[8] = 0;
            *(v317 + 3) = 0;
            *(v317 + 4) = 0;
            *(v317 + 2) = 0x403A000000000000;
            *(v317 + 20) = 257;
            *v316 = v315;
            v320 = &qword_27F240AC8;
            sub_24E60169C(v316, v451, &qword_27F240AC8);
          }

          swift_storeEnumTagMultiPayload();
          sub_24F3915E0();
          sub_24E63D150();
          v321 = v452;
          sub_24F924E28();
          sub_24E601704(v316, v320);
          v148 = v580;
          sub_24E60169C(v321, v480, &qword_27F240AD0);
          swift_storeEnumTagMultiPayload();
          sub_24E701970();
          sub_24F391554();
          v397 = v321;
          v234 = v482;
          sub_24F924E28();
          sub_24E601704(v397, &qword_27F240AD0);
        }

        else
        {
          v233 = v491;
          sub_24E91E394(0xC, v573, v121, v563, v492, v491);
          sub_24E60169C(v233, v480, &qword_27F214A20);
          swift_storeEnumTagMultiPayload();
          sub_24E701970();
          sub_24F391554();
          v234 = v482;
          sub_24F924E28();
          sub_24E601704(v233, &qword_27F214A20);
          v235 = v550;
          v236 = v548;
          v148 = v580;
        }

        sub_24E60169C(v234, v236, &qword_27F240AE0);
        swift_storeEnumTagMultiPayload();
        sub_24F3914C8();
        sub_24F39169C();
        sub_24F924E28();
        sub_24E60169C(v235, v560, &qword_27F240AB8);
        swift_storeEnumTagMultiPayload();
        sub_24F39121C();
        sub_24F39143C();
        v398 = v234;
        v399 = v561;
        sub_24F924E28();
        sub_24E601704(v235, &qword_27F240AB8);
        sub_24E60169C(v399, v566, &qword_27F240B00);
        swift_storeEnumTagMultiPayload();
        sub_24F390924();
        sub_24F391190();
        v400 = v567;
        sub_24F924E28();
        sub_24E601704(v399, &qword_27F240B00);
        sub_24E60169C(v400, v571, &qword_27F240BC0);
        swift_storeEnumTagMultiPayload();
        sub_24F390898();
        sub_24E701970();
        sub_24F924E28();
        sub_24E601704(v400, &qword_27F240BC0);
        sub_24E601704(v398, &qword_27F240AE0);
        goto LABEL_122;
      }
    }

    else
    {
      if (v115 == 4)
      {
LABEL_27:
        if (v121 >= 4u)
        {
          if (v121 != 4)
          {
            v237 = type metadata accessor for ChallengeCard(0);
            v238 = v573;
            v239 = v573 + *(v237 + 32);
            v240 = (v239 + *(type metadata accessor for CommonCardAttributes(0) + 44));
            v241 = v240[1];
            v221 = v566;
            v122 = v557;
            if (v241)
            {
              v242 = *v240;
              v243 = v238 + *(v237 + 36);
              v244 = v464;
              (*(v498 + 16))(v464, v243, v499);
              v245 = v486;
              v246 = &v244[*(v486 + 20)];
              *v246 = v242;
              *(v246 + 1) = v241;
              v247 = v244;
              v248 = v487;
              sub_24F391D78(v247, v487, type metadata accessor for HeroCardGameHeadingView);
              v249 = 0;
            }

            else
            {
              v249 = 1;
              v248 = v487;
              v245 = v486;
            }

            (*(v485 + 56))(v248, v249, 1, v245);
            sub_24E60169C(v248, v508, &qword_27F219E50);
            swift_storeEnumTagMultiPayload();
            sub_24E7179AC();
            sub_24E63C774();

            v262 = v248;
            v263 = v509;
            sub_24F924E28();
            sub_24E60169C(v263, v523, &qword_27F21A070);
            swift_storeEnumTagMultiPayload();
            sub_24E725CB8();
            sub_24F924E28();
            sub_24E601704(v263, &qword_27F21A070);
            sub_24E601704(v262, &qword_27F219E50);
            v222 = v531;
            goto LABEL_65;
          }

          v193 = (v573 + *(type metadata accessor for ChallengeCard(0) + 40));
          v194 = v193[1];
          *&v591 = *v193;
          *(&v591 + 1) = v194;
          sub_24E600AEC();

          v195 = sub_24F925E18();
          v197 = v196;
          v199 = v198;
          v200 = v587;
          v201 = sub_24F925C98();
          v203 = v202;
          v205 = v204;
          sub_24E600B40(v195, v197, v199 & 1);

          LODWORD(v591) = sub_24F9251C8();
          v206 = sub_24F925C58();
          v208 = v207;
          v210 = v209;
          v212 = v211;
          sub_24E600B40(v201, v203, v205 & 1);

          v213 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8) + 36);
          v214 = *MEMORY[0x277CE13B8];
          v215 = sub_24F927748();
          v216 = v488;
          (*(*(v215 - 8) + 104))(&v488[v213], v214, v215);
          *v216 = v206;
          *(v216 + 8) = v208;
          *(v216 + 16) = v210 & 1;
          *(v216 + 24) = v212;
          v217 = *(v200 + v104[19]);
          v218 = swift_getKeyPath();
          v219 = v216 + *(v510 + 36);
          *v219 = v218;
          *(v219 + 8) = v217;
          *(v219 + 16) = 0;
          sub_24E60169C(v216, v508, &qword_27F214B98);
          swift_storeEnumTagMultiPayload();
          sub_24E7179AC();
          sub_24E63C774();
          v220 = v509;
          sub_24F924E28();
          sub_24E60169C(v220, v523, &qword_27F21A070);
          swift_storeEnumTagMultiPayload();
          sub_24E725CB8();
          v122 = v557;
          sub_24F924E28();
          sub_24E601704(v220, &qword_27F21A070);
          sub_24E601704(v216, &qword_27F214B98);
        }

        else
        {
          swift_storeEnumTagMultiPayload();
          sub_24E725CB8();
          v122 = v557;
          sub_24F924E28();
        }

        v221 = v566;
        v222 = v531;
LABEL_65:
        sub_24E60169C(v122, v222, &qword_27F21A078);
        swift_storeEnumTagMultiPayload();
        sub_24E725C2C();
        sub_24F390F38();
        v223 = v534;
        sub_24F924E28();
        sub_24E60169C(v223, v553, &qword_27F240B60);
        swift_storeEnumTagMultiPayload();
        sub_24F3909B0();
        sub_24F390EAC();
        v224 = v554;
        sub_24F924E28();
        sub_24E601704(v223, &qword_27F240B60);
        sub_24E60169C(v224, v221, &qword_27F240BB8);
        swift_storeEnumTagMultiPayload();
        sub_24F390924();
        sub_24F391190();
        v225 = v567;
        sub_24F924E28();
        sub_24E601704(v224, &qword_27F240BB8);
        sub_24E60169C(v225, v571, &qword_27F240BC0);
        swift_storeEnumTagMultiPayload();
        sub_24F390898();
        sub_24E701970();
        v147 = v572;
        sub_24F924E28();
        sub_24E601704(v225, &qword_27F240BC0);
        v226 = v557;
        v227 = &qword_27F21A078;
LABEL_120:
        sub_24E601704(v226, v227);
        goto LABEL_121;
      }

      v147 = v572;
      if (v115 == 7)
      {
        if (v121 > 2u)
        {
          v290 = v573 + *(type metadata accessor for ChallengeCard(0) + 32);
          v291 = (v290 + *(type metadata accessor for CommonCardAttributes(0) + 56));
          v292 = v291[1];
          v148 = v580;
          if (v292)
          {
            v293 = *v291;
            v294 = (v587 + v104[22]);
            v295 = v294[3];
            v589 = v294[4];
            v588 = __swift_project_boxed_opaque_existential_1(v294, v295);
            *&v591 = v293;
            *(&v591 + 1) = v292;
            sub_24E600AEC();

            v296 = sub_24F925E18();
            v298 = v297;
            v300 = v299;
            v301 = sub_24F925C98();
            v303 = v302;
            LOBYTE(v293) = v304;
            sub_24E600B40(v296, v298, v300 & 1);

            v305 = sub_24F925C58();
            v307 = v306;
            LOBYTE(v296) = v308;
            v310 = v309;
            v311 = v303;
            v147 = v572;
            sub_24E600B40(v301, v311, v293 & 1);

            v292 = v296 & 1;
            sub_24E5FD138(v305, v307, v292);
          }

          else
          {
            v305 = 0;
            v307 = 0;
            v310 = 0;
          }

          v404 = v461;
          *v461 = v305;
          v404[1] = v307;
          v404[2] = v292;
          v404[3] = v310;
          swift_storeEnumTagMultiPayload();
          sub_24E65D2B4(v305, v307, v292, v310);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217ED0);
          sub_24E6C08EC();
          sub_24F391050();
          v405 = v463;
          sub_24F924E28();
          sub_24E60169C(v405, v478, &qword_27F240B48);
          swift_storeEnumTagMultiPayload();
          sub_24F390FC4();
          sub_24E701970();
          v150 = v483;
          sub_24F924E28();
          sub_24E65D2F8(v305, v307, v292, v310);
          sub_24E65D2F8(v305, v307, v292, v310);
          v151 = v405;
          v152 = &qword_27F240B48;
        }

        else
        {
          v148 = v580;
          if (v121 == 1)
          {
            v149 = v491;
            sub_24E91E394(7, v573, 1, v563, v492, v491);
            sub_24E60169C(v149, v478, &qword_27F214A20);
            swift_storeEnumTagMultiPayload();
            sub_24F390FC4();
            sub_24E701970();
            v150 = v483;
            sub_24F924E28();
            v151 = v149;
            v152 = &qword_27F214A20;
          }

          else
          {
            v373 = type metadata accessor for ChallengeCard(0);
            v374 = v573 + v373[8];
            v375 = (v374 + *(type metadata accessor for CommonCardAttributes(0) + 56));
            v376 = v375[1];
            v150 = v483;
            if (!v376)
            {
              goto LABEL_140;
            }

            v377 = *v375;
            v378 = HIBYTE(v376) & 0xF;
            if ((v376 & 0x2000000000000000) == 0)
            {
              v378 = v377 & 0xFFFFFFFFFFFFLL;
            }

            if (v378)
            {
              v379 = v373[12];

              v380 = v573;
              sub_24F91F5C8();
              if (v381 >= *(v380 + v373[13]) && (v382 = v502, sub_24F91F638(), v383 = sub_24F91F588(), v589 = *(v501 + 8), (v589)(v382, v503), (v383 & 1) != 0))
              {
                v384 = *(v501 + 16);
                v385 = v380 + v379;
                v386 = v502;
                v387 = v503;
                v384(v502, v385, v503);
                v388 = v384;
                sub_24F391C98(v587, v106, type metadata accessor for CardLayoutMetrics);
                v389 = v419;
                *v419 = v377;
                *(v389 + 8) = v376;
                v390 = v423;
                v388(v389 + *(v423 + 20), v386, v387);
                v148 = v580;
                v147 = v572;
                sub_24F391C98(v106, v389 + *(v390 + 24), type metadata accessor for CardLayoutMetrics);
                v391 = sub_24F268DBC();
                sub_24F391D00(v106, type metadata accessor for CardLayoutMetrics);
                (v589)(v386, v387);
                *(v389 + *(v390 + 28)) = v391;
                sub_24F391C98(v389, v422, type metadata accessor for ChallengeCardTitleView);
                swift_storeEnumTagMultiPayload();
                sub_24E701970();
                sub_24F390BB4(&qword_27F21A178, type metadata accessor for ChallengeCardTitleView);
                v392 = v421;
                sub_24F924E28();
                sub_24F391D00(v389, type metadata accessor for ChallengeCardTitleView);
              }

              else
              {

                v413 = v491;
                sub_24E91E394(7, v380, v121, v563, v492, v491);
                sub_24E60169C(v413, v422, &qword_27F214A20);
                swift_storeEnumTagMultiPayload();
                sub_24E701970();
                sub_24F390BB4(&qword_27F21A178, type metadata accessor for ChallengeCardTitleView);
                v392 = v421;
                sub_24F924E28();
                sub_24E601704(v413, &qword_27F214A20);
                v147 = v572;
              }

              v150 = v483;
              v403 = v459;
              sub_24E6009C8(v392, v459, &qword_27F240B28);
              v401 = 0;
              v402 = v478;
            }

            else
            {
LABEL_140:
              v401 = 1;
              v402 = v478;
              v403 = v459;
            }

            (*(v447 + 56))(v403, v401, 1, v448);
            sub_24E60169C(v403, v461, &qword_27F240B30);
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217ED0);
            sub_24E6C08EC();
            sub_24F391050();
            v414 = v463;
            sub_24F924E28();
            sub_24E60169C(v414, v402, &qword_27F240B48);
            swift_storeEnumTagMultiPayload();
            sub_24F390FC4();
            sub_24E701970();
            sub_24F924E28();
            sub_24E601704(v414, &qword_27F240B48);
            v151 = v459;
            v152 = &qword_27F240B30;
          }
        }

        sub_24E601704(v151, v152);
        sub_24E60169C(v150, v531, &qword_27F240B50);
        swift_storeEnumTagMultiPayload();
        sub_24E725C2C();
        sub_24F390F38();
        v415 = v534;
        sub_24F924E28();
        sub_24E60169C(v415, v553, &qword_27F240B60);
        swift_storeEnumTagMultiPayload();
        sub_24F3909B0();
        sub_24F390EAC();
        v416 = v554;
        sub_24F924E28();
        sub_24E601704(v415, &qword_27F240B60);
        sub_24E60169C(v416, v566, &qword_27F240BB8);
        swift_storeEnumTagMultiPayload();
        sub_24F390924();
        sub_24F391190();
        v417 = v567;
        sub_24F924E28();
        sub_24E601704(v416, &qword_27F240BB8);
        sub_24E60169C(v417, v571, &qword_27F240BC0);
        swift_storeEnumTagMultiPayload();
        sub_24F390898();
        sub_24E701970();
        sub_24F924E28();
        sub_24E601704(v417, &qword_27F240BC0);
        v371 = v150;
        v372 = &qword_27F240B50;
        goto LABEL_150;
      }
    }

    goto LABEL_81;
  }

  if (v115 == 1)
  {
LABEL_33:
    if ((v121 - 1) >= 4u)
    {
      swift_storeEnumTagMultiPayload();
      sub_24F391388();
      v174 = v527;
      sub_24F924E28();
      v147 = v572;
LABEL_119:
      sub_24E60169C(v174, v535, &qword_27F240B18);
      swift_storeEnumTagMultiPayload();
      sub_24F391304(&qword_27F240CA8, &qword_27F240B18, &unk_24F9EC498, sub_24F391388);
      sub_24F390BB4(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
      v330 = v536;
      sub_24F924E28();
      sub_24E60169C(v330, v560, &qword_27F240AF8);
      swift_storeEnumTagMultiPayload();
      sub_24F39121C();
      sub_24F39143C();
      v331 = v561;
      sub_24F924E28();
      sub_24E601704(v330, &qword_27F240AF8);
      sub_24E60169C(v331, v566, &qword_27F240B00);
      swift_storeEnumTagMultiPayload();
      sub_24F390924();
      sub_24F391190();
      v332 = v567;
      sub_24F924E28();
      sub_24E601704(v331, &qword_27F240B00);
      sub_24E60169C(v332, v571, &qword_27F240BC0);
      swift_storeEnumTagMultiPayload();
      sub_24F390898();
      sub_24E701970();
      sub_24F924E28();
      sub_24E601704(v332, &qword_27F240BC0);
      v226 = v174;
      v227 = &qword_27F240B18;
      goto LABEL_120;
    }

    v134 = type metadata accessor for ChallengeCard(0);
    v135 = v573;
    sub_24F91F5C8();
    if (v136 < *(v135 + *(v134 + 52)))
    {
      v137 = *(v135 + *(v134 + 44));
      v138 = *(v137 + 16);
      v139 = MEMORY[0x277D84F90];
      if (v138)
      {
        *&v591 = MEMORY[0x277D84F90];
        sub_24F457BF8(0, v138, 0);
        v139 = v591;
        v140 = v137 + ((*(v489 + 80) + 32) & ~*(v489 + 80));
        v579 = *(v489 + 72);
        v141 = v585;
        v142 = v490;
        v143 = v514;
        v144 = v484;
        do
        {
          sub_24F391C98(v140, v142, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant);
          sub_24F391D78(v142, v144, type metadata accessor for PlayerAvatar);
          *&v591 = v139;
          v146 = *(v139 + 16);
          v145 = *(v139 + 24);
          if (v146 >= v145 >> 1)
          {
            sub_24F457BF8(v145 > 1, v146 + 1, 1);
            v143 = v514;
            v139 = v591;
          }

          *(v139 + 16) = v146 + 1;
          sub_24F391D78(v144, v139 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v146, type metadata accessor for PlayerAvatar);
          v140 += v579;
          --v138;
        }

        while (v138);
LABEL_95:
        v266 = *(v139 + 16);
        if (!v266)
        {

          v288 = 1;
          v147 = v572;
          v287 = v513;
          v289 = v512;
LABEL_118:
          (*(v511 + 56))(v289, v288, 1, v287);
          sub_24E60169C(v289, v525, &qword_27F240B08);
          swift_storeEnumTagMultiPayload();
          sub_24F391388();
          v174 = v527;
          sub_24F924E28();
          sub_24E601704(v289, &qword_27F240B08);
          goto LABEL_119;
        }

        v590 = MEMORY[0x277D84F90];
        sub_24F457C7C(0, v266, 0);
        v267 = v590;
        v268 = (*(v143 + 80) + 32) & ~*(v143 + 80);
        v573 = v139;
        v269 = v139 + v268;
        v270 = (v504 + 56);
        v579 = *(v143 + 72);
        do
        {
          v271 = v581;
          sub_24F391C98(v269, v581, type metadata accessor for PlayerAvatar);
          sub_24F391C98(v271, v61, type metadata accessor for PlayerAvatar);

          sub_24F928948();
          sub_24F391D00(v271, type metadata accessor for PlayerAvatar);
          type metadata accessor for PlayerAvatarView.AvatarType(0);
          swift_storeEnumTagMultiPayload();
          v272 = v582;
          sub_24E60169C(&v61[*(v589 + 20)], v582, &qword_27F22DF80);
          v273 = *(v588 + 20);
          v274 = type metadata accessor for PlayerAvatar.Overlay(0);
          if ((*(*(v274 - 8) + 48))(v272, 1, v274) == 1)
          {
            sub_24E601704(v272, &qword_27F22DF80);
            v275 = 1;
            v276 = v584;
          }

          else
          {
            v277 = v574;
            sub_24F391D78(v272, v574, type metadata accessor for PlayerAvatar.Overlay);
            v276 = v584;
            v278 = v277 + *(v584 + 20);
            *v278 = 0;
            *(v278 + 8) = 1;
            v279 = (v277 + *(v276 + 24));
            *v279 = 0;
            v279[1] = 0;
            v280 = v277;
            v141 = v585;
            sub_24F391D78(v280, &v585[v273], type metadata accessor for PlayerAvatarView.Overlay);
            v275 = 0;
          }

          (*v270)(&v141[v273], v275, 1, v276);
          v281 = v588;
          v282 = &v141[*(v588 + 24)];
          sub_24E60169C(&v61[*(v589 + 24)], &v591, qword_27F24EC90);
          sub_24F391D00(v61, type metadata accessor for PlayerAvatar);
          v283 = v592;
          *v282 = v591;
          *(v282 + 1) = v283;
          *(v282 + 4) = v593;
          v141[*(v281 + 28)] = 7;
          v590 = v267;
          v284 = v141;
          v286 = *(v267 + 16);
          v285 = *(v267 + 24);
          if (v286 >= v285 >> 1)
          {
            sub_24F457C7C(v285 > 1, v286 + 1, 1);
            v267 = v590;
          }

          *(v267 + 16) = v286 + 1;
          sub_24F391D78(v284, v267 + ((*(v583 + 80) + 32) & ~*(v583 + 80)) + *(v583 + 72) * v286, type metadata accessor for PlayerAvatarView);
          v269 += v579;
          --v266;
          v141 = v284;
        }

        while (v266);

        if (v586 > 2u)
        {
          v147 = v572;
          v287 = v513;
        }

        else
        {
          v147 = v572;
          v287 = v513;
          if (v586 && v586 != 1)
          {

            v327 = 1;
LABEL_117:
            *&v591 = 0x4010000000000000;
            sub_24E66ED98();
            v328 = v505;
            sub_24F9237C8();
            *(v328 + v287[5]) = v267;
            v329 = v328 + v287[6];
            *v329 = v327;
            *(v329 + 8) = 1;
            *(v328 + v287[7]) = 3;
            v289 = v512;
            sub_24F391D78(v328, v512, type metadata accessor for OverlappingPlayerAvatarsView);
            v288 = 0;
            goto LABEL_118;
          }
        }

        v326 = sub_24F92CE08();

        if (v326)
        {
          v327 = 1;
        }

        else
        {
          v327 = 3;
        }

        goto LABEL_117;
      }

      v141 = v585;
LABEL_94:
      v143 = v514;
      goto LABEL_95;
    }

    if (v121 > 2u)
    {
      v141 = v585;
    }

    else
    {
      v141 = v585;
      if (v121 != 1)
      {
        v264 = 1;
LABEL_93:

        sub_24F637D70(v264 & 1);
        v139 = v265;

        goto LABEL_94;
      }
    }

    v264 = sub_24F92CE08();
    goto LABEL_93;
  }

  if (v115 == 2)
  {
    if (v121 > 2u)
    {
      sub_24F391C98(v573, v98, type metadata accessor for ChallengeCard);
      v322 = v454;
      v98[*(v454 + 20)] = v121;
      v323 = &v98[*(v322 + 24)];
      type metadata accessor for CardSafeArea(0);
      sub_24F390BB4(&qword_27F214D10, type metadata accessor for CardSafeArea);
      *v323 = sub_24F923598();
      v323[8] = v324 & 1;
      sub_24F391C98(v98, v455, type metadata accessor for LargeVisualView);
      swift_storeEnumTagMultiPayload();
      sub_24F390BB4(&qword_27F240C30, type metadata accessor for LargeVisualView);
      sub_24F390BB4(&qword_27F240C38, type metadata accessor for PortraitVisualView);
      v325 = v457;
      sub_24F924E28();
      sub_24E60169C(v325, v472, &qword_27F240BE8);
      swift_storeEnumTagMultiPayload();
      sub_24F390AC8();
      sub_24F390BFC();
      v257 = v100;
      sub_24F924E28();
      sub_24E601704(v325, &qword_27F240BE8);
      sub_24F391D00(v98, type metadata accessor for LargeVisualView);
    }

    else
    {
      v257 = v100;
      if (v121)
      {
        v258 = v497;
        if (v121 == 1)
        {
          sub_24F391C98(v573, v90, type metadata accessor for ChallengeCard);
          v259 = &v90[*(v443 + 20)];
          type metadata accessor for CardSafeArea(0);
          sub_24F390BB4(&qword_27F214D10, type metadata accessor for CardSafeArea);
          *v259 = sub_24F923598();
          v259[8] = v260 & 1;
          sub_24F391C98(v90, v445, type metadata accessor for CompactVisualView);
          swift_storeEnumTagMultiPayload();
          sub_24F390BB4(&qword_27F240C48, type metadata accessor for CompactVisualView);
          sub_24E701970();
          v261 = v446;
          sub_24F924E28();
          sub_24E60169C(v261, v472, &qword_27F240BD0);
          swift_storeEnumTagMultiPayload();
          sub_24F390AC8();
          sub_24F390BFC();
          sub_24F924E28();
          sub_24E601704(v261, &qword_27F240BD0);
          sub_24F391D00(v90, type metadata accessor for CompactVisualView);
        }

        else
        {
          sub_24F391C98(v573, v92, type metadata accessor for ChallengeCard);
          v408 = v456;
          v92[*(v456 + 20)] = 2;
          v409 = &v92[*(v408 + 24)];
          type metadata accessor for CardSafeArea(0);
          sub_24F390BB4(&qword_27F214D10, type metadata accessor for CardSafeArea);
          *v409 = sub_24F923598();
          v409[8] = v410 & 1;
          sub_24F391C98(v92, v455, type metadata accessor for PortraitVisualView);
          swift_storeEnumTagMultiPayload();
          sub_24F390BB4(&qword_27F240C30, type metadata accessor for LargeVisualView);
          sub_24F390BB4(&qword_27F240C38, type metadata accessor for PortraitVisualView);
          v411 = v457;
          sub_24F924E28();
          sub_24E60169C(v411, v472, &qword_27F240BE8);
          swift_storeEnumTagMultiPayload();
          sub_24F390AC8();
          sub_24F390BFC();
          sub_24F924E28();
          sub_24E601704(v411, &qword_27F240BE8);
          sub_24F391D00(v92, type metadata accessor for PortraitVisualView);
        }

        goto LABEL_145;
      }

      v406 = v491;
      sub_24E91E394(2, v573, 0, v563, v492, v491);
      sub_24E60169C(v406, v445, &qword_27F214A20);
      swift_storeEnumTagMultiPayload();
      sub_24F390BB4(&qword_27F240C48, type metadata accessor for CompactVisualView);
      sub_24E701970();
      v407 = v446;
      sub_24F924E28();
      sub_24E60169C(v407, v472, &qword_27F240BD0);
      swift_storeEnumTagMultiPayload();
      sub_24F390AC8();
      sub_24F390BFC();
      sub_24F924E28();
      sub_24E601704(v407, &qword_27F240BD0);
      sub_24E601704(v406, &qword_27F214A20);
    }

    v258 = v497;
LABEL_145:
    v229 = &qword_27F240BF0;
    sub_24E60169C(v257, v496, &qword_27F240BF0);
    swift_storeEnumTagMultiPayload();
    sub_24F390A3C();
    sub_24F390CB8();
    sub_24F924E28();
    v123 = v257;
    sub_24E60169C(v258, v553, &qword_27F240BB0);
    swift_storeEnumTagMultiPayload();
    sub_24F3909B0();
    sub_24F390EAC();
    v412 = v554;
    sub_24F924E28();
    sub_24E601704(v258, &qword_27F240BB0);
    sub_24E60169C(v412, v566, &qword_27F240BB8);
    swift_storeEnumTagMultiPayload();
    sub_24F390924();
    sub_24F391190();
    v231 = v567;
    sub_24F924E28();
    sub_24E601704(v412, &qword_27F240BB8);
    sub_24E60169C(v231, v571, &qword_27F240BC0);
    swift_storeEnumTagMultiPayload();
    sub_24F390898();
    sub_24E701970();
    v147 = v572;
LABEL_69:
    sub_24F924E28();
    sub_24E601704(v231, &qword_27F240BC0);
    v232 = v123;
LABEL_70:
    sub_24E601704(v232, v229);
LABEL_121:
    v148 = v580;
LABEL_122:
    v153 = v576;
    sub_24E6009C8(v147, v576, &qword_27F240BF8);
    (*(v577 + 56))(v153, 0, 1, v148);
    goto LABEL_123;
  }

  v147 = v572;
  if (v115 != 3)
  {
LABEL_81:
    v250 = v491;
    sub_24E91E394(v115, v573, v121, v563, v492, v491);
    v229 = &qword_27F214A20;
    sub_24E60169C(v250, v571, &qword_27F214A20);
    swift_storeEnumTagMultiPayload();
    sub_24F390898();
    sub_24E701970();
    sub_24F924E28();
    v232 = v250;
    goto LABEL_70;
  }

  if (v121 > 3u)
  {
    v175 = v573;
    if (v121 == 4)
    {
      type metadata accessor for ChallengeCard(0);
      v333 = v428;
      sub_24F9289C8();
      LODWORD(v589) = *MEMORY[0x277CE0118];
      v334 = v429;
      v588 = *(v429 + 104);
      v335 = v427;
      v336 = v433;
      (v588)(v427);
      v337 = v430;
      sub_24F9219A8();
      (*(v334 + 8))(v335, v336);
      sub_24F390BB4(&qword_27F214C28, MEMORY[0x277D21C48]);
      sub_24F390BB4(&qword_27F214C30, MEMORY[0x277D7EBE8]);
      v338 = v434;
      v339 = v499;
      v340 = v432;
      sub_24F925ED8();
      (*(v431 + 8))(v337, v340);
      (*(v498 + 8))(v333, v339);
      v341 = sub_24F927618();
      v343 = v342;
      v344 = (v338 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C20) + 36));
      v345 = sub_24F924258();
      (v588)(v344 + *(v345 + 20), v589, v336);
      __asm { FMOV            V0.2D, #8.0 }

      *v344 = _Q0;
      v351 = v587;
      v352 = (v587 + v104[32]);
      v353 = *v352;
      v354 = v352[1];
      v355 = v352[2];
      v356 = v352[3];
      v357 = (v344 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1C8) + 36));
      *v357 = v356;
      v357[1] = v355;
      v357[2] = v353;
      v357[3] = v354;
      v358 = (v344 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C40) + 36));
      *v358 = v341;
      v358[1] = v343;
      v359 = *(v351 + v104[31]);

      sub_24F9278A8();
      v360 = (v338 + *(v438 + 36));
      *v360 = v359;
      v360[1] = v361;
      v360[2] = v362;
      sub_24E60169C(v338, v440, &qword_27F214C10);
      swift_storeEnumTagMultiPayload();
      sub_24E63CB8C();
      sub_24E680290();
      v363 = v441;
      sub_24F924E28();
      sub_24E60169C(v363, v467, &qword_27F240B80);
      swift_storeEnumTagMultiPayload();
      sub_24F390D44();
      sub_24F390DD0();
      v180 = v469;
      sub_24F924E28();
      sub_24E601704(v363, &qword_27F240B80);
      sub_24E601704(v338, &qword_27F214C10);
LABEL_128:
      v192 = v497;
      v148 = v580;
      goto LABEL_129;
    }

LABEL_127:
    v364 = type metadata accessor for ChallengeCard(0);
    v365 = v458;
    (*(v498 + 16))(v458, v175 + *(v364 + 36), v499);
    *(v365 + *(_s12GameStoreKit15PrimaryIconViewVMa_0(0) + 20)) = v121;
    sub_24F927618();
    sub_24F9238C8();
    v366 = (v365 + *(v468 + 36));
    v367 = v592;
    *v366 = v591;
    v366[1] = v367;
    v366[2] = v593;
    sub_24E60169C(v365, v467, &qword_27F240B68);
    swift_storeEnumTagMultiPayload();
    sub_24F390D44();
    sub_24F390DD0();
    v180 = v469;
    sub_24F924E28();
    sub_24E601704(v365, &qword_27F240B68);
    goto LABEL_128;
  }

  v175 = v573;
  if (v121 - 1 < 3)
  {
    goto LABEL_127;
  }

  result = type metadata accessor for ChallengeCard(0);
  v177 = (v175 + *(result + 44));
  v178 = v177[1];
  if ((v178 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v179 = *v177;
    v180 = v469;
    v148 = v580;
    if (v178 < *(v179 + 16))
    {
      v181 = result;
      v182 = v490;
      sub_24F391C98(v179 + ((*(v489 + 80) + 32) & ~*(v489 + 80)) + *(v489 + 72) * v178, v490, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant);
      v183 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1E0) + 48);
      v184 = v175 + *(v181 + 36);
      v185 = v425;
      (*(v498 + 16))(v425, v184, v499);
      *(v185 + v183) = 0xC024000000000000;
      v186 = type metadata accessor for PlayerAvatar.Overlay(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v186 - 8) + 56))(v185, 0, 1, v186);
      v187 = v424;
      sub_24F391C98(v182, v424, type metadata accessor for PlayerAvatar);
      sub_24E717FD0(v185, v187 + *(v589 + 20));
      LOBYTE(v591) = 7;
      v188 = v426;
      sub_24F8319B8(v187, &v591, v426);
      sub_24F927618();
      sub_24F9238C8();
      v189 = (v188 + *(v442 + 36));
      v190 = v592;
      *v189 = v591;
      v189[1] = v190;
      v189[2] = v593;
      sub_24E60169C(v188, v440, &qword_27F2233D0);
      swift_storeEnumTagMultiPayload();
      sub_24E63CB8C();
      sub_24E680290();
      v191 = v441;
      sub_24F924E28();
      sub_24E60169C(v191, v467, &qword_27F240B80);
      swift_storeEnumTagMultiPayload();
      sub_24F390D44();
      sub_24F390DD0();
      sub_24F924E28();
      sub_24E601704(v191, &qword_27F240B80);
      sub_24E601704(v188, &qword_27F2233D0);
      sub_24F391D00(v490, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant);
      v192 = v497;
LABEL_129:
      sub_24E60169C(v180, v496, &qword_27F240B88);
      swift_storeEnumTagMultiPayload();
      sub_24F390A3C();
      sub_24F390CB8();
      sub_24F924E28();
      sub_24E60169C(v192, v553, &qword_27F240BB0);
      swift_storeEnumTagMultiPayload();
      sub_24F3909B0();
      sub_24F390EAC();
      v368 = v180;
      v369 = v554;
      sub_24F924E28();
      sub_24E601704(v192, &qword_27F240BB0);
      sub_24E60169C(v369, v566, &qword_27F240BB8);
      swift_storeEnumTagMultiPayload();
      sub_24F390924();
      sub_24F391190();
      v370 = v567;
      sub_24F924E28();
      sub_24E601704(v369, &qword_27F240BB8);
      sub_24E60169C(v370, v571, &qword_27F240BC0);
      swift_storeEnumTagMultiPayload();
      sub_24F390898();
      sub_24E701970();
      sub_24F924E28();
      sub_24E601704(v370, &qword_27F240BC0);
      v371 = v368;
      v372 = &qword_27F240B88;
LABEL_150:
      sub_24E601704(v371, v372);
      goto LABEL_122;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F38B758@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v11 = v7;
      sub_24F4E9558(a2, v9);
      result = sub_24F391D78(v9, a3, type metadata accessor for CardLayoutMetrics);
      *(a3 + *(v11 + 68)) = 0;
      v13 = *(v11 + 120);
LABEL_17:
      *(a3 + v13) = 0x403A000000000000;
      return result;
    }

    if (a1 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        v19 = v7;
        swift_once();
        v7 = v19;
      }

      v10 = qword_27F39E610;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        v21 = v7;
        swift_once();
        v7 = v21;
      }

      v10 = qword_27F39E658;
    }

LABEL_21:
    v17 = __swift_project_value_buffer(v7, v10);
    sub_24F391C98(v17, v9, type metadata accessor for CardLayoutMetrics);
    return sub_24F391D78(v9, a3, type metadata accessor for CardLayoutMetrics);
  }

  if (!a1)
  {
    if (qword_27F211300 != -1)
    {
      v18 = v7;
      swift_once();
      v7 = v18;
    }

    v10 = qword_27F39E640;
    goto LABEL_21;
  }

  if (a1 != 1)
  {
    if (qword_27F2112F8 != -1)
    {
      v20 = v7;
      swift_once();
      v7 = v20;
    }

    v14 = v7;
    v15 = __swift_project_value_buffer(v7, qword_27F39E628);
    sub_24F391C98(v15, v9, type metadata accessor for CardLayoutMetrics);
    result = sub_24F391D78(v9, a3, type metadata accessor for CardLayoutMetrics);
    v16 = (a3 + *(v14 + 48));
    *v16 = 0;
    v16[1] = 0;
    v16[2] = 0;
    v16[3] = 0x4024000000000000;
    v13 = *(v14 + 120);
    goto LABEL_17;
  }

  sub_24F4E9E44(a2, v9);
  return sub_24F391D78(v9, a3, type metadata accessor for CardLayoutMetrics);
}

uint64_t sub_24F38BA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a2;
  v28 = a3;
  v31 = a4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240D48);
  MEMORY[0x28223BE20](v29);
  v6 = &v26 - v5;
  v30 = type metadata accessor for ChallengeCardTextSubtitle();
  MEMORY[0x28223BE20](v30);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F91F648();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ChallengeCard(0);
  v14 = *(v13 + 48);
  sub_24F91F5C8();
  if (v15 >= *(a1 + *(v13 + 52)) && (sub_24F91F638(), v16 = sub_24F91F588(), v17 = *(v10 + 8), v17(v12, v9), (v16 & 1) != 0))
  {
    v18 = *(v10 + 16);
    v18(v12, a1 + v14, v9);
    v19 = v28;
    *v8 = v27;
    *(v8 + 1) = v19;
    v20 = v30;
    v18(&v8[*(v30 + 20)], v12, v9);

    v21 = sub_24F268DBC();
    v17(v12, v9);
    *&v8[*(v20 + 24)] = v21;
    sub_24F391C98(v8, v6, type metadata accessor for ChallengeCardTextSubtitle);
    swift_storeEnumTagMultiPayload();
    sub_24F390BB4(&qword_27F240D40, type metadata accessor for ChallengeCardTextSubtitle);
    sub_24F924E28();
    return sub_24F391D00(v8, type metadata accessor for ChallengeCardTextSubtitle);
  }

  else
  {
    v32 = v27;
    v33 = v28;
    sub_24E600AEC();

    *v6 = sub_24F925E18();
    *(v6 + 1) = v23;
    v6[16] = v24 & 1;
    *(v6 + 3) = v25;
    swift_storeEnumTagMultiPayload();
    sub_24F390BB4(&qword_27F240D40, type metadata accessor for ChallengeCardTextSubtitle);
    return sub_24F924E28();
  }
}

uint64_t sub_24F38BD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EF8);
  MEMORY[0x28223BE20](v4);
  v6 = v28 - v5;
  v7 = type metadata accessor for GameIcon(0);
  MEMORY[0x28223BE20](v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EE0);
  MEMORY[0x28223BE20](v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v28 - v14;
  v16 = *(a1 + *(_s12GameStoreKit15PrimaryIconViewVMa_0(0) + 20));
  if (v16 == 3)
  {
    swift_storeEnumTagMultiPayload();
    sub_24F392EE0();
    return sub_24F924E28();
  }

  else
  {
    v28[0] = v4;
    v28[1] = a2;
    v18 = sub_24F9289E8();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v9, a1, v18);
    (*(v19 + 56))(v9, 0, 1, v18);
    v20 = v7[8];
    *&v9[v20] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
    swift_storeEnumTagMultiPayload();
    v9[v7[5]] = 1;
    v9[v7[6]] = 1;
    v9[v7[7]] = 0;
    if (v16 == 4)
    {

      v21 = -0.174532925;
    }

    else
    {
      v22 = sub_24F92CE08();

      if (v22)
      {
        v21 = -0.174532925;
      }

      else
      {
        v21 = 0.0;
      }
    }

    sub_24F9278A8();
    v24 = v23;
    v26 = v25;
    sub_24F391D78(v9, v12, type metadata accessor for GameIcon);
    v27 = &v12[*(v10 + 36)];
    *v27 = v21;
    *(v27 + 1) = v24;
    *(v27 + 2) = v26;
    sub_24E6009C8(v12, v15, &qword_27F240EE0);
    sub_24E60169C(v15, v6, &qword_27F240EE0);
    swift_storeEnumTagMultiPayload();
    sub_24F392EE0();
    sub_24F924E28();
    return sub_24E601704(v15, &qword_27F240EE0);
  }
}

uint64_t sub_24F38C1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GameIcon(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F9289E8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = v5[10];
  *&v7[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  swift_storeEnumTagMultiPayload();
  v7[v5[7]] = 1;
  v7[v5[8]] = 1;
  v7[v5[9]] = 0;
  if (*(a1 + *(_s12GameStoreKit15PrimaryIconViewVMa_0(0) + 20)) == 4)
  {

    v11 = -0.174532925;
  }

  else
  {
    v12 = sub_24F92CE08();

    if (v12)
    {
      v11 = -0.174532925;
    }

    else
    {
      v11 = 0.0;
    }
  }

  sub_24F9278A8();
  v14 = v13;
  v16 = v15;
  sub_24F391D78(v7, a2, type metadata accessor for GameIcon);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EE0);
  v18 = a2 + *(result + 36);
  *v18 = v11;
  *(v18 + 8) = v14;
  *(v18 + 16) = v16;
  return result;
}

uint64_t sub_24F38C47C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240ED8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EE0);
  sub_24E6A4C1C();
  sub_24F391304(&qword_27F240EE8, &qword_27F240ED8, &unk_24FA2E1E0, sub_24F392EE0);
  sub_24F392EE0();
  return sub_24F927568();
}

uint64_t sub_24F38C57C@<X0>(uint64_t a1@<X8>)
{
  v127 = a1;
  *&v110 = sub_24F9249B8();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for ChallengesSlashHeaderView(0);
  MEMORY[0x28223BE20](v106);
  v4 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D50);
  MEMORY[0x28223BE20](v126);
  v107 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  *&v111 = &v106 - v7;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240DA0);
  MEMORY[0x28223BE20](v124);
  v125 = &v106 - v8;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240DA8);
  MEMORY[0x28223BE20](v120);
  *&v121 = &v106 - v9;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240DB0);
  MEMORY[0x28223BE20](v123);
  *&v122 = &v106 - v10;
  *&v118 = sub_24F924848();
  *&v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EndingSoonView(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240DB8);
  MEMORY[0x28223BE20](v15);
  v17 = &v106 - v16;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240DC0);
  MEMORY[0x28223BE20](v112);
  v113 = &v106 - v18;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240DC8);
  MEMORY[0x28223BE20](v119);
  v114 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v115 = &v106 - v21;
  v22 = type metadata accessor for ChallengeCard(0);
  v23 = *(v22 + 48);
  sub_24F91F5C8();
  v25 = v24;
  v26 = *(v1 + *(v22 + 52));
  v27 = type metadata accessor for LargeVisualView(0);
  v28 = *(v1 + *(v27 + 20));
  if (v25 < v26)
  {
    v29 = *(v12 + 20);
    v30 = sub_24F91F648();
    (*(*(v30 - 8) + 16))(&v14[v29], v1 + v23, v30);
    *v14 = v28;
    sub_24F927618();
    sub_24F9242E8();
    sub_24F391D78(v14, v17, type metadata accessor for EndingSoonView);
    v31 = &v17[*(v15 + 36)];
    v32 = v134;
    *(v31 + 4) = v133;
    *(v31 + 5) = v32;
    *(v31 + 6) = v135;
    v33 = *v132;
    *v31 = v131;
    *(v31 + 1) = v33;
    v34 = *&v132[32];
    *(v31 + 2) = *&v132[16];
    *(v31 + 3) = v34;
    v35 = (v1 + *(v27 + 24));
    v36 = *v35;
    v37 = *(v35 + 8);

    v38 = v36;
    if ((v37 & 1) == 0)
    {
      sub_24F92BDC8();
      v39 = sub_24F9257A8();
      sub_24F921FD8();

      v40 = v116;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v117 + 8))(v40, v118);
      v38 = v128[0];
    }

    swift_getKeyPath();
    v128[0] = v38;
    sub_24F390BB4(&qword_27F214D10, type metadata accessor for CardSafeArea);
    sub_24F91FD88();

    v41 = *(v38 + 32);
    v111 = *(v38 + 16);
    v110 = v41;

    v42 = sub_24F925808();
    v43 = v113;
    sub_24E6009C8(v17, v113, &qword_27F240DB8);
    v44 = v43 + *(v112 + 36);
    *v44 = v42;
    *(v44 + 24) = v110;
    *(v44 + 8) = v111;
    *(v44 + 40) = 0;

    if ((v37 & 1) == 0)
    {
      sub_24F92BDC8();
      v45 = sub_24F9257A8();
      sub_24F921FD8();

      v46 = v116;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v117 + 8))(v46, v118);
      v36 = v128[0];
    }

    swift_getKeyPath();
    v128[0] = v36;
    sub_24F91FD88();

    v47 = *(v36 + 16);

    if (v28 < 4 || v28 == 4)
    {
      v48 = sub_24F92CE08();

      if ((v48 & 1) == 0)
      {
        sub_24F925868();
LABEL_21:
        v55 = sub_24EA91914(v47);
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v62 = sub_24F925808();
        LOBYTE(v128[0]) = 0;
        v63 = sub_24F927618();
        v65 = v64;
        v66 = v114;
        sub_24E6009C8(v43, v114, &qword_27F240DC0);
        v67 = v66 + *(v119 + 36);
        *v67 = 257;
        *(v67 + 2) = 1;
        *(v67 + 8) = v62;
        *(v67 + 16) = v55;
        *(v67 + 24) = v57;
        *(v67 + 32) = v59;
        *(v67 + 40) = v61;
        *(v67 + 48) = 0;
        *(v67 + 56) = v63;
        *(v67 + 64) = v65;
        v68 = &qword_27F240DC8;
        v69 = v115;
        sub_24E6009C8(v66, v115, &qword_27F240DC8);
        sub_24E60169C(v69, v121, &qword_27F240DC8);
        swift_storeEnumTagMultiPayload();
        sub_24F3926B0();
        sub_24F3928B0();
        v70 = v122;
        sub_24F924E28();
        sub_24E60169C(v70, v125, &qword_27F240DB0);
        swift_storeEnumTagMultiPayload();
        sub_24F392624();
        sub_24E63DC08();
        sub_24F924E28();
        sub_24E601704(v70, &qword_27F240DB0);
        v71 = v69;
        return sub_24E601704(v71, v68);
      }
    }

    else
    {
    }

    sub_24F925808();
    goto LABEL_21;
  }

  if (*(v1 + *(v27 + 20)) >= 4u && v28 != 4)
  {

    goto LABEL_23;
  }

  v49 = sub_24F92CE08();

  if (v49)
  {
LABEL_23:
    v72 = sub_24F637D70(0);
    v74 = v73;
    v76 = v75;

    v77 = (v1 + *(v27 + 24));
    v78 = *v77;
    if (*(v77 + 8) == 1)
    {
      v130 = *v77;
    }

    else
    {

      sub_24F92BDC8();
      v79 = sub_24F9257A8();
      sub_24F921FD8();

      v80 = v116;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v117 + 8))(v80, v118);
      v78 = v130;
    }

    swift_getKeyPath();
    *&v131 = v78;
    sub_24F390BB4(&qword_27F214D10, type metadata accessor for CardSafeArea);
    sub_24F91FD88();

    v81 = *(v78 + 32);
    v118 = *(v78 + 16);
    v117 = v81;

    KeyPath = swift_getKeyPath();
    type metadata accessor for HeroSafeAreaMetrics();
    sub_24F390BB4(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
    v83 = sub_24F923598();
    *&v131 = v72;
    *(&v131 + 1) = v74;
    *v132 = v76 & 1;
    *&v132[24] = v117;
    *&v132[8] = v118;
    *&v132[40] = KeyPath;
    LOBYTE(v133) = 0;
    *(&v133 + 1) = v83;
    LOBYTE(v134) = v84 & 1;
    v85 = v121;
    *(v121 + 80) = v84 & 1;
    v86 = *&v132[32];
    v85[2] = *&v132[16];
    v85[3] = v86;
    v85[4] = v133;
    v87 = *v132;
    *v85 = v131;
    v85[1] = v87;
    swift_storeEnumTagMultiPayload();
    sub_24F39290C(&v131, v128);
    sub_24F3926B0();
    sub_24F3928B0();
    v88 = v122;
    sub_24F924E28();
    v68 = &qword_27F240DB0;
    sub_24E60169C(v88, v125, &qword_27F240DB0);
    swift_storeEnumTagMultiPayload();
    sub_24F392624();
    sub_24E63DC08();
    sub_24F924E28();
    sub_24F392968(&v131);
    v71 = v88;
    return sub_24E601704(v71, v68);
  }

  v50 = sub_24F637D70(0);
  v52 = v51;
  v54 = v53;

  if (v28 >= 4)
  {

    v90 = 0;
  }

  else
  {
    v89 = sub_24F92CE08();

    v90 = ~v89 & 1;
  }

  v91 = (v1 + *(v27 + 24));
  v92 = *v91;
  v93 = *(v91 + 8);

  if ((v93 & 1) == 0)
  {
    sub_24F92BDC8();
    v94 = sub_24F9257A8();
    sub_24F921FD8();

    v95 = v116;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v117 + 8))(v95, v118);
    v92 = v131;
  }

  swift_getKeyPath();
  *&v131 = v92;
  sub_24F390BB4(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  v96 = *(v92 + 32);
  v122 = *(v92 + 16);
  v121 = v96;

  v128[0] = sub_24E608A90(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D80);
  sub_24F926F28();
  v97 = *(&v131 + 1);
  *(v4 + 11) = v131;
  *(v4 + 12) = v97;
  v128[1] = 0;
  v128[0] = 0;
  v129 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D88);
  sub_24F926F28();
  v98 = v132[0];
  v99 = *&v132[8];
  *(v4 + 104) = v131;
  v4[120] = v98;
  *(v4 + 16) = v99;
  v100 = v106;
  v101 = *(v106 + 40);
  *&v4[v101] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  *&v4[v100[11]] = 0x4031000000000000;
  *&v4[v100[12]] = 0x4020000000000000;
  v102 = &v4[v100[13]];
  *v102 = 0xD000000000000017;
  *(v102 + 1) = 0x800000024FA453F0;
  *v4 = v50;
  *(v4 + 1) = v90;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  v4[32] = 1;
  *(v4 + 5) = v52;
  v4[48] = v54 & 1;
  *(v4 + 72) = v121;
  *(v4 + 56) = v122;
  (*(v109 + 104))(v108, *MEMORY[0x277CE00F0], v110);
  v103 = v107;
  sub_24F924E68();
  sub_24F924E48();
  sub_24F924E58();
  sub_24F391D78(v4, v103, type metadata accessor for ChallengesSlashHeaderView);
  v68 = &qword_27F214D50;
  v104 = v111;
  sub_24E6009C8(v103, v111, &qword_27F214D50);
  sub_24E60169C(v104, v125, &qword_27F214D50);
  swift_storeEnumTagMultiPayload();
  sub_24F392624();
  sub_24E63DC08();
  sub_24F924E28();
  v71 = v104;
  return sub_24E601704(v71, v68);
}

uint64_t sub_24F38D8F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240E10);
  MEMORY[0x28223BE20](v101);
  v108 = (&v100 - v4);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240E18);
  MEMORY[0x28223BE20](v102);
  v106 = &v100 - v5;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240E20);
  *&v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v105 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v104 = &v100 - v8;
  v9 = type metadata accessor for ChallengeCard.ParticipantsInfo.Participant(0);
  *&v100 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v103 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240E28);
  MEMORY[0x28223BE20](v118);
  *&v112 = &v100 - v11;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240E30);
  MEMORY[0x28223BE20](v116);
  v117 = &v100 - v12;
  v111 = sub_24F924848();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240E38);
  MEMORY[0x28223BE20](v14);
  v16 = &v100 - v15;
  *&v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240E40);
  MEMORY[0x28223BE20](v107);
  v18 = &v100 - v17;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240E48);
  MEMORY[0x28223BE20](v115);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v100 - v22;
  v24 = type metadata accessor for ChallengeCard(0);
  v25 = v24[12];
  sub_24F91F5C8();
  if (v26 >= *(v1 + v24[13]))
  {
    v48 = (v1 + v24[11]);
    v49 = v48[1];
    if (v49 < 0 || (v50 = *v48, v49 >= *(v50 + 16)))
    {
      v80 = v112;
      (*(v113 + 56))(v112, 1, 1, v114);
    }

    else
    {
      v51 = v103;
      sub_24F391C98(v50 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v49, v103, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant);
      v52 = sub_24F9249A8();
      v53 = v108;
      *v108 = v52;
      v53[1] = 0;
      *(v53 + 16) = 1;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EA8);
      sub_24F38E99C(v51, v53 + *(v54 + 44));
      v55 = sub_24F925808();
      sub_24F923318();
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v64 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240E90) + 36);
      *v64 = v55;
      *(v64 + 1) = v57;
      *(v64 + 2) = v59;
      *(v64 + 3) = v61;
      *(v64 + 4) = v63;
      v64[40] = 0;
      v65 = v2 + *(type metadata accessor for PortraitVisualView(0) + 24);
      v66 = *v65;
      v67 = *(v65 + 8);

      v68 = v66;
      if ((v67 & 1) == 0)
      {
        sub_24F92BDC8();
        v69 = sub_24F9257A8();
        sub_24F921FD8();

        v70 = v109;
        sub_24F924838();
        swift_getAtKeyPath();

        (*(v110 + 8))(v70, v111);
        v68 = v123;
      }

      swift_getKeyPath();
      *&v123 = v68;
      sub_24F390BB4(&qword_27F214D10, type metadata accessor for CardSafeArea);
      sub_24F91FD88();

      v71 = *(v68 + 32);
      v107 = *(v68 + 16);
      v100 = v71;

      v72 = sub_24F925808();
      v73 = v108;
      v74 = v108 + *(v101 + 36);
      *v74 = v72;
      *(v74 + 24) = v100;
      *(v74 + 8) = v107;
      v74[40] = 0;
      sub_24F927618();
      sub_24F9242E8();
      v75 = v106;
      sub_24E6009C8(v73, v106, &qword_27F240E10);
      v76 = (v75 + *(v102 + 36));
      v77 = v128;
      v76[4] = v127;
      v76[5] = v77;
      v76[6] = v129;
      v78 = v124;
      *v76 = v123;
      v76[1] = v78;
      v79 = v126;
      v76[2] = v125;
      v76[3] = v79;
      if (v67)
      {
        *&v119[0] = v66;
      }

      else
      {

        sub_24F92BDC8();
        v81 = sub_24F9257A8();
        sub_24F921FD8();

        v82 = v109;
        sub_24F924838();
        swift_getAtKeyPath();

        (*(v110 + 8))(v82, v111);
        v66 = *&v119[0];
      }

      v80 = v112;
      swift_getKeyPath();
      v121 = v66;
      sub_24F91FD88();

      v83 = *(v66 + 16);

      sub_24F925868();
      v84 = sub_24EA91914(v83);
      v86 = v85;
      v88 = v87;
      v90 = v89;
      v91 = sub_24F925808();
      v122 = 0;
      v92 = sub_24F927618();
      v94 = v93;
      v95 = v75;
      v96 = v105;
      sub_24E6009C8(v95, v105, &qword_27F240E18);
      v97 = v114;
      v98 = v96 + *(v114 + 36);
      *v98 = 1;
      *(v98 + 2) = 0;
      *(v98 + 8) = v91;
      *(v98 + 16) = v84;
      *(v98 + 24) = v86;
      *(v98 + 32) = v88;
      *(v98 + 40) = v90;
      *(v98 + 48) = 0;
      *(v98 + 49) = v121;
      *(v98 + 52) = *(&v121 + 3);
      *(v98 + 56) = v92;
      *(v98 + 64) = v94;
      v99 = v104;
      sub_24E6009C8(v96, v104, &qword_27F240E20);
      sub_24E6009C8(v99, v80, &qword_27F240E20);
      (*(v113 + 56))(v80, 0, 1, v97);
      sub_24F391D00(v51, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant);
    }

    sub_24E60169C(v80, v117, &qword_27F240E28);
    swift_storeEnumTagMultiPayload();
    sub_24F3929BC();
    sub_24F392BBC();
    sub_24F924E28();
    return sub_24E601704(v80, &qword_27F240E28);
  }

  else
  {
    v114 = a1;
    v27 = type metadata accessor for PortraitVisualView(0);
    v28 = *(v2 + *(v27 + 20));
    v29 = *(type metadata accessor for EndingSoonView(0) + 20);
    v30 = sub_24F91F648();
    (*(*(v30 - 8) + 16))(&v16[v29], v2 + v25, v30);
    *v16 = v28;
    v31 = v2 + *(v27 + 24);
    v32 = *v31;
    LOBYTE(v27) = *(v31 + 8);

    if ((v27 & 1) == 0)
    {
      sub_24F92BDC8();
      v33 = sub_24F9257A8();
      sub_24F921FD8();

      v34 = v109;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v110 + 8))(v34, v111);
      v32 = v123;
    }

    swift_getKeyPath();
    *&v123 = v32;
    sub_24F390BB4(&qword_27F214D10, type metadata accessor for CardSafeArea);
    sub_24F91FD88();

    v35 = *(v32 + 32);
    v113 = *(v32 + 16);
    v112 = v35;

    v36 = sub_24F925808();
    v37 = &v16[*(v14 + 36)];
    *v37 = v36;
    *(v37 + 24) = v112;
    *(v37 + 8) = v113;
    v37[40] = 0;
    sub_24F927618();
    sub_24F9242E8();
    sub_24E6009C8(v16, v18, &qword_27F240E38);
    v38 = &v18[*(v107 + 36)];
    v39 = v128;
    *(v38 + 4) = v127;
    *(v38 + 5) = v39;
    *(v38 + 6) = v129;
    v40 = v124;
    *v38 = v123;
    *(v38 + 1) = v40;
    v41 = v126;
    *(v38 + 2) = v125;
    *(v38 + 3) = v41;
    v42 = sub_24F927618();
    v44 = v43;
    sub_24F38E754(v2, v119);
    sub_24E6009C8(v18, v20, &qword_27F240E40);
    v45 = &v20[*(v115 + 36)];
    v46 = v119[1];
    *v45 = v119[0];
    *(v45 + 1) = v46;
    *(v45 + 2) = v119[2];
    *(v45 + 6) = v120;
    *(v45 + 7) = v42;
    *(v45 + 8) = v44;
    sub_24E6009C8(v20, v23, &qword_27F240E48);
    sub_24E60169C(v23, v117, &qword_27F240E48);
    swift_storeEnumTagMultiPayload();
    sub_24F3929BC();
    sub_24F392BBC();
    sub_24F924E28();
    return sub_24E601704(v23, &qword_27F240E48);
  }
}

uint64_t sub_24F38E754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for PortraitVisualView(0) + 24));
  v9 = *v8;
  if (*(v8 + 8) == 1)
  {
    v21 = *v8;
  }

  else
  {

    sub_24F92BDC8();
    v10 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v9 = v21;
  }

  swift_getKeyPath();
  v20 = v9;
  sub_24F390BB4(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  v11 = *(v9 + 16);

  sub_24F925868();
  v12 = sub_24EA91914(v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = sub_24F925808();
  *a2 = 1;
  *(a2 + 2) = 1;
  *(a2 + 8) = result;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  *(a2 + 40) = v18;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_24F38E99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PlayerAvatarView(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v32 - v21;
  sub_24F391C98(a1, v16, type metadata accessor for PlayerAvatar);
  LOBYTE(v34[0]) = 7;
  sub_24F8319B8(v16, v34, v22);
  if (*(a1 + *(type metadata accessor for ChallengeCard.ParticipantsInfo.Participant(0) + 20) + 8))
  {
    goto LABEL_6;
  }

  if (qword_27F2117F8 != -1)
  {
    swift_once();
  }

  v23 = qword_27F39F008;
  v24 = sub_24F92BB08();
  v25 = [v23 stringForObjectValue_];

  if (!v25)
  {
LABEL_6:
    v29 = 1;
  }

  else
  {
    v26 = sub_24F92B0D8();
    v33 = a2;
    v28 = v27;

    v34[0] = v26;
    v34[1] = v28;
    v35 = 0;
    v36 = MEMORY[0x277D84F90];
    sub_24F9268B8();
    a2 = v33;

    (*(v5 + 32))(v13, v7, v4);
    v29 = 0;
  }

  (*(v5 + 56))(v13, v29, 1, v4);
  sub_24F391C98(v22, v19, type metadata accessor for PlayerAvatarView);
  sub_24E60169C(v13, v10, &qword_27F2128D8);
  sub_24F391C98(v19, a2, type metadata accessor for PlayerAvatarView);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EB0);
  sub_24E60169C(v10, a2 + *(v30 + 48), &qword_27F2128D8);
  sub_24E601704(v13, &qword_27F2128D8);
  sub_24F391D00(v22, type metadata accessor for PlayerAvatarView);
  sub_24E601704(v10, &qword_27F2128D8);
  return sub_24F391D00(v19, type metadata accessor for PlayerAvatarView);
}

double sub_24F38EDBC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for JSColor();
  MEMORY[0x28223BE20](v4);
  v59 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CommonCardAttributes.CardBackgroundColor(0);
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ChallengeCard.ParticipantsInfo.Participant(0);
  v60 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PlayerAvatar(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F550);
  MEMORY[0x28223BE20](v16 - 8);
  v61 = &v53 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  MEMORY[0x28223BE20](v18 - 8);
  v58 = &v53 - v19;
  v65 = type metadata accessor for PlayerGroupView();
  MEMORY[0x28223BE20](v65);
  v67 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EB8);
  MEMORY[0x28223BE20](v64);
  v66 = &v53 - v21;
  v22 = type metadata accessor for ChallengeCard(0);
  v23 = *(v2 + *(v22 + 44));
  v24 = *(v23 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v53 = v22;
    v54 = v8;
    v55 = v4;
    v56 = v2;
    v57 = a1;
    v68 = MEMORY[0x277D84F90];
    sub_24F457BF8(0, v24, 0);
    v25 = v68;
    v26 = v23 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    v27 = *(v60 + 72);
    do
    {
      sub_24F391C98(v26, v11, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant);
      sub_24F391D78(v11, v15, type metadata accessor for PlayerAvatar);
      v68 = v25;
      v29 = *(v25 + 16);
      v28 = *(v25 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_24F457BF8(v28 > 1, v29 + 1, 1);
        v25 = v68;
      }

      *(v25 + 16) = v29 + 1;
      sub_24F391D78(v15, v25 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v29, type metadata accessor for PlayerAvatar);
      v26 += v27;
      --v24;
    }

    while (v24);
    v2 = v56;
    a1 = v57;
    v8 = v54;
    v4 = v55;
    v22 = v53;
  }

  v30 = v2 + *(v22 + 32);
  v31 = type metadata accessor for CommonCardAttributes(0);
  v32 = v61;
  sub_24E60169C(v30 + *(v31 + 68), v61, &qword_27F21F550);
  if ((*(v62 + 48))(v32, 1, v63) == 1)
  {
    v33 = &qword_27F21F550;
    v34 = v32;
  }

  else
  {
    sub_24F391C98(v32, v8, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
    v35 = v59;
    sub_24F391D78(v8, v59, type metadata accessor for JSColor);
    if (qword_27F20FEE0 != -1)
    {
      swift_once();
    }

    v36 = *(v35 + *(v4 + 24));
    v37 = v58;
    ColorGrouping.colorGroup(for:)(v36);
    sub_24F391D00(v35, type metadata accessor for JSColor);
    sub_24F391D00(v32, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
    v38 = type metadata accessor for ColorGroup();
    if ((*(*(v38 - 8) + 48))(v37, 1, v38) != 1)
    {
      v39 = *(v37 + *(v38 + 28));

      sub_24F391D00(v37, type metadata accessor for ColorGroup);
      goto LABEL_15;
    }

    v33 = &qword_27F2190D8;
    v34 = v37;
  }

  sub_24E601704(v34, v33);
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v39 = sub_24F926D08();

LABEL_15:
  v40 = v65;
  v41 = *(v65 + 24);
  v42 = *MEMORY[0x277CE13D8];
  v43 = sub_24F927748();
  v44 = v67;
  (*(*(v43 - 8) + 104))(&v67[v41], v42, v43);
  *(v44 + *(v40 + 28)) = vdupq_n_s64(0x4052000000000000uLL);
  *(v44 + *(v40 + 32)) = 7;
  *v44 = v25;
  v44[1] = v39;
  v45 = sub_24F9275D8();
  v47 = v46;
  v48 = v66;
  v49 = &v66[*(v64 + 36)];
  sub_24F38F53C(v2, v49);
  v50 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EC0) + 36));
  *v50 = v45;
  v50[1] = v47;
  sub_24F391D78(v44, v48, type metadata accessor for PlayerGroupView);
  LOBYTE(v45) = sub_24F925808();
  sub_24E6009C8(v48, a1, &qword_27F240EB8);
  v51 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EC8) + 36);
  *v51 = v45;
  result = 0.0;
  *(v51 + 8) = 0u;
  *(v51 + 24) = 0u;
  *(v51 + 40) = 1;
  return result;
}

uint64_t sub_24F38F53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for ChallengeCard(0) + 36);
  v9 = sub_24F9289E8();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a2, a1 + v8, v9);
  (*(v10 + 56))(a2, 0, 1, v9);
  v11 = type metadata accessor for GameIcon(0);
  v12 = v11[8];
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v11[5]) = 1;
  *(a2 + v11[6]) = 1;
  *(a2 + v11[7]) = 0;
  sub_24F927618();
  sub_24F9238C8();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760) + 36));
  v14 = v37;
  *v13 = v36;
  v13[1] = v14;
  v13[2] = v38;
  sub_24F9278A8();
  v16 = v15;
  v18 = v17;
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B1C0) + 36));
  *v19 = 0x3FC657184AE74487;
  v19[1] = v16;
  v19[2] = v18;
  v20 = (a1 + *(type metadata accessor for CompactVisualView(0) + 20));
  v21 = *v20;
  LOBYTE(v11) = *(v20 + 8);

  if ((v11 & 1) == 0)
  {
    sub_24F92BDC8();
    v22 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v21 = v35;
  }

  swift_getKeyPath();
  v35 = v21;
  sub_24F390BB4(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  v23 = *(v21 + 16);

  sub_24F925868();
  v24 = sub_24EA91914(v23);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_24F925808();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240ED0);
  v33 = a2 + *(result + 36);
  *v33 = v31;
  *(v33 + 8) = v24;
  *(v33 + 16) = v26;
  *(v33 + 24) = v28;
  *(v33 + 32) = v30;
  *(v33 + 40) = 0;
  return result;
}

uint64_t sub_24F38F8F4@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X8>)
{
  v118 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v104 = &v98 - v4;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E298);
  MEMORY[0x28223BE20](v103);
  v102 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v100 = &v98 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240F70);
  MEMORY[0x28223BE20](v99);
  v101 = &v98 - v8;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240F78);
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v108 = &v98 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240F80);
  MEMORY[0x28223BE20](v107);
  v111 = &v98 - v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240F88);
  MEMORY[0x28223BE20](v105);
  v109 = &v98 - v11;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240F90);
  v116 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v106 = &v98 - v12;
  v123 = sub_24F91F648();
  v127 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240F98);
  MEMORY[0x28223BE20](v14 - 8);
  v117 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v125 = &v98 - v17;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240FA0);
  MEMORY[0x28223BE20](v119);
  v19 = &v98 - v18;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240FA8);
  MEMORY[0x28223BE20](v121);
  v120 = &v98 - v20;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240FB0);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v98 - v23;
  if (qword_27F2114B8 != -1)
  {
    swift_once();
  }

  v129 = qword_27F39EA38;
  v130 = unk_27F39EA40;
  sub_24E600AEC();

  v25 = sub_24F925E18();
  v27 = v26;
  v29 = v28;
  v124 = a1;
  v30 = *a1;
  v128 = v24;
  v98 = v30;
  if (v30 > 2)
  {
    if (v30 == 4)
    {
      sub_24F925888();
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v30)
  {
    if (v30 != 1)
    {
      sub_24F925898();
      goto LABEL_11;
    }

LABEL_9:
    sub_24F9258F8();
    goto LABEL_11;
  }

  sub_24F9258D8();
LABEL_11:
  v31 = sub_24F925C98();
  v33 = v32;
  v35 = v34;
  v37 = v36;

  sub_24E600B40(v25, v27, v29 & 1);

  KeyPath = swift_getKeyPath();
  v39 = swift_getKeyPath();
  v40 = v35 & 1;
  v136 = v35 & 1;
  v135 = 0;
  v41 = sub_24F9251C8();
  v42 = *(v119 + 36);
  v43 = *MEMORY[0x277CE13B8];
  v44 = sub_24F927748();
  (*(*(v44 - 8) + 104))(&v19[v42], v43, v44);
  *v19 = v31;
  *(v19 + 1) = v33;
  v19[16] = v40;
  *(v19 + 3) = v37;
  *(v19 + 4) = KeyPath;
  v45 = 1;
  *(v19 + 5) = 1;
  v19[48] = 0;
  *(v19 + 7) = v39;
  *(v19 + 8) = 0x3FD3333333333333;
  *(v19 + 18) = v41;
  v46 = swift_getKeyPath();
  v47 = v120;
  sub_24E6009C8(v19, v120, &qword_27F240FA0);
  v48 = &v47[*(v121 + 36)];
  *v48 = v46;
  *(v48 + 1) = 1;
  v48[16] = 0;
  sub_24F393510();
  v49 = v128;
  sub_24F9268B8();
  sub_24E601704(v47, &qword_27F240FA8);
  v50 = v122;
  sub_24F91F638();
  v51 = *(type metadata accessor for EndingSoonView(0) + 20);
  v52 = v124;
  LOBYTE(v46) = sub_24F91F598();
  v53 = *(v127 + 8);
  v54 = v123;
  v53(v50, v123);
  if ((v46 & 1) == 0)
  {
LABEL_14:
    v89 = v125;
    (*(v116 + 56))(v125, v45, 1, v126);
    v90 = v114;
    v91 = *(v114 + 16);
    v92 = v113;
    v93 = v115;
    v91(v113, v49, v115);
    v94 = v117;
    sub_24E60169C(v89, v117, &qword_27F240F98);
    v95 = v118;
    v91(v118, v92, v93);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240FD8);
    sub_24E60169C(v94, &v95[*(v96 + 48)], &qword_27F240F98);
    sub_24E601704(v89, &qword_27F240F98);
    v97 = *(v90 + 8);
    v97(v128, v93);
    sub_24E601704(v94, &qword_27F240F98);
    return (v97)(v92, v93);
  }

  sub_24F91F638();
  sub_24F390BB4(&qword_27F2363D0, MEMORY[0x277CC9578]);
  result = sub_24F92AF98();
  if (result)
  {
    v120 = v53;
    v121 = v98;
    v56 = v127;
    v57 = *(v127 + 32);
    v58 = v100;
    v57(v100, v50, v54);
    v59 = v103;
    (*(v56 + 16))(v58 + *(v103 + 48), &v52[v51], v54);
    v60 = v102;
    sub_24E60169C(v58, v102, &qword_27F23E298);
    v61 = *(v59 + 48);
    v62 = v101;
    v57(v101, v60, v54);
    v63 = v60 + v61;
    v64 = v120;
    (v120)(v63, v54);
    sub_24E6009C8(v58, v60, &qword_27F23E298);
    v57(&v62[*(v99 + 36)], (v60 + *(v59 + 48)), v54);
    (v64)(v60, v54);
    (*(v56 + 56))(v104, 1, 1, v54);
    v65 = sub_24F925C28();
    v67 = v66;
    v69 = v68;
    v70 = dbl_24F9ECB70[v121];
    v71 = sub_24F92B098();
    CTFontCreateWithNameAndOptions(v71, v70, 0, 0x20000uLL);

    sub_24F925A78();
    sub_24F9258C8();

    v72 = sub_24F925C98();
    v74 = v73;
    LOBYTE(v59) = v75;
    v77 = v76;

    sub_24E600B40(v65, v67, v69 & 1);

    v78 = swift_getKeyPath();
    v129 = v72;
    v130 = v74;
    v131 = v59 & 1;
    v132 = v77;
    v133 = v78;
    v134 = 0x3FD3333333333333;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221AA8);
    sub_24E916920();
    v79 = v108;
    sub_24F9268B8();
    v80 = v72;
    v49 = v128;
    sub_24E600B40(v80, v74, v59 & 1);

    v81 = swift_getKeyPath();
    v82 = v111;
    (*(v110 + 32))(v111, v79, v112);
    v83 = v82 + *(v107 + 36);
    *v83 = v81;
    *(v83 + 8) = 1;
    *(v83 + 16) = 0;
    v84 = v109;
    v85 = &v109[*(v105 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A8);
    sub_24F924378();
    *v85 = swift_getKeyPath();
    sub_24E6009C8(v82, v84, &qword_27F240F80);
    v86 = v106;
    sub_24E6009C8(v84, v106, &qword_27F240F88);
    v87 = v125;
    v88 = (v86 + *(v126 + 36));
    *v88 = sub_24F390694;
    v88[1] = 0;
    sub_24E6009C8(v86, v87, &qword_27F240F90);
    v45 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

double sub_24F3906BC@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_24F924C88();
  *(a1 + 8) = 0xC000000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240F60);
  sub_24F38F8F4(v1, (a1 + *(v3 + 44)));
  v4 = sub_24F9257F8();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240F68) + 36);
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_24F3907D0(uint64_t a1)
{
  v2 = sub_24F924398();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24F924648();
}

unint64_t sub_24F390898()
{
  result = qword_27F240C08;
  if (!qword_27F240C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240BC0);
    sub_24F390924();
    sub_24F391190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C08);
  }

  return result;
}

unint64_t sub_24F390924()
{
  result = qword_27F240C10;
  if (!qword_27F240C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240BB8);
    sub_24F3909B0();
    sub_24F390EAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C10);
  }

  return result;
}

unint64_t sub_24F3909B0()
{
  result = qword_27F240C18;
  if (!qword_27F240C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240BB0);
    sub_24F390A3C();
    sub_24F390CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C18);
  }

  return result;
}

unint64_t sub_24F390A3C()
{
  result = qword_27F240C20;
  if (!qword_27F240C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240BF0);
    sub_24F390AC8();
    sub_24F390BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C20);
  }

  return result;
}

unint64_t sub_24F390AC8()
{
  result = qword_27F240C28;
  if (!qword_27F240C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240BE8);
    sub_24F390BB4(&qword_27F240C30, type metadata accessor for LargeVisualView);
    sub_24F390BB4(&qword_27F240C38, type metadata accessor for PortraitVisualView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C28);
  }

  return result;
}

uint64_t sub_24F390BB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F390BFC()
{
  result = qword_27F240C40;
  if (!qword_27F240C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240BD0);
    sub_24F390BB4(&qword_27F240C48, type metadata accessor for CompactVisualView);
    sub_24E701970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C40);
  }

  return result;
}

unint64_t sub_24F390CB8()
{
  result = qword_27F240C50;
  if (!qword_27F240C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240B88);
    sub_24F390D44();
    sub_24F390DD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C50);
  }

  return result;
}

unint64_t sub_24F390D44()
{
  result = qword_27F240C58;
  if (!qword_27F240C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240B80);
    sub_24E63CB8C();
    sub_24E680290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C58);
  }

  return result;
}

unint64_t sub_24F390DD0()
{
  result = qword_27F240C60;
  if (!qword_27F240C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240B68);
    sub_24F390BB4(&qword_27F240C68, _s12GameStoreKit15PrimaryIconViewVMa_0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C60);
  }

  return result;
}

unint64_t sub_24F390EAC()
{
  result = qword_27F240C70;
  if (!qword_27F240C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240B60);
    sub_24E725C2C();
    sub_24F390F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C70);
  }

  return result;
}

unint64_t sub_24F390F38()
{
  result = qword_27F240C78;
  if (!qword_27F240C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240B50);
    sub_24F390FC4();
    sub_24E701970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C78);
  }

  return result;
}

unint64_t sub_24F390FC4()
{
  result = qword_27F240C80;
  if (!qword_27F240C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240B48);
    sub_24E6C08EC();
    sub_24F391050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C80);
  }

  return result;
}

unint64_t sub_24F391050()
{
  result = qword_27F240C88;
  if (!qword_27F240C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240B30);
    sub_24F3910D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C88);
  }

  return result;
}

unint64_t sub_24F3910D4()
{
  result = qword_27F240C90;
  if (!qword_27F240C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240B28);
    sub_24E701970();
    sub_24F390BB4(&qword_27F21A178, type metadata accessor for ChallengeCardTitleView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C90);
  }

  return result;
}

unint64_t sub_24F391190()
{
  result = qword_27F240C98;
  if (!qword_27F240C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240B00);
    sub_24F39121C();
    sub_24F39143C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C98);
  }

  return result;
}

unint64_t sub_24F39121C()
{
  result = qword_27F240CA0;
  if (!qword_27F240CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240AF8);
    sub_24F391304(&qword_27F240CA8, &qword_27F240B18, &unk_24F9EC498, sub_24F391388);
    sub_24F390BB4(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CA0);
  }

  return result;
}

uint64_t sub_24F391304(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24F391388()
{
  result = qword_27F240CB0;
  if (!qword_27F240CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240B08);
    sub_24F390BB4(&qword_27F234500, type metadata accessor for OverlappingPlayerAvatarsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CB0);
  }

  return result;
}

unint64_t sub_24F39143C()
{
  result = qword_27F240CB8;
  if (!qword_27F240CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240AB8);
    sub_24F3914C8();
    sub_24F39169C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CB8);
  }

  return result;
}

unint64_t sub_24F3914C8()
{
  result = qword_27F240CC0;
  if (!qword_27F240CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240AE0);
    sub_24E701970();
    sub_24F391554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CC0);
  }

  return result;
}

unint64_t sub_24F391554()
{
  result = qword_27F240CC8;
  if (!qword_27F240CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240AD0);
    sub_24F3915E0();
    sub_24E63D150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CC8);
  }

  return result;
}

unint64_t sub_24F3915E0()
{
  result = qword_27F240CD0;
  if (!qword_27F240CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240AC8);
    sub_24F390BB4(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CD0);
  }

  return result;
}

unint64_t sub_24F39169C()
{
  result = qword_27F240CD8;
  if (!qword_27F240CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240AA8);
    sub_24F391728();
    sub_24E701970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CD8);
  }

  return result;
}

unint64_t sub_24F391728()
{
  result = qword_27F240CE0;
  if (!qword_27F240CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240A88);
    sub_24F3917E4();
    sub_24F390BB4(&qword_27F21A0F8, type metadata accessor for ChallengeCardCapsuleSubtitle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CE0);
  }

  return result;
}

unint64_t sub_24F3917E4()
{
  result = qword_27F240CE8;
  if (!qword_27F240CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240AA0);
    sub_24F391868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CE8);
  }

  return result;
}

unint64_t sub_24F391868()
{
  result = qword_27F240CF0;
  if (!qword_27F240CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240A98);
    sub_24F391920();
    sub_24E602068(&qword_27F214778, &qword_27F214780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CF0);
  }

  return result;
}

unint64_t sub_24F391920()
{
  result = qword_27F240CF8;
  if (!qword_27F240CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240D00);
    sub_24F3919AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CF8);
  }

  return result;
}

unint64_t sub_24F3919AC()
{
  result = qword_27F240D08;
  if (!qword_27F240D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240D10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240A90);
    sub_24F391AA0();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F217388, &qword_27F217390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240D08);
  }

  return result;
}

unint64_t sub_24F391AA0()
{
  result = qword_27F240D18;
  if (!qword_27F240D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240A90);
    sub_24F391B58();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240D18);
  }

  return result;
}

unint64_t sub_24F391B58()
{
  result = qword_27F240D20;
  if (!qword_27F240D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240D28);
    sub_24F391BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240D20);
  }

  return result;
}

unint64_t sub_24F391BDC()
{
  result = qword_27F240D30;
  if (!qword_27F240D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240D38);
    sub_24F390BB4(&qword_27F240D40, type metadata accessor for ChallengeCardTextSubtitle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240D30);
  }

  return result;
}

uint64_t sub_24F391C98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F391D00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F391D78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F391DF4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (v10 >= 6)
    {
      return v10 - 5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F391EC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = a2 + 5;
  }

  return result;
}

uint64_t sub_24F391F78()
{
  result = sub_24F9289E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F392000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChallengeCard(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F3920D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ChallengeCard(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_24F39218C()
{
  type metadata accessor for ChallengeCard(319);
  if (v0 <= 0x3F)
  {
    sub_24E7268F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_28Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChallengeCard(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_29Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ChallengeCard(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = -a2;
  }

  return result;
}

void sub_24F3923E4()
{
  type metadata accessor for ChallengeCard(319);
  if (v0 <= 0x3F)
  {
    sub_24E7268F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F392474()
{
  result = qword_27F240D90;
  if (!qword_27F240D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240C00);
    sub_24F3924F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240D90);
  }

  return result;
}

unint64_t sub_24F3924F8()
{
  result = qword_27F240D98;
  if (!qword_27F240D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240BF8);
    sub_24F390898();
    sub_24E701970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240D98);
  }

  return result;
}

unint64_t sub_24F392624()
{
  result = qword_27F240DD0;
  if (!qword_27F240DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240DB0);
    sub_24F3926B0();
    sub_24F3928B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240DD0);
  }

  return result;
}

unint64_t sub_24F3926B0()
{
  result = qword_27F240DD8;
  if (!qword_27F240DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240DC8);
    sub_24F392768();
    sub_24E602068(&qword_27F240DF8, &qword_27F240E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240DD8);
  }

  return result;
}

unint64_t sub_24F392768()
{
  result = qword_27F240DE0;
  if (!qword_27F240DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240DC0);
    sub_24F3927F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240DE0);
  }

  return result;
}

unint64_t sub_24F3927F4()
{
  result = qword_27F240DE8;
  if (!qword_27F240DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240DB8);
    sub_24F390BB4(&qword_27F240DF0, type metadata accessor for EndingSoonView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240DE8);
  }

  return result;
}

unint64_t sub_24F3928B0()
{
  result = qword_27F240E08;
  if (!qword_27F240E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240E08);
  }

  return result;
}

unint64_t sub_24F3929BC()
{
  result = qword_27F240E50;
  if (!qword_27F240E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240E48);
    sub_24F392A74();
    sub_24E602068(&qword_27F240DF8, &qword_27F240E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240E50);
  }

  return result;
}

unint64_t sub_24F392A74()
{
  result = qword_27F240E58;
  if (!qword_27F240E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240E40);
    sub_24F392B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240E58);
  }

  return result;
}

unint64_t sub_24F392B00()
{
  result = qword_27F240E60;
  if (!qword_27F240E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240E38);
    sub_24F390BB4(&qword_27F240DF0, type metadata accessor for EndingSoonView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240E60);
  }

  return result;
}

unint64_t sub_24F392BBC()
{
  result = qword_27F240E68;
  if (!qword_27F240E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240E28);
    sub_24F392C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240E68);
  }

  return result;
}

unint64_t sub_24F392C40()
{
  result = qword_27F240E70;
  if (!qword_27F240E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240E20);
    sub_24F392CF8();
    sub_24E602068(&qword_27F240DF8, &qword_27F240E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240E70);
  }

  return result;
}

unint64_t sub_24F392CF8()
{
  result = qword_27F240E78;
  if (!qword_27F240E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240E18);
    sub_24F392D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240E78);
  }

  return result;
}

unint64_t sub_24F392D84()
{
  result = qword_27F240E80;
  if (!qword_27F240E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240E10);
    sub_24F392E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240E80);
  }

  return result;
}

unint64_t sub_24F392E10()
{
  result = qword_27F240E88;
  if (!qword_27F240E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240E90);
    sub_24E602068(&qword_27F240E98, &qword_27F240EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240E88);
  }

  return result;
}

unint64_t sub_24F392EE0()
{
  result = qword_27F240EF0;
  if (!qword_27F240EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240EE0);
    sub_24F390BB4(&qword_27F216790, type metadata accessor for GameIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240EF0);
  }

  return result;
}

uint64_t sub_24F392FB0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *a1;
    if (v4 >= 6)
    {
      return v4 - 5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_24F91F648();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_24F393068(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *result = a2 + 5;
  }

  else
  {
    v7 = sub_24F91F648();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F393108()
{
  result = sub_24F91F648();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F393188()
{
  result = qword_27F240F10;
  if (!qword_27F240F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240F18);
    sub_24F392624();
    sub_24E63DC08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240F10);
  }

  return result;
}

unint64_t sub_24F393218()
{
  result = qword_27F240F20;
  if (!qword_27F240F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240F28);
    sub_24F3929BC();
    sub_24F392BBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240F20);
  }

  return result;
}

unint64_t sub_24F3932A8()
{
  result = qword_27F240F30;
  if (!qword_27F240F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240EC8);
    sub_24F393334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240F30);
  }

  return result;
}

unint64_t sub_24F393334()
{
  result = qword_27F240F38;
  if (!qword_27F240F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240EB8);
    sub_24F390BB4(&qword_27F240F40, type metadata accessor for PlayerGroupView);
    sub_24E602068(&qword_27F240F48, &qword_27F240EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240F38);
  }

  return result;
}

unint64_t sub_24F393420()
{
  result = qword_27F240F50;
  if (!qword_27F240F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240F58);
    sub_24E6A4C1C();
    sub_24F391304(&qword_27F240EE8, &qword_27F240ED8, &unk_24FA2E1E0, sub_24F392EE0);
    sub_24F392EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240F50);
  }

  return result;
}

unint64_t sub_24F393510()
{
  result = qword_27F240FB8;
  if (!qword_27F240FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240FA8);
    sub_24F3935C8();
    sub_24E602068(&qword_27F214778, &qword_27F214780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240FB8);
  }

  return result;
}

unint64_t sub_24F3935C8()
{
  result = qword_27F240FC0;
  if (!qword_27F240FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240FA0);
    sub_24F393654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240FC0);
  }

  return result;
}

unint64_t sub_24F393654()
{
  result = qword_27F240FC8;
  if (!qword_27F240FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240FD0);
    sub_24E7C78A0();
    sub_24E602068(&qword_27F217388, &qword_27F217390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240FC8);
  }

  return result;
}

unint64_t sub_24F393738()
{
  result = qword_27F240FE0;
  if (!qword_27F240FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240F68);
    sub_24E602068(&qword_27F240FE8, &qword_27F240FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240FE0);
  }

  return result;
}

Swift::Bool __swiftcall NSUserDefaults.isEnabled(debugSetting:)(GameStoreKit::BoolSettingKey debugSetting)
{
  BoolSettingKey.rawValue.getter();
  v2 = sub_24F92B098();

  v3 = [v1 BOOLForKey_];

  return v3;
}

Swift::OpaquePointer_optional __swiftcall NSUserDefaults.options(for:)(GameStoreKit::OptionSettingKey a1)
{
  v2 = sub_24F92B098();

  v3 = [v1 arrayForKey_];

  if (v3)
  {
    v5 = sub_24F92B5A8();

    v6 = sub_24E9E2340(v5);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  result.value._rawValue = v7;
  result.is_nil = v4;
  return result;
}

Swift::Void __swiftcall NSUserDefaults.enable(debugSetting:)(GameStoreKit::BoolSettingKey debugSetting)
{
  v2 = sub_24F92B768();
  BoolSettingKey.rawValue.getter();
  v3 = sub_24F92B098();

  [v1 setValue:v2 forKey:v3];
}

Swift::Void __swiftcall NSUserDefaults.disable(debugSetting:)(GameStoreKit::BoolSettingKey debugSetting)
{
  BoolSettingKey.rawValue.getter();
  v2 = sub_24F92B098();

  [v1 removeObjectForKey_];
}

Swift::Void __swiftcall NSUserDefaults.resetToDefault()()
{
  v1 = v0;
  v2 = 0;
  do
  {
    ++v2;
    BoolSettingKey.rawValue.getter();
    v3 = sub_24F92B098();

    [v0 removeObjectForKey_];
  }

  while (v2 != 43);
  v4 = 0;
  do
  {
    ++v4;
    v5 = sub_24F92B098();

    [v1 removeObjectForKey_];
  }

  while (v4 != 8);
  v6 = sub_24F92B098();
  [v1 removeObjectForKey_];

  v7 = sub_24F92B098();
  [v1 removeObjectForKey_];
}

Swift::Void __swiftcall NSUserDefaults.registerGamesDefaults()()
{
  v1 = v0;
  v48 = MEMORY[0x277D84F90];
  sub_24F458E28(0, 43, 0);
  v2 = 0;
  v3 = v48;
  do
  {
    v4 = byte_2861BEEF0[v2 + 32];
    v5 = BoolSettingKey.rawValue.getter();
    v48 = v3;
    v8 = *(v3 + 16);
    v7 = *(v3 + 24);
    if (v8 >= v7 >> 1)
    {
      v46 = v5;
      v10 = v1;
      v11 = v6;
      sub_24F458E28((v7 > 1), v8 + 1, 1);
      v6 = v11;
      v1 = v10;
      v5 = v46;
    }

    ++v2;
    v3 = v48;
    *(v48 + 16) = v8 + 1;
    v9 = v3 + 24 * v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6;
    *(v9 + 48) = (v4 < 0x2A) & (0x22017800202uLL >> v4);
  }

  while (v2 != 43);
  v12 = sub_24E8E8F28(v3);

  if (*(v12 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135B8);
    v13 = sub_24F92CB58();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  v48 = v13;
  sub_24F39434C(v12, 1, &v48);

  v14 = sub_24F92AE28();

  [v1 registerDefaults_];

  v15 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
  sub_24F458E08(0, 8, 0);
  v16 = v15;
  v17 = 0;
  v18 = v48;
  v19 = "reviewSummaryText";
  v20 = "oreKit.playTogetherSparseCount";
  v21 = "oreKit.homeContentLimit";
  v22 = "oreKit.bagV3OfflineMaxAge";
  v23 = "oreKit.playTogetherContentLimit";
  do
  {
    v24 = byte_2861BEF40[v17 + 32];
    v25 = 0xD000000000000036;
    v26 = 0xD000000000000027;
    if (v24 == 6)
    {
      v27 = v20;
    }

    else
    {
      v26 = 0xD000000000000026;
      v27 = v21;
    }

    v28 = 0xD00000000000002FLL;
    if (v24 == 4)
    {
      v29 = v22;
    }

    else
    {
      v28 = 0xD00000000000002ELL;
      v29 = v23;
    }

    if (byte_2861BEF40[v17 + 32] <= 5u)
    {
      v26 = v28;
      v27 = v29;
    }

    v30 = 0xD000000000000029;
    if (v24 == 2)
    {
      v30 = 0xD000000000000022;
      v31 = "oreKit.debugOverlay";
    }

    else
    {
      v31 = "oreKit.bagV3MaxAge";
    }

    if (byte_2861BEF40[v17 + 32])
    {
      v25 = 0xD000000000000023;
      v32 = "scriptionStateOverride";
    }

    else
    {
      v32 = v19;
    }

    if (byte_2861BEF40[v17 + 32] <= 1u)
    {
      v33 = v32;
    }

    else
    {
      v25 = v30;
      v33 = v31;
    }

    if (byte_2861BEF40[v17 + 32] <= 3u)
    {
      v34 = v25;
    }

    else
    {
      v34 = v26;
    }

    if (byte_2861BEF40[v17 + 32] <= 3u)
    {
      v35 = v33;
    }

    else
    {
      v35 = v27;
    }

    v48 = v18;
    v37 = *(v18 + 16);
    v36 = *(v18 + 24);
    if (v37 >= v36 >> 1)
    {
      v42 = v22;
      v43 = v21;
      v41 = v23;
      v44 = v20;
      v45 = v19;
      sub_24F458E08((v36 > 1), v37 + 1, 1);
      v23 = v41;
      v22 = v42;
      v21 = v43;
      v20 = v44;
      v19 = v45;
      v16 = MEMORY[0x277D84F90];
      v18 = v48;
    }

    ++v17;
    *(v18 + 16) = v37 + 1;
    v38 = (v18 + 24 * v37);
    v38[4] = v34;
    v38[5] = v35 | 0x8000000000000000;
    v38[6] = v16;
  }

  while (v17 != 8);
  v39 = sub_24E8E9070(v18);

  if (*(v39 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135B8);
    v40 = sub_24F92CB58();
  }

  else
  {
    v40 = MEMORY[0x277D84F98];
  }

  v48 = v40;
  sub_24F39434C(v39, 1, &v48);

  v47 = sub_24F92AE28();

  [v1 registerDefaults_];
}

id sub_24F39418C()
{
  v1 = *v0;
  BoolSettingKey.rawValue.getter();
  v2 = sub_24F92B098();

  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_24F394200()
{
  v1 = *v0;
  v2 = sub_24F92B768();
  BoolSettingKey.rawValue.getter();
  v3 = sub_24F92B098();

  [v1 setValue:v2 forKey:v3];
}

void sub_24F394290()
{
  v1 = *v0;
  BoolSettingKey.rawValue.getter();
  v2 = sub_24F92B098();

  [v1 removeObjectForKey_];
}

unint64_t sub_24F39434C(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  sub_24EA20328(result + 32, &v37);
  v8 = v37;
  v7 = v38;
  sub_24E612B0C(v39, v36);
  v9 = *a3;
  result = sub_24E76D644(v8, v7);
  v11 = v9[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v10;
  if (v9[3] < v14)
  {
    sub_24E89873C(v14, v5 & 1);
    result = sub_24E76D644(v8, v7);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_24F92CF88();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v17 = *a3;
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v17[(result >> 6) + 8] |= 1 << result;
    v21 = (v17[6] + 16 * result);
    *v21 = v8;
    v21[1] = v7;
    result = sub_24E612B0C(v36, (v17[7] + 32 * result));
    v22 = v17[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v13)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v17[2] = v23;
    v5 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v20 = result;
  sub_24E8AD8E4();
  result = v20;
  v17 = *a3;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v18 = result;

  v19 = (v17[7] + 32 * v18);
  __swift_destroy_boxed_opaque_existential_1(v19);
  result = sub_24E612B0C(v36, v19);
  v5 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v6 += 80;
    v3 = 1;
    while (1)
    {
      sub_24EA20328(v6, &v37);
      v8 = v37;
      v7 = v38;
      sub_24E612B0C(v39, v36);
      v26 = *a3;
      result = sub_24E76D644(v8, v7);
      v28 = v26[2];
      v29 = (v27 & 1) == 0;
      v13 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v13)
      {
        goto LABEL_23;
      }

      v15 = v27;
      if (v26[3] < v30)
      {
        sub_24E89873C(v30, 1);
        result = sub_24E76D644(v8, v7);
        if ((v15 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      v32 = *a3;
      if (v15)
      {
        v24 = result;

        v25 = (v32[7] + 32 * v24);
        __swift_destroy_boxed_opaque_existential_1(v25);
        result = sub_24E612B0C(v36, v25);
      }

      else
      {
        v32[(result >> 6) + 8] |= 1 << result;
        v33 = (v32[6] + 16 * result);
        *v33 = v8;
        v33[1] = v7;
        result = sub_24E612B0C(v36, (v32[7] + 32 * result));
        v34 = v32[2];
        v13 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v13)
        {
          goto LABEL_24;
        }

        v32[2] = v35;
      }

      v6 += 48;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_24F394678(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Player(0);
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
      v13 = type metadata accessor for Game();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24F3947B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
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
      v13 = type metadata accessor for Game();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for LeaderboardEntriesShelfConstructionIntent()
{
  result = qword_27F240FF8;
  if (!qword_27F240FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F394920()
{
  sub_24F3949F0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Game();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F3949F0()
{
  if (!qword_27F22B398)
  {
    type metadata accessor for LeaderboardEntry();
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22B398);
    }
  }
}

unint64_t sub_24F394A48@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F979FB0;
  *(inited + 32) = 0x73656972746E65;
  v4 = 0xE700000000000000;
  *(inited + 40) = 0xE700000000000000;
  v5 = *v1;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239F78);
  v6 = sub_24F395B14(&qword_27F241030, &qword_27F241038);
  *(inited + 48) = v5;
  *(inited + 80) = v6;
  *(inited + 88) = 0x6B6E615278616DLL;
  *(inited + 96) = 0xE700000000000000;
  v7 = v1[1];
  *(inited + 128) = MEMORY[0x277D83B88];
  v8 = sub_24E65901C();
  *(inited + 104) = v7;
  *(inited + 136) = v8;
  *(inited + 144) = 0x6353726579616C70;
  *(inited + 152) = 0xEB0000000065706FLL;
  v9 = 0x4F73646E65697266;
  if (*(v1 + 16))
  {
    v9 = 0x6C61626F6C67;
  }

  v10 = 0xEB00000000796C6ELL;
  v11 = MEMORY[0x277D837D0];
  if (*(v1 + 16))
  {
    v10 = 0xE600000000000000;
  }

  v12 = MEMORY[0x277D22580];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v12;
  *(inited + 160) = v9;
  *(inited + 168) = v10;
  *(inited + 200) = 0x706F6353656D6974;
  *(inited + 208) = 0xE900000000000065;
  if (*(v1 + 17))
  {
    if (*(v1 + 17) == 1)
    {
      v4 = 0xE400000000000000;
      v13 = 1801807223;
    }

    else
    {
      v13 = 0x656D69546C6C61;
    }
  }

  else
  {
    v4 = 0xE500000000000000;
    v13 = 0x7961646F74;
  }

  *(inited + 240) = v11;
  *(inited + 248) = v12;
  *(inited + 216) = v13;
  *(inited + 224) = v4;
  *(inited + 256) = 0x616C506C61636F6CLL;
  *(inited + 264) = 0xEB00000000726579;
  v14 = type metadata accessor for LeaderboardEntriesShelfConstructionIntent();
  v15 = v14[8];
  *(inited + 296) = type metadata accessor for Player(0);
  *(inited + 304) = sub_24F395BB0(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 272));
  sub_24F395BF8(v1 + v15, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 312) = 1701667175;
  *(inited + 320) = 0xE400000000000000;
  v17 = v14[9];
  *(inited + 352) = type metadata accessor for Game();
  *(inited + 360) = sub_24F395BB0(&qword_27F217960, type metadata accessor for Game);
  v18 = __swift_allocate_boxed_opaque_existential_1((inited + 328));
  sub_24F395BF8(v1 + v17, v18, type metadata accessor for Game);
  *(inited + 368) = 0x444965676170;
  *(inited + 376) = 0xE600000000000000;
  v19 = (v1 + v14[10]);
  v20 = *v19;
  v21 = v19[1];
  *(inited + 408) = v11;
  *(inited + 416) = v12;
  *(inited + 384) = v20;
  *(inited + 392) = v21;
  *(inited + 424) = 0xD000000000000010;
  *(inited + 432) = 0x800000024FA46670;
  LOBYTE(v19) = *(v1 + v14[11]);
  v22 = MEMORY[0x277D22598];
  *(inited + 464) = MEMORY[0x277D839B0];
  *(inited + 472) = v22;
  *(inited + 440) = v19;

  v23 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v24 = sub_24E80FFAC(v23);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v24;
  return result;
}

uint64_t sub_24F394E54(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241020);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F395A60();
  sub_24F92D128();
  v11 = *v3;
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239F78);
  sub_24F395B14(&qword_27F241028, &qword_27F21C1C8);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_24F92CD38();
    LOBYTE(v11) = *(v3 + 16);
    HIBYTE(v10) = 2;
    sub_24F33239C();
    sub_24F92CD48();
    LOBYTE(v11) = *(v3 + 17);
    HIBYTE(v10) = 3;
    sub_24F3323F0();
    sub_24F92CD48();
    type metadata accessor for LeaderboardEntriesShelfConstructionIntent();
    LOBYTE(v11) = 4;
    type metadata accessor for Player(0);
    sub_24F395BB0(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
    LOBYTE(v11) = 5;
    type metadata accessor for Game();
    sub_24F395BB0(&qword_27F214950, type metadata accessor for Game);
    sub_24F92CD48();
    LOBYTE(v11) = 6;
    sub_24F92CD08();
    LOBYTE(v11) = 7;
    sub_24F92CD18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F3951EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v26);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241008);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = v24 - v8;
  v10 = type metadata accessor for LeaderboardEntriesShelfConstructionIntent();
  MEMORY[0x28223BE20](v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24F395A60();
  v28 = v9;
  v14 = v30;
  sub_24F92D108();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v24[0] = v4;
  v24[1] = v5;
  v30 = v7;
  v15 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239F78);
  v32 = 0;
  sub_24F395B14(&qword_27F241018, &qword_27F21C190);
  v16 = v29;
  v17 = v28;
  sub_24F92CC68();
  *v12 = v33;
  LOBYTE(v33) = 1;
  *(v12 + 1) = sub_24F92CC58();
  v32 = 2;
  sub_24F33222C();
  sub_24F92CC68();
  v12[16] = v33;
  v32 = 3;
  sub_24F332280();
  sub_24F92CC68();
  v12[17] = v33;
  LOBYTE(v33) = 4;
  sub_24F395BB0(&qword_27F213E38, type metadata accessor for Player);
  v18 = v30;
  sub_24F92CC68();
  sub_24E6B2600(v18, &v12[v10[8]], type metadata accessor for Player);
  LOBYTE(v33) = 5;
  sub_24F395BB0(&qword_27F214968, type metadata accessor for Game);
  v19 = v24[0];
  sub_24F92CC68();
  sub_24E6B2600(v19, &v12[v10[9]], type metadata accessor for Game);
  LOBYTE(v33) = 6;
  v20 = sub_24F92CC28();
  v21 = &v12[v10[10]];
  *v21 = v20;
  v21[1] = v22;
  LOBYTE(v33) = 7;
  LOBYTE(v19) = sub_24F92CC38();
  (*(v15 + 8))(v17, v16);
  v12[v10[11]] = v19 & 1;
  sub_24F395BF8(v12, v25, type metadata accessor for LeaderboardEntriesShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_24F395AB4(v12, type metadata accessor for LeaderboardEntriesShelfConstructionIntent);
}

unint64_t sub_24F395850()
{
  v1 = *v0;
  v2 = 0x73656972746E65;
  v3 = 0x444965676170;
  if (v1 != 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x616C506C61636F6CLL;
  if (v1 != 4)
  {
    v4 = 1701667175;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6353726579616C70;
  if (v1 != 2)
  {
    v5 = 0x706F6353656D6974;
  }

  if (*v0)
  {
    v2 = 0x6B6E615278616DLL;
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

uint64_t sub_24F395958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F395D78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F395980(uint64_t a1)
{
  v2 = sub_24F395A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3959BC(uint64_t a1)
{
  v2 = sub_24F395A60();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F395A60()
{
  result = qword_27F241010;
  if (!qword_27F241010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241010);
  }

  return result;
}

uint64_t sub_24F395AB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F395B14(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239F78);
    sub_24F395BB0(a2, type metadata accessor for LeaderboardEntry);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F395BB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F395BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F395C74()
{
  result = qword_27F241040;
  if (!qword_27F241040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241040);
  }

  return result;
}

unint64_t sub_24F395CCC()
{
  result = qword_27F241048;
  if (!qword_27F241048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241048);
  }

  return result;
}

unint64_t sub_24F395D24()
{
  result = qword_27F241050;
  if (!qword_27F241050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241050);
  }

  return result;
}

uint64_t sub_24F395D78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656972746E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B6E615278616DLL && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6353726579616C70 && a2 == 0xEB0000000065706FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x706F6353656D6974 && a2 == 0xE900000000000065 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616C506C61636F6CLL && a2 == 0xEB00000000726579 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x444965676170 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2)
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

uint64_t sub_24F396020(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F396068(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_24F3960F4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241070);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = &v43 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241078);
  v10 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = &v43 - v13;
  MEMORY[0x28223BE20](v14);
  v51 = &v43 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v19 = *(a1 + 104) & ~(*(a1 + 104) >> 63);
  v55 = 0;
  v56 = v19;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0);
  sub_24E62A6CC();
  v52 = v18;
  result = sub_24F927228();
  v21 = *(a1 + 8);
  if (v21 < 0)
  {
    __break(1u);
  }

  else
  {
    v57 = 0;
    v58 = v21;
    swift_getKeyPath();
    v22 = swift_allocObject();
    v50 = v5;
    v23 = *(a1 + 112);
    *(v22 + 112) = *(a1 + 96);
    *(v22 + 128) = v23;
    *(v22 + 144) = *(a1 + 128);
    v24 = *(a1 + 48);
    *(v22 + 48) = *(a1 + 32);
    *(v22 + 64) = v24;
    v25 = *(a1 + 80);
    *(v22 + 80) = *(a1 + 64);
    *(v22 + 96) = v25;
    v26 = *(a1 + 16);
    *(v22 + 16) = *a1;
    *(v22 + 32) = v26;
    sub_24F398040(a1, &v55);
    v45 = v7;
    v49 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241080);
    v44 = v10;
    v46 = a2;
    sub_24E602068(&qword_27F241088, &qword_27F241080);
    v27 = v54;
    sub_24F927228();
    v28 = *(a1 + 120) & ~(*(a1 + 120) >> 63);
    v55 = 0;
    v56 = v28;
    swift_getKeyPath();
    v29 = v51;
    sub_24F927228();
    v30 = *(v10 + 16);
    v31 = v53;
    v32 = v47;
    v30(v53, v52, v47);
    v33 = *(v50 + 16);
    v34 = v45;
    v33(v45, v27, v49);
    v35 = v48;
    v30(v48, v29, v32);
    v36 = v46;
    v30(v46, v31, v32);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241090);
    v38 = &v36[*(v37 + 48)];
    v39 = v36;
    v40 = v49;
    v33(v38, v34, v49);
    v30(&v39[*(v37 + 64)], v35, v32);
    v41 = *(v44 + 8);
    v41(v51, v32);
    v42 = *(v50 + 8);
    v42(v54, v40);
    v41(v52, v32);
    v41(v35, v32);
    v42(v34, v40);
    return (v41)(v53, v32);
  }

  return result;
}

void sub_24F3966A4(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241098);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = *a1;
  *v11 = sub_24F9249A8();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410A0);
  sub_24F396830(v12, a2, &v11[*(v13 + 44)]);
  v14 = a2[1];
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v17 = v12 >= v16;
    v18 = v12 < v16;
    sub_24E60169C(v11, v8, &qword_27F241098);
    sub_24E60169C(v8, a3, &qword_27F241098);
    v19 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410A8) + 48);
    *v19 = 0;
    *(v19 + 8) = v18;
    *(v19 + 9) = v17;
    sub_24E601704(v11, &qword_27F241098);
    sub_24E601704(v8, &qword_27F241098);
  }
}

void sub_24F396830(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410B0);
  v60 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241078);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  MEMORY[0x28223BE20](v16);
  v22 = &v49 - v21;
  v23 = *a2;
  v24 = a1 * *a2;
  if ((a1 * *a2) >> 64 != v24 >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  v25 = v24 + v23;
  if (__OFADD__(v24, v23))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v57 = v15;
  v58 = v20;
  v59 = v19;
  v50 = v17;
  v55 = v10;
  v51 = v18;
  v52 = a3;
  v26 = a2[14] & ~(a2[14] >> 63);
  v61 = 0;
  v62 = v26;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0);
  sub_24E62A6CC();
  v56 = v22;
  sub_24F927228();
  if (v25 >= v24)
  {
    v63 = v24;
    v64 = v25;
    swift_getKeyPath();
    v27 = swift_allocObject();
    v28 = *(a2 + 7);
    *(v27 + 112) = *(a2 + 6);
    *(v27 + 128) = v28;
    v29 = a2[16];
    v30 = *(a2 + 3);
    *(v27 + 48) = *(a2 + 2);
    *(v27 + 64) = v30;
    v31 = *(a2 + 5);
    *(v27 + 80) = *(a2 + 4);
    *(v27 + 96) = v31;
    v32 = *(a2 + 1);
    *(v27 + 16) = *a2;
    *(v27 + 32) = v32;
    *(v27 + 144) = v29;
    *(v27 + 152) = v25;
    sub_24F398040(a2, &v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410B8);
    v54 = v7;
    sub_24E602068(&qword_27F2410C0, &qword_27F2410B8);
    v33 = v55;
    sub_24F927228();
    v34 = a2[16] & ~(a2[16] >> 63);
    v61 = 0;
    v62 = v34;
    swift_getKeyPath();
    v35 = v57;
    sub_24F927228();
    v36 = v51;
    v37 = *(v51 + 16);
    v38 = v59;
    v39 = v50;
    v37(v59, v56, v50);
    v40 = *(v60 + 16);
    v41 = v54;
    v42 = v33;
    v43 = v53;
    v40(v54, v42, v53);
    v37(v58, v35, v39);
    v44 = v52;
    v37(v52, v38, v39);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410C8);
    v40((v44 + *(v45 + 48)), v41, v43);
    v46 = v58;
    v37(v44 + *(v45 + 64), v58, v39);
    v47 = *(v36 + 8);
    v47(v57, v39);
    v48 = *(v60 + 8);
    v48(v55, v43);
    v47(v56, v39);
    v47(v46, v39);
    v48(v54, v43);
    v47(v59, v39);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_24F396E00(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = *a1;
  sub_24F396F60(v12, &v17 - v10);
  v13 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v14 = v12 >= v13;
    v15 = v12 < v13;
    sub_24E60169C(v11, v8, &qword_27F2410D0);
    sub_24E60169C(v8, a3, &qword_27F2410D0);
    v16 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410D8) + 48);
    *v16 = 0;
    *(v16 + 8) = v15;
    *(v16 + 9) = v14;
    sub_24E601704(v11, &qword_27F2410D0);
    sub_24E601704(v8, &qword_27F2410D0);
  }
}

void sub_24F396F60(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v114 = v105 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410E8);
  MEMORY[0x28223BE20](v7);
  v122 = v105 - v8;
  v9 = sub_24F929888();
  v117 = *(v9 - 8);
  v118 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v113 = (v105 - v13);
  MEMORY[0x28223BE20](v14);
  v16 = v105 - v15;
  MEMORY[0x28223BE20](v17);
  *&v115 = v105 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = (v105 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410F0);
  v112 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  *&v116 = v105 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410F8);
  MEMORY[0x28223BE20](v24);
  v27 = v105 - v26;
  v28 = *(v2 + 16);
  v29 = *(v28 + 16);
  v120 = v22;
  v121 = v30;
  v119 = v7;
  if (v29 > a1)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      v111 = v27;
      v113 = v25;
      sub_24E615E00(v28 + 40 * a1 + 32, &v130);
      sub_24E615E00(&v130, &v133);
      type metadata accessor for GSKComponentContentBuilder();
      sub_24F3981B0();
      *&v132 = sub_24F923598();
      BYTE8(v132) = v31 & 1;
      v32 = *(v2 + 56);
      if (v32)
      {
        v33 = 0.0;
        v34 = 0.0;
        v35 = 0.0;
        v36 = 1;
      }

      else
      {
        v33 = *(v2 + 48);
        v36 = *(v2 + 40);
        v35 = *(v2 + 24);
        v34 = *(v2 + 32);
      }

      v114 = v4;
      v67 = *(v2 + 96);
      v110 = v21;
      if (v67)
      {
        v68 = 0.0;
        v69 = 0.0;
        LOBYTE(v70) = 1;
      }

      else
      {
        v68 = *(v2 + 88);
        v70 = *(v2 + 80);
        v69 = *(v2 + 72);
      }

      if (v32)
      {
        v71 = -INFINITY;
      }

      else
      {
        v71 = v35;
      }

      v108 = v34;
      v109 = v33;
      LODWORD(v107) = v36;
      if (v36)
      {
        v72 = v71;
      }

      else
      {
        v72 = v34;
      }

      if (v32)
      {
        v73 = v72;
      }

      else
      {
        v73 = v33;
      }

      v74 = sub_24F927618();
      if (v71 > v72 || v72 > v73)
      {
        goto LABEL_50;
      }

      v76 = v69;
      if (v70)
      {
        v76 = v71;
      }

      v77 = v68;
      if (v67)
      {
        v77 = v76;
      }

      if (v71 > v76 || v76 > v77)
      {
LABEL_50:
        v105[0] = v75;
        v105[1] = v74;
        sub_24F92BDC8();
        v78 = sub_24F9257A8();
        v106 = *&a1;
        v79 = v16;
        v80 = v78;
        sub_24F921FD8();

        v16 = v79;
        *&a1 = v106;
      }

      sub_24F9242E8();
      *v126 = v132;
      *&v126[16] = v133;
      *&v126[32] = v134;
      *&v126[48] = v135;
      sub_24F54D1AC(&v130, a1, *&v116);
      sub_24E601704(v126, &qword_27F21C5F8);
      __swift_project_boxed_opaque_existential_1(&v130, *(&v131 + 1));
      *&v126[24] = MEMORY[0x277D84030];
      *v126 = swift_allocObject();
      sub_24F928D68();
      v132 = 0u;
      v133 = 0u;
      sub_24F929878();
      sub_24E601704(&v132, &qword_27F2129B0);
      sub_24E601704(v126, &qword_27F2129B0);
      *&v126[24] = MEMORY[0x277D83B88];
      *v126 = a1;
      sub_24F929868();
      v81 = v118;
      v82 = *(v117 + 8);
      v82(v16, v118);
      sub_24E601704(v126, &qword_27F2129B0);
      __swift_project_boxed_opaque_existential_1(&v130, *(&v131 + 1));
      sub_24F928D78();
      sub_24E7538CC(v126, &v124);
      if (*(&v125 + 1))
      {
        sub_24E612C80(&v124, &v132);
        __swift_project_boxed_opaque_existential_1(&v132, *(&v133 + 1));
        *&v124 = swift_getDynamicType();
        *(&v124 + 1) = v134;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2161F8);
        v83 = sub_24F92B188();
        v85 = v84;
        __swift_destroy_boxed_opaque_existential_1(&v132);
        sub_24E601704(v126, qword_27F21B590);
        v86 = MEMORY[0x277D837D0];
      }

      else
      {
        sub_24E601704(v126, qword_27F21B590);
        sub_24E601704(&v124, qword_27F21B590);
        v83 = 0;
        v85 = 0;
        v86 = 0;
        *&v126[16] = 0;
      }

      v87 = v110;
      *v126 = v83;
      *&v126[8] = v85;
      *&v126[24] = v86;
      v88 = v115;
      sub_24F929868();
      v82(*&v88, v81);
      sub_24E601704(v126, &qword_27F2129B0);
      v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238968);
      v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238970);
      v91 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C5F8);
      v92 = sub_24E7916EC();
      *v126 = v91;
      *&v126[8] = v92;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v94 = sub_24F09B638();
      v95 = sub_24F3980BC();
      *v126 = v89;
      *&v126[8] = &type metadata for IsDebugImpressionIndexOverlayEnabled;
      *&v126[16] = v90;
      *&v126[24] = OpaqueTypeConformance2;
      *&v126[32] = v94;
      *&v126[40] = v95;
      v96 = swift_getOpaqueTypeConformance2();
      v97 = v87;
      v98 = v111;
      v99 = v120;
      v100 = *&v116;
      sub_24F925EE8();
      v82(v97, v81);
      (*(v112 + 8))(v100, v99);
      v101 = v113;
      v102 = v121;
      (v113[2])(v122, v98, v121);
      swift_storeEnumTagMultiPayload();
      *v126 = v99;
      *&v126[8] = v96;
      swift_getOpaqueTypeConformance2();
      v103 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A0D8);
      v104 = sub_24EB8ECCC();
      *v126 = v103;
      *&v126[8] = v104;
      swift_getOpaqueTypeConformance2();
      sub_24F924E28();
      v101[1](v98, v102);
      __swift_destroy_boxed_opaque_existential_1(&v130);
    }

    return;
  }

  v37 = *(v2 + 56);
  if (v37)
  {
    v38 = 0.0;
    v39 = 0.0;
    v40 = 0.0;
    LOBYTE(v41) = 1;
    v42 = *(v2 + 96);
    if ((v42 & 1) == 0)
    {
LABEL_7:
      v43 = *(v2 + 88);
      LODWORD(v112) = *(v2 + 80);
      v115 = *(v2 + 72);
      v116 = *&v43;
      goto LABEL_10;
    }
  }

  else
  {
    v38 = *(v2 + 48);
    v41 = *(v2 + 40);
    v40 = *(v2 + 24);
    v39 = *(v2 + 32);
    v42 = *(v2 + 96);
    if ((v42 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v115 = 0.0;
  v116 = 0.0;
  LODWORD(v112) = 1;
LABEL_10:
  v109 = *&v11;
  v110 = v5;
  v111 = v16;
  v107 = v40;
  v108 = v39;
  if (v37)
  {
    v44 = -INFINITY;
  }

  else
  {
    v44 = v40;
  }

  if (v41)
  {
    v45 = v44;
  }

  else
  {
    v45 = v39;
  }

  v106 = v38;
  if (v37)
  {
    v46 = v45;
  }

  else
  {
    v46 = v38;
  }

  sub_24F927618();
  if (v44 > v45 || v45 > v46)
  {
    goto LABEL_27;
  }

  v47 = v115;
  v48 = v116;
  if (v112)
  {
    v47 = v44;
  }

  if (v42)
  {
    v48 = v47;
  }

  if (v44 > v47 || v47 > v48)
  {
LABEL_27:
    sub_24F92BDC8();
    v49 = sub_24F9257A8();
    sub_24F921FD8();
  }

  sub_24F9242E8();
  *&v128[55] = v135;
  *&v128[71] = v136;
  *&v128[87] = v137;
  *&v128[103] = v138;
  *&v128[7] = v132;
  *&v128[23] = v133;
  *&v128[39] = v134;
  *&v126[73] = *&v128[64];
  *&v126[89] = *&v128[80];
  v127[0] = *&v128[96];
  *&v126[25] = *&v128[16];
  *&v126[41] = *&v128[32];
  *&v126[57] = *&v128[48];
  v129 = 1;
  *v126 = 0;
  v126[8] = 1;
  *(v127 + 15) = *(&v138 + 1);
  *&v126[9] = *v128;
  v130 = 0u;
  v131 = 0u;
  v124 = 0u;
  v125 = 0u;
  v50 = v109;
  sub_24F929878();
  sub_24E601704(&v124, &qword_27F2129B0);
  sub_24E601704(&v130, &qword_27F2129B0);
  *(&v131 + 1) = MEMORY[0x277D83B88];
  *&v130 = a1;
  v51 = v113;
  sub_24F929868();
  v52 = v118;
  v53 = *(v117 + 8);
  v53(*&v50, v118);
  sub_24E601704(&v130, &qword_27F2129B0);
  *(&v131 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v130) = 1;
  v54 = v4;
  v55 = v111;
  sub_24F929868();
  v53(v51, v52);
  sub_24E601704(&v130, &qword_27F2129B0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A0D8);
  v56 = sub_24EB8ECCC();
  v57 = v114;
  sub_24F925EE8();
  v53(v55, v52);
  v58 = v110;
  v110[2](v122, v57, v54);
  swift_storeEnumTagMultiPayload();
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238968);
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238970);
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C5F8);
  v62 = sub_24E7916EC();
  *v126 = v61;
  *&v126[8] = v62;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = sub_24F09B638();
  v65 = sub_24F3980BC();
  *v126 = v59;
  *&v126[8] = &type metadata for IsDebugImpressionIndexOverlayEnabled;
  *&v126[16] = v60;
  *&v126[24] = v63;
  *&v126[32] = v64;
  *&v126[40] = v65;
  v66 = swift_getOpaqueTypeConformance2();
  *v126 = v120;
  *&v126[8] = v66;
  swift_getOpaqueTypeConformance2();
  *v126 = v117;
  *&v126[8] = v56;
  swift_getOpaqueTypeConformance2();
  sub_24F924E28();
  (v58[1])(v57, v54);
}

uint64_t sub_24F397E18()
{
  v1 = sub_24F925508();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241058);
  MEMORY[0x28223BE20](v5);
  v7 = v14 - v6;
  v8 = *(v0 + 112);
  v14[6] = *(v0 + 96);
  v14[7] = v8;
  v15 = *(v0 + 128);
  v9 = *(v0 + 48);
  v14[2] = *(v0 + 32);
  v14[3] = v9;
  v10 = *(v0 + 80);
  v14[4] = *(v0 + 64);
  v14[5] = v10;
  v11 = *(v0 + 16);
  v14[0] = *v0;
  v14[1] = v11;
  *v7 = sub_24F924C88();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241060);
  sub_24F3960F4(v14, &v7[*(v12 + 44)]);
  sub_24F9254F8();
  sub_24E602068(&qword_27F241068, &qword_27F241058);
  sub_24F926678();
  (*(v2 + 8))(v4, v1);
  return sub_24E601704(v7, &qword_27F241058);
}

uint64_t sub_24F398000()
{

  return swift_deallocObject();
}

uint64_t sub_24F398078()
{

  return swift_deallocObject();
}

unint64_t sub_24F3980BC()
{
  result = qword_27F241100;
  if (!qword_27F241100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238970);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C5F8);
    sub_24E7916EC();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2387B8, &qword_27F2387A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241100);
  }

  return result;
}

unint64_t sub_24F3981B0()
{
  result = qword_27F21C648;
  if (!qword_27F21C648)
  {
    type metadata accessor for GSKComponentContentBuilder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C648);
  }

  return result;
}

uint64_t sub_24F398208()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F398240()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241058);
  sub_24E602068(&qword_27F241068, &qword_27F241058);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F3982F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F3983BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Player(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for GamesRecentlyPlayedDataIntent()
{
  result = qword_27F241108;
  if (!qword_27F241108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F3984C0()
{
  result = type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F398550(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 7105633;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0x800000024FA42FF0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 7105633;
  }

  if (*a2)
  {
    v6 = 0x800000024FA42FF0;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F3985F4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F398674()
{
  sub_24F92B218();
}

uint64_t sub_24F3986E0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F39875C@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

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

void sub_24F3987BC(unint64_t *a1@<X8>)
{
  v2 = 0x800000024FA42FF0;
  v3 = 7105633;
  if (*v1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_24F39885C()
{
  result = qword_27F241118;
  if (!qword_27F241118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241118);
  }

  return result;
}

uint64_t sub_24F3988B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241120);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for GamesRecentlyPlayedDataIntent();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v21 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24F398D3C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v14 = v19;
  v15 = v12;
  v26 = 0;
  sub_24EC9948C();
  v16 = v20;
  sub_24F92CC68();
  sub_24E61C0A8(v6, v15);
  v25 = 1;
  *(v15 + v10[5]) = sub_24F92CC58();
  v24 = 2;
  *(v15 + v10[6]) = sub_24F92CC58();
  v22 = 3;
  sub_24F398D90();
  sub_24F92CC68();
  (*(v14 + 8))(v9, v16);
  *(v15 + v10[7]) = v23;
  sub_24F398DE4(v15, v18);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_24F398E48(v15, type metadata accessor for GamesRecentlyPlayedDataIntent);
}

uint64_t sub_24F398BF0()
{
  v1 = 0x726579616C70;
  v2 = 0x65674178616DLL;
  if (*v0 != 2)
  {
    v2 = 0x7265746C6966;
  }

  if (*v0)
  {
    v1 = 0x6C7573655278616DLL;
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

uint64_t sub_24F398C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F399014(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F398C8C(uint64_t a1)
{
  v2 = sub_24F398D3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F398CC8(uint64_t a1)
{
  v2 = sub_24F398D3C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F398D3C()
{
  result = qword_27F241128;
  if (!qword_27F241128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241128);
  }

  return result;
}

unint64_t sub_24F398D90()
{
  result = qword_27F241130;
  if (!qword_27F241130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241130);
  }

  return result;
}

uint64_t sub_24F398DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamesRecentlyPlayedDataIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F398E48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F398EA8()
{
  result = qword_27F241138;
  if (!qword_27F241138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241138);
  }

  return result;
}

unint64_t sub_24F398F10()
{
  result = qword_27F241140;
  if (!qword_27F241140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241140);
  }

  return result;
}

unint64_t sub_24F398F68()
{
  result = qword_27F241148;
  if (!qword_27F241148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241148);
  }

  return result;
}

unint64_t sub_24F398FC0()
{
  result = qword_27F241150;
  if (!qword_27F241150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241150);
  }

  return result;
}

uint64_t sub_24F399014(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C7573655278616DLL && a2 == 0xEA00000000007374 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65674178616DLL && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000)
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

unint64_t sub_24F399184@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  v4 = v1[1];
  v17 = *v1;
  *(inited + 48) = v17;
  *(inited + 32) = 0x676E656C6C616863;
  *(inited + 40) = 0xEB00000000444965;
  v5 = MEMORY[0x277D837D0];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 88) = 0x656D614E656D6167;
  *(inited + 96) = 0xE800000000000000;
  v16 = v4;
  *(inited + 128) = v5;
  *(inited + 136) = v6;
  *(inited + 104) = v4;
  *(inited + 144) = 0xD000000000000011;
  *(inited + 152) = 0x800000024FA747F0;
  v18 = *(v1 + 4);
  v7 = v18;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  *(inited + 184) = v8;
  v9 = sub_24E61B71C(&qword_27F213798);
  *(inited + 160) = v7;
  *(inited + 192) = v9;
  *(inited + 200) = 0xD000000000000016;
  v15 = *(v1 + 5);
  v10 = v15;
  *(inited + 240) = v8;
  *(inited + 248) = v9;
  *(inited + 208) = 0x800000024FA6F180;
  *(inited + 216) = v10;
  sub_24E614DB0(&v17, v14);
  sub_24E614DB0(&v16, v14);
  sub_24F399B08(&v18, v14);
  sub_24F399B08(&v15, v14);
  v11 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v12 = sub_24E80FFAC(v11);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v12;
  return result;
}

uint64_t sub_24F39939C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241168);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F399AB4();
  sub_24F92D128();
  LOBYTE(v11) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_24F92CD08();
    v11 = *(v3 + 32);
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    sub_24E61B71C(&qword_27F2137A0);
    sub_24F92CD48();
    v11 = *(v3 + 40);
    HIBYTE(v10) = 3;
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24F3995E8()
{
  v1 = 0x676E656C6C616863;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x656D614E656D6167;
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

uint64_t sub_24F399670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F399C90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F399698(uint64_t a1)
{
  v2 = sub_24F399AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3996D4(uint64_t a1)
{
  v2 = sub_24F399AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24F399730@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_24F3997A4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_24F3997A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241158);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F399AB4();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v26) = 0;
  v9 = sub_24F92CC28();
  v24 = v10;
  LOBYTE(v26) = 1;
  v11 = sub_24F92CC28();
  v23 = v12;
  v20 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  v25 = 2;
  v21 = sub_24E61B71C(&qword_27F216420);
  v22 = v13;
  sub_24F92CC68();
  v19 = v26;
  v25 = 3;
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v14 = v26;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v16 = v24;
  *a2 = v9;
  a2[1] = v16;
  v17 = v23;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v19;
  a2[5] = v14;
  return result;
}

unint64_t sub_24F399AB4()
{
  result = qword_27F241160;
  if (!qword_27F241160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241160);
  }

  return result;
}

uint64_t sub_24F399B08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F399B8C()
{
  result = qword_27F241170;
  if (!qword_27F241170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241170);
  }

  return result;
}

unint64_t sub_24F399BE4()
{
  result = qword_27F241178;
  if (!qword_27F241178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241178);
  }

  return result;
}

unint64_t sub_24F399C3C()
{
  result = qword_27F241180;
  if (!qword_27F241180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241180);
  }

  return result;
}

uint64_t sub_24F399C90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E656C6C616863 && a2 == 0xEB00000000444965;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA747F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA6F180 == a2)
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

uint64_t GameRecordingsDataIntent.playerID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24F399E58()
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

uint64_t sub_24F399EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449726579616C70 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E7542656D6167 && a2 == 0xED0000734449656CLL)
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

uint64_t sub_24F399F84(uint64_t a1)
{
  v2 = sub_24F39A1C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F399FC0(uint64_t a1)
{
  v2 = sub_24F39A1C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameRecordingsDataIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241188);
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F39A1C8();
  sub_24F92D128();
  v13 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    sub_24E61B71C(&qword_27F2137A0);
    sub_24F92CD48();
  }

  return (*(v10 + 8))(v6, v4);
}

unint64_t sub_24F39A1C8()
{
  result = qword_27F241190;
  if (!qword_27F241190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241190);
  }

  return result;
}

uint64_t GameRecordingsDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241198);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F39A1C8();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  v16 = 1;
  sub_24E61B71C(&qword_27F216420);
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F39A4D8()
{
  result = qword_27F2411A0;
  if (!qword_27F2411A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2411A0);
  }

  return result;
}

unint64_t sub_24F39A530()
{
  result = qword_27F2411A8;
  if (!qword_27F2411A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2411A8);
  }

  return result;
}

unint64_t sub_24F39A588()
{
  result = qword_27F2411B0;
  if (!qword_27F2411B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2411B0);
  }

  return result;
}

uint64_t sub_24F39A5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x46776F4E79616C70 && a2 == 0xEB00000000646565)
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

uint64_t sub_24F39A688(uint64_t a1)
{
  v2 = sub_24F39AEA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F39A6C4(uint64_t a1)
{
  v2 = sub_24F39AEA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F39A700(uint64_t a1)
{
  v2 = sub_24F39AEF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F39A73C(uint64_t a1)
{
  v2 = sub_24F39AEF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F39A790(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2411E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2411E8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F39AEA0();
  sub_24F92D128();
  sub_24F39AEF4();
  sub_24F92CC98();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t AMSEngagementEnqueueResult.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_24F92C188();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
  v4 = sub_24F92CF68();
  v5 = [objc_opt_self() valueWithObject:v4 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928);
  result = sub_24E6360E0();
  a2[4] = result;
  *a2 = v5;
  return result;
}

unint64_t sub_24F39AA28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_24F92C188();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
  v4 = sub_24F92CF68();
  v5 = [objc_opt_self() valueWithObject:v4 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928);
  result = sub_24E6360E0();
  a2[4] = result;
  *a2 = v5;
  return result;
}

unint64_t sub_24F39AB00()
{
  result = qword_27F2411B8;
  if (!qword_27F2411B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2411B8);
  }

  return result;
}

uint64_t sub_24F39AB54(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2411C0);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2411C8);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F39AEA0();
  sub_24F92D108();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_24F92CC78();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_24E643448() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_24F92C918();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v16 = &type metadata for OnDevicePersonalizationRequest;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_24F39AEF4();
  sub_24F92CBA8();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

unint64_t sub_24F39AEA0()
{
  result = qword_27F2411D0;
  if (!qword_27F2411D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2411D0);
  }

  return result;
}

unint64_t sub_24F39AEF4()
{
  result = qword_27F2411D8;
  if (!qword_27F2411D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2411D8);
  }

  return result;
}

unint64_t sub_24F39AF6C()
{
  result = qword_27F2411F0;
  if (!qword_27F2411F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2411F0);
  }

  return result;
}

unint64_t sub_24F39AFC4()
{
  result = qword_27F2411F8;
  if (!qword_27F2411F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2411F8);
  }

  return result;
}

unint64_t sub_24F39B01C()
{
  result = qword_27F241200;
  if (!qword_27F241200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241200);
  }

  return result;
}

unint64_t sub_24F39B074()
{
  result = qword_27F241208;
  if (!qword_27F241208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241208);
  }

  return result;
}

unint64_t sub_24F39B0CC()
{
  result = qword_27F241210;
  if (!qword_27F241210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241210);
  }

  return result;
}

uint64_t sub_24F39B134(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216968);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F39B204(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216968);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for GameLockupDetailsStackView()
{
  result = qword_27F241218;
  if (!qword_27F241218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F39B300()
{
  sub_24E66ECF0(319, &qword_27F254DE0);
  if (v0 <= 0x3F)
  {
    sub_24F39B3E0();
    if (v1 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F2169A8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F39B3E0()
{
  if (!qword_27F216990)
  {
    type metadata accessor for DescriptionLabelConfig(255);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F216990);
    }
  }
}

__n128 sub_24F39B454@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241228);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v17 - v6;
  *v7 = sub_24F924C98();
  *(v7 + 1) = 0x4000000000000000;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241230);
  sub_24F39B5F8(v2, &v7[*(v8 + 44)]);
  KeyPath = swift_getKeyPath();
  v10 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241238) + 36)];
  *v10 = KeyPath;
  v10[8] = 0;
  v11 = swift_getKeyPath();
  v12 = &v7[*(v5 + 44)];
  *v12 = v11;
  *(v12 + 1) = 2;
  v12[16] = 0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24F39D1A0(v7, a1);
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241240) + 36);
  v14 = v17[5];
  *(v13 + 64) = v17[4];
  *(v13 + 80) = v14;
  *(v13 + 96) = v17[6];
  v15 = v17[1];
  *v13 = v17[0];
  *(v13 + 16) = v15;
  result = v17[3];
  *(v13 + 32) = v17[2];
  *(v13 + 48) = result;
  return result;
}

uint64_t sub_24F39B5F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a2;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241248);
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v131 = (&v127 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216968);
  MEMORY[0x28223BE20](v4 - 8);
  v142 = &v127 - v5;
  v141 = type metadata accessor for DescriptionLabelConfig(0);
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v130 = (&v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241250);
  MEMORY[0x28223BE20](v7 - 8);
  v147 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v157 = &v127 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v11);
  v135 = &v127 - v12;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217370);
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v136 = &v127 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241258);
  MEMORY[0x28223BE20](v14 - 8);
  v144 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v159 = &v127 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241260);
  MEMORY[0x28223BE20](v18 - 8);
  v143 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v156 = (&v127 - v21);
  v22 = sub_24F9297D8();
  v151 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24F929888();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146B0);
  MEMORY[0x28223BE20](v133);
  v134 = &v127 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241268);
  v137 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v132 = &v127 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241270);
  MEMORY[0x28223BE20](v32 - 8);
  v155 = &v127 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v34);
  v158 = &v127 - v36;
  v37 = a1;
  v38 = a1[1];
  v154 = v11;
  v153 = v22;
  v152 = v25;
  v150 = v26;
  v149 = v24;
  if (v38)
  {
    *&v163 = *v37;
    *(&v163 + 1) = v38;
    sub_24E600AEC();

    v39 = sub_24F925E18();
    v41 = v40;
    v43 = v42;
    type metadata accessor for GameLockupDetailsStackView();
    v44 = sub_24F925C98();
    v129 = v37;
    v45 = v44;
    v47 = v46;
    v128 = v30;
    v49 = v48;
    v51 = v50;
    sub_24E600B40(v39, v41, v43 & 1);

    *&v163 = v45;
    *(&v163 + 1) = v47;
    LOBYTE(v39) = v49 & 1;
    LOBYTE(v164) = v49 & 1;
    *(&v164 + 1) = v51;
    v52 = v134;
    sub_24F9268B8();
    v53 = v45;
    v37 = v129;
    v54 = v150;
    v55 = v151;
    sub_24E600B40(v53, v47, v39);

    LODWORD(v39) = sub_24F9251C8();
    v56 = (v52 + *(v133 + 36));
    v57 = *(v154 + 36);
    v58 = *MEMORY[0x277CE13B8];
    v59 = sub_24F927748();
    v60 = v56 + v57;
    v61 = v149;
    (*(*(v59 - 8) + 104))(v60, v58, v59);
    *v56 = v39;
    v62 = v153;
    (*(v55 + 104))(v61, *MEMORY[0x277D22068], v153);
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    sub_24F929818();
    sub_24E601704(&v161, &qword_27F2129B0);
    sub_24E601704(&v163, &qword_27F2129B0);
    (*(v55 + 8))(v61, v62);
    sub_24F39D2D8();
    v63 = v132;
    sub_24F925EE8();
    (*(v54 + 8))(v28, v152);
    sub_24E601704(v52, &qword_27F2146B0);
    v64 = v137;
    v65 = v158;
    v66 = v128;
    (*(v137 + 4))(v158, v63, v128);
    (*(v64 + 7))(v65, 0, 1, v66);
  }

  else
  {
    (*(v137 + 7))(v158, 1, 1, v30, v35);
  }

  v67 = sub_24F9249A8();
  v68 = v156;
  *v156 = v67;
  v68[1] = 0x4010000000000000;
  *(v68 + 16) = 0;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241278);
  sub_24F39C6F4(v37, v68 + *(v69 + 44));
  v70 = v37[5];
  if (v70)
  {
    *&v163 = v37[4];
    *(&v163 + 1) = v70;
    sub_24E600AEC();

    v71 = sub_24F925E18();
    v73 = v72;
    v75 = v74;
    v137 = v28;
    type metadata accessor for GameLockupDetailsStackView();
    v76 = sub_24F925C98();
    v78 = v77;
    v80 = v79;
    sub_24E600B40(v71, v73, v75 & 1);

    LODWORD(v71) = sub_24F9251C8();
    v81 = *(v154 + 36);
    v82 = *MEMORY[0x277CE13B8];
    v83 = sub_24F927748();
    v84 = v135;
    (*(*(v83 - 8) + 104))(&v135[v81], v82, v83);
    *v84 = v71;
    sub_24E602068(&qword_27F214428, &qword_27F213F10);
    v85 = sub_24F925C58();
    v87 = v86;
    v88 = v37;
    v90 = v89;
    v92 = v91;
    v134 = v91;
    sub_24E600B40(v76, v78, v80 & 1);

    sub_24E601704(v84, &qword_27F213F10);
    *&v163 = v85;
    *(&v163 + 1) = v87;
    LOBYTE(v78) = v90 & 1;
    v37 = v88;
    LOBYTE(v164) = v78;
    *(&v164 + 1) = v92;
    v93 = v151;
    v94 = v149;
    v95 = v153;
    (*(v151 + 104))(v149, *MEMORY[0x277D22070], v153);
    v161 = 0u;
    v162 = 0u;
    memset(v160, 0, sizeof(v160));
    v96 = v137;
    sub_24F929818();
    sub_24E601704(v160, &qword_27F2129B0);
    sub_24E601704(&v161, &qword_27F2129B0);
    (*(v93 + 8))(v94, v95);
    v97 = v136;
    sub_24F925EE8();
    (*(v150 + 8))(v96, v152);
    sub_24E600B40(v85, v87, v78);

    v98 = v138;
    v99 = v159;
    v100 = v139;
    (*(v138 + 32))(v159, v97, v139);
    v101 = 0;
  }

  else
  {
    v101 = 1;
    v99 = v159;
    v100 = v139;
    v98 = v138;
  }

  (*(v98 + 56))(v99, v101, 1, v100);
  v102 = type metadata accessor for GameLockupDetailsStackView();
  v103 = v142;
  sub_24E60169C(v37 + *(v102 + 28), v142, &qword_27F216968);
  if ((*(v140 + 48))(v103, 1, v141) == 1)
  {
    sub_24E601704(v103, &qword_27F216968);
    v104 = v157;
    (*(v145 + 56))(v157, 1, 1, v146);
  }

  else
  {
    v105 = v130;
    sub_24F39D210(v103, v130);
    v106 = sub_24F9249A8();
    v107 = v131;
    *v131 = v106;
    *(v107 + 8) = 0x4010000000000000;
    *(v107 + 16) = 0;
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C7C0);
    sub_24F39CE68(v105, v107 + *(v108 + 44));
    v109 = *(v37 + *(v102 + 44));
    KeyPath = swift_getKeyPath();
    v111 = (v107 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C7A8) + 36));
    *v111 = KeyPath;
    v111[1] = v109;

    LODWORD(v109) = sub_24F9251C8();
    v112 = v146;
    v113 = (v107 + *(v146 + 36));
    v114 = *(v154 + 36);
    v115 = *MEMORY[0x277CE13B8];
    v116 = sub_24F927748();
    (*(*(v116 - 8) + 104))(&v113[v114], v115, v116);
    *v113 = v109;
    v104 = v157;
    sub_24E6009C8(v107, v157, &qword_27F241248);
    (*(v145 + 56))(v104, 0, 1, v112);
    sub_24F39D27C(v105);
  }

  v117 = v155;
  sub_24E60169C(v158, v155, &qword_27F241270);
  v118 = v156;
  v119 = v143;
  sub_24E60169C(v156, v143, &qword_27F241260);
  v120 = v144;
  sub_24E60169C(v159, v144, &qword_27F241258);
  v121 = v104;
  v122 = v147;
  sub_24E60169C(v121, v147, &qword_27F241250);
  v123 = v148;
  sub_24E60169C(v117, v148, &qword_27F241270);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241280);
  sub_24E60169C(v119, v123 + v124[12], &qword_27F241260);
  sub_24E60169C(v120, v123 + v124[16], &qword_27F241258);
  sub_24E60169C(v122, v123 + v124[20], &qword_27F241250);
  v125 = v123 + v124[24];
  *v125 = 0;
  *(v125 + 8) = 256;
  sub_24E601704(v157, &qword_27F241250);
  sub_24E601704(v159, &qword_27F241258);
  sub_24E601704(v118, &qword_27F241260);
  sub_24E601704(v158, &qword_27F241270);
  sub_24E601704(v122, &qword_27F241250);
  sub_24E601704(v120, &qword_27F241258);
  sub_24E601704(v119, &qword_27F241260);
  return sub_24E601704(v155, &qword_27F241270);
}

uint64_t sub_24F39C6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F9297D8();
  v73 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v70 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F929888();
  v71 = *(v6 - 8);
  v72 = v6;
  MEMORY[0x28223BE20](v6);
  v69 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1A8);
  MEMORY[0x28223BE20](v65);
  v66 = &v63 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241290);
  MEMORY[0x28223BE20](v68);
  v75 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v74 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241298);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v63 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2412A0);
  MEMORY[0x28223BE20](v16 - 8);
  v67 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v76 = &v63 - v19;
  if (*(a1 + *(type metadata accessor for GameLockupDetailsStackView() + 36) + 8))
  {

    v63 = sub_24F926E48();
    v20 = sub_24F9251C8();
    v21 = v4;
    v22 = a2;
    v23 = &v15[*(v12 + 36)];
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30);
    v64 = a1;
    v25 = *(v24 + 28);
    v26 = *MEMORY[0x277CE1050];
    v27 = sub_24F926E78();
    (*(*(v27 - 8) + 104))(v23 + v25, v26, v27);
    *v23 = swift_getKeyPath();
    a2 = v22;
    v4 = v21;
    *v15 = v63;
    *(v15 + 2) = v20;
    v28 = v76;
    sub_24E6009C8(v15, v76, &qword_27F241298);
    v29 = v28;
    a1 = v64;
    (*(v13 + 56))(v29, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v76, 1, 1, v12);
  }

  v30 = *(a1 + 24);
  *&v78 = *(a1 + 16);
  *(&v78 + 1) = v30;
  sub_24E600AEC();

  v31 = sub_24F925E18();
  v33 = v32;
  v35 = v34;
  v36 = sub_24F925C98();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_24E600B40(v31, v33, v35 & 1);

  *&v78 = v36;
  *(&v78 + 1) = v38;
  LOBYTE(v79) = v40 & 1;
  *(&v79 + 1) = v42;
  v43 = v66;
  sub_24F9268B8();
  sub_24E600B40(v36, v38, v40 & 1);

  v44 = sub_24F925198();
  *(v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358) + 36)) = v44;
  v45 = *(v65 + 36);
  v46 = *MEMORY[0x277CE13B8];
  v47 = sub_24F927748();
  (*(*(v47 - 8) + 104))(v43 + v45, v46, v47);
  v48 = v73;
  v49 = v70;
  (*(v73 + 104))(v70, *MEMORY[0x277D22050], v4);
  v78 = 0u;
  v79 = 0u;
  memset(v77, 0, sizeof(v77));
  v50 = v69;
  sub_24F929818();
  sub_24E601704(v77, &qword_27F2129B0);
  sub_24E601704(&v78, &qword_27F2129B0);
  (*(v48 + 8))(v49, v4);
  sub_24E7261F0();
  v51 = v74;
  sub_24F925EE8();
  (*(v71 + 8))(v50, v72);
  sub_24E601704(v43, &qword_27F21A1A8);
  v52 = sub_24F925828();
  sub_24F923318();
  v53 = v67;
  v54 = v51 + *(v68 + 36);
  *v54 = v52;
  *(v54 + 8) = v55;
  *(v54 + 16) = v56;
  *(v54 + 24) = v57;
  *(v54 + 32) = v58;
  *(v54 + 40) = 0;
  v59 = v76;
  sub_24E60169C(v76, v53, &qword_27F2412A0);
  v60 = v75;
  sub_24E60169C(v51, v75, &qword_27F241290);
  sub_24E60169C(v53, a2, &qword_27F2412A0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2412A8);
  sub_24E60169C(v60, a2 + *(v61 + 48), &qword_27F241290);
  sub_24E601704(v51, &qword_27F241290);
  sub_24E601704(v59, &qword_27F2412A0);
  sub_24E601704(v60, &qword_27F241290);
  return sub_24E601704(v53, &qword_27F2412A0);
}

uint64_t sub_24F39CE68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v31 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2171D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  if (a1[3])
  {

    v32 = sub_24F926E48();
    v14 = (v7 + *(v4 + 36));
    v15 = a2;
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
    v17 = *MEMORY[0x277CE1050];
    v18 = sub_24F926E78();
    v19 = v14 + v16;
    a2 = v15;
    (*(*(v18 - 8) + 104))(v19, v17, v18);
    *v14 = swift_getKeyPath();
    *v7 = v32;
    sub_24E6009C8(v7, v13, &qword_27F22DF20);
    (*(v5 + 56))(v13, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(&v31 - v12, 1, 1, v4);
  }

  v20 = *a1;
  v21 = a1[1];
  v33 = v20;
  v34 = v21;
  sub_24E600AEC();

  v22 = sub_24F925E18();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_24E60169C(v13, v10, &qword_27F2171D8);
  sub_24E60169C(v10, a2, &qword_27F2171D8);
  v29 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C7E8) + 48);
  *v29 = v22;
  *(v29 + 8) = v24;
  *(v29 + 16) = v26 & 1;
  *(v29 + 24) = v28;
  sub_24E5FD138(v22, v24, v26 & 1);

  sub_24E601704(v13, &qword_27F2171D8);
  sub_24E600B40(v22, v24, v26 & 1);

  return sub_24E601704(v10, &qword_27F2171D8);
}

uint64_t sub_24F39D1A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241228);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F39D210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DescriptionLabelConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F39D27C(uint64_t a1)
{
  v2 = type metadata accessor for DescriptionLabelConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F39D2D8()
{
  result = qword_27F241288;
  if (!qword_27F241288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146B0);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F213F88, &qword_27F213F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241288);
  }

  return result;
}

unint64_t sub_24F39D3CC()
{
  result = qword_27F2412B0;
  if (!qword_27F2412B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241240);
    sub_24F39D458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2412B0);
  }

  return result;
}

unint64_t sub_24F39D458()
{
  result = qword_27F2412B8;
  if (!qword_27F2412B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241228);
    sub_24F39D510();
    sub_24E602068(&qword_27F214778, &qword_27F214780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2412B8);
  }

  return result;
}

unint64_t sub_24F39D510()
{
  result = qword_27F2412C0;
  if (!qword_27F2412C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241238);
    sub_24F39D5C8();
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2412C0);
  }

  return result;
}