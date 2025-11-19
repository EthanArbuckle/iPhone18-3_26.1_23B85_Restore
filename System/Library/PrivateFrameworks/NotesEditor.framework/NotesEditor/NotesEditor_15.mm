uint64_t sub_215436458@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v63 = sub_2154A051C();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SummaryView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DCC0);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DCB8);
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v48 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DCB0);
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v53 = &v48 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DDB8);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v54 = &v48 - v12;
  v13 = v2[1];
  v14 = v2[2];
  v15 = v2[3];
  sub_2154A0FAC();
  sub_21549FE4C();
  v50 = v13;

  v49 = v15;
  v48 = sub_2154A0CAC();
  KeyPath = swift_getKeyPath();
  sub_2153F0A20(v2, &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  sub_215439764(&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = &v9[*(v7 + 36)];
  sub_21549FBCC();
  sub_2154A200C();
  *v19 = &unk_2154C4A68;
  *(v19 + 1) = v18;
  v20 = v73;
  *(v9 + 72) = v74;
  v21 = v76;
  *(v9 + 88) = v75;
  *(v9 + 104) = v21;
  *(v9 + 120) = v77;
  v22 = v72;
  *(v9 + 24) = v71;
  *(v9 + 40) = v22;
  *v9 = v50;
  *(v9 + 1) = v14;
  *(v9 + 2) = v49;
  *(v9 + 56) = v20;
  v23 = v48;
  *(v9 + 17) = KeyPath;
  *(v9 + 18) = v23;
  sub_2153F0A20(v2, &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = swift_allocObject();
  sub_215439764(&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v17);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DCC8);
  v26 = sub_215439470();
  v27 = sub_2151ACC5C(&qword_27CA5DCF8, &qword_27CA5DCC8);
  v28 = v52;
  v29 = v51;
  sub_2154A0BEC();
  sub_2151ADCD8(v9, &qword_27CA5DCC0);

  v30 = [objc_opt_self() mainBundle];
  v31 = sub_2154A1D2C();
  v32 = [v30 localizedStringForKey:v31 value:0 table:0];

  v33 = sub_2154A1D6C();
  v35 = v34;

  v69 = v33;
  v70 = v35;
  v65 = v29;
  v66 = v25;
  v67 = v26;
  v68 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_215324954();
  v38 = MEMORY[0x277D837D0];
  v39 = v53;
  v40 = v55;
  sub_2154A0A7C();

  (*(v56 + 8))(v28, v40);
  v41 = v61;
  sub_2154A050C();
  v65 = v40;
  v66 = v38;
  v67 = OpaqueTypeConformance2;
  v68 = v37;
  swift_getOpaqueTypeConformance2();
  v42 = v54;
  v43 = v57;
  sub_2154A0B3C();
  (*(v62 + 8))(v41, v63);
  (*(v58 + 8))(v39, v43);
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DCA0) + 36);
  v45 = swift_getKeyPath();
  v46 = v64;
  *(v64 + v44) = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0);
  swift_storeEnumTagMultiPayload();
  return (*(v59 + 32))(v46, v42, v60);
}

uint64_t sub_215436C24(uint64_t a1)
{
  v2 = sub_2154A040C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DC90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_2154A03FC();
  v10 = a1;
  sub_21543A420();
  sub_21549FE3C();
  v7 = sub_2151ACC5C(&qword_27CA5DC98, &qword_27CA5DC90);
  MEMORY[0x216066FF0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

void sub_215436DC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summaryViewed;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_215439670(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }

  v4 = [objc_opt_self() sharedReachabilityForInternetConnection];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 currentReachabilityStatus];

    if (!v6)
    {
      swift_getKeyPath();
      sub_215439670(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
      sub_21549ED9C();

      v7 = (v1 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summary);
      swift_beginAccess();
      v8 = v7[1];
      v9 = *v7 & 0xFFFFFFFFFFFFLL;
      if ((v8 & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(v8) & 0xF;
      }

      if (!v9)
      {
        v10 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__currentSummaryAlertType;
        swift_beginAccess();
        if (*(v1 + v10) != 1)
        {
          v11 = swift_getKeyPath();
          MEMORY[0x28223BE20](v11);
          sub_21549ED8C();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
        sub_2154A0DFC();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2154370D8(uint64_t *a1)
{
  v2 = sub_21549EA1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (*(*a1 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summarizationTask))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v6;
    v11[-1] = 0;
    v11[3] = v6;
    sub_215439670(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }

  else
  {
    sub_21535A0A4(0);
  }

  v8 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__currentSummaryAlertType;
  swift_beginAccess();
  if (*(v6 + v8) != 2)
  {
    v9 = swift_getKeyPath();
    MEMORY[0x28223BE20](v9);
    v11[-2] = v6;
    LOBYTE(v11[-1]) = 2;
    v11[2] = v6;
    sub_215439670(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }

  (*(v3 + 104))(v5, *MEMORY[0x277D35A38], v2);
  sub_21535D26C(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21543747C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[2] = a2;
  v3 = sub_2154A0C7C();
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for SummaryAlert();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v10 = *(v9 + 28);

  sub_2154350C4(v7 + v10);
  *v7 = v8;
  v17 = sub_215353C44();
  v18 = v11;
  sub_215324954();
  v12 = sub_2154A092C();
  v16[0] = v13;
  v16[1] = v12;
  v17 = sub_215353D90();
  v18 = v14;
  sub_2154A092C();
  sub_215353F40();
  sub_215354328();
  sub_2154A0C4C();
  return sub_215439E04(v7);
}

uint64_t sub_215437630(uint64_t a1)
{
  *(v1 + 64) = a1;
  sub_2154A1FFC();
  *(v1 + 72) = sub_2154A1FEC();
  v3 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_2154376C8, v3, v2);
}

uint64_t sub_2154376C8()
{
  v1 = v0[8];

  v2 = *v1;
  swift_getKeyPath();
  v0[2] = v2;
  sub_215439670(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  v3 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__isSummarizing;
  swift_beginAccess();
  if ((*(v2 + v3) & 1) == 0)
  {
    swift_getKeyPath();
    v0[5] = v2;
    sub_21549ED9C();

    v4 = (v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summary);
    swift_beginAccess();
    v5 = v4[1];
    v6 = *v4 & 0xFFFFFFFFFFFFLL;
    if ((v5 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(v5) & 0xF;
    }

    if (!v6)
    {
      sub_21535B270();
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_215437848@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DDC0);
  MEMORY[0x28223BE20](v75);
  v74 = &v58 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DDC8);
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x28223BE20](v3);
  v71 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DDD0);
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x28223BE20](v5);
  v62 = &v58 - v6;
  v7 = sub_2154A040C();
  MEMORY[0x28223BE20](v7 - 8);
  v69 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DDD8);
  v61 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v60 = &v58 - v9;
  v10 = sub_2154A04CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v59 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE40);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BDE8);
  MEMORY[0x28223BE20](v17 - 8);
  v63 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v58 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v58 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DDE0);
  MEMORY[0x28223BE20](v25 - 8);
  v64 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v65 = &v58 - v28;
  v70 = v1;
  sub_215434EEC(v24);
  (*(v11 + 104))(v21, *MEMORY[0x277CE0558], v10);
  (*(v11 + 56))(v21, 0, 1, v10);
  v29 = *(v14 + 56);
  sub_215324EEC(v24, v16, &qword_27CA5BDE8);
  sub_215324EEC(v21, &v16[v29], &qword_27CA5BDE8);
  v30 = *(v11 + 48);
  if (v30(v16, 1, v10) == 1)
  {
    sub_2151ADCD8(v21, &qword_27CA5BDE8);
    sub_2151ADCD8(v24, &qword_27CA5BDE8);
    if (v30(&v16[v29], 1, v10) == 1)
    {
      sub_2151ADCD8(v16, &qword_27CA5BDE8);
      v31 = v65;
LABEL_9:
      v47 = v68;
      v48 = v64;
      (*(v67 + 56))(v64, 1, 1, v68);
      v49 = sub_2151ACC5C(&qword_27CA5DDE8, &qword_27CA5DDD8);
      v77 = v66;
      v78 = v49;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      MEMORY[0x216067020](v48, v47, OpaqueTypeConformance2);
      v42 = sub_2151ADCD8(v48, &qword_27CA5DDE0);
      v33 = v70;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_215324EEC(v16, v63, &qword_27CA5BDE8);
  if (v30(&v16[v29], 1, v10) == 1)
  {
    sub_2151ADCD8(v21, &qword_27CA5BDE8);
    sub_2151ADCD8(v24, &qword_27CA5BDE8);
    (*(v11 + 8))(v63, v10);
LABEL_6:
    sub_2151ADCD8(v16, &qword_27CA5BE40);
    v31 = v65;
    goto LABEL_7;
  }

  v43 = v59;
  (*(v11 + 32))(v59, &v16[v29], v10);
  sub_215439670(&qword_27CA5CF70, MEMORY[0x277CE0570]);
  v44 = v63;
  v45 = sub_2154A1D1C();
  v46 = *(v11 + 8);
  v46(v43, v10);
  sub_2151ADCD8(v21, &qword_27CA5BDE8);
  sub_2151ADCD8(v24, &qword_27CA5BDE8);
  v46(v44, v10);
  sub_2151ADCD8(v16, &qword_27CA5BDE8);
  v31 = v65;
  if (v45)
  {
    goto LABEL_9;
  }

LABEL_7:
  v32 = sub_2154A03BC();
  MEMORY[0x28223BE20](v32);
  v33 = v70;
  *(&v58 - 2) = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CED0);
  sub_2151ACC5C(&qword_27CA5D540, &qword_27CA5CED0);
  v34 = v60;
  sub_21549FA4C();
  v35 = sub_2151ACC5C(&qword_27CA5DDE8, &qword_27CA5DDD8);
  v36 = v62;
  v37 = v66;
  MEMORY[0x216066FF0](v34, v66, v35);
  v39 = v67;
  v38 = v68;
  v40 = v64;
  (*(v67 + 16))(v64, v36, v68);
  (*(v39 + 56))(v40, 0, 1, v38);
  v77 = v37;
  v78 = v35;
  v41 = swift_getOpaqueTypeConformance2();
  MEMORY[0x216067020](v40, v38, v41);
  sub_2151ADCD8(v40, &qword_27CA5DDE0);
  (*(v39 + 8))(v36, v38);
  v42 = (*(v61 + 8))(v34, v37);
LABEL_10:
  MEMORY[0x28223BE20](v42);
  *(&v58 - 2) = v33;
  sub_2154A03EC();
  sub_21543A5C8();
  v51 = v71;
  sub_21549FE3C();
  v52 = v74;
  v53 = *(v75 + 48);
  sub_215324EEC(v31, v74, &qword_27CA5DDE0);
  v54 = v72;
  v55 = v52 + v53;
  v56 = v73;
  (*(v72 + 16))(v55, v51, v73);
  sub_2154A029C();
  (*(v54 + 8))(v51, v56);
  return sub_2151ADCD8(v31, &qword_27CA5DDE0);
}

uint64_t sub_2154382C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE10);
  MEMORY[0x28223BE20](v51);
  v47 = &v45 - v2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE18);
  MEMORY[0x28223BE20](v49);
  v50 = &v45 - v3;
  v4 = sub_2154A04CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE40);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BDE8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  sub_21543A0D4(&v45 - v18);
  (*(v5 + 104))(v16, *MEMORY[0x277CE0558], v4);
  (*(v5 + 56))(v16, 0, 1, v4);
  v20 = *(v8 + 56);
  sub_215324EEC(v19, v10, &qword_27CA5BDE8);
  sub_215324EEC(v16, &v10[v20], &qword_27CA5BDE8);
  v21 = *(v5 + 48);
  if (v21(v10, 1, v4) != 1)
  {
    sub_215324EEC(v10, v13, &qword_27CA5BDE8);
    if (v21(&v10[v20], 1, v4) != 1)
    {
      v40 = &v10[v20];
      v41 = v46;
      (*(v5 + 32))(v46, v40, v4);
      sub_215439670(&qword_27CA5CF70, MEMORY[0x277CE0570]);
      v42 = sub_2154A1D1C();
      v43 = *(v5 + 8);
      v43(v41, v4);
      sub_2151ADCD8(v16, &qword_27CA5BDE8);
      sub_2151ADCD8(v19, &qword_27CA5BDE8);
      v43(v13, v4);
      sub_2151ADCD8(v10, &qword_27CA5BDE8);
      if (v42)
      {
        goto LABEL_9;
      }

LABEL_7:
      v22 = sub_2154A06CC();
      sub_21549F99C();
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE20);
      v32 = v47;
      (*(*(v31 - 8) + 16))(v47, v48, v31);
      v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE28) + 36);
      *v33 = v22;
      *(v33 + 8) = v24;
      *(v33 + 16) = v26;
      *(v33 + 24) = v28;
      *(v33 + 32) = v30;
      *(v33 + 40) = 0;
      KeyPath = swift_getKeyPath();
      v35 = (v32 + *(v51 + 36));
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE30) + 28);
      v37 = *MEMORY[0x277CE02A0];
      v38 = sub_2154A023C();
      (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
      *v35 = KeyPath;
      sub_215324EEC(v32, v50, &qword_27CA5DE10);
      swift_storeEnumTagMultiPayload();
      sub_2151ACC5C(&qword_27CA5DE38, &qword_27CA5DE20);
      sub_21543A754();
      sub_2154A039C();
      return sub_2151ADCD8(v32, &qword_27CA5DE10);
    }

    sub_2151ADCD8(v16, &qword_27CA5BDE8);
    sub_2151ADCD8(v19, &qword_27CA5BDE8);
    (*(v5 + 8))(v13, v4);
LABEL_6:
    sub_2151ADCD8(v10, &qword_27CA5BE40);
    goto LABEL_7;
  }

  sub_2151ADCD8(v16, &qword_27CA5BDE8);
  sub_2151ADCD8(v19, &qword_27CA5BDE8);
  if (v21(&v10[v20], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_2151ADCD8(v10, &qword_27CA5BDE8);
LABEL_9:
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE20);
  (*(*(v44 - 8) + 16))(v50, v48, v44);
  swift_storeEnumTagMultiPayload();
  sub_2151ACC5C(&qword_27CA5DE38, &qword_27CA5DE20);
  sub_21543A754();
  return sub_2154A039C();
}

uint64_t sub_215438A34(uint64_t a1)
{
  v2 = type metadata accessor for SummaryView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  sub_21549F96C();
  v8 = sub_21549F98C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_2153F0A20(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_215439764(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CEE0);
  sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0);
  return sub_2154A0E2C();
}

uint64_t sub_215438C38(uint64_t a1)
{
  v16 = sub_2154A00DC();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA00);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_21549FB6C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SummaryView(0);
  sub_215324EEC(a1 + *(v12 + 40), v7, &unk_27CA5CA00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_2154A227C();
    v13 = sub_2154A068C();
    sub_21549F07C();

    sub_2154A00CC();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_21549FB5C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_215438EC0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  sub_2154A1D6C();
  sub_215324954();
  return sub_2154A0DCC();
}

uint64_t sub_215438FA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DD80);
  result = sub_2154A0DEC();
  *a2 = v3;
  a2[1] = v5;
  return result;
}

unint64_t sub_215439018()
{
  result = qword_27CA5DC68;
  if (!qword_27CA5DC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DC60);
    sub_2154390A4();
    sub_2154396D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DC68);
  }

  return result;
}

unint64_t sub_2154390A4()
{
  result = qword_27CA5DC70;
  if (!qword_27CA5DC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DC78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DC80);
    sub_215439230();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DC90);
    sub_2151ACC5C(&qword_27CA5DC98, &qword_27CA5DC90);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DCA0);
    sub_215439284();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DC70);
  }

  return result;
}

unint64_t sub_215439230()
{
  result = qword_27CA5DC88;
  if (!qword_27CA5DC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DC88);
  }

  return result;
}

unint64_t sub_215439284()
{
  result = qword_27CA5DCA8;
  if (!qword_27CA5DCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DCA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DCB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DCB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DCC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DCC8);
    sub_215439470();
    sub_2151ACC5C(&qword_27CA5DCF8, &qword_27CA5DCC8);
    swift_getOpaqueTypeConformance2();
    sub_215324954();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_215439670(&qword_27CA5DD00, type metadata accessor for SummaryView.SizeViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DCA8);
  }

  return result;
}

unint64_t sub_215439470()
{
  result = qword_27CA5DCD0;
  if (!qword_27CA5DCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DCC0);
    sub_21543952C();
    sub_215439670(&unk_27CA5C970, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DCD0);
  }

  return result;
}

unint64_t sub_21543952C()
{
  result = qword_27CA5DCD8;
  if (!qword_27CA5DCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DCE0);
    sub_2154395E4();
    sub_2151ACC5C(&qword_27CA5B338, &qword_27CA5D030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DCD8);
  }

  return result;
}

unint64_t sub_2154395E4()
{
  result = qword_27CA5DCE8;
  if (!qword_27CA5DCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DCF0);
    sub_2153B66BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DCE8);
  }

  return result;
}

uint64_t sub_215439670(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2154396D8()
{
  result = qword_27CA5DD08;
  if (!qword_27CA5DD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DD10);
    sub_215439230();
    sub_215439284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DD08);
  }

  return result;
}

uint64_t sub_215439764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for SummaryView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2154A04CC();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21549FB6C();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_215439A20(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SummaryView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_215439AC4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SummaryView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_215439B50()
{
  result = qword_27CA5DD30;
  if (!qword_27CA5DD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DC50);
    sub_215439C08();
    sub_2151ACC5C(&qword_27CA5DD70, &qword_27CA5DD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DD30);
  }

  return result;
}

unint64_t sub_215439C08()
{
  result = qword_27CA5DD38;
  if (!qword_27CA5DD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DD28);
    sub_215439CC0();
    sub_2151ACC5C(&qword_27CA5DD60, &qword_27CA5DD68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DD38);
  }

  return result;
}

unint64_t sub_215439CC0()
{
  result = qword_27CA5DD40;
  if (!qword_27CA5DD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DD20);
    sub_215439D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DD40);
  }

  return result;
}

unint64_t sub_215439D4C()
{
  result = qword_27CA5DD48;
  if (!qword_27CA5DD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DD18);
    sub_2151ACC5C(&qword_27CA5DD50, &qword_27CA5DD58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DD48);
  }

  return result;
}

uint64_t sub_215439E04(uint64_t a1)
{
  v2 = type metadata accessor for SummaryAlert();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_215439ED0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_2154A00DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  sub_215324EEC(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_2154A227C();
    v17 = sub_2154A068C();
    sub_21549F07C();

    sub_2154A00CC();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_21543A0D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2154A00DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_215324EEC(v2, &v13 - v9, &qword_27CA5B7C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21543A634(v10, a1);
  }

  sub_2154A227C();
  v12 = sub_2154A068C();
  sub_21549F07C();

  sub_2154A00CC();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21543A2C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BDE8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_215324EEC(a1, &v5 - v3, &qword_27CA5BDE8);
  return sub_21549FF8C();
}

unint64_t sub_21543A420()
{
  result = qword_27CA5DDB0;
  if (!qword_27CA5DDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DDB0);
  }

  return result;
}

uint64_t sub_21543A474()
{
  v2 = *(type metadata accessor for SummaryView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2151BD278;

  return sub_215437630(v0 + v3);
}

unint64_t sub_21543A5C8()
{
  result = qword_27CA5DDF0;
  if (!qword_27CA5DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DDF0);
  }

  return result;
}

uint64_t sub_21543A634(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BDE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21543A6CC()
{
  sub_2153BB10C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_21543A754()
{
  result = qword_27CA5DE40;
  if (!qword_27CA5DE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DE10);
    sub_21543A80C();
    sub_2151ACC5C(&qword_27CA5DE50, &qword_27CA5DE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DE40);
  }

  return result;
}

unint64_t sub_21543A80C()
{
  result = qword_27CA5DE48;
  if (!qword_27CA5DE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DE28);
    sub_2151ACC5C(&qword_27CA5DE38, &qword_27CA5DE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DE48);
  }

  return result;
}

unint64_t sub_21543A8C4()
{
  result = qword_27CA5DE58;
  if (!qword_27CA5DE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DE60);
    sub_2151ACC5C(&qword_27CA5DE38, &qword_27CA5DE20);
    sub_21543A754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DE58);
  }

  return result;
}

id sub_21543A9BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_2154A0FAC();
  v7 = v6;
  v8 = sub_2154A025C();
  v23 = 0;
  sub_21543AB4C(a1, &v18);
  v24 = v18;
  v25 = v19;
  v26 = v20;
  v27 = v21;
  v28[0] = v18;
  v28[1] = v19;
  v28[2] = v20;
  v28[3] = v21;
  sub_21543C664(&v24, v17);
  sub_2151ADCD8(v28, &qword_27CA5DE68);
  *&v22[7] = v24;
  *&v22[23] = v25;
  *&v22[39] = v26;
  *&v22[55] = v27;
  v9 = v23;
  KeyPath = swift_getKeyPath();
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE70) + 36));
  *v11 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for ErrorPlaceHolderViewModifier();
  *(v11 + *(v12 + 20)) = a1;
  *(v11 + *(v12 + 24)) = a2;
  v13 = *v22;
  *(a3 + 49) = *&v22[16];
  v14 = *&v22[48];
  *(a3 + 65) = *&v22[32];
  *(a3 + 81) = v14;
  *a3 = v5;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = 0x4030000000000000;
  *(a3 + 32) = v9;
  *(a3 + 96) = *&v22[63];
  *(a3 + 33) = v13;

  return a2;
}

uint64_t sub_21543AB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21549EA1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v29 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  v36 = a1;
  v28 = sub_21543C95C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  v8 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__errorState;
  swift_beginAccess();
  v27 = *(v5 + 16);
  v27(v7, a1 + v8, v4);
  sub_21549E9EC();
  v26 = *(v5 + 8);
  v26(v7, v4);
  v33 = sub_2154A0D8C();
  sub_2154A077C();
  sub_2154A07AC();
  v32 = sub_2154A080C();

  KeyPath = swift_getKeyPath();
  v30 = sub_2154A04BC();
  swift_getKeyPath();
  v34 = a1;
  sub_21549ED9C();

  v27(v7, a1 + v8, v4);
  v9 = sub_21549E9FC();
  v11 = v10;
  v26(v7, v4);
  v34 = v9;
  v35 = v11;
  sub_215324954();
  v12 = sub_2154A092C();
  v14 = v13;
  LOBYTE(v7) = v15;
  LODWORD(v34) = sub_2154A04BC();
  v16 = sub_2154A08DC();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_215354880(v12, v14, v7 & 1);

  LOBYTE(v12) = v20 & 1;
  LOBYTE(v34) = v20 & 1;
  v23 = v32;
  v24 = KeyPath;
  *a2 = v33;
  *(a2 + 8) = v24;
  *(a2 + 16) = v23;
  *(a2 + 24) = v30;
  *(a2 + 32) = v16;
  *(a2 + 40) = v18;
  *(a2 + 48) = v12;
  *(a2 + 56) = v22;

  sub_21539227C(v16, v18, v12);

  sub_215354880(v16, v18, v12);
}

uint64_t sub_21543AEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = sub_2154A051C();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DEF8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DF00);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DF08);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DF10);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v52 - v16;
  v17 = sub_2154A06DC();
  sub_21549F99C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DF18);
  (*(*(v26 - 8) + 16))(v8, a1, v26);
  v27 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DF20) + 36)];
  *v27 = v17;
  *(v27 + 1) = v19;
  *(v27 + 2) = v21;
  *(v27 + 3) = v23;
  *(v27 + 4) = v25;
  v27[40] = 0;
  KeyPath = swift_getKeyPath();
  v29 = &v8[*(v6 + 44)];
  *v29 = KeyPath;
  v29[8] = 1;
  sub_2154A0FAC();
  sub_21549FE4C();
  sub_21543C9C0(v8, v11);
  v30 = &v11[*(v9 + 36)];
  v31 = v68;
  *(v30 + 4) = v67;
  *(v30 + 5) = v31;
  *(v30 + 6) = v69;
  v32 = v64;
  *v30 = v63;
  *(v30 + 1) = v32;
  v33 = v66;
  *(v30 + 2) = v65;
  *(v30 + 3) = v33;
  v34 = [objc_opt_self() mainBundle];
  v35 = sub_2154A1D2C();
  v36 = [v34 localizedStringForKey:v35 value:0 table:0];

  v37 = sub_2154A1D6C();
  v39 = v38;

  v59 = v37;
  v60 = v39;
  v40 = sub_21543CA30();
  v41 = sub_215324954();
  v42 = MEMORY[0x277D837D0];
  sub_2154A0A7C();

  sub_2151ADCD8(v11, &qword_27CA5DF00);
  sub_2154A050C();
  v59 = v9;
  v60 = v42;
  v61 = v40;
  v62 = v41;
  swift_getOpaqueTypeConformance2();
  v43 = v53;
  sub_2154A0B3C();
  (*(v56 + 8))(v4, v57);
  (*(v13 + 8))(v15, v12);
  v44 = swift_getKeyPath();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DF48);
  v46 = v58;
  v47 = (v58 + *(v45 + 36));
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE30) + 28);
  v49 = *MEMORY[0x277CE02A0];
  v50 = sub_2154A023C();
  (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
  *v47 = v44;
  return (*(v54 + 32))(v46, v43, v55);
}

uint64_t sub_21543B4EC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a2;
  v84 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE88);
  v5 = *(v4 - 8);
  v77 = v4;
  v78 = v5;
  MEMORY[0x28223BE20](v4);
  v74 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE90);
  v81 = *(v7 - 8);
  v82 = v7;
  MEMORY[0x28223BE20](v7);
  v75 = &v63 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE98) - 8;
  MEMORY[0x28223BE20](v79);
  v83 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = &v63 - v11;
  MEMORY[0x28223BE20](v12);
  v73 = &v63 - v13;
  v85 = sub_2154A014C();
  v87 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CED0);
  v16 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B600);
  v71 = *(v19 - 8);
  v72 = v19;
  MEMORY[0x28223BE20](v19);
  v65 = &v63 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DEA0);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v80 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v63 - v25;
  MEMORY[0x28223BE20](v27);
  v86 = &v63 - v28;
  swift_retain_n();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CEE0);
  v68 = sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0);
  sub_2154A0E3C();
  sub_2154A013C();
  sub_2151ACC5C(&qword_27CA5D540, &qword_27CA5CED0);
  v69 = sub_21543C95C(&qword_27CA5B608, MEMORY[0x277CDDE78]);
  v29 = v66;
  v30 = v85;
  sub_2154A09CC();
  v31 = v87[1];
  ++v87;
  v67 = v31;
  v31(v15, v30);
  (*(v16 + 8))(v18, v29);
  swift_getKeyPath();
  v89 = a1;
  sub_21543C95C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  v32 = (a1 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summary);
  swift_beginAccess();
  v33 = v32[1];
  v34 = *v32 & 0xFFFFFFFFFFFFLL;
  if ((v33 & 0x2000000000000000) != 0)
  {
    v34 = HIBYTE(v33) & 0xF;
  }

  v35 = v34 == 0;
  KeyPath = swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  (*(v71 + 32))(v26, v65, v72);
  v38 = &v26[*(v22 + 44)];
  *v38 = KeyPath;
  v38[1] = sub_2153A1B68;
  v38[2] = v37;
  sub_21533FB7C(v26, v86, &qword_27CA5DEA0);
  swift_getKeyPath();
  v88 = a1;
  sub_21549ED9C();

  v39 = v74;
  sub_2154A100C();
  sub_2154A013C();
  sub_2151ACC5C(&qword_27CA5DEA8, &qword_27CA5DE88);
  v40 = v75;
  v41 = v77;
  v42 = v85;
  sub_2154A09CC();
  v67(v15, v42);
  (*(v78 + 8))(v39, v41);
  swift_getKeyPath();
  v88 = a1;
  sub_21549ED9C();

  v43 = v32[1];
  v44 = *v32 & 0xFFFFFFFFFFFFLL;
  if ((v43 & 0x2000000000000000) != 0)
  {
    v44 = HIBYTE(v43) & 0xF;
  }

  v45 = v44 == 0;
  v46 = swift_getKeyPath();
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  v48 = v76;
  (*(v81 + 32))(v76, v40, v82);
  v49 = (v48 + *(v79 + 44));
  *v49 = v46;
  v49[1] = sub_2153BC05C;
  v49[2] = v47;
  v50 = v73;
  sub_21533FB7C(v48, v73, &qword_27CA5DE98);
  if (ICInternalSettingsIsFCSReportAConcernEnabled())
  {
    v51 = v64;
    v52 = v64;
    v87 = a1;

    v53 = v52;
  }

  else
  {

    v87 = 0;
    v51 = 0;
  }

  v54 = v86;
  v55 = v80;
  sub_215324EEC(v86, v80, &qword_27CA5DEA0);
  v56 = v50;
  v57 = v83;
  sub_215324EEC(v50, v83, &qword_27CA5DE98);
  v58 = v84;
  sub_215324EEC(v55, v84, &qword_27CA5DEA0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DEB0);
  sub_215324EEC(v57, v58 + *(v59 + 48), &qword_27CA5DE98);
  v60 = (v58 + *(v59 + 64));
  v61 = v87;
  sub_21543C730(v87, v51);
  sub_21543C770(v61, v51);
  *v60 = v61;
  v60[1] = v51;
  sub_2151ADCD8(v56, &qword_27CA5DE98);
  sub_2151ADCD8(v54, &qword_27CA5DEA0);
  sub_21543C770(v61, v51);
  sub_2151ADCD8(v57, &qword_27CA5DE98);
  return sub_2151ADCD8(v55, &qword_27CA5DEA0);
}

uint64_t sub_21543BF28(uint64_t a1)
{
  v2 = [objc_opt_self() generalPasteboard];
  swift_getKeyPath();
  sub_21543C95C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  swift_beginAccess();

  v3 = sub_2154A1D2C();

  [v2 setString_];

  return sub_21535DB90(*(a1 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel_summaryTarget), *(a1 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel_summaryTarget + 8), *(a1 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel_copyActionType), *(a1 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel_copyActionType + 8));
}

uint64_t sub_21543C078()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  sub_2154A1D6C();
  sub_215324954();
  return sub_2154A0DCC();
}

uint64_t sub_21543C16C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  sub_2154A1D6C();
  sub_215324954();
  return sub_2154A0DCC();
}

uint64_t sub_21543C264()
{
  v0 = sub_2154A014C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CEE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  sub_2154A01BC();
  sub_2154A0DBC();
  sub_2154A013C();
  sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0);
  sub_21543C95C(&qword_27CA5B608, MEMORY[0x277CDDE78]);
  sub_2154A09CC();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21543C498()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA5CEE0);
  sub_2154A014C();
  sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0);
  sub_21543C95C(&qword_27CA5B608, MEMORY[0x277CDDE78]);
  swift_getOpaqueTypeConformance2();
  sub_2151ACC5C(&qword_27CA5DE80, &qword_27CA5DE78);
  return sub_2154A087C();
}

uint64_t sub_21543C664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ErrorPlaceHolderViewModifier()
{
  result = qword_27CA5DEB8;
  if (!qword_27CA5DEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_21543C730(id result, void *a2)
{
  if (result)
  {

    return a2;
  }

  return result;
}

void sub_21543C770(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

void sub_21543C7D8()
{
  sub_2153BB10C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SummaryViewModel();
    if (v1 <= 0x3F)
    {
      sub_2154A11FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21543C874()
{
  result = qword_27CA5DEC8;
  if (!qword_27CA5DEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DE70);
    sub_2151ACC5C(&qword_27CA5DED0, &qword_27CA5DED8);
    sub_21543C95C(&qword_27CA5DEE0, type metadata accessor for ErrorPlaceHolderViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DEC8);
  }

  return result;
}

uint64_t sub_21543C95C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21543C9C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DEF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21543CA30()
{
  result = qword_27CA5DF28;
  if (!qword_27CA5DF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DF00);
    sub_21543CABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DF28);
  }

  return result;
}

unint64_t sub_21543CABC()
{
  result = qword_27CA5DF30;
  if (!qword_27CA5DF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DEF8);
    sub_21543CB74();
    sub_2151ACC5C(&qword_27CA5D458, &qword_27CA5D460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DF30);
  }

  return result;
}

unint64_t sub_21543CB74()
{
  result = qword_27CA5DF38;
  if (!qword_27CA5DF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DF20);
    sub_2151ACC5C(&qword_27CA5DF40, &qword_27CA5DF18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DF38);
  }

  return result;
}

unint64_t sub_21543CC2C()
{
  result = qword_27CA5DF50;
  if (!qword_27CA5DF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DF48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DF08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DF00);
    sub_21543CA30();
    sub_215324954();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&qword_27CA5DE50, &qword_27CA5DE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DF50);
  }

  return result;
}

uint64_t sub_21543CDB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

uint64_t sub_21543CE64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_215388154(v1, v2);
}

__n128 sub_21543CEA4@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v4 = v3[9].n128_u8[0];
  result = v3[8];
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_21543CF88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v4 = *(v3 + 160);
  *a2 = *(v3 + 152);
  a2[1] = v4;
}

uint64_t sub_21543D034(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_215389728(v1, v2);
}

uint64_t sub_21543D0C4()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5DF58);
  __swift_project_value_buffer(v0, qword_27CA5DF58);
  return sub_21549F0BC();
}

double sub_21543D110()
{
  result = 327.0;
  xmmword_27CA5DF70 = xmmword_2154C4F90;
  return result;
}

uint64_t sub_21543D160(uint64_t a1, uint64_t a2, SEL *a3, uint64_t *a4)
{
  v5 = [objc_opt_self() *a3];
  result = sub_2154A0C8C();
  *a4 = result;
  return result;
}

uint64_t sub_21543D1CC()
{
  type metadata accessor for AudioAttachmentView();

  return swift_getObjCClassFromMetadata();
}

CGSize __swiftcall ICAudioTextAttachment.attachmentSize(for:)(NSTextContainer *a1)
{
  v3 = [(NSTextContainer *)a1 textLayoutManager];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = v5;
    v7 = [v1 viewIdentifier];
    if (!v7)
    {
      sub_2154A1D6C();
      v7 = sub_2154A1D2C();
    }

    v8 = [v6 existingAttachmentViewForIdentifier_];

    if (v8)
    {
      type metadata accessor for AudioAttachmentView();
      if (swift_dynamicCastClass())
      {
        v9 = sub_21543D38C(a1);
        v11 = v10;

        v12 = v9;
        goto LABEL_14;
      }
    }

    else
    {
LABEL_8:
      v8 = v4;
    }
  }

  if (qword_27CA598F0 != -1)
  {
    swift_once();
  }

  v11 = *(&xmmword_27CA5DF70 + 1);
  v13 = *&xmmword_27CA5DF70;
  [(NSTextContainer *)a1 size];
  v15 = v14;
  [(NSTextContainer *)a1 lineFragmentPadding];
  v12 = v15 - (v16 + v16);
  if (v13 < v12)
  {
    v12 = v13;
  }

LABEL_14:
  v17 = v11;
  result.height = v17;
  result.width = v12;
  return result;
}

double sub_21543D38C(void *a1)
{
  v2 = v1;
  [a1 size];
  v5 = v4;
  [a1 lineFragmentPadding];
  v7 = v5 - (v6 + v6);
  if (qword_27CA598F0 != -1)
  {
    swift_once();
  }

  v8 = *(&xmmword_27CA5DF70 + 1);
  if (*&xmmword_27CA5DF70 < v7)
  {
    v7 = *&xmmword_27CA5DF70;
  }

  v9 = *(v2 + OBJC_IVAR___ICAudioAttachmentView_brickDelegate);
  if (*(v9 + 24) == v7)
  {
    *(v9 + 24) = v7;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate);
    sub_21549ED8C();
  }

  v11 = *(v2 + OBJC_IVAR___ICAudioAttachmentView_hostingView);
  if (v11)
  {
    v12 = v11;
    [v12 invalidateIntrinsicContentSize];
    [v12 systemLayoutSizeFittingSize_];
    v13 = [v12 window];

    if (v13)
    {
    }

    *(v2 + OBJC_IVAR___ICAudioAttachmentView_needsRelayoutWhenMovingToWindow) = v13 == 0;
  }

  return v7;
}

double sub_21543D5B4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  *&v6 = *&ICAudioTextAttachment.attachmentSize(for:)(v4);

  return v6;
}

id sub_21543D614()
{
  v1 = type metadata accessor for AudioPlayerView(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for AudioAttachmentView();
  v28.receiver = v0;
  v28.super_class = v10;
  result = objc_msgSendSuper2(&v28, sel_didChangeMedia);
  v12 = *&v0[OBJC_IVAR___ICAudioAttachmentView_hostingView];
  if (v12)
  {
    v13 = v12;
    sub_21549FCEC();

    sub_21543D898(v3, v6);
    sub_21543D898(v6, v9);
    v14 = *(v9 + 3);
    aBlock = *(v9 + 2);
    v22 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
    sub_2154A0DEC();
    v15 = v27;
    sub_21538BF80();
    if (qword_27CA59870 != -1)
    {
      swift_once();
    }

    v16 = qword_27CA5B4F8;
    if (qword_27CA5B4F8)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v17 + 24) = v15;
      v25 = sub_21538C30C;
      v26 = v17;
      aBlock = MEMORY[0x277D85DD0];
      v22 = 1107296256;
      v23 = sub_2151BD7E4;
      v24 = &block_descriptor_31;
      v18 = _Block_copy(&aBlock);
      v19 = v16;

      [v19 performBlock_];

      _Block_release(v18);
    }

    else
    {
    }

    return sub_21544C7F4(v9, type metadata accessor for AudioPlayerView);
  }

  return result;
}

uint64_t sub_21543D898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioPlayerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21543D9C0()
{
  v1 = v0;
  v2 = sub_2154A250C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AudioPlayerView(0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 attachment];
  if (v10)
  {
    v47 = v10;
    v11 = [v10 audioModel];
    if (v11)
    {
      v12 = v11;
      v44 = v5;
      v45 = v3;
      v46 = v2;
      v42 = OBJC_IVAR___ICAudioAttachmentView_hostingView;
      v13 = *&v1[OBJC_IVAR___ICAudioAttachmentView_hostingView];
      if (v13)
      {
        [v13 removeFromSuperview];
      }

      type metadata accessor for SummaryViewModel();
      swift_allocObject();
      v14 = v12;
      v43 = v14;
      v15 = sub_21535EFE4(v14);

      *&v1[OBJC_IVAR___ICAudioAttachmentView_summaryViewModel] = v15;

      v16 = *&v1[OBJC_IVAR___ICAudioAttachmentView_brickDelegate];
      *(v9 + 1) = 0x4018000000000000;
      LOBYTE(v48) = 0;
      v17 = v15;
      v41[1] = v15;

      v18 = v47;
      sub_2154A0DDC();
      v19 = v50;
      v9[32] = v49;
      *(v9 + 5) = v19;
      v20 = v6[8];
      *&v9[v20] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2C0);
      swift_storeEnumTagMultiPayload();
      v21 = &v9[v6[10]];
      *v21 = 0xD00000000000003DLL;
      *(v21 + 1) = 0x80000002154DB870;
      v22 = &v9[v6[11]];
      *v22 = 0xD00000000000003BLL;
      *(v22 + 1) = 0x80000002154DB8B0;
      type metadata accessor for AudioPlayerView.AudioPlayerViewModel();
      swift_allocObject();
      v23 = v18;
      v48 = sub_215388E18(v23);
      sub_2154A0DDC();
      v24 = v49;
      v25 = v50;
      *(v9 + 2) = v49;
      *(v9 + 3) = v25;
      *v9 = v16;
      *&v9[v6[9]] = v17;
      v49 = v24;
      v50 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
      sub_2154A0DEC();
      v26 = v48;
      v27 = swift_allocObject();
      swift_weakInit();
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = v23;
      KeyPath = swift_getKeyPath();
      v47 = v41;
      MEMORY[0x28223BE20](KeyPath);
      v41[-4] = v26;
      v41[-3] = sub_21544F8E4;
      v41[-2] = v28;
      v49 = v26;
      sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
      v30 = v23;

      sub_21549ED8C();

      v31 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E5E8));
      v32 = sub_21549FCDC();
      [v1 addSubview_];
      [v32 ic_addAnchorsToFillSuperview];
      v33 = *&v1[v42];
      *&v1[v42] = v32;
      v34 = v32;

      v35 = [objc_opt_self() defaultCenter];
      v36 = [v30 managedObjectContext];
      v37 = v44;
      sub_2154A251C();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_21544CBEC(&qword_281199588, MEMORY[0x277CC9DB0]);
      v38 = v46;
      v39 = sub_21549F3EC();

      (*(v45 + 8))(v37, v38);
      *&v1[OBJC_IVAR___ICAudioAttachmentView_attachmentObserver] = v39;
    }

    else
    {
      v40 = v47;
    }
  }
}

void sub_21543E004()
{
  v0 = sub_2154A10EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2154A110C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  v10 = [Strong attachment];
  if (!v10)
  {

    return;
  }

  v11 = v10;
  v12 = sub_21549E18C();
  if (!v12)
  {

    v30 = 0u;
    v31 = 0u;
    goto LABEL_16;
  }

  v13 = v12;
  aBlock[6] = sub_2154A1D6C();
  aBlock[7] = v14;
  sub_2154A2D3C();
  if (!*(v13 + 16) || (v15 = sub_2153B1010(aBlock), (v16 & 1) == 0))
  {

    sub_21533FC34(aBlock);
    v30 = 0u;
    v31 = 0u;
    goto LABEL_14;
  }

  sub_21533FC88(*(v13 + 56) + 32 * v15, &v30);
  sub_21533FC34(aBlock);

  if (!*(&v31 + 1))
  {
LABEL_14:

LABEL_16:
    sub_2151ADCD8(&v30, &qword_27CA5ABC0);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ABC8);
  if (swift_dynamicCast() & 1) != 0 && (v17 = sub_21542E878(v11, aBlock[0]), , (v17) && (v18 = [v9 textView]) != 0 && (v19 = v18, v20 = objc_msgSend(v18, sel_icTextLayoutManager), v19, v20))
  {
    sub_2151A6C9C(0, &unk_2811995C0);
    v28 = sub_2154A245C();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v11;
    aBlock[4] = sub_21544F914;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2151BD7E4;
    aBlock[3] = &block_descriptor_222;
    v25 = _Block_copy(aBlock);
    v27 = v20;
    v26 = v11;

    sub_2154A10FC();
    aBlock[0] = MEMORY[0x277D84F90];
    v24[1] = sub_21544CBEC(&qword_281199700, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
    sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00);
    sub_2154A2BEC();
    v22 = v25;
    v23 = v28;
    MEMORY[0x216069000](0, v7, v3, v25);
    _Block_release(v22);

    (*(v1 + 8))(v3, v0);
    (*(v5 + 8))(v7, v4);
  }

  else
  {
  }
}

void sub_21543E4D0(void *a1, id a2)
{
  v3 = [a2 rangeInNote];
  v5 = [a1 ic:v3 textRangeForRange:v4];
  if (v5)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2154BDB20;
    *(inited + 32) = v6;
    v8 = v6;
    sub_21532B7F0(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_2151A6C9C(0, &qword_27CA5A7F0);
    sub_21544F87C();
    v9 = sub_2154A20BC();

    [a1 invalidateLayoutForRanges_];
  }
}

id sub_21543E610(void *a1, uint64_t a2, SEL *a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for AudioAttachmentView();
  v4 = objc_msgSendSuper2(&v6, *a3);

  return v4;
}

id sub_21543E8F8()
{
  result = *(v0 + OBJC_IVAR___ICAudioAttachmentView_hostingView);
  if (result)
  {
    result = [result snapshotViewAfterScreenUpdates_];
    if (result)
    {
      v2 = result;
      v3 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
      [v3 setView_];
      [v2 bounds];
      [v3 setPreferredContentSize_];

      return v3;
    }
  }

  return result;
}

void sub_21543E9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [v5 textView];
  if (v10)
  {
    v22 = v10;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11 && (v12 = v11, (v13 = [v5 attachment]) != 0))
    {
      v14 = v13;
      v15 = [v13 rangeInNote];
      v17 = v16;
      sub_215324EEC(a1, v24, &qword_27CA5ABC0);
      v18 = swift_allocObject();
      v19 = v24[1];
      *(v18 + 24) = v24[0];
      *(v18 + 16) = v5;
      *(v18 + 40) = v19;
      aBlock[4] = a3;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2153DF054;
      aBlock[3] = a4;
      v20 = _Block_copy(aBlock);
      v21 = v5;

      [v12 showRemoveAttachmentAlertIfNecessaryForOperation:a5 selectedRange:v15 completionHandler:{v17, v20}];
      _Block_release(v20);
    }

    else
    {
    }
  }
}

uint64_t sub_21543EBA0(uint64_t result, void *a2, uint64_t a3, SEL *a4)
{
  if (result)
  {
    sub_215324EEC(a3, v15, &qword_27CA5ABC0);
    v6 = v16;
    if (v16)
    {
      v7 = __swift_project_boxed_opaque_existential_0Tm(v15, v16);
      v8 = *(v6 - 8);
      v9 = MEMORY[0x28223BE20](v7);
      v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);
      v12 = sub_2154A2F8C();
      (*(v8 + 8))(v11, v6);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
    }

    else
    {
      v12 = 0;
    }

    v13 = type metadata accessor for AudioAttachmentView();
    v14.receiver = a2;
    v14.super_class = v13;
    objc_msgSendSuper2(&v14, *a4, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21543ED38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v12 = a1;
    swift_unknownObjectRetain();
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v15, 0, sizeof(v15));
    v13 = a1;
  }

  sub_21543E9D4(v15, a4, a5, a6, a7);

  return sub_2151ADCD8(v15, &qword_27CA5ABC0);
}

void sub_21543EDE8()
{
  v1 = [v0 attachment];
  if (v1)
  {
    v13 = v1;
    v2 = [v0 textView];
    if (v2 && (v3 = v2, v12 = [v2 icTextLayoutManager], v3, v12))
    {
      v4 = [v13 rangeInNote];
      v6 = [v12 ic:v4 textRangeForRange:v5];
      if (v6)
      {
        v7 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2154BDB20;
        *(inited + 32) = v7;
        v9 = v7;
        sub_21532B7F0(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_2151A6C9C(0, &qword_27CA5A7F0);
        sub_21544F87C();
        v10 = sub_2154A20BC();

        [v12 invalidateLayoutForRanges_];

        return;
      }

      v11 = v12;
    }

    else
    {
      v11 = v13;
    }
  }
}

id sub_21543EFFC()
{
  result = *(v0 + OBJC_IVAR___ICAudioAttachmentView_hostingView);
  if (result)
  {
    result = [result accessibilityElements];
    if (result)
    {
      v2 = result;
      v3 = sub_2154A1F4C();

      if (*(v3 + 16) == 1)
      {
        sub_21533FC88(v3 + 32, v5);

        sub_2151A6C9C(0, &qword_281199490);
        if (swift_dynamicCast())
        {
          return v4;
        }

        else
        {
          return 0;
        }
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

id AudioAttachmentView.__allocating_init(frame:textAttachment:textContainer:forManualRendering:)(void *a1, void *a2, char a3, double a4, double a5, double a6, double a7)
{
  v10 = [objc_allocWithZone(v7) initWithFrame:a1 textAttachment:a2 textContainer:a3 & 1 forManualRendering:{a4, a5, a6, a7}];

  return v10;
}

id AudioAttachmentView.init(frame:textAttachment:textContainer:forManualRendering:)(void *a1, void *a2, char a3, double a4, double a5, double a6, double a7)
{
  v9 = sub_21544C5BC(a1, a2, a3, a4, a5, a6, a7);

  return v9;
}

id AudioAttachmentView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AudioAttachmentView.init(coder:)(void *a1)
{
  v1[OBJC_IVAR___ICAudioAttachmentView_needsRelayoutWhenMovingToWindow] = 0;
  *&v1[OBJC_IVAR___ICAudioAttachmentView_hostingView] = 0;
  *&v1[OBJC_IVAR___ICAudioAttachmentView_attachmentObserver] = 0;
  v3 = OBJC_IVAR___ICAudioAttachmentView_brickDelegate;
  type metadata accessor for AttachmentBrickDelegate(0);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v4 + 24) = 0x4074700000000000;
  *(v4 + 32) = sub_2154A0D1C();
  sub_21549EDCC();
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR___ICAudioAttachmentView_summaryViewModel] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AudioAttachmentView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id AudioAttachmentView.__allocating_init(textAttachment:textContainer:forManualRendering:)(void *a1, void *a2, char a3)
{
  v6 = [objc_allocWithZone(v3) initWithTextAttachment:a1 textContainer:a2 forManualRendering:a3 & 1];

  return v6;
}

id AudioAttachmentView.init(textAttachment:textContainer:forManualRendering:)(void *a1, void *a2, char a3)
{
  v5 = sub_21544C700(a1, a2, a3);

  return v5;
}

id AudioAttachmentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioAttachmentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21543F55C()
{
  swift_getKeyPath();
  sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate);
  sub_21549ED9C();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_21543F600@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate);
  sub_21549ED9C();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_21543F6AC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate);
    sub_21549ED8C();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_2151A6C9C(0, &unk_2811996C0);
  v3 = v2;
  v4 = sub_2154A291C();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

double sub_21543F854()
{
  swift_getKeyPath();
  sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate);
  sub_21549ED9C();

  return *(v0 + 24);
}

double sub_21543F8F4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate);
  sub_21549ED9C();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

void sub_21543F99C(double a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate);
    sub_21549ED8C();
  }
}

uint64_t sub_21543FAB4()
{
  swift_getKeyPath();
  sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate);
  sub_21549ED9C();
}

uint64_t sub_21543FB58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate);
  sub_21549ED9C();

  *a2 = *(v3 + 32);
}

uint64_t sub_21543FC04(uint64_t a1)
{

  v3 = sub_2154A0CEC();

  if (v3)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate);
    sub_21549ED8C();
  }
}

uint64_t objectdestroy_2Tm_1()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21543FDF0()
{
  MEMORY[0x21606B640](v0 + 16);

  v1 = OBJC_IVAR____TtC11NotesEditor23AttachmentBrickDelegate___observationRegistrar;
  v2 = sub_21549EDDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21543FE9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2154A00DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AudioPlayerView(0);
  sub_215324EEC(v1 + *(v10 + 32), v9, &qword_27CA5E2C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2154A023C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2154A227C();
    v13 = sub_2154A068C();
    sub_21549F07C();

    sub_2154A00CC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_2154400A4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_getKeyPath();
    sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate);
    sub_21549ED9C();

    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      v6 = [v5 textLayoutManager];

      if (v6)
      {
        v7 = [a2 rangeInNote];
        v9 = [v6 ic:v7 textRangeForRange:v8];
        if (v9)
        {
          v10 = v9;
          [v6 invalidateLayoutForRange_];

          v6 = v10;
        }
      }
    }
  }
}

uint64_t sub_2154401FC()
{
  v1 = sub_21549E5CC();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x28223BE20](v1);
  v43 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_21549E5FC();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21549E6AC();
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  MEMORY[0x28223BE20](v17);
  v48 = &v40 - v18;
  v20 = *(v0 + 16);
  v19 = *(v0 + 24);
  v52 = v20;
  v53 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
  sub_2154A0DEC();
  v21 = v51;
  swift_getKeyPath();
  v52 = v21;
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v22 = *(v21 + 16);

  if (v22 == 1)
  {
    v52 = v20;
    v53 = v19;
    sub_2154A0DEC();
    v23 = *(v51 + 24);

    v24 = [v23 creationDate];

    if (v24)
    {
      sub_21549E66C();

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v30 = v49;
    v29 = v50;
    v31 = v48;
    (*(v50 + 56))(v16, v25, 1, v4);
  }

  else
  {
    v52 = v20;
    v53 = v19;
    sub_2154A0DEC();
    v26 = *(v51 + 24);

    v27 = [v26 modificationDate];

    if (v27)
    {
      sub_21549E66C();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v30 = v49;
    v29 = v50;
    v31 = v48;
    (*(v50 + 56))(v13, v28, 1, v4);
    v16 = v13;
  }

  sub_21533FB7C(v16, v31, &unk_27CA5EA60);
  sub_215324EEC(v31, v10, &unk_27CA5EA60);
  if ((*(v29 + 48))(v10, 1, v4) == 1)
  {
    sub_2151ADCD8(v31, &unk_27CA5EA60);
    v32 = v10;
LABEL_14:
    sub_2151ADCD8(v32, &unk_27CA5EA60);
    return 0;
  }

  (*(v29 + 32))(v30, v10, v4);
  v33 = v47;
  sub_21549E60C();
  sub_21544CBEC(&qword_27CA5AEC8, MEMORY[0x277CC9578]);
  v34 = sub_2154A1D1C();
  v35 = *(v29 + 8);
  v35(v33, v4);
  if (v34)
  {
    v35(v30, v4);
    v32 = v31;
    goto LABEL_14;
  }

  v37 = v41;
  sub_21549E5DC();
  v38 = v43;
  sub_21549E5BC();
  v39 = sub_21549E68C();
  (*(v45 + 8))(v38, v46);
  (*(v42 + 8))(v37, v44);
  v35(v30, v4);
  sub_2151ADCD8(v31, &unk_27CA5EA60);
  return v39;
}

id sub_215440890(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v5 setAllowedUnits_];
  result = [v5 setUnitsStyle_];
  *a3 = v5;
  return result;
}

uint64_t sub_215440900(double a1)
{
  if (a1 >= 60.0)
  {
    if (qword_27CA59908 != -1)
    {
      swift_once();
    }

    v1 = [qword_27CA5DF90 stringFromTimeInterval_];
    if (v1)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (qword_27CA59910 != -1)
  {
    swift_once();
  }

  v1 = [qword_27CA5DF98 stringFromTimeInterval_];
  if (!v1)
  {
    return 0;
  }

LABEL_5:
  v2 = v1;
  v3 = sub_2154A1D6C();

  return v3;
}

uint64_t sub_215440A14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
  sub_2154A0DEC();
  swift_getKeyPath();
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v0 = *(v30 + 128);
  v1 = *(v30 + 144);

  if (v1 > 2)
  {
    if ((v1 - 3) >= 2)
    {
      v20 = sub_2154401FC();
      if (v22)
      {
        sub_2153A24C8(v20, v21, 0, v22);
        return 0;
      }

      v24 = objc_opt_self();
      v25 = sub_2154A1D2C();
      v26 = [v24 localizedFrameworkStringForKey:v25 value:0 table:0 allowSiri:1];

      sub_2154A1D6C();
    }

    else
    {
      sub_2154A317C();
      sub_2154A316C();
    }

    sub_215324954();
  }

  else if ((v1 - 1) >= 2)
  {
    v15 = sub_215440900(v0);
    v17 = v16;
    sub_2154A0DEC();
    swift_getKeyPath();
    sub_21549ED9C();

    v18 = *(v30 + 16);

    if (v18 == 1)
    {
      sub_2154A0DEC();
      swift_getKeyPath();
      sub_21549ED9C();
    }

    v19 = objc_opt_self();
    v27 = sub_2154A1D2C();
    v28 = [v19 localizedFrameworkStringForKey:v27 value:0 table:0 allowSiri:1];

    sub_2154A1D6C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6D0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2154BDB50;
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = sub_215333D20();
    *(v29 + 32) = v15;
    *(v29 + 40) = v17;
    sub_2154A1D3C();

    sub_215324954();
  }

  else
  {
    sub_2154A317C();
    v2 = sub_2154A316C();
    v4 = v3;
    sub_2154A317C();
    v5 = sub_2154A316C();
    v7 = v6;
    v8 = objc_opt_self();
    v9 = sub_2154A1D2C();
    v10 = sub_2154A1D2C();
    v11 = [v8 localizedFrameworkStringForKey:v9 value:v10 table:0 allowSiri:1];

    sub_2154A1D6C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6D0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2154BDB40;
    v13 = MEMORY[0x277D837D0];
    *(v12 + 56) = MEMORY[0x277D837D0];
    v14 = sub_215333D20();
    *(v12 + 32) = v2;
    *(v12 + 40) = v4;
    *(v12 + 96) = v13;
    *(v12 + 104) = v14;
    *(v12 + 64) = v14;
    *(v12 + 72) = v5;
    *(v12 + 80) = v7;
    sub_2154A1D3C();

    sub_215324954();
  }

  return sub_2154A092C();
}

uint64_t sub_215440FB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
  sub_2154A0DEC();
  swift_getKeyPath();
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v0 = *(v7 + 88);

  if (!v0 || (, (sub_2154411E8() & 1) == 0))
  {
    sub_2154A0DEC();
    swift_getKeyPath();
    sub_21549ED9C();

    v1 = *(v7 + 104);

    if (!v1)
    {
      return 0;
    }

    if (!sub_215441418())
    {
      return 0;
    }
  }

  v2 = objc_opt_self();
  v3 = sub_2154A1D2C();
  v4 = [v2 localizedFrameworkStringForKey:v3 value:0 table:0 allowSiri:1];

  v5 = sub_2154A1D6C();
  return v5;
}

uint64_t sub_2154411E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
  sub_2154A0DEC();
  swift_getKeyPath();
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v0 = *(v11 + 128);
  v1 = *(v11 + 136);
  v2 = *(v11 + 144);

  if (v2 == 5 && (v1 | v0) == 0)
  {
    return 0;
  }

  sub_2154A0DEC();
  swift_getKeyPath();
  sub_21549ED9C();

  v4 = *(v11 + 144);

  if ((v4 - 3) < 2)
  {
    return 0;
  }

  sub_2154A0DEC();
  swift_getKeyPath();
  sub_21549ED9C();

  v6 = *(v11 + 80);
  v5 = *(v11 + 88);

  if (!v5)
  {
    return 0;
  }

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v7 && (v8 = [objc_opt_self() sharedInstance], v9 = objc_msgSend(v8, sel_supportsOnDeviceSummary), v8, (v9 & 1) != 0))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_215441418()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 supportsGeneralASR];

  if ((v1 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
    sub_2154A0DEC();
    swift_getKeyPath();
    sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
    sub_21549ED9C();

    v2 = *(v11 + 16);

    if (v2 != 1)
    {
      return 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
  sub_2154A0DEC();
  swift_getKeyPath();
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v3 = *(v11 + 128);
  v4 = *(v11 + 136);
  v5 = *(v11 + 144);

  if (v5 == 5 && !(v4 | v3))
  {
    return 0;
  }

  sub_2154A0DEC();
  swift_getKeyPath();
  sub_21549ED9C();

  v6 = *(v11 + 144);

  if ((v6 - 3) < 2)
  {
    return 0;
  }

  sub_2154A0DEC();
  swift_getKeyPath();
  sub_21549ED9C();

  v8 = *(v11 + 96);
  v7 = *(v11 + 104);

  if (!v7)
  {
    return 0;
  }

  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  return v9 != 0;
}

uint64_t sub_2154416EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E488);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v40[-v9];
  v43 = sub_215440FB0();
  v44 = v11;
  sub_215324954();
  v12 = sub_2154A092C();
  v14 = v13;
  v41 = v15;
  v17 = v16;
  sub_2154A0D5C();
  v42 = a1;
  sub_2154A041C();
  KeyPath = swift_getKeyPath();
  v19 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E490) + 36)];
  *v19 = KeyPath;
  *(v19 + 1) = 5;
  v19[16] = 0;
  v20 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E498) + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF70) + 28);
  v22 = *MEMORY[0x277CE1050];
  v23 = sub_2154A0D9C();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4A0) + 36)] = 256;
  LOBYTE(v22) = sub_2154A072C();
  sub_21549F99C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4A8) + 36)];
  *v32 = v22;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  LOBYTE(v22) = sub_2154A06FC();
  sub_21549F99C();
  v33 = &v10[*(v5 + 44)];
  *v33 = v22;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  sub_215324EEC(v10, v7, &qword_27CA5E488);
  *a2 = v12;
  *(a2 + 8) = v14;
  LOBYTE(v22) = v41 & 1;
  *(a2 + 16) = v41 & 1;
  *(a2 + 24) = v17;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4B0);
  sub_215324EEC(v7, a2 + *(v38 + 48), &qword_27CA5E488);
  sub_21539227C(v12, v14, v22);

  sub_2151ADCD8(v10, &qword_27CA5E488);
  sub_2151ADCD8(v7, &qword_27CA5E488);
  sub_215354880(v12, v14, v22);
}

uint64_t sub_215441A20()
{
  v0 = sub_2154A01AC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2154A042C();
  v3 = v2;
  v5 = v4;
  sub_2154A019C();
  sub_2154A018C();
  sub_2154A015C();
  sub_2154A018C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
  sub_2154A0DEC();
  swift_getKeyPath();
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  sub_2154A017C();

  sub_2154A018C();
  sub_2154A01CC();
  v6 = sub_2154A090C();
  sub_215354880(v1, v3, v5 & 1);

  return v6;
}

uint64_t sub_215441C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4B8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v37[-v9];
  v39 = sub_215440FB0();
  v40 = v11;
  sub_215324954();
  v12 = sub_2154A092C();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_2154A0D5C();
  v38 = a1;
  sub_2154A041C();
  KeyPath = swift_getKeyPath();
  v20 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E490) + 36)];
  *v20 = KeyPath;
  *(v20 + 1) = 2;
  v20[16] = 0;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4C0) + 36)] = 256;
  LOBYTE(KeyPath) = sub_2154A072C();
  sub_21549F99C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4C8) + 36)];
  *v29 = KeyPath;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  LOBYTE(KeyPath) = sub_2154A06FC();
  sub_21549F99C();
  v30 = &v10[*(v5 + 44)];
  *v30 = KeyPath;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  sub_215324EEC(v10, v7, &qword_27CA5E4B8);
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v18;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4D0);
  sub_215324EEC(v7, a2 + *(v35 + 48), &qword_27CA5E4B8);
  sub_21539227C(v12, v14, v16 & 1);

  sub_2151ADCD8(v10, &qword_27CA5E4B8);
  sub_2151ADCD8(v7, &qword_27CA5E4B8);
  sub_215354880(v12, v14, v16 & 1);
}

uint64_t sub_215441EF4()
{
  v0 = sub_2154A01AC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2154A042C();
  v3 = v2;
  v5 = v4;
  sub_2154A019C();
  sub_2154A018C();
  sub_21544204C();
  sub_2154A017C();

  sub_2154A018C();
  sub_2154A01CC();
  v6 = sub_2154A090C();
  sub_215354880(v1, v3, v5 & 1);

  return v6;
}

uint64_t sub_21544204C()
{
  v1 = sub_21549E15C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  v23 = *(v0 + 16);
  v24 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
  sub_2154A0DEC();
  v6 = v27;
  swift_getKeyPath();
  v23 = v6;
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v7 = *(v6 + 104);

  if (!v7)
  {
    return 0;
  }

  v8 = sub_2154A1DBC();
  v10 = v9;

  v23 = v8;
  v24 = v10;
  sub_21549E14C();
  sub_215324954();
  v11 = sub_2154A2B8C();
  v13 = v12;
  (*(v2 + 8))(v4, v1);

  v28 = v11;
  v29 = v13;
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v11;
  v24 = v13;
  v25 = 0;
  v26 = v14;

  v15 = 0;
  v16 = 0;
  do
  {
    while (1)
    {
      v17 = sub_2154A1E8C();
      if (!v18)
      {
        goto LABEL_19;
      }

      if (v17 == 10 && v18 == 0xE100000000000000)
      {

        goto LABEL_13;
      }

      v19 = sub_2154A2FAC();

      if ((v19 & 1) == 0)
      {
        break;
      }

LABEL_13:
      sub_2154A1E3C();
      sub_2154A1E7C();

      if (v16)
      {
        sub_2154A1E3C();
        sub_2154A1E6C();
      }

      else
      {
        v21 = __OFSUB__(v15--, 1);
        if (v21)
        {
          goto LABEL_22;
        }
      }

      v16 ^= 1u;
      v21 = __OFADD__(v15++, 1);
      if (v21)
      {
        __break(1u);
LABEL_19:

        return v28;
      }
    }

    v21 = __OFADD__(v15++, 1);
  }

  while (!v21);
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_215442328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E0C8);
  MEMORY[0x28223BE20](v49);
  v50 = &v48 - v3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E538);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v51 = &v48 - v4;
  v5 = sub_2154A023C();
  v52 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E540);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E548);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E550);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v48 - v24;
  *v15 = sub_2154A026C();
  *(v15 + 8) = 0x4000000000000000;
  *(v15 + 16) = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E558);
  sub_215442940(a1, v15 + *(v26 + 44));
  sub_2154A0FAC();
  sub_21549FE4C();
  sub_21533FB7C(v15, v22, &qword_27CA5E548);
  v27 = &v22[*(v17 + 44)];
  v28 = v62;
  *(v27 + 4) = v61;
  *(v27 + 5) = v28;
  *(v27 + 6) = v63;
  v29 = v58;
  *v27 = v57;
  *(v27 + 1) = v29;
  v30 = v60;
  *(v27 + 2) = v59;
  *(v27 + 3) = v30;
  sub_21533FB7C(v22, v25, &qword_27CA5E550);
  v31 = a1;
  v32 = v52;
  sub_21543FE9C(v7);
  LOBYTE(v15) = sub_2154A022C();
  v33 = *(v32 + 8);
  v33(v7, v5);
  v34 = 1;
  if ((v15 & 1) == 0)
  {
    v35 = v50;
    sub_215446BA8(v31, v50);
    (*(v32 + 104))(v7, *MEMORY[0x277CE0278], v5);
    sub_21544CD68();
    v36 = v51;
    sub_2154A093C();
    v33(v7, v5);
    sub_2151ADCD8(v35, &qword_27CA5E0C8);
    *(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E560) + 36)) = 0x3FF0000000000000;
    v37 = sub_2154A06FC();
    sub_21549F99C();
    v38 = v36 + *(v56 + 36);
    *v38 = v37;
    *(v38 + 8) = v39;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    *(v38 + 32) = v42;
    *(v38 + 40) = 0;
    sub_21533FB7C(v36, v12, &qword_27CA5E538);
    v34 = 0;
  }

  (*(v54 + 56))(v12, v34, 1, v56);
  sub_215324EEC(v25, v19, &qword_27CA5E550);
  v43 = v53;
  sub_215324EEC(v12, v53, &qword_27CA5E540);
  v44 = v55;
  sub_215324EEC(v19, v55, &qword_27CA5E550);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E568);
  v46 = v44 + *(v45 + 48);
  *v46 = 0;
  *(v46 + 8) = 1;
  sub_215324EEC(v43, v44 + *(v45 + 64), &qword_27CA5E540);
  sub_2151ADCD8(v12, &qword_27CA5E540);
  sub_2151ADCD8(v25, &qword_27CA5E550);
  sub_2151ADCD8(v43, &qword_27CA5E540);
  return sub_2151ADCD8(v19, &qword_27CA5E550);
}

uint64_t sub_215442940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E570);
  v131 = *(v3 - 8);
  v132 = v3;
  MEMORY[0x28223BE20](v3);
  v110 = (&v104 - v4);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E0C8);
  MEMORY[0x28223BE20](v104);
  v105 = &v104 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E0B8);
  v108 = *(v6 - 8);
  v109 = v6;
  MEMORY[0x28223BE20](v6);
  v107 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v106 = &v104 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E578);
  MEMORY[0x28223BE20](v10 - 8);
  v133 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v141 = &v104 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E580);
  v118 = *(v14 - 8);
  v119 = v14;
  MEMORY[0x28223BE20](v14);
  v117 = &v104 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E588);
  MEMORY[0x28223BE20](v16 - 8);
  v130 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v127 = &v104 - v19;
  MEMORY[0x28223BE20](v20);
  v143 = &v104 - v21;
  v22 = sub_2154A023C();
  v135 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E590);
  *&v139 = *(v25 - 8);
  *(&v139 + 1) = v25;
  MEMORY[0x28223BE20](v25);
  v138 = &v104 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E598);
  v28 = v27 - 8;
  MEMORY[0x28223BE20](v27);
  v140 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v104 - v31;
  MEMORY[0x28223BE20](v33);
  v142 = &v104 - v34;
  v35 = *(a1 + 16);
  v115 = *(a1 + 24);
  v116 = v35;
  *&v149 = v35;
  *(&v149 + 1) = v115;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
  sub_2154A0DEC();
  v36 = v145;
  swift_getKeyPath();
  *&v149 = v36;
  v113 = sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v38 = *(v36 + 152);
  v37 = *(v36 + 160);

  sub_21543FE9C(v24);
  v39 = sub_2154A022C();
  v40 = *(v135 + 8);
  v128 = v24;
  v129 = v22;
  v120 = v40;
  v121 = v135 + 8;
  v40(v24, v22);
  if (v39)
  {
    v41 = 2;
  }

  else
  {
    v41 = 1;
  }

  KeyPath = swift_getKeyPath();
  v43 = sub_2154A075C();
  v44 = swift_getKeyPath();
  v160 = 0;
  v159 = 0;
  *&v149 = v38;
  *(&v149 + 1) = v37;
  LOBYTE(v150) = 0;
  *(&v150 + 1) = MEMORY[0x277D84F90];
  *&v151 = KeyPath;
  *(&v151 + 1) = v41;
  LOBYTE(v152) = 0;
  *(&v152 + 1) = v44;
  v153 = v43;
  sub_2154A07CC();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E5A0);
  v46 = sub_21544F6EC();
  v47 = v138;
  v111 = v46;
  v112 = v45;
  sub_2154A09BC();
  v157[2] = v151;
  v157[3] = v152;
  v158 = v153;
  v157[0] = v149;
  v157[1] = v150;
  sub_2151ADCD8(v157, &qword_27CA5E5A0);
  LODWORD(KeyPath) = sub_2154A049C();
  (*(v139 + 32))(v32, v47, *(&v139 + 1));
  v48 = a1;
  *&v32[*(v28 + 44)] = KeyPath;
  sub_21533FB7C(v32, v142, &qword_27CA5E598);
  v49 = sub_2154401FC();
  v126 = v51;
  if (v51)
  {
    v124 = v50;
    v125 = v49;
    v123 = swift_getKeyPath();
    v122 = sub_2154A082C();
    v52 = swift_getKeyPath();
    LOBYTE(v149) = 0;
    LOBYTE(v145) = 0;
    v137 = 0;
    *&v139 = 0;
    *(&v139 + 1) = v52;
    LODWORD(v138) = sub_2154A04BC();
    v136 = 1;
  }

  else
  {
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v136 = 0;
    v137 = 0;
    v139 = 0uLL;
    LODWORD(v138) = 0;
  }

  v53 = sub_215440A14();
  v57 = v129;
  if (v56)
  {
    v58 = v53;
    v59 = v54;
    v60 = v55;
    v61 = v56;
    v62 = swift_getKeyPath();
    v63 = sub_2154A082C();
    v64 = swift_getKeyPath();
    v156 = v60 & 1;
    v155 = 0;
    *&v145 = v58;
    *(&v145 + 1) = v59;
    LOBYTE(v146) = v60 & 1;
    *(&v146 + 1) = v61;
    *&v147 = v62;
    *(&v147 + 1) = 1;
    LOBYTE(v148[0]) = 0;
    *(&v148[0] + 1) = v64;
    *&v148[1] = v63;
    v65 = v117;
    sub_2154A0A6C();
    v152 = v148[0];
    v153 = *&v148[1];
    v150 = v146;
    v151 = v147;
    v149 = v145;
    sub_2151ADCD8(&v149, &qword_27CA5E5A0);
    *&v145 = v116;
    *(&v145 + 1) = v115;
    sub_2154A0DEC();
    v66 = v144;
    swift_getKeyPath();
    *&v145 = v66;
    sub_21549ED9C();

    LODWORD(v58) = *(v66 + 144);

    if (v58 == 3)
    {
      v67 = sub_2154A0CFC();
    }

    else
    {
      v67 = sub_2154A0D5C();
    }

    v71 = v67;
    v69 = v127;
    v70 = v128;
    (*(v118 + 32))(v127, v65, v119);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E5C0);
    *(v69 + *(v72 + 36)) = v71;
    (*(*(v72 - 8) + 56))(v69, 0, 1, v72);
  }

  else
  {
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E5C0);
    v69 = v127;
    (*(*(v68 - 8) + 56))(v127, 1, 1, v68);
    v70 = v128;
  }

  sub_21533FB7C(v69, v143, &qword_27CA5E588);
  sub_21543FE9C(v70);
  v73 = sub_2154A022C();
  v74 = v120;
  v120(v70, v57);
  if (v73)
  {
    v75 = v105;
    sub_215446BA8(v48, v105);
    (*(v135 + 104))(v70, *MEMORY[0x277CE0278], v57);
    sub_21544CD68();
    v76 = v106;
    sub_2154A093C();
    v74(v70, v57);
    sub_2151ADCD8(v75, &qword_27CA5E0C8);
    v78 = v107;
    v77 = v108;
    v79 = *(v108 + 16);
    v80 = v109;
    v79(v107, v76, v109);
    v81 = v110;
    *v110 = 0x4010000000000000;
    *(v81 + 8) = 0;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E5D8);
    v79(v81 + *(v82 + 48), v78, v80);
    v83 = v81 + *(v82 + 64);
    *v83 = 0x4010000000000000;
    v83[8] = 0;
    v84 = *(v77 + 8);
    v84(v76, v80);
    v84(v78, v80);
    v85 = v81;
    v86 = v141;
    sub_21533FB7C(v85, v141, &qword_27CA5E570);
    v87 = 0;
  }

  else
  {
    v87 = 1;
    v86 = v141;
  }

  (*(v131 + 56))(v86, v87, 1, v132);
  v88 = v140;
  sub_215324EEC(v142, v140, &qword_27CA5E598);
  v89 = v130;
  sub_215324EEC(v143, v130, &qword_27CA5E588);
  v90 = v86;
  v91 = v133;
  sub_215324EEC(v90, v133, &qword_27CA5E578);
  v92 = v134;
  sub_215324EEC(v88, v134, &qword_27CA5E598);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E5C8);
  v94 = (v92 + v93[12]);
  v95 = v124;
  v96 = v125;
  *&v145 = v125;
  *(&v145 + 1) = v124;
  v97 = v126;
  *&v146 = v137;
  *(&v146 + 1) = v126;
  v99 = v122;
  v98 = v123;
  *&v147 = v123;
  *(&v147 + 1) = v136;
  v148[0] = v139;
  *&v148[1] = v122;
  DWORD2(v148[1]) = v138;
  v100 = v146;
  *v94 = v145;
  v94[1] = v100;
  v101 = v148[0];
  v94[2] = v147;
  v94[3] = v101;
  *(v94 + 60) = *(v148 + 12);
  sub_215324EEC(v89, v92 + v93[16], &qword_27CA5E588);
  v102 = v92 + v93[20];
  *v102 = 0;
  *(v102 + 8) = 0;
  sub_215324EEC(v91, v92 + v93[24], &qword_27CA5E578);
  sub_215324EEC(&v145, &v149, &qword_27CA5E5D0);
  sub_2151ADCD8(v141, &qword_27CA5E578);
  sub_2151ADCD8(v143, &qword_27CA5E588);
  sub_2151ADCD8(v142, &qword_27CA5E598);
  sub_2151ADCD8(v91, &qword_27CA5E578);
  sub_2151ADCD8(v89, &qword_27CA5E588);
  *&v149 = v96;
  *(&v149 + 1) = v95;
  *&v150 = v137;
  *(&v150 + 1) = v97;
  *&v151 = v98;
  *(&v151 + 1) = v136;
  v152 = v139;
  v153 = v99;
  v154 = v138;
  sub_2151ADCD8(&v149, &qword_27CA5E5D0);
  return sub_2151ADCD8(v140, &qword_27CA5E598);
}

uint64_t AudioPlayerView.body.getter@<X0>(char *a1@<X8>)
{
  v148 = a1;
  v141 = sub_2154A021C();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v126 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v137 = &v126 - v4;
  v151 = sub_2154A059C();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v134 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21549FE2C();
  MEMORY[0x28223BE20](v6);
  v129 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFD8);
  MEMORY[0x28223BE20](v131);
  v9 = &v126 - v8;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFE0);
  v133 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v130 = &v126 - v10;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFE8);
  MEMORY[0x28223BE20](v155);
  v132 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v152 = &v126 - v13;
  MEMORY[0x28223BE20](v14);
  v136 = &v126 - v15;
  MEMORY[0x28223BE20](v16);
  v149 = &v126 - v17;
  MEMORY[0x28223BE20](v18);
  v138 = &v126 - v19;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFF0);
  v145 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v154 = &v126 - v20;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFF8);
  v144 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v142 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v143 = &v126 - v23;
  *v9 = sub_2154A026C();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E000);
  sub_215444934(v1, &v9[*(v24 + 44)]);
  v153 = v1;
  v25 = *v1;
  swift_getKeyPath();
  v26 = OBJC_IVAR____TtC11NotesEditor23AttachmentBrickDelegate___observationRegistrar;
  *&v158 = v25;
  v27 = sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate);
  v128 = v26;
  v127 = v27;
  sub_21549ED9C();

  sub_2154A0FAC();
  sub_21549FAFC();
  v28 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E010) + 36)];
  v29 = v159;
  *v28 = v158;
  *(v28 + 1) = v29;
  *(v28 + 2) = v160;
  v30 = sub_2154A0D4C();
  KeyPath = swift_getKeyPath();
  v32 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E018) + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  if (qword_27CA59900 != -1)
  {
    swift_once();
  }

  v33 = qword_27CA5DF88;
  v34 = sub_2154A06DC();
  v35 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E020) + 36)];
  *v35 = v33;
  v35[8] = v34;
  v36 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E028) + 36)];
  v37 = *(v6 + 20);
  v38 = *MEMORY[0x277CE0118];
  v39 = sub_2154A01DC();
  v40 = *(*(v39 - 8) + 104);
  v40(&v36[v37], v38, v39);
  __asm { FMOV            V0.2D, #16.0 }

  v126 = _Q0;
  *v36 = _Q0;
  *&v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B9E8) + 36)] = 256;
  v46 = v129;
  v40(&v129[*(v6 + 20)], v38, v39);
  *v46 = v126;
  swift_getKeyPath();
  v164 = v25;

  sub_21549ED9C();

  v47 = *(v25 + 32);

  sub_21549FA3C();
  v48 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E030) + 36)];
  sub_21544E284(v46, v48, MEMORY[0x277CDFC08]);
  v49 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E038) + 36);
  v50 = v162;
  *v49 = v161;
  *(v49 + 16) = v50;
  *(v49 + 32) = v163;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E040);
  *(v48 + *(v51 + 52)) = v47;
  *(v48 + *(v51 + 56)) = 256;
  v52 = sub_2154A0FAC();
  v54 = v53;
  sub_21544C7F4(v46, MEMORY[0x277CDFC08]);
  v55 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E048) + 36));
  *v55 = v52;
  v55[1] = v54;
  v56 = sub_2154A0FAC();
  v58 = v57;
  v59 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E050) + 36));
  *v59 = v56;
  v59[1] = v58;
  LOBYTE(v56) = sub_2154A06FC();
  sub_21549F99C();
  v60 = v131;
  v61 = &v9[*(v131 + 36)];
  *v61 = v56;
  *(v61 + 1) = v62;
  *(v61 + 2) = v63;
  *(v61 + 3) = v64;
  *(v61 + 4) = v65;
  v61[40] = 0;
  v66 = v134;
  sub_2154A058C();
  v67 = sub_21544F1A4(&qword_27CA5E058, &qword_27CA5DFD8, &unk_2154C4FB0, sub_21544C854);
  v68 = v130;
  sub_2154A0B0C();
  (*(v150 + 8))(v66, v151);
  sub_2151ADCD8(v9, &qword_27CA5DFD8);
  v69 = v153;
  v164 = sub_215445E38();
  v165 = v70;
  v156 = v60;
  v157 = v67;
  swift_getOpaqueTypeConformance2();
  v71 = sub_215324954();
  v72 = v132;
  v73 = v135;
  v151 = v71;
  sub_2154A0AAC();

  (*(v133 + 8))(v68, v73);
  v164 = sub_2154464A8();
  v165 = v74;
  sub_21549FD7C();

  sub_2151ADCD8(v72, &qword_27CA5DFE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2B0);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_2154BDB50;
  v77 = v69[3];
  v164 = v69[2];
  v76 = v164;
  v165 = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
  sub_2154A0DEC();
  v79 = v156;
  swift_getKeyPath();
  v164 = v79;
  v80 = sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v81 = *(v79 + 152);
  v82 = *(v79 + 160);

  *(v75 + 32) = v81;
  *(v75 + 40) = v82;
  v83 = v136;
  v84 = v152;
  sub_21549FD9C();

  sub_2151ADCD8(v84, &qword_27CA5DFE8);
  v164 = v76;
  v165 = v77;
  v152 = v77;
  v151 = v78;
  sub_2154A0DEC();
  v85 = v156;
  swift_getKeyPath();
  v164 = v85;
  v150 = v80;
  sub_21549ED9C();

  v86 = *(v85 + 128);
  v87 = *(v85 + 136);
  v88 = *(v85 + 144);

  v89 = v83;
  if (v88 > 3)
  {
    v90 = v141;
    if (v88 != 4 && (v88 != 5 || v87 | v86))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v90 = v141;
    if (v88 && v88 != 2)
    {
LABEL_10:
      v91 = v137;
      sub_2154A01EC();
      goto LABEL_12;
    }
  }

  v164 = MEMORY[0x277D84F90];
  sub_21544CBEC(&qword_27CA5E0A0, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E0A8);
  sub_2151ACC5C(&qword_27CA5E0B0, &qword_27CA5E0A8);
  v91 = v137;
  sub_2154A2BEC();
LABEL_12:
  v92 = v140;
  v93 = v149;
  v94 = v89;
  sub_21549FD8C();
  v95 = *(v92 + 8);
  v95(v91, v90);
  sub_2151ADCD8(v94, &qword_27CA5DFE8);
  v164 = v76;
  v165 = v152;
  sub_2154A0DEC();
  v96 = v156;
  swift_getKeyPath();
  v164 = v96;
  sub_21549ED9C();

  v97 = *(v96 + 128);
  v98 = *(v96 + 136);
  v99 = *(v96 + 144);

  v135 = v76;
  if (v99 > 3)
  {
    if (v99 != 4 && (v99 != 5 || v98 | v97))
    {
      goto LABEL_19;
    }
  }

  else if (v99 && v99 != 2)
  {
LABEL_19:
    v164 = MEMORY[0x277D84F90];
    sub_21544CBEC(&qword_27CA5E0A0, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E0A8);
    sub_2151ACC5C(&qword_27CA5E0B0, &qword_27CA5E0A8);
    v100 = v139;
    v93 = v149;
    sub_2154A2BEC();
    goto LABEL_21;
  }

  v100 = v139;
  sub_2154A01EC();
LABEL_21:
  v101 = v138;
  sub_21549FDAC();
  v95(v100, v90);
  v102 = sub_2151ADCD8(v93, &qword_27CA5DFE8);
  MEMORY[0x28223BE20](v102);
  *(&v126 - 2) = v153;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E0B8);
  v104 = sub_21544CC3C();
  v105 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E0C8);
  v106 = sub_21544CD68();
  v164 = v105;
  v165 = v106;
  v107 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v109 = v103;
  sub_2154A0AFC();
  sub_2151ADCD8(v101, &qword_27CA5DFE8);
  if ((sub_2154411E8() & 1) == 0)
  {
    v107 = sub_215441418();
  }

  v110 = v107;
  v111 = sub_215440FB0();
  v113 = v112;
  v164 = v135;
  v165 = v152;
  sub_2154A0DEC();
  v114 = v156;
  swift_getKeyPath();
  v164 = v114;
  sub_21549ED9C();

  v116 = *(v114 + 80);
  v115 = *(v114 + 88);

  if (!v115)
  {
    v116 = sub_21544204C();
    v115 = v117;
  }

  v164 = v155;
  v165 = v109;
  v166 = v104;
  v167 = OpaqueTypeConformance2;
  v118 = swift_getOpaqueTypeConformance2();
  LOBYTE(v164) = v110;
  v165 = v111;
  v166 = v113;
  v167 = v116;
  v168 = v115;
  v119 = v142;
  v120 = v147;
  v121 = v154;
  MEMORY[0x216067790](&v164, v147, &type metadata for AccessibilityConditionalCustomContent, v118);

  (*(v145 + 8))(v121, v120);
  sub_21544D844();
  v122 = *(v144 + 16);
  v123 = v143;
  v124 = v146;
  v122(v143, v119, v146);
  sub_2151ADCD8(v119, &qword_27CA5DFF8);
  v122(v148, v123, v124);
  return sub_2151ADCD8(v123, &qword_27CA5DFF8);
}

uint64_t sub_215444934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E378);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E380);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E388);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v31 - v20;
  *v11 = sub_2154A026C();
  *(v11 + 1) = 0x4010000000000000;
  v11[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E390);
  sub_215444CA4(a1, &v11[*(v22 + 44)]);
  sub_2154A0FAC();
  sub_21549FE4C();
  sub_21533FB7C(v11, v18, &qword_27CA5E380);
  v23 = &v18[*(v13 + 44)];
  v24 = v38;
  *(v23 + 4) = v37;
  *(v23 + 5) = v24;
  *(v23 + 6) = v39;
  v25 = v34;
  *v23 = v33;
  *(v23 + 1) = v25;
  v26 = v36;
  *(v23 + 2) = v35;
  *(v23 + 3) = v26;
  sub_21533FB7C(v18, v21, &qword_27CA5E388);
  *v8 = sub_2154A026C();
  *(v8 + 1) = 0x4010000000000000;
  v8[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E398);
  sub_2154457FC(a1, &v8[*(v27 + 44)]);
  sub_215324EEC(v21, v15, &qword_27CA5E388);
  sub_215324EEC(v8, v5, &qword_27CA5E378);
  v28 = v32;
  sub_215324EEC(v15, v32, &qword_27CA5E388);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3A0);
  sub_215324EEC(v5, v28 + *(v29 + 48), &qword_27CA5E378);
  sub_2151ADCD8(v8, &qword_27CA5E378);
  sub_2151ADCD8(v21, &qword_27CA5E388);
  sub_2151ADCD8(v5, &qword_27CA5E378);
  return sub_2151ADCD8(v15, &qword_27CA5E388);
}

uint64_t sub_215444CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4D8);
  MEMORY[0x28223BE20](v127);
  v128 = &v114 - v3;
  v125 = sub_2154A0F3C();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v114 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v118 = &v114 - v6;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4E0);
  MEMORY[0x28223BE20](v123);
  v117 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v120 = &v114 - v9;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4E8);
  MEMORY[0x28223BE20](v126);
  v115 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v116 = &v114 - v12;
  MEMORY[0x28223BE20](v13);
  v119 = &v114 - v14;
  MEMORY[0x28223BE20](v15);
  v121 = &v114 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4F0);
  MEMORY[0x28223BE20](v17 - 8);
  v131 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v130 = &v114 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4F8);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = &v114 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E500);
  MEMORY[0x28223BE20](v25);
  v129 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v114 - v31;
  *v24 = sub_2154A011C();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E508);
  sub_215442328(a1, &v24[*(v33 + 44)]);
  v34 = sub_2154A06EC();
  sub_21549F99C();
  v35 = &v24[*(v22 + 44)];
  *v35 = v34;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B2A8);
  inited = swift_initStackObject();
  v122 = xmmword_2154BDB40;
  *(inited + 16) = xmmword_2154BDB40;
  v41 = sub_2154A070C();
  *(inited + 32) = v41;
  v42 = sub_2154A072C();
  *(inited + 33) = v42;
  v43 = sub_2154A071C();
  sub_2154A071C();
  if (sub_2154A071C() != v41)
  {
    v43 = sub_2154A071C();
  }

  sub_2154A071C();
  if (sub_2154A071C() != v42)
  {
    v43 = sub_2154A071C();
  }

  sub_21549F99C();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_21533FB7C(v24, v29, &qword_27CA5E4F8);
  v52 = &v29[*(v25 + 36)];
  *v52 = v43;
  *(v52 + 1) = v45;
  *(v52 + 2) = v47;
  *(v52 + 3) = v49;
  *(v52 + 4) = v51;
  v52[40] = 0;
  v53 = v29;
  v54 = v32;
  sub_21533FB7C(v53, v32, &qword_27CA5E500);
  if (sub_2154411E8())
  {
    v55 = v118;
    sub_2154A0F2C();
    sub_2154A0FAC();
    sub_21549FE4C();
    v56 = v120;
    (*(v124 + 32))(v120, v55, v125);
    v57 = (v56 + *(v123 + 36));
    v58 = v136;
    v59 = v138;
    v60 = v139;
    v57[4] = v137;
    v57[5] = v59;
    v57[6] = v60;
    v61 = v134;
    v62 = v135;
    *v57 = v133;
    v57[1] = v61;
    v57[2] = v62;
    v57[3] = v58;
    v63 = swift_initStackObject();
    *(v63 + 16) = v122;
    v64 = sub_2154A070C();
    *(v63 + 32) = v64;
    v65 = sub_2154A072C();
    *(v63 + 33) = v65;
    v66 = sub_2154A071C();
    sub_2154A071C();
    v67 = sub_2154A071C();
    v68 = v130;
    if (v67 != v64)
    {
      v66 = sub_2154A071C();
    }

    sub_2154A071C();
    v69 = sub_2154A071C();
    v70 = v126;
    v71 = v121;
    if (v69 != v65)
    {
      v66 = sub_2154A071C();
    }

    sub_21549F99C();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = v119;
    sub_21533FB7C(v56, v119, &qword_27CA5E4E0);
    v81 = v80 + *(v70 + 36);
    *v81 = v66;
    *(v81 + 8) = v73;
    *(v81 + 16) = v75;
    *(v81 + 24) = v77;
    *(v81 + 32) = v79;
    *(v81 + 40) = 0;
    sub_21533FB7C(v80, v71, &qword_27CA5E4E8);
LABEL_17:
    sub_215324EEC(v71, v128, &qword_27CA5E4E8);
    swift_storeEnumTagMultiPayload();
    sub_21544F1A4(&qword_27CA5E520, &qword_27CA5E4E8, &unk_2154C5908, sub_21544F630);
    sub_2154A039C();
    sub_2151ADCD8(v71, &qword_27CA5E4E8);
    v83 = 0;
    goto LABEL_18;
  }

  v82 = sub_215441418();
  v83 = 1;
  v68 = v130;
  if (v82)
  {
    v84 = v114;
    sub_2154A0F2C();
    sub_2154A0FAC();
    sub_21549FE4C();
    v85 = v117;
    (*(v124 + 32))(v117, v84, v125);
    v86 = (v85 + *(v123 + 36));
    v87 = v136;
    v88 = v138;
    v89 = v139;
    v86[4] = v137;
    v86[5] = v88;
    v86[6] = v89;
    v90 = v134;
    v91 = v135;
    *v86 = v133;
    v86[1] = v90;
    v86[2] = v91;
    v86[3] = v87;
    v92 = swift_initStackObject();
    *(v92 + 16) = v122;
    v93 = sub_2154A070C();
    *(v92 + 32) = v93;
    v94 = sub_2154A072C();
    *(v92 + 33) = v94;
    v95 = sub_2154A071C();
    sub_2154A071C();
    if (sub_2154A071C() != v93)
    {
      v95 = sub_2154A071C();
    }

    sub_2154A071C();
    v96 = sub_2154A071C();
    v97 = v126;
    if (v96 != v94)
    {
      v95 = sub_2154A071C();
    }

    sub_21549F99C();
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v105 = v104;
    v106 = v115;
    sub_21533FB7C(v85, v115, &qword_27CA5E4E0);
    v107 = v106 + *(v97 + 36);
    *v107 = v95;
    *(v107 + 8) = v99;
    *(v107 + 16) = v101;
    *(v107 + 24) = v103;
    *(v107 + 32) = v105;
    *(v107 + 40) = 0;
    v71 = v116;
    sub_21533FB7C(v106, v116, &qword_27CA5E4E8);
    goto LABEL_17;
  }

LABEL_18:
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E510);
  (*(*(v108 - 8) + 56))(v68, v83, 1, v108);
  v109 = v129;
  sub_215324EEC(v54, v129, &qword_27CA5E500);
  v110 = v131;
  sub_215324EEC(v68, v131, &qword_27CA5E4F0);
  v111 = v132;
  sub_215324EEC(v109, v132, &qword_27CA5E500);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E518);
  sub_215324EEC(v110, v111 + *(v112 + 48), &qword_27CA5E4F0);
  sub_2151ADCD8(v68, &qword_27CA5E4F0);
  sub_2151ADCD8(v54, &qword_27CA5E500);
  sub_2151ADCD8(v110, &qword_27CA5E4F0);
  return sub_2151ADCD8(v109, &qword_27CA5E500);
}

uint64_t sub_2154457FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3A8);
  MEMORY[0x28223BE20](v4);
  v6 = &v73 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3B0);
  MEMORY[0x28223BE20](v7);
  v9 = &v73 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3B8);
  MEMORY[0x28223BE20](v10);
  v12 = &v73 - v11;
  if (sub_2154411E8())
  {
    *v12 = sub_2154A026C();
    *(v12 + 1) = 0x4018000000000000;
    v12[16] = 0;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E480);
    sub_2154416EC(a1, &v12[*(v13 + 44)]);
    v14 = sub_2154A082C();
    KeyPath = swift_getKeyPath();
    v16 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E430) + 36)];
    *v16 = KeyPath;
    v16[1] = v14;
    LODWORD(v14) = sub_2154A04BC();
    *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E420) + 36)] = v14;
    LOBYTE(v14) = sub_2154A070C();
    sub_21549F99C();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E410) + 36)];
    *v25 = v14;
    *(v25 + 1) = v18;
    *(v25 + 2) = v20;
    *(v25 + 3) = v22;
    *(v25 + 4) = v24;
    v25[40] = 0;
    LOBYTE(v14) = sub_2154A06FC();
    sub_21549F99C();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E400) + 36)];
    *v34 = v14;
    *(v34 + 1) = v27;
    *(v34 + 2) = v29;
    *(v34 + 3) = v31;
    *(v34 + 4) = v33;
    v34[40] = 0;
    LOBYTE(v14) = sub_2154A06EC();
    sub_21549F99C();
    v35 = &v12[*(v10 + 36)];
    *v35 = v14;
    *(v35 + 1) = v36;
    *(v35 + 2) = v37;
    *(v35 + 3) = v38;
    *(v35 + 4) = v39;
    v35[40] = 0;
    sub_215324EEC(v12, v9, &qword_27CA5E3B8);
    swift_storeEnumTagMultiPayload();
    sub_21544F1A4(&qword_27CA5E3F0, &qword_27CA5E3B8, &unk_2154C5800, sub_21544F228);
    sub_21544F1A4(&qword_27CA5E448, &qword_27CA5E3A8, &unk_2154C57F0, sub_21544F424);
    sub_2154A039C();
    v40 = v12;
    v41 = &qword_27CA5E3B8;
LABEL_5:
    sub_2151ADCD8(v40, v41);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3C0);
    return (*(*(v69 - 8) + 56))(a2, 0, 1, v69);
  }

  if (sub_215441418())
  {
    *v6 = sub_2154A026C();
    *(v6 + 1) = 0x4018000000000000;
    v6[16] = 0;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3C8);
    sub_215441C54(a1, &v6[*(v42 + 44)]);
    v43 = sub_2154A082C();
    v44 = swift_getKeyPath();
    v45 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3D0) + 36)];
    *v45 = v44;
    v45[1] = v43;
    LODWORD(v43) = sub_2154A04BC();
    *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3D8) + 36)] = v43;
    LOBYTE(v43) = sub_2154A070C();
    sub_21549F99C();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3E0) + 36)];
    *v54 = v43;
    *(v54 + 1) = v47;
    *(v54 + 2) = v49;
    *(v54 + 3) = v51;
    *(v54 + 4) = v53;
    v54[40] = 0;
    LOBYTE(v43) = sub_2154A06FC();
    sub_21549F99C();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v63 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3E8) + 36)];
    *v63 = v43;
    *(v63 + 1) = v56;
    *(v63 + 2) = v58;
    *(v63 + 3) = v60;
    *(v63 + 4) = v62;
    v63[40] = 0;
    LOBYTE(v43) = sub_2154A06EC();
    sub_21549F99C();
    v64 = &v6[*(v4 + 36)];
    *v64 = v43;
    *(v64 + 1) = v65;
    *(v64 + 2) = v66;
    *(v64 + 3) = v67;
    *(v64 + 4) = v68;
    v64[40] = 0;
    sub_215324EEC(v6, v9, &qword_27CA5E3A8);
    swift_storeEnumTagMultiPayload();
    sub_21544F1A4(&qword_27CA5E3F0, &qword_27CA5E3B8, &unk_2154C5800, sub_21544F228);
    sub_21544F1A4(&qword_27CA5E448, &qword_27CA5E3A8, &unk_2154C57F0, sub_21544F424);
    sub_2154A039C();
    v40 = v6;
    v41 = &qword_27CA5E3A8;
    goto LABEL_5;
  }

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3C0);
  v72 = *(*(v71 - 8) + 56);

  return v72(a2, 1, 1, v71);
}

uint64_t sub_215445E38()
{
  v1 = sub_21549E6AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v52[0] = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v52 - v8;
  v11 = *(v0 + 24);
  v56 = *(v0 + 16);
  v10 = v56;
  v57 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
  sub_2154A0DEC();
  v13 = v55;
  swift_getKeyPath();
  v56 = v13;
  v52[1] = sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v15 = *(v13 + 152);
  v14 = *(v13 + 160);

  v59 = v15;
  v60 = v14;
  v53 = v10;
  v54 = v11;
  v56 = v10;
  v57 = v11;
  v16 = v12;
  sub_2154A0DEC();
  v17 = *(v55 + 24);

  v18 = [v17 modificationDate];

  if (v18)
  {
    sub_21549E66C();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  (*(v2 + 56))(v6, v19, 1, v1);
  sub_21533FB7C(v6, v9, &unk_27CA5EA60);
  if ((*(v2 + 48))(v9, 1, v1))
  {
    sub_2151ADCD8(v9, &unk_27CA5EA60);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v22 = v52[0];
    (*(v2 + 16))(v52[0], v9, v1);
    sub_2151ADCD8(v9, &unk_27CA5EA60);
    v20 = sub_21549E63C();
    v21 = v23;
    (*(v2 + 8))(v22, v1);
  }

  v61 = v20;
  v62 = v21;
  v24 = objc_opt_self();
  v25 = sub_2154A1D2C();
  v26 = [v24 localizedFrameworkStringForKey:v25 value:0 table:0 allowSiri:1];

  v27 = sub_2154A1D6C();
  v29 = v28;

  v30 = 0;
  v63 = v27;
  v64 = v29;
  v31 = MEMORY[0x277D84F90];
LABEL_8:
  if (v30 <= 3)
  {
    v32 = 3;
  }

  else
  {
    v32 = v30;
  }

  v33 = v32 + 1;
  v34 = 16 * v30 + 40;
  while (v30 != 3)
  {
    if (v33 == ++v30)
    {
      __break(1u);
LABEL_31:
      v31 = sub_215317E44(0, *(v31 + 2) + 1, 1, v31);
      goto LABEL_26;
    }

    v35 = v34 + 16;
    v26 = *&v58[v34];
    v34 += 16;
    if (v26)
    {
      v36 = *(&v55 + v35);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_215317E44(0, *(v31 + 2) + 1, 1, v31);
      }

      v38 = *(v31 + 2);
      v37 = *(v31 + 3);
      if (v38 >= v37 >> 1)
      {
        v31 = sub_215317E44((v37 > 1), v38 + 1, 1, v31);
      }

      *(v31 + 2) = v38 + 1;
      v39 = &v31[16 * v38];
      *(v39 + 4) = v36;
      *(v39 + 5) = v26;
      goto LABEL_8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ADE0);
  swift_arrayDestroy();
  v56 = v53;
  v57 = v54;
  sub_2154A0DEC();
  v40 = v55;
  swift_getKeyPath();
  v56 = v40;
  sub_21549ED9C();

  v41 = *(v40 + 128);
  v42 = *(v40 + 144);

  if (v42)
  {
    goto LABEL_29;
  }

  v43 = [objc_allocWithZone(MEMORY[0x277D36850]) initWithSeconds:1 ignoreFractionalSeconds:v41];
  if (v43 && (v44 = v43, v45 = [v43 durationDescription], v44, v45))
  {
    v16 = sub_2154A1D6C();
    v26 = v46;
  }

  else
  {
    v16 = 0;
    v26 = 0xE000000000000000;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_26:
  v48 = *(v31 + 2);
  v47 = *(v31 + 3);
  if (v48 >= v47 >> 1)
  {
    v31 = sub_215317E44((v47 > 1), v48 + 1, 1, v31);
  }

  *(v31 + 2) = v48 + 1;
  v49 = &v31[16 * v48];
  *(v49 + 4) = v16;
  *(v49 + 5) = v26;
LABEL_29:
  v56 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E9F0);
  sub_2151ACC5C(&qword_2811996E8, &qword_27CA5E9F0);
  v50 = sub_2154A1CBC();

  return v50;
}

uint64_t sub_2154464A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
  sub_2154A0DEC();
  swift_getKeyPath();
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v0 = *(v41 + 128);
  v1 = *(v41 + 136);
  v2 = *(v41 + 144);

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2154BDB40;
      v17 = objc_opt_self();
      v18 = sub_2154A1D2C();
      v19 = [v17 localizedFrameworkStringForKey:v18 value:0 table:0 allowSiri:1];

      v20 = sub_2154A1D6C();
      v22 = v21;

      *(inited + 32) = v20;
      *(inited + 40) = v22;
      v15 = [objc_allocWithZone(MEMORY[0x277D36850]) initWithSeconds:0 ignoreFractionalSeconds:v16];
      if (!v15)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v2 != 4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2B0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2154BDB50;
        v33 = objc_opt_self();
        v34 = sub_2154A1D2C();
        v35 = [v33 localizedFrameworkStringForKey:v34 value:0 table:0 allowSiri:1];

        v36 = sub_2154A1D6C();
        v38 = v37;

        *(inited + 32) = v36;
        *(inited + 40) = v38;
        goto LABEL_14;
      }

      v8 = v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2154BDB40;
      v9 = objc_opt_self();
      v10 = sub_2154A1D2C();
      v11 = [v9 localizedFrameworkStringForKey:v10 value:0 table:0 allowSiri:1];

      v12 = sub_2154A1D6C();
      v14 = v13;

      *(inited + 32) = v12;
      *(inited + 40) = v14;
      v15 = [objc_allocWithZone(MEMORY[0x277D36850]) initWithSeconds:0 ignoreFractionalSeconds:v8];
      if (!v15)
      {
        goto LABEL_11;
      }
    }

    v23 = v15;
    v24 = [v15 durationDescription];

    if (v24)
    {
      v25 = sub_2154A1D6C();
      v27 = v26;

LABEL_12:
      *(inited + 48) = v25;
      *(inited + 56) = v27;
      goto LABEL_14;
    }

LABEL_11:
    v25 = 0;
    v27 = 0xE000000000000000;
    goto LABEL_12;
  }

  if (v2)
  {
    v3 = v0;
    v4 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2154BDB40;
    v6 = objc_opt_self();
    v7 = sub_2154A1D2C();
    v28 = [v6 localizedFrameworkStringForKey:v7 value:0 table:0 allowSiri:1];

    v29 = sub_2154A1D6C();
    v31 = v30;

    *(inited + 32) = v29;
    *(inited + 40) = v31;
    *(inited + 48) = _sSd11NotesEditorE34accessibilityElapsedAndTotalString7elapsed5totalSSSd_SdtFZ_0(round(v3), round(v4));
    *(inited + 56) = v32;
LABEL_14:
    sub_21547EDC8(inited);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E9F0);
  sub_2151ACC5C(&qword_2811996E8, &qword_27CA5E9F0);
  v39 = sub_2154A1CBC();

  return v39;
}

uint64_t sub_215446A14(uint64_t a1)
{
  v2 = sub_2154A023C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E0C8);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_215446BA8(a1, &v10 - v7);
  (*(v3 + 104))(v5, *MEMORY[0x277CE0278], v2);
  sub_21544CD68();
  sub_2154A093C();
  (*(v3 + 8))(v5, v2);
  return sub_2151ADCD8(v8, &qword_27CA5E0C8);
}

uint64_t sub_215446BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v83 = sub_2154A014C();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CEE0);
  v80 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v79 = &v77 - v4;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E1C8);
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v78 = &v77 - v5;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E1B8);
  MEMORY[0x28223BE20](v117);
  v92 = &v77 - v6;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E1A8);
  MEMORY[0x28223BE20](v101);
  v90 = (&v77 - v7);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E290);
  MEMORY[0x28223BE20](v98);
  v99 = &v77 - v8;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E178);
  MEMORY[0x28223BE20](v113);
  v102 = &v77 - v9;
  v97 = sub_2154A03AC();
  v87 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v86 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E180);
  MEMORY[0x28223BE20](v96);
  v85 = &v77 - v11;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E298);
  v89 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v88 = &v77 - v12;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E128);
  MEMORY[0x28223BE20](v108);
  v103 = &v77 - v13;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2A0);
  MEMORY[0x28223BE20](v115);
  v116 = &v77 - v14;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2A8);
  MEMORY[0x28223BE20](v109);
  v111 = &v77 - v15;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2B0);
  MEMORY[0x28223BE20](v105);
  v106 = &v77 - v16;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E100);
  MEMORY[0x28223BE20](v110);
  v107 = &v77 - v17;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E0F0);
  MEMORY[0x28223BE20](v114);
  v112 = &v77 - v18;
  v19 = type metadata accessor for AudioPlayerView(0);
  v95 = *(v19 - 8);
  v20 = *(v95 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E110);
  MEMORY[0x28223BE20](v104);
  v84 = &v77 - v21;
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v119 = v22;
  v120 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
  sub_2154A0DEC();
  v24 = v123;
  swift_getKeyPath();
  v119 = v24;
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v25 = *(v24 + 144);

  if (v25 > 2)
  {
    if (v25 == 3)
    {
      sub_21544E284(a1, &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioPlayerView);
      v45 = (*(v95 + 80) + 16) & ~*(v95 + 80);
      v46 = swift_allocObject();
      v47 = sub_21543D898(&v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v46 + v45);
      MEMORY[0x28223BE20](v47);
      *(&v77 - 2) = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2C8);
      sub_2151ACC5C(&qword_27CA5E2D0, &qword_27CA5E2C8);
      v48 = v85;
      sub_2154A0E3C();
      v49 = sub_2154A0CFC();
      v50 = v96;
      *(v48 + *(v96 + 36)) = v49;
      v51 = v86;
      sub_21549FEAC();
      v52 = sub_21544D590();
      v53 = sub_21544CBEC(&qword_27CA5D888, MEMORY[0x277CDDFB0]);
      v54 = v88;
      v55 = v97;
      sub_2154A09FC();
      (*(v87 + 8))(v51, v55);
      sub_2151ADCD8(v48, &qword_27CA5E180);
      v56 = v89;
      v57 = v100;
      (*(v89 + 16))(v99, v54, v100);
      swift_storeEnumTagMultiPayload();
      v119 = v50;
      v120 = v55;
      v121 = v52;
      v122 = v53;
      swift_getOpaqueTypeConformance2();
      sub_2151ACC5C(&qword_27CA5E1A0, &qword_27CA5E1A8);
      v58 = v102;
      sub_2154A039C();
      sub_215324EEC(v58, v111, &qword_27CA5E178);
      swift_storeEnumTagMultiPayload();
      sub_21544CF04();
      sub_21544D44C();
      v59 = v112;
      sub_2154A039C();
      sub_2151ADCD8(v58, &qword_27CA5E178);
      sub_215324EEC(v59, v116, &qword_27CA5E0F0);
      swift_storeEnumTagMultiPayload();
      sub_21544CE78();
      sub_21544D648();
      sub_2154A039C();
      sub_2151ADCD8(v59, &qword_27CA5E0F0);
      return (*(v56 + 8))(v54, v57);
    }

    if (v25 == 4)
    {
      v31 = sub_2154A011C();
      v32 = v90;
      *v90 = v31;
      *(v32 + 8) = 0x4030000000000000;
      *(v32 + 16) = 0;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2B8);
      sub_215448088(a1, (v32 + *(v33 + 44)));
      v34 = &qword_27CA5E1A8;
      sub_215324EEC(v32, v99, &qword_27CA5E1A8);
      swift_storeEnumTagMultiPayload();
      v35 = sub_21544D590();
      v36 = sub_21544CBEC(&qword_27CA5D888, MEMORY[0x277CDDFB0]);
      v119 = v96;
      v120 = v97;
      v121 = v35;
      v122 = v36;
      swift_getOpaqueTypeConformance2();
      sub_2151ACC5C(&qword_27CA5E1A0, &qword_27CA5E1A8);
      v37 = v102;
      sub_2154A039C();
      sub_215324EEC(v37, v111, &qword_27CA5E178);
      swift_storeEnumTagMultiPayload();
      sub_21544CF04();
      sub_21544D44C();
      v38 = v112;
      sub_2154A039C();
      sub_2151ADCD8(v37, &qword_27CA5E178);
      sub_215324EEC(v38, v116, &qword_27CA5E0F0);
      swift_storeEnumTagMultiPayload();
      sub_21544CE78();
      sub_21544D648();
      sub_2154A039C();
      sub_2151ADCD8(v38, &qword_27CA5E0F0);
      v29 = v32;
    }

    else
    {
      v119 = v22;
      v120 = v23;
      sub_2154A0DEC();
      v60 = v123;
      swift_getKeyPath();
      v119 = v60;
      sub_21549ED9C();

      v61 = *(v60 + 16);

      if (v61 == 1)
      {
        v62 = objc_opt_self();
        v63 = sub_2154A1D2C();
        v64 = [v62 localizedFrameworkStringForKey:v63 value:0 table:0 allowSiri:1];

        v65 = sub_2154A1D6C();
        v67 = v66;

        v119 = v65;
        v120 = v67;
        sub_215324954();
        v68 = v79;
        sub_2154A0DCC();
        v69 = v81;
        sub_2154A013C();
        sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0);
        sub_21544CBEC(&qword_27CA5B608, MEMORY[0x277CDDE78]);
        v70 = v78;
        v71 = v94;
        v72 = v83;
        sub_2154A09CC();
        (*(v82 + 8))(v69, v72);
        (*(v80 + 8))(v68, v71);
        v73 = sub_2154A0CBC();
        v74 = v93;
        *(v70 + *(v93 + 36)) = v73;
        v75 = v92;
        sub_21533FB7C(v70, v92, &qword_27CA5E1C8);
        v76 = 0;
      }

      else
      {
        v76 = 1;
        v74 = v93;
        v75 = v92;
      }

      (*(v91 + 56))(v75, v76, 1, v74);
      v34 = &qword_27CA5E1B8;
      sub_215324EEC(v75, v116, &qword_27CA5E1B8);
      swift_storeEnumTagMultiPayload();
      sub_21544CE78();
      sub_21544D648();
      sub_2154A039C();
      v29 = v75;
    }

    v30 = v34;
  }

  else
  {
    if ((v25 - 1) >= 2)
    {
      sub_21544E284(a1, &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioPlayerView);
      v39 = (*(v95 + 80) + 16) & ~*(v95 + 80);
      v40 = swift_allocObject();
      sub_21543D898(&v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v39);
      sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0);
      v41 = v84;
      sub_2154A0E3C();
      *(v41 + *(v104 + 36)) = 0;
      sub_215324EEC(v41, v106, &qword_27CA5E110);
      swift_storeEnumTagMultiPayload();
      sub_21544CF90();
      sub_21544D09C();
      v42 = v107;
      sub_2154A039C();
      sub_215324EEC(v42, v111, &qword_27CA5E100);
      swift_storeEnumTagMultiPayload();
      sub_21544CF04();
      sub_21544D44C();
      v43 = v112;
      sub_2154A039C();
      sub_2151ADCD8(v42, &qword_27CA5E100);
      sub_215324EEC(v43, v116, &qword_27CA5E0F0);
      swift_storeEnumTagMultiPayload();
      sub_21544CE78();
      sub_21544D648();
      sub_2154A039C();
      sub_2151ADCD8(v43, &qword_27CA5E0F0);
      return sub_2151ADCD8(v41, &qword_27CA5E110);
    }

    v26 = v103;
    sub_215448D18(v103);
    sub_215324EEC(v26, v106, &qword_27CA5E128);
    swift_storeEnumTagMultiPayload();
    sub_21544CF90();
    sub_21544D09C();
    v27 = v107;
    sub_2154A039C();
    sub_215324EEC(v27, v111, &qword_27CA5E100);
    swift_storeEnumTagMultiPayload();
    sub_21544CF04();
    sub_21544D44C();
    v28 = v112;
    sub_2154A039C();
    sub_2151ADCD8(v27, &qword_27CA5E100);
    sub_215324EEC(v28, v116, &qword_27CA5E0F0);
    swift_storeEnumTagMultiPayload();
    sub_21544CE78();
    sub_21544D648();
    sub_2154A039C();
    sub_2151ADCD8(v28, &qword_27CA5E0F0);
    v29 = v26;
    v30 = &qword_27CA5E128;
  }

  return sub_2151ADCD8(v29, v30);
}

uint64_t sub_215448088@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v3 = sub_2154A03AC();
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  MEMORY[0x28223BE20](v3);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AudioPlayerView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E180);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E298);
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x28223BE20](v12);
  v46 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E338);
  v43 = *(v17 - 8);
  v18 = v43;
  v44 = v17;
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - v22;
  v42 = &v40 - v22;
  sub_2154485E8(&v40 - v22);
  sub_21544E284(a1, &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioPlayerView);
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  sub_21543D898(&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v52 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2C8);
  sub_2151ACC5C(&qword_27CA5E2D0, &qword_27CA5E2C8);
  sub_2154A0E3C();
  *&v11[*(v9 + 36)] = sub_2154A0CFC();
  v26 = v45;
  sub_21549FEAC();
  sub_21544D590();
  sub_21544CBEC(&qword_27CA5D888, MEMORY[0x277CDDFB0]);
  v40 = v16;
  v27 = v49;
  sub_2154A09FC();
  (*(v50 + 8))(v26, v27);
  sub_2151ADCD8(v11, &qword_27CA5E180);
  v28 = *(v18 + 16);
  v41 = v20;
  v29 = v44;
  v28(v20, v23, v44);
  v31 = v46;
  v30 = v47;
  v32 = *(v47 + 16);
  v33 = v16;
  v34 = v48;
  v32(v46, v33, v48);
  v35 = v51;
  v28(v51, v20, v29);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E340);
  v32(&v35[*(v36 + 48)], v31, v34);
  v37 = *(v30 + 8);
  v37(v40, v34);
  v38 = *(v43 + 8);
  v38(v42, v29);
  v37(v31, v34);
  return (v38)(v41, v29);
}

uint64_t sub_2154485E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = sub_2154A03AC();
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  MEMORY[0x28223BE20](v3);
  v53 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2154A044C();
  v7 = *(v6 - 8);
  v51 = v6;
  v52 = v7;
  MEMORY[0x28223BE20](v6);
  v50 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2154A014C();
  v10 = *(v9 - 8);
  v48 = v9;
  v49 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AudioPlayerView(0);
  v43 = *(v13 - 8);
  v14 = *(v43 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E348);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E350);
  v44 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E358);
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v22 = &v43 - v21;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E360);
  MEMORY[0x28223BE20](v46);
  v24 = &v43 - v23;
  sub_21544E284(v2, &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioPlayerView);
  v25 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v26 = swift_allocObject();
  sub_21543D898(&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2F8);
  sub_21544E680();
  sub_2154A0E3C();
  v27 = sub_2154A07FC();
  KeyPath = swift_getKeyPath();
  v29 = &v17[*(v15 + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  sub_2154A07AC();
  v30 = sub_21544EDC0();
  sub_2154A09BC();
  sub_2151ADCD8(v17, &qword_27CA5E348);
  sub_2154A013C();
  v57 = v15;
  v58 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_21544CBEC(&qword_27CA5B608, MEMORY[0x277CDDE78]);
  v33 = v48;
  sub_2154A09CC();
  (*(v49 + 8))(v12, v33);
  (*(v44 + 8))(v20, v18);
  v34 = v50;
  sub_2154A043C();
  v57 = v18;
  v58 = v33;
  v59 = OpaqueTypeConformance2;
  v60 = v32;
  swift_getOpaqueTypeConformance2();
  sub_21544CBEC(&qword_27CA5E168, MEMORY[0x277CDE0B8]);
  v35 = v45;
  v36 = v51;
  sub_2154A09DC();
  (*(v52 + 8))(v34, v36);
  (*(v47 + 8))(v22, v35);
  v37 = sub_2154A0CFC();
  v38 = swift_getKeyPath();
  v39 = &v24[*(v46 + 36)];
  *v39 = v38;
  v39[1] = v37;
  v40 = v53;
  sub_21549FEAC();
  sub_21544EEA4();
  sub_21544CBEC(&qword_27CA5D888, MEMORY[0x277CDDFB0]);
  v41 = v54;
  sub_2154A09FC();
  (*(v55 + 8))(v40, v41);
  return sub_2151ADCD8(v24, &qword_27CA5E360);
}

uint64_t sub_215448D18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = sub_2154A044C();
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  MEMORY[0x28223BE20](v3);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2154A014C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E158);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E150);
  v40 = *(v13 - 8);
  v41 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E140);
  MEMORY[0x28223BE20](v42);
  v17 = &v39 - v16;
  *v12 = sub_2154A011C();
  *(v12 + 1) = 0x4028000000000000;
  v12[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2D8);
  sub_2154495E4(v2, &v12[*(v18 + 44)]);
  sub_2154A013C();
  v19 = sub_2151ACC5C(&qword_27CA5E160, &qword_27CA5E158);
  v20 = sub_21544CBEC(&qword_27CA5B608, MEMORY[0x277CDDE78]);
  sub_2154A09CC();
  (*(v7 + 8))(v9, v6);
  sub_2151ADCD8(v12, &qword_27CA5E158);
  v21 = v43;
  sub_2154A043C();
  v47 = v10;
  v48 = v6;
  v49 = v19;
  v50 = v20;
  swift_getOpaqueTypeConformance2();
  sub_21544CBEC(&qword_27CA5E168, MEMORY[0x277CDE0B8]);
  v22 = v41;
  v23 = v44;
  sub_2154A09DC();
  (*(v45 + 8))(v21, v23);
  (*(v40 + 8))(v15, v22);
  v24 = sub_2154A07EC();
  KeyPath = swift_getKeyPath();
  v26 = &v17[*(v42 + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  sub_2154A07AC();
  sub_21544D248();
  v27 = v46;
  sub_2154A09BC();
  sub_2151ADCD8(v17, &qword_27CA5E140);
  v28 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E138) + 36));
  v29 = v27;
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF70) + 28);
  v31 = *MEMORY[0x277CE1058];
  v32 = sub_2154A0D9C();
  (*(*(v32 - 8) + 104))(v28 + v30, v31, v32);
  *v28 = swift_getKeyPath();
  v33 = swift_getKeyPath();
  v34 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E128) + 36));
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D0E0) + 28);
  v36 = *MEMORY[0x277CDFA88];
  v37 = sub_21549FD5C();
  result = (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = v33;
  return result;
}

uint64_t sub_2154492BC()
{
  v0 = objc_opt_self();
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedFrameworkStringForKey:v1 value:0 table:0 allowSiri:1];

  sub_2154A1D6C();
  sub_215324954();
  return sub_2154A0DCC();
}

double sub_2154493F0@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_2154A1D2C();
  v4 = [v2 localizedFrameworkStringForKey:v3 value:0 table:0 allowSiri:1];

  v5 = sub_2154A1D6C();
  v7 = v6;

  *&v10 = v5;
  *(&v10 + 1) = v7;
  sub_215324954();
  sub_2154A0DCC();
  sub_2154A0FAC();
  sub_21549FAFC();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2F8) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

double sub_215449514@<D0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  *&v8 = a1();
  *(&v8 + 1) = v5;
  a2();
  sub_215324954();
  sub_2154A0DCC();
  sub_2154A0FAC();
  sub_21549FAFC();
  v6 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2F8) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

uint64_t sub_2154495E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v80 = a1;
  v78 = a2;
  v75 = sub_2154A10BC();
  v72 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v68 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2154A109C();
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2E0) - 8;
  MEMORY[0x28223BE20](v76);
  v77 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v87 = &v60 - v7;
  v79 = sub_2154A03AC();
  v8 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2E8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v60 - v13;
  v15 = type metadata accessor for AudioPlayerView(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v88 = v17;
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2F0);
  v91 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v90 = &v60 - v21;
  MEMORY[0x28223BE20](v22);
  v69 = &v60 - v23;
  MEMORY[0x28223BE20](v24);
  v89 = &v60 - v25;
  v86 = type metadata accessor for AudioPlayerView;
  sub_21544E284(a1, v18, type metadata accessor for AudioPlayerView);
  v84 = *(v16 + 80);
  v26 = (v84 + 16) & ~v84;
  v27 = swift_allocObject();
  sub_21543D898(v18, v27 + v26);

  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2F8);
  v85 = sub_21544E680();
  sub_2154A0E3C();
  sub_21549FEAC();
  v82 = sub_2151ACC5C(&qword_27CA5E308, &qword_27CA5E2E8);
  v60 = sub_21544CBEC(&qword_27CA5D888, MEMORY[0x277CDDFB0]);
  v28 = v79;
  sub_2154A09FC();

  v81 = *(v8 + 8);
  v81(v10, v28);
  v64 = v8 + 8;
  v29 = *(v12 + 8);
  v29(v14, v11);
  v62 = v29;
  v63 = v12 + 8;
  v99 = v80;
  v97 = v80;
  v65 = v18;
  sub_21544E284(v80, v18, v86);
  v66 = v26;
  v30 = swift_allocObject();
  sub_21543D898(v18, v30 + v26);
  v92 = sub_21544E738;
  v93 = &v98;
  v94 = sub_21544E740;
  v95 = &v96;

  sub_2154A0E3C();
  sub_21549FEAC();
  v31 = v87;
  v61 = v11;
  v32 = v79;
  sub_2154A09FC();

  v81(v10, v32);
  v29(v14, v11);
  v33 = v67;
  sub_2154A108C();
  v34 = v68;
  sub_2154A10AC();
  v35 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E310) + 36));
  v36 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E318);
  sub_21544CBEC(&qword_27CA5E320, MEMORY[0x277CE1598]);
  v37 = v70;
  sub_21549FE9C();
  (*(v72 + 8))(v34, v75);
  (*(v71 + 8))(v33, v37);
  *v35 = swift_getKeyPath();
  v38 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E328) + 36));
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF70) + 28);
  v40 = *MEMORY[0x277CE1048];
  v41 = sub_2154A0D9C();
  (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
  *v38 = swift_getKeyPath();
  v42 = sub_2154A07FC();
  KeyPath = swift_getKeyPath();
  v44 = (v36 + *(v76 + 44));
  v45 = v36;
  *v44 = KeyPath;
  v44[1] = v42;
  v46 = v65;
  sub_21544E284(v80, v65, v86);
  v47 = v66;
  v48 = swift_allocObject();
  sub_21543D898(v46, v48 + v47);

  sub_2154A0E3C();
  sub_21549FEAC();
  v49 = v69;
  v50 = v61;
  sub_2154A09FC();

  v81(v10, v32);
  v62(v14, v50);
  v51 = v90;
  v52 = *(v91 + 16);
  v53 = v74;
  v52(v90, v89, v74);
  v54 = v77;
  sub_215324EEC(v45, v77, &qword_27CA5E2E0);
  v55 = v73;
  v52(v73, v49, v53);
  v56 = v78;
  v52(v78, v51, v53);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E330);
  sub_215324EEC(v54, &v56[*(v57 + 48)], &qword_27CA5E2E0);
  v52(&v56[*(v57 + 64)], v55, v53);
  v58 = *(v91 + 8);
  v58(v49, v53);
  sub_2151ADCD8(v87, &qword_27CA5E2E0);
  v58(v89, v53);
  v58(v55, v53);
  sub_2151ADCD8(v54, &qword_27CA5E2E0);
  return (v58)(v90, v53);
}

uint64_t sub_21544A1A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
  sub_2154A0DEC();
  swift_getKeyPath();
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v0 = objc_opt_self();
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedFrameworkStringForKey:v1 value:0 table:0 allowSiri:1];

  v3 = sub_2154A1D6C();
  return v3;
}

uint64_t sub_21544A2FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
  sub_2154A0DEC();
  swift_getKeyPath();
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v0 = *(v2 + 144);

  if (v0 == 1)
  {
    return 0x69662E6573756170;
  }

  else
  {
    return 0x6C69662E79616C70;
  }
}

uint64_t sub_21544A408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v6 = *(a1 + 24);
  v19 = *(a1 + 16);
  v5 = v19;
  v20 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
  sub_2154A0DEC();
  v7 = v18;
  swift_getKeyPath();
  v19 = v7;
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  LODWORD(a1) = *(v7 + 144);

  v19 = v5;
  v20 = v6;
  sub_2154A0DEC();
  v8 = v18;
  v9 = sub_2154A202C();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_2154A1FFC();

  if (a1 == 1)
  {
    v10 = sub_2154A1FEC();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v8;
    sub_2152F5364(0, 0, v4, &unk_2154C5720, v11);
  }

  else
  {
    v13 = sub_2154A1FEC();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v8;
    sub_2152F4D50(0, 0, v4, &unk_2154C5718, v14);
  }
}

uint64_t sub_21544A6D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, char *, uint64_t, void *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - v8;
  v10 = *(a1 + 24);
  v17[2] = *(a1 + 16);
  v17[3] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
  sub_2154A0DEC();
  v11 = v17[1];
  v12 = sub_2154A202C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_2154A1FFC();

  v13 = sub_2154A1FEC();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v11;
  a4(0, 0, v9, a3, v14);
}

double sub_21544A834@<D0>(uint64_t a1@<X8>)
{
  sub_2154A01BC();
  sub_2154A0DBC();
  sub_2154A0FAC();
  sub_21549FAFC();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2F8) + 36));
  *v2 = v4;
  v2[1] = v5;
  result = *&v6;
  v2[2] = v6;
  return result;
}

uint64_t sub_21544A8F8(uint64_t a1)
{
  v2 = type metadata accessor for AudioPlayerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - v7;
  v9 = *(a1 + 24);
  v20 = *(a1 + 16);
  v21 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
  sub_2154A0DEC();
  v10 = v19[1];
  swift_getKeyPath();
  v20 = v10;
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v11 = *(v10 + 144);

  v12 = sub_2154A202C();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  sub_21544E284(a1, v5, type metadata accessor for AudioPlayerView);
  sub_2154A1FFC();
  v13 = sub_2154A1FEC();
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  if (v11 == 3)
  {
    v15 = &unk_2154C5748;
  }

  else
  {
    v15 = &unk_2154C5738;
  }

  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  sub_21543D898(v5, v16 + v14);
  sub_2152F4D50(0, 0, v8, v15, v16);
}

uint64_t sub_21544AB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[7] = sub_2154A1FFC();
  v4[8] = sub_2154A1FEC();
  v6 = sub_2154A1FCC();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x2822009F8](sub_21544AC38, v6, v5);
}

uint64_t sub_21544AC38()
{
  v1 = v0[6];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
  sub_2154A0DEC();
  v0[11] = v0[4];
  v0[12] = sub_2154A1FEC();
  v5 = sub_2154A1FCC();
  v0[13] = v5;
  v0[14] = v4;

  return MEMORY[0x2822009F8](sub_21544ACF8, v5, v4);
}

uint64_t sub_21544ACF8()
{
  v1 = v0[11];
  swift_getKeyPath();
  v0[5] = v1;
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v7 = (*MEMORY[0x277D36370] + MEMORY[0x277D36370]);
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = sub_21544AE78;

    return v7();
  }

  else
  {

    v5 = v0[9];
    v6 = v0[10];

    return MEMORY[0x2822009F8](sub_21544AF94, v5, v6);
  }
}

uint64_t sub_21544AE78()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_21544B060;
  }

  else
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_21544AFF4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21544AF94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21544AFF4()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_21544AF94, v1, v2);
}

uint64_t sub_21544B060()
{
  v1 = v0[15];

  v2 = v0[9];
  v3 = v0[10];

  return MEMORY[0x2822009F8](sub_21544B0D4, v2, v3);
}

uint64_t sub_21544B0D4()
{

  if (qword_27CA598E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_21549F11C();
  __swift_project_value_buffer(v2, qword_27CA5DF58);
  v3 = v1;
  v4 = sub_21549F0FC();
  v5 = sub_2154A226C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 136);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2151A1000, v4, v5, "Error pausing recording: %@", v8, 0xCu);
    sub_2151ADCD8(v9, &unk_27CA59E90);
    MEMORY[0x21606B520](v9, -1, -1);
    MEMORY[0x21606B520](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_21544B280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_2154A1FFC();
  v4[6] = sub_2154A1FEC();
  v6 = sub_2154A1FCC();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_21544B318, v6, v5);
}

uint64_t sub_21544B318()
{
  v1 = v0[5];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
  sub_2154A0DEC();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_21544B3DC;

  return sub_21538D47C();
}

uint64_t sub_21544B3DC()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_2152F465C, v3, v2);
}

uint64_t sub_21544B520@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8);
  sub_2154A0DEC();
  swift_getKeyPath();
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v2 = objc_opt_self();
  v3 = sub_2154A1D2C();
  v4 = [v2 localizedFrameworkStringForKey:v3 value:0 table:0 allowSiri:1];

  sub_2154A1D6C();
  sub_215324954();
  result = sub_2154A092C();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_21544B6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v53 = a3;
  v44[1] = a1;
  v3 = sub_2154A03AC();
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  MEMORY[0x28223BE20](v3);
  v46 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2154A05DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E218);
  MEMORY[0x28223BE20](v10);
  v12 = v44 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E220);
  MEMORY[0x28223BE20](v45);
  v14 = v44 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E228);
  MEMORY[0x28223BE20](v49);
  v16 = v44 - v15;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E230);
  MEMORY[0x28223BE20](v51);
  v50 = v44 - v17;
  sub_2154A05CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E238);
  sub_2151ACC5C(&qword_27CA5E240, &qword_27CA5E238);
  sub_21544CBEC(&qword_27CA5CFF0, MEMORY[0x277CDE400]);
  sub_2154A09DC();
  (*(v7 + 8))(v9, v6);
  v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E248) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B8E8);
  sub_21549FE7C();
  *v18 = swift_getKeyPath();
  v19 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E250) + 36)];
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BBC8) + 28);
  v21 = *MEMORY[0x277CDF440];
  v22 = sub_21549FA0C();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = swift_getKeyPath();
  v23 = sub_2154A075C();
  KeyPath = swift_getKeyPath();
  v25 = &v12[*(v10 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  sub_2154A07AC();
  sub_21544DE98();
  sub_2154A09BC();
  sub_2151ADCD8(v12, &qword_27CA5E218);
  v26 = &v14[*(v45 + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF70) + 28);
  v28 = *MEMORY[0x277CE1058];
  v29 = sub_2154A0D9C();
  (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
  *v26 = swift_getKeyPath();
  v30 = v46;
  sub_21549FEAC();
  sub_21544E180();
  sub_21544CBEC(&qword_27CA5D888, MEMORY[0x277CDDFB0]);
  v31 = v47;
  sub_2154A09FC();
  (*(v48 + 8))(v30, v31);
  sub_2151ADCD8(v14, &qword_27CA5E220);
  sub_2154A0FAC();
  sub_21549FAFC();
  v32 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E278) + 36)];
  v33 = v56;
  *v32 = v55;
  *(v32 + 1) = v33;
  *(v32 + 2) = v57;
  if (qword_27CA598F8 != -1)
  {
    swift_once();
  }

  v34 = qword_27CA5DF80;
  v35 = swift_getKeyPath();
  v54 = v34;

  v36 = sub_21549FB0C();
  v37 = &v16[*(v49 + 36)];
  *v37 = v35;
  v37[1] = v36;
  v38 = v52;
  if (!v52)
  {
    v38 = sub_2154A0D4C();
  }

  v39 = swift_getKeyPath();
  v40 = v16;
  v41 = v50;
  sub_21533FB7C(v40, v50, &qword_27CA5E228);
  v42 = (v41 + *(v51 + 36));
  *v42 = v39;
  v42[1] = v38;
  sub_21533FB7C(v41, v53, &qword_27CA5E230);
}

uint64_t sub_21544BDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2154A021C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21549E15C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v2)
  {
    v13 = *(v2 + 16);
    if (v13)
    {
      v39 = a2;
      v40 = a1;
      v37 = v2;
      v41 = *(v2 + 8);
      v42 = v13;

      sub_21549E11C();
      v38 = sub_215324954();
      v14 = sub_2154A2B8C();
      v16 = v15;
      v17 = *(v10 + 8);
      v17(v12, v9);

      v18 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v18 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        v19 = *(v37 + 32);
        if (v19)
        {
          v36 = v14;
          v41 = *(v37 + 24);
          v42 = v19;

          sub_21549E11C();
          v37 = sub_2154A2B8C();
          v21 = v20;
          v17(v12, v9);
          v22 = v37;

          v23 = HIBYTE(v21) & 0xF;
          if ((v21 & 0x2000000000000000) == 0)
          {
            v23 = v22 & 0xFFFFFFFFFFFFLL;
          }

          if (v23)
          {
            v41 = v36;
            v42 = v16;
            v36 = sub_2154A092C();
            v25 = v24;
            v27 = v26;
            v41 = v22;
            v42 = v21;
            v28 = sub_2154A092C();
            v30 = v29;
            v32 = v31;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E280);
            sub_2151ACC5C(&qword_27CA5E288, &qword_27CA5E280);
            v33 = v36;
            sub_2154A0B4C();
            sub_215354880(v28, v30, v32 & 1);

            sub_215354880(v33, v25, v27 & 1);
          }
        }
      }
    }
  }

  v41 = MEMORY[0x277D84F90];
  sub_21544CBEC(&qword_27CA5E0A0, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E0A8);
  sub_2151ACC5C(&qword_27CA5E0B0, &qword_27CA5E0A8);
  sub_2154A2BEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E280);
  sub_2151ACC5C(&qword_27CA5E288, &qword_27CA5E280);
  sub_2154A0B1C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21544C29C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21549FF2C();
  *a1 = result;
  return result;
}

uint64_t sub_21544C2F4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x216066BD0]();
  *a1 = result;
  return result;
}

uint64_t sub_21544C3EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2154A001C();
  *a1 = result;
  return result;
}

uint64_t sub_21544C494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_21544C564@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2154A00AC();
  *a1 = result;
  return result;
}

id sub_21544C5BC(uint64_t a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7)
{
  v7[OBJC_IVAR___ICAudioAttachmentView_needsRelayoutWhenMovingToWindow] = 0;
  *&v7[OBJC_IVAR___ICAudioAttachmentView_hostingView] = 0;
  *&v7[OBJC_IVAR___ICAudioAttachmentView_attachmentObserver] = 0;
  v15 = OBJC_IVAR___ICAudioAttachmentView_brickDelegate;
  type metadata accessor for AttachmentBrickDelegate(0);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v16 + 24) = 0x4074700000000000;
  *(v16 + 32) = sub_2154A0D1C();
  sub_21549EDCC();
  *&v7[v15] = v16;
  *&v7[OBJC_IVAR___ICAudioAttachmentView_summaryViewModel] = 0;
  v18.receiver = v7;
  v18.super_class = type metadata accessor for AudioAttachmentView();
  return objc_msgSendSuper2(&v18, sel_initWithFrame_textAttachment_textContainer_forManualRendering_, a1, a2, a3 & 1, a4, a5, a6, a7);
}

id sub_21544C700(uint64_t a1, uint64_t a2, char a3)
{
  v3[OBJC_IVAR___ICAudioAttachmentView_needsRelayoutWhenMovingToWindow] = 0;
  *&v3[OBJC_IVAR___ICAudioAttachmentView_hostingView] = 0;
  *&v3[OBJC_IVAR___ICAudioAttachmentView_attachmentObserver] = 0;
  v7 = OBJC_IVAR___ICAudioAttachmentView_brickDelegate;
  type metadata accessor for AttachmentBrickDelegate(0);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v8 + 24) = 0x4074700000000000;
  *(v8 + 32) = sub_2154A0D1C();
  sub_21549EDCC();
  *&v3[v7] = v8;
  *&v3[OBJC_IVAR___ICAudioAttachmentView_summaryViewModel] = 0;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for AudioAttachmentView();
  return objc_msgSendSuper2(&v10, sel_initWithTextAttachment_textContainer_forManualRendering_, a1, a2, a3 & 1);
}

uint64_t sub_21544C7F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21544C854()
{
  result = qword_27CA5E060;
  if (!qword_27CA5E060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E030);
    sub_21544C90C();
    sub_2151ACC5C(&qword_27CA5E098, &qword_27CA5E050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E060);
  }

  return result;
}

unint64_t sub_21544C90C()
{
  result = qword_27CA5E068;
  if (!qword_27CA5E068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E028);
    sub_21544C9C4();
    sub_2151ACC5C(&qword_27CA5B9E0, &qword_27CA5B9E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E068);
  }

  return result;
}

unint64_t sub_21544C9C4()
{
  result = qword_27CA5E070;
  if (!qword_27CA5E070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E020);
    sub_21544CA7C();
    sub_2151ACC5C(&qword_27CA5BFB8, &qword_27CA5BFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E070);
  }

  return result;
}

unint64_t sub_21544CA7C()
{
  result = qword_27CA5E078;
  if (!qword_27CA5E078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E018);
    sub_21544CB34();
    sub_2151ACC5C(&qword_27CA5B338, &qword_27CA5D030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E078);
  }

  return result;
}

unint64_t sub_21544CB34()
{
  result = qword_27CA5E080;
  if (!qword_27CA5E080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E010);
    sub_2151ACC5C(&qword_27CA5E088, &qword_27CA5E090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E080);
  }

  return result;
}

uint64_t sub_21544CBEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21544CC3C()
{
  result = qword_27CA5E0C0;
  if (!qword_27CA5E0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DFE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DFD8);
    sub_21544F1A4(&qword_27CA5E058, &qword_27CA5DFD8, &unk_2154C4FB0, sub_21544C854);
    swift_getOpaqueTypeConformance2();
    sub_21544CBEC(&qword_27CA5CD20, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E0C0);
  }

  return result;
}

unint64_t sub_21544CD68()
{
  result = qword_27CA5E0D0;
  if (!qword_27CA5E0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E0C8);
    sub_21544CDEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E0D0);
  }

  return result;
}

unint64_t sub_21544CDEC()
{
  result = qword_27CA5E0D8;
  if (!qword_27CA5E0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E0E0);
    sub_21544CE78();
    sub_21544D648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E0D8);
  }

  return result;
}

unint64_t sub_21544CE78()
{
  result = qword_27CA5E0E8;
  if (!qword_27CA5E0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E0F0);
    sub_21544CF04();
    sub_21544D44C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E0E8);
  }

  return result;
}

unint64_t sub_21544CF04()
{
  result = qword_27CA5E0F8;
  if (!qword_27CA5E0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E100);
    sub_21544CF90();
    sub_21544D09C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E0F8);
  }

  return result;
}

unint64_t sub_21544CF90()
{
  result = qword_27CA5E108;
  if (!qword_27CA5E108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E110);
    sub_2151ACC5C(&qword_27CA5D540, &qword_27CA5CED0);
    sub_21544D048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E108);
  }

  return result;
}

unint64_t sub_21544D048()
{
  result = qword_27CA5E118;
  if (!qword_27CA5E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E118);
  }

  return result;
}

unint64_t sub_21544D09C()
{
  result = qword_27CA5E120;
  if (!qword_27CA5E120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E128);
    sub_21544D154();
    sub_2151ACC5C(&qword_27CA5D118, &qword_27CA5D0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E120);
  }

  return result;
}

unint64_t sub_21544D154()
{
  result = qword_27CA5E130;
  if (!qword_27CA5E130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E138);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E140);
    sub_21544D248();
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&unk_27CA5CE70, &qword_27CA5BF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E130);
  }

  return result;
}

unint64_t sub_21544D248()
{
  result = qword_27CA5E148;
  if (!qword_27CA5E148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E140);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E150);
    sub_2154A044C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E158);
    sub_2154A014C();
    sub_2151ACC5C(&qword_27CA5E160, &qword_27CA5E158);
    sub_21544CBEC(&qword_27CA5B608, MEMORY[0x277CDDE78]);
    swift_getOpaqueTypeConformance2();
    sub_21544CBEC(&qword_27CA5E168, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&qword_27CA5BC60, &qword_27CA5CD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E148);
  }

  return result;
}

unint64_t sub_21544D44C()
{
  result = qword_27CA5E170;
  if (!qword_27CA5E170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E180);
    sub_2154A03AC();
    sub_21544D590();
    sub_21544CBEC(&qword_27CA5D888, MEMORY[0x277CDDFB0]);
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&qword_27CA5E1A0, &qword_27CA5E1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E170);
  }

  return result;
}

unint64_t sub_21544D590()
{
  result = qword_27CA5E188;
  if (!qword_27CA5E188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E180);
    sub_2151ACC5C(&qword_27CA5E190, &qword_27CA5E198);
    sub_21544D048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E188);
  }

  return result;
}

unint64_t sub_21544D648()
{
  result = qword_27CA5E1B0;
  if (!qword_27CA5E1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E1B8);
    sub_21544D6CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E1B0);
  }

  return result;
}

unint64_t sub_21544D6CC()
{
  result = qword_27CA5E1C0;
  if (!qword_27CA5E1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E1C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA5CEE0);
    sub_2154A014C();
    sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0);
    sub_21544CBEC(&qword_27CA5B608, MEMORY[0x277CDDE78]);
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&qword_27CA5CD58, &unk_27CA5CD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E1C0);
  }

  return result;
}

unint64_t sub_21544D844()
{
  result = qword_27CA5E1D0;
  if (!qword_27CA5E1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DFF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DFE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E0B8);
    sub_21544CC3C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E0C8);
    sub_21544CD68();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21544D97C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E1D0);
  }

  return result;
}

unint64_t sub_21544D97C()
{
  result = qword_27CA5E1D8;
  if (!qword_27CA5E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E1D8);
  }

  return result;
}

uint64_t sub_21544DA40()
{
  result = sub_21549EDDC();
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

void sub_21544DB20()
{
  type metadata accessor for AttachmentBrickDelegate(319);
  if (v0 <= 0x3F)
  {
    sub_21544DC64(319, &qword_27CA5E208, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2153AD9F8();
      if (v2 <= 0x3F)
      {
        sub_21544DC64(319, &qword_27CA5E210, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for SummaryViewModel();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21544DC64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21544DCDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21544DD38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_21544DDA4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21544DE00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_21544DE98()
{
  result = qword_27CA5E258;
  if (!qword_27CA5E258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E218);
    sub_21544DF50();
    sub_2151ACC5C(&qword_27CA5BC60, &qword_27CA5CD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E258);
  }

  return result;
}

unint64_t sub_21544DF50()
{
  result = qword_27CA5E260;
  if (!qword_27CA5E260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E250);
    sub_21544E008();
    sub_2151ACC5C(&unk_27CA5D620, &qword_27CA5BBC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E260);
  }

  return result;
}

unint64_t sub_21544E008()
{
  result = qword_27CA5E268;
  if (!qword_27CA5E268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E238);
    sub_2154A05DC();
    sub_2151ACC5C(&qword_27CA5E240, &qword_27CA5E238);
    sub_21544CBEC(&qword_27CA5CFF0, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&unk_27CA5CBE0, &qword_27CA5B8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E268);
  }

  return result;
}

unint64_t sub_21544E180()
{
  result = qword_27CA5E270;
  if (!qword_27CA5E270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E218);
    sub_21544DE98();
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&unk_27CA5CE70, &qword_27CA5BF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E270);
  }

  return result;
}

double sub_21544E274()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

uint64_t sub_21544E284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_123Tm()
{
  v1 = type metadata accessor for AudioPlayerView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2154A023C();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21544E598(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD36C;

  return sub_21538C468(a1, v4, v5, v6);
}

unint64_t sub_21544E680()
{
  result = qword_27CA5E300;
  if (!qword_27CA5E300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E2F8);
    sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E300);
  }

  return result;
}

uint64_t sub_21544E760(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AudioPlayerView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21544E814(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD36C;

  return sub_21538CADC(a1, v4, v5, v6);
}

uint64_t sub_21544E8C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD36C;

  return sub_21538C5D0(a1, v4, v5, v6);
}

uint64_t sub_21544E97C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD278;

  return sub_21538C6F8(a1, v4, v5, v6);
}

uint64_t sub_21544EA38(uint64_t a1)
{
  v4 = *(type metadata accessor for AudioPlayerView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2151BD36C;

  return sub_21544B280(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_167Tm()
{
  v1 = type metadata accessor for AudioPlayerView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2154A023C();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21544EC9C(uint64_t a1)
{
  v4 = *(type metadata accessor for AudioPlayerView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2151BD36C;

  return sub_21544AB9C(a1, v6, v7, v1 + v5);
}

unint64_t sub_21544EDC0()
{
  result = qword_27CA5E368;
  if (!qword_27CA5E368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E348);
    sub_2151ACC5C(&qword_27CA5E308, &qword_27CA5E2E8);
    sub_2151ACC5C(&qword_27CA5BC60, &qword_27CA5CD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E368);
  }

  return result;
}

unint64_t sub_21544EEA4()
{
  result = qword_27CA5E370;
  if (!qword_27CA5E370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E360);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E358);
    sub_2154A044C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E350);
    sub_2154A014C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E348);
    sub_21544EDC0();
    swift_getOpaqueTypeConformance2();
    sub_21544CBEC(&qword_27CA5B608, MEMORY[0x277CDDE78]);
    swift_getOpaqueTypeConformance2();
    sub_21544CBEC(&qword_27CA5E168, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&qword_27CA5B338, &qword_27CA5D030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E370);
  }

  return result;
}

uint64_t objectdestroy_129Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21544F0F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD278;

  return sub_21538CEAC(a1, v4, v5, v6);
}

uint64_t sub_21544F1A4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_21544F288()
{
  result = qword_27CA5E418;
  if (!qword_27CA5E418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E420);
    sub_21544F340();
    sub_2151ACC5C(&qword_27CA5CBC8, &qword_27CA5CBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E418);
  }

  return result;
}

unint64_t sub_21544F340()
{
  result = qword_27CA5E428;
  if (!qword_27CA5E428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E430);
    sub_2151ACC5C(&qword_27CA5E438, &qword_27CA5E440);
    sub_2151ACC5C(&qword_27CA5BC60, &qword_27CA5CD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E428);
  }

  return result;
}

unint64_t sub_21544F484()
{
  result = qword_27CA5E460;
  if (!qword_27CA5E460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E3D8);
    sub_21544F53C();
    sub_2151ACC5C(&qword_27CA5CBC8, &qword_27CA5CBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E460);
  }

  return result;
}

unint64_t sub_21544F53C()
{
  result = qword_27CA5E468;
  if (!qword_27CA5E468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E3D0);
    sub_2151ACC5C(&qword_27CA5E470, &qword_27CA5E478);
    sub_2151ACC5C(&qword_27CA5BC60, &qword_27CA5CD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E468);
  }

  return result;
}

unint64_t sub_21544F630()
{
  result = qword_27CA5E528;
  if (!qword_27CA5E528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E4E0);
    sub_21544CBEC(&qword_27CA5E530, MEMORY[0x277CDF088]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E528);
  }

  return result;
}

unint64_t sub_21544F6EC()
{
  result = qword_27CA5E5A8;
  if (!qword_27CA5E5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E5A0);
    sub_21544F7A4();
    sub_2151ACC5C(&qword_27CA5BC60, &qword_27CA5CD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E5A8);
  }

  return result;
}

unint64_t sub_21544F7A4()
{
  result = qword_27CA5E5B0;
  if (!qword_27CA5E5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E5B8);
    sub_2151ACC5C(&qword_27CA5D868, &qword_27CA5D870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E5B0);
  }

  return result;
}

unint64_t sub_21544F87C()
{
  result = qword_27CA5E5E0;
  if (!qword_27CA5E5E0)
  {
    sub_2151A6C9C(255, &qword_27CA5A7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E5E0);
  }

  return result;
}

unint64_t sub_21544F91C()
{
  result = qword_27CA5E5F0;
  if (!qword_27CA5E5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E230);
    sub_21544F9D4();
    sub_2151ACC5C(&qword_27CA5B338, &qword_27CA5D030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E5F0);
  }

  return result;
}

unint64_t sub_21544F9D4()
{
  result = qword_27CA5E5F8;
  if (!qword_27CA5E5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E228);
    sub_21544FA8C();
    sub_2151ACC5C(&unk_27CA5CD00, &qword_27CA5B8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E5F8);
  }

  return result;
}

unint64_t sub_21544FA8C()
{
  result = qword_27CA5E600;
  if (!qword_27CA5E600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E278);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E220);
    sub_2154A03AC();
    sub_21544E180();
    sub_21544CBEC(&qword_27CA5D888, MEMORY[0x277CDDFB0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E600);
  }

  return result;
}

unint64_t sub_21544FBA4()
{
  result = qword_27CA5E608;
  if (!qword_27CA5E608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E610);
    sub_2151ACC5C(&qword_27CA5E288, &qword_27CA5E280);
    sub_21544CBEC(&qword_27CA5CD20, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E608);
  }

  return result;
}

uint64_t sub_21544FCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 6)
  {
    if (a1 > 9)
    {
      switch(a1)
      {
        case 10:
          v8 = MEMORY[0x277CD9528];
          break;
        case 11:
          v8 = MEMORY[0x277CD94E8];
          break;
        case 12:
          v8 = MEMORY[0x277CD94F0];
          break;
        default:
          goto LABEL_3;
      }
    }

    else if (a1 == 7)
    {
      v8 = MEMORY[0x277CD9500];
    }

    else if (a1 == 8)
    {
      v8 = MEMORY[0x277CD9508];
    }

    else
    {
      v8 = MEMORY[0x277CD9520];
    }
  }

  else
  {
    if (a1 <= 3)
    {
LABEL_3:
      v3 = sub_2154A16AC();
      v4 = *(*(v3 - 8) + 56);
      v5 = v3;
      v6 = a2;
      v7 = 1;
      goto LABEL_22;
    }

    if (a1 == 4)
    {
      v8 = MEMORY[0x277CD9518];
    }

    else if (a1 == 5)
    {
      v8 = MEMORY[0x277CD94F8];
    }

    else
    {
      v8 = MEMORY[0x277CD9510];
    }
  }

  v9 = *v8;
  v10 = sub_2154A16AC();
  v12 = *(v10 - 8);
  (*(v12 + 104))(a2, v9, v10);
  v4 = *(v12 + 56);
  v6 = a2;
  v7 = 0;
  v5 = v10;
LABEL_22:

  return v4(v6, v7, 1, v5);
}

uint64_t sub_21544FEA8()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5E618);
  __swift_project_value_buffer(v0, qword_27CA5E618);
  return sub_21549F09C();
}

uint64_t static ICSystemPaperDocumentHelper.drawing(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E638);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E640);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E648);
  v44 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  v20 = objc_allocWithZone(sub_21549EADC());
  v21 = a1;
  v22 = sub_21549EAAC();
  v23 = sub_21549EABC();
  if (v23)
  {
    v24 = v23;
    MEMORY[0x216065660]();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {

      v25 = &qword_27CA5A7D8;
      v26 = v15;
    }

    else
    {
      (*(v17 + 32))(v19, v15, v16);
      swift_getKeyPath();
      sub_2154A1B2C();

      v27 = v44;
      if ((*(v44 + 48))(v9, 1, v10) != 1)
      {
        (*(v27 + 32))(v12, v9, v10);
        sub_2151ACC5C(&qword_27CA5E650, &qword_27CA5E648);
        v39 = v12;
        v32 = v43;
        sub_2154A1B1C();
        v33 = v41;
        v34 = v32;
        v35 = v42;
        (*(v41 + 16))(v40, v34, v42);
        v36 = objc_allocWithZone(sub_2154A177C());
        v37 = sub_2154A176C();
        v29 = v45;
        sub_2154A1C4C();

        (*(v33 + 8))(v43, v35);
        (*(v44 + 8))(v39, v10);
        (*(v17 + 8))(v19, v16);
        v28 = 0;
        goto LABEL_9;
      }

      (*(v17 + 8))(v19, v16);

      v25 = &qword_27CA5E640;
      v26 = v9;
    }

    sub_2151ADCD8(v26, v25);
  }

  else
  {
  }

  v28 = 1;
  v29 = v45;
LABEL_9:
  v30 = sub_2154A1C5C();
  return (*(*(v30 - 8) + 56))(v29, v28, 1, v30);
}

uint64_t sub_215450488(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E640);
  MEMORY[0x28223BE20](v2 - 8);
  sub_215324EEC(a1, &v5 - v3, &qword_27CA5E640);
  return sub_2154A123C();
}

id ICSystemPaperDocumentHelper.__allocating_init(paperAttachment:textView:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___ICSystemPaperDocumentHelper_attachment] = a1;
  swift_unknownObjectWeakAssign();
  v9.receiver = v5;
  v9.super_class = v2;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id ICSystemPaperDocumentHelper.init(paperAttachment:textView:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___ICSystemPaperDocumentHelper_attachment] = a1;
  swift_unknownObjectWeakAssign();
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

Swift::Void __swiftcall ICSystemPaperDocumentHelper.add(itemProviders:itemsAnchor:)(Swift::OpaquePointer itemProviders, UIViewContentMode itemsAnchor)
{
  v81 = itemsAnchor;
  rawValue = itemProviders._rawValue;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B6D8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v70 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v70 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D0);
  v84 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v83 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v79 = &v70 - v15;
  v16 = sub_21549E56C();
  v17 = *(v16 - 1);
  v18 = v17[8];
  MEMORY[0x28223BE20](v16);
  v80 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v70 - v20;
  v85 = v2;
  v22 = *&v2[OBJC_IVAR___ICSystemPaperDocumentHelper_attachment];
  v23 = objc_allocWithZone(sub_21549EADC());
  v24 = v22;
  v87 = sub_21549EAAC();
  v86 = [v24 paperBundleModel];
  if (v86)
  {
    v78 = sub_21549EABC();
    if (v78)
    {
      v25 = [v86 paperBundleURL];
      sub_21549E51C();

      Strong = swift_unknownObjectWeakLoadStrong();
      v77 = v21;
      if (Strong)
      {
        v27 = Strong;
        v71 = v12;
        v74 = v5;
        v28 = [v24 identifier];
        v73 = v16;
        v72 = v17;
        if (v28)
        {
          v29 = v28;
          v30 = sub_2154A1D6C();
          v32 = v31;
        }

        else
        {
          v30 = 0;
          v32 = 0xE000000000000000;
        }

        v90 = 0;
        v17 = [v27 textStorage];
        v76 = *MEMORY[0x277D74060];
        v38 = [v27 textStorage];
        v75 = [v38 length];

        v39 = swift_allocObject();
        v39[2] = v30;
        v39[3] = v32;
        v39[4] = &v90;
        v39[5] = v27;
        v40 = swift_allocObject();
        *(v40 + 16) = sub_21532B770;
        *(v40 + 24) = v39;
        aBlock[4] = sub_21532B77C;
        v89 = v40;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21532C43C;
        aBlock[3] = &block_descriptor_32;
        v16 = _Block_copy(aBlock);
        v21 = v89;

        v41 = v27;

        [v17 enumerateAttribute:v76 inRange:0 options:v75 usingBlock:{0, v16}];

        _Block_release(v16);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
LABEL_30:
          swift_once();
LABEL_23:
          v55 = sub_21549F11C();
          __swift_project_value_buffer(v55, qword_27CA5E618);
          v56 = sub_21549F0FC();
          v57 = sub_2154A226C();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            *v58 = 0;
            _os_log_impl(&dword_2151A1000, v56, v57, "Cannot add items because paper is not available", v58, 2u);
            MEMORY[0x21606B520](v58, -1, -1);
          }

          else
          {
          }

          goto LABEL_28;
        }

        v43 = v90;

        v16 = v73;
        v17 = v72;
        v21 = v77;
        v12 = v71;
        if (v43)
        {
          sub_2154A18EC();

          v44 = v84;
          v45 = (*(v84 + 48))(v11, 1, v12);
          v5 = v74;
          if (v45 != 1)
          {
            (*(v44 + 32))(v79, v11, v12);
            sub_21544FCD4(v81, v5);
            v83 = sub_2154A1BDC();
            v46 = v80;
            (v17[2])(v80, v21, v16);
            v47 = (*(v17 + 80) + 24) & ~*(v17 + 80);
            v48 = (v18 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
            v49 = swift_allocObject();
            v50 = v85;
            *(v49 + 16) = v85;
            (v17[4])(v49 + v47, v46, v16);
            v51 = v78;
            *(v49 + v48) = v78;
            v52 = v50;
            v53 = v51;
            v54 = v79;
            sub_2154A1B9C();

            sub_2151ADCD8(v5, &qword_27CA5B6D8);
            (*(v84 + 8))(v54, v12);
LABEL_28:
            (v17[1])(v21, v16);
            return;
          }

LABEL_21:
          sub_2151ADCD8(v11, &qword_27CA5A7D8);
          v11 = v78;
          MEMORY[0x216065660](v78);
          if ((*(v44 + 48))(v8, 1, v12) != 1)
          {
            (*(v44 + 32))(v83, v8, v12);
            sub_21544FCD4(v81, v5);
            v81 = sub_2154A1BDC();
            v59 = v16;
            v60 = v80;
            v61 = v21;
            v62 = v59;
            (v17[2])(v80, v61);
            v63 = (*(v17 + 80) + 24) & ~*(v17 + 80);
            v64 = (v18 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
            v65 = swift_allocObject();
            v66 = v85;
            *(v65 + 16) = v85;
            (v17[4])(v65 + v63, v60, v62);
            *(v65 + v64) = v11;
            v67 = v66;
            v68 = v11;
            v69 = v83;
            sub_2154A1B9C();

            sub_2151ADCD8(v5, &qword_27CA5B6D8);
            (*(v84 + 8))(v69, v12);
            (v17[1])(v77, v62);
            return;
          }

          sub_2151ADCD8(v8, &qword_27CA5A7D8);
          if (qword_27CA59918 == -1)
          {
            goto LABEL_23;
          }

          goto LABEL_30;
        }

        v5 = v74;
      }

      v44 = v84;
      (*(v84 + 56))(v11, 1, 1, v12);
      goto LABEL_21;
    }
  }

  if (qword_27CA59918 != -1)
  {
    swift_once();
  }

  v33 = sub_21549F11C();
  __swift_project_value_buffer(v33, qword_27CA5E618);
  v34 = sub_21549F0FC();
  v35 = sub_2154A226C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_2151A1000, v34, v35, "Cannot add items to paper because the coherence context is not available", v36, 2u);
    MEMORY[0x21606B520](v36, -1, -1);
  }

  v37 = v87;
}

uint64_t sub_215451338(uint64_t a1, void *a2, char *a3, void *a4)
{
  v47 = a2;
  v48 = a4;
  v46 = a3;
  v55 = a1;
  v4 = sub_2154A10EC();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2154A110C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_21549E56C();
  v7 = *(v45 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  sub_215324EEC(v55, v11, &qword_27CA5A7D8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_2151ADCD8(v11, &qword_27CA5A7D8);
  }

  v41 = v8;
  v20 = v13;
  v42 = *(v13 + 32);
  v21 = v11;
  v22 = v12;
  v40 = v12;
  v42(v18, v21, v12);
  sub_2151A6C9C(0, &unk_2811995C0);
  v55 = sub_2154A245C();
  v24 = v44;
  v23 = v45;
  (*(v7 + 16))(v44, v46, v45);
  v43 = v20;
  (*(v20 + 16))(v15, v18, v22);
  v25 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v26 = (v41 + *(v20 + 80) + v25) & ~*(v20 + 80);
  v27 = (v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v46 = v18;
  v29 = v47;
  *(v28 + 16) = v47;
  (*(v7 + 32))(v28 + v25, v24, v23);
  v30 = v40;
  v42((v28 + v26), v15, v40);
  v31 = v48;
  *(v28 + v27) = v48;
  aBlock[4] = sub_215451FA0;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2151BD7E4;
  aBlock[3] = &block_descriptor_18;
  v32 = _Block_copy(aBlock);
  v33 = v29;
  v34 = v31;

  v35 = v49;
  sub_2154A10FC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2151B5F20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
  sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00);
  v36 = v51;
  v37 = v54;
  sub_2154A2BEC();
  v38 = v55;
  MEMORY[0x216069000](0, v35, v36, v32);
  _Block_release(v32);

  (*(v53 + 8))(v36, v37);
  (*(v50 + 8))(v35, v52);
  return (*(v43 + 8))(v46, v30);
}

void sub_215451908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21549E56C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v28[2] = a3;
    v13 = [Strong textStorage];
    v29 = [v13 length];

    v32 = 0;
    v31 = sub_21549E0EC();
    v14 = [v12 textStorage];
    v15 = *MEMORY[0x277D74060];
    v16 = *(v8 + 16);
    v28[1] = a2;
    v16(v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
    v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    (*(v8 + 32))(v19 + v17, v10, v7);
    *(v19 + v18) = &v32;
    *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v31;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_21539AC58;
    *(v20 + 24) = v19;
    aBlock[4] = sub_215384F20;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21532C43C;
    aBlock[3] = &block_descriptor_28_0;
    v21 = _Block_copy(aBlock);

    [v14 enumerateAttribute:v15 inRange:0 options:v29 usingBlock:{0, v21}];

    _Block_release(v21);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v23 = v32;
      if (v32)
      {

        sub_2154A215C();
      }

      else
      {

        v26 = objc_opt_self();
        v27 = sub_21549E49C();

        sub_2154A1BAC();
      }
    }
  }

  else
  {
    v24 = objc_opt_self();
    v25 = sub_21549E49C();

    sub_2154A1BAC();
  }
}

id ICSystemPaperDocumentHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICSystemPaperDocumentHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroy_5Tm()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_215451EB0(uint64_t a1)
{
  v3 = *(sub_21549E56C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_215451338(a1, v5, (v1 + v4), v6);
}

void sub_215451FA0()
{
  v1 = *(sub_21549E56C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D0) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_215451908(v6, v0 + v2, v0 + v5, v7);
}

void *sub_2154520BC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v47 = sub_21549E56C();
  v8 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v36 - v11;
  v42 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2154A2C3C();
    sub_2151A6C9C(0, &qword_281199690);
    sub_21532210C(&qword_281199680, &qword_281199690);
    result = sub_2154A20FC();
    a1 = v49;
    v13 = v50;
    v14 = v51;
    v15 = v52;
    v16 = v53;
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v13 = a1 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(a1 + 56);

    v15 = 0;
  }

  v41 = v14;
  v45 = (v8 + 56);
  v46 = (v8 + 48);
  v37 = v8;
  v38 = (v8 + 32);
  v43 = MEMORY[0x277D84F90];
  while (a1 < 0)
  {
    v23 = sub_2154A2CDC();
    if (!v23 || (v48 = v23, sub_2151A6C9C(0, &qword_281199690), swift_dynamicCast(), (v22 = v54) == 0))
    {
LABEL_30:
      sub_2151A66EC();
      return v43;
    }

LABEL_17:
    v24 = [v22 media];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 mediaURL];

      if (v26)
      {
        v27 = v44;
        sub_21549E51C();

        v28 = 0;
      }

      else
      {
        v28 = 1;
        v27 = v44;
      }

      v29 = v47;
      (*v45)(v27, v28, 1, v47);
      sub_215323B30(v27, v7);
    }

    else
    {
      v29 = v47;
      (*v45)(v7, 1, 1, v47);
    }

    if ((*v46)(v7, 1, v29) == 1)
    {
      result = sub_2151ADCD8(v7, &unk_27CA5B090);
    }

    else
    {
      v30 = *v38;
      v31 = v47;
      (*v38)(v39, v7, v47);
      v30(v40, v39, v31);
      v32 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_215318180(0, v43[2] + 1, 1, v43);
      }

      v34 = v43[2];
      v33 = v43[3];
      if (v34 >= v33 >> 1)
      {
        v43 = sub_215318180(v33 > 1, v34 + 1, 1, v43);
      }

      v35 = v43;
      v43[2] = v34 + 1;
      result = (v32)(v35 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v34, v40, v47);
    }
  }

  v20 = v15;
  v21 = v16;
  if (v16)
  {
LABEL_13:
    v16 = (v21 - 1) & v21;
    v22 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v22)
    {
      goto LABEL_30;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= ((v14 + 64) >> 6))
    {
      goto LABEL_30;
    }

    v21 = *(v13 + 8 * v15);
    ++v20;
    if (v21)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2154525D8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  v3 = sub_2154A1D6C();
  return v3;
}

char *RecordingViewModel.__allocating_init(attachmentModel:liveTranscriptionCoordinator:summaryViewModel:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_215466468(a1, a2, a3);

  return v6;
}

void sub_21545275C(int a1)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = sub_21549E56C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v41 = &v38 - v13;
  v14 = *(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel);
  v15 = [v14 attachment];
  if (!v15)
  {
    __break(1u);
    goto LABEL_23;
  }

  v16 = v15;
  v17 = [v15 subAttachments];

  if (v17 && (sub_2151A6C9C(0, &qword_281199690), sub_21532210C(&qword_281199680, &qword_281199690), v18 = sub_2154A20CC(), v17, v19 = sub_2153B1BA4(v18), , v19) && (v20 = [v19 media], v19, v20))
  {
    v21 = [v20 mediaURL];

    if (v21)
    {
      sub_21549E51C();

      (*(v9 + 56))(v4, 0, 1, v8);
    }

    else
    {
      (*(v9 + 56))(v4, 1, 1, v8);
    }

    sub_215323B30(v4, v7);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v26 = *(v9 + 32);
      v26(v41, v7, v8);
      v27 = [v14 attachment];
      if (v27)
      {
        v28 = v27;
        v29 = [v27 note];

        if (v29)
        {
          v30 = [v29 managedObjectContext];
          if (v30)
          {
            v31 = v30;
            v32 = v39;
            (*(v9 + 16))(v39, v41, v8);
            v33 = (*(v9 + 80) + 32) & ~*(v9 + 80);
            v34 = swift_allocObject();
            *(v34 + 16) = v29;
            *(v34 + 24) = v31;
            v26((v34 + v33), v32, v8);
            *(v34 + v33 + v10) = v40 & 1;
            aBlock[4] = sub_215469870;
            aBlock[5] = v34;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_2151BD7E4;
            aBlock[3] = &block_descriptor_189_0;
            v35 = _Block_copy(aBlock);
            v36 = v29;
            v37 = v31;

            [v37 performBlock_];
            _Block_release(v35);

            (*(v9 + 8))(v41, v8);
            return;
          }

          (*(v9 + 8))(v41, v8);
        }

        else
        {
          (*(v9 + 8))(v41, v8);
        }

        goto LABEL_9;
      }

LABEL_23:
      __break(1u);
      return;
    }
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  sub_2151ADCD8(v7, &unk_27CA5B090);
LABEL_9:
  if (qword_27CA59920 != -1)
  {
    swift_once();
  }

  v22 = sub_21549F11C();
  __swift_project_value_buffer(v22, qword_27CA5E668);
  v23 = sub_21549F0FC();
  v24 = sub_2154A226C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2151A1000, v23, v24, "no media or note found", v25, 2u);
    MEMORY[0x21606B520](v25, -1, -1);
  }
}

uint64_t RecordingViewModel.MicrophoneState.localizedTitle.getter()
{
  if (*v0 != 1)
  {
    return 0;
  }

  v1 = [objc_opt_self() mainBundle];
  v2 = sub_2154A1D2C();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  v4 = sub_2154A1D6C();
  return v4;
}

uint64_t RecordingViewModel.MicrophoneState.localizedMessage.getter()
{
  if (*v0 != 1)
  {
    return 0;
  }

  v1 = [objc_opt_self() mainBundle];
  v2 = sub_2154A1D2C();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  v4 = sub_2154A1D6C();
  return v4;
}

uint64_t sub_215452EC4(uint64_t a1, char a2)
{
  if (!a2)
  {
    swift_getKeyPath();
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED9C();

    v3 = *(a1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastKnownAssetDuration + 8) ^ 1;
    return v3 & 1;
  }

  if (a2 != 1)
  {
    swift_getKeyPath();
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED9C();

    v4 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__showTranscriptToggle;
    swift_beginAccess();
    if (*(a1 + v4) == 1)
    {
      v5 = *(sub_21549EC8C() + 16);

      v3 = v5 > 1;
      return v3 & 1;
    }

LABEL_8:
    v3 = 0;
    return v3 & 1;
  }

  swift_getKeyPath();
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  if (*(a1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastKnownAssetDuration + 8))
  {
    goto LABEL_8;
  }

  v3 = *(a1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastKnownAssetDuration) > 15.0;
  return v3 & 1;
}

uint64_t sub_2154530F8()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5E668);
  __swift_project_value_buffer(v0, qword_27CA5E668);
  return sub_21549F0BC();
}

uint64_t sub_2154531A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v4 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  v5 = sub_21549E95C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21545329C(uint64_t a1)
{
  v2 = sub_21549E95C();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_215453460(v5);
}

uint64_t sub_215453368@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v3 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  v4 = sub_21549E95C();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_215453460(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21549E95C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_2154681B8(&qword_27CA5AE28, MEMORY[0x277D359F0]);
  v14[0] = a1;
  LOBYTE(a1) = sub_2154A1D1C();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_215453700(uint64_t a1, uint64_t a2)
{
  v4 = sub_21549E95C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

void (*sub_21545381C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_215453144();
  return sub_215453954;
}

void (*sub_215453A38(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_215453960();
  return sub_215453B70;
}

void (*sub_215453C54(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_215453B7C();
  return sub_215453D8C;
}

uint64_t sub_215453E70(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastPlaybackTime;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_215453ED4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_215453D98();
  return sub_21545400C;
}

uint64_t sub_2154540F0(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__needsSeekToTime;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_21545414C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_215454018();
  return sub_215454284;
}

double sub_215454304@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, double *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v6 = *a2;
  swift_beginAccess();
  result = *(v5 + v6);
  *a3 = result;
  return result;
}

double sub_215454408(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_2154544E4(uint64_t *a1, double a2)
{
  v4 = *a1;
  result = swift_beginAccess();
  if (*(v2 + v4) == a2)
  {
    *(v2 + v4) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }

  return result;
}

void (*sub_215454608(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_215454290();
  return sub_215454740;
}

void (*sub_215454824(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_21545474C();
  return sub_21545495C;
}

uint64_t sub_215454A40(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptViewed;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_215454A9C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_215454968();
  return sub_215454BD4;
}

void (*sub_215454CBC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_215454BE0();
  return sub_215454DF4;
}

uint64_t sub_215454EDC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  if (sub_2153556DC(*(v2 + v4), a1))
  {
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }
}

void (*sub_215455014(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_215454E00();
  return sub_21545514C;
}

BOOL sub_215455158()
{
  v1 = v0;
  v2 = sub_21549E95C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v10 = v0;
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v6 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  v7 = (*(v3 + 88))(v5, v2) == *MEMORY[0x277D359D8];
  (*(v3 + 8))(v5, v2);
  return v7;
}

id sub_21545530C()
{
  swift_getKeyPath();
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v1 = *(v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager);

  return v1;
}

id sub_2154553C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v4 = *(v3 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager);
  *a2 = v4;

  return v4;
}

void sub_2154554B0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager;
  v5 = *(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager);
  sub_21549F77C();
  v6 = v5;
  v7 = sub_2154A291C();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }
}

uint64_t sub_215455628()
{
  swift_getKeyPath();
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  swift_beginAccess();
}

uint64_t sub_2154556E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_2154557AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__observers;
  swift_beginAccess();

  v5 = sub_215465D50(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }
}

void (*sub_2154559D4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_2154558FC();
  return sub_215455B0C;
}

uint64_t sub_215455B8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t sub_215455C90(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_215455D6C(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }

  return result;
}

void (*sub_215455E88(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_215455B18();
  return sub_215455FC0;
}

id sub_215455FCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  result = [objc_opt_self() isMainThread];
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v8 = *(v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel);
  result = [v8 attachment];
  if (!result)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = result;
  v10 = [result userTitle];

  if (v10)
  {
    goto LABEL_8;
  }

  result = [v8 attachment];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = result;
  v10 = [result title];

  if (v10)
  {
    goto LABEL_8;
  }

  result = [v8 attachment];
  if (result)
  {
    v12 = result;
    v10 = [result defaultTitle];

LABEL_8:
    v13 = sub_2154A1D6C();

    v14 = sub_2154A1D2C();
    v15 = [v14 pathExtension];

    v16 = sub_2154A1D6C();
    v18 = v17;

    result = [v8 attachment];
    if (result)
    {
      v19 = result;
      v20 = [result media];

      if (v20)
      {
        v21 = [v20 mediaURL];

        if (v21)
        {
          sub_21549E51C();

          v22 = sub_21549E56C();
          (*(*(v22 - 8) + 56))(v3, 0, 1, v22);
        }

        else
        {
          v22 = sub_21549E56C();
          (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
        }

        sub_215323B30(v3, v6);
        sub_21549E56C();
        v23 = *(v22 - 8);
        if ((*(v23 + 48))(v6, 1, v22) != 1)
        {
          v24 = sub_21549E44C();
          v26 = v25;
          (*(v23 + 8))(v6, v22);
          if (v16 == v24 && v18 == v26)
          {
          }

          else
          {
            v27 = sub_2154A2FAC();

            if ((v27 & 1) == 0)
            {
              return v13;
            }
          }

          v28 = sub_2154A1D2C();

          v29 = [v28 stringByDeletingPathExtension];

          v13 = sub_2154A1D6C();
          return v13;
        }

        sub_2151ADCD8(v6, &unk_27CA5B090);
      }

      return v13;
    }

    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_215456404()
{
  swift_getKeyPath();
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  return *(v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__shouldShowTextViewOnFreshLaunch);
}

uint64_t sub_2154564E8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__shouldShowTextViewOnFreshLaunch) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__shouldShowTextViewOnFreshLaunch) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }

  return result;
}

char *RecordingViewModel.init(attachmentModel:liveTranscriptionCoordinator:summaryViewModel:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_215466468(a1, a2, a3);

  return v4;
}

unsigned __int8 *sub_215456650(unsigned __int8 *result)
{
  v2 = *result;
  if (v2 == *(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__microphoneState))
  {
    *(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__microphoneState) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }

  return result;
}

uint64_t sub_215456768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_2154A1FFC();
  v4[4] = sub_2154A1FEC();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_215456818;

  return sub_215457F18();
}

uint64_t sub_215456818()
{
  *(*v1 + 48) = v0;

  v3 = sub_2154A1FCC();
  if (v0)
  {
    v4 = sub_2154569DC;
  }

  else
  {
    v4 = sub_215456974;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_215456974()
{

  sub_215459FC0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2154569DC()
{

  if (qword_27CA59920 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_21549F11C();
  __swift_project_value_buffer(v2, qword_27CA5E668);
  v3 = v1;
  v4 = sub_21549F0FC();
  v5 = sub_2154A226C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2151A1000, v4, v5, "could not check model download status: %@", v8, 0xCu);
    sub_2151ADCD8(v9, &unk_27CA59E90);
    MEMORY[0x21606B520](v9, -1, -1);
    MEMORY[0x21606B520](v8, -1, -1);
  }

  else
  {
  }

  sub_215459FC0();
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_215456B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  sub_2154A1FFC();
  v4[22] = sub_2154A1FEC();
  v6 = sub_2154A1FCC();
  v4[23] = v6;
  v4[24] = v5;

  return MEMORY[0x2822009F8](sub_215456C28, v6, v5);
}

uint64_t sub_215456C28()
{
  v1 = [objc_opt_self() isMainThread];
  if (!v1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v1 = [*(v0[21] + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
  if (!v1)
  {
LABEL_14:
    __break(1u);
    return MEMORY[0x282200938](v1);
  }

  v2 = v1;
  v3 = [v1 audioModel];
  v0[25] = v3;

  if (v3)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_215456EDC;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E7D0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21537B6B0;
    v0[13] = &block_descriptor_297;
    v0[14] = v4;
    [v3 assetWithCompletion_];
    v1 = v0 + 2;

    return MEMORY[0x282200938](v1);
  }

  v5 = v0[21];
  v6 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__canBePlayedBack;
  swift_beginAccess();
  if (*(v5 + v6))
  {
    v7 = v0[21];
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    v0[18] = v7;
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }

  else
  {
    *(v5 + v6) = 0;
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_215456EDC()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_215456FE4, v2, v1);
}

uint64_t sub_215456FE4()
{
  v1 = v0[25];

  v2 = v0[18];

  v3 = v0[21];
  if (v2)
  {

    v4 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__canBePlayedBack;
    swift_beginAccess();
    if (*(v3 + v4) == 1)
    {
      *(v3 + v4) = 1;
      goto LABEL_9;
    }

    v8 = v0[21];
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v8;
    *(v9 + 24) = 1;
    v0[10] = v8;
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();

    goto LABEL_7;
  }

  v5 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__canBePlayedBack;
  swift_beginAccess();
  if (*(v3 + v5))
  {
    v6 = v0[21];
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    v0[18] = v6;
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();

LABEL_7:

    goto LABEL_9;
  }

  *(v3 + v5) = 0;
LABEL_9:
  v10 = v0[1];

  return v10();
}

uint64_t sub_21545724C()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  v4 = [v3 supportsGeneralASR];

  if (!v4 || (swift_getKeyPath(), sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel), sub_21549ED9C(), , v5 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isCallRecording, swift_beginAccess(), *(v1 + v5) == 1))
  {
    swift_getKeyPath();
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED9C();

    v6 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isCallRecording;
    swift_beginAccess();
    if (*(v1 + v6) != 1)
    {
      v9 = 0;
      return v9 & 1;
    }

    v7 = [v2 sharedInstance];
    v8 = [v7 supportsCallTranscription];

    if ((v8 & 1) == 0)
    {
      v9 = sub_215457DE8();
      return v9 & 1;
    }
  }

  v9 = 1;
  return v9 & 1;
}

id sub_215457438()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 supportsGeneralASR];

  if (!v2)
  {
    goto LABEL_6;
  }

  result = [*(v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
  if (result)
  {
    v4 = result;
    v5 = [result note];

    if (v5)
    {
      v6 = [v5 isEditable];

      if (v6)
      {
        swift_getKeyPath();
        sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
        sub_21549ED9C();

        v7 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isCallRecording;
        swift_beginAccess();
        v8 = *(v0 + v7) ^ 1;
        return (v8 & 1);
      }
    }

LABEL_6:
    v8 = 0;
    return (v8 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_2154575A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v4 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptionModelState;
  swift_beginAccess();
  return sub_215324EEC(v3 + v4, a2, &qword_27CA5D410);
}

uint64_t sub_215457680(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D410);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_215324EEC(a1, &v6 - v3, &qword_27CA5D410);
  return sub_215457804(v4);
}

uint64_t sub_21545772C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v3 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptionModelState;
  swift_beginAccess();
  return sub_215324EEC(v5 + v3, a1, &qword_27CA5D410);
}

uint64_t sub_215457804(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D410);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptionModelState;
  swift_beginAccess();
  sub_215324EEC(v1 + v6, v5, &qword_27CA5D410);
  v7 = sub_215466148(v5, a1);
  sub_2151ADCD8(v5, &qword_27CA5D410);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }

  else
  {
    sub_215324EEC(a1, v5, &qword_27CA5D410);
    swift_beginAccess();
    sub_21546ABB0(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_2151ADCD8(a1, &qword_27CA5D410);
}

uint64_t sub_215457A0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D410);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_215324EEC(a2, &v9 - v5, &qword_27CA5D410);
  v7 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptionModelState;
  swift_beginAccess();
  sub_21546ABB0(v6, a1 + v7);
  return swift_endAccess();
}

BOOL sub_215457AE8()
{
  v0 = sub_21549E26C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = sub_21549E20C();
  v17 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21549E28C();
  v10 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549EC0C();
  sub_21549E1AC();
  sub_2154681B8(&qword_27CA5CF18, MEMORY[0x277CC8B30]);
  sub_2154A210C();
  sub_2154A212C();
  sub_2154681B8(&qword_27CA5CF20, MEMORY[0x277CC8C20]);
  v13 = sub_2154A1D1C();
  v14 = *(v1 + 8);
  v14(v3, v0);
  v14(v6, v0);
  (*(v17 + 8))(v9, v7);
  (*(v10 + 8))(v12, v16);
  return (v13 & 1) == 0;
}

uint64_t sub_215457DE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel);
  result = [v1 audioDocument];
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result transcriptAsPlainText];

  v5 = sub_2154A1D6C();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    return 1;
  }

  result = [v1 audioDocument];
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  v10 = sub_2154A23BC();

  v11 = *(v10 + 16);

  if (v11)
  {
    return 1;
  }

  v12 = *(sub_21549EC1C() + 16);

  if (v12)
  {
    return 1;
  }

  v13 = *(sub_21549EC7C() + 16);

  if (v13)
  {
    return 1;
  }

  v14 = *(sub_21549EC5C() + 16);

  return v14 != 0;
}

uint64_t sub_215457F18()
{
  v1[10] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  v1[11] = swift_task_alloc();
  v2 = sub_21549F46C();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v3 = sub_21549F48C();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v4 = sub_21549EB6C();
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E6F0);
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D410);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  sub_2154A1FFC();
  v1[27] = sub_2154A1FEC();
  v6 = sub_2154A1FCC();
  v1[28] = v6;
  v1[29] = v5;

  return MEMORY[0x2822009F8](sub_215458194, v6, v5);
}

uint64_t sub_215458194()
{
  if ((sub_215457438() & 1) == 0)
  {
    goto LABEL_13;
  }

  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v29 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 80);
  swift_getKeyPath();
  *(v0 + 64) = v5;
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v6 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptionModelState;
  swift_beginAccess();
  *(v0 + 336) = *MEMORY[0x277D35A80];
  v7 = v3[13];
  *(v0 + 240) = v7;
  *(v0 + 248) = (v3 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v1);
  v8 = v3[7];
  *(v0 + 256) = v8;
  *(v0 + 264) = (v3 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v1, 0, 1, v4);
  v9 = *(v29 + 48);
  sub_215324EEC(v5 + v6, v2, &qword_27CA5D410);
  sub_215324EEC(v1, v2 + v9, &qword_27CA5D410);
  v10 = v3[6];
  if (v10(v2, 1, v4) == 1)
  {
    v11 = *(v0 + 152);
    sub_2151ADCD8(*(v0 + 208), &qword_27CA5D410);
    if (v10(v2 + v9, 1, v11) == 1)
    {
      v12 = *(v0 + 184);

      sub_2151ADCD8(v12, &qword_27CA5D410);
LABEL_14:

      v27 = *(v0 + 8);

      return v27();
    }

    goto LABEL_7;
  }

  v13 = *(v0 + 152);
  sub_215324EEC(*(v0 + 184), *(v0 + 200), &qword_27CA5D410);
  v14 = v10(v2 + v9, 1, v13);
  v15 = *(v0 + 200);
  v16 = *(v0 + 208);
  if (v14 == 1)
  {
    v18 = *(v0 + 152);
    v17 = *(v0 + 160);
    sub_2151ADCD8(*(v0 + 208), &qword_27CA5D410);
    (*(v17 + 8))(v15, v18);
LABEL_7:
    sub_2151ADCD8(*(v0 + 184), &qword_27CA5E6F0);
    goto LABEL_8;
  }

  v30 = *(v0 + 184);
  v22 = *(v0 + 160);
  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  (*(v22 + 32))(v23, v2 + v9, v24);
  sub_2154681B8(&qword_27CA5E6F8, MEMORY[0x277D35AB0]);
  v25 = sub_2154A1D1C();
  v26 = *(v22 + 8);
  v26(v23, v24);
  sub_2151ADCD8(v16, &qword_27CA5D410);
  v26(v15, v24);
  sub_2151ADCD8(v30, &qword_27CA5D410);
  if (v25)
  {
    goto LABEL_13;
  }

LABEL_8:
  v19 = *(v0 + 80);
  swift_getKeyPath();
  *(v0 + 72) = v19;
  sub_21549ED9C();

  v20 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isCallRecording;
  swift_beginAccess();
  if (*(v19 + v20))
  {
LABEL_13:

    goto LABEL_14;
  }

  *(v0 + 272) = sub_21549ED0C();
  v21 = swift_task_alloc();
  *(v0 + 280) = v21;
  *v21 = v0;
  v21[1] = sub_2154586A8;

  return MEMORY[0x2821951E0](0);
}

uint64_t sub_2154586A8(char a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = *(v4 + 224);
    v6 = *(v4 + 232);
    v7 = sub_2154591DC;
  }

  else
  {
    *(v4 + 340) = a1 & 1;
    v5 = *(v4 + 224);
    v6 = *(v4 + 232);
    v7 = sub_2154587D4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}