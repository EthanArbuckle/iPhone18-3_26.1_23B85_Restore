uint64_t sub_24EA12338@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = sub_24F9234D8();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x28223BE20](v2);
  v54 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LargeBreakoutOverlayViewModel();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F923F78();
  v51 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v59 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2251E0);
  MEMORY[0x28223BE20](v13 - 8);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v18 = qword_27F2251B8;
  swift_beginAccess();
  v52 = v18;
  sub_24E60169C(v1 + v18, v17, &qword_27F2251E0);
  v55 = v5;
  v19 = *(v5 + 48);
  v58 = v4;
  if (v19(v17, 1, v4) != 1)
  {
    return sub_24EA12DC0(v17, v60);
  }

  sub_24EA12D58(v17);
  v20 = *(v1 + 16);
  v21 = *MEMORY[0x277CDFA88];
  v22 = v51;
  v23 = *(v51 + 104);
  v23(v12, v21, v8);
  v47 = sub_24E747CE4(*(v1 + qword_27F39B4B8));
  v24 = *(v22 + 8);
  v24(v12, v8);
  v49 = v23;
  v50 = v24;
  v23(v12, v21, v8);
  v48 = sub_24EA12978();
  v24(v12, v8);
  v23(v59, v21, v8);
  v51 = v1;
  v25 = *(v1 + 24);
  v26 = v20;
  v61 = sub_24F92C7A8();
  v62 = v27;
  MEMORY[0x253050C20](0x79616C7265766F2ELL, 0xE800000000000000);
  sub_24F92C7F8();
  v28 = v58;
  v29 = v58[10];

  sub_24F7278B8(v26, v48, v25, &v7[v29]);
  v30 = *(v26 + 41);
  v7[40] = *(v26 + 40);
  v7[41] = v30;
  v31 = *(v26 + 32);
  sub_24EA12E24(v31 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_badge, &v7[v28[6]], type metadata accessor for BreakoutDetails.Badge);
  sub_24E60169C(v31 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_title, &v7[v28[7]], &qword_27F215340);
  sub_24E60169C(v31 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_description, &v7[v28[8]], &qword_27F215340);
  v49(v12, *MEMORY[0x277CDFA90], v8);
  v32 = v59;
  LOBYTE(v29) = sub_24F923F68();
  v33 = v50;
  v50(v12, v8);
  v33(v32, v8);
  v34 = 95;
  if (v29)
  {
    v34 = 120;
  }

  v35 = *(v26 + v34);
  if (v35 != 2)
  {
    v37 = v51;
    v38 = v60;
    if ((v35 & 1) == 0)
    {
LABEL_11:
      v36 = MEMORY[0x277CDF3D0];
      goto LABEL_12;
    }

LABEL_9:
    v36 = MEMORY[0x277CDF3C0];
    goto LABEL_12;
  }

  if (v47 != 2)
  {
    v37 = v51;
    v38 = v60;
    if ((v47 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v36 = MEMORY[0x277CDF3C0];
  v37 = v51;
  v38 = v60;
LABEL_12:
  v41 = v56;
  v40 = v57;
  v42 = v54;
  (*(v56 + 104))(v54, *v36, v57);
  v43 = v58;
  (*(v41 + 32))(&v7[v58[9]], v42, v40);
  sub_24EA12DC0(v7, v38);
  v44 = v38;
  v45 = v53;
  sub_24EA12E24(v44, v53, type metadata accessor for LargeBreakoutOverlayViewModel);
  (*(v55 + 56))(v45, 0, 1, v43);
  v46 = v52;
  swift_beginAccess();
  sub_24EA12E8C(v45, v37 + v46);
  return swift_endAccess();
}

BOOL sub_24EA12978()
{
  v1 = sub_24F923F78();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *MEMORY[0x277CDFA90];
  v7 = *(v2 + 104);
  v7(v5, v6, v1, v3);
  v8 = sub_24F923F68();
  v9 = *(v2 + 8);
  v9(v5, v1);
  v10 = *(v0 + 16);
  v11 = 48;
  if (v8)
  {
    v11 = 96;
  }

  v12 = *(v10 + v11);
  (v7)(v5, v6, v1);

  v13 = sub_24F923F68();
  v9(v5, v1);
  if (v12)
  {

    return 0;
  }

  else
  {
    v15 = 56;
    if (v13)
    {
      v15 = 104;
    }

    return *(v10 + v15) == 0;
  }
}

uint64_t sub_24EA12B18()
{

  sub_24EA12D58(v0 + qword_27F2251B8);
  v1 = v0 + qword_27F2251C0;

  return sub_24EA12D58(v1);
}

uint64_t sub_24EA12B60()
{

  sub_24EA12D58(v0 + qword_27F2251B8);
  sub_24EA12D58(v0 + qword_27F2251C0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LargeBreakoutViewModel()
{
  result = qword_27F2251C8;
  if (!qword_27F2251C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA12C4C()
{
  sub_24EA12D00();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_24EA12D00()
{
  if (!qword_27F2251D8)
  {
    type metadata accessor for LargeBreakoutOverlayViewModel();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2251D8);
    }
  }
}

uint64_t sub_24EA12D58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2251E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EA12DC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LargeBreakoutOverlayViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA12E24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EA12E8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2251E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SearchRequestDescriptor.term.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t JSRequest.addingOptions(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v87 = sub_24F92AC88();
  v3 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v5 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v83 - v7;
  MEMORY[0x28223BE20](v9);
  v111 = &v83 - v10;
  MEMORY[0x28223BE20](v11);
  v90 = &v83 - v12;
  MEMORY[0x28223BE20](v13);
  v112 = &v83 - v14;
  MEMORY[0x28223BE20](v15);
  v93 = &v83 - v16;
  MEMORY[0x28223BE20](v17);
  v95 = &v83 - v18;
  MEMORY[0x28223BE20](v19);
  v97 = &v83 - v20;
  MEMORY[0x28223BE20](v21);
  v98 = &v83 - v22;
  MEMORY[0x28223BE20](v23);
  v100 = &v83 - v24;
  MEMORY[0x28223BE20](v25);
  v102 = &v83 - v26;
  MEMORY[0x28223BE20](v27);
  v109 = &v83 - v28;
  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  v88 = *(a1 + 32);
  v31 = *(a1 + 48);
  v84 = *(a1 + 40);
  v89 = v31;
  v32 = *(a1 + 56);
  v33 = *(a1 + 64);
  v91 = *(a1 + 65);
  v92 = *(a1 + 66);
  v34 = *(a1 + 80);
  v94 = *(a1 + 72);
  v85 = v34;
  v35 = *(a1 + 96);
  v96 = *(a1 + 88);
  v99 = v35;
  v36 = *(a1 + 112);
  v107 = *(a1 + 104);
  v108 = v36;
  v37 = *(a1 + 120);
  v105 = *(a1 + 128);
  v106 = v37;
  v104 = *(a1 + 136);
  v103 = *(a1 + 144);
  v38 = *(a1 + 160);
  v86 = *(a1 + 152);
  v101 = v38;
  v39 = *(a1 + 168);
  *(&v115 + 1) = MEMORY[0x277D837D0];
  *&v114 = v30;
  *(&v114 + 1) = v29;

  sub_24F92AC78();
  sub_24E601704(&v114, &qword_27F2129B0);
  *(&v115 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221930);
  *&v114 = v32;
  v40 = v8;
  sub_24F92AC78();
  v41 = v5;
  v42 = v87;
  v43 = *(v3 + 8);
  v43(v41);
  sub_24E601704(&v114, &qword_27F2129B0);
  if (v33 <= 1)
  {
    if (v33)
    {
      v48 = 0xE500000000000000;
      v49 = 0x79726F7473;
    }

    else
    {
      v48 = 0xE900000000000072;
      v49 = 0x65706F6C65766564;
    }

    goto LABEL_10;
  }

  if (v33 == 2)
  {
    v48 = 0xE600000000000000;
    v49 = 0x656461637261;
LABEL_10:
    v44 = v42;
    v51 = v111;
    v50 = v112;
    v45 = v91;
    v46 = v90;
    v47 = v40;
    goto LABEL_11;
  }

  v44 = v42;
  v45 = v91;
  v46 = v90;
  v47 = v40;
  if (v33 != 3)
  {
    v114 = 0u;
    v115 = 0u;
    v51 = v111;
    v50 = v112;
    v52 = v43;
    goto LABEL_12;
  }

  v48 = 0xE500000000000000;
  v49 = 0x6863746177;
  v51 = v111;
  v50 = v112;
LABEL_11:
  v52 = v43;
  *(&v115 + 1) = MEMORY[0x277D837D0];
  *&v114 = v49;
  *(&v114 + 1) = v48;
LABEL_12:
  sub_24F92AC78();
  v52(v47, v44);
  sub_24E601704(&v114, &qword_27F2129B0);
  if (v39)
  {
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
  }

  else
  {
    v53 = 0;
    *(&v114 + 1) = 0;
    *&v115 = 0;
  }

  *&v114 = v39;
  *(&v115 + 1) = v53;

  sub_24F92AC78();
  v52(v51, v44);
  sub_24E601704(&v114, &qword_27F2129B0);
  v113 = v88;
  v54 = SearchOrigin.rawValue.getter();
  *(&v115 + 1) = MEMORY[0x277D837D0];
  *&v114 = v54;
  *(&v114 + 1) = v55;
  sub_24F92AC78();
  v52(v46, v44);
  sub_24E601704(&v114, &qword_27F2129B0);
  if (v89)
  {
    v56 = MEMORY[0x277D837D0];
    v57 = v97;
    v58 = v84;
  }

  else
  {
    v58 = 0;
    v56 = 0;
    *&v115 = 0;
    v57 = v97;
  }

  *&v114 = v58;
  *(&v114 + 1) = v89;
  *(&v115 + 1) = v56;

  v59 = v93;
  sub_24F92AC78();
  v52(v50, v44);
  sub_24E601704(&v114, &qword_27F2129B0);
  v60 = MEMORY[0x277D839B0];
  *(&v115 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v114) = v45;
  v61 = v95;
  sub_24F92AC78();
  v52(v59, v44);
  sub_24E601704(&v114, &qword_27F2129B0);
  *(&v115 + 1) = v60;
  LOBYTE(v114) = v92;
  sub_24F92AC78();
  v52(v61, v44);
  sub_24E601704(&v114, &qword_27F2129B0);
  v62 = v94;
  if (v94)
  {
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  }

  else
  {
    v63 = 0;
    *(&v114 + 1) = 0;
    *&v115 = 0;
  }

  v64 = v102;
  v65 = v100;
  v66 = v98;
  *&v114 = v62;
  *(&v115 + 1) = v63;

  sub_24F92AC78();
  v52(v57, v44);
  sub_24E601704(&v114, &qword_27F2129B0);
  if (v96)
  {
    v67 = MEMORY[0x277D837D0];
    v68 = v85;
  }

  else
  {
    v68 = 0;
    v67 = 0;
    *&v115 = 0;
  }

  *&v114 = v68;
  *(&v114 + 1) = v96;
  *(&v115 + 1) = v67;

  sub_24F92AC78();
  v52(v66, v44);
  sub_24E601704(&v114, &qword_27F2129B0);
  v69 = v99;
  if (v99)
  {
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  }

  else
  {
    v70 = 0;
    *(&v114 + 1) = 0;
    *&v115 = 0;
  }

  *&v114 = v69;
  *(&v115 + 1) = v70;

  sub_24F92AC78();
  v52(v65, v44);
  sub_24E601704(&v114, &qword_27F2129B0);
  if (v101)
  {
    v71 = MEMORY[0x277D837D0];
    v72 = v86;
  }

  else
  {
    v72 = 0;
    v71 = 0;
    *&v115 = 0;
  }

  *&v114 = v72;
  *(&v114 + 1) = v101;
  *(&v115 + 1) = v71;

  v73 = v109;
  sub_24F92AC78();
  v52(v64, v44);
  sub_24E601704(&v114, &qword_27F2129B0);
  v74 = v108;
  if (v108 == 1)
  {
    v75 = 0;
    v76 = 0;
    *(&v114 + 1) = 0;
    *&v115 = 0;
    v77 = v106;
    v78 = v107;
    v80 = v104;
    v79 = v105;
    v81 = v103;
  }

  else
  {
    v75 = swift_allocObject();
    v77 = v106;
    v78 = v107;
    *(v75 + 16) = v107;
    *(v75 + 24) = v74;
    v80 = v104;
    v79 = v105;
    *(v75 + 32) = v77;
    *(v75 + 40) = v79;
    *(v75 + 48) = v80;
    v81 = v103;
    *(v75 + 56) = v103;
    v76 = &type metadata for ReferrerData;
  }

  *&v114 = v75;
  *(&v115 + 1) = v76;
  sub_24EA145F0(v78, v74, v77, v79, v80, v81);
  sub_24F92AC78();
  v52(v73, v44);
  return sub_24E601704(&v114, &qword_27F2129B0);
}

unint64_t SearchRequestDescriptor.jsRepresentation(in:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v8 = *(v2 + 64);
  v35 = *(v2 + 65);
  v36 = *(v2 + 66);
  v33 = *(v2 + 72);
  v34 = *(v2 + 40);
  v32 = *(v2 + 88);
  v38 = *(v2 + 80);
  v39 = *(v2 + 96);
  v37 = *(v2 + 104);
  v9 = *(v2 + 160);
  v40 = *(v2 + 152);
  v10 = *(v2 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 32) = 1836213620;
  *(inited + 16) = xmmword_24F974E30;
  v12 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v12;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x800000024FA49720;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221930);
  v13 = sub_24EA146A0();
  *(inited + 104) = v7;
  v14 = v6;
  *(inited + 136) = v13;
  strcpy((inited + 144), "searchEntity");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225210);
  v15 = sub_24EA14858();
  *(inited + 160) = v8;
  *(inited + 192) = v15;
  strcpy((inited + 200), "targetingData");
  *(inited + 214) = -4864;
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225228);
  v16 = sub_24EA14930();
  *(inited + 216) = v10;
  *(inited + 248) = v16;
  *(inited + 256) = 0x6E696769726FLL;
  *(inited + 264) = 0xE600000000000000;
  *(inited + 296) = &type metadata for SearchOrigin;
  v17 = sub_24EA149E0();
  *(inited + 272) = v5;
  *(inited + 304) = v17;
  *(inited + 312) = 0x656372756F73;
  *(inited + 320) = 0xE600000000000000;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 352) = v18;
  v19 = sub_24EA14AE4(&qword_27F212F10, &unk_27F23B740);
  *(inited + 328) = v34;
  *(inited + 336) = v14;
  *(inited + 360) = v19;
  *(inited + 368) = 0xD000000000000014;
  v20 = MEMORY[0x277D839B0];
  v21 = MEMORY[0x277D22598];
  *(inited + 376) = 0x800000024FA48490;
  *(inited + 408) = v20;
  *(inited + 416) = v21;
  *(inited + 384) = v35;
  *(inited + 424) = 0xD000000000000011;
  *(inited + 432) = 0x800000024FA4DC60;
  *(inited + 464) = v20;
  *(inited + 472) = v21;
  *(inited + 440) = v36;
  strcpy((inited + 480), "excludedTerms");
  *(inited + 494) = -4864;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225240);
  *(inited + 520) = v22;
  v23 = sub_24EA14A34();
  *(inited + 528) = v23;
  *(inited + 496) = v33;
  *(inited + 536) = 0x74616E696769726FLL;
  *(inited + 544) = 0xEF6D726554676E69;
  *(inited + 576) = v18;
  *(inited + 584) = v19;
  *(inited + 552) = v38;
  *(inited + 560) = v32;
  *(inited + 592) = 0xD000000000000012;
  *(inited + 600) = 0x800000024FA4DC80;
  *(inited + 632) = v22;
  *(inited + 640) = v23;
  *(inited + 608) = v39;
  *(inited + 648) = 0xD00000000000001CLL;
  *(inited + 656) = 0x800000024FA4DCA0;
  *(inited + 688) = v18;
  *(inited + 696) = v19;
  *(inited + 664) = v40;
  *(inited + 672) = v9;
  strcpy((inited + 704), "referrerData");
  *(inited + 717) = 0;
  *(inited + 718) = -5120;

  if (*(&v37 + 1) == 1)
  {
    v24 = a1;
    v25 = a1;

    v26 = 0;
  }

  else
  {

    v43 = sub_24EDC3010();
    v24 = a1;
    v27 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    v26 = sub_24F92CDE8();
    sub_24E601704(&v43, &qword_27F251730);
  }

  v28 = [objc_opt_self() valueWithObject:v26 inContext:v24];
  swift_unknownObjectRelease();

  *(inited + 744) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928);
  *(inited + 752) = sub_24E6360E0();
  *(inited + 720) = v28;
  v29 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v30 = sub_24E80FFAC(v29);

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v30;
  return result;
}

uint64_t _s12GameStoreKit23SearchRequestDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v67 = *(a1 + 40);
  v69 = *(a1 + 56);
  v63 = *(a1 + 64);
  v61 = *(a1 + 65);
  v59 = *(a1 + 66);
  v57 = *(a1 + 72);
  v47 = *(a1 + 80);
  v49 = *(a1 + 96);
  v43 = *(a1 + 104);
  v45 = *(a1 + 112);
  v55 = *(a1 + 120);
  v51 = *(a1 + 88);
  v52 = *(a1 + 128);
  v53 = *(a1 + 136);
  v54 = *(a1 + 144);
  v37 = *(a1 + 152);
  v41 = *(a1 + 160);
  v39 = *(a1 + 168);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  v9 = *(a2 + 48);
  v68 = *(a2 + 56);
  v62 = *(a2 + 64);
  v60 = *(a2 + 65);
  v58 = *(a2 + 66);
  v56 = *(a2 + 72);
  v46 = *(a2 + 80);
  v50 = *(a2 + 88);
  v48 = *(a2 + 96);
  v42 = *(a2 + 104);
  v44 = *(a2 + 112);
  v11 = *(a2 + 120);
  v64 = *(a2 + 128);
  v65 = *(a2 + 136);
  v66 = *(a2 + 144);
  v36 = *(a2 + 152);
  v40 = *(a2 + 160);
  v38 = *(a2 + 168);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_24F92CE08() & 1) == 0 || (v2 != v7 || v3 != v6) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  LOBYTE(v73[0]) = v4;
  LOBYTE(v70[0]) = v8;
  v12 = SearchOrigin.rawValue.getter();
  v14 = v13;
  if (v12 == SearchOrigin.rawValue.getter() && v14 == v15)
  {
  }

  else
  {
    v16 = sub_24F92CE08();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v17 = v11;
    if ((v67 != v10 || v5 != v9) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v17 = v11;
    if (v9)
    {
      return 0;
    }
  }

  if ((sub_24EBAC8B0(v69, v68) & 1) == 0)
  {
    return 0;
  }

  if (v63 == 4)
  {
    v18 = v66;
    v20 = v64;
    v19 = v65;
    if (v62 != 4)
    {
      return 0;
    }

    result = 0;
    if (v61 != v60)
    {
      return result;
    }
  }

  else
  {
    v18 = v66;
    v20 = v64;
    v19 = v65;
    if (v62 == 4)
    {
      return 0;
    }

    v22 = sub_24F0CEE64(v63, v62);
    result = 0;
    if (v22 & 1) == 0 || ((v61 ^ v60))
    {
      return result;
    }
  }

  if (((v59 ^ v58) & 1) == 0)
  {
    if (v57)
    {
      if (!v56 || (sub_24EA14BB8(v57, v56) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v56)
    {
      return 0;
    }

    if (v51)
    {
      v23 = v54;
      v25 = v52;
      v24 = v53;
      v26 = v55;
      if (!v50)
      {
        return 0;
      }

      if (v47 != v46 || v51 != v50)
      {
        v26 = v55;
        v25 = v52;
        v24 = v53;
        v23 = v54;
        if ((sub_24F92CE08() & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      v23 = v54;
      v25 = v52;
      v24 = v53;
      v26 = v55;
      if (v50)
      {
        return 0;
      }
    }

    if (v49)
    {
      if (!v48)
      {
        return 0;
      }

      v26 = v55;
      v25 = v52;
      v24 = v53;
      v23 = v54;
      if ((sub_24EA14BB8(v49, v48) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v48)
    {
      return 0;
    }

    if (v45 == 1)
    {
      v27 = v43;
      sub_24EA145F0(v43, 1, v26, v25, v24, v23);
      if (v44 == 1)
      {
        sub_24EA145F0(v42, 1, v17, v20, v19, v18);
        sub_24EA14B54(v43, 1, v26, v25, v24, v23);
LABEL_54:
        if (v41)
        {
          if (!v40 || (v37 != v36 || v41 != v40) && (sub_24F92CE08() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v40)
        {
          return 0;
        }

        if (v39)
        {
          if (v38)
          {

            v35 = sub_24EBACE54(v39, v38);

            if (v35)
            {
              return 1;
            }
          }
        }

        else if (!v38)
        {
          return 1;
        }

        return 0;
      }

      v28 = v42;
      sub_24EA145F0(v42, v44, v17, v20, v19, v18);
    }

    else
    {
      v27 = v43;
      v73[0] = v43;
      v73[1] = v45;
      v73[2] = v26;
      v73[3] = v25;
      v74 = v24;
      v75 = v23;
      if (v44 != 1)
      {
        v70[0] = v42;
        v70[1] = v44;
        v70[2] = v17;
        v70[3] = v20;
        v71 = v19;
        v72 = v18;
        v29 = v26;
        v30 = v19;
        v31 = v25;
        sub_24EA145F0(v43, v45, v29, v25, v24, v23);
        sub_24EA145F0(v42, v44, v17, v20, v30, v18);
        sub_24EA145F0(v43, v45, v55, v25, v24, v23);
        v32 = _s12GameStoreKit12ReferrerDataV2eeoiySbAC_ACtFZ_0(v73, v70);
        v33 = v71;
        LOBYTE(v30) = v72;

        sub_24E7B6564(v33, v30);
        v34 = v74;
        LOBYTE(v30) = v75;

        sub_24E7B6564(v34, v30);
        sub_24EA14B54(v43, v45, v55, v31, v24, v23);
        if ((v32 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_54;
      }

      sub_24EA145F0(v43, v45, v26, v25, v24, v23);
      v28 = v42;
      sub_24EA145F0(v42, 1, v17, v20, v19, v18);
      sub_24EA145F0(v43, v45, v26, v25, v24, v23);

      sub_24E7B6564(v24, v23);
    }

    sub_24EA14B54(v27, v45, v26, v25, v24, v23);
    sub_24EA14B54(v28, v44, v17, v20, v19, v18);
    return 0;
  }

  return result;
}

void sub_24EA145F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a2 != 1)
  {

    sub_24E90BCC4(a5, a6);
  }
}

uint64_t sub_24EA14654()
{

  sub_24E7B6564(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

unint64_t sub_24EA146A0()
{
  result = qword_27F2251E8;
  if (!qword_27F2251E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221930);
    sub_24EA14724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2251E8);
  }

  return result;
}

unint64_t sub_24EA14724()
{
  result = qword_27F2251F0;
  if (!qword_27F2251F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2251F8);
    sub_24EA147A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2251F0);
  }

  return result;
}

unint64_t sub_24EA147A8()
{
  result = qword_27F225200;
  if (!qword_27F225200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225208);
    sub_24EA14AE4(&qword_27F212F10, &unk_27F23B740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225200);
  }

  return result;
}

unint64_t sub_24EA14858()
{
  result = qword_27F225218;
  if (!qword_27F225218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225210);
    sub_24EA148DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225218);
  }

  return result;
}

unint64_t sub_24EA148DC()
{
  result = qword_27F225220;
  if (!qword_27F225220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225220);
  }

  return result;
}

unint64_t sub_24EA14930()
{
  result = qword_27F225230;
  if (!qword_27F225230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225228);
    sub_24EA14AE4(&qword_27F21BD70, &qword_27F227A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225230);
  }

  return result;
}

unint64_t sub_24EA149E0()
{
  result = qword_27F225238;
  if (!qword_27F225238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225238);
  }

  return result;
}

unint64_t sub_24EA14A34()
{
  result = qword_27F225248;
  if (!qword_27F225248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225240);
    sub_24EA14AE4(&qword_27F213798, &unk_27F2285F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225248);
  }

  return result;
}

uint64_t sub_24EA14AE4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_24EA14B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a2 != 1)
  {

    sub_24E7B6564(a5, a6);
  }
}

uint64_t sub_24EA14BB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_24F92CE08() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24EA14C48(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_24F92C738();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v19 = 0;
    return v19 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
  v21 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 < 0)
  {
    v7 = v3;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v20 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v19 = 1;
    return v19 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = type metadata accessor for WidgetTodayCardTemplate();
    v22 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = v5;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_24F92C738();
        goto LABEL_3;
      }

      if (v11)
      {
        v17 = MEMORY[0x253052270](v13 - 4, v22);
        if (v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v15 >= *(v21 + 16))
        {
          goto LABEL_30;
        }

        v17 = *(v22 + 8 * v13);

        if (v12)
        {
LABEL_20:
          v18 = MEMORY[0x253052270](v13 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v15 >= *(v20 + 16))
      {
        goto LABEL_31;
      }

      v18 = *(a2 + 8 * v13);

LABEL_25:
      v19 = static WidgetTodayCardTemplate.== infix(_:_:)(v17, v18);

      if (v19)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v19 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA14E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9289E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v69 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3E8);
  MEMORY[0x28223BE20](v11);
  v13 = &v69 - v12;
  v14 = type metadata accessor for CallProviderConversationHandles();
  MEMORY[0x28223BE20](v14);
  v16 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = (&v69 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  if (!v22 || a1 == a2)
  {
    return 1;
  }

  v81 = v18;
  v83 = v11;
  v73 = v10;
  v71 = v7;
  v23 = 0;
  v24 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v25 = a1 + v24;
  v84 = a2 + v24;
  v26 = (v5 + 48);
  v70 = (v5 + 32);
  v72 = (v5 + 8);
  v27 = *(v19 + 72);
  v90 = v22;
  v75 = v25;
  v82 = v26;
  v74 = v27;
  while (1)
  {
    result = sub_24EA1EF3C(v25 + v27 * v23, v21, type metadata accessor for CallProviderConversationHandles);
    if (v23 == v90)
    {
      break;
    }

    v89 = v23;
    sub_24EA1EF3C(v84 + v27 * v23, v16, type metadata accessor for CallProviderConversationHandles);
    v29 = *v21 == *v16 && v21[1] == v16[1];
    if (!v29 && (sub_24F92CE08() & 1) == 0 || (v21[2] != v16[2] || v21[3] != v16[3]) && (sub_24F92CE08() & 1) == 0)
    {
      goto LABEL_75;
    }

    v30 = type metadata accessor for CallProvider();
    v31 = v30[6];
    v32 = *(v83 + 48);
    sub_24E60169C(v21 + v31, v13, &qword_27F213FB0);
    sub_24E60169C(v16 + v31, &v13[v32], &qword_27F213FB0);
    v33 = *v82;
    if ((*v82)(v13, 1, v4) == 1)
    {
      if (v33(&v13[v32], 1, v4) != 1)
      {
        goto LABEL_79;
      }

      result = sub_24E601704(v13, &qword_27F213FB0);
    }

    else
    {
      v95 = v30;
      v34 = v73;
      sub_24E60169C(v13, v73, &qword_27F213FB0);
      if (v33(&v13[v32], 1, v4) == 1)
      {
        (*v72)(v34, v4);
LABEL_79:
        sub_24E601704(v13, &qword_27F21E3E8);
LABEL_75:
        sub_24EA1EFA4(v16, type metadata accessor for CallProviderConversationHandles);
        sub_24EA1EFA4(v21, type metadata accessor for CallProviderConversationHandles);
        return 0;
      }

      v35 = v71;
      (*v70)(v71, &v13[v32], v4);
      sub_24EA1F004(&qword_27F21E3F8, MEMORY[0x277D21C48]);
      LODWORD(v94) = sub_24F92AFF8();
      v36 = *v72;
      (*v72)(v35, v4);
      v36(v34, v4);
      result = sub_24E601704(v13, &qword_27F213FB0);
      v30 = v95;
      if ((v94 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    if (*(v21 + v30[7]) != *(v16 + v30[7]))
    {
      goto LABEL_75;
    }

    if (*(v21 + v30[8]) != *(v16 + v30[8]))
    {
      goto LABEL_75;
    }

    v37 = *(v81 + 20);
    v38 = *(v21 + v37);
    v39 = *(v16 + v37);
    v40 = *(v38 + 16);
    if (v40 != *(v39 + 16))
    {
      goto LABEL_75;
    }

    if (v40 && v38 != v39)
    {
      v41 = 0;
      v87 = v39 + 32;
      v88 = v38 + 32;
      v79 = v13;
      v80 = v4;
      v85 = v21;
      v86 = v16;
      v77 = v39;
      v78 = v38;
      v76 = v40;
      while (v41 < *(v38 + 16))
      {
        if (v41 >= *(v39 + 16))
        {
          goto LABEL_83;
        }

        v42 = (v88 + 16 * v41);
        v43 = *v42;
        v44 = (v87 + 16 * v41);
        v45 = *v44;
        v46 = *(*v42 + 2);
        if (v46 != *(*v44 + 16))
        {
          goto LABEL_75;
        }

        v47 = v42[1];
        v93 = v44[1];
        v91 = v41;
        v92 = v47;
        if (v46)
        {

          if (v43 != v45)
          {
            v48 = 0;
            v49 = 0;
            v94 = v46;
            v95 = v43;
            while (v49 < *(v43 + 2))
            {
              if (v49 >= *(v45 + 16))
              {
                goto LABEL_81;
              }

              ++v49;
              v51 = &v43[v48];
              v52 = *&v43[v48 + 10];
              v53 = *(v51 + 6);
              v54 = *(v51 + 32);
              v55 = v45;
              v56 = *(v45 + v48 * 4 + 32);
              v58 = *(v45 + v48 * 4 + 40);
              v57 = *(v45 + v48 * 4 + 48);
              if (v54 == 1)
              {
                v59 = 0x6D754E656E6F6870;
              }

              else
              {
                v59 = 0x6464416C69616D65;
              }

              if (v54 == 1)
              {
                v60 = 0xEB00000000726562;
              }

              else
              {
                v60 = 0xEC00000073736572;
              }

              if (v54)
              {
                v61 = v59;
              }

              else
              {
                v61 = 0x636972656E6567;
              }

              if (v54)
              {
                v62 = v60;
              }

              else
              {
                v62 = 0xE700000000000000;
              }

              if (v56 == 1)
              {
                v63 = 0x6D754E656E6F6870;
              }

              else
              {
                v63 = 0x6464416C69616D65;
              }

              if (v56 == 1)
              {
                v64 = 0xEB00000000726562;
              }

              else
              {
                v64 = 0xEC00000073736572;
              }

              if (v56)
              {
                v65 = v63;
              }

              else
              {
                v65 = 0x636972656E6567;
              }

              if (v56)
              {
                v66 = v64;
              }

              else
              {
                v66 = 0xE700000000000000;
              }

              if (v61 == v65 && v62 == v66)
              {
              }

              else
              {
                v67 = sub_24F92CE08();

                if ((v67 & 1) == 0)
                {

LABEL_74:

                  v21 = v85;
                  v16 = v86;
                  goto LABEL_75;
                }
              }

              v45 = v55;
              if (v52 == v58 && v53 == v57)
              {

                v43 = v95;
              }

              else
              {
                v50 = sub_24F92CE08();

                v43 = v95;
                if ((v50 & 1) == 0)
                {

                  goto LABEL_74;
                }
              }

              v48 += 6;
              if (v94 == v49)
              {
                goto LABEL_69;
              }
            }

            __break(1u);
LABEL_81:
            __break(1u);
            break;
          }
        }

        else
        {
        }

LABEL_69:
        v68 = sub_24EDD3E74(v92, v93);

        v13 = v79;
        v4 = v80;
        v21 = v85;
        v16 = v86;
        v39 = v77;
        v38 = v78;
        if ((v68 & 1) == 0)
        {
          goto LABEL_75;
        }

        v41 = v91 + 1;
        if (v91 + 1 == v76)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_83:
      __break(1u);
      break;
    }

LABEL_6:
    v23 = v89 + 1;
    sub_24EA1EFA4(v16, type metadata accessor for CallProviderConversationHandles);
    sub_24EA1EFA4(v21, type metadata accessor for CallProviderConversationHandles);
    result = 1;
    v25 = v75;
    v27 = v74;
    if (v23 == v90)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA15730(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v29 = a2 + 32;
  v30 = result + 32;
  v4 = 0xEC00000073736572;
  v28 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {
      __break(1u);
      return result;
    }

    v5 = (v30 + 16 * v3);
    v6 = (v29 + 16 * v3);
    v34 = *v5;
    v35 = *v6;
    v7 = *(*v5 + 16);
    if (v7 != *(*v6 + 16))
    {
      return 0;
    }

    v8 = v5[1];
    v31 = v3;
    v32 = v6[1];
    if (!v7)
    {

      goto LABEL_44;
    }

    if (v34 != v35)
    {
      break;
    }

LABEL_44:
    v27 = sub_24EDD3E74(v8, v32);

    if ((v27 & 1) == 0)
    {
      return 0;
    }

    v3 = v31 + 1;
    result = 1;
    v2 = v28;
    if (v31 + 1 == v28)
    {
      return result;
    }
  }

  v9 = 0;
  v33 = v8;
  while (1)
  {
    v12 = *(v34 + v9 + 40);
    v11 = *(v34 + v9 + 48);
    v13 = *(v34 + v9 + 32);
    v14 = *(v35 + v9 + 32);
    v16 = *(v35 + v9 + 40);
    v15 = *(v35 + v9 + 48);
    if (v13 == 1)
    {
      v17 = 0x6D754E656E6F6870;
    }

    else
    {
      v17 = 0x6464416C69616D65;
    }

    if (v13 == 1)
    {
      v18 = 0xEB00000000726562;
    }

    else
    {
      v18 = v4;
    }

    if (*(v34 + v9 + 32))
    {
      v19 = v17;
    }

    else
    {
      v19 = 0x636972656E6567;
    }

    if (*(v34 + v9 + 32))
    {
      v20 = v18;
    }

    else
    {
      v20 = 0xE700000000000000;
    }

    if (v14 == 1)
    {
      v21 = 0x6D754E656E6F6870;
    }

    else
    {
      v21 = 0x6464416C69616D65;
    }

    v22 = v4;
    if (v14 == 1)
    {
      v23 = 0xEB00000000726562;
    }

    else
    {
      v23 = v4;
    }

    if (*(v35 + v9 + 32))
    {
      v24 = v21;
    }

    else
    {
      v24 = 0x636972656E6567;
    }

    if (*(v35 + v9 + 32))
    {
      v25 = v23;
    }

    else
    {
      v25 = 0xE700000000000000;
    }

    if (v19 == v24 && v20 == v25)
    {
    }

    else
    {
      v26 = sub_24F92CE08();

      if ((v26 & 1) == 0)
      {

        goto LABEL_50;
      }
    }

    v8 = v33;
    if (v12 == v16 && v11 == v15)
    {

      v4 = v22;
      goto LABEL_11;
    }

    v10 = sub_24F92CE08();

    v4 = v22;
    if ((v10 & 1) == 0)
    {
      break;
    }

LABEL_11:
    v9 += 24;
    if (!--v7)
    {
      goto LABEL_44;
    }
  }

LABEL_50:

  return 0;
}

uint64_t sub_24EA15AB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      v8 = *(v3 - 16);
      v9 = *(v4 - 16);
      v11 = *(v4 - 1);
      v10 = *v4;
      if (v8 == 1)
      {
        v12 = 0x6D754E656E6F6870;
      }

      else
      {
        v12 = 0x6464416C69616D65;
      }

      if (v8 == 1)
      {
        v13 = 0xEB00000000726562;
      }

      else
      {
        v13 = 0xEC00000073736572;
      }

      if (*(v3 - 16))
      {
        v14 = v12;
      }

      else
      {
        v14 = 0x636972656E6567;
      }

      if (*(v3 - 16))
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE700000000000000;
      }

      if (v9 == 1)
      {
        v16 = 0x6D754E656E6F6870;
      }

      else
      {
        v16 = 0x6464416C69616D65;
      }

      if (v9 == 1)
      {
        v17 = 0xEB00000000726562;
      }

      else
      {
        v17 = 0xEC00000073736572;
      }

      if (*(v4 - 16))
      {
        v18 = v16;
      }

      else
      {
        v18 = 0x636972656E6567;
      }

      if (*(v4 - 16))
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE700000000000000;
      }

      if (v14 == v18 && v15 == v19)
      {
      }

      else
      {
        v20 = sub_24F92CE08();

        if ((v20 & 1) == 0)
        {

          return 0;
        }
      }

      if (v7 == v11 && v6 == v10)
      {
      }

      else
      {
        v5 = sub_24F92CE08();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_24EA15CE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = sub_24F92C738();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = sub_24F92C738();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v33 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (a2 >> 62)
  {
    v10 = v11;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v34 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x253052270](v12 - 4, a1);
          v15 = result;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_83;
          }

          v15 = *(a1 + 8 * v12);

          if (v34)
          {
LABEL_22:
            v16 = MEMORY[0x253052270](v12 - 4, a2);
            goto LABEL_27;
          }
        }

        if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_84;
        }

        v16 = *(a2 + 8 * v12);

LABEL_27:
        v17 = *(v15 + 16) == *(v16 + 16) && *(v15 + 24) == *(v16 + 24);
        if (!v17 && (sub_24F92CE08() & 1) == 0 || *(v15 + 32) != *(v16 + 32))
        {
LABEL_47:

          return 0;
        }

        v18 = *(v15 + 48);
        v19 = *(v16 + 48);
        if (v18)
        {
          if (!v19 || (*(v15 + 40) != *(v16 + 40) || v18 != v19) && (sub_24F92CE08() & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        else if (v19)
        {
          goto LABEL_47;
        }

        if ((*(v15 + 56) != *(v16 + 56) || *(v15 + 64) != *(v16 + 64)) && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_47;
        }

        v20 = *(v15 + 72);
        v21 = *(v16 + 72);

        result = v20 == v21;
        if (v20 == v21)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return result;
      }
    }

    v22 = a1 + 32;
    v23 = a2 + 32;
    v24 = *(v33 + 16);
    v25 = *(v9 + 16);
    while (1)
    {
      if (!v24)
      {
        goto LABEL_81;
      }

      if (!v25)
      {
        break;
      }

      v26 = *v22;
      v27 = *v23;
      v28 = *(*v22 + 16) == *(*v23 + 16) && *(*v22 + 24) == *(*v23 + 24);
      if (!v28 && (sub_24F92CE08() & 1) == 0 || *(v26 + 32) != *(v27 + 32))
      {
        return 0;
      }

      v29 = *(v26 + 48);
      v30 = *(v27 + 48);
      if (v29)
      {
        if (!v30)
        {
          return 0;
        }

        v31 = *(v26 + 40) == *(v27 + 40) && v29 == v30;
        if (!v31 && (sub_24F92CE08() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v30)
      {
        return 0;
      }

      v32 = *(v26 + 56) == *(v27 + 56) && *(v26 + 64) == *(v27 + 64);
      if (!v32 && (sub_24F92CE08() & 1) == 0 || *(v26 + 72) != *(v27 + 72))
      {
        return 0;
      }

      --v25;
      --v24;
      v22 += 8;
      v23 += 8;
      result = 1;
      if (!--v5)
      {
        return result;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA16044(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = sub_24F92C738();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = sub_24F92C738();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_66:
    v17 = 0;
    return v17 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_66;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_42;
  }

  v7 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4)
  {
    v7 = v8;
  }

  v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (a2 >> 62)
  {
    v9 = v10;
  }

  if (v7 == v9)
  {
LABEL_42:
    v17 = 1;
    return v17 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v30 = a2 & 0xC000000000000001;
      v11 = 4;
      while (1)
      {
        v12 = v11 - 4;
        v13 = v11 - 3;
        if (__OFADD__(v11 - 4, 1))
        {
          __break(1u);
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x253052270](v11 - 4, a1);
          v14 = result;
          if (v30)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_74;
          }

          v14 = *(a1 + 8 * v11);

          if (v30)
          {
LABEL_23:
            v15 = MEMORY[0x253052270](v11 - 4, a2);
            goto LABEL_28;
          }
        }

        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        v15 = *(a2 + 8 * v11);

LABEL_28:
        v16 = *(v14 + 16) == *(v15 + 16) && *(v14 + 24) == *(v15 + 24);
        if (!v16 && (sub_24F92CE08() & 1) == 0 || *(v14 + 32) != *(v15 + 32) || *(v14 + 40) != *(v15 + 40) || (sub_24F0C97AC(*(v14 + 64), *(v15 + 64)) & 1) == 0 || (*(v14 + 72) != *(v15 + 72) || *(v14 + 80) != *(v15 + 80)) && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_65;
        }

        v17 = sub_24EA16B7C(*(v14 + 104), *(v15 + 104));

        if (v17)
        {
          ++v11;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v17 & 1;
      }
    }

    v18 = a1 + 32;
    v19 = a2 + 32;
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (!v20)
      {
        goto LABEL_72;
      }

      if (!v21)
      {
        break;
      }

      v22 = *v18;
      v23 = *v19;
      v24 = *(*v18 + 16) == *(*v19 + 16) && *(*v18 + 24) == *(*v19 + 24);
      if (!v24 && (sub_24F92CE08() & 1) == 0)
      {
        goto LABEL_66;
      }

      if (*(v22 + 32) != *(v23 + 32) || *(v22 + 40) != *(v23 + 40))
      {
        goto LABEL_66;
      }

      v26 = *(v23 + 64);
      v27 = *(v22 + 64);

      if ((sub_24F0C97AC(v27, v26) & 1) == 0 || (*(v22 + 72) == *(v23 + 72) ? (v28 = *(v22 + 80) == *(v23 + 80)) : (v28 = 0), !v28 && (sub_24F92CE08() & 1) == 0))
      {
LABEL_65:

        goto LABEL_66;
      }

      v29 = sub_24EA16B7C(*(v22 + 104), *(v23 + 104));

      if ((v29 & 1) == 0)
      {
        goto LABEL_66;
      }

      --v21;
      --v20;
      v18 += 8;
      v19 += 8;
      v17 = 1;
      if (!--v5)
      {
        return v17 & 1;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA16378(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_135:
    v5 = sub_24F92C738();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = sub_24F92C738();
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if (v5 < 0)
  {
    goto LABEL_142;
  }

  if (((a2 | a1) & 0xC000000000000001) != 0)
  {
    v50 = a2 & 0xC000000000000001;
    for (i = 4; ; ++i)
    {
      v12 = i - 4;
      v13 = i - 3;
      if (__OFADD__(i - 4, 1))
      {
        __break(1u);
        goto LABEL_135;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x253052270](i - 4, a1);
        v14 = result;
        if (v50)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_140;
        }

        v14 = *(a1 + 8 * i);

        if (v50)
        {
LABEL_23:
          v15 = MEMORY[0x253052270](i - 4, a2);
          goto LABEL_28;
        }
      }

      if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_141;
      }

      v15 = *(a2 + 8 * i);

LABEL_28:
      v16 = *(v14 + 16);
      v17 = *(v15 + 16);
      v18 = 0x6E6F69736976;
      if (v16 == 5)
      {
        v18 = 6513005;
      }

      v19 = 0xE600000000000000;
      if (v16 == 5)
      {
        v19 = 0xE300000000000000;
      }

      v20 = 0x6863746177;
      if (v16 != 3)
      {
        v20 = 30324;
      }

      v21 = 0xE200000000000000;
      if (v16 == 3)
      {
        v21 = 0xE500000000000000;
      }

      if (*(v14 + 16) <= 4u)
      {
        v18 = v20;
        v19 = v21;
      }

      v22 = 0x736567617373656DLL;
      if (v16 == 1)
      {
        v22 = 6578544;
      }

      v23 = 0xE800000000000000;
      if (v16 == 1)
      {
        v23 = 0xE300000000000000;
      }

      if (!*(v14 + 16))
      {
        v22 = 0x656E6F6870;
        v23 = 0xE500000000000000;
      }

      if (*(v14 + 16) <= 2u)
      {
        v24 = v22;
      }

      else
      {
        v24 = v18;
      }

      if (*(v14 + 16) <= 2u)
      {
        v25 = v23;
      }

      else
      {
        v25 = v19;
      }

      if (*(v15 + 16) <= 2u)
      {
        if (*(v15 + 16))
        {
          if (v17 == 1)
          {
            v26 = 0xE300000000000000;
            if (v24 != 6578544)
            {
              goto LABEL_71;
            }
          }

          else
          {
            v26 = 0xE800000000000000;
            if (v24 != 0x736567617373656DLL)
            {
              goto LABEL_71;
            }
          }
        }

        else
        {
          v26 = 0xE500000000000000;
          if (v24 != 0x656E6F6870)
          {
            goto LABEL_71;
          }
        }
      }

      else if (*(v15 + 16) > 4u)
      {
        if (v17 == 5)
        {
          v26 = 0xE300000000000000;
          if (v24 != 6513005)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v26 = 0xE600000000000000;
          if (v24 != 0x6E6F69736976)
          {
            goto LABEL_71;
          }
        }
      }

      else if (v17 == 3)
      {
        v26 = 0xE500000000000000;
        if (v24 != 0x6863746177)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v26 = 0xE200000000000000;
        if (v24 != 30324)
        {
          goto LABEL_71;
        }
      }

      if (v25 == v26)
      {

        goto LABEL_72;
      }

LABEL_71:
      v27 = sub_24F92CE08();

      if ((v27 & 1) == 0)
      {
        goto LABEL_131;
      }

LABEL_72:
      v28 = *(v14 + 48);
      v29 = *(v14 + 56);

      v30 = *(v15 + 48);
      v4 = *(v15 + 56);

      if (v29)
      {
        if (!v4)
        {
          return 0;
        }
      }

      else
      {
        if (v28 == v30)
        {
          v31 = v4;
        }

        else
        {
          v31 = 1;
        }

        if (v31)
        {
          return 0;
        }
      }

      if (v13 == v5)
      {
        return 1;
      }
    }
  }

  v32 = a1 + 32;
  v33 = a2 + 32;
  v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v35 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v34)
  {
    if (!v35)
    {
      goto LABEL_139;
    }

    v36 = *v32;
    v37 = *(*v32 + 16);
    if (v37 <= 2)
    {
      if (*(*v32 + 16))
      {
        if (v37 == 1)
        {
          v39 = 6578544;
        }

        else
        {
          v39 = 0x736567617373656DLL;
        }

        if (v37 == 1)
        {
          v38 = 0xE300000000000000;
        }

        else
        {
          v38 = 0xE800000000000000;
        }
      }

      else
      {
        v38 = 0xE500000000000000;
        v39 = 0x656E6F6870;
      }
    }

    else if (*(*v32 + 16) > 4u)
    {
      if (v37 == 5)
      {
        v38 = 0xE300000000000000;
        v39 = 6513005;
      }

      else
      {
        v38 = 0xE600000000000000;
        v39 = 0x6E6F69736976;
      }
    }

    else if (v37 == 3)
    {
      v38 = 0xE500000000000000;
      v39 = 0x6863746177;
    }

    else
    {
      v38 = 0xE200000000000000;
      v39 = 30324;
    }

    v40 = *v33;
    v41 = *(*v33 + 16);
    if (v41 <= 2)
    {
      if (*(*v33 + 16))
      {
        if (v41 == 1)
        {
          v42 = 0xE300000000000000;
          if (v39 != 6578544)
          {
            goto LABEL_124;
          }
        }

        else
        {
          v42 = 0xE800000000000000;
          if (v39 != 0x736567617373656DLL)
          {
            goto LABEL_124;
          }
        }
      }

      else
      {
        v42 = 0xE500000000000000;
        if (v39 != 0x656E6F6870)
        {
          goto LABEL_124;
        }
      }
    }

    else if (*(*v33 + 16) > 4u)
    {
      if (v41 == 5)
      {
        v43 = 6513005;
      }

      else
      {
        v43 = 0x6E6F69736976;
      }

      if (v41 == 5)
      {
        v42 = 0xE300000000000000;
      }

      else
      {
        v42 = 0xE600000000000000;
      }

      if (v39 != v43)
      {
        goto LABEL_124;
      }
    }

    else if (v41 == 3)
    {
      v42 = 0xE500000000000000;
      if (v39 != 0x6863746177)
      {
        goto LABEL_124;
      }
    }

    else
    {
      v42 = 0xE200000000000000;
      if (v39 != 30324)
      {
        goto LABEL_124;
      }
    }

    if (v38 == v42)
    {

      goto LABEL_125;
    }

LABEL_124:
    v44 = sub_24F92CE08();

    if ((v44 & 1) == 0)
    {
LABEL_131:

      return 0;
    }

LABEL_125:
    v45 = *(v36 + 48);
    v46 = *(v36 + 56);

    v47 = *(v40 + 48);
    v48 = *(v40 + 56);

    if (v46)
    {
      if (!v48)
      {
        return 0;
      }
    }

    else
    {
      if (v45 == v47)
      {
        v49 = v48;
      }

      else
      {
        v49 = 1;
      }

      if (v49)
      {
        return 0;
      }
    }

    --v35;
    --v34;
    v32 += 8;
    v33 += 8;
    result = 1;
    if (!--v5)
    {
      return result;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_24EA169B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v8 = v4[1];
      v7 = v4[2];
      v9 = v4[3];
      v25 = v4[5];
      v10 = *(v3 - 1);
      v11 = *v3;
      v12 = v3[1];
      v13 = v3[2];
      v14 = v3[3];
      v23 = v3[4];
      v24 = v3[5];
      v22 = v4[4];
      if (v5)
      {
        if (!v10)
        {
          return 0;
        }

        if (*(v4 - 2) != *(v3 - 2) || v5 != v10)
        {
          v21 = v4[3];
          v15 = v3[3];
          v16 = sub_24F92CE08();
          v14 = v15;
          v9 = v21;
          if ((v16 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v10)
      {
        return 0;
      }

      if (v6 != v11 || v8 != v12)
      {
        v17 = v9;
        v18 = v14;
        v19 = sub_24F92CE08();
        v14 = v18;
        v9 = v17;
        if ((v19 & 1) == 0)
        {
          return 0;
        }
      }

      if (v9)
      {
        if (!v14 || (v7 != v13 || v9 != v14) && (sub_24F92CE08() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v14)
      {
        return 0;
      }

      if (v25)
      {
        if (!v24 || (v22 != v23 || v25 != v24) && (sub_24F92CE08() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v24)
      {
        return 0;
      }

      v4 += 8;
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_24EA16B7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 49);
    v4 = (a1 + 49);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v19 = *(v3 - 9);
      v20 = *(v4 - 9);
      v7 = *(v3 - 1);
      v8 = *v3;
      v9 = 1667851624;
      if (*(v4 - 17) == 2)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v9 = 7496556;
        v10 = 0xE300000000000000;
      }

      v11 = 1734701162;
      if (*(v4 - 17))
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v11 = 6778480;
        v12 = 0xE300000000000000;
      }

      if (*(v4 - 17) <= 1u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (*(v4 - 17) <= 1u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      if (*(v3 - 17) > 1u)
      {
        if (*(v3 - 17) == 2)
        {
          v15 = 0xE400000000000000;
          if (v13 != 1667851624)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v15 = 0xE300000000000000;
          if (v13 != 7496556)
          {
            goto LABEL_29;
          }
        }
      }

      else if (*(v3 - 17))
      {
        v15 = 0xE400000000000000;
        if (v13 != 1734701162)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v15 = 0xE300000000000000;
        if (v13 != 6778480)
        {
          goto LABEL_29;
        }
      }

      if (v14 != v15)
      {
LABEL_29:
        v16 = sub_24F92CE08();

        if ((v16 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_30;
      }

LABEL_30:
      result = 0;
      if (v5)
      {
        if (!v7)
        {
          return result;
        }
      }

      else
      {
        if (v20 == v19)
        {
          v18 = v7;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          return result;
        }
      }

      if ((v6 ^ v8))
      {
        return result;
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_24EA16D54(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = sub_24F92C738();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = sub_24F92C738();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4)
  {
    v7 = v8;
  }

  v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (a2 >> 62)
  {
    v9 = v10;
  }

  if (v7 == v9)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v11 = a1 & 0xC000000000000001;
      v12 = a2 & 0xC000000000000001;
      for (i = 4; ; ++i)
      {
        v15 = i - 4;
        if (__OFADD__(i - 4, 1))
        {
          __break(1u);
LABEL_207:
          __break(1u);
          goto LABEL_208;
        }

        if (v11)
        {
          result = MEMORY[0x253052270](i - 4, a1);
          v16 = result;
          v68 = i - 3;
          if (v12)
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_210;
          }

          v16 = *(a1 + 8 * i);

          v68 = i - 3;
          if (v12)
          {
LABEL_26:
            v17 = MEMORY[0x253052270](i - 4, a2);
            goto LABEL_31;
          }
        }

        if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_211;
        }

        v17 = *(a2 + 8 * i);

LABEL_31:
        v18 = *(v16 + 16);
        v19 = *(v17 + 16);
        v70 = v17;
        if (v18)
        {
          if (!v19)
          {
            goto LABEL_196;
          }

          v20 = *(v18 + 16) == *(v19 + 16) && *(v18 + 24) == *(v19 + 24);
          if (!v20 && (sub_24F92CE08() & 1) == 0 || *(v18 + 32) != *(v19 + 32) || *(v18 + 40) != *(v19 + 40))
          {
            goto LABEL_196;
          }

          v21 = *(v18 + 64);
          if (v21 <= 3)
          {
            if (*(v18 + 64) > 1u)
            {
              if (v21 == 2)
              {
                v23 = 0xD000000000000016;
                v22 = 0x800000024FA43300;
              }

              else
              {
                v22 = 0xE500000000000000;
                v23 = 0x646E756F72;
              }
            }

            else
            {
              if (*(v18 + 64))
              {
                v23 = 0x526465646E756F72;
              }

              else
              {
                v23 = 0x6669636570736E75;
              }

              if (*(v18 + 64))
              {
                v22 = 0xEB00000000746365;
              }

              else
              {
                v22 = 0xEB00000000646569;
              }
            }
          }

          else if (*(v18 + 64) <= 5u)
          {
            if (v21 == 4)
            {
              v23 = 0xD000000000000010;
              v22 = 0x800000024FA43320;
            }

            else
            {
              v22 = 0xE400000000000000;
              v23 = 1819044208;
            }
          }

          else if (v21 == 6)
          {
            v22 = 0xE300000000000000;
            v23 = 7364969;
          }

          else if (v21 == 7)
          {
            v22 = 0xE600000000000000;
            v23 = 0x746365527674;
          }

          else
          {
            v22 = 0xE900000000000064;
            v23 = 0x656E726F64616E75;
          }

          v24 = *(v19 + 64);
          v66 = v16;
          if (v24 <= 3)
          {
            if (*(v19 + 64) > 1u)
            {
              if (v24 == 2)
              {
                v26 = 0xD000000000000016;
                v25 = 0x800000024FA43300;
              }

              else
              {
                v25 = 0xE500000000000000;
                v26 = 0x646E756F72;
              }
            }

            else
            {
              v26 = 0x6669636570736E75;
              v25 = 0xEB00000000646569;
              if (*(v19 + 64))
              {
                v26 = 0x526465646E756F72;
                v25 = 0xEB00000000746365;
              }
            }
          }

          else if (*(v19 + 64) <= 5u)
          {
            if (v24 == 4)
            {
              v26 = 0xD000000000000010;
              v25 = 0x800000024FA43320;
            }

            else
            {
              v25 = 0xE400000000000000;
              v26 = 1819044208;
            }
          }

          else if (v24 == 6)
          {
            v25 = 0xE300000000000000;
            v26 = 7364969;
          }

          else if (v24 == 7)
          {
            v25 = 0xE600000000000000;
            v26 = 0x746365527674;
          }

          else
          {
            v25 = 0xE900000000000064;
            v26 = 0x656E726F64616E75;
          }

          v27 = v12;
          if (v23 == v26 && v22 == v25)
          {
          }

          else
          {
            v28 = sub_24F92CE08();

            if ((v28 & 1) == 0)
            {
              goto LABEL_195;
            }
          }

          if ((*(v18 + 72) != *(v19 + 72) || *(v18 + 80) != *(v19 + 80)) && (sub_24F92CE08() & 1) == 0)
          {
            goto LABEL_195;
          }

          v29 = sub_24EA16B7C(*(v18 + 104), *(v19 + 104));

          v12 = v27;
          v11 = a1 & 0xC000000000000001;
          v16 = v66;
          if ((v29 & 1) == 0)
          {
            goto LABEL_196;
          }
        }

        else if (v19)
        {
          goto LABEL_196;
        }

        v30 = *(v16 + 24);
        v31 = *(v70 + 24);
        if (v30)
        {
          if (!v31)
          {
            goto LABEL_196;
          }

          if ((sub_24F91F418() & 1) == 0)
          {
            goto LABEL_195;
          }

          v32 = *(v30 + OBJC_IVAR____TtC12GameStoreKit5Video_preview);
          v33 = *(v31 + OBJC_IVAR____TtC12GameStoreKit5Video_preview);
          v34 = *(v32 + 16) == *(v33 + 16) && *(v32 + 24) == *(v33 + 24);
          if (!v34 && (sub_24F92CE08() & 1) == 0)
          {
            goto LABEL_195;
          }

          if (*(v32 + 32) != *(v33 + 32) || *(v32 + 40) != *(v33 + 40) || (sub_24F0C97AC(*(v32 + 64), *(v33 + 64)) & 1) == 0)
          {
            goto LABEL_195;
          }

          v35 = *(v32 + 72) == *(v33 + 72) && *(v32 + 80) == *(v33 + 80);
          if (!v35 && (sub_24F92CE08() & 1) == 0)
          {
            goto LABEL_195;
          }

          v14 = sub_24EA16B7C(*(v32 + 104), *(v33 + 104));

          if ((v14 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {

          if (v31)
          {
            goto LABEL_197;
          }
        }

        result = 1;
        if (v68 == v5)
        {
          return result;
        }
      }
    }

    v36 = a1 + 32;
    v37 = a2 + 32;
    v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v39 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (!v38)
      {
        goto LABEL_207;
      }

      if (!v39)
      {
        break;
      }

      v41 = *v36;
      v42 = *v37;
      v43 = *(*v36 + 16);
      v44 = *(*v37 + 16);
      if (v43)
      {
        if (!v44)
        {
          return 0;
        }

        v45 = *(v43 + 16) == *(v44 + 16) && *(v43 + 24) == *(v44 + 24);
        if (!v45 && (sub_24F92CE08() & 1) == 0)
        {
          return 0;
        }

        if (*(v43 + 32) != *(v44 + 32) || *(v43 + 40) != *(v44 + 40))
        {
          return 0;
        }

        v47 = *(v43 + 64);
        v67 = v38;
        if (v47 <= 3)
        {
          v50 = 0xD000000000000016;
          if (v47 != 2)
          {
            v50 = 0x646E756F72;
          }

          v51 = 0x800000024FA43300;
          if (v47 != 2)
          {
            v51 = 0xE500000000000000;
          }

          v52 = 0x6669636570736E75;
          if (*(v43 + 64))
          {
            v52 = 0x526465646E756F72;
          }

          v53 = 0xEB00000000646569;
          if (*(v43 + 64))
          {
            v53 = 0xEB00000000746365;
          }

          if (*(v43 + 64) <= 1u)
          {
            v49 = v52;
          }

          else
          {
            v49 = v50;
          }

          if (*(v43 + 64) <= 1u)
          {
            v48 = v53;
          }

          else
          {
            v48 = v51;
          }
        }

        else if (*(v43 + 64) <= 5u)
        {
          if (v47 == 4)
          {
            v49 = 0xD000000000000010;
            v48 = 0x800000024FA43320;
          }

          else
          {
            v48 = 0xE400000000000000;
            v49 = 1819044208;
          }
        }

        else if (v47 == 6)
        {
          v48 = 0xE300000000000000;
          v49 = 7364969;
        }

        else if (v47 == 7)
        {
          v48 = 0xE600000000000000;
          v49 = 0x746365527674;
        }

        else
        {
          v48 = 0xE900000000000064;
          v49 = 0x656E726F64616E75;
        }

        v54 = *(v44 + 64);
        if (v54 <= 3)
        {
          if (*(v44 + 64) > 1u)
          {
            if (v54 == 2)
            {
              v56 = 0xD000000000000016;
              v55 = 0x800000024FA43300;
            }

            else
            {
              v55 = 0xE500000000000000;
              v56 = 0x646E756F72;
            }
          }

          else
          {
            if (*(v44 + 64))
            {
              v56 = 0x526465646E756F72;
            }

            else
            {
              v56 = 0x6669636570736E75;
            }

            if (*(v44 + 64))
            {
              v55 = 0xEB00000000746365;
            }

            else
            {
              v55 = 0xEB00000000646569;
            }
          }
        }

        else if (*(v44 + 64) <= 5u)
        {
          if (v54 == 4)
          {
            v56 = 0xD000000000000010;
            v55 = 0x800000024FA43320;
          }

          else
          {
            v55 = 0xE400000000000000;
            v56 = 1819044208;
          }
        }

        else if (v54 == 6)
        {
          v55 = 0xE300000000000000;
          v56 = 7364969;
        }

        else if (v54 == 7)
        {
          v55 = 0xE600000000000000;
          v56 = 0x746365527674;
        }

        else
        {
          v55 = 0xE900000000000064;
          v56 = 0x656E726F64616E75;
        }

        v69 = v37;
        v71 = v36;
        if (v49 == v56 && v48 == v55)
        {

          v57 = v42;
        }

        else
        {
          v58 = sub_24F92CE08();

          v57 = v42;

          if ((v58 & 1) == 0)
          {
            goto LABEL_195;
          }
        }

        if ((*(v43 + 72) != *(v44 + 72) || *(v43 + 80) != *(v44 + 80)) && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_195;
        }

        v59 = sub_24EA16B7C(*(v43 + 104), *(v44 + 104));

        v42 = v57;
        v37 = v69;
        v36 = v71;
        v38 = v67;
        if ((v59 & 1) == 0)
        {
          goto LABEL_196;
        }
      }

      else
      {
        if (v44)
        {
          return 0;
        }
      }

      v60 = *(v41 + 24);
      v61 = *(v42 + 24);
      if (v60)
      {
        if (!v61)
        {
          goto LABEL_196;
        }

        if ((sub_24F91F418() & 1) == 0 || ((v62 = *(v60 + OBJC_IVAR____TtC12GameStoreKit5Video_preview), v63 = *(v61 + OBJC_IVAR____TtC12GameStoreKit5Video_preview), *(v62 + 16) == *(v63 + 16)) ? (v64 = *(v62 + 24) == *(v63 + 24)) : (v64 = 0), !v64 && (sub_24F92CE08() & 1) == 0 || *(v62 + 32) != *(v63 + 32) || *(v62 + 40) != *(v63 + 40) || (sub_24F0C97AC(*(v62 + 64), *(v63 + 64)) & 1) == 0 || (*(v62 + 72) == *(v63 + 72) ? (v65 = *(v62 + 80) == *(v63 + 80)) : (v65 = 0), !v65 && (sub_24F92CE08() & 1) == 0)))
        {
LABEL_195:

LABEL_196:

LABEL_197:

          return 0;
        }

        v40 = sub_24EA16B7C(*(v62 + 104), *(v63 + 104));

        if ((v40 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {

        if (v61)
        {
          goto LABEL_197;
        }
      }

      --v39;
      --v38;
      v36 += 8;
      v37 += 8;
      result = 1;
      if (!--v5)
      {
        return result;
      }
    }

LABEL_208:
    __break(1u);
  }

  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
  return result;
}

uint64_t sub_24EA1782C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = (v4 + 24 * v3);
    v7 = v6[1];
    v8 = v6[2];
    v9 = (v5 + 24 * v3);
    v10 = v9[1];
    v11 = v9[2];
    if (v7)
    {
      if (!v10)
      {
        return 0;
      }

      if (*v6 != *v9 || v7 != v10)
      {
        v13 = v2;
        v14 = v3;
        v15 = v4;
        v16 = v5;
        v17 = sub_24F92CE08();
        v5 = v16;
        v4 = v15;
        v3 = v14;
        v2 = v13;
        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v10)
    {
      return 0;
    }

    v18 = *(v8 + 16);
    if (v18 != *(v11 + 16))
    {
      return 0;
    }

    if (v18)
    {
      v19 = v8 == v11;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v55 = v5;
      v56 = v4;
      v57 = v3;
      v58 = v2;
      v66 = v11 + 32;
      v67 = v8 + 32;

      v20 = 0;
      v65 = v11;
      v64 = v8;
      v59 = v18;
      while (1)
      {
        if (v20 >= *(v8 + 16))
        {
          goto LABEL_89;
        }

        result = sub_24E772674(v67 + 136 * v20, v77);
        if (v20 >= *(v11 + 16))
        {
          goto LABEL_90;
        }

        v68 = v20;
        sub_24E772674(v66 + 136 * v20, v70);
        if ((v77[0] != v70[0] || v77[1] != v70[1]) && (sub_24F92CE08() & 1) == 0 || (v77[4] != v70[4] || v77[5] != v70[5]) && (sub_24F92CE08() & 1) == 0 || (v77[2] != v70[2] || v77[3] != v70[3]) && (sub_24F92CE08() & 1) == 0)
        {
LABEL_85:
          sub_24E7726D0(v70);
          sub_24E7726D0(v77);
LABEL_86:

          return 0;
        }

        if (v78)
        {
          if (v78 == 1)
          {
            v21 = 0x6553656C676E6973;
            v22 = 0xEF6E6F697463656CLL;
            v23 = v71;
            if (!v71)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v21 = 0xD000000000000011;
            v22 = 0x800000024FA3FA90;
            v23 = v71;
            if (!v71)
            {
LABEL_41:
              v24 = 0xE600000000000000;
              if (v21 != 0x656C67676F74)
              {
                goto LABEL_48;
              }

              goto LABEL_46;
            }
          }
        }

        else
        {
          v22 = 0xE600000000000000;
          v21 = 0x656C67676F74;
          v23 = v71;
          if (!v71)
          {
            goto LABEL_41;
          }
        }

        if (v23 == 1)
        {
          v24 = 0xEF6E6F697463656CLL;
          if (v21 != 0x6553656C676E6973)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v24 = 0x800000024FA3FA90;
          if (v21 != 0xD000000000000011)
          {
            goto LABEL_48;
          }
        }

LABEL_46:
        if (v22 == v24)
        {

          goto LABEL_49;
        }

LABEL_48:
        v25 = sub_24F92CE08();

        if ((v25 & 1) == 0)
        {
          goto LABEL_85;
        }

LABEL_49:
        if ((sub_24EDD4178(v80, v73) & 1) == 0)
        {
          goto LABEL_85;
        }

        v26 = *(v79 + 16);
        if (v26 != *(v72 + 16))
        {
          goto LABEL_85;
        }

        if (v26 && v79 != v72)
        {
          v27 = (v72 + 48);
          v28 = (v79 + 48);
          do
          {
            v29 = *(v28 - 1);
            v30 = *v28;
            v32 = v28[1];
            v31 = v28[2];
            v33 = v28[3];
            v69 = v28[4];
            v34 = v28[5];
            v35 = *(v27 - 1);
            v36 = *v27;
            v38 = v27[1];
            v37 = v27[2];
            v39 = v27[3];
            v40 = v27[4];
            v41 = v27[5];
            if (v29)
            {
              if (!v35)
              {
                goto LABEL_85;
              }

              if (*(v28 - 2) != *(v27 - 2) || v29 != v35)
              {
                v62 = v28[5];
                v63 = v27[4];
                v42 = v27[5];
                v60 = v27[2];
                v61 = v28[2];
                v43 = sub_24F92CE08();
                v37 = v60;
                v31 = v61;
                v41 = v42;
                v34 = v62;
                v40 = v63;
                if ((v43 & 1) == 0)
                {
                  goto LABEL_85;
                }
              }
            }

            else if (v35)
            {
              goto LABEL_85;
            }

            if (v30 != v36 || v32 != v38)
            {
              v44 = v34;
              v45 = v41;
              v46 = v33;
              v47 = v31;
              v48 = v37;
              v49 = sub_24F92CE08();
              v37 = v48;
              v31 = v47;
              v33 = v46;
              v41 = v45;
              v34 = v44;
              if ((v49 & 1) == 0)
              {
                goto LABEL_85;
              }
            }

            if (v33)
            {
              if (!v39)
              {
                goto LABEL_85;
              }

              if (v31 != v37 || v33 != v39)
              {
                v50 = v34;
                v51 = v41;
                v52 = sub_24F92CE08();
                v41 = v51;
                v34 = v50;
                if ((v52 & 1) == 0)
                {
                  goto LABEL_85;
                }
              }
            }

            else if (v39)
            {
              goto LABEL_85;
            }

            if (v34)
            {
              if (!v41 || (v69 != v40 || v34 != v41) && (sub_24F92CE08() & 1) == 0)
              {
                goto LABEL_85;
              }
            }

            else if (v41)
            {
              goto LABEL_85;
            }

            v28 += 8;
            v27 += 8;
          }

          while (--v26);
        }

        if (v81 != v74 || v82 != v75)
        {
          goto LABEL_85;
        }

        v53 = v83;
        v54 = v76;
        sub_24E7726D0(v70);
        result = sub_24E7726D0(v77);
        if (v53 != v54)
        {
          goto LABEL_86;
        }

        v20 = v68 + 1;
        v11 = v65;
        v8 = v64;
        if (v68 + 1 == v59)
        {

          v3 = v57;
          v2 = v58;
          v5 = v55;
          v4 = v56;
          break;
        }
      }
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
  return result;
}

uint64_t sub_24EA17DD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        sub_24E772674(v3, v8);
        sub_24E772674(v4, v7);
        v5 = _s12GameStoreKit10PageFacetsV5FacetV2eeoiySbAE_AEtFZ_0(v8, v7);
        sub_24E7726D0(v7);
        sub_24E7726D0(v8);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 136;
        v4 += 136;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_24EA17F28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  for (i = a2 + 32; ; i += 40)
  {
    sub_24E60169C(v3, v10, &qword_27F235830);
    sub_24E60169C(i, &v12, &qword_27F235830);
    if (v11)
    {
      break;
    }

    if (*(&v13 + 1))
    {
      goto LABEL_14;
    }

    sub_24E601704(v10, &qword_27F235830);
LABEL_5:
    v3 += 40;
    if (!--v2)
    {
      return 1;
    }
  }

  sub_24E60169C(v10, v9, &qword_27F235830);
  if (*(&v13 + 1))
  {
    v7[0] = v12;
    v7[1] = v13;
    v8 = v14;
    v5 = MEMORY[0x253052150](v9, v7);
    sub_24E6585F8(v7);
    sub_24E6585F8(v9);
    sub_24E601704(v10, &qword_27F235830);
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_24E6585F8(v9);
LABEL_14:
  sub_24E601704(v10, &qword_27F21B438);
  return 0;
}

uint64_t sub_24EA180E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v12, v18, v8);
    sub_24EA1F004(v31, v32);
    v25 = sub_24F92AFF8();
    v26 = *v21;
    (*v21)(v12, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA18360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0) - 8;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a2 + 16))
  {
    if (!v16 || a1 == a2)
    {
      v21 = 1;
    }

    else
    {
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = *(v13 + 72);
      do
      {
        sub_24EA1EF3C(v18, v15, a4);
        sub_24EA1EF3C(v19, v11, a4);
        v21 = a5(v15, v11);
        sub_24EA1EFA4(v11, a4);
        sub_24EA1EFA4(v15, a4);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v19 += v20;
        v18 += v20;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_24EA18510(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_24E69A5C4(0, a3);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x253052270](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x253052270](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_24F92C408();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_24F92C408();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_24F92C738();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_24F92C738();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_24EA187CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v37 = v2;
  v38 = v3;
  v5 = a1 + 32;
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 48);
    v28 = *(v5 + 32);
    v29 = v8;
    v30 = *(v5 + 64);
    v9 = *(v5 + 16);
    v27[0] = *v5;
    v27[1] = v9;
    v24 = v28;
    v25 = v8;
    v26 = v30;
    v22 = v27[0];
    v23 = v9;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[2];
    v13 = v6[3];
    v32 = *(v6 + 32);
    v31[2] = v12;
    v31[3] = v13;
    v31[0] = v10;
    v31[1] = v11;
    v19 = v12;
    v20 = v13;
    v21 = v32;
    v17 = v10;
    v18 = v11;
    v14 = _s12GameStoreKit0A23ActivityDraftPlayerInfoV2eeoiySbAC_ACtFZ_0(&v22, &v17);
    v33[2] = v19;
    v33[3] = v20;
    v34 = v21;
    v33[0] = v17;
    v33[1] = v18;
    sub_24E627A14(v27, v16);
    sub_24E627A14(v31, v16);
    sub_24E627A70(v33);
    v35[2] = v24;
    v35[3] = v25;
    v36 = v26;
    v35[0] = v22;
    v35[1] = v23;
    sub_24E627A70(v35);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 72);
    v5 += 72;
  }

  return 1;
}

uint64_t sub_24EA18914()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA18A08()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA18AF0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA18BEC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA18D60()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA18E84()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA18F7C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA19098()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA191C0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA19318()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1947C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA195A8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA196D0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA19828()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1995C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA19A60()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA19B94()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA19CA4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA19E1C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA19F6C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1A07C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1A1D0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1A32C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1A470()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1A5A0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1A6CC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1A818()
{
  sub_24F92B218();
}

uint64_t sub_24EA1A93C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24EA1EEF0();
  *a1 = result;
  return result;
}

void sub_24EA1A96C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000061696465;
  v4 = 0x4D746375646F7270;
  v5 = 0x800000024FA432A0;
  v6 = 1701736302;
  if (v2 == 5)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v4 = 0x6365537961646F74;
    v3 = 0xEC0000006E6F6974;
  }

  if (*v1 > 4u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x800000024FA43220;
  v8 = 0x800000024FA43250;
  v9 = 0xD000000000000018;
  if (v2 == 1)
  {
    v9 = 0xD00000000000001CLL;
  }

  else
  {
    v8 = 0x800000024FA43270;
  }

  if (*v1)
  {
    v7 = v8;
  }

  else
  {
    v9 = 0xD000000000000027;
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v7;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t Shelf.ContentsMetadata.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v95 = a2;
  v92 = a3;
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  v96 = v4;
  v97 = v5;
  MEMORY[0x28223BE20](v4);
  v89 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v88 = &v84 - v8;
  MEMORY[0x28223BE20](v9);
  v87 = &v84 - v10;
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v91 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v90 = &v84 - v15;
  MEMORY[0x28223BE20](v16);
  v86 = &v84 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v84 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v84 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v84 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v84 - v28;
  MEMORY[0x28223BE20](v30);
  v85 = &v84 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v84 - v33;
  v93 = a1;
  sub_24F928398();
  sub_24EA1BFC8();
  sub_24F928208();
  v35 = v11;
  v94 = *(v12 + 8);
  v94(v34, v11);
  if (v98 <= 2u)
  {
    v44 = v29;
    v45 = v20;
    v47 = v90;
    v46 = v91;
    if (v98)
    {
      if (v98 == 1)
      {
        v48 = v44;
        v49 = v93;
        (*(v12 + 16))(v44, v93, v11);
        sub_24F928398();
        v50 = sub_24F928258();
        v52 = v51;
        (*(v97 + 8))(v95, v96);
        v53 = v94;
        v94(v49, v11);
        v53(v26, v11);
        result = (v53)(v48, v11);
        if (v52)
        {
          v58 = 1;
        }

        else
        {
          v58 = v50;
        }

        v59 = 0x40000000;
      }

      else
      {
        v73 = v93;
        (*(v12 + 16))(v23, v93, v11);
        v74 = v45;
        sub_24F928398();
        v75 = sub_24F928258();
        v77 = v76;
        (*(v97 + 8))(v95, v96);
        v78 = v11;
        v79 = v94;
        v94(v73, v78);
        v79(v74, v35);
        result = (v79)(v23, v35);
        if (v77)
        {
          v58 = 1;
        }

        else
        {
          v58 = v75;
        }

        v59 = 1610612736;
      }
    }

    else
    {
      v67 = v93;
      (*(v12 + 16))(v90, v93, v11);
      v68 = v46;
      sub_24F928398();
      v69 = sub_24F928258();
      v71 = v70;
      (*(v97 + 8))(v95, v96);
      v72 = v94;
      v94(v67, v11);
      v72(v68, v11);
      result = (v72)(v47, v11);
      if (v71)
      {
        v58 = 1;
      }

      else
      {
        v58 = v69;
      }

      v59 = 0x80000000;
    }
  }

  else if (v98 > 4u)
  {
    v60 = v93;
    if (v98 == 5)
    {
      v61 = v85;
      (*(v12 + 16))(v85, v93, v11);
      v63 = v96;
      v62 = v97;
      v64 = v87;
      v65 = v95;
      (*(v97 + 16))(v87, v95, v96);
      v66 = v104;
      ProductReviewsMetadata.init(deserializing:using:)(v61, v64, &v98);
      if (v66)
      {
        (*(v62 + 8))(v65, v63);
        return (v94)(v60, v35);
      }

      (*(v62 + 8))(v65, v63);
      result = (v94)(v60, v35);
      v58 = v98;
      v54 = v99;
      v59 = 0x20000000;
      *&v55 = v100;
    }

    else
    {
      (*(v97 + 8))(v95, v96);
      result = (v94)(v60, v11);
      v58 = 0;
      v54 = 0;
      v55 = 0uLL;
      v59 = 3221225472;
      v56 = 0uLL;
      v57 = 0uLL;
    }
  }

  else
  {
    v36 = v93;
    if (v98 == 3)
    {
      v37 = v86;
      (*(v12 + 16))(v86, v93, v11);
      v39 = v96;
      v38 = v97;
      v40 = v88;
      v41 = v95;
      (*(v97 + 16))(v88, v95, v96);
      v42 = v104;
      ProductMediaMetadata.init(deserializing:using:)(v37, v40, &v98);
      if (v42)
      {
        (*(v38 + 8))(v41, v39);
        return (v94)(v36, v11);
      }

      (*(v38 + 8))(v41, v39);
      result = (v94)(v36, v11);
      v58 = v98;
      v54 = v99;
      v55 = v100;
      v56 = v101;
      v57 = v103;
      v59 = v102 & 0xFFFFFFFF00000101;
    }

    else
    {
      (*(v12 + 16))(v34, v93, v11);
      v81 = v96;
      v80 = v97;
      v82 = v95;
      (*(v97 + 16))(v89, v95, v96);
      sub_24EA1C01C();
      sub_24F929548();
      (*(v80 + 8))(v82, v81);
      result = (v94)(v36, v11);
      v58 = v98;
      if (v98 == 1)
      {
        v58 = 0;
        v54 = 0;
        v55 = 0uLL;
        v59 = 3221225472;
        v56 = 0uLL;
        v57 = 0uLL;
      }

      else
      {
        v54 = v99;
        v59 = 2684354560;
      }
    }
  }

  v83 = v92;
  *v92 = v58;
  v83[1] = v54;
  *(v83 + 1) = v55;
  *(v83 + 2) = v56;
  v83[6] = v59;
  *(v83 + 7) = v57;
  return result;
}

uint64_t ProductReviewsMetadata.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  sub_24F928398();
  v12 = sub_24F928278();
  v13 = *(v6 + 8);
  v13(v11, v5);
  v24 = v12 & 1;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v13(v8, v5);
  if (v16)
  {
    v17 = sub_24F9285B8();
    (*(*(v17 - 8) + 8))(v23, v17);
    result = (v13)(a1, v5);
    *a3 = v24;
    *(a3 + 8) = v14;
    *(a3 + 16) = v16;
  }

  else
  {
    v19 = sub_24F92AC38();
    sub_24EA1F004(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v20 = 0xD000000000000012;
    v20[1] = 0x800000024FA41E50;
    v20[2] = &type metadata for ProductReviewsMetadata;
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D22530], v19);
    swift_willThrow();
    v21 = sub_24F9285B8();
    (*(*(v21 - 8) + 8))(v23, v21);
    return (v13)(a1, v5);
  }

  return result;
}

uint64_t ProductMediaMetadata.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v85 = a2;
  v76 = a3;
  v84 = sub_24F9285B8();
  v4 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v79 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v67 - v7;
  v9 = sub_24F928388();
  v81 = *(v9 - 8);
  v82 = v9;
  MEMORY[0x28223BE20](v9);
  v75 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v74 = &v67 - v12;
  MEMORY[0x28223BE20](v13);
  v77 = &v67 - v14;
  MEMORY[0x28223BE20](v15);
  v73 = &v67 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v67 - v18;
  MEMORY[0x28223BE20](v20);
  v78 = &v67 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v67 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v67 - v26;
  type metadata accessor for MediaPlatform();
  v83 = a1;
  sub_24F928398();
  v28 = *(v4 + 16);
  v28(v8, v85, v84);
  v29 = v80;
  v30 = MediaPlatform.__allocating_init(deserializing:using:)(v27, v8);
  if (v29)
  {
    (*(v4 + 8))(v85, v84);
    return (*(v81 + 8))(v83, v82);
  }

  v69 = 0;
  v71 = v19;
  v72 = v4;
  v80 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225260);
  sub_24F928398();
  v28(v79, v85, v84);
  sub_24EA1C42C();
  v70 = v24;
  sub_24F929548();
  if (v87)
  {
    v32 = v87;
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  v33 = 0x800000024FA4DCE0;
  v34 = v78;
  sub_24F928398();
  v79 = sub_24F928348();
  v36 = v35;
  v37 = v82;
  v38 = *(v81 + 8);
  v38(v34, v82);
  if (v36)
  {
    v78 = v36;
    v81 = v32;
    v33 = 0x800000024FA4DD00;
    v39 = 0xD000000000000017;
    v40 = v71;
    sub_24F928398();
    v41 = sub_24F928348();
    v43 = v42;
    v38(v40, v37);
    v71 = v43;
    if (v43)
    {
      v68 = v41;
      v44 = v70;
      sub_24F928398();
      sub_24EA1C4E0();
      sub_24F928208();
      v38(v44, v37);
      LODWORD(v70) = v86;
      v45 = v73;
      sub_24F928398();
      v46 = sub_24F928278();
      v38(v45, v37);
      LODWORD(v73) = v46 & 1;
      type metadata accessor for Action();
      v47 = v77;
      sub_24F928398();
      v48 = v47;
      v49 = v85;
      v50 = v69;
      v51 = static Action.makeInstance(byDeserializing:using:)(v48, v85);
      if (v50)
      {

        v69 = 0;
      }

      else
      {
        v69 = v51;
      }

      v55 = v74;
      v38(v77, v37);
      sub_24F928398();
      v56 = static Action.makeInstance(byDeserializing:using:)(v55, v49);
      v57 = v75;
      v38(v55, v37);
      v58 = v57;
      v59 = v38;
      v60 = v83;
      sub_24F928398();
      v61 = sub_24F9282C8();
      (*(v72 + 8))(v85, v84);
      v59(v60, v37);
      result = (v59)(v58, v37);
      v62 = *&v61;
      v63 = v81;
      v64 = v76;
      *v76 = v80;
      v64[1] = v63;
      if ((v61 & 0x100000000) != 0)
      {
        v62 = 1.0;
      }

      v65 = v78;
      v64[2] = v79;
      v64[3] = v65;
      v66 = v71;
      v64[4] = v68;
      v64[5] = v66;
      *(v64 + 48) = v70;
      *(v64 + 49) = v73;
      *(v64 + 13) = v62;
      v64[7] = v69;
      v64[8] = v56;
      return result;
    }

    v52 = v37;
    v36 = v78;
  }

  else
  {
    v52 = v37;
    v39 = 0xD000000000000013;
  }

  v53 = sub_24F92AC38();
  sub_24EA1F004(&qword_27F2213B8, MEMORY[0x277D22548]);
  swift_allocError();
  *v54 = v39;
  v54[1] = v33;
  v54[2] = &type metadata for ProductMediaMetadata;
  (*(*(v53 - 8) + 104))(v54, *MEMORY[0x277D22530], v53);
  swift_willThrow();
  (*(v72 + 8))(v85, v84);
  v38(v83, v52);

  if (v36)
  {
  }

  return result;
}

uint64_t sub_24EA1BE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  v10 = sub_24F928258();
  v12 = v11;
  v13 = sub_24F9285B8();
  (*(*(v13 - 8) + 8))(a2, v13);
  v14 = *(v7 + 8);
  v14(a1, v6);
  result = (v14)(v9, v6);
  if (v12)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  *a3 = v16;
  return result;
}

unint64_t sub_24EA1BFC8()
{
  result = qword_27F225250;
  if (!qword_27F225250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225250);
  }

  return result;
}

unint64_t sub_24EA1C01C()
{
  result = qword_27F225258;
  if (!qword_27F225258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225258);
  }

  return result;
}

uint64_t static ProductMediaMetadata.== infix(_:_:)(float *a1, float *a2)
{
  v3 = *a1;
  v2 = *(a1 + 1);
  v4 = *(a1 + 49);
  v5 = a1[13];
  v7 = *a2;
  v6 = *(a2 + 1);
  v8 = *(a2 + 49);
  v9 = a2[13];
  if ((sub_24F0CD880(*(*a1 + 16), *(*a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v10 = *(v7 + 56);
  if (*(v3 + 56))
  {
    if (!*(v7 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(v3 + 48) != *(v7 + 48))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return sub_24EA16378(v2, v6) & ~(v4 ^ v8) & (v5 == v9);
}

uint64_t static ProductReviewsMetadata.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_24F92CE08();
  }
}

uint64_t Shelf.ContentsMetadata.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v3;
  v4 = *(v1 + 48);
  v11[2] = *(v1 + 32);
  v11[3] = v4;
  v12 = *(v1 + 64);
  v5 = *(v11 + 1) | ((*(v11 + 5) | (BYTE7(v11[0]) << 16)) << 32);
  v6 = v4 >> 29;
  if (v4 >> 29 <= 2)
  {
    if (!v6)
    {
      MEMORY[0x253052A00](1);
      return ProductMediaMetadata.hash(into:)(a1);
    }

    if (v6 != 1)
    {
      v7 = LOBYTE(v11[0]) | (v5 << 8);
      v8 = 3;
LABEL_16:
      MEMORY[0x253052A00](v8);
      return MEMORY[0x253052A00](v7);
    }

    MEMORY[0x253052A00](2);
    sub_24F92D088();

    return sub_24F92B218();
  }

  else
  {
    if (v4 >> 29 <= 4)
    {
      v7 = LOBYTE(v11[0]) | (v5 << 8);
      if (v6 == 3)
      {
        v8 = 4;
      }

      else
      {
        v8 = 5;
      }

      goto LABEL_16;
    }

    if (v6 == 5)
    {
      MEMORY[0x253052A00](6);
      sub_24F92D088();
      if (LOBYTE(v11[0]) | (v5 << 8))
      {
        v10 = *&v11[0];
        sub_24F92C418();
        sub_24EA1E790(v11);
      }

      sub_24F92B218();
    }

    else
    {
      return MEMORY[0x253052A00](0);
    }
  }
}

unint64_t sub_24EA1C42C()
{
  result = qword_27F225268;
  if (!qword_27F225268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225260);
    sub_24EA1F004(&qword_27F225270, type metadata accessor for MediaPlatform);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225268);
  }

  return result;
}

unint64_t sub_24EA1C4E0()
{
  result = qword_27F225278;
  if (!qword_27F225278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225278);
  }

  return result;
}

uint64_t ProductMediaMetadata.platformDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProductMediaMetadata.allPlatformsDescription.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ProductMediaMetadata.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  sub_24F92B218();

  if ((*(v4 + 56) & 1) == 0)
  {
    if ((*(v4 + 48) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = *(v4 + 48);
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x253052A30](v5);
  }

  sub_24EA1D90C(a1, v3);
  sub_24F92D088();
  return sub_24F92D098();
}

uint64_t sub_24EA1C754(void (*a1)(_BYTE *))
{
  sub_24F92D068();
  a1(v3);
  return sub_24F92D0B8();
}

uint64_t sub_24EA1C7CC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_24F92D068();
  a3(v5);
  return sub_24F92D0B8();
}

uint64_t sub_24EA1C830(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_24F92D068();
  a4(v6);
  return sub_24F92D0B8();
}

uint64_t sub_24EA1C874(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 49);
  v4 = *(a1 + 52);
  v5 = *(a2 + 8);
  v6 = *(a2 + 49);
  v7 = *(a2 + 52);
  if (_s12GameStoreKit13MediaPlatformC2eeoiySbAC_ACtFZ_0(*a1, *a2))
  {
    return sub_24EA16378(v2, v5) & ~(v3 ^ v6) & (v4 == v7);
  }

  else
  {
    return 0;
  }
}

uint64_t ProductReviewsMetadata.reviewSummaryTitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ProductReviewsMetadata.hash(into:)()
{
  sub_24F92D088();

  return sub_24F92B218();
}

uint64_t ProductReviewsMetadata.hashValue.getter()
{
  sub_24F92D068();
  sub_24F92D088();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EA1C9F8()
{
  sub_24F92D068();
  sub_24F92D088();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EA1CA5C()
{
  sub_24F92D088();

  return sub_24F92B218();
}

uint64_t sub_24EA1CAB0()
{
  sub_24F92D068();
  sub_24F92D088();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EA1CB10(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_24F92CE08();
  }
}

uint64_t TodaySectionDisplayOptions.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  v10 = JSONObject.appStoreColor.getter();
  v11 = *(v7 + 8);
  v11(v9, v6);
  *a3 = v10;
  sub_24F928398();
  sub_24EA1E7C0();
  sub_24F928208();
  v12 = sub_24F9285B8();
  (*(*(v12 - 8) + 8))(a2, v12);
  v11(a1, v6);
  result = (v11)(v9, v6);
  *(a3 + 8) = v15;
  return result;
}

id TodaySectionDisplayOptions.debugSectionTypeIndicatorColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

GameStoreKit::TodaySectionDisplayOptions::GroupDisplayStyle_optional __swiftcall TodaySectionDisplayOptions.GroupDisplayStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TodaySectionDisplayOptions.GroupDisplayStyle.rawValue.getter()
{
  v1 = 1684632167;
  if (*v0 != 1)
  {
    v1 = 0x647261646E617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1869768040;
  }
}

uint64_t sub_24EA1CE70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684632167;
  if (v2 != 1)
  {
    v5 = 0x647261646E617473;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1869768040;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1684632167;
  if (*a2 != 1)
  {
    v8 = 0x647261646E617473;
    v3 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1869768040;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24EA1CF58()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1CFEC()
{
  sub_24F92B218();
}

uint64_t sub_24EA1D06C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EA1D108(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684632167;
  if (v2 != 1)
  {
    v5 = 0x647261646E617473;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1869768040;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t TodaySectionDisplayOptions.hash(into:)()
{
  v1 = *v0;
  if (*v0)
  {
    sub_24F92D088();
    v2 = v1;
    sub_24F92C418();
  }

  else
  {
    sub_24F92D088();
  }

  sub_24F92B218();
}

uint64_t TodaySectionDisplayOptions.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F92D088();
  if (v1)
  {
    v2 = v1;
    sub_24F92C418();
  }

  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1D308()
{
  sub_24F92D068();
  TodaySectionDisplayOptions.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24EA1D360()
{
  sub_24F92D068();
  TodaySectionDisplayOptions.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24EA1D3B4(uint64_t a1, unint64_t a2)
{
  v3 = sub_24F91F648();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v30 - v7;
  v8 = sub_24F91F4A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v30 - v13;
  if (a2 >> 62)
  {
    v29 = sub_24F92C738();
    MEMORY[0x253052A00](v29);
    result = sub_24F92C738();
    v16 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = MEMORY[0x253052A00](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), v12);
    v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      return result;
    }
  }

  if (v16 >= 1)
  {
    v17 = 0;
    v18 = v4;
    v19 = a2 & 0xC000000000000001;
    v32 = (v9 + 8);
    v33 = (v9 + 32);
    v37 = (v18 + 48);
    v38 = (v9 + 48);
    v30 = (v18 + 8);
    v31 = (v18 + 32);
    v39 = v8;
    v40 = a2;
    v34 = v3;
    while (1)
    {
      if (v19)
      {
        v21 = MEMORY[0x253052270](v17, a2);
      }

      else
      {
        v21 = *(a2 + 8 * v17 + 32);
      }

      sub_24F92B218();
      if (*(v21 + 40))
      {
        sub_24F92D088();
        sub_24F92B218();
        if (!*(v21 + 56))
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_24F92D088();
        if (!*(v21 + 56))
        {
LABEL_14:
          sub_24F92D088();
          goto LABEL_15;
        }
      }

      sub_24F92D088();
      sub_24F92B218();
LABEL_15:
      a2 = v40;
      sub_24F92D088();
      sub_24E60169C(v21 + OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_url, v14, &qword_27F228530);
      v22 = v39;
      if ((*v38)(v14, 1, v39) == 1)
      {
        sub_24F92D088();
      }

      else
      {
        v23 = v19;
        v24 = v16;
        v25 = a2;
        v26 = v35;
        (*v33)(v35, v14, v22);
        sub_24F92D088();
        sub_24EA1F004(&qword_27F2252E0, MEMORY[0x277CC9260]);
        sub_24F92AEF8();
        v27 = v26;
        a2 = v25;
        v16 = v24;
        v19 = v23;
        v3 = v34;
        (*v32)(v27, v22);
      }

      v28 = v41;
      sub_24E60169C(v21 + OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_eventStartDate, v41, &unk_27F22EC30);
      if ((*v37)(v28, 1, v3) == 1)
      {
        sub_24F92D088();
      }

      else
      {
        v20 = v36;
        (*v31)(v36, v28, v3);
        sub_24F92D088();
        sub_24EA1F004(&qword_27F2252E8, MEMORY[0x277CC9578]);
        sub_24F92AEF8();

        result = (*v30)(v20, v3);
      }

      if (v16 == ++v17)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA1D90C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v11 = sub_24F92C738();
    MEMORY[0x253052A00](v11);
    result = sub_24F92C738();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = MEMORY[0x253052A00](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = MEMORY[0x253052270](i, a2);
      sub_24F92B218();

      if ((*(v6 + 56) & 1) == 0)
      {
        if ((*(v6 + 48) & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v7 = *(v6 + 48);
        }

        else
        {
          v7 = 0;
        }

        MEMORY[0x253052A30](v7);
      }

      result = swift_unknownObjectRelease();
    }
  }

  else
  {
    v8 = (a2 + 32);
    do
    {
      v9 = *v8;

      sub_24F92B218();

      if ((*(v9 + 56) & 1) == 0)
      {
        if ((*(v9 + 48) & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v10 = *(v9 + 48);
        }

        else
        {
          v10 = 0;
        }

        MEMORY[0x253052A30](v10);
      }

      ++v8;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_24EA1DBB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x253052A00](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {

      sub_24F92B218();

      sub_24F92B218();

      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24EA1DCB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x253052A00](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {
      v6 = *(v5 + 24);
      v7 = *(v5 + 40);
      if (*(v5 - 8))
      {
        sub_24F92D088();

        sub_24F92B218();
      }

      else
      {
        sub_24F92D088();
      }

      sub_24F92B218();
      if (v6)
      {
        sub_24F92D088();
        sub_24F92B218();
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_24F92D088();
        if (!v7)
        {
LABEL_12:
          sub_24F92D088();
          goto LABEL_4;
        }
      }

      sub_24F92D088();
      sub_24F92B218();
LABEL_4:

      v5 += 64;

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24EA1DE28(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x253052A00](v4);
  if (v4)
  {
    v6 = a2 + 32;
    do
    {
      sub_24E772674(v6, v7);
      sub_24F92B218();
      sub_24F92B218();
      sub_24F92B218();
      sub_24F92B218();

      sub_24EDC9948(a1, v7[8]);
      sub_24EA1DCB8(a1, v7[7]);
      sub_24F92D088();
      sub_24F92D088();
      sub_24F92D088();
      result = sub_24E7726D0(v7);
      v6 += 136;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_24EA1DF78(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x253052A00](v4);
  if (v4)
  {
    v6 = 0;
    v11 = a2 + 32;
    do
    {
      v7 = v11 + 24 * v6;
      v8 = *(v7 + 16);
      if (*(v7 + 8))
      {
        sub_24F92D088();

        sub_24F92B218();
      }

      else
      {
        sub_24F92D088();
      }

      MEMORY[0x253052A00](*(v8 + 16));
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = v8 + 32;
        do
        {
          sub_24E772674(v10, v12);
          sub_24F92B218();
          sub_24F92B218();
          sub_24F92B218();
          sub_24F92B218();

          sub_24EDC9948(a1, v12[8]);
          sub_24EA1DCB8(a1, v12[7]);
          sub_24F92D088();
          sub_24F92D088();
          sub_24F92D088();
          sub_24E7726D0(v12);
          v10 += 136;
          --v9;
        }

        while (v9);
      }

      ++v6;
    }

    while (v6 != v4);
  }

  return result;
}

uint64_t _s12GameStoreKit26TodaySectionDisplayOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a1)
  {
    if (v4)
    {
      sub_24E69A5C4(0, &qword_27F2394A0);
      v6 = v4;
      v7 = v2;
      v8 = sub_24F92C408();

      if (v8)
      {
        goto LABEL_4;
      }
    }

LABEL_24:
    v17 = 0;
    return v17 & 1;
  }

  if (v4)
  {
    goto LABEL_24;
  }

LABEL_4:
  v9 = 0xE400000000000000;
  v10 = 1684632167;
  if (v3 != 1)
  {
    v10 = 0x647261646E617473;
    v9 = 0xE800000000000000;
  }

  if (v3)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1869768040;
  }

  if (v3)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = 0xE400000000000000;
  v14 = 1684632167;
  if (v5 != 1)
  {
    v14 = 0x647261646E617473;
    v13 = 0xE800000000000000;
  }

  if (v5)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1869768040;
  }

  if (v5)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_24F92CE08();
  }

  return v17 & 1;
}

uint64_t _s12GameStoreKit5ShelfC16ContentsMetadataO2eeoiySbAE_AEtFZ_0(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v43 = a1[2];
  v44 = v3;
  v4 = a1[1];
  *v42 = *a1;
  *&v42[16] = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 48);
  v47 = *(a2 + 32);
  v48 = v6;
  v7 = *(a2 + 16);
  *v46 = *a2;
  *&v46[16] = v7;
  v8 = a1[3];
  v50[2] = v43;
  v50[3] = v8;
  v50[0] = *v42;
  v50[1] = v2;
  v53 = v5;
  v54 = v47;
  v55 = *(a2 + 48);
  v45 = *(a1 + 8);
  v49 = *(a2 + 64);
  v9 = *(a2 + 64);
  v51 = *(a1 + 8);
  v56 = v9;
  v52 = *v46;
  v10 = *&v42[1] | ((*&v42[5] | (v42[7] << 16)) << 32);
  v11 = WORD1(v44) >> 13;
  v12 = *&v42[8];
  if (v11 <= 2)
  {
    if (v11)
    {
      if (v11 != 1)
      {
        if ((v48 & 0xE0000000) != 0x40000000)
        {
          goto LABEL_30;
        }

        goto LABEL_22;
      }

      if ((v48 & 0xE0000000) != 0x20000000)
      {

        goto LABEL_30;
      }

      if ((v42[0] ^ v46[0]))
      {
        sub_24EA1F04C(v46, v39);
        v13 = v42;
LABEL_31:
        sub_24EA1F04C(v13, v39);
LABEL_32:
        sub_24E601704(v50, &qword_27F2252F8);
LABEL_33:
        v14 = 0;
        return v14 & 1;
      }

      if (*&v42[8] == *&v46[8])
      {
        sub_24EA1F04C(v46, v39);
        sub_24EA1F04C(v42, v39);
        goto LABEL_37;
      }

      v31 = sub_24F92CE08();
      sub_24EA1F04C(v46, v39);
      sub_24EA1F04C(v42, v39);
      sub_24E601704(v50, &qword_27F2252F8);
      if ((v31 & 1) == 0)
      {
        goto LABEL_33;
      }

LABEL_47:
      v14 = 1;
      return v14 & 1;
    }

    if ((WORD1(v48) & 0xE000) != 0)
    {
      v25 = a1[2];
      v40 = a1[3];
      v26 = *(a1 + 8);
      v27 = *a1;
      v39[1] = a1[1];
      v39[2] = v25;
      v39[0] = v27;
      v41 = v26;
      *&v40 = v40 & 0xFFFFFFFF1FFFFFFFLL;
      sub_24E60169C(v39, &v32, &qword_27F225300);
      goto LABEL_30;
    }

    v15 = BYTE1(v44);
    v16 = *(&v44 + 1);
    v17 = *(&v48 + 1);
    v18 = BYTE1(v48);
    v19 = *v46;
    v20 = v42[0] | (v10 << 8);
    v21 = *(v20 + 0x10);
    v22 = *(*v46 + 16);
    sub_24EA1F04C(v46, v39);
    sub_24EA1F04C(v42, v39);
    sub_24EA1F04C(v46, v39);
    sub_24EA1F04C(v42, v39);
    if (sub_24F0CD880(v21, v22))
    {
      if (*(v20 + 56))
      {
        if ((*(v19 + 56) & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      else if ((*(v19 + 56) & 1) != 0 || *(v20 + 48) != *(v19 + 48))
      {
        goto LABEL_43;
      }

      v30 = sub_24EA16378(v12, *(&v19 + 1));
      sub_24E601704(v50, &qword_27F2252F8);
      if (v30 & 1) == 0 || ((v15 ^ v18))
      {
        sub_24EA1E790(v46);
        sub_24EA1E790(v42);
        goto LABEL_33;
      }

      sub_24EA1E790(v42);
      sub_24EA1E790(v46);
      if (v16 != v17)
      {
        goto LABEL_33;
      }

      goto LABEL_47;
    }

LABEL_43:
    sub_24EA1E790(v46);
    sub_24EA1E790(v42);
    goto LABEL_32;
  }

  if (WORD1(v44) >> 13 <= 4u)
  {
    if (v11 == 3)
    {
      if ((v48 & 0xE0000000) != 0x60000000)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if ((v48 & 0xE0000000) == 0x80000000)
    {
LABEL_22:
      v23 = v42[0] | (v10 << 8);
      sub_24E601704(v50, &qword_27F2252F8);
      v14 = v23 == *v46;
      return v14 & 1;
    }

LABEL_30:
    v13 = v46;
    goto LABEL_31;
  }

  if (v11 != 5)
  {
    if ((v48 & 0xE0000000) != 0xC0000000)
    {
      goto LABEL_30;
    }

    if (v48 != 3221225472)
    {
      goto LABEL_30;
    }

    v24 = vorrq_s8(*&v46[16], v47);
    if (*&vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL)) | *(&v48 + 1) | v49 | *&v46[8] | *v46)
    {
      goto LABEL_30;
    }

LABEL_37:
    sub_24E601704(v50, &qword_27F2252F8);
    v14 = 1;
    return v14 & 1;
  }

  if ((v48 & 0xE0000000) != 0xA0000000)
  {
    v28 = *v42;
    goto LABEL_30;
  }

  v32 = v42[0];
  v33 = *&v42[1];
  v35 = (*&v42[1] | ((*&v42[5] | (v42[7] << 16)) << 32)) >> 48;
  v34 = *&v42[5];
  v36 = v42[8];
  v37 = *v46;
  v38 = v46[8];
  sub_24EA1F04C(v46, v39);
  sub_24EA1F04C(v42, v39);
  sub_24EA1F04C(v46, v39);
  sub_24EA1F04C(v42, v39);
  v14 = _s12GameStoreKit26TodaySectionDisplayOptionsV2eeoiySbAC_ACtFZ_0(&v32, &v37);
  sub_24E601704(v50, &qword_27F2252F8);
  sub_24EA1E790(v46);
  sub_24EA1E790(v42);
  return v14 & 1;
}

unint64_t sub_24EA1E7C0()
{
  result = qword_27F225280;
  if (!qword_27F225280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225280);
  }

  return result;
}

unint64_t sub_24EA1E818()
{
  result = qword_27F225288;
  if (!qword_27F225288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225288);
  }

  return result;
}

unint64_t sub_24EA1E870()
{
  result = qword_27F225290;
  if (!qword_27F225290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225290);
  }

  return result;
}

unint64_t sub_24EA1E8C8()
{
  result = qword_27F225298;
  if (!qword_27F225298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225298);
  }

  return result;
}

unint64_t sub_24EA1E920()
{
  result = qword_27F2252A0;
  if (!qword_27F2252A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2252A0);
  }

  return result;
}

unint64_t sub_24EA1E978()
{
  result = qword_27F2252A8;
  if (!qword_27F2252A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2252A8);
  }

  return result;
}

unint64_t sub_24EA1E9D0()
{
  result = qword_27F2252B0;
  if (!qword_27F2252B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2252B0);
  }

  return result;
}

unint64_t sub_24EA1EA28()
{
  result = qword_27F2252B8;
  if (!qword_27F2252B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2252B8);
  }

  return result;
}

unint64_t sub_24EA1EA80()
{
  result = qword_27F2252C0;
  if (!qword_27F2252C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2252C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit5ShelfC16ContentsMetadataO(_DWORD *a1)
{
  v1 = a1[12];
  if (v1 >> 30 == 3)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 >> 29;
  }
}

uint64_t sub_24EA1EAF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x3FFFFFF9 && *(a1 + 72))
  {
    return (*a1 + 1073741818);
  }

  HIDWORD(v3) = (*(a1 + 48) >> 2) & 0x7FFFF80 | (*(a1 + 48) >> 1);
  LODWORD(v3) = *(a1 + 48);
  v4 = (v3 >> 29) ^ 0x3FFFFFFF;
  if (v4 >= 0x3FFFFFF9)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t sub_24EA1EB54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x3FFFFFFA)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 1073741818;
    if (a3 > 0x3FFFFFF9)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x3FFFFFF9)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 56) = 0;
      *(result + 64) = 0;
      *(result + 48) = (4 * (((-a2 >> 3) & 0x7FFFFFF) - (a2 << 27))) & 0xFFFFFE00 | (2 * ((((-a2 >> 3) & 0x7FFFFFF) - (a2 << 27)) & 0x7FLL));
    }
  }

  return result;
}

uint64_t sub_24EA1EBF0(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    *(result + 48) = *(result + 48) & 0xFFFFFFFF00000101 | (a2 << 29);
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = 3221225472;
    *(result + 56) = 0;
    *(result + 64) = 0;
  }

  return result;
}

uint64_t sub_24EA1EC48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EA1EC90(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_24EA1ECF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24EA1ED38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EA1EDB8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t sub_24EA1EE14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24EA1EE9C()
{
  result = qword_27F2252C8;
  if (!qword_27F2252C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2252C8);
  }

  return result;
}

uint64_t sub_24EA1EEF0()
{
  v0 = sub_24F92CB88();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24EA1EF3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EA1EFA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EA1F004(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static AccountPage.createAccountPage()@<X0>(uint64_t *a1@<X8>)
{
  v70 = a1;
  v1 = sub_24F9294C8();
  MEMORY[0x28223BE20](v1 - 8);
  v65 = v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_24F928818();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v67 = v55 - v5;
  v78 = sub_24F928698();
  v75 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v60 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = v55 - v8;
  MEMORY[0x28223BE20](v9);
  v74 = v55 - v10;
  v64 = sub_24F92A1F8();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v73 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24F928628();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v72 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225308);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213598);
  v14 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v56 = *(*(v13 - 8) + 72);
  v15 = swift_allocObject();
  v76 = xmmword_24F93A400;
  *(v15 + 16) = xmmword_24F93A400;
  v59 = v15;
  v16 = v15 + v14;
  v71 = v13;
  v58 = *(v13 + 48);
  sub_24F9293E8();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948);
  v18 = sub_24F92A2C8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v57 = 2 * v20;
  v55[1] = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v76;
  sub_24F92A288();
  if (qword_27F2102B0 != -1)
  {
    swift_once();
  }

  v55[0] = __swift_project_value_buffer(v18, qword_27F229C68);
  v23 = *(v19 + 16);
  v23(v22 + v21 + v20, v55[0], v18);
  v24 = sub_24E805DFC(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v16 + v58) = v24;
  v58 = v16;
  v25 = (v16 + v56);
  v26 = *(v71 + 48);
  sub_24F9293C8();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_24F93FC20;
  v28 = v27 + v21;
  sub_24F92A288();
  v23(v27 + v21 + v20, v55[0], v18);
  if (qword_27F210290 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v18, qword_27F229C08);
  v23(v28 + v57, v29, v18);
  if (qword_27F2102F8 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v18, qword_27F229D40);
  v23(v28 + 3 * v20, v30, v18);
  v31 = sub_24E805DFC(v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *&v25[v26] = v31;
  sub_24E60C8A0(v59);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v32 = MEMORY[0x277D84F90];
  sub_24E60C8C4(MEMORY[0x277D84F90]);
  sub_24F928618();
  sub_24F92A1C8();
  sub_24E608448(v32);
  v33 = v74;
  sub_24F9285F8();

  sub_24E608448(v32);
  sub_24F9285E8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138D8);
  v34 = *(sub_24F928738() - 8);
  v59 = *(v34 + 72);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  v71 = v36;
  *(v36 + 16) = v76;
  v57 = v36 + v35;
  v58 = *(v75 + 16);
  v37 = v60;
  (v58)(v60, v33, v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225310);
  v38 = sub_24F9287F8();
  v39 = *(v38 - 8);
  v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_24F93DE60;
  sub_24F9287E8();
  sub_24E802380(v41);
  swift_setDeallocating();
  (*(v39 + 8))(v41 + v40, v38);
  swift_deallocClassInstance();
  sub_24F9286F8();
  (v58)(v37, v77, v78);
  v42 = swift_allocObject();
  *(v42 + 16) = v76;
  sub_24F9287C8();
  sub_24F9287A8();
  sub_24E802380(v42);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_24F9286F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 1701273968;
  v44 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD000000000000017;
  *(inited + 56) = 0x800000024FA4DDD0;
  *(inited + 72) = v44;
  *(inited + 80) = 0x644965676170;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0x676E69646E616CLL;
  *(inited + 104) = 0xE700000000000000;
  *(inited + 120) = v44;
  *(inited + 128) = 0x6570795465676170;
  *(inited + 168) = v44;
  *(inited + 136) = 0xE800000000000000;
  *(inited + 144) = 0x53746E756F636361;
  *(inited + 152) = 0xEF73676E69747465;
  sub_24E608448(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0);
  swift_arrayDestroy();
  sub_24F9294B8();
  sub_24EA200BC(MEMORY[0x277D84F90]);
  v45 = v67;
  sub_24F928748();
  v46 = v68;
  v47 = v66;
  v48 = v69;
  (*(v68 + 16))(v66, v45, v69);
  v49 = type metadata accessor for AccountPage();
  v50 = swift_allocObject();
  (*(v46 + 32))(v50 + OBJC_IVAR____TtC12GameStoreKit11AccountPage_pageMetrics, v47, v48);
  *(v50 + OBJC_IVAR____TtC12GameStoreKit11AccountPage_pageRenderEvent) = 0;
  v51 = v70;
  v70[3] = v49;
  v51[4] = &protocol witness table for AccountPage;
  v51[5] = sub_24EA20218();
  *v51 = v50;
  (*(v46 + 8))(v45, v48);
  v52 = *(v75 + 8);
  v53 = v78;
  v52(v77, v78);
  v52(v74, v53);
  (*(v63 + 8))(v73, v64);
  return (*(v61 + 8))(v72, v62);
}

uint64_t AccountPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11AccountPage_pageMetrics;
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AccountPage.deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11AccountPage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AccountPage.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11AccountPage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24EA20040@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit11AccountPage_pageMetrics;
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t sub_24EA200BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135B8);
    v3 = sub_24F92CB58();
    v4 = a1 + 32;

    while (1)
    {
      sub_24EA20328(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_24E76D644(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24E612B0C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t type metadata accessor for AccountPage()
{
  result = qword_27F225320;
  if (!qword_27F225320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EA20218()
{
  result = qword_27F225318;
  if (!qword_27F225318)
  {
    type metadata accessor for AccountPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225318);
  }

  return result;
}

uint64_t sub_24EA20278()
{
  result = sub_24F928818();
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

uint64_t sub_24EA20328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA203AC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_24EA2046C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
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

uint64_t type metadata accessor for ProgressPerformAction()
{
  result = qword_27F225330;
  if (!qword_27F225330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA2055C()
{
  sub_24EA206B8(319, &qword_27F225340, &unk_27F22C070, &unk_24F947CB0, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24EA20668();
    if (v1 <= 0x3F)
    {
      sub_24EA206B8(319, &qword_27F225348, &qword_27F220F78, &unk_24F975950, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24F928AD8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24EA20668()
{
  if (!qword_27F2362E0)
  {
    v0 = sub_24F9271C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2362E0);
    }
  }
}

void sub_24EA206B8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_24EA2071C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_24F928AD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AppPromotionDetailPage.__allocating_init(promotionType:pageRefreshPolicy:pageMetrics:pageRenderEvent:using:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a5;
  v39 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v7 - 8);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v15 = sub_24F928818();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + OBJC_IVAR____TtC12GameStoreKit22AppPromotionDetailPage_promotionType) = *a1;
  v20 = *(v16 + 16);
  v21 = a3;
  v20(v18, a3, v15);
  v22 = v41;
  sub_24E90A7EC(v41, v14);
  *(v19 + 16) = 0;
  v20((v19 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v18, v15);
  v38 = v19;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v40;
  sub_24E90A7EC(v14, v11);
  v23 = sub_24F9285B8();
  v37 = *(v23 - 8);
  v35 = *(v37 + 48);
  if (v35(v11, 1, v23) == 1)
  {

    sub_24E90A85C(v22);
    v24 = *(v16 + 8);
    v24(v21, v15);
    sub_24E90A85C(v14);
    v25 = v18;
  }

  else
  {
    v33 = v18;
    v34 = v21;
    v26 = qword_27F2105F0;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v27, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v28 = v42;
    v29 = v37;
    if (v42)
    {
    }

    v37 = *(v29 + 8);
    (v37)(v11, v23);
    if (!v28)
    {

      sub_24E90A85C(v41);
      v30 = *(v16 + 8);
      v30(v34, v15);
      sub_24E90A85C(v14);
      v30(v33, v15);
      return v38;
    }

    v11 = v36;
    sub_24E90A7EC(v14, v36);
    if (v35(v11, 1, v23) != 1)
    {
      sub_24ECDF110();

      sub_24E90A85C(v41);
      v31 = *(v16 + 8);
      v31(v34, v15);
      sub_24E90A85C(v14);
      v31(v33, v15);
      (v37)(v11, v23);
      return v38;
    }

    sub_24E90A85C(v41);
    v24 = *(v16 + 8);
    v24(v34, v15);
    sub_24E90A85C(v14);
    v25 = v33;
  }

  v24(v25, v15);
  sub_24E90A85C(v11);
  return v38;
}

uint64_t AppPromotionDetailPage.init(promotionType:pageRefreshPolicy:pageMetrics:pageRenderEvent:using:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a4;
  v55 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v9 - 8);
  v52 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v17 = sub_24F928818();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit22AppPromotionDetailPage_promotionType) = *a1;
  v22 = *(v18 + 16);
  v54 = a3;
  v22(v21, a3, v17, v19);
  v23 = a5;
  sub_24E90A7EC(a5, v16);
  *(v5 + 16) = 0;
  v53 = v17;
  (v22)(v5 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v21, v17);
  v56 = v5;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v57;
  sub_24E90A7EC(v16, v13);
  v24 = sub_24F9285B8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v13, 1, v24) == 1)
  {

    sub_24E90A85C(v23);
    v27 = *(v18 + 8);
    v28 = v53;
    v27(v54, v53);
    sub_24E90A85C(v16);
    v27(v21, v28);
    v29 = v13;
  }

  else
  {
    v49 = v21;
    v50 = v23;
    v51 = v16;
    v30 = v54;
    v31 = qword_27F2105F0;

    if (v31 != -1)
    {
      swift_once();
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v32, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v33 = v58;
    if (v58)
    {
    }

    v34 = *(v25 + 8);
    v34(v13, v24);
    if (!v33)
    {

      sub_24E90A85C(v50);
      v42 = *(v18 + 8);
      v43 = v53;
      v42(v30, v53);
      sub_24E90A85C(v51);
      v42(v49, v43);
      return v56;
    }

    v36 = v51;
    v35 = v52;
    sub_24E90A7EC(v51, v52);
    v37 = v26(v35, 1, v24);
    v39 = v49;
    v38 = v50;
    if (v37 != 1)
    {
      sub_24ECDF110();

      sub_24E90A85C(v38);
      v44 = *(v18 + 8);
      v45 = v30;
      v46 = v34;
      v47 = v53;
      v44(v45, v53);
      sub_24E90A85C(v36);
      v44(v39, v47);
      v46(v35, v24);
      return v56;
    }

    sub_24E90A85C(v38);
    v40 = *(v18 + 8);
    v41 = v53;
    v40(v30, v53);
    sub_24E90A85C(v36);
    v40(v39, v41);
    v29 = v35;
  }

  sub_24E90A85C(v29);
  return v56;
}

uint64_t AppPromotionDetailPage.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v22 = a2;
  v24 = sub_24F9285B8();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  sub_24F928398();
  sub_24EA21600();
  v14 = v13;
  sub_24F928218();
  if (v2)
  {
    (*(v4 + 8))(v22, v24);
    v15 = *(v8 + 8);
    v15(a1, v7);
    v15(v13, v7);
    type metadata accessor for AppPromotionDetailPage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = *(v8 + 8);
    v20(v13, v7);
    *(v23 + OBJC_IVAR____TtC12GameStoreKit22AppPromotionDetailPage_promotionType) = v25;
    v16 = *(v8 + 16);
    v21 = a1;
    v16(v11, a1, v7);
    v17 = v22;
    (*(v4 + 16))(v6, v22, v24);
    v14 = BasePage.init(deserializing:using:)(v11, v6);
    (*(v4 + 8))(v17, v24);
    v20(v21, v7);
  }

  return v14;
}

uint64_t AppPromotionDetailPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AppPromotionDetailPage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_24EA21600()
{
  result = qword_27F225350;
  if (!qword_27F225350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225350);
  }

  return result;
}

uint64_t type metadata accessor for AppPromotionDetailPage()
{
  result = qword_27F225358;
  if (!qword_27F225358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EA21728()
{
  result = sub_24F92B098();
  qword_27F225368 = result;
  return result;
}

uint64_t sub_24EA21760()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39B4D8);
  __swift_project_value_buffer(v4, qword_27F39B4D8);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t NWPathNetworkInquiry.__allocating_init(evaluator:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-v4];
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  v7 = OBJC_IVAR____TtC12GameStoreKit20NWPathNetworkInquiry__isInternetOffline;
  v16 = 0;
  sub_24F923058();
  (*(v3 + 32))(v6 + v7, v5, v2);
  *(v6 + 16) = a1;
  v15 = a1;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v8 = a1;
  v9 = sub_24F91F318();

  v10 = *(v6 + 24);
  *(v6 + 24) = v9;

  v11 = [*(v6 + 16) path];
  v12 = [v11 status];

  swift_getKeyPath();
  swift_getKeyPath();
  v14[15] = (v12 & 0xFFFFFFFFFFFFFFFDLL) != 1;

  sub_24F9230A8();

  return v6;
}

uint64_t NWPathNetworkInquiry.init(evaluator:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-v6];
  *(v2 + 24) = 0;
  v8 = OBJC_IVAR____TtC12GameStoreKit20NWPathNetworkInquiry__isInternetOffline;
  v17 = 0;
  sub_24F923058();
  (*(v5 + 32))(v2 + v8, v7, v4);
  *(v2 + 16) = a1;
  v16 = a1;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v9 = a1;
  v10 = sub_24F91F318();

  v11 = *(v2 + 24);
  *(v2 + 24) = v10;

  v12 = [*(v2 + 16) path];
  v13 = [v12 status];

  swift_getKeyPath();
  swift_getKeyPath();
  v15[15] = (v13 & 0xFFFFFFFFFFFFFFFDLL) != 1;

  sub_24F9230A8();

  return v2;
}

uint64_t sub_24EA21CF0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    NWPathNetworkInquiry.notify()();
  }

  return result;
}

Swift::Void __swiftcall NWPathNetworkInquiry.notify()()
{
  v1 = v0;
  if (qword_27F2100D0 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39B4D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A070;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F9283A8();
  v3 = *(v0 + 16);
  v4 = [v3 path];
  v5 = [v4 status];

  v10 = MEMORY[0x277D839B0];
  v9[0] = (v5 & 0xFFFFFFFFFFFFFFFDLL) == 1;
  sub_24F928438();
  sub_24E857CC8(v9);
  sub_24F9283A8();
  v10 = &type metadata for NetworkInterface;
  NWPathNetworkInquiry.interface.getter(v9);
  sub_24F928438();
  sub_24E857CC8(v9);
  sub_24F92A598();

  v6 = [v3 path];
  v7 = [v6 status];

  swift_getKeyPath();
  swift_getKeyPath();
  v9[0] = (v7 & 0xFFFFFFFFFFFFFFFDLL) != 1;

  sub_24F9230A8();
  v8 = [objc_opt_self() defaultCenter];
  if (qword_27F2100C8 != -1)
  {
    swift_once();
  }

  [v8 postNotificationName:qword_27F225368 object:v1];
}

BOOL NWPathNetworkInquiry.isLikelyReachable.getter()
{
  v1 = [*(v0 + 16) path];
  v2 = [v1 status];

  return (v2 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

id sub_24EA220F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 path];
  *a2 = result;
  return result;
}

uint64_t sub_24EA22130()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t NWPathNetworkInquiry.deinit()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v2;
    sub_24F91F1B8();
  }

  v4 = OBJC_IVAR____TtC12GameStoreKit20NWPathNetworkInquiry__isInternetOffline;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return v1;
}

uint64_t NWPathNetworkInquiry.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v2;
    sub_24F91F1B8();
  }

  v4 = OBJC_IVAR____TtC12GameStoreKit20NWPathNetworkInquiry__isInternetOffline;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  (*(*(v5 - 8) + 8))(v1 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t NWPathNetworkInquiry.isInternetOffline.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24EA22354@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a1 = v3;
  return result;
}

uint64_t sub_24EA223D4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t NWPathNetworkInquiry.$isInternetOffline.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  sub_24F923068();
  return swift_endAccess();
}

uint64_t sub_24EA224BC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  sub_24F923068();
  return swift_endAccess();
}

uint64_t sub_24EA22534(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F458);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  sub_24F923078();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

void NWPathNetworkInquiry.interface.getter(char *a1@<X8>)
{
  v3 = [*(v1 + 16) path];
  v4 = [v3 interface];

  if (v4)
  {
    v5 = [v4 type];

    if (v5 > 4)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5 + 1;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

id sub_24EA2276C(SEL *a1)
{
  v3 = [*(v1 + 16) path];
  v4 = [v3 *a1];

  return v4;
}

uint64_t NWPathNetworkInquiry.observe(on:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (qword_27F2100C8 != -1)
  {
    v14 = a1;
    swift_once();
    a1 = v14;
  }

  v8 = qword_27F225368;
  sub_24E615E00(a1, v15);
  v9 = type metadata accessor for CommonNetworkObservation();
  v10 = swift_allocObject();
  sub_24E615E00(v15, v10 + 16);
  *(v10 + 56) = a2;
  *(v10 + 64) = a3;
  v11 = objc_opt_self();

  v12 = [v11 defaultCenter];
  [v12 addObserver:v10 selector:sel_networkStateDidChange_ name:v8 object:v4];

  result = __swift_destroy_boxed_opaque_existential_1(v15);
  a4[3] = v9;
  a4[4] = &off_2861EBF80;
  *a4 = v10;
  return result;
}

BOOL sub_24EA228EC()
{
  v1 = [*(*v0 + 16) path];
  v2 = [v1 status];

  return (v2 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

id sub_24EA22984(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [*(*v3 + 16) path];
  v6 = [v5 *a3];

  return v6;
}

id _s12GameStoreKit20NWPathNetworkInquiryCACycfC_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13[-v2];
  result = [objc_opt_self() sharedDefaultEvaluator];
  if (result)
  {
    v5 = result;
    type metadata accessor for NWPathNetworkInquiry();
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    v7 = OBJC_IVAR____TtC12GameStoreKit20NWPathNetworkInquiry__isInternetOffline;
    v15 = 0;
    sub_24F923058();
    (*(v1 + 32))(v6 + v7, v3, v0);
    *(v6 + 16) = v5;
    v14 = v5;
    swift_getKeyPath();
    swift_allocObject();
    swift_weakInit();
    v8 = v5;
    v9 = sub_24F91F318();

    v10 = *(v6 + 24);
    *(v6 + 24) = v9;

    v11 = [*(v6 + 16) path];
    v12 = [v11 status];

    swift_getKeyPath();
    swift_getKeyPath();
    v13[15] = (v12 & 0xFFFFFFFFFFFFFFFDLL) != 1;

    sub_24F9230A8();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for NWPathNetworkInquiry()
{
  result = qword_27F225378;
  if (!qword_27F225378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA22CB0()
{
  sub_24EA22D84();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24EA22D84()
{
  if (!qword_27F21F448)
  {
    v0 = sub_24F9230B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21F448);
    }
  }
}

uint64_t sub_24EA22DDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  __swift_allocate_value_buffer(v0, qword_27F225388);
  __swift_project_value_buffer(v0, qword_27F225388);
  return sub_24F928C68();
}

uint64_t static LocalPreferences.placeholderDisableShelfHydration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  v3 = __swift_project_value_buffer(v2, qword_27F225388);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24EA22F08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249D8);
  __swift_allocate_value_buffer(v0, qword_27F2253A0);
  __swift_project_value_buffer(v0, qword_27F2253A0);
  return sub_24F928C68();
}

uint64_t sub_24EA22FA4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249D8);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_24EA23048()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249D8);
  __swift_allocate_value_buffer(v0, qword_27F2253B8);
  __swift_project_value_buffer(v0, qword_27F2253B8);
  return sub_24F928C68();
}

uint64_t sub_24EA230E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  __swift_allocate_value_buffer(v0, qword_27F2253D0);
  __swift_project_value_buffer(v0, qword_27F2253D0);
  return sub_24F928C68();
}

uint64_t static LocalPreferences.currentJSVersion.getter()
{
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100F0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  __swift_project_value_buffer(v0, qword_27F2253D0);
  sub_24F928868();

  return v2;
}

double sub_24EA23204@<D0>(_OWORD *a1@<X8>)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  __swift_project_value_buffer(v2, qword_27F2253D0);
  sub_24F928868();

  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_24EA232CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24EA2330C(v1, v2);
}

uint64_t sub_24EA2330C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-1] - v6;
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (a2)
  {
    if (qword_27F2100F0 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v4, qword_27F2253D0);
    (*(v5 + 16))(v7, v8, v4);
    v13[0] = a1;
    v13[1] = a2;
    sub_24F928878();
  }

  else
  {
    if (qword_27F2100F0 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v4, qword_27F2253D0);
    v13[3] = v4;
    v13[4] = sub_24E979394();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
    (*(v5 + 16))(boxed_opaque_existential_1, v10, v4);
    sub_24F929358();

    return __swift_destroy_boxed_opaque_existential_1(v13);
  }
}

uint64_t sub_24EA23510(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EA235D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LaunchChallengeDefinitionAction()
{
  result = qword_27F2253E8;
  if (!qword_27F2253E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA236C0()
{
  sub_24E6BCB04();
  if (v0 <= 0x3F)
  {
    sub_24F928AD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24EA23750@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_24F928AD8();
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2253F8);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  v9 = type metadata accessor for LaunchChallengeDefinitionAction();
  MEMORY[0x28223BE20](v9);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EA23CE0();
  v12 = v29;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v9;
  v13 = a1;
  v14 = v27;
  v15 = v28;
  v29 = v3;
  v34 = 0;
  v16 = v11;
  *v11 = sub_24F92CBC8();
  v11[1] = v17;
  v23[1] = v17;
  v33 = 1;
  v11[2] = sub_24F92CC28();
  v11[3] = v18;
  v32 = 2;
  v23[0] = 0;
  v11[4] = sub_24F92CC28();
  v11[5] = v19;
  v31 = 3;
  v11[6] = sub_24F92CBC8();
  v11[7] = v20;
  v30 = 4;
  sub_24E862F10();
  v21 = v29;
  sub_24F92CC68();
  (*(v14 + 8))(v8, v15);
  (*(v25 + 32))(v16 + *(v24 + 32), v5, v21);
  sub_24EA23D34(v16, v26);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_24EA23D98(v16);
}

uint64_t sub_24EA23B78()
{
  v1 = *v0;
  v2 = 0x44496D616461;
  v3 = 0x676E656C6C616863;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0x654D6E6F69746361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449656C646E7562;
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

uint64_t sub_24EA23C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EA23F0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EA23C50(uint64_t a1)
{
  v2 = sub_24EA23CE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EA23C8C(uint64_t a1)
{
  v2 = sub_24EA23CE0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EA23CE0()
{
  result = qword_27F225400;
  if (!qword_27F225400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225400);
  }

  return result;
}

uint64_t sub_24EA23D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchChallengeDefinitionAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA23D98(uint64_t a1)
{
  v2 = type metadata accessor for LaunchChallengeDefinitionAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EA23E08()
{
  result = qword_27F225408;
  if (!qword_27F225408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225408);
  }

  return result;
}

unint64_t sub_24EA23E60()
{
  result = qword_27F225410;
  if (!qword_27F225410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225410);
  }

  return result;
}

unint64_t sub_24EA23EB8()
{
  result = qword_27F225418[0];
  if (!qword_27F225418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F225418);
  }

  return result;
}

uint64_t sub_24EA23F0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E656C6C616863 && a2 == 0xEB00000000444965 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA4E090 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
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

uint64_t sub_24EA240CC(uint64_t a1)
{
  *(v1 + 24) = a1;
  refreshed = type metadata accessor for FeedRefreshNotifier();
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = sub_24EA24180;

  return MEMORY[0x28217F228](v1 + 16, refreshed, refreshed);
}

uint64_t sub_24EA24180()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_24E80CB20;
  }

  else
  {
    v2 = sub_24E769754;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

unint64_t sub_24EA242B0()
{
  result = qword_27F216328;
  if (!qword_27F216328)
  {
    type metadata accessor for RefreshFeedsAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216328);
  }

  return result;
}

uint64_t sub_24EA24310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v9 = sub_24F92A9E8();
  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24F975D18;
  v11[5] = v8;
  v11[6] = v9;

  sub_24E6959D8(0, 0, v7, &unk_24F94D7B0, v11);

  return v9;
}

uint64_t sub_24EA24494()
{

  return swift_deallocObject();
}

uint64_t sub_24EA244CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E614970;

  return sub_24EA240CC(a1);
}

uint64_t sub_24EA24578()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t AppStateFieldsProvider.init(appStateController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(type metadata accessor for AppStateFieldsProvider() + 20);
  v7 = *MEMORY[0x277D22340];
  v8 = sub_24F92A2D8();
  result = (*(*(v8 - 8) + 104))(&a3[v6], v7, v8);
  *a3 = a1;
  *(a3 + 1) = a2;
  return result;
}

uint64_t type metadata accessor for AppStateFieldsProvider()
{
  result = qword_27F2254A0;
  if (!qword_27F2254A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppStateFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppStateFieldsProvider() + 20);
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppStateFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = v1;
  v5 = MetricsFieldsContext.adamIdString.getter();
  if (!v6)
  {
    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v17 = sub_24F92AAE8();
    __swift_project_value_buffer(v17, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  v7 = v5;
  v8 = v6;
  v9 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v25 = v7;
  v26 = v8;
  (*(v9 + 56))(&v25, ObjectType, v9);
  v12 = v11;

  v13 = swift_getObjectType();
  (*(v12 + 16))(&v28, v13, v12);
  v15 = v28;
  v14 = v29;
  v16 = v34 >> 60;
  if ((v34 >> 60) <= 3)
  {
    if (!v16)
    {
      goto LABEL_22;
    }

    if (v16 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F93DE60;
      *(inited + 32) = 0x6D61726150797562;
      v24 = inited + 32;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = 0xE900000000000073;
      *(inited + 48) = v15;
      *(inited + 56) = v14;
      v16 = sub_24E608448(inited);
      swift_setDeallocating();
      sub_24EA24CCC(v24);
      v21 = 0xE600000000000000;
      v22 = 0x657461647075;
      goto LABEL_28;
    }

    if (v16 != 3)
    {
LABEL_23:
      swift_unknownObjectRelease();
      return sub_24E88D2AC(&v28);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_24F93DE60;
    *(v19 + 32) = 0x6D61726150797562;
    v20 = v19 + 32;
    *(v19 + 72) = MEMORY[0x277D837D0];
    *(v19 + 40) = 0xE900000000000073;
    *(v19 + 48) = v15;
    *(v19 + 56) = v14;
    v16 = sub_24E608448(v19);
    swift_setDeallocating();
    sub_24EA24CCC(v20);
LABEL_25:
    v21 = 0xE800000000000000;
    v22 = 0x64616F6C6E776F64;
    goto LABEL_28;
  }

  if (v16 <= 6)
  {
    if (v16 != 4)
    {
      if (v16 == 5)
      {
        sub_24E88D2AC(&v28);
        v16 = 0;
LABEL_22:
        v21 = 0xE600000000000000;
        v22 = 0x6C65636E6163;
        goto LABEL_28;
      }

      goto LABEL_23;
    }

    sub_24E88D2AC(&v28);
    v16 = 0;
    goto LABEL_25;
  }

  if (v16 == 7)
  {
    sub_24E88D2AC(&v28);
    v16 = 0;
    v21 = 0xE400000000000000;
    v22 = 1852141679;
    goto LABEL_28;
  }

  if (v16 != 8 || (v34 != 0x8000000000000000 || v29 | v28 | v35 | v33 | v32 | v31 | v30) && (v34 != 0x8000000000000000 || v28 != 4 || v35 | v29 | v33 | v32 | v31 | v30))
  {
    goto LABEL_23;
  }

  v16 = 0;
  v21 = 0xE300000000000000;
  v22 = 7959906;
LABEL_28:
  v27 = MEMORY[0x277D837D0];
  v25 = v22;
  v26 = v21;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_24F929A28();
  if (v2)
  {
    swift_unknownObjectRelease();

    return __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  __swift_destroy_boxed_opaque_existential_1(&v25);
  if (v16)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    v25 = v16;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_24EA24C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24F92A2D8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24EA24CCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EA24D48(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F92A2D8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24EA24E08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F92A2D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24EA24EAC()
{
  result = sub_24EA24F30();
  if (v1 <= 0x3F)
  {
    result = sub_24F92A2D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24EA24F30()
{
  result = qword_27F2254B0;
  if (!qword_27F2254B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F2254B0);
  }

  return result;
}

id NSAttributedString.baseWritingDirection(forCharacterAt:)(uint64_t a1)
{
  if ([v1 length] <= a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_24F9479A0;
    *(v6 + 56) = MEMORY[0x277D837D0];
    v7 = sub_24E90A06C();
    v8 = MEMORY[0x277D83B88];
    v9 = MEMORY[0x277D83C10];
    *(v6 + 32) = 0xD000000000000025;
    *(v6 + 40) = 0x800000024FA4E120;
    *(v6 + 96) = v8;
    *(v6 + 104) = v9;
    *(v6 + 64) = v7;
    *(v6 + 72) = a1;
    v10 = [v1 length];
    *(v6 + 136) = v8;
    *(v6 + 144) = v9;
    *(v6 + 112) = v10;
    sub_24F92B118();
    v11 = *MEMORY[0x277CBE730];
    v12 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
    v13 = sub_24F92B098();

    v4 = [v12 initWithName:v11 reason:v13 userInfo:0];

    [v4 raise];
    v5 = 0;
  }

  else
  {
    v3 = [v1 paragraphStyleAtIndex:a1 effectiveRange:0];
    if (!v3)
    {
      return 0;
    }

    v4 = v3;
    v5 = [v3 baseWritingDirection];
  }

  return v5;
}

uint64_t NSAttributedString.baseWritingDirectionForCharacterAtIndex(_:unknownStyle:)(uint64_t a1, _BYTE *a2)
{
  result = NSAttributedString.baseWritingDirection(forCharacterAt:)(a1);
  if (a2)
  {
    *a2 = v4 & 1;
  }

  if (v4)
  {
    return -1;
  }

  return result;
}

uint64_t sub_24EA25194(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1;
  v7 = NSAttributedString.baseWritingDirection(forCharacterAt:)(a3);
  if (a4)
  {
    *a4 = v8 & 1;
  }

  if (v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

Swift::String __swiftcall NSAttributedString.convertedWritingDirectionToBidiControlCharacters()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  if (qword_27F210100 != -1)
  {
    swift_once();
  }

  [v1 performSelector_];
  v2 = [v1 string];
  v3 = sub_24F92B0D8();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::Void __swiftcall NSMutableAttributedString.convertWritingDirectionToBidiControlCharacters()()
{
  if (qword_27F210100 != -1)
  {
    swift_once();
  }

  v1 = qword_27F2254C0;
  v2 = v0;

  [v2 performSelector_];
}

void sub_24EA25330()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v1 = sub_24F92B098();
  v2 = [v0 initWithString_];

  qword_27F2254B8 = v2;
}

id static NSAttributedString.empty.getter()
{
  if (qword_27F2100F8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F2254B8;

  return v1;
}

id sub_24EA253EC()
{
  if (qword_27F2100F8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F2254B8;

  return v1;
}

uint64_t NSAttributedString.paragraphStyle(at:effectiveRange:)(uint64_t a1, uint64_t a2)
{
  if ([v2 attribute:*MEMORY[0x277D74118] atIndex:a1 effectiveRange:a2])
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_24E69A5C4(0, &qword_27F221898);
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
    sub_24E857CC8(v7);
    return 0;
  }
}

id sub_24EA25574(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = NSAttributedString.paragraphStyle(at:effectiveRange:)(a3, a4);

  return v7;
}

uint64_t NSAttributedString.strongBaseWritingDirectionOfParagraph(atOrBefore:)(uint64_t a1)
{
  if ([v1 length] <= a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_24F9479A0;
    *(v10 + 56) = MEMORY[0x277D837D0];
    v11 = sub_24E90A06C();
    v12 = MEMORY[0x277D83B88];
    v13 = MEMORY[0x277D83C10];
    *(v10 + 32) = 0xD000000000000032;
    *(v10 + 40) = 0x800000024FA4E150;
    *(v10 + 96) = v12;
    *(v10 + 104) = v13;
    *(v10 + 64) = v11;
    *(v10 + 72) = a1;
    v14 = [v1 length];
    *(v10 + 136) = v12;
    *(v10 + 144) = v13;
    *(v10 + 112) = v14;
    sub_24F92B118();
    v15 = *MEMORY[0x277CBE730];
    v16 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
    v17 = sub_24F92B098();

    v18 = [v16 initWithName:v15 reason:v17 userInfo:0];

    [v18 raise];
    return 0;
  }

  v20 = 0;
  v21 = 1;
  v3 = *MEMORY[0x277D74118];
  v4 = swift_allocObject();
  *(v4 + 16) = &v20;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24EA25B14;
  *(v5 + 24) = v4;
  v19[4] = sub_24EA25B2C;
  v19[5] = v5;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_24EA259AC;
  v19[3] = &block_descriptor_39;
  v6 = _Block_copy(v19);

  [v1 enumerateAttribute:v3 inRange:0 options:a1 usingBlock:{2, v6}];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v20;

    return v9;
  }

  __break(1u);
  return result;
}

void sub_24EA258AC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  sub_24E94E17C(a1, v8);
  if (v9)
  {
    sub_24E69A5C4(0, &qword_27F221898);
    if (swift_dynamicCast())
    {
      if ([v7 baseWritingDirection] == 1 || !objc_msgSend(v7, sel_baseWritingDirection))
      {
        *a5 = [v7 baseWritingDirection];
        *(a5 + 8) = 0;
        *a4 = 1;
      }
    }
  }

  else
  {
    sub_24E857CC8(v8);
  }
}

uint64_t sub_24EA259AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_24E612B0C(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_24E857CC8(v13);
}

uint64_t NSAttributedString.strongBaseWritingDirectionOfParagraphAtOrBeforeIndex(_:)(uint64_t a1)
{
  result = NSAttributedString.strongBaseWritingDirectionOfParagraph(atOrBefore:)(a1);
  if (v2)
  {
    return -1;
  }

  return result;
}

uint64_t sub_24EA25A68(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = NSAttributedString.strongBaseWritingDirectionOfParagraph(atOrBefore:)(a3);
  v7 = v6;

  if (v7)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

void sub_24EA25AB4()
{
  v0 = sub_24F92B098();
  v1 = NSSelectorFromString(v0);

  qword_27F2254C0 = v1;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall NSMutableAttributedString.convertLineSeparatorsIntoLineFeeds(at:paragraphRanges:)(Swift::OpaquePointer at, Swift::OpaquePointer paragraphRanges)
{
  v3 = *(at._rawValue + 2);
  if (v3)
  {
    v5 = (at._rawValue + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_24EA25BD4(&v7, v2, paragraphRanges._rawValue);
      --v3;
    }

    while (v3);
  }
}

void sub_24EA25BD4(uint64_t *a1, void *a2, unint64_t a3)
{
  v5 = *a1;
  v6 = sub_24F92B098();
  [a2 replaceCharactersInRange:v5 withString:{1, v6}];

  if (a3 >> 62)
  {
LABEL_25:
    v7 = sub_24F92C738();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x253052270](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v9 = *(a3 + 8 * i + 32);
    }

    v10 = v9;
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    [v9 directionalRangeValue];
    if (v5 >= v17)
    {
      if (__OFSUB__(v5, v17))
      {
        goto LABEL_24;
      }

      if (v5 - v17 < v18)
      {
        break;
      }
    }

    if (v11 == v7)
    {
      return;
    }
  }

  [v10 directionalRangeValue];
  v12 = [a2 paragraphStyleAtIndex:v17 effectiveRange:0];
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  [v12 paragraphSpacing];
  if (v14 == 0.0)
  {

LABEL_19:
    return;
  }

  [v13 mutableCopy];
  sub_24F92C648();
  swift_unknownObjectRelease();
  sub_24E69A5C4(0, &qword_27F2254C8);
  if (swift_dynamicCast())
  {
    [v19 setParagraphSpacing_];
    v15 = *MEMORY[0x277D74118];
    v16 = v19;
    [a2 addAttribute:v15 value:v16 range:{v17, v18}];

    goto LABEL_19;
  }
}