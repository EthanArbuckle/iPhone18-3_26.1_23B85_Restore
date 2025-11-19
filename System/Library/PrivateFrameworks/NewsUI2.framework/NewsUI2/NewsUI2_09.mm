uint64_t sub_2187AFC94(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2187AFCDC(void **a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for PaidBundleViaOfferUIHandler();
  v3 = sub_219BE1E24();
  if (v3)
  {
    v4 = v3;
    [v2 setDelegate_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2187AFD6C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2187AFDA8()
{
  v1 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x70));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 128))(v0, v2, v3);
}

void sub_2187AFE28(uint64_t a1)
{
  v2 = [objc_opt_self() currentNotificationCenter];
  [v2 setDelegate_];
}

id sub_2187AFF10()
{
  ObjectType = swift_getObjectType();
  *&v0[qword_280EDDC30] = 0;
  *&v0[qword_280EDDD78] = 0;
  v2 = &v0[qword_280EDDD90];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  *&v0[qword_280EDDD58] = 0;
  *&v0[qword_280EDDD70] = 0;
  *&v0[qword_280EDDDA8] = 0;
  v3 = &v0[qword_280EDDD60];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[qword_280EDDD48];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v0[qword_280EDDD20];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v0[qword_280EDDCC8];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *&v0[qword_280EDDCB0] = 0;
  *&v0[qword_280EDDC68] = 0;
  *&v0[qword_280EDDC60] = 0;
  *&v0[qword_280EDDC78] = 0;
  *&v0[qword_280EDDC90] = 0;
  *&v0[qword_280EDDD08] = 0;
  v7 = &v0[qword_280EDDD40];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = &v0[qword_280EDDC38];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *&v0[qword_280EDDCA0] = 0;
  *&v0[qword_280EDDD18] = 0;
  *&v0[qword_280EDDC50] = 0;
  *&v0[qword_280EDDCD8] = 0;
  v9 = &v0[qword_280EDDC80];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v0[qword_280EDDCE8] = 0;
  v10 = &v0[qword_280EDDC40];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v0[qword_280EDDD88] = 0;
  v11 = &v0[qword_280EDDDC0];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  *&v0[qword_280EDDC88] = 0;
  *&v0[qword_280EDDCC0] = 0;
  *&v0[qword_280EDDDC8] = 0;
  v12 = qword_280F621E0;
  v13 = sub_219BDBD34();
  v14 = *(*(v13 - 8) + 56);
  v14(&v0[v12], 1, 1, v13);
  v14(&v0[qword_280F621D8], 1, 1, v13);
  *&v0[qword_280EDDD30] = 0;
  *&v0[qword_280EDDCF8] = 0;
  *&v0[qword_280EDDDD0] = 0xF000000000000007;
  *&v0[qword_280EDDDB8] = 0;
  v15 = qword_280EDDDA0;
  *&v0[v15] = sub_2187B01D0(MEMORY[0x277D84F90]);
  v17.receiver = v0;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

unint64_t sub_2187B01D0(uint64_t a1)
{
  sub_21872C1F4(0, &qword_280E8F828, sub_2187B0408);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2194B7D34(0, &qword_280E8D370, sub_2187B0408, MEMORY[0x277D84460]);
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2194B77BC(v10, v6, &qword_280E8F828, sub_2187B0408);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21870F700(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      sub_2187B0408();
      result = sub_218754608(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, sub_2187B0408);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2187B0408()
{
  if (!qword_280EE9D70)
  {
    sub_219BDB954();
    sub_2186F85E8(255, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE9D70);
    }
  }
}

void sub_2187B04A0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  sub_2187B0538(v8, v9, v10);
}

void sub_2187B0538(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v89 = a3;
  v7 = type metadata accessor for TodayFeedServiceContext();
  MEMORY[0x28223BE20](v7 - 8);
  v86 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_219BE2A54();
  v9 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D83D88];
  sub_2186DD934(0, &unk_280E8FCB8, MEMORY[0x277D6C628], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v83 - v14;
  v16 = MEMORY[0x277CC9578];
  sub_2186DD934(0, &qword_280EE9C40, MEMORY[0x277CC9578], v12);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v83 - v18;
  sub_219BDBD24();
  v20 = sub_219BDBD34();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  v21 = qword_280F621E0;
  swift_beginAccess();
  sub_2187B132C(v19, &v4[v21], &qword_280EE9C40, v16);
  swift_endAccess();
  v22 = [a2 persistentIdentifier];
  v23 = sub_219BF5414();
  v25 = v24;

  objc_opt_self();
  v91 = swift_dynamicCastObjCClass();
  if (!v91)
  {

    sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_219C09EC0;
    v51 = [a2 persistentIdentifier];
    v52 = sub_219BF5414();
    v54 = v53;

    v55 = MEMORY[0x277D837D0];
    *(v50 + 56) = MEMORY[0x277D837D0];
    v56 = sub_2186FC3BC();
    *(v50 + 64) = v56;
    *(v50 + 32) = v52;
    *(v50 + 40) = v54;
    v57 = a1;
    v58 = [v57 description];
    v59 = sub_219BF5414();
    v61 = v60;

    *(v50 + 96) = v55;
    *(v50 + 104) = v56;
    *(v50 + 72) = v59;
    *(v50 + 80) = v61;
    sub_2186C6148(0, &qword_280E8D790);
    v62 = sub_219BF6F44();
    sub_219BF6214();
    sub_219BE5314();

LABEL_23:

    return;
  }

  v88 = v25;
  v90 = a2;
  v84 = a1;
  sub_2187B13AC(aBlock);
  __swift_project_boxed_opaque_existential_1(aBlock, v96);
  sub_2186C6148(0, &unk_280E8E7B0);
  v26 = sub_219BE1E24();
  if (!v26)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v27 = v26;
  [v26 runExtendedLaunchTest];

  __swift_destroy_boxed_opaque_existential_1(aBlock);
  sub_2187B13AC(aBlock);
  __swift_project_boxed_opaque_existential_1(aBlock, v96);
  sub_219BF5184();
  sub_219BE1E34();
  sub_2187455EC(v15, &unk_280E8FCB8, MEMORY[0x277D6C628], MEMORY[0x277D83D88], sub_2186DD934);
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_219C09BA0;
  *(v28 + 56) = MEMORY[0x277D837D0];
  v85 = sub_2186FC3BC();
  *(v28 + 64) = v85;
  v29 = v88;
  *(v28 + 32) = v23;
  *(v28 + 40) = v29;
  sub_2186C6148(0, &qword_280E8D790);

  v30 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  v83 = sub_219BDCE74();
  v31 = sub_219BDCE64();
  sub_219BDCE44();

  v32 = sub_2187B5DEC(&qword_280EDDD88, &qword_280E8E890);
  v97 = sub_2187B5EBC;
  v98 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  v96 = &block_descriptor_102;
  v33 = _Block_copy(aBlock);
  [v32 loadFeldsparIDWithCompletion_];
  _Block_release(v33);

  v34 = *&v4[qword_280EDDDC8];
  v35 = v89;
  *&v4[qword_280EDDDC8] = v89;

  v36 = v35;
  v37 = [v90 stateRestorationActivity];
  v38 = *&v4[qword_280EDDD30];
  *&v4[qword_280EDDD30] = v37;

  sub_2187B5F14(aBlock);
  __swift_project_boxed_opaque_existential_1(aBlock, v96);
  sub_219BF69F4();
  sub_219BE2994();
  (*(v9 + 8))(v11, v87);
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  sub_2187B6C88(aBlock);
  __swift_project_boxed_opaque_existential_1(aBlock, v96);
  sub_219BE7164();
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  v39 = objc_opt_self();
  v40 = [v39 sharedApplication];
  v41 = [v40 isRunningPerformanceTest];

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_219C0B8C0;
  v87 = v36;
  v43 = sub_2187B70E0();
  v44 = MEMORY[0x277D839B0];
  v45 = MEMORY[0x277D839F0];
  *(v42 + 56) = MEMORY[0x277D839B0];
  *(v42 + 64) = v45;
  *(v42 + 32) = v43 & 1;
  v46 = [v39 sharedApplication];
  v47 = [v46 applicationState];

  if (v47)
  {
    if (v47 == 1)
    {
      v48 = 0xE800000000000000;
      v49 = 0x6576697463616E69;
    }

    else if (v47 == 2)
    {
      v48 = 0xEA0000000000646ELL;
      v49 = 0x756F72676B636162;
    }

    else
    {
      v48 = 0xE700000000000000;
      v49 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v48 = 0xE600000000000000;
    v49 = 0x657669746361;
  }

  v63 = v85;
  *(v42 + 96) = MEMORY[0x277D837D0];
  *(v42 + 104) = v63;
  *(v42 + 72) = v49;
  *(v42 + 80) = v48;
  *(v42 + 136) = v44;
  *(v42 + 144) = v45;
  *(v42 + 112) = v41;
  v64 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  v65 = v90;
  v66 = [v90 stateRestorationActivity];
  v67 = [v91 traitCollection];
  v68 = sub_2187B7374(v66, v67);

  if (!v68)
  {

LABEL_15:
    sub_2187B7D90(&qword_280EDDCD8, sub_2187367A8);
    sub_2187B7D90(&qword_280EDDC50, type metadata accessor for TodayFeedServiceContextFactory);
    LOBYTE(aBlock[0]) = 0;
    v73 = v86;
    sub_2187B7F10(aBlock, v86);

    sub_219BED5F4();

    sub_2187B9A3C(v73, type metadata accessor for TodayFeedServiceContext);
    sub_2187B13AC(v94);
    __swift_project_boxed_opaque_existential_1(v94, v94[3]);
    sub_2186C709C(0, qword_280EBF670);
    sub_219BE1E34();
    if (v93)
    {
      sub_2186CB1F0(&v92, aBlock);
      __swift_destroy_boxed_opaque_existential_1(v94);
      __swift_project_boxed_opaque_existential_1(aBlock, v96);
      sub_2187B9A9C(v94);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      if ((v94[0] & 0xFE) != 2)
      {

        sub_219BED594();

        sub_219BEDE14();

        v74 = sub_219BDCE64();
        swift_allocObject();
        swift_weakInit();

        sub_219BDCE24();
      }

      v75 = [v39 sharedApplication];
      v76 = [v75 applicationState];

      v77 = v87;
      if ((sub_2187B70E0() | v41) & 1 | (v76 == 0))
      {

        sub_219BED594();

        sub_219BEDE04();
      }

      v78 = [v65 stateRestorationActivity];
      sub_2187BA030(v91, v89, v78);

      v79 = [v77 shortcutItem];
      if (v79)
      {
        v80 = v79;
        v81 = swift_allocObject();
        *(v81 + 16) = v4;
        *(v81 + 24) = v80;
        v4;
        v82 = v80;
        sub_2191BC388(sub_2191C2D00, v81);
      }

      v62 = v84;
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  sub_2187B13AC(aBlock);
  __swift_project_boxed_opaque_existential_1(aBlock, v96);
  sub_2186C709C(0, qword_280EB3110);
  sub_219BE1E34();
  if (v94[0])
  {
    v69 = v94[1];

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    ObjectType = swift_getObjectType();
    v71 = *(v69 + 16);
    v72 = v68;
    v71(v68, ObjectType, v69);

    swift_unknownObjectRelease();
    v65 = v90;
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_2187B12B4()
{

  return swift_deallocObject();
}

uint64_t sub_2187B12F4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2187B132C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186DD934(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2187B13AC@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_280EDDD90;
  swift_beginAccess();
  sub_2187B190C(v1 + v3, &v6, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v7)
  {
    return sub_2186CB1F0(&v6, a1);
  }

  v5 = MEMORY[0x277D6CB00];
  sub_2187B1DA0(&v6, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1E80();
  sub_219BE3334();

  sub_218718690(a1, &v6);
  swift_beginAccess();
  sub_2187B20EC(&v6, v1 + v3, &unk_280EE7DB0, &qword_280EE7DC0, v5);
  return swift_endAccess();
}

uint64_t sub_2187B14CC(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_2186C6F70(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2187B153C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_2189F7C7C(0, a3, a4, a5, sub_2186CFDE4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_2187B15C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_2187B1634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_2187B16A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_2187B171C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_2186E7D5C(0, a3, a4, a5, MEMORY[0x277D83D88]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_2187B17A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_2187B1814(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_2188096E0(0, a3, a4, a5, MEMORY[0x277D83D88]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_2187B1898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_2187B190C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_2187B1BF8(0, a3, a4, a5, MEMORY[0x277D83D88]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_2187B1990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_2187B1A04(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_2194E1890(0, a3, a4, a5, MEMORY[0x277D83D88]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_2187B1A88(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_2196D2BD4(0, a3, a4, a5, sub_2186CFDE4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_2187B1B0C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_218809748(0, a3, a4, a5, sub_2186CFDE4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_2187B1B90(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186CFDE4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2187B1BF8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C709C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2187B1C64(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_2186C6F70(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2187B1CC0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_2186E7D5C(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2187B1D30(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_2188096E0(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2187B1DA0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_2187B1BF8(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2187B1E10(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_2194E1890(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_2187B1E80()
{
  v1 = qword_280EDDD78;
  if (*(v0 + qword_280EDDD78))
  {
    goto LABEL_5;
  }

  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    ObjectType = swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (v5)
    {
      (*(v5 + 8))(v7, ObjectType, v5);
      swift_unknownObjectRelease();
      sub_219BE3354();
      swift_dynamicCast();
      *(v0 + v1) = v6;

LABEL_5:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2187B20EC(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_2187B1BF8(0, a3, a4, a5, MEMORY[0x277D83D88]);
  (*(*(v7 - 8) + 40))(a2, a1, v7);
  return a2;
}

void sub_2187B2170(void *a1, void *a2)
{
  static PPT.test.getter(&v9);
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (v4 == 6)
  {
    type metadata accessor for ExtendedLaunchToArticleTestCase();
    v5 = sub_219BE1E24();
    if (v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  type metadata accessor for ExtendedLaunchToTodayTestCase();
  v5 = sub_219BE1E24();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return;
  }

LABEL_5:
  v6 = v5;
  [a1 setExtendedLaunchTest_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for RootTestSuite();
  v7 = sub_219BE1E24();
  if (!v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  [a1 addTestSuite_];
}

uint64_t sub_2187B2290(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187A53A0();
  result = sub_219BE1E24();
  if (result)
  {
    v2 = type metadata accessor for ExtendedLaunchToTodayTestCase();
    v3 = objc_allocWithZone(v2);
    v4 = &v3[OBJC_IVAR____TtC7NewsUI229ExtendedLaunchToTodayTestCase_testName];
    strcpy(&v3[OBJC_IVAR____TtC7NewsUI229ExtendedLaunchToTodayTestCase_testName], "ExtendedLaunch");
    v4[15] = -18;
    *&v3[OBJC_IVAR____TtC7NewsUI229ExtendedLaunchToTodayTestCase_timeoutInSeconds] = 0x403E000000000000;
    *&v3[OBJC_IVAR____TtC7NewsUI229ExtendedLaunchToTodayTestCase_aggregate] = 1;
    swift_weakInit();
    swift_weakAssign();
    v6.receiver = v3;
    v6.super_class = v2;
    v5 = objc_msgSendSuper2(&v6, sel_init);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2187B23A4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280EC5430);
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      v5 = type metadata accessor for RootTestSuite();
      v6 = objc_allocWithZone(v5);
      *&v6[OBJC_IVAR____TtC7NewsUI213RootTestSuite_navigator] = v3;
      *&v6[OBJC_IVAR____TtC7NewsUI213RootTestSuite_featureAvailability] = v4;
      v7.receiver = v6;
      v7.super_class = v5;
      return objc_msgSendSuper2(&v7, sel_init);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2187B249C(void **a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ANFTestSuite();
  v4 = sub_219BE1E24();
  if (!v4)
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = v4;
  [v3 addSubTestSuite_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ArticleToArticleSwipeTestSuite();
  v6 = sub_219BE1E24();
  if (!v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = v6;
  [v3 addSubTestSuite_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ArticleMemoryTestSuite();
  v8 = sub_219BE1E24();
  if (!v8)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = v8;
  [v3 addSubTestSuite_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ArticleNavigationTestSuite();
  v10 = sub_219BE1E24();
  if (!v10)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = v10;
  [v3 addSubTestSuite_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FeedResponsivenessTestSuite();
  v12 = sub_219BE1E24();
  if (!v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = v12;
  [v3 addSubTestSuite_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for HistoryFeedTestSuite();
  v14 = sub_219BE1E24();
  if (!v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v14;
  [v3 addSubTestSuite_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineFeedTestSuite();
  v16 = sub_219BE1E24();
  if (!v16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = v16;
  [v3 addSubTestSuite_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for OpenCloseWebArticleTestSuite();
  v18 = sub_219BE1E24();
  if (!v18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v19 = v18;
  [v3 addSubTestSuite_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for PersonalizationScriptTestSuite();
  v20 = sub_219BE1E24();
  if (!v20)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v20;
  [v3 addSubTestSuite_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SavedFeedTestSuite();
  v22 = sub_219BE1E24();
  if (!v22)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v23 = v22;
  [v3 addSubTestSuite_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for TagFeedTestSuite();
  v24 = sub_219BE1E24();
  if (!v24)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v25 = v24;
  [v3 addSubTestSuite_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for TodayFeedTestSuite();
  v26 = sub_219BE1E24();
  if (!v26)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v27 = v26;
  [v3 addSubTestSuite_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for TodayFeedMemoryTestSuite();
  v28 = sub_219BE1E24();
  if (!v28)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v29 = v28;
  [v3 addSubTestSuite_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MySportsTestSuite();
  v30 = sub_219BE1E24();
  if (!v30)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v31 = v30;
  [v3 addSubTestSuite_];
}

id sub_2187B2914(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = objc_allocWithZone(a2(0));

  return [v2 init];
}

id sub_2187B29E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_2186E5A28(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = &v1[OBJC_IVAR____TtC7NewsUI230ArticleToArticleSwipeTestSuite_scrollViewObserver];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v1[OBJC_IVAR____TtC7NewsUI230ArticleToArticleSwipeTestSuite_scrollViewContentOffsetObserver] = 0;
  v21 = OBJC_IVAR____TtC7NewsUI230ArticleToArticleSwipeTestSuite_activity;
  sub_2187B2C48();
  v7 = v6;
  v8 = swift_allocBox();
  v10 = v9;
  v11 = *(v7 + 48);
  sub_2187B2DA0();
  v13 = *(v12 + 48);
  sub_2187B3004();
  v15 = *(v14 + 48);
  sub_219BDEA94();
  v16 = sub_219BDB954();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  v17 = MEMORY[0x277D84F90];
  sub_2187B3078(MEMORY[0x277D84F90]);
  *v10 = sub_219BDEA44();
  v18 = *MEMORY[0x277D2FF08];
  v19 = sub_219BDE294();
  (*(*(v19 - 8) + 104))(v10 + v15, v18, v19);
  sub_219BDD944();
  swift_storeEnumTagMultiPayload();
  *(v10 + v13) = v17;
  *(v10 + v11) = v17;
  *&v1[v21] = v8 | 2;
  v23.receiver = v1;
  v23.super_class = ObjectType;
  return objc_msgSendSuper2(&v23, sel_init);
}

void sub_2187B2C48()
{
  if (!qword_280EE0100[0])
  {
    type metadata accessor for NewsActivity2.Article(255);
    sub_2187B2E78(255, &unk_280E8F3A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_280EE0100);
    }
  }
}

uint64_t sub_2187B2CCC(uint64_t a1)
{
  sub_2187B2DA0();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = sub_219BDD944();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

void sub_2187B2DA0()
{
  if (!qword_280EE8E00)
  {
    sub_219BDD944();
    sub_2187B2E10();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE8E00);
    }
  }
}

void sub_2187B2E10()
{
  if (!qword_280E8F3B0)
  {
    sub_2187B2E78(255, &qword_280E8F3D0);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8F3B0);
    }
  }
}

void sub_2187B2E78(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_219BF5B14();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2187B2EC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2187B2F14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2187B2F64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2187B2FB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2187B3004()
{
  if (!qword_280EE8A90)
  {
    sub_219BDEA94();
    sub_219BDE294();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE8A90);
    }
  }
}

unint64_t sub_2187B3078(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_218A393C0();
    v3 = sub_219BF75B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_21870F700(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_2187B31C8(void *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void), void *a5)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, a2);
  result = sub_219BE1E34();
  if (v14)
  {
    v9 = v15;
    v10 = a4(0);
    v11 = objc_allocWithZone(v10);
    v12 = &v11[*a5];
    *v12 = v14;
    *(v12 + 1) = v9;
    v13.receiver = v11;
    v13.super_class = v10;
    return objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2187B33A4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (v13)
  {
    v3 = v14;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE9F20);
    result = sub_219BE1E34();
    v4 = v11;
    if (v11)
    {
      v5 = v12;
      v6 = type metadata accessor for OpenCloseWebArticleTestSuite();
      v7 = objc_allocWithZone(v6);
      v8 = &v7[OBJC_IVAR____TtC7NewsUI228OpenCloseWebArticleTestSuite_commandCenter];
      *v8 = v13;
      *(v8 + 1) = v3;
      v9 = &v7[OBJC_IVAR____TtC7NewsUI228OpenCloseWebArticleTestSuite_tagService];
      *v9 = v4;
      *(v9 + 1) = v5;
      v10.receiver = v7;
      v10.super_class = v6;
      return objc_msgSendSuper2(&v10, sel_init);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2187B367C(void **a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *a1;
  v4 = [objc_allocWithZone(a3(0)) init];
  [v3 addTestCase_];
}

void sub_2187B3814(void **a1)
{
  v1 = *a1;
  v2 = [objc_allocWithZone(type metadata accessor for TodayFeedScrollTestCase()) init];
  [v1 addTestCase_];

  v3 = [objc_allocWithZone(type metadata accessor for TodayFeedAdsDisabledScrollTestCase()) init];
  [v1 addTestCase_];

  v4 = [objc_allocWithZone(type metadata accessor for TodayFeedWithCarouselAdsScrollTestCase()) init];
  [v1 addTestCase_];

  v5 = [objc_allocWithZone(type metadata accessor for TodayFeedWithLargeCarouselAdsScrollTestCase()) init];
  [v1 addTestCase_];

  v6 = [objc_allocWithZone(type metadata accessor for TodayFeedWithMediumCarouselAdsScrollTestCase()) init];
  [v1 addTestCase_];

  v7 = [objc_allocWithZone(type metadata accessor for TodayFeedWithSmallCarouselAdsScrollTestCase()) init];
  [v1 addTestCase_];
}

id sub_2187B3CC0()
{

  v0 = sub_219BF53D4();

  return v0;
}

void sub_2187B3FC8(void **a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v5 = *a1;
  v6 = [objc_allocWithZone(a3(0)) init];
  [v5 addTestCase_];

  v7 = [objc_allocWithZone(a4(0)) init];
  [v5 addTestCase_];
}

void sub_2187B4478(void **a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  sub_219BE1E34();
  v4 = v21;
  if (!v21)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v22;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &unk_280E8DB88);
  v6 = sub_219BE1E24();
  if (!v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  sub_219BE1E34();
  v8 = v19;
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v20;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BDD274();
  v10 = sub_219BE1E24();
  if (v10)
  {
    v11 = v10;
    v12 = type metadata accessor for PersonalizationScriptTestCase();
    v13 = objc_allocWithZone(v12);
    *&v13[OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase____lazy_storage___dataStore] = 0;
    v14 = &v13[OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase_testName];
    *v14 = 0xD000000000000015;
    *(v14 + 1) = 0x8000000219CD8600;
    *&v13[OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase_timeoutInSeconds] = 0x405E000000000000;
    *&v13[OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase_aggregate] = 0;
    v15 = &v13[OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase_tagService];
    *v15 = v4;
    *(v15 + 1) = v5;
    *&v13[OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase_aggregateStoreProvider] = v7;
    v16 = &v13[OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase_commandCenter];
    *v16 = v8;
    *(v16 + 1) = v9;
    *&v13[OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase_tracker] = v11;
    v18.receiver = v13;
    v18.super_class = v12;
    v17 = objc_msgSendSuper2(&v18, sel_init);
    [v3 addTestCase_];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_2187B5308(void **a1)
{
  v1 = *a1;
  v2 = [objc_allocWithZone(type metadata accessor for ANFEmbedScrollTestCase()) init];
  [v1 addTestCase_];

  v3 = [objc_allocWithZone(type metadata accessor for ANFEmbedScrollAdsDisabledTestCase()) init];
  [v1 addTestCase_];

  v4 = [objc_allocWithZone(type metadata accessor for ANFGraphicalScrollTestCase()) init];
  [v1 addTestCase_];

  v5 = [objc_allocWithZone(type metadata accessor for ANFGraphicalScrollAdsDisabledTestCase()) init];
  [v1 addTestCase_];

  v6 = [objc_allocWithZone(type metadata accessor for ANFLongreadScrollTestCase()) init];
  [v1 addTestCase_];

  v7 = [objc_allocWithZone(type metadata accessor for ANFLongreadScrollAdsDisabledTestCase()) init];
  [v1 addTestCase_];
}

uint64_t sub_2187B5C44()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2187B5C7C(uint64_t a1, uint64_t a2)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_219BE7B24();

    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;

    sub_219BE2714();
  }

  return result;
}

uint64_t sub_2187B5DB4()
{

  return swift_deallocObject();
}

uint64_t sub_2187B5DEC(uint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
LABEL_5:
    v11 = v4;
    return v5;
  }

  v6 = v2;
  sub_2187B13AC(v12);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_2186C6148(0, a2);
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    __swift_destroy_boxed_opaque_existential_1(v12);
    v10 = *(v2 + v3);
    *(v6 + v3) = v9;
    v5 = v9;

    v4 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_2187B5EBC()
{
  sub_219BDCE74();
  v0 = sub_219BDCE64();
  sub_219BDCE34();
}

uint64_t sub_2187B5F14@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_280EDDCC8;
  swift_beginAccess();
  sub_2187B190C(v1 + v3, &v7, &unk_280EE7390, &unk_280EE73A0, MEMORY[0x277D6CD90]);
  if (v8)
  {
    return sub_2186CB1F0(&v7, a1);
  }

  sub_2187B1DA0(&v7, &unk_280EE7390, &unk_280EE73A0, MEMORY[0x277D6CD90]);
  sub_2187B13AC(&v7);
  __swift_project_boxed_opaque_existential_1(&v7, v8);
  sub_2186C709C(0, &unk_280EE73A0);
  result = sub_219BE1E34();
  if (v6)
  {
    sub_2186CB1F0(&v5, a1);
    __swift_destroy_boxed_opaque_existential_1(&v7);
    sub_218718690(a1, &v7);
    swift_beginAccess();
    sub_2187B20EC(&v7, v1 + v3, &unk_280EE7390, &unk_280EE73A0, MEMORY[0x277D6CD90]);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187B60C4()
{
  swift_getObjectType();

  return sub_219BE2504();
}

uint64_t sub_2187B6134()
{
  updated = type metadata accessor for OfflineFeedUpdateCondition(0);
  MEMORY[0x28223BE20](updated - 8);
  v3 = (v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = _s7NewsUI215OfflineFeedKindO8allCasesSayACGvgZ_0();
  v5 = v4[2];
  if (v5)
  {
    v6 = v4 + 5;
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      sub_218720448(v7, *v6);
      sub_2187B62D4(v8, v0, v3);
      v10[0] = v7;
      v10[1] = v8;
      sub_2187B6648(v10, v3);
      sub_2187B6BC4(v3, type metadata accessor for OfflineFeedUpdateCondition);
      sub_218720434(v7, v8);
      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

uint64_t sub_2187B6268()
{
  result = sub_219BDBD34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

id sub_2187B62D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, double *a3@<X8>)
{
  sub_2186DCF58();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDBD34();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  if (a1 <= 5)
  {
    if (!a1)
    {
      result = [*(a2 + OBJC_IVAR____TtC7NewsUI228OfflineFeedsForegroundWorker_readingList) modificationDate];
      if (result)
      {
        v20 = result;
        sub_219BDBCA4();

        (*(v10 + 32))(a3, v15, v9);
        goto LABEL_22;
      }

LABEL_24:
      __break(1u);
      return result;
    }

    if (a1 != 1)
    {
LABEL_17:
      sub_219BF5CE4();
      *a3 = v21 * 3.0;
      type metadata accessor for OfflineFeedUpdateCondition(0);
      goto LABEL_18;
    }

    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI228OfflineFeedsForegroundWorker_sharedItemManager), *(a2 + OBJC_IVAR____TtC7NewsUI228OfflineFeedsForegroundWorker_sharedItemManager + 24));
    sub_219BF2EF4();
  }

  else
  {
    if (a1 != 6)
    {
      if (a1 != 7)
      {
        if (a1 == 8)
        {
          __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI228OfflineFeedsForegroundWorker_recipeBox), *(a2 + OBJC_IVAR____TtC7NewsUI228OfflineFeedsForegroundWorker_recipeBox + 24));
          sub_219BED2C4();
          v16 = *(v10 + 48);
          if (v16(v8, 1, v9) == 1)
          {
            sub_219BDBBD4();
            if (v16(v8, 1, v9) != 1)
            {
              sub_2187B6BC4(v8, sub_2186DCF58);
            }
          }

          else
          {
            (*(v10 + 32))(a3, v8, v9);
          }

          goto LABEL_22;
        }

        goto LABEL_17;
      }

      result = [*(a2 + OBJC_IVAR____TtC7NewsUI228OfflineFeedsForegroundWorker_readingHistory) modificationDate];
      if (result)
      {
        v19 = result;
        sub_219BDBCA4();

        (*(v10 + 32))(a3, v13, v9);
LABEL_22:
        type metadata accessor for OfflineFeedUpdateCondition(0);
        return swift_storeEnumTagMultiPayload();
      }

      __break(1u);
      goto LABEL_24;
    }

    v17 = [*(a2 + OBJC_IVAR____TtC7NewsUI228OfflineFeedsForegroundWorker_audioPlaylist) modificationDate];
    sub_219BDBCA4();
  }

  type metadata accessor for OfflineFeedUpdateCondition(0);
LABEL_18:

  return swift_storeEnumTagMultiPayload();
}

void sub_2187B6648(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  updated = type metadata accessor for OfflineFeedUpdateCondition(0);
  v7 = *(updated - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](updated - 8);
  v9 = *a1;
  v10 = a1[1];
  v11 = *(v3 + OBJC_IVAR____TtC7NewsUI228OfflineFeedsForegroundWorker_offlineFeedsSupervisor + 24);
  v12 = *(v3 + OBJC_IVAR____TtC7NewsUI228OfflineFeedsForegroundWorker_offlineFeedsSupervisor + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7NewsUI228OfflineFeedsForegroundWorker_offlineFeedsSupervisor), v11);
  (*(v12 + 96))(v11, v12);
  sub_219BE20E4();

  if (LOBYTE(aBlock[0]) != 1)
  {
    if (qword_280EE6070 != -1)
    {
      swift_once();
    }

    v22 = sub_219BE5434();
    __swift_project_value_buffer(v22, qword_280F62790);
    v23 = sub_219BE5414();
    v24 = sub_219BF6214();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_17;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "FG worker will do nothing because Offline Feeds are disabled";
    goto LABEL_16;
  }

  if (![*(v3 + OBJC_IVAR____TtC7NewsUI228OfflineFeedsForegroundWorker_networkReachability) isNetworkReachable])
  {
    if (qword_280EE6070 != -1)
    {
      swift_once();
    }

    v27 = sub_219BE5434();
    __swift_project_value_buffer(v27, qword_280F62790);
    v23 = sub_219BE5414();
    v24 = sub_219BF6214();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_17;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "FG worker will do nothing because device is offline";
LABEL_16:
    _os_log_impl(&dword_2186C1000, v23, v24, v26, v25, 2u);
    MEMORY[0x21CECF960](v25, -1, -1);
LABEL_17:

    return;
  }

  if (qword_280EE6070 != -1)
  {
    swift_once();
  }

  v13 = sub_219BE5434();
  __swift_project_value_buffer(v13, qword_280F62790);
  v14 = sub_219BE5414();
  v15 = sub_219BF6214();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2186C1000, v14, v15, "FG worker waiting for turn in low-priority queue", v16, 2u);
    MEMORY[0x21CECF960](v16, -1, -1);
  }

  v17 = objc_opt_self();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218FBBE8C(a2, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v9;
  v20[4] = v10;
  sub_218FBBEF0(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  aBlock[4] = sub_218FBBF54;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218FBB89C;
  aBlock[3] = &block_descriptor_82;
  v21 = _Block_copy(aBlock);
  sub_218720448(v9, v10);

  [v17 scheduleLowPriorityAsyncBlock_];
  _Block_release(v21);
}

uint64_t sub_2187B6A80()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2187B6AB8()
{
  v1 = *(type metadata accessor for OfflineFeedUpdateCondition(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  if (*(v0 + 32) >= 0xBuLL)
  {
  }

  if (swift_getEnumCaseMultiPayload() - 1 <= 1)
  {
    v3 = sub_219BDBD34();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_2187B6BC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187B6C24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187B6C88@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_280EDDD40;
  swift_beginAccess();
  sub_2187B190C(v1 + v3, &v7, &unk_280EE5380, &qword_280EE5390, MEMORY[0x277D6D908]);
  if (v8)
  {
    return sub_2186CB1F0(&v7, a1);
  }

  sub_2187B1DA0(&v7, &unk_280EE5380, &qword_280EE5390, MEMORY[0x277D6D908]);
  sub_2187B13AC(&v7);
  __swift_project_boxed_opaque_existential_1(&v7, v8);
  sub_2186C709C(0, &qword_280EE5390);
  result = sub_219BE1E34();
  if (v6)
  {
    sub_2186CB1F0(&v5, a1);
    __swift_destroy_boxed_opaque_existential_1(&v7);
    sub_218718690(a1, &v7);
    swift_beginAccess();
    sub_2187B20EC(&v7, v1 + v3, &unk_280EE5380, &qword_280EE5390, MEMORY[0x277D6D908]);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187B6DFC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v4 - 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187060FC(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (v14)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v6 = sub_219BDD274();
    result = sub_219BE1E24();
    if (result)
    {
      v7 = result;
      v12 = v6;
      v13 = sub_2187B7098(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
      *&v11 = v7;
      sub_219BE89E4();
      swift_allocObject();
      sub_219BE8994();
      sub_219BE1BD4();
      sub_218718690(a1, &v11);
      v8 = swift_allocObject();
      sub_21875F93C(&v11, v8 + 16);
      sub_218706154(0, &qword_280EE7260, MEMORY[0x277D6D6E0], MEMORY[0x277D6CEE8]);
      swift_allocObject();
      sub_219BE2D14();
      v9 = objc_allocWithZone(sub_219BE64A4());
      result = sub_219BE6494();
      v10 = MEMORY[0x277D6D600];
      *a2 = result;
      a2[1] = v10;
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

uint64_t sub_2187B7060()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2187B7098(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2187B70E0()
{
  v1 = [v0 userActivities];
  sub_2186C6148(0, &qword_280E8E650);
  sub_21879FA10(&unk_280E8E630, &qword_280E8E650);
  v2 = sub_219BF5D44();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_219BF7214();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  if (v3)
  {
    return 0;
  }

  v4 = [v0 URLContexts];
  sub_2186C6148(0, &unk_280E8E4A0);
  sub_21879FA10(&qword_280E8E498, &unk_280E8E4A0);
  v5 = sub_219BF5D44();

  v6 = (v5 & 0xC000000000000001) != 0 ? sub_219BF7214() : *(v5 + 16);

  if (v6)
  {
    return 0;
  }

  v7 = [v0 notificationResponse];
  if (v7 || (v7 = [v0 shortcutItem]) != 0 || (v7 = objc_msgSend(v0, sel_handoffUserActivityType)) != 0)
  {

    return 0;
  }

  return 1;
}

uint64_t sub_2187B72A8()
{
  v1 = qword_280EDDC90;
  if (*(v0 + qword_280EDDC90))
  {
    v2 = *(v0 + qword_280EDDC90);
LABEL_5:
    swift_unknownObjectRetain();
    return v2;
  }

  sub_2187B13AC(v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2186D6710(0, &unk_280EE4530);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    __swift_destroy_boxed_opaque_existential_1(v4);
    *(v0 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *sub_2187B7374(void *a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = [sub_2187B72A8() isStateRestorationFeatureEnabled];
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = a1 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  v8 = a1;
  v9 = sub_2187BB13C(&qword_280EDDC78, type metadata accessor for NewsActivityInfoDeserializer);
  v10 = sub_219761420(v9, a2);

  if ((v10 & 1) == 0)
  {

    return 0;
  }

  if (qword_280EE93C8 != -1)
  {
    swift_once();
  }

  sub_2187BB0F4(&unk_280EDDC20, type metadata accessor for SceneDelegate);
  sub_219BDC7D4();
  v11 = v29;
  if (v29 == 1)
  {
    if (qword_280EE6018 != -1)
    {
      swift_once();
    }

    v12 = sub_219BE5434();
    __swift_project_value_buffer(v12, qword_280F62700);
    v13 = sub_219BE5414();
    v14 = sub_219BF6214();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2186C1000, v13, v14, "Forcing eligibility processing", v15, 2u);
      MEMORY[0x21CECF960](v15, -1, -1);
    }
  }

  if ((v11 | [*(v3 + qword_280EDDC90) isStateRestorationAllowed] ^ 1) == 1)
  {
    v16 = *(v3 + qword_280EDDCF8);
    *(v3 + qword_280EDDCF8) = a1;

    return 0;
  }

  v18 = v8;
  sub_2191BBEB0(&v29);
  __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
  v19 = v18;
  sub_219BE9B54();
  sub_2186CB1F0(&v29, &v27);
  v20 = qword_280EDDC38;
  swift_beginAccess();
  sub_2187B20EC(&v27, v3 + v20, &qword_280EE3F48, &unk_280EE3F50, MEMORY[0x277D6E818]);
  swift_endAccess();
  v21 = [v19 userInfo];
  if (v21)
  {
    v22 = v21;
    sub_219BF5214();
  }

  else
  {
    sub_2194B141C(MEMORY[0x277D84F90]);
  }

  sub_2186C6148(0, &qword_280E8E650);
  *&v27 = sub_219BF6284();
  *(&v27 + 1) = v23;
  sub_219BF72A4();
  v28 = MEMORY[0x277D839B0];
  LOBYTE(v27) = 1;
  sub_218751558(&v27, v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21948DB38(v26, &v29, isUniquelyReferenced_nonNull_native);
  sub_218B6B67C(&v29);
  v25 = sub_219BF5204();

  [v19 setUserInfo_];

  return a1;
}

void sub_2187B7790(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  v2 = sub_219BE1E24();
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  v4 = sub_219BE1E24();
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v4 pptContext];

  if (v6)
  {
    [v6 isRunningPPT];
    swift_unknownObjectRelease();
    sub_2187B78D0(v3);
    sub_219BE8484();
    sub_219BE8474();
    swift_unknownObjectRelease();
    return;
  }

LABEL_7:
  __break(1u);
}

double sub_2187B78D0(void *a1)
{
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE93B0 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  if (v8 == 1)
  {
    if (qword_280E8D8F0 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    return 1.0;
  }

  else
  {
    v3 = [objc_msgSend(a1 possiblyUnfetchedAppConfiguration)];
    swift_unknownObjectRelease();
    v2 = v3;
    if (qword_280E8D8F0 != -1)
    {
      swift_once();
    }

    sub_218746BE0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D839F8];
    *(v4 + 16) = xmmword_219C09BA0;
    v6 = MEMORY[0x277D83A80];
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 32) = v2;
    sub_219BF6214();
    sub_219BE5314();
  }

  return v2;
}

uint64_t sub_2187B7AE8()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE93B8 = result;
  return result;
}

uint64_t sub_2187B7CB4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F617A8 = result;
  return result;
}

uint64_t sub_2187B7D90(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
LABEL_5:

    return v5;
  }

  sub_2187B13AC(v8);
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  a2(0);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_destroy_boxed_opaque_existential_1(v8);
    *(v2 + v3) = v5;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_2187B7E50(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218712FE4();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2187367A8();
    swift_allocObject();
    sub_2186D5C14(&qword_280E90C08, sub_218712FE4);
    return sub_219BED614();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2187B7F10@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a1;
  v106 = a2;
  v2 = sub_219BEE3D4();
  v101 = *(v2 - 8);
  v102 = v2;
  MEMORY[0x28223BE20](v2);
  v100 = v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDBD34();
  v108 = *(v4 - 8);
  v109 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v91 = v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v90 = v89 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v107 = v89 - v10;
  MEMORY[0x28223BE20](v9);
  v92 = v89 - v11;
  v12 = sub_219BDB184();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v89[1] = v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v89[0] = v89 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = v89 - v17;
  v105 = type metadata accessor for TodayFeedServiceContext();
  v19 = MEMORY[0x28223BE20](v105);
  v94 = v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v93 = v89 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = v89 - v23;
  sub_2187B8B90(0, &qword_280E91B30, MEMORY[0x277D32150]);
  MEMORY[0x28223BE20](v25 - 8);
  v114 = v89 - v26;
  v27 = sub_219BEE714();
  v112 = *(v27 - 8);
  v113 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v99 = v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = (v89 - v30);
  v32 = sub_219BEE704();
  v95 = *(v32 - 8);
  v96 = v32;
  v33 = MEMORY[0x28223BE20](v32);
  v98 = v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = v89 - v35;
  v37 = sub_219BF0644();
  v38 = *(v37 - 8);
  v39 = MEMORY[0x28223BE20](v37);
  v97 = v89 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v42 = v89 - v41;
  v43 = sub_219BEE754();
  v103 = *(v43 - 8);
  v104 = v43;
  v44 = MEMORY[0x28223BE20](v43);
  v46 = v89 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v44);
  v49 = v89 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = v89 - v50;
  if (!*v110)
  {
    v110 = v18;
    v65 = v92;
    v66 = v111;
    v67 = sub_2187B8BE4(v111);
    (*(v38 + 104))(v42, *MEMORY[0x277D32EF0], v37);
    sub_2187B96F4(v67, v36);
    v68 = [*(v66 + 16) possiblyUnfetchedAppConfiguration];
    if ([v68 respondsToSelector_])
    {
      v69 = [v68 todayFeedLoadToCacheTimeWindow];
      swift_unknownObjectRelease();
      *v31 = v69;
      v70 = MEMORY[0x277D32138];
    }

    else
    {
      swift_unknownObjectRelease();
      v70 = MEMORY[0x277D32130];
    }

    (*(v112 + 104))(v31, *v70, v113);
    v82 = sub_219BEE734();
    (*(*(v82 - 8) + 56))(v114, 1, 1, v82);
    sub_219BEE744();
    *v24 = 0;
    *(v24 + 1) = v67;
    result = [v67 startDate];
    if (result)
    {
      v83 = result;
      sub_2186E2348();
      sub_219BDBCA4();

      v84 = v107;
      sub_219BDBD24();
      sub_219BDB104();
      v85 = *(v108 + 8);
      v86 = v84;
      v87 = v109;
      v85(v86, v109);
      v85(v65, v87);
      v64 = sub_219BF5F04();
      goto LABEL_12;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*v110 == 1)
  {
    v52 = sub_2186E2348();
    v53 = [*(v111 + 16) possiblyUnfetchedAppConfiguration];
    swift_getObjectType();
    v54 = v100;
    sub_219BF6984();
    swift_unknownObjectRelease();
    v55 = v107;
    sub_219BDBD24();
    v111 = v52;
    v56 = sub_219BF5F54();
    v57 = v109;
    v58 = *(v108 + 8);
    v58(v55, v109);
    (*(v101 + 8))(v54, v102);
    (*(v38 + 104))(v97, *MEMORY[0x277D32EF8], v37);
    (*(v95 + 104))(v98, *MEMORY[0x277D32110], v96);
    v59 = sub_219BEE734();
    (*(*(v59 - 8) + 56))(v114, 1, 1, v59);
    (*(v112 + 104))(v99, *MEMORY[0x277D32130], v113);
    sub_219BEE744();
    v60 = v94;
    *v94 = 0;
    *(v60 + 1) = v56;
    result = [v56 startDate];
    if (result)
    {
      v62 = result;
      v63 = v91;
      sub_219BDBCA4();

      sub_219BDBD24();
      sub_219BDB104();
      v58(v55, v57);
      v58(v63, v57);
      v64 = sub_219BF5F04();
      v24 = v60;
      v51 = v46;
LABEL_12:
      v88 = MEMORY[0x277D84FA0];
      *(v24 + 2) = v64;
      *(v24 + 3) = v88;
      *(v24 + 4) = v88;
      (*(v103 + 32))(&v24[*(v105 + 36)], v51, v104);
      return sub_2187B9990(v24, v106);
    }

    __break(1u);
    goto LABEL_14;
  }

  v71 = sub_2186E2348();
  v72 = [*(v111 + 16) possiblyUnfetchedAppConfiguration];
  swift_getObjectType();
  v73 = v100;
  sub_219BF6984();
  swift_unknownObjectRelease();
  v74 = v107;
  sub_219BDBD24();
  v111 = v71;
  v75 = sub_219BF5F54();
  v76 = v109;
  v77 = *(v108 + 8);
  v77(v74, v109);
  (*(v101 + 8))(v73, v102);
  (*(v38 + 104))(v97, *MEMORY[0x277D32EF8], v37);
  (*(v95 + 104))(v98, *MEMORY[0x277D32118], v96);
  v78 = sub_219BEE734();
  (*(*(v78 - 8) + 56))(v114, 1, 1, v78);
  (*(v112 + 104))(v99, *MEMORY[0x277D32130], v113);
  sub_219BEE744();
  v79 = v93;
  *v93 = 0;
  *(v79 + 1) = v75;
  result = [v75 startDate];
  if (result)
  {
    v80 = result;
    v81 = v90;
    sub_219BDBCA4();

    sub_219BDBD24();
    sub_219BDB104();
    v77(v74, v76);
    v77(v81, v76);
    v64 = sub_219BF5F04();
    v24 = v79;
    v51 = v49;
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_2187B8B2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2187B8B90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2187B8BE4(uint64_t a1)
{
  v20 = a1;
  v1 = sub_219BEE3D4();
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187B8B90(0, &qword_280E90C58, MEMORY[0x277D32FE8]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_219BF0C04();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayPrewarmManager();
  sub_219BDBD24();
  sub_2187B8F4C(v7, v10);
  v15 = *(v5 + 8);
  v15(v7, v4);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2187B967C(v10);
    sub_2186E2348();
    v16 = [*(v20 + 16) possiblyUnfetchedAppConfiguration];
    swift_getObjectType();
    sub_219BF6984();
    swift_unknownObjectRelease();
    sub_219BDBD24();
    v17 = sub_219BF5F54();
    v15(v7, v4);
    (*(v21 + 8))(v3, v22);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v17 = sub_219BF0BF4();
    (*(v12 + 8))(v14, v11);
  }

  return v17;
}

uint64_t sub_2187B8F4C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a1;
  v3 = sub_219BDBD34();
  v34 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C5F60(0, &qword_280E90C58, MEMORY[0x277D32FE8], MEMORY[0x277D83D88]);
  v7 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = v31 - v8;
  v10 = sub_219BF0C04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280ECFB08 != -1)
  {
    swift_once();
  }

  sub_219BE1AA4();

  sub_219BE1AB4();

  if (qword_280ECFAE0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v7, qword_280ECFAF0);
  swift_beginAccess();
  sub_2187B9578(v14, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2187B960C(v9, &qword_280E90C58, MEMORY[0x277D32FE8]);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    v15 = 1;
  }

  else
  {
    v32 = a2;
    v16 = *(v11 + 32);
    v16(v13, v9, v10);
    sub_219BF0BE4();
    sub_219BDBBE4();
    v18 = v17;
    v19 = v34 + 8;
    v20 = *(v34 + 8);
    v20(v5, v3);
    sub_219BF5D04();
    if (fabs(v18) >= v21)
    {
      v34 = v19;
      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      v31[1] = qword_280F616D8;
      sub_2186C5F60(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_219C09EC0;
      sub_219BF0BE4();
      sub_219248E88();
      v23 = sub_219BF7894();
      v25 = v24;
      v20(v5, v3);
      v26 = MEMORY[0x277D837D0];
      *(v22 + 56) = MEMORY[0x277D837D0];
      v27 = sub_2186FC3BC();
      *(v22 + 64) = v27;
      *(v22 + 32) = v23;
      *(v22 + 40) = v25;
      v28 = sub_219BF7894();
      *(v22 + 96) = v26;
      *(v22 + 104) = v27;
      *(v22 + 72) = v28;
      *(v22 + 80) = v29;
      sub_219BF6214();
      sub_219BE5314();

      (*(v11 + 8))(v13, v10);
      v15 = 1;
      a2 = v32;
    }

    else
    {
      a2 = v32;
      v16(v32, v13, v10);
      v15 = 0;
    }
  }

  (*(v11 + 56))(a2, v15, 1, v10);

  sub_219BE1AC4();
}

uint64_t sub_2187B94B4()
{
  sub_2186C5F60(0, &qword_280E90C58, MEMORY[0x277D32FE8], MEMORY[0x277D83D88]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_280ECFAF0);
  v2 = __swift_project_value_buffer(v1, qword_280ECFAF0);
  v3 = sub_219BF0C04();
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 1, 1, v3);
}

uint64_t sub_2187B9578(uint64_t a1, uint64_t a2)
{
  sub_2186C5F60(0, &qword_280E90C58, MEMORY[0x277D32FE8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2187B960C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186C5F60(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2187B967C(uint64_t a1)
{
  sub_2187B8B90(0, &qword_280E90C58, MEMORY[0x277D32FE8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2187B96F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-v9];
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9450 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  if (v18[15] == 1)
  {
    if (qword_280E8D8E8 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    v11 = MEMORY[0x277D32110];
    goto LABEL_10;
  }

  result = [a1 earlierDate];
  if (result)
  {
    v13 = result;
    sub_219BDBCA4();

    result = [a1 laterDate];
    if (result)
    {
      v14 = result;
      sub_219BDBCA4();

      sub_219BDB104();
      v15 = *(v5 + 8);
      v15(v8, v4);
      v15(v10, v4);
      v11 = MEMORY[0x277D32128];
LABEL_10:
      v16 = *v11;
      v17 = sub_219BEE704();
      return (*(*(v17 - 8) + 104))(a2, v16, v17);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2187B9990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayFeedServiceContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2187B9A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2187B9A9C(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 160);
  if (v3 == 4)
  {
    sub_2187B9B5C(&v4);
    LOBYTE(v3) = v4;
    *(v1 + 160) = v4;
  }

  *a1 = v3;
}

uint64_t sub_2187B9AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_219BEE754();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_2187B9B5C(char *a1@<X8>)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 isRunningPerformanceTest];

  if (v3)
  {
    goto LABEL_34;
  }

  sub_219BE1CC4();
  if (sub_219BE1CB4())
  {
    if (qword_280EE9AE8 != -1)
    {
      swift_once();
    }

    sub_21871D2EC(&unk_280ECBC28, v4, type metadata accessor for BootstrapFlowProvider);
    sub_219BDC7D4();
    if (v21 == 1)
    {
      if (qword_280EE6088 != -1)
      {
        swift_once();
      }

      v5 = sub_219BE5434();
      __swift_project_value_buffer(v5, qword_280F627C0);
      v6 = sub_219BE5414();
      v7 = sub_219BF6214();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_33;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "BootstrapFlowProvider - skipping onboarding (disabled via debug options)";
LABEL_32:
      _os_log_impl(&dword_2186C1000, v6, v7, v9, v8, 2u);
      MEMORY[0x21CECF960](v8, -1, -1);
LABEL_33:

LABEL_34:
      v15 = 3;
      goto LABEL_35;
    }
  }

  if (sub_219580F2C())
  {
    if (qword_280EE6088 != -1)
    {
      swift_once();
    }

    v10 = sub_219BE5434();
    __swift_project_value_buffer(v10, qword_280F627C0);
    v11 = sub_219BE5414();
    v12 = sub_219BF6214();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2186C1000, v11, v12, "BootstrapFlowProvider - onboarding experience is 'welcome'", v13, 2u);
      MEMORY[0x21CECF960](v13, -1, -1);
    }

    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_280EE9AB8 != -1)
    {
      swift_once();
    }

    sub_219BDC8A4();

    v14 = v21;
    if (v21 < 0)
    {
      sub_219BDC8B4();
      if (qword_280EE9AD0 != -1)
      {
        swift_once();
      }

      sub_219BDC8A4();

      v14 = v21;
    }

    v15 = v14 != 0;
  }

  else
  {
    if ((sub_219AFB7CC() & 1) == 0)
    {
      if (qword_280EE6088 != -1)
      {
        swift_once();
      }

      v20 = sub_219BE5434();
      __swift_project_value_buffer(v20, qword_280F627C0);
      v6 = sub_219BE5414();
      v7 = sub_219BF6214();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_33;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "BootstrapFlowProvider - the user does not require an onboarding experience";
      goto LABEL_32;
    }

    if (qword_280EE6088 != -1)
    {
      swift_once();
    }

    v16 = sub_219BE5434();
    __swift_project_value_buffer(v16, qword_280F627C0);
    v17 = sub_219BE5414();
    v18 = sub_219BF6214();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2186C1000, v17, v18, "BootstrapFlowProvider - onboarding experience is 'interlude'", v19, 2u);
      MEMORY[0x21CECF960](v19, -1, -1);
    }

    v15 = 2;
  }

LABEL_35:
  *a1 = v15;
}

void sub_2187BA030(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v55 = a3;
  v56 = a2;
  v6 = sub_219BE84F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 session];
  v11 = [v10 persistentIdentifier];

  v12 = sub_219BF5414();
  v14 = v13;

  v15 = qword_280EDDC30;
  if (!*(v4 + qword_280EDDC30))
  {
    v54 = v9;
    v53 = v7;
    v52 = v6;
    sub_2187B13AC(v63);
    __swift_project_boxed_opaque_existential_1(v63, v64);
    sub_2186C709C(0, &qword_280EE81A8);
    sub_219BE1E34();
    if (v61[0])
    {
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v63);
      sub_2187B13AC(v63);
      __swift_project_boxed_opaque_existential_1(v63, v64);
      sub_219BE5A54();
      *(swift_allocObject() + 16) = a1;
      v51 = a1;
      v18 = sub_219BE1E04();

      if (v18)
      {
        v19 = v12;
        __swift_destroy_boxed_opaque_existential_1(v63);
        sub_2187BB0F4(&unk_280EDDC10, type metadata accessor for SceneDelegate);
        swift_unknownObjectRetain();
        sub_219BE5A34();
        v20 = *(v4 + v15);
        *(v4 + v15) = v18;
        v21 = v18;

        v22 = sub_2187BB13C(&qword_280EDDD08, MEMORY[0x277D2DEC8]);
        sub_219BDF9D4();

        v23 = *(v4 + qword_280EDDD08);
        v24 = v14;

        v25 = v23;
        sub_219BDF994();

        sub_2187BB1F8();
        sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_219C09BA0;
        *(v26 + 56) = MEMORY[0x277D837D0];
        *(v26 + 64) = sub_2186FC3BC();
        *(v26 + 32) = v19;
        *(v26 + 40) = v14;
        sub_2186C6148(0, &qword_280E8D790);

        v27 = sub_219BF6F44();
        sub_219BF6214();
        sub_219BE5314();

        v28 = v56;
        v29 = v4;
        if (v56)
        {
          v30 = sub_2187BB13C(&qword_280EDDC78, type metadata accessor for NewsActivityInfoDeserializer);
          v31 = v21;
          v32 = [v21 traitCollection];
          v50 = sub_2187BB444(v30, v32);

          v33 = [v28 URLContexts];
          sub_2186C6148(0, &unk_280E8E4A0);
          sub_21879FA10(&qword_280E8E498, &unk_280E8E4A0);
          v34 = sub_219BF5D44();

          if ((v34 & 0xC000000000000001) != 0)
          {
            v35 = sub_219BF7214();
          }

          else
          {
            v35 = *(v34 + 16);
          }

          LOBYTE(v28) = v35 == 0;
        }

        else
        {
          v31 = v21;
          v50 = 0;
        }

        sub_2187B13AC(v61);
        __swift_project_boxed_opaque_existential_1(v61, v62);
        sub_2186C709C(0, qword_280EBF670);
        sub_219BE1E34();
        if (v60)
        {
          sub_2186CB1F0(&v59, v63);
          __swift_destroy_boxed_opaque_existential_1(v61);
          __swift_project_boxed_opaque_existential_1(v63, v64);
          sub_2187B9A9C(v61);
          __swift_destroy_boxed_opaque_existential_1(v63);
          sub_219BE84D4();
          if ((v28 & 1) == 0)
          {
            sub_219BE84E4();
          }

          v36 = sub_2187BB13C(&qword_280EDDD58, MEMORY[0x277D6D360]);
          sub_2187B13AC(v61);
          __swift_project_boxed_opaque_existential_1(v61, v62);
          sub_219BE1E34();
          if (v60)
          {
            sub_2186CB1F0(&v59, v63);
            __swift_destroy_boxed_opaque_existential_1(v61);
            __swift_project_boxed_opaque_existential_1(v63, v64);
            sub_2187B9A9C(v61);
            __swift_destroy_boxed_opaque_existential_1(v63);
            v37 = v31;
            sub_219BE5D44();

            v38 = *(v29 + qword_280EDDD58);
            v39 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v40 = swift_allocObject();
            v40[2] = v39;
            v40[3] = v19;
            v40[4] = v24;

            v41 = v38;

            v42 = sub_219BE1C44();
            sub_219BE5D34();

            sub_2187B13AC(v61);
            __swift_project_boxed_opaque_existential_1(v61, v62);
            sub_2186C709C(0, &qword_280EE8080);
            sub_219BE1E34();
            v43 = v55;
            if (v60)
            {
              sub_2186CB1F0(&v59, v63);
              __swift_destroy_boxed_opaque_existential_1(v61);
              __swift_project_boxed_opaque_existential_1(v63, v64);
              v44 = sub_219BE12F4();
              v45 = v53;
              v46 = v54;
              if (v44)
              {
                sub_219BDCE74();
                v47 = sub_219BDCE64();
                sub_219BDCE54();
              }

              sub_2187B7D90(&qword_280EDDD70, sub_2186CF94C);
              swift_allocObject();
              swift_unknownObjectWeakInit();
              sub_219BE6434();

              sub_2187D5B90(v43, v51);

              sub_2187D6304(v19, v24, v56, v46);
              sub_2187B13AC(&v59);
              __swift_project_boxed_opaque_existential_1(&v59, v60);
              sub_2186C709C(0, &qword_280EC99B0);
              sub_219BE1E34();
              if (v58)
              {
                sub_2186CB1F0(&v57, v61);
                v48 = qword_280EDDDC0;
                swift_beginAccess();
                sub_2187B20EC(v61, v29 + v48, &qword_280EC99A8, &qword_280EC99B0, &protocol descriptor for SportsSyncManagerType);
                swift_endAccess();
                __swift_destroy_boxed_opaque_existential_1(&v59);
                sub_2187D7560(v37, v19, v24);

                (*(v45 + 8))(v46, v52);
                __swift_destroy_boxed_opaque_existential_1(v63);
                return;
              }

              goto LABEL_27;
            }

LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
            return;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  sub_219BF61F4();
  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C09BA0;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_2186FC3BC();
  *(v16 + 32) = v12;
  *(v16 + 40) = v14;
  sub_2186C6148(0, &qword_280E8D790);
  v56 = sub_219BF6F44();
  sub_219BE5314();

  v17 = v56;
}

uint64_t sub_2187BAAF4()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2187BAB2C()
{

  return swift_deallocObject();
}

uint64_t sub_2187BAB64()
{

  return swift_deallocObject();
}

uint64_t sub_2187BAC04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v28 = a2;
  v29 = a3;
  v38 = a4;
  v5 = sub_219BE5744();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_219BE5634();
  v30 = *(v34 - 8);
  v31 = v30;
  MEMORY[0x28223BE20](v34);
  v33 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDB954();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v27 = sub_219BE5774();
  v15 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_219BE5784();
  v18 = [a1 contentDirectory];
  sub_219BF5414();

  sub_219BDB834();

  sub_219BDB864();
  v19 = sub_219BDB8F4();
  v21 = v20;
  v22 = *(v9 + 8);
  v22(v12, v8);
  v22(v14, v8);
  *v17 = v19;
  v17[1] = v21;
  (*(v15 + 104))(v17, *MEMORY[0x277D6C960], v27);
  v23 = MEMORY[0x277D6C8B0];
  sub_2186D0720(0, &qword_280E8C018, MEMORY[0x277D6C8B0], MEMORY[0x277D84560]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C09BA0;
  sub_219BE5624();
  v39 = v24;
  sub_21872CBB8(&unk_280EE5E50, MEMORY[0x277D6C8B0]);
  sub_2186D0720(0, &qword_280E8F548, v23, MEMORY[0x277D83940]);
  sub_21872CC48(&qword_280E8F540, &qword_280E8F548, v23);
  sub_219BF7164();
  (*(v36 + 104))(v35, *MEMORY[0x277D6C950], v37);
  result = sub_219BE5754();
  *v38 = result;
  return result;
}

uint64_t sub_2187BB084(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E700);
  return sub_219BE1BC4();
}

uint64_t sub_2187BB0F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2187BB13C(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
LABEL_5:
    v11 = v4;
    return v5;
  }

  v7 = v2;
  sub_2187B13AC(v12);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  a2(0);
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    __swift_destroy_boxed_opaque_existential_1(v12);
    v10 = *(v2 + v3);
    *(v7 + v3) = v9;
    v5 = v9;

    v4 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_2187BB1F8()
{
  v1 = *(v0 + qword_280EDDC30);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 systemPinkColor];
    [v3 setTintColor_];
  }

  v5 = objc_opt_self();
  sub_2186DD934(0, &qword_280E8B5F8, sub_2187BB3EC, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C0EE20;
  *(v6 + 32) = sub_2186C6148(0, &unk_280E8E3A0);
  *(v6 + 40) = sub_2186C6148(0, &qword_280E8DFD8);
  *(v6 + 48) = sub_2186C6148(0, &unk_280E8D990);
  *(v6 + 56) = sub_2186C6148(0, &qword_280E8E2F8);
  sub_2187BB3EC();
  v7 = sub_219BF5904();

  v8 = [v5 appearanceWhenContainedInInstancesOfClasses_];

  v9 = [objc_opt_self() systemRedColor];
  [v8 setTintColor_];
}

unint64_t sub_2187BB3EC()
{
  result = qword_280E8E0D0;
  if (!qword_280E8E0D0)
  {
    sub_2186D6710(255, &qword_280E8E0D8);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_280E8E0D0);
  }

  return result;
}

uint64_t sub_2187BB444(uint64_t a1, void *a2)
{
  v88 = a2;
  v93 = a1;
  v96 = sub_219BDB0F4();
  v90 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDB224();
  v100 = *(v4 - 8);
  v101 = v4;
  MEMORY[0x28223BE20](v4);
  v91 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187BC0B4(0, &unk_280EE9DB0, MEMORY[0x277CC8958]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v97 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v99 = &v86 - v9;
  sub_2187BC0B4(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v92 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v86 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v86 - v16;
  v18 = sub_219BDB954();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v98 = &v86 - v23;
  v24 = v2;
  v25 = [v2 URLContexts];
  sub_2186C6148(0, &unk_280E8E4A0);
  sub_21879FA10(&qword_280E8E498, &unk_280E8E4A0);
  v26 = sub_219BF5D44();

  v27 = sub_2187BC23C(v26);

  v94 = v24;
  if (v27)
  {
    v28 = [v27 URL];

    sub_219BDB8B4();
    v29 = v19[4];
    v29(v15, v22, v18);
    v30 = v19[7];
    v30(v15, 0, 1, v18);
    v29(v17, v15, v18);
    v30(v17, 0, 1, v18);
    v31 = v19[6];
    v32 = v101;
    v33 = v19;
    v35 = v97;
    v34 = v98;
    v36 = v99;
    v37 = v31(v17, 1, v18);
  }

  else
  {
    v89 = v19;
    v38 = v19[7];
    v87 = v15;
    v39 = v15;
    v40 = v38;
    v38(v39, 1, 1, v18);
    v41 = [v24 userActivities];
    sub_2186C6148(0, &qword_280E8E650);
    sub_21879FA10(&unk_280E8E630, &qword_280E8E650);
    v42 = sub_219BF5D44();

    v43 = sub_2187BC25C(v42);

    if (v43)
    {
      v44 = [v43 webpageURL];

      if (v44)
      {
        v45 = v92;
        sub_219BDB8B4();

        v46 = 0;
        v32 = v101;
        v33 = v89;
      }

      else
      {
        v46 = 1;
        v32 = v101;
        v33 = v89;
        v45 = v92;
      }

      v40(v45, v46, 1, v18);
      sub_218AB007C(v45, v17);
    }

    else
    {
      v40(v17, 1, 1, v18);
      v32 = v101;
      v33 = v89;
    }

    v47 = v87;
    v48 = v33[6];
    v49 = v48(v87, 1, v18);
    v34 = v98;
    v36 = v99;
    v35 = v97;
    if (v49 != 1)
    {
      sub_2187BC4B8(v47, &unk_280EE9D00, MEMORY[0x277CC9260]);
    }

    v37 = v48(v17, 1, v18);
  }

  if (v37 != 1)
  {
    (v33[4])(v34, v17, v18);
    sub_219BDB264();
    sub_218B05294(v36, v35);
    v54 = v34;
    v55 = sub_219BDB354();
    v56 = *(v55 - 8);
    if ((*(v56 + 48))(v35, 1, v55) == 1)
    {
      v57 = MEMORY[0x277CC8958];
      sub_2187BC4B8(v36, &unk_280EE9DB0, MEMORY[0x277CC8958]);
      (v33[1])(v54, v18);
      sub_2187BC4B8(v35, &unk_280EE9DB0, v57);
      return 0;
    }

    v58 = sub_219BDB234();
    result = (*(v56 + 8))(v35, v55);
    if (!v58)
    {
      sub_2187BC4B8(v36, &unk_280EE9DB0, MEMORY[0x277CC8958]);
      (v33[1])(v54, v18);
      return 0;
    }

    v89 = v33;
    v60 = *(v58 + 16);
    if (!v60)
    {
      v81 = 0;
LABEL_51:

      sub_2187BC4B8(v36, &unk_280EE9DB0, MEMORY[0x277CC8958]);
      (v89[1])(v54, v18);
      return v81;
    }

    v61 = 0;
    v97 = (v58 + ((v100[80] + 32) & ~v100[80]));
    v93 = v18;
    v94 = v100 + 16;
    v62 = (v100 + 8);
    v63 = v91;
    v64 = (v90 + 8);
    while (1)
    {
      if (v61 >= *(v58 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v100 + 2))(v63, &v97[*(v100 + 9) * v61], v32);
      v65 = sub_219BDB204();
      v67 = v66;
      if (v65 == sub_219BF5534() && v67 == v68)
      {
      }

      else
      {
        v69 = sub_219BF78F4();

        if ((v69 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v70 = sub_219BDB214();
      if (!v71)
      {
LABEL_21:
        result = (*v62)(v63, v32);
        goto LABEL_22;
      }

      v102[0] = v70;
      v102[1] = v71;
      v72 = v95;
      sub_219BDB0D4();
      sub_2187F3BD4();
      sub_219BF7024();
      (*v64)(v72, v96);

      v73 = sub_219BF5494();
      v75 = v74;

      if (v73 == 1702195828 && v75 == 0xE400000000000000)
      {

        (*v62)(v63, v101);
LABEL_49:
        v81 = 1;
LABEL_50:
        v54 = v98;
        v36 = v99;
        v18 = v93;
        goto LABEL_51;
      }

      v76 = sub_219BF78F4();

      v32 = v101;
      result = (*v62)(v63, v101);
      if (v76)
      {
        goto LABEL_49;
      }

LABEL_22:
      if (v60 == ++v61)
      {
        v81 = 0;
        goto LABEL_50;
      }
    }
  }

  sub_2187BC4B8(v17, &unk_280EE9D00, MEMORY[0x277CC9260]);
  v50 = [v94 userActivities];
  sub_2186C6148(0, &qword_280E8E650);
  sub_21879FA10(&unk_280E8E630, &qword_280E8E650);
  v51 = sub_219BF5D44();

  v52 = sub_2187BC25C(v51);

  if (!v52)
  {
    return 0;
  }

  NewsActivityInfoDeserializer.deserialize(userActivity:)(v52, v102);
  v53 = v102[0];
  if ((~v102[0] & 0xF000000000000007) == 0)
  {

    return 0;
  }

  v77 = NewsActivity2.activityTraits.getter();
  if (!v77)
  {
LABEL_46:

    v85 = v53;
LABEL_53:
    sub_218970170(v85);
    return 0;
  }

  v100 = v77;
  v101 = v53;
  v78 = *(v77 + 2);
  v79 = v77 + 32;
  while (v78)
  {
    if (*v79 <= 1u && *v79)
    {

LABEL_56:

      sub_218970170(v101);

      return 1;
    }

    v80 = sub_219BF78F4();

    ++v79;
    --v78;
    if (v80)
    {
      goto LABEL_56;
    }
  }

  v82 = v88;
  if ([v88 userInterfaceIdiom] != 1)
  {

    v85 = v101;
    goto LABEL_53;
  }

  v83 = [v82 horizontalSizeClass];
  v53 = v101;
  if (v83 != 2)
  {
    goto LABEL_46;
  }

  v84 = [v82 verticalSizeClass];

  sub_218970170(v53);
  return v84 == 2;
}

void sub_2187BC0B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2187BC108(uint64_t a1, unint64_t *a2)
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_219BF71B4();
    v7 = v6;
    v8 = sub_219BF7254();
    v10 = v9;
    v11 = MEMORY[0x21CECDF80](v5, v7, v8, v9);
    sub_2187BC250(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_2187BC250(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = sub_219BF7174();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_218C8A2E0(v5, v7, v4 != 0, a1, a2);
  v14 = v13;
  sub_2187BC250(v5, v7, v4 != 0);
  return v14;
}

uint64_t sub_2187BC250(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2187BC270(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187BC2D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218990578(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2187BC32C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187BC38C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2186E5438(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2187BC3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2187BC448(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186E548C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2187BC4B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2187BC0B4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2187BC514(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187BC574(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218747EAC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2187BC5D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187BC630(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218E63DA4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2187BC6A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21873F590(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2187BC6FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2186E57E0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2187BC758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21923DAD0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2187BC7C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21930EB9C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2187BC824(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2186DDF98(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2187BC880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2196EC520(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2187BC8F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187BC950(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219886CF8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2187BC9C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218731BD0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2187BCA1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187BCA7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2186E5DAC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2187BCAD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187BCB38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187BCB98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186E5E64(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2187BCC08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void __swiftcall MainModule.createViewController()(UIViewController *__return_ptr retstr)
{
  v2 = sub_2187BCE18();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_219BE5D84();
  v3 = sub_219BE1E24();
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    sub_219BE5D64();

    if (sub_219BED0C4())
    {
      goto LABEL_6;
    }

    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_2187C854C(0, &qword_280EE7250, sub_218AFD34C, MEMORY[0x277D6CEE8]);
    if (!sub_219BE1E24())
    {
      goto LABEL_6;
    }

    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_2186C709C(0, &qword_280EE53A0);
    sub_219BE1E34();
    if (v7)
    {
      v6 = objc_allocWithZone(sub_219BE9234());
      sub_219BE9224();
LABEL_6:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

char *sub_2187BCE18()
{
  v151 = sub_219BE7494();
  v1 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v150 = v147 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_219BE5F04();
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v158 = v147 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB674();
  MEMORY[0x28223BE20](v4 - 8);
  v157 = v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 40);
  v166 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  type metadata accessor for MainTabManager();
  result = sub_219BE1E24();
  v165 = result;
  if (!result)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  __swift_project_boxed_opaque_existential_1((v166 + 16), *(v166 + 40));
  type metadata accessor for MainTabBarController();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    return result;
  }

  v8 = result;
  [v8 _uip_setPreferredSidebarMode_];
  if ((sub_219BED0C4() & 1) == 0)
  {
    v9 = [v8 _uip_sidebar];
    [v9 _setPreferredLayout_];
  }

  v10 = v8;
  result = [v10 view];
  if (!result)
  {
    goto LABEL_82;
  }

  v11 = result;
  sub_2186C6148(0, &qword_280E8DA80);
  v12 = sub_219BF6D44();
  [v11 setBackgroundColor_];

  [v165[9] _setDelegate_];
  v13 = [v10 _uip_sidebar];
  [v13 _setEditable_];

  v14 = sub_2187C550C(*(v166 + 104));
  v15 = v14;
  v180 = MEMORY[0x277D84F90];
  v164 = *(v14 + 2);
  if (!v164)
  {

    v16 = 0;
    v15 = 0;
    v1 = 0;
    v139 = MEMORY[0x277D84F90];
    goto LABEL_68;
  }

  v155 = 0;
  v154 = 0;
  v153 = 0;
  v16 = 0;
  v149 = *MEMORY[0x277D6DA00];
  v148 = (v1 + 104);
  v147[1] = &v172;
  p_vtable = (&OBJC_METACLASS____TtC7NewsUI234MagazineFeedBlueprintLayoutBuilder + 24);
  v156 = xmmword_219C09EC0;
  v162 = v10;
  v161 = v14;
  do
  {
    if (v16 >= *(v15 + 2))
    {
      __break(1u);
      goto LABEL_72;
    }

    v25 = v16[v15 + 32];
    if (v25 <= 2)
    {
      if (!v16[v15 + 32])
      {
        v48 = v166;
        v49 = sub_2187C86BC(v16);
        __swift_project_boxed_opaque_existential_1((v48 + 16), *(v48 + 40));
        sub_2186C709C(0, &qword_280EE53A0);
        result = sub_219BE1E34();
        v50 = aBlock;
        if (!aBlock)
        {
          goto LABEL_78;
        }

        v51 = *(&aBlock + 1);
        v52 = type metadata accessor for FloatingTabBarNavigationController();
        v53 = objc_allocWithZone(v52);
        *(p_vtable[249] + v53) = 0;
        v54 = &v53[qword_280EA07B8];
        *v54 = 0x7961646F74;
        v54[1] = 0xE500000000000000;
        *&v53[qword_280EA07E0] = 7;
        v53[qword_280EA07E8] = 0;
        v55 = &v53[qword_280EA07D0];
        *v55 = v50;
        v55[1] = v51;
        *&v53[qword_280EA07F0] = v49;
        v167.receiver = v53;
        v167.super_class = v52;
        v56 = v49;
        swift_unknownObjectRetain();
        v57 = objc_msgSendSuper2(&v167, sel_initWithRootViewController_, v56);
        [v57 _setAllowsInteractivePopWhenNavigationBarHidden_];
        v58 = sub_219BED0C4();
        v152 = v56;
        if (v58)
        {
          swift_unknownObjectRelease();
          v59 = 0;
        }

        else
        {
          swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_219BE9A94();
          swift_allocObject();

          v59 = sub_219BE9AA4();

          swift_unknownObjectRelease();
        }

        *(p_vtable[249] + v57) = v59;

        v92 = v165[4];
        v93 = v57;
        MEMORY[0x21CECC690]([v93 _uip_setTabElement_]);
        if (*((v180 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v180 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v163 = v180;
        v1 = v157;
        sub_219BEB614();
        v94 = v165[4];
        v95 = MEMORY[0x277D6D3B8];
        sub_2187C854C(0, &qword_280E8BFF8, MEMORY[0x277D6D3B8], MEMORY[0x277D84560]);
        v96 = swift_allocObject();
        *(v96 + 16) = v156;
        v97 = v94;
        sub_219BE5EC4();
        sub_219BE5EE4();
        *&aBlock = v96;
        sub_21871D400(&qword_280EE5D50, 255, MEMORY[0x277D6D3B8]);
        sub_2187C854C(0, &qword_280E8F518, v95, MEMORY[0x277D83940]);
        sub_2187C8634();
        sub_219BF7164();
        sub_219BE5F14();
        swift_allocObject();
        v10 = v162;
        v98 = v162;
        sub_219BE5E74();
        v13 = *(v166 + 120);
        sub_219BE5954();

        v155 = v93;
        goto LABEL_13;
      }

      if (v25 == 1)
      {
        v26 = v166;
        v27 = sub_2187D30B0(&aBlock, v16);
        __swift_project_boxed_opaque_existential_1((v26 + 16), *(v26 + 40));
        sub_2186C709C(0, &qword_280EE53A0);
        v28 = v27;
        result = sub_219BE1E34();
        v29 = v177;
        if (!v177)
        {
          goto LABEL_77;
        }

        v30 = v178;
        v31 = type metadata accessor for FloatingTabBarNavigationController();
        v32 = objc_allocWithZone(v31);
        *(p_vtable[249] + v32) = 0;
        v33 = &v32[qword_280EA07B8];
        *v33 = 0x656E697A6167616DLL;
        v33[1] = 0xE800000000000000;
        *&v32[qword_280EA07E0] = 7;
        v32[qword_280EA07E8] = 0;
        v34 = &v32[qword_280EA07D0];
        *v34 = v29;
        v34[1] = v30;
        *&v32[qword_280EA07F0] = v28;
        v168.receiver = v32;
        v168.super_class = v31;
        v35 = v28;
        swift_unknownObjectRetain();
        v36 = objc_msgSendSuper2(&v168, sel_initWithRootViewController_, v35);
        [v36 _setAllowsInteractivePopWhenNavigationBarHidden_];
        if (sub_219BED0C4())
        {

          swift_unknownObjectRelease();
          v37 = 0;
        }

        else
        {
          swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_219BE9A94();
          swift_allocObject();

          v37 = sub_219BE9AA4();

          swift_unknownObjectRelease();
        }

        v152 = v35;
        *(p_vtable[249] + v36) = v37;

        v99 = v165[5];
        v100 = v36;
        [v100 _uip_setTabElement_];
        v101 = v173;
        v102 = v174;
        __swift_mutable_project_boxed_opaque_existential_1(&aBlock, v173);
        (*(v102 + 5))(v100, v101, v102);
        v1 = v100;
        MEMORY[0x21CECC690]();
        if (*((v180 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v180 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v163 = v180;
        sub_219BEB5F4();
        v103 = v165[5];
        v104 = MEMORY[0x277D6D3B8];
        sub_2187C854C(0, &qword_280E8BFF8, MEMORY[0x277D6D3B8], MEMORY[0x277D84560]);
        v105 = swift_allocObject();
        *(v105 + 16) = v156;
        v106 = v103;
        sub_219BE5EC4();
        sub_219BE5EE4();
        v177 = v105;
        sub_21871D400(&qword_280EE5D50, 255, MEMORY[0x277D6D3B8]);
        sub_2187C854C(0, &qword_280E8F518, v104, MEMORY[0x277D83940]);
        sub_2187C8634();
        sub_219BF7164();
        sub_219BE5F14();
        swift_allocObject();
        v10 = v162;
        v107 = v162;
        sub_219BE5E74();
        v13 = *(v166 + 120);
        sub_219BE5954();

        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        goto LABEL_13;
      }

      v70 = v166;
      v71 = sub_2187D397C(v16);
      __swift_project_boxed_opaque_existential_1((v70 + 16), *(v70 + 40));
      sub_2186C709C(0, &qword_280EE53A0);
      result = sub_219BE1E34();
      v72 = aBlock;
      if (!aBlock)
      {
        goto LABEL_76;
      }

      v73 = *(&aBlock + 1);
      v74 = type metadata accessor for FloatingTabBarNavigationController();
      v75 = objc_allocWithZone(v74);
      *(p_vtable[249] + v75) = 0;
      v76 = &v75[qword_280EA07B8];
      *v76 = 0x7374726F7073;
      v76[1] = 0xE600000000000000;
      *&v75[qword_280EA07E0] = 7;
      v75[qword_280EA07E8] = 0;
      v77 = &v75[qword_280EA07D0];
      *v77 = v72;
      v77[1] = v73;
      *&v75[qword_280EA07F0] = v71;
      v169.receiver = v75;
      v169.super_class = v74;
      v78 = v71;
      swift_unknownObjectRetain();
      v152 = v78;
      v79 = objc_msgSendSuper2(&v169, sel_initWithRootViewController_, v78);
      [v79 _setAllowsInteractivePopWhenNavigationBarHidden_];
      if (sub_219BED0C4())
      {
        swift_unknownObjectRelease();
        v80 = 0;
      }

      else
      {
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_219BE9A94();
        swift_allocObject();

        v80 = sub_219BE9AA4();

        swift_unknownObjectRelease();
      }

      *(p_vtable[249] + v79) = v80;

      [v79 _uip_setTabElement_];
      v19 = v79;
      MEMORY[0x21CECC690]();
      if (*((v180 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v180 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v163 = v180;
      v1 = v157;
      sub_219BEB5D4();
      v128 = v165[6];
      v129 = MEMORY[0x277D6D3B8];
      sub_2187C854C(0, &qword_280E8BFF8, MEMORY[0x277D6D3B8], MEMORY[0x277D84560]);
      v130 = swift_allocObject();
      *(v130 + 16) = v156;
      v131 = v128;
      sub_219BE5EC4();
      sub_219BE5EE4();
      *&aBlock = v130;
      sub_21871D400(&qword_280EE5D50, 255, MEMORY[0x277D6D3B8]);
      sub_2187C854C(0, &qword_280E8F518, v129, MEMORY[0x277D83940]);
      sub_2187C8634();
      sub_219BF7164();
      sub_219BE5F14();
      swift_allocObject();
      v10 = v162;
      v132 = v162;
LABEL_12:
      sub_219BE5E74();
      v13 = *(v166 + 120);
      sub_219BE5954();

LABEL_13:
      v15 = v161;
      p_vtable = &OBJC_METACLASS____TtC7NewsUI234MagazineFeedBlueprintLayoutBuilder.vtable;
      goto LABEL_14;
    }

    if (v25 == 3)
    {
      v60 = v166;
      v61 = sub_2187D3C18(v16);
      __swift_project_boxed_opaque_existential_1((v60 + 16), *(v60 + 40));
      sub_2186C709C(0, &qword_280EE53A0);
      result = sub_219BE1E34();
      v62 = aBlock;
      if (!aBlock)
      {
        goto LABEL_75;
      }

      v63 = *(&aBlock + 1);
      v64 = type metadata accessor for FloatingTabBarNavigationController();
      v65 = objc_allocWithZone(v64);
      *(p_vtable[249] + v65) = 0;
      v66 = &v65[qword_280EA07B8];
      *v66 = 0x6F69647561;
      v66[1] = 0xE500000000000000;
      *&v65[qword_280EA07E0] = 7;
      v65[qword_280EA07E8] = 0;
      v67 = &v65[qword_280EA07D0];
      *v67 = v62;
      v67[1] = v63;
      *&v65[qword_280EA07F0] = v61;
      v170.receiver = v65;
      v170.super_class = v64;
      v68 = v61;
      swift_unknownObjectRetain();
      v152 = v68;
      v69 = objc_msgSendSuper2(&v170, sel_initWithRootViewController_, v68);
      [v69 _setAllowsInteractivePopWhenNavigationBarHidden_];
      if (sub_219BED0C4())
      {
        swift_unknownObjectRelease();
        v18 = 0;
      }

      else
      {
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_219BE9A94();
        swift_allocObject();

        v18 = sub_219BE9AA4();

        swift_unknownObjectRelease();
      }

      *(p_vtable[249] + v69) = v18;

      [v69 _uip_setTabElement_];
      v19 = v69;
      MEMORY[0x21CECC690]();
      if (*((v180 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v180 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v163 = v180;
      v1 = v157;
      sub_219BEB5A4();
      v20 = v165[7];
      v21 = MEMORY[0x277D6D3B8];
      sub_2187C854C(0, &qword_280E8BFF8, MEMORY[0x277D6D3B8], MEMORY[0x277D84560]);
      v22 = swift_allocObject();
      *(v22 + 16) = v156;
      v23 = v20;
      sub_219BE5EC4();
      sub_219BE5EE4();
      *&aBlock = v22;
      sub_21871D400(&qword_280EE5D50, 255, MEMORY[0x277D6D3B8]);
      sub_2187C854C(0, &qword_280E8F518, v21, MEMORY[0x277D83940]);
      sub_2187C8634();
      sub_219BF7164();
      sub_219BE5F14();
      swift_allocObject();
      v10 = v162;
      v24 = v162;
      goto LABEL_12;
    }

    if (v25 != 4)
    {
      sub_219BE74A4();
      v81 = v166;
      sub_218718690(v166 + 16, &aBlock);
      v82 = swift_allocObject();
      sub_2186CB1F0(&aBlock, v82 + 16);
      (*v148)(v150, v149, v151);
      v83 = sub_219BE7474();
      __swift_project_boxed_opaque_existential_1((v81 + 16), *(v81 + 40));
      sub_2186C709C(0, &qword_280EE53A0);
      result = sub_219BE1E34();
      v84 = aBlock;
      if (!aBlock)
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v85 = *(&aBlock + 1);
      v86 = type metadata accessor for FloatingTabBarNavigationController();
      v87 = objc_allocWithZone(v86);
      *(p_vtable[249] + v87) = 0;
      v88 = &v87[qword_280EA07B8];
      *v88 = 0x686372616573;
      v88[1] = 0xE600000000000000;
      *&v87[qword_280EA07E0] = 2;
      v87[qword_280EA07E8] = 0;
      v89 = &v87[qword_280EA07D0];
      *v89 = v84;
      v89[1] = v85;
      *&v87[qword_280EA07F0] = v83;
      v179.receiver = v87;
      v179.super_class = v86;
      v1 = v83;
      swift_unknownObjectRetain();
      v90 = objc_msgSendSuper2(&v179, sel_initWithRootViewController_, v1);
      [v90 _setAllowsInteractivePopWhenNavigationBarHidden_];
      if (sub_219BED0C4())
      {
        swift_unknownObjectRelease();
        v91 = 0;
      }

      else
      {
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_219BE9A94();
        swift_allocObject();

        v91 = sub_219BE9AA4();

        swift_unknownObjectRelease();
      }

      *(p_vtable[249] + v90) = v91;

      [v90 _uip_setTabElement_];
      v133 = v90;
      MEMORY[0x21CECC690]();
      if (*((v180 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v180 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();

      v163 = v180;
      sub_219BEB5C4();
      v134 = v165[8];
      v135 = MEMORY[0x277D6D3B8];
      sub_2187C854C(0, &qword_280E8BFF8, MEMORY[0x277D6D3B8], MEMORY[0x277D84560]);
      v136 = swift_allocObject();
      *(v136 + 16) = v156;
      v137 = v134;
      sub_219BE5EC4();
      sub_219BE5ED4();
      *&aBlock = v136;
      sub_21871D400(&qword_280EE5D50, 255, MEMORY[0x277D6D3B8]);
      sub_2187C854C(0, &qword_280E8F518, v135, MEMORY[0x277D83940]);
      sub_2187C8634();
      sub_219BF7164();
      sub_219BE5F14();
      swift_allocObject();
      v10 = v162;
      v138 = v162;
      sub_219BE5E74();
      v13 = *(v166 + 120);
      sub_219BE5954();

      v154 = v133;
      goto LABEL_13;
    }

    v38 = v166;
    v39 = sub_2187D3E88(v16);
    __swift_project_boxed_opaque_existential_1((v38 + 16), *(v38 + 40));
    sub_2186C709C(0, &qword_280EE53A0);
    result = sub_219BE1E34();
    v40 = aBlock;
    if (!aBlock)
    {
      goto LABEL_74;
    }

    v41 = *(&aBlock + 1);
    v42 = type metadata accessor for FloatingTabBarNavigationController();
    v43 = objc_allocWithZone(v42);
    *(p_vtable[249] + v43) = 0;
    v44 = &v43[qword_280EA07B8];
    *v44 = 0x6E69776F6C6C6F66;
    v44[1] = 0xE900000000000067;
    *&v43[qword_280EA07E0] = 7;
    v43[qword_280EA07E8] = 1;
    v45 = &v43[qword_280EA07D0];
    *v45 = v40;
    v45[1] = v41;
    *&v43[qword_280EA07F0] = v39;
    v176.receiver = v43;
    v176.super_class = v42;
    v1 = v39;
    swift_unknownObjectRetain();
    v46 = objc_msgSendSuper2(&v176, sel_initWithRootViewController_, v1);
    [v46 _setAllowsInteractivePopWhenNavigationBarHidden_];
    if (sub_219BED0C4())
    {

      swift_unknownObjectRelease();
      v47 = 0;
    }

    else
    {
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_219BE9A94();
      swift_allocObject();

      v47 = sub_219BE9AA4();

      swift_unknownObjectRelease();
    }

    *(p_vtable[249] + v46) = v47;

    [v46 _uip_setTabElement_];
    v108 = v46;
    MEMORY[0x21CECC690]();
    if (*((v180 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v180 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();

    v163 = v180;
    v109 = [objc_opt_self() currentDevice];
    v110 = [v109 userInterfaceIdiom];

    if (v110 + 1 <= 7 && ((1 << (v110 + 1)) & 0xC5) != 0)
    {
      v153 = v108;
      v111 = objc_opt_self();
      v112 = swift_allocObject();
      swift_weakInit();
      v113 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v114 = swift_allocObject();
      v115 = v165;
      v116 = v114;
      swift_unknownObjectWeakInit();
      v117 = swift_allocObject();
      v117[2] = v113;
      v117[3] = v116;
      v117[4] = v112;
      v117[5] = v115;
      v174 = sub_21946DD6C;
      v175 = v117;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v172 = sub_218793E0C;
      v173 = &block_descriptor_129;
      v118 = _Block_copy(&aBlock);
      v119 = v10;
      v1 = v1;

      [v111 schedulePostLaunchBlockForMainThread_];
      _Block_release(v118);
      v120 = v119;

      sub_219BE2754();

      v121 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v122 = v166;
      v123 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v124 = swift_allocObject();
      *(v124 + 16) = v121;
      *(v124 + 24) = v123;
      sub_219BE26F4();

      __swift_project_boxed_opaque_existential_1((v122 + 16), *(v122 + 40));
      sub_2186CD650();
      result = sub_219BE1E24();
      if (!result)
      {
        goto LABEL_79;
      }

      v13 = sub_219BE1EB4();
      v125 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v126 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v127 = swift_allocObject();
      *(v127 + 16) = v125;
      *(v127 + 24) = v126;
      sub_219BE26F4();

      v15 = v161;
      p_vtable = (&OBJC_METACLASS____TtC7NewsUI234MagazineFeedBlueprintLayoutBuilder + 24);
      v10 = v162;
    }

    else
    {
      v13 = v166;
      sub_2187D41D4(v10, v165);

      v153 = v108;
    }

LABEL_14:
    ++v16;
  }

  while (v164 != v16);

  v1 = v153;
  if (v153)
  {
    v16 = v155;
    v15 = v154;
    v139 = v163;
    if (v154)
    {
      v140 = type metadata accessor for MainTabBarLayoutCoordinator();
      v141 = swift_allocObject();
      v141[3] = v15;
      v141[4] = 0;
      v141[2] = v1;
      v173 = v140;
      v174 = &off_282A539B8;
      *&aBlock = v141;
      v142 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_layoutCoordinator;
      swift_beginAccess();
      v143 = v10;
      v144 = v1;
      v145 = v15;
      sub_2187D4AC4(&aBlock, &v10[v142]);
      swift_endAccess();
    }
  }

  else
  {
    v16 = v155;
    v15 = v154;
    v139 = v163;
  }

LABEL_68:
  *&v10[OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_navigationControllers] = v139;
  v13 = v10;

  sub_2187D4B94();

  if (v139 >> 62)
  {
LABEL_72:
    v146 = sub_219BF7214();
  }

  else
  {
    v146 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v13 _setMaximumNumberOfItems_];
  [v13 setSelectedViewController_];

  return v13;
}

uint64_t sub_2187BEF10()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2187BEF48()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2187BEF80()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2187BEFB8()
{

  return swift_deallocObject();
}

uint64_t sub_2187BF018()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v58 = ObjCClassFromMetadata;
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  if (qword_280E92EF0 != -1)
  {
    swift_once();
  }

  v4 = qword_280F61980;
  v5 = type metadata accessor for FloatingTabElement();
  v6 = objc_allocWithZone(v5);
  v7 = v4;
  v8 = sub_219BF53D4();
  v9 = sub_219BF53D4();

  v10 = [v6 initWithIdentifier:v8 title:v9 image:{v7, 0x8000000219D22320}];

  v11 = v10;
  [v11 setSubtitle_];
  [v11 _setTabBarPlacement_];

  *(v0 + 32) = v11;
  v12 = [v2 bundleForClass_];
  sub_219BDB5E4();

  if (qword_280E92EE0 != -1)
  {
    swift_once();
  }

  v13 = qword_280F61978;
  v14 = objc_allocWithZone(v5);
  v15 = v13;
  v16 = sub_219BF53D4();
  v17 = sub_219BF53D4();

  v18 = [v14 initWithIdentifier:v16 title:v17 image:{v15, 0x8000000219D22340}];

  v19 = v18;
  [v19 setSubtitle_];
  [v19 _setTabBarPlacement_];

  *(v0 + 40) = v19;
  v20 = [v2 bundleForClass_];
  sub_219BDB5E4();

  if (qword_280E92EF8 != -1)
  {
    swift_once();
  }

  v21 = qword_280F61988;
  v22 = objc_allocWithZone(v5);
  v23 = v21;
  v24 = sub_219BF53D4();
  v25 = sub_219BF53D4();

  v26 = [v22 initWithIdentifier:v24 title:v25 image:{v23, 0x8000000219D22390}];

  v27 = v26;
  [v27 setSubtitle_];
  [v27 _setTabBarPlacement_];

  *(v0 + 56) = v27;
  v28 = [v2 bundleForClass_];
  sub_219BDB5E4();

  if (qword_280E92F00 != -1)
  {
    swift_once();
  }

  v29 = qword_280F61990;
  v30 = objc_allocWithZone(v5);
  v31 = v29;
  v32 = sub_219BF53D4();
  v33 = sub_219BF53D4();

  v34 = [v30 initWithIdentifier:v32 title:v33 image:{v31, 0x8000000219D22370}];

  v35 = v34;
  [v35 setSubtitle_];
  [v35 _setTabBarPlacement_];

  *(v0 + 48) = v35;
  v36 = [objc_opt_self() _searchElement];
  *(v0 + 64) = v36;
  [v36 _setTabBarPlacement_];
  sub_219BED0C4();
  v37 = [v2 bundleForClass_];
  sub_219BDB5E4();

  if (qword_280E92ED8 != -1)
  {
    swift_once();
  }

  v38 = qword_280F61970;
  v39 = type metadata accessor for FloatingTabGroup();
  v40 = objc_allocWithZone(v39);
  v40[OBJC_IVAR____TtC7NewsUI216FloatingTabGroup_allowsReorderingWhileOnline] = 0;
  v41 = v38;
  v42 = sub_219BF53D4();
  v43 = sub_219BF53D4();

  sub_2187C0264();
  v44 = sub_219BF5904();
  v60.receiver = v40;
  v60.super_class = v39;
  v45 = objc_msgSendSuper2(&v60, sel_initWithIdentifier_title_image_children_, v42, v43, v41, v44, 0x8000000219D223E0);

  v46 = v45;
  [v46 _setTabBarPlacement_];
  [v46 _setAllowsReordering_];

  *(v0 + 72) = v46;
  [v46 _setSidebarAppearance_];

  v47 = *(v0 + 72);
  v48 = sub_219BF5904();
  [v47 _setChildren_];

  v49 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v50 = objc_allocWithZone(v39);
  v50[OBJC_IVAR____TtC7NewsUI216FloatingTabGroup_allowsReorderingWhileOnline] = 0;
  v51 = sub_219BF53D4();
  v52 = sub_219BF53D4();

  v53 = sub_219BF5904();
  v59.receiver = v50;
  v59.super_class = v39;
  v54 = objc_msgSendSuper2(&v59, sel_initWithIdentifier_title_image_children_, v51, v52, 0, v53, 0x8000000219D238C0);

  v55 = v54;
  [v55 _setTabBarPlacement_];
  [v55 _setAllowsReordering_];
  *(v0 + 80) = v55;
  v56 = sub_219BF5904();
  [v55 _setChildren_];

  return v0;
}

uint64_t sub_2187BF954()
{
  type metadata accessor for MainTabManager();
  swift_allocObject();
  return sub_2187BF018();
}

void sub_2187BF9A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = objc_opt_self();
  v6 = sub_219BF53D4();
  v7 = [v5 ts:v6 internalSystemImageNamed:?];

  if (v7)
  {
    *a4 = v7;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2187BFA94()
{
  result = qword_280ED2248;
  if (!qword_280ED2248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2248);
  }

  return result;
}

uint64_t sub_2187BFB74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2187BFBA4();
  *a1 = result;
  return result;
}

uint64_t sub_2187BFBA4()
{
  v0 = sub_219BF7954();

  if (v0 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v0;
  }
}

void sub_2187BFC1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_219BF53D4();
  v6 = [objc_opt_self() systemImageNamed_];

  if (v6)
  {
    *a4 = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t getEnumTagSinglePayload for TodayFeedGroupKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_2187BFD1C()
{
  v0 = sub_219BF53D4();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_280F61990 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_2187BFE08()
{
  if (qword_280E92E90 != -1)
  {
    swift_once();
  }

  v0 = qword_280E92E98;
  v1 = sub_219BF53D4();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_280F61970 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2187BFED4()
{
  v1 = OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useWelcomeSeries;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useWelcomeSeries);
  if (v2 == 2)
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_280EE9288 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_appConfiguration);
    if ([v3 respondsToSelector_])
    {
      [v3 useWelcomeSeries];
    }

    LOBYTE(v2) = sub_219BDC8C4();

    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

id sub_2187BFFC4()
{
  type metadata accessor for Images();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280E92E98 = result;
  return result;
}

uint64_t sub_2187C003C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC7F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186CA3BC();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D040], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_219BDC9C4();
  qword_280EE9290 = result;
  return result;
}

unint64_t sub_2187C0264()
{
  result = qword_280E8DAD8;
  if (!qword_280E8DAD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DAD8);
  }

  return result;
}

uint64_t type metadata accessor for MainTabBarController()
{
  result = qword_280ECE5A8;
  if (!qword_280ECE5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FloatingTabBarController()
{
  result = qword_280EC1DA0;
  if (!qword_280EC1DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2187C03B0()
{
  sub_2187C04A0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2187C04A0()
{
  if (!qword_280EE7E50)
  {
    sub_2186C6148(255, &qword_280E8E480);
    sub_219BE9EC4();
    v0 = sub_219BE1C64();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7E50);
    }
  }
}

uint64_t sub_2187C0518@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v120 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v120);
  v115 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v117);
  v114 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v116);
  v113 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v111);
  v112 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for ShortcutsTodayFeedGroup();
  MEMORY[0x28223BE20](v109);
  v110 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v107);
  v108 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v105);
  v106 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for EngagementTodayFeedGroup();
  MEMORY[0x28223BE20](v103);
  v104 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v101);
  v102 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v99);
  v100 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for SeenContentMarkTodayFeedGroup();
  MEMORY[0x28223BE20](v97);
  v98 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v95);
  v96 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v93);
  v94 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v91);
  v92 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v89);
  v90 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v88);
  v119 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v86);
  v87 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v84);
  v85 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v82);
  v83 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v80);
  v81 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v78);
  v79 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v76);
  v77 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v74);
  v75 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v26);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C22A4(0, &qword_280E8CF88, MEMORY[0x277D844C8]);
  v30 = v29;
  v118 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v71 - v31;
  v33 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v33);
  v35 = &v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1[3];
  v123 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_2187C2308();
  v37 = v122;
  sub_219BF7B34();
  if (v37)
  {
LABEL_28:
    v69 = v123;
  }

  else
  {
    v71 = v26;
    v72 = v28;
    v38 = v119;
    v39 = v118;
    v73 = v35;
    v122 = v33;
    v40 = v121;
    v124 = 0;
    sub_2187C24AC();
    sub_219BF7734();
    v41 = v39;
    switch(v125)
    {
      case 1:
        v125 = 1;
        sub_2187733B4(&qword_27CC0B9F8, type metadata accessor for NewspaperTodayFeedGroup);
        v56 = v75;
        sub_219BF7734();
        (*(v41 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v56, v73, type metadata accessor for NewspaperTodayFeedGroup);
        v57 = v123;
        goto LABEL_31;
      case 2:
        v125 = 1;
        sub_2187733B4(&unk_280EE18E0, type metadata accessor for LocalNewsTodayFeedGroup);
        v52 = v77;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v52, v73, type metadata accessor for LocalNewsTodayFeedGroup);
        goto LABEL_30;
      case 3:
        v125 = 1;
        sub_2187733B4(&qword_280EC6250, type metadata accessor for TrendingTodayFeedGroup);
        v54 = v79;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v54, v73, type metadata accessor for TrendingTodayFeedGroup);
        goto LABEL_30;
      case 4:
        v125 = 1;
        sub_2187733B4(&qword_280ECE990, type metadata accessor for ForYouTodayFeedGroup);
        v47 = v81;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v47, v73, type metadata accessor for ForYouTodayFeedGroup);
        goto LABEL_30;
      case 5:
        v125 = 1;
        sub_2187733B4(&qword_280EB8560, type metadata accessor for LatestStoriesTodayFeedGroup);
        v60 = v85;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v60, v73, type metadata accessor for LatestStoriesTodayFeedGroup);
        goto LABEL_30;
      case 6:
        v125 = 1;
        sub_2187733B4(&qword_280EB7EF0, type metadata accessor for MissedStoriesTodayFeedGroup);
        v63 = v83;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v63, v73, type metadata accessor for MissedStoriesTodayFeedGroup);
        goto LABEL_30;
      case 7:
        v125 = 1;
        sub_2187733B4(&qword_280EC0F78, type metadata accessor for MoreForYouTodayFeedGroup);
        v55 = v87;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v55, v73, type metadata accessor for MoreForYouTodayFeedGroup);
        goto LABEL_30;
      case 8:
        v125 = 1;
        sub_2187733B4(&qword_280ECFA10, type metadata accessor for TopicTodayFeedGroup);
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v38, v73, type metadata accessor for TopicTodayFeedGroup);
        goto LABEL_30;
      case 9:
        v125 = 1;
        sub_2187733B4(&qword_280ED5DD8, type metadata accessor for MagazineFeedGroup);
        v50 = v100;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v50, v73, type metadata accessor for MagazineFeedGroup);
        goto LABEL_30;
      case 10:
        v125 = 1;
        sub_2187733B4(&qword_27CC0B9F0, type metadata accessor for NewFollowTodayFeedGroup);
        v65 = v90;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v65, v73, type metadata accessor for NewFollowTodayFeedGroup);
        goto LABEL_30;
      case 11:
        v125 = 1;
        sub_2187733B4(&qword_27CC0B9E8, type metadata accessor for SubscriptionTodayFeedGroup);
        v46 = v92;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v46, v73, type metadata accessor for SubscriptionTodayFeedGroup);
        goto LABEL_30;
      case 12:
        v48 = sub_219BEE394();
        sub_2187733B4(&qword_27CC0B9E0, MEMORY[0x277D31FD8]);
        swift_allocError();
        (*(*(v48 - 8) + 104))(v49, *MEMORY[0x277D31FD0], v48);
        swift_willThrow();
        (*(v39 + 8))(v32, v30);
        goto LABEL_28;
      case 13:
        v125 = 1;
        sub_2187733B4(&qword_280EC31A0, type metadata accessor for SpotlightTodayFeedGroup);
        v62 = v94;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v62, v73, type metadata accessor for SpotlightTodayFeedGroup);
        goto LABEL_30;
      case 14:
        v125 = 1;
        sub_2187733B4(&qword_280EBFFC8, type metadata accessor for SuggestionTodayFeedGroup);
        v45 = v96;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v45, v73, type metadata accessor for SuggestionTodayFeedGroup);
        goto LABEL_30;
      case 15:
        v125 = 1;
        sub_2187733B4(&qword_280EAEF40, type metadata accessor for SeenContentMarkTodayFeedGroup);
        v53 = v98;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v53, v73, type metadata accessor for SeenContentMarkTodayFeedGroup);
        goto LABEL_30;
      case 16:
        v125 = 1;
        sub_2187733B4(&qword_27CC0B9D8, type metadata accessor for SharedWithYouTodayFeedGroup);
        v44 = v102;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v44, v73, type metadata accessor for SharedWithYouTodayFeedGroup);
        goto LABEL_30;
      case 17:
        v125 = 1;
        sub_2187733B4(&qword_280EC2190, type metadata accessor for EngagementTodayFeedGroup);
        v58 = v104;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v58, v73, type metadata accessor for EngagementTodayFeedGroup);
        goto LABEL_30;
      case 18:
        v125 = 1;
        sub_2187733B4(&qword_27CC0B9D0, type metadata accessor for MySportsTodayFeedGroup);
        v64 = v106;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v64, v73, type metadata accessor for MySportsTodayFeedGroup);
        goto LABEL_30;
      case 19:
        v125 = 1;
        sub_2187733B4(&qword_280EB8640, type metadata accessor for IntroToSportsTodayFeedGroup);
        v67 = v108;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v67, v73, type metadata accessor for IntroToSportsTodayFeedGroup);
        goto LABEL_30;
      case 20:
        v125 = 1;
        sub_2187733B4(&qword_280EC33E0, type metadata accessor for ShortcutsTodayFeedGroup);
        v59 = v110;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v59, v73, type metadata accessor for ShortcutsTodayFeedGroup);
        goto LABEL_30;
      case 21:
        v125 = 1;
        sub_2187733B4(&qword_280ECB9A0, type metadata accessor for ChannelTodayFeedGroup);
        v61 = v112;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v61, v73, type metadata accessor for ChannelTodayFeedGroup);
        goto LABEL_30;
      case 22:
        v125 = 1;
        sub_2187733B4(&qword_27CC0B9C8, type metadata accessor for SavedStoriesTodayFeedGroup);
        v66 = v113;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v66, v73, type metadata accessor for SavedStoriesTodayFeedGroup);
        goto LABEL_30;
      case 23:
        v125 = 1;
        sub_2187733B4(&qword_27CC0B9C0, type metadata accessor for ChannelPickerTodayFeedGroup);
        v68 = v114;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v68, v73, type metadata accessor for ChannelPickerTodayFeedGroup);
        goto LABEL_30;
      case 24:
        v125 = 1;
        sub_2187733B4(&qword_280ED3B30, type metadata accessor for FoodTodayFeedGroup);
        v51 = v115;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v51, v73, type metadata accessor for FoodTodayFeedGroup);
        goto LABEL_30;
      default:
        v125 = 1;
        sub_2187733B4(&qword_280ECB728, type metadata accessor for CuratedTodayFeedGroup);
        v42 = v72;
        sub_219BF7734();
        (*(v39 + 8))(v32, v30);
        v43 = v73;
        sub_2187C58F8(v42, v73, type metadata accessor for CuratedTodayFeedGroup);
LABEL_30:
        v57 = v123;
LABEL_31:
        swift_storeEnumTagMultiPayload();
        sub_2187C58F8(v43, v40, type metadata accessor for TodayFeedGroup);
        v69 = v57;
        break;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v69);
}

void sub_2187C22A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2187C2308();
    v7 = a3(a1, &type metadata for TodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2187C2308()
{
  result = qword_280EDB7A8;
  if (!qword_280EDB7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDB7A8);
  }

  return result;
}

unint64_t sub_2187C2384()
{
  result = qword_280EDFC60;
  if (!qword_280EDFC60)
  {
    type metadata accessor for MainStyler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDFC60);
  }

  return result;
}

unint64_t sub_2187C23D8()
{
  result = qword_280EDB798;
  if (!qword_280EDB798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDB798);
  }

  return result;
}

unint64_t sub_2187C2430(uint64_t a1)
{
  result = sub_2187C2384();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2187C2458()
{
  result = qword_280EDB7A0;
  if (!qword_280EDB7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDB7A0);
  }

  return result;
}

unint64_t sub_2187C24AC()
{
  result = qword_280ED2240;
  if (!qword_280ED2240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2240);
  }

  return result;
}

uint64_t sub_2187C2500@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA3940);
  result = sub_219BE1E34();
  if (v5)
  {
    type metadata accessor for MainDataManager();
    v4 = swift_allocObject();
    *(v4 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v5 + OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_delegate + 8) = &off_282A7D368;
    swift_unknownObjectWeakAssign();
    result = swift_unknownObjectRelease();
    *a2 = v4;
    a2[1] = &off_282A7D378;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187C25DC()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 1701869940;
  }
}

void sub_2187C2600()
{
  if (!qword_280EE7B60)
  {
    v0 = sub_219BE2124();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7B60);
    }
  }
}

uint64_t storeEnumTagSinglePayload for TodayFeedGroupKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI223FollowingSelectionModelO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2187C278C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BED8D4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_219BEF8A4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2187C28C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BED8D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_219BEF8A4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2187C2A2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v33 = sub_219BEF8A4();
  v29 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_219BED8D4();
  v32 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C2FB0(0, &qword_280E8CE98, MEMORY[0x277D844C8]);
  v34 = v7;
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v26 - v8;
  v10 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187C3014();
  v36 = v9;
  v13 = v37;
  sub_219BF7B34();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v31;
  v15 = v32;
  v28 = v10;
  v37 = v4;
  v16 = a1;
  v17 = v33;
  v42 = 0;
  sub_2187C3618(&unk_280E92630, MEMORY[0x277D31C50]);
  sub_219BF7734();
  v18 = *(v15 + 32);
  v27 = v12;
  v18(v12, v6, v35);
  v41 = 1;
  v19 = sub_219BF76F4();
  v20 = v28;
  v21 = &v27[*(v28 + 20)];
  *v21 = v19;
  v21[1] = v22;
  sub_2186D0BA8();
  v40 = 2;
  sub_2187531B0(&qword_280E8EDD0);
  v26[1] = 0;
  sub_219BF76E4();
  *&v27[*(v20 + 24)] = v38;
  v39 = 3;
  sub_2187C3618(&qword_280E912B0, MEMORY[0x277D32770]);
  v23 = v37;
  sub_219BF7734();
  (*(v14 + 8))(v36, v34);
  v24 = v27;
  (*(v29 + 32))(&v27[*(v28 + 28)], v23, v17);
  sub_2187C54A8(v24, v30);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return sub_2187C5798(v24);
}

void sub_2187C2FB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2187C3014();
    v7 = a3(a1, &type metadata for CuratedTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2187C3014()
{
  result = qword_280ECB768[0];
  if (!qword_280ECB768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECB768);
  }

  return result;
}

void *sub_2187C3090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for MainRouter();
  v32[3] = v9;
  v32[4] = &off_282A7AD50;
  v32[0] = a3;
  v30 = v8;
  v31 = &off_282AA29E0;
  v29[0] = a4;
  type metadata accessor for MainEventHandler();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v32, v9);
  MEMORY[0x28223BE20](v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x28223BE20](v15);
  v17 = (&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v13;
  v20 = *v17;
  v27 = v9;
  v28 = &off_282A7AD50;
  v25 = &off_282AA29E0;
  *&v26 = v19;
  v24 = v8;
  *&v23 = v20;
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[4] = a1;
  v10[5] = a2;
  sub_2186CB1F0(&v26, (v10 + 6));
  sub_2186CB1F0(&v23, (v10 + 11));
  *(a1 + 24) = &off_282A8ECF8;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v10;
}

unint64_t sub_2187C32EC()
{
  result = qword_280ECB758;
  if (!qword_280ECB758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECB758);
  }

  return result;
}

unint64_t sub_2187C3368()
{
  result = qword_280ECB760;
  if (!qword_280ECB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECB760);
  }

  return result;
}

uint64_t sub_2187C33BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0);
  result = sub_219BE1E34();
  if (!v16)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6570);
  result = sub_219BE1E34();
  if (!v14)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E9DA58);
  result = sub_219BE1E34();
  if (!v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6580);
  result = sub_219BE1E34();
  if (v10)
  {
    type metadata accessor for FollowingEngagementViewLayoutAttributesFactory();
    v3 = swift_allocObject();
    sub_2186CB1F0(&v9, v3 + 16);
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    MEMORY[0x28223BE20](v4);
    v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = sub_2187C3718(v15, v13, *v6, v3);

    __swift_destroy_boxed_opaque_existential_1(v11);
    return v8;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2187C3618(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2187C3684()
{
  v1 = 0x724774616D726F66;
  v2 = 0xD00000000000001BLL;
  if (*v0 != 2)
  {
    v2 = 0x7845676E6974756DLL;
  }

  if (*v0)
  {
    v1 = 0x65707974627573;
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

void *sub_2187C3718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FollowingEngagementViewRenderer();
  v17[3] = v8;
  v17[4] = &off_282A9DFF0;
  v17[0] = a3;
  type metadata accessor for FollowingEngagementViewManager();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v17, v8);
  MEMORY[0x28223BE20](v10);
  v12 = (v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v16[3] = v8;
  v16[4] = &off_282A9DFF0;
  v16[0] = v14;
  v9[3] = 0;
  swift_unknownObjectWeakInit();
  sub_218718690(a1, (v9 + 4));
  sub_218718690(a2, (v9 + 9));
  sub_218718690(v16, (v9 + 14));
  v9[19] = a4;
  __swift_project_boxed_opaque_existential_1(v9 + 9, v9[12]);
  sub_2186D5C5C(qword_280EACD48, type metadata accessor for FollowingEngagementViewManager);

  sub_219BE3A24();

  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v9;
}

id sub_2187C390C(uint64_t a1, void *a2)
{
  v3 = v2;
  v28 = a2;
  v5 = sub_219BE9BC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v9 - 8);
  *&v2[OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController__isSidebarVisible;
  v30 = 0;
  sub_2187C3D44(0, &qword_280EE73F8, MEMORY[0x277D839B0], MEMORY[0x277D6CCD0]);
  swift_allocObject();
  *&v2[v10] = sub_219BE2724();
  v11 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController__isSidebarEditing;
  v30 = 0;
  swift_allocObject();
  *&v2[v11] = sub_219BE2724();
  *&v2[OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_navigationControllers] = MEMORY[0x277D84F90];
  v12 = &v2[OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_layoutCoordinator];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  sub_2186C6148(0, &qword_280E8E480);
  sub_219BE9EC4();
  sub_219BE1C54();
  sub_219BE1C54();
  v13 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_restoreStateCache;
  sub_2187C3D94();
  swift_allocObject();
  *&v2[v13] = sub_219BE3284();
  v14 = &v2[OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_searchElementIdentifier];
  v15 = [objc_opt_self() _searchElement];
  v16 = [v15 _identifier];

  v17 = sub_219BF5414();
  v19 = v18;

  *v14 = v17;
  v14[1] = v19;
  v20 = &v3[OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_previousSelectedElementIdentifier];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v3[OBJC_IVAR____TtC7NewsUI224FloatingTabBarController____lazy_storage___intrinsicTabBar] = 0;
  v21 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarImpressionManager;
  *v8 = 0;
  (*(v6 + 104))(v8, *MEMORY[0x277D6E828], v5);
  sub_219BE9BD4();
  sub_219BEA324();
  swift_allocObject();
  *&v3[v21] = sub_219BEA2F4();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_commandContainer] = a1;
  v22 = v28;
  *&v3[OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_accessoryViewCoordinator] = v28;
  v23 = type metadata accessor for FloatingTabBarController();
  v29.receiver = v3;
  v29.super_class = v23;

  v24 = v22;
  v25 = objc_msgSendSuper2(&v29, sel_initWithNibName_bundle_, 0, 0);
  v26 = [v25 _uip_sidebar];
  [v26 _setDelegate_];

  [v25 setDelegate_];
  sub_2187C4548();

  sub_219BEA304();

  return v25;
}

void sub_2187C3D44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2187C3D94()
{
  if (!qword_280EE68A0)
  {
    sub_2187381BC(255, &qword_280E8ECB0, &qword_280E8E480, 0x277D75D28, MEMORY[0x277D83940]);
    v0 = sub_219BE3294();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE68A0);
    }
  }
}

void sub_2187C3E70()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_219BEB674();
  MEMORY[0x28223BE20](v3 - 8);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, sel_viewDidLoad);

  sub_219BE2754();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE2774();

  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC7NewsUI220MainTabBarController_styler], *&v1[OBJC_IVAR____TtC7NewsUI220MainTabBarController_styler + 24]);
  v4 = [v1 tabBar];
  sub_219BE6D74();

  sub_219BEB5B4();
  if ([v1 view])
  {
    sub_219BE5F14();
    swift_allocObject();
    v5 = v1;
    sub_219BE5E94();
    sub_219BE5954();

    v6 = [objc_opt_self() defaultCenter];
    [v6 addObserver:v5 selector:sel_accessibilityReduceTransparencyDidChange name:*MEMORY[0x277D764C8] object:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2187C40B8()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2187C4138()
{
  swift_getObjectType();
  v5.receiver = v0;
  v5.super_class = type metadata accessor for FloatingTabBarController();
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  sub_219BED0C4();
  sub_2187C42D4(0, &qword_280E8BD50, sub_2187C4338, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_219C09BA0;
  v2 = sub_219BEBA34();
  v3 = MEMORY[0x277D74C50];
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  sub_219BF6604();
  swift_unknownObjectRelease();

  if (*&v0[OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_accessoryViewCoordinator])
  {
    sub_219BE6AA4();
    sub_219BEA154();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2187C4270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2187C42D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2187C4338()
{
  result = qword_280EE3570;
  if (!qword_280EE3570)
  {
    sub_2187C4380();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_280EE3570);
  }

  return result;
}

unint64_t sub_2187C4380()
{
  result = qword_280EE3580;
  if (!qword_280EE3580)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE3580);
  }

  return result;
}

void sub_2187C4408(void *a1)
{
  [a1 setTintColor_];
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v4 = [a1 standardAppearance];
  v5 = [objc_opt_self() systemBackgroundColor];
  v6 = v5;
  if (!IsReduceTransparencyEnabled)
  {
    v7 = [v5 colorWithAlphaComponent_];

    v6 = v7;
  }

  [v4 setBackgroundColor_];

  v8 = [a1 standardAppearance];
  [a1 setScrollEdgeAppearance_];
}

unint64_t sub_2187C4548()
{
  result = qword_280EC1DB0;
  if (!qword_280EC1DB0)
  {
    type metadata accessor for FloatingTabBarController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC1DB0);
  }

  return result;
}

uint64_t sub_2187C45A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_2187C46DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9E00);
  result = sub_219BE1E34();
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280E900D0);
    result = sub_219BE1E34();
    if (v7)
    {
      v5 = sub_219BDE2D4();
      swift_allocObject();
      result = sub_219BDE2C4();
      v6 = MEMORY[0x277D2FF70];
      a2[3] = v5;
      a2[4] = v6;
      *a2 = result;
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

uint64_t sub_2187C47EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90510);
  result = sub_219BE1E34();
  if (!v30)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90250);
  result = sub_219BE1E34();
  v7 = v27;
  if (!v27)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90230);
  result = sub_219BE1E34();
  if (v26)
  {
    v9 = type metadata accessor for TagFeedServiceConfigPrefetcher();
    v10 = objc_allocWithZone(v9);
    v11 = OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher_cache;
    sub_218735808(0, &qword_280EE7108, type metadata accessor for TagFeedServiceConfig, MEMORY[0x277D6CEF8]);
    swift_allocObject();
    *&v10[v11] = sub_219BE2D94();
    v12 = OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher_interest;
    *&v10[v12] = [objc_allocWithZone(MEMORY[0x277CCA940]) init];
    v10[OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher____lazy_storage___isEnabled] = 2;
    *&v10[OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher_cloudContext] = v5;
    sub_218718690(v29, &v10[OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher_formatService]);
    *&v10[OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher_configFetcher] = v6;
    v13 = &v10[OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher_sportsDataService];
    *v13 = v7;
    v13[1] = v8;
    sub_218718690(v25, &v10[OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher_assetHandleFactory]);
    v14 = objc_allocWithZone(MEMORY[0x277CCABD8]);
    v15 = v5;

    swift_unknownObjectRetain();
    v16 = [v14 init];
    v17 = sub_219BF53D4();
    [v16 setName_];

    [v16 setMaxConcurrentOperationCount_];
    [v16 setQualityOfService_];
    *&v10[OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher_operationQueue] = v16;
    v24.receiver = v10;
    v24.super_class = v9;
    v18 = v16;
    v19 = objc_msgSendSuper2(&v24, sel_init);
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 defaultCenter];
    [v22 addObserver:v21 selector:sel_revisitSuspendedState name:*MEMORY[0x277CCA5E8] object:0];

    *(swift_allocObject() + 16) = v21;
    v23 = v21;
    sub_219BE3494();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v25);
    __swift_destroy_boxed_opaque_existential_1(v29);
    a2[3] = v9;
    result = sub_2186D5C14(&unk_280EAA8D0, type metadata accessor for TagFeedServiceConfigPrefetcher);
    a2[4] = result;
    *a2 = v23;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

id sub_2187C4C9C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher_operationQueue);
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    result = [objc_opt_self() sharedNetworkReachability];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v4 = [result isLowDataModeEnabled];
  }

  return [v1 setSuspended_];
}

uint64_t sub_2187C4D70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB6AF0);
  result = sub_219BE1E34();
  if (!v13)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC99B0);
  result = sub_219BE1E34();
  if (v11)
  {
    v6 = type metadata accessor for SportsOnboardingFlowManager(0);
    v7 = swift_allocObject();
    v8 = OBJC_IVAR____TtC7NewsUI227SportsOnboardingFlowManager_pendingRoute;
    sub_21876FF18(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
    (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
    *(v7 + 16) = v5;
    sub_2186CB1F0(&v12, v7 + 24);
    result = sub_2186CB1F0(&v10, v7 + 64);
    a2[3] = v6;
    a2[4] = &off_282A31BD0;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2187C4F78()
{
  sub_2187C5050(319, &qword_280EE39F8, sub_2187C5110, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2187C5050(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2187C50B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_219BF6FB4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187C5110()
{
  if (!qword_280EE3A00)
  {
    sub_2186CF9A8();
    v0 = sub_219BEA7D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3A00);
    }
  }
}

void sub_2187C516C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280EA3940);
  sub_219BE1E34();
  if (!v9[0])
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v9[0] + OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_delegate + 8) = &off_282A7D368;
  swift_unknownObjectWeakAssign();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EC4290);
  sub_219BE1E34();
  if (!v7)
  {
LABEL_8:
    __break(1u);
    return;
  }

  sub_2186CB1F0(&v6, v9);
  sub_218718690(v9, &v6);
  type metadata accessor for NotificationService();
  if (swift_dynamicCast())
  {
    v7 = type metadata accessor for MainDataManager();
    v8 = &off_282A7D358;

    swift_unknownObjectRelease();
    *&v6 = v3;
    __swift_destroy_boxed_opaque_existential_1(v9);
    v4 = OBJC_IVAR____TtC7NewsUI219NotificationService_warmingSheetPresenter;
    swift_beginAccess();
    sub_2187C5418(&v6, v5 + v4);
    swift_endAccess();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2187C532C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_219404DAC(255, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2187C53B0()
{
  if (!qword_280E99208)
  {
    sub_2186CFDE4(255, qword_280E99210);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E99208);
    }
  }
}

uint64_t sub_2187C5418(uint64_t a1, uint64_t a2)
{
  sub_219726668(0, &qword_280E99208, qword_280E99210, &protocol descriptor for NotificationWarmingSheetPresenterType, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2187C54A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedTodayFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_2187C550C(void *a1)
{
  if (sub_219BED0C4())
  {
    v2 = sub_2187C5A30(0, 1, 1, MEMORY[0x277D84F90]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_2187C5A30((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v2[v4 + 32] = 5;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2187C5A30(0, *(v2 + 2) + 1, 1, v2);
  }

  v6 = *(v2 + 2);
  v5 = *(v2 + 3);
  if (v6 >= v5 >> 1)
  {
    v2 = sub_2187C5A30((v5 > 1), v6 + 1, 1, v2);
  }

  *(v2 + 2) = v6 + 1;
  v2[v6 + 32] = 0;
  v7 = [a1 appleMagazineContent];
  v8 = *(v2 + 2);
  if (v7)
  {
    v9 = *(v2 + 3);
    v10 = v8 + 1;
    if (v8 >= v9 >> 1)
    {
      v2 = sub_2187C5A30((v9 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v10;
    v2[v8 + 32] = 1;
  }

  else
  {
    v10 = *(v2 + 2);
  }

  v11 = *(v2 + 3);
  if (v10 >= v11 >> 1)
  {
    v2 = sub_2187C5A30((v11 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v2[v10 + 32] = 2;
  v12 = [a1 narrativeAudio];
  v13 = *(v2 + 2);
  if (v12)
  {
    v14 = *(v2 + 3);
    v15 = v13 + 1;
    if (v13 >= v14 >> 1)
    {
      v2 = sub_2187C5A30((v14 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v15;
    v2[v13 + 32] = 3;
  }

  else
  {
    v15 = *(v2 + 2);
  }

  v16 = *(v2 + 3);
  if (v15 >= v16 >> 1)
  {
    v2 = sub_2187C5A30((v16 > 1), v15 + 1, 1, v2);
  }

  *(v2 + 2) = v15 + 1;
  v2[v15 + 32] = 4;
  if ((sub_219BED0C4() & 1) == 0)
  {
    v18 = *(v2 + 2);
    v17 = *(v2 + 3);
    if (v18 >= v17 >> 1)
    {
      v2 = sub_2187C5A30((v17 > 1), v18 + 1, 1, v2);
    }

    *(v2 + 2) = v18 + 1;
    v2[v18 + 32] = 5;
  }

  return v2;
}

uint64_t sub_2187C5798(uint64_t a1)
{
  v2 = type metadata accessor for CuratedTodayFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_2187C57F4(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2186D0CEC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

uint64_t sub_2187C58F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2187C5960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2187C59C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2187C5A44(uint64_t a1)
{
  v194 = a1;
  v1 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v1 - 8);
  v188 = &v174 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v3 - 8);
  v187 = &v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v186 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v7 - 8);
  v185 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ShortcutsTodayFeedGroup();
  MEMORY[0x28223BE20](v9 - 8);
  v184 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v11 - 8);
  v183 = &v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v13 - 8);
  v182 = &v174 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v15 - 8);
  v181 = &v174 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SeenContentMarkTodayFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v180 = &v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v19 - 8);
  v179 = &v174 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v21 - 8);
  v178 = &v174 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v23 - 8);
  v177 = &v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v25 - 8);
  v176 = &v174 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v27 - 8);
  v175 = &v174 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v174 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v174 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v174 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v174 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v174 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v174 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v47 - 8);
  v49 = &v174 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v50 - 8);
  v52 = &v174 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for TodayFeedGroup();
  v190 = *(v53 - 8);
  v54 = MEMORY[0x28223BE20](v53);
  v193 = &v174 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = v55;
  MEMORY[0x28223BE20](v54);
  v57 = &v174 - v56;
  sub_2187C7E1C(v194, &v174 - v56);
  v192 = v53;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v112 = sub_2187C59C8(v57, v49, type metadata accessor for NewspaperTodayFeedGroup);
      MEMORY[0x28223BE20](v112);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v49;
      sub_219BF1904();
      sub_219BE3204();
      v113 = v193;
      sub_2187C7E1C(v194, v193);
      v114 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v115 = swift_allocObject();
      sub_2187C59C8(v113, v115 + v114, type metadata accessor for TodayFeedGroup);
      v116 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v75 = type metadata accessor for NewspaperTodayFeedGroup;
      v76 = v49;
      goto LABEL_27;
    case 2u:
      v87 = sub_2187C59C8(v57, v46, type metadata accessor for LocalNewsTodayFeedGroup);
      MEMORY[0x28223BE20](v87);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v46;
      sub_219BF1904();
      sub_219BE3204();
      v88 = v193;
      sub_2187C7E1C(v194, v193);
      v89 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v90 = swift_allocObject();
      sub_2187C59C8(v88, v90 + v89, type metadata accessor for TodayFeedGroup);
      v91 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v75 = type metadata accessor for LocalNewsTodayFeedGroup;
      v76 = v46;
      goto LABEL_27;
    case 3u:
      v97 = sub_2187C59C8(v57, v43, type metadata accessor for TrendingTodayFeedGroup);
      MEMORY[0x28223BE20](v97);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v43;
      sub_219BF1904();
      sub_219BE3204();
      v98 = v193;
      sub_2187C7E1C(v194, v193);
      v99 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v100 = swift_allocObject();
      sub_2187C59C8(v98, v100 + v99, type metadata accessor for TodayFeedGroup);
      v101 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v75 = type metadata accessor for TrendingTodayFeedGroup;
      v76 = v43;
      goto LABEL_27;
    case 4u:
      v70 = sub_2187C59C8(v57, v40, type metadata accessor for ForYouTodayFeedGroup);
      MEMORY[0x28223BE20](v70);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v40;
      sub_219BF1904();
      sub_219BE3204();
      v71 = v193;
      sub_2187C7E1C(v194, v193);
      v72 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v73 = swift_allocObject();
      sub_2187C59C8(v71, v73 + v72, type metadata accessor for TodayFeedGroup);
      v74 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v75 = type metadata accessor for ForYouTodayFeedGroup;
      v76 = v40;
      goto LABEL_27;
    case 5u:
      v122 = sub_2187C59C8(v57, v37, type metadata accessor for MissedStoriesTodayFeedGroup);
      MEMORY[0x28223BE20](v122);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v37;
      sub_219BF1904();
      sub_219BE3204();
      v123 = v193;
      sub_2187C7E1C(v194, v193);
      v124 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v125 = swift_allocObject();
      sub_2187C59C8(v123, v125 + v124, type metadata accessor for TodayFeedGroup);
      v126 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v75 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v76 = v37;
      goto LABEL_27;
    case 6u:
      v127 = sub_2187C59C8(v57, v34, type metadata accessor for LatestStoriesTodayFeedGroup);
      MEMORY[0x28223BE20](v127);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v34;
      sub_219BF1904();
      sub_219BE3204();
      v128 = v193;
      sub_2187C7E1C(v194, v193);
      v129 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v130 = swift_allocObject();
      sub_2187C59C8(v128, v130 + v129, type metadata accessor for TodayFeedGroup);
      v131 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v132 = type metadata accessor for LatestStoriesTodayFeedGroup;
      goto LABEL_21;
    case 7u:
      v102 = sub_2187C59C8(v57, v31, type metadata accessor for MoreForYouTodayFeedGroup);
      MEMORY[0x28223BE20](v102);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v31;
      sub_219BF1904();
      sub_219BE3204();
      v103 = v193;
      sub_2187C7E1C(v194, v193);
      v104 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v105 = swift_allocObject();
      sub_2187C59C8(v103, v105 + v104, type metadata accessor for TodayFeedGroup);
      v106 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v75 = type metadata accessor for MoreForYouTodayFeedGroup;
      v76 = v31;
      goto LABEL_27;
    case 8u:
      v34 = v175;
      v148 = sub_2187C59C8(v57, v175, type metadata accessor for TopicTodayFeedGroup);
      MEMORY[0x28223BE20](v148);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v34;
      sub_219BF1904();
      sub_219BE3204();
      v149 = v193;
      sub_2187C7E1C(v194, v193);
      v150 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v151 = swift_allocObject();
      sub_2187C59C8(v149, v151 + v150, type metadata accessor for TodayFeedGroup);
      v152 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v132 = type metadata accessor for TopicTodayFeedGroup;
LABEL_21:
      v75 = v132;
      v76 = v34;
      goto LABEL_27;
    case 9u:
    case 0xCu:
    case 0x11u:
      sub_2187C8398(v57, type metadata accessor for TodayFeedGroup);
      sub_2187C7E1C(v194, v193);
      sub_218FC1994();
      swift_allocObject();
      return sub_219BE3014();
    case 0xAu:
      v52 = v176;
      v77 = sub_2187C59C8(v57, v176, type metadata accessor for NewFollowTodayFeedGroup);
      MEMORY[0x28223BE20](v77);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v52;
      sub_219BF1904();
      sub_219BE3204();
      v78 = v193;
      sub_2187C7E1C(v194, v193);
      v79 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v80 = swift_allocObject();
      sub_2187C59C8(v78, v80 + v79, type metadata accessor for TodayFeedGroup);
      v81 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v64 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_26;
    case 0xBu:
      v52 = v177;
      v143 = sub_2187C59C8(v57, v177, type metadata accessor for SubscriptionTodayFeedGroup);
      MEMORY[0x28223BE20](v143);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v52;
      sub_219BF1904();
      sub_219BE3204();
      v144 = v193;
      sub_2187C7E1C(v194, v193);
      v145 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v146 = swift_allocObject();
      sub_2187C59C8(v144, v146 + v145, type metadata accessor for TodayFeedGroup);
      v147 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v64 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_26;
    case 0xDu:
      v52 = v178;
      v65 = sub_2187C59C8(v57, v178, type metadata accessor for SpotlightTodayFeedGroup);
      MEMORY[0x28223BE20](v65);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v52;
      sub_219BF1904();
      sub_219BE3204();
      v66 = v193;
      sub_2187C7E1C(v194, v193);
      v67 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v68 = swift_allocObject();
      sub_2187C59C8(v66, v68 + v67, type metadata accessor for TodayFeedGroup);
      v69 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v64 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_26;
    case 0xEu:
      v52 = v179;
      v92 = sub_2187C59C8(v57, v179, type metadata accessor for SuggestionTodayFeedGroup);
      MEMORY[0x28223BE20](v92);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v52;
      sub_219BF1904();
      sub_219BE3204();
      v93 = v193;
      sub_2187C7E1C(v194, v193);
      v94 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v95 = swift_allocObject();
      sub_2187C59C8(v93, v95 + v94, type metadata accessor for TodayFeedGroup);
      v96 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v64 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_26;
    case 0xFu:
      v52 = v180;
      v59 = sub_2187C59C8(v57, v180, type metadata accessor for SeenContentMarkTodayFeedGroup);
      MEMORY[0x28223BE20](v59);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v52;
      sub_219BF1904();
      sub_219BE3204();
      v60 = v193;
      sub_2187C7E1C(v194, v193);
      v61 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v62 = swift_allocObject();
      sub_2187C59C8(v60, v62 + v61, type metadata accessor for TodayFeedGroup);
      v63 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v64 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_26;
    case 0x10u:
      v52 = v181;
      v117 = sub_2187C59C8(v57, v181, type metadata accessor for SharedWithYouTodayFeedGroup);
      MEMORY[0x28223BE20](v117);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v52;
      sub_219BF1904();
      sub_219BE3204();
      v118 = v193;
      sub_2187C7E1C(v194, v193);
      v119 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v120 = swift_allocObject();
      sub_2187C59C8(v118, v120 + v119, type metadata accessor for TodayFeedGroup);
      v121 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v64 = type metadata accessor for SharedWithYouTodayFeedGroup;
      goto LABEL_26;
    case 0x12u:
      v52 = v182;
      v153 = sub_2187C59C8(v57, v182, type metadata accessor for MySportsTodayFeedGroup);
      MEMORY[0x28223BE20](v153);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v52;
      sub_219BF1904();
      sub_219BE3204();
      v154 = v193;
      sub_2187C7E1C(v194, v193);
      v155 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v156 = swift_allocObject();
      sub_2187C59C8(v154, v156 + v155, type metadata accessor for TodayFeedGroup);
      v157 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v64 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_26;
    case 0x13u:
      v52 = v183;
      v163 = sub_2187C59C8(v57, v183, type metadata accessor for IntroToSportsTodayFeedGroup);
      MEMORY[0x28223BE20](v163);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v52;
      sub_219BF1904();
      sub_219BE3204();
      v164 = v193;
      sub_2187C7E1C(v194, v193);
      v165 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v166 = swift_allocObject();
      sub_2187C59C8(v164, v166 + v165, type metadata accessor for TodayFeedGroup);
      v167 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v64 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_26;
    case 0x14u:
      v52 = v184;
      v133 = sub_2187C59C8(v57, v184, type metadata accessor for ShortcutsTodayFeedGroup);
      MEMORY[0x28223BE20](v133);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v52;
      sub_219BF1904();
      sub_219BE3204();
      v134 = v193;
      sub_2187C7E1C(v194, v193);
      v135 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v136 = swift_allocObject();
      sub_2187C59C8(v134, v136 + v135, type metadata accessor for TodayFeedGroup);
      v137 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v64 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_26;
    case 0x15u:
      v52 = v185;
      v138 = sub_2187C59C8(v57, v185, type metadata accessor for ChannelTodayFeedGroup);
      MEMORY[0x28223BE20](v138);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v52;
      sub_219BF1904();
      sub_219BE3204();
      v139 = v193;
      sub_2187C7E1C(v194, v193);
      v140 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v141 = swift_allocObject();
      sub_2187C59C8(v139, v141 + v140, type metadata accessor for TodayFeedGroup);
      v142 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v64 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_26;
    case 0x16u:
      v52 = v186;
      v158 = sub_2187C59C8(v57, v186, type metadata accessor for SavedStoriesTodayFeedGroup);
      MEMORY[0x28223BE20](v158);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v52;
      sub_219BF1904();
      sub_219BE3204();
      v159 = v193;
      sub_2187C7E1C(v194, v193);
      v160 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v161 = swift_allocObject();
      sub_2187C59C8(v159, v161 + v160, type metadata accessor for TodayFeedGroup);
      v162 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v64 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_26;
    case 0x17u:
      v52 = v187;
      v168 = sub_2187C59C8(v57, v187, type metadata accessor for ChannelPickerTodayFeedGroup);
      MEMORY[0x28223BE20](v168);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v52;
      sub_219BF1904();
      sub_219BE3204();
      v169 = v193;
      sub_2187C7E1C(v194, v193);
      v170 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v171 = swift_allocObject();
      sub_2187C59C8(v169, v171 + v170, type metadata accessor for TodayFeedGroup);
      v172 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v64 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_26;
    case 0x18u:
      v52 = v188;
      v82 = sub_2187C59C8(v57, v188, type metadata accessor for FoodTodayFeedGroup);
      MEMORY[0x28223BE20](v82);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v52;
      sub_219BF1904();
      sub_219BE3204();
      v83 = v193;
      sub_2187C7E1C(v194, v193);
      v84 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v85 = swift_allocObject();
      sub_2187C59C8(v83, v85 + v84, type metadata accessor for TodayFeedGroup);
      v86 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v64 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_26;
    default:
      v107 = sub_2187C59C8(v57, v52, type metadata accessor for CuratedTodayFeedGroup);
      MEMORY[0x28223BE20](v107);
      *(&v174 - 2) = v189;
      *(&v174 - 1) = v52;
      sub_219BF1904();
      sub_219BE3204();
      v108 = v193;
      sub_2187C7E1C(v194, v193);
      v109 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v110 = swift_allocObject();
      sub_2187C59C8(v108, v110 + v109, type metadata accessor for TodayFeedGroup);
      v111 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v64 = type metadata accessor for CuratedTodayFeedGroup;
LABEL_26:
      v75 = v64;
      v76 = v52;
LABEL_27:
      sub_2187C8398(v76, v75);
      return v58;
  }
}

uint64_t sub_2187C7D0C()
{
  v1 = OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___appleMagazineContent;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___appleMagazineContent);
  if (v2 == 2)
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_280EE9180 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_appConfiguration);
    if ([v3 respondsToSelector_])
    {
      v4 = [v3 paidBundleConfig];
      [v4 areMagazinesEnabled];
    }

    LOBYTE(v2) = sub_219BDC8C4();

    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_2187C7E1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2187C7E80()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC7F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186CA3BC();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D048], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_219BDC9C4();
  qword_280EE9188 = result;
  return result;
}

uint64_t type metadata accessor for FloatingTabBarNavigationController()
{
  result = qword_280EA07A0;
  if (!qword_280EA07A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2187C80AC(uint64_t a1)
{
  v12 = sub_219BF2AB4();
  v2 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF1904();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_219BED874();
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_219BF2AA4();
  v8 = sub_219BF21A4();
  (*(v2 + 8))(v4, v12);
  (*(v5 + 8))(v7, v11);
  return v8;
}

uint64_t sub_2187C8338(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187C8398(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2187C83F8(void *a1)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  [v1 setDelegate_];
  sub_218805AC0();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09BA0;
  v3 = sub_219BEBA34();
  v4 = MEMORY[0x277D74C50];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_219BF6604();
  swift_unknownObjectRelease();
}

void sub_2187C84E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2187C854C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2187C8634()
{
  result = qword_280E8F510;
  if (!qword_280E8F510)
  {
    sub_2187C854C(255, &qword_280E8F518, MEMORY[0x277D6D3B8], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F510);
  }

  return result;
}

id sub_2187C86BC(uint64_t a1)
{
  v3 = sub_219BE7494();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE74A4();
  sub_218718690(v1 + 16, v20);
  v7 = swift_allocObject();
  sub_2186CB1F0(v20, v7 + 16);
  (*(v4 + 104))(v6, *MEMORY[0x277D6DA00], v3);
  v8 = sub_219BE7484();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = v8;
  v12 = [v10 bundleForClass_];
  sub_219BDB5E4();

  if (qword_280E92EF0 != -1)
  {
    swift_once();
  }

  v13 = qword_280F61980;
  v14 = objc_allocWithZone(MEMORY[0x277D75B28]);
  v15 = v13;
  v16 = sub_219BF53D4();

  v17 = [v14 initWithTitle:v16 image:v15 tag:a1];

  [v11 setTabBarItem_];
  return v11;
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 24) >= 0xBuLL)
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_3Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_42Tm()
{
  sub_21896FA3C();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  swift_unknownObjectRelease();

  if (*(v0 + ((((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_3Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{
  sub_2187C5110();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_11Tm()
{

  sub_218A264C8(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5()
{
  sub_218747C64(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  swift_unknownObjectRelease();

  if (*(v0 + ((((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{
  v1 = sub_219BEC1E4();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7()
{
  v1 = (type metadata accessor for SportsEventArticlesTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218A7EEB4();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for SportsEventArticlesTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{
  v1 = *(type metadata accessor for MagazineFeedGroup() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      v20 = type metadata accessor for CategoriesMagazineFeedGroup();
      goto LABEL_17;
    case 1u:
      sub_2186E3594();
      (*(*(v21 - 8) + 8))(v0 + v2, v21);
      v6 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
      goto LABEL_20;
    case 2u:
    case 0xAu:
    case 0xBu:
      v4 = sub_219BED8D4();
      (*(*(v4 - 8) + 8))(v0 + v2, v4);
      break;
    case 3u:
      sub_2186EC3A4();
      (*(*(v36 - 8) + 8))(v0 + v2, v36);
      v6 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
      goto LABEL_20;
    case 4u:

      v20 = type metadata accessor for InlineCategoriesMagazineFeedGroup();
LABEL_17:
      v41 = *(v20 + 40);
      v42 = sub_219BEF554();
      goto LABEL_21;
    case 5u:

      v22 = type metadata accessor for MyMagazinesMagazineFeedGroup();
      v23 = v22[10];
      v24 = sub_219BEF554();
      v25 = *(*(v24 - 8) + 8);
      v25(v3 + v23, v24);
      v25(v3 + v22[11], v24);
      v26 = v3 + v22[13];
      sub_2186F8B58(0, &qword_280E919C0, MEMORY[0x277D321A0]);
      (*(*(v27 - 8) + 8))(v26, v27);
      v28 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();

      v29 = *(v28 + 24);
      sub_2186F8B58(0, &qword_280E91830, MEMORY[0x277D32318]);
      (*(*(v30 - 8) + 8))(&v26[v29], v30);
      swift_unknownObjectRelease();
      v31 = v22[16];
      v32 = sub_219BEF8A4();
      (*(*(v32 - 8) + 8))(v3 + v31, v32);
      v33 = v22[17];
      v34 = sub_219BEE5D4();
      v35 = *(v34 - 8);
      if (!(*(v35 + 48))(v3 + v33, 1, v34))
      {
        (*(v35 + 8))(v3 + v33, v34);
      }

      goto LABEL_13;
    case 6u:
      sub_2186ECD30();
      (*(*(v47 - 8) + 8))(v0 + v2, v47);
      v6 = type metadata accessor for NewIssueMagazineFeedGroup();
      goto LABEL_20;
    case 7u:

      v8 = type metadata accessor for PaywallMagazineFeedGroup();
      v9 = v8[5];
      v10 = sub_219BEF554();
      v11 = *(*(v10 - 8) + 8);
      v11(v3 + v9, v10);
      v11(v3 + v8[6], v10);
      v12 = (v3 + v8[9]);
      type metadata accessor for FeedPaywallModel(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v13 = type metadata accessor for FeedVideoPaywallModel(0);
        v14 = v13[5];
        v15 = sub_219BDB954();
        v16 = *(v15 - 8);
        if (!(*(v16 + 48))(v12 + v14, 1, v15))
        {
          (*(v16 + 8))(v12 + v14, v15);
        }

        v17 = v13[22];
        v18 = sub_219BE4584();
        (*(*(v18 - 8) + 8))(v12 + v17, v18);

        v19 = v13[24];
      }

      else
      {

        v49 = type metadata accessor for FeedRegularPaywallModel(0);
        v50 = *(v49 + 64);
        v51 = sub_219BE4584();
        (*(*(v51 - 8) + 8))(v12 + v50, v51);

        v19 = *(v49 + 72);
      }

      v52 = sub_219BE4314();
      v53 = *(v52 - 8);
      if (!(*(v53 + 48))(v12 + v19, 1, v52))
      {
        (*(v53 + 8))(v12 + v19, v52);
      }

      v84 = type metadata accessor for FeedPaywallConfig();
      v54 = (v12 + v84[5]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v55 = type metadata accessor for FeedVideoPaywallModel(0);
        v56 = v55[5];
        v57 = sub_219BDB954();
        v58 = *(v57 - 8);
        if (!(*(v58 + 48))(v54 + v56, 1, v57))
        {
          (*(v58 + 8))(v54 + v56, v57);
        }

        v59 = v55[22];
        v60 = sub_219BE4584();
        (*(*(v60 - 8) + 8))(v54 + v59, v60);

        v61 = v55[24];
        v62 = sub_219BE4314();
        v63 = *(v62 - 8);
        if (!(*(v63 + 48))(v54 + v61, 1, v62))
        {
          (*(v63 + 8))(v54 + v61, v62);
        }
      }

      else
      {

        v64 = type metadata accessor for FeedRegularPaywallModel(0);
        v65 = *(v64 + 64);
        v66 = sub_219BE4584();
        (*(*(v66 - 8) + 8))(v54 + v65, v66);

        v67 = *(v64 + 72);
        v68 = sub_219BE4314();
        v69 = *(v68 - 8);
        if (!(*(v69 + 48))(v54 + v67, 1, v68))
        {
          (*(v69 + 8))(v54 + v67, v68);
        }
      }

      v70 = (v12 + v84[6]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v71 = type metadata accessor for FeedVideoPaywallModel(0);
        v72 = v71[5];
        v73 = sub_219BDB954();
        v74 = *(v73 - 8);
        if (!(*(v74 + 48))(v70 + v72, 1, v73))
        {
          (*(v74 + 8))(v70 + v72, v73);
        }

        v75 = v71[22];
        v76 = sub_219BE4584();
        (*(*(v76 - 8) + 8))(v70 + v75, v76);

        v77 = v71[24];
      }

      else
      {

        v78 = type metadata accessor for FeedRegularPaywallModel(0);
        v79 = *(v78 + 64);
        v80 = sub_219BE4584();
        (*(*(v80 - 8) + 8))(v70 + v79, v80);

        v77 = *(v78 + 72);
      }

      v81 = sub_219BE4314();
      v82 = *(v81 - 8);
      if (!(*(v82 + 48))(v70 + v77, 1, v81))
      {
        (*(v82 + 8))(v70 + v77, v81);
      }

      v3 = (v12 + v84[7]);
      type metadata accessor for FeedPaywallType(0);
      if (swift_getEnumCaseMultiPayload())
      {
        break;
      }

      sub_2186F6684();
      v41 = *(v83 + 48);
      v42 = sub_219BE4034();
      goto LABEL_21;
    case 8u:

      v43 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
      v44 = *(v43 + 44);
      v45 = sub_219BEF554();
      v46 = *(*(v45 - 8) + 8);
      v46(v3 + v44, v45);
      v46(v3 + *(v43 + 48), v45);
      break;
    case 9u:
      sub_2186E60B0();
      (*(*(v5 - 8) + 8))(v0 + v2, v5);
      v6 = type metadata accessor for TopicMagazineFeedGroup();
LABEL_20:
      v41 = *(v6 + 20);
      v42 = sub_219BED8D4();
      goto LABEL_21;
    case 0xCu:
      v7 = sub_219BED8D4();
      (*(*(v7 - 8) + 8))(v0 + v2, v7);
      type metadata accessor for NewspaperMagazineFeedGroup();
      swift_unknownObjectRelease();
LABEL_13:

      break;
    case 0xDu:
      sub_2186ECF58();
      (*(*(v37 - 8) + 8))(v0 + v2, v37);
      v38 = type metadata accessor for CuratedMagazineFeedGroup();
      v39 = *(v38 + 20);
      v40 = sub_219BED8D4();
      (*(*(v40 - 8) + 8))(v3 + v39, v40);
      v41 = *(v38 + 24);
      v42 = sub_219BEF8A4();
LABEL_21:
      (*(*(v42 - 8) + 8))(v3 + v41, v42);
      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10()
{
  v1 = (type metadata accessor for SportsScheduleTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_218AC633C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[8];
  sub_2189AD5C8();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for SportsScheduleTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[12]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[13]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[14]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[15]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_11()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_12()
{
  v1 = (type metadata accessor for AffinityTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218B00B58();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for AffinityTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_13()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm()
{
  v1 = type metadata accessor for AudioFeedTrack(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);

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

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14()
{
  sub_218747D90(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  swift_unknownObjectRelease();

  if (*(v0 + ((((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_15()
{
  v1 = type metadata accessor for CuratedMagazineFeedGroupEmitter();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_2186ECF58();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = v0 + v2 + *(v1 + 20);
  sub_2186E3B14();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for CuratedMagazineFeedGroupKnobs();
  v7 = *(v6 + 20);
  sub_2186F8BF4(0, &qword_280E91830, MEMORY[0x277D32318]);
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  v9 = *(v6 + 40);
  v10 = sub_219BEF814();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + *(v1 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_16()
{
  v1 = (type metadata accessor for SportsInjuryReportsTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218CA1E04();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_17()
{
  v1 = (type metadata accessor for PuzzleScoreboardTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218D10EB4();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_18()
{
  v1 = (type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218D77C80();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2186E3B14();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs();

  v7 = *(v6 + 44);
  sub_2186F8D2C(0, &qword_280E91830, MEMORY[0x277D32318]);
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_19()
{
  v1 = (type metadata accessor for TrendingMagazineFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218D7EFE8();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2186E3B14();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = *(type metadata accessor for TrendingMagazineFeedGroupKnobs() + 32);
  sub_2186F8DC8(0, &qword_280E91830, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D32318]);
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_20()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_21(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_22(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_23()
{
  v1 = sub_219BDBD34();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_14Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_24(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_25()
{
  v1 = (type metadata accessor for SportsTopicClusteringRequest() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_219BF03B4();
  (*(*(v3 - 8) + 8))(v2, v3);
  swift_unknownObjectRelease();

  v4 = v1[14];
  v5 = sub_219BEFBD4();
  v6 = *(*(v5 - 8) + 8);
  v6(v2 + v4, v5);
  v6(v2 + v1[15], v5);

  v7 = v1[26];
  v8 = sub_219BF0354();
  (*(*(v8 - 8) + 8))(v2 + v7, v8);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_26()
{
  v1 = (type metadata accessor for TagFeedCurationRequest() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2;

  v4 = v1[13];
  v5 = sub_219BEFBD4();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = v1[14];
  v7 = sub_219BEF9C4();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_27()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_28()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_29()
{
  v1 = type metadata accessor for AudioFeedTrack(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  swift_unknownObjectRelease();

  v3 = v2 + v1[8];

  if (*(v3 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 32);
  }

  v4 = type metadata accessor for AudioFeedTrack.Configurables(0);
  v5 = v4[7];
  v6 = sub_219BDBD34();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  if (*(v3 + v4[8] + 8) != 1)
  {
  }

  v8 = v4[9];
  v9 = sub_219BE7434();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v2 + v1[12];
  sub_219BDD6E4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    sub_218C16270();
    v14 = *(v13 + 48);
    v15 = sub_219BDE3B4();
    (*(*(v15 - 8) + 8))(v11 + v14, v15);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_30()
{
  v1 = (type metadata accessor for BestOfBundleMagazineFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218F05748();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2186E3B14();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = *(type metadata accessor for BestOfBundleMagazineFeedGroupKnobs() + 40);
  sub_2186F8E48(0, &qword_280E91830, MEMORY[0x277D32318]);
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[12]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_31()
{
  sub_2186E55FC(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  swift_unknownObjectRelease();

  if (*(v0 + ((((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_32()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_33(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_219BDF034();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_34()
{
  v1 = (type metadata accessor for SportsScoresTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_218F664F8();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[8];
  sub_2189AD5C8();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for SportsScoresTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[12]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[13]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_35()
{
  v1 = *(type metadata accessor for TodayFeedGroup() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v12 = sub_219BED8D4();
      (*(*(v12 - 8) + 8))(v0 + v2, v12);
      v13 = type metadata accessor for CuratedTodayFeedGroup();

      v14 = *(v13 + 28);
LABEL_12:
      v15 = sub_219BEF8A4();
      goto LABEL_20;
    case 1u:
      v16 = sub_219BED8D4();
      (*(*(v16 - 8) + 8))(v0 + v2, v16);
      type metadata accessor for NewspaperTodayFeedGroup();
      swift_unknownObjectRelease();

      goto LABEL_14;
    case 2u:
      v7 = sub_219BED8D4();
      (*(*(v7 - 8) + 8))(v0 + v2, v7);
      v8 = type metadata accessor for LocalNewsTodayFeedGroup();
      swift_unknownObjectRelease();

      v9 = *(v8 + 28);
      v10 = sub_219BF0D34();
      v11 = *(v10 - 8);
      if (!(*(v11 + 48))(v3 + v9, 1, v10))
      {
        (*(v11 + 8))(v3 + v9, v10);
      }

LABEL_14:

      goto LABEL_4;
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 0xAu:
    case 0xBu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x18u:
LABEL_2:
      v4 = sub_219BED8D4();
      goto LABEL_3;
    case 9u:
      type metadata accessor for MagazineFeedGroup();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:

          v17 = type metadata accessor for CategoriesMagazineFeedGroup();
          goto LABEL_35;
        case 1u:
          sub_2186E3594();
          (*(*(v34 - 8) + 8))(v0 + v2, v34);
          v19 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
          goto LABEL_19;
        case 2u:
        case 0xAu:
        case 0xBu:
          goto LABEL_2;
        case 3u:
          sub_2186EC3A4();
          (*(*(v49 - 8) + 8))(v0 + v2, v49);
          v19 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
          goto LABEL_19;
        case 4u:

          v17 = type metadata accessor for InlineCategoriesMagazineFeedGroup();
LABEL_35:
          v14 = *(v17 + 40);
          v15 = sub_219BEF554();
          goto LABEL_20;
        case 5u:

          v35 = type metadata accessor for MyMagazinesMagazineFeedGroup();
          v36 = v35[10];
          v37 = sub_219BEF554();
          v38 = *(*(v37 - 8) + 8);
          v38(v3 + v36, v37);
          v38(v3 + v35[11], v37);
          v39 = v3 + v35[13];
          sub_2186F8EE4(0, &qword_280E919C0, MEMORY[0x277D321A0]);
          (*(*(v40 - 8) + 8))(v39, v40);
          v41 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();

          v42 = *(v41 + 24);
          sub_2186F8EE4(0, &qword_280E91830, MEMORY[0x277D32318]);
          (*(*(v43 - 8) + 8))(&v39[v42], v43);
          swift_unknownObjectRelease();
          v44 = v35[16];
          v45 = sub_219BEF8A4();
          (*(*(v45 - 8) + 8))(v3 + v44, v45);
          v46 = v35[17];
          v47 = sub_219BEE5D4();
          v48 = *(v47 - 8);
          if (!(*(v48 + 48))(v3 + v46, 1, v47))
          {
            (*(v48 + 8))(v3 + v46, v47);
          }

          goto LABEL_14;
        case 6u:
          sub_2186ECD30();
          (*(*(v58 - 8) + 8))(v0 + v2, v58);
          v19 = type metadata accessor for NewIssueMagazineFeedGroup();
          goto LABEL_19;
        case 7u:

          v22 = type metadata accessor for PaywallMagazineFeedGroup();
          v23 = v22[5];
          v24 = sub_219BEF554();
          v25 = *(*(v24 - 8) + 8);
          v25(v3 + v23, v24);
          v25(v3 + v22[6], v24);
          v26 = (v3 + v22[9]);
          type metadata accessor for FeedPaywallModel(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v27 = type metadata accessor for FeedVideoPaywallModel(0);
            v28 = v27[5];
            v29 = sub_219BDB954();
            v30 = *(v29 - 8);
            if (!(*(v30 + 48))(v26 + v28, 1, v29))
            {
              (*(v30 + 8))(v26 + v28, v29);
            }

            v31 = v27[22];
            v32 = sub_219BE4584();
            (*(*(v32 - 8) + 8))(v26 + v31, v32);

            v33 = v27[24];
          }

          else
          {

            v59 = type metadata accessor for FeedRegularPaywallModel(0);
            v60 = *(v59 + 64);
            v61 = sub_219BE4584();
            (*(*(v61 - 8) + 8))(v26 + v60, v61);

            v33 = *(v59 + 72);
          }

          v62 = sub_219BE4314();
          v63 = *(v62 - 8);
          if (!(*(v63 + 48))(v26 + v33, 1, v62))
          {
            (*(v63 + 8))(v26 + v33, v62);
          }

          v95 = type metadata accessor for FeedPaywallConfig();
          v64 = (v26 + *(v95 + 20));
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v65 = type metadata accessor for FeedVideoPaywallModel(0);
            v66 = v65[5];
            v67 = sub_219BDB954();
            v68 = *(v67 - 8);
            if (!(*(v68 + 48))(v64 + v66, 1, v67))
            {
              (*(v68 + 8))(v64 + v66, v67);
            }

            v69 = v65[22];
            v70 = sub_219BE4584();
            (*(*(v70 - 8) + 8))(v64 + v69, v70);

            v71 = v65[24];
            v72 = sub_219BE4314();
            v73 = *(v72 - 8);
            if (!(*(v73 + 48))(v64 + v71, 1, v72))
            {
              (*(v73 + 8))(v64 + v71, v72);
            }
          }

          else
          {

            v74 = type metadata accessor for FeedRegularPaywallModel(0);
            v75 = *(v74 + 64);
            v76 = sub_219BE4584();
            (*(*(v76 - 8) + 8))(v64 + v75, v76);

            v77 = *(v74 + 72);
            v78 = sub_219BE4314();
            v79 = *(v78 - 8);
            if (!(*(v79 + 48))(v64 + v77, 1, v78))
            {
              (*(v79 + 8))(v64 + v77, v78);
            }
          }

          v80 = v95;
          v81 = (v26 + *(v95 + 24));
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v82 = type metadata accessor for FeedVideoPaywallModel(0);
            v83 = v82[5];
            v84 = sub_219BDB954();
            v85 = *(v84 - 8);
            if (!(*(v85 + 48))(v81 + v83, 1, v84))
            {
              (*(v85 + 8))(v81 + v83, v84);
            }

            v86 = v82[22];
            v87 = sub_219BE4584();
            (*(*(v87 - 8) + 8))(v81 + v86, v87);

            v88 = v82[24];
            v89 = sub_219BE4314();
            v90 = *(v89 - 8);
            v80 = v95;
            if (!(*(v90 + 48))(v81 + v88, 1, v89))
            {
              goto LABEL_52;
            }
          }

          else
          {

            v92 = type metadata accessor for FeedRegularPaywallModel(0);
            v93 = *(v92 + 64);
            v94 = sub_219BE4584();
            (*(*(v94 - 8) + 8))(v81 + v93, v94);

            v88 = *(v92 + 72);
            v89 = sub_219BE4314();
            v90 = *(v89 - 8);
            if (!(*(v90 + 48))(v81 + v88, 1, v89))
            {
LABEL_52:
              (*(v90 + 8))(v81 + v88, v89);
            }
          }

          v3 = (v26 + *(v80 + 28));
          type metadata accessor for FeedPaywallType(0);
          if (!swift_getEnumCaseMultiPayload())
          {
            sub_2186F6684();
            v14 = *(v91 + 48);
            v15 = sub_219BE4034();
LABEL_20:
            (*(*(v15 - 8) + 8))(v3 + v14, v15);
          }

LABEL_4:

          return swift_deallocObject();
        case 8u:

          v54 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
          v55 = *(v54 + 44);
          v56 = sub_219BEF554();
          v57 = *(*(v56 - 8) + 8);
          v57(v3 + v55, v56);
          v57(v3 + *(v54 + 48), v56);
          goto LABEL_4;
        case 9u:
          sub_2186E60B0();
          (*(*(v20 - 8) + 8))(v0 + v2, v20);
          v19 = type metadata accessor for TopicMagazineFeedGroup();
          goto LABEL_19;
        case 0xCu:
          v21 = sub_219BED8D4();
          (*(*(v21 - 8) + 8))(v0 + v2, v21);
          type metadata accessor for NewspaperMagazineFeedGroup();
          swift_unknownObjectRelease();
          goto LABEL_14;
        case 0xDu:
          sub_2186ECF58();
          (*(*(v50 - 8) + 8))(v0 + v2, v50);
          v51 = type metadata accessor for CuratedMagazineFeedGroup();
          v52 = *(v51 + 20);
          v53 = sub_219BED8D4();
          (*(*(v53 - 8) + 8))(v3 + v52, v53);
          v14 = *(v51 + 24);
          goto LABEL_12;
        default:
          goto LABEL_4;
      }

    case 0xCu:
      v4 = sub_219BED544();
      goto LABEL_3;
    case 0x10u:
      sub_2186E0CD8();
      (*(*(v18 - 8) + 8))(v0 + v2, v18);
      v19 = type metadata accessor for SharedWithYouTodayFeedGroup();
LABEL_19:
      v14 = *(v19 + 20);
      v15 = sub_219BED8D4();
      goto LABEL_20;
    case 0x11u:
      sub_2186F687C();
LABEL_3:
      (*(*(v4 - 8) + 8))(v0 + v2, v4);
      goto LABEL_4;
    case 0x17u:
      v6 = sub_219BED8D4();
      (*(*(v6 - 8) + 8))(v0 + v2, v6);
      type metadata accessor for ChannelPickerTodayFeedGroup();

      goto LABEL_4;
    default:
      goto LABEL_4;
  }
}

uint64_t objectdestroyTm_36()
{
  v1 = (type metadata accessor for PuzzleListTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218FCB4B0();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for PuzzleListTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_37()
{
  v1 = (type metadata accessor for NewIssueMagazineFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2186ECD30();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2186E3B14();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = *(type metadata accessor for NewIssueMagazineFeedGroupKnobs() + 32);
  sub_2186F8F80(0, &qword_280E91830, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D32318]);
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[12]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_38()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_39()
{
  v1 = *(type metadata accessor for AudioFeedGroup() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_12;
      }

      AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
    }

    else
    {

      AudioFeedGroup = type metadata accessor for ForYouAudioFeedGroup();
    }

    v7 = *(AudioFeedGroup + 20);
    v8 = sub_219BED8D4();
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {

    __swift_destroy_boxed_opaque_existential_1(v3 + 16);
    v7 = *(type metadata accessor for PaywallAudioFeedGroup() + 24);
    v8 = sub_219BEF554();
LABEL_11:
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v6 = sub_219BED8D4();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
    type metadata accessor for CuratedAudioFeedGroup();
  }

LABEL_12:

  return swift_deallocObject();
}

uint64_t objectdestroyTm_40()
{
  v1 = *(type metadata accessor for TagFeedGroup() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 4u:
    case 0xBu:
    case 0xDu:
    case 0xFu:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x20u:
    case 0x21u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Du:
      v4 = sub_219BED8D4();
      goto LABEL_3;
    case 2u:

      v10 = *(type metadata accessor for IssueListTagFeedGroup() + 28);
      v11 = sub_219BEF554();
      (*(*(v11 - 8) + 8))(v3 + v10, v11);
      swift_unknownObjectRelease();
      goto LABEL_16;
    case 3u:
      v12 = sub_219BED8D4();
      (*(*(v12 - 8) + 8))(v0 + v2, v12);
      v8 = *(type metadata accessor for ChannelSectionTagFeedGroup() + 20);
      v9 = sub_219BEE6F4();
      goto LABEL_22;
    case 5u:
      v7 = sub_219BF0D34();
      (*(*(v7 - 8) + 8))(v0 + v2, v7);
      v6 = type metadata accessor for WeatherTagFeedGroup();
      goto LABEL_21;
    case 6u:

      __swift_destroy_boxed_opaque_existential_1(v3 + 32);
      v8 = *(type metadata accessor for PaywallTagFeedGroup() + 28);
      v9 = sub_219BEF554();
      goto LABEL_22;
    case 7u:
      v4 = sub_219BED544();
LABEL_3:
      (*(*(v4 - 8) + 8))(v0 + v2, v4);
      break;
    case 8u:
      v13 = sub_219BED8D4();
      (*(*(v13 - 8) + 8))(v0 + v2, v13);
      type metadata accessor for CuratedTagFeedGroup();
      goto LABEL_16;
    case 9u:
      v15 = sub_219BED8D4();
      (*(*(v15 - 8) + 8))(v0 + v2, v15);
      v16 = *(type metadata accessor for SportsRecordTagFeedGroup() + 20);
      v17 = sub_219BF1614();
      v18 = *(v17 - 8);
      if (!(*(v18 + 48))(v3 + v16, 1, v17))
      {
        (*(v18 + 8))(v3 + v16, v17);
      }

      break;
    case 0xAu:
      swift_unknownObjectRelease();
      v6 = type metadata accessor for SportsNavigationTagFeedGroup();
      goto LABEL_21;
    case 0xCu:
      sub_2186D868C();
      (*(*(v23 - 8) + 8))(v0 + v2, v23);
      v6 = type metadata accessor for SportsTopStoriesTagFeedGroup();
      goto LABEL_21;
    case 0xEu:
      swift_unknownObjectRelease();
      v6 = type metadata accessor for SportsScoresTagFeedGroup();
      goto LABEL_21;
    case 0x10u:
      sub_2186D8920();
      (*(*(v19 - 8) + 8))(v0 + v2, v19);
      v20 = type metadata accessor for MySportsTopicTagFeedGroup();
      v21 = *(v20 + 20);
      v22 = sub_219BED8D4();
      (*(*(v22 - 8) + 8))(v3 + v21, v22);
      v8 = *(v20 + 24);
      v9 = sub_219BF02C4();
      goto LABEL_22;
    case 0x19u:

      v6 = type metadata accessor for ForYouTagFeedGroup();
      goto LABEL_21;
    case 0x1Eu:

      v6 = type metadata accessor for DateRangeTagFeedGroup();
LABEL_21:
      v8 = *(v6 + 20);
      v9 = sub_219BED8D4();
LABEL_22:
      (*(*(v9 - 8) + 8))(v3 + v8, v9);
      break;
    case 0x1Fu:
      v14 = sub_219BED8D4();
      (*(*(v14 - 8) + 8))(v0 + v2, v14);
      type metadata accessor for SportsOnboardingTagFeedGroup();
LABEL_16:

      break;
    case 0x22u:
      v5 = sub_219BED8D4();
      (*(*(v5 - 8) + 8))(v0 + v2, v5);
      type metadata accessor for PuzzleListTagFeedGroup();

      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_41()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_42()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_43()
{
  sub_2191CCEB8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_44()
{
  v1 = (type metadata accessor for SportsMastheadTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2191E9624();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_45()
{
  v1 = (type metadata accessor for SportsBracketTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_219201950();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[8];
  sub_2189AD5C8();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for SportsBracketTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[13]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_46()
{
  v1 = sub_219BE51D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_47()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_48()
{
  v1 = (type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_219268F50();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_49(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  sub_218B58D38(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = (v4 + v5 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  sub_218B59134(0);
  v12 = *(*(v11 - 8) + 80);
  v13 = (v9 + v10 + v12) & ~v12;
  (*(v3 + 8))(v1 + v4, v2);
  (*(v8 + 8))(v1 + v9, v7);
  v14 = sub_219BDF4A4();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v1 + v13, 1, v14))
  {
    (*(v15 + 8))(v1 + v13, v14);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_50()
{
  v1 = type metadata accessor for RecentStoriesTagFeedGroupEmitter();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_219327A64();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[5];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for RecentStoriesTagFeedGroupKnobs();

  v7 = *(v6 + 36);
  v8 = sub_219BEF814();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[6]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[7]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_51()
{
  sub_2193451B0(0, &unk_280EE88A0, MEMORY[0x277D2D8A8], MEMORY[0x277D83D88]);
  v19 = *(*(v1 - 8) + 80);
  v2 = (v19 + 16) & ~v19;
  v18 = *(*(v1 - 8) + 64);
  v20 = sub_219BE3EE4();
  v3 = *(v20 - 8);
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v17 = sub_219BE3F14();
  v5 = *(v17 - 8);
  v6 = *(v5 + 80);
  v14 = *(v5 + 64);
  v16 = sub_219BE41A4();
  v7 = *(v16 - 8);
  v8 = *(v7 + 80);
  v9 = sub_219BDF0E4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v2, 1, v9))
  {
    (*(v10 + 8))(v0 + v2, v9);
  }

  v11 = (v2 + v18 + v4) & ~v4;
  v12 = (v11 + v15 + v6) & ~v6;
  (*(v3 + 8))(v0 + v11, v20);
  (*(v5 + 8))(v0 + v12, v17);
  (*(v7 + 8))(v0 + ((v12 + v14 + v8) & ~v8), v16);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_52()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_53()
{
  v1 = (type metadata accessor for ChannelHeadlineServiceRequest() - 8);
  v2 = (*(*v1 + 80) + 176) & ~*(*v1 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);

  v3 = v1[19];
  v4 = sub_219BEFBD4();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_54(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_55()
{
  sub_2193D4D6C(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_56()
{
  v1 = type metadata accessor for LegacyAudioConfigArticle(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[6];

  v4 = *(type metadata accessor for LegacyAudioConfigArticle.Overrides(0) + 20);
  v5 = sub_219BDB954();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = v1[7];
  v8 = sub_219BDBD34();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v2 + v7, v8);
  }

  v10 = v1[8];
  v11 = sub_219BE7434();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v2 + v10, 1, v11))
  {
    (*(v12 + 8))(v2 + v10, v11);
  }

  if (*(v2 + v1[9] + 8) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_57()
{
  v1 = (type metadata accessor for ArticleListTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_21940DA80();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for ArticleListTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_58()
{
  v1 = (type metadata accessor for SportsKeyPlayersTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_219425F54();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_59()
{
  v1 = (type metadata accessor for SportsOnboardingTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_219465EC4();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for SportsOnboardingTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[12]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_60()
{
  v1 = (type metadata accessor for PuzzleArchiveTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2194BB554();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for PuzzleArchiveTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  v6 = v1[9];
  v7 = sub_219BDC084();
  (*(*(v7 - 8) + 8))(v2 + v6, v7);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_61()
{
  v1 = (type metadata accessor for SportsFavoritesTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2194C0030();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for SportsFavoritesTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_62()
{
  swift_unownedRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_63()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_64()
{
  v1 = (type metadata accessor for SportsLinksTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_219519384();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for SportsLinksTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[12]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_65()
{
  v1 = (type metadata accessor for AudioFeedServiceContext() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  v4 = sub_219BEE754();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_66()
{
  v1 = (type metadata accessor for SportsTopStoriesTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2186D868C();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for SportsTopStoriesTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_67(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v17 = a1(0);
  v6 = *(v17 - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v16 = a2(0);
  v9 = *(v16 - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = a3(0);
  v13 = *(v12 - 8);
  v14 = (v10 + v11 + *(v13 + 80)) & ~*(v13 + 80);
  (*(v6 + 8))(v3 + v7, v17);
  (*(v9 + 8))(v3 + v10, v16);
  (*(v13 + 8))(v3 + v14, v12);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_68()
{
  v1 = (type metadata accessor for DateRangeTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_21958F7F0();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for DateRangeTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_69()
{
  v1 = (type metadata accessor for PuzzleFeaturedTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2195D92E4();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_70()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_71(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_72(void (*a1)(void))
{
  a1(*(v1 + 16));
  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_73()
{
  v1 = (type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2186EC3A4();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2186E3B14();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs();

  v7 = *(v6 + 44);
  sub_2186F91B8(0, &qword_280E91830, MEMORY[0x277D32318]);
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_74()
{
  v1 = (type metadata accessor for SportsBoxScoresTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_219694FFC();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for SportsBoxScoresTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_75(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_76()
{
  v1 = (type metadata accessor for SportsStandingsTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_21972CF04();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[8];
  sub_2189AD5C8();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for SportsStandingsTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_77()
{
  v1 = (type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2186E3594();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2186E3B14();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs();

  v7 = *(v6 + 44);
  sub_2186F9254(0, &qword_280E91830, MEMORY[0x277D32318]);
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_78()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_79()
{
  v1 = (type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_21915A40C();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  v5 = v4 + *(type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs() + 52);
  sub_21975EA48(0, &qword_280E91830, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D32318]);
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[13]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_80()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_81()
{
  v1 = (type metadata accessor for PaywallAudioFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2186FA21C();
  (*(*(v3 - 8) + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_82()
{
  sub_2198137D0(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_83()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_84()
{
  sub_21896FA3C();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_85()
{
  v1 = sub_219BF2B34();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_86()
{
  v1 = (type metadata accessor for TopicMagazineFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_2186E60B0();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[8];
  sub_2186E3B14();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(type metadata accessor for TopicMagazineFeedGroupKnobs() + 28);
  sub_2186F9390(0, &qword_280E91830, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D32318]);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_87()
{

  return swift_deallocObject();
}