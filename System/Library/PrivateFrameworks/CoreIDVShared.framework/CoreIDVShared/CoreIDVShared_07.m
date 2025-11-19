void HPKESuiteKwV1.openMessageHPKE<A>(envelope:authenticationContext:decoder:)(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v71 = a5;
  v60 = a6;
  v61 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v10 - 8, v11);
  *(&v59 + 1) = &v56 - v12;
  v14 = *(a1 + 104);
  v13 = *(a1 + 112);
  v15 = *(a1 + 56);
  v70[2] = *(a1 + 40);
  v70[3] = v15;
  v16 = *(a1 + 88);
  v70[4] = *(a1 + 72);
  v70[5] = v16;
  v17 = *(a1 + 24);
  v70[0] = *(a1 + 8);
  v70[1] = v17;
  sub_225A0E2F8(v70, &v64);
  v18 = HPKESuiteKwV1.openMessageHPKEWithoutDecoding(data:params:authenticationContext:)(v14, v13, (a1 + 8), a2);
  if (v6)
  {
    v20 = *(a1 + 40);
    v21 = *(a1 + 72);
    v67 = *(a1 + 56);
    v68 = v21;
    v69 = *(a1 + 88);
    v64 = *(a1 + 8);
    v65 = *(a1 + 24);
    v66 = v20;
    sub_225A0E354(&v64);
    v28 = "r decrypting encoded data: ";
    v29 = v6;
    v61 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v71 = swift_allocError();
    v31 = v30;
    swift_getErrorValue();
    v32 = v63;
    v33 = v6;
    sub_225B21FAC(v32, &v64);

    v34 = *(&v64 + 1);
    if (*(&v64 + 1))
    {
      v60 = v64;
      v58 = *(&v66 + 1);
      v35 = v66;
      v59 = v65;
    }

    else
    {
      *&v64 = v6;
      v36 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v37 = v62;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        v57 = "r decrypting encoded data: ";
        *(inited + 32) = 20;
        v39 = [v37 code];
        v40 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v40;
        *(inited + 40) = v39;
        v35 = sub_225B2C374(inited);
        swift_setDeallocating();
        v28 = v57;
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v41 = v6;
        v59 = 0uLL;
        v60 = 0;
        v34 = MEMORY[0x277D84F90];
      }

      else
      {
        *&v64 = v6;
        v42 = v6;
        v43 = sub_225CCE954();
        v44 = *(&v59 + 1);
        v45 = swift_dynamicCast();
        v46 = *(v43 - 8);
        (*(v46 + 56))(v44, v45 ^ 1u, 1, v43);
        LODWORD(v46) = (*(v46 + 48))(v44, 1, v43);
        sub_2259CB640(v44, &unk_27D73B050);
        if (v46)
        {
          v47 = 0;
        }

        else
        {
          v47 = 23;
        }

        v60 = v47;
        v34 = MEMORY[0x277D84F90];
        v35 = sub_225B2C374(MEMORY[0x277D84F90]);
        v48 = v6;
        v59 = 0uLL;
      }

      v58 = v6;
    }

    v49 = v28 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v64 = v35;
    sub_225B2C4A0(v61, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v64);

    v51 = v64;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_225B29AA0(0, *(v34 + 2) + 1, 1, v34);
    }

    v53 = *(v34 + 2);
    v52 = *(v34 + 3);
    if (v53 >= v52 >> 1)
    {
      v34 = sub_225B29AA0((v52 > 1), v53 + 1, 1, v34);
    }

    *(v34 + 2) = v53 + 1;
    v54 = &v34[56 * v53];
    *(v54 + 4) = 0;
    *(v54 + 5) = 0;
    *(v54 + 6) = 0xD00000000000001CLL;
    *(v54 + 7) = v49;
    *(v54 + 8) = 0xD000000000000038;
    *(v54 + 9) = 0x8000000225D17240;
    *(v54 + 10) = 668;
    *v31 = v60;
    v55 = v59;
    *(v31 + 8) = v34;
    *(v31 + 16) = v55;
    *(v31 + 32) = v51;
    *(v31 + 40) = v58;
    swift_willThrow();
  }

  else
  {
    v22 = v18;
    v23 = v19;
    v24 = *(a1 + 40);
    v25 = *(a1 + 72);
    v67 = *(a1 + 56);
    v68 = v25;
    v69 = *(a1 + 88);
    v64 = *(a1 + 8);
    v65 = *(a1 + 24);
    v66 = v24;
    sub_225A0E354(&v64);
    v26 = a3[3];
    v27 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v26);
    (*(v27 + 8))(v61, v22, v23, v61, v71, v26, v27);
    sub_2259BEF00(v22, v23);
  }
}

__n128 HPKEParams.init(mode:pkEm:pkRHash:pkISm:pkISHash:pkSm:infoHash:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __n128 a10, uint64_t a11)
{
  result = a10;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  *(a8 + 56) = a9;
  *(a8 + 72) = a10;
  *(a8 + 88) = a11;
  return result;
}

uint64_t HPKEEnvelope.init(params:data:unencryptedData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  v12 = *(type metadata accessor for HPKEEnvelope() + 52);
  (*(*(a5 - 8) + 56))(a6 + v12, 1, 1, a5);
  v13 = a1[3];
  *(a6 + 40) = a1[2];
  *(a6 + 56) = v13;
  v14 = a1[5];
  *(a6 + 72) = a1[4];
  *(a6 + 88) = v14;
  v15 = a1[1];
  *(a6 + 8) = *a1;
  *(a6 + 24) = v15;
  *(a6 + 104) = a2;
  *(a6 + 112) = a3;
  v16 = sub_225CCEFC4();
  v17 = *(*(v16 - 8) + 40);

  return v17(a6 + v12, a4, v16);
}

uint64_t sub_225A4A7D0()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_225A4A820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A4A894(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225A4A900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A4A970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A4AA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_225A4A81C(a1, a2, a3[2], a3[3], a3[4]);
  *a4 = result;
  return result;
}

uint64_t sub_225A4AA54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225A5E2EC();
  *a1 = result;
  return result;
}

uint64_t sub_225A4AA88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_225A4AADC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t HPKEEncryptedMessagePlain.init(sender:recipient:unencryptedData:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  *a5 = 0;
  *(a5 + 8) = xmmword_225CD3100;
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0;
  *(a5 + 112) = 0xF000000000000000;
  v10 = *(type metadata accessor for HPKEEncryptedMessagePlain() + 60);
  v11 = *(a4 - 8);
  v14 = *(v11 + 56);
  v14(a5 + v10, 1, 1, a4);
  *(a5 + 1) = v8;
  *(a5 + 2) = v9;
  v12 = sub_225CCEFC4();
  (*(*(v12 - 8) + 8))(a5 + v10, v12);
  (*(v11 + 32))(a5 + v10, a3, a4);

  return (v14)(a5 + v10, 0, 1, a4);
}

uint64_t HPKEEncryptedMessagePlain.seal(to:encryptor:)(uint64_t a1, void *a2, void *a3)
{
  v86 = a2;
  v87 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v88 = &v79 - v6;
  v8 = a3[2];
  v7 = a3[3];
  v94 = a3;
  v84 = a3[4];
  v85 = v7;
  v9 = type metadata accessor for HPKEEnvelope();
  v82 = *(v9 - 8);
  v83 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v95 = &v79 - v11;
  v12 = sub_225CCEFC4();
  v90 = *(v12 - 8);
  v91 = v12;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v79 - v15;
  v17 = v8;
  v93 = *(v8 - 8);
  MEMORY[0x28223BE20](v14, v18);
  v92 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_225CCD954();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v89 = v16;
  v25 = off_28105B918;
  v26 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v27 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v27));
  (*(v21 + 16))(v24, &v25[v26], v20);
  os_unfair_lock_unlock(&v25[v27]);
  v28 = v24;
  v29 = sub_225CCD934();
  v30 = sub_225CCED04();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *&v109[0] = v81;
    *v31 = 136315138;
    v32 = v17;
    *&v103 = v17;
    swift_getMetatypeMetadata();
    v33 = sub_225CCE504();
    v35 = sub_2259BE198(v33, v34, v109);
    v80 = v20;
    v36 = v35;

    *(v31 + 4) = v36;
    _os_log_impl(&dword_2259A7000, v29, v30, "sealing messages using HPKE: message type = %s", v31, 0xCu);
    v37 = v81;
    __swift_destroy_boxed_opaque_existential_0(v81);
    MEMORY[0x22AA6F950](v37, -1, -1);
    MEMORY[0x22AA6F950](v31, -1, -1);

    (*(v21 + 8))(v28, v80);
  }

  else
  {

    (*(v21 + 8))(v24, v20);
    v32 = v17;
  }

  v39 = v90;
  v38 = v91;
  v40 = v89;
  (*(v90 + 16))(v89, v110 + *(v94 + 15), v91);
  v41 = v93;
  v42 = (*(v93 + 48))(v40, 1, v32);
  v43 = v95;
  v44 = v92;
  if (v42 == 1)
  {
    (*(v39 + 8))(v40, v38);
    v110 = 0x8000000225D17220;
    v95 = 0x8000000225D19970;
    v45 = MEMORY[0x277D84F90];
    v46 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v48 = v47;
    v49 = sub_225CCE954();
    v50 = *(v49 - 8);
    v51 = v88;
    (*(v50 + 56))(v88, 1, 1, v49);
    LODWORD(v49) = (*(v50 + 48))(v51, 1, v49);
    sub_2259CB640(v51, &unk_27D73B050);
    if (v49)
    {
      v52 = 108;
    }

    else
    {
      v52 = 23;
    }

    v53 = sub_225B2C374(v45);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v109[0] = v53;
    sub_225B2C4A0(v46, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v109);

    v55 = *&v109[0];
    v56 = sub_225B29AA0(0, 1, 1, v45);
    v58 = *(v56 + 2);
    v57 = *(v56 + 3);
    if (v58 >= v57 >> 1)
    {
      v56 = sub_225B29AA0((v57 > 1), v58 + 1, 1, v56);
    }

    *(v56 + 2) = v58 + 1;
    v59 = &v56[56 * v58];
    *(v59 + 4) = 0xD00000000000002CLL;
    *(v59 + 5) = 0x8000000225D19940;
    v60 = v110;
    *(v59 + 6) = 0xD00000000000001CLL;
    *(v59 + 7) = v60;
    v61 = v95;
    *(v59 + 8) = 0xD000000000000013;
    *(v59 + 9) = v61;
    *(v59 + 10) = 88;
    *v48 = v52;
    *(v48 + 8) = v56;
    *(v48 + 16) = 0xD00000000000002CLL;
    *(v48 + 24) = 0x8000000225D19940;
    *(v48 + 32) = v55;
    *(v48 + 40) = 0;
    return swift_willThrow();
  }

  else
  {
    v63 = v32;
    (*(v41 + 32))(v92, v40, v32);
    v64 = v86[3];
    v65 = v86[4];
    __swift_project_boxed_opaque_existential_1(v86, v64);
    v66 = v96;
    sub_225A640BC(v44, v87, v64, v63, v65, v85, v84);
    if (v66)
    {
      return (*(v41 + 8))(v44, v63);
    }

    else
    {
      (*(v41 + 8))(v44, v63);
      v67 = *(v43 + 56);
      v99 = *(v43 + 40);
      v100 = v67;
      v68 = *(v43 + 88);
      v101 = *(v43 + 72);
      v102 = v68;
      v69 = *(v43 + 24);
      v98[0] = *(v43 + 8);
      v98[1] = v69;
      v105 = v99;
      v106 = v67;
      v107 = v101;
      v108 = v68;
      v103 = v98[0];
      v104 = v69;
      v70 = v110;
      v71 = *(v110 + 88);
      v109[4] = *(v110 + 72);
      v109[5] = v71;
      v72 = *(v110 + 56);
      v109[2] = *(v110 + 40);
      v109[3] = v72;
      v73 = *(v110 + 24);
      v109[0] = *(v110 + 8);
      v109[1] = v73;
      sub_225A0E2F8(v98, &v97);
      sub_2259CB640(v109, &qword_27D73B420);
      v74 = v106;
      *(v70 + 40) = v105;
      *(v70 + 56) = v74;
      v75 = v108;
      *(v70 + 72) = v107;
      *(v70 + 88) = v75;
      v76 = v104;
      *(v70 + 8) = v103;
      *(v70 + 24) = v76;
      v77 = *(v43 + 13);
      v78 = *(v43 + 14);
      sub_2259CB710(v77, v78);
      (*(v82 + 8))(v43, v83);
      result = sub_2259B97A8(*(v70 + 104), *(v70 + 112));
      *(v70 + 104) = v77;
      *(v70 + 112) = v78;
    }
  }

  return result;
}

void HPKEEncryptedMessagePlain.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v105 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v106 = &v103 - v9;
  v112 = sub_225CCF324();
  v110 = *(v112 - 8);
  v11 = MEMORY[0x28223BE20](v112, v10);
  v109 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v14 = *(a2 + 16);
  v107 = &v103 - v15;
  v108 = v14;
  type metadata accessor for HPKEEncryptedMessagePlain.CodingKeys();
  swift_getWitnessTable();
  v16 = sub_225CCF7F4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v103 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCE4();
  LOBYTE(v124) = *v134;
  LOBYTE(v118) = 0;
  sub_225A5E13C();
  v21 = v111;
  sub_225CCF7E4();
  if (v21)
  {
    (*(v17 + 8))(v20, v16);
    v134 = 0;
    v22 = v112;
    *&v118 = v21;
    v23 = v21;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    v25 = v107;
    if (swift_dynamicCast())
    {
      *(&v104 + 1) = v24;

      v27 = v109;
      v26 = v110;
      (*(v110 + 32))(v109, v25, v22);
      *&v124 = 0;
      *(&v124 + 1) = 0xE000000000000000;
      sub_225CCF204();

      *&v124 = 0xD00000000000001ALL;
      *(&v124 + 1) = 0x8000000225D19990;
      *&v116[0] = v108;
      swift_getMetatypeMetadata();
      v28 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v28);

      MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D199D0);
      v107 = *(&v124 + 1);
      v108 = v124;
      v29 = swift_allocError();
      (*(v26 + 16))(v30, v27, v22);
      v105 = "r decrypting encoded data: ";
      v31 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v111 = swift_allocError();
      v33 = v32;
      swift_getErrorValue();
      v34 = v132;
      v35 = v29;
      sub_225B21FAC(v34, &v124);

      v36 = *(&v124 + 1);
      if (*(&v124 + 1))
      {
        v106 = v124;
        v104 = v125;
        v37 = *(&v126 + 1);
        v38 = v126;
      }

      else
      {
        *&v124 = v29;
        v49 = v29;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v50 = *&v116[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v52 = [v50 code];
          v53 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v53;
          *(inited + 40) = v52;
          v38 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060);

          v54 = v29;
          v104 = 0uLL;
          v36 = MEMORY[0x277D84F90];
          v106 = 119;
          v37 = v29;
        }

        else
        {
          *&v124 = v29;
          v61 = v29;
          v62 = sub_225CCE954();
          v63 = v31;
          v64 = v106;
          v65 = swift_dynamicCast();
          v66 = *(v62 - 8);
          (*(v66 + 56))(v64, v65 ^ 1u, 1, v62);
          LODWORD(v62) = (*(v66 + 48))(v64, 1, v62);
          v67 = v64;
          v31 = v63;
          sub_2259CB640(v67, &unk_27D73B050);
          if (v62)
          {
            v68 = 119;
          }

          else
          {
            v68 = 23;
          }

          v106 = v68;
          v69 = v107;

          v36 = MEMORY[0x277D84F90];
          v38 = sub_225B2C374(MEMORY[0x277D84F90]);
          v70 = v29;
          v37 = v29;
          *&v104 = v108;
          *(&v104 + 1) = v69;
        }
      }

      v71 = v105 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v124 = v38;
      sub_225B2C4A0(v31, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v124);

      v73 = v124;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_225B29AA0(0, *(v36 + 2) + 1, 1, v36);
      }

      v75 = *(v36 + 2);
      v74 = *(v36 + 3);
      if (v75 >= v74 >> 1)
      {
        v36 = sub_225B29AA0((v74 > 1), v75 + 1, 1, v36);
      }

      *(v36 + 2) = v75 + 1;
      v76 = &v36[56 * v75];
      v77 = v107;
      *(v76 + 4) = v108;
      *(v76 + 5) = v77;
      *(v76 + 6) = 0xD00000000000001CLL;
      *(v76 + 7) = v71;
      *(v76 + 8) = 0x742865646F636E65;
      *(v76 + 9) = 0xEB00000000293A6FLL;
      *(v76 + 10) = 105;
      *v33 = v106;
      v78 = v104;
      *(v33 + 8) = v36;
      *(v33 + 16) = v78;
      *(v33 + 32) = v73;
      *(v33 + 40) = v37;
      swift_willThrow();
      (*(v110 + 8))(v109, v112);
      v79 = v118;
    }

    else
    {

      *&v124 = 0;
      *(&v124 + 1) = 0xE000000000000000;
      sub_225CCF204();
      MEMORY[0x22AA6CE70](0xD00000000000001ALL, 0x8000000225D19990);
      *&v118 = v108;
      swift_getMetatypeMetadata();
      v39 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v39);

      MEMORY[0x22AA6CE70](0xD000000000000018, 0x8000000225D199B0);
      v112 = v124;
      v109 = "r decrypting encoded data: ";
      v110 = *(&v124 + 1);
      v40 = v21;
      v41 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v111 = swift_allocError();
      v43 = v42;
      swift_getErrorValue();
      v44 = v133;
      v45 = v21;
      sub_225B21FAC(v44, &v124);

      v46 = *(&v124 + 1);
      if (*(&v124 + 1))
      {
        v107 = v125;
        v108 = v124;
        v106 = *(&v125 + 1);
        v47 = *(&v126 + 1);
        v48 = v126;
      }

      else
      {
        *&v124 = v21;
        v55 = v21;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v56 = v118;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          v57 = swift_initStackObject();
          *(v57 + 16) = xmmword_225CD30F0;
          *(v57 + 32) = 20;
          v58 = [v56 code];
          v59 = MEMORY[0x277D83BF8];
          *(v57 + 64) = MEMORY[0x277D83B88];
          *(v57 + 72) = v59;
          *(v57 + 40) = v58;
          v48 = sub_225B2C374(v57);
          swift_setDeallocating();
          sub_2259CB640(v57 + 32, &qword_27D73B060);

          v60 = v21;
          v106 = 0;
          v107 = 0;
          v46 = MEMORY[0x277D84F90];
          v108 = 1158;
        }

        else
        {
          *&v124 = v21;
          v80 = v21;
          v81 = sub_225CCE954();
          v82 = v105;
          v83 = swift_dynamicCast();
          v84 = *(v81 - 8);
          (*(v84 + 56))(v82, v83 ^ 1u, 1, v81);
          LODWORD(v81) = (*(v84 + 48))(v82, 1, v81);
          sub_2259CB640(v82, &unk_27D73B050);
          if (v81)
          {
            v85 = 1158;
          }

          else
          {
            v85 = 23;
          }

          v108 = v85;
          v86 = v110;

          v46 = MEMORY[0x277D84F90];
          v48 = sub_225B2C374(MEMORY[0x277D84F90]);
          v87 = v21;
          v106 = v86;
          v107 = v112;
        }

        v47 = v21;
      }

      v88 = v109 | 0x8000000000000000;
      v89 = swift_isUniquelyReferenced_nonNull_native();
      *&v124 = v48;
      sub_225B2C4A0(v41, sub_225B2AC40, 0, v89, &v124);

      v90 = v124;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_225B29AA0(0, *(v46 + 2) + 1, 1, v46);
      }

      v92 = *(v46 + 2);
      v91 = *(v46 + 3);
      if (v92 >= v91 >> 1)
      {
        v46 = sub_225B29AA0((v91 > 1), v92 + 1, 1, v46);
      }

      *(v46 + 2) = v92 + 1;
      v93 = &v46[56 * v92];
      v94 = v110;
      *(v93 + 4) = v112;
      *(v93 + 5) = v94;
      *(v93 + 6) = 0xD00000000000001CLL;
      *(v93 + 7) = v88;
      *(v93 + 8) = 0x742865646F636E65;
      *(v93 + 9) = 0xEB00000000293A6FLL;
      *(v93 + 10) = 108;
      v95 = v107;
      *v43 = v108;
      *(v43 + 8) = v46;
      *(v43 + 16) = v95;
      *(v43 + 24) = v106;
      *(v43 + 32) = v90;
      *(v43 + 40) = v47;
      swift_willThrow();
      v79 = v21;
    }
  }

  else
  {
    v111 = v17;
    LOBYTE(v124) = *(v134 + 1);
    LOBYTE(v118) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B430);
    sub_225A5E1E4(&qword_27D73B438, &qword_27D73B430, &unk_225CD98C8, sub_225A32448);
    sub_225CCF7E4();
    v131 = *(v134 + 2);
    v130 = 2;
    sub_225CCF7E4();
    v96 = *(v134 + 56);
    v126 = *(v134 + 40);
    v127 = v96;
    v97 = *(v134 + 88);
    v128 = *(v134 + 72);
    v129 = v97;
    v98 = *(v134 + 24);
    v124 = *(v134 + 8);
    v125 = v98;
    v99 = *(v134 + 56);
    v120 = *(v134 + 40);
    v121 = v99;
    v100 = *(v134 + 88);
    v122 = *(v134 + 72);
    v123 = v100;
    v101 = *(v134 + 24);
    v118 = *(v134 + 8);
    v119 = v101;
    v117 = 3;
    sub_225A0DE54(&v124, v116, &qword_27D73B420);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B420);
    sub_225A5E1E4(&qword_27D73B440, &qword_27D73B420, &unk_225CD98C0, sub_225A5E190);
    sub_225CCF7E4();
    v116[2] = v120;
    v116[3] = v121;
    v116[4] = v122;
    v116[5] = v123;
    v116[0] = v118;
    v116[1] = v119;
    sub_2259CB640(v116, &qword_27D73B420);
    v102 = *(v134 + 112);
    v114 = *(v134 + 104);
    v115 = v102;
    v113 = 4;
    sub_2259CB6FC(v114, v102);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B0E0);
    sub_225A5E1E4(&qword_27D73B450, &unk_27D73B0E0, &unk_225CD7B60, sub_2259D9454);
    sub_225CCF7E4();
    sub_2259B97A8(v114, v115);
    (*(v111 + 8))(v20, v16);
  }
}

uint64_t HPKEEncryptedMessagePlain.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(&v124 + 1) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v125 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v126 = &v122 - v10;
  v137 = sub_225CCF2D4();
  v131 = *(v137 - 8);
  v12 = MEMORY[0x28223BE20](v137, v11);
  v130 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v129 = &v122 - v15;
  type metadata accessor for HPKEEncryptedMessagePlain.CodingKeys();
  swift_getWitnessTable();
  v16 = sub_225CCF714();
  v127 = *(v16 - 8);
  v128 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v122 - v18;
  v20 = type metadata accessor for HPKEEncryptedMessagePlain();
  *&v124 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = &v122 - v23;
  *v24 = 0;
  v25 = &v122 - v23;
  *(v25 + 8) = xmmword_225CD3100;
  v135 = v25 + 8;
  *(v24 + 56) = 0u;
  *(v24 + 72) = 0u;
  *(v24 + 88) = 0u;
  *(v24 + 24) = 0u;
  *(v24 + 40) = 0u;
  *(v24 + 13) = 0;
  *(v24 + 14) = 0xF000000000000000;
  v26 = *(v22 + 60);
  v27 = *(*(a2 - 8) + 56);
  v136 = v24;
  v132 = v26;
  v157 = a2;
  v27(&v24[v26], 1, 1, a2);
  v28 = a1[3];
  v134 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v29 = v133;
  sub_225CCFCA4();
  if (v29)
  {
    v128 = 0;
    v30 = v137;
    *&v147[0] = v29;
    v43 = v29;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    v45 = v129;
    if (swift_dynamicCast())
    {
      *(&v124 + 1) = v44;

      v47 = v130;
      v46 = v131;
      (*(v131 + 32))(v130, v45, v30);
      *&v150 = 0;
      *(&v150 + 1) = 0xE000000000000000;
      sub_225CCF204();

      *&v150 = 0xD00000000000001ALL;
      *(&v150 + 1) = 0x8000000225D19990;
      *&v141 = v157;
      swift_getMetatypeMetadata();
      v48 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v48);

      MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D19A10);
      v127 = *(&v150 + 1);
      v129 = v150;
      v49 = swift_allocError();
      (*(v46 + 16))(v50, v47, v30);
      v125 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v51 = swift_allocError();
      v53 = v52;
      swift_getErrorValue();
      v54 = v149;
      v55 = v49;
      sub_225B21FAC(v54, &v150);

      v56 = *(&v150 + 1);
      v133 = v51;
      if (*(&v150 + 1))
      {
        v126 = v150;
        v124 = v151;
        v123 = *(&v152 + 1);
        v57 = v152;
      }

      else
      {
        *&v150 = v49;
        v67 = v49;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v68 = v141;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          v69 = swift_allocObject();
          *(v69 + 16) = xmmword_225CD30F0;
          *(v69 + 32) = 20;
          v70 = [v68 code];
          v71 = MEMORY[0x277D83BF8];
          *(v69 + 64) = MEMORY[0x277D83B88];
          *(v69 + 72) = v71;
          *(v69 + 40) = v70;
          v57 = sub_225B2C374(v69);
          swift_setDeallocating();
          sub_2259CB640(v69 + 32, &qword_27D73B060);
          swift_deallocClassInstance();

          v72 = v49;
          v124 = 0uLL;
          v56 = MEMORY[0x277D84F90];
          v126 = 118;
          v123 = v49;
        }

        else
        {
          *&v150 = v49;
          v79 = v49;
          v80 = sub_225CCE954();
          v81 = v126;
          v82 = swift_dynamicCast();
          v83 = *(v80 - 8);
          (*(v83 + 56))(v81, v82 ^ 1u, 1, v80);
          LODWORD(v80) = (*(v83 + 48))(v81, 1, v80);
          sub_2259CB640(v81, &unk_27D73B050);
          if (v80)
          {
            v84 = 118;
          }

          else
          {
            v84 = 23;
          }

          v126 = v84;
          v85 = v127;

          v56 = MEMORY[0x277D84F90];
          v57 = sub_225B2C374(MEMORY[0x277D84F90]);
          v86 = v49;
          *(&v124 + 1) = v85;
          v123 = v49;
          *&v124 = v129;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v150 = v57;
      sub_225B2C4A0(v125, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v150);

      v88 = v150;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_225B29AA0(0, *(v56 + 2) + 1, 1, v56);
      }

      v90 = *(v56 + 2);
      v89 = *(v56 + 3);
      if (v90 >= v89 >> 1)
      {
        v56 = sub_225B29AA0((v89 > 1), v90 + 1, 1, v56);
      }

      *(v56 + 2) = v90 + 1;
      v91 = &v56[56 * v90];
      v92 = v127;
      *(v91 + 4) = v129;
      *(v91 + 5) = v92;
      *(v91 + 6) = 0xD00000000000001CLL;
      *(v91 + 7) = 0x8000000225D17220;
      *(v91 + 8) = 0x6F72662874696E69;
      *(v91 + 9) = 0xEB00000000293A6DLL;
      *(v91 + 10) = 123;
      *v53 = v126;
      v93 = v124;
      *(v53 + 8) = v56;
      *(v53 + 16) = v93;
      *(v53 + 32) = v88;
      *(v53 + 40) = v123;
      swift_willThrow();
      (*(v131 + 8))(v130, v137);
      v94 = *&v147[0];
    }

    else
    {

      *&v150 = 0;
      *(&v150 + 1) = 0xE000000000000000;
      sub_225CCF204();
      MEMORY[0x22AA6CE70](0xD00000000000001ALL, 0x8000000225D19990);
      *&v147[0] = v157;
      swift_getMetatypeMetadata();
      v58 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v58);

      MEMORY[0x22AA6CE70](0xD000000000000018, 0x8000000225D199F0);
      v131 = *(&v150 + 1);
      v137 = v150;
      v129 = "r decrypting encoded data: ";
      v59 = v29;
      v130 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v60 = swift_allocError();
      v62 = v61;
      swift_getErrorValue();
      v63 = v156;
      v64 = v29;
      sub_225B21FAC(v63, &v150);

      v65 = *(&v150 + 1);
      v133 = v60;
      if (*(&v150 + 1))
      {
        v126 = v151;
        v127 = v150;
        *(&v124 + 1) = *(&v152 + 1);
        v66 = v152;
        v125 = *(&v151 + 1);
      }

      else
      {
        *&v150 = v29;
        v73 = v29;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v74 = *&v147[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v76 = [v74 code];
          v77 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v77;
          *(inited + 40) = v76;
          v66 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060);

          v78 = v29;
          v125 = 0;
          v126 = 0;
          v65 = MEMORY[0x277D84F90];
          v127 = 1159;
        }

        else
        {
          *&v150 = v29;
          v95 = v29;
          v96 = sub_225CCE954();
          v97 = v125;
          v98 = swift_dynamicCast();
          v99 = *(v96 - 8);
          (*(v99 + 56))(v97, v98 ^ 1u, 1, v96);
          LODWORD(v96) = (*(v99 + 48))(v97, 1, v96);
          sub_2259CB640(v97, &unk_27D73B050);
          if (v96)
          {
            v100 = 1159;
          }

          else
          {
            v100 = 23;
          }

          v127 = v100;
          v101 = v131;

          v65 = MEMORY[0x277D84F90];
          v66 = sub_225B2C374(MEMORY[0x277D84F90]);
          v102 = v29;
          v125 = v101;
          v126 = v137;
        }

        *(&v124 + 1) = v29;
      }

      v103 = v129 | 0x8000000000000000;
      v104 = swift_isUniquelyReferenced_nonNull_native();
      *&v150 = v66;
      sub_225B2C4A0(v130, sub_225B2AC40, 0, v104, &v150);

      v105 = v150;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_225B29AA0(0, *(v65 + 2) + 1, 1, v65);
      }

      v107 = *(v65 + 2);
      v106 = *(v65 + 3);
      if (v107 >= v106 >> 1)
      {
        v65 = sub_225B29AA0((v106 > 1), v107 + 1, 1, v65);
      }

      *(v65 + 2) = v107 + 1;
      v108 = &v65[56 * v107];
      v109 = v131;
      *(v108 + 4) = v137;
      *(v108 + 5) = v109;
      *(v108 + 6) = 0xD00000000000001CLL;
      *(v108 + 7) = v103;
      *(v108 + 8) = 0x6F72662874696E69;
      *(v108 + 9) = 0xEB00000000293A6DLL;
      *(v108 + 10) = 126;
      v110 = v126;
      *v62 = v127;
      *(v62 + 8) = v65;
      *(v62 + 16) = v110;
      v111 = *(&v124 + 1);
      *(v62 + 24) = v125;
      *(v62 + 32) = v105;
      *(v62 + 40) = v111;
      swift_willThrow();
      v94 = v29;
    }

    __swift_destroy_boxed_opaque_existential_0(v134);
    v112 = v135[3];
    v152 = v135[2];
    v153 = v112;
    v113 = v135[5];
    v154 = v135[4];
    v155 = v113;
    v114 = v135[1];
    v150 = *v135;
    v151 = v114;
    sub_2259CB640(&v150, &qword_27D73B420);
    v115 = v136;
    sub_2259B97A8(*(v136 + 13), *(v136 + 14));
    v116 = sub_225CCEFC4();
    return (*(*(v116 - 8) + 8))(&v115[v132], v116);
  }

  else
  {
    v133 = v20;
    v31 = v127;
    LOBYTE(v147[0]) = 1;
    sub_225A3249C();
    v32 = v19;
    sub_225CCF674();
    v33 = v136;
    v136[1] = v150;
    LOBYTE(v147[0]) = 2;
    sub_225CCF674();
    v33[2] = v150;
    v148 = 3;
    sub_225A5E260();
    sub_225CCF6E4();
    v34 = v31;
    v143 = v152;
    v144 = v153;
    v145 = v154;
    v146 = v155;
    v141 = v150;
    v142 = v151;
    v35 = v135;
    v36 = v135[2];
    v37 = v135[4];
    v38 = v135[5];
    v147[3] = v135[3];
    v147[4] = v37;
    v147[5] = v38;
    v39 = v135[1];
    v147[0] = *v135;
    v147[1] = v39;
    v147[2] = v36;
    sub_2259CB640(v147, &qword_27D73B420);
    v40 = v144;
    v35[2] = v143;
    v35[3] = v40;
    v41 = v146;
    v35[4] = v145;
    v35[5] = v41;
    v42 = v142;
    *v35 = v141;
    v35[1] = v42;
    v138 = 4;
    sub_2259D94A8();
    sub_225CCF6E4();
    (*(v34 + 8))(v32, v128);
    v117 = v139;
    v118 = v140;
    sub_2259B97A8(*(v33 + 13), *(v33 + 14));
    *(v33 + 13) = v117;
    *(v33 + 14) = v118;
    v119 = v124;
    v120 = v133;
    (*(v124 + 16))(*(&v124 + 1), v33, v133);
    __swift_destroy_boxed_opaque_existential_0(v134);
    return (*(v119 + 8))(v33, v120);
  }
}

uint64_t HPKEEncryptedMessagePlain.open(with:authenticationContext:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X8>)
{
  v75 = a2;
  v70 = a1;
  v71 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v66 - v9;
  v11 = a3[2];
  v12 = sub_225CCEFC4();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v66 - v14;
  v17 = a3[3];
  v16 = a3[4];
  v18 = type metadata accessor for HPKEEnvelope();
  v20 = MEMORY[0x28223BE20](v18, v19);
  v23 = &v66 - v22;
  v24 = *(v4 + 8);
  v25 = *(v4 + 56);
  v74[2] = *(v4 + 40);
  v74[3] = v25;
  v26 = *(v4 + 88);
  v74[4] = *(v4 + 72);
  v74[5] = v26;
  v27 = *(v4 + 24);
  v74[0] = v24;
  v74[1] = v27;
  if (*(&v24 + 1) >> 60 == 15)
  {
    v75 = 0x8000000225D19A30;
    v70 = 0x8000000225D19A60;
    v71 = 0x8000000225D17220;
    v28 = MEMORY[0x277D84F90];
    v29 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v31 = v30;
    v32 = sub_225CCE954();
    v33 = *(v32 - 8);
    (*(v33 + 56))(v10, 1, 1, v32);
    LODWORD(v32) = (*(v33 + 48))(v10, 1, v32);
    sub_2259CB640(v10, &unk_27D73B050);
    if (v32)
    {
      v34 = 287;
    }

    else
    {
      v34 = 23;
    }

    v35 = sub_225B2C374(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v73[0] = v35;
    sub_225B2C4A0(v29, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v73);

    v37 = *&v73[0];
    v38 = sub_225B29AA0(0, 1, 1, v28);
    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    if (v40 >= v39 >> 1)
    {
      v38 = sub_225B29AA0((v39 > 1), v40 + 1, 1, v38);
    }

    *(v38 + 2) = v40 + 1;
    v41 = &v38[56 * v40];
    v42 = v75;
    *(v41 + 4) = 0xD000000000000023;
    *(v41 + 5) = v42;
    *(v41 + 6) = 0xD00000000000001CLL;
    *(v41 + 7) = v71;
    *(v41 + 8) = 0xD000000000000021;
    *(v41 + 9) = v70;
    *(v41 + 10) = 132;
    *v31 = v34;
    *(v31 + 8) = v38;
    *(v31 + 16) = 0xD000000000000023;
    *(v31 + 24) = v42;
    *(v31 + 32) = v37;
    *(v31 + 40) = 0;
    return swift_willThrow();
  }

  else
  {
    v69 = v5;
    v44 = *(v4 + 112);
    if (v44 >> 60 == 15)
    {
      v75 = 0x8000000225D17220;
      v71 = 0x8000000225D19A60;
      sub_225A0DE54(v74, v73, &qword_27D73B420);
      v45 = MEMORY[0x277D84F90];
      v46 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v48 = v47;
      v49 = sub_225CCE954();
      v50 = *(v49 - 8);
      (*(v50 + 56))(v10, 1, 1, v49);
      LODWORD(v49) = (*(v50 + 48))(v10, 1, v49);
      sub_2259CB640(v10, &unk_27D73B050);
      if (v49)
      {
        v51 = 287;
      }

      else
      {
        v51 = 23;
      }

      v52 = sub_225B2C374(v45);
      v53 = swift_isUniquelyReferenced_nonNull_native();
      *&v73[0] = v52;
      sub_225B2C4A0(v46, sub_225B2AC40, 0, v53, v73);

      v54 = *&v73[0];
      v55 = sub_225B29AA0(0, 1, 1, v45);
      v57 = *(v55 + 2);
      v56 = *(v55 + 3);
      if (v57 >= v56 >> 1)
      {
        v55 = sub_225B29AA0((v56 > 1), v57 + 1, 1, v55);
      }

      *(v55 + 2) = v57 + 1;
      v58 = &v55[56 * v57];
      *(v58 + 4) = 0xD000000000000021;
      *(v58 + 5) = 0x8000000225D19A90;
      v59 = v75;
      *(v58 + 6) = 0xD00000000000001CLL;
      *(v58 + 7) = v59;
      v60 = v71;
      *(v58 + 8) = 0xD000000000000021;
      *(v58 + 9) = v60;
      *(v58 + 10) = 135;
      *v48 = v51;
      *(v48 + 8) = v55;
      *(v48 + 16) = 0xD000000000000021;
      *(v48 + 24) = 0x8000000225D19A90;
      *(v48 + 32) = v54;
      *(v48 + 40) = 0;
      swift_willThrow();
      return sub_2259CB640(v74, &qword_27D73B420);
    }

    else
    {
      v67 = v21;
      v68 = v20;
      v61 = *(v4 + 104);
      v73[0] = __PAIR128__(*(&v24 + 1), *&v74[0]);
      v62 = *(v4 + 40);
      v63 = *(v4 + 72);
      v73[3] = *(v4 + 56);
      v73[4] = v63;
      v73[5] = *(v4 + 88);
      v73[1] = *(v4 + 24);
      v73[2] = v62;
      (*(*(v11 - 8) + 56))(v15, 1, 1, v11);
      sub_225A0DE54(v74, v72, &qword_27D73B420);
      sub_2259CB6FC(v61, v44);
      sub_225A0DE54(v74, v72, &qword_27D73B420);
      sub_2259CB6FC(v61, v44);
      v66 = v61;
      HPKEEnvelope.init(params:data:unencryptedData:)(v73, v61, v44, v15, v11, v23);
      v64 = v70[3];
      v65 = v70[4];
      __swift_project_boxed_opaque_existential_1(v70, v64);
      sub_225A6419C(v23, v75, v64, v11, v65, v17, v16);
      (*(v67 + 8))(v23, v68);
      sub_2259CB640(v74, &qword_27D73B420);
      return sub_2259B97A8(v66, v44);
    }
  }
}

uint64_t sub_225A4DBAC()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_225A4DBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A4DC70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225A4DCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A4DD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A4DDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_225A4DBF8(a1, a2, a3[2], a3[3], a3[4]);
  *a4 = result;
  return result;
}

uint64_t sub_225A4DE30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225A5E2F4();
  *a1 = result;
  return result;
}

uint64_t sub_225A4DE64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_225A4DEB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t HPKEEncryptedMessageWithKeyWrap.init(sender:recipient:messages:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  *a5 = 1;
  sub_225A5E2B4(&v16);
  *(a5 + 1) = v8;
  *(a5 + 2) = v9;
  v24[4] = v20;
  v24[5] = v21;
  v24[6] = v22;
  v24[7] = v23;
  v24[0] = v16;
  v24[1] = v17;
  v24[2] = v18;
  v24[3] = v19;
  sub_2259CB640(v24, &qword_27D73B460);
  v10 = v21;
  *(a5 + 72) = v20;
  *(a5 + 88) = v10;
  v11 = v23;
  *(a5 + 104) = v22;
  *(a5 + 120) = v11;
  v12 = v17;
  *(a5 + 8) = v16;
  *(a5 + 24) = v12;
  v13 = v19;
  *(a5 + 40) = v18;
  *(a5 + 56) = v13;
  v14 = type metadata accessor for HPKEEncryptedMessageWithKeyWrap();
  result = (*(*(a4 - 8) + 32))(a5 + *(v14 + 60), a3, a4);
  *(a5 + 136) = MEMORY[0x277D84F98];
  return result;
}

Swift::Void __swiftcall HPKEEncryptedMessageWithKeyWrap.addMessageEncryptionKey(keyID:key:)(Swift::String keyID, CoreIDVShared::AEADKey key)
{
  object = keyID._object;
  countAndFlagsBits = keyID._countAndFlagsBits;
  v5 = *key.secretKey._countAndFlagsBits;
  v4 = *(key.secretKey._countAndFlagsBits + 8);
  v7 = *(key.secretKey._countAndFlagsBits + 16);
  v6 = *(key.secretKey._countAndFlagsBits + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B468);
  inited = swift_initStackObject();
  *(inited + 32) = countAndFlagsBits;
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 40) = object;
  *(inited + 48) = v5;
  *(inited + 56) = v4;
  *(inited + 64) = v7;
  *(inited + 72) = v6;

  v9 = sub_225B2D458(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73B470);
  HPKEEncryptedMessageWithKeyWrap.addMessageEncryptionKeys(keys:)(v9);
}

Swift::Void __swiftcall HPKEEncryptedMessageWithKeyWrap.addMessageEncryptionKeys(keys:)(Swift::OpaquePointer keys)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 136);
  sub_225A5E2FC(keys._rawValue, sub_225A5E09C, 0, isUniquelyReferenced_nonNull_native, &v4);

  *(v1 + 136) = v4;
}

double HPKEEncryptedMessageWithKeyWrap.sealKeys(to:encryptor:)(uint64_t a1, void *a2, uint64_t a3)
{
  v43 = a3;
  v4 = v3;
  v46 = a1;
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v4 + 136);
  v42 = *(v45 + 16);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v11 = off_28105B918;
  v12 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v13 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v13));
  (*(v7 + 16))(v10, &v11[v12], v6);
  os_unfair_lock_unlock(&v11[v13]);
  v14 = sub_225CCD934();
  v15 = sub_225CCED04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v41 = v10;
    v40 = v15;
    v17 = v16;
    v39 = swift_slowAlloc();
    *&v56[0] = v39;
    *v17 = 136315394;
    *&v55[0] = *(v43 + 16);
    swift_getMetatypeMetadata();
    v18 = sub_225CCE504();
    v20 = sub_2259BE198(v18, v19, v56);
    v43 = v6;
    v21 = v4;
    v22 = v20;

    *(v17 + 4) = v22;
    v4 = v21;
    *(v17 + 12) = 2048;
    *(v17 + 14) = v42;
    _os_log_impl(&dword_2259A7000, v14, v40, "sealing keys: message type = %s, # of keys: %ld", v17, 0x16u);
    v23 = v39;
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x22AA6F950](v23, -1, -1);
    MEMORY[0x22AA6F950](v17, -1, -1);

    (*(v7 + 8))(v41, v43);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v25 = a2[3];
  v24 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v25);
  v57 = v45;

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B478);
  v27 = sub_225A5E634(&qword_27D73B480, sub_225A5E5E0);
  v28 = sub_225A5E634(&qword_27D73B490, sub_225A5E6B8);
  v29 = v44;
  sub_225A640BC(&v57, v46, v25, v26, v24, v27, v28);

  if (!v29)
  {
    v51 = v56[4];
    v52 = v56[5];
    v53 = v56[6];
    v54 = v56[7];
    v47 = v56[0];
    v48 = v56[1];
    v49 = v56[2];
    v50 = v56[3];
    nullsub_1(&v47);
    v31 = *(v4 + 88);
    v55[4] = *(v4 + 72);
    v55[5] = v31;
    v32 = *(v4 + 120);
    v55[6] = *(v4 + 104);
    v55[7] = v32;
    v33 = *(v4 + 24);
    v55[0] = *(v4 + 8);
    v55[1] = v33;
    v34 = *(v4 + 56);
    v55[2] = *(v4 + 40);
    v55[3] = v34;
    sub_2259CB640(v55, &qword_27D73B460);
    v35 = v52;
    *(v4 + 72) = v51;
    *(v4 + 88) = v35;
    v36 = v54;
    *(v4 + 104) = v53;
    *(v4 + 120) = v36;
    v37 = v48;
    *(v4 + 8) = v47;
    *(v4 + 24) = v37;
    result = *&v49;
    v38 = v50;
    *(v4 + 40) = v49;
    *(v4 + 56) = v38;
  }

  return result;
}

{
  v48 = a1;
  v4 = v3;
  v46 = a3;
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v4 + 136);
  v45 = *(v47 + 16);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v11 = off_28105B918;
  v12 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v13 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v13));
  (*(v7 + 16))(v10, &v11[v12], v6);
  os_unfair_lock_unlock(&v11[v13]);
  v14 = sub_225CCD934();
  v15 = sub_225CCED04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v43 = v10;
    v17 = v15;
    v18 = v16;
    v19 = swift_slowAlloc();
    v44 = v4;
    v20 = v19;
    *&v59[0] = v19;
    *v18 = 136315394;
    *&v58[0] = *(v46 + 16);
    swift_getMetatypeMetadata();
    v21 = sub_225CCE504();
    v23 = sub_2259BE198(v21, v22, v59);
    v46 = v6;
    v24 = a2;
    v25 = v23;

    *(v18 + 4) = v25;
    a2 = v24;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v45;
    _os_log_impl(&dword_2259A7000, v14, v17, "sealing keys: message type = %s, # of keys: %ld", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v26 = v20;
    v4 = v44;
    MEMORY[0x22AA6F950](v26, -1, -1);
    MEMORY[0x22AA6F950](v18, -1, -1);

    (*(v7 + 8))(v43, v46);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v27 = a2[3];
  v28 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v27);
  v60 = v47;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B478);
  v30 = sub_225A5E634(&qword_27D73B480, sub_225A5E5E0);
  v31 = sub_225A5E634(&qword_27D73B490, sub_225A5E6B8);
  v32 = v49;
  sub_225A6427C(&v60, v48, v27, v29, v28, v30, v31);
  if (!v32)
  {
    v54 = v59[4];
    v55 = v59[5];
    v56 = v59[6];
    v57 = v59[7];
    v50 = v59[0];
    v51 = v59[1];
    v52 = v59[2];
    v53 = v59[3];
    nullsub_1(&v50);
    v34 = *(v4 + 88);
    v58[4] = *(v4 + 72);
    v58[5] = v34;
    v35 = *(v4 + 120);
    v58[6] = *(v4 + 104);
    v58[7] = v35;
    v36 = *(v4 + 24);
    v58[0] = *(v4 + 8);
    v58[1] = v36;
    v37 = *(v4 + 56);
    v58[2] = *(v4 + 40);
    v58[3] = v37;
    sub_2259CB640(v58, &qword_27D73B460);
    v38 = v55;
    *(v4 + 72) = v54;
    *(v4 + 88) = v38;
    v39 = v57;
    *(v4 + 104) = v56;
    *(v4 + 120) = v39;
    v40 = v51;
    *(v4 + 8) = v50;
    *(v4 + 24) = v40;
    result = *&v52;
    v41 = v53;
    *(v4 + 40) = v52;
    *(v4 + 56) = v41;
  }

  return result;
}

void HPKEEncryptedMessageWithKeyWrap.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  *&v105 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  *(&v105 + 1) = &v103 - v9;
  v136 = sub_225CCF324();
  v109 = *(v136 - 8);
  v11 = MEMORY[0x28223BE20](v136, v10);
  v108 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v106 = a2;
  v107 = &v103 - v14;
  v15 = *(a2 + 32);
  v111 = *(a2 + 16);
  v104 = v15;
  type metadata accessor for HPKEEncryptedMessageWithKeyWrap.CodingKeys();
  swift_getWitnessTable();
  v16 = sub_225CCF7F4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v103 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = v112;
  sub_225CCFCE4();
  LOBYTE(v124) = *v21;
  LOBYTE(v116) = 0;
  sub_225A5E13C();
  v22 = v110;
  sub_225CCF7E4();
  if (v22)
  {
    v17[1](v20, v16);
    v112 = 0;
    *&v116 = v22;
    v23 = v22;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    v25 = v107;
    v26 = v136;
    if (swift_dynamicCast())
    {
      v106 = v24;

      v28 = v108;
      v27 = v109;
      (*(v109 + 32))(v108, v25, v26);
      *&v124 = 0;
      *(&v124 + 1) = 0xE000000000000000;
      sub_225CCF204();

      *&v124 = 0xD000000000000015;
      *(&v124 + 1) = 0x8000000225D19AC0;
      *&v114[0] = v111;
      swift_getMetatypeMetadata();
      v29 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v29);

      MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D199D0);
      v107 = *(&v124 + 1);
      v110 = v124;
      v30 = swift_allocError();
      (*(v27 + 16))(v31, v28, v26);
      v32 = "r decrypting encoded data: ";
      v33 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v111 = swift_allocError();
      v35 = v34;
      swift_getErrorValue();
      v36 = v134;
      v37 = v30;
      sub_225B21FAC(v36, &v124);

      v38 = *(&v124 + 1);
      if (*(&v124 + 1))
      {
        v106 = v124;
        v104 = *(&v126 + 1);
        v39 = v126;
        v105 = v125;
      }

      else
      {
        *&v124 = v30;
        v50 = v30;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v51 = *&v114[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          v103 = "r decrypting encoded data: ";
          *(inited + 32) = 20;
          v53 = [v51 code];
          v54 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v54;
          *(inited + 40) = v53;
          v39 = sub_225B2C374(inited);
          swift_setDeallocating();
          v32 = v103;
          sub_2259CB640(inited + 32, &qword_27D73B060);

          v55 = v30;
          v105 = 0uLL;
          v38 = MEMORY[0x277D84F90];
          v106 = 119;
          v104 = v30;
        }

        else
        {
          *&v124 = v30;
          v62 = v30;
          v63 = sub_225CCE954();
          v64 = *(&v105 + 1);
          v65 = swift_dynamicCast();
          v66 = *(v63 - 8);
          (*(v66 + 56))(v64, v65 ^ 1u, 1, v63);
          LODWORD(v63) = (*(v66 + 48))(v64, 1, v63);
          sub_2259CB640(v64, &unk_27D73B050);
          if (v63)
          {
            v67 = 119;
          }

          else
          {
            v67 = 23;
          }

          v106 = v67;
          v68 = v107;

          v38 = MEMORY[0x277D84F90];
          v39 = sub_225B2C374(MEMORY[0x277D84F90]);
          v69 = v30;
          *(&v105 + 1) = v68;
          v104 = v30;
          *&v105 = v110;
        }
      }

      v70 = v32 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v124 = v39;
      sub_225B2C4A0(v33, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v124);

      v72 = v124;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_225B29AA0(0, *(v38 + 2) + 1, 1, v38);
      }

      v74 = *(v38 + 2);
      v73 = *(v38 + 3);
      if (v74 >= v73 >> 1)
      {
        v38 = sub_225B29AA0((v73 > 1), v74 + 1, 1, v38);
      }

      *(v38 + 2) = v74 + 1;
      v75 = &v38[56 * v74];
      v76 = v107;
      *(v75 + 4) = v110;
      *(v75 + 5) = v76;
      *(v75 + 6) = 0xD00000000000001CLL;
      *(v75 + 7) = v70;
      *(v75 + 8) = 0x742865646F636E65;
      *(v75 + 9) = 0xEB00000000293A6FLL;
      *(v75 + 10) = 214;
      *v35 = v106;
      v77 = v105;
      *(v35 + 8) = v38;
      *(v35 + 16) = v77;
      *(v35 + 32) = v72;
      *(v35 + 40) = v104;
      swift_willThrow();
      (*(v109 + 8))(v108, v136);
      v78 = v116;
    }

    else
    {

      *&v124 = 0;
      *(&v124 + 1) = 0xE000000000000000;
      sub_225CCF204();

      *&v124 = 0xD000000000000015;
      *(&v124 + 1) = 0x8000000225D19AC0;
      *&v116 = v111;
      swift_getMetatypeMetadata();
      v40 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v40);

      MEMORY[0x22AA6CE70](0xD000000000000018, 0x8000000225D199B0);
      v136 = v124;
      v109 = "r decrypting encoded data: ";
      v110 = *(&v124 + 1);
      v41 = v22;
      v42 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v111 = swift_allocError();
      v44 = v43;
      swift_getErrorValue();
      v45 = v135;
      v46 = v22;
      sub_225B21FAC(v45, &v124);

      v47 = *(&v124 + 1);
      if (*(&v124 + 1))
      {
        v107 = v125;
        v108 = v124;
        v106 = *(&v125 + 1);
        v48 = *(&v126 + 1);
        v49 = v126;
      }

      else
      {
        *&v124 = v22;
        v56 = v22;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v57 = v116;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          v58 = swift_initStackObject();
          *(v58 + 16) = xmmword_225CD30F0;
          *(v58 + 32) = 20;
          v59 = [v57 code];
          v60 = MEMORY[0x277D83BF8];
          *(v58 + 64) = MEMORY[0x277D83B88];
          *(v58 + 72) = v60;
          *(v58 + 40) = v59;
          v49 = sub_225B2C374(v58);
          swift_setDeallocating();
          sub_2259CB640(v58 + 32, &qword_27D73B060);

          v61 = v22;
          v106 = 0;
          v107 = 0;
          v47 = MEMORY[0x277D84F90];
          v108 = 1158;
        }

        else
        {
          *&v124 = v22;
          v79 = v22;
          v80 = sub_225CCE954();
          v81 = v105;
          v82 = swift_dynamicCast();
          v83 = *(v80 - 8);
          (*(v83 + 56))(v81, v82 ^ 1u, 1, v80);
          LODWORD(v80) = (*(v83 + 48))(v81, 1, v80);
          sub_2259CB640(v81, &unk_27D73B050);
          if (v80)
          {
            v84 = 1158;
          }

          else
          {
            v84 = 23;
          }

          v108 = v84;
          v85 = v110;

          v47 = MEMORY[0x277D84F90];
          v49 = sub_225B2C374(MEMORY[0x277D84F90]);
          v86 = v22;
          v106 = v85;
          v107 = v136;
        }

        v48 = v22;
      }

      v87 = v109 | 0x8000000000000000;
      v88 = swift_isUniquelyReferenced_nonNull_native();
      *&v124 = v49;
      sub_225B2C4A0(v42, sub_225B2AC40, 0, v88, &v124);

      v89 = v124;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_225B29AA0(0, *(v47 + 2) + 1, 1, v47);
      }

      v91 = *(v47 + 2);
      v90 = *(v47 + 3);
      if (v91 >= v90 >> 1)
      {
        v47 = sub_225B29AA0((v90 > 1), v91 + 1, 1, v47);
      }

      *(v47 + 2) = v91 + 1;
      v92 = &v47[56 * v91];
      v93 = v110;
      *(v92 + 4) = v136;
      *(v92 + 5) = v93;
      *(v92 + 6) = 0xD00000000000001CLL;
      *(v92 + 7) = v87;
      *(v92 + 8) = 0x742865646F636E65;
      *(v92 + 9) = 0xEB00000000293A6FLL;
      *(v92 + 10) = 217;
      v94 = v107;
      *v44 = v108;
      *(v44 + 8) = v47;
      *(v44 + 16) = v94;
      *(v44 + 24) = v106;
      *(v44 + 32) = v89;
      *(v44 + 40) = v48;
      swift_willThrow();
      v78 = v22;
    }
  }

  else
  {
    v110 = v17;
    LOBYTE(v124) = *(v21 + 1);
    LOBYTE(v116) = 1;
    sub_225A32448();
    sub_225CCF7E4();
    v133 = *(v21 + 2);
    v132 = 2;
    sub_225CCF7E4();
    v95 = *(v21 + 88);
    v128 = *(v21 + 72);
    v129 = v95;
    v96 = *(v21 + 120);
    v130 = *(v21 + 104);
    v131 = v96;
    v97 = *(v21 + 24);
    v124 = *(v21 + 8);
    v125 = v97;
    v98 = *(v21 + 56);
    v126 = *(v21 + 40);
    v127 = v98;
    v99 = *(v21 + 88);
    v120 = *(v21 + 72);
    v121 = v99;
    v100 = *(v21 + 120);
    v122 = *(v21 + 104);
    v123 = v100;
    v101 = *(v21 + 24);
    v116 = *(v21 + 8);
    v117 = v101;
    v102 = *(v21 + 56);
    v118 = *(v21 + 40);
    v119 = v102;
    v115 = 4;
    sub_225A0DE54(&v124, v114, &qword_27D73B460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B4A0);
    sub_2259D8B24(&qword_27D73B4A8, &qword_27D73B4A0);
    sub_225CCF774();
    v114[4] = v120;
    v114[5] = v121;
    v114[6] = v122;
    v114[7] = v123;
    v114[0] = v116;
    v114[1] = v117;
    v114[2] = v118;
    v114[3] = v119;
    sub_2259CB640(v114, &qword_27D73B460);
    v113 = 5;
    sub_225CCF7E4();
    v110[1](v20, v16);
  }
}

uint64_t HPKEEncryptedMessageWithKeyWrap.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v126 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  *&v129 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  *(&v129 + 1) = &v123 - v12;
  v161 = sub_225CCF2D4();
  v135 = *(v161 - 8);
  v14 = MEMORY[0x28223BE20](v161, v13);
  v134 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v133 = &v123 - v18;
  v125 = *(a2 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v128 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HPKEEncryptedMessageWithKeyWrap.CodingKeys();
  swift_getWitnessTable();
  v21 = sub_225CCF714();
  v130 = *(v21 - 8);
  v131 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v123 - v23;
  v138 = a2;
  v127 = a3;
  v25 = type metadata accessor for HPKEEncryptedMessageWithKeyWrap();
  v124 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v123 - v27;
  *(&v123 - v27) = 1;
  sub_225A5E2B4(v160);
  v29 = v160[5];
  *(v28 + 72) = v160[4];
  *(v28 + 88) = v29;
  v30 = v160[7];
  *(v28 + 104) = v160[6];
  *(v28 + 120) = v30;
  v31 = v160[1];
  *(v28 + 8) = v160[0];
  *(v28 + 24) = v31;
  v32 = v160[3];
  *(v28 + 40) = v160[2];
  v33 = v28;
  *(v28 + 56) = v32;
  v34 = a1[3];
  v137 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  v132 = v24;
  v35 = v136;
  sub_225CCFCA4();
  if (v35)
  {
    v136 = 0;
    v36 = v161;
    *&v148[0] = v35;
    v47 = v35;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    v49 = v133;
    if (swift_dynamicCast())
    {
      v130 = v48;

      v50 = v134;
      v51 = v135;
      (*(v135 + 32))(v134, v49, v36);
      *&v151 = 0;
      *(&v151 + 1) = 0xE000000000000000;
      sub_225CCF204();

      *&v151 = 0xD000000000000015;
      *(&v151 + 1) = 0x8000000225D19AC0;
      *&v140 = v138;
      swift_getMetatypeMetadata();
      v52 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v52);

      MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D19A10);
      v132 = *(&v151 + 1);
      v133 = v151;
      v53 = swift_allocError();
      (*(v51 + 16))(v54, v50, v36);
      v131 = "r decrypting encoded data: ";
      v55 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v138 = swift_allocError();
      v57 = v56;
      swift_getErrorValue();
      v58 = v150;
      v59 = v53;
      sub_225B21FAC(v58, &v151);

      v60 = *(&v151 + 1);
      if (*(&v151 + 1))
      {
        v130 = v151;
        v128 = *(&v153 + 1);
        v61 = v153;
        v129 = v152;
      }

      else
      {
        *&v151 = v53;
        v71 = v53;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v72 = v140;
          v130 = v140;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          v73 = swift_allocObject();
          *(v73 + 16) = xmmword_225CD30F0;
          *(v73 + 32) = 20;
          v74 = [v72 code];
          v75 = MEMORY[0x277D83BF8];
          *(v73 + 64) = MEMORY[0x277D83B88];
          *(v73 + 72) = v75;
          *(v73 + 40) = v74;
          v61 = sub_225B2C374(v73);
          swift_setDeallocating();
          sub_2259CB640(v73 + 32, &qword_27D73B060);
          swift_deallocClassInstance();

          v76 = v53;
          v129 = 0uLL;
          v60 = MEMORY[0x277D84F90];
          v130 = 118;
          v128 = v53;
        }

        else
        {
          *&v151 = v53;
          v83 = v53;
          v84 = sub_225CCE954();
          v85 = *(&v129 + 1);
          v86 = swift_dynamicCast();
          v87 = *(v84 - 8);
          (*(v87 + 56))(v85, v86 ^ 1u, 1, v84);
          LODWORD(v84) = (*(v87 + 48))(v85, 1, v84);
          sub_2259CB640(v85, &unk_27D73B050);
          if (v84)
          {
            v88 = 118;
          }

          else
          {
            v88 = 23;
          }

          v130 = v88;
          v89 = v132;

          v60 = MEMORY[0x277D84F90];
          v61 = sub_225B2C374(MEMORY[0x277D84F90]);
          v90 = v53;
          *(&v129 + 1) = v89;
          v128 = v53;
          *&v129 = v133;
        }
      }

      v91 = v131 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v151 = v61;
      sub_225B2C4A0(v55, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v151);

      v93 = v151;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_225B29AA0(0, *(v60 + 2) + 1, 1, v60);
      }

      v95 = *(v60 + 2);
      v94 = *(v60 + 3);
      if (v95 >= v94 >> 1)
      {
        v60 = sub_225B29AA0((v94 > 1), v95 + 1, 1, v60);
      }

      *(v60 + 2) = v95 + 1;
      v96 = &v60[56 * v95];
      v97 = v132;
      *(v96 + 4) = v133;
      *(v96 + 5) = v97;
      *(v96 + 6) = 0xD00000000000001CLL;
      *(v96 + 7) = v91;
      *(v96 + 8) = 0x6F72662874696E69;
      *(v96 + 9) = 0xEB00000000293A6DLL;
      *(v96 + 10) = 233;
      *v57 = v130;
      v98 = v129;
      *(v57 + 8) = v60;
      *(v57 + 16) = v98;
      *(v57 + 32) = v93;
      *(v57 + 40) = v128;
      swift_willThrow();
      (*(v135 + 8))(v134, v161);
    }

    else
    {

      *&v151 = 0;
      *(&v151 + 1) = 0xE000000000000000;
      sub_225CCF204();

      *&v151 = 0xD000000000000015;
      *(&v151 + 1) = 0x8000000225D19AC0;
      *&v148[0] = v138;
      swift_getMetatypeMetadata();
      v62 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v62);

      MEMORY[0x22AA6CE70](0xD000000000000018, 0x8000000225D199F0);
      v161 = v151;
      v134 = "r decrypting encoded data: ";
      v135 = *(&v151 + 1);
      v63 = v35;
      v64 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v138 = swift_allocError();
      v66 = v65;
      swift_getErrorValue();
      v67 = v159;
      v68 = v35;
      sub_225B21FAC(v67, &v151);

      v69 = *(&v151 + 1);
      if (*(&v151 + 1))
      {
        v132 = v152;
        v133 = v151;
        v130 = *(&v153 + 1);
        v70 = v153;
        v131 = *(&v152 + 1);
      }

      else
      {
        *&v151 = v35;
        v77 = v35;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v78 = *&v148[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          v79 = swift_allocObject();
          *(v79 + 16) = xmmword_225CD30F0;
          *(v79 + 32) = 20;
          v80 = [v78 code];
          v81 = MEMORY[0x277D83BF8];
          *(v79 + 64) = MEMORY[0x277D83B88];
          *(v79 + 72) = v81;
          *(v79 + 40) = v80;
          v70 = sub_225B2C374(v79);
          swift_setDeallocating();
          sub_2259CB640(v79 + 32, &qword_27D73B060);
          swift_deallocClassInstance();

          v82 = v35;
          v131 = 0;
          v132 = 0;
          v69 = MEMORY[0x277D84F90];
          v133 = 1159;
        }

        else
        {
          *&v151 = v35;
          v99 = v35;
          v100 = sub_225CCE954();
          v101 = v129;
          v102 = swift_dynamicCast();
          v103 = *(v100 - 8);
          (*(v103 + 56))(v101, v102 ^ 1u, 1, v100);
          LODWORD(v100) = (*(v103 + 48))(v101, 1, v100);
          sub_2259CB640(v101, &unk_27D73B050);
          if (v100)
          {
            v104 = 1159;
          }

          else
          {
            v104 = 23;
          }

          v133 = v104;
          v105 = v135;

          v69 = MEMORY[0x277D84F90];
          v70 = sub_225B2C374(MEMORY[0x277D84F90]);
          v106 = v35;
          v131 = v105;
          v132 = v161;
        }

        v130 = v35;
      }

      v107 = v134 | 0x8000000000000000;
      v108 = swift_isUniquelyReferenced_nonNull_native();
      *&v151 = v70;
      sub_225B2C4A0(v64, sub_225B2AC40, 0, v108, &v151);

      v109 = v151;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_225B29AA0(0, *(v69 + 2) + 1, 1, v69);
      }

      v111 = *(v69 + 2);
      v110 = *(v69 + 3);
      if (v111 >= v110 >> 1)
      {
        v69 = sub_225B29AA0((v110 > 1), v111 + 1, 1, v69);
      }

      *(v69 + 2) = v111 + 1;
      v112 = &v69[56 * v111];
      v113 = v135;
      *(v112 + 4) = v161;
      *(v112 + 5) = v113;
      *(v112 + 6) = 0xD00000000000001CLL;
      *(v112 + 7) = v107;
      *(v112 + 8) = 0x6F72662874696E69;
      *(v112 + 9) = 0xEB00000000293A6DLL;
      *(v112 + 10) = 236;
      v114 = v132;
      *v66 = v133;
      *(v66 + 8) = v69;
      *(v66 + 16) = v114;
      v115 = v130;
      *(v66 + 24) = v131;
      *(v66 + 32) = v109;
      *(v66 + 40) = v115;
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_0(v137);
    v116 = *(v33 + 88);
    v155 = *(v33 + 72);
    v156 = v116;
    v117 = *(v33 + 120);
    v157 = *(v33 + 104);
    v158 = v117;
    v118 = *(v33 + 24);
    v151 = *(v33 + 8);
    v152 = v118;
    v119 = *(v33 + 56);
    v153 = *(v33 + 40);
    v154 = v119;
    return sub_2259CB640(&v151, &qword_27D73B460);
  }

  else
  {
    v136 = v25;
    v37 = v130;
    LOBYTE(v148[0]) = 1;
    sub_225A3249C();
    sub_225CCF6E4();
    v28[1] = v151;
    LOBYTE(v148[0]) = 2;
    sub_225CCF6E4();
    v28[2] = v151;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B4A0);
    v149 = 4;
    sub_2259D8B24(&qword_27D73B4B0, &qword_27D73B4A0);
    sub_225CCF6E4();
    v144 = v155;
    v145 = v156;
    v146 = v157;
    v147 = v158;
    v140 = v151;
    v141 = v152;
    v142 = v153;
    v143 = v154;
    nullsub_1(&v140);
    v38 = *(v28 + 88);
    v148[4] = *(v28 + 72);
    v148[5] = v38;
    v39 = *(v28 + 120);
    v148[6] = *(v28 + 104);
    v148[7] = v39;
    v40 = *(v28 + 24);
    v148[0] = *(v28 + 8);
    v148[1] = v40;
    v41 = *(v28 + 56);
    v148[2] = *(v28 + 40);
    v148[3] = v41;
    sub_2259CB640(v148, &qword_27D73B460);
    v42 = v145;
    *(v28 + 72) = v144;
    *(v28 + 88) = v42;
    v43 = v147;
    *(v28 + 104) = v146;
    *(v28 + 120) = v43;
    v44 = v141;
    *(v28 + 8) = v140;
    *(v28 + 24) = v44;
    v45 = v143;
    *(v28 + 40) = v142;
    *(v28 + 56) = v45;
    v139 = 5;
    v46 = v138;
    sub_225CCF6E4();
    (*(v37 + 8))(v132, v131);
    v120 = v136;
    (*(v125 + 32))(&v33[v136[15]], v128, v46);
    *(v33 + 17) = MEMORY[0x277D84F98];
    v121 = v124;
    (*(v124 + 16))(v126, v33, v120);
    __swift_destroy_boxed_opaque_existential_0(v137);
    return (*(v121 + 8))(v33, v120);
  }
}

uint64_t HPKEEncryptedMessageWithKeyWrap.getKeys()@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 88);
  v14 = *(v1 + 72);
  v2 = v14;
  v15 = v3;
  v5 = *(v1 + 120);
  v16 = *(v1 + 104);
  v4 = v16;
  v17 = v5;
  v6 = *(v1 + 24);
  v11[0] = *(v1 + 8);
  v11[1] = v6;
  v8 = *(v1 + 56);
  v12 = *(v1 + 40);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_225A0DE54(v11, &v10, &qword_27D73B460);
}

CoreIDVShared::HPKEEncryptionParamsAlgorithmIdentifier_optional __swiftcall HPKEEncryptionParamsAlgorithmIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t HPKEEncryptionParamsAlgorithmIdentifier.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x50482D454C505041;
  }
}

uint64_t sub_225A50B84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x50482D454C505041;
  }

  if (v2)
  {
    v4 = 0xED000031762D454BLL;
  }

  else
  {
    v4 = 0x8000000225D0AAE0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x50482D454C505041;
  }

  if (*a2)
  {
    v6 = 0x8000000225D0AAE0;
  }

  else
  {
    v6 = 0xED000031762D454BLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225A50C3C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A50CD0()
{
  sub_225CCE5B4();
}

uint64_t sub_225A50D50()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A50DE0@<X0>(char *a1@<X8>)
{
  v2 = sub_225CCF5D4();

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

void sub_225A50E40(unint64_t *a1@<X8>)
{
  v2 = 0x8000000225D0AAE0;
  v3 = 0x50482D454C505041;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xED000031762D454BLL;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_225A50F4C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();
  return sub_225CCFC24();
}

uint64_t sub_225A50FC0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();
  return sub_225CCFC24();
}

uint64_t sub_225A51014@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_225CCF5D4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_225A510A4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_225CCF5D4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_225A510FC(uint64_t a1)
{
  v2 = sub_225A5E724();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A51138(uint64_t a1)
{
  v2 = sub_225A5E724();

  return MEMORY[0x2821FE720](a1, v2);
}

void HPKEEncryptedMessageAlgorithm.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v89 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v90 = &v86 - v8;
  v9 = sub_225CCF324();
  v93 = *(v9 - 8);
  v94 = v9;
  v11 = MEMORY[0x28223BE20](v9, v10);
  v92 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v91 = &v86 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B4B8);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v86 - v18;
  v20 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A5E724();
  sub_225CCFCE4();
  LOBYTE(v98) = v20;
  sub_225A5E13C();
  v21 = v95;
  sub_225CCF7E4();
  if (v21)
  {
    (*(v16 + 8))(v19, v15);
    v105 = v21;
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    v23 = v91;
    v24 = v94;
    if (swift_dynamicCast())
    {

      v26 = v92;
      v25 = v93;
      (*(v93 + 32))(v92, v23, v24);
      v27 = swift_allocError();
      (*(v25 + 16))(v28, v26, v24);
      v89 = "r decrypting encoded data: ";
      v91 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v30 = v29;
      swift_getErrorValue();
      v31 = v97;
      v32 = v27;
      sub_225B21FAC(v31, &v98);

      v33 = v99;
      v95 = 0x8000000225D19B20;
      if (v99)
      {
        v90 = v98;
        v87 = v101;
        v88 = v100;
        v34 = v102;
        v86 = v103;
      }

      else
      {
        v98 = v27;
        v43 = v27;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v44 = v96;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v46 = [v44 code];
          v47 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v47;
          *(inited + 40) = v46;
          v34 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060);

          v48 = v27;
          v87 = 0;
          v88 = 0;
          v33 = MEMORY[0x277D84F90];
          v90 = 119;
        }

        else
        {
          v98 = v27;
          v55 = v27;
          v56 = sub_225CCE954();
          v57 = v90;
          v58 = swift_dynamicCast();
          v59 = *(v56 - 8);
          (*(v59 + 56))(v57, v58 ^ 1u, 1, v56);
          LODWORD(v56) = (*(v59 + 48))(v57, 1, v56);
          sub_2259CB640(v57, &unk_27D73B050);
          if (v56)
          {
            v60 = 119;
          }

          else
          {
            v60 = 23;
          }

          v90 = v60;
          v33 = MEMORY[0x277D84F90];
          v34 = sub_225B2C374(MEMORY[0x277D84F90]);
          v61 = v27;
          v87 = 0x8000000225D19B20;
          v88 = 0xD00000000000002CLL;
        }

        v86 = v27;
      }

      v62 = v89 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v34;
      sub_225B2C4A0(v91, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v98);

      v64 = v98;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_225B29AA0(0, *(v33 + 2) + 1, 1, v33);
      }

      v66 = *(v33 + 2);
      v65 = *(v33 + 3);
      if (v66 >= v65 >> 1)
      {
        v33 = sub_225B29AA0((v65 > 1), v66 + 1, 1, v33);
      }

      *(v33 + 2) = v66 + 1;
      v67 = &v33[56 * v66];
      v68 = v95;
      *(v67 + 4) = 0xD00000000000002CLL;
      *(v67 + 5) = v68;
      *(v67 + 6) = 0xD00000000000001CLL;
      *(v67 + 7) = v62;
      *(v67 + 8) = 0x742865646F636E65;
      *(v67 + 9) = 0xEB00000000293A6FLL;
      *(v67 + 10) = 276;
      *v30 = v90;
      v69 = v87;
      v70 = v88;
      *(v30 + 8) = v33;
      *(v30 + 16) = v70;
      *(v30 + 24) = v69;
      *(v30 + 32) = v64;
      *(v30 + 40) = v86;
      swift_willThrow();
      (*(v93 + 8))(v92, v94);
    }

    else
    {

      v94 = "r decrypting encoded data: ";
      v35 = v21;
      v36 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v95 = swift_allocError();
      v38 = v37;
      swift_getErrorValue();
      v39 = v104;
      v40 = v21;
      sub_225B21FAC(v39, &v98);

      v41 = v99;
      if (v99)
      {
        v92 = v100;
        v93 = v98;
        v42 = v102;
        v90 = v103;
        v91 = v101;
      }

      else
      {
        v98 = v21;
        v49 = v21;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v50 = v105;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          v51 = swift_initStackObject();
          *(v51 + 16) = xmmword_225CD30F0;
          *(v51 + 32) = 20;
          v52 = [v50 code];
          v53 = MEMORY[0x277D83BF8];
          *(v51 + 64) = MEMORY[0x277D83B88];
          *(v51 + 72) = v53;
          *(v51 + 40) = v52;
          v42 = sub_225B2C374(v51);
          swift_setDeallocating();
          sub_2259CB640(v51 + 32, &qword_27D73B060);

          v54 = v21;
          v91 = 0;
          v92 = 0;
          v41 = MEMORY[0x277D84F90];
          v93 = 1158;
        }

        else
        {
          v98 = v21;
          v71 = v21;
          v72 = sub_225CCE954();
          v73 = v89;
          v74 = swift_dynamicCast();
          v75 = *(v72 - 8);
          (*(v75 + 56))(v73, v74 ^ 1u, 1, v72);
          LODWORD(v72) = (*(v75 + 48))(v73, 1, v72);
          sub_2259CB640(v73, &unk_27D73B050);
          if (v72)
          {
            v76 = 1158;
          }

          else
          {
            v76 = 23;
          }

          v93 = v76;
          v41 = MEMORY[0x277D84F90];
          v42 = sub_225B2C374(MEMORY[0x277D84F90]);
          v77 = v21;
          v91 = 0x8000000225D19AE0;
          v92 = 0xD000000000000034;
        }

        v90 = v21;
      }

      v78 = v94 | 0x8000000000000000;
      v79 = swift_isUniquelyReferenced_nonNull_native();
      v98 = v42;
      sub_225B2C4A0(v36, sub_225B2AC40, 0, v79, &v98);

      v80 = v98;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_225B29AA0(0, *(v41 + 2) + 1, 1, v41);
      }

      v82 = *(v41 + 2);
      v81 = *(v41 + 3);
      if (v82 >= v81 >> 1)
      {
        v41 = sub_225B29AA0((v81 > 1), v82 + 1, 1, v41);
      }

      *(v41 + 2) = v82 + 1;
      v83 = &v41[56 * v82];
      *(v83 + 4) = 0xD000000000000034;
      *(v83 + 5) = 0x8000000225D19AE0;
      *(v83 + 6) = 0xD00000000000001CLL;
      *(v83 + 7) = v78;
      *(v83 + 8) = 0x742865646F636E65;
      *(v83 + 9) = 0xEB00000000293A6FLL;
      *(v83 + 10) = 279;
      v84 = v92;
      *v38 = v93;
      *(v38 + 8) = v41;
      *(v38 + 16) = v84;
      v85 = v90;
      *(v38 + 24) = v91;
      *(v38 + 32) = v80;
      *(v38 + 40) = v85;
      swift_willThrow();
    }
  }

  else
  {
    (*(v16 + 8))(v19, v15);
  }
}

uint64_t HPKEEncryptedMessageAlgorithm.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v94 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v95 = &v91 - v9;
  v100 = sub_225CCF2D4();
  v98 = *(v100 - 8);
  v11 = MEMORY[0x28223BE20](v100, v10);
  v97 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v91 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B4C8);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v91 - v19;
  v21 = a1[3];
  v99 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_225A5E724();
  sub_225CCFCA4();
  if (v2)
  {
    v110 = v2;
    v23 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    v24 = v100;
    if (swift_dynamicCast())
    {

      v26 = v97;
      v25 = v98;
      (*(v98 + 32))(v97, v15, v24);
      v94 = 0x8000000225D19B90;
      v27 = swift_allocError();
      (*(v25 + 16))(v28, v26, v24);
      v93 = "r decrypting encoded data: ";
      v29 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v96 = swift_allocError();
      v31 = v30;
      swift_getErrorValue();
      v32 = v102;
      v33 = v27;
      sub_225B21FAC(v32, &v103);

      v34 = v104;
      if (v104)
      {
        v95 = v103;
        v91 = v106;
        v92 = v105;
        v35 = v107;
        v36 = v108;
      }

      else
      {
        v103 = v27;
        v46 = v27;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v47 = v101;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v49 = [v47 code];
          v50 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v50;
          *(inited + 40) = v49;
          v35 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060);

          v51 = v27;
          v91 = 0;
          v92 = 0;
          v34 = MEMORY[0x277D84F90];
          v95 = 118;
          v36 = v27;
        }

        else
        {
          v103 = v27;
          v58 = v27;
          v59 = sub_225CCE954();
          v60 = v95;
          v61 = swift_dynamicCast();
          v62 = *(v59 - 8);
          (*(v62 + 56))(v60, v61 ^ 1u, 1, v59);
          LODWORD(v59) = (*(v62 + 48))(v60, 1, v59);
          sub_2259CB640(v60, &unk_27D73B050);
          if (v59)
          {
            v63 = 118;
          }

          else
          {
            v63 = 23;
          }

          v95 = v63;
          v34 = MEMORY[0x277D84F90];
          v35 = sub_225B2C374(MEMORY[0x277D84F90]);
          v64 = v27;
          v36 = v27;
          v91 = v94;
          v92 = 0xD00000000000002CLL;
        }
      }

      v65 = v93 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v103 = v35;
      sub_225B2C4A0(v29, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v103);

      v67 = v103;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_225B29AA0(0, *(v34 + 2) + 1, 1, v34);
      }

      v69 = *(v34 + 2);
      v68 = *(v34 + 3);
      if (v69 >= v68 >> 1)
      {
        v34 = sub_225B29AA0((v68 > 1), v69 + 1, 1, v34);
      }

      *(v34 + 2) = v69 + 1;
      v70 = &v34[56 * v69];
      v71 = v94;
      *(v70 + 4) = 0xD00000000000002CLL;
      *(v70 + 5) = v71;
      *(v70 + 6) = 0xD00000000000001CLL;
      *(v70 + 7) = v65;
      *(v70 + 8) = 0x6F72662874696E69;
      *(v70 + 9) = 0xEB00000000293A6DLL;
      *(v70 + 10) = 291;
      *v31 = v95;
      v72 = v91;
      v73 = v92;
      *(v31 + 8) = v34;
      *(v31 + 16) = v73;
      *(v31 + 24) = v72;
      *(v31 + 32) = v67;
      *(v31 + 40) = v36;
      swift_willThrow();
      (*(v98 + 8))(v97, v100);
      v74 = v110;
    }

    else
    {
      v98 = 0;

      v97 = "r decrypting encoded data: ";
      v37 = v2;
      v38 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v96 = swift_allocError();
      v40 = v39;
      swift_getErrorValue();
      v41 = v109;
      v42 = v2;
      sub_225B21FAC(v41, &v103);

      v43 = v104;
      v100 = 0x8000000225D19B50;
      if (v104)
      {
        v94 = v105;
        v95 = v103;
        v93 = v106;
        v44 = v107;
        v45 = v108;
      }

      else
      {
        v103 = v2;
        v52 = v2;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v53 = v110;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          v54 = swift_initStackObject();
          *(v54 + 16) = xmmword_225CD30F0;
          *(v54 + 32) = 20;
          v55 = [v53 code];
          v56 = MEMORY[0x277D83BF8];
          *(v54 + 64) = MEMORY[0x277D83B88];
          *(v54 + 72) = v56;
          *(v54 + 40) = v55;
          v44 = sub_225B2C374(v54);
          swift_setDeallocating();
          sub_2259CB640(v54 + 32, &qword_27D73B060);

          v57 = v2;
          v93 = 0;
          v94 = 0;
          v43 = MEMORY[0x277D84F90];
          v95 = 1159;
        }

        else
        {
          v103 = v2;
          v75 = v2;
          v76 = sub_225CCE954();
          v77 = v94;
          v78 = swift_dynamicCast();
          v79 = *(v76 - 8);
          (*(v79 + 56))(v77, v78 ^ 1u, 1, v76);
          LODWORD(v76) = (*(v79 + 48))(v77, 1, v76);
          sub_2259CB640(v77, &unk_27D73B050);
          if (v76)
          {
            v80 = 1159;
          }

          else
          {
            v80 = 23;
          }

          v95 = v80;
          v43 = MEMORY[0x277D84F90];
          v44 = sub_225B2C374(MEMORY[0x277D84F90]);
          v81 = v2;
          v93 = 0x8000000225D19B50;
          v94 = 0xD000000000000034;
        }

        v45 = v2;
      }

      v82 = v97 | 0x8000000000000000;
      v83 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v44;
      sub_225B2C4A0(v38, sub_225B2AC40, 0, v83, &v103);

      v84 = v103;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_225B29AA0(0, *(v43 + 2) + 1, 1, v43);
      }

      v86 = *(v43 + 2);
      v85 = *(v43 + 3);
      if (v86 >= v85 >> 1)
      {
        v43 = sub_225B29AA0((v85 > 1), v86 + 1, 1, v43);
      }

      *(v43 + 2) = v86 + 1;
      v87 = &v43[56 * v86];
      v88 = v100;
      *(v87 + 4) = 0xD000000000000034;
      *(v87 + 5) = v88;
      *(v87 + 6) = 0xD00000000000001CLL;
      *(v87 + 7) = v82;
      *(v87 + 8) = 0x6F72662874696E69;
      *(v87 + 9) = 0xEB00000000293A6DLL;
      *(v87 + 10) = 294;
      v89 = v94;
      *v40 = v95;
      *(v40 + 8) = v43;
      *(v40 + 16) = v89;
      *(v40 + 24) = v93;
      *(v40 + 32) = v84;
      *(v40 + 40) = v45;
      swift_willThrow();
      v74 = v2;
    }
  }

  else
  {
    v22 = v96;
    sub_225A5E778();
    sub_225CCF6E4();
    (*(v17 + 8))(v20, v16);
    *v22 = v103;
  }

  return __swift_destroy_boxed_opaque_existential_0(v99);
}

uint64_t HPKEEnvelope.params.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  v10 = *(v1 + 40);
  v11 = v2;
  v4 = *(v1 + 88);
  v12 = *(v1 + 72);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 24);
  v9[0] = *(v1 + 8);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_225A0E2F8(v9, &v8);
}

uint64_t HPKEEnvelope.data.getter()
{
  v1 = *(v0 + 104);
  sub_2259CB710(v1, *(v0 + 112));
  return v1;
}

uint64_t HPKEEnvelope.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2259BEF00(*(v2 + 104), *(v2 + 112));
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t sub_225A528C4()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_225A52914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A52988(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225A529F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A52A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A52B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_225A52910(a1, a2, a3[2], a3[3], a3[4]);
  *a4 = result;
  return result;
}

uint64_t sub_225A52B48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_225A52B9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void HPKEEnvelope.encode(to:)(void *a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  *(&v134 + 1) = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v135 = &v127 - v9;
  v164 = sub_225CCF324();
  v139 = *(v164 - 8);
  v11 = MEMORY[0x28223BE20](v164, v10);
  v138 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v137 = &v127 - v14;
  v15 = sub_225CCD954();
  v133 = *(v15 - 8);
  *&v134 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = *(a2 + 16);
  v136 = a2;
  v19 = *(a2 + 32);
  v140 = v18;
  v131 = v19;
  v132 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HPKEEnvelope.CodingKeys();
  swift_getWitnessTable();
  v20 = sub_225CCF7F4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v127 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v25 = v20;
  v26 = v142;
  sub_225CCFCE4();
  v163 = *v26;
  v162 = 0;
  sub_225A5E13C();
  v27 = v141;
  sub_225CCF7E4();
  if (v27)
  {
    (*(v21 + 8))(v24, v20);
    v141 = 0;
    v34 = v137;
    *&v148 = v27;
    v35 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    v36 = v164;
    if (swift_dynamicCast())
    {

      v38 = v138;
      v37 = v139;
      (*(v139 + 32))(v138, v34, v36);
      *&v154 = 0;
      *(&v154 + 1) = 0xE000000000000000;
      sub_225CCF204();

      strcpy(&v154, "HPKEEnvelope<");
      HIWORD(v154) = -4864;
      *&v146[0] = v140;
      swift_getMetatypeMetadata();
      v39 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v39);

      MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D199D0);
      v137 = *(&v154 + 1);
      v140 = v154;
      v40 = swift_allocError();
      (*(v37 + 16))(v41, v38, v36);
      v136 = "r decrypting encoded data: ";
      v42 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v142 = swift_allocError();
      v44 = v43;
      swift_getErrorValue();
      v45 = v160;
      v46 = v40;
      sub_225B21FAC(v45, &v154);

      v47 = *(&v154 + 1);
      if (*(&v154 + 1))
      {
        v134 = v155;
        v135 = v154;
        v49 = *(&v156 + 1);
        v48 = v156;
      }

      else
      {
        *&v154 = v40;
        v60 = v40;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v61 = *&v146[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v63 = [v61 code];
          v64 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v64;
          *(inited + 40) = v63;
          v48 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060);

          v65 = v40;
          v134 = 0uLL;
          v47 = MEMORY[0x277D84F90];
          v135 = 119;
          v49 = v40;
        }

        else
        {
          *&v154 = v40;
          v73 = v40;
          v74 = sub_225CCE954();
          v75 = v135;
          v76 = swift_dynamicCast();
          v77 = v42;
          v78 = *(v74 - 8);
          (*(v78 + 56))(v75, v76 ^ 1u, 1, v74);
          LODWORD(v74) = (*(v78 + 48))(v75, 1, v74);
          sub_2259CB640(v75, &unk_27D73B050);
          if (v74)
          {
            v79 = 119;
          }

          else
          {
            v79 = 23;
          }

          v135 = v79;
          v80 = v137;

          v47 = MEMORY[0x277D84F90];
          v48 = sub_225B2C374(MEMORY[0x277D84F90]);
          v81 = v40;
          v49 = v40;
          *(&v134 + 1) = v80;
          v42 = v77;
          *&v134 = v140;
        }
      }

      v82 = v136 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v154 = v48;
      sub_225B2C4A0(v42, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v154);

      v84 = v154;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_225B29AA0(0, *(v47 + 2) + 1, 1, v47);
      }

      v86 = *(v47 + 2);
      v85 = *(v47 + 3);
      if (v86 >= v85 >> 1)
      {
        v47 = sub_225B29AA0((v85 > 1), v86 + 1, 1, v47);
      }

      *(v47 + 2) = v86 + 1;
      v87 = &v47[56 * v86];
      v88 = v137;
      *(v87 + 4) = v140;
      *(v87 + 5) = v88;
      *(v87 + 6) = 0xD00000000000001CLL;
      *(v87 + 7) = v82;
      *(v87 + 8) = 0x742865646F636E65;
      *(v87 + 9) = 0xEB00000000293A6FLL;
      *(v87 + 10) = 338;
      *v44 = v135;
      v89 = v134;
      *(v44 + 8) = v47;
      *(v44 + 16) = v89;
      *(v44 + 32) = v84;
      *(v44 + 40) = v49;
      swift_willThrow();
      (*(v139 + 8))(v138, v164);
      v90 = v148;
    }

    else
    {

      *&v154 = 0;
      *(&v154 + 1) = 0xE000000000000000;
      sub_225CCF204();

      strcpy(&v154, "HPKEEnvelope<");
      HIWORD(v154) = -4864;
      *&v148 = v140;
      swift_getMetatypeMetadata();
      v50 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v50);

      MEMORY[0x22AA6CE70](0xD000000000000018, 0x8000000225D199B0);
      v164 = v154;
      v139 = "r decrypting encoded data: ";
      v140 = *(&v154 + 1);
      v51 = v27;
      v52 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v142 = swift_allocError();
      v54 = v53;
      swift_getErrorValue();
      v55 = v161;
      v56 = v27;
      sub_225B21FAC(v55, &v154);

      v57 = *(&v154 + 1);
      if (*(&v154 + 1))
      {
        v137 = v155;
        v138 = v154;
        v136 = *(&v155 + 1);
        v59 = *(&v156 + 1);
        v58 = v156;
      }

      else
      {
        *&v154 = v27;
        v66 = v27;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v67 = v148;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          v68 = swift_initStackObject();
          *(v68 + 16) = xmmword_225CD30F0;
          *(v68 + 32) = 20;
          v69 = [v67 code];
          v70 = MEMORY[0x277D83BF8];
          *(v68 + 64) = MEMORY[0x277D83B88];
          *(v68 + 72) = v70;
          *(v68 + 40) = v69;
          v58 = sub_225B2C374(v68);
          swift_setDeallocating();
          sub_2259CB640(v68 + 32, &qword_27D73B060);

          v71 = v27;
          v136 = 0;
          v137 = 0;
          v57 = MEMORY[0x277D84F90];
          v138 = 1158;
        }

        else
        {
          *&v154 = v27;
          v91 = v27;
          v92 = sub_225CCE954();
          v93 = *(&v134 + 1);
          v94 = swift_dynamicCast();
          v95 = v52;
          v96 = *(v92 - 8);
          (*(v96 + 56))(v93, v94 ^ 1u, 1, v92);
          LODWORD(v92) = (*(v96 + 48))(v93, 1, v92);
          sub_2259CB640(v93, &unk_27D73B050);
          if (v92)
          {
            v97 = 1158;
          }

          else
          {
            v97 = 23;
          }

          v138 = v97;
          v98 = v140;

          v57 = MEMORY[0x277D84F90];
          v58 = sub_225B2C374(MEMORY[0x277D84F90]);
          v99 = v27;
          v136 = v98;
          v137 = v164;
          v52 = v95;
        }

        v59 = v27;
      }

      v100 = v139 | 0x8000000000000000;
      v101 = swift_isUniquelyReferenced_nonNull_native();
      *&v154 = v58;
      sub_225B2C4A0(v52, sub_225B2AC40, 0, v101, &v154);

      v102 = v154;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_225B29AA0(0, *(v57 + 2) + 1, 1, v57);
      }

      v104 = *(v57 + 2);
      v103 = *(v57 + 3);
      if (v104 >= v103 >> 1)
      {
        v57 = sub_225B29AA0((v103 > 1), v104 + 1, 1, v57);
      }

      *(v57 + 2) = v104 + 1;
      v105 = &v57[56 * v104];
      v106 = v140;
      *(v105 + 4) = v164;
      *(v105 + 5) = v106;
      *(v105 + 6) = 0xD00000000000001CLL;
      *(v105 + 7) = v100;
      *(v105 + 8) = 0x742865646F636E65;
      *(v105 + 9) = 0xEB00000000293A6FLL;
      *(v105 + 10) = 341;
      v107 = v137;
      *v54 = v138;
      *(v54 + 8) = v57;
      *(v54 + 16) = v107;
      *(v54 + 24) = v136;
      *(v54 + 32) = v102;
      *(v54 + 40) = v59;
      swift_willThrow();
      v90 = v27;
    }
  }

  else
  {
    v28 = *(v26 + 56);
    v156 = *(v26 + 40);
    v157 = v28;
    v29 = *(v26 + 88);
    v158 = *(v26 + 72);
    v159 = v29;
    v30 = *(v26 + 24);
    v154 = *(v26 + 8);
    v155 = v30;
    v31 = *(v26 + 56);
    v150 = *(v26 + 40);
    v151 = v31;
    v32 = *(v26 + 88);
    v152 = *(v26 + 72);
    v153 = v32;
    v33 = *(v26 + 24);
    v148 = *(v26 + 8);
    v149 = v33;
    v147 = 1;
    sub_225A0E2F8(&v154, v146);
    sub_225A5E190();
    sub_225CCF7E4();
    v146[2] = v150;
    v146[3] = v151;
    v146[4] = v152;
    v146[5] = v153;
    v146[0] = v148;
    v146[1] = v149;
    sub_225A0E354(v146);
    v72 = *(v26 + 112);
    v144 = *(v26 + 104);
    v145 = v72;
    LOBYTE(v143) = 2;
    sub_2259CB710(v144, v72);
    sub_2259D9454();
    sub_225CCF7E4();
    sub_2259BEF00(v144, v145);
    v108 = v21;
    if (shouldIncludeUnencryptedData()())
    {
      v141 = v24;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v109 = off_28105B918;
      v110 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v111 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v111));
      v112 = &v109[v110];
      v113 = v132;
      (*(v133 + 16))(v132, v112, v134);
      v114 = &v109[v111];
      v115 = v113;
      os_unfair_lock_unlock(v114);
      v116 = sub_225CCD934();
      v117 = sub_225CCED04();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v128 = v118;
        v119 = swift_slowAlloc();
        v130 = v119;
        *v118 = 136315138;
        v129 = v117;
        v143 = v140;
        v144 = v119;
        swift_getMetatypeMetadata();
        v120 = sub_225CCE504();
        v122 = v25;
        v123 = sub_2259BE198(v120, v121, &v144);

        v124 = v128;
        *(v128 + 1) = v123;
        v25 = v122;
        v108 = v21;
        _os_log_impl(&dword_2259A7000, v116, v129, "including unencrypted data for HPKEEnvelope<%s>", v124, 0xCu);
        v125 = v130;
        __swift_destroy_boxed_opaque_existential_0(v130);
        MEMORY[0x22AA6F950](v125, -1, -1);
        MEMORY[0x22AA6F950](v124, -1, -1);

        (*(v133 + 8))(v132, v134);
      }

      else
      {

        (*(v133 + 8))(v115, v134);
      }

      LOBYTE(v144) = 3;
      v126 = v141;
      sub_225CCF774();
      (*(v108 + 8))(v126, v25);
    }

    else
    {
      (*(v21 + 8))(v24, v25);
    }
  }
}

Swift::Bool __swiftcall shouldIncludeUnencryptedData()()
{
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 == 1)
  {
    v6 = sub_225CCE444();
    v7 = [v5 BOOLForKey_];
  }

  else
  {
    v7 = 0;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v8 = off_28105B918;
  v9 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v10 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v10));
  (*(v1 + 16))(v4, &v8[v9], v0);
  os_unfair_lock_unlock(&v8[v10]);
  v11 = sub_225CCD934();
  v12 = sub_225CCED04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67240192;
    *(v13 + 4) = v7;
    _os_log_impl(&dword_2259A7000, v11, v12, "shouldIncludeUnencryptedData: %{BOOL,public}d", v13, 8u);
    MEMORY[0x22AA6F950](v13, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return v7;
}

uint64_t HPKEEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v109 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  *(&v109 + 1) = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v110 = &v108 - v12;
  v137 = sub_225CCF2D4();
  v118 = *(v137 - 8);
  v14 = MEMORY[0x28223BE20](v137, v13);
  v117 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v116 = &v108 - v17;
  v18 = sub_225CCEFC4();
  v121 = *(v18 - 8);
  v122 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v113 = &v108 - v20;
  type metadata accessor for HPKEEnvelope.CodingKeys();
  swift_getWitnessTable();
  v114 = sub_225CCF714();
  v111 = *(v114 - 8);
  MEMORY[0x28223BE20](v114, v21);
  v23 = &v108 - v22;
  v112 = a3;
  v24 = type metadata accessor for HPKEEnvelope();
  v108 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = &v108 - v27;
  *v28 = 0;
  v29 = *(v26 + 52);
  v30 = *(*(a2 - 8) + 56);
  v124 = a2;
  v125 = v28;
  v120 = v29;
  v30(&v28[v29], 1, 1, a2);
  v31 = a1[3];
  v123 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  v115 = v23;
  v32 = v119;
  sub_225CCFCA4();
  if (v32)
  {
    LODWORD(v115) = 0;
    LODWORD(v119) = 0;
    v114 = 0;
    *&v127 = v32;
    v34 = v32;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    v36 = v116;
    v37 = v137;
    if (swift_dynamicCast())
    {
      *(&v109 + 1) = v35;

      v39 = v117;
      v38 = v118;
      (*(v118 + 32))(v117, v36, v37);
      *&v130 = 0;
      *(&v130 + 1) = 0xE000000000000000;
      sub_225CCF204();

      strcpy(&v130, "HPKEEnvelope<");
      HIWORD(v130) = -4864;
      v129 = v124;
      swift_getMetatypeMetadata();
      v40 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v40);

      MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D19A10);
      v113 = *(&v130 + 1);
      v116 = v130;
      v41 = swift_allocError();
      (*(v38 + 16))(v42, v39, v37);
      v111 = "r decrypting encoded data: ";
      v112 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v124 = swift_allocError();
      v44 = v43;
      swift_getErrorValue();
      v45 = v128;
      v46 = v41;
      sub_225B21FAC(v45, &v130);

      v47 = *(&v130 + 1);
      if (*(&v130 + 1))
      {
        v109 = v131;
        v110 = v130;
        v49 = *(&v132 + 1);
        v48 = v132;
      }

      else
      {
        *&v130 = v41;
        v59 = v41;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v60 = v129;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v62 = [v60 code];
          v63 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v63;
          *(inited + 40) = v62;
          v48 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060);

          v64 = v41;
          v109 = 0uLL;
          v47 = MEMORY[0x277D84F90];
          v110 = 118;
          v49 = v41;
        }

        else
        {
          *&v130 = v41;
          v72 = v41;
          v73 = sub_225CCE954();
          v74 = v110;
          v75 = swift_dynamicCast();
          v76 = *(v73 - 8);
          (*(v76 + 56))(v74, v75 ^ 1u, 1, v73);
          LODWORD(v73) = (*(v76 + 48))(v74, 1, v73);
          sub_2259CB640(v74, &unk_27D73B050);
          if (v73)
          {
            v77 = 118;
          }

          else
          {
            v77 = 23;
          }

          v110 = v77;
          v78 = v113;

          v47 = MEMORY[0x277D84F90];
          v48 = sub_225B2C374(MEMORY[0x277D84F90]);
          v79 = v41;
          v49 = v41;
          *&v109 = v116;
          *(&v109 + 1) = v78;
        }
      }

      v80 = v111 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v130 = v48;
      sub_225B2C4A0(v112, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v130);

      v82 = v130;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_225B29AA0(0, *(v47 + 2) + 1, 1, v47);
      }

      v84 = *(v47 + 2);
      v83 = *(v47 + 3);
      if (v84 >= v83 >> 1)
      {
        v47 = sub_225B29AA0((v83 > 1), v84 + 1, 1, v47);
      }

      *(v47 + 2) = v84 + 1;
      v85 = &v47[56 * v84];
      v86 = v113;
      *(v85 + 4) = v116;
      *(v85 + 5) = v86;
      *(v85 + 6) = 0xD00000000000001CLL;
      *(v85 + 7) = v80;
      *(v85 + 8) = 0x6F72662874696E69;
      *(v85 + 9) = 0xEB00000000293A6DLL;
      *(v85 + 10) = 354;
      *v44 = v110;
      v87 = v109;
      *(v44 + 8) = v47;
      *(v44 + 16) = v87;
      *(v44 + 32) = v82;
      *(v44 + 40) = v49;
      swift_willThrow();
      (*(v118 + 8))(v117, v137);
      v88 = v127;
    }

    else
    {

      *&v130 = 0;
      *(&v130 + 1) = 0xE000000000000000;
      sub_225CCF204();

      strcpy(&v130, "HPKEEnvelope<");
      HIWORD(v130) = -4864;
      *&v127 = v124;
      swift_getMetatypeMetadata();
      v50 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v50);

      MEMORY[0x22AA6CE70](0xD000000000000018, 0x8000000225D199F0);
      v118 = *(&v130 + 1);
      v137 = v130;
      v116 = "r decrypting encoded data: ";
      v51 = v32;
      v117 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v124 = swift_allocError();
      v53 = v52;
      swift_getErrorValue();
      v54 = v136;
      v55 = v32;
      sub_225B21FAC(v54, &v130);

      v56 = *(&v130 + 1);
      if (*(&v130 + 1))
      {
        v112 = v131;
        v113 = v130;
        v111 = *(&v131 + 1);
        v58 = *(&v132 + 1);
        v57 = v132;
      }

      else
      {
        *&v130 = v32;
        v65 = v32;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v66 = v127;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          v67 = swift_initStackObject();
          *(v67 + 16) = xmmword_225CD30F0;
          *(v67 + 32) = 20;
          v68 = [v66 code];
          v69 = MEMORY[0x277D83BF8];
          *(v67 + 64) = MEMORY[0x277D83B88];
          *(v67 + 72) = v69;
          *(v67 + 40) = v68;
          v57 = sub_225B2C374(v67);
          swift_setDeallocating();
          sub_2259CB640(v67 + 32, &qword_27D73B060);

          v70 = v32;
          v111 = 0;
          v112 = 0;
          v56 = MEMORY[0x277D84F90];
          v113 = 1159;
        }

        else
        {
          *&v130 = v32;
          v89 = v32;
          v90 = sub_225CCE954();
          v91 = *(&v109 + 1);
          v92 = swift_dynamicCast();
          v93 = *(v90 - 8);
          (*(v93 + 56))(v91, v92 ^ 1u, 1, v90);
          LODWORD(v90) = (*(v93 + 48))(v91, 1, v90);
          sub_2259CB640(v91, &unk_27D73B050);
          if (v90)
          {
            v94 = 1159;
          }

          else
          {
            v94 = 23;
          }

          v113 = v94;
          v95 = v118;

          v56 = MEMORY[0x277D84F90];
          v57 = sub_225B2C374(MEMORY[0x277D84F90]);
          v96 = v32;
          v111 = v95;
          v112 = v137;
        }

        v58 = v32;
      }

      v97 = v116 | 0x8000000000000000;
      v98 = swift_isUniquelyReferenced_nonNull_native();
      *&v130 = v57;
      sub_225B2C4A0(v117, sub_225B2AC40, 0, v98, &v130);

      v99 = v130;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_225B29AA0(0, *(v56 + 2) + 1, 1, v56);
      }

      v101 = *(v56 + 2);
      v100 = *(v56 + 3);
      if (v101 >= v100 >> 1)
      {
        v56 = sub_225B29AA0((v100 > 1), v101 + 1, 1, v56);
      }

      *(v56 + 2) = v101 + 1;
      v102 = &v56[56 * v101];
      v103 = v118;
      *(v102 + 4) = v137;
      *(v102 + 5) = v103;
      *(v102 + 6) = 0xD00000000000001CLL;
      *(v102 + 7) = v97;
      *(v102 + 8) = 0x6F72662874696E69;
      *(v102 + 9) = 0xEB00000000293A6DLL;
      *(v102 + 10) = 357;
      v104 = v112;
      *v53 = v113;
      *(v53 + 8) = v56;
      *(v53 + 16) = v104;
      *(v53 + 24) = v111;
      *(v53 + 32) = v99;
      *(v53 + 40) = v58;
      swift_willThrow();
      v88 = v32;
    }

    __swift_destroy_boxed_opaque_existential_0(v123);
    v105 = v125;
    if (v115)
    {
      v132 = *(v125 + 40);
      v133 = *(v125 + 56);
      v134 = *(v125 + 72);
      v135 = *(v125 + 88);
      v130 = *(v125 + 8);
      v131 = *(v125 + 24);
      sub_225A0E354(&v130);
    }

    if (v119)
    {
      sub_2259BEF00(*(v105 + 13), *(v105 + 14));
    }

    return (*(v121 + 8))(&v105[v120], v122);
  }

  else
  {
    v33 = v111;
    LOBYTE(v127) = 0;
    sub_225A5E778();
    sub_225CCF674();
    v71 = v125;
    *v125 = v130 & 1;
    LOBYTE(v129) = 1;
    sub_225A5E260();
    sub_225CCF6E4();
    *(v71 + 40) = v132;
    *(v71 + 56) = v133;
    *(v71 + 72) = v134;
    *(v71 + 88) = v135;
    *(v71 + 8) = v130;
    *(v71 + 24) = v131;
    v126 = 2;
    sub_2259D94A8();
    sub_225CCF6E4();
    *(v71 + 104) = v127;
    LOBYTE(v127) = 3;
    sub_225CCF674();
    (*(v33 + 8))(v115, v114);
    (*(v121 + 40))(&v71[v120], v113, v122);
    v106 = v108;
    (*(v108 + 16))(v109, v71, v24);
    __swift_destroy_boxed_opaque_existential_0(v123);
    return (*(v106 + 8))(v71, v24);
  }
}

uint64_t HPKEShallowEnvelope.params.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  v10 = *(v1 + 40);
  v11 = v2;
  v4 = *(v1 + 88);
  v12 = *(v1 + 72);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 24);
  v9[0] = *(v1 + 8);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_225A0E2F8(v9, &v8);
}

uint64_t HPKEShallowEnvelope.data.getter()
{
  v1 = *(v0 + 104);
  sub_2259CB710(v1, *(v0 + 112));
  return v1;
}

uint64_t sub_225A54F90()
{
  v1 = 0x736D61726170;
  if (*v0 != 1)
  {
    v1 = 1635017060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x687469726F676C61;
  }
}

uint64_t sub_225A54FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225A5EC84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225A5500C(uint64_t a1)
{
  v2 = sub_225A5E7E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A55048(uint64_t a1)
{
  v2 = sub_225A5E7E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HPKEShallowEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B4D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v21 - v6;
  v8 = *v1;
  v9 = *(v1 + 56);
  v37 = *(v1 + 40);
  v38 = v9;
  v10 = *(v1 + 88);
  v39 = *(v1 + 72);
  v40 = v10;
  v11 = *(v1 + 24);
  v35 = *(v1 + 8);
  v36 = v11;
  v12 = *(v1 + 13);
  v22 = *(v1 + 14);
  v23 = v12;
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_225A5E7E4();
  sub_225CCFCE4();
  LOBYTE(v29) = v8;
  LOBYTE(v27[0]) = 0;
  sub_225A5E13C();
  v17 = v41;
  sub_225CCF7E4();
  if (!v17)
  {
    v18 = v22;
    v19 = v23;
    v31 = v37;
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v29 = v35;
    v30 = v36;
    v28 = 1;
    sub_225A0E2F8(&v35, v27);
    sub_225A5E190();
    sub_225CCF7E4();
    v27[2] = v31;
    v27[3] = v32;
    v27[4] = v33;
    v27[5] = v34;
    v27[0] = v29;
    v27[1] = v30;
    sub_225A0E354(v27);
    v25 = v19;
    v26 = v18;
    v24 = 2;
    sub_2259CB710(v19, v18);
    sub_2259D9454();
    sub_225CCF7E4();
    sub_2259BEF00(v25, v26);
  }

  return (*(v4 + 8))(v7, v16);
}

uint64_t HPKEShallowEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B4E8);
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A5E7E4();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v5;
  LOBYTE(v20[0]) = 0;
  sub_225A5E778();
  v10 = v42;
  sub_225CCF6E4();
  v11 = v22;
  v34 = 1;
  sub_225A5E260();
  sub_225CCF6E4();
  HIDWORD(v19) = v11;
  *&v41[39] = v37;
  *&v41[55] = v38;
  *&v41[71] = v39;
  *&v41[87] = v40;
  *&v41[7] = v35;
  *&v41[23] = v36;
  v31 = 2;
  sub_2259D94A8();
  sub_225CCF6E4();
  (*(v9 + 8))(v8, v10);
  *(&v20[3] + 1) = *&v41[48];
  *(&v20[4] + 1) = *&v41[64];
  *(&v20[5] + 1) = *&v41[80];
  *(v20 + 1) = *v41;
  v12 = v32;
  v13 = v33;
  v14 = BYTE4(v19);
  LOBYTE(v20[0]) = BYTE4(v19);
  *(&v20[1] + 1) = *&v41[16];
  *(&v20[2] + 1) = *&v41[32];
  *&v20[6] = *&v41[95];
  *(&v20[6] + 1) = v32;
  v21 = v33;
  *(a2 + 112) = v33;
  v15 = v20[5];
  *(a2 + 64) = v20[4];
  *(a2 + 80) = v15;
  *(a2 + 96) = v20[6];
  v16 = v20[1];
  *a2 = v20[0];
  *(a2 + 16) = v16;
  v17 = v20[3];
  *(a2 + 32) = v20[2];
  *(a2 + 48) = v17;
  sub_225A5E838(v20, &v22);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v26 = *&v41[48];
  v27 = *&v41[64];
  *v28 = *&v41[80];
  v23 = *v41;
  v24 = *&v41[16];
  v22 = v14;
  v25 = *&v41[32];
  *&v28[15] = *&v41[95];
  v29 = v12;
  v30 = v13;
  return sub_225A5E870(&v22);
}

uint64_t HPKEEnvelopeEncryptedMessagePKRHash.keys.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 88);
  v14 = *(v1 + 72);
  v2 = v14;
  v15 = v3;
  v5 = *(v1 + 120);
  v16 = *(v1 + 104);
  v4 = v16;
  v17 = v5;
  v6 = *(v1 + 24);
  v11[0] = *(v1 + 8);
  v11[1] = v6;
  v8 = *(v1 + 56);
  v12 = *(v1 + 40);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_225A0DE54(v11, &v10, &qword_27D73B460);
}

uint64_t HPKEEnvelopeEncryptedMessagePKRHash.params.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 184);
  v10 = *(v1 + 168);
  v11 = v2;
  v4 = *(v1 + 216);
  v12 = *(v1 + 200);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 152);
  v9[0] = *(v1 + 136);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_225A0DE54(v9, &v8, &qword_27D73B420);
}

uint64_t HPKEEnvelopeEncryptedMessagePKRHash.pkRHash.getter()
{
  if (*v0)
  {
    v1 = *(v0 + 88);
    v12 = *(v0 + 72);
    v13 = v1;
    v2 = *(v0 + 120);
    v14 = *(v0 + 104);
    v15 = v2;
    v3 = *(v0 + 24);
    v8 = *(v0 + 8);
    v9 = v3;
    v4 = *(v0 + 56);
    v10 = *(v0 + 40);
    v11 = v4;
    if (sub_225A5E8A0(&v8) != 1)
    {
      v5 = *(&v9 + 1);
      v6 = v10;
LABEL_7:
      sub_2259CB710(v5, v6);
      return v5;
    }
  }

  else if (*(v0 + 144) >> 60 != 15)
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 160);
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_225A55884()
{
  v1 = 1937335659;
  if (*v0 != 1)
  {
    v1 = 0x736D61726170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x687469726F676C61;
  }
}

uint64_t sub_225A558D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225A5EDA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225A55900(uint64_t a1)
{
  v2 = sub_225A5E8C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A5593C(uint64_t a1)
{
  v2 = sub_225A5E8C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HPKEEnvelopeEncryptedMessagePKRHash.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B4F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - v8;
  v10 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_225A5E8C4();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v62);
  }

  v27 = a2;
  v28 = v6;
  v29[0] = 0;
  sub_225A5E778();
  sub_225CCF6E4();
  v11 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B4A0);
  v46 = 1;
  sub_2259D8B24(&qword_27D73B4B0, &qword_27D73B4A0);
  sub_225CCF674();
  HIDWORD(v26) = v11;
  *&v61[71] = v51;
  *&v61[87] = v52;
  *&v61[103] = v53;
  *&v61[119] = v54;
  *&v61[7] = v47;
  *&v61[23] = v48;
  *&v61[39] = v49;
  *&v61[55] = v50;
  v39 = 2;
  sub_225A5E260();
  sub_225CCF674();
  (*(v28 + 8))(v9, v5);
  v57 = v42;
  v58 = v43;
  v59 = v44;
  v60 = v45;
  v55 = v40;
  v56 = v41;
  *&v29[17] = *&v61[16];
  *&v29[33] = *&v61[32];
  *&v29[1] = *v61;
  *&v29[49] = *&v61[48];
  *&v29[65] = *&v61[64];
  *&v29[81] = *&v61[80];
  *&v29[97] = *&v61[96];
  *&v29[128] = *&v61[127];
  *&v29[113] = *&v61[112];
  *&v29[152] = v41;
  *&v29[136] = v40;
  v12 = BYTE4(v26);
  v29[0] = BYTE4(v26);
  *&v29[216] = v45;
  *&v29[200] = v44;
  *&v29[184] = v43;
  *&v29[168] = v42;
  v13 = *&v29[16];
  v14 = v27;
  *v27 = *v29;
  v14[1] = v13;
  v15 = *&v29[32];
  v16 = *&v29[48];
  v17 = *&v29[80];
  v14[4] = *&v29[64];
  v14[5] = v17;
  v14[2] = v15;
  v14[3] = v16;
  v18 = *&v29[96];
  v19 = *&v29[112];
  v20 = *&v29[144];
  v14[8] = *&v29[128];
  v14[9] = v20;
  v14[6] = v18;
  v14[7] = v19;
  v21 = *&v29[160];
  v22 = *&v29[176];
  v23 = *&v29[192];
  v24 = *&v29[208];
  *(v14 + 28) = *&v29[224];
  v14[12] = v23;
  v14[13] = v24;
  v14[10] = v21;
  v14[11] = v22;
  sub_225A5E918(v29, &v30);
  __swift_destroy_boxed_opaque_existential_0(v62);
  v36 = *&v61[80];
  v37 = *&v61[96];
  v38[0] = *&v61[112];
  v32 = *&v61[16];
  v33 = *&v61[32];
  v34 = *&v61[48];
  v35 = *&v61[64];
  v31 = *v61;
  *(&v38[3] + 7) = v57;
  *(&v38[4] + 7) = v58;
  *(&v38[5] + 7) = v59;
  *(&v38[6] + 7) = v60;
  *(&v38[1] + 7) = v55;
  v30 = v12;
  *(v38 + 15) = *&v61[127];
  *(&v38[2] + 7) = v56;
  return sub_225A5E950(&v30);
}

uint64_t HPKEParams.pkEm.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t HPKEParams.pkRHash.getter()
{
  v1 = *(v0 + 16);
  sub_2259CB710(v1, *(v0 + 24));
  return v1;
}

uint64_t HPKEParams.pkISm.getter()
{
  v1 = *(v0 + 32);
  sub_2259CB6FC(v1, *(v0 + 40));
  return v1;
}

uint64_t HPKEParams.pkISHash.getter()
{
  v1 = *(v0 + 48);
  sub_2259CB6FC(v1, *(v0 + 56));
  return v1;
}

uint64_t HPKEParams.pkSm.getter()
{
  v1 = *(v0 + 64);
  sub_2259CB6FC(v1, *(v0 + 72));
  return v1;
}

uint64_t HPKEParams.infoHash.getter()
{
  v1 = *(v0 + 80);
  sub_2259CB6FC(v1, *(v0 + 88));
  return v1;
}

uint64_t HPKEParams.description.getter()
{
  v1 = 0x3E6C696E3CLL;
  v2 = v0[5];
  v3 = v0[7];
  v4 = v0[9];
  v19 = v0[11];
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D19BC0);
  sub_225CCF434();
  MEMORY[0x22AA6CE70](0x203A6D456B70202CLL, 0xE800000000000000);
  v5 = sub_225CCCF84();
  MEMORY[0x22AA6CE70](v5);

  MEMORY[0x22AA6CE70](0x736148526B70202CLL, 0xEB00000000203A68);
  v6 = sub_225CCCF84();
  MEMORY[0x22AA6CE70](v6);

  MEMORY[0x22AA6CE70](0x3A6D53496B70202CLL, 0xE900000000000020);
  if (v2 >> 60 == 15)
  {
    v7 = 0xE500000000000000;
    v8 = 0x3E6C696E3CLL;
  }

  else
  {
    v8 = sub_225CCCF84();
    v7 = v9;
  }

  MEMORY[0x22AA6CE70](v8, v7);

  MEMORY[0x22AA6CE70](0x614853496B70202CLL, 0xEC000000203A6873);
  if (v3 >> 60 == 15)
  {
    v10 = 0xE500000000000000;
    v11 = 0x3E6C696E3CLL;
  }

  else
  {
    v11 = sub_225CCCF84();
    v10 = v12;
  }

  MEMORY[0x22AA6CE70](v11, v10);

  MEMORY[0x22AA6CE70](0x203A4D536B70202CLL, 0xE800000000000000);
  if (v4 >> 60 == 15)
  {
    v13 = 0xE500000000000000;
    v14 = 0x3E6C696E3CLL;
  }

  else
  {
    v14 = sub_225CCCF84();
    v13 = v15;
  }

  MEMORY[0x22AA6CE70](v14, v13);

  MEMORY[0x22AA6CE70](0x61486F666E69202CLL, 0xEC000000203A6873);
  if (v19 >> 60 == 15)
  {
    v16 = 0xE500000000000000;
  }

  else
  {
    v1 = sub_225CCCF84();
    v16 = v17;
  }

  MEMORY[0x22AA6CE70](v1, v16);

  return 0;
}

uint64_t sub_225A5626C()
{
  v1 = *v0;
  v2 = 1701080941;
  v3 = 1834183536;
  if (v1 != 5)
  {
    v3 = 0x687361486F666E69;
  }

  v4 = 0x6D53496B70;
  if (v1 != 3)
  {
    v4 = 0x6873614853496B70;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1833266032;
  if (v1 != 1)
  {
    v5 = 0x68736148526B70;
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

uint64_t sub_225A56330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225A5EEBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225A56358(uint64_t a1)
{
  v2 = sub_225A5E980();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A56394(uint64_t a1)
{
  v2 = sub_225A5E980();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HPKEParams.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B500);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v24 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v29 = v1[5];
  v30 = v11;
  v13 = v1[6];
  v27 = v1[7];
  v28 = v12;
  v14 = v1[9];
  v24 = v1[8];
  v25 = v14;
  v26 = v13;
  v15 = v1[11];
  v31 = v1[10];
  v32 = v10;
  v16 = a1[3];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v16);
  sub_225A5E980();
  sub_225CCFCE4();
  LOBYTE(v34) = 0;
  sub_225A5E9D4();
  v20 = v33;
  sub_225CCF7E4();
  if (v20)
  {
    return (*(v4 + 8))(v7, v19);
  }

  v33 = v15;
  v34 = v8;
  v21 = v31;
  v22 = v32;
  v35 = v9;
  v36 = 1;
  sub_2259CB710(v8, v9);
  sub_2259D9454();
  sub_225CCF7E4();
  sub_2259BEF00(v34, v35);
  v34 = v22;
  v35 = v30;
  v36 = 2;
  sub_2259CB710(v22, v30);
  sub_225CCF7E4();
  sub_2259BEF00(v34, v35);
  v34 = v28;
  v35 = v29;
  v36 = 3;
  sub_2259CB6FC(v28, v29);
  sub_225CCF774();
  sub_2259B97A8(v34, v35);
  v34 = v26;
  v35 = v27;
  v36 = 4;
  sub_2259CB6FC(v26, v27);
  sub_225CCF774();
  sub_2259B97A8(v34, v35);
  v34 = v24;
  v35 = v25;
  v36 = 5;
  sub_2259CB6FC(v24, v25);
  sub_225CCF774();
  sub_2259B97A8(v34, v35);
  v34 = v21;
  v35 = v33;
  v36 = 6;
  sub_2259CB6FC(v21, v33);
  sub_225CCF774();
  sub_2259B97A8(v34, v35);
  return (*(v4 + 8))(0, v19);
}

uint64_t HPKEParams.init(from:)@<X0>(void *a1@<X0>, unsigned __int128 *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B518);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A5E980();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v40[0]) = 0;
  sub_225A5EA28();
  sub_225CCF6E4();
  LOBYTE(v35[0]) = 1;
  sub_2259D94A8();
  sub_225CCF6E4();
  v34 = v40[0];
  LOBYTE(v35[0]) = 2;
  sub_225CCF6E4();
  v32 = v40[0];
  LOBYTE(v35[0]) = 3;
  sub_225CCF674();
  v31 = v40[0];
  LOBYTE(v35[0]) = 4;
  sub_225CCF674();
  v33 = v40[0];
  LOBYTE(v35[0]) = 5;
  sub_225CCF674();
  v10 = *(&v40[0] + 1);
  v30 = *&v40[0];
  v46 = 6;
  sub_225CCF674();
  (*(v6 + 8))(v9, v5);
  v28 = *(&v45 + 1);
  v29 = v45;
  v13 = v34;
  v11 = v13 >> 64;
  v12 = v13;
  v35[0] = v34;
  v16 = v32;
  v15 = v16 >> 64;
  v14 = v16;
  v35[1] = v32;
  v17 = v10;
  v27 = v10;
  v20 = v31;
  v18 = v20 >> 64;
  v19 = v20;
  v36 = v31;
  v37 = v33;
  *&v38 = v30;
  *(&v38 + 1) = v17;
  v39 = v45;
  v21 = v32;
  *a2 = v34;
  a2[1] = v21;
  v22 = v36;
  v23 = v37;
  v24 = v39;
  a2[4] = v38;
  a2[5] = v24;
  a2[2] = v22;
  a2[3] = v23;
  sub_225A0E2F8(v35, v40);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v40[0] = __PAIR128__(v11, v12);
  v40[1] = __PAIR128__(v15, v14);
  v40[2] = __PAIR128__(v18, v19);
  v40[3] = v33;
  v41 = v30;
  v42 = v27;
  v43 = v29;
  v44 = v28;
  return sub_225A0E354(v40);
}

uint64_t AEADKey.secretKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AEADKey.nonce.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

CoreIDVShared::AEADKey __swiftcall AEADKey.init(secretKey:nonce:)(Swift::String secretKey, Swift::String nonce)
{
  *v2 = secretKey;
  v2[1] = nonce;
  result.nonce = nonce;
  result.secretKey = secretKey;
  return result;
}

uint64_t sub_225A56F08()
{
  if (*v0)
  {
    return 0x65636E6F6ELL;
  }

  else
  {
    return 0x654B746572636573;
  }
}

uint64_t sub_225A56F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x654B746572636573 && a2 == 0xE900000000000079;
  if (v6 || (sub_225CCF934() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65636E6F6ELL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_225CCF934();

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

uint64_t sub_225A57024(uint64_t a1)
{
  v2 = sub_225A5EA7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A57060(uint64_t a1)
{
  v2 = sub_225A5EA7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AEADKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B528);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A5EA7C();
  sub_225CCFCE4();
  v13 = 0;
  v9 = v11[3];
  sub_225CCF784();
  if (!v9)
  {
    v12 = 1;
    sub_225CCF784();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t AEADKey.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B538);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A5EA7C();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = 0;
  v10 = sub_225CCF684();
  v12 = v11;
  v18 = v10;
  v19 = 1;
  v13 = sub_225CCF684();
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  *a2 = v18;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t SealedMessage.keyID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SealedMessage.data.getter()
{
  v1 = *(v0 + 16);
  sub_2259CB710(v1, *(v0 + 24));
  return v1;
}

uint64_t SealedMessage.unencryptedData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_225CCEFC4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_225A5753C()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_225A5758C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A57600(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225A5766C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A576DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A57764@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void, void, void, void)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(*a1, a1[1], a2[2], a2[3], a2[4]);
  *a4 = result;
  return result;
}

uint64_t sub_225A577C0@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*v3, a1[2], a1[3], a1[4]);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_225A5780C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_225A57588(a1, a2, a3[2], a3[3], a3[4]);
  *a4 = result;
  return result;
}

uint64_t sub_225A57840@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225A5F0FC();
  *a1 = result;
  return result;
}

uint64_t sub_225A57874(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_225A578C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t SealedMessage.init(keyID:data:unencryptedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = *(type metadata accessor for SealedMessage() + 48);
  v9 = sub_225CCEFC4();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a5, v9);
}

void SealedMessage.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v129 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v130 = &v122 - v9;
  v139 = sub_225CCF324();
  v135 = *(v139 - 8);
  v11 = MEMORY[0x28223BE20](v139, v10);
  v134 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v133 = &v122 - v14;
  v15 = sub_225CCD954();
  v16 = *(v15 - 8);
  v131 = v15;
  v132 = v16;
  MEMORY[0x28223BE20](v15, v17);
  v19 = *(a2 + 16);
  v128 = a2;
  v20 = *(a2 + 32);
  v138 = v19;
  v126 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v20;
  type metadata accessor for SealedMessage.CodingKeys();
  swift_getWitnessTable();
  v21 = sub_225CCF7F4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v122 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = v136;
  v27 = v21;
  sub_225CCFCE4();
  LOBYTE(v142) = 0;
  v28 = v137;
  sub_225CCF784();
  if (v28)
  {
    v22[1](v25, v21);
    v137 = 0;
    v31 = v139;
    v32 = v133;
    v149 = v28;
    v33 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    if (swift_dynamicCast())
    {

      v35 = v134;
      v34 = v135;
      (*(v135 + 32))(v134, v32, v31);
      v142 = 0;
      v143 = 0xE000000000000000;
      sub_225CCF204();

      v142 = 0x654D64656C616553;
      v143 = 0xEF3C736567617373;
      v141 = v138;
      swift_getMetatypeMetadata();
      v36 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v36);

      MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D199D0);
      v136 = v142;
      v133 = v143;
      v37 = swift_allocError();
      (*(v34 + 16))(v38, v35, v31);
      v39 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v138 = swift_allocError();
      v41 = v40;
      swift_getErrorValue();
      v42 = v140;
      v43 = v37;
      sub_225B21FAC(v42, &v142);

      v44 = v143;
      if (v143)
      {
        v130 = v144;
        v131 = v145;
        v132 = v142;
        v45 = v146;
        v46 = v147;
      }

      else
      {
        v142 = v37;
        v57 = v37;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v58 = v141;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v60 = [v58 code];
          v61 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v61;
          *(inited + 40) = v60;
          v45 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060);

          v62 = v37;
          v130 = 0;
          v131 = 0;
          v44 = MEMORY[0x277D84F90];
          v132 = 119;
          v46 = v37;
        }

        else
        {
          v142 = v37;
          v88 = v37;
          v89 = sub_225CCE954();
          v90 = v130;
          v91 = swift_dynamicCast();
          v92 = *(v89 - 8);
          (*(v92 + 56))(v90, v91 ^ 1u, 1, v89);
          LODWORD(v89) = (*(v92 + 48))(v90, 1, v89);
          sub_2259CB640(v90, &unk_27D73B050);
          if (v89)
          {
            v93 = 119;
          }

          else
          {
            v93 = 23;
          }

          v132 = v93;
          v94 = v133;

          v44 = MEMORY[0x277D84F90];
          v45 = sub_225B2C374(MEMORY[0x277D84F90]);
          v95 = v37;
          v46 = v37;
          v131 = v94;
          v130 = v136;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v142 = v45;
      sub_225B2C4A0(v39, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v142);

      v97 = v142;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_225B29AA0(0, *(v44 + 2) + 1, 1, v44);
      }

      v99 = *(v44 + 2);
      v98 = *(v44 + 3);
      if (v99 >= v98 >> 1)
      {
        v44 = sub_225B29AA0((v98 > 1), v99 + 1, 1, v44);
      }

      *(v44 + 2) = v99 + 1;
      v100 = &v44[56 * v99];
      v101 = v133;
      *(v100 + 4) = v136;
      *(v100 + 5) = v101;
      *(v100 + 6) = 0xD00000000000001CLL;
      *(v100 + 7) = 0x8000000225D17220;
      *(v100 + 8) = 0x742865646F636E65;
      *(v100 + 9) = 0xEB00000000293A6FLL;
      *(v100 + 10) = 481;
      *v41 = v132;
      v103 = v130;
      v102 = v131;
      *(v41 + 8) = v44;
      *(v41 + 16) = v103;
      *(v41 + 24) = v102;
      *(v41 + 32) = v97;
      *(v41 + 40) = v46;
      swift_willThrow();
      (*(v135 + 8))(v134, v139);
      v104 = v149;
    }

    else
    {

      v142 = 0;
      v143 = 0xE000000000000000;
      sub_225CCF204();

      v142 = 0x654D64656C616553;
      v143 = 0xEF3C736567617373;
      v149 = v138;
      swift_getMetatypeMetadata();
      v47 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v47);

      MEMORY[0x22AA6CE70](0xD000000000000018, 0x8000000225D199B0);
      v139 = v142;
      v136 = v143;
      v48 = v28;
      v49 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v138 = swift_allocError();
      v51 = v50;
      swift_getErrorValue();
      v52 = v148;
      v53 = v28;
      sub_225B21FAC(v52, &v142);

      v54 = v143;
      if (v143)
      {
        v134 = v144;
        v135 = v142;
        v133 = v145;
        v55 = v146;
        v56 = v147;
      }

      else
      {
        v142 = v28;
        v63 = v28;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v64 = v149;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          v65 = swift_initStackObject();
          *(v65 + 16) = xmmword_225CD30F0;
          *(v65 + 32) = 20;
          v66 = [v64 code];
          v67 = MEMORY[0x277D83BF8];
          *(v65 + 64) = MEMORY[0x277D83B88];
          *(v65 + 72) = v67;
          *(v65 + 40) = v66;
          v55 = sub_225B2C374(v65);
          swift_setDeallocating();
          sub_2259CB640(v65 + 32, &qword_27D73B060);

          v68 = v28;
          v133 = 0;
          v134 = 0;
          v54 = MEMORY[0x277D84F90];
          v135 = 1158;
        }

        else
        {
          v142 = v28;
          v105 = v28;
          v106 = sub_225CCE954();
          v107 = v129;
          v108 = swift_dynamicCast();
          v109 = *(v106 - 8);
          (*(v109 + 56))(v107, v108 ^ 1u, 1, v106);
          LODWORD(v106) = (*(v109 + 48))(v107, 1, v106);
          sub_2259CB640(v107, &unk_27D73B050);
          if (v106)
          {
            v110 = 1158;
          }

          else
          {
            v110 = 23;
          }

          v135 = v110;
          v111 = v136;

          v54 = MEMORY[0x277D84F90];
          v55 = sub_225B2C374(MEMORY[0x277D84F90]);
          v112 = v28;
          v133 = v111;
          v134 = v139;
        }

        v56 = v28;
      }

      v113 = swift_isUniquelyReferenced_nonNull_native();
      v142 = v55;
      sub_225B2C4A0(v49, sub_225B2AC40, 0, v113, &v142);

      v114 = v142;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_225B29AA0(0, *(v54 + 2) + 1, 1, v54);
      }

      v116 = *(v54 + 2);
      v115 = *(v54 + 3);
      if (v116 >= v115 >> 1)
      {
        v54 = sub_225B29AA0((v115 > 1), v116 + 1, 1, v54);
      }

      *(v54 + 2) = v116 + 1;
      v117 = &v54[56 * v116];
      v118 = v136;
      *(v117 + 4) = v139;
      *(v117 + 5) = v118;
      *(v117 + 6) = 0xD00000000000001CLL;
      *(v117 + 7) = 0x8000000225D17220;
      *(v117 + 8) = 0x742865646F636E65;
      *(v117 + 9) = 0xEB00000000293A6FLL;
      *(v117 + 10) = 484;
      v119 = v134;
      *v51 = v135;
      *(v51 + 8) = v54;
      *(v51 + 16) = v119;
      *(v51 + 24) = v133;
      *(v51 + 32) = v114;
      *(v51 + 40) = v56;
      swift_willThrow();
      v104 = v28;
    }
  }

  else
  {
    v29 = v132;
    v137 = v22;
    v30 = *(v26 + 24);
    v142 = *(v26 + 16);
    v143 = v30;
    LOBYTE(v149) = 1;
    sub_2259CB710(v142, v30);
    sub_2259D9454();
    sub_225CCF7E4();
    sub_2259BEF00(v142, v143);
    v69 = shouldIncludeUnencryptedData()();
    v70 = v137;
    if (v69)
    {
      v124 = v25;
      v125 = v27;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v71 = off_28105B918;
      v72 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v73 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v73));
      v74 = v29;
      v75 = *(v29 + 16);
      v76 = &v71[v72];
      v77 = v126;
      v78 = v131;
      v75(v126, v76, v131);
      os_unfair_lock_unlock(&v71[v73]);
      v79 = sub_225CCD934();
      v80 = sub_225CCED04();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v122 = v81;
        v123 = swift_slowAlloc();
        v142 = v123;
        *v81 = 136315138;
        v149 = v138;
        swift_getMetatypeMetadata();
        v82 = sub_225CCE504();
        v84 = sub_2259BE198(v82, v83, &v142);

        v85 = v122;
        *(v122 + 1) = v84;
        v70 = v137;
        v86 = v85;
        _os_log_impl(&dword_2259A7000, v79, v80, "including unencrypted data for SealedMessage<%s>", v85, 0xCu);
        v87 = v123;
        __swift_destroy_boxed_opaque_existential_0(v123);
        MEMORY[0x22AA6F950](v87, -1, -1);
        MEMORY[0x22AA6F950](v86, -1, -1);

        (*(v74 + 8))(v77, v131);
      }

      else
      {

        (*(v74 + 8))(v77, v78);
      }

      LOBYTE(v142) = 2;
      v120 = v124;
      v121 = v125;
      sub_225CCF774();
      v70[1](v120, v121);
    }

    else
    {
      v137[1](v25, v27);
    }
  }
}

uint64_t SealedMessage.init(from:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v116 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v117 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v118 = &v112 - v12;
  v130 = sub_225CCF2D4();
  v125 = *(v130 - 8);
  v14 = MEMORY[0x28223BE20](v130, v13);
  v124 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v123 = &v112 - v17;
  v18 = sub_225CCEFC4();
  v114 = *(v18 - 8);
  v115 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v120 = &v112 - v20;
  type metadata accessor for SealedMessage.CodingKeys();
  swift_getWitnessTable();
  v122 = sub_225CCF714();
  v119 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v21);
  v23 = &v112 - v22;
  v128 = a2;
  v121 = a3;
  v24 = type metadata accessor for SealedMessage();
  v113 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v25);
  v129 = (&v112 - v26);
  v27 = a1[3];
  v127 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v28 = v23;
  v29 = v126;
  sub_225CCFCA4();
  if (v29)
  {
    LODWORD(v122) = 0;
    LODWORD(v126) = 0;
    v30 = v130;
    v139 = v29;
    v36 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    v37 = v123;
    if (swift_dynamicCast())
    {
      v120 = 0;

      v39 = v124;
      v38 = v125;
      v125[4](v124, v37, v30);
      *&v133 = 0;
      *(&v133 + 1) = 0xE000000000000000;
      sub_225CCF204();

      strcpy(&v133, "SealedMessage<");
      HIBYTE(v133) = -18;
      v132 = v128;
      swift_getMetatypeMetadata();
      v40 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v40);

      MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D19A10);
      v121 = *(&v133 + 1);
      v123 = v133;
      v41 = swift_allocError();
      v38[2](v42, v39, v30);
      v119 = "r decrypting encoded data: ";
      v43 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v128 = swift_allocError();
      v45 = v44;
      swift_getErrorValue();
      v46 = v131;
      v47 = v41;
      sub_225B21FAC(v46, &v133);

      v48 = *(&v133 + 1);
      if (*(&v133 + 1))
      {
        v116 = v134;
        v117 = v135;
        v118 = v133;
        v49 = v136;
        v50 = v137;
      }

      else
      {
        *&v133 = v41;
        v60 = v41;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v61 = v132;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v63 = [v61 code];
          v64 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v64;
          *(inited + 40) = v63;
          v49 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060);

          v65 = v41;
          v116 = 0;
          v117 = 0;
          v48 = MEMORY[0x277D84F90];
          v118 = 118;
          v50 = v41;
        }

        else
        {
          *&v133 = v41;
          v72 = v41;
          v73 = sub_225CCE954();
          v74 = v43;
          v75 = v118;
          v76 = swift_dynamicCast();
          v77 = *(v73 - 8);
          (*(v77 + 56))(v75, v76 ^ 1u, 1, v73);
          LODWORD(v73) = (*(v77 + 48))(v75, 1, v73);
          sub_2259CB640(v75, &unk_27D73B050);
          if (v73)
          {
            v78 = 118;
          }

          else
          {
            v78 = 23;
          }

          v118 = v78;
          v79 = v121;

          v48 = MEMORY[0x277D84F90];
          v49 = sub_225B2C374(MEMORY[0x277D84F90]);
          v80 = v41;
          v50 = v41;
          v117 = v79;
          v43 = v74;
          v116 = v123;
        }
      }

      v81 = v119 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v133 = v49;
      sub_225B2C4A0(v43, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v133);

      v83 = v133;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_225B29AA0(0, *(v48 + 2) + 1, 1, v48);
      }

      v85 = *(v48 + 2);
      v84 = *(v48 + 3);
      if (v85 >= v84 >> 1)
      {
        v48 = sub_225B29AA0((v84 > 1), v85 + 1, 1, v48);
      }

      *(v48 + 2) = v85 + 1;
      v86 = &v48[56 * v85];
      v87 = v121;
      *(v86 + 4) = v123;
      *(v86 + 5) = v87;
      *(v86 + 6) = 0xD00000000000001CLL;
      *(v86 + 7) = v81;
      *(v86 + 8) = 0x6F72662874696E69;
      *(v86 + 9) = 0xEB00000000293A6DLL;
      *(v86 + 10) = 496;
      *v45 = v118;
      v89 = v116;
      v88 = v117;
      *(v45 + 8) = v48;
      *(v45 + 16) = v89;
      *(v45 + 24) = v88;
      *(v45 + 32) = v83;
      *(v45 + 40) = v50;
      swift_willThrow();
      (v125[1])(v124, v130);
      v90 = v139;
    }

    else
    {

      *&v133 = 0;
      *(&v133 + 1) = 0xE000000000000000;
      sub_225CCF204();

      strcpy(&v133, "SealedMessage<");
      HIBYTE(v133) = -18;
      v139 = v128;
      swift_getMetatypeMetadata();
      v51 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v51);

      MEMORY[0x22AA6CE70](0xD000000000000018, 0x8000000225D199F0);
      v130 = v133;
      v124 = "r decrypting encoded data: ";
      v125 = *(&v133 + 1);
      v52 = v29;
      v53 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v128 = swift_allocError();
      v55 = v54;
      swift_getErrorValue();
      v56 = v138;
      v57 = v29;
      sub_225B21FAC(v56, &v133);

      v58 = *(&v133 + 1);
      if (*(&v133 + 1))
      {
        v123 = v133;
        v120 = v135;
        v121 = v134;
        v59 = v136;
        v119 = v137;
      }

      else
      {
        *&v133 = v29;
        v66 = v29;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v67 = v139;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          v68 = swift_initStackObject();
          *(v68 + 16) = xmmword_225CD30F0;
          *(v68 + 32) = 20;
          v69 = [v67 code];
          v70 = MEMORY[0x277D83BF8];
          *(v68 + 64) = MEMORY[0x277D83B88];
          *(v68 + 72) = v70;
          *(v68 + 40) = v69;
          v59 = sub_225B2C374(v68);
          swift_setDeallocating();
          sub_2259CB640(v68 + 32, &qword_27D73B060);

          v71 = v29;
          v120 = 0;
          v121 = 0;
          v58 = MEMORY[0x277D84F90];
          v123 = 1159;
        }

        else
        {
          *&v133 = v29;
          v91 = v29;
          v92 = sub_225CCE954();
          v93 = v117;
          v94 = swift_dynamicCast();
          v95 = *(v92 - 8);
          (*(v95 + 56))(v93, v94 ^ 1u, 1, v92);
          LODWORD(v92) = (*(v95 + 48))(v93, 1, v92);
          sub_2259CB640(v93, &unk_27D73B050);
          if (v92)
          {
            v96 = 1159;
          }

          else
          {
            v96 = 23;
          }

          v123 = v96;
          v97 = v125;

          v58 = MEMORY[0x277D84F90];
          v59 = sub_225B2C374(MEMORY[0x277D84F90]);
          v98 = v29;
          v120 = v97;
          v121 = v130;
        }

        v119 = v29;
      }

      v124 = (v124 | 0x8000000000000000);
      v99 = swift_isUniquelyReferenced_nonNull_native();
      *&v133 = v59;
      sub_225B2C4A0(v53, sub_225B2AC40, 0, v99, &v133);

      v100 = v133;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_225B29AA0(0, *(v58 + 2) + 1, 1, v58);
      }

      v102 = *(v58 + 2);
      v101 = *(v58 + 3);
      if (v102 >= v101 >> 1)
      {
        v58 = sub_225B29AA0((v101 > 1), v102 + 1, 1, v58);
      }

      *(v58 + 2) = v102 + 1;
      v103 = &v58[56 * v102];
      v104 = v124;
      v105 = v125;
      *(v103 + 4) = v130;
      *(v103 + 5) = v105;
      *(v103 + 6) = 0xD00000000000001CLL;
      *(v103 + 7) = v104;
      *(v103 + 8) = 0x6F72662874696E69;
      *(v103 + 9) = 0xEB00000000293A6DLL;
      *(v103 + 10) = 499;
      *v55 = v123;
      v106 = v120;
      v107 = v121;
      *(v55 + 8) = v58;
      *(v55 + 16) = v107;
      *(v55 + 24) = v106;
      *(v55 + 32) = v100;
      *(v55 + 40) = v119;
      swift_willThrow();
      v90 = v29;
    }

    result = __swift_destroy_boxed_opaque_existential_0(v127);
    v108 = v129;
    if (v122)
    {
    }

    if (v126)
    {
      return sub_2259BEF00(v108[2], v108[3]);
    }
  }

  else
  {
    v126 = v24;
    v32 = v119;
    v31 = v120;
    LOBYTE(v133) = 0;
    v33 = sub_225CCF684();
    v34 = v129;
    *v129 = v33;
    v34[1] = v35;
    LOBYTE(v139) = 1;
    sub_2259D94A8();
    sub_225CCF6E4();
    *(v34 + 1) = v133;
    LOBYTE(v133) = 2;
    sub_225CCF674();
    (*(v32 + 8))(v28, v122);
    v109 = v126;
    (*(v114 + 32))(v34 + v126[12], v31, v115);
    v110 = v113;
    (*(v113 + 16))(v116, v34, v109);
    __swift_destroy_boxed_opaque_existential_0(v127);
    return (*(v110 + 8))(v34, v109);
  }

  return result;
}

uint64_t HPKESuiteKwV1.sealMessageAEAD<A>(message:)(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v105 = a6;
  v97 = a5;
  v98 = a2;
  v96 = a1;
  v109 = *MEMORY[0x277D85DE8];
  v8 = sub_225CCEFC4();
  v94 = *(v8 - 8);
  v95 = v8;
  v10 = MEMORY[0x28223BE20](v8, v9);
  v93 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v92 = &v86 - v13;
  v14 = sub_225CCDD34();
  v102 = *(v14 - 8);
  v103 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_225CCDCA4();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v20 = sub_225CCDC44();
  v100 = *(v20 - 8);
  v101 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_225CCD124();
  v25 = *(v24 - 8);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v33;
  v34 = *(v33 + 16);
  v90 = v33 + 16;
  v89 = v34;
  v34(v32, a3, a4);
  if (swift_dynamicCast())
  {
    v86 = a3;
    v35 = v107;
    v88 = a4;
    v106 = *(&v108 + 1);
    v99 = v108;
  }

  else
  {
    sub_225CCC9E4();
    swift_allocObject();
    sub_225CCC9D4();
    v36 = v107;
    v99 = sub_225CCC9C4();
    v106 = v37;

    if (v36)
    {
      return result;
    }

    v86 = a3;
    v35 = 0;
    v88 = a4;
  }

  sub_225CCD114();
  v87 = sub_225CCD0C4();
  v40 = v39;
  (*(v25 + 8))(v29, v24);
  sub_225CCDC94();
  sub_225CCDC34();
  sub_225CCDC14();
  v41 = v35;
  (*(v100 + 8))(v23, v101);
  v43 = *(&v108 + 1);
  v42 = v108;
  sub_225CCDD24();
  sub_225CCDD04();
  v44 = v41;
  (*(v102 + 8))(v17, v103);
  v45 = v108;
  v46 = v104;
  v47 = *v104;
  v48 = v104[1];
  v49 = (v46 + *(type metadata accessor for HPKESuiteKwV1(0) + 28));
  v50 = *(v48 + 8);
  v85 = v48;
  v51 = v99;
  v52 = v106;
  v53 = v50(v42, v43, v45, *(&v45 + 1), *v49, v49[1], v99, v106, v47, v85);
  if (v44)
  {
    sub_2259BEF00(v45, *(&v45 + 1));
    sub_2259BEF00(v42, v43);

    return sub_2259BEF00(v51, v52);
  }

  v103 = v53;
  v104 = v40;
  v55 = v43 >> 62;
  v107 = 0;
  v102 = v54;
  v56 = v51;
  if ((v43 >> 62) > 1)
  {
    if (v55 != 2)
    {
      *(&v108 + 6) = 0;
      *&v108 = 0;
      v58 = &v108;
      v57 = &v108;
      goto LABEL_29;
    }

    v59 = *(v42 + 16);
    v60 = *(v42 + 24);
    v61 = sub_225CCCA44();
    if (v61)
    {
      v62 = sub_225CCCA74();
      if (__OFSUB__(v59, v62))
      {
        goto LABEL_35;
      }

      v61 += v59 - v62;
    }

    v63 = __OFSUB__(v60, v59);
    v64 = v60 - v59;
    if (!v63)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_17:
    v64 = (v42 >> 32) - v42;
    if (v42 >> 32 >= v42)
    {
      v61 = sub_225CCCA44();
      if (!v61)
      {
LABEL_21:
        v66 = sub_225CCCA64();
        if (v66 >= v64)
        {
          v67 = v64;
        }

        else
        {
          v67 = v66;
        }

        v68 = (v67 + v61);
        if (v61)
        {
          v57 = v68;
        }

        else
        {
          v57 = 0;
        }

        v58 = v61;
        goto LABEL_29;
      }

      v65 = sub_225CCCA74();
      if (!__OFSUB__(v42, v65))
      {
        v61 += v42 - v65;
        goto LABEL_21;
      }

LABEL_36:
      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v55)
  {
    goto LABEL_17;
  }

  *&v108 = v42;
  WORD4(v108) = v43;
  BYTE10(v108) = BYTE2(v43);
  BYTE11(v108) = BYTE3(v43);
  BYTE12(v108) = BYTE4(v43);
  BYTE13(v108) = BYTE5(v43);
  v57 = &v108 + BYTE6(v43);
  v58 = &v108;
LABEL_29:
  v69 = sub_2259D2BE8(v58, v57);
  v71 = v70;
  v72 = sub_225CCCF84();
  v74 = v73;
  sub_2259BEF00(v69, v71);
  v75 = sub_225CCCF84();
  v77 = v76;
  sub_2259BEF00(v45, *(&v45 + 1));
  sub_2259BEF00(v42, v43);
  v78 = shouldIncludeUnencryptedData()();
  sub_2259BEF00(v56, v106);
  if (v78)
  {
    v79 = v92;
    v80 = v88;
    v89(v92, v86, v88);
    v81 = 0;
  }

  else
  {
    v81 = 1;
    v80 = v88;
    v79 = v92;
  }

  v82 = v104;
  (*(v91 + 56))(v79, v81, 1, v80);
  v83 = v93;
  (*(v94 + 32))(v93, v79, v95);
  result = SealedMessage.init(keyID:data:unencryptedData:)(v87, v82, v103, v102, v83, v96);
  v84 = v98;
  *v98 = v72;
  v84[1] = v74;
  v84[2] = v75;
  v84[3] = v77;
  return result;
}

uint64_t sub_225A5A00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x277D838B0]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_225A6D08C(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_2259D8390(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_2259D840C(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t HPKESuiteKwV1.openMessageAEAD(cipherText:key:aad:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, unint64_t a5)
{
  v5 = *(a3 + 2);
  v6 = *(a3 + 3);
  v8 = *a3;
  v9 = v5;
  v10 = v6;
  return sub_225A5A10C(a1, a2, &v8, a4, a5);
}

uint64_t sub_225A5A10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v54 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v51 - v8;
  v10 = sub_225CCCF04();
  if (v11 >> 60 == 15)
  {
    v53 = 0x8000000225D19F00;
    v54 = 0x8000000225D17220;
    v12 = MEMORY[0x277D84F90];
    v13 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v15 = v14;
    v16 = sub_225CCE954();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v9, 1, 1, v16);
    LODWORD(v16) = (*(v17 + 48))(v9, 1, v16);
    sub_2259CB640(v9, &unk_27D73B050);
    if (v16)
    {
      v18 = 291;
    }

    else
    {
      v18 = 23;
    }

    v19 = sub_225B2C374(v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v19;
    sub_225B2C4A0(v13, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v55);

    v21 = v55;
    v22 = sub_225B29AA0(0, 1, 1, v12);
    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_225B29AA0((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    v25 = &v22[56 * v24];
    *(v25 + 4) = 0xD000000000000021;
    *(v25 + 5) = 0x8000000225D19ED0;
    v26 = v54;
    *(v25 + 6) = 0xD00000000000001CLL;
    *(v25 + 7) = v26;
    v27 = v53;
    *(v25 + 8) = 0xD000000000000020;
    *(v25 + 9) = v27;
    *(v25 + 10) = 581;
    *v15 = v18;
    *(v15 + 8) = v22;
    *(v15 + 16) = 0xD000000000000021;
    *(v15 + 24) = 0x8000000225D19ED0;
    *(v15 + 32) = v21;
    *(v15 + 40) = 0;
    swift_willThrow();
  }

  else
  {
    v52 = v10;
    v53 = v11;
    v28 = sub_225CCCF04();
    if (v29 >> 60 == 15)
    {
      v54 = 0x8000000225D17220;
      v51 = 0x8000000225D19F00;
      v30 = MEMORY[0x277D84F90];
      v31 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v33 = v32;
      v34 = sub_225CCE954();
      v35 = *(v34 - 8);
      (*(v35 + 56))(v9, 1, 1, v34);
      LODWORD(v34) = (*(v35 + 48))(v9, 1, v34);
      sub_2259CB640(v9, &unk_27D73B050);
      if (v34)
      {
        v36 = 292;
      }

      else
      {
        v36 = 23;
      }

      v37 = sub_225B2C374(v30);
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v55 = v37;
      sub_225B2C4A0(v31, sub_225B2AC40, 0, v38, &v55);

      v39 = v55;
      v40 = sub_225B29AA0(0, 1, 1, v30);
      v42 = *(v40 + 2);
      v41 = *(v40 + 3);
      v15 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v40 = sub_225B29AA0((v41 > 1), v42 + 1, 1, v40);
      }

      *(v40 + 2) = v15;
      v43 = &v40[56 * v42];
      *(v43 + 4) = 0xD000000000000026;
      *(v43 + 5) = 0x8000000225D19F30;
      v44 = v54;
      *(v43 + 6) = 0xD00000000000001CLL;
      *(v43 + 7) = v44;
      v45 = v51;
      *(v43 + 8) = 0xD000000000000020;
      *(v43 + 9) = v45;
      *(v43 + 10) = 584;
      *v33 = v36;
      *(v33 + 8) = v40;
      *(v33 + 16) = 0xD000000000000026;
      *(v33 + 24) = 0x8000000225D19F30;
      *(v33 + 32) = v39;
      *(v33 + 40) = 0;
      swift_willThrow();
      sub_2259B97A8(v52, v53);
    }

    else
    {
      v46 = v28;
      v47 = v29;
      v49 = v52;
      v48 = v53;
      v15 = (*(*(v5 + 8) + 16))(v28, v29);
      sub_2259B97A8(v46, v47);
      sub_2259B97A8(v49, v48);
    }
  }

  return v15;
}

void HPKESuiteKwV1.sealMessageHPKE<A>(message:to:encoder:)(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v97 = a5;
  v95 = a4;
  v94 = a3;
  v93 = a2;
  v92 = a1;
  v91 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v96 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v90 - v13;
  v15 = sub_225CCDEA4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = (&v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20.value = SecTrustRef.getLeafCertificate()().value;
  if (v20.value)
  {
    value = v20.value;
    v90 = v6;
    v98 = v7;
    v22 = SecCertificateCopyKey(v20.value);
    if (v22 && (v23 = v22, v24 = copyPublicKeyDataFromSecKeyPublic(_:)(v22), v26 = v25, v23, v26 >> 60 != 15))
    {
      v100 = v24;
      v101 = v26;
      sub_2259CB710(v24, v26);
      v75 = v98;
      sub_225CCDE94();
      v29 = v75;
      if (!v75)
      {
        HPKESuiteKwV1.sealMessageHPKE<A>(message:to:encoder:)(v92, v19, v93, v94, v95, v97, v91);
        (*(v16 + 8))(v19, v15);
        sub_2259B97A8(v24, v26);

        return;
      }

      sub_2259B97A8(v24, v26);
    }

    else
    {
      v97 = 0x8000000225D17220;
      v95 = 0x8000000225D172B0;
      v27 = MEMORY[0x277D84F90];
      v28 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v29 = swift_allocError();
      v31 = v30;
      v32 = sub_225CCE954();
      v33 = *(v32 - 8);
      (*(v33 + 56))(v14, 1, 1, v32);
      LODWORD(v32) = (*(v33 + 48))(v14, 1, v32);
      sub_2259CB640(v14, &unk_27D73B050);
      if (v32)
      {
        v34 = 249;
      }

      else
      {
        v34 = 23;
      }

      v35 = sub_225B2C374(v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100 = v35;
      sub_225B2C4A0(v28, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v100);

      v37 = v100;
      v38 = sub_225B29AA0(0, 1, 1, v27);
      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_225B29AA0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[56 * v40];
      *(v41 + 4) = 0xD000000000000035;
      *(v41 + 5) = 0x8000000225D19C10;
      v42 = v97;
      *(v41 + 6) = 0xD00000000000001CLL;
      *(v41 + 7) = v42;
      v43 = v95;
      *(v41 + 8) = 0xD000000000000024;
      *(v41 + 9) = v43;
      *(v41 + 10) = 598;
      *v31 = v34;
      *(v31 + 8) = v38;
      *(v31 + 16) = 0xD000000000000035;
      *(v31 + 24) = 0x8000000225D19C10;
      *(v31 + 32) = v37;
      *(v31 + 40) = 0;
      swift_willThrow();
    }
  }

  else
  {
    v98 = 0x8000000225D17220;
    v97 = 0x8000000225D172B0;
    v44 = MEMORY[0x277D84F90];
    v45 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v29 = swift_allocError();
    v47 = v46;
    v48 = sub_225CCE954();
    v49 = *(v48 - 8);
    (*(v49 + 56))(v14, 1, 1, v48);
    LODWORD(v48) = (*(v49 + 48))(v14, 1, v48);
    sub_2259CB640(v14, &unk_27D73B050);
    if (v48)
    {
      v50 = 269;
    }

    else
    {
      v50 = 23;
    }

    v51 = sub_225B2C374(v44);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v100 = v51;
    sub_225B2C4A0(v45, sub_225B2AC40, 0, v52, &v100);

    v53 = v100;
    v54 = sub_225B29AA0(0, 1, 1, v44);
    v56 = *(v54 + 2);
    v55 = *(v54 + 3);
    if (v56 >= v55 >> 1)
    {
      v54 = sub_225B29AA0((v55 > 1), v56 + 1, 1, v54);
    }

    *(v54 + 2) = v56 + 1;
    v57 = &v54[56 * v56];
    *(v57 + 4) = 0xD000000000000029;
    *(v57 + 5) = 0x8000000225D19BE0;
    v58 = v98;
    *(v57 + 6) = 0xD00000000000001CLL;
    *(v57 + 7) = v58;
    v59 = v97;
    *(v57 + 8) = 0xD000000000000024;
    *(v57 + 9) = v59;
    *(v57 + 10) = 595;
    *v47 = v50;
    *(v47 + 8) = v54;
    *(v47 + 16) = 0xD000000000000029;
    *(v47 + 24) = 0x8000000225D19BE0;
    *(v47 + 32) = v53;
    *(v47 + 40) = 0;
    swift_willThrow();
  }

  v97 = "t the message using HPKE";
  v60 = v29;
  v61 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v98 = swift_allocError();
  v63 = v62;
  swift_getErrorValue();
  v64 = v106;
  v65 = v29;
  sub_225B21FAC(v64, &v100);

  v66 = v101;
  if (v101)
  {
    v96 = v100;
    v95 = v102;
    v94 = v103;
    v67 = v104;
    v68 = v105;
  }

  else
  {
    v100 = v29;
    v69 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v70 = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v72 = [v70 code];
      v73 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v73;
      *(inited + 40) = v72;
      v67 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v74 = v29;
      v96 = 0;
      v95 = 0;
      v94 = 0;
      v66 = MEMORY[0x277D84F90];
    }

    else
    {
      v100 = v29;
      v76 = v29;
      v77 = sub_225CCE954();
      v78 = v96;
      v79 = swift_dynamicCast();
      v80 = *(v77 - 8);
      (*(v80 + 56))(v78, v79 ^ 1u, 1, v77);
      LODWORD(v80) = (*(v80 + 48))(v78, 1, v77);
      sub_2259CB640(v78, &unk_27D73B050);
      if (v80)
      {
        v81 = 0;
      }

      else
      {
        v81 = 23;
      }

      v96 = v81;
      v66 = MEMORY[0x277D84F90];
      v67 = sub_225B2C374(MEMORY[0x277D84F90]);
      v82 = v29;
      v95 = 0;
      v94 = 0;
    }

    v68 = v29;
  }

  v83 = v97 | 0x8000000000000000;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v100 = v67;
  sub_225B2C4A0(v61, sub_225B2AC40, 0, v84, &v100);

  v85 = v100;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v66 = sub_225B29AA0(0, *(v66 + 2) + 1, 1, v66);
  }

  v87 = *(v66 + 2);
  v86 = *(v66 + 3);
  if (v87 >= v86 >> 1)
  {
    v66 = sub_225B29AA0((v86 > 1), v87 + 1, 1, v66);
  }

  *(v66 + 2) = v87 + 1;
  v88 = &v66[56 * v87];
  *(v88 + 4) = 0;
  *(v88 + 5) = 0;
  *(v88 + 6) = 0xD00000000000001CLL;
  *(v88 + 7) = 0x8000000225D17220;
  *(v88 + 8) = 0xD000000000000024;
  *(v88 + 9) = v83;
  *(v88 + 10) = 604;
  *v63 = v96;
  v89 = v95;
  *(v63 + 8) = v66;
  *(v63 + 16) = v89;
  *(v63 + 24) = v94;
  *(v63 + 32) = v85;
  *(v63 + 40) = v68;
  swift_willThrow();
}

unint64_t sub_225A5B114()
{
  sub_225CCF204();

  type metadata accessor for HPKESuiteKwV1(0);
  v0 = sub_225CCCF84();
  MEMORY[0x22AA6CE70](v0);

  return 0xD000000000000018;
}

unint64_t HPKESuiteKwV1.openMessageHPKEWithoutDecoding(data:params:authenticationContext:)(uint64_t a1, unint64_t a2, uint64_t *a3, void *a4)
{
  v310 = a4;
  v300 = a2;
  v299 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v313 = &v292 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v332 = &v292 - v10;
  v311 = type metadata accessor for SESKeyForHPKE();
  v12 = MEMORY[0x28223BE20](v311, v11);
  v309 = &v292 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v319 = &v292 - v15;
  v306 = sub_225CCDF14();
  v294 = *(v306 - 8);
  v17 = MEMORY[0x28223BE20](v306, v16);
  v305 = &v292 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v312 = &v292 - v20;
  v318 = sub_225CCDDB4();
  v317 = *(v318 - 8);
  v22 = MEMORY[0x28223BE20](v318, v21);
  v308 = &v292 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v293 = &v292 - v26;
  MEMORY[0x28223BE20](v25, v27);
  v302 = &v292 - v28;
  v304 = sub_225CCDC84();
  v303 = *(v304 - 8);
  v30 = MEMORY[0x28223BE20](v304, v29);
  v301 = &v292 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v315 = &v292 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B540);
  MEMORY[0x28223BE20](v34 - 8, v35);
  v339 = &v292 - v36;
  v336 = type metadata accessor for HPKEPrivateKey(0);
  v335 = *(v336 - 8);
  v38 = MEMORY[0x28223BE20](v336, v37);
  v331 = (&v292 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v38, v40);
  v334 = &v292 - v41;
  v42 = sub_225CCDE54();
  v43 = *(v42 - 8);
  v45 = MEMORY[0x28223BE20](v42, v44);
  v307 = &v292 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v45, v47);
  v296 = &v292 - v49;
  v51 = MEMORY[0x28223BE20](v48, v50);
  v295 = &v292 - v52;
  MEMORY[0x28223BE20](v51, v53);
  v55 = &v292 - v54;
  v325 = sub_225CCE164();
  v324 = *(v325 - 8);
  MEMORY[0x28223BE20](v325, v56);
  v323 = &v292 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = sub_225CCDBA4();
  v327 = *(v328 - 8);
  MEMORY[0x28223BE20](v328, v58);
  v326 = &v292 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v342 = sub_225CCD954();
  v60 = *(v342 - 8);
  v62 = MEMORY[0x28223BE20](v342, v61);
  v333 = &v292 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v62, v64);
  v344 = &v292 - v66;
  v68 = MEMORY[0x28223BE20](v65, v67);
  v316 = &v292 - v69;
  v71 = MEMORY[0x28223BE20](v68, v70);
  v329 = &v292 - v72;
  v74 = MEMORY[0x28223BE20](v71, v73);
  v76 = &v292 - v75;
  MEMORY[0x28223BE20](v74, v77);
  v79 = &v292 - v78;
  v80 = a3[1];
  v321 = *a3;
  v320 = v80;
  v82 = a3[4];
  v81 = a3[5];
  v83 = a3[11];
  v337 = a3[10];
  v338 = v83;
  v354 = xmmword_225CD4150;
  v314 = v42;
  v298 = v43;
  v297 = v55;
  if (v81 >> 60 == 15)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v84 = off_28105B918;
    v85 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v86 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v86));
    v87 = v60;
    v88 = v342;
    v89 = *(v60 + 16);
    v89(v76, &v84[v85], v342);
    os_unfair_lock_unlock(&v84[v86]);
    v90 = sub_225CCD934();
    v91 = sub_225CCED04();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_2259A7000, v90, v91, "openMessageHPKE: pkISm is empty", v92, 2u);
      MEMORY[0x22AA6F950](v92, -1, -1);
    }

    v93 = *(v87 + 8);
    v93(v76, v88);
    v94 = v88;
    v95 = v93;
    v96 = v339;
  }

  else
  {
    sub_2259CB710(v82, v81);
    sub_2259BEF00(0, 0xC000000000000000);
    *&v354 = v82;
    *(&v354 + 1) = v81;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v97 = off_28105B918;
    v98 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v99 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v99));
    v100 = v60;
    v89 = *(v60 + 16);
    v101 = v342;
    v89(v79, &v97[v98], v342);
    v330 = v97;
    os_unfair_lock_unlock(&v97[v99]);
    v102 = v354;
    sub_2259CB710(v354, *(&v354 + 1));
    v103 = sub_225CCD934();
    v104 = sub_225CCED04();
    sub_2259BEF00(v102, *(&v102 + 1));
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v340 = v89;
      v322 = v100;
      v106 = v105;
      v107 = swift_slowAlloc();
      v346 = v107;
      *v106 = 136315138;
      v108 = sub_225CCCF84();
      v110 = sub_2259BE198(v108, v109, &v346);

      *(v106 + 4) = v110;
      _os_log_impl(&dword_2259A7000, v103, v104, "openMessageHPKE: envelope.params.pkISm = %s", v106, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v107);
      MEMORY[0x22AA6F950](v107, -1, -1);
      v89 = v340;
      MEMORY[0x22AA6F950](v106, -1, -1);

      v111 = v322;
      v95 = *(v322 + 8);
      v95(v79, v101);
      v94 = v101;
      v96 = v339;
      v87 = v111;
    }

    else
    {

      v95 = *(v100 + 8);
      v95(v79, v101);
      v94 = v101;
      v87 = v100;
      v96 = v339;
    }

    v84 = v330;
  }

  v112 = v338;
  v341 = v95;
  if (v338 >> 60 != 15)
  {
    v322 = v87;
    v340 = v89;
    v113 = (v343 + *(type metadata accessor for HPKESuiteKwV1(0) + 24));
    v114 = *v113;
    v115 = v113[1];
    v116 = v337;
    sub_2259CB710(v337, v112);
    sub_225A5EBD0(&qword_27D73AE10, MEMORY[0x277CC5540]);
    v117 = v323;
    v118 = v325;
    sub_225CCDB94();
    sub_2259CB710(v114, v115);
    v119 = v355;
    sub_2259DB138(v114, v115);
    v355 = v119;
    sub_2259BEF00(v114, v115);
    v120 = v326;
    sub_225CCDB84();
    (*(v324 + 8))(v117, v118);
    sub_225A5EBD0(&qword_27D73AE58, MEMORY[0x277CC5290]);
    v121 = v328;
    v122 = sub_225CCE154();
    v124 = sub_2259D732C(v122, v123);
    v125 = v116;

    v126 = sub_2259D8490(v124);
    v128 = v127;

    v129 = v120;
    v130 = v128;
    (*(v327 + 8))(v129, v121);
    if (sub_2259D8228(v126, v128, v125, v112))
    {
      v94 = v342;
      v87 = v322;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v131 = *(*v84 + *MEMORY[0x277D841D0] + 16);
      v132 = (*(*v84 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock(&v84[v132]);
      v133 = v316;
      v340(v316, &v84[v131], v94);
      os_unfair_lock_unlock(&v84[v132]);
      v134 = sub_225CCD934();
      v135 = sub_225CCED04();
      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        *v136 = 0;
        _os_log_impl(&dword_2259A7000, v134, v135, "openMessageHPKE: info matches envelope infoHash", v136, 2u);
        v137 = v136;
        v94 = v342;
        MEMORY[0x22AA6F950](v137, -1, -1);

        sub_2259BEF00(v126, v130);
        sub_2259B97A8(v337, v112);
      }

      else
      {
        sub_2259B97A8(v337, v112);
        sub_2259BEF00(v126, v130);
      }

      v95 = v341;
      v341(v133, v94);
      v89 = v340;
      v96 = v339;
    }

    else
    {
      v138 = v126;
      v328 = v128;
      v94 = v342;
      v96 = v339;
      v139 = v322;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v140 = *(*v84 + *MEMORY[0x277D841D0] + 16);
      v141 = (*(*v84 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock(&v84[v141]);
      v340(v329, &v84[v140], v94);
      v330 = v84;
      os_unfair_lock_unlock(&v84[v141]);
      v142 = v337;
      sub_2259CB6FC(v337, v112);
      v143 = v138;
      v144 = v138;
      v145 = v328;
      sub_2259CB710(v144, v328);
      v146 = sub_225CCD934();
      v147 = v139;
      v148 = v145;
      v149 = sub_225CCED14();
      sub_2259B97A8(v142, v112);
      sub_2259BEF00(v143, v148);
      if (os_log_type_enabled(v146, v149))
      {
        v150 = swift_slowAlloc();
        v327 = swift_slowAlloc();
        v346 = v327;
        *v150 = 136315394;
        v151 = sub_225CCCF84();
        v153 = sub_2259BE198(v151, v152, &v346);

        *(v150 + 4) = v153;
        *(v150 + 12) = 2080;
        v154 = sub_225CCCF84();
        v156 = sub_2259BE198(v154, v155, &v346);

        *(v150 + 14) = v156;
        v94 = v342;
        _os_log_impl(&dword_2259A7000, v146, v149, "openMessageHPKE: info does not match envelope's infoHash! envelope infoHash = %s, computed infoHash = %s", v150, 0x16u);
        v157 = v327;
        swift_arrayDestroy();
        MEMORY[0x22AA6F950](v157, -1, -1);
        MEMORY[0x22AA6F950](v150, -1, -1);

        sub_2259BEF00(v143, v148);
        sub_2259B97A8(v337, v338);
      }

      else
      {
        sub_2259B97A8(v142, v112);
        sub_2259BEF00(v143, v148);
      }

      v95 = v341;
      v341(v329, v94);
      v87 = v147;
      v84 = v330;
      v89 = v340;
    }
  }

  v353 = xmmword_225CD3100;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v158 = *(*v84 + *MEMORY[0x277D841D0] + 16);
  v159 = (*(*v84 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v84[v159]);
  v338 = v158;
  v337 = v87 + 16;
  v89(v344, &v84[v158], v94);
  os_unfair_lock_unlock(&v84[v159]);
  v160 = sub_225CCD934();
  v161 = sub_225CCED04();
  if (os_log_type_enabled(v160, v161))
  {
    v162 = swift_slowAlloc();
    *v162 = 0;
    _os_log_impl(&dword_2259A7000, v160, v161, "openMessageHPKE: using HPKE library", v162, 2u);
    v163 = v162;
    v95 = v341;
    MEMORY[0x22AA6F950](v163, -1, -1);
  }

  v164 = (v87 + 8);
  v95(v344, v94);
  v165 = type metadata accessor for HPKESuiteKwV1(0);
  sub_225A0DE54(v343 + v165[8], v96, &qword_27D73B540);
  if ((*(v335 + 48))(v96, 1, v336) == 1)
  {
    sub_2259CB640(v96, &qword_27D73B540);
    v344 = 0x8000000225D17220;
    v166 = MEMORY[0x277D84F90];
    v167 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v168 = swift_allocError();
    v170 = v169;
    v171 = sub_225CCE954();
    v172 = *(v171 - 8);
    v173 = v332;
    (*(v172 + 56))(v332, 1, 1, v171);
    LODWORD(v171) = (*(v172 + 48))(v173, 1, v171);
    sub_2259CB640(v173, &unk_27D73B050);
    if (v171)
    {
      v174 = 1160;
    }

    else
    {
      v174 = 23;
    }

    v175 = sub_225B2C374(v166);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v346 = v175;
    sub_225B2C4A0(v167, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v346);

    v177 = v346;
    v178 = sub_225B29AA0(0, 1, 1, v166);
    v180 = *(v178 + 2);
    v179 = *(v178 + 3);
    if (v180 >= v179 >> 1)
    {
      v178 = sub_225B29AA0((v179 > 1), v180 + 1, 1, v178);
    }

    *(v178 + 2) = v180 + 1;
    v181 = &v178[56 * v180];
    *(v181 + 4) = 0xD000000000000016;
    *(v181 + 5) = 0x8000000225D19C50;
    v182 = v344;
    *(v181 + 6) = 0xD00000000000001CLL;
    *(v181 + 7) = v182;
    *(v181 + 8) = 0xD000000000000042;
    *(v181 + 9) = 0x8000000225D19C70;
    *(v181 + 10) = 726;
    *v170 = v174;
    *(v170 + 8) = v178;
    *(v170 + 16) = 0xD000000000000016;
    *(v170 + 24) = 0x8000000225D19C50;
    *(v170 + 32) = v177;
    *(v170 + 40) = 0;
    v183 = v168;
    swift_willThrow();
    goto LABEL_48;
  }

  v184 = v334;
  sub_225A5EB00(v96, v334, type metadata accessor for HPKEPrivateKey);
  v185 = v184;
  v186 = v331;
  sub_225A5EB68(v185, v331, type metadata accessor for HPKEPrivateKey);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v340 = v89;
    if (EnumCaseMultiPayload == 1)
    {
      v336 = v165;
      v344 = *v186;
      v188 = v344;
      v189 = v94;
      v190 = v186[1];
      os_unfair_lock_lock(&v84[v159]);
      v191 = v333;
      v89(v333, &v84[v338], v189);
      os_unfair_lock_unlock(&v84[v159]);
      v339 = v190;

      sub_225B420DC(v191, v188, v190);

      v192 = v341;
      v341(v191, v189);
      os_unfair_lock_lock(&v84[v159]);
      v89(v191, &v84[v338], v189);
      os_unfair_lock_unlock(&v84[v159]);
      v193 = v343;
      MEMORY[0x28223BE20](v194, v195);
      v196 = v321;
      *(&v292 - 4) = v193;
      *(&v292 - 3) = v196;
      v197 = v320;
      *(&v292 - 2) = v320;
      Logger.cryptoParam(_:)(sub_225A5EC78);
      v198 = v191;
      v199 = v164;
      v192(v198, v189);
      v200 = v312;
      v201 = v355;
      sub_225CCDED4();
      v183 = v201;
      if (!v201)
      {
        v339 = v159;
        v344 = v199;
        v202 = v294;
        (*(v294 + 16))(v305, v200, v306);
        v203 = v336;
        (*(v317 + 16))(v293, v193 + *(v336 + 20), v318);
        v204 = (v193 + *(v203 + 24));
        v205 = *v204;
        v206 = v204[1];
        sub_2259CB710(v321, v197);
        sub_2259CB710(v205, v206);
        v207 = v306;
        sub_225CCDE34();
        v355 = 0;
        (*(v202 + 8))(v200, v207);
        v263 = v296;
        v159 = v339;
        goto LABEL_65;
      }

      goto LABEL_47;
    }

    v216 = v89;
    v217 = v319;
    sub_225A5EB00(v186, v319, type metadata accessor for SESKeyForHPKE);
    os_unfair_lock_lock(&v84[v159]);
    v218 = v333;
    v216(v333, &v84[v338], v94);
    os_unfair_lock_unlock(&v84[v159]);
    sub_225B3EF24();
    v341(v218, v94);
    sub_225A5EB68(v217, v309, type metadata accessor for SESKeyForHPKE);
    v219 = v343;
    (*(v317 + 16))(v308, v343 + v165[5], v318);
    v220 = (v219 + v165[6]);
    v221 = *v220;
    v222 = v220[1];
    v344 = v164;
    sub_2259CB710(v321, v320);
    sub_2259CB710(v221, v222);
    sub_225A5EBD0(&qword_27D73B548, type metadata accessor for SESKeyForHPKE);
    v263 = v307;
    v223 = v355;
    sub_225CCDE34();
    v183 = v223;
    if (v223)
    {
      sub_225A5EC18(v319, type metadata accessor for SESKeyForHPKE);
LABEL_47:
      sub_225A5EC18(v334, type metadata accessor for HPKEPrivateKey);
      goto LABEL_48;
    }

    v355 = 0;
    sub_225A5EC18(v319, type metadata accessor for SESKeyForHPKE);
  }

  else
  {
    v208 = *v186;
    os_unfair_lock_lock(&v84[v159]);
    v209 = v333;
    v89(v333, &v84[v338], v94);
    os_unfair_lock_unlock(&v84[v159]);
    sub_225B3ED40();
    v341(v209, v94);
    v210 = v310;
    v211 = v310;
    v212 = v208;
    v213 = v315;
    v214 = v355;
    sub_225A5D800(v212, v210, v315);
    v215 = v164;
    v183 = v214;
    if (v214)
    {
      sub_225A5EC18(v334, type metadata accessor for HPKEPrivateKey);

LABEL_48:
      v355 = 0x8000000225D19CC0;
      v343 = "r decrypting encoded data: ";
      v342 = "no skR to open message";
      v226 = v183;
      v227 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v228 = swift_allocError();
      v230 = v229;
      swift_getErrorValue();
      v231 = v352;
      v232 = v183;
      sub_225B21FAC(v231, &v346);

      v233 = v347;
      v344 = v228;
      if (v347)
      {
        v234 = v183;
        v341 = v346;
        v340 = v348;
        v339 = v349;
        v236 = v350;
        v235 = v351;
      }

      else
      {
        v346 = v183;
        v237 = v183;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v238 = v345;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v240 = [v238 code];
          v241 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v241;
          *(inited + 40) = v240;
          v236 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060);

          v242 = v183;
          v340 = 0;
          v339 = 0;
          v233 = MEMORY[0x277D84F90];
          v243 = 284;
          v244 = &v354 + 8;
        }

        else
        {
          v346 = v183;
          v245 = v183;
          v246 = sub_225CCE954();
          v247 = v313;
          v248 = swift_dynamicCast();
          v249 = *(v246 - 8);
          (*(v249 + 56))(v247, v248 ^ 1u, 1, v246);
          v250 = (*(v249 + 48))(v247, 1, v246);
          sub_2259CB640(v247, &unk_27D73B050);
          if (v250)
          {
            v251 = 284;
          }

          else
          {
            v251 = 23;
          }

          v341 = v251;
          v233 = MEMORY[0x277D84F90];
          v236 = sub_225B2C374(MEMORY[0x277D84F90]);
          v252 = v183;
          v340 = 0xD000000000000028;
          v243 = v355;
          v244 = &v353 + 8;
        }

        *(v244 - 32) = v243;
        v234 = v183;
        v235 = v183;
      }

      v253 = v343 | 0x8000000000000000;
      v254 = v342 | 0x8000000000000000;
      v255 = swift_isUniquelyReferenced_nonNull_native();
      v346 = v236;
      sub_225B2C4A0(v227, sub_225B2AC40, 0, v255, &v346);

      v256 = v346;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v233 = sub_225B29AA0(0, *(v233 + 2) + 1, 1, v233);
      }

      v258 = *(v233 + 2);
      v257 = *(v233 + 3);
      if (v258 >= v257 >> 1)
      {
        v233 = sub_225B29AA0((v257 > 1), v258 + 1, 1, v233);
      }

      *(v233 + 2) = v258 + 1;
      v259 = &v233[56 * v258];
      v260 = v355;
      *(v259 + 4) = 0xD000000000000028;
      *(v259 + 5) = v260;
      *(v259 + 6) = 0xD00000000000001CLL;
      *(v259 + 7) = v253;
      *(v259 + 8) = 0xD000000000000042;
      *(v259 + 9) = v254;
      *(v259 + 10) = 735;
      *v230 = v341;
      v261 = v340;
      *(v230 + 8) = v233;
      *(v230 + 16) = v261;
      *(v230 + 24) = v339;
      *(v230 + 32) = v256;
      *(v230 + 40) = v235;
      swift_willThrow();

      goto LABEL_62;
    }

    v344 = v215;
    (*(v303 + 16))(v301, v213, v304);
    v224 = v343;
    (*(v317 + 16))(v302, v343 + v165[5], v318);
    sub_2259CB710(*(v224 + v165[6]), *(v224 + v165[6] + 8));
    sub_2259CB710(v321, v320);
    v225 = v304;
    sub_225CCDE34();
    v355 = 0;
    v340 = v89;

    (*(v303 + 8))(v315, v225);
    v263 = v295;
  }

LABEL_65:
  sub_225A5EC18(v334, type metadata accessor for HPKEPrivateKey);
  v264 = v298;
  v265 = v297;
  (*(v298 + 32))(v297, v263, v314);
  os_unfair_lock_lock(&v84[v159]);
  v266 = v333;
  v267 = v342;
  v340(v333, &v84[v338], v342);
  os_unfair_lock_unlock(&v84[v159]);
  v268 = v299;
  v269 = v300;
  sub_2259CB710(v299, v300);
  sub_225B42320();
  sub_2259BEF00(v268, v269);
  v341(v266, v267);
  v346 = v268;
  v347 = v269;
  swift_beginAccess();
  v345 = v354;
  sub_2259CB710(v354, *(&v354 + 1));
  sub_2259DB42C();
  v270 = v355;
  v271 = sub_225CCDE44();
  v355 = v270;
  if (v270)
  {
    sub_2259BEF00(v345, *(&v345 + 1));
    (*(v264 + 8))(v265, v314);
    v183 = v355;
    goto LABEL_48;
  }

  v273 = v271;
  v274 = v272;
  sub_2259BEF00(v345, *(&v345 + 1));
  sub_2259B97A8(v353, *(&v353 + 1));
  *&v353 = v273;
  *(&v353 + 1) = v274;
  os_unfair_lock_lock(&v84[v159]);
  v340(v266, &v84[v338], v267);
  os_unfair_lock_unlock(&v84[v159]);
  sub_225B3F108(v266, &v353);
  v341(v266, v267);
  (*(v264 + 8))(v265, v314);
  v275 = *(&v353 + 1);
  if (*(&v353 + 1) >> 60 != 15)
  {
    v230 = v353;
    v291 = v354;
    sub_2259CB710(v353, *(&v353 + 1));
    sub_2259BEF00(v291, *(&v291 + 1));
    sub_2259B97A8(v230, v275);
    return v230;
  }

  v344 = 0x8000000225D17220;
  v276 = MEMORY[0x277D84F90];
  v277 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v279 = v278;
  v280 = sub_225CCE954();
  v281 = *(v280 - 8);
  v282 = v332;
  (*(v281 + 56))(v332, 1, 1, v280);
  LODWORD(v280) = (*(v281 + 48))(v282, 1, v280);
  sub_2259CB640(v282, &unk_27D73B050);
  if (v280)
  {
    v283 = 1161;
  }

  else
  {
    v283 = 23;
  }

  v284 = sub_225B2C374(v276);
  v285 = swift_isUniquelyReferenced_nonNull_native();
  v346 = v284;
  sub_225B2C4A0(v277, sub_225B2AC40, 0, v285, &v346);

  v286 = v346;
  v287 = sub_225B29AA0(0, 1, 1, v276);
  v230 = *(v287 + 2);
  v288 = *(v287 + 3);
  if (v230 >= v288 >> 1)
  {
    v287 = sub_225B29AA0((v288 > 1), v230 + 1, 1, v287);
  }

  *(v287 + 2) = v230 + 1;
  v289 = &v287[56 * v230];
  *(v289 + 4) = 0xD000000000000017;
  *(v289 + 5) = 0x8000000225D19CF0;
  v290 = v344;
  *(v289 + 6) = 0xD00000000000001CLL;
  *(v289 + 7) = v290;
  *(v289 + 8) = 0xD000000000000042;
  *(v289 + 9) = 0x8000000225D19C70;
  *(v289 + 10) = 739;
  *v279 = v283;
  *(v279 + 8) = v287;
  *(v279 + 16) = 0xD000000000000017;
  *(v279 + 24) = 0x8000000225D19CF0;
  *(v279 + 32) = v286;
  *(v279 + 40) = 0;
  swift_willThrow();
LABEL_62:
  sub_2259BEF00(v354, *(&v354 + 1));
  sub_2259B97A8(v353, *(&v353 + 1));
  return v230;
}

void sub_225A5D800(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a1;
  v48 = a3;
  v4 = sub_225CCDC84();
  v49 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v45 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v45 - v14;
  v16 = sub_225CCD954();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v45 - v23;
  if (a2)
  {
    v46 = v12;
    v47 = v4;
    v25 = qword_28105B910;
    v26 = a2;
    if (v25 != -1)
    {
      swift_once();
    }

    v27 = off_28105B918;
    v28 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v29 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v29));
    (*(v17 + 16))(v21, &v27[v28], v16);
    os_unfair_lock_unlock(&v27[v29]);
    v30 = sub_225CCD934();
    v31 = sub_225CCED04();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2259A7000, v30, v31, "Instantiating SecureEnclave PrivateKey with an authentication context", v32, 2u);
      MEMORY[0x22AA6F950](v32, -1, -1);
    }

    (*(v17 + 8))(v21, v16);
    v33 = v50;
    v34 = v51;
    sub_225CCDC54();
    if (v34)
    {

      return;
    }

    sub_225CCDC64();
    v35 = v26;
    v36 = v46;
    sub_225CCDC74();
    v44 = v47;
    (*(v49 + 8))(v15, v47);

    v4 = v44;
    v8 = v36;
    goto LABEL_14;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v37 = off_28105B918;
  v38 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v39 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v39));
  (*(v17 + 16))(v24, &v37[v38], v16);
  os_unfair_lock_unlock(&v37[v39]);
  v40 = sub_225CCD934();
  v41 = sub_225CCED04();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_2259A7000, v40, v41, "Instantiating SecureEnclave PrivateKey with no authentication context", v42, 2u);
    MEMORY[0x22AA6F950](v42, -1, -1);
  }

  (*(v17 + 8))(v24, v16);
  v43 = v51;
  sub_225CCDC54();
  if (!v43)
  {
LABEL_14:
    (*(v49 + 32))(v48, v8, v4);
  }
}

uint64_t sub_225A5DD10()
{
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000034, 0x8000000225D19E70);
  type metadata accessor for HPKESuiteKwV1(0);
  sub_225CCDDB4();
  sub_225CCF434();
  MEMORY[0x22AA6CE70](0x203D206F666E6920, 0xE800000000000000);
  v0 = sub_225CCCF84();
  MEMORY[0x22AA6CE70](v0);

  MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D19EB0);
  v1 = sub_225CCCF84();
  MEMORY[0x22AA6CE70](v1);

  return 0;
}

uint64_t sub_225A5DE6C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, unint64_t a5)
{
  v5 = *(a3 + 2);
  v6 = *(a3 + 3);
  v8 = *a3;
  v9 = v5;
  v10 = v6;
  return sub_225A5A10C(a1, a2, &v8, a4, a5);
}

unint64_t sub_225A5DF5C(uint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD000000000000010;
}

uint64_t sub_225A5E09C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  a2[2] = a1[2];
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
  *a2 = v3;
  a2[1] = v2;
}

unint64_t sub_225A5E13C()
{
  result = qword_27D73B428;
  if (!qword_27D73B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B428);
  }

  return result;
}

unint64_t sub_225A5E190()
{
  result = qword_27D73B448;
  if (!qword_27D73B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B448);
  }

  return result;
}

uint64_t sub_225A5E1E4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_225A5E260()
{
  result = qword_27D73B458;
  if (!qword_27D73B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B458);
  }

  return result;
}

double sub_225A5E2B4(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  return result;
}

uint64_t sub_225A5E2FC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v59 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  v45 = v9;
  v46 = v5;
  while (1)
  {
    v12 = v8;
    v13 = v10;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v15 = __clz(__rbit64(v12)) | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = (*(a1 + 56) + 32 * v15);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    v23 = v19[3];
    v52[0] = v18;
    v52[1] = v17;
    v52[2] = v20;
    v52[3] = v21;
    v52[4] = v22;
    v52[5] = v23;

    a2(&v53, v52);

    v24 = v54;
    if (!v54)
    {
LABEL_22:
      sub_2259D8710();
    }

    v25 = v53;
    v27 = v55;
    v26 = v56;
    v49 = v57;
    v50 = v58;
    v28 = *v59;
    v30 = sub_2259F18D4(v53, v54);
    v31 = v28[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_24;
    }

    v34 = v29;
    if (v28[3] >= v33)
    {
      if ((a4 & 1) == 0)
      {
        sub_225A44638();
      }
    }

    else
    {
      sub_225A410F4(v33, a4 & 1);
      v35 = sub_2259F18D4(v25, v24);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_26;
      }

      v30 = v35;
    }

    v37 = (v12 - 1) & v12;
    v38 = *v59;
    if (v34)
    {

      v11 = (v38[7] + 32 * v30);
      *v11 = v27;
      v11[1] = v26;
      v11[2] = v49;
      v11[3] = v50;
    }

    else
    {
      v38[(v30 >> 6) + 8] |= 1 << v30;
      v39 = (v38[6] + 16 * v30);
      *v39 = v25;
      v39[1] = v24;
      v40 = (v38[7] + 32 * v30);
      *v40 = v27;
      v40[1] = v26;
      v40[2] = v49;
      v40[3] = v50;
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_25;
      }

      v38[2] = v43;
    }

    a4 = 1;
    v10 = v13;
    v9 = v45;
    v5 = v46;
    v8 = v37;
  }

  v14 = v10;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
      goto LABEL_22;
    }

    v12 = *(v5 + 8 * v13);
    ++v14;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_225CCFAC4();
  __break(1u);
  return result;
}

unint64_t sub_225A5E5E0()
{
  result = qword_27D73B488;
  if (!qword_27D73B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B488);
  }

  return result;
}

uint64_t sub_225A5E634(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73B478);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225A5E6B8()
{
  result = qword_27D73B498;
  if (!qword_27D73B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B498);
  }

  return result;
}

unint64_t sub_225A5E724()
{
  result = qword_27D73B4C0;
  if (!qword_27D73B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B4C0);
  }

  return result;
}

unint64_t sub_225A5E778()
{
  result = qword_27D73B4D0;
  if (!qword_27D73B4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B4D0);
  }

  return result;
}

unint64_t sub_225A5E7E4()
{
  result = qword_27D73B4E0;
  if (!qword_27D73B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B4E0);
  }

  return result;
}

uint64_t sub_225A5E8A0(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_225A5E8C4()
{
  result = qword_27D73B4F8;
  if (!qword_27D73B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B4F8);
  }

  return result;
}

unint64_t sub_225A5E980()
{
  result = qword_27D73B508;
  if (!qword_27D73B508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B508);
  }

  return result;
}

unint64_t sub_225A5E9D4()
{
  result = qword_27D73B510;
  if (!qword_27D73B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B510);
  }

  return result;
}

unint64_t sub_225A5EA28()
{
  result = qword_27D73B520;
  if (!qword_27D73B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B520);
  }

  return result;
}

unint64_t sub_225A5EA7C()
{
  result = qword_27D73B530;
  if (!qword_27D73B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B530);
  }

  return result;
}

uint64_t sub_225A5EB00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_225A5EB68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_225A5EBD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_225A5EC18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_225A5EC84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x687469726F676C61 && a2 == 0xE90000000000006DLL;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D61726170 && a2 == 0xE600000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_225CCF934();

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

uint64_t sub_225A5EDA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x687469726F676C61 && a2 == 0xE90000000000006DLL;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1937335659 && a2 == 0xE400000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D61726170 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_225CCF934();

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

uint64_t sub_225A5EEBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v3 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1833266032 && a2 == 0xE400000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68736148526B70 && a2 == 0xE700000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D53496B70 && a2 == 0xE500000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6873614853496B70 && a2 == 0xE800000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1834183536 && a2 == 0xE400000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x687361486F666E69 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_225CCF934();

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

uint64_t sub_225A5F104(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v148 = a8;
  v147 = a7;
  v146 = a6;
  v144 = a5;
  v152 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v143 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v138 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BA40);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v22 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v138 - v24;
  v145 = sub_225CCDD74();
  v142 = *(v145 - 8);
  v27 = MEMORY[0x28223BE20](v145, v26);
  v29 = &v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = &v138 - v32;
  MEMORY[0x28223BE20](v31, v34);
  v141 = &v138 - v35;
  v149 = sub_225CCDD34();
  v150 = *(v149 - 8);
  MEMORY[0x28223BE20](v149, v36);
  v151 = &v138 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_225CCDC44();
  result = MEMORY[0x28223BE20](v38, v39);
  v44 = &v138 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v45 != 2)
    {
      goto LABEL_14;
    }

    v47 = *(a1 + 16);
    v46 = *(a1 + 24);
    v48 = __OFSUB__(v46, v47);
    v49 = v46 - v47;
    if (!v48)
    {
      if (v49 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    v41 = sub_225B29AA0((v49 > 1), v25, 1, v41);
LABEL_50:
    *(v41 + 2) = v25;
    v99 = &v41[56 * v22];
    *(v99 + 4) = a2;
    *(v99 + 5) = a3;
    v100 = v152;
    *(v99 + 6) = 0xD00000000000001CLL;
    *(v99 + 7) = v100;
    v101 = v151;
    *(v99 + 8) = 0xD000000000000017;
    *(v99 + 9) = v101;
    *(v99 + 10) = 779;
    *v33 = a1;
    *(v33 + 1) = v41;
    *(v33 + 2) = a2;
    *(v33 + 3) = a3;
    *(v33 + 4) = v17;
    *(v33 + 5) = 0;
    return swift_willThrow();
  }

  if (v45)
  {
    v49 = (HIDWORD(a1) - a1);
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (v49 == 16)
      {
        goto LABEL_8;
      }

LABEL_14:
      a3 = 0xD000000000000017;
      v156 = 0;
      v157 = 0xE000000000000000;
      v33 = &v156;
      sub_225CCF204();

      v156 = 0xD000000000000019;
      v157 = 0x8000000225D19D10;
      if (v45 <= 1)
      {
        if (!v45)
        {
          v50 = BYTE6(a2);
          goto LABEL_29;
        }

        LODWORD(v50) = HIDWORD(a1) - a1;
        if (!__OFSUB__(HIDWORD(a1), a1))
        {
          v50 = v50;
          goto LABEL_29;
        }

        __break(1u);
        goto LABEL_71;
      }

      v50 = 0;
      if (v45 != 2 || (v52 = *(a1 + 16), v51 = *(a1 + 24), v48 = __OFSUB__(v51, v52), v50 = v51 - v52, !v48))
      {
LABEL_29:
        v154 = v50;
        v67 = sub_225CCF824();
        MEMORY[0x22AA6CE70](v67);

        MEMORY[0x22AA6CE70](0x20746F6E20736920, 0xE800000000000000);
        v154 = 16;
        v68 = sub_225CCF824();
        MEMORY[0x22AA6CE70](v68);

        v70 = v156;
        v69 = v157;
        v152 = 0x8000000225D17220;
        v151 = 0x8000000225D19E10;
        v71 = MEMORY[0x277D84F90];
        v72 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v74 = v73;
        v75 = sub_225CCE954();
        v76 = *(v75 - 8);
        (*(v76 + 56))(v17, 1, 1, v75);
        LODWORD(v75) = (*(v76 + 48))(v17, 1, v75);
        sub_2259CB640(v17, &unk_27D73B050);
        if (v75)
        {
          v77 = 281;
        }

        else
        {
          v77 = 23;
        }

        v78 = sub_225B2C374(v71);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v156 = v78;
        sub_225B2C4A0(v72, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v156);

        v80 = v156;
        v81 = sub_225B29AA0(0, 1, 1, v71);
        v83 = *(v81 + 2);
        v82 = *(v81 + 3);
        if (v83 >= v82 >> 1)
        {
          v81 = sub_225B29AA0((v82 > 1), v83 + 1, 1, v81);
        }

        *(v81 + 2) = v83 + 1;
        v84 = &v81[56 * v83];
        *(v84 + 4) = v70;
        *(v84 + 5) = v69;
        v85 = v152;
        *(v84 + 6) = 0xD00000000000001CLL;
        *(v84 + 7) = v85;
        v86 = v151;
        *(v84 + 8) = 0xD000000000000017;
        *(v84 + 9) = v86;
        *(v84 + 10) = 776;
        *v74 = v77;
        *(v74 + 8) = v81;
        *(v74 + 16) = v70;
        *(v74 + 24) = v69;
        *(v74 + 32) = v80;
        *(v74 + 40) = 0;
        return swift_willThrow();
      }

      __break(1u);
LABEL_21:
      if (v45 == 2)
      {
        v54 = *(a3 + 16);
        v53 = *(a3 + 24);
        v48 = __OFSUB__(v53, v54);
        v55 = v53 - v54;
        if (!v48)
        {
          if (v55 == 12)
          {
            goto LABEL_24;
          }

          goto LABEL_37;
        }

        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      goto LABEL_37;
    }

    goto LABEL_68;
  }

  if (BYTE6(a2) != 16)
  {
    goto LABEL_14;
  }

LABEL_8:
  v45 = v152 >> 62;
  if ((v152 >> 62) > 1)
  {
    goto LABEL_21;
  }

  if (!v45)
  {
    if (BYTE6(v152) == 12)
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_73;
  }

  if (HIDWORD(a3) - a3 != 12)
  {
LABEL_37:
    v156 = 0;
    v157 = 0xE000000000000000;
    sub_225CCF204();

    v156 = 0xD00000000000001BLL;
    v157 = 0x8000000225D19D50;
    if (v45 > 1)
    {
      v87 = 0;
      if (v45 != 2)
      {
        goto LABEL_46;
      }

      v89 = *(a3 + 16);
      v88 = *(a3 + 24);
      v48 = __OFSUB__(v88, v89);
      v87 = v88 - v89;
      if (!v48)
      {
        goto LABEL_46;
      }

      __break(1u);
    }

    else if (!v45)
    {
      v87 = BYTE6(v152);
      goto LABEL_46;
    }

    LODWORD(v87) = HIDWORD(a3) - a3;
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v87 = v87;
LABEL_46:
      v154 = v87;
      v90 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v90);

      MEMORY[0x22AA6CE70](0x20746F6E20736920, 0xE800000000000000);
      v154 = 12;
      v91 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v91);

      a2 = v156;
      a3 = v157;
      v152 = 0x8000000225D17220;
      v151 = 0x8000000225D19E10;
      v92 = MEMORY[0x277D84F90];
      v93 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v33 = v94;
      v95 = sub_225CCE954();
      v96 = *(v95 - 8);
      (*(v96 + 56))(v17, 1, 1, v95);
      LODWORD(v95) = (*(v96 + 48))(v17, 1, v95);
      sub_2259CB640(v17, &unk_27D73B050);
      if (v95)
      {
        LOWORD(a1) = 281;
      }

      else
      {
        LOWORD(a1) = 23;
      }

      v97 = sub_225B2C374(v92);
      v98 = swift_isUniquelyReferenced_nonNull_native();
      v156 = v97;
      sub_225B2C4A0(v93, sub_225B2AC40, 0, v98, &v156);

      v17 = v156;
      v41 = sub_225B29AA0(0, 1, 1, v92);
      v22 = *(v41 + 2);
      v49 = *(v41 + 3);
      v25 = (v22 + 1);
      if (v22 < v49 >> 1)
      {
        goto LABEL_50;
      }

      goto LABEL_69;
    }

LABEL_74:
    __break(1u);
    return result;
  }

LABEL_24:
  v138 = v42;
  v139 = result;
  v156 = a1;
  v157 = a2;
  v56 = v44;
  sub_2259CB710(a1, a2);
  v140 = v56;
  sub_225CCDC24();
  v156 = a3;
  v157 = v152;
  sub_2259CB710(a3, v152);
  sub_2259DB42C();
  v57 = v151;
  v58 = v153;
  sub_225CCDD14();
  v17 = v58;
  if (!v58)
  {
    v102 = (v150 + 16);
    v103 = (v150 + 56);
    v104 = v146;
    v156 = v147;
    v157 = v148;
    if (v146 >> 60 == 15)
    {
      v105 = v149;
      (*v102)(v22, v57, v149);
      (*v103)(v22, 0, 1, v105);
      sub_225CCDCF4();
      sub_2259CB640(v22, &qword_27D73BA40);
      v33 = v29;
    }

    else
    {
      v112 = v149;
      (*v102)(v25, v57, v149);
      (*v103)(v25, 0, 1, v112);
      v113 = v144;
      v154 = v144;
      v155 = v104;
      sub_2259CB710(v144, v104);
      sub_225CCDCE4();
      sub_2259CB640(v25, &qword_27D73BA40);
      sub_2259B97A8(v113, v104);
    }

    v127 = v142;
    v128 = v141;
    (*(v142 + 32))(v141, v33, v145);
    v129 = sub_225CCDD44();
    v131 = v130;
    v132 = sub_225CCDD54();
    v134 = v133;
    v154 = v129;
    v155 = v131;
    v159 = MEMORY[0x277CC9318];
    v160 = MEMORY[0x277CC9300];
    v156 = v132;
    v157 = v133;
    v135 = __swift_project_boxed_opaque_existential_1(&v156, MEMORY[0x277CC9318]);
    v137 = *v135;
    v136 = v135[1];
    sub_2259CB710(v129, v131);
    sub_2259CB710(v132, v134);
    sub_225C0EA34(v137, v136);
    sub_2259BEF00(v132, v134);
    sub_2259BEF00(v129, v131);
    (*(v127 + 8))(v128, v145);
    (*(v150 + 8))(v151, v149);
    (*(v138 + 8))(v140, v139);
    __swift_destroy_boxed_opaque_existential_0(&v156);
    return v154;
  }

  v152 = 0;
  v153 = 0x8000000225D19E30;
  v151 = "aead open: ct = ";
  v59 = v58;
  v60 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v25 = v61;
  swift_getErrorValue();
  v62 = v162;
  v63 = v58;
  sub_225B21FAC(v62, &v156);

  v33 = v157;
  if (v157)
  {
    v150 = v156;
    v149 = v158;
    v148 = v159;
    v65 = v160;
    v64 = v161;
    v66 = &v163;
  }

  else
  {
    v156 = v58;
    v106 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v107 = v154;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v109 = [v107 code];
      v110 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v110;
      *(inited + 40) = v109;
      v65 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v111 = v58;
      v148 = 0;
      v149 = 0;
      v33 = MEMORY[0x277D84F90];
      v150 = 281;
      v147 = v58;
      goto LABEL_62;
    }

    v156 = v58;
    v114 = v58;
    v115 = sub_225CCE954();
    v116 = v143;
    v117 = swift_dynamicCast();
    v118 = *(v115 - 8);
    (*(v118 + 56))(v116, v117 ^ 1u, 1, v115);
    LODWORD(v118) = (*(v118 + 48))(v116, 1, v115);
    sub_2259CB640(v116, &unk_27D73B050);
    if (v118)
    {
      v119 = 281;
    }

    else
    {
      v119 = 23;
    }

    v150 = v119;
    v33 = MEMORY[0x277D84F90];
    v65 = sub_225B2C374(MEMORY[0x277D84F90]);
    v120 = v58;
    v149 = 0xD000000000000034;
    v147 = v58;
    v64 = v153;
    v66 = &v164;
  }

  *(v66 - 32) = v64;
LABEL_62:
  a2 = 0x8000000225D17220;
  a1 = v151 | 0x8000000000000000;
  v121 = swift_isUniquelyReferenced_nonNull_native();
  v156 = v65;
  sub_225B2C4A0(v60, sub_225B2AC40, 0, v121, &v156);

  v22 = v156;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_71:
    v33 = sub_225B29AA0(0, *(v33 + 2) + 1, 1, v33);
  }

  v123 = *(v33 + 2);
  v122 = *(v33 + 3);
  if (v123 >= v122 >> 1)
  {
    v33 = sub_225B29AA0((v122 > 1), v123 + 1, 1, v33);
  }

  *(v33 + 2) = v123 + 1;
  v124 = &v33[56 * v123];
  v125 = v153;
  *(v124 + 4) = 0xD000000000000034;
  *(v124 + 5) = v125;
  *(v124 + 6) = 0xD00000000000001CLL;
  *(v124 + 7) = a2;
  *(v124 + 8) = 0xD000000000000017;
  *(v124 + 9) = a1;
  *(v124 + 10) = 794;
  *v25 = v150;
  v126 = v149;
  *(v25 + 1) = v33;
  *(v25 + 2) = v126;
  *(v25 + 3) = v148;
  *(v25 + 4) = v22;
  *(v25 + 5) = v147;
  swift_willThrow();

  return (*(v138 + 8))(v140, v139);
}

uint64_t sub_225A6034C(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  result = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v36 - v7;
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_8;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (v12)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v13 < 16)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v9)
    {
      if (BYTE6(a2) >= 0x10uLL)
      {
        goto LABEL_16;
      }

LABEL_8:
      v36 = 0x8000000225D19DD0;
      v37 = 0x8000000225D17220;
      v14 = MEMORY[0x277D84F90];
      v15 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v17 = v16;
      v18 = sub_225CCE954();
      v19 = *(v18 - 8);
      (*(v19 + 56))(v8, 1, 1, v18);
      LODWORD(v18) = (*(v19 + 48))(v8, 1, v18);
      sub_2259CB640(v8, &unk_27D73B050);
      if (v18)
      {
        v20 = 282;
      }

      else
      {
        v20 = 23;
      }

      v21 = sub_225B2C374(v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v21;
      sub_225B2C4A0(v15, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v38);

      v23 = v38;
      v24 = sub_225B29AA0(0, 1, 1, v14);
      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_225B29AA0((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[56 * v26];
      *(v27 + 4) = 0xD00000000000001ELL;
      *(v27 + 5) = 0x8000000225D19DB0;
      v28 = v37;
      *(v27 + 6) = 0xD00000000000001CLL;
      *(v27 + 7) = v28;
      v29 = v36;
      *(v27 + 8) = 0xD00000000000001DLL;
      *(v27 + 9) = v29;
      *(v27 + 10) = 828;
      *v17 = v20;
      *(v17 + 8) = v24;
      *(v17 + 16) = 0xD00000000000001ELL;
      *(v17 + 24) = 0x8000000225D19DB0;
      *(v17 + 32) = v23;
      *(v17 + 40) = 0;
      swift_willThrow();
      return v15;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (HIDWORD(a1) - a1 < 16)
    {
      goto LABEL_8;
    }
  }

LABEL_16:
  if (v9 == 2)
  {
    v32 = *(a1 + 16);
    v31 = *(a1 + 24);
    v12 = __OFSUB__(v31, v32);
    v30 = v31 - v32;
    if (!v12)
    {
      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    v30 = BYTE6(a2);
    goto LABEL_24;
  }

  if (v9 != 1)
  {
    goto LABEL_23;
  }

  LODWORD(v30) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v30 = v30;
LABEL_24:
  if (__OFSUB__(v30, 16))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v30 - 16 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v9)
  {
    goto LABEL_34;
  }

  if (v9 != 2)
  {
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

LABEL_34:
    v15 = sub_225CCCFD4();
    sub_225CCCFD4();
    return v15;
  }

  v34 = *(a1 + 16);
  v33 = *(a1 + 24);
  v35 = v33 - v34;
  if (__OFSUB__(v33, v34))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!__OFSUB__(v35, 16))
  {
    if (v35 < v35 - 16)
    {
      __break(1u);
    }

    goto LABEL_34;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_225A6071C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v151 = a8;
  v150 = a7;
  v154 = a6;
  v153 = a5;
  v159 = a4;
  v158 = a3;
  v163 = a2;
  v160 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v142 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v147 = &v140 - v13;
  v141 = sub_225CCDD74();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v14);
  v143 = &v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_225CCDD34();
  v155 = *(v152 - 8);
  v17 = MEMORY[0x28223BE20](v152, v16);
  v144 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v156 = &v140 - v20;
  v146 = sub_225CCDC44();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v21);
  v157 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_225CCD954();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v28 = off_28105B918;
  v29 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v30 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v30));
  v31 = *(v24 + 16);
  v149 = v24 + 16;
  v162 = v29;
  v31(v27, &v28[v29], v23);
  os_unfair_lock_unlock(&v28[v30]);
  v32 = v160;
  v33 = v163;
  sub_2259CB710(v160, v163);
  sub_225B42AA8();
  sub_2259BEF00(v32, v33);
  v34 = *(v24 + 8);
  v161 = v24 + 8;
  v34(v27, v23);
  v35 = v34;
  os_unfair_lock_lock(&v28[v30]);
  v36 = &v28[v29];
  v37 = v23;
  v38 = v23;
  v39 = v31;
  v31(v27, v36, v37);
  os_unfair_lock_unlock(&v28[v30]);
  v40 = v158;
  v41 = v159;
  sub_2259CB710(v158, v159);
  sub_225B42CF4();
  sub_2259BEF00(v40, v41);
  v35(v27, v38);
  os_unfair_lock_lock(&v28[v30]);
  v39(v27, &v28[v162], v38);
  os_unfair_lock_unlock(&v28[v30]);
  v42 = v153;
  v43 = v154;
  sub_2259CB710(v153, v154);
  sub_225B42F40();
  sub_2259BEF00(v42, v43);
  v44 = v161;
  v35(v27, v38);
  os_unfair_lock_lock(&v28[v30]);
  v39(v27, &v28[v162], v38);
  os_unfair_lock_unlock(&v28[v30]);
  v45 = v150;
  v46 = v151;
  sub_2259CB710(v150, v151);
  sub_225B4318C(v27, v45, v46);
  sub_2259BEF00(v45, v46);
  result = (v35)(v27, v38);
  v49 = v163;
  v50 = v163 >> 62;
  if ((v163 >> 62) > 1)
  {
    v51 = v157;
    v52 = v152;
    v53 = v155;
    v54 = v156;
    if (v50 != 2)
    {
      goto LABEL_16;
    }

    v56 = *(v160 + 16);
    v55 = *(v160 + 24);
    v57 = __OFSUB__(v55, v56);
    v58 = v55 - v56;
    if (!v57)
    {
      if (v58 == 16)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v48 = sub_225B29AA0((v58 > 1), v46, 1, v48);
LABEL_51:
    *(v48 + 2) = v46;
    v100 = &v48[56 * v45];
    *(v100 + 4) = v44;
    *(v100 + 5) = v50;
    v101 = v163;
    *(v100 + 6) = 0xD00000000000001CLL;
    *(v100 + 7) = v101;
    v102 = v162;
    *(v100 + 8) = 0xD000000000000017;
    *(v100 + 9) = v102;
    *(v100 + 10) = 809;
    *v54 = v51;
    *(v54 + 1) = v48;
    *(v54 + 2) = v44;
    *(v54 + 3) = v50;
    *(v54 + 4) = v49;
    *(v54 + 5) = 0;
LABEL_52:
    swift_willThrow();
    return v49;
  }

  v51 = v157;
  v52 = v152;
  v53 = v155;
  v54 = v156;
  if (v50)
  {
    v58 = (HIDWORD(v160) - v160);
    if (!__OFSUB__(HIDWORD(v160), v160))
    {
      if (v58 == 16)
      {
        goto LABEL_10;
      }

LABEL_16:
      v46 = 0xD000000000000017;
      v166 = 0;
      v167 = 0xE000000000000000;
      v59 = &v166;
      sub_225CCF204();

      v166 = 0xD000000000000019;
      v167 = 0x8000000225D19D10;
      if (v50 <= 1)
      {
        if (!v50)
        {
          v60 = BYTE6(v49);
          goto LABEL_30;
        }

        LODWORD(v60) = HIDWORD(v160) - v160;
        if (!__OFSUB__(HIDWORD(v160), v160))
        {
          v60 = v60;
          goto LABEL_30;
        }

        __break(1u);
        goto LABEL_70;
      }

      v60 = 0;
      if (v50 != 2 || (v62 = *(v160 + 16), v61 = *(v160 + 24), v57 = __OFSUB__(v61, v62), v60 = v61 - v62, !v57))
      {
LABEL_30:
        v164 = v60;
        v67 = sub_225CCF824();
        MEMORY[0x22AA6CE70](v67);

        MEMORY[0x22AA6CE70](0x20746F6E20736920, 0xE800000000000000);
        v164 = 16;
        v68 = sub_225CCF824();
        MEMORY[0x22AA6CE70](v68);

        v70 = v166;
        v69 = v167;
        v163 = 0x8000000225D17220;
        v162 = 0x8000000225D19D30;
        v71 = MEMORY[0x277D84F90];
        v72 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v74 = v73;
        v75 = sub_225CCE954();
        v76 = *(v75 - 8);
        v77 = v147;
        (*(v76 + 56))(v147, 1, 1, v75);
        LODWORD(v75) = (*(v76 + 48))(v77, 1, v75);
        sub_2259CB640(v77, &unk_27D73B050);
        if (v75)
        {
          v78 = 282;
        }

        else
        {
          v78 = 23;
        }

        v79 = sub_225B2C374(v71);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v166 = v79;
        sub_225B2C4A0(v72, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v166);

        v49 = v166;
        v81 = sub_225B29AA0(0, 1, 1, v71);
        v83 = *(v81 + 2);
        v82 = *(v81 + 3);
        if (v83 >= v82 >> 1)
        {
          v81 = sub_225B29AA0((v82 > 1), v83 + 1, 1, v81);
        }

        *(v81 + 2) = v83 + 1;
        v84 = &v81[56 * v83];
        *(v84 + 4) = v70;
        *(v84 + 5) = v69;
        v85 = v163;
        *(v84 + 6) = 0xD00000000000001CLL;
        *(v84 + 7) = v85;
        v86 = v162;
        *(v84 + 8) = 0xD000000000000017;
        *(v84 + 9) = v86;
        *(v84 + 10) = 806;
        *v74 = v78;
        *(v74 + 8) = v81;
        *(v74 + 16) = v70;
        *(v74 + 24) = v69;
        *(v74 + 32) = v49;
        *(v74 + 40) = 0;
        goto LABEL_52;
      }

      __break(1u);
LABEL_23:
      if (v50 == 2)
      {
        v64 = v158[2];
        v63 = v158[3];
        v57 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (!v57)
        {
          if (v65 == 12)
          {
            goto LABEL_26;
          }

          goto LABEL_38;
        }

        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      goto LABEL_38;
    }

    goto LABEL_67;
  }

  if (BYTE6(v163) != 16)
  {
    goto LABEL_16;
  }

LABEL_10:
  v50 = v159 >> 62;
  if ((v159 >> 62) > 1)
  {
    goto LABEL_23;
  }

  if (v50)
  {
    if (!__OFSUB__(HIDWORD(v158), v158))
    {
      if (HIDWORD(v158) - v158 == 12)
      {
LABEL_26:
        v166 = v160;
        v167 = v49;
        sub_2259CB710(v160, v49);
        sub_225CCDC24();
        v166 = v158;
        v167 = v159;
        sub_2259CB710(v158, v159);
        sub_2259DB42C();
        v66 = v148;
        sub_225CCDD14();
        v49 = v66;
        if (!v66)
        {
          v103 = sub_225A6034C(v45, v46);
          v105 = v104;
          v107 = v106;
          v109 = v108;
          (*(v53 + 16))(v144, v156, v52);
          v166 = v103;
          v167 = v105;
          v164 = v107;
          v165 = v109;
          v162 = v103;
          v110 = v103;
          v111 = v105;
          sub_2259CB710(v110, v105);
          v163 = v107;
          sub_2259CB710(v107, v109);
          sub_225CCDD64();
          v137 = v163;
          v138 = v109;
          v139 = v162;
          v166 = v153;
          v167 = v154;
          v49 = sub_225CCDCD4();
          sub_2259BEF00(v137, v138);
          sub_2259BEF00(v139, v111);
          (*(v140 + 8))(v143, v141);
          (*(v155 + 8))(v156, v52);
          (*(v145 + 8))(v51, v146);
          return v49;
        }

        v161 = 0;
        v160 = "AES GCM failed: key size ";
        v112 = v66;
        v113 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v163 = swift_allocError();
        v50 = v114;
        swift_getErrorValue();
        v115 = v172;
        v116 = v66;
        sub_225B21FAC(v115, &v166);

        v59 = v167;
        v162 = 0x8000000225D19D70;
        if (v167)
        {
          v159 = v166;
          v158 = v168;
          v156 = v169;
          v117 = v170;
          v45 = v171;
        }

        else
        {
          v166 = v66;
          v118 = v66;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
          sub_2259E4540();
          if (swift_dynamicCast())
          {
            v119 = v164;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_225CD30F0;
            *(inited + 32) = 20;
            v121 = [v119 code];
            v122 = MEMORY[0x277D83BF8];
            *(inited + 64) = MEMORY[0x277D83B88];
            *(inited + 72) = v122;
            *(inited + 40) = v121;
            v117 = sub_225B2C374(inited);
            swift_setDeallocating();
            sub_2259CB640(inited + 32, &qword_27D73B060);

            v123 = v66;
            v156 = 0;
            v158 = 0;
            v59 = MEMORY[0x277D84F90];
            v159 = 282;
            v45 = v66;
          }

          else
          {
            v166 = v66;
            v124 = v66;
            v125 = sub_225CCE954();
            v126 = v142;
            v127 = swift_dynamicCast();
            v128 = *(v125 - 8);
            (*(v128 + 56))(v126, v127 ^ 1u, 1, v125);
            LODWORD(v128) = (*(v128 + 48))(v126, 1, v125);
            sub_2259CB640(v126, &unk_27D73B050);
            if (v128)
            {
              v129 = 282;
            }

            else
            {
              v129 = 23;
            }

            v159 = v129;
            v59 = MEMORY[0x277D84F90];
            v117 = sub_225B2C374(MEMORY[0x277D84F90]);
            v130 = v66;
            v158 = 0xD000000000000034;
            v45 = v66;
            v156 = 0x8000000225D19D70;
          }
        }

        v52 = 0x8000000225D17220;
        v53 = v160 | 0x8000000000000000;
        v131 = swift_isUniquelyReferenced_nonNull_native();
        v166 = v117;
        sub_225B2C4A0(v113, sub_225B2AC40, 0, v131, &v166);

        v44 = v166;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_63:
          v133 = *(v59 + 2);
          v132 = *(v59 + 3);
          if (v133 >= v132 >> 1)
          {
            v59 = sub_225B29AA0((v132 > 1), v133 + 1, 1, v59);
          }

          *(v59 + 2) = v133 + 1;
          v134 = &v59[56 * v133];
          v135 = v162;
          *(v134 + 4) = 0xD000000000000034;
          *(v134 + 5) = v135;
          *(v134 + 6) = 0xD00000000000001CLL;
          *(v134 + 7) = v52;
          *(v134 + 8) = 0xD000000000000017;
          *(v134 + 9) = v53;
          *(v134 + 10) = 821;
          *v50 = v159;
          v136 = v158;
          *(v50 + 8) = v59;
          *(v50 + 16) = v136;
          *(v50 + 24) = v156;
          *(v50 + 32) = v44;
          *(v50 + 40) = v45;
          swift_willThrow();

          (*(v145 + 8))(v157, v146);
          return v49;
        }

LABEL_70:
        v59 = sub_225B29AA0(0, *(v59 + 2) + 1, 1, v59);
        goto LABEL_63;
      }

      goto LABEL_38;
    }

    goto LABEL_72;
  }

  if (BYTE6(v159) == 12)
  {
    goto LABEL_26;
  }

LABEL_38:
  v166 = 0;
  v167 = 0xE000000000000000;
  sub_225CCF204();

  v166 = 0xD00000000000001BLL;
  v167 = 0x8000000225D19D50;
  if (v50 > 1)
  {
    v88 = 0;
    if (v50 != 2)
    {
      goto LABEL_47;
    }

    v87 = v158[2];
    v89 = v158[3];
    v57 = __OFSUB__(v89, v87);
    v88 = v89 - v87;
    if (!v57)
    {
      goto LABEL_47;
    }

    __break(1u);
  }

  else
  {
    v87 = v158;
    if (!v50)
    {
      v88 = BYTE6(v159);
      goto LABEL_47;
    }
  }

  LODWORD(v88) = HIDWORD(v87) - v87;
  if (!__OFSUB__(HIDWORD(v87), v87))
  {
    v88 = v88;
LABEL_47:
    v164 = v88;
    v90 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v90);

    MEMORY[0x22AA6CE70](0x20746F6E20736920, 0xE800000000000000);
    v164 = 12;
    v91 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v91);

    v44 = v166;
    v50 = v167;
    v163 = 0x8000000225D17220;
    v162 = 0x8000000225D19D30;
    v92 = MEMORY[0x277D84F90];
    v93 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v54 = v94;
    v95 = sub_225CCE954();
    v96 = *(v95 - 8);
    v97 = v147;
    (*(v96 + 56))(v147, 1, 1, v95);
    LODWORD(v95) = (*(v96 + 48))(v97, 1, v95);
    sub_2259CB640(v97, &unk_27D73B050);
    if (v95)
    {
      LOWORD(v51) = 282;
    }

    else
    {
      LOWORD(v51) = 23;
    }

    v98 = sub_225B2C374(v92);
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v166 = v98;
    sub_225B2C4A0(v93, sub_225B2AC40, 0, v99, &v166);

    v49 = v166;
    v48 = sub_225B29AA0(0, 1, 1, v92);
    v45 = *(v48 + 2);
    v58 = *(v48 + 3);
    v46 = v45 + 1;
    if (v45 < v58 >> 1)
    {
      goto LABEL_51;
    }

    goto LABEL_68;
  }

LABEL_73:
  __break(1u);
  return result;
}

unint64_t sub_225A61BC0()
{
  result = qword_27D73B550;
  if (!qword_27D73B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B550);
  }

  return result;
}

unint64_t sub_225A61C18()
{
  result = qword_27D73B558[0];
  if (!qword_27D73B558[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D73B558);
  }

  return result;
}

void sub_225A61C6C()
{
  sub_225A62224(319, &qword_27D73B5E0);
  if (v0 <= 0x3F)
  {
    sub_225A62224(319, qword_27D73B5E8);
    if (v1 <= 0x3F)
    {
      sub_225A62224(319, &qword_28105B790);
      if (v2 <= 0x3F)
      {
        sub_225CCEFC4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_225A61D64(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 120) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *&a1[v11];
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *&a1[v11];
      if (!*&a1[v11])
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if (v6 > 0xFE)
      {
        v18 = (*(v4 + 48))((((((a1 + 10) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (v17 >= 2)
        {
          return v17 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = a1[v11];
  if (!a1[v11])
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}