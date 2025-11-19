uint64_t sub_24E747EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E747F58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t LeaderboardsCountData.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x800000024FA465F0;
  v6 = MEMORY[0x277D83B88];
  *(inited + 72) = MEMORY[0x277D83B88];
  v7 = sub_24E65901C();
  *(inited + 48) = v3;
  *(inited + 80) = v7;
  *(inited + 88) = 0xD000000000000014;
  *(inited + 128) = v6;
  *(inited + 136) = v7;
  *(inited + 96) = 0x800000024FA46610;
  *(inited + 104) = v4;
  v8 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

unint64_t sub_24E7480FC()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_24E748138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000017 && 0x800000024FA465F0 == a2;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46610 == a2)
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

uint64_t sub_24E74821C(uint64_t a1)
{
  v2 = sub_24E74871C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E748258(uint64_t a1)
{
  v2 = sub_24E74871C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LeaderboardsCountData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B240);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E74871C();
  sub_24F92D128();
  v11 = 0;
  sub_24F92CD38();
  if (!v2)
  {
    v10 = 1;
    sub_24F92CD38();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t LeaderboardsCountData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B250);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E74871C();
  sub_24F92D108();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_24F92CC58();
    v13 = 1;
    v10 = sub_24F92CC58();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24E7485F0@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x800000024FA465F0;
  v6 = MEMORY[0x277D83B88];
  *(inited + 72) = MEMORY[0x277D83B88];
  v7 = sub_24E65901C();
  *(inited + 48) = v3;
  *(inited + 80) = v7;
  *(inited + 88) = 0xD000000000000014;
  *(inited + 128) = v6;
  *(inited + 136) = v7;
  *(inited + 96) = 0x800000024FA46610;
  *(inited + 104) = v4;
  v8 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

unint64_t sub_24E74871C()
{
  result = qword_27F21B248;
  if (!qword_27F21B248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B248);
  }

  return result;
}

unint64_t sub_24E748794()
{
  result = qword_27F21B258;
  if (!qword_27F21B258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B258);
  }

  return result;
}

unint64_t sub_24E7487EC()
{
  result = qword_27F21B260;
  if (!qword_27F21B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B260);
  }

  return result;
}

unint64_t sub_24E748844()
{
  result = qword_27F21B268;
  if (!qword_27F21B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B268);
  }

  return result;
}

uint64_t sub_24E7488AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24E748988(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_24E748A6C()
{
  sub_24E74C244(319, &qword_27F21B288, type metadata accessor for CardPrimaryActionType, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24E6CAEE4(319, &qword_27F218180, &unk_27F22C070, &unk_24F947CB0, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24F928FD8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E748B88@<X0>(uint64_t a1@<X8>)
{
  v130 = a1;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B290);
  MEMORY[0x28223BE20](v129);
  v3 = &v95 - v2;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B298);
  MEMORY[0x28223BE20](v131);
  v5 = &v95 - v4;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B2A0);
  MEMORY[0x28223BE20](v116);
  v102 = &v95 - v6;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B2A8);
  MEMORY[0x28223BE20](v113);
  v115 = &v95 - v7;
  v114 = type metadata accessor for LargeOfferButton(0);
  MEMORY[0x28223BE20](v114);
  v101 = (&v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B2B0);
  MEMORY[0x28223BE20](v9);
  v117 = &v95 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E30);
  MEMORY[0x28223BE20](v11 - 8);
  v122 = (&v95 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B2B8);
  MEMORY[0x28223BE20](v13);
  v15 = &v95 - v14;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B2C0);
  MEMORY[0x28223BE20](v126);
  v127 = &v95 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B2C8);
  MEMORY[0x28223BE20](v17);
  v128 = &v95 - v18;
  v121 = type metadata accessor for CardPrimaryActionButton.StandardActionButton(0);
  MEMORY[0x28223BE20](v121);
  v107 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B2D0);
  MEMORY[0x28223BE20](v118);
  v120 = &v95 - v20;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B2D8);
  MEMORY[0x28223BE20](v108);
  v109 = &v95 - v21;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B2E0);
  MEMORY[0x28223BE20](v119);
  v110 = &v95 - v22;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B2E8);
  v123 = *(v124 - 8);
  v23 = MEMORY[0x28223BE20](v124);
  v106 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v104 = &v95 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v105 = &v95 - v28;
  MEMORY[0x28223BE20](v27);
  v103 = &v95 - v29;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B2F0);
  v30 = MEMORY[0x28223BE20](v125);
  v112 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v111 = &v95 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B270);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = (&v95 - v34);
  sub_24E60169C(v1, &v95 - v34, &qword_27F21B270);
  v36 = type metadata accessor for CardPrimaryActionType();
  if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_24E74B724();
    sub_24F924E28();
    v37 = &qword_27F21B298;
    sub_24E60169C(v5, v15, &qword_27F21B298);
    swift_storeEnumTagMultiPayload();
    sub_24E74B910();
    sub_24E74BBE4();
    sub_24F924E28();
    v38 = v5;
LABEL_20:
    v76 = v37;
    return sub_24E601704(v38, v76);
  }

  v95 = v9;
  v97 = v3;
  v96 = v5;
  v98 = v13;
  v99 = v17;
  v100 = v15;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v40 = *v35;
      v41 = v35[1];
      v42 = v35[2];
      v43 = v35[3];
      v44 = type metadata accessor for CardPrimaryActionButton(0);
      sub_24E60169C(v1 + *(v44 + 20), &v132, qword_27F21B590);
      if (v133)
      {
        sub_24E612C80(&v132, v140);
        if (*(v1 + *(v44 + 24)) == 1)
        {
          sub_24E615E00(v140, &v132);
          v134 = v42;
          v135 = v43;
          *&v136 = v40;
          *(&v136 + 1) = v41;
          v138 = 0;
          v137 = 0uLL;
          v139 = 257;
          sub_24E67290C(&v132, v109);
          swift_storeEnumTagMultiPayload();
          sub_24E74BB90();
          sub_24E74B8C8(&qword_27F21B338, type metadata accessor for CardPrimaryActionButton.StandardActionButton);

          v45 = v110;
          sub_24F924E28();
          sub_24E60169C(v45, v120, &qword_27F21B2E0);
          swift_storeEnumTagMultiPayload();
          sub_24E74BAD4();
          v46 = v106;
          sub_24F924E28();
          sub_24E601704(v45, &qword_27F21B2E0);
          sub_24E74BE00(&v132);
        }

        else
        {
          v79 = v107;
          sub_24E615E00(v140, (v107 + 24));
          *v79 = v40;
          *(v79 + 8) = v41;
          *(v79 + 16) = 1;
          v80 = v121;
          v81 = *(v121 + 24);
          *(v79 + v81) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8);
          swift_storeEnumTagMultiPayload();
          v82 = *(v80 + 28);
          *(v79 + v82) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
          swift_storeEnumTagMultiPayload();
          v83 = v79 + *(v80 + 32);
          *v83 = swift_getKeyPath();
          *(v83 + 8) = 0;
          *(v83 + 16) = 0;
          sub_24E74BD38(v79, v109, type metadata accessor for CardPrimaryActionButton.StandardActionButton);
          swift_storeEnumTagMultiPayload();
          sub_24E74BB90();
          sub_24E74B8C8(&qword_27F21B338, type metadata accessor for CardPrimaryActionButton.StandardActionButton);

          v84 = v110;
          sub_24F924E28();
          sub_24E60169C(v84, v120, &qword_27F21B2E0);
          swift_storeEnumTagMultiPayload();
          sub_24E74BAD4();
          v46 = v106;
          sub_24F924E28();
          sub_24E601704(v84, &qword_27F21B2E0);
          sub_24E74BDA0(v79, type metadata accessor for CardPrimaryActionButton.StandardActionButton);
        }

        v85 = v104;
        sub_24E6009C8(v46, v104, &qword_27F21B2E8);

        __swift_destroy_boxed_opaque_existential_1(v140);
        v77 = v112;
        sub_24E6009C8(v85, v112, &qword_27F21B2E8);
        (*(v123 + 56))(v77, 0, 1, v124);
      }

      else
      {

        sub_24E601704(&v132, qword_27F21B590);
        v77 = v112;
        (*(v123 + 56))(v112, 1, 1, v124);
      }

      v37 = &qword_27F21B2F0;
      sub_24E60169C(v77, v127, &qword_27F21B2F0);
      swift_storeEnumTagMultiPayload();
      sub_24E74B994();
      v86 = v128;
      sub_24F924E28();
      sub_24E60169C(v86, v100, &qword_27F21B2C8);
      swift_storeEnumTagMultiPayload();
      sub_24E74B910();
      sub_24E74BBE4();
      sub_24F924E28();
      sub_24E601704(v86, &qword_27F21B2C8);
      v38 = v77;
      goto LABEL_20;
    }

    v52 = v122;
    sub_24E6009C8(v35, v122, &qword_27F212E30);
    v53 = type metadata accessor for CardPrimaryActionButton(0);
    v55 = *v52;
    v54 = v52[1];
    v56 = *(v1 + *(v53 + 28));
    if (*(v1 + *(v53 + 24)) == 1)
    {
      KeyPath = swift_getKeyPath();
      v58 = v101;
      *v101 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8);
      swift_storeEnumTagMultiPayload();
      v59 = v114;
      v60 = *(v114 + 24);
      v61 = *(v114 + 28);
      v62 = swift_allocObject();
      v62[2] = v55;
      v62[3] = v54;
      v62[4] = v56;
      v63 = v58 + *(v59 + 20);
      *v63 = sub_24E6B7F28;
      *(v63 + 8) = v62;
      *(v63 + 16) = 0;
      *(v58 + v60) = 1;
      *(v58 + v61) = 0;
      sub_24E74BD38(v58, v115, type metadata accessor for LargeOfferButton);
      swift_storeEnumTagMultiPayload();
      sub_24E74B8C8(&qword_27F217B58, type metadata accessor for LargeOfferButton);
      sub_24E74B7E0();

      v64 = v117;
      sub_24F924E28();
      sub_24E74BDA0(v58, type metadata accessor for LargeOfferButton);
    }

    else
    {
      v65 = type metadata accessor for OfferButtonView(0);
      *&v132 = 0x4052000000000000;
      sub_24E62C088();

      v66 = v102;
      sub_24F9237C8();
      v67 = *(v65 + 24);
      *(v66 + v67) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
      swift_storeEnumTagMultiPayload();
      v68 = *(v65 + 28);
      *(v66 + v68) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8);
      swift_storeEnumTagMultiPayload();
      v69 = swift_allocObject();
      *(v69 + 16) = v55;
      *(v69 + 24) = v54;
      *(v69 + 32) = 5;
      *(v69 + 40) = v56;
      *v66 = sub_24E74BCC8;
      *(v66 + 8) = v69;
      *(v66 + 16) = 0;
      v70 = (v66 + *(v116 + 36));
      v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858) + 28);
      v72 = *MEMORY[0x277CDF3D0];
      v73 = sub_24F9234D8();
      (*(*(v73 - 8) + 104))(v70 + v71, v72, v73);
      *v70 = swift_getKeyPath();
      sub_24E60169C(v66, v115, &qword_27F21B2A0);
      swift_storeEnumTagMultiPayload();
      sub_24E74B8C8(&qword_27F217B58, type metadata accessor for LargeOfferButton);
      sub_24E74B7E0();
      v64 = v117;
      sub_24F924E28();
      sub_24E601704(v66, &qword_27F21B2A0);
    }

    v74 = v100;
    v75 = v96;
    sub_24E60169C(v64, v97, &qword_27F21B2B0);
    swift_storeEnumTagMultiPayload();
    sub_24E74B724();
    sub_24F924E28();
    sub_24E60169C(v75, v74, &qword_27F21B298);
    swift_storeEnumTagMultiPayload();
    sub_24E74B910();
    sub_24E74BBE4();
    sub_24F924E28();
    sub_24E601704(v75, &qword_27F21B298);
    sub_24E601704(v64, &qword_27F21B2B0);
    v76 = &qword_27F212E30;
    v38 = v122;
  }

  else
  {
    v47 = *v35;
    v48 = v35[1];
    v49 = type metadata accessor for CardPrimaryActionButton(0);
    sub_24E60169C(v1 + *(v49 + 20), &v132, qword_27F21B590);
    if (v133)
    {
      sub_24E612C80(&v132, v140);
      if (*(v1 + *(v49 + 24)) == 1)
      {
        sub_24E615E00(v140, &v132);
        v134 = v47;
        v135 = v48;
        v136 = 0u;
        v137 = 0u;
        v138 = 0;
        v139 = 257;
        sub_24E67290C(&v132, v109);
        swift_storeEnumTagMultiPayload();
        sub_24E74BB90();
        sub_24E74B8C8(&qword_27F21B338, type metadata accessor for CardPrimaryActionButton.StandardActionButton);

        v50 = v110;
        sub_24F924E28();
        sub_24E60169C(v50, v120, &qword_27F21B2E0);
        swift_storeEnumTagMultiPayload();
        sub_24E74BAD4();
        v51 = v105;
        sub_24F924E28();
        sub_24E601704(v50, &qword_27F21B2E0);
        sub_24E74BE00(&v132);
      }

      else
      {
        v88 = v107;
        sub_24E615E00(v140, (v107 + 24));
        *v88 = v47;
        *(v88 + 8) = v48;
        *(v88 + 16) = 0;
        v89 = v121;
        v90 = *(v121 + 24);
        *(v88 + v90) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8);
        swift_storeEnumTagMultiPayload();
        v91 = *(v89 + 28);
        *(v88 + v91) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
        swift_storeEnumTagMultiPayload();
        v92 = v88 + *(v89 + 32);
        *v92 = swift_getKeyPath();
        *(v92 + 8) = 0;
        *(v92 + 16) = 0;
        sub_24E74BD38(v88, v120, type metadata accessor for CardPrimaryActionButton.StandardActionButton);
        swift_storeEnumTagMultiPayload();
        sub_24E74BAD4();
        sub_24E74B8C8(&qword_27F21B338, type metadata accessor for CardPrimaryActionButton.StandardActionButton);

        v51 = v105;
        sub_24F924E28();
        sub_24E74BDA0(v88, type metadata accessor for CardPrimaryActionButton.StandardActionButton);
      }

      v93 = v103;
      sub_24E6009C8(v51, v103, &qword_27F21B2E8);

      __swift_destroy_boxed_opaque_existential_1(v140);
      v78 = v111;
      sub_24E6009C8(v93, v111, &qword_27F21B2E8);
      (*(v123 + 56))(v78, 0, 1, v124);
    }

    else
    {

      sub_24E601704(&v132, qword_27F21B590);
      v78 = v111;
      (*(v123 + 56))(v111, 1, 1, v124);
    }

    sub_24E60169C(v78, v127, &qword_27F21B2F0);
    swift_storeEnumTagMultiPayload();
    sub_24E74B994();
    v94 = v128;
    sub_24F924E28();
    sub_24E60169C(v94, v100, &qword_27F21B2C8);
    swift_storeEnumTagMultiPayload();
    sub_24E74B910();
    sub_24E74BBE4();
    sub_24F924E28();
    sub_24E601704(v94, &qword_27F21B2C8);
    v38 = v78;
    v76 = &qword_27F21B2F0;
  }

  return sub_24E601704(v38, v76);
}

uint64_t sub_24E74A36C@<X0>(uint64_t a1@<X8>)
{
  v151 = a1;
  v148 = sub_24F923E98();
  v146 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v160 = &v116 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for OfferButtonDesign.Context(0);
  MEMORY[0x28223BE20](v144);
  v4 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OfferButtonDesign.Metrics(0);
  MEMORY[0x28223BE20](v5 - 8);
  v149 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OfferButtonDesign.Size(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v139 = &v116 - v11;
  v157 = type metadata accessor for OfferButtonDesign(0);
  v12 = MEMORY[0x28223BE20](v157);
  v145 = (&v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v136 = &v116 - v14;
  v15 = sub_24F9234F8();
  v158 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v142 = &v116 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v137 = &v116 - v22;
  MEMORY[0x28223BE20](v21);
  v138 = &v116 - v23;
  v127 = sub_24F923D48();
  *&v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v122 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24F924848();
  v125 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v124 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C78);
  v131 = *(v27 - 8);
  v28 = *(v131 + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v132 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v29);
  v130 = &v116 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v154 = (&v116 - v33);
  MEMORY[0x28223BE20](v32);
  v35 = (&v116 - v34);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B380);
  MEMORY[0x28223BE20](v133);
  v152 = &v116 - v36;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B388);
  MEMORY[0x28223BE20](v135);
  v156 = &v116 - v37;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B390);
  MEMORY[0x28223BE20](v140);
  v147 = &v116 - v38;
  sub_24E615E00((v1 + 3), v165);
  v39 = *v1;
  v40 = v1[1];
  v134 = *(v1 + 16);
  v150 = v4;
  v143 = v10;
  v153 = v35;
  if (v134 == 1)
  {
    v41 = type metadata accessor for CapsuleButtonContent.Symbol(0);

    sub_24F923D28();
    *v35 = v39;
    v35[1] = v40;
    *(v35 + *(v41 + 24)) = 0;
    (*(*(v41 - 8) + 56))(v35, 0, 1, v41);
    v129 = 0;
    v128 = 0;
  }

  else
  {
    v42 = type metadata accessor for CapsuleButtonContent.Symbol(0);
    (*(*(v42 - 8) + 56))(v35, 1, 1, v42);

    v129 = v39;
    v128 = v40;
  }

  v141 = v18;
  v155 = type metadata accessor for CardPrimaryActionButton.StandardActionButton(0);
  v43 = v1 + *(v155 + 32);
  v44 = *v43;
  v45 = *(v43 + 8);
  v118 = *(v43 + 16);
  v123 = v44;
  v121 = v39;
  v120 = v40;
  v119 = v45;
  if (v118 == 1)
  {

    v50 = v45;
    v49 = v44;
  }

  else
  {

    sub_24F92BDC8();
    v46 = sub_24F9257A8();
    sub_24F921FD8();

    v47 = v123;
    v48 = v124;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E74C370(v47, v45, 0);
    (*(v125 + 8))(v48, v25);
    v49 = v162;
    v50 = v163;
  }

  v159 = v15;
  v51 = v154;
  v161 = v1;
  v117 = v25;
  if (v50)
  {

    v52 = v122;
    sub_24F923D38();
    v53 = type metadata accessor for CapsuleButtonContent.Symbol(0);
    sub_24F923D18();

    (*(v126 + 8))(v52, v127);
    *v51 = v49;
    v51[1] = v50;
    *(v51 + *(v53 + 24)) = 0;
    (*(*(v53 - 8) + 56))(v51, 0, 1, v53);
  }

  else
  {
    v54 = type metadata accessor for CapsuleButtonContent.Symbol(0);
    (*(*(v54 - 8) + 56))(v51, 1, 1, v54);
  }

  v55 = v152;
  sub_24E60169C(v165, v152 + 16, qword_27F21B590);
  v56 = swift_allocObject();
  v126 = xmmword_24F943570;
  v127 = v56;
  *(v56 + 16) = xmmword_24F943570;
  *(v56 + 32) = 0;
  v57 = v130;
  sub_24E60169C(v153, v130, &qword_27F216C78);
  v58 = v132;
  sub_24E60169C(v51, v132, &qword_27F216C78);
  v59 = *(v131 + 80);
  v60 = (v59 + 16) & ~v59;
  v61 = (v28 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v59 + 16 + v61) & ~v59;
  v63 = v62 + v28;
  v64 = (v62 + v28) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  sub_24E6009C8(v57, v65 + v60, &qword_27F216C78);
  v66 = (v65 + v61);
  v67 = v128;
  *v66 = v129;
  v66[1] = v67;
  sub_24E6009C8(v58, v65 + v62, &qword_27F216C78);
  *(v65 + v63) = 5;
  v68 = v65 + v64;
  *(v68 + 8) = v126;
  *(v68 + 24) = 0;
  v164 = 0;
  sub_24F926F28();
  sub_24E601704(v154, &qword_27F216C78);
  sub_24E601704(v153, &qword_27F216C78);
  sub_24E601704(v165, qword_27F21B590);
  v69 = v163;
  *v55 = v162;
  *(v55 + 8) = v69;
  v70 = v133;
  v71 = *(v133 + 68);
  *(v55 + v71) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950);
  swift_storeEnumTagMultiPayload();
  v72 = v70[18];
  *(v55 + v72) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v73 = v70[19];
  *(v55 + v73) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398);
  swift_storeEnumTagMultiPayload();
  v74 = v55 + v70[20];
  *v74 = swift_getKeyPath();
  *(v74 + 8) = 0;
  v75 = v127;
  *(v55 + 88) = sub_24E68FFA8;
  *(v55 + 96) = v75;
  *(v55 + 56) = sub_24E690D40;
  *(v55 + 64) = v65;
  *(v55 + 72) = sub_24E96AE90;
  *(v55 + 80) = 0;
  v76 = v136;
  sub_24F769CA8(v136);
  v77 = v139;
  sub_24E74BD38(v76 + *(v157 + 20), v139, type metadata accessor for OfferButtonDesign.Size);
  sub_24E74BDA0(v76, type metadata accessor for OfferButtonDesign);
  v78 = v158;
  v79 = v159;
  v154 = *(v158 + 48);
  if ((v154)(v77, 1, v159) == 1)
  {
    v80 = v137;
    (*(v78 + 104))(v137, *MEMORY[0x277CDF440], v79);
    v81 = *(v78 + 32);
  }

  else
  {
    v81 = *(v78 + 32);
    v80 = v137;
    v81(v137, v77, v79);
  }

  v82 = v138;
  v81(v138, v80, v79);
  KeyPath = swift_getKeyPath();
  v84 = v156;
  v85 = (v156 + *(v135 + 36));
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217118);
  v81(v85 + *(v86 + 28), v82, v79);
  *v85 = KeyPath;
  sub_24E6009C8(v152, v84, &qword_27F21B380);
  v87 = v145;
  sub_24F769CA8(v145);
  sub_24F769788(v160);
  if (v134)
  {
    v88 = 0;
    v89 = 1;
    v90 = v150;
  }

  else
  {

    v88 = sub_24F92B228();
    sub_24E63FFA4();
    if (v118)
    {
    }

    else
    {
      v92 = v123;

      sub_24F92BDC8();
      v93 = sub_24F9257A8();
      sub_24F921FD8();

      v94 = v124;
      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E74C370(v92, v119, 0);
      (*(v125 + 8))(v94, v117);
      v91 = *(&v165[0] + 1);
    }

    v90 = v150;
    if (v91)
    {

      v89 = 1;
    }

    else
    {
      v89 = 0;
    }
  }

  (*(v146 + 32))(v90, v160, v148);
  v95 = v144;
  *(v90 + *(v144 + 20)) = 8;
  *(v90 + *(v95 + 24)) = v88;
  *(v90 + *(v95 + 28)) = v89;
  v96 = *v87;
  v97 = v143;
  sub_24E74BD38(v87 + *(v157 + 20), v143, type metadata accessor for OfferButtonDesign.Size);
  v98 = v159;
  if ((v154)(v97, 1, v159) == 1)
  {
    v99 = v158;
    v100 = v141;
    (*(v158 + 104))(v141, *MEMORY[0x277CDF440], v98);
  }

  else
  {
    v100 = v141;
    v81(v141, v97, v98);
    v99 = v158;
  }

  v101 = v142;
  v81(v142, v100, v98);
  v102 = v149;
  v96(v90, v101);
  (*(v99 + 8))(v101, v98);
  sub_24E74BDA0(v90, type metadata accessor for OfferButtonDesign.Context);
  sub_24E74BDA0(v87, type metadata accessor for OfferButtonDesign);
  sub_24E74BDA0(v102, type metadata accessor for OfferButtonDesign.Metrics);
  sub_24F927618();
  sub_24F9242E8();
  v103 = v147;
  sub_24E6009C8(v156, v147, &qword_27F21B388);
  v104 = (v103 + *(v140 + 36));
  v105 = v165[5];
  v104[4] = v165[4];
  v104[5] = v105;
  v104[6] = v165[6];
  v106 = v165[1];
  *v104 = v165[0];
  v104[1] = v106;
  v107 = v165[3];
  v104[2] = v165[2];
  v104[3] = v107;
  sub_24E615E00((v161 + 3), &v162);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B3A0);
  v109 = v151;
  v110 = v151 + *(v108 + 36);
  sub_24E60169C(&v162, v110, qword_27F21B590);
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v111 = qword_27F24E488;
  sub_24E601704(&v162, qword_27F21B590);
  *(v110 + 40) = v111;
  *(v110 + 48) = swift_getKeyPath();
  *(v110 + 88) = 0;
  v112 = type metadata accessor for FocusedAlternativeSelectionButtonModifier();
  v113 = *(v112 + 28);
  *(v110 + v113) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  swift_storeEnumTagMultiPayload();
  v114 = v110 + *(v112 + 32);
  *v114 = swift_getKeyPath();
  *(v114 + 8) = 0;
  *(v114 + 16) = 0;
  return sub_24E6009C8(v103, v109, &qword_27F21B390);
}

unint64_t sub_24E74B724()
{
  result = qword_27F21B2F8;
  if (!qword_27F21B2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B2B0);
    sub_24E74B8C8(&qword_27F217B58, type metadata accessor for LargeOfferButton);
    sub_24E74B7E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B2F8);
  }

  return result;
}

unint64_t sub_24E74B7E0()
{
  result = qword_27F21B300;
  if (!qword_27F21B300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B2A0);
    sub_24E74B8C8(&qword_27F216D88, type metadata accessor for OfferButtonView);
    sub_24E602068(&qword_27F21B308, &qword_27F212858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B300);
  }

  return result;
}

uint64_t sub_24E74B8C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E74B910()
{
  result = qword_27F21B310;
  if (!qword_27F21B310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B2C8);
    sub_24E74B994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B310);
  }

  return result;
}

unint64_t sub_24E74B994()
{
  result = qword_27F21B318;
  if (!qword_27F21B318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B2F0);
    sub_24E74BA18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B318);
  }

  return result;
}

unint64_t sub_24E74BA18()
{
  result = qword_27F21B320;
  if (!qword_27F21B320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B2E8);
    sub_24E74BAD4();
    sub_24E74B8C8(&qword_27F21B338, type metadata accessor for CardPrimaryActionButton.StandardActionButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B320);
  }

  return result;
}

unint64_t sub_24E74BAD4()
{
  result = qword_27F21B328;
  if (!qword_27F21B328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B2E0);
    sub_24E74BB90();
    sub_24E74B8C8(&qword_27F21B338, type metadata accessor for CardPrimaryActionButton.StandardActionButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B328);
  }

  return result;
}

unint64_t sub_24E74BB90()
{
  result = qword_27F21B330;
  if (!qword_27F21B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B330);
  }

  return result;
}

unint64_t sub_24E74BBE4()
{
  result = qword_27F21B340;
  if (!qword_27F21B340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B298);
    sub_24E74B724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B340);
  }

  return result;
}

uint64_t sub_24E74BC80()
{

  return swift_deallocObject();
}

uint64_t sub_24E74BCE8()
{

  return swift_deallocObject();
}

uint64_t sub_24E74BD38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E74BDA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E74BE68(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B348);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E74BFB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B348);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24E74C0F4()
{
  sub_24E6CAE80();
  if (v0 <= 0x3F)
  {
    sub_24E74C244(319, &qword_27F21B360, type metadata accessor for OfferButtonDesign, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24E74C244(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_24E6CAEE4(319, &qword_27F21B368, &unk_27F23B740, &unk_24F93EC10, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E74C244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24E74C2C8()
{
  result = qword_27F21B370;
  if (!qword_27F21B370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B378);
    sub_24E74B910();
    sub_24E74BBE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B370);
  }

  return result;
}

uint64_t sub_24E74C370(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24E74C380()
{
  v1 = *(v0 + 24);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E74C3C8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C78) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v2 + 16 + ((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v2;
  v6 = v5 + v3;
  v7 = v0 + v4;
  v8 = type metadata accessor for CapsuleButtonContent.Symbol(0);
  v9 = *(*(v8 - 8) + 48);
  if (!v9(v7, 1, v8))
  {

    v10 = *(v8 + 20);
    v11 = sub_24F923D48();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  v12 = v6 & 0xFFFFFFFFFFFFFFF8;

  if (!v9(v0 + v5, 1, v8))
  {

    v13 = *(v8 + 20);
    v14 = sub_24F923D48();
    (*(*(v14 - 8) + 8))(v0 + v5 + v13, v14);
  }

  v15 = *(v0 + v12 + 16);
  if (v15 >= 4)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_24E74C5E0()
{
  result = qword_27F21B3A8;
  if (!qword_27F21B3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B3A0);
    sub_24E74C69C();
    sub_24E74B8C8(&qword_27F21B3C8, type metadata accessor for FocusedAlternativeSelectionButtonModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B3A8);
  }

  return result;
}

unint64_t sub_24E74C69C()
{
  result = qword_27F21B3B0;
  if (!qword_27F21B3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B390);
    sub_24E74C728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B3B0);
  }

  return result;
}

unint64_t sub_24E74C728()
{
  result = qword_27F21B3B8;
  if (!qword_27F21B3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B388);
    sub_24E602068(&qword_27F21B3C0, &qword_27F21B380);
    sub_24E602068(&qword_27F236280, &qword_27F217118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B3B8);
  }

  return result;
}

uint64_t PlayerID.playerID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PlayerID.playerID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_24E74C8B8(uint64_t a1)
{
  v2 = sub_24E74CA44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E74C8F4(uint64_t a1)
{
  v2 = sub_24E74CA44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayerIDDataIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B3D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E74CA44();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E74CA44()
{
  result = qword_27F21B3D8;
  if (!qword_27F21B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B3D8);
  }

  return result;
}

uint64_t sub_24E74CAE0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B3D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E74CA44();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E74CC28()
{
  result = qword_27F21B3E0;
  if (!qword_27F21B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B3E0);
  }

  return result;
}

unint64_t sub_24E74CC80()
{
  result = qword_27F21B3E8;
  if (!qword_27F21B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B3E8);
  }

  return result;
}

uint64_t sub_24E74CCD4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_24E74ECF8(&qword_27F21B3F8, type metadata accessor for AppFocusState);
  sub_24F91FD88();

  swift_beginAccess();
  return sub_24E65E064(v1 + 16, a1);
}

uint64_t sub_24E74CD94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E74ECF8(&qword_27F21B3F8, type metadata accessor for AppFocusState);
  sub_24F91FD88();

  swift_beginAccess();
  return sub_24E65E064(v3 + 16, a2);
}

uint64_t sub_24E74CE54(uint64_t a1)
{
  swift_beginAccess();
  sub_24E65E064(v1 + 16, v6);
  v3 = sub_24E74ED5C(v6, a1);
  sub_24E601704(v6, &qword_27F235830);
  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v6[0] = v1;
    sub_24E74ECF8(&qword_27F21B3F8, type metadata accessor for AppFocusState);
    sub_24F91FD78();
  }

  else
  {
    sub_24E65E064(a1, v6);
    swift_beginAccess();
    sub_24E74EE5C(v6, v1 + 16);
    swift_endAccess();
  }

  return sub_24E601704(a1, &qword_27F235830);
}

uint64_t sub_24E74CFE8(uint64_t a1, uint64_t a2)
{
  sub_24E65E064(a2, v4);
  swift_beginAccess();
  sub_24E74EE5C(v4, a1 + 16);
  return swift_endAccess();
}

uint64_t sub_24E74D050()
{
  swift_getKeyPath();
  sub_24E74ECF8(&qword_27F21B3F8, type metadata accessor for AppFocusState);
  sub_24F91FD88();

  swift_beginAccess();
}

uint64_t sub_24E74D108@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E74ECF8(&qword_27F21B3F8, type metadata accessor for AppFocusState);
  sub_24F91FD88();

  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_24E74D1C8(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_24EA17F28(v3, a1);

  if (v4)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E74ECF8(&qword_27F21B3F8, type metadata accessor for AppFocusState);
    sub_24F91FD78();
  }
}

uint64_t sub_24E74D310(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
}

uint64_t AppFocusState.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 48) = 0;
  *(v0 + 56) = v1;
  sub_24F91FDB8();
  return v0;
}

uint64_t AppFocusState.init()()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 48) = 0;
  *(v0 + 56) = v1;
  sub_24F91FDB8();
  return v0;
}

uint64_t sub_24E74D40C()
{
  v1 = v0;
  swift_getKeyPath();
  *&v11 = v0;
  sub_24E74ECF8(&qword_27F21B3F8, type metadata accessor for AppFocusState);
  sub_24F91FD88();

  swift_beginAccess();
  sub_24E65E064(v0 + 16, &v11);
  swift_getKeyPath();
  sub_24F91FD88();

  v10 = v0;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  v2 = *(v0 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 56) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24E617540(0, v2[2] + 1, 1, v2);
    *(v1 + 56) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_24E617540((v4 > 1), v5 + 1, 1, v2);
  }

  v2[2] = v5 + 1;
  v6 = &v2[5 * v5];
  v7 = v11;
  v8 = v12;
  v6[8] = v13;
  *(v6 + 2) = v7;
  *(v6 + 3) = v8;
  *(v1 + 56) = v2;
  swift_endAccess();
  swift_getKeyPath();
  sub_24F91FD98();

  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  return sub_24E74CE54(&v11);
}

uint64_t type metadata accessor for AppFocusState()
{
  result = qword_27F21B400;
  if (!qword_27F21B400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E74D6DC()
{
  swift_getKeyPath();
  sub_24E74ECF8(&qword_27F21B3F8, type metadata accessor for AppFocusState);
  sub_24F91FD88();

  *&v5 = v0;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  sub_24E74D844(&v2);
  swift_endAccess();
  *&v5 = v0;
  swift_getKeyPath();
  sub_24F91FD98();

  if (*(&v3 + 1) == 1)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
  }

  else
  {
    v5 = v2;
    v6 = v3;
    v7 = v4;
  }

  return sub_24E74CE54(&v5);
}

void sub_24E74D844(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(*v1 + 16))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v4 = v3[2];
      if (v4)
      {
LABEL_4:
        v3[2] = v4 - 1;
        *v1 = v3;
        v5 = &v3[5 * v4];
        v6 = *(v5 + 1);
        *a1 = *(v5 - 1);
        *(a1 + 16) = v6;
        *(a1 + 32) = v5[3];
        return;
      }
    }

    else
    {
      v3 = sub_24ECDE1C4(v3);
      v4 = v3[2];
      if (v4)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_24F950E90;
  }
}

uint64_t AppFocusState.deinit()
{
  sub_24E601704(v0 + 16, &qword_27F235830);

  v1 = OBJC_IVAR____TtC12GameStoreKit13AppFocusState___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AppFocusState.__deallocating_deinit()
{
  sub_24E601704(v0 + 16, &qword_27F235830);

  v1 = OBJC_IVAR____TtC12GameStoreKit13AppFocusState___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_24E74DA20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppFocusState();
  sub_24E74ECF8(&qword_27F21B3F8, type metadata accessor for AppFocusState);
  *a2 = sub_24F923588();
  *(a2 + 8) = v8 & 1;
  *(a2 + 16) = sub_24F923398() & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10 & 1;
  sub_24E65E064(a1, &v17);
  if (*(&v18 + 1))
  {
    sub_24E601704(a1, &qword_27F235830);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v11 = sub_24F91F668();
    v13 = v12;
    (*(v5 + 8))(v7, v4);
    v16[1] = v11;
    v16[2] = v13;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830);
    if (*(&v18 + 1))
    {
      sub_24E601704(&v17, &qword_27F235830);
    }
  }

  result = *&v20;
  v15 = v21;
  *(a2 + 40) = v20;
  *(a2 + 56) = v15;
  *(a2 + 72) = v22;
  return result;
}

uint64_t sub_24E74DC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v40 = a2;
  v31 = sub_24F924848();
  v30 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B410);
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B418);
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v35 = &v28 - v5;
  v32 = v2;
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  LOBYTE(v43) = *(v2 + 16);
  v6 = v43;
  *(&v43 + 1) = v7;
  LOBYTE(v44) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670);
  sub_24F923348();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B420);
  v10 = sub_24E602068(&qword_27F21B428, &qword_27F21B420);
  v11 = v33;
  sub_24F9269C8();

  v12 = v34;

  LOBYTE(v43) = v6;
  *(&v43 + 1) = v7;
  v13 = v32;
  LOBYTE(v44) = v8;
  sub_24F923328();
  sub_24E74EB74(v13, &v43);
  v14 = swift_allocObject();
  v15 = v46;
  v14[3] = v45;
  v14[4] = v15;
  v14[5] = v47;
  v16 = v44;
  v14[1] = v43;
  v14[2] = v16;
  *&v43 = v9;
  *(&v43 + 1) = v10;
  v17 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24F926AB8();

  (*(v37 + 8))(v11, v12);
  v19 = *v13;
  v20 = *(v13 + 8);

  if ((v20 & 1) == 0)
  {
    sub_24F92BDC8();
    v21 = sub_24F9257A8();
    sub_24F921FD8();

    v22 = v29;
    sub_24F924838();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v30 + 8))(v22, v31);
    v19 = v43;
  }

  if (v19)
  {
    swift_getKeyPath();
    *&v43 = v19;
    sub_24E74ECF8(&qword_27F21B3F8, type metadata accessor for AppFocusState);
    sub_24F91FD88();

    swift_beginAccess();
    sub_24E65E064(v19 + 16, v41);
  }

  else
  {
    v42 = 0;
    memset(v41, 0, sizeof(v41));
  }

  sub_24E74EB74(v13, &v43);
  v23 = swift_allocObject();
  v24 = v46;
  v23[3] = v45;
  v23[4] = v24;
  v23[5] = v47;
  v25 = v44;
  v23[1] = v43;
  v23[2] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235830);
  *&v43 = v12;
  *(&v43 + 1) = MEMORY[0x277D839B0];
  *&v44 = OpaqueTypeConformance2;
  *(&v44 + 1) = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_24E74EBC4();
  v26 = v39;
  sub_24F926AB8();

  sub_24E601704(v41, &qword_27F235830);
  return (*(v38 + 8))(v17, v26);
}

uint64_t sub_24E74E274(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  v5 = sub_24F924848();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    v10 = *a3;
    v11 = *(a3 + 8);

    if ((v11 & 1) == 0)
    {
      sub_24F92BDC8();
      v12 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      j__swift_release();
      result = (*(v6 + 8))(v9, v5);
      v10 = v14[0];
    }

    if (v10)
    {
      sub_24E65864C((a3 + 5), v14);
      sub_24E74CE54(v14);
    }
  }

  return result;
}

uint64_t sub_24E74E3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F927D88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927DC8();
  v27 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F927DE8();
  v26 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65864C(a3 + 40, aBlock);
  sub_24E65E064(aBlock, &v32);
  sub_24E65E064(a2, &v34[8]);
  if (!*(&v33 + 1))
  {
    sub_24E601704(aBlock, &qword_27F235830);
    if (!*&v34[32])
    {
      v24 = v9;
      v25 = v6;
      sub_24E601704(&v32, &qword_27F235830);
      goto LABEL_7;
    }

    return sub_24E601704(&v32, &qword_27F21B438);
  }

  sub_24E65E064(&v32, v30);
  if (!*&v34[32])
  {
    sub_24E601704(aBlock, &qword_27F235830);
    sub_24E6585F8(v30);
    return sub_24E601704(&v32, &qword_27F21B438);
  }

  v24 = v9;
  v25 = v6;
  v28[0] = *&v34[8];
  v28[1] = *&v34[24];
  v29 = *&v34[40];
  v15 = MEMORY[0x253052150](v30, v28);
  sub_24E6585F8(v28);
  sub_24E601704(aBlock, &qword_27F235830);
  sub_24E6585F8(v30);
  result = sub_24E601704(&v32, &qword_27F235830);
  if (v15)
  {
LABEL_7:
    sub_24E74EC40();
    v23 = sub_24F92BEF8();
    sub_24F927DD8();
    sub_24E74EB74(a3, &v32);
    v17 = swift_allocObject();
    v18 = *&v34[16];
    v17[3] = *v34;
    v17[4] = v18;
    v17[5] = *&v34[32];
    v19 = v33;
    v17[1] = v32;
    v17[2] = v19;
    aBlock[4] = sub_24E74ECD8;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_10;
    v20 = _Block_copy(aBlock);

    sub_24F927DA8();
    *&v32 = MEMORY[0x277D84F90];
    sub_24E74ECF8(&qword_27F222930, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E602068(&qword_27F222940, &qword_27F222310);
    sub_24F92C6A8();
    v21 = v23;
    MEMORY[0x253051820](v14, v11, v8, v20);
    _Block_release(v20);

    (*(v25 + 8))(v8, v5);
    (*(v27 + 8))(v11, v24);
    return (*(v26 + 8))(v14, v12);
  }

  return result;
}

uint64_t sub_24E74E984()
{
  result = sub_24F91FDC8();
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

uint64_t sub_24E74EAAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E74EAF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E74EBC4()
{
  result = qword_27F21B430;
  if (!qword_27F21B430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B430);
  }

  return result;
}

unint64_t sub_24E74EC40()
{
  result = qword_27F222300;
  if (!qword_27F222300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F222300);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{
  j__swift_release();

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocObject();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E74ECF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E74ED5C(uint64_t a1, uint64_t a2)
{
  sub_24E65E064(a1, v9);
  sub_24E65E064(a2, &v11);
  if (!v10)
  {
    if (!*(&v12 + 1))
    {
      sub_24E601704(v9, &qword_27F235830);
      v4 = 0;
      return v4 & 1;
    }

LABEL_7:
    sub_24E601704(v9, &qword_27F21B438);
    v4 = 1;
    return v4 & 1;
  }

  sub_24E65E064(v9, v8);
  if (!*(&v12 + 1))
  {
    sub_24E6585F8(v8);
    goto LABEL_7;
  }

  v6[0] = v11;
  v6[1] = v12;
  v7 = v13;
  v3 = MEMORY[0x253052150](v8, v6);
  sub_24E6585F8(v6);
  sub_24E6585F8(v8);
  sub_24E601704(v9, &qword_27F235830);
  v4 = v3 ^ 1;
  return v4 & 1;
}

uint64_t sub_24E74EE5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235830);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E74EEE8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B418);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235830);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B410);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B420);
  sub_24E602068(&qword_27F21B428, &qword_27F21B420);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_24E74EBC4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24E74F034(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16))();
  (*(v2 + 536))();
}

uint64_t sub_24E74F0B4(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for DiffablePagePresenter();
  swift_getWitnessTable();
  PaginatedPagePresenter.prepareNextPage()();
}

uint64_t sub_24E74F22C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))();
  sub_24EA080F4(a2);
}

uint64_t sub_24E74F280(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 16))() + qword_27F39B4A0);
  swift_unknownObjectRetain();

  return v2;
}

uint64_t sub_24E74F2E8(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  v2 = sub_24EA09534();

  return v2;
}

uint64_t sub_24E74F334@<X0>(uint64_t a1@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_24E74F22C(WitnessTable, a1);
}

uint64_t sub_24E74F398(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_24E74F280(a1, WitnessTable);
}

uint64_t sub_24E74F3EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_24E74F2E8(a1, WitnessTable);
}

uint64_t sub_24E74F440(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  sub_24E74F034(a1, WitnessTable);
  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_24E74F4C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  sub_24E74F0B4(a1, WitnessTable);
  v4 = *(v1 + 8);

  return v4();
}

uint64_t ConfettiView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F926E08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v8 = qword_27F24F280;
  sub_24F926E98();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v9 = sub_24F926E88();

  result = (*(v4 + 8))(v6, v3);
  *a1 = v9;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 17) = v7;
  return result;
}

uint64_t sub_24E74F6EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F926E08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v8 = qword_27F24F280;
  sub_24F926E98();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v9 = sub_24F926E88();

  result = (*(v4 + 8))(v6, v3);
  *a1 = v9;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 17) = v7;
  return result;
}

uint64_t ChallengesAllLeaderboardsShelfConstructionIntent.pageID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

unint64_t ChallengesAllLeaderboardsShelfConstructionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  strcpy((inited + 32), "leaderboards");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B440);
  v7 = sub_24E7502B4(&qword_27F21B448, &qword_27F21B450);
  *(inited + 48) = v3;
  *(inited + 80) = v7;
  *(inited + 88) = 0x444965676170;
  v8 = MEMORY[0x277D22580];
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v8;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 104) = v4;
  *(inited + 112) = v5;

  v9 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v9;
  return result;
}

uint64_t sub_24E74FAA0()
{
  if (*v0)
  {
    return 0x444965676170;
  }

  else
  {
    return 0x6F6272656461656CLL;
  }
}

uint64_t sub_24E74FAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6272656461656CLL && a2 == 0xEC00000073647261;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x444965676170 && a2 == 0xE600000000000000)
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

uint64_t sub_24E74FBBC(uint64_t a1)
{
  v2 = sub_24E750260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E74FBF8(uint64_t a1)
{
  v2 = sub_24E750260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesAllLeaderboardsShelfConstructionIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B458);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11[1] = v1[2];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E750260();

  sub_24F92D128();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B440);
  sub_24E7502B4(&qword_27F21B468, &qword_27F21B470);
  sub_24F92CD48();

  if (!v2)
  {
    v12 = 1;
    sub_24F92CD08();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ChallengesAllLeaderboardsShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B478);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E750260();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B440);
  v14[15] = 0;
  sub_24E7502B4(&qword_27F21B480, &qword_27F21B488);
  sub_24F92CC68();
  v9 = v15;
  v14[14] = 1;
  v10 = sub_24F92CC28();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24E7500C8@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  strcpy((inited + 32), "leaderboards");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B440);
  v7 = sub_24E7502B4(&qword_27F21B448, &qword_27F21B450);
  *(inited + 48) = v3;
  *(inited + 80) = v7;
  *(inited + 88) = 0x444965676170;
  v8 = MEMORY[0x277D22580];
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v8;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 104) = v4;
  *(inited + 112) = v5;

  v9 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v9;
  return result;
}

unint64_t sub_24E750260()
{
  result = qword_27F21B460;
  if (!qword_27F21B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B460);
  }

  return result;
}

uint64_t sub_24E7502B4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B440);
    sub_24E75033C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E75033C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Leaderboard(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E7503A4()
{
  result = qword_27F21B490;
  if (!qword_27F21B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B490);
  }

  return result;
}

unint64_t sub_24E7503FC()
{
  result = qword_27F21B498;
  if (!qword_27F21B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B498);
  }

  return result;
}

unint64_t sub_24E750454()
{
  result = qword_27F21B4A0;
  if (!qword_27F21B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B4A0);
  }

  return result;
}

uint64_t sub_24E7504BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Game();
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
      v13 = type metadata accessor for Player(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E7505F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Game();
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
      v13 = type metadata accessor for Player(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for FriendsPlayingShelfIntent()
{
  result = qword_27F21B4A8;
  if (!qword_27F21B4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E750764()
{
  result = type metadata accessor for Game();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Player(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24E750800@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v7 = type metadata accessor for FriendsPlayingShelfIntent();
  v8 = v7[6];
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E751390(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E7513D8(v1 + v8, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 1701667175;
  *(inited + 152) = 0xE400000000000000;
  v10 = v7[5];
  *(inited + 184) = type metadata accessor for Game();
  *(inited + 192) = sub_24E751390(&qword_27F217960, type metadata accessor for Game);
  v11 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24E7513D8(v1 + v10, v11, type metadata accessor for Game);
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x800000024FA46670;
  v12 = *(v1 + v7[7]);
  v13 = MEMORY[0x277D22598];
  *(inited + 240) = MEMORY[0x277D839B0];
  *(inited + 248) = v13;
  *(inited + 216) = v12;

  v14 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v15 = sub_24E80FFAC(v14);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v15;
  return result;
}

uint64_t sub_24E750A74(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B4C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7512DC();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for FriendsPlayingShelfIntent();
    v8[14] = 1;
    type metadata accessor for Game();
    sub_24E751390(&qword_27F214950, type metadata accessor for Game);
    sub_24F92CD48();
    v8[13] = 2;
    type metadata accessor for Player(0);
    sub_24E751390(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
    v8[12] = 3;
    sub_24F92CD18();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E750CD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B4B8);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v18 - v7;
  v9 = type metadata accessor for FriendsPlayingShelfIntent();
  MEMORY[0x28223BE20](v9);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7512DC();
  v23 = v8;
  v12 = v25;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v22;
  v29 = 0;
  *v11 = sub_24F92CC28();
  v11[1] = v14;
  v25 = v14;
  v28 = 1;
  sub_24E751390(&qword_27F214968, type metadata accessor for Game);
  sub_24F92CC68();
  sub_24E691974(v6, v11 + v9[5], type metadata accessor for Game);
  v27 = 2;
  sub_24E751390(&qword_27F213E38, type metadata accessor for Player);
  v15 = v20;
  sub_24F92CC68();
  sub_24E691974(v15, v11 + v9[6], type metadata accessor for Player);
  v26 = 3;
  v17 = sub_24F92CC38();
  (*(v13 + 8))(v23, v24);
  *(v11 + v9[7]) = v17 & 1;
  sub_24E7513D8(v11, v19, type metadata accessor for FriendsPlayingShelfIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E751330(v11, type metadata accessor for FriendsPlayingShelfIntent);
}

unint64_t sub_24E751164()
{
  v1 = 0x444965676170;
  v2 = 0x726579616C70;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 1701667175;
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

uint64_t sub_24E7511D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E751558(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E7511FC(uint64_t a1)
{
  v2 = sub_24E7512DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E751238(uint64_t a1)
{
  v2 = sub_24E7512DC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E7512DC()
{
  result = qword_27F21B4C0;
  if (!qword_27F21B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B4C0);
  }

  return result;
}

uint64_t sub_24E751330(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E751390(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E7513D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E751454()
{
  result = qword_27F21B4D0;
  if (!qword_27F21B4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B4D0);
  }

  return result;
}

unint64_t sub_24E7514AC()
{
  result = qword_27F21B4D8;
  if (!qword_27F21B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B4D8);
  }

  return result;
}

unint64_t sub_24E751504()
{
  result = qword_27F21B4E0;
  if (!qword_27F21B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B4E0);
  }

  return result;
}

uint64_t sub_24E751558(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2)
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

uint64_t sub_24E751718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v6 = sub_24F92CA08();
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0);
  v5[32] = v7;
  v5[33] = *(v7 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v8 = sub_24F928AE8();
  v5[37] = v8;
  v5[38] = *(v8 - 8);
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = type metadata accessor for ReportFriendRequestDidSendAction();
  v5[43] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  v5[44] = v9;
  v5[45] = *(v9 - 8);
  v5[46] = swift_task_alloc();
  sub_24F92B7F8();
  v5[47] = sub_24F92B7E8();
  v11 = sub_24F92B778();
  v5[48] = v11;
  v5[49] = v10;

  return MEMORY[0x2822009F8](sub_24E751998, v11, v10);
}

uint64_t sub_24E751998()
{
  v0[50] = *(v0[27] + OBJC_IVAR____TtC12GameStoreKit34FriendRequestComposeViewController_objectGraph);
  v1 = swift_task_alloc();
  v0[51] = v1;
  *v1 = v0;
  v1[1] = sub_24E751A4C;
  v2 = v0[46];
  v3 = v0[44];

  return MEMORY[0x28217F228](v2, v3, v3);
}

uint64_t sub_24E751A4C()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 392);
  v4 = *(v2 + 384);
  if (v0)
  {
    v5 = sub_24E752C6C;
  }

  else
  {
    v5 = sub_24E751B88;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E751B88()
{
  v1 = *(v0 + 224);
  if (!v1)
  {
LABEL_5:
    (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));

    goto LABEL_6;
  }

  if (v1 != 2)
  {
    if (v1 == 1)
    {
      v3 = *(v0 + 336);
      v2 = *(v0 + 344);
      v4 = *(v0 + 288);
      v5 = *(v0 + 264);
      v6 = [objc_allocWithZone(MEMORY[0x277D0BFA8]) init];
      v7 = [objc_opt_self() mainBundle];
      v8 = [v7 bundleIdentifier];

      [v6 recordFriendInviteActivityEventAtStage:1 hostApp:v8];
      sub_24F928A98();
      *(v0 + 120) = v3;
      *(v0 + 128) = sub_24E75393C();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
      sub_24E753994(v2, boxed_opaque_existential_1);
      *(v0 + 536) = *MEMORY[0x277D21E18];
      v10 = *(v5 + 104);
      *(v0 + 424) = v10;
      *(v0 + 432) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v10(v4);
      v11 = swift_task_alloc();
      *(v0 + 440) = v11;
      *v11 = v0;
      v11[1] = sub_24E751EFC;
      v12 = *(v0 + 400);
      v13 = *(v0 + 352);
      v14 = *(v0 + 328);
      v15 = *(v0 + 288);
      v16 = v0 + 96;
LABEL_11:

      return MEMORY[0x28217F468](v14, v16, v15, v12, v13);
    }

    goto LABEL_5;
  }

  sub_24E7538CC(*(v0 + 216) + OBJC_IVAR____TtC12GameStoreKit34FriendRequestComposeViewController_failureAction, v0 + 56);
  if (*(v0 + 80))
  {
    v20 = *(v0 + 264);
    v19 = *(v0 + 272);
    v21 = *(v0 + 256);
    sub_24E612C80((v0 + 56), v0 + 16);
    (*(v20 + 104))(v19, *MEMORY[0x277D21E18], v21);
    v22 = swift_task_alloc();
    *(v0 + 520) = v22;
    *v22 = v0;
    v22[1] = sub_24E7529E0;
    v12 = *(v0 + 400);
    v13 = *(v0 + 352);
    v14 = *(v0 + 312);
    v15 = *(v0 + 272);
    v16 = v0 + 16;
    goto LABEL_11;
  }

  (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));

  sub_24E601704(v0 + 56, qword_27F21B590);
LABEL_6:

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24E751EFC()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 264);
  v5 = *(*v1 + 256);
  v2[56] = v0;

  v6 = *(v4 + 8);
  v2[57] = v6;
  v2[58] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = v2[48];
    v8 = v2[49];
    v9 = sub_24E752E7C;
  }

  else
  {
    v10 = v2[41];
    v11 = v2[37];
    v12 = v2[38];
    v13 = *(v12 + 8);
    v2[59] = v13;
    v2[60] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v10, v11);
    __swift_destroy_boxed_opaque_existential_1((v2 + 12));
    v7 = v2[48];
    v8 = v2[49];
    v9 = sub_24E7520AC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24E7520AC()
{
  sub_24E7538CC(*(v0 + 216) + OBJC_IVAR____TtC12GameStoreKit34FriendRequestComposeViewController_successAction, v0 + 176);
  if (*(v0 + 200))
  {
    sub_24E612C80((v0 + 176), v0 + 136);
    v1 = sub_24F92D1A8();
    v3 = v2;
    sub_24F92CFB8();
    v4 = swift_task_alloc();
    *(v0 + 488) = v4;
    *v4 = v0;
    v4[1] = sub_24E7522B0;

    return sub_24E70C87C(v1, v3, 0, 0, 1);
  }

  else
  {
    v6 = *(v0 + 368);
    v7 = *(v0 + 352);
    v8 = *(v0 + 360);
    v9 = *(v0 + 344);

    sub_24E7539F8(v9);
    (*(v8 + 8))(v6, v7);
    sub_24E601704(v0 + 176, qword_27F21B590);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_24E7522B0()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 232);
  *(*v1 + 496) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 392);
  v7 = *(v2 + 384);
  if (v0)
  {
    v8 = sub_24E752698;
  }

  else
  {
    v8 = sub_24E752448;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24E752448()
{
  (*(v0 + 424))(*(v0 + 280), *(v0 + 536), *(v0 + 256));
  v1 = swift_task_alloc();
  *(v0 + 504) = v1;
  *v1 = v0;
  v1[1] = sub_24E752508;
  v2 = *(v0 + 400);
  v3 = *(v0 + 352);
  v4 = *(v0 + 320);
  v5 = *(v0 + 280);

  return MEMORY[0x28217F468](v4, v0 + 136, v5, v2, v3);
}

uint64_t sub_24E752508()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 256);
  *(*v1 + 512) = v0;

  v3(v4, v5);
  if (v0)
  {
    v6 = *(v2 + 384);
    v7 = *(v2 + 392);
    v8 = sub_24E7530BC;
  }

  else
  {
    (*(v2 + 472))(*(v2 + 320), *(v2 + 296));
    v6 = *(v2 + 384);
    v7 = *(v2 + 392);
    v8 = sub_24E7528D8;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_24E752698()
{
  v1 = v0[46];
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[43];

  __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  sub_24E7539F8(v4);
  (*(v3 + 8))(v1, v2);
  v5 = v0[62];
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E808);
  v7 = v5;
  v8 = sub_24F9220B8();
  v9 = sub_24F92BDB8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v8, v9, "messageComposeViewController: Failed to dispatch action: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_24E7528D8()
{
  v1 = v0[46];
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[43];

  __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  sub_24E7539F8(v4);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24E7529E0()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 264);
  v5 = *(*v1 + 256);
  *(*v1 + 528) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = v2[48];
    v7 = v2[49];
    v8 = sub_24E7532FC;
  }

  else
  {
    (*(v2[38] + 8))(v2[39], v2[37]);
    v6 = v2[48];
    v7 = v2[49];
    v8 = sub_24E752B70;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_24E752B70()
{
  v1 = v0[46];
  v2 = v0[44];
  v3 = v0[45];

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24E752C6C()
{

  v1 = *(v0 + 416);
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
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "messageComposeViewController: Failed to dispatch action: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24E752E7C()
{
  v1 = v0[46];
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[43];

  sub_24E7539F8(v4);
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  v5 = v0[56];
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E808);
  v7 = v5;
  v8 = sub_24F9220B8();
  v9 = sub_24F92BDB8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v8, v9, "messageComposeViewController: Failed to dispatch action: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_24E7530BC()
{
  v1 = v0[46];
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[43];

  __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  sub_24E7539F8(v4);
  (*(v3 + 8))(v1, v2);
  v5 = v0[64];
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E808);
  v7 = v5;
  v8 = sub_24F9220B8();
  v9 = sub_24F92BDB8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v8, v9, "messageComposeViewController: Failed to dispatch action: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_24E7532FC()
{
  v1 = v0[46];
  v2 = v0[44];
  v3 = v0[45];

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  (*(v3 + 8))(v1, v2);
  v4 = v0[66];
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v5 = sub_24F9220D8();
  __swift_project_value_buffer(v5, qword_27F39E808);
  v6 = v4;
  v7 = sub_24F9220B8();
  v8 = sub_24F92BDB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_24E5DD000, v7, v8, "messageComposeViewController: Failed to dispatch action: %@", v9, 0xCu);
    sub_24E601704(v10, &qword_27F227B20);
    MEMORY[0x2530542D0](v10, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_24E7537CC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E75380C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24E751718(a1, v4, v5, v7, v6);
}

uint64_t sub_24E7538CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F21B590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E75393C()
{
  result = qword_27F216350;
  if (!qword_27F216350)
  {
    type metadata accessor for ReportFriendRequestDidSendAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216350);
  }

  return result;
}

uint64_t sub_24E753994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportFriendRequestDidSendAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7539F8(uint64_t a1)
{
  v2 = type metadata accessor for ReportFriendRequestDidSendAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_24E753A54()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD6910]) init];
  if (qword_27F211530 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92B098();
  [v0 setCaption_];

  v2 = [objc_allocWithZone(MEMORY[0x277CD6900]) initWithAlternateLayout_];
  v3 = [objc_allocWithZone(MEMORY[0x277CD6920]) init];
  v4 = [objc_allocWithZone(MEMORY[0x277CD68F8]) initWithSession_];

  if (qword_27F211538 != -1)
  {
    swift_once();
  }

  v5 = sub_24F92B098();
  [v4 setSummaryText_];

  [v4 setLayout_];
  [v4 setRequiresValidation_];

  return v4;
}

uint64_t sub_24E753BE4(uint64_t a1, uint64_t a2)
{
  v2[34] = a1;
  v2[35] = a2;
  type metadata accessor for LaunchGameClipAction();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v2[43] = swift_task_alloc();
  v3 = sub_24F91F4A8();
  v2[44] = v3;
  v2[45] = *(v3 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E753D8C, 0, 0);
}

uint64_t sub_24E753D8C()
{
  v63 = v0;
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  sub_24F91F488();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24E601704(v0[43], &qword_27F228530);
    if (qword_27F2113C0 != -1)
    {
      swift_once();
    }

    v4 = v0[37];
    v5 = v0[38];
    v6 = v0[35];
    v7 = sub_24F9220D8();
    __swift_project_value_buffer(v7, qword_27F39E790);
    sub_24E755EE4(v6, v5);
    sub_24E755EE4(v6, v4);
    v8 = sub_24F9220B8();
    v9 = sub_24F92BDB8();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[37];
    v12 = v0[38];
    if (v10)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v62 = v14;
      *v13 = 136315394;
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);

      sub_24E7561C0(v12);
      v17 = sub_24E7620D4(v15, v16, &v62);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = *v11;
      v19 = v11[1];

      sub_24E7561C0(v11);
      v20 = sub_24E7620D4(v18, v19, &v62);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_24E5DD000, v8, v9, "Invalid clip URL: %s, %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v14, -1, -1);
      MEMORY[0x2530542D0](v13, -1, -1);
    }

    else
    {

      sub_24E7561C0(v11);
      sub_24E7561C0(v12);
    }

    v48 = v0[34];
    v49 = *MEMORY[0x277D21CA0];
    v50 = sub_24F928AE8();
    (*(*(v50 - 8) + 104))(v48, v49, v50);

    v51 = v0[1];

    return v51();
  }

  else
  {
    (*(v0[45] + 32))(v0[51], v0[43], v0[44]);
    v21 = objc_allocWithZone(MEMORY[0x277CFA6A8]);
    v22 = sub_24F91F3B8();
    v23 = &off_279691000;
    v24 = [v21 initWithURL_];
    v0[52] = v24;

    if (([v24 isLikelyAvailable] & 1) == 0)
    {
      if (qword_27F2113C0 != -1)
      {
        swift_once();
      }

      v25 = v0[50];
      v26 = v0[51];
      v27 = v0[44];
      v28 = v0[45];
      v29 = v0[42];
      v30 = v0[35];
      v31 = sub_24F9220D8();
      __swift_project_value_buffer(v31, qword_27F39E790);
      (*(v28 + 16))(v25, v26, v27);
      sub_24E755EE4(v30, v29);
      v32 = sub_24F9220B8();
      v33 = sub_24F92BDB8();
      v34 = os_log_type_enabled(v32, v33);
      v35 = v0[50];
      v37 = v0[44];
      v36 = v0[45];
      v38 = v0[42];
      if (v34)
      {
        v39 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v62 = v61;
        *v39 = 136315394;
        sub_24E756234(&qword_27F21B620, MEMORY[0x277CC9260]);
        v40 = sub_24F92CD88();
        v42 = v41;
        (*(v36 + 8))(v35, v37);
        v43 = v40;
        v23 = &off_279691000;
        v44 = sub_24E7620D4(v43, v42, &v62);

        *(v39 + 4) = v44;
        *(v39 + 12) = 2080;
        v45 = *v38;
        v46 = v38[1];

        sub_24E7561C0(v38);
        v47 = sub_24E7620D4(v45, v46, &v62);

        *(v39 + 14) = v47;
        _os_log_impl(&dword_24E5DD000, v32, v33, "CPSClipMetadataRequest is likely NOT available: %s, %s", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2530542D0](v61, -1, -1);
        MEMORY[0x2530542D0](v39, -1, -1);
      }

      else
      {

        sub_24E7561C0(v38);
        (*(v36 + 8))(v35, v37);
      }
    }

    v53 = v0[35];
    v54 = objc_allocWithZone(MEMORY[0x277CFA6B0]);
    v55 = sub_24F91F3B8();
    v56 = [v54 v23[348]];
    v0[53] = v56;

    if (*(v53 + 32) == 1)
    {
      v57 = v0 + 10;
      v0[10] = v0;
      v0[15] = v0 + 57;
      v0[11] = sub_24E754584;
      v58 = swift_continuation_init();
      v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B628);
      v0[26] = MEMORY[0x277D85DD0];
      v0[27] = 1107296256;
      v0[28] = sub_24E755BA0;
      v0[29] = &block_descriptor_12;
      v0[30] = v58;
      [v56 requestClipWithCompletion_];
    }

    else
    {
      v57 = v0 + 2;
      v59 = sub_24F92B098();
      v0[55] = v59;
      v0[2] = v0;
      v0[3] = sub_24E754D0C;
      v60 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B618);
      v0[18] = MEMORY[0x277D85DD0];
      v0[19] = 1107296256;
      v0[20] = sub_24E760660;
      v0[21] = &block_descriptor_11;
      v0[22] = v60;
      [v56 installClipWithBundleID:v59 completion:v0 + 18];
    }

    return MEMORY[0x282200938](v57);
  }
}

uint64_t sub_24E754584()
{
  v1 = *(*v0 + 112);
  *(*v0 + 432) = v1;
  if (v1)
  {
    v2 = sub_24E755204;
  }

  else
  {
    v2 = sub_24E754694;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E754694()
{
  v68 = v0;
  if (*(v0 + 456) == 1)
  {
    if (qword_27F2113C0 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 408);
    v2 = *(v0 + 392);
    v3 = *(v0 + 352);
    v4 = *(v0 + 360);
    v5 = *(v0 + 328);
    v6 = *(v0 + 280);
    v7 = sub_24F9220D8();
    __swift_project_value_buffer(v7, qword_27F39E790);
    (*(v4 + 16))(v2, v1, v3);
    sub_24E755EE4(v6, v5);
    v8 = sub_24F9220B8();
    v9 = sub_24F92BDB8();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 416);
    v12 = *(v0 + 408);
    v13 = *(v0 + 392);
    v14 = *(v0 + 352);
    v15 = *(v0 + 360);
    v16 = *(v0 + 328);
    if (v10)
    {
      v63 = *(v0 + 424);
      v65 = *(v0 + 416);
      v17 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v67 = v59;
      *v17 = 136315394;
      sub_24E756234(&qword_27F21B620, MEMORY[0x277CC9260]);
      v18 = sub_24F92CD88();
      v61 = v12;
      v20 = v19;
      v21 = *(v15 + 8);
      v21(v13, v14);
      v22 = sub_24E7620D4(v18, v20, &v67);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      v23 = *v16;
      v24 = v16[1];

      sub_24E7561C0(v16);
      v25 = sub_24E7620D4(v23, v24, &v67);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_24E5DD000, v8, v9, "Clip requested successfully: %s, %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v59, -1, -1);
      MEMORY[0x2530542D0](v17, -1, -1);

      v21(v61, v14);
    }

    else
    {

      sub_24E7561C0(v16);
      v51 = *(v15 + 8);
      v51(v13, v14);
      v51(v12, v14);
    }

    v52 = MEMORY[0x277D21CA8];
  }

  else
  {
    if (qword_27F2113C0 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 408);
    v27 = *(v0 + 384);
    v28 = *(v0 + 352);
    v29 = *(v0 + 360);
    v30 = *(v0 + 320);
    v31 = *(v0 + 280);
    v32 = sub_24F9220D8();
    __swift_project_value_buffer(v32, qword_27F39E790);
    (*(v29 + 16))(v27, v26, v28);
    sub_24E755EE4(v31, v30);
    v33 = sub_24F9220B8();
    v34 = sub_24F92BDB8();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 416);
    v37 = *(v0 + 408);
    v38 = *(v0 + 384);
    v39 = *(v0 + 352);
    v40 = *(v0 + 360);
    v41 = *(v0 + 320);
    if (v35)
    {
      v64 = *(v0 + 424);
      v66 = *(v0 + 416);
      v42 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v67 = v60;
      *v42 = 136315394;
      sub_24E756234(&qword_27F21B620, MEMORY[0x277CC9260]);
      v43 = sub_24F92CD88();
      v62 = v37;
      v45 = v44;
      v46 = *(v40 + 8);
      v46(v38, v39);
      v47 = sub_24E7620D4(v43, v45, &v67);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;
      v48 = *v41;
      v49 = v41[1];

      sub_24E7561C0(v41);
      v50 = sub_24E7620D4(v48, v49, &v67);

      *(v42 + 14) = v50;
      _os_log_impl(&dword_24E5DD000, v33, v34, "Requested clip was not available: %s, %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v60, -1, -1);
      MEMORY[0x2530542D0](v42, -1, -1);

      v46(v62, v39);
    }

    else
    {

      sub_24E7561C0(v41);
      v53 = *(v40 + 8);
      v53(v38, v39);
      v53(v37, v39);
    }

    v52 = MEMORY[0x277D21CA0];
  }

  v54 = *(v0 + 272);
  v55 = *v52;
  v56 = sub_24F928AE8();
  (*(*(v56 - 8) + 104))(v54, v55, v56);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_24E754D0C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 448) = v1;
  if (v1)
  {
    v2 = sub_24E7556D0;
  }

  else
  {
    v2 = sub_24E754E1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E754E1C()
{
  v37 = v0;

  if (qword_27F2113C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 408);
  v2 = *(v0 + 376);
  v3 = *(v0 + 352);
  v4 = *(v0 + 360);
  v5 = *(v0 + 312);
  v6 = *(v0 + 280);
  v7 = sub_24F9220D8();
  __swift_project_value_buffer(v7, qword_27F39E790);
  (*(v4 + 16))(v2, v1, v3);
  sub_24E755EE4(v6, v5);
  v8 = sub_24F9220B8();
  v9 = sub_24F92BDB8();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 416);
  v12 = *(v0 + 408);
  v13 = *(v0 + 376);
  v14 = *(v0 + 352);
  v15 = *(v0 + 360);
  v16 = *(v0 + 312);
  if (v10)
  {
    v34 = *(v0 + 424);
    v35 = *(v0 + 416);
    v17 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = v32;
    *v17 = 136315394;
    sub_24E756234(&qword_27F21B620, MEMORY[0x277CC9260]);
    v18 = sub_24F92CD88();
    v33 = v12;
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v13, v14);
    v22 = sub_24E7620D4(v18, v20, &v36);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = *v16;
    v24 = v16[1];

    sub_24E7561C0(v16);
    v25 = sub_24E7620D4(v23, v24, &v36);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_24E5DD000, v8, v9, "Clip installed successfully: %s, %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v32, -1, -1);
    MEMORY[0x2530542D0](v17, -1, -1);

    v21(v33, v14);
  }

  else
  {

    sub_24E7561C0(v16);
    v26 = *(v15 + 8);
    v26(v13, v14);
    v26(v12, v14);
  }

  v27 = *(v0 + 272);
  v28 = *MEMORY[0x277D21CA8];
  v29 = sub_24F928AE8();
  (*(*(v29 - 8) + 104))(v27, v28, v29);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_24E755204()
{
  v45 = v0;
  swift_willThrow();
  v43 = v0[54];
  if (qword_27F2113C0 != -1)
  {
    swift_once();
  }

  v1 = v0[51];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[44];
  v6 = v0[35];
  v5 = v0[36];
  v7 = sub_24F9220D8();
  __swift_project_value_buffer(v7, qword_27F39E790);
  (*(v2 + 16))(v3, v1, v4);
  sub_24E755EE4(v6, v5);
  v8 = sub_24F9220B8();
  v9 = sub_24F92BDB8();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[45];
  v11 = v0[46];
  v13 = v0[44];
  v14 = v0[36];
  if (v10)
  {
    v15 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44[0] = v42;
    *v15 = 136315394;
    sub_24E756234(&qword_27F21B620, MEMORY[0x277CC9260]);
    log = v8;
    v16 = sub_24F92CD88();
    v18 = v17;
    v19 = *(v12 + 8);
    v19(v11, v13);
    v20 = sub_24E7620D4(v16, v18, v44);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v22 = *v14;
    v21 = v14[1];

    v23 = v14;
    v24 = v19;
    sub_24E7561C0(v23);
    v25 = sub_24E7620D4(v22, v21, v44);

    *(v15 + 14) = v25;
    _os_log_impl(&dword_24E5DD000, log, v9, "Clip request failed: %s, %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v42, -1, -1);
    MEMORY[0x2530542D0](v15, -1, -1);
  }

  else
  {

    sub_24E7561C0(v14);
    v24 = *(v12 + 8);
    v24(v11, v13);
  }

  v26 = v43;
  v27 = sub_24F9220B8();
  v28 = sub_24F92BDB8();

  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[52];
  v31 = v0[53];
  if (v29)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = v43;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v35;
    *v33 = v35;
    _os_log_impl(&dword_24E5DD000, v27, v28, "%@", v32, 0xCu);
    sub_24E601704(v33, &qword_27F227B20);
    MEMORY[0x2530542D0](v33, -1, -1);
    MEMORY[0x2530542D0](v32, -1, -1);
  }

  else
  {
  }

  v36 = v0[34];
  v24(v0[51], v0[44]);
  v37 = *MEMORY[0x277D21CA0];
  v38 = sub_24F928AE8();
  (*(*(v38 - 8) + 104))(v36, v37, v38);

  v39 = v0[1];

  return v39();
}

uint64_t sub_24E7556D0()
{
  v46 = v0;
  v1 = v0[55];
  swift_willThrow();

  v44 = v0[56];
  if (qword_27F2113C0 != -1)
  {
    swift_once();
  }

  v2 = v0[51];
  v3 = v0[45];
  v4 = v0[46];
  v5 = v0[44];
  v7 = v0[35];
  v6 = v0[36];
  v8 = sub_24F9220D8();
  __swift_project_value_buffer(v8, qword_27F39E790);
  (*(v3 + 16))(v4, v2, v5);
  sub_24E755EE4(v7, v6);
  v9 = sub_24F9220B8();
  v10 = sub_24F92BDB8();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[45];
  v12 = v0[46];
  v14 = v0[44];
  v15 = v0[36];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45[0] = v43;
    *v16 = 136315394;
    sub_24E756234(&qword_27F21B620, MEMORY[0x277CC9260]);
    log = v9;
    v17 = sub_24F92CD88();
    v19 = v18;
    v20 = *(v13 + 8);
    v20(v12, v14);
    v21 = sub_24E7620D4(v17, v19, v45);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v23 = *v15;
    v22 = v15[1];

    v24 = v15;
    v25 = v20;
    sub_24E7561C0(v24);
    v26 = sub_24E7620D4(v23, v22, v45);

    *(v16 + 14) = v26;
    _os_log_impl(&dword_24E5DD000, log, v10, "Clip request failed: %s, %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v43, -1, -1);
    MEMORY[0x2530542D0](v16, -1, -1);
  }

  else
  {

    sub_24E7561C0(v15);
    v25 = *(v13 + 8);
    v25(v12, v14);
  }

  v27 = v44;
  v28 = sub_24F9220B8();
  v29 = sub_24F92BDB8();

  v30 = os_log_type_enabled(v28, v29);
  v31 = v0[52];
  v32 = v0[53];
  if (v30)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    v35 = v44;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v36;
    *v34 = v36;
    _os_log_impl(&dword_24E5DD000, v28, v29, "%@", v33, 0xCu);
    sub_24E601704(v34, &qword_27F227B20);
    MEMORY[0x2530542D0](v34, -1, -1);
    MEMORY[0x2530542D0](v33, -1, -1);
  }

  else
  {
  }

  v37 = v0[34];
  v25(v0[51], v0[44]);
  v38 = *MEMORY[0x277D21CA0];
  v39 = sub_24F928AE8();
  (*(*(v39 - 8) + 104))(v37, v38, v39);

  v40 = v0[1];

  return v40();
}

uint64_t sub_24E755BA0(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_24E755C74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for LaunchGameClipAction();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_24E755EE4(a1, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_24E756038(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v10 = sub_24F92A9E8();
  v11 = sub_24F92B858();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24F9516E8;
  v12[5] = v9;
  v12[6] = v10;

  sub_24E6959D8(0, 0, v4, &unk_24F94D7B0, v12);

  return v10;
}

uint64_t sub_24E755EE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchGameClipAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E755F48()
{
  v1 = (type metadata accessor for LaunchGameClipAction() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24E756038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchGameClipAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E75609C(uint64_t a1)
{
  v4 = *(type metadata accessor for LaunchGameClipAction() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E614970;

  return sub_24E753BE4(a1, v1 + v5);
}

uint64_t sub_24E756178()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E7561C0(uint64_t a1)
{
  v2 = type metadata accessor for LaunchGameClipAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E756234(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E7562A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a1;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v85);
  v84 = &v80 - v4;
  v5 = sub_24F924848();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v81 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F9234D8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v80 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B658);
  MEMORY[0x28223BE20](v15);
  v17 = &v80 - v16;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B660);
  MEMORY[0x28223BE20](v87);
  v90 = &v80 - v18;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B668);
  MEMORY[0x28223BE20](v89);
  v95 = &v80 - v19;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B670);
  MEMORY[0x28223BE20](v94);
  v93 = &v80 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B678);
  MEMORY[0x28223BE20](v21 - 8);
  v96 = &v80 - v22;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B680);
  MEMORY[0x28223BE20](v91);
  v97 = &v80 - v23;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B688);
  MEMORY[0x28223BE20](v92);
  v99 = &v80 - v24;
  v101 = type metadata accessor for LargeButtonForegroundStyleViewModifier();
  v25 = *(v2 + v101[6]);
  v26 = *(v2 + v101[7]);
  v100 = a2;
  v83 = v5;
  v82 = v6;
  v98 = v25;
  v86 = v26;
  if (v25)
  {
    if (v25 == 1 || !v26)
    {
      goto LABEL_4;
    }
  }

  else if ((v26 & 1) == 0)
  {
LABEL_4:
    v27 = MEMORY[0x277CDF3C0];
    goto LABEL_7;
  }

  v27 = MEMORY[0x277CDF3D0];
LABEL_7:
  (*(v9 + 104))(v12, *v27, v8);
  v28 = *(v9 + 32);
  v28(v14, v12, v8);
  KeyPath = swift_getKeyPath();
  v30 = &v17[*(v15 + 36)];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858);
  v28(v30 + *(v31 + 28), v14, v8);
  *v30 = KeyPath;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B690);
  (*(*(v32 - 8) + 16))(v17, v88, v32);
  v33 = v101[10];
  v34 = v2 + v101[9];
  v35 = *v34;
  v36 = *(v34 + 8);
  v37 = *(v2 + v33);
  v38 = *(v2 + v33 + 8);
  sub_24F927618();
  v39 = v35;
  if (v36)
  {
    v39 = -INFINITY;
  }

  v40 = v37;
  if (v38)
  {
    v40 = v39;
  }

  if (v39 > v40)
  {
    sub_24F92BDC8();
    v41 = sub_24F9257A8();
    sub_24F921FD8();
  }

  sub_24F9242E8();
  v42 = v90;
  sub_24E6009C8(v17, v90, &qword_27F21B658);
  v43 = (v42 + *(v87 + 36));
  v44 = v108;
  v43[4] = v107;
  v43[5] = v44;
  v43[6] = v109;
  v45 = v104;
  *v43 = v103;
  v43[1] = v45;
  v46 = v106;
  v43[2] = v105;
  v43[3] = v46;
  sub_24E756DB4();
  sub_24F927618();
  sub_24F9238C8();
  v47 = v95;
  sub_24E6009C8(v42, v95, &qword_27F21B660);
  v48 = (v47 + *(v89 + 36));
  v49 = v111;
  v50 = v112;
  *v48 = v110;
  v48[1] = v49;
  v48[2] = v50;
  v51 = v98;
  if (v98)
  {
    v52 = v99;
    if (v98 == 1 || !v86)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v52 = v99;
    if ((v86 & 1) == 0)
    {
LABEL_16:
      v53 = sub_24F9251B8();
      v54 = *(v85 + 36);
      v55 = *MEMORY[0x277CE13B8];
      v56 = sub_24F927748();
      v57 = v84;
      (*(*(v56 - 8) + 104))(&v84[v54], v55, v56);
      *v57 = v53;
      sub_24E602068(&qword_27F214428, &qword_27F213F10);
      goto LABEL_19;
    }
  }

  v102 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
LABEL_19:
  v58 = sub_24F9238D8();
  v59 = sub_24F925808();
  v60 = v93;
  sub_24E6009C8(v47, v93, &qword_27F21B668);
  v61 = v60 + *(v94 + 36);
  *v61 = v58;
  *(v61 + 8) = v59;
  v62 = v96;
  sub_24E6009C8(v60, v96, &qword_27F21B670);
  v63 = v97;
  v64 = &v97[*(v91 + 36)];
  v65 = *MEMORY[0x277CE0118];
  v66 = sub_24F924B38();
  v67 = *(*(v66 - 8) + 104);
  v67(v64, v65, v66);
  v64[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B698) + 36)] = 0;
  sub_24E6009C8(v62, v63, &qword_27F21B678);
  v68 = v52 + *(v92 + 36);
  v67(v68, v65, v66);
  *(v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2552C0) + 36)) = 256;
  sub_24E6009C8(v63, v52, &qword_27F21B680);
  v69 = v2 + v101[5];
  v70 = *v69;
  if (*(v69 + 8) != 1)
  {

    sub_24F92BDC8();
    v71 = sub_24F9257A8();
    sub_24F921FD8();

    v72 = v81;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v70, 0);
    (*(v82 + 8))(v72, v83);
  }

  v73 = v100;
  v74 = v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B6A0) + 36);
  sub_24E757170(v51, v74);
  v75 = sub_24F927618();
  v77 = v76;
  v78 = (v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B6A8) + 36));
  *v78 = v75;
  v78[1] = v77;
  return sub_24E6009C8(v52, v73, &qword_27F21B688);
}

double sub_24E756DB4()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = sub_24F924C48();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v0 + *(type metadata accessor for LargeButtonForegroundStyleViewModifier() + 32));
  if ((v12[8] & 1) == 0)
  {
    return *v12;
  }

  sub_24E7580D4(v0, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_24F92BDC8();
    v14 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  v15 = (*(v9 + 88))(v11, v8);
  result = 48.0;
  if (v15 != *MEMORY[0x277CE0268] && v15 != *MEMORY[0x277CE0298] && v15 != *MEMORY[0x277CE02A0] && v15 != *MEMORY[0x277CE0290])
  {
    if (v15 == *MEMORY[0x277CE0260])
    {
      return 52.0;
    }

    if (v15 == *MEMORY[0x277CE0270])
    {
      return 54.0;
    }

    if (v15 == *MEMORY[0x277CE0248])
    {
      return 58.0;
    }

    result = 65.0;
    if (v15 != *MEMORY[0x277CE0280] && v15 != *MEMORY[0x277CE0278] && v15 != *MEMORY[0x277CE0288] && v15 != *MEMORY[0x277CE0250] && v15 != *MEMORY[0x277CE0258])
    {
      (*(v9 + 8))(v11, v8, 65.0);
      return 48.0;
    }
  }

  return result;
}

uint64_t sub_24E757170@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = sub_24F924B38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24F9271D8();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B6B0);
  MEMORY[0x28223BE20](v42);
  v12 = &v38[-v11];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B6B8);
  v13 = MEMORY[0x28223BE20](v43);
  v15 = &v38[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v38[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B6C0);
  MEMORY[0x28223BE20](v18);
  v21 = &v38[-v20];
  if (v3 == 1)
  {
    v40 = v19;
    v41 = a2;
    v22 = *(v5 + 104);
    v22(v10, *MEMORY[0x277CE0118], v4);
    v39 = sub_24F925188();
    sub_24F923658();
    sub_24E757E84(v10, v12);
    v22(v7, *MEMORY[0x277CE0128], v4);
    v23 = sub_24F924B28();
    (*(v5 + 8))(v7, v4);
    v24 = v44;
    v25 = v46;
    v26 = COERCE_UNSIGNED_INT64(v44 * 0.5) & 0xFFFFFFFFFFFFFFFELL | ((v23 & 1) == 0);
    v27 = v47;
    v28 = v48;
    v29 = sub_24F927618();
    v31 = v30;
    sub_24E757EE8(v10);
    v32 = &v12[*(v42 + 68)];
    *v32 = v26;
    v33 = v45;
    v32[1] = v24;
    *(v32 + 2) = v33;
    *(v32 + 3) = v25;
    *(v32 + 4) = v27;
    *(v32 + 5) = v28;
    *(v32 + 12) = v39;
    *(v32 + 26) = 256;
    *(v32 + 7) = v29;
    *(v32 + 8) = v31;
    v34 = *(v43 + 36);
    v35 = *MEMORY[0x277CE13B8];
    v36 = sub_24F927748();
    (*(*(v36 - 8) + 104))(&v15[v34], v35, v36);
    sub_24E6009C8(v12, v15, &qword_27F21B6B0);
    sub_24E6009C8(v15, v17, &qword_27F21B6B8);
    sub_24E757F44(v17, v21);
    swift_storeEnumTagMultiPayload();
    sub_24E757FB4();
    sub_24F924E28();
    return sub_24E75806C(v17);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_24E757FB4();
    return sub_24F924E28();
  }
}

uint64_t sub_24E7575E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7261646E6F636573;
  v4 = 0xE900000000000079;
  if (v2 != 1)
  {
    v3 = 0x7972616974726574;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7972616D697270;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7261646E6F636573;
  v8 = 0xE900000000000079;
  if (*a2 != 1)
  {
    v7 = 0x7972616974726574;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7972616D697270;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24E7576F0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E757798()
{
  sub_24F92B218();
}

uint64_t sub_24E75782C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E7578D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E757A74();
  *a1 = result;
  return result;
}

void sub_24E757900(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000079;
  v5 = 0x7261646E6F636573;
  if (v2 != 1)
  {
    v5 = 0x7972616974726574;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972616D697270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_24E7579C8()
{
  result = qword_27F21B630;
  if (!qword_27F21B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B630);
  }

  return result;
}

unint64_t sub_24E757A20()
{
  result = qword_27F21B638;
  if (!qword_27F21B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B638);
  }

  return result;
}

uint64_t sub_24E757A74()
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

unint64_t sub_24E757AC0()
{
  result = qword_27F21B640;
  if (!qword_27F21B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B640);
  }

  return result;
}

uint64_t sub_24E757B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DD8);
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

uint64_t sub_24E757C04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DD8);
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

uint64_t type metadata accessor for LargeButtonForegroundStyleViewModifier()
{
  result = qword_27F21B648;
  if (!qword_27F21B648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E757D18()
{
  sub_24E66EC98();
  if (v0 <= 0x3F)
  {
    sub_24E757E0C(319, &qword_27F215590, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24E757E0C(319, &qword_27F215E08, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E757E0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D85048]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24E757E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9271D8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E757EE8(uint64_t a1)
{
  v2 = sub_24F9271D8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E757F44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B6B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E757FB4()
{
  result = qword_27F21B6C8;
  if (!qword_27F21B6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B6B8);
    sub_24E602068(&qword_27F21B6D0, &qword_27F21B6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B6C8);
  }

  return result;
}

uint64_t sub_24E75806C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B6B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E7580D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E758148()
{
  result = qword_27F21B6D8;
  if (!qword_27F21B6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B6A0);
    sub_24E758200();
    sub_24E602068(&qword_27F21B730, &qword_27F21B6A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B6D8);
  }

  return result;
}

unint64_t sub_24E758200()
{
  result = qword_27F21B6E0;
  if (!qword_27F21B6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B688);
    sub_24E7582B8();
    sub_24E602068(&qword_27F21B728, &unk_27F2552C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B6E0);
  }

  return result;
}

unint64_t sub_24E7582B8()
{
  result = qword_27F21B6E8;
  if (!qword_27F21B6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B680);
    sub_24E758370();
    sub_24E602068(&qword_27F21B720, &qword_27F21B698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B6E8);
  }

  return result;
}

unint64_t sub_24E758370()
{
  result = qword_27F21B6F0;
  if (!qword_27F21B6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B678);
    sub_24E7583FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B6F0);
  }

  return result;
}

unint64_t sub_24E7583FC()
{
  result = qword_27F21B6F8;
  if (!qword_27F21B6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B670);
    sub_24E7584B4();
    sub_24E602068(&qword_27F2186A0, &qword_27F2186A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B6F8);
  }

  return result;
}

unint64_t sub_24E7584B4()
{
  result = qword_27F21B700;
  if (!qword_27F21B700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B668);
    sub_24E758540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B700);
  }

  return result;
}

unint64_t sub_24E758540()
{
  result = qword_27F21B708;
  if (!qword_27F21B708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B660);
    sub_24E7585CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B708);
  }

  return result;
}

unint64_t sub_24E7585CC()
{
  result = qword_27F21B710;
  if (!qword_27F21B710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B658);
    sub_24E602068(&qword_27F21B718, &qword_27F21B690);
    sub_24E602068(&qword_27F21B308, &qword_27F212858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B710);
  }

  return result;
}

uint64_t sub_24E7586B0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B7F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E75AFB0();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Player(0);
  sub_24E7593DC(&qword_27F213E28, type metadata accessor for Player);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for Challenge.Participant(0);
    v8[14] = 1;
    sub_24F92CCE8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E758870@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B7E0);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Challenge.Participant(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E75AFB0();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v8;
  v11 = v10;
  v12 = v24;
  v28 = 0;
  sub_24E7593DC(&qword_27F213E38, type metadata accessor for Player);
  v14 = v25;
  v13 = v26;
  sub_24F92CC68();
  sub_24E691974(v14, v11, type metadata accessor for Player);
  v27 = 1;
  v15 = sub_24F92CC08();
  v17 = v16;
  (*(v12 + 8))(v7, v13);
  v18 = v23;
  v19 = v11 + *(v22 + 20);
  *v19 = v15;
  *(v19 + 8) = v17 & 1;
  sub_24E75A1E0(v11, v18, type metadata accessor for Challenge.Participant);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E75A248(v11, type metadata accessor for Challenge.Participant);
}

uint64_t sub_24E758BA8()
{
  if (*v0)
  {
    return 1802396018;
  }

  else
  {
    return 0x726579616C70;
  }
}

uint64_t sub_24E758BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1802396018 && a2 == 0xE400000000000000)
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

uint64_t sub_24E758CB0(uint64_t a1)
{
  v2 = sub_24E75AFB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E758CEC(uint64_t a1)
{
  v2 = sub_24E75AFB0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E758D58@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E7593DC(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E75A1E0(v4, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 88) = 1802396018;
  *(inited + 96) = 0xE400000000000000;
  v8 = v4 + *(a1 + 20);
  v9 = *v8;
  LOBYTE(v4) = *(v8 + 8);
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390);
  *(inited + 136) = sub_24E658F98();
  *(inited + 104) = v9;
  *(inited + 112) = v4;
  v10 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v11 = sub_24E80FFAC(v10);

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v11;
  return result;
}

unint64_t Challenge.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F945E30;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = MEMORY[0x277D837D0];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  strcpy((inited + 88), "definitionID");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  v8 = *(v1 + 2);
  v7 = *(v1 + 3);
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  v9 = sub_24E7594F8(&qword_27F212F10, &unk_27F23B740);
  *(inited + 104) = v8;
  *(inited + 112) = v7;
  *(inited + 136) = v9;
  strcpy((inited + 144), "endTimestamp");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  v10 = type metadata accessor for Challenge(0);
  v11 = v10[6];
  v12 = sub_24F91F648();
  v13 = MEMORY[0x277D21908];
  *(inited + 184) = v12;
  *(inited + 192) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, &v1[v11], v12);
  *(inited + 200) = 1701667175;
  *(inited + 208) = 0xE400000000000000;
  v15 = v10[7];
  *(inited + 240) = type metadata accessor for Game();
  *(inited + 248) = sub_24E7593DC(&qword_27F217960, type metadata accessor for Game);
  v16 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E75A1E0(&v1[v15], v16, type metadata accessor for Game);
  strcpy((inited + 256), "participants");
  *(inited + 269) = 0;
  *(inited + 270) = -5120;
  v17 = *&v1[v10[8]];
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B738);
  v18 = sub_24E75A144(&qword_27F21B740, &qword_27F21B748);
  *(inited + 272) = v17;
  *(inited + 304) = v18;
  *(inited + 312) = 0xD000000000000014;
  *(inited + 320) = 0x800000024FA467E0;
  v19 = &v1[v10[9]];
  v20 = *v19;
  v21 = *(v19 + 1);
  *(inited + 352) = v5;
  *(inited + 360) = v6;
  *(inited + 328) = v20;
  *(inited + 336) = v21;
  *(inited + 368) = 0xD000000000000010;
  *(inited + 376) = 0x800000024FA46800;
  v22 = v10[10];
  *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08);
  *(inited + 416) = sub_24E759444();
  v23 = __swift_allocate_boxed_opaque_existential_1((inited + 384));
  sub_24E60169C(&v1[v22], v23, &qword_27F212A08);
  *(inited + 424) = 0xD000000000000010;
  *(inited + 432) = 0x800000024FA46820;
  v24 = &v1[v10[11]];
  v25 = *v24;
  LOBYTE(v5) = v24[8];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390);
  *(inited + 464) = v26;
  v27 = sub_24E658F98();
  *(inited + 440) = v25;
  *(inited + 448) = v5;
  *(inited + 472) = v27;
  *(inited + 480) = 1802396018;
  *(inited + 488) = 0xE400000000000000;
  v28 = &v1[v10[12]];
  v29 = *v28;
  LOBYTE(v28) = v28[8];
  *(inited + 520) = v26;
  *(inited + 528) = v27;
  *(inited + 496) = v29;
  *(inited + 504) = v28;
  *(inited + 536) = 0xD000000000000015;
  *(inited + 544) = 0x800000024FA46840;
  v30 = v10[13];
  *(inited + 576) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  *(inited + 584) = sub_24E7594F8(&qword_27F21B760, &unk_27F22EC30);
  v31 = __swift_allocate_boxed_opaque_existential_1((inited + 552));
  sub_24E60169C(&v1[v30], v31, &unk_27F22EC30);

  v32 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v32;
  return result;
}

uint64_t sub_24E7593DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E759444()
{
  result = qword_27F21B750;
  if (!qword_27F21B750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212A08);
    sub_24E7593DC(&qword_27F21B758, type metadata accessor for ChallengeDefinitionDetail);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B750);
  }

  return result;
}

uint64_t sub_24E7594F8(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_24E759560(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 1802396018;
    if (a1 != 8)
    {
      v5 = 0xD000000000000015;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0xD000000000000014;
    if (a1 != 5)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 6u)
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
    v1 = 25705;
    v2 = 0x73656D6954646E65;
    v3 = 1701667175;
    if (a1 != 3)
    {
      v3 = 0x7069636974726170;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6974696E69666564;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24E7596AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E75AC74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E7596E0(uint64_t a1)
{
  v2 = sub_24E75A088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E75971C(uint64_t a1)
{
  v2 = sub_24E75A088();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Challenge.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = v39 - v6;
  v46 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v46);
  v48 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91F648();
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B768);
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v39 - v12;
  v14 = type metadata accessor for Challenge(0);
  MEMORY[0x28223BE20](v14);
  v16 = (v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E75A088();
  v51 = v13;
  v17 = v52;
  sub_24F92D108();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v48;
  v41 = v14;
  v42 = v8;
  v52 = a1;
  v40 = v16;
  LOBYTE(v54) = 0;
  v19 = sub_24F92CC28();
  v20 = v40;
  *v40 = v19;
  *(v20 + 1) = v21;
  LOBYTE(v54) = 1;
  *(v20 + 2) = sub_24F92CBC8();
  *(v20 + 3) = v22;
  LOBYTE(v54) = 2;
  v23 = sub_24E7593DC(&qword_27F21B778, MEMORY[0x277CC9578]);
  v24 = v42;
  v39[1] = 0;
  sub_24F92CC68();
  v39[0] = v23;
  v25 = v41;
  (*(v47 + 32))(&v20[v41[6]], v10, v24);
  LOBYTE(v54) = 3;
  sub_24E7593DC(&qword_27F214968, type metadata accessor for Game);
  sub_24F92CC68();
  sub_24E691974(v18, &v20[v25[7]], type metadata accessor for Game);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B738);
  v53 = 4;
  sub_24E75A144(&qword_27F21B780, &qword_27F21B788);
  sub_24F92CC68();
  v26 = v25;
  *&v20[v25[8]] = v54;
  LOBYTE(v54) = 5;
  v27 = sub_24F92CC28();
  v28 = &v20[v25[9]];
  *v28 = v27;
  v28[1] = v29;
  type metadata accessor for ChallengeDefinitionDetail(0);
  LOBYTE(v54) = 6;
  sub_24E7593DC(&qword_27F21B790, type metadata accessor for ChallengeDefinitionDetail);
  v30 = v45;
  sub_24F92CC18();
  sub_24E6009C8(v30, &v20[v26[10]], &qword_27F212A08);
  LOBYTE(v54) = 7;
  v31 = sub_24F92CC08();
  v32 = &v20[v26[11]];
  *v32 = v31;
  v32[8] = v33 & 1;
  LOBYTE(v54) = 8;
  v34 = sub_24F92CC08();
  v35 = &v20[v26[12]];
  *v35 = v34;
  v35[8] = v36 & 1;
  LOBYTE(v54) = 9;
  sub_24F92CC18();
  (*(v49 + 8))(v51, v50);
  v37 = v40;
  sub_24E6009C8(v44, v40 + v41[13], &unk_27F22EC30);
  sub_24E75A1E0(v37, v43, type metadata accessor for Challenge);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return sub_24E75A248(v37, type metadata accessor for Challenge);
}

unint64_t sub_24E75A088()
{
  result = qword_27F21B770;
  if (!qword_27F21B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B770);
  }

  return result;
}

uint64_t sub_24E75A0DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E75A144(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B738);
    sub_24E7593DC(a2, type metadata accessor for Challenge.Participant);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E75A1E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E75A248(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E75A2BC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_24F91F648();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for Game();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[13];

  return v16(v17, a2, v15);
}

uint64_t sub_24E75A49C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_24F91F648();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for Game();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[13];

  return v16(v17, a2, a2, v15);
}

void sub_24E75A668()
{
  sub_24E66ECF0(319, &qword_27F254DE0);
  if (v0 <= 0x3F)
  {
    sub_24F91F648();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Game();
      if (v2 <= 0x3F)
      {
        sub_24E75A820(319, &qword_27F21B7A8, type metadata accessor for Challenge.Participant, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_24E75A820(319, &qword_27F21B7B0, type metadata accessor for ChallengeDefinitionDetail, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_24E66ECF0(319, &qword_27F2153E8);
            if (v5 <= 0x3F)
            {
              sub_24E75A820(319, &qword_27F21A4A0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
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

void sub_24E75A820(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for Challenge.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Challenge.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24E75A9E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E75AA68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24E75AAD8()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F2153E8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24E75AB70()
{
  result = qword_27F21B7C8;
  if (!qword_27F21B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B7C8);
  }

  return result;
}

unint64_t sub_24E75ABC8()
{
  result = qword_27F21B7D0;
  if (!qword_27F21B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B7D0);
  }

  return result;
}

unint64_t sub_24E75AC20()
{
  result = qword_27F21B7D8;
  if (!qword_27F21B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B7D8);
  }

  return result;
}

uint64_t sub_24E75AC74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEC00000044496E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656D6954646E65 && a2 == 0xEC000000706D6174 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA467E0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46800 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46820 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1802396018 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA46840 == a2)
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

unint64_t sub_24E75AFB0()
{
  result = qword_27F21B7E8;
  if (!qword_27F21B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B7E8);
  }

  return result;
}

unint64_t sub_24E75B018()
{
  result = qword_27F21B7F8;
  if (!qword_27F21B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B7F8);
  }

  return result;
}

unint64_t sub_24E75B070()
{
  result = qword_27F21B800;
  if (!qword_27F21B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B800);
  }

  return result;
}

unint64_t sub_24E75B0C8()
{
  result = qword_27F21B808;
  if (!qword_27F21B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B808);
  }

  return result;
}

uint64_t ActionToggle.init(title:isOn:onChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = swift_getKeyPath();
  *(a8 + 40) = 0;
  v16 = type metadata accessor for ActionToggle();
  v17 = v16[5];
  *(a8 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  swift_storeEnumTagMultiPayload();
  v18 = a8 + v16[6];
  result = sub_24F926F28();
  *v18 = v23;
  *(v18 + 8) = v24;
  v20 = (a8 + v16[8]);
  *v20 = a1;
  v20[1] = a2;
  v21 = a8 + v16[7];
  *v21 = a3;
  *(v21 + 8) = a4;
  *(v21 + 16) = a5;
  v22 = (a8 + v16[9]);
  *v22 = a6;
  v22[1] = a7;
  return result;
}

uint64_t type metadata accessor for ActionToggle()
{
  result = qword_27F21B840;
  if (!qword_27F21B840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E75B30C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24E60169C(v2, v11, &qword_27F215690);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_24F92BDC8();
    v10 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_24E75B480@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ActionToggle();
  sub_24E60169C(v1 + *(v10 + 20), v9, &qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F921B58();
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

uint64_t ActionToggle.body.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = type metadata accessor for ActionToggle();
  v3 = v2 - 8;
  v38 = *(v2 - 8);
  v37 = *(v38 + 64);
  MEMORY[0x28223BE20](v2);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B810);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B818);
  v10 = *(v9 - 8);
  v39 = v9;
  v40 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = *(v3 + 36);
  v32 = v1;
  v14 = v1 + v13;
  v15 = *v14;
  v34 = *(v14 + 8);
  v35 = v15;
  v33 = *(v14 + 16);
  v43 = v15;
  v44 = v34;
  LOBYTE(v45) = v33;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
  sub_24F927198();
  v42 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B820);
  v43 = MEMORY[0x277CE0BD8];
  v44 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_24F9270D8();
  v17 = sub_24E602068(&qword_27F21B828, &qword_27F21B810);
  v18 = sub_24E75BCA8();
  sub_24F926238();
  (*(v6 + 8))(v8, v5);
  v43 = v35;
  v44 = v34;
  LOBYTE(v45) = v33;
  MEMORY[0x25304CAF0](&v47, v16);
  v19 = v32;
  v20 = v36;
  sub_24E75BECC(v32, v36);
  v21 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v22 = swift_allocObject();
  sub_24E75C0BC(v20, v22 + v21);
  v43 = v5;
  v44 = &type metadata for GamesSwitchToggleStyle;
  v45 = v17;
  v46 = v18;
  swift_getOpaqueTypeConformance2();
  v23 = v41;
  v24 = v39;
  sub_24F926AB8();

  (*(v40 + 8))(v12, v24);
  v25 = v19 + *(v3 + 32);
  v26 = *v25;
  v27 = *(v25 + 8);
  LOBYTE(v43) = v26;
  v44 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  LOBYTE(v24) = v47;
  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B838);
  v31 = (v23 + *(result + 36));
  *v31 = KeyPath;
  v31[1] = sub_24E75C870;
  v31[2] = v29;
  return result;
}

uint64_t sub_24E75BB40()
{
  type metadata accessor for ActionToggle();
  sub_24E600AEC();

  v0 = sub_24F925E18();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v5 = sub_24F9248C8();
  __swift_project_value_buffer(v5, qword_27F39F078);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E600B40(v0, v2, v4 & 1);
}

unint64_t sub_24E75BCA8()
{
  result = qword_27F21B830;
  if (!qword_27F21B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B830);
  }

  return result;
}

uint64_t sub_24E75BCFC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for ActionToggle();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  LOBYTE(a2) = *a2;
  v12 = sub_24F92B858();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_24E75BECC(a3, v8);
  sub_24F92B7F8();
  v13 = sub_24F92B7E8();
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = v14 + v7;
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  sub_24E75C0BC(v8, v16 + v14);
  *(v16 + v15) = a2;
  sub_24F1D3DA4(0, 0, v11, &unk_24F951DF8, v16);
}

uint64_t sub_24E75BECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionToggle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E75BF30()
{
  v1 = type metadata accessor for ActionToggle();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    if (*(v3 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + v2);
    }
  }

  else
  {
  }

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F921B58();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E75C0BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionToggle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E75C120(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for ActionToggle() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24E75BCFC(a1, a2, v6);
}

uint64_t sub_24E75C1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 349) = a5;
  *(v5 + 256) = a4;
  v6 = sub_24F921B58();
  *(v5 + 264) = v6;
  *(v5 + 272) = *(v6 - 8);
  *(v5 + 280) = swift_task_alloc();
  sub_24F92B7F8();
  *(v5 + 288) = sub_24F92B7E8();
  v8 = sub_24F92B778();
  *(v5 + 296) = v8;
  *(v5 + 304) = v7;

  return MEMORY[0x2822009F8](sub_24E75C298, v8, v7);
}

uint64_t sub_24E75C298()
{
  v1 = *(v0 + 256);
  v2 = type metadata accessor for ActionToggle();
  v3 = (v1 + *(v2 + 24));
  v4 = *v3;
  *(v0 + 350) = *v3;
  v5 = *(v3 + 1);
  *(v0 + 312) = v5;
  *(v0 + 176) = v4;
  *(v0 + 184) = v5;
  *(v0 + 344) = 1;
  *(v0 + 320) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F48();
  v9 = (*(v1 + *(v2 + 36)) + **(v1 + *(v2 + 36)));
  v6 = swift_task_alloc();
  *(v0 + 328) = v6;
  *v6 = v0;
  v6[1] = sub_24E75C3FC;
  v7 = *(v0 + 349);

  return v9(v0 + 56, v7);
}

uint64_t sub_24E75C3FC()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 296);
  if (v0)
  {
    v5 = sub_24E75C6F8;
  }

  else
  {
    v5 = sub_24E75C538;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E75C538()
{

  if (*(v0 + 80))
  {
    sub_24E612C80((v0 + 56), v0 + 16);
    sub_24E75B30C(v0 + 136);
    v1 = *(v0 + 312);
    v2 = *(v0 + 350);
    if (*(v0 + 160))
    {
      v3 = *(v0 + 272);
      v4 = *(v0 + 280);
      v5 = *(v0 + 264);
      sub_24E612C80((v0 + 136), v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
      sub_24E75B480(v4);
      sub_24F9218A8();
      (*(v3 + 8))(v4, v5);
      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
      __swift_destroy_boxed_opaque_existential_1(v0 + 96);
      *(v0 + 240) = v2;
      *(v0 + 248) = v1;
      *(v0 + 348) = 0;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
      sub_24E601704(v0 + 136, &unk_27F212740);
      *(v0 + 224) = v2;
      *(v0 + 232) = v1;
      *(v0 + 347) = 0;
    }
  }

  else
  {
    v6 = *(v0 + 312);
    v7 = *(v0 + 350);
    sub_24E601704(v0 + 56, qword_27F21B590);
    *(v0 + 208) = v7;
    *(v0 + 346) = 0;
    *(v0 + 216) = v6;
  }

  sub_24F926F48();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24E75C6F8()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 350);

  *(v0 + 192) = v2;
  *(v0 + 200) = v1;
  *(v0 + 345) = 0;
  sub_24F926F48();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24E75C79C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F9247C8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24E75C7CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F9247C8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24E75C8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24E75C99C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24E75CA68()
{
  sub_24E600550();
  if (v0 <= 0x3F)
  {
    sub_24E6D74E4();
    if (v1 <= 0x3F)
    {
      sub_24E75CB74(319, &qword_27F254E10, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_24E75CB74(319, &qword_27F2362E0, MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_24E6C5550();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E75CB74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24E75CBCC()
{
  result = qword_27F21B850;
  if (!qword_27F21B850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B838);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B818);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B810);
    sub_24E602068(&qword_27F21B828, &qword_27F21B810);
    sub_24E75BCA8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B850);
  }

  return result;
}

uint64_t sub_24E75CD60()
{
  v1 = type metadata accessor for ActionToggle();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    if (*(v3 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + v2);
    }
  }

  else
  {
  }

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F921B58();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E75CEF8(uint64_t a1)
{
  v4 = *(type metadata accessor for ActionToggle() - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24E75C1A0(a1, v5, v6, v7, v8);
}

uint64_t ChallengesHubEmptyStateShelfConstructionIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t ChallengesHubEmptyStateShelfConstructionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 16);
  v7 = v1[3];
  v6 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x444965676170;
  v9 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v9;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 88) = 0xD00000000000001CLL;
  *(inited + 96) = 0x800000024FA46860;
  v10 = MEMORY[0x277D22598];
  *(inited + 128) = MEMORY[0x277D839B0];
  *(inited + 136) = v10;
  *(inited + 104) = v5;
  *(inited + 144) = 0x4449656C646E7562;
  *(inited + 152) = 0xE800000000000000;
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 192) = sub_24E605DB4();
  *(inited + 160) = v7;
  *(inited + 168) = v6;

  v11 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v11;
  return result;
}

uint64_t sub_24E75D1FC()
{
  v1 = 0xD00000000000001CLL;
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
    return 0x444965676170;
  }
}

uint64_t sub_24E75D258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E75D8DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E75D280(uint64_t a1)
{
  v2 = sub_24E75D760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E75D2BC(uint64_t a1)
{
  v2 = sub_24E75D760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesHubEmptyStateShelfConstructionIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B858);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v11 = *(v1 + 16);
  v7 = *(v1 + 24);
  v10[1] = *(v1 + 32);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E75D760();
  sub_24F92D128();
  v14 = 0;
  v8 = v10[3];
  sub_24F92CD08();
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

uint64_t ChallengesHubEmptyStateShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B868);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E75D760();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v9 = sub_24F92CC28();
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

unint64_t sub_24E75D760()
{
  result = qword_27F21B860;
  if (!qword_27F21B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B860);
  }

  return result;
}

unint64_t sub_24E75D7D8()
{
  result = qword_27F21B870;
  if (!qword_27F21B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B870);
  }

  return result;
}

unint64_t sub_24E75D830()
{
  result = qword_27F21B878;
  if (!qword_27F21B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B878);
  }

  return result;
}

unint64_t sub_24E75D888()
{
  result = qword_27F21B880;
  if (!qword_27F21B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B880);
  }

  return result;
}

uint64_t sub_24E75D8DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024FA46860 == a2 || (sub_24F92CE08() & 1) != 0)
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

uint64_t FriendshipStatusDataIntent.playerID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FriendshipStatusDataIntent.localPlayerID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24E75DA74()
{
  if (*v0)
  {
    return 0x616C506C61636F6CLL;
  }

  else
  {
    return 0x4449726579616C70;
  }
}

uint64_t sub_24E75DABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449726579616C70 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616C506C61636F6CLL && a2 == 0xED00004449726579)
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

uint64_t sub_24E75DBA0(uint64_t a1)
{
  v2 = sub_24E75DDAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E75DBDC(uint64_t a1)
{
  v2 = sub_24E75DDAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FriendshipStatusDataIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B888);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E75DDAC();
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

unint64_t sub_24E75DDAC()
{
  result = qword_27F21B890;
  if (!qword_27F21B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B890);
  }

  return result;
}

uint64_t FriendshipStatusDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B898);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E75DDAC();
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

unint64_t sub_24E75E074()
{
  result = qword_27F21B8A0;
  if (!qword_27F21B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B8A0);
  }

  return result;
}

unint64_t sub_24E75E0CC()
{
  result = qword_27F21B8A8;
  if (!qword_27F21B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B8A8);
  }

  return result;
}

unint64_t sub_24E75E124()
{
  result = qword_27F21B8B0;
  if (!qword_27F21B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B8B0);
  }

  return result;
}

uint64_t AccessPointPageConstructionIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for AccessPointPageConstructionIntent()
{
  result = qword_27F21B8E8;
  if (!qword_27F21B8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t AccessPointPageConstructionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x6F50737365636361;
  *(inited + 96) = 0xEF61746144746E69;
  v7 = type metadata accessor for AccessPointPageConstructionIntent();
  v8 = v7[5];
  *(inited + 128) = type metadata accessor for AccessPointRequiredData();
  *(inited + 136) = sub_24E75EC28(&qword_27F21B8B8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E75ECD0(v1 + v8, boxed_opaque_existential_1, type metadata accessor for AccessPointRequiredData);
  strcpy((inited + 144), "showHighlights");
  *(inited + 159) = -18;
  v10 = *(v1 + v7[6]);
  v11 = MEMORY[0x277D839B0];
  v12 = MEMORY[0x277D22598];
  *(inited + 184) = MEMORY[0x277D839B0];
  *(inited + 192) = v12;
  *(inited + 160) = v10;
  *(inited + 200) = 0x6D61476F5477656ELL;
  *(inited + 208) = 0xEF7265746E654365;
  v13 = *(v1 + v7[7]);
  *(inited + 240) = v11;
  *(inited + 248) = v12;
  *(inited + 216) = v13;

  v14 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v14;
  return result;
}

uint64_t sub_24E75E4C0()
{
  v1 = 0x444965676170;
  v2 = 0x68676948776F6873;
  if (*v0 != 2)
  {
    v2 = 0x6D61476F5477656ELL;
  }

  if (*v0)
  {
    v1 = 0x6F50737365636361;
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

uint64_t sub_24E75E55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E75F0B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E75E584(uint64_t a1)
{
  v2 = sub_24E75EBD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E75E5C0(uint64_t a1)
{
  v2 = sub_24E75EBD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AccessPointPageConstructionIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B8C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E75EBD4();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for AccessPointPageConstructionIntent();
    v8[14] = 1;
    type metadata accessor for AccessPointRequiredData();
    sub_24E75EC28(&qword_27F21B8D0);
    sub_24F92CD48();
    v8[13] = 2;
    sub_24F92CD18();
    v8[12] = 3;
    sub_24F92CD18();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AccessPointPageConstructionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for AccessPointRequiredData();
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B8D8);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v16 - v6;
  v8 = type metadata accessor for AccessPointPageConstructionIntent();
  MEMORY[0x28223BE20](v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E75EBD4();
  v19 = v7;
  v11 = v21;
  sub_24F92D108();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v18;
  v25 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v13;
  v21 = v13;
  v24 = 1;
  sub_24E75EC28(&qword_27F21B8E0);
  sub_24F92CC68();
  sub_24E75EC6C(v5, v10 + v8[5]);
  v23 = 2;
  *(v10 + v8[6]) = sub_24F92CC38() & 1;
  v22 = 3;
  v15 = sub_24F92CC38();
  (*(v12 + 8))(v19, v20);
  *(v10 + v8[7]) = v15 & 1;
  sub_24E75ECD0(v10, v17, type metadata accessor for AccessPointPageConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E75ED38(v10, type metadata accessor for AccessPointPageConstructionIntent);
}

unint64_t sub_24E75EBD4()
{
  result = qword_27F21B8C8;
  if (!qword_27F21B8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B8C8);
  }

  return result;
}

uint64_t sub_24E75EC28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AccessPointRequiredData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E75EC6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessPointRequiredData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E75ECD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E75ED38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E75EDAC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AccessPointRequiredData();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E75EE6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AccessPointRequiredData();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24E75EF10()
{
  result = type metadata accessor for AccessPointRequiredData();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24E75EFB0()
{
  result = qword_27F21B8F8;
  if (!qword_27F21B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B8F8);
  }

  return result;
}

unint64_t sub_24E75F008()
{
  result = qword_27F21B900;
  if (!qword_27F21B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B900);
  }

  return result;
}

unint64_t sub_24E75F060()
{
  result = qword_27F21B908;
  if (!qword_27F21B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B908);
  }

  return result;
}

uint64_t sub_24E75F0B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F50737365636361 && a2 == 0xEF61746144746E69 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68676948776F6873 && a2 == 0xEE0073746867696CLL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D61476F5477656ELL && a2 == 0xEF7265746E654365)
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

uint64_t getEnumTagSinglePayload for ReflectionEffectMediaArtworkStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t sub_24E75F2EC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v6 = type metadata accessor for ReflectionEffectMediaArtworkStyle.Content();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B928);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B930);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = &v34 - v17;
  if (v5 == 4)
  {
    v19 = *(v16 + 56);

    return v19(a3, 1, 1, v12);
  }

  else
  {
    v35 = v16;
    v21 = sub_24F921C18();
    (*(*(v21 - 8) + 16))(v8, a2, v21);
    if (v5 >= 2)
    {
      v22 = -1.0;
    }

    else
    {
      v22 = 1.0;
    }

    if (v5 >= 2)
    {
      v23 = 1.0;
    }

    else
    {
      v23 = -1.0;
    }

    sub_24F9278A8();
    v25 = v24;
    v27 = v26;
    sub_24E75FF48(v8, v11);
    v28 = &v11[*(v9 + 36)];
    *v28 = v22;
    *(v28 + 1) = v23;
    *(v28 + 2) = v25;
    *(v28 + 3) = v27;
    sub_24F921BE8();
    if (v5 > 1)
    {
      v32 = v29;
      if (v5 == 2)
      {
        v32 = -v29;
      }

      v31 = 0.0;
    }

    else
    {
      v31 = v30;
      v32 = 0.0;
      if (!v5)
      {
        v31 = -v30;
      }
    }

    sub_24E6009C8(v11, v15, &qword_27F21B928);
    v33 = &v15[*(v12 + 36)];
    *v33 = v32;
    v33[1] = v31;
    sub_24E6009C8(v15, v18, &qword_27F21B930);
    sub_24E6009C8(v18, a3, &qword_27F21B930);
    return (*(v35 + 56))(a3, 0, 1, v12);
  }
}

uint64_t sub_24E75F618@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F926E08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_24F921C08())
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v6 = sub_24F926E88();
    (*(v3 + 8))(v5, v2);
    v16 = v6;
    LOWORD(v17) = 257;
    BYTE2(v17) = 0;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B988);
    sub_24E6E97A8();
    sub_24E760378();
    sub_24F924E28();
    v7 = v18;
    v8 = v20;
    v9 = v19;
    v16 = v18;
    HIWORD(v17) = v20 != 0;
    LOWORD(v17) = v19;
    sub_24E760544(v18, *(&v18 + 1), v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B968);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B970);
    sub_24E7602EC();
    sub_24E760484();
    sub_24F924E28();

    sub_24E760584(v7, *(&v7 + 1), v9, v8);
  }

  else
  {
    v11 = sub_24F921BF8();
    if (v11)
    {
      v12 = v11;
      *&v16 = swift_getKeyPath();
      *(&v16 + 1) = v12;
      LOWORD(v17) = 0;
      BYTE2(v17) = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B988);
      sub_24E6E97A8();
      sub_24E760378();
      sub_24F924E28();
      v16 = v18;
      HIWORD(v17) = v20 != 0;
      LOWORD(v17) = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B968);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B970);
      sub_24E7602EC();
      sub_24E760484();
      sub_24F924E28();
    }

    else
    {
      v16 = sub_24F9251B8();
      v17 = 0x1000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B968);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B970);
      sub_24E7602EC();
      sub_24E760484();
      result = sub_24F924E28();
    }
  }

  v13 = *(&v18 + 1);
  v14 = v19 | (v20 << 16);
  v15 = v21;
  *a1 = v18;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14;
  *(a1 + 18) = BYTE2(v14);
  *(a1 + 19) = v15;
  return result;
}

uint64_t sub_24E75FA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = sub_24F921C18();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = sub_24F927618();
  v9 = v8;
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B918) + 36);
  sub_24E75F2EC(v5, a1, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B920);
  v12 = (v10 + *(result + 36));
  *v12 = v7;
  v12[1] = v9;
  return result;
}

uint64_t sub_24E75FB24()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E75FBDC()
{
  sub_24F92B218();
}

uint64_t sub_24E75FC80()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E75FD34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E760000();
  *a1 = result;
  return result;
}

void sub_24E75FD64(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368564;
  v4 = 0xE700000000000000;
  v5 = 0x676E696461656CLL;
  if (*v1 != 2)
  {
    v5 = 0x676E696C69617274;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x6D6F74746F62;
    v2 = 0xE600000000000000;
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

unint64_t sub_24E75FDDC()
{
  result = qword_27F21B910;
  if (!qword_27F21B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B910);
  }

  return result;
}

uint64_t type metadata accessor for ReflectionEffectMediaArtworkStyle.Content()
{
  result = qword_27F21B940;
  if (!qword_27F21B940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E75FF48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReflectionEffectMediaArtworkStyle.Content();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E75FFAC()
{
  result = qword_27F21B938;
  if (!qword_27F21B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B938);
  }

  return result;
}

uint64_t sub_24E760000()
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

uint64_t sub_24E760060(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F921C18();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E7600E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F921C18();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24E760150()
{
  result = sub_24F921C18();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24E7601C0()
{
  result = qword_27F21B950;
  if (!qword_27F21B950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B918);
    sub_24E760278();
    sub_24E602068(&qword_27F21B960, &qword_27F21B920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B950);
  }

  return result;
}

unint64_t sub_24E760278()
{
  result = qword_27F21B958;
  if (!qword_27F21B958)
  {
    type metadata accessor for ReflectionEffectMediaArtworkStyle.Content();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B958);
  }

  return result;
}

unint64_t sub_24E7602EC()
{
  result = qword_27F21B978;
  if (!qword_27F21B978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B968);
    sub_24E6E97A8();
    sub_24E760378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B978);
  }

  return result;
}

unint64_t sub_24E760378()
{
  result = qword_27F21B980;
  if (!qword_27F21B980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B988);
    sub_24E760430();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B980);
  }

  return result;
}

unint64_t sub_24E760430()
{
  result = qword_27F21B990;
  if (!qword_27F21B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B990);
  }

  return result;
}

unint64_t sub_24E760484()
{
  result = qword_27F21B998;
  if (!qword_27F21B998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B970);
    sub_24E760430();
    sub_24E602068(&qword_27F217388, &qword_27F217390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B998);
  }

  return result;
}

uint64_t sub_24E760544(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    v4 = vars8;
  }
}

uint64_t sub_24E760584(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  return result;
}

unint64_t sub_24E7605D4()
{
  result = qword_27F21B9A0;
  if (!qword_27F21B9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B9A8);
    sub_24E7602EC();
    sub_24E760484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B9A0);
  }

  return result;
}

uint64_t sub_24E760660(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

GameStoreKit::PhotosAssetMediaType_optional __swiftcall PhotosAssetMediaType.init(_:)(PHAssetMediaType a1)
{
  if (a1 == PHAssetMediaTypeVideo)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (a1 == PHAssetMediaTypeImage)
  {
    v2 = 0;
  }

  *v1 = v2;
  return a1;
}

uint64_t PhotosAsset.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  v7 = type metadata accessor for PhotosAsset();
  v43 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [a1 mediaType];
  if (v10 == 2)
  {
    v11 = 1;
LABEL_5:
    *(v9 + v7[7]) = v11;
    v12 = [a1 localIdentifier];
    v13 = sub_24F92B0D8();
    v15 = v14;

    *v9 = v13;
    v9[1] = v15;
    v16 = [a1 curationProperties];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 importedByBundleIdentifier];
      if (v18)
      {
        v19 = v18;
        v20 = sub_24F92B0D8();
        v22 = v21;

        v9[2] = v20;
        v9[3] = v22;
        goto LABEL_13;
      }
    }

    v9[2] = 0;
    v9[3] = 0;
LABEL_13:
    v25 = [a1 creationDate];
    if (v25)
    {
      v26 = v25;
      sub_24F91F608();

      v27 = sub_24F91F648();
      (*(*(v27 - 8) + 56))(v6, 0, 1, v27);
    }

    else
    {
      v28 = sub_24F91F648();
      (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
    }

    sub_24E6C4F90(v6, v9 + v7[6]);
    v29 = [a1 descriptionProperties];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 assetDescription];
      if (v31)
      {
        v32 = v31;
        v33 = sub_24F92B0D8();
        v35 = v34;

        v36 = (v9 + v7[8]);
        *v36 = v33;
        v36[1] = v35;
LABEL_21:
        *(v9 + v7[9]) = [a1 pixelWidth];
        *(v9 + v7[10]) = [a1 pixelHeight];
        v38 = [a1 mediaType];
        if (v38 == 2)
        {
          [a1 duration];
          v39 = v40;
        }

        else
        {

          v39 = 0;
        }

        v41 = v9 + v7[11];
        *v41 = v39;
        v41[8] = v38 != 2;
        sub_24E6E2F58(v9, a2);
        return (*(v43 + 56))(a2, 0, 1, v7);
      }
    }

    v37 = (v9 + v7[8]);
    *v37 = 0;
    v37[1] = 0;
    goto LABEL_21;
  }

  if (v10 == 1)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v23 = *(v43 + 56);

  return v23(a2, 1, 1, v7);
}

uint64_t sub_24E760B30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E760BD8;

  return sub_24E762B40(a1);
}

uint64_t sub_24E760BD8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_24E760CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2393F0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - v9;
  v11 = [objc_opt_self() defaultManager];
  v12 = type metadata accessor for PhotosAsset();
  v15 = CGSizeMake(v12, v13, v14);
  v17 = v16;
  (*(v8 + 16))(v10, a1, v7);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  (*(v8 + 32))(v19 + v18, v10, v7);
  aBlock[4] = sub_24E76379C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E760F50;
  aBlock[3] = &block_descriptor_14;
  v20 = _Block_copy(aBlock);

  [v11 requestImageForAsset:a2 targetSize:0 contentMode:a4 options:v20 resultHandler:{v15, v17}];
  _Block_release(v20);
}

uint64_t sub_24E760F00(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2393F0);
  return sub_24F92B798();
}

uint64_t sub_24E760F50(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_24F92AE38();
  }

  else
  {
    v5 = 0;
  }

  v6 = a2;
  v4(a2, v5);
}

uint64_t sub_24E760FFC(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  type metadata accessor for PhotosAsset();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v3 = sub_24F91F4A8();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E761118, 0, 0);
}

uint64_t sub_24E761118()
{
  v85 = v0;
  v1 = v0[19];
  v3 = *v1;
  v2 = v1[1];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93DE60;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;

  v6 = sub_24F92B588();

  v7 = [v4 fetchAssetsWithLocalIdentifiers:v6 options:0];

  v8 = [v7 firstObject];
  v0[28] = v8;

  if (!v8)
  {
    if (qword_27F211440 == -1)
    {
LABEL_12:
      v42 = v0[19];
      v43 = v0[20];
      v44 = sub_24F9220D8();
      __swift_project_value_buffer(v44, qword_27F39E910);
      sub_24E763108(v42, v43);
      v45 = sub_24F9220B8();
      v46 = sub_24F92BDB8();
      v47 = os_log_type_enabled(v45, v46);
      v48 = v0[20];
      if (v47)
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v84 = v50;
        *v49 = 136315138;
        v51 = *v48;
        v52 = v48[1];

        sub_24E76316C(v48);
        v53 = sub_24E7620D4(v51, v52, &v84);

        *(v49 + 4) = v53;
        _os_log_impl(&dword_24E5DD000, v45, v46, "Could not fetch PHAsset with local identifier %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        MEMORY[0x2530542D0](v50, -1, -1);
        MEMORY[0x2530542D0](v49, -1, -1);

LABEL_28:
        (*(v0[23] + 56))(v0[18], 1, 1, v0[22]);
        goto LABEL_29;
      }

      v64 = v48;
      goto LABEL_27;
    }

LABEL_34:
    swift_once();
    goto LABEL_12;
  }

  v9 = [objc_opt_self() assetResourcesForAsset_];
  sub_24E69A5C4(0, &qword_27F21B9B0);
  v10 = sub_24F92B5A8();

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_22:

    if (qword_27F211440 != -1)
    {
      swift_once();
    }

    v65 = v0[21];
    v66 = v0[19];
    v67 = sub_24F9220D8();
    __swift_project_value_buffer(v67, qword_27F39E910);
    sub_24E763108(v66, v65);
    v68 = sub_24F9220B8();
    v69 = sub_24F92BDB8();
    v70 = os_log_type_enabled(v68, v69);
    v71 = v0[21];
    if (v70)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v84 = v73;
      *v72 = 136315138;
      v74 = *v71;
      v75 = v71[1];

      sub_24E76316C(v71);
      v76 = sub_24E7620D4(v74, v75, &v84);

      *(v72 + 4) = v76;
      _os_log_impl(&dword_24E5DD000, v68, v69, "Could not fetch PHAssetResource with local identifier %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x2530542D0](v73, -1, -1);
      MEMORY[0x2530542D0](v72, -1, -1);

      goto LABEL_28;
    }

    v64 = v71;
LABEL_27:
    sub_24E76316C(v64);
    goto LABEL_28;
  }

  if (!sub_24F92C738())
  {
    goto LABEL_22;
  }

LABEL_4:
  v81 = v8;
  if ((v10 & 0xC000000000000001) == 0)
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v10 + 32);
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_34;
  }

  v11 = MEMORY[0x253052270](0, v10);
LABEL_7:
  v12 = v11;
  v0[29] = v11;
  v13 = v0[26];
  v15 = v0[22];
  v14 = v0[23];

  v16 = [objc_allocWithZone(MEMORY[0x277CD9808]) init];
  v0[30] = v16;
  v82 = v16;
  [v16 setNetworkAccessAllowed_];
  v17 = NSTemporaryDirectory();
  sub_24F92B0D8();

  sub_24F91F3A8();

  v83 = v12;
  v18 = [v12 originalFilename];
  sub_24F92B0D8();

  sub_24F91F3E8();

  v19 = *(v14 + 8);
  v0[31] = v19;
  v0[32] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v13, v15);
  if (qword_27F211440 != -1)
  {
    swift_once();
  }

  v20 = v0[27];
  v22 = v0[24];
  v21 = v0[25];
  v24 = v0[22];
  v23 = v0[23];
  v25 = sub_24F9220D8();
  v0[33] = __swift_project_value_buffer(v25, qword_27F39E910);
  v26 = *(v23 + 16);
  v26(v21, v20, v24);
  v26(v22, v20, v24);
  v27 = sub_24F9220B8();
  v28 = sub_24F92BDB8();
  v29 = os_log_type_enabled(v27, v28);
  v31 = v0[24];
  v30 = v0[25];
  v32 = &off_279691000;
  v33 = v0[22];
  if (v29)
  {
    v34 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v84 = v80;
    *v34 = 136315394;
    v79 = v28;
    v35 = sub_24F91F448();
    v37 = v36;
    v19(v30, v33);
    v38 = sub_24E7620D4(v35, v37, &v84);

    *(v34 + 4) = v38;
    *(v34 + 12) = 1024;
    v39 = [objc_opt_self() defaultManager];
    sub_24F91F448();
    v40 = sub_24F92B098();

    LODWORD(v38) = [v39 fileExistsAtPath_];

    v19(v31, v33);
    *(v34 + 14) = v38;
    _os_log_impl(&dword_24E5DD000, v27, v79, "Path: %s, exists: %{BOOL}d", v34, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v80);
    MEMORY[0x2530542D0](v80, -1, -1);
    v41 = v34;
    v32 = &off_279691000;
    MEMORY[0x2530542D0](v41, -1, -1);
  }

  else
  {
    v19(v0[24], v0[22]);

    v19(v30, v33);
  }

  v54 = [objc_opt_self() v32[365]];
  sub_24F91F448();
  v55 = sub_24F92B098();

  v56 = [v54 fileExistsAtPath_];

  if (v56)
  {
    v57 = v0[27];
    v59 = v0[22];
    v58 = v0[23];
    v60 = v0[18];

    (*(v58 + 32))(v60, v57, v59);
    (*(v58 + 56))(v60, 0, 1, v59);
LABEL_29:

    v77 = v0[1];

    return v77();
  }

  v61 = [objc_opt_self() v32[365]];
  v0[34] = v61;
  v62 = sub_24F91F3B8();
  v0[35] = v62;
  v0[2] = v0;
  v0[3] = sub_24E761B28;
  v63 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B618);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24E760660;
  v0[13] = &block_descriptor_12;
  v0[14] = v63;
  [v61 writeDataForAssetResource:v83 toFile:v62 options:v82 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24E761B28()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_24E761D54;
  }

  else
  {
    v2 = sub_24E761C38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E761C38()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[22];
  v8 = v0[23];
  v9 = v0[18];

  (*(v8 + 32))(v9, v5, v7);
  (*(v8 + 56))(v9, 0, 1, v7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24E761D54()
{
  v2 = (v0 + 240);
  v1 = *(v0 + 240);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 272);
  swift_willThrow();

  v6 = v3;
  v7 = sub_24F9220B8();
  v8 = sub_24F92BDB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 288);
    v10 = *(v0 + 224);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v9;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_24E5DD000, v7, v8, "Could not write asset resource data to file, error: %@", v11, 0xCu);
    sub_24E601704(v12, &qword_27F227B20);
    MEMORY[0x2530542D0](v12, -1, -1);
    MEMORY[0x2530542D0](v11, -1, -1);

    v7 = *(v0 + 240);
    v2 = (v0 + 232);
  }

  else
  {
    v15 = *(v0 + 224);
  }

  v16 = *v2;
  v17 = *(v0 + 288);
  v18 = *(v0 + 248);
  v19 = *(v0 + 216);
  v20 = *(v0 + 176);
  v21 = *(v0 + 184);
  v22 = *(v0 + 144);

  v18(v19, v20);
  (*(v21 + 56))(v22, 1, 1, v20);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_24E761F8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E763840;

  return sub_24E762B40(a1);
}

uint64_t sub_24E762034(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E614970;

  return sub_24E760FFC(a1, a2);
}

unint64_t sub_24E7620D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24E7621A0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24E643A9C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_24E7621A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24E7622AC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24F92C928();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_24E7622AC(uint64_t a1, unint64_t a2)
{
  v3 = sub_24E7622F8(a1, a2);
  sub_24E762428(&unk_2861B22F0);
  return v3;
}

uint64_t sub_24E7622F8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24F912BC4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24F92C928();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24F92B2C8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24F912BC4(v10, 0);
        result = sub_24F92C848();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24E762428(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24E762514(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_24E762514(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B9B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_24E762608(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B9C8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v5 = type metadata accessor for PhotosAsset();
  v36 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277CD9880]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F93A400;
  *(v11 + 32) = sub_24F92B0D8();
  *(v11 + 40) = v12;
  *(v11 + 48) = sub_24F92B0D8();
  *(v11 + 56) = v13;
  v14 = sub_24F92B588();

  [v10 addFetchPropertySets_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24F941C80;
  v16 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v17 = sub_24F92B098();
  v18 = [v16 initWithKey:v17 ascending:0];

  *(v15 + 32) = v18;
  sub_24E69A5C4(0, &qword_27F21B9D0);
  v19 = sub_24F92B588();

  [v10 setSortDescriptors_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_24F93DE60;
  *(v20 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  *(v20 + 32) = a1;

  v21 = sub_24F92B098();
  v22 = sub_24F92B588();

  v23 = [objc_opt_self() predicateWithFormat:v21 argumentArray:v22];

  [v10 setInternalPredicate_];
  v24 = [objc_opt_self() fetchAssetsWithOptions_];
  result = [v24 count];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v26 = result;
    if (result)
    {
      v34 = v10;
      v27 = 0;
      v28 = MEMORY[0x277D84F90];
      v29 = (v36 + 48);
      v30 = &selRef_hasManagedStateChangedFromAccount_toAccount_;
      v35 = v5;
      do
      {
        v31 = [v24 v30[146]];
        PhotosAsset.init(_:)(v31, v4);
        if ((*v29)(v4, 1, v5) == 1)
        {

          sub_24E601704(v4, &qword_27F21B9C8);
        }

        else
        {
          sub_24E6E2F58(v4, v9);
          sub_24E763108(v9, v37);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_24E61778C(0, v28[2] + 1, 1, v28);
          }

          v33 = v28[2];
          v32 = v28[3];
          if (v33 >= v32 >> 1)
          {
            v28 = sub_24E61778C(v32 > 1, v33 + 1, 1, v28);
          }

          sub_24E76316C(v9);
          v28[2] = v33 + 1;
          sub_24E6E2F58(v37, v28 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v33);
          v5 = v35;
          v30 = &selRef_hasManagedStateChangedFromAccount_toAccount_;
        }

        ++v27;
      }

      while (v26 != v27);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v28;
  }

  return result;
}

uint64_t sub_24E762B40(uint64_t a1)
{
  *(v1 + 24) = a1;
  type metadata accessor for PhotosAsset();
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E762BD0, 0, 0);
}

uint64_t sub_24E762BD0()
{
  v29 = v0;
  v1 = v0[3];
  v3 = *v1;
  v2 = v1[1];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93DE60;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;

  v6 = sub_24F92B588();

  v7 = [v4 fetchAssetsWithLocalIdentifiers:v6 options:0];

  v8 = [v7 firstObject];
  v0[5] = v8;

  if (v8)
  {
    v9 = v0[3];
    v10 = [objc_allocWithZone(MEMORY[0x277CD98A0]) init];
    v0[6] = v10;
    [v10 setSynchronous_];
    [v10 setNetworkAccessAllowed_];
    v11 = swift_task_alloc();
    v0[7] = v11;
    v11[2] = v8;
    v11[3] = v9;
    v11[4] = v10;
    v12 = swift_task_alloc();
    v0[8] = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B9C0);
    *v12 = v0;
    v12[1] = sub_24E762F7C;

    return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000012, 0x800000024FA468B0, sub_24E7636FC, v11, v13);
  }

  else
  {
    if (qword_27F211440 != -1)
    {
      swift_once();
    }

    v14 = v0[3];
    v15 = v0[4];
    v16 = sub_24F9220D8();
    __swift_project_value_buffer(v16, qword_27F39E910);
    sub_24E763108(v14, v15);
    v17 = sub_24F9220B8();
    v18 = sub_24F92BDB8();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[4];
    if (v19)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315138;
      v23 = *v20;
      v24 = v20[1];

      sub_24E76316C(v20);
      v25 = sub_24E7620D4(v23, v24, &v28);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_24E5DD000, v17, v18, "Could not fetch PHAsset with local identifier %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x2530542D0](v22, -1, -1);
      MEMORY[0x2530542D0](v21, -1, -1);
    }

    else
    {

      sub_24E76316C(v20);
    }

    v26 = v0[1];

    return v26(0);
  }
}

uint64_t sub_24E762F7C()
{

  return MEMORY[0x2822009F8](sub_24E763094, 0, 0);
}

uint64_t sub_24E763094()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24E763108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosAsset();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E76316C(uint64_t a1)
{
  v2 = type metadata accessor for PhotosAsset();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  return sub_24E643A9C(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of PhotosServiceProtocol.fetchImage(asset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E763840;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PhotosServiceProtocol.writeAssetDataToFile(asset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24E6541E4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PhotosService.fetchImage(asset:)(uint64_t a1)
{
  v6 = (*(*v1 + 88) + **(*v1 + 88));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24E760BD8;

  return v6(a1);
}

uint64_t dispatch thunk of PhotosService.writeAssetDataToFile(asset:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 96) + **(*v2 + 96));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24E614970;

  return v8(a1, a2);
}

uint64_t sub_24E763708()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2393F0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24E76379C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2393F0);

  return sub_24E760F00(a1);
}

uint64_t sub_24E763868(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E7639B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ActionButtonRow()
{
  result = qword_27F21B9D8;
  if (!qword_27F21B9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E763B40()
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
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24E763C4C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BA68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E765DA4();
  sub_24F92D128();
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    v11[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v9 = type metadata accessor for ActionButtonRow();
    v11[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    v11[12] = 3;
    sub_24F929608();
    sub_24E765EA8(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    v11[11] = 4;
    sub_24F92CD08();
    v11[10] = *(v3 + *(v9 + 36));
    v11[9] = 5;
    sub_24E765EF0();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E763FA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BA50);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v9 = &v32 - v8;
  v10 = type metadata accessor for ActionButtonRow();
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 40) = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 9) = 0;
  v43 = v12 + 40;
  sub_24E61DA68(&v44, (v12 + 40), qword_27F21B590);
  v13 = *(v10 + 24);
  v14 = sub_24F92A6D8();
  v15 = *(*(v14 - 8) + 56);
  v41 = v13;
  v15(&v12[v13], 1, 1, v14);
  v40 = v10;
  v16 = *(v10 + 28);
  v17 = sub_24F929608();
  v18 = *(*(v17 - 8) + 56);
  v39 = v16;
  v18(&v12[v16], 1, 1, v17);
  v19 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24E765DA4();
  v36 = v9;
  v20 = v38;
  sub_24F92D108();
  if (v20)
  {
    v22 = v39;
    __swift_destroy_boxed_opaque_existential_1(v42);
    v23 = v41;
    sub_24E601704(v43, qword_27F24EC90);
    sub_24E601704(&v12[v23], &qword_27F215440);
    return sub_24E601704(&v12[v22], &qword_27F213E68);
  }

  else
  {
    v21 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v47 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v24 = v45;
    *v12 = v44;
    *(v12 + 1) = v24;
    *(v12 + 4) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v47 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    v26 = v39;
    v25 = v40;
    sub_24E61DA68(&v44, v43, qword_27F24EC90);
    LOBYTE(v44) = 2;
    sub_24E65CAA0();
    v38 = v7;
    sub_24F92CC68();
    sub_24E61DA68(v38, &v12[v41], &qword_27F215440);
    LOBYTE(v44) = 3;
    sub_24E765EA8(&qword_27F213F48, MEMORY[0x277D21F70]);
    v27 = v34;
    sub_24F92CC18();
    sub_24E61DA68(v27, &v12[v26], &qword_27F213E68);
    LOBYTE(v44) = 4;
    v28 = sub_24F92CC28();
    v29 = &v12[*(v25 + 32)];
    *v29 = v28;
    v29[1] = v30;
    v47 = 5;
    sub_24E765DF8();
    sub_24F92CC68();
    (*(v21 + 8))(v36, v37);
    v12[*(v25 + 36)] = v44;
    sub_24E7657C8(v12, v33);
    __swift_destroy_boxed_opaque_existential_1(v42);
    return sub_24E765E4C(v12);
  }
}

uint64_t sub_24E764630(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7265746E6563;
  }

  else
  {
    v3 = 0x676E696461656CLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x7265746E6563;
  }

  else
  {
    v5 = 0x676E696461656CLL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
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

uint64_t sub_24E7646D4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E764754()
{
  sub_24F92B218();
}

uint64_t sub_24E7647C0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E76483C@<X0>(char *a1@<X8>)
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