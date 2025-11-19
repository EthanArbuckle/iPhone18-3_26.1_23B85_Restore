uint64_t sub_219582F14(uint64_t a1)
{
  sub_21875D45C(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AudioIntentsData();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21875D788(a1, v4, sub_21875D45C);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v9 = sub_21875D45C;
    v10 = v4;
    return sub_21875D7F0(v10, v9);
  }

  sub_2195837C4(v4, v8, type metadata accessor for AudioIntentsData);
  v11 = *v8;
  v12 = [*v8 sourceChannelID];
  if (v12)
  {
    v13 = v12;
    sub_219BF5414();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = [v11 sourceName];
  if (v16)
  {
    v17 = v16;
    sub_219BF5414();
    v19 = v18;

    if (v15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v20 = 0;
    if (v19)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v19 = 0;
  if (!v15)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = sub_219BF53D4();

  if (v19)
  {
LABEL_9:
    v21 = sub_219BF53D4();

    goto LABEL_13;
  }

LABEL_12:
  v21 = 0;
LABEL_13:
  v52 = [objc_allocWithZone(MEMORY[0x277CD3DB8]) initWithIdentifier:v20 title:v21 type:6 artwork:0];

  if (!*(v8 + *(type metadata accessor for AudioFeedTrack(0) + 32) + 8))
  {
    v22 = [v11 title];
    if (v22)
    {
      v23 = v22;
      sub_219BF5414();
    }
  }

  v24 = *(v8 + *(v5 + 24));

  v25 = v24;
  v26 = [v11 sourceName];
  if (v26)
  {
    v27 = v26;
    sub_219BF5414();
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = sub_219BF53D4();
  v31 = sub_219BF53D4();

  if (v29)
  {
    v32 = sub_219BF53D4();
  }

  else
  {
    v32 = 0;
  }

  v33 = [objc_allocWithZone(MEMORY[0x277CD3DB8]) initWithIdentifier:v30 title:v31 type:7 artwork:v25 artist:v32];

  v34 = sub_2186C6148(0, &unk_280E8E408);
  sub_219583830(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_219C146A0;
  *(v35 + 32) = v33;
  v36 = v33;
  v37 = v52;
  v38 = sub_219BF6634();
  if (*(v8 + *(v5 + 28)) == 1)
  {
    v39 = [objc_allocWithZone(MEMORY[0x277CD3D58]) initWithIntent:v38 response:0];
    v40 = sub_219BF53D4();
    [v39 setGroupIdentifier_];

    aBlock[4] = sub_2195835C8;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218E29720;
    aBlock[3] = &block_descriptor_139;
    v41 = _Block_copy(aBlock);
    [v39 donateInteractionWithCompletion_];

    _Block_release(v41);
    v36 = v39;
  }

  else
  {
    v42 = objc_opt_self();
    v43 = [v42 sharedManager];
    [v43 setPredictionMode:1 forType:7];

    v44 = [v42 sharedManager];
    sub_219583830(0, &qword_280E8B590, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_219C09BA0;
    *(v45 + 56) = v34;
    *(v45 + 32) = v38;
    v46 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v47 = v38;
    v48 = sub_219BF5904();

    v49 = [v46 initWithArray_];

    [v44 setSuggestedMediaIntents_];
  }

  v9 = type metadata accessor for AudioIntentsData;
  v10 = v8;
  return sub_21875D7F0(v10, v9);
}

void sub_2195835C8(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_219BDB714();
    sub_21875D490(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_219C09BA0;
    *(v2 + 56) = sub_2186C6148(0, &qword_27CC18100);
    *(v2 + 64) = sub_21958374C();
    *(v2 + 32) = v1;
    sub_2186C6148(0, &qword_280E8D790);
    v3 = v1;
    v4 = sub_219BF6F44();
    sub_219BF6214();
    sub_219BE5314();
  }

  else
  {
    sub_2186C6148(0, &qword_280E8D790);
    v4 = sub_219BF6F44();
    sub_219BF6214();
    sub_219BE5314();
  }
}

unint64_t sub_21958374C()
{
  result = qword_27CC23590;
  if (!qword_27CC23590)
  {
    sub_2186C6148(255, &qword_27CC18100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC23590);
  }

  return result;
}

uint64_t sub_2195837C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_219583830(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_219583880(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AudioFeedTrack(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);

  return sub_219582A14(a1, a2, v7, v2 + v6, v9, v10, v11);
}

uint64_t objectdestroy_24Tm_0()
{
  v1 = type metadata accessor for AudioFeedTrack(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v19 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  swift_unknownObjectRelease();

  v4 = v0 + v2 + v1[8];

  if (*(v4 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1(v4 + 32);
  }

  v5 = type metadata accessor for AudioFeedTrack.Configurables(0);
  v6 = v5[7];
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  if (*(v4 + v5[8] + 8) != 1)
  {
  }

  v9 = v5[9];
  v10 = sub_219BE7434();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  v12 = v3 + v1[12];
  sub_219BDD6E4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    sub_218C16270();
    v15 = *(v14 + 48);
    v16 = sub_219BDE3B4();
    (*(*(v16 - 8) + 8))(v12 + v15, v16);
  }

  v17 = (((v19 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  sub_2186C6190(*(v0 + v17), *(v0 + v17 + 8));

  return swift_deallocObject();
}

uint64_t sub_219583C44(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AudioFeedTrack(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = (v1 + v4);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v5);
  v11 = *(v1 + v5 + 8);
  v12 = *(v1 + v5 + 16);

  return a1(v6, v1 + v3, v8, v9, v10, v11, v12);
}

uint64_t objectdestroy_12Tm_3()
{
  v1 = type metadata accessor for AudioFeedTrack(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  swift_unknownObjectRelease();

  v4 = v0 + v2 + v1[8];

  if (*(v4 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1(v4 + 32);
  }

  v5 = type metadata accessor for AudioFeedTrack.Configurables(0);
  v6 = v5[7];
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  if (*(v4 + v5[8] + 8) != 1)
  {
  }

  v9 = v5[9];
  v10 = sub_219BE7434();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  v12 = v3 + v1[12];
  sub_219BDD6E4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    sub_218C16270();
    v15 = *(v14 + 48);
    v16 = sub_219BDE3B4();
    (*(*(v16 - 8) + 8))(v12 + v15, v16);
  }

  return swift_deallocObject();
}

uint64_t sub_219583FE8(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AudioFeedTrack(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((v6 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);

  return sub_2195824F4(a1, a2, v7, v2 + v6, v9, v10, v11);
}

uint64_t sub_2195840B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218718690(v3 + 16, v12);
  v7 = *(v3 + 56);
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v12[5] = v7;
  v13 = *(v3 + 64);
  sub_21958423C(v11, v10);
  sub_2189C018C(0);
  swift_allocObject();
  sub_2194527DC();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v8 = sub_219BE6E64();
  sub_219584298(v11);
  return v8;
}

unint64_t sub_2195841C0()
{
  result = qword_27CC0B0A0;
  if (!qword_27CC0B0A0)
  {
    type metadata accessor for ChannelIssuesModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B0A0);
  }

  return result;
}

uint64_t type metadata accessor for SponsoredBannerTagFeedGroupKnobs()
{
  result = qword_280EA4AA0;
  if (!qword_280EA4AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219584360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_2195845A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219584A00(0, &qword_27CC1BFC8, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195849AC();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2189AD5C8();
    sub_21877C5E8(&qword_280E91A88, sub_2189AD5C8);
    sub_219BF7674();
    sub_219584360(v6, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219584794(uint64_t a1)
{
  v2 = sub_2195849AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2195847D0(uint64_t a1)
{
  v2 = sub_2195849AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219584824(void *a1)
{
  sub_219584A00(0, &qword_27CC1BFD8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195849AC();
  sub_219BF7B44();
  sub_2189AD5C8();
  sub_21877C5E8(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2195849AC()
{
  result = qword_27CC1BFD0;
  if (!qword_27CC1BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BFD0);
  }

  return result;
}

void sub_219584A00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2195849AC();
    v7 = a3(a1, &type metadata for SponsoredBannerTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219584A78()
{
  result = qword_27CC1BFE0;
  if (!qword_27CC1BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BFE0);
  }

  return result;
}

unint64_t sub_219584AD0()
{
  result = qword_27CC1BFE8;
  if (!qword_27CC1BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BFE8);
  }

  return result;
}

unint64_t sub_219584B28()
{
  result = qword_27CC1BFF0;
  if (!qword_27CC1BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BFF0);
  }

  return result;
}

uint64_t sub_219584B8C(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    return 0;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_219BDB5E4();

  return v3;
}

uint64_t sub_219584CF0()
{
  v1 = 0x746E65636572;
  if (*v0 != 1)
  {
    v1 = 0x64616F6C6E776F64;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4E676E6964616572;
  }
}

uint64_t sub_219584D54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (v2 == 1)
      {
        return 1;
      }
    }

    else if (v2 == 2)
    {
      return 1;
    }
  }

  else if (!*a2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_219584D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v98 = a7;
  v99 = a8;
  *&v95 = a5;
  v82 = a4;
  v100 = a1;
  v11 = sub_219BDBD34();
  v94 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v93 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BEC064();
  MEMORY[0x28223BE20](v13 - 8);
  v89 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE0104();
  v91 = *(v15 - 8);
  v92 = v15;
  MEMORY[0x28223BE20](v15);
  v90 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_219BDF604();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_219BDF5F4();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_219BDF7C4();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_219BDEEF4();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BDF624();
  v78 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219585DEC(0, &unk_280EE32D8, MEMORY[0x277D2D680], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v68 - v25;
  v27 = sub_219BEC4B4();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v97 = result;
    v101 = a6;
    v102 = v98;
    v103 = v99;
    v104 = a9;
    v32 = sub_219BEBCF4();
    sub_219BEBCD4();
    v33 = (*(v28 + 48))(v26, 1, v27);
    v34 = &unk_219C09000;
    v74 = v11;
    v73 = a3;
    v96 = v32;
    if (v33 == 1)
    {
      sub_219585D60(v26);
      LODWORD(v99) = *MEMORY[0x277CEAD18];
      v35 = 0x8000000219D27340;
LABEL_14:
      v98 = v35;

      v49 = v79;
      sub_219BDF7B4();
      sub_219585DEC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v51 = v50;
      v52 = sub_219BDCD44();
      v77 = v52;
      v53 = *(v52 - 8);
      v82 = *(v53 + 72);
      v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v76 = v51;
      v55 = swift_allocObject();
      v95 = v34[186];
      *(v55 + 16) = v95;
      v78 = *(v53 + 104);
      v56 = v99;
      (v78)(v55 + v54, v99, v52);
      sub_219585E50(&qword_280EE8680, MEMORY[0x277D2DD68]);
      v57 = v81;
      sub_219BDCCC4();

      (*(v80 + 8))(v49, v57);
      (*(v84 + 16))(v83, v97 + qword_280EA7470, v85);
      LODWORD(v99) = v56;
      v58 = v86;
      sub_219BDF5E4();
      v59 = swift_allocObject();
      *(v59 + 16) = v95;
      v60 = v77;
      v61 = v78;
      (v78)(v59 + v54, v56, v77);
      sub_219585E50(&unk_280EE8728, MEMORY[0x277D2DC48]);
      v62 = v88;
      sub_219BDCCC4();

      (*(v87 + 8))(v58, v62);
      v63 = v89;
      sub_219BEBCE4();
      v64 = v90;
      sub_2198D3AE0(v63, v90);
      v65 = swift_allocObject();
      *(v65 + 16) = v95;
      v61(v65 + v54, v99, v60);
      sub_219585E50(&qword_280EE84B0, MEMORY[0x277D2E350]);
      v66 = v92;
      sub_219BDCCC4();

      (*(v91 + 8))(v64, v66);
      sub_219BE0344();
      v67 = v93;
      sub_219BEBCC4();
      sub_219585E50(&qword_280EE8438, MEMORY[0x277D2E4B0]);
      sub_219BDCC74();

      return (*(v94 + 8))(v67, v74);
    }

    (*(v28 + 32))(v30, v26, v27);
    result = sub_219BEC4A4();
    if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v36 > -2147483650.0)
    {
      if (v36 < 2147483650.0)
      {
        sub_219BDF614();
        sub_219585DEC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v38 = v37;
        v39 = sub_219BDCD44();
        v40 = *(v39 - 8);
        v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v70 = *(v40 + 72);
        v71 = v38;
        v42 = swift_allocObject();
        v68 = xmmword_219C09BA0;
        *(v42 + 16) = xmmword_219C09BA0;
        v43 = *(v40 + 104);
        LODWORD(v99) = *MEMORY[0x277CEAD18];
        v72 = v39;
        v69 = v43;
        v43(v42 + v41);
        sub_219585E50(&unk_280EE8708, MEMORY[0x277D2DC78]);
        v98 = 0x8000000219D27340;
        sub_219BDCCC4();

        (*(v78 + 8))(v23, v21);
        result = sub_219BEC494();
        if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v44 > -2147483650.0)
          {
            if (v44 < 2147483650.0)
            {
              result = sub_219BEC494();
              if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v45 > -2147483650.0)
                {
                  if (v45 < 2147483650.0)
                  {
                    v46 = v75;
                    sub_219BDEEE4();
                    v47 = swift_allocObject();
                    *(v47 + 16) = v68;
                    v69(v47 + v41, v99, v72);
                    sub_219585E50(&qword_280EE8928, MEMORY[0x277D2D760]);
                    v35 = v98;
                    v48 = v77;
                    sub_219BDCCC4();

                    (*(v76 + 8))(v46, v48);
                    (*(v28 + 8))(v30, v27);
                    v34 = &unk_219C09000;
                    goto LABEL_14;
                  }

LABEL_24:
                  __break(1u);
                  return result;
                }

LABEL_23:
                __break(1u);
                goto LABEL_24;
              }

LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_219585BB4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  v1 = qword_280EA7470;
  v2 = sub_219BDF604();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_219585C24()
{
  sub_219585BB4();

  return swift_deallocClassInstance();
}

uint64_t sub_219585C8C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(sub_219BEBCF4() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_219584D90(a1, v1[6], v1 + v8, *v9, v9[1], v3, v4, v5, v6);
}

uint64_t sub_219585D60(uint64_t a1)
{
  sub_219585DEC(0, &unk_280EE32D8, MEMORY[0x277D2D680], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219585DEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219585E50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ChannelPickerAssembly.load(in:)()
{
  sub_219BE2044();
  sub_2186C709C(0, qword_280EB8F70);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EB5058);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EB66D0);
  sub_219BE19C4();

  sub_219BE2054();
  sub_219BE28F4();
}

uint64_t sub_219586000@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for ChannelPickerMainModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for ChannelPickerMainModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2195860B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  if (!v56)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6100);
  result = sub_219BE1E34();
  if (!v55)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EAD3B0);
  result = sub_219BE1E34();
  if (!v53)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA3480);
  result = sub_219BE1E34();
  if (!v51)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90230);
  result = sub_219BE1E34();
  if (!v49)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v32 = v5;
  v33 = v57;
  v34 = v56;
  v35 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6570);
  result = sub_219BE1E34();
  if (v47)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
    v31[1] = v31;
    MEMORY[0x28223BE20](v6);
    v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
    v31[0] = v31;
    MEMORY[0x28223BE20](v10);
    v12 = (v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v8;
    v15 = *v12;
    v16 = type metadata accessor for ChannelPickerConfigManager();
    v45[3] = v16;
    v45[4] = &off_282A45268;
    v45[0] = v14;
    v17 = type metadata accessor for MagazineCategoryConfigService();
    v43 = v17;
    v44 = &off_282A6EDE8;
    v42[0] = v15;
    type metadata accessor for ChannelPickerDataManager();
    v18 = swift_allocObject();
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v45, v16);
    MEMORY[0x28223BE20](v19);
    v21 = (v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
    MEMORY[0x28223BE20](v23);
    v25 = (v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v27 = *v21;
    v28 = *v25;
    v40 = v16;
    v41 = &off_282A45268;
    v38 = &off_282A6EDE8;
    *&v39 = v27;
    v37 = v17;
    *&v36 = v28;
    v18[4] = 0;
    swift_unknownObjectWeakInit();
    v18[32] = MEMORY[0x277D84F98];
    v29 = v33;
    v18[10] = v34;
    v18[11] = v29;
    sub_2186CB1F0(&v54, (v18 + 12));
    sub_2186CB1F0(&v39, (v18 + 5));
    v18[2] = v32;
    sub_2186CB1F0(&v36, (v18 + 17));
    sub_2186CB1F0(&v48, (v18 + 22));
    sub_2186CB1F0(&v46, (v18 + 27));
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v45);
    __swift_destroy_boxed_opaque_existential_1(v50);
    result = __swift_destroy_boxed_opaque_existential_1(v52);
    v30 = v35;
    *v35 = v18;
    v30[1] = &off_282A605F0;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2195866CC()
{
  type metadata accessor for ChannelPickerViewController();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_27CC1C000);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1C008);
  sub_219BE2914();
  type metadata accessor for ChannelPickerRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC1C010);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1C018);
  sub_219BE2914();

  sub_2186C709C(0, &unk_27CC1C020);
  sub_219BE2914();

  sub_218BEF91C(0);
  sub_219BE2904();

  type metadata accessor for ChannelPickerBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC1C030);
  sub_219BE2914();

  sub_21958B7DC();
  sub_219BE2904();
  sub_219BE19D4();

  sub_21958BEE4();
  sub_219BE2904();

  sub_21958B8C8();
  sub_219BE2904();

  sub_218BF0358();
  sub_219BE2904();

  sub_218BEFE7C();
  sub_219BE2904();

  type metadata accessor for ChannelPickerBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_21958C020();
  sub_219BE2904();

  sub_2186C6148(0, &qword_280E8E4C0);
  sub_219BE2904();

  sub_218BF0580();
  sub_219BE2904();
  sub_219BE19D4();

  sub_21958B9D0();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_280EE3DE0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21958BB4C();
  sub_219BE2904();
  sub_219BE19D4();

  sub_21958BD64();
  sub_219BE2904();
  sub_219BE19D4();

  sub_218BF0130();
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  type metadata accessor for ChannelPickerBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for ChannelPickerBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();
  sub_219BE19D4();

  sub_21958C334(0, &qword_27CC1C100, MEMORY[0x277D6E388]);
  sub_219BE2904();

  sub_219BE70E4();
  sub_219BE2904();

  sub_21958C15C();
  sub_219BE2904();
  sub_219BE19D4();

  sub_21958C248();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80);
  sub_219BE2914();
}

uint64_t sub_2195870C4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1C000);
  result = sub_219BE1E34();
  if (!v71)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1C010);
  result = sub_219BE1E34();
  if (!v68)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958C020();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280ED7980);
  result = sub_219BE1E34();
  if (!v67)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (v65 == 3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v48 = v65;
  v49 = v69;
  v50 = v3;
  v51 = v68;
  v47 = v64;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  v46 = v63;
  if (v63 != 2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_27CC15058);
    sub_219BE1E34();
    v42 = v61;
    v43 = v62;
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
    v45 = &v40;
    MEMORY[0x28223BE20](v4);
    v6 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
    v44 = &v40;
    MEMORY[0x28223BE20](v8);
    v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v6;
    v13 = *v10;
    v14 = type metadata accessor for ChannelPickerStyler();
    v59 = v14;
    v60 = &off_282A736D8;
    v58[0] = v12;
    v15 = type metadata accessor for SearchModule();
    v56 = v15;
    v57 = &off_282A75F38;
    v55[0] = v13;
    v16 = type metadata accessor for ChannelPickerViewController();
    v17 = objc_allocWithZone(v16);
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
    v41 = &v40;
    MEMORY[0x28223BE20](v18);
    v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
    v40 = &v40;
    MEMORY[0x28223BE20](v22);
    v24 = (&v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24);
    v26 = *v20;
    v27 = *v24;
    v54[3] = v14;
    v54[4] = &off_282A736D8;
    v53[4] = &off_282A75F38;
    v54[0] = v26;
    v53[3] = v15;
    v53[0] = v27;
    *&v17[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_searchController] = 0;
    swift_unknownObjectWeakInit();
    *&v17[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_selectionProvider + 8] = 0;
    swift_unknownObjectWeakInit();
    v28 = &v17[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_postPurchaseOnboardingTransitionDelegate];
    *v28 = 0;
    v28[1] = 0;
    *&v17[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController____lazy_storage___closeBarButtonItem] = 0;
    sub_218718690(v54, &v17[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_styler]);
    v29 = &v17[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_eventHandler];
    v30 = v50;
    v31 = v49;
    *v29 = v51;
    v29[1] = v31;
    *&v17[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_blueprintViewController] = v30;
    sub_218718690(v53, &v17[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_searchModule]);
    v32 = &v17[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_pickerType];
    v33 = v48;
    *v32 = v47;
    v32[1] = v33;
    v17[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_useAlternateTitle] = v46 & 1;
    v34 = v43;
    *v28 = v42;
    v28[1] = v34;
    v52.receiver = v17;
    v52.super_class = v16;
    swift_unknownObjectRetain();
    v35 = v30;
    swift_unknownObjectRetain();
    v36 = objc_msgSendSuper2(&v52, sel_initWithNibName_bundle_, 0, 0, v40, v41);
    *(*&v36[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_eventHandler] + 24) = &off_282A5F4A0;
    swift_unknownObjectWeakAssign();
    v37 = *&v36[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_blueprintViewController];
    v38 = v36;
    v39 = v37;
    sub_219BE8744();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(v54);
    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_destroy_boxed_opaque_existential_1(v58);
    __swift_destroy_boxed_opaque_existential_1(v66);
    __swift_destroy_boxed_opaque_existential_1(v70);
    return v38;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2195877D0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21958C248();
  result = sub_219BE1E24();
  if (result)
  {
    *(v2 + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_selectionProvider + 8) = sub_21958BD1C(&qword_27CC1C198, sub_21958C248);
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219587898@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v20)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v4);
    v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for BaseStyler();
    v18[3] = v9;
    v10 = sub_21958BD1C(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v18[4] = v10;
    v18[0] = v8;
    v11 = type metadata accessor for ChannelPickerStyler();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v9);
    MEMORY[0x28223BE20](v13);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v12[5] = v9;
    v12[6] = v10;
    v12[2] = v17;
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    a2[3] = v11;
    a2[4] = &off_282A736D8;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219587AF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280EC5430);
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for ChannelPickerRouter();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      result = sub_2186CB1F0(v9, v8 + 24);
      *(v8 + 64) = v5;
      *(v8 + 72) = v6;
      a2[3] = v7;
      a2[4] = &off_282A51E38;
      *a2 = v8;
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

void sub_219587C04(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ChannelPickerViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_219587C84@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1C018);
  result = sub_219BE1E34();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1C008);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_27CC1C020);
  result = sub_219BE1E34();
  if (v17)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v7);
    v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    MEMORY[0x28223BE20](v11);
    v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v14 + 16))(v13);
    v15 = sub_21958CA08(v5, v6, *v9, *v13);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v15;
    a2[1] = &off_282A81BB8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219587F34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB5058);
  result = sub_219BE1E34();
  v5 = v24;
  if (!v24)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958B7DC();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ChannelPickerBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  v20 = v25;
  v21 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v22[0])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  v23[3] = v8;
  v23[4] = sub_21958BD1C(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  v23[0] = v9;
  sub_219BE89E4();
  swift_allocObject();
  v10 = sub_219BE8994();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6570);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8FF60);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E97530);
  result = sub_219BE1E34();
  if (v22[3])
  {
    sub_21958C87C();
    v12 = swift_allocObject();
    *(v12 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v12 + 168) = xmmword_219C43500;
    *(v12 + 48) = v5;
    *(v12 + 56) = v20;
    *(v12 + 32) = v6;
    *(v12 + 40) = v7;
    *(v12 + 64) = v10;
    sub_218718690(v23, v12 + 72);
    *(v12 + 112) = v11;
    sub_218718690(v22, v12 + 120);
    sub_21876EF88();
    v13 = sub_219BE3514();
    v14 = *(v13 - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_219C0B8C0;
    v18 = v17 + v16;
    v19 = *(v14 + 104);
    v19(v18, *MEMORY[0x277D314F0], v13);
    v19(v18 + v15, *MEMORY[0x277D31468], v13);
    v19(v18 + 2 * v15, *MEMORY[0x277D31470], v13);
    *(v12 + 160) = v17;
    *(v5 + 32) = &off_282AA0DD0;
    swift_unknownObjectWeakAssign();
    [*(v12 + 112) addObserver_];
    __swift_destroy_boxed_opaque_existential_1(v22);
    result = __swift_destroy_boxed_opaque_existential_1(v23);
    *v21 = v12;
    v21[1] = &off_282AA0DE0;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2195883D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for ChannelPickerTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282AA0500;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219588484(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1C030);
  result = sub_219BE1E34();
  if (v21)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE9F20);
    result = sub_219BE1E34();
    v3 = v18;
    if (v18)
    {
      v4 = v19;
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      MEMORY[0x28223BE20](v5);
      v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for ChannelPickerSectionFactory();
      v17[3] = v10;
      v17[4] = &off_282A654A0;
      v17[0] = v9;
      type metadata accessor for ChannelPickerBlueprintModifierFactory();
      v11 = swift_allocObject();
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v10);
      MEMORY[0x28223BE20](v12);
      v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v15 + 16))(v14);
      v16 = *v14;
      v11[5] = v10;
      v11[6] = &off_282A654A0;
      v11[2] = v16;
      v11[7] = v3;
      v11[8] = v4;
      __swift_destroy_boxed_opaque_existential_1(v17);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2195886FC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEF91C(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21958B8C8();
    result = sub_219BE1E24();
    if (result)
    {
      sub_21958B7DC();
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2195887E4(uint64_t a1, void *a2)
{
  sub_218BF0B54(0);
  swift_allocObject();
  sub_219BE96E4();
  sub_21958C7BC(0, &unk_27CC1C170, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_21958BD1C(&qword_27CC0EF40, sub_218BF0B54);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21958BEE4();
  result = sub_219BE1E24();
  if (result)
  {
    swift_allocObject();
    sub_21958BD1C(&qword_27CC1C180, sub_21958BEE4);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21958897C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEFE7C();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ChannelPickerBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BF0358();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_21958BEE4();
    swift_allocObject();
    return sub_219BEA484();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_219588B74(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958B9D0();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_21958B8C8();
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

uint64_t sub_219588CA0(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_219588D10(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E99CF0);
  result = sub_219BE1E34();
  if (!v109)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E98568);
  result = sub_219BE1E34();
  if (!v107)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E950C0);
  result = sub_219BE1E34();
  if (!v105)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E94038);
  result = sub_219BE1E34();
  if (!v103)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E93180);
  result = sub_219BE1E34();
  if (!v101)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v99)
  {
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v108, v109);
    v81 = v66;
    MEMORY[0x28223BE20](v3);
    v5 = (v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5);
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v106, v107);
    v80 = v66;
    MEMORY[0x28223BE20](v7);
    v9 = (v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v104, v105);
    v79 = v66;
    MEMORY[0x28223BE20](v11);
    v13 = (v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v102, v103);
    v78 = v66;
    MEMORY[0x28223BE20](v15);
    v17 = (v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v100, v101);
    v77 = v66;
    MEMORY[0x28223BE20](v19);
    v21 = (v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v98, v99);
    v76 = v66;
    MEMORY[0x28223BE20](v23);
    v25 = (v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v27 = *v5;
    v28 = *v9;
    v29 = *v13;
    v30 = *v17;
    v31 = *v21;
    v32 = *v25;
    v33 = type metadata accessor for ChannelTagLayoutAttributesFactory();
    v97[3] = v33;
    v97[4] = &off_282A664E8;
    v97[0] = v27;
    v75 = type metadata accessor for ChannelCoinLayoutAttributesFactory();
    v95 = v75;
    v96 = &off_282A4EBC0;
    v94[0] = v28;
    v74 = type metadata accessor for ChannelCategoryLayoutAttributesFactory();
    v92 = v74;
    v93 = &off_282A8E198;
    v91[0] = v29;
    v73 = type metadata accessor for ChannelEngagementLayoutAttributesFactory();
    v89 = v73;
    v90 = &off_282A35A88;
    v88[0] = v30;
    v72 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributesFactory();
    v86 = v72;
    v87 = &off_282A59FA0;
    v85[0] = v31;
    v71 = type metadata accessor for BaseStyler();
    v83 = v71;
    v69 = sub_21958BD1C(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v84 = v69;
    v82[0] = v32;
    type metadata accessor for ChannelPickerBlueprintLayoutBuilder();
    v34 = swift_allocObject();
    v35 = __swift_mutable_project_boxed_opaque_existential_1(v97, v33);
    v70 = v66;
    v67 = v33;
    MEMORY[0x28223BE20](v35);
    v37 = (v66 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37);
    v39 = __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
    v68 = v66;
    MEMORY[0x28223BE20](v39);
    v41 = (v66 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v42 + 16))(v41);
    v43 = __swift_mutable_project_boxed_opaque_existential_1(v91, v92);
    v66[3] = v66;
    MEMORY[0x28223BE20](v43);
    v45 = (v66 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v46 + 16))(v45);
    v47 = __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
    v66[2] = v66;
    MEMORY[0x28223BE20](v47);
    v49 = (v66 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v50 + 16))(v49);
    v51 = __swift_mutable_project_boxed_opaque_existential_1(v85, v86);
    v66[1] = v66;
    MEMORY[0x28223BE20](v51);
    v53 = (v66 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v54 + 16))(v53);
    v55 = __swift_mutable_project_boxed_opaque_existential_1(v82, v83);
    MEMORY[0x28223BE20](v55);
    v57 = (v66 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v58 + 16))(v57);
    v59 = *v37;
    v60 = *v41;
    v61 = *v45;
    v62 = *v49;
    v63 = *v53;
    v64 = *v57;
    v34[5] = v67;
    v34[6] = &off_282A664E8;
    v34[2] = v59;
    v34[10] = v75;
    v34[11] = &off_282A4EBC0;
    v34[7] = v60;
    v34[15] = v74;
    v34[16] = &off_282A8E198;
    v34[12] = v61;
    v34[20] = v73;
    v34[21] = &off_282A35A88;
    v34[17] = v62;
    v34[25] = v72;
    v34[26] = &off_282A59FA0;
    v34[27] = v64;
    v34[22] = v63;
    v65 = v69;
    v34[30] = v71;
    v34[31] = v65;
    __swift_destroy_boxed_opaque_existential_1(v82);
    __swift_destroy_boxed_opaque_existential_1(v85);
    __swift_destroy_boxed_opaque_existential_1(v88);
    __swift_destroy_boxed_opaque_existential_1(v91);
    __swift_destroy_boxed_opaque_existential_1(v94);
    __swift_destroy_boxed_opaque_existential_1(v97);
    __swift_destroy_boxed_opaque_existential_1(v98);
    __swift_destroy_boxed_opaque_existential_1(v100);
    __swift_destroy_boxed_opaque_existential_1(v102);
    __swift_destroy_boxed_opaque_existential_1(v104);
    __swift_destroy_boxed_opaque_existential_1(v106);
    __swift_destroy_boxed_opaque_existential_1(v108);
    return v34;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_21958991C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEF91C(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958B9D0();
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
  sub_21958C334(0, &qword_27CC1C100, MEMORY[0x277D6E388]);
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
    sub_21958BD1C(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_21958C020();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_219589C44(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BF0580();
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

uint64_t sub_219589CF4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_218BF0580();
    v3 = objc_allocWithZone(v2);
    return sub_219BE9454();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219589D8C(void *a1)
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
  sub_21958BB4C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958BD64();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BF0130();
  result = sub_219BE1E24();
  if (result)
  {
    sub_21958B9D0();
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219589F00(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ChannelPickerViewController();
  result = sub_219BE1E24();
  if (result)
  {
    return sub_219BE7BD4();
  }

  __break(1u);
  return result;
}

uint64_t sub_219589F64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958B9D0();
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

uint64_t sub_21958A01C()
{
  v0 = sub_219BE80A4();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0]);
  return sub_219BE9574();
}

uint64_t sub_21958A0EC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEF91C(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEFE7C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ChannelPickerBlueprintViewCellProvider();
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
  type metadata accessor for ChannelPickerBlueprintViewSupplementaryViewProvider();
  result = sub_219BE1E24();
  if (result)
  {
    *&v8[0] = v3;
    sub_21958BB4C();
    v7 = objc_allocWithZone(v6);
    return sub_219BE9B64();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_21958A288(void *a1, void *a2)
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

uint64_t sub_21958A3A0(uint64_t a1, void *a2)
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

uint64_t sub_21958A47C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEF91C(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEFE7C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958C334(0, &qword_27CC1C100, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_21958BD1C(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_21958BD64();
    v4 = objc_allocWithZone(v3);
    return sub_219BE9744();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_21958A6E8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21958C15C();
  if (sub_219BE1E24())
  {
    sub_21958BD1C(&unk_27CC1C160, sub_21958C15C);
  }

  return sub_219BE9774();
}

uint64_t sub_21958A820(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC8910);
  result = sub_219BE1E34();
  if (!v27)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC5938);
  result = sub_219BE1E34();
  if (!v25)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB9030);
  result = sub_219BE1E34();
  if (!v23)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB1258);
  result = sub_219BE1E34();
  if (v21)
  {
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    MEMORY[0x28223BE20](v3);
    v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v6 + 16))(v5);
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    MEMORY[0x28223BE20](v7);
    v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v11);
    v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v14 + 16))(v13);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x28223BE20](v15);
    v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v18 + 16))(v17);
    v19 = sub_21958C3D0(*v5, *v9, *v13, *v17);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v24);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v19;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_21958AC60(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ChannelPickerViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A5F490;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_21958ACF4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9E068);
  result = sub_219BE1E34();
  if (v16)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for ChannelPickerHeaderViewRenderer();
    v14[3] = v7;
    v14[4] = &off_282A99498;
    v14[0] = v6;
    type metadata accessor for ChannelPickerBlueprintViewSupplementaryViewProvider();
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v7);
    MEMORY[0x28223BE20](v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[7] = v7;
    v8[8] = &off_282A99498;
    v8[3] = 0;
    v8[4] = v13;
    swift_unknownObjectWeakInit();
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21958AF10(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ChannelPickerViewController();
  v3 = sub_219BE1E24();
  if (v3)
  {
    *(v2 + 24) = &off_282A5F480;
    v4 = v3;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21958AFA4(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_21958C334(0, &unk_27CC1C150, MEMORY[0x277D6E380]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEF91C(0);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_21958C334(0, &qword_27CC1C100, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21958B230(void *a1)
{
  sub_2187F2110();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958C15C();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_21958BD1C(&qword_27CC1C148, sub_21958C15C);
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

uint64_t sub_21958B374(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEF91C(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21958B9D0();
    result = sub_219BE1E24();
    if (result)
    {
      sub_21958C15C();
      swift_allocObject();
      return sub_219BE9094();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21958B490(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958B9D0();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218BEF91C(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_21958C248();
      swift_allocObject();
      return sub_219BE9AB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21958B5A4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958B9D0();
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

uint64_t sub_21958B660(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21958C020();
  v7 = sub_219BE1E24();
  if (v7)
  {
    v8 = v7;
    v9 = sub_21958BD1C(a3, sub_21958C020);
    v7 = v8;
  }

  else
  {
    v9 = 0;
  }

  return a5(v7, v9);
}

uint64_t sub_21958B714@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958C020();
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_21958BD1C(&qword_27CC1C128, sub_21958C020);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21958B7DC()
{
  if (!qword_27CC1C038)
  {
    sub_218BEF91C(255);
    sub_21958B8C8();
    sub_21958BD1C(&qword_27CC0EE98, sub_218BEF91C);
    sub_21958BD1C(&qword_27CC1C0C8, sub_21958B8C8);
    v0 = sub_219BE6F54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1C038);
    }
  }
}

void sub_21958B8C8()
{
  if (!qword_27CC1C040)
  {
    type metadata accessor for ChannelPickerElementModel();
    sub_21958B9D0();
    sub_218951A90();
    sub_21958BD1C(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel);
    sub_21958BD1C(&qword_27CC1C0C0, sub_21958B9D0);
    v0 = sub_219BE72E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1C040);
    }
  }
}

void sub_21958B9D0()
{
  if (!qword_27CC1C048)
  {
    sub_2186C6148(255, &qword_280E8E4C0);
    sub_21958BB4C();
    sub_21958BD64();
    sub_218BF0130();
    type metadata accessor for ChannelPickerViewController();
    sub_21958BD1C(&qword_27CC1C0A8, sub_21958BB4C);
    sub_21958BD1C(&unk_27CC1C0B0, sub_21958BD64);
    sub_21958BD1C(&qword_27CC0EED0, sub_218BF0130);
    v0 = sub_219BE7BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1C048);
    }
  }
}

void sub_21958BB4C()
{
  if (!qword_27CC1C058)
  {
    sub_218BEF91C(255);
    sub_218BEFE7C();
    type metadata accessor for ChannelPickerBlueprintViewCellProvider();
    type metadata accessor for ChannelPickerBlueprintViewSupplementaryViewProvider();
    sub_21958BD1C(&qword_27CC0EE98, sub_218BEF91C);
    sub_21958BD1C(&qword_27CC1C070, sub_218BEFE7C);
    sub_21958BD1C(&qword_27CC1C078, type metadata accessor for ChannelPickerBlueprintViewCellProvider);
    sub_21958BD1C(&unk_27CC1C080, type metadata accessor for ChannelPickerBlueprintViewSupplementaryViewProvider);
    sub_21958BD1C(&qword_27CC0D178, type metadata accessor for ChannelPickerLayoutModel);
    v0 = sub_219BE9B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1C058);
    }
  }
}

uint64_t sub_21958BD1C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21958BD64()
{
  if (!qword_27CC1C090)
  {
    sub_218BEF91C(255);
    sub_218BEFE7C();
    type metadata accessor for ChannelPickerViewController();
    sub_21958BD1C(&qword_27CC0EE98, sub_218BEF91C);
    sub_21958BD1C(&qword_27CC1C070, sub_218BEFE7C);
    sub_21958BD1C(&qword_27CC1C098, type metadata accessor for ChannelPickerViewController);
    sub_21958BD1C(&qword_27CC0D178, type metadata accessor for ChannelPickerLayoutModel);
    v0 = sub_219BE9794();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1C090);
    }
  }
}

void sub_21958BEE4()
{
  if (!qword_27CC1C0D0)
  {
    sub_218BEFE7C();
    type metadata accessor for ChannelPickerBlueprintLayoutBuilder();
    sub_218BF0358();
    sub_21958BD1C(&qword_27CC1C070, sub_218BEFE7C);
    sub_21958BD1C(&qword_27CC1C0E8, type metadata accessor for ChannelPickerBlueprintLayoutBuilder);
    sub_21958BD1C(&qword_27CC1C0F0, sub_218BF0358);
    v0 = sub_219BEA4A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1C0D0);
    }
  }
}

void sub_21958C020()
{
  if (!qword_27CC1C0F8)
  {
    sub_218BEF91C(255);
    sub_21958B9D0();
    type metadata accessor for ChannelPickerViewController();
    sub_21958BD1C(&qword_27CC0EE98, sub_218BEF91C);
    sub_21958BD1C(&qword_27CC1C0C0, sub_21958B9D0);
    sub_21958BD1C(&qword_27CC1C098, type metadata accessor for ChannelPickerViewController);
    v0 = sub_219BE8774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1C0F8);
    }
  }
}

void sub_21958C15C()
{
  if (!qword_27CC1C108)
  {
    sub_218BEF91C(255);
    sub_21958B9D0();
    sub_21958BD1C(&qword_27CC1C110, sub_218BEF91C);
    sub_21958BD1C(&qword_27CC1C0C0, sub_21958B9D0);
    v0 = sub_219BE90A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1C108);
    }
  }
}

void sub_21958C248()
{
  if (!qword_27CC1C118)
  {
    sub_21958B9D0();
    sub_218BEF91C(255);
    sub_21958BD1C(&qword_27CC1C0C0, sub_21958B9D0);
    sub_21958BD1C(&qword_27CC1C110, sub_218BEF91C);
    v0 = sub_219BE9AD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1C118);
    }
  }
}

void sub_21958C334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_218BEF91C(255);
    v7 = v6;
    v8 = sub_21958BD1C(&qword_27CC0EE98, sub_218BEF91C);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *sub_21958C3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for ChannelTagRenderer();
  v44[3] = v9;
  v44[4] = &off_282A662E8;
  v44[0] = a1;
  v10 = type metadata accessor for ChannelCoinRenderer();
  v42 = v10;
  v43 = &off_282A91088;
  v41[0] = a2;
  v11 = type metadata accessor for ChannelCategoryRenderer();
  v39 = v11;
  v40 = &off_282A600C0;
  v38[0] = a3;
  v36 = v8;
  v37 = &off_282A69648;
  v35[0] = a4;
  type metadata accessor for ChannelPickerBlueprintViewCellProvider();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v44, v9);
  MEMORY[0x28223BE20](v13);
  v15 = (&v35[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  MEMORY[0x28223BE20](v17);
  v19 = (&v35[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x28223BE20](v21);
  v23 = (&v35[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  MEMORY[0x28223BE20](v25);
  v27 = (&v35[-1] - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v15;
  v30 = *v19;
  v31 = *v23;
  v32 = *v27;
  v12[7] = v9;
  v12[8] = &off_282A662E8;
  v12[12] = v10;
  v12[13] = &off_282A91088;
  v12[9] = v30;
  v12[17] = v11;
  v12[18] = &off_282A600C0;
  v12[14] = v31;
  v12[22] = v8;
  v12[23] = &off_282A69648;
  v12[19] = v32;
  v12[3] = 0;
  v12[4] = v29;
  swift_unknownObjectWeakInit();
  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v12;
}

void sub_21958C7BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ChannelPickerSectionDescriptor;
    v8[1] = type metadata accessor for ChannelPickerElementModel();
    v8[2] = sub_218951A90();
    v8[3] = sub_21958BD1C(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21958C87C()
{
  if (!qword_27CC1C188)
  {
    type metadata accessor for ChannelPickerBlueprintModifierFactory();
    sub_21958BD1C(&qword_27CC1C190, type metadata accessor for ChannelPickerBlueprintModifierFactory);
    v0 = type metadata accessor for ChannelPickerInteractor();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1C188);
    }
  }
}

void *sub_21958C910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for ChannelPickerRouter();
  v15[4] = &off_282A51E38;
  v15[0] = a3;
  v14[3] = type metadata accessor for ChannelPickerTracker();
  v14[4] = &off_282AA0500;
  v14[0] = a4;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_218718690(v15, (a5 + 6));
  sub_218718690(v14, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_282A81B80, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_21958CA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v24 = type metadata accessor for ChannelPickerRouter();
  v25 = &off_282A51E38;
  v23[0] = a3;
  v21 = v8;
  v22 = &off_282AA0500;
  v20[0] = a4;
  type metadata accessor for ChannelPickerEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  MEMORY[0x28223BE20](v14);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_21958C910(a1, a2, *v12, *v16, v9);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

uint64_t type metadata accessor for TopicRecipesTagFeedGroupConfigData()
{
  result = qword_280E9E300;
  if (!qword_280E9E300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21958CC88@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21958D1B8(0, &qword_280E8C8E8, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958D164();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 45;
    v13 = type metadata accessor for TopicRecipesTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21958CEF0(void *a1)
{
  v3 = v1;
  sub_21958D1B8(0, &qword_27CC1C1A0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958D164();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for TopicRecipesTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21958D0BC(uint64_t a1)
{
  v2 = sub_21958D164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21958D0F8(uint64_t a1)
{
  v2 = sub_21958D164();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21958D164()
{
  result = qword_280E9E338[0];
  if (!qword_280E9E338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9E338);
  }

  return result;
}

void sub_21958D1B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21958D164();
    v7 = a3(a1, &type metadata for TopicRecipesTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21958D230()
{
  result = qword_27CC1C1A8[0];
  if (!qword_27CC1C1A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CC1C1A8);
  }

  return result;
}

unint64_t sub_21958D288()
{
  result = qword_280E9E328;
  if (!qword_280E9E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E328);
  }

  return result;
}

unint64_t sub_21958D2E0()
{
  result = qword_280E9E330;
  if (!qword_280E9E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E330);
  }

  return result;
}

uint64_t sub_21958D334()
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

uint64_t sub_21958D3F8()
{
  sub_21958F610();
  swift_allocObject();

  swift_unknownObjectRetain();

  return sub_219BE3014();
}

void sub_21958D4B8()
{
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

  v2 = (v0 + *(*v0 + 136));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  (*(v4 + 40))(v3, v4);
  if (qword_280EE98D8 != -1)
  {
    swift_once();
  }

  swift_getWitnessTable();
  sub_219BDCA54();
  sub_219BE3204();
  sub_2187D9028();
  v5 = sub_219BF66A4();
  sub_219BE2F94();

  v6 = sub_219BF66A4();
  sub_219BE2FE4();
}

uint64_t sub_21958D718()
{
  sub_219BE3204();
  v0 = sub_219BE2CC4();
  sub_21958F530();
  type metadata accessor for SportsManagementDataManager();
  swift_unknownObjectRetain();
  sub_219BE2F84();

  v1 = sub_219BE2E54();
  sub_219BE2F64();

  v2 = sub_219BE2E54();
  v3 = sub_219BE2FD4();

  return v3;
}

uint64_t sub_21958D870(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v3;
  v7 = *(a1 + 64);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v8 = (*(*(v2 + 88) + 40))(v6, *(v2 + 80));
  sub_218BB5768();
  sub_21958F1E4(&qword_27CC1C238, sub_218BB5768);

  sub_219BE6EF4();
}

uint64_t sub_21958D9B4()
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

uint64_t sub_21958DA6C()
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

uint64_t sub_21958DB24()
{
  v1 = *v0;
  sub_219BE6EC4();
  v2 = sub_2189828F0();

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

uint64_t sub_21958DCBC(uint64_t a1, uint64_t a2, char a3)
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

uint64_t sub_21958DDA4()
{
  if (qword_280EE98D8 != -1)
  {
    swift_once();
  }

  swift_getWitnessTable();
  sub_219BDCA54();
  sub_219BE3204();
  v0 = sub_219BE1C44();
  v1 = sub_219BE3034();

  return v1;
}

uint64_t sub_21958DED0(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v35 = a2;
  v30 = *v2;
  v32 = type metadata accessor for SportsManagementModel();
  MEMORY[0x28223BE20](v32);
  v33 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21958F28C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189525B0();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21958F2C0(0, &qword_27CC0AFB0, MEMORY[0x277D6EC60]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v27 - v15;
  v31 = v2;
  v29 = v2[4];
  sub_219BE6EC4();
  v36 = v37;
  sub_218987380();
  sub_21958F1E4(&qword_27CC15100, sub_218987380);
  sub_219BE7B94();
  v17 = v9;

  sub_219BEB1D4();
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    (*(v14 + 8))(v16, v13);
    v18 = sub_21958F28C;
    return sub_21958F22C(v6, v18);
  }

  v28 = v14;
  (*(v9 + 32))(v11, v6, v8);
  v6 = v33;
  v19 = v34;
  sub_219BE5FC4();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v17 + 8))(v11, v8);
    (*(v28 + 8))(v16, v13);
    v18 = type metadata accessor for SportsManagementModel;
    return sub_21958F22C(v6, v18);
  }

  v32 = v16;
  v20 = *v6;
  v21 = __swift_project_boxed_opaque_existential_1((v31 + *(*v31 + 144)), *(v31 + *(*v31 + 144) + 24));
  v33 = v11;
  sub_219BE5F84();
  v22 = *(*(*v21 + 16) + OBJC_IVAR____TtC7NewsUI219SubscriptionService_subscriptionController);
  v27[1] = v20;
  v23 = [*(v20 + 16) identifier];
  if (!v23)
  {
    sub_219BF5414();
    v23 = sub_219BF53D4();
  }

  v24 = sub_219BF53D4();
  v25 = [v22 moveSubscriptionForTagID:v23 beforeTagID:v24];

  if (v25)
  {
    v37 = (*(*(v30 + 88) + 48))(v19, v35, *(v30 + 80));
    sub_218BB5768();
    sub_21958F1E4(&qword_27CC1C238, sub_218BB5768);
    sub_219BE6EF4();

    (*(v17 + 8))(v33, v8);
    (*(v28 + 8))(v32, v13);
  }

  else
  {

    (*(v17 + 8))(v33, v8);
    return (*(v28 + 8))(v32, v13);
  }
}

uint64_t sub_21958E460()
{
  sub_2189525B0();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219113A7C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE91F4();
  v18 = *(v9 - 8);
  v19 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21958E76C(v0, v11);
  v17[2] = sub_219BE9034();
  v17[1] = *(v0 + *(*v0 + 128));
  sub_219BEAF14();
  sub_219BE9054();
  v12 = sub_219BE5F84();
  v14 = v13;
  (*(v3 + 8))(v5, v2);
  v15 = sub_218E969B8(v12, v14, 0);

  if (v15)
  {
    swift_unknownObjectRetain();
  }

  sub_219BF3314();
  sub_219BE89E4();
  sub_219BE7094();
  sub_21958F22C(v8, sub_219113A7C);

  sub_219BE9204();

  return (*(v18 + 8))(v11, v19);
}

uint64_t sub_21958E76C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v42 = a1;
  v47 = a2;
  sub_218BA1CA4();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189525B0();
  v5 = v4;
  v44 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21958F2C0(0, &qword_27CC0AFB0, MEMORY[0x277D6EC60]);
  v9 = v8;
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - v10;
  sub_218D1CD20();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189522EC();
  v45 = *(v15 - 8);
  v46 = v15;
  MEMORY[0x28223BE20](v15);
  v38 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BE7634();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE9064();
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == *MEMORY[0x277D6DA60])
  {
    (*(v18 + 96))(v20, v17);
    sub_218AEF9F8();
    v23 = *(v22 + 48);
    v24 = sub_219BDC104();
    v25 = *(*(v24 - 8) + 8);
    v25(&v20[v23], v24);
    v25(v20, v24);
  }

  else if (v21 == *MEMORY[0x277D6DA68])
  {
    (*(v18 + 8))(v20, v17);
  }

  else if (v21 == *MEMORY[0x277D6DA70])
  {
    sub_219BE6EC4();
    v48 = v49;
    sub_218987380();
    sub_21958F1E4(&qword_27CC15100, sub_218987380);
    sub_219BE7B94();

    sub_219BE9054();
    sub_219BE5F84();
    (*(v44 + 8))(v7, v5);
    sub_219BEB244();

    (*(v43 + 8))(v11, v9);
    v31 = v45;
    v30 = v46;
    if ((*(v45 + 48))(v14, 1, v46) == 1)
    {
      sub_21958F22C(v14, sub_218D1CD20);
    }

    else
    {
      v34 = v38;
      (*(v31 + 32))(v38, v14, v30);
      v35 = v39;
      sub_219BE6974();
      sub_21958F1E4(&qword_27CC1C230, sub_218BA1CA4);
      v36 = v41;
      sub_219BF5DF4();
      sub_219BF5E84();
      v37 = sub_219BF5E74();
      (*(v40 + 8))(v35, v36);
      (*(v31 + 8))(v34, v30);
      if (v37 >= 2)
      {
        v26 = MEMORY[0x277D6E440];
        goto LABEL_6;
      }
    }
  }

  else if (v21 != *MEMORY[0x277D6DA78])
  {
    v32 = *MEMORY[0x277D6E448];
    v33 = sub_219BE91F4();
    (*(*(v33 - 8) + 104))(v47, v32, v33);
    return (*(v18 + 8))(v20, v17);
  }

  v26 = MEMORY[0x277D6E448];
LABEL_6:
  v27 = *v26;
  v28 = sub_219BE91F4();
  return (*(*(v28 - 8) + 104))(v47, v27, v28);
}

uint64_t sub_21958EE54(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, _UNKNOWN **))
{
  v4 = v2;
  v6 = *v4;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a2(a1, result, v6, &off_282A79B20);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *sub_21958EEF8()
{
  v1 = *v0;
  sub_218774F78((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + *(*v0 + 136));
  __swift_destroy_boxed_opaque_existential_1(v0 + *(*v0 + 144));
  return v0;
}

uint64_t sub_21958EFF0()
{
  sub_21958EEF8();

  return swift_deallocClassInstance();
}

uint64_t sub_21958F0F0(uint64_t a1)
{
  (*(*(*v1 + 88) + 56))(a1, *(*v1 + 80));
  sub_218BB5768();
  sub_21958F1E4(&qword_27CC1C238, sub_218BB5768);
  sub_219BE6EF4();
}

uint64_t sub_21958F1E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21958F22C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21958F2C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SportsManagementSectionDescriptor();
    v8[1] = type metadata accessor for SportsManagementModel();
    v8[2] = sub_21958F1E4(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor);
    v8[3] = sub_21958F1E4(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21958F3B4()
{
  v1 = *(v0 + *(*v0 + 120));
  v2 = v1[17];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v2);
  return (*(v3 + 32))(v2, v3);
}

uint64_t sub_21958F428(uint64_t a1)
{
  v1 = (a1 + *(*a1 + 136));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 48))(v2, v3);
}

void sub_21958F530()
{
  if (!qword_27CC1C240)
  {
    v0 = MEMORY[0x277D83940];
    sub_218846DC4(255, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
    sub_218846DC4(255, &qword_27CC177A8, type metadata accessor for SportsManagementSection, v0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27CC1C240);
    }
  }
}

void sub_21958F610()
{
  if (!qword_27CC1C248)
  {
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1C248);
    }
  }
}

uint64_t sub_21958F68C(uint64_t a1)
{
  v3 = __swift_project_boxed_opaque_existential_1((*v1 + 24), *(*v1 + 48));
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = -1;
  v5 = v4 | 0x6000000000000006;
  type metadata accessor for AlertMagazineContentUnavailableInStoreFront();
  v6 = swift_allocObject();
  v7 = *v3;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;

  sub_218C4E47C(a1, v6, sub_218C4E474, v8, v7);

  return 1;
}

unint64_t sub_21958F788()
{
  result = qword_280EC7BA0;
  if (!qword_280EC7BA0)
  {
    type metadata accessor for MagazineFeedURLHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7BA0);
  }

  return result;
}

void sub_21958F7F0()
{
  if (!qword_280E923F8)
  {
    type metadata accessor for DateRangeTagFeedGroupConfigData();
    sub_219595000(&qword_280EA9740, type metadata accessor for DateRangeTagFeedGroupConfigData);
    sub_219595000(qword_280EA9748, type metadata accessor for DateRangeTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E923F8);
    }
  }
}

uint64_t type metadata accessor for DateRangeTagFeedGroupEmitter()
{
  result = qword_280EB4928;
  if (!qword_280EB4928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21958F91C()
{
  sub_21958F7F0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DateRangeTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21958F9D0()
{
  sub_219593758(0, &qword_27CC133D0, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D31C68]);
  sub_219BED904();
  v0 = sub_219BE2E54();
  sub_219BE2F64();

  v1 = sub_219BE2E54();
  sub_2186DEF40(0, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  v2 = sub_219BE2F74();

  return v2;
}

uint64_t sub_21958FB00(uint64_t a1)
{
  v3 = type metadata accessor for DateRangeTagFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219590D54();
  sub_219BE3204();
  v7 = sub_219BE2E54();
  sub_21959106C();
  sub_219BE2F64();

  v24 = type metadata accessor for DateRangeTagFeedGroupEmitter;
  sub_219595048(v1, v6, type metadata accessor for DateRangeTagFeedGroupEmitter);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = v8 + v5;
  v9 = (v8 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_219594F18(v6, v10 + v8, type metadata accessor for DateRangeTagFeedGroupEmitter);
  *(v10 + v9) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2195912F8;
  *(v11 + 24) = v10;

  v12 = sub_219BE2E54();
  sub_219592F9C();
  sub_219BE2F64();

  v13 = v22;
  sub_219595048(v22, v6, v24);
  v14 = swift_allocObject();
  sub_219594F18(v6, v14 + v8, type metadata accessor for DateRangeTagFeedGroupEmitter);
  *(v14 + v9) = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21959329C;
  *(v15 + 24) = v14;

  v16 = sub_219BE2E54();
  sub_218A59C84();
  sub_219BE2F64();

  sub_219595048(v13, v6, v24);
  v17 = swift_allocObject();
  sub_219594F18(v6, v17 + v8, type metadata accessor for DateRangeTagFeedGroupEmitter);
  v18 = sub_219BE2E54();
  v19 = sub_219BE3064();

  return v19;
}

uint64_t sub_21958FE70@<X0>(uint64_t *a1@<X8>)
{
  sub_21958F7F0();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x7000000000000004;
  return result;
}

uint64_t sub_21958FEF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for DateRangeTagFeedGroupKnobs();
  a2[4] = sub_219595000(qword_280EBB9B0, type metadata accessor for DateRangeTagFeedGroupKnobs);
  a2[5] = sub_219595000(&qword_27CC1C2A8, type metadata accessor for DateRangeTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219595048(v2 + v4, boxed_opaque_existential_1, type metadata accessor for DateRangeTagFeedGroupKnobs);
}

uint64_t sub_21958FFB8()
{
  type metadata accessor for DateRangeTagFeedGroupEmitter();
  sub_2189AD5C8();
  v0 = sub_219BEE964();
  sub_219593918(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  *(swift_allocObject() + 16) = 31;
  sub_219593758(0, &qword_280E91240, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v5 + v4) = sub_219BEFB94();
  (*(v3 + 104))(v5 + v4, *MEMORY[0x277D32308], v2);
  sub_2191EDA0C(v5);
  return v0;
}

uint64_t sub_2195901D0()
{
  sub_21958F7F0();

  return sub_219BEDCA4();
}

uint64_t sub_2195901FC@<X0>(uint64_t *a1@<X8>)
{
  sub_219593918(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_21958F7F0();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2195950B0(inited + 32, sub_2188317B0);
  sub_219593918(0, &qword_27CC1C2B0, type metadata accessor for DateRangeTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_219595110();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_219590380()
{
  sub_219595000(&unk_27CC1C270, type metadata accessor for DateRangeTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_219590528@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219590590();
  a1[3] = type metadata accessor for DateRangeTagFeedGroupCursor();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  result = sub_219BDBD24();
  *boxed_opaque_existential_1 = v2;
  return result;
}

unint64_t sub_219590590()
{
  sub_219593918(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v47 - v4;
  v6 = sub_219BDBD34();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - v11;
  sub_218731D50();
  sub_219595000(&qword_280EE9C90, MEMORY[0x277CC9578]);
  v13 = sub_219BF5964();
  result = sub_218B197A8(v13);
  v15 = result;
  if (!(result >> 62))
  {
    v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_9:
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_10;
  }

  result = sub_219BF7214();
  v16 = result;
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v15 & 0xC000000000000001) != 0)
  {
    goto LABEL_45;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
    while (1)
    {
      swift_getObjectType();
      sub_2195946EC(v5);
      swift_unknownObjectRelease();
      v17 = *(v7 + 48);
      if (v17(v5, 1, v6) == 1)
      {
LABEL_10:
        sub_219BDBBB4();
        v17 = *(v7 + 48);
        if (v17(v5, 1, v6) != 1)
        {
          sub_219594EA8(v5, &qword_280EE9C40, MEMORY[0x277CC9578]);
        }

        if (!v16)
        {

          (*(v7 + 56))(v3, 1, 1, v6);
          goto LABEL_21;
        }
      }

      else
      {
        (*(v7 + 32))(v12, v5, v6);
      }

      v18 = v16 - 1;
      if (__OFSUB__(v16, 1))
      {
        break;
      }

      if ((v15 & 0xC000000000000001) != 0)
      {
        goto LABEL_42;
      }

      if ((v18 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v18 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        swift_unknownObjectRetain();
        goto LABEL_18;
      }

      __break(1u);
LABEL_45:
      MEMORY[0x21CECE0F0](0, v15);
    }

    __break(1u);
LABEL_42:
    MEMORY[0x21CECE0F0](v18, v15);
LABEL_18:

    swift_getObjectType();
    sub_2195946EC(v3);
    swift_unknownObjectRelease();
    if (v17(v3, 1, v6) != 1)
    {
      (*(v7 + 32))(v10, v3, v6);
      goto LABEL_23;
    }

LABEL_21:
    sub_219BDBBB4();
    if (v17(v3, 1, v6) != 1)
    {
      sub_219594EA8(v3, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }

LABEL_23:
    sub_219BDBBE4();
    v20 = v19;
    sub_219BF5CE4();
    if (v20 <= v21)
    {
      v24 = 0;
    }

    else
    {
      sub_219BF5CE4();
      if (v20 <= v22 * 7.0)
      {
        v24 = 1;
      }

      else
      {
        sub_219BF5CE4();
        if (v20 > v23 * 30.0)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }
      }
    }

    v49 = v12;
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v47 = qword_280F61708;
    v48 = v10;
    sub_2186F20D4();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_219C0B8C0;
    v51 = 0;
    v52 = 0xE000000000000000;
    v50 = v24;
    sub_219BF7484();
    v26 = v51;
    v27 = v52;
    v28 = MEMORY[0x277D837D0];
    *(v25 + 56) = MEMORY[0x277D837D0];
    v29 = sub_2186FC3BC();
    *(v25 + 64) = v29;
    *(v25 + 32) = v26;
    *(v25 + 40) = v27;
    v30 = MEMORY[0x277D83A80];
    *(v25 + 96) = MEMORY[0x277D839F8];
    *(v25 + 104) = v30;
    *(v25 + 72) = v20;
    if (qword_27CC08698 != -1)
    {
      swift_once();
    }

    v31 = qword_27CC1C250;
    v32 = v49;
    v33 = sub_219BDBC04();
    v34 = v48;
    v35 = sub_219BDBC04();
    v36 = [v31 stringFromDate:v33 toDate:v35];

    v37 = sub_219BF5414();
    v39 = v38;

    *(v25 + 136) = v28;
    *(v25 + 144) = v29;
    *(v25 + 112) = v37;
    *(v25 + 120) = v39;
    sub_219BF6214();
    sub_219BE5314();

    sub_219BF5CE4();
    if (v20 <= v40)
    {
      v45 = *(v7 + 8);
      v45(v34, v6);
      v45(v32, v6);
      return 0;
    }

    else
    {
      sub_219BF5CE4();
      if (v20 <= v41 * 7.0)
      {
        v46 = *(v7 + 8);
        v46(v48, v6);
        v46(v49, v6);
        return 1;
      }

      else
      {
        sub_219BF5CE4();
        v43 = v42;
        v44 = *(v7 + 8);
        v44(v48, v6);
        v44(v49, v6);
        if (v20 > v43 * 30.0)
        {
          return 3;
        }

        else
        {
          return 2;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219590CC8()
{
  sub_219BEF0C4();
  type metadata accessor for DateRangeTagFeedGroupCursor();
  sub_219BEF054();
  v0 = sub_219BE31C4();

  return v0;
}

void sub_219590D54()
{
  if (!qword_27CC1C288)
  {
    type metadata accessor for DateRangeTagFeedGroupCursor();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1C288);
    }
  }
}

uint64_t sub_219590DBC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v12 = a1[4];
  v11 = a1[5];
  sub_21959106C();
  v14 = *(v13 + 64);
  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = v10;
  *(a4 + 24) = v9;
  *(a4 + 32) = v12;
  *(a4 + 40) = v11;
  v15 = a2[5];
  *(a4 + 112) = a2[4];
  *(a4 + 128) = v15;
  v16 = a2[7];
  *(a4 + 144) = a2[6];
  *(a4 + 160) = v16;
  v17 = a2[1];
  *(a4 + 48) = *a2;
  *(a4 + 64) = v17;
  v18 = a2[3];
  *(a4 + 80) = a2[2];
  *(a4 + 96) = v18;
  sub_219595048(a3, a4 + v14, type metadata accessor for DateRangeTagFeedGroupCursor);

  sub_2189EEB80(v9, v12);
  return sub_218A80CA4(a2, &v20);
}

uint64_t sub_219590EA8(__int128 *a1)
{
  v2 = type metadata accessor for DateRangeTagFeedGroupCursor();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = a1[5];
  v24 = a1[4];
  v25 = v5;
  v6 = a1[7];
  v26 = a1[6];
  v27 = v6;
  v7 = a1[1];
  v20 = *a1;
  v21 = v7;
  v8 = a1[3];
  v22 = a1[2];
  v23 = v8;
  sub_219590D54();
  sub_219595048(a1 + *(v9 + 48), &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for DateRangeTagFeedGroupCursor);
  v10 = (*(v3 + 80) + 144) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v12 = v25;
  v11[5] = v24;
  v11[6] = v12;
  v13 = v27;
  v11[7] = v26;
  v11[8] = v13;
  v14 = v21;
  v11[1] = v20;
  v11[2] = v14;
  v15 = v23;
  v11[3] = v22;
  v11[4] = v15;
  sub_219594F18(&v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10, type metadata accessor for DateRangeTagFeedGroupCursor);
  sub_218A80CA4(&v20, v19);
  v16 = sub_219BE2E54();
  sub_21959106C();
  v17 = sub_219BE2F74();

  return v17;
}

void sub_21959106C()
{
  if (!qword_27CC1C290)
  {
    type metadata accessor for DateRangeTagFeedGroupCursor();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC1C290);
    }
  }
}

char *sub_2195910DC(unint64_t *a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DateRangeTagFeedGroupEmitterBatch();
  v22 = *(v10 - 8);
  v11 = *(v22 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = (&v21 - v14);
  sub_2195913A8(a5, a2, a1, a3, &v21 - v14);
  if (!v5)
  {
    v16 = v22;
    sub_219591D18(a5, v15);
    sub_219595048(v15, v13, type metadata accessor for DateRangeTagFeedGroupEmitterBatch);
    v18 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v19 = swift_allocObject();
    sub_219594F18(v13, v19 + v18, type metadata accessor for DateRangeTagFeedGroupEmitterBatch);
    v20 = sub_219BE2E54();
    sub_219592F9C();
    v13 = sub_219BE2F74();

    sub_2195950B0(v15, type metadata accessor for DateRangeTagFeedGroupEmitterBatch);
  }

  return v13;
}

char *sub_2195912F8(unint64_t *a1, unint64_t a2, unsigned __int8 *a3)
{
  v7 = *(type metadata accessor for DateRangeTagFeedGroupEmitter() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  return sub_2195910DC(a1, a2, a3, v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2195913A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a3;
  v77 = a4;
  v74 = a2;
  v71 = a5;
  v7 = sub_219BDBD34();
  v72 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v79 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF0BD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DateRangeTagFeedGroupEmitter();
  type metadata accessor for DateRangeTagFeedGroupKnobs();
  v78 = a1;
  sub_219BEF134();
  sub_219BEF524();
  (*(v10 + 8))(v12, v9);
  if (v80 < 1)
  {
    sub_219BEEDD4();
    sub_219595000(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    sub_219BEEDC4();
    return swift_willThrow();
  }

  v73 = v5;
  v70 = v80;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v13 = qword_280F61708;
  sub_2186F20D4();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C09BA0;
  v17 = type metadata accessor for DateRangeTagFeedGroupCursor();
  sub_219595000(&qword_280EE9C60, MEMORY[0x277CC9578]);
  v18 = v77;
  v19 = sub_219BF7894();
  v21 = v20;
  *(v16 + 56) = MEMORY[0x277D837D0];
  v22 = sub_2186FC3BC();
  *(v16 + 64) = v22;
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  sub_219BF6214();
  sub_219BE5314();

  v23 = v75;
  result = sub_2195939F8(v79, v76, v78, v74, v18);
  if (!v23)
  {
    v25 = result;
    v65 = v17;
    v66 = v22;
    v67 = v13;
    v68 = v15;
    v26 = result >> 62;
    v73 = v7;
    if (result >> 62)
    {
      if (result < 0)
      {
        v18 = result;
      }

      else
      {
        v18 = result & 0xFFFFFFFFFFFFFF8;
      }

      v37 = sub_219BF7214();
      if (v37 >= v70)
      {
        v63 = v70;
      }

      else
      {
        v63 = v37;
      }

      if (v37 >= 0)
      {
        v27 = v63;
      }

      else
      {
        v27 = v70;
      }

      if (v27 < 0)
      {
        goto LABEL_101;
      }

      v16 = v37;
      v37 = sub_219BF7214();
      if (v37 < 0)
      {
        goto LABEL_102;
      }

      v75 = v16 >> 63;
      if (sub_219BF7214() >= v27)
      {
LABEL_10:
        v69 = v25 & 0xC000000000000001;
        if ((v25 & 0xC000000000000001) != 0 && v27)
        {
          sub_218731D50();

          v28 = 0;
          do
          {
            v29 = v28 + 1;
            sub_219BF7334();
            v28 = v29;
          }

          while (v27 != v29);
          if (!v26)
          {
LABEL_15:
            v22 = 0;
            v18 = v25 & 0xFFFFFFFFFFFFFF8;
            v30 = (v25 & 0xFFFFFFFFFFFFFF8) + 32;
            v27 = (2 * v27) | 1;
            v74 = v26;
            if ((v27 & 1) == 0)
            {
              goto LABEL_20;
            }

LABEL_21:
            v64 = v30;
            sub_219BF7934();
            swift_unknownObjectRetain_n();
            v34 = swift_dynamicCastClass();
            if (!v34)
            {
              swift_unknownObjectRelease();
              v34 = MEMORY[0x277D84F90];
            }

            v35 = *(v34 + 16);

            if (!__OFSUB__(v27 >> 1, v22))
            {
              if (v35 == (v27 >> 1) - v22)
              {
                v22 = swift_dynamicCastClass();
                swift_unknownObjectRelease();
                if (v22)
                {
                  goto LABEL_28;
                }

                v22 = MEMORY[0x277D84F90];
                goto LABEL_27;
              }

              goto LABEL_100;
            }

            goto LABEL_99;
          }
        }

        else
        {

          if (!v26)
          {
            goto LABEL_15;
          }
        }

        v18 = sub_219BF7564();
        v22 = v31;
        v27 = v32;
        v74 = v26;
        if ((v32 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v75 = 0;
      v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16 >= v70)
      {
        v27 = v70;
      }

      else
      {
        v27 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v16 >= v27)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    while (1)
    {
      v37 = sub_219BF7214();
      if (v37 < 0)
      {
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        v46 = MEMORY[0x21CECE0F0](0, v22);
LABEL_65:
        LODWORD(v77) = *v77;
        v47 = sub_218BFBCBC(v46, v77);
        v49 = v48;
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_219C09EC0;
        v51 = MEMORY[0x277D83C10];
        *(v50 + 56) = MEMORY[0x277D83B88];
        *(v50 + 64) = v51;
        *(v50 + 32) = v27;
        v52 = v66;
        *(v50 + 96) = MEMORY[0x277D837D0];
        *(v50 + 104) = v52;
        v74 = v47;
        *(v50 + 72) = v47;
        *(v50 + 80) = v49;
        v69 = v49;

        sub_219BF6214();
        sub_219BE5314();

        sub_219BEF0B4();
        swift_unknownObjectRelease();
        v27 = v80;
        v25 = *(v80 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);
        swift_unknownObjectRelease();

        v53 = v16 - v18;
        if (!__OFSUB__(v16, v18))
        {
          v54 = v73;
          v55 = v79;
          if (v53)
          {
            v56 = 1;
            if (v53 < 1 || v53 >= v70)
            {
LABEL_75:
              v59 = type metadata accessor for DateRangeTagFeedGroupEmitterBatch();
              v60 = v71;
              v61 = (v71 + *(v59 + 32));
              result = (*(v72 + 32))(&v61[*(v65 + 20)], v55, v54);
              *v61 = v77;
              *v60 = v22;
              *(v60 + 8) = v25;
              *(v60 + 16) = v56;
              v62 = v69;
              *(v60 + 24) = v74;
              *(v60 + 32) = v62;
              return result;
            }
          }

          else
          {
            v56 = 0;
          }

          if (v76[3])
          {
            v56 = 2;
          }

          goto LABEL_75;
        }

        __break(1u);
      }

      else
      {
        while (1)
        {
          v27 = v37;
LABEL_33:
          if (v16 >= v27)
          {
            v36 = v27;
          }

          else
          {
            v36 = v16;
          }

          if (v75)
          {
            v36 = v27;
          }

          if (v27)
          {
            v18 = v36;
          }

          else
          {
            v18 = 0;
          }

          if (v16 < v18)
          {
            goto LABEL_92;
          }

          if (v74)
          {
            if (sub_219BF7214() < v18)
            {
              goto LABEL_93;
            }

            v37 = sub_219BF7214();
          }

          else
          {
            v37 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v37 < v18)
            {
              goto LABEL_93;
            }
          }

          if (v37 < v16)
          {
            goto LABEL_94;
          }

          if (v75)
          {
            goto LABEL_95;
          }

          if (!v69 || v18 == v16)
          {

            goto LABEL_57;
          }

          if (v18 < v16)
          {
            break;
          }

          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
        }

        sub_218731D50();

        v38 = v18;
        do
        {
          v39 = v38 + 1;
          sub_219BF7334();
          v38 = v39;
        }

        while (v16 != v39);
LABEL_57:

        if (v74)
        {
          v40 = sub_219BF7564();
          v18 = v41;
          v43 = v42;

          v16 = v43 >> 1;
        }

        else
        {
          v40 = v25 & 0xFFFFFFFFFFFFFF8;
        }

        v44 = v73;
        v45 = v79;
        if (v26)
        {
          if (!sub_219BF7214())
          {
            goto LABEL_71;
          }
        }

        else if (!*(v22 + 16))
        {
LABEL_71:

          v57 = sub_219BEEDD4();
          sub_219595000(&qword_280E917E0, MEMORY[0x277D32430]);
          swift_allocError();
          (*(*(v57 - 8) + 104))(v58, *MEMORY[0x277D323A8], v57);
          swift_willThrow();
          swift_unknownObjectRelease();
          return (*(v72 + 8))(v45, v44);
        }

        v75 = v40;
        if ((v22 & 0xC000000000000001) != 0)
        {
          goto LABEL_96;
        }

        v25 = v68;
        if (*(v22 + 16))
        {
          v46 = *(v22 + 32);
          swift_unknownObjectRetain();
          goto LABEL_65;
        }
      }

      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      swift_unknownObjectRelease();
      v30 = v64;
LABEL_20:
      sub_218B667DC(v18, v30, v22, v27);
      v22 = v33;
LABEL_27:
      swift_unknownObjectRelease();
LABEL_28:
      LOBYTE(v26) = v22 < 0 || (v22 & 0x4000000000000000) != 0;
      if ((v26 & 1) == 0)
      {
        v27 = *(v22 + 16);
        goto LABEL_33;
      }
    }
  }

  return result;
}

size_t sub_219591D18(uint64_t a1, uint64_t *a2)
{
  v118 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_219593918(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v99 = &v88 - v5;
  sub_219593918(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v92 = &v88 - v7;
  sub_219593918(0, &qword_280E91A70, sub_2189AD5C8, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = &v88 - v9;
  v98 = sub_219BF2AB4();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_219BF2034();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v109 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_219BF3C84();
  v119 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = (&v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_219BF2124();
  MEMORY[0x28223BE20](v13 - 8);
  v117 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF3E84();
  v107 = *(v15 - 8);
  v108 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v113 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v114 = &v88 - v18;
  v116 = sub_218A42400;
  sub_219593918(0, &unk_280E8FF30, sub_218A42400, v3);
  MEMORY[0x28223BE20](v19 - 8);
  v102 = &v88 - v20;
  v103 = MEMORY[0x277D2D4E0];
  sub_219593918(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v3);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v88 - v22;
  v24 = sub_219BDBD64();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DateRangeTagFeedGroupConfigData();
  v29 = v28 - 8;
  MEMORY[0x28223BE20](v28);
  v101 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_219BF1934();
  v115 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v111 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a1;
  sub_219BEF0B4();
  v32 = *(v120 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v33 = sub_219BF6394();

  sub_21958F7F0();
  sub_219BEDD14();
  v100 = *(v29 + 28);
  v120 = 0;
  v121 = 0xE000000000000000;
  sub_219BF7314();

  v120 = 0x706F742D776F6C66;
  v121 = 0xEB000000002D6369;
  v34 = [v33 identifier];
  v35 = sub_219BF5414();
  v37 = v36;

  MEMORY[0x21CECC330](v35, v37);

  MEMORY[0x21CECC330](45, 0xE100000000000000);
  sub_219BDBD54();
  v38 = sub_219BDBD44();
  v40 = v39;
  (*(v25 + 8))(v27, v24);
  MEMORY[0x21CECC330](v38, v40);

  v106 = v33;
  v41 = [v33 identifier];
  sub_219BF5414();

  v42 = sub_219BEC004();
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v90 = v42;
  v89 = v44;
  v88 = v43 + 56;
  (v44)(v23, 1, 1);
  sub_218A42400(0);
  v46 = v102;
  (*(*(v45 - 8) + 56))(v102, 1, 1, v45);
  v47 = v100;
  v48 = v101;
  sub_219BF1764();

  sub_219594EA8(v46, &unk_280E8FF30, v116);
  v102 = v23;
  sub_219594EA8(v23, &qword_280EE33F0, v103);
  v49 = *(v115 + 8);
  v115 += 8;
  v103 = v49;
  (v49)(&v48[v47], v112);
  sub_219593918(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
  sub_219BF14C4();
  *(swift_allocObject() + 16) = xmmword_219C09BA0;
  v50 = v118;
  sub_219BF20F4();
  sub_219BF14A4();
  v51 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v51);
  sub_218F0BB90(v51);
  sub_219BF3E74();
  v52 = *v50;
  if (*v50 >> 62)
  {
    v86 = *v50;
    v87 = sub_219BF7214();
    v52 = v86;
    v53 = v87;
  }

  else
  {
    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = MEMORY[0x277D84F90];
  v56 = v104;
  v55 = v105;
  if (v53)
  {
    v57 = v52;
    v120 = MEMORY[0x277D84F90];
    result = sub_218C34A88(0, v53 & ~(v53 >> 63), 0);
    if (v53 < 0)
    {
      __break(1u);
      return result;
    }

    v59 = 0;
    v117 = (v57 & 0xC000000000000001);
    v118 = v53;
    LODWORD(v116) = *MEMORY[0x277D34128];
    v60 = v120;
    v61 = (v119 + 104);
    do
    {
      if (v117)
      {
        v62 = MEMORY[0x21CECE0F0](v59);
      }

      else
      {
        v62 = swift_unknownObjectRetain();
      }

      *v56 = v62;
      (*v61)(v56, v116, v55);
      v120 = v60;
      v64 = *(v60 + 16);
      v63 = *(v60 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_218C34A88(v63 > 1, v64 + 1, 1);
        v60 = v120;
      }

      v59 = (v59 + 1);
      *(v60 + 16) = v64 + 1;
      (*(v119 + 32))(v60 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v64, v56, v55);
    }

    while (v118 != v59);
    v54 = MEMORY[0x277D84F90];
  }

  sub_218F0B984(v54);
  sub_218F0BA7C(v54);
  sub_218F0BB90(v54);
  sub_219BF3E74();
  sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v65 = swift_allocObject();
  v119 = v65;
  *(v65 + 16) = xmmword_219C146A0;
  *(v65 + 32) = v106;
  sub_219593918(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v66 = v107;
  v67 = *(v107 + 72);
  v68 = (*(v107 + 80) + 32) & ~*(v107 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_219C09EC0;
  v70 = v69 + v68;
  v71 = *(v66 + 16);
  v72 = v108;
  v71(v70, v114, v108);
  v71(v70 + v67, v113, v72);
  v89(v102, 1, 1, v90);
  swift_unknownObjectRetain();
  sub_219A95188(v54);
  sub_219A95188(v54);
  sub_219A951A0(v54);
  sub_219A951B8(v54);
  sub_219A952CC(v54);
  sub_219A952E4(v54);
  sub_219A953F8(v54);
  sub_219BF2024();
  v73 = type metadata accessor for DateRangeTagFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((v110 + *(v73 + 24)), *(v110 + *(v73 + 24) + 24));
  sub_2189AD5C8();
  (*(*(v74 - 8) + 56))(v91, 1, 1, v74);
  sub_219BEF0B4();
  v75 = *(v120 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v76 = sub_219BF35D4();
  (*(*(v76 - 8) + 56))(v92, 1, 1, v76);
  LOBYTE(v122) = 31;
  sub_219593758(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v77 = *(v122 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v78 = sub_219BF2774();
  (*(*(v78 - 8) + 56))(v99, 1, 1, v78);
  v79 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v79 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  v80 = v94;
  sub_219BF2A84();
  v81 = v111;
  v82 = v109;
  v83 = sub_219BF2194();
  swift_unknownObjectRelease();
  (*(v97 + 8))(v80, v98);
  (*(v95 + 8))(v82, v96);
  v84 = v108;
  v85 = *(v107 + 8);
  v85(v113, v108);
  v85(v114, v84);
  (v103)(v81, v112);
  return v83;
}

uint64_t sub_219592E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_219592F9C();
  v7 = *(v6 + 48);
  v8 = sub_219BF1904();
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  return sub_219595048(a2, a3 + v7, type metadata accessor for DateRangeTagFeedGroupEmitterBatch);
}

uint64_t sub_219592F10(char *a1)
{
  v3 = *(a1 + 1);
  v13[0] = *a1;
  v13[1] = v3;
  v4 = *(a1 + 3);
  v13[2] = *(a1 + 2);
  v14[0] = v4;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = *(a1 + 6);
  v14[4] = *(a1 + 7);
  v14[5] = v5;
  v8 = *(a1 + 10);
  v14[6] = v6;
  v14[7] = v8;
  v9 = *(a1 + 5);
  v14[1] = *(a1 + 4);
  v14[2] = v9;
  v10 = *(v1 + 16);
  v14[3] = v7;
  sub_21959106C();
  return v10(v13, v14, &a1[*(v11 + 64)]);
}

void sub_219592F9C()
{
  if (!qword_27CC1C2A0)
  {
    sub_219BF1904();
    type metadata accessor for DateRangeTagFeedGroupEmitterBatch();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1C2A0);
    }
  }
}

uint64_t sub_21959300C(uint64_t a1, uint64_t a2)
{
  sub_218A59C84();
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219593348(a1, v9);
  if (*(a2 + 16))
  {
    sub_218ACC140();
    v11 = &v6[*(v10 + 48)];
    sub_219595048(v9, v6, type metadata accessor for TagFeedGroup);
    v12 = *(type metadata accessor for DateRangeTagFeedGroupEmitterBatch() + 32);
    v11[3] = type metadata accessor for DateRangeTagFeedGroupCursor();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
    sub_219595048(a2 + v12, boxed_opaque_existential_1, type metadata accessor for DateRangeTagFeedGroupCursor);
  }

  else
  {
    sub_219595048(v9, v6, type metadata accessor for TagFeedGroup);
  }

  swift_storeEnumTagMultiPayload();
  sub_219593918(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v14 = sub_219BE3014();
  sub_2195950B0(v9, type metadata accessor for TagFeedGroup);
  return v14;
}

uint64_t sub_21959329C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DateRangeTagFeedGroupEmitter();

  return sub_21959300C(a1, a2);
}

uint64_t sub_219593348@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  sub_219593918(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = v24 - v4;
  v5 = sub_219BEF554();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = sub_219BF1904();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BED8D4();
  v12 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF17D4();
  v25 = v16;
  v26 = v15;
  (*(v9 + 16))(v11, a1, v8);
  sub_21958F7F0();
  v17 = sub_219BEDCB4();
  v24[1] = v18;
  v24[2] = v17;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for DateRangeTagFeedGroupEmitter();
  sub_2189AD5C8();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v19 = sub_219BEE5D4();
  (*(*(v19 - 8) + 56))(v28, 1, 1, v19);
  sub_219BED854();
  v20 = v29;
  v21 = v25;
  *v29 = v26;
  v20[1] = v21;
  v22 = type metadata accessor for DateRangeTagFeedGroup();
  (*(v12 + 32))(v20 + *(v22 + 20), v14, v27);
  type metadata accessor for TagFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219593708(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_219592F9C();
  return v3(a1, a1 + *(v4 + 48));
}

void sub_219593758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_2195937D8()
{
  type metadata accessor for DateRangeTagFeedGroupEmitter();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_21877D2B0();
  return sub_219BEF194();
}

void sub_219593918(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2195939F8(unint64_t a1, unint64_t *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v95 = a4;
  v88 = sub_219BDBD34();
  v86 = *(v88 - 8);
  v9 = MEMORY[0x28223BE20](v88);
  v85 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v84 = &v77 - v11;
  v12 = *a2;
  v13 = (*a2 >> 62);
  v83 = *a2;
  if (v13)
  {
LABEL_50:
    v14 = sub_219BF7214();
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v15 = qword_280F61708;
  sub_2186F20D4();
  v90 = v16;
  v17 = swift_allocObject();
  v89 = xmmword_219C09EC0;
  *(v17 + 16) = xmmword_219C09EC0;
  v18 = MEMORY[0x277D83C10];
  *(v17 + 56) = MEMORY[0x277D83B88];
  *(v17 + 64) = v18;
  v82 = v14;
  *(v17 + 32) = v14;
  v96 = 0;
  v97 = 0xE000000000000000;
  v81 = a5;
  v79 = *a5;
  LOBYTE(v98) = v79;
  sub_219BF7484();
  v19 = v96;
  v20 = v97;
  v21 = MEMORY[0x277D837D0];
  *(v17 + 96) = MEMORY[0x277D837D0];
  v87 = sub_2186FC3BC();
  *(v17 + 104) = v87;
  *(v17 + 72) = v19;
  *(v17 + 80) = v20;
  sub_219BF6214();
  v91 = v15;
  sub_219BE5314();

  if (!v13)
  {
    a5 = v83;
    v94 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v94)
    {
      v78 = a1;
      v98 = MEMORY[0x277D84F90];
LABEL_10:
      a1 = 0;
      v92 = a5 & 0xFFFFFFFFFFFFFF8;
      v93 = a5 & 0xC000000000000001;
      v22 = (a5 + 32);
      while (1)
      {
        if (v93)
        {
          v21 = MEMORY[0x21CECE0F0](a1, v83);
          v23 = __OFADD__(a1++, 1);
          if (v23)
          {
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }
        }

        else
        {
          if (a1 >= *(v92 + 16))
          {
            __break(1u);
            goto LABEL_50;
          }

          v21 = *&v22[8 * a1];
          swift_unknownObjectRetain();
          v23 = __OFADD__(a1++, 1);
          if (v23)
          {
            goto LABEL_29;
          }
        }

        a5 = *(v95 + 88);
        v24 = [v21 identifier];
        v25 = sub_219BF5414();
        v5 = v26;

        if (*(a5 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v27 = sub_219BF7AE4(), v13 = (a5 + 56), v28 = -1 << *(a5 + 32), v29 = v27 & ~v28, ((*(a5 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
        {
          v30 = ~v28;
          while (1)
          {
            v31 = (*(a5 + 48) + 16 * v29);
            v32 = *v31 == v25 && v31[1] == v5;
            if (v32 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v29 = (v29 + 1) & v30;
            if (((*(v13 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              goto LABEL_11;
            }
          }

          swift_unknownObjectRelease();
        }

        else
        {
LABEL_11:

          v13 = &v98;
          sub_219BF73D4();
          v5 = *(v98 + 16);
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        v21 = MEMORY[0x277D837D0];
        if (a1 == v94)
        {
          goto LABEL_30;
        }
      }
    }

    goto LABEL_37;
  }

  a5 = v83;
  if (!sub_219BF7214())
  {
LABEL_37:
    v58 = sub_219BEEDD4();
    sub_219595000(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v58 - 8) + 104))(v59, *MEMORY[0x277D32428], v58);
    swift_willThrow();
    return v58;
  }

  v78 = a1;
  v13 = MEMORY[0x277D84F90];
  v98 = MEMORY[0x277D84F90];
  v94 = sub_219BF7214();
  if (v94)
  {
    goto LABEL_10;
  }

LABEL_30:
  v33 = sub_218731D50();
  v34 = sub_219595000(&qword_280EE9C90, MEMORY[0x277CC9578]);
  v35 = sub_219BF5964();

  v36 = sub_218B197A8(v35);
  v37 = swift_allocObject();
  *(v37 + 16) = v89;
  v38 = v82;
  if (!(v36 >> 62))
  {
    v39 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v40 = v82 - v39;
    if (!__OFSUB__(v82, v39))
    {
      goto LABEL_32;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v39 = sub_219BF7214();
  v40 = v38 - v39;
  if (__OFSUB__(v38, v39))
  {
    goto LABEL_53;
  }

LABEL_32:
  v41 = MEMORY[0x277D83B88];
  *(v37 + 56) = MEMORY[0x277D83B88];
  v42 = MEMORY[0x277D83C10];
  *(v37 + 64) = MEMORY[0x277D83C10];
  *(v37 + 72) = v39;
  *(v37 + 32) = v40;
  *(v37 + 96) = v41;
  *(v37 + 104) = v42;
  sub_219BF6214();
  sub_219BE5314();

  MEMORY[0x28223BE20](v43);
  v37 = v81;
  *(&v77 - 2) = v81;
  v44 = v80;
  v45 = sub_2195EB294(sub_219594E68, &v77 - 4, v36);
  v38 = v44;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C0B8C0;
  if (!(v45 >> 62))
  {
    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v47 = v39 - v46;
    if (!__OFSUB__(v39, v46))
    {
      goto LABEL_34;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
    goto LABEL_43;
  }

LABEL_54:
  v46 = sub_219BF7214();
  v47 = v39 - v46;
  if (__OFSUB__(v39, v46))
  {
    goto LABEL_56;
  }

LABEL_34:
  v95 = v38;
  v93 = v33;
  v94 = v34;
  v48 = MEMORY[0x277D83B88];
  *(v5 + 56) = MEMORY[0x277D83B88];
  v49 = MEMORY[0x277D83C10];
  *(v5 + 64) = MEMORY[0x277D83C10];
  *(v5 + 32) = v47;
  v50 = *(type metadata accessor for DateRangeTagFeedGroupCursor() + 20);
  v51 = sub_219BDBA74();
  v52 = v87;
  *(v5 + 96) = v21;
  *(v5 + 104) = v52;
  *(v5 + 72) = v51;
  *(v5 + 80) = v53;
  *(v5 + 136) = v48;
  *(v5 + 144) = v49;
  *(v5 + 112) = v46;
  sub_219BF6214();
  sub_219BE5314();

  v54 = v88;
  v55 = sub_219BF5964();

  v94 = sub_218B197A8(v55);
  v21 = v84;
  (*(v86 + 16))(v84, v37 + v50, v54);
  if (v79 > 1)
  {
    v5 = v85;
    if (v79 == 2)
    {
      sub_219BF5CE4();
      v56 = 0xE400000000000000;
      v57 = 1801807191;
    }

    else
    {
      sub_219BF5CE4();
      v56 = 0xE500000000000000;
      v57 = 0x68746E6F4DLL;
    }
  }

  else
  {
    v5 = v85;
    if (v79)
    {
      sub_219BF5CE4();
      v56 = 0xE300000000000000;
      v57 = 7954756;
    }

    else
    {
      sub_219BF5CF4();
      v56 = 0xE400000000000000;
      v57 = 1920298824;
    }
  }

  v33 = MEMORY[0x277D837D0];
  v38 = v87;
  sub_219BDBBF4();
  v34 = swift_allocObject();
  *(v34 + 16) = v89;
  *(v34 + 56) = v33;
  *(v34 + 64) = v38;
  *(v34 + 32) = v57;
  *(v34 + 40) = v56;
  if (qword_27CC08698 != -1)
  {
    goto LABEL_57;
  }

LABEL_43:
  v60 = qword_27CC1C250;
  v61 = sub_219BDBC04();
  v62 = sub_219BDBC04();
  v63 = [v60 stringFromDate:v61 toDate:v62];

  v64 = sub_219BF5414();
  v66 = v65;

  *(v34 + 96) = v33;
  *(v34 + 104) = v38;
  *(v34 + 72) = v64;
  *(v34 + 80) = v66;
  sub_219BF6214();
  sub_219BE5314();

  MEMORY[0x28223BE20](v67);
  *(&v77 - 2) = v21;
  *(&v77 - 1) = v5;
  v68 = v94;

  v58 = sub_2195EB294(sub_219594E88, &v77 - 4, v68);
  v69 = swift_allocObject();
  *(v69 + 16) = v89;
  if (v68 >> 62)
  {
    v70 = sub_219BF7214();
  }

  else
  {
    v70 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v58 >> 62)
  {
    result = sub_219BF7214();
    v72 = v70 - result;
    if (!__OFSUB__(v70, result))
    {
      goto LABEL_47;
    }
  }

  else
  {
    result = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v72 = v70 - result;
    if (!__OFSUB__(v70, result))
    {
LABEL_47:
      v73 = MEMORY[0x277D83B88];
      *(v69 + 56) = MEMORY[0x277D83B88];
      v74 = MEMORY[0x277D83C10];
      *(v69 + 64) = MEMORY[0x277D83C10];
      *(v69 + 72) = result;
      *(v69 + 32) = v72;
      *(v69 + 96) = v73;
      *(v69 + 104) = v74;
      sub_219BF6214();
      sub_219BE5314();

      v75 = v86;
      v76 = v88;
      (*(v86 + 32))(v78, v85, v88);
      (*(v75 + 8))(v84, v76);
      return v58;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2195944FC()
{
  sub_219593918(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v9 - v1;
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_2195946EC(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_219594EA8(v2, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v7 = 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    type metadata accessor for DateRangeTagFeedGroupCursor();
    v7 = sub_219BDBC14();
    (*(v4 + 8))(v6, v3);
  }

  return v7 & 1;
}

uint64_t sub_2195946EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219593918(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = [v2 displayDate];
  if (v14)
  {
    v15 = v14;
    sub_219BDBCA4();

    v16 = *(v5 + 32);
    v16(v13, v7, v4);
    v17 = *(v5 + 56);
    v17(v13, 0, 1, v4);
    v16(a1, v13, v4);
    return (v17)(a1, 0, 1, v4);
  }

  else
  {
    v19 = *(v5 + 56);
    v20 = 1;
    v19(v13, 1, 1, v4);
    v21 = [v2 publishDate];
    if (v21)
    {
      v22 = v21;
      sub_219BDBCA4();

      v20 = 0;
    }

    v19(v11, v20, 1, v4);
    sub_218A5DD60(v11, a1);
    result = (*(v5 + 48))(v13, 1, v4);
    if (result != 1)
    {
      return sub_219594EA8(v13, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  return result;
}

uint64_t sub_2195949AC(void **a1)
{
  sub_219593918(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_219BDBD34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_getObjectType();
  sub_2195946EC(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_219594EA8(v4, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09BA0;
    v11 = [v9 identifier];
    v12 = sub_219BF5414();
    v14 = v13;

    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_2186FC3BC();
    *(v10 + 32) = v12;
    *(v10 + 40) = v14;
    sub_219BF6214();
    sub_219BE5314();

    v15 = 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    if (sub_219BDBC24())
    {
      v15 = sub_219BDBC14();
    }

    else
    {
      v15 = 0;
    }

    (*(v6 + 8))(v8, v5);
  }

  return v15 & 1;
}

uint64_t sub_219594C80@<X0>(uint64_t a1@<X8>)
{
  sub_219593918(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  swift_getObjectType();
  sub_2195946EC(v4);
  v5 = sub_219BDBD34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(v4, 1, v5) != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  sub_219BDBBB4();
  result = (v7)(v4, 1, v5);
  if (result != 1)
  {
    return sub_219594EA8(v4, &qword_280EE9C40, MEMORY[0x277CC9578]);
  }

  return result;
}

id sub_219594E04()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA978]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_27CC1C250 = v0;
  return result;
}

uint64_t sub_219594EA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219593918(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219594F18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219595000(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219595048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2195950B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219595110()
{
  result = qword_27CC1C2B8;
  if (!qword_27CC1C2B8)
  {
    sub_219593918(255, &qword_27CC1C2B0, type metadata accessor for DateRangeTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C2B8);
  }

  return result;
}

void sub_219595198(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
  v8 = sub_2195C990C(a3, 0);
  v9 = [objc_allocWithZone(MEMORY[0x277D355E8]) initWithTextColor_];

  v10 = *(a1 + OBJC_IVAR____TtC7NewsUI222TagFeedViewerTitleView_titleView);
  [v10 setStyler_];

  if ([a3 feedConfiguration] == 3)
  {
    v11 = sub_219BF63C4();
    v12 = v4[14];
    v13 = v4[15];
    v14 = v4[16];
    v4[14] = v11;
    v4[15] = v15;
    v4[16] = 0;

    sub_219596E50(v12, v13, v14);
    v16 = sub_219BF53D4();
    v17 = [objc_opt_self() feedTitleViewUpdateForFeedName_];

    v41 = v17;
    v18 = sub_219BF53D4();
    [v41 setAccessibilityLabel_];

    [v10 applyFeedTitleViewUpdate:v41 animation:0];
  }

  else
  {
    v19 = [a2 traitCollection];
    [v19 displayScale];
    v21 = v20;
    v22 = [a2 navigationBar];
    [v22 frameUsingCenterAndBounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    v32[2] = v31;
    v32[3] = a3;
    v32[4] = v19;
    v32[5] = v24;
    v32[6] = v26;
    v32[7] = v28;
    v32[8] = v30;
    v32[9] = v21;
    sub_219596EC0(0, &qword_280EE72F8, sub_2189EB4C0, MEMORY[0x277D6CE60]);
    objc_allocWithZone(v33);
    v34 = a3;
    v35 = v19;
    v41 = sub_219BE2C64();
    v36 = swift_allocObject();
    swift_weakInit();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    v38[2] = v36;
    v38[3] = v37;
    v38[4] = v34;
    v39 = v34;
    sub_219BE1FF4();
    v40 = v4[12];
    [v40 cancelAllOperations];
    [v40 addOperation_];
  }
}

uint64_t sub_219595544(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    sub_2189EB4C0();
    sub_219BE3204();
    sub_218718690(a1, v9);
    v3 = swift_allocObject();
    sub_2186CB1F0(v9, v3 + 16);
    v4 = sub_219BE2E54();
    v5 = sub_219BE2F74();

    return v5;
  }

  else
  {
    v7 = sub_219BE1D94();
    sub_21874E258(&qword_27CC0B2F0, MEMORY[0x277D6CAF0]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D6CAE0], v7);
    sub_219596EC0(0, &qword_280EE6918, sub_2189EB4C0, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE2FF4();
  }
}

uint64_t sub_2195957AC()
{
  swift_allocObject();
  swift_weakInit();
  sub_219596EC0(0, &qword_280EE6918, sub_2189EB4C0, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v0 = sub_219BE30B4();

  return v0;
}

id sub_2195958CC@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (sub_219BE26E4())
  {
    v5 = sub_219BE27E4();
    sub_21874E258(&unk_280EE73E0, MEMORY[0x277D6CD00]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D6CCF8], v5);
    return swift_willThrow();
  }

  else
  {
    *a3 = v4;
    return v4;
  }
}

uint64_t sub_2195959D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28 = a4;
  v5 = sub_219BED174();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BED1D4();
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v27 = v6;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      sub_2186C6148(0, &qword_280E8E3B0);
      v25 = sub_219BF66A4();
      v18 = swift_allocObject();
      *(v18 + 16) = v12;
      *(v18 + 24) = v13;
      v26 = v9;
      v19 = v28;
      *(v18 + 32) = v15;
      *(v18 + 40) = v19;
      *(v18 + 48) = v17;
      aBlock[4] = sub_219596EA0;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_218793E0C;
      aBlock[3] = &block_descriptor_140;
      v20 = _Block_copy(aBlock);
      sub_219596EB4(v12);

      v21 = v19;
      v22 = v17;

      sub_219BED1A4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_21874E258(&qword_280E927E0, MEMORY[0x277D85198]);
      sub_219596EC0(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_21874EB68();
      sub_219BF7164();
      v23 = v25;
      MEMORY[0x21CECD460](0, v11, v8, v20);
      _Block_release(v20);

      (*(v27 + 8))(v8, v5);
      return (*(v29 + 8))(v11, v26);
    }

    else
    {
    }
  }

  return result;
}

void sub_219595D70(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_219596EC0(0, &qword_280EE73D8, MEMORY[0x277D6CD00], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v41 - v10;
  if (a2)
  {
    v41[1] = a1;
    v12 = a1;
    sub_218A450F0();
    v13 = sub_219BE27E4();
    v14 = swift_dynamicCast();
    v15 = *(*(v13 - 8) + 56);
    if (v14)
    {
      v16 = *(v13 - 8);
      v15(v11, 0, 1, v13);
      v17 = (*(v16 + 88))(v11, v13);
      v18 = *MEMORY[0x277D6CCF8];
      (*(v16 + 8))(v11, v13);
      if (v17 == v18)
      {
        return;
      }
    }

    else
    {
      v15(v11, 1, 1, v13);
      sub_219596F24(v11);
    }

    v26 = sub_219BF63C4();
    v27 = a3[14];
    v28 = a3[15];
    v29 = a3[16];
    a3[14] = v26;
    a3[15] = v30;
    a3[16] = 0;

    sub_219596E50(v27, v28, v29);
    v31 = sub_219BF53D4();
    v32 = [objc_opt_self() feedTitleViewUpdateForFeedName_];

    v33 = v32;
    v34 = sub_219BF53D4();
    [v33 setAccessibilityLabel_];

    [*(a5 + OBJC_IVAR____TtC7NewsUI222TagFeedViewerTitleView_titleView) applyFeedTitleViewUpdate:v33 animation:0];
  }

  else if (a1)
  {
    v19 = a1;
    v20 = sub_219BF63C4();
    v22 = v21;
    v23 = a3[14];
    v24 = a3[15];
    v25 = a3[16];
    a3[14] = v20;
    a3[15] = v21;
    a3[16] = a1;
    sub_219596EB4(a1);
    sub_219596EB4(a1);

    sub_219596E50(v23, v24, v25);
    sub_219596CE8(a5, v20, v22, a1, 0);

    sub_219596E94(a1);

    sub_219596E94(a1);
  }

  else
  {
    v35 = sub_219BF63C4();
    v37 = v36;
    v38 = a3[14];
    v39 = a3[15];
    v40 = a3[16];
    a3[14] = v35;
    a3[15] = v36;
    a3[16] = 0;

    sub_219596E50(v38, v39, v40);
    sub_219596CE8(a5, v35, v37, 0, 0);
  }
}

void sub_219596134(uint64_t a1, uint64_t a2, id a3)
{
  v7 = [a3 feedConfiguration];
  v8 = [a3 alternativeFeedDescriptor];
  if ((v7 - 9) < 3 || v7 == 3)
  {
    goto LABEL_6;
  }

  if (v7 == 12)
  {
    v16 = v8;
    v11 = [*(v3 + 104) useFood];
    v12 = objc_opt_self();
    if (v11)
    {
      v13 = [v12 feedTitleViewUpdateForCheckingForUpdates];
    }

    else
    {
      v13 = [v12 feedTitleViewUpdateForCheckingForNewStories];
    }

    v15 = v13;
    [*(a1 + OBJC_IVAR____TtC7NewsUI222TagFeedViewerTitleView_titleView) applyFeedTitleViewUpdate:v15 animation:a2];

    goto LABEL_9;
  }

  if (v8)
  {
LABEL_6:
  }

  else if (v7 != 13)
  {
    v14 = [sub_219BF6394() asSports];
    swift_unknownObjectRelease();
    if (v14)
    {
      swift_unknownObjectRelease();
      v10 = [objc_opt_self() feedTitleViewUpdateForCheckingForUpdates];
    }

    else
    {
      v10 = [objc_opt_self() feedTitleViewUpdateForCheckingForNewStories];
    }

    goto LABEL_8;
  }

  v10 = [objc_opt_self() feedTitleViewUpdateForCheckingForUpdates];
LABEL_8:
  v16 = v10;
  [*(a1 + OBJC_IVAR____TtC7NewsUI222TagFeedViewerTitleView_titleView) applyFeedTitleViewUpdate:v16 animation:a2];
LABEL_9:
}

uint64_t sub_219596314()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  swift_unknownObjectRelease();
  sub_219596E50(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

void sub_219596394(void (*a1)(void *), void (*a2)(void *), void (*a3)(void *), uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v37 = a7;
  v39 = a6;
  v33 = a4;
  v34 = a3;
  v9 = sub_219BF4A54();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF2894();
  MEMORY[0x28223BE20](v12 - 8);
  v40 = sub_219BF40F4();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF40E4();
  v36 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - v19;
  v21 = swift_allocObject();
  v35 = a1;
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = v36;
    (*(v36 + 104))(v20, *MEMORY[0x277D342D8], v15);
    v34 = a2;

    v25 = v37;
    sub_219BF2884();
    (*(v24 + 16))(v18, v20, v15);
    sub_219BF40D4();
    sub_219BF4A44();
    v26 = sub_219596984(v39, v11, v23, v14);
    v27 = v24;
    if (v26)
    {
      v31 = v26;
      (*(v41 + 8))(v11, v42);
      (*(v38 + 8))(v14, v40);
      (*(v27 + 8))(v20, v15);
      __swift_project_boxed_opaque_existential_1(v23 + 2, v23[5]);
      v43[3] = sub_219BF4144();
      v43[4] = sub_21874E258(&qword_280E8FF00, MEMORY[0x277D342E8]);
      v43[0] = v31;
      v32 = swift_allocObject();
      *(v32 + 16) = sub_2189EB59C;
      *(v32 + 24) = v21;

      sub_219BE6254();

      __swift_destroy_boxed_opaque_existential_1(v43);
    }

    else
    {

      (*(v41 + 8))(v11, v42);
      (*(v38 + 8))(v14, v40);
      (*(v24 + 8))(v20, v15);
      v43[0] = 0;
      v35(v43);
    }
  }

  else
  {

    v28 = sub_219BE1D94();
    sub_21874E258(&qword_27CC0B2F0, MEMORY[0x277D6CAF0]);
    v29 = swift_allocError();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D6CAE0], v28);
    v34(v29);
  }
}

uint64_t sub_219596984(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_219BF40F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 feedConfiguration] == 10)
  {
    v12 = [objc_msgSend(a1 backingTag)];
    swift_unknownObjectRelease();
    if (v12)
    {
      v36 = sub_219BF4144();
      v13 = a4;
      v14 = sub_219BF4A54();
      v34 = v14;
      v35 = MEMORY[0x277D34598];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
      (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, a2, v14);
      v16 = a3[10];
      v17 = a3[11];
      v18 = __swift_project_boxed_opaque_existential_1(a3 + 7, v16);
      v31 = v16;
      v32 = *(v17 + 8);
      v19 = __swift_allocate_boxed_opaque_existential_1(v30);
      (*(*(v16 - 8) + 16))(v19, v18, v16);
      (*(v9 + 16))(v11, v13, v8);
      return sub_219BF4114();
    }

    v28 = 2;
  }

  else
  {
    if ([a1 backingChannel])
    {
      v36 = sub_219BF4144();
      v21 = a4;
      v22 = sub_219BF4A54();
      v34 = v22;
      v35 = MEMORY[0x277D34598];
      v23 = __swift_allocate_boxed_opaque_existential_1(v33);
      (*(*(v22 - 8) + 16))(v23, a2, v22);
      v24 = a3[10];
      v25 = a3[11];
      v26 = __swift_project_boxed_opaque_existential_1(a3 + 7, v24);
      v31 = v24;
      v32 = *(v25 + 8);
      v27 = __swift_allocate_boxed_opaque_existential_1(v30);
      (*(*(v24 - 8) + 16))(v27, v26, v24);
      (*(v9 + 16))(v11, v21, v8);
      return sub_219BF4124();
    }

    v28 = 1;
  }

  sub_219597010();
  swift_allocError();
  *v29 = v28;
  return swift_willThrow();
}

void sub_219596CE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a4)
  {
    v7 = a4;
    v8 = sub_219BF53D4();
    v9 = [objc_opt_self() feedTitleViewUpdateForFeedImage:v7 accessibilityTitle:v8];
  }

  else
  {
    v8 = sub_219BF53D4();
    v9 = [objc_opt_self() feedTitleViewUpdateForFeedName_];
  }

  v11 = v9;
  v10 = sub_219BF53D4();
  [v11 setAccessibilityLabel_];

  [*(a1 + OBJC_IVAR____TtC7NewsUI222TagFeedViewerTitleView_titleView) applyFeedTitleViewUpdate:v11 animation:a5];
}

void sub_219596E50(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

void sub_219596EC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219596F24(uint64_t a1)
{
  sub_219596EC0(0, &qword_280EE73D8, MEMORY[0x277D6CD00], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_219597010()
{
  result = qword_280EAA6D0;
  if (!qword_280EAA6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAA6D0);
  }

  return result;
}

unint64_t sub_219597078()
{
  result = qword_27CC1C2C0;
  if (!qword_27CC1C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C2C0);
  }

  return result;
}

uint64_t sub_2195970DC()
{
  sub_2195975C8(v0, v5);
  v3[8] = v5[8];
  v4[0] = v6[0];
  *(v4 + 9) = *(v6 + 9);
  v3[4] = v5[4];
  v3[5] = v5[5];
  v3[6] = v5[6];
  v3[7] = v5[7];
  v3[0] = v5[0];
  v3[1] = v5[1];
  v3[2] = v5[2];
  v3[3] = v5[3];
  v1 = *&v5[0];

  sub_218C113E0(v3);
  return v1;
}

uint64_t sub_219597164(uint64_t a1, uint64_t a2)
{
  v4 = sub_2195973B0();

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2195971B0(uint64_t a1, uint64_t a2)
{
  sub_2195975C8(a1, v9);
  sub_2195975C8(a2, v11);
  v7[8] = v9[8];
  v8[0] = v10[0];
  *(v8 + 9) = *(v10 + 9);
  v7[4] = v9[4];
  v7[5] = v9[5];
  v7[6] = v9[6];
  v7[7] = v9[7];
  v7[0] = v9[0];
  v7[1] = v9[1];
  v7[2] = v9[2];
  v7[3] = v9[3];
  v5[8] = v11[8];
  v6[0] = v12[0];
  *(v6 + 9) = *(v12 + 9);
  v5[4] = v11[4];
  v5[5] = v11[5];
  v5[6] = v11[6];
  v5[7] = v11[7];
  v5[0] = v11[0];
  v5[1] = v11[1];
  v5[2] = v11[2];
  v5[3] = v11[3];
  if (v9[0] == v11[0])
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_219BF78F4();
  }

  sub_218C113E0(v5);
  sub_218C113E0(v7);
  return v3 & 1;
}

unint64_t sub_2195972A8()
{
  result = qword_27CC1C2C8;
  if (!qword_27CC1C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C2C8);
  }

  return result;
}

unint64_t sub_219597300()
{
  result = qword_27CC1C2D0;
  if (!qword_27CC1C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C2D0);
  }

  return result;
}

unint64_t sub_219597358()
{
  result = qword_27CC1C2D8;
  if (!qword_27CC1C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C2D8);
  }

  return result;
}

unint64_t sub_2195973B0()
{
  result = qword_27CC1C2E0;
  if (!qword_27CC1C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C2E0);
  }

  return result;
}

unint64_t sub_219597408()
{
  result = qword_27CC1C2E8[0];
  if (!qword_27CC1C2E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CC1C2E8);
  }

  return result;
}

uint64_t sub_21959745C@<X0>(uint64_t a1@<X8>)
{
  sub_2195975C8(v1, v14);
  v12[0] = v14[7];
  v12[1] = v14[8];
  v13[0] = v15[0];
  *(v13 + 9) = *(v15 + 9);
  v10[1] = v14[3];
  v11[0] = v14[4];
  v11[1] = v14[5];
  v11[2] = v14[6];
  v9[0] = v14[0];
  v9[1] = v14[1];
  v10[0] = v14[2];
  sub_218AB7A30(v10, v8);
  sub_218AB7A30(v11 + 8, v7);
  sub_218AB7A30(v12, v6);

  sub_219BF0D84();
  sub_218C113E0(v9);
  v3 = *MEMORY[0x277D32E08];
  v4 = sub_219BF0614();
  return (*(*(v4 - 8) + 104))(a1, v3, v4);
}

uint64_t sub_21959759C(void *a1)
{
  if ([a1 horizontalSizeClass] == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_219597608()
{
  result = type metadata accessor for RecipeFilterSectionContainerView.PaddingBehavior();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2195976B0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 17) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_2195977F8(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 17) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_219597A14(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_219BED144();
}

uint64_t sub_219597C1C(char a1)
{
  sub_219BF7AA4();
  MEMORY[0x21CECE850](a1 & 1);
  return sub_219BF7AE4();
}

uint64_t sub_219597C80()
{
  sub_219BF7AA4();
  sub_219597BF4(v2, *v0);
  return sub_219BF7AE4();
}

uint64_t sub_219597D04@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v21 = a2;
  sub_2195985E8();
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_219BED134();
  swift_getWitnessTable();
  v4 = sub_219BED034();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v19 - v5;
  v7 = sub_219BEC724();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - v12;
  sub_219BEC974();
  v14 = *(a1 + 24);
  v22 = v3;
  v23 = v14;
  v24 = v19[1];
  sub_219BED024();
  sub_219BECB94();
  WitnessTable = swift_getWitnessTable();
  sub_219BECEC4();
  (*(v20 + 8))(v6, v4);
  v25 = WitnessTable;
  v26 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v16 = *(v8 + 16);
  v16(v13, v11, v7);
  v17 = *(v8 + 8);
  v17(v11, v7);
  v16(v21, v13, v7);
  return (v17)(v13, v7);
}

uint64_t sub_219598018@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a3;
  v62 = a4;
  v63 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v61 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v51 - v8;
  v56 = sub_219BEC954();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BECC84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195985E8();
  v57 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v59 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v58 = &v51 - v17;
  v52 = a1;
  v18 = *a1;
  v19 = a1[1];
  *&v71[0] = v18;
  *(&v71[0] + 1) = v19;
  sub_2187F3BD4();

  v20 = sub_219BECDA4();
  v22 = v21;
  v24 = v23;
  sub_219BECC64();
  sub_219BECBF4();

  (*(v11 + 104))(v13, *MEMORY[0x277CE0A10], v10);
  sub_219BECC94();

  (*(v11 + 8))(v13, v10);
  sub_219BECC04();

  v25 = sub_219BECD74();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = v24 & 1;
  v33 = v52;
  v34 = v22;
  v35 = v53;
  sub_2189A0BC8(v20, v34, v32);

  LOBYTE(v19) = sub_219BECB94();
  v36 = type metadata accessor for RecipeFilterSectionContainerView();
  sub_219BEC5A4();
  LOBYTE(v66[0]) = v29 & 1;
  LOBYTE(v64) = 0;
  *&v67 = v25;
  *(&v67 + 1) = v27;
  LOBYTE(v68) = v29 & 1;
  *(&v68 + 1) = v31;
  LOBYTE(v69) = v19;
  *(&v69 + 1) = v37;
  *v70 = v38;
  *&v70[8] = v39;
  *&v70[16] = v40;
  v70[24] = 0;
  v41 = v54;
  sub_219BEC944();
  sub_219598650();
  sub_2195986B4();
  v42 = v58;
  sub_219BECE84();
  (*(v55 + 8))(v41, v56);
  v71[1] = v68;
  v71[2] = v69;
  *v72 = *v70;
  *&v72[9] = *&v70[9];
  v71[0] = v67;
  sub_219598868(v71, sub_219598650);
  v43 = v63;
  v44 = *(v63 + 16);
  v45 = v33 + *(v36 + 40);
  v46 = v60;
  v44(v60, v45, a2);
  v47 = v59;
  sub_21959872C(v42, v59);
  *&v67 = v47;
  v48 = v61;
  v44(v61, v46, a2);
  *(&v67 + 1) = v48;
  v66[0] = v57;
  v66[1] = a2;
  v64 = sub_219598790();
  v65 = v35;
  sub_219597A14(&v67, 2uLL, v66);
  v49 = *(v43 + 8);
  v49(v46, a2);
  sub_219598868(v42, sub_2195985E8);
  v49(v48, a2);
  return sub_219598868(v47, sub_2195985E8);
}

void sub_2195985E8()
{
  if (!qword_27CC1C3F0)
  {
    sub_219598650();
    sub_219BECB24();
    v0 = sub_219BEC724();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1C3F0);
    }
  }
}

void sub_219598650()
{
  if (!qword_27CC1C3F8)
  {
    v0 = sub_219BEC724();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1C3F8);
    }
  }
}

unint64_t sub_2195986B4()
{
  result = qword_27CC1C400;
  if (!qword_27CC1C400)
  {
    sub_219598650();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C400);
  }

  return result;
}

uint64_t sub_21959872C(uint64_t a1, uint64_t a2)
{
  sub_2195985E8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_219598790()
{
  result = qword_27CC1C408;
  if (!qword_27CC1C408)
  {
    sub_2195985E8();
    sub_2195986B4();
    sub_219598810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C408);
  }

  return result;
}

unint64_t sub_219598810()
{
  result = qword_27CC0BAF8;
  if (!qword_27CC0BAF8)
  {
    sub_219BECB24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BAF8);
  }

  return result;
}

uint64_t sub_219598868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2195988C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195990D4(0, &qword_280E8CD98, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21959901C();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_219599138(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_219599070(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219598B74(uint64_t a1)
{
  v2 = sub_21959901C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219598BB0(uint64_t a1)
{
  v2 = sub_21959901C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219598C2C(void *a1)
{
  sub_2195990D4(0, &qword_280E8C560, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21959901C();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_219599138(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219598E8C(uint64_t a1)
{
  result = sub_219599138(&qword_27CC0B9B0, type metadata accessor for MoreForYouTodayFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_219598EE4(uint64_t a1)
{
  v2 = sub_219599138(&qword_27CC1C420, type metadata accessor for MoreForYouTodayFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219598F70(void *a1)
{
  a1[1] = sub_219599138(&qword_27CC1C420, type metadata accessor for MoreForYouTodayFeedGroup);
  a1[2] = sub_219599138(&qword_280EC0F78, type metadata accessor for MoreForYouTodayFeedGroup);
  result = sub_219599138(&qword_280EC0F80, type metadata accessor for MoreForYouTodayFeedGroup);
  a1[3] = result;
  return result;
}

unint64_t sub_21959901C()
{
  result = qword_280EC0FA0;
  if (!qword_280EC0FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC0FA0);
  }

  return result;
}

uint64_t sub_219599070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoreForYouTodayFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2195990D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21959901C();
    v7 = a3(a1, &type metadata for MoreForYouTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219599138(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219599194()
{
  result = qword_27CC1C428;
  if (!qword_27CC1C428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C428);
  }

  return result;
}

unint64_t sub_2195991EC()
{
  result = qword_280EC0F90;
  if (!qword_280EC0F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC0F90);
  }

  return result;
}

unint64_t sub_219599244()
{
  result = qword_280EC0F98;
  if (!qword_280EC0F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC0F98);
  }

  return result;
}

uint64_t EngagementJourneyURLHandlerProcessor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t EngagementJourneyURLHandlerProcessor.patterns.getter()
{
  sub_2195993B8();
  sub_219BE26D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_219BE2664();
  return v0;
}

void sub_2195993B8()
{
  if (!qword_280E8C098)
  {
    sub_219BE26D4();
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8C098);
    }
  }
}

void EngagementJourneyURLHandlerProcessor.processURL(for:)()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = sub_219BE7174();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 rootViewController];

    if (v3)
    {
      v4 = sub_219BF6534();

      sub_219599584();
      sub_219BF6584();
      if (v9)
      {

        if (qword_27CC08628 != -1)
        {
          swift_once();
        }

        v5 = sub_219BE5434();
        __swift_project_value_buffer(v5, qword_27CCD8BA0);
        v6 = sub_219BE5414();
        v7 = sub_219BF6214();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&dword_2186C1000, v6, v7, "EngagementJourneyURLHandlerProcessor: Dismissing presented AMSUIEngagementViewController...", v8, 2u);
          MEMORY[0x21CECF960](v8, -1, -1);
        }

        [v4 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

unint64_t sub_219599584()
{
  result = qword_280E8DCB8;
  if (!qword_280E8DCB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DCB8);
  }

  return result;
}

uint64_t sub_2195995D0()
{
  sub_2195993B8();
  sub_219BE26D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_219BE2664();
  return v0;
}

unint64_t sub_2195996C0()
{
  result = qword_280E9BB08;
  if (!qword_280E9BB08)
  {
    type metadata accessor for EngagementJourneyURLHandlerProcessor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9BB08);
  }

  return result;
}

uint64_t sub_219599774(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v118 = a3;
  v119 = a2;
  v109 = sub_219BE6DF4();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21959A85C(0, &qword_280EE4AF0, MEMORY[0x277D6DF88]);
  v116 = *(v7 - 8);
  v117 = v7;
  MEMORY[0x28223BE20](v7);
  v115 = &v100 - v8;
  v9 = type metadata accessor for MagazineFeedGapLocation(0);
  MEMORY[0x28223BE20](v9 - 8);
  v105 = (&v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v132 = sub_219BF0BD4();
  v111 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v131 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MagazineFeedGroup();
  v110 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v126 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v100 - v15;
  v123 = type metadata accessor for MagazineFeedExpandResult.Result(0);
  MEMORY[0x28223BE20](v123);
  v18 = (&v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21959A85C(0, &qword_280EE3600, MEMORY[0x277D6EC60]);
  v20 = v19;
  v112 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v124 = &v100 - v21;
  sub_218D51CC0();
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v122 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v100 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v100 - v28;
  sub_21959A85C(0, &qword_280EE5930, MEMORY[0x277D6D710]);
  v31 = v30;
  v32 = *(v30 - 8);
  v33 = MEMORY[0x28223BE20](v30);
  v106 = &v100 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v104 = &v100 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v120 = &v100 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v100 - v39;
  v121 = v4;
  v125 = v20;
  sub_219BEB244();
  v129 = *(v32 + 48);
  v130 = v32 + 48;
  if (v129(v29, 1, v31) == 1)
  {
    sub_2192234F0(v29, sub_218D51CC0);
LABEL_5:
    v45 = v116;
    v44 = v117;
    v46 = v115;
    (*(v116 + 104))(v115, *MEMORY[0x277D6DF80], v117);
    v119(v46);
    return (*(v45 + 8))(v46, v44);
  }

  v41 = *(v32 + 32);
  v114 = v32 + 32;
  v113 = v41;
  v41(v40, v29, v31);
  v42 = sub_218E66480();
  if (v43)
  {
    (*(v32 + 8))(v40, v31);
    goto LABEL_5;
  }

  v127 = v42;
  v101 = v40;
  v128 = v31;
  (*(v112 + 16))(v124, a1, v125);
  v48 = type metadata accessor for MagazineFeedExpandResult(0);
  v49 = v121;
  sub_2192233EC(v121 + *(v48 + 20), v18, type metadata accessor for MagazineFeedExpandResult.Result);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v102 = a1;
  v103 = v32;
  if (EnumCaseMultiPayload == 1)
  {
    sub_218D52054();
    v51 = v126;
    sub_219223388(v18, v126);
    v52 = type metadata accessor for MagazineFeedExpandBlueprintModifier();
    __swift_project_boxed_opaque_existential_1((v49 + *(v52 + 20)), *(v49 + *(v52 + 20) + 24));
    v53 = *(v49 + *(v48 + 24));
    type metadata accessor for TodayFeedServiceConfig();
    sub_21959A9EC(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v54 = v131;
    sub_219BEE7A4();
    v55 = v122;
    sub_21997FEC4(v51, v53, v54, v122);
    (*(v111 + 8))(v54, v132);
    v56 = v128;
    if (v129(v55, 1, v128) == 1)
    {
      sub_2192234F0(v55, sub_218D51CC0);
      v57 = v124;
    }

    else
    {
      v80 = v106;
      v113(v106, v55, v56);
      v57 = v124;
      sub_219BEB1E4();
      (*(v103 + 8))(v80, v56);
    }

    sub_219BEEFF4();
    sub_219BEEFE4();
    v81 = sub_219BEEFC4();

    v82 = 0;
    if (v81)
    {
      v82 = sub_219BEDC74();
    }

    else
    {
      v134 = 0;
      v135 = 0;
    }

    v133 = v81;
    v136 = v82;
    v94 = v125;
    sub_219BEB2C4();

    sub_2192234F0(v126, type metadata accessor for MagazineFeedGroup);
    v95 = v57;
  }

  else
  {
    v58 = *v18;
    v59 = type metadata accessor for MagazineFeedServiceConfig();
    v60 = sub_21959A9EC(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
    v126 = sub_219BEF3D4();
    sub_219BEB204();
    v122 = v60;
    v123 = v59;
    v61 = sub_219BEF3E4();
    v62 = *(v61 + 16);
    if (v62)
    {
      v106 = v58;
      v63 = type metadata accessor for MagazineFeedExpandBlueprintModifier();
      v64 = v48;
      v65 = (v121 + *(v63 + 20));
      v66 = *(v121 + *(v64 + 24));
      v67 = (*(v110 + 80) + 32) & ~*(v110 + 80);
      v100 = v61;
      v68 = v61 + v67;
      v69 = v110[9];
      v70 = (v111 + 8);
      v111 = v32 + 8;
      v110 = v70;
      while (1)
      {
        sub_2192233EC(v68, v16, type metadata accessor for MagazineFeedGroup);
        __swift_project_boxed_opaque_existential_1(v65, v65[3]);
        v71 = v131;
        sub_219BEE7A4();
        sub_21997FEC4(v16, v66, v71, v27);
        sub_2192234F0(v16, type metadata accessor for MagazineFeedGroup);
        (*v70)(v71, v132);
        v72 = v128;
        if (v129(v27, 1, v128) == 1)
        {
          sub_2192234F0(v27, sub_218D51CC0);
        }

        else
        {
          v121 = v62;
          v73 = v69;
          v74 = v65;
          v75 = v16;
          v76 = v66;
          v77 = v120;
          v78 = v27;
          v113(v120, v27, v72);
          v79 = v127;
          sub_219BEB1F4();
          result = (*v111)(v77, v72);
          v127 = v79 + 1;
          if (__OFADD__(v79, 1))
          {
            __break(1u);
            return result;
          }

          v66 = v76;
          v16 = v75;
          v27 = v78;
          v65 = v74;
          v69 = v73;
          v62 = v121;
          v70 = v110;
        }

        v68 += v69;
        if (!--v62)
        {

          v58 = v106;
          goto LABEL_21;
        }
      }
    }

LABEL_21:
    v83 = v124;
    v84 = v128;
    if (!(v58 >> 62))
    {
      v85 = swift_allocObject();
      sub_21959A950(0, &qword_280E91AD0, MEMORY[0x277D32188]);
      swift_allocObject();

      *(v85 + 16) = sub_219BEE874();
      v86 = v105;
      *v105 = v85;
      v87 = *MEMORY[0x277D33090];
      sub_21959A950(0, &qword_280E909E0, MEMORY[0x277D33098]);
      v89 = v88;
      v90 = *(v88 - 8);
      (*(v90 + 104))(v86, v87, v88);
      (*(v90 + 56))(v86, 0, 1, v89);
      v91 = v104;
      sub_218BB8230(v86, v104);
      sub_2192234F0(v86, type metadata accessor for MagazineFeedGapLocation);
      sub_219BEB1F4();
      (*(v103 + 8))(v91, v84);
    }

    sub_219BEEFF4();
    sub_219BEEFE4();
    v92 = sub_219BEEFC4();

    v93 = 0;
    if (v92)
    {
      v93 = sub_219BEDC74();
    }

    else
    {
      v134 = 0;
      v135 = 0;
    }

    v133 = v92;
    v136 = v93;
    v94 = v125;
    sub_219BEB2C4();

    v95 = v83;
  }

  v96 = v108;
  v97 = v107;
  v98 = v109;
  (*(v108 + 104))(v107, *MEMORY[0x277D6D868], v109);
  type metadata accessor for MagazineFeedSectionDescriptor();
  type metadata accessor for MagazineFeedModel(0);
  sub_21959A9EC(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
  sub_21959A9EC(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
  sub_21959A9EC(&unk_280EB0340, type metadata accessor for MagazineFeedSectionDescriptor);
  v99 = v115;
  sub_219BE85E4();
  (*(v96 + 8))(v97, v98);
  v119(v99);
  (*(v116 + 8))(v99, v117);
  (*(v112 + 8))(v95, v94);
  return (*(v103 + 8))(v101, v128);
}

uint64_t sub_21959A6CC(uint64_t a1)
{
  v2 = sub_21959A9EC(&unk_280E9D578, type metadata accessor for MagazineFeedExpandBlueprintModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

uint64_t type metadata accessor for MagazineFeedExpandBlueprintModifier()
{
  result = qword_280E9D560;
  if (!qword_280E9D560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21959A85C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor();
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = sub_21959A9EC(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
    v8[3] = sub_21959A9EC(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21959A950(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MagazineFeedServiceConfig();
    v7 = sub_21959A9EC(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21959A9EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21959AA5C(uint64_t a1, uint64_t a2)
{
  sub_218D57484();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21959AAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218D57484();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for SportsManagementLayoutSectionDescriptor()
{
  result = qword_27CC1C430;
  if (!qword_27CC1C430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21959AB90(uint64_t a1)
{
  sub_218D57484();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = type metadata accessor for TitleViewLayoutAttributes(319);
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

double sub_21959AC64()
{
  v1 = v0;
  v2 = type metadata accessor for TitleViewLayoutAttributes(0);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21959ADA8(v1, v8);
  v9 = *(v8 + 6);

  sub_218D57484();
  sub_218A52EFC(&v8[*(v10 + 48)], v6);
  Height = CGRectGetHeight(*&v6[*(v3 + 28)]);
  sub_218D57660(v6);
  return Height;
}

uint64_t sub_21959ADA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsManagementLayoutSectionDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21959AE1C()
{
  if (*v0)
  {
    return 1802658148;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_21959AE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746867696CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1802658148 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_219BF78F4();

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

uint64_t sub_21959AF24(uint64_t a1)
{
  v2 = sub_21959B2A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21959AF60(uint64_t a1)
{
  v2 = sub_21959B2A8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21959AF9C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_21959B2FC(a1, v6);
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

uint64_t sub_21959B000(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v8 = a2[5];
  sub_2186C6148(0, &qword_280E8DA00);
  if ((sub_219BF6DD4() & 1) == 0 || (sub_219BF6DD4() & 1) == 0 || (v2 != v4 || v3 != v5) && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  if (v9 == v6 && v10 == v8)
  {
    return 1;
  }

  return sub_219BF78F4();
}

uint64_t sub_21959B128(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a4;
  v13[1] = a5;
  sub_21959B540(0, &qword_27CC1C440, MEMORY[0x277D84538]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21959B2A8();
  sub_219BF7B44();
  v15 = 0;
  sub_219BF77F4();
  if (!v5)
  {
    v14 = 1;
    sub_219BF77F4();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_21959B2A8()
{
  result = qword_27CC1C448;
  if (!qword_27CC1C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C448);
  }

  return result;
}

uint64_t sub_21959B2FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_21959B540(0, &qword_27CC1C450, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21959B2A8();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v10 = sub_219BF76F4();
  v12 = v11;
  v22 = v10;
  v23 = 1;
  v13 = sub_219BF76F4();
  v15 = v14;
  v21 = v13;
  sub_2186C6148(0, &qword_280E8DA80);

  v20 = sub_219BF6D54();
  v16 = sub_219BF6D54();
  (*(v7 + 8))(v9, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v20;
  a2[1] = v16;
  v18 = v21;
  a2[2] = v22;
  a2[3] = v12;
  a2[4] = v18;
  a2[5] = v15;
  return result;
}

void sub_21959B540(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21959B2A8();
    v7 = a3(a1, &type metadata for ShortcutIconColor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21959B5B8()
{
  result = qword_27CC1C458;
  if (!qword_27CC1C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C458);
  }

  return result;
}

unint64_t sub_21959B610()
{
  result = qword_27CC1C460;
  if (!qword_27CC1C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C460);
  }

  return result;
}

unint64_t sub_21959B668()
{
  result = qword_27CC1C468;
  if (!qword_27CC1C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C468);
  }

  return result;
}

uint64_t sub_21959B6BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64657461727563;
  }

  else
  {
    v3 = 0x6C616E6F73726570;
  }

  if (v2)
  {
    v4 = 0xEC00000064657A69;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x64657461727563;
  }

  else
  {
    v5 = 0x6C616E6F73726570;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEC00000064657A69;
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

uint64_t sub_21959B76C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21959B7F8()
{
  sub_219BF5524();
}

uint64_t sub_21959B870()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21959B8F8@<X0>(char *a1@<X8>)
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

void sub_21959B958(uint64_t *a1@<X8>)
{
  v2 = 0x6C616E6F73726570;
  if (*v1)
  {
    v2 = 0x64657461727563;
  }

  v3 = 0xEC00000064657A69;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21959BA50(void *a1, uint64_t a2, char a3)
{
  sub_21959E0DC(0, &qword_280E8C608, MEMORY[0x277D84538]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13[-v10];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21959E034();
  sub_219BF7B44();
  v14 = a2;
  v13[15] = 0;
  sub_2186E2394();
  sub_218B9F868(&unk_280E8E9D0);
  sub_219BF7834();
  if (!v3)
  {
    v13[14] = a3 & 1;
    v13[13] = 1;
    sub_21959E140();
    sub_219BF7834();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21959BC28()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_21959BC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219D27800 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_219BF78F4();

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

uint64_t sub_21959BD58(uint64_t a1)
{
  v2 = sub_21959E034();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21959BD94(uint64_t a1)
{
  v2 = sub_21959E034();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21959BDD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21959DDF8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_21959BE24()
{
  type metadata accessor for ChannelHeroResult();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = 0;
  qword_27CCD8D20 = result;
  return result;
}

uint64_t sub_21959BE60()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21959BEBC(id *a1, unint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 32);
    v5 = *(a2 + 40);
    type metadata accessor for ChannelHeroServiceRequest();
    sub_2186F20D4();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_219C09EC0;
    v7 = [*a1 identifier];
    v8 = sub_219BF5414();
    v10 = v9;

    v11 = MEMORY[0x277D837D0];
    *(v6 + 56) = MEMORY[0x277D837D0];
    v12 = sub_2186FC3BC();
    *(v6 + 64) = v12;
    *(v6 + 32) = v8;
    *(v6 + 40) = v10;
    v13 = sub_219572AEC(v4, v5);
    *(v6 + 96) = v11;
    *(v6 + 104) = v12;
    *(v6 + 72) = v13;
    *(v6 + 80) = v14;
    sub_219BF6214();
    sub_219BE5314();

    if (v5 < 0)
    {
      return sub_21959C92C(a1, a2, v5 & 1);
    }

    else
    {
      return sub_21959C094(a1, a2, v4, v5 & 1);
    }
  }

  else
  {
    v16 = [*a1 identifier];
    v17 = sub_219BF5414();
    v19 = v18;

    sub_21959DCB8();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v19;
    *(v20 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_21959C094(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v73 = a2;
  v11 = [objc_opt_self() screens];
  sub_2186C6148(0, &unk_280E8D9A0);
  v12 = sub_219BF5924();

  if (v12 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v74 = v7;
    v77 = a1;
    v79 = v6;
    v80 = a3;
    if (!i)
    {

      v17 = 1.0;
      goto LABEL_11;
    }

    v14 = v12 & 0xC000000000000001;
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x21CECE0F0](0, v12);
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_71;
      }

      v15 = *(v12 + 32);
    }

    v11 = v15;
    LODWORD(v78) = a4;
    v7 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    if (i == 1)
    {
      break;
    }

    a4 = v12 & 0xFFFFFFFFFFFFFF8;
    a1 = 1;
    while (1)
    {
      if (v14)
      {
        v43 = MEMORY[0x21CECE0F0](a1, v12);
      }

      else
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_58;
        }

        if (a1 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v43 = *(v12 + 8 * a1 + 32);
      }

      v6 = v43;
      a3 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      [v11 scale];
      v45 = v44;
      [v6 scale];
      if (v46 < v45)
      {

        v11 = v6;
        ++a1;
        if (a3 == i)
        {
          goto LABEL_9;
        }
      }

      else
      {

        ++a1;
        if (a3 == i)
        {
          goto LABEL_8;
        }
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_8:
  v6 = v11;
LABEL_9:

  [v6 scale];
  v17 = v16;

  v7 = v74;
  a1 = v77;
  a4 = v78;
LABEL_11:
  v18 = type metadata accessor for ChannelHeroServiceRequest();
  v19 = *(a1 + *(v18 + 24));
  sub_2186F20D4();
  v76 = v20;
  v6 = swift_allocObject();
  v72 = xmmword_219C0B8C0;
  *(v6 + 16) = xmmword_219C0B8C0;
  v21 = *(a1 + *(type metadata accessor for ChannelSectionsGroupModel() + 20) + 48);
  a3 = a4;
  if (v21 >> 62)
  {
    v22 = sub_219BF7214();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = MEMORY[0x277D83B88];
  v24 = MEMORY[0x277D83C10];
  *(v6 + 56) = MEMORY[0x277D83B88];
  *(v6 + 64) = v24;
  *(v6 + 32) = v22;
  *(v6 + 96) = MEMORY[0x277D85048];
  *(v6 + 104) = sub_21959DD0C();
  *(v6 + 72) = v17;
  v25 = *(*(a1 + *(v18 + 40)) + 16);
  *(v6 + 136) = v23;
  *(v6 + 144) = v24;
  *(v6 + 112) = v25;
  sub_219BF6214();
  v75 = v19;
  sub_219BE5314();

  MEMORY[0x28223BE20](v26);
  v69[2] = a1;

  v27 = v79;
  v28 = sub_2195EB294(sub_21959DD60, v69, v21);
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  v29 = sub_219BA81E8(v28, v80);

  v30 = a3;
  v31 = sub_21959CF28(a1, v29, a3 & 1);

  v11 = (v31 >> 62);
  v78 = v31;
  if (v31 >> 62)
  {
    v32 = sub_219BF7214();
    if (v32)
    {
      goto LABEL_15;
    }

LABEL_63:

    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_219C09EC0;
    v59 = [*a1 identifier];
    v60 = sub_219BF5414();
    v62 = v61;

    *(v58 + 56) = MEMORY[0x277D837D0];
    *(v58 + 64) = sub_2186FC3BC();
    *(v58 + 32) = v60;
    *(v58 + 40) = v62;
    v63 = MEMORY[0x277D839F0];
    *(v58 + 96) = MEMORY[0x277D839B0];
    *(v58 + 104) = v63;
    *(v58 + 72) = v30 & 1;
    sub_219BF6214();
    sub_219BE5314();

    v64 = v73;
    v65 = *(v73 + 16);
    if (v65)
    {
      sub_218B66BCC(v73, v73 + 32, 1, (2 * v65) | 1);
      v64 = v67;
    }

    else
    {
    }

    v56 = a1;
    v57 = v64;
    goto LABEL_66;
  }

  v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_63;
  }

LABEL_15:
  v70 = v31 >> 62;
  v71 = v27;
  a4 = 0;
  v12 = v78;
  v81 = MEMORY[0x277D84F90];
  v79 = v78 & 0xC000000000000001;
  v80 = v78 & 0xFFFFFFFFFFFFFF8;
  a1 = &selRef__setPreferredLayout_;
  while (v79)
  {
    v11 = MEMORY[0x21CECE0F0](a4, v12);
    v6 = a4 + 1;
    if (__OFADD__(a4, 1))
    {
      goto LABEL_28;
    }

LABEL_22:
    v33 = FCThumbnailForHeadlineMinimumSize();
    a3 = 0x4092C00000000000;
    if (v33)
    {
      v34 = v33;
      v7 = &selRef__setPreferredLayout_;
      [v33 thumbnailSize];
      if (v35 < 1200.0)
      {
      }

      else
      {
        [v34 &selRef_todayPerformanceAlertSpinnerThreshold];
        v37 = v36;

        if (v37 >= 800.0)
        {
          sub_219BF73D4();
          sub_219BF7414();
          v12 = v78;
          sub_219BF7424();
          sub_219BF73E4();
          goto LABEL_18;
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_18:
    ++a4;
    if (v6 == v32)
    {
      goto LABEL_29;
    }
  }

  if (a4 >= *(v80 + 16))
  {
    __break(1u);
    goto LABEL_57;
  }

  v11 = *(v12 + 8 * a4 + 32);
  swift_unknownObjectRetain();
  v6 = a4 + 1;
  if (!__OFADD__(a4, 1))
  {
    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  v14 = v81;
  v11 = swift_allocObject();
  *(v11 + 1) = v72;
  i = *v77;
  v38 = [*v77 identifier];
  v39 = sub_219BF5414();
  v41 = v40;

  *(v11 + 7) = MEMORY[0x277D837D0];
  a4 = sub_2186FC3BC();
  *(v11 + 8) = a4;
  *(v11 + 4) = v39;
  *(v11 + 5) = v41;
  if (v70)
  {
    v42 = sub_219BF7214();
  }

  else
  {
    v42 = *(v80 + 16);
  }

  a3 = MEMORY[0x277D83B88];
  a1 = MEMORY[0x277D83C10];

  *(v11 + 12) = a3;
  *(v11 + 13) = a1;
  *(v11 + 9) = v42;
  LODWORD(v7) = v14 < 0 || (v14 & 0x4000000000000000) != 0;
  if (v7 != 1)
  {
    v47 = *(v14 + 16);
    goto LABEL_49;
  }

LABEL_71:
  v47 = sub_219BF7214();
LABEL_49:
  *(v11 + 17) = a3;
  *(v11 + 18) = a1;
  *(v11 + 14) = v47;
  sub_219BF6214();
  sub_219BE5314();

  if (v7)
  {
    if (sub_219BF7214())
    {
      goto LABEL_51;
    }

LABEL_53:

    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_219C09BA0;
    v50 = [i identifier];
    v51 = sub_219BF5414();
    v53 = v52;

    *(v49 + 56) = MEMORY[0x277D837D0];
    *(v49 + 64) = a4;
    *(v49 + 32) = v51;
    *(v49 + 40) = v53;
    sub_219BF6214();
    sub_219BE5314();

    v54 = v73;
    v55 = *(v73 + 16);
    if (v55)
    {
      sub_218B66BCC(v73, v73 + 32, 1, (2 * v55) | 1);
      v54 = v68;
    }

    else
    {
    }

    v56 = v77;
    v27 = v71;
    v57 = v54;
LABEL_66:
    v66 = sub_21959BEBC(v56, v57);

    if (!v27)
    {
      return v66;
    }
  }

  else
  {
    if (!*(v14 + 16))
    {
      goto LABEL_53;
    }

LABEL_51:
    type metadata accessor for ChannelHeroResult();
    result = swift_allocObject();
    *(result + 16) = v14;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_21959C92C(id *a1, unint64_t a2, char a3)
{
  LOBYTE(v3) = a3;
  v5 = a1;
  v6 = *(a1 + *(type metadata accessor for ChannelHeroServiceRequest() + 20));
  if (v6 >> 62)
  {
LABEL_38:
    v44 = v6;
    v7 = sub_219BF7214();
    v6 = v44;
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v48 = v5;
  if (v7)
  {
    v9 = sub_21959CF28(v5, v6, v3 & 1);
    v10 = v9;
    v50 = MEMORY[0x277D84F90];
    v47 = v9 >> 62;
    if (v9 >> 62)
    {
      v11 = sub_219BF7214();
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v46 = a2;
    if (v11)
    {
      a2 = 0;
      v3 = v10 & 0xC000000000000001;
      v49 = v11;
      while (1)
      {
        if (v3)
        {
          v12 = MEMORY[0x21CECE0F0](a2, v10);
          v13 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:
            v14 = v50;
            v5 = v48;
            v8 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
            goto LABEL_21;
          }
        }

        else
        {
          if (a2 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_38;
          }

          v12 = *(v10 + 8 * a2 + 32);
          swift_unknownObjectRetain();
          v13 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            goto LABEL_17;
          }
        }

        if ([v12 hasThumbnail])
        {
          sub_219BF73D4();
          v5 = (v10 & 0xC000000000000001);
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          v11 = v49;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++a2;
        if (v13 == v11)
        {
          goto LABEL_18;
        }
      }
    }

    v14 = MEMORY[0x277D84F90];
LABEL_21:
    sub_2186F20D4();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_219C0EE20;
    v15 = *v5;
    v18 = [*v5 v8[278]];
    v19 = sub_219BF5414();
    v21 = v20;

    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_2186FC3BC();
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    if (v47)
    {
      v22 = sub_219BF7214();
    }

    else
    {
      v22 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = MEMORY[0x277D83B88];
    v24 = MEMORY[0x277D83C10];
    *(v17 + 96) = MEMORY[0x277D83B88];
    *(v17 + 104) = v24;
    *(v17 + 72) = v22;
    v25 = v14 < 0 || (v14 & 0x4000000000000000) != 0;
    if (v25)
    {
      v26 = sub_219BF7214();
    }

    else
    {
      v26 = *(v14 + 16);
    }

    *(v17 + 136) = v23;
    *(v17 + 144) = v24;
    *(v17 + 112) = v26;
    sub_2187E7248();
    *(v17 + 176) = v27;
    *(v17 + 184) = sub_21959DDA0();
    *(v17 + 152) = v14;

    sub_219BF6214();
    sub_219BE5314();

    if (v25)
    {
      if (sub_219BF7214())
      {
LABEL_31:
        type metadata accessor for ChannelHeroResult();
        result = swift_allocObject();
        *(result + 16) = v14;
        *(result + 24) = 1;
        return result;
      }
    }

    else if (*(v14 + 16))
    {
      goto LABEL_31;
    }

    v16 = 4;
    a2 = v46;
  }

  else
  {
    v15 = *v5;
    v16 = 1;
  }

  v29 = [v15 identifier];
  v30 = sub_219BF5414();
  v32 = v31;

  sub_21959DCB8();
  v33 = swift_allocError();
  *v34 = v30;
  *(v34 + 8) = v32;
  *(v34 + 16) = v16;
  swift_willThrow();
  sub_2186F20D4();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_219C09EC0;
  v36 = [v15 &_OBJC_LABEL_PROTOCOL___FCPrivateChannelMembershipObserving];
  v37 = sub_219BF5414();
  v39 = v38;

  v40 = MEMORY[0x277D837D0];
  *(v35 + 56) = MEMORY[0x277D837D0];
  v41 = sub_2186FC3BC();
  *(v35 + 64) = v41;
  *(v35 + 32) = v37;
  *(v35 + 40) = v39;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v35 + 96) = v40;
  *(v35 + 104) = v41;
  *(v35 + 72) = 0;
  *(v35 + 80) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();

  v42 = *(a2 + 16);
  if (v42)
  {
    sub_218B66BCC(a2, a2 + 32, 1, (2 * v42) | 1);
    a2 = v45;
  }

  else
  {
  }

  v43 = sub_21959BEBC(v48, a2);

  return v43;
}

BOOL sub_21959CE8C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ChannelHeroServiceRequest() + 40));
  v4 = [v2 identifier];
  v5 = sub_219BF5414();
  v7 = v6;

  LOBYTE(v3) = sub_2188537B8(v5, v7, v3);

  return (v3 & 1) == 0;
}

unint64_t sub_21959CF28(id *a1, unint64_t a2, char a3)
{
  v7 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v8 = MEMORY[0x277D837D0];
  if (a3)
  {
LABEL_32:
    type metadata accessor for ChannelHeroServiceRequest();
    sub_2186F20D4();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_219C0B8C0;
    v30 = [*a1 v7[278]];
    v31 = sub_219BF5414();
    v33 = v32;

    *(v29 + 56) = v8;
    *(v29 + 64) = sub_2186FC3BC();
    *(v29 + 32) = v31;
    *(v29 + 40) = v33;
    if (a2 >> 62)
    {
      v34 = sub_219BF7214();
    }

    else
    {
      v34 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v35 = MEMORY[0x277D83C10];
    *(v29 + 96) = MEMORY[0x277D83B88];
    *(v29 + 104) = v35;
    *(v29 + 72) = v34;
    v36 = MEMORY[0x277D839F0];
    *(v29 + 136) = MEMORY[0x277D839B0];
    *(v29 + 144) = v36;
    *(v29 + 112) = a3 & 1;
    sub_219BF6214();
    sub_219BE5314();

    return a2;
  }

  v9 = *(v3 + 56);
  v10 = *a1;
  swift_unknownObjectRetain();
  v11 = [v9 purchaseProvider];
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v12 = [v10 asSection];
    if (!v12 || (v13 = [v12 parentID], swift_unknownObjectRelease(), !v13))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_9;
    }
  }

  else
  {
    v13 = [v10 identifier];
  }

  v14 = sub_219BF5414();
  v16 = v15;

  v17 = [v11 purchasedTagIDs];
  v18 = sub_219BF5D44();

  LOBYTE(v17) = sub_2188537B8(v14, v16, v18);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v17)
  {
    swift_unknownObjectRelease();
    v8 = MEMORY[0x277D837D0];
    v7 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    goto LABEL_32;
  }

LABEL_9:
  v19 = [objc_msgSend(v9 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v19, v19 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
  }

  v55 = v53;
  v56 = v54;
  if (!*(&v54 + 1))
  {
    sub_218806FD0(&v55);
    goto LABEL_17;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v20 = 0;
    v22 = 0;
    goto LABEL_18;
  }

  v20 = v52;
  v21 = [v52 integerValue];
  if (v21 == -1)
  {

    v8 = MEMORY[0x277D837D0];
    goto LABEL_29;
  }

  v22 = v21;
LABEL_18:
  if (objc_getAssociatedObject(v19, ~v22))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
  }

  v55 = v53;
  v56 = v54;
  if (!*(&v54 + 1))
  {
    sub_218806FD0(&v55);
LABEL_26:

    v8 = MEMORY[0x277D837D0];
    if (v22)
    {
      goto LABEL_29;
    }

LABEL_27:
    v25 = swift_unknownObjectRelease();
    goto LABEL_35;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v23 = v52;
  v24 = [v23 integerValue];

  v8 = MEMORY[0x277D837D0];
  if (((v24 ^ v22) & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_29:
  v26 = [objc_msgSend(v9 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v7 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v27 = [v10 identifier];
  if (!v27)
  {
    sub_219BF5414();
    v27 = sub_219BF53D4();
  }

  v28 = [v26 containsTagID_];

  v25 = swift_unknownObjectRelease();
  if (v28)
  {
    goto LABEL_32;
  }

LABEL_35:
  MEMORY[0x28223BE20](v25);
  v51[2] = a1;
  v51[3] = v37;

  v38 = sub_2195EB294(sub_21959DD80, v51, a2);
  type metadata accessor for ChannelHeroServiceRequest();
  sub_2186F20D4();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_219C0EE20;
  v40 = [v10 identifier];
  v41 = sub_219BF5414();
  v43 = v42;

  *(v39 + 56) = v8;
  *(v39 + 64) = sub_2186FC3BC();
  *(v39 + 32) = v41;
  *(v39 + 40) = v43;
  if (a2 >> 62)
  {
    v44 = sub_219BF7214();
  }

  else
  {
    v44 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = MEMORY[0x277D83B88];
  v46 = MEMORY[0x277D83C10];
  *(v39 + 96) = MEMORY[0x277D83B88];
  *(v39 + 104) = v46;
  *(v39 + 72) = v44;
  if (v38 >> 62)
  {
    v47 = sub_219BF7214();
  }

  else
  {
    v47 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v39 + 136) = v45;
  *(v39 + 144) = v46;
  v48 = MEMORY[0x277D839B0];
  *(v39 + 112) = v47;
  v49 = MEMORY[0x277D839F0];
  *(v39 + 176) = v48;
  *(v39 + 184) = v49;
  *(v39 + 152) = 0;
  sub_219BF6214();
  sub_219BE5314();

  return v38;
}

BOOL sub_21959D5FC(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [*a1 clusterID];
  if (v6)
  {
    v7 = v6;
    v8 = sub_219BF5414();
    v10 = v9;

    v11 = type metadata accessor for ChannelHeroServiceRequest();
    v12 = sub_2188537B8(v8, v10, *(a2 + *(v11 + 44)));

    if (v12)
    {
      return 0;
    }
  }

  v13 = *(a3 + 56);
  v14 = [v5 isPaid];
  if ([v5 respondsToSelector_])
  {
    v15 = [v5 isBundlePaid];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v5 sourceChannel];
  if (v16)
  {
    v17 = [v16 identifier];
    swift_unknownObjectRelease();
    v18 = sub_219BF5414();
    v20 = v19;

    if (v14)
    {
      goto LABEL_8;
    }

LABEL_13:
    if (v15)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v18 = 0;
  v20 = 0;
  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = [v13 purchaseProvider];
  if (v20)
  {
    v22 = [v21 purchasedTagIDs];
    v23 = sub_219BF5D44();

    LOBYTE(v22) = sub_2188537B8(v18, v20, v23);

    swift_unknownObjectRelease();
    if ((v22 & 1) == 0)
    {
      if (!v15)
      {
        goto LABEL_36;
      }

      goto LABEL_17;
    }

LABEL_14:

    return 1;
  }

  swift_unknownObjectRelease();
  if (!v15)
  {
    goto LABEL_36;
  }

LABEL_17:
  if (v20)
  {
    v25 = [objc_msgSend(v13 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v25, v25 + 1))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    v36 = v34;
    v37 = v35;
    if (*(&v35 + 1))
    {
      sub_2186C6148(0, &qword_280E8DA20);
      if (swift_dynamicCast())
      {
        v26 = v38;
        v27 = [v38 integerValue];
        if (v27 == -1)
        {

          goto LABEL_38;
        }

        v28 = v27;
LABEL_27:
        if (objc_getAssociatedObject(v25, ~v28))
        {
          sub_219BF70B4();
          swift_unknownObjectRelease();
        }

        else
        {
          v34 = 0u;
          v35 = 0u;
        }

        v36 = v34;
        v37 = v35;
        if (*(&v35 + 1))
        {
          sub_2186C6148(0, &qword_280E8DA20);
          if (swift_dynamicCast())
          {
            v29 = v38;
            v30 = [v29 integerValue];

            if ((v30 ^ v28))
            {
LABEL_38:
              v31 = [objc_msgSend(v13 bundleSubscriptionProvider];
              swift_unknownObjectRelease();
              v32 = [v31 bundleChannelIDs];

              v33 = sub_219BF53D4();
              LOBYTE(v31) = [v32 containsObject_];

              return (v31 & 1) != 0;
            }

LABEL_36:

            return 0;
          }
        }

        else
        {
          sub_218806FD0(&v36);
        }

        if (v28)
        {
          goto LABEL_38;
        }

        goto LABEL_36;
      }
    }

    else
    {
      sub_218806FD0(&v36);
    }

    v26 = 0;
    v28 = 0;
    goto LABEL_27;
  }

  return 0;
}

unint64_t sub_21959DA84()
{
  result = qword_27CC1C470;
  if (!qword_27CC1C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C470);
  }

  return result;
}

unint64_t sub_21959DAD8()
{
  result = qword_280EDE228;
  if (!qword_280EDE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDE228);
  }

  return result;
}

char *sub_21959DB3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 >> 62)
  {
    v3 = sub_219BF7214();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
LABEL_12:
    v15 = sub_218845F78(v4);

    return v15;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v16 = a1;
    v6 = 0;
    v4 = v17;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CECE0F0](v6, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      v8 = [v7 identifier];
      v9 = sub_219BF5414();
      v11 = v10;
      swift_unknownObjectRelease();

      v13 = *(v17 + 16);
      v12 = *(v17 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21870B65C((v12 > 1), v13 + 1, 1);
      }

      ++v6;
      *(v17 + 16) = v13 + 1;
      v14 = v17 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v3 != v6);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_21959DCB8()
{
  result = qword_280EC5928;
  if (!qword_280EC5928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC5928);
  }

  return result;
}