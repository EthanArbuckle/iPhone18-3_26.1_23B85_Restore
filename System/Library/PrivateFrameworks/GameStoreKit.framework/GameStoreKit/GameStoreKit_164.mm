uint64_t sub_24F738B50(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E7C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F73D49C();
  sub_24F92D128();
  v8[31] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for InviteFriendsRow(0);
    v8[30] = 1;
    type metadata accessor for FriendSuggestion(0);
    sub_24F738494(&qword_27F24D7B8, type metadata accessor for FriendSuggestion);
    sub_24F92CD48();
    v8[29] = 2;
    sub_24F92CD08();
    v8[28] = 3;
    type metadata accessor for PlayerAvatar(0);
    sub_24F738494(&qword_27F218A38, type metadata accessor for PlayerAvatar);
    sub_24F92CD48();
    v8[27] = 4;
    sub_24F92CD08();
    v8[26] = 5;
    sub_24F9289E8();
    sub_24F738494(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CCF8();
    v8[25] = 6;
    sub_24F92CD08();
    v8[24] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8);
    sub_24E602068(&qword_27F21BE88, &qword_27F213EA8);
    sub_24F92CD48();
    v8[15] = 8;
    sub_24F92CD18();
    v8[14] = 9;
    sub_24F92CD48();
    v8[13] = 10;
    sub_24F929608();
    sub_24F738494(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    v8[12] = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F7390B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v43 - v6;
  v46 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v46);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FriendSuggestion(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E7B0);
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = type metadata accessor for InviteFriendsRow(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v17[*(v18 + 44)];
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  v55 = v19;
  sub_24E61DA68(&v57, v19, qword_27F21B590);
  v20 = &v17[*(v15 + 52)];
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v54 = v20;
  sub_24E61DA68(&v57, v20, qword_27F21B590);
  v50 = v15;
  v21 = *(v15 + 60);
  v56 = v17;
  v22 = &v17[v21];
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 4) = 0;
  v53 = &v17[v21];
  sub_24E61DA68(&v57, &v17[v21], qword_27F21B590);
  v23 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24F73D49C();
  v49 = v14;
  v24 = v51;
  sub_24F92D108();
  if (v24)
  {
    v26 = v55;
    __swift_destroy_boxed_opaque_existential_1(v52);
    sub_24E601704(v26, &qword_27F213EA8);
    sub_24E601704(v54, &qword_27F213EA8);
    return sub_24E601704(v53, qword_27F24EC90);
  }

  else
  {
    v25 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v60 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v27 = v58;
    v28 = v56;
    *v56 = v57;
    v28[1] = v27;
    *(v28 + 4) = v59;
    LOBYTE(v57) = 1;
    sub_24F738494(&qword_27F22F168, type metadata accessor for FriendSuggestion);
    sub_24F92CC68();
    v29 = v55;
    v30 = v50;
    sub_24F73C64C(v11, v28 + v50[5], type metadata accessor for FriendSuggestion);
    LOBYTE(v57) = 2;
    v51 = 0;
    v31 = sub_24F92CC28();
    v32 = (v28 + v30[6]);
    *v32 = v31;
    v32[1] = v33;
    LOBYTE(v57) = 3;
    sub_24F738494(&qword_27F2185A0, type metadata accessor for PlayerAvatar);
    sub_24F92CC68();
    sub_24F73C64C(v25, v28 + v30[7], type metadata accessor for PlayerAvatar);
    LOBYTE(v57) = 4;
    v34 = sub_24F92CC28();
    v35 = (v28 + v30[8]);
    *v35 = v34;
    v35[1] = v36;
    sub_24F9289E8();
    LOBYTE(v57) = 5;
    sub_24F738494(&qword_27F214018, MEMORY[0x277D21C48]);
    v37 = v45;
    sub_24F92CC18();
    sub_24E6009C8(v37, v28 + v30[9], &qword_27F213FB0);
    LOBYTE(v57) = 6;
    v38 = sub_24F92CC28();
    v39 = (v28 + v30[10]);
    *v39 = v38;
    v39[1] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8);
    v60 = 7;
    sub_24E602068(&qword_27F21BEE8, &qword_27F213EA8);
    sub_24F92CC68();
    sub_24E61DA68(&v57, v29, &qword_27F213EA8);
    LOBYTE(v57) = 8;
    *(v28 + v50[12]) = sub_24F92CC38() & 1;
    v60 = 9;
    sub_24F92CC68();
    sub_24E61DA68(&v57, v54, &qword_27F213EA8);
    sub_24F929608();
    LOBYTE(v57) = 10;
    sub_24F738494(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    sub_24E6009C8(v44, v56 + v50[14], &qword_27F213E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v60 = 11;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    (*(v47 + 8))(v49, v48);
    sub_24E61DA68(&v57, v53, qword_27F24EC90);
    v41 = v56;
    sub_24F73C5E0(v56, v43, type metadata accessor for InviteFriendsRow);
    __swift_destroy_boxed_opaque_existential_1(v52);
    return sub_24F73D4F0(v41, type metadata accessor for InviteFriendsRow);
  }
}

uint64_t sub_24F739CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F73D808(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F739D08(uint64_t a1)
{
  v2 = sub_24F73D49C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F739D44(uint64_t a1)
{
  v2 = sub_24F73D49C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24F739D80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(v2 + *(a1 + 60), v6, qword_27F24EC90);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_24F739E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E6E8);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = (&v46 - v6);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E6F0);
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v46 - v9;
  v10 = sub_24F923E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E6F8);
  MEMORY[0x28223BE20](v14 - 8);
  v50 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E700);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  v25 = *(a1 + *(type metadata accessor for InviteFriendsRowComponent(0) + 24));
  *v24 = sub_24F9249A8();
  *(v24 + 1) = v25;
  v24[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E708);
  v27 = a2;
  sub_24F73A340(a2, a1, &v24[*(v26 + 44)]);
  sub_24F769788(v13);
  LOBYTE(a2) = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v28 = v13;
  v29 = v49;
  (*(v11 + 8))(v28, v10);
  v30 = 1;
  if (a2)
  {
    v31 = sub_24F924C98();
    v32 = v46;
    *v46 = v31;
    v32[1] = 0;
    *(v32 + 16) = 1;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E718);
    sub_24F73B82C(v27, a1, v32 + *(v33 + 44));
    sub_24F927628();
    sub_24F9242E8();
    v34 = v32;
    v35 = v48;
    sub_24E6009C8(v34, v48, &qword_27F24E6E8);
    v36 = (v35 + *(v29 + 36));
    v37 = v58;
    v36[4] = v57;
    v36[5] = v37;
    v36[6] = v59;
    v38 = v54;
    *v36 = v53;
    v36[1] = v38;
    v39 = v56;
    v36[2] = v55;
    v36[3] = v39;
    v40 = v35;
    v41 = v47;
    sub_24E6009C8(v40, v47, &qword_27F24E6F0);
    sub_24E6009C8(v41, v18, &qword_27F24E6F0);
    v30 = 0;
  }

  (*(v51 + 56))(v18, v30, 1, v29);
  sub_24E60169C(v24, v21, &qword_27F24E700);
  v42 = v50;
  sub_24E60169C(v18, v50, &qword_27F24E6F8);
  v43 = v52;
  sub_24E60169C(v21, v52, &qword_27F24E700);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E710);
  sub_24E60169C(v42, v43 + *(v44 + 48), &qword_27F24E6F8);
  sub_24E601704(v18, &qword_27F24E6F8);
  sub_24E601704(v24, &qword_27F24E700);
  sub_24E601704(v42, &qword_27F24E6F8);
  return sub_24E601704(v21, &qword_27F24E700);
}

uint64_t sub_24F73A340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v152 = a2;
  v154 = a1;
  v149 = a3;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8);
  MEMORY[0x28223BE20](v121);
  v141 = &v116 - v3;
  v4 = sub_24F924C38();
  v139 = *(v4 - 8);
  v140 = v4;
  MEMORY[0x28223BE20](v4);
  v138 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InviteFriendsRowComponent(0);
  v131 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v132 = v7;
  v133 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for InviteFriendsRow(0);
  v128 = *(v153 - 1);
  MEMORY[0x28223BE20](v153);
  v129 = v8;
  v130 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v9 - 8);
  v134 = &v116 - v10;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E740);
  MEMORY[0x28223BE20](v136);
  v135 = &v116 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E748);
  v119 = *(v12 - 8);
  v120 = v12;
  MEMORY[0x28223BE20](v12);
  v137 = &v116 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E750);
  v123 = *(v14 - 8);
  v124 = v14;
  MEMORY[0x28223BE20](v14);
  v122 = &v116 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E758);
  v145 = *(v16 - 8);
  v146 = v16;
  MEMORY[0x28223BE20](v16);
  v125 = &v116 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E760);
  MEMORY[0x28223BE20](v18 - 8);
  v148 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v147 = &v116 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E6E8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v116 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E6F0);
  v26 = *(v25 - 8);
  v150 = v25;
  v151 = v26;
  MEMORY[0x28223BE20](v25);
  v118 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v117 = &v116 - v29;
  v30 = sub_24F923E98();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E6F8);
  MEMORY[0x28223BE20](v34 - 8);
  v144 = &v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v116 - v37;
  v39 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v116 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0);
  v43 = v42 - 8;
  MEMORY[0x28223BE20](v42);
  v143 = &v116 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v116 - v46;
  sub_24F73C5E0(v154 + v153[7], v41, type metadata accessor for PlayerAvatar);
  LOBYTE(v164[0]) = 7;
  sub_24F8319B8(v41, v164, v47);
  v48 = v152;
  sub_24F927618();
  sub_24F9238C8();
  v49 = *(v43 + 44);
  v142 = v47;
  v50 = &v47[v49];
  v51 = v162;
  *v50 = *&v161[40];
  *(v50 + 1) = v51;
  *(v50 + 2) = v163;
  sub_24F769788(v33);
  LOBYTE(v43) = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v126 = v31;
  v127 = v30;
  v52 = v31;
  v53 = v150;
  (*(v52 + 8))(v33, v30);
  v54 = 1;
  if ((v43 & 1) == 0)
  {
    *v24 = sub_24F924C98();
    *(v24 + 1) = 0;
    v24[16] = 1;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E718);
    sub_24F73B82C(v154, v48, &v24[*(v55 + 44)]);
    sub_24F927628();
    sub_24F9242E8();
    v56 = v118;
    sub_24E6009C8(v24, v118, &qword_27F24E6E8);
    v57 = (v56 + *(v53 + 36));
    v58 = v164[5];
    v57[4] = v164[4];
    v57[5] = v58;
    v57[6] = v164[6];
    v59 = v164[1];
    *v57 = v164[0];
    v57[1] = v59;
    v60 = v164[3];
    v57[2] = v164[2];
    v57[3] = v60;
    v61 = v56;
    v62 = v117;
    sub_24E6009C8(v61, v117, &qword_27F24E6F0);
    sub_24E6009C8(v62, v38, &qword_27F24E6F0);
    v54 = 0;
  }

  v63 = *(v151 + 7);
  v151 = v38;
  v63(v38, v54, 1, v53);
  sub_24E60169C(v154 + v153[11], &v157, &qword_27F213EA8);
  if (!v159)
  {
    sub_24E601704(&v157, qword_27F21B590);
    v104 = v147;
    (*(v145 + 56))(v147, 1, 1, v146);
    goto LABEL_8;
  }

  sub_24E612C80(&v157, v161);
  v64 = sub_24F9232F8();
  (*(*(v64 - 8) + 56))(v134, 1, 1, v64);
  sub_24E615E00(v161, &v157);
  v65 = v130;
  sub_24F73C5E0(v154, v130, type metadata accessor for InviteFriendsRow);
  v66 = v133;
  sub_24F73C5E0(v48, v133, type metadata accessor for InviteFriendsRowComponent);
  v67 = (*(v128 + 80) + 16) & ~*(v128 + 80);
  v68 = (v129 + *(v131 + 80) + v67) & ~*(v131 + 80);
  v69 = swift_allocObject();
  sub_24F73C64C(v65, v69 + v67, type metadata accessor for InviteFriendsRow);
  sub_24F73C64C(v66, v69 + v68, type metadata accessor for InviteFriendsRowComponent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E770);
  v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217790);
  v71 = sub_24E6AF8AC();
  v155 = v70;
  v156 = v71;
  swift_getOpaqueTypeConformance2();
  v72 = v135;
  sub_24F921788();
  v73 = v136;
  v74 = (v72 + *(v136 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222BA8);
  sub_24F924328();
  *v74 = swift_getKeyPath();
  v75 = v138;
  sub_24F924C28();
  v76 = sub_24F73D398();
  v77 = sub_24F738494(&qword_27F21A8C0, MEMORY[0x277CDDEE0]);
  v78 = v137;
  v79 = v140;
  sub_24F926178();
  (*(v139 + 8))(v75, v79);
  sub_24E601704(v72, &qword_27F24E740);
  v80 = v141;
  (*(v126 + 104))(v141, *MEMORY[0x277CDF988], v127);
  sub_24F738494(&qword_27F22DF90, MEMORY[0x277CDFA28]);
  if ((sub_24F92AFF8() & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  *&v157 = v73;
  *(&v157 + 1) = v79;
  v158 = v76;
  v159 = v77;
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
  v73 = v122;
  v81 = v120;
  sub_24F9263F8();
  sub_24E601704(v80, &qword_27F21CCC8);
  (*(v119 + 8))(v78, v81);
  v159 = sub_24F9271D8();
  v160 = sub_24F738494(&qword_27F214E38, MEMORY[0x277CE1260]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v157);
  v83 = *MEMORY[0x277CE0118];
  v84 = sub_24F924B38();
  (*(*(v84 - 8) + 104))(boxed_opaque_existential_1, v83, v84);
  v77 = v125;
  sub_24E60169C(&v157, v125, &qword_27F24E790);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E798);
  v72 = v123;
  v78 = v124;
  (*(v123 + 16))(v77 + v85[9], v73, v124);
  v86 = v77 + v85[10];
  *v86 = sub_24F923398() & 1;
  *(v86 + 8) = v87;
  *(v86 + 16) = v88 & 1;
  v89 = v77 + v85[11];
  *v89 = swift_getKeyPath();
  *(v89 + 8) = 0;
  if (qword_27F211808 != -1)
  {
LABEL_10:
    swift_once();
  }

  v90 = qword_27F24E488;
  v91 = sub_24F923398();
  v93 = v92;
  v95 = v94;
  v96 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E7A0) + 36);
  *v96 = v90;
  *(v96 + 8) = v91 & 1;
  *(v96 + 16) = v93;
  *(v96 + 24) = v95 & 1;
  LOBYTE(v90) = sub_24F923398();
  v98 = v97;
  LOBYTE(v93) = v99;
  sub_24E601704(&v157, &qword_27F24E790);
  (*(v72 + 8))(v73, v78);
  __swift_destroy_boxed_opaque_existential_1(v161);
  v100 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E7A8) + 36);
  *v100 = v90 & 1;
  *(v100 + 8) = v98;
  *(v100 + 16) = v93 & 1;
  LOBYTE(v98) = *(v154 + v153[12]);
  KeyPath = swift_getKeyPath();
  v102 = swift_allocObject();
  *(v102 + 16) = v98;
  v103 = v146;
  v104 = v147;
  v105 = (v77 + *(v146 + 36));
  *v105 = KeyPath;
  v105[1] = sub_24E600A48;
  v105[2] = v102;
  sub_24E6009C8(v77, v104, &qword_27F24E758);
  (*(v145 + 56))(v104, 0, 1, v103);
LABEL_8:
  v107 = v142;
  v106 = v143;
  sub_24E60169C(v142, v143, &qword_27F2233D0);
  v108 = v151;
  v109 = v144;
  sub_24E60169C(v151, v144, &qword_27F24E6F8);
  v110 = v148;
  sub_24E60169C(v104, v148, &qword_27F24E760);
  v111 = v149;
  sub_24E60169C(v106, v149, &qword_27F2233D0);
  v112 = v104;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E768);
  sub_24E60169C(v109, v111 + v113[12], &qword_27F24E6F8);
  v114 = v111 + v113[16];
  *v114 = 0;
  *(v114 + 8) = 1;
  sub_24E60169C(v110, v111 + v113[20], &qword_27F24E760);
  sub_24E601704(v112, &qword_27F24E760);
  sub_24E601704(v108, &qword_27F24E6F8);
  sub_24E601704(v107, &qword_27F2233D0);
  sub_24E601704(v110, &qword_27F24E760);
  sub_24E601704(v109, &qword_27F24E6F8);
  return sub_24E601704(v106, &qword_27F2233D0);
}

uint64_t sub_24F73B510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v36 = sub_24F9248C8();
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (a1 + *(type metadata accessor for InviteFriendsRow(0) + 40));
  v6 = v5[1];
  *&v46 = *v5;
  *(&v46 + 1) = v6;
  sub_24E600AEC();

  v7 = sub_24F925E18();
  v9 = v8;
  v11 = v10;
  type metadata accessor for InviteFriendsRowComponent(0);
  v12 = sub_24F925C98();
  v14 = v13;
  v16 = v15;
  sub_24E600B40(v7, v9, v11 & 1);

  v17 = sub_24F925C88();
  v19 = v18;
  v21 = v20;
  sub_24E600B40(v12, v14, v16 & 1);

  *&v46 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v22 = sub_24F925C58();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_24E600B40(v17, v19, v21 & 1);

  LOBYTE(v12) = sub_24F9257F8();
  sub_24F923318();
  v45 = v26 & 1;
  v42 = 0;
  *&v46 = v22;
  *(&v46 + 1) = v24;
  LOBYTE(v47) = v26 & 1;
  *(&v47 + 1) = *v44;
  DWORD1(v47) = *&v44[3];
  *(&v47 + 1) = v28;
  LOBYTE(v48) = v12;
  *(&v48 + 1) = *v43;
  DWORD1(v48) = *&v43[3];
  *(&v48 + 1) = v29;
  *v49 = v30;
  *&v49[8] = v31;
  *&v49[16] = v32;
  v49[24] = 0;
  sub_24F9248B8();
  v40 = v48;
  v41[0] = *v49;
  *(v41 + 9) = *&v49[9];
  v39 = v47;
  v38 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217790);
  sub_24E6AF8AC();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v35 + 8))(v4, v36);
  return sub_24E601704(&v46, &qword_27F217790);
}

uint64_t sub_24F73B82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v51 = a2;
  v52 = a1;
  v63 = a3;
  v4 = type metadata accessor for InviteFriendsRowComponent(0);
  v59 = *(v4 - 8);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InviteFriendsRow(0);
  v7 = v6 - 8;
  v55 = *(v6 - 8);
  v54 = *(v55 + 64);
  MEMORY[0x28223BE20](v6);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E720);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v62 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v58 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v57 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v64 = &v51 - v17;
  v18 = (a1 + *(v7 + 32));
  v19 = v18[1];
  v65 = *v18;
  v66 = v19;
  sub_24E600AEC();

  v20 = sub_24F925E18();
  v22 = v21;
  v24 = v23;
  v25 = sub_24F925C98();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_24E600B40(v20, v22, v24 & 1);

  v65 = v25;
  v66 = v27;
  v67 = v29 & 1;
  v68 = v31;
  v32 = v64;
  sub_24F9268B8();
  sub_24E600B40(v25, v27, v29 & 1);

  v33 = v53;
  sub_24F73C5E0(v52, v53, type metadata accessor for InviteFriendsRow);
  v34 = v56;
  sub_24F73C5E0(v51, v56, type metadata accessor for InviteFriendsRowComponent);
  v35 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v36 = (v54 + *(v59 + 80) + v35) & ~*(v59 + 80);
  v37 = swift_allocObject();
  sub_24F73C64C(v33, v37 + v35, type metadata accessor for InviteFriendsRow);
  sub_24F73C64C(v34, v37 + v36, type metadata accessor for InviteFriendsRowComponent);
  v38 = sub_24F924C98();
  v39 = sub_24F9249A8();
  v40 = *(v10 + 60);
  *&v14[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  *v14 = sub_24F73C6B4;
  *(v14 + 1) = v37;
  *(v14 + 2) = v38;
  *(v14 + 3) = 0;
  v14[32] = 1;
  *(v14 + 5) = v39;
  *(v14 + 6) = 0;
  v14[56] = 1;
  v41 = v57;
  v42 = v58;
  v43 = *(v58 + 16);
  v44 = v32;
  v45 = v61;
  v43(v57, v44, v61);
  v46 = v62;
  sub_24E60169C(v14, v62, &qword_27F24E720);
  v47 = v63;
  v43(v63, v41, v45);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E728);
  sub_24E60169C(v46, &v47[*(v48 + 48)], &qword_27F24E720);
  sub_24E601704(v14, &qword_27F24E720);
  v49 = *(v42 + 8);
  v49(v64, v45);
  sub_24E601704(v46, &qword_27F24E720);
  return (v49)(v41, v45);
}

uint64_t sub_24F73BD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760);
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v44 - v10;
  v12 = sub_24F9289E8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E730);
  MEMORY[0x28223BE20](v16 - 8);
  v50 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  v47 = type metadata accessor for InviteFriendsRow(0);
  sub_24E60169C(a1 + *(v47 + 36), v11, &qword_27F213FB0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24E601704(v11, &qword_27F213FB0);
    v21 = 1;
    v22 = v48;
  }

  else
  {
    v23 = *(v13 + 32);
    v45 = v15;
    v23(v15, v11, v12);
    (*(v13 + 16))(v8, v15, v12);
    (*(v13 + 56))(v8, 0, 1, v12);
    v24 = type metadata accessor for GameIcon(0);
    v25 = v24[8];
    *&v8[v25] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
    swift_storeEnumTagMultiPayload();
    v8[v24[5]] = 1;
    v8[v24[6]] = 1;
    v8[v24[7]] = 0;
    type metadata accessor for InviteFriendsRowComponent(0);
    v46 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    sub_24F9237D8();
    sub_24F9237D8();
    sub_24F927618();
    sub_24F9238C8();
    (*(v13 + 8))(v45, v12);
    v26 = v48;
    v27 = &v8[*(v48 + 36)];
    v28 = v54;
    *v27 = v53;
    *(v27 + 1) = v28;
    *(v27 + 2) = v55;
    sub_24E6009C8(v8, v20, &qword_27F216760);
    v21 = 0;
    v22 = v26;
  }

  (*(v49 + 56))(v20, v21, 1, v22);
  type metadata accessor for InviteFriendsRowComponent(0);

  v29 = sub_24F925C98();
  v31 = v30;
  v33 = v32;

  v52 = sub_24F9251C8();
  v34 = sub_24F925C58();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_24E600B40(v29, v31, v33 & 1);

  v41 = v50;
  sub_24E60169C(v20, v50, &qword_27F24E730);
  sub_24E60169C(v41, a3, &qword_27F24E730);
  v42 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E738) + 48);
  *v42 = v34;
  *(v42 + 8) = v36;
  *(v42 + 16) = v38 & 1;
  *(v42 + 24) = v40;
  *(v42 + 32) = 256;
  sub_24E5FD138(v34, v36, v38 & 1);

  sub_24E601704(v20, &qword_27F24E730);
  sub_24E600B40(v34, v36, v38 & 1);

  return sub_24E601704(v41, &qword_27F24E730);
}

uint64_t sub_24F73C34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E6D8);
  sub_24F739E0C(v2, a1, a2 + *(v5 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E6E0);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24F73C3CC()
{
  MEMORY[0x28223BE20](v0);
  sub_24F73C5E0(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InviteFriendsRowComponent);
  sub_24F738494(&qword_27F231A70, type metadata accessor for InviteFriendsRowComponent);
  return sub_24F9218E8();
}

uint64_t sub_24F73C5E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F73C64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_86()
{
  v1 = v0;
  v2 = type metadata accessor for InviteFriendsRow(0);
  v3 = *(*(v2 - 1) + 80);
  v66 = *(*(v2 - 1) + 64);
  v4 = type metadata accessor for InviteFriendsRowComponent(0);
  v68 = *(*(v4 - 8) + 80);
  v67 = (v3 + 16) & ~v3;
  v5 = v0 + v67;
  __swift_destroy_boxed_opaque_existential_1(v0 + v67);
  v6 = v0 + v67 + v2[5];
  type metadata accessor for FriendSuggestion(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v62 = v4;
    v8 = type metadata accessor for Player(0);
    v9 = v8[6];
    v10 = sub_24F9289E8();
    v11 = (*(v10 - 8) + 8);
    v64 = *v11;
    v65 = *(v10 - 8);
    (*v11)(v6 + v9, v10);

    if (*(v6 + v8[9] + 8) != 1)
    {
    }

    v12 = v6 + v8[13];
    v13 = type metadata accessor for CallProviderConversationHandleSet();
    v63 = v1;
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      v14 = type metadata accessor for CallProviderConversationHandle();
      v15 = *(*(v14 - 8) + 48);
      if (!v15(v12, 1, v14))
      {

        v16 = *(type metadata accessor for CallProvider() + 24);
        if (!(*(v65 + 48))(v12 + v16, 1, v10))
        {
          v64(v12 + v16, v10);
        }
      }

      v17 = v12 + *(v13 + 20);
      if (!v15(v17, 1, v14))
      {

        v18 = *(type metadata accessor for CallProvider() + 24);
        if (!(*(v65 + 48))(v17 + v18, 1, v10))
        {
          v64(v17 + v18, v10);
        }
      }
    }

    if (*(v6 + v8[15] + 8))
    {
    }

    v19 = v6 + v8[16];
    PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
    if (!(*(*(PlayedTogetherInfo - 8) + 48))(v19, 1, PlayedTogetherInfo))
    {

      v21 = type metadata accessor for Game();
      v64(v19 + v21[18], v10);
      v22 = v21[19];
      if (!(*(v65 + 48))(v19 + v22, 1, v10))
      {
        v64(v19 + v22, v10);
      }

      v23 = v21[21];
      v24 = sub_24F920818();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(v19 + v23, 1, v24))
      {
        (*(v25 + 8))(v19 + v23, v24);
      }
    }

    v26 = v6 + v8[17];
    ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
    if (!(*(*(ChallengeInfo - 8) + 48))(v26, 1, ChallengeInfo))
    {

      v28 = type metadata accessor for Game();
      v64(v26 + v28[18], v10);
      v29 = v28[19];
      if (!(*(v65 + 48))(v26 + v29, 1, v10))
      {
        v64(v26 + v29, v10);
      }

      v30 = v28[21];
      v31 = sub_24F920818();
      v32 = *(v31 - 8);
      if (!(*(v32 + 48))(v26 + v30, 1, v31))
      {
        (*(v32 + 8))(v26 + v30, v31);
      }
    }

    v33 = type metadata accessor for ActivityFriendSuggestion(0);
    v34 = v6 + *(v33 + 24);

    v35 = type metadata accessor for Game();
    v64(v34 + v35[18], v10);
    v36 = v35[19];
    if (!(*(v65 + 48))(v34 + v36, 1, v10))
    {
      v64(v34 + v36, v10);
    }

    v37 = v35[21];
    v38 = sub_24F920818();
    v39 = *(v38 - 8);
    if (!(*(v39 + 48))(v34 + v37, 1, v38))
    {
      (*(v39 + 8))(v34 + v37, v38);
    }

    v40 = *(v33 + 28);
    v41 = sub_24F91F648();
    (*(*(v41 - 8) + 8))(v6 + v40, v41);
    v4 = v62;
    v1 = v63;
  }

  else
  {
  }

  v42 = v5 + v2[7];

  v43 = type metadata accessor for PlayerAvatar(0);
  v44 = *(v43 + 20);
  v45 = type metadata accessor for PlayerAvatar.Overlay(0);
  if (!(*(*(v45 - 8) + 48))(v42 + v44, 1, v45) && !swift_getEnumCaseMultiPayload())
  {
    v46 = sub_24F9289E8();
    (*(*(v46 - 8) + 8))(v42 + v44, v46);
  }

  v47 = v42 + *(v43 + 24);
  if (*(v47 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v48 = v2[9];
  v49 = sub_24F9289E8();
  v50 = *(v49 - 8);
  if (!(*(v50 + 48))(v5 + v48, 1, v49))
  {
    (*(v50 + 8))(v5 + v48, v49);
  }

  v51 = v5 + v2[11];
  if (*(v51 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v52 = v5 + v2[13];
  if (*(v52 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v53 = v2[14];
  v54 = sub_24F929608();
  v55 = *(v54 - 8);
  if (!(*(v55 + 48))(v5 + v53, 1, v54))
  {
    (*(v55 + 8))(v5 + v53, v54);
  }

  v56 = (v67 + v66 + v68) & ~v68;
  v57 = v5 + v2[15];
  if (*(v57 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v58 = sub_24F923E98();
    (*(*(v58 - 8) + 8))(v1 + v56, v58);
  }

  else
  {
  }

  v59 = *(v4 + 20);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  (*(*(v60 - 8) + 8))(v1 + v56 + v59, v60);

  return swift_deallocObject();
}

uint64_t sub_24F73D2A8(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for InviteFriendsRow(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for InviteFriendsRowComponent(0) - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

unint64_t sub_24F73D398()
{
  result = qword_27F24E778;
  if (!qword_27F24E778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E740);
    sub_24E602068(&qword_27F24E780, &qword_27F24E788);
    sub_24E602068(&qword_27F222BB0, &qword_27F222BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E778);
  }

  return result;
}

unint64_t sub_24F73D49C()
{
  result = qword_27F24E7B8;
  if (!qword_27F24E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E7B8);
  }

  return result;
}

uint64_t sub_24F73D4F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F73D564()
{
  result = qword_27F24E7C8;
  if (!qword_27F24E7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E6E0);
    sub_24F73D61C();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E7C8);
  }

  return result;
}

unint64_t sub_24F73D61C()
{
  result = qword_27F24E7D0;
  if (!qword_27F24E7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E7D8);
    sub_24E602068(&qword_27F24E7E0, &qword_27F24E7E8);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E7D0);
  }

  return result;
}

unint64_t sub_24F73D704()
{
  result = qword_27F24E7F0;
  if (!qword_27F24E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E7F0);
  }

  return result;
}

unint64_t sub_24F73D75C()
{
  result = qword_27F24E7F8;
  if (!qword_27F24E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E7F8);
  }

  return result;
}

unint64_t sub_24F73D7B4()
{
  result = qword_27F24E800;
  if (!qword_27F24E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E800);
  }

  return result;
}

uint64_t sub_24F73D808(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEA00000000006E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xEC00000074786554 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xEF74656C63696843 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA7CC50 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6341657469766E69 && a2 == 0xEC0000006E6F6974 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6974617469766E69 && a2 == 0xEE00746E65536E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6974634165646968 && a2 == 0xEA00000000006E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000)
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

UIEdgeInsets __swiftcall UIEdgeInsets.withLayoutDirection(_:)(UITraitEnvironmentLayoutDirection a1)
{
  if (a1 == UITraitEnvironmentLayoutDirectionRightToLeft)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  if (a1 == UITraitEnvironmentLayoutDirectionRightToLeft)
  {
    v2 = v1;
  }

  v4 = v3;
  result.right = v2;
  result.left = v4;
  return result;
}

double UIEdgeInsets.withLayoutDirection(in:)(void *a1, double a2)
{
  v3 = [a1 traitCollection];
  [v3 layoutDirection];

  return a2;
}

uint64_t GameLibraryDataIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA18);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v4 = sub_24F920728();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA20);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = type metadata accessor for GameLibraryDataIntent();
  v3[28] = swift_task_alloc();
  v5 = type metadata accessor for NetworkConnectionMonitor();
  v6 = swift_task_alloc();
  v3[29] = v6;
  *v6 = v3;
  v6[1] = sub_24F73DEB0;

  return MEMORY[0x28217F228](v3 + 12, v5, v5);
}

uint64_t sub_24F73DEB0()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_24F73EBB8;
  }

  else
  {
    v2 = sub_24F73DFC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F73DFC4()
{
  v0[31] = v0[12];
  sub_24F92B7F8();
  v0[32] = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F73E060, v2, v1);
}

uint64_t sub_24F73E060()
{
  v1 = *(v0 + 248);

  swift_getKeyPath();
  *(v0 + 104) = v1;
  sub_24F73F770(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor);
  sub_24F91FD88();

  *(v0 + 388) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_24F73E150, 0, 0);
}

uint64_t sub_24F73E150()
{
  v15 = v0;
  sub_24F73F56C(*(v0 + 112), *(v0 + 224));
  v1 = sub_24F9220B8();
  v2 = sub_24F92BD98();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 388);
    v4 = *(v0 + 224);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315394;
    v7 = *v4;
    v8 = v4[1];

    sub_24F73F5D0(v4);
    v9 = sub_24E7620D4(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 1024;
    *(v5 + 14) = v3 == 2;
    _os_log_impl(&dword_24E5DD000, v1, v2, "Fetching game library for playerID: %s, isOffline: %{BOOL}d", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
    v10 = *(v0 + 224);

    sub_24F73F5D0(v10);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  v12 = swift_task_alloc();
  *(v0 + 264) = v12;
  *v12 = v0;
  v12[1] = sub_24F73E340;

  return MEMORY[0x28217F228](v0 + 56, v11, v11);
}

uint64_t sub_24F73E340()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_24F73E720;
  }

  else
  {
    v2 = sub_24F73E454;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F73E454()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_24F920538();
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v3 = *(v1 + 20);
  *(v0 + 384) = v3;
  LODWORD(v3) = *(v2 + v3);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  if (v3 == 3)
  {
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v6 + 56);
    v9 = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v8(*(v0 + 200), 1, 1, v7);
    sub_24F920718();
    if ((*(v6 + 48))(v4, 1, v7) != 1)
    {
      sub_24E601704(*(v0 + 200), &qword_27F21DA20);
    }
  }

  else
  {
    v10 = *(v0 + 176);
    v11 = *(v0 + 152);
    v12 = *(v0 + 160);
    sub_24F920718();
    sub_24F9206E8();
    sub_24F9206D8();
    v13 = *(v12 + 32);
    v13(v4, v10, v11);
    v8 = *(v12 + 56);
    v9 = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v8(v4, 0, 1, v11);
    v13(v5, v4, v11);
  }

  v14 = *(v0 + 388);
  v15 = *(v0 + 208);
  v17 = *(v0 + 144);
  v16 = *(v0 + 152);
  v18 = *(v0 + 112);
  *(v0 + 280) = v8;
  *(v0 + 288) = v9;
  v8(v15, 0, 1, v16);
  v19 = sub_24F920398();
  *(v0 + 296) = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  *(v0 + 304) = v21;
  *(v0 + 312) = (v20 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v21(v17, 1, 1, v19);
  v22 = *v18;
  *(v0 + 320) = *v18;
  v23 = v18[1];
  *(v0 + 328) = v23;
  v24 = swift_task_alloc();
  *(v0 + 336) = v24;
  *v24 = v0;
  v24[1] = sub_24F73E7F4;
  v25 = *(v0 + 208);
  v26 = *(v0 + 144);
  v27 = *(v0 + 120);

  return sub_24F6F826C(v25, v26, 0, 1, v22, v23, v14 > 1, v27);
}

uint64_t sub_24F73E720()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F73E7F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 344) = a1;
  *(v4 + 352) = v1;

  v5 = *(v3 + 208);
  sub_24E601704(*(v3 + 144), &qword_27F21DA18);
  sub_24E601704(v5, &qword_27F21DA20);
  if (v1)
  {
    v6 = sub_24F73EC8C;
  }

  else
  {
    v6 = sub_24F73E96C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24F73E96C()
{
  v15 = v0;
  v1 = *(v0 + 388);
  if (v1 == 2)
  {
    v2 = 0xEB00000000656863;
  }

  else
  {
    v2 = 0xEE00656369767265;
  }

  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 344);
  if (v5)
  {
    if (v1 == 2)
    {
      v7 = 0x6163206C61636F6CLL;
    }

    else
    {
      v7 = 0x7320656E696C6E6FLL;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v6 + 16);

    *(v8 + 12) = 2080;
    v10 = sub_24E7620D4(v7, v2, &v14);

    *(v8 + 14) = v10;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Fetched %ld games from %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 344);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v11 = *(v0 + 8);

  return v11(v13);
}

uint64_t sub_24F73EBB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F73EC8C()
{
  v1 = *(v0 + 352);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 352);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Game Services failed to fetch games with error: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = *(v0 + 388);

  if (v10 == 2)
  {
    v11 = *(v0 + 352);
    sub_24F73F62C();
    swift_allocError();
    *v12 = v11;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = sub_24F9220B8();
    v16 = sub_24F92BD98();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24E5DD000, v15, v16, "Attempting local-only fallback...", v17, 2u);
      MEMORY[0x2530542D0](v17, -1, -1);
    }

    v18 = *(v0 + 384);
    v19 = *(v0 + 112);

    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v20 = *(v19 + v18);
    v21 = *(v0 + 280);
    v22 = *(v0 + 184);
    v23 = *(v0 + 192);
    if (v20 == 3)
    {
      v25 = *(v0 + 152);
      v24 = *(v0 + 160);
      v21(*(v0 + 184), 1, 1, v25);
      sub_24F920718();
      if ((*(v24 + 48))(v22, 1, v25) != 1)
      {
        sub_24E601704(*(v0 + 184), &qword_27F21DA20);
      }
    }

    else
    {
      v27 = *(v0 + 160);
      v26 = *(v0 + 168);
      v28 = *(v0 + 152);
      sub_24F920718();
      sub_24F9206E8();
      sub_24F9206D8();
      v29 = *(v27 + 32);
      v29(v22, v26, v28);
      v21(v22, 0, 1, v28);
      v29(v23, v22, v28);
    }

    v30 = *(v0 + 304);
    v31 = *(v0 + 296);
    v32 = *(v0 + 136);
    (*(v0 + 280))(*(v0 + 192), 0, 1, *(v0 + 152));
    v30(v32, 1, 1, v31);
    v33 = swift_task_alloc();
    *(v0 + 360) = v33;
    *v33 = v0;
    v33[1] = sub_24F73F0D0;
    v34 = *(v0 + 320);
    v35 = *(v0 + 328);
    v36 = *(v0 + 192);
    v37 = *(v0 + 136);
    v38 = *(v0 + 120);

    return sub_24F6F826C(v36, v37, 0, 1, v34, v35, 1, v38);
  }
}

uint64_t sub_24F73F0D0(uint64_t a1)
{
  v4 = *v2;
  v4[46] = v1;

  v5 = v4[24];
  v6 = v4[17];
  if (v1)
  {
    sub_24E601704(v6, &qword_27F21DA18);
    sub_24E601704(v5, &qword_27F21DA20);
    v7 = sub_24F73F370;
  }

  else
  {
    v4[47] = a1;
    sub_24E601704(v6, &qword_27F21DA18);
    sub_24E601704(v5, &qword_27F21DA20);
    v7 = sub_24F73F27C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24F73F27C()
{
  v3 = *(v0 + 376);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_24F73F370()
{
  v1 = v0[46];
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[46];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Local fallback also failed: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[46];
  v11 = v0[44];

  sub_24F73F62C();
  swift_allocError();
  *v12 = v10;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v13 = v0[1];

  return v13();
}

uint64_t sub_24F73F56C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameLibraryDataIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F73F5D0(uint64_t a1)
{
  v2 = type metadata accessor for GameLibraryDataIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F73F62C()
{
  result = qword_27F24E808;
  if (!qword_27F24E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E808);
  }

  return result;
}

uint64_t sub_24F73F680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E67D244;

  return GameLibraryDataIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t sub_24F73F770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F73F7CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9220D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F73F84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9220D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for GameLibraryDataIntentImplementation()
{
  result = qword_27F24E810;
  if (!qword_27F24E810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F73F908()
{
  result = sub_24F9220D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24F73F984()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_24F92C738())
  {
    if (sub_24F92C738())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x253052270](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_24F92C738();
LABEL_13:
      if (v3)
      {
        sub_24F14A15C(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

void sub_24F73FA5C()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_24F92C738())
  {
    if (sub_24F92C738())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x253052270](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_24F92C738();
LABEL_13:
      if (v3)
      {
        sub_24F14A1E0(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_24F73FB34(uint64_t a1, int a2)
{
  v3 = v2;
  v23 = a2;
  v24 = a1;
  v4 = *v2;
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24F927E38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E69A5C4(0, &qword_27F222300);
  *v12 = sub_24F92BEF8();
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v13 = sub_24F927E68();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    v26 = sub_24F92AFE8();
    sub_24F92C7F8();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v3[6];
    v3[6] = 0x8000000000000000;
    sub_24E81DA0C(v15, v17, v27, isUniquelyReferenced_nonNull_native);
    sub_24E6585F8(v27);
    v3[6] = v25;
    swift_endAccess();
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v19;
    v21[4] = v15;
    v21[5] = v17;
    v21[6] = v4;
    v26 = sub_24F92AFE8();
    sub_24F92C7F8();

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(v24, v23 & 1, v27, sub_24F7421E0, v21);

    return sub_24E601704(v27, &qword_27F235830);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24F73FEC4(char a1, char a2, char a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_primaryIcon] = 0;
  v8 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_remainingIcons] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_artworkLoader] = 0;
  *&v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_impressionsCalculator] = 0;
  *&v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_iconViews] = v8;
  *&v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_iconScaleFactor] = 0x3FF4000000000000;
  *&v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_amsImpressionItems] = v8;
  v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_isCompactSheet] = a1;
  v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_wantsExtendedHeightAdjustment] = a2;
  v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_wantsScaledIcons] = a3;
  v16.receiver = v3;
  v16.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = *MEMORY[0x277D768C8];
  v11 = *(MEMORY[0x277D768C8] + 8);
  v12 = *(MEMORY[0x277D768C8] + 16);
  v13 = *(MEMORY[0x277D768C8] + 24);
  v14 = v9;
  [v14 setLayoutMargins_];
  [v14 setClipsToBounds_];

  return v14;
}

void sub_24F740044(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = sub_24F92BF68();

  if ((v7 & 1) != 0 && ((v8 = [v3 window]) == 0 || (v9 = v8, objc_msgSend(v8, sel_frame), Width = CGRectGetWidth(v16), v9, Width <= a2)) || v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_isCompactSheet] == 1)
  {
    v11 = 4;
  }

  else
  {
    v11 = 5;
  }

  v12 = 1.0;
  if (v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_wantsScaledIcons] == 1)
  {
    v13 = [v3 traitCollection];
    v14 = [v13 verticalSizeClass];

    if (v14 == 1)
    {
      v12 = *&v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_iconScaleFactor];
    }
  }

  v15 = v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_wantsExtendedHeightAdjustment];
  *a1 = v11;
  *(a1 + 8) = v15;
  *(a1 + 16) = v12;
}

uint64_t sub_24F740180()
{
  v1 = v0;
  v2 = sub_24F9221D8();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_wantsExtendedHeightAdjustment] == 1)
  {
    [v0 frame];
    width = v35.size.width;
    height = v35.size.height;
    v9 = (fabs(CGRectGetMinY(v35)) - v35.size.height) * 0.56;
    v10 = height * 1.56;
    v11 = 0.0;
  }

  else
  {
    [v0 bounds];
    v11 = v12;
    v9 = v13;
    width = v14;
    v10 = v15;
  }

  v36.origin.x = v11;
  v36.origin.y = v9;
  v36.size.width = width;
  v36.size.height = v10;
  result = CGRectIsEmpty(v36);
  if ((result & 1) == 0)
  {
    v17 = OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_iconViews;
    swift_beginAccess();
    v18 = *&v0[v17];
    if (!(v18 >> 62))
    {
      result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }

LABEL_7:
      v19 = objc_opt_self();
      v20 = [v19 areAnimationsEnabled];
      [v19 setAnimationsEnabled_];
      sub_24F740044(&v31, width);
      v21 = v31;
      v22 = v32;
      v23 = v33;
      v28 = v31;
      v29 = v32;
      v30 = v33;
      sub_24F25F078(&v28, &v31, width, v10, 0.0, 0.0);
      v24 = *(v31 + 16);

      v25 = *&v1[v17];
      if (v25 >> 62)
      {
        if (sub_24F92C738() == v24)
        {
          goto LABEL_10;
        }
      }

      else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) == v24)
      {
LABEL_10:

        v27 = sub_24E8E966C(v26);

        v31 = v21;
        v32 = v22;
        v33 = v23;
        v34 = v27;
        UpsellGridLayout.placeChildren(relativeTo:in:)(v11, v9, width, v10);
        (*(v3 + 8))(v6, v2);

        return [v19 setAnimationsEnabled_];
      }

      sub_24F7404E0(width, v10);
      goto LABEL_10;
    }

    result = sub_24F92C738();
    if (result)
    {
      goto LABEL_7;
    }
  }

  return result;
}

void sub_24F7404E0(double a1, CGFloat a2)
{
  if (!*&v2[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_artworkLoader])
  {
    return;
  }

  v8 = v2;

  sub_24F740044(&v81, a1);
  v11 = 7 * v81;
  if ((v81 * 7) >> 64 != (7 * v81) >> 63)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (a2 >= a1)
  {
    v12 = a1;
  }

  else
  {
    v12 = a2;
  }

  if (a1 > a2)
  {
    v13 = a1;
  }

  else
  {
    v13 = a2;
  }

  if (v82)
  {
    v7 = v12;
  }

  else
  {
    v7 = v13;
  }

  v6 = v83;
  if (v81 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v81;
  }

  v79 = MEMORY[0x277D84F90];
  v80 = MEMORY[0x277D84F90];
  v78 = MEMORY[0x277D84F90];
  v5 = OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_iconViews;
  swift_beginAccess();
  v14 = *&v2[v5];
  if (v14 >> 62)
  {
LABEL_19:
    if (sub_24F92C738())
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    sub_24F73FA5C();
    v16 = v15;
    goto LABEL_21;
  }

LABEL_20:
  v16 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  v17 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
  swift_beginAccess();
  v18 = v16[v17];
  v16[v17] = 1;
  LOBYTE(v77[0]) = v18;
  sub_24F359430(v77);
LABEL_21:
  swift_endAccess();
  v19 = v16;
  MEMORY[0x253050F00]();
  if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_109:
    sub_24F92B5E8();
  }

  sub_24F92B638();
  v20 = v78;
  v21 = *&v8[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_primaryIcon];
  if (!v21)
  {
    v27 = MEMORY[0x277D84F90];
    v25 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v22 = v7 / (v11 + (v3 - 1));
  v23 = v6 * (v22 * 7.0) + v6 * (v22 * 7.0);
  v24 = swift_retain_n();
  MEMORY[0x253050F00](v24);
  if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24F92B5E8();
  }

  v6 = v22 + v23;
  sub_24F92B638();
  v25 = v80;
  v26 = sub_24F741CFC(v21 + OBJC_IVAR____TtC12GameStoreKit21ImpressionableArtwork_impressionMetrics);
  if (!v26)
  {
    v27 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v27 = v26;
  v4 = [objc_allocWithZone(MEMORY[0x277CEE8B0]) initWithFrame:v26 impressionMetrics:{0.0, 0.0, a1, a2}];
  MEMORY[0x253050F00](v4);
  if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_126;
  }

  while (1)
  {
    sub_24F92B638();

    v27 = v79;
LABEL_30:
    v81 = 0;
    v82 = 0;
    v28 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&v81, 0, v6, v6);
    sub_24F73FB34(v28, 1);

LABEL_31:
    if (v8[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_wantsExtendedHeightAdjustment] == 1)
    {
      v29 = a1;
    }

    else
    {
      [v8 bounds];
      v29 = v30;
    }

    sub_24F740044(&v81, v29);
    v31 = sub_24F74192C(v81, v82, a1, a2, v83);
    v32 = *(v31 + 16);
    v70 = v19;
    v71 = v31;
    if (v32 >= 2)
    {
      break;
    }

LABEL_92:
    sub_24F74124C(v25);

    *&v8[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_amsImpressionItems] = v27;

    if (v20 >> 62)
    {
      v61 = sub_24F92C738();
      if (!v61)
      {
        goto LABEL_111;
      }
    }

    else
    {
      v61 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v61)
      {
        goto LABEL_111;
      }
    }

    if (v61 < 1)
    {
      __break(1u);
      goto LABEL_125;
    }

    v62 = 0;
    v25 = v20 & 0xC000000000000001;
    do
    {
      if (v25)
      {
        v64 = MEMORY[0x253052270](v62, v20);
      }

      else
      {
        v64 = *(v20 + 8 * v62 + 32);
      }

      v27 = v64;
      v65 = [v64 superview];
      if (v65)
      {
        v63 = v65;

        v27 = v63;
      }

      else
      {
        [v8 addSubview_];
      }

      ++v62;
    }

    while (v61 != v62);
LABEL_111:
    v66 = *&v8[v5];
    if (v66 >> 62)
    {
      v19 = sub_24F92C738();
      v4 = v71;
      if (!v19)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v19 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v4 = v71;
      if (!v19)
      {
        goto LABEL_120;
      }
    }

    if (v19 >= 1)
    {

      for (i = 0; i != v19; ++i)
      {
        if ((v66 & 0xC000000000000001) != 0)
        {
          v68 = MEMORY[0x253052270](i, v66);
        }

        else
        {
          v68 = *(v66 + 8 * i + 32);
        }

        v69 = v68;
        [v68 removeFromSuperview];
      }

LABEL_120:
      *&v8[v5] = v20;

      [v8 setNeedsLayout];

      return;
    }

LABEL_125:
    __break(1u);
LABEL_126:
    sub_24F92B5E8();
  }

  v33 = v31;
  v72 = v27;
  v75 = v25;
  v34 = OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_remainingIcons;

  swift_beginAccess();
  v11 = 0;
  v76 = v32 - 1;
  v19 = v33 + 56;
  v73 = v34;
  v74 = v5;
  while (1)
  {
    v6 = *(v19 - 8);
    v7 = *v19;
    swift_beginAccess();
    v4 = *&v8[v5];
    v3 = v4 >> 62;
    if (v4 >> 62)
    {
      break;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

LABEL_62:
    v36 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
    v40 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
    swift_beginAccess();
    v41 = v36[v40];
    v36[v40] = 1;
    if ((sub_24F0C97AC(1u, v41) & 1) == 0)
    {
      v42 = sub_24F3595CC();
      v43 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderWidth;
      if (v42)
      {
        swift_beginAccess();
        *&v36[v43] = 0x3FF0000000000000;
        sub_24E9F322C();
        if (qword_27F211130 != -1)
        {
          swift_once();
        }

        v44 = qword_27F23FFB8;
        v3 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
        swift_beginAccess();
        v45 = *&v36[v3];
        *&v36[v3] = v44;
        v46 = v44;

        sub_24E9F322C();
      }

      else
      {
        swift_beginAccess();
        *&v36[v43] = 0;
        sub_24E9F322C();
        v47 = [objc_opt_self() clearColor];
        v48 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
        swift_beginAccess();
        v49 = *&v36[v48];
        *&v36[v48] = v47;
        v3 = v47;

        sub_24E9F322C();
      }

      v36[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isStyleInvalid] = 1;
      [v36 setNeedsLayout];
      v34 = v73;
    }

LABEL_69:
    swift_endAccess();
    v4 = v36;
    MEMORY[0x253050F00]();
    if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v3 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24F92B5E8();
    }

    sub_24F92B638();
    v20 = v78;
    v50 = *&v8[v34];
    if (v50 >> 62)
    {
      if (!sub_24F92C738())
      {
LABEL_36:

        goto LABEL_37;
      }
    }

    else if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_36;
    }

    v51 = *&v8[v34];
    if (v51 >> 62)
    {
      v52 = sub_24F92C738();
      if (!v52)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v52)
      {
        goto LABEL_104;
      }
    }

    v53 = v11 % v52;
    swift_beginAccess();
    v54 = *&v8[v34];
    if ((v54 & 0xC000000000000001) != 0)
    {
      v55 = MEMORY[0x253052270](v53);
    }

    else
    {
      if (v53 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_106;
      }

      v55 = *(v54 + 8 * v53 + 32);
    }

    swift_endAccess();

    MEMORY[0x253050F00](v56);
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    sub_24F92B638();
    v75 = v80;
    v57 = sub_24F741CFC(v55 + OBJC_IVAR____TtC12GameStoreKit21ImpressionableArtwork_impressionMetrics);
    if (v57)
    {
      v58 = v57;
      v59 = [objc_allocWithZone(MEMORY[0x277CEE8B0]) initWithFrame:v57 impressionMetrics:{0.0, 0.0, v6, v7}];
      MEMORY[0x253050F00]();
      if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();

      v72 = v79;
      v34 = v73;
    }

    v77[0] = 0;
    v77[1] = 0;
    v60 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(v77, 0, v6, v7);
    sub_24F73FB34(v60, 1);

    v5 = v74;
LABEL_37:
    ++v11;
    v19 += 16;
    if (v76 == v11)
    {

      v25 = v75;
      v27 = v72;
      goto LABEL_92;
    }
  }

  if (!sub_24F92C738())
  {
    goto LABEL_62;
  }

  if (sub_24F92C738())
  {
    if (!sub_24F92C738())
    {
      goto LABEL_128;
    }

LABEL_40:
    if ((v4 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x253052270](0, v4);
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      v35 = *(v4 + 32);
    }

    v36 = v35;
    if (v3)
    {
      if (!sub_24F92C738())
      {
        goto LABEL_107;
      }

      if (sub_24F92C738() < 1)
      {
        goto LABEL_108;
      }

      v37 = sub_24F92C738();
    }

    else
    {
      v37 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v37)
      {
        goto LABEL_107;
      }
    }

    v38 = v37 - 1;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_105;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v8[v5] = v4;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v3)
      {
        if (v38 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_56:
          v4 = sub_24F92C8F8();
          *&v8[v5] = v4;
        }

        sub_24EDAB38C(0, 1, 0);
        *&v8[v5] = v4;
        goto LABEL_69;
      }
    }

    else if (!v3)
    {
      goto LABEL_56;
    }

    sub_24F92C738();
    goto LABEL_56;
  }

  __break(1u);
LABEL_128:
  __break(1u);
}

void sub_24F741168(uint64_t a1, uint64_t a2, uint64_t a3, double a4, CGFloat a5)
{
  *(v5 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_primaryIcon) = a1;

  v10 = OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_remainingIcons;
  swift_beginAccess();
  *(v5 + v10) = a2;

  *(v5 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_artworkLoader) = a3;

  if (*(v5 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_wantsExtendedHeightAdjustment))
  {
    a5 = a5 * 1.56;
  }

  sub_24F7404E0(a4, a5);
}

void sub_24F74124C(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_24F929608();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_impressionsCalculator))
  {
    if (a1 >> 62)
    {
      v10 = sub_24F92C738();
      if (!v10)
      {
        return;
      }
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        return;
      }
    }

    if (v10 < 1)
    {
      __break(1u);
    }

    else
    {
      v11 = (v7 + 48);
      v18 = (v7 + 32);
      v19 = a1 & 0xC000000000000001;
      v12 = (v7 + 8);

      v13 = a1;
      v14 = 0;
      v15 = a1;
      do
      {
        v16 = v10;
        if (v19)
        {
          v17 = MEMORY[0x253052270](v14, v13);
        }

        else
        {
          v17 = *(v13 + 8 * v14 + 32);
        }

        sub_24E643844(v17 + OBJC_IVAR____TtC12GameStoreKit21ImpressionableArtwork_impressionMetrics, v5);
        if ((*v11)(v5, 1, v6) == 1)
        {

          sub_24E601704(v5, &qword_27F213E68);
        }

        else
        {
          (*v18)(v9, v5, v6);
          sub_24F929AE8();

          (*v12)(v9, v6);
        }

        ++v14;
        v10 = v16;
        v13 = v15;
      }

      while (v16 != v14);
    }
  }
}

unint64_t sub_24F74163C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213078);
    v2 = sub_24F92CB58();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_24E643A9C(*(a1 + 56) + 32 * v12, v27);
        *&v26 = v14;
        *(&v26 + 1) = v15;
        v24 = v26;
        v25[0] = v27[0];
        v25[1] = v27[1];
        v16 = v26;
        sub_24E612B0C(v25, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F24E870);
        swift_dynamicCast();
        v17 = v23;
        result = sub_24E76D644(v16, *(&v16 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v16;
          v9 = result;

          *(v2[7] + 8 * v9) = v17;
          result = swift_unknownObjectRelease();
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v16;
          *(v2[7] + 8 * result) = v17;
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_24F74188C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_24F92C738();
LABEL_9:
  result = sub_24F92C8F8();
  *v1 = result;
  return result;
}

uint64_t sub_24F74192C(uint64_t a1, char a2, CGFloat a3, CGFloat a4, double a5)
{
  v14 = a1;
  v15 = a2;
  v16 = a5;
  sub_24F25F078(&v14, v17, a3, a4, 0.0, 0.0);
  v5 = v17[0];
  v6 = *(v17[0] + 16);
  if (v6)
  {
    v17[0] = MEMORY[0x277D84F90];
    sub_24F4587DC(0, v6, 0);
    v7 = v17[0];
    v8 = *(v17[0] + 16);
    v9 = 48;
    do
    {
      v10 = *(v5 + v9);
      v17[0] = v7;
      v11 = *(v7 + 24);
      if (v8 >= v11 >> 1)
      {
        v13 = v10;
        sub_24F4587DC((v11 > 1), v8 + 1, 1);
        v10 = v13;
        v7 = v17[0];
      }

      *(v7 + 16) = v8 + 1;
      *(v7 + 16 * v8 + 32) = v10;
      v9 += 32;
      ++v8;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v7;
}

void sub_24F741A3C(objc_class *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_24F927E38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 8);
  sub_24E69A5C4(0, &qword_27F222300);
  *v13 = sub_24F92BEF8();
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v14 = sub_24F927E68();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    v17 = swift_weakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v30 = sub_24F92AFE8();
      sub_24F92C7F8();
      swift_beginAccess();
      v19 = *(v18 + 48);
      if (!*(v19 + 16) || (v20 = sub_24E76D934(v31), (v21 & 1) == 0))
      {
        swift_endAccess();

        sub_24E6585F8(v31);

        return;
      }

      v22 = (*(v19 + 56) + 16 * v20);
      v24 = *v22;
      v23 = v22[1];
      swift_endAccess();

      sub_24E6585F8(v31);

      if (v24 == a5 && v23 == a6)
      {

        if (a2)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      v26 = sub_24F92CE08();

      if (v26)
      {
        if (a2)
        {
          goto LABEL_17;
        }

LABEL_15:
        v28 = [*&v16[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView] image];
        if (!v28)
        {
          v29.is_nil = 1;
          goto LABEL_18;
        }

LABEL_17:
        v29.is_nil = 0;
LABEL_18:
        v29.value.super.isa = a1;
        ArtworkView.setImage(image:animated:)(v29, v27);
      }
    }
  }
}

id sub_24F741CFC(uint64_t a1)
{
  v2 = sub_24F929598();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v34 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v34 - v13;
  v15 = sub_24F929608();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E643844(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_24E601704(v14, &qword_27F213E68);
    return 0;
  }

  else
  {
    v20 = *(v16 + 32);
    v35 = v15;
    v20(v18, v14, v15);
    sub_24F9295B8();
    v34[1] = sub_24F929578();
    v22 = v21;
    v23 = *(v3 + 8);
    v23(v11, v2);
    sub_24F9295B8();
    v34[2] = sub_24F929588();
    v23(v8, v2);
    sub_24F9295B8();
    v24 = sub_24F929558();
    v23(v5, v2);
    if (v22)
    {
      v25 = sub_24F92B098();
    }

    else
    {
      v25 = 0;
    }

    v26 = objc_allocWithZone(MEMORY[0x277CEE8C0]);
    v27 = sub_24F92B098();

    v28 = [v26 initWithParent:v25 element:v27 index:v24];

    v29 = sub_24F9295F8();
    sub_24F74163C(v29);

    sub_24E610F1C(MEMORY[0x277D84F90]);
    v30 = objc_allocWithZone(MEMORY[0x277CEE8B8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F24E870);
    v31 = sub_24F92AE28();

    v32 = sub_24F92AE28();

    v33 = [v30 initWithIdentifier:v28 fields:v31 custom:v32];

    (*(v16 + 8))(v18, v35);
    return v33;
  }
}

uint64_t sub_24F742128()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F742160()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F742198()
{

  return swift_deallocObject();
}

void sub_24F7421EC()
{
  *(v0 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_primaryIcon) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_remainingIcons) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_artworkLoader) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_impressionsCalculator) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_iconViews) = v1;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_iconScaleFactor) = 0x3FF4000000000000;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_amsImpressionItems) = v1;
  sub_24F92CA88();
  __break(1u);
}

uint64_t sub_24F7422AC()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v4, v0);
  qword_27F39F038 = sub_24F92AAE8();
  unk_27F39F040 = MEMORY[0x277D22508];
  __swift_allocate_boxed_opaque_existential_1(qword_27F39F020);
  return sub_24F92AAD8();
}

char *sub_24F7423F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  *&v7[OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_dynamicDelegate] = 0;
  *&v7[OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_gridPresenter] = 0;
  v15 = &v7[OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_gridView];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v7[OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_objectGraph] = a6;
  *&v7[OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_requestInfo] = a1;
  v16 = &v7[OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_referrer];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = &v7[OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_pageContext];
  *v17 = a4;
  *(v17 + 1) = a5;
  type metadata accessor for ArtworkLoader();

  sub_24F928F28();
  *&v7[OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_artworkLoader] = v55;

  v18 = sub_24F92B098();

  v19 = sub_24F92B098();

  type metadata accessor for ASKBagContract();
  sub_24F928F28();
  v20 = sub_24F92A328();

  v54.receiver = v7;
  v54.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v54, sel_initWithServiceType_placement_bag_, v18, v19, v20);
  swift_unknownObjectRelease();

  if (a1[7])
  {
    v22 = v21;

    v23 = sub_24F92B098();
  }

  else
  {
    v24 = v21;
    v23 = 0;
  }

  [v21 setSeed_];

  if (a1[9])
  {

    v25 = sub_24F92B098();
  }

  else
  {
    v25 = 0;
  }

  [v21 setOfferHints_];

  v26 = a1[10];
  v27 = v21;
  if (v26)
  {

    sub_24E954078(v28);

    v26 = sub_24F92AE28();
  }

  [v21 setClientOptions_];

  if (a1[16])
  {

    v29 = sub_24F92AE28();
  }

  else
  {
    v29 = 0;
  }

  [v21 setMetricsOverlay_];

  [v21 setAnonymousMetrics_];
  v30 = sub_24F92B098();
  [v21 setMediaClientIdentifier_];

  sub_24F2D96B0();
  v31 = v21;
  sub_24F928F28();
  v32 = v55;
  v33 = [v55 ams_activeiTunesAccount];

  [v31 setAccount_];
  type metadata accessor for ArcadeSubscriptionManager();
  sub_24F928F28();
  v34 = v55;
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v41 = type metadata accessor for DynamicViewControllerDelegate();
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_subscriptionManager] = v34;
  v43 = &v42[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_contentViewConstructor];
  *v43 = sub_24F7448E4;
  v43[1] = v40;
  v44 = &v42[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_purchaseSuccessHandler];
  *v44 = sub_24F74486C;
  v44[1] = v35;
  v45 = &v42[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_purchaseFailureHandler];
  *v45 = sub_24F74489C;
  v45[1] = v36;
  v46 = &v42[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_carrierLinkSuccessHandler];
  *v46 = sub_24F7448A4;
  v46[1] = v37;
  v47 = &v42[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_carrierLinkFailureHandler];
  *v47 = sub_24F7448D4;
  v47[1] = v38;
  v48 = &v42[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_didDismissHandler];
  *v48 = sub_24F7448DC;
  v48[1] = v39;
  v53.receiver = v42;
  v53.super_class = v41;
  v49 = objc_msgSendSuper2(&v53, sel_init);

  v50 = OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_dynamicDelegate;
  *&v31[OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_dynamicDelegate] = v49;
  swift_unknownObjectRelease();
  v51 = *&v31[v50];
  swift_unknownObjectRetain();
  [v31 setDelegate_];

  swift_unknownObjectRelease();

  return v31;
}

uint64_t sub_24F742A64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-1] - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-1] - v9;
  v11 = *(*(v0 + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_requestInfo) + 88);
  if (v11)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);

    sub_24F928EF8();
    sub_24E8E4574(v10, v7);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v7, 1, v12) == 1)
    {
      sub_24E601704(v10, &qword_27F220FF0);

      sub_24E601704(v7, &qword_27F220FF0);
    }

    else
    {
      v17[3] = type metadata accessor for Action();
      v17[4] = sub_24F00D9C8();
      v17[0] = v11;
      (*(v2 + 104))(v4, *MEMORY[0x277D21E18], v1);

      sub_24F929288();

      (*(v2 + 8))(v4, v1);
      sub_24E601704(v10, &qword_27F220FF0);
      __swift_destroy_boxed_opaque_existential_1(v17);
      (*(v13 + 8))(v7, v12);
    }
  }

  if (qword_27F210568 != -1)
  {
    swift_once();
  }

  v14 = sub_24F92AAE8();
  __swift_project_value_buffer(v14, qword_27F39C398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();
}

void sub_24F742E58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(*(Strong + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_requestInfo) + 96);
    if (v12)
    {
      v15[1] = OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_objectGraph;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);

      sub_24F928EF8();
      sub_24E8E4574(v9, v6);
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v6, 1, v13) == 1)
      {
        sub_24E601704(v9, &qword_27F220FF0);

        sub_24E601704(v6, &qword_27F220FF0);
      }

      else
      {
        v16[3] = type metadata accessor for Action();
        v16[4] = sub_24F00D9C8();
        v16[0] = v12;
        (*(v1 + 104))(v3, *MEMORY[0x277D21E18], v0);

        sub_24F929288();

        (*(v1 + 8))(v3, v0);
        sub_24E601704(v9, &qword_27F220FF0);
        __swift_destroy_boxed_opaque_existential_1(v16);
        (*(v14 + 8))(v6, v13);
      }
    }
  }
}

void sub_24F743170(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

uint64_t sub_24F7431CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-1] - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-1] - v9;
  v11 = *(*(v0 + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_requestInfo) + 104);
  if (v11)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);

    sub_24F928EF8();
    sub_24E8E4574(v10, v7);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v7, 1, v12) == 1)
    {
      sub_24E601704(v10, &qword_27F220FF0);

      sub_24E601704(v7, &qword_27F220FF0);
    }

    else
    {
      v17[3] = type metadata accessor for Action();
      v17[4] = sub_24F00D9C8();
      v17[0] = v11;
      (*(v2 + 104))(v4, *MEMORY[0x277D21E18], v1);

      sub_24F929288();

      (*(v2 + 8))(v4, v1);
      sub_24E601704(v10, &qword_27F220FF0);
      __swift_destroy_boxed_opaque_existential_1(v17);
      (*(v13 + 8))(v7, v12);
    }
  }

  if (qword_27F210568 != -1)
  {
    swift_once();
  }

  v14 = sub_24F92AAE8();
  __swift_project_value_buffer(v14, qword_27F39C398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();
}

void sub_24F7435C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(*(Strong + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_requestInfo) + 112);
    if (v12)
    {
      v15[1] = OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_objectGraph;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);

      sub_24F928EF8();
      sub_24E8E4574(v9, v6);
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v6, 1, v13) == 1)
      {
        sub_24E601704(v9, &qword_27F220FF0);

        sub_24E601704(v6, &qword_27F220FF0);
      }

      else
      {
        v16[3] = type metadata accessor for Action();
        v16[4] = sub_24F00D9C8();
        v16[0] = v12;
        (*(v1 + 104))(v3, *MEMORY[0x277D21E18], v0);

        sub_24F929288();

        (*(v1 + 8))(v3, v0);
        sub_24E601704(v9, &qword_27F220FF0);
        __swift_destroy_boxed_opaque_existential_1(v16);
        (*(v14 + 8))(v6, v13);
      }
    }
  }
}

void sub_24F7438D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(*(Strong + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_requestInfo) + 120);
    if (v12)
    {
      v15[1] = OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_objectGraph;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);

      sub_24F928EF8();
      sub_24E8E4574(v9, v6);
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v6, 1, v13) == 1)
      {
        sub_24E601704(v9, &qword_27F220FF0);

        sub_24E601704(v6, &qword_27F220FF0);
      }

      else
      {
        v16[3] = type metadata accessor for Action();
        v16[4] = sub_24F00D9C8();
        v16[0] = v12;
        (*(v1 + 104))(v3, *MEMORY[0x277D21E18], v0);

        sub_24F929288();

        (*(v1 + 8))(v3, v0);
        sub_24E601704(v9, &qword_27F220FF0);
        __swift_destroy_boxed_opaque_existential_1(v16);
        (*(v14 + 8))(v6, v13);
      }
    }
  }
}

void *sub_24F743BF0(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v11 = Strong;
  v12 = sub_24F747C90(a1, a2, a3, a4, a5);
  v13 = v12;

  return v12;
}

id sub_24F743D14()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_24F1F3AE0();
  v3 = [v0 metricsOverlay];
  if (v3)
  {
    v4 = v3;
    v5 = sub_24F92AE38();

    v17 = v5;
    *&v13 = 0x746E6F4365676170;
    *(&v13 + 1) = 0xEB00000000747865;
    v6 = MEMORY[0x277D837D0];
    sub_24F92C7F8();
    v7 = *&v1[OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_pageContext + 8];
    if (v7)
    {
      v8 = *&v1[OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_pageContext];
      v14 = v6;
      *&v13 = v8;
      *(&v13 + 1) = v7;
      sub_24E612B0C(&v13, v12);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_24E81DC98(v12, v15, isUniquelyReferenced_nonNull_native);
      sub_24E6585F8(v15);
      if (v5)
      {
LABEL_4:
        v10 = sub_24F92AE28();

LABEL_8:
        [v1 setMetricsOverlay_];

        goto LABEL_9;
      }
    }

    else
    {
      sub_24E98F760(v15, &v13);
      sub_24E601704(&v13, &qword_27F2129B0);
      sub_24E6585F8(v15);
      if (v17)
      {
        goto LABEL_4;
      }
    }

    v10 = 0;
    goto LABEL_8;
  }

  [v0 setMetricsOverlay_];
LABEL_9:
  v16.receiver = v1;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_viewDidLoad);
}

uint64_t sub_24F74419C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_referrer);

  return v1;
}

id sub_24F74424C()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_gridView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_24F7442A0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_gridView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

uint64_t sub_24F744360()
{
  v1 = [v0 metricsOverlay];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24F92AE38();

  return v3;
}

void sub_24F7443D0(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_24F92AE28();
  }

  else
  {
    v2 = 0;
  }

  [v1 setMetricsOverlay_];
}

void (*sub_24F744458(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24F7444C8(v2);
  return sub_24E622878;
}

void (*sub_24F7444C8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 metricsOverlay];
  if (v3)
  {
    v4 = v3;
    v5 = sub_24F92AE38();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_24F744564;
}

void sub_24F744564(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {

      v4 = sub_24F92AE28();
    }

    else
    {
      v4 = 0;
    }

    [a1[1] setMetricsOverlay_];
  }

  else if (v3)
  {
    v4 = sub_24F92AE28();

    [a1[1] setMetricsOverlay_];
  }

  else
  {
    v4 = 0;
    [a1[1] setMetricsOverlay_];
  }
}

uint64_t sub_24F74466C()
{
  if (qword_27F211810 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39F020, qword_27F39F038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v3[3] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928438();
  sub_24E601704(v3, &qword_27F2129B0);
  sub_24F92A5A8();
}

uint64_t sub_24F744834()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F744918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D8);
  MEMORY[0x28223BE20](v8);
  v10 = &v67 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8E0);
  v74 = *(v11 - 8);
  v75 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8E8);
  MEMORY[0x28223BE20](v76);
  v77 = &v67 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8F0);
  MEMORY[0x28223BE20](v15);
  v17 = &v67 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8F8);
  MEMORY[0x28223BE20](v18);
  v21 = &v67 - v20;
  if (a2 == 1 && a3 == 1)
  {
    swift_storeEnumTagMultiPayload();
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E918);
    v23 = sub_24F7456A8();
    v78._countAndFlagsBits = v22;
    v78._object = v23;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    sub_24F745A98(v21, v77);
    swift_storeEnumTagMultiPayload();
    sub_24F7455E0();
    sub_24F745894();
    sub_24F924E28();
    sub_24F745B08(v21);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E900);
    return (*(*(v24 - 8) + 56))(a4, 0, 1, v24);
  }

  else
  {
    v73 = a4;
    if (a2 < 1 || a3 < 1)
    {
      if (a1)
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E900);
        v38 = *(*(v37 - 8) + 56);
        v39 = v37;
        v40 = v73;

        return v38(v40, 1, 1, v39);
      }

      else
      {
        v41._object = 0x800000024FA7CFF0;
        v72 = v19;
        v41._countAndFlagsBits = 0xD00000000000001CLL;
        v42._countAndFlagsBits = 0;
        v42._object = 0xE000000000000000;
        v78 = localizedString(_:comment:)(v41, v42);
        sub_24E600AEC();
        v43 = sub_24F925E18();
        v71 = v8;
        v45 = v44;
        v47 = v46;
        sub_24F925A18();
        v48 = sub_24F925C98();
        v50 = v49;
        v52 = v51;
        v54 = v53;

        sub_24E600B40(v43, v45, v47 & 1);

        KeyPath = swift_getKeyPath();
        LODWORD(v45) = sub_24F9251C8();
        v56 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E908) + 36)];
        v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
        v58 = *MEMORY[0x277CE13B8];
        v59 = sub_24F927748();
        (*(*(v59 - 8) + 104))(&v56[v57], v58, v59);
        *v56 = v45;
        *v10 = v48;
        *(v10 + 1) = v50;
        v10[16] = v52 & 1;
        *(v10 + 3) = v54;
        *(v10 + 4) = KeyPath;
        *(v10 + 5) = 2;
        v10[48] = 0;
        LOBYTE(v54) = sub_24F925828();
        sub_24F923318();
        v60 = &v10[*(v71 + 36)];
        *v60 = v54;
        *(v60 + 1) = v61;
        *(v60 + 2) = v62;
        *(v60 + 3) = v63;
        *(v60 + 4) = v64;
        v60[40] = 0;
        sub_24F745570(v10, v77);
        swift_storeEnumTagMultiPayload();
        sub_24F7455E0();
        sub_24F745894();
        v65 = v73;
        sub_24F924E28();
        sub_24E601704(v10, &qword_27F24E8D8);
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E900);
        return (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
      }
    }

    else
    {
      v72 = v19;
      sub_24F7450E8(a2, a3, &v78._countAndFlagsBits);
      countAndFlagsBits = v78._countAndFlagsBits;
      object = v78._object;
      v68 = v78._countAndFlagsBits;
      v28 = v79;
      v29 = v80;
      v70 = v80;
      v30 = sub_24F9258F8();
      v31 = swift_getKeyPath();
      v71 = v8;
      v78._countAndFlagsBits = countAndFlagsBits;
      v78._object = object;
      v79 = v28;
      v80 = v29;
      v81 = v31;
      v82 = v30;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E918);
      v69 = sub_24F7456A8();
      sub_24F9268B8();
      sub_24E600B40(v68, object, v28);

      v34 = v74;
      v33 = v75;
      (*(v74 + 16))(v17, v13, v75);
      swift_storeEnumTagMultiPayload();
      v78._countAndFlagsBits = v32;
      v78._object = v69;
      swift_getOpaqueTypeConformance2();
      sub_24F924E28();
      sub_24F745A98(v21, v77);
      swift_storeEnumTagMultiPayload();
      sub_24F7455E0();
      sub_24F745894();
      v35 = v73;
      sub_24F924E28();
      sub_24F745B08(v21);
      (*(v34 + 8))(v13, v33);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E900);
      return (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
    }
  }
}

uint64_t sub_24F7450E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v52 = a3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v51);
  v6 = &v44[-v5];
  v7 = sub_24F925CB8();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24F924A78();
  MEMORY[0x28223BE20](v10 - 8);
  sub_24F924A68();
  sub_24F924A58();
  v53 = a1;
  sub_24F924A08();
  sub_24F924A58();
  sub_24F924A98();
  v11 = sub_24F925DE8();
  v13 = v12;
  v15 = v14;
  v53 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v16 = sub_24F925C58();
  v47 = v17;
  v48 = v16;
  v45 = v18;
  v46 = v19;
  sub_24E600B40(v11, v13, v15 & 1);

  v53 = _s12GameStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(0xD000000000000025, 0x800000024FA7D010, a2);
  v54 = v20;
  sub_24E600AEC();
  v21 = sub_24F925E18();
  v23 = v22;
  LOBYTE(a2) = v24;
  sub_24F925CA8();
  v25 = sub_24F925DA8();
  v27 = v26;
  LOBYTE(v13) = v28;
  sub_24E600B40(v21, v23, a2 & 1);

  (*(v49 + 8))(v9, v50);
  LODWORD(v21) = sub_24F9251C8();
  v29 = *(v51 + 36);
  v30 = *MEMORY[0x277CE13B8];
  v31 = sub_24F927748();
  (*(*(v31 - 8) + 104))(v6 + v29, v30, v31);
  *v6 = v21;
  sub_24E602068(&qword_27F214428, &qword_27F213F10);
  v32 = sub_24F925C58();
  v34 = v33;
  LOBYTE(v29) = v35;
  sub_24E600B40(v25, v27, v13 & 1);

  sub_24E601704(v6, &qword_27F213F10);
  LOBYTE(v27) = v45;
  v36 = v47;
  v37 = v48;
  v50 = sub_24F925C78();
  v51 = v38;
  v40 = v39;
  LOBYTE(v6) = v41;
  sub_24E600B40(v32, v34, v29 & 1);

  sub_24E600B40(v37, v36, v27 & 1);

  v43 = v52;
  *v52 = v50;
  v43[1] = v40;
  *(v43 + 16) = v6 & 1;
  v43[3] = v51;
  return result;
}

uint64_t sub_24F745570(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F7455E0()
{
  result = qword_27F24E910;
  if (!qword_27F24E910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E8F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E918);
    sub_24F7456A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E910);
  }

  return result;
}

unint64_t sub_24F7456A8()
{
  result = qword_27F24E920;
  if (!qword_27F24E920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E918);
    sub_24F745760();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E920);
  }

  return result;
}

unint64_t sub_24F745760()
{
  result = qword_27F24E928;
  if (!qword_27F24E928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E930);
    sub_24F745818();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E928);
  }

  return result;
}

unint64_t sub_24F745818()
{
  result = qword_27F24E938;
  if (!qword_27F24E938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E938);
  }

  return result;
}

unint64_t sub_24F745894()
{
  result = qword_27F24E948;
  if (!qword_27F24E948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E8D8);
    sub_24F745920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E948);
  }

  return result;
}

unint64_t sub_24F745920()
{
  result = qword_27F24E950;
  if (!qword_27F24E950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E958);
    sub_24F7459D8();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E950);
  }

  return result;
}

unint64_t sub_24F7459D8()
{
  result = qword_27F24E960;
  if (!qword_27F24E960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E908);
    sub_24E67283C();
    sub_24E602068(&qword_27F213F88, &qword_27F213F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E960);
  }

  return result;
}

uint64_t sub_24F745A98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F745B08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F745B74()
{
  result = qword_27F24E968;
  if (!qword_27F24E968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E970);
    sub_24F745BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E968);
  }

  return result;
}

unint64_t sub_24F745BF8()
{
  result = qword_27F24E978;
  if (!qword_27F24E978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E900);
    sub_24F7455E0();
    sub_24F745894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E978);
  }

  return result;
}

uint64_t sub_24F745C84()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v4, v0);
  qword_27F39F060 = sub_24F92AAE8();
  unk_27F39F068 = MEMORY[0x277D22508];
  __swift_allocate_boxed_opaque_existential_1(qword_27F39F048);
  return sub_24F92AAD8();
}

id sub_24F745E4C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_24F1F3EA8();
  v3 = [v0 metricsOverlay];
  if (v3)
  {
    v4 = v3;
    v5 = sub_24F92AE38();

    v17 = v5;
    *&v13 = 0x746E6F4365676170;
    *(&v13 + 1) = 0xEB00000000747865;
    v6 = MEMORY[0x277D837D0];
    sub_24F92C7F8();
    v7 = *&v1[OBJC_IVAR____TtC12GameStoreKit21DynamicViewController_pageContext + 8];
    if (v7)
    {
      v8 = *&v1[OBJC_IVAR____TtC12GameStoreKit21DynamicViewController_pageContext];
      v14 = v6;
      *&v13 = v8;
      *(&v13 + 1) = v7;
      sub_24E612B0C(&v13, v12);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_24E81DC98(v12, v15, isUniquelyReferenced_nonNull_native);
      sub_24E6585F8(v15);
      if (v5)
      {
LABEL_4:
        v10 = sub_24F92AE28();

LABEL_8:
        [v1 setMetricsOverlay_];

        goto LABEL_9;
      }
    }

    else
    {
      sub_24E98F760(v15, &v13);
      sub_24E857CC8(&v13);
      sub_24E6585F8(v15);
      if (v17)
      {
        goto LABEL_4;
      }
    }

    v10 = 0;
    goto LABEL_8;
  }

  [v0 setMetricsOverlay_];
LABEL_9:
  v16.receiver = v1;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_viewDidLoad);
}

void sub_24F7460E8()
{
  v0 = sub_24F91F4A8();
  MEMORY[0x28223BE20](v0 - 8);
  sub_24F91F428();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_24F74628C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21DynamicViewController_referrer);

  return v1;
}

id sub_24F74633C()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit21DynamicViewController_gridView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_24F746390(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC12GameStoreKit21DynamicViewController_gridView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

void (*sub_24F746450(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24F7444C8(v2);
  return sub_24E622878;
}

uint64_t sub_24F7464C4()
{
  if (qword_27F211818 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39F048, qword_27F39F060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v3[3] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928438();
  sub_24E857CC8(v3);
  sub_24F92A5A8();
}

uint64_t static GameObjectGraphBuilder.playerDependentMetricsPipelineDependencies(player:bootstrapResult:metricsPipelineTransformer:)(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_24F74689C(*a2, a2[1], a2[2], a1);
  sub_24F747B30(a1, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Player);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_24E61C0A8(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_24F747994;
  *(v11 + 24) = v10;
  v12 = OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  v13 = *(a3 + v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + v12) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_24E619A88(0, v13[2] + 1, 1, v13);
    *(a3 + v12) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_24E619A88((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v17 = &v13[2 * v16];
  v17[4] = sub_24F747A4C;
  v17[5] = v11;
  *(a3 + v12) = v13;
  swift_endAccess();

  sub_24F928FD8();
  return sub_24F928F68();
}

uint64_t sub_24F74689C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_24F928F28();
  v5 = *(v10[1] + OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_player);
  v6 = a4[1];
  v7 = &v5[OBJC_IVAR____TtC12GameStoreKit20JSPlayerBridgeObject_playerID];
  *v7 = *a4;
  *(v7 + 1) = v6;
  v8 = v5;

  v8[OBJC_IVAR____TtC12GameStoreKit20JSPlayerBridgeObject_isUnderThirteen] = *(a4 + *(type metadata accessor for Player(0) + 88)) & 1;

  return sub_24ED44774(v10);
}

uint64_t sub_24F74695C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v71 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = &v52 - v6;
  v58 = type metadata accessor for FriendCountFieldsProvider(0);
  MEMORY[0x28223BE20](v58);
  v59 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = &v52 - v11;
  v55 = type metadata accessor for GameCountFieldsProvider(0);
  MEMORY[0x28223BE20](v55);
  v56 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8);
  v70 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  v16 = sub_24F92A498();
  v67 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F92A2F8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a3;
  v24 = *a3;
  v23 = a3[1];
  v73 = &type metadata for PlayerPrivateIdentifierProvider;
  v74 = sub_24F747A54();
  v72[0] = v24;
  v72[1] = v23;

  sub_24F92A2E8();
  v73 = v19;
  v74 = MEMORY[0x277D22350];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
  v64 = v22;
  v65 = v20;
  v26 = *(v20 + 16);
  v66 = v19;
  v26(boxed_opaque_existential_1, v22, v19);
  if (qword_27F210368 != -1)
  {
    swift_once();
  }

  v60 = sub_24F92A278();
  __swift_project_value_buffer(v60, qword_27F229E90);
  sub_24F929F08();
  __swift_destroy_boxed_opaque_existential_1(v72);
  v68 = v16;
  v69 = a2;
  sub_24F928F28();
  v27 = v18;
  if (qword_27F211870 != -1)
  {
    swift_once();
  }

  sub_24F92A428();
  sub_24F92A3F8();
  v28 = v70 + 8;
  v29 = *(v70 + 8);
  v29(v15, v13);
  if (v72[0])
  {
    v30 = sub_24E9E270C(v72[0]);

    if (v30)
    {
      v53 = v29;
      v70 = v28;
      v54 = v18;
      v31 = v62;
      sub_24F747B30(v61, v62, type metadata accessor for Player);
      v32 = v56;
      sub_24F747B30(v31, v56, type metadata accessor for Player);
      v33 = v55;
      v34 = v69;
      *(v32 + *(v55 + 20)) = v69;
      v35 = v63;
      sub_24F747B30(v31, v63, type metadata accessor for Player);
      type metadata accessor for GameCountFieldsProvider.GameLibraryObserver(0);
      v36 = swift_allocObject();

      swift_defaultActor_initialize();
      sub_24F747B98(v31, type metadata accessor for Player);
      *(v36 + OBJC_IVAR____TtCV12GameStoreKit23GameCountFieldsProviderP33_33BAE3CE4A1F483C0FF792C77C53877119GameLibraryObserver_gameRefs) = 0;
      sub_24E61C0A8(v35, v36 + OBJC_IVAR____TtCV12GameStoreKit23GameCountFieldsProviderP33_33BAE3CE4A1F483C0FF792C77C53877119GameLibraryObserver_player);
      *(v36 + OBJC_IVAR____TtCV12GameStoreKit23GameCountFieldsProviderP33_33BAE3CE4A1F483C0FF792C77C53877119GameLibraryObserver_objectGraph) = v34;
      *(v32 + *(v33 + 24)) = v36;
      *(v32 + *(v33 + 28)) = v30;
      v73 = v33;
      v74 = sub_24F747AE8(&qword_27F24E9D0, type metadata accessor for GameCountFieldsProvider);
      v37 = __swift_allocate_boxed_opaque_existential_1(v72);
      sub_24F747B30(v32, v37, type metadata accessor for GameCountFieldsProvider);
      v38 = qword_27F210360;

      if (v38 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v60, qword_27F229E78);
      sub_24F929F08();
      sub_24F747B98(v32, type metadata accessor for GameCountFieldsProvider);
      __swift_destroy_boxed_opaque_existential_1(v72);
      v27 = v54;
      v29 = v53;
    }
  }

  if (qword_27F211868 != -1)
  {
    swift_once();
  }

  sub_24F92A428();
  sub_24F92A3F8();
  v29(v15, v13);
  v39 = v69;
  if (!v72[0])
  {
    v41 = v68;
    goto LABEL_18;
  }

  v40 = sub_24E9E270C(v72[0]);

  v41 = v68;
  if (!v40)
  {
LABEL_18:
    (*(v67 + 8))(v27, v41);
    return (*(v65 + 8))(v64, v66);
  }

  v42 = v62;
  sub_24F747B30(v61, v62, type metadata accessor for Player);
  v43 = v59;
  sub_24F747B30(v42, v59, type metadata accessor for Player);
  v70 = v40;
  v44 = v58;
  *(v43 + *(v58 + 20)) = v39;
  v45 = v63;
  sub_24F747B30(v42, v63, type metadata accessor for Player);
  type metadata accessor for FriendCountFieldsProvider.FriendListObserver(0);
  v46 = swift_allocObject();
  swift_retain_n();
  swift_defaultActor_initialize();
  *(v46 + OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_friends) = 0;
  sub_24F747B30(v45, v46 + OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_player, type metadata accessor for Player);
  *(v46 + OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_objectGraph) = v39;
  v47 = sub_24F92B858();
  v48 = v57;
  (*(*(v47 - 8) + 56))(v57, 1, 1, v47);
  v49 = swift_allocObject();
  v49[2] = 0;
  v49[3] = 0;
  v49[4] = v46;

  sub_24F1D3DA4(0, 0, v48, &unk_24FA061F0, v49);

  sub_24F747B98(v45, type metadata accessor for Player);
  sub_24F747B98(v42, type metadata accessor for Player);
  *(v43 + *(v44 + 24)) = v46;
  *(v43 + *(v44 + 28)) = v70;
  v73 = v44;
  v74 = sub_24F747AE8(&qword_27F24E9C8, type metadata accessor for FriendCountFieldsProvider);
  v50 = __swift_allocate_boxed_opaque_existential_1(v72);
  sub_24F747B30(v43, v50, type metadata accessor for FriendCountFieldsProvider);
  if (qword_27F210358 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v60, qword_27F229E60);
  sub_24F929F08();
  sub_24F747B98(v43, type metadata accessor for FriendCountFieldsProvider);
  (*(v67 + 8))(v27, v68);
  (*(v65 + 8))(v64, v66);
  return __swift_destroy_boxed_opaque_existential_1(v72);
}

uint64_t sub_24F74732C()
{
  v1 = type metadata accessor for Player(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = v1[6];
  v5 = sub_24F9289E8();
  v28 = *(*(v5 - 8) + 8);
  v29 = *(v5 - 8);
  v28(v3 + v4, v5);

  if (*(v3 + v1[9] + 8) != 1)
  {
  }

  v6 = v3 + v1[13];
  v7 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = type metadata accessor for CallProviderConversationHandle();
    v9 = *(*(v8 - 8) + 48);
    if (!v9(v6, 1, v8))
    {

      v10 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v29 + 48))(v6 + v10, 1, v5))
      {
        v28(v6 + v10, v5);
      }
    }

    v11 = v6 + *(v7 + 20);
    if (!v9(v11, 1, v8))
    {

      v12 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v29 + 48))(v11 + v12, 1, v5))
      {
        v28(v11 + v12, v5);
      }
    }
  }

  if (*(v3 + v1[15] + 8))
  {
  }

  v13 = v3 + v1[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v13, 1, PlayedTogetherInfo))
  {

    v15 = type metadata accessor for Game();
    v28(v13 + v15[18], v5);
    v16 = v15[19];
    if (!(*(v29 + 48))(v13 + v16, 1, v5))
    {
      v28(v13 + v16, v5);
    }

    v17 = v15[21];
    v18 = sub_24F920818();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v13 + v17, 1, v18))
    {
      (*(v19 + 8))(v13 + v17, v18);
    }
  }

  v20 = v3 + v1[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v20, 1, ChallengeInfo))
  {

    v22 = type metadata accessor for Game();
    v28(v20 + v22[18], v5);
    v23 = v22[19];
    if (!(*(v29 + 48))(v20 + v23, 1, v5))
    {
      v28(v20 + v23, v5);
    }

    v24 = v22[21];
    v25 = sub_24F920818();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v20 + v24, 1, v25))
    {
      (*(v26 + 8))(v20 + v24, v25);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F747994(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Player(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_24F74695C(a1, a2, v6);
}

uint64_t sub_24F747A14()
{

  return swift_deallocObject();
}

unint64_t sub_24F747A54()
{
  result = qword_27F24E9C0;
  if (!qword_27F24E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E9C0);
  }

  return result;
}

uint64_t sub_24F747AA8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F747AE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F747B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F747B98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_24F747C08(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5 = sub_24F747CBC(a1, &OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_objectGraph, &OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_gridView, &off_286233DD8, a2, a3, a4, a5);
  v6 = v5;
  return v5;
}

void *sub_24F747C4C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5 = sub_24F747CBC(a1, &OBJC_IVAR____TtC12GameStoreKit21DynamicViewController_objectGraph, &OBJC_IVAR____TtC12GameStoreKit21DynamicViewController_gridView, &off_286233F80, a2, a3, a4, a5);
  v6 = v5;
  return v5;
}

void *sub_24F747CBC(uint64_t a1, void *a2, void *a3, uint64_t a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v11 = v8;
  v17 = *(v8 + *a2);
  type metadata accessor for UpsellGridPresenter();
  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_contentDictionary) = a1;

  v19 = sub_24EC8415C(v17, 0, 0, 0);

  v20 = objc_allocWithZone(type metadata accessor for UpsellGridView());
  v21 = sub_24F73FEC4(0, 1, 1);
  [v21 setFrame_];
  v22 = (v11 + *a3);
  swift_beginAccess();
  v23 = *v22;
  *v22 = v21;
  v22[1] = &off_286233D20;
  v29 = v21;

  v24 = v19 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view;
  swift_beginAccess();
  *(v24 + 8) = a4;
  swift_unknownObjectWeakAssign();
  _s12GameStoreKit19UpsellGridPresenterC6update13ignoringCacheySb_tF_0();
  if (qword_27F210568 != -1)
  {
    swift_once();
  }

  v25 = sub_24F92AAE8();
  __swift_project_value_buffer(v25, qword_27F39C398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  type metadata accessor for CGRect(0);
  v30[3] = v26;
  v27 = swift_allocObject();
  v30[0] = v27;
  v27[2] = a5;
  v27[3] = a6;
  v27[4] = a7;
  v27[5] = a8;
  sub_24F928438();
  sub_24E857CC8(v30);
  sub_24F92A588();

  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v31.size.height = a8;
  if (CGRectIsEmpty(v31))
  {
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  return *v22;
}

uint64_t sub_24F74805C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_24F9289E8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

uint64_t sub_24F7481F4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_24F9289E8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ChallengesHistoryChallengeLockup()
{
  result = qword_27F24E9D8;
  if (!qword_27F24E9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7483C4()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24F9289E8();
    if (v1 <= 0x3F)
    {
      sub_24F748568(319, &qword_27F214D28, type metadata accessor for PlayerAvatar, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_24E659BE8();
        if (v3 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
          if (v4 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
            if (v5 <= 0x3F)
            {
              sub_24F748568(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
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

void sub_24F748568(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24F7485CC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6575676573;
    v6 = 0x4D747865746E6F63;
    if (a1 != 8)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 1802396018;
    if (a1 != 5)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x7641726579616C70;
    v3 = 0x656D614E656D6167;
    if (a1 != 3)
    {
      v3 = 0x6D617473656D6974;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6E6F6349656D6167;
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

uint64_t sub_24F74871C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EA70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F74B4C4();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for ChallengesHistoryChallengeLockup();
    LOBYTE(v12) = 1;
    sub_24F9289E8();
    sub_24F74B674(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 24));
    v11[7] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218590);
    sub_24F74B5D8(&qword_27F218A30, &qword_27F218A38);
    sub_24F92CD48();
    LOBYTE(v12) = 3;
    sub_24F92CD08();
    LOBYTE(v12) = 4;
    sub_24F92CD08();
    LOBYTE(v12) = 5;
    sub_24F92CCE8();
    LOBYTE(v12) = 6;
    sub_24F92CD18();
    LOBYTE(v12) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    LOBYTE(v12) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    LOBYTE(v12) = 9;
    sub_24F929608();
    sub_24F74B674(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F748BC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v39 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v43);
  v6 = &v39 - v5;
  v7 = sub_24F9289E8();
  v44 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EA60);
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = type metadata accessor for ChallengesHistoryChallengeLockup();
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v15[*(v16 + 44)];
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v52 = v17;
  sub_24E61DA68(&v53, v17, qword_27F21B590);
  v18 = *(v13 + 48);
  v19 = sub_24F92A6D8();
  v20 = *(*(v19 - 8) + 56);
  v50 = v18;
  v51 = v15;
  v20(&v15[v18], 1, 1, v19);
  v21 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24F74B4C4();
  v47 = v12;
  v22 = v48;
  sub_24F92D108();
  if (v22)
  {
    v23 = v51;
    __swift_destroy_boxed_opaque_existential_1(v49);
    sub_24E601704(v52, qword_27F24EC90);
    return sub_24E601704(v23 + v50, &qword_27F215440);
  }

  else
  {
    v40 = v6;
    v48 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v56 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v24 = v54;
    v25 = v51;
    *v51 = v53;
    v25[1] = v24;
    *(v25 + 4) = v55;
    LOBYTE(v53) = 1;
    sub_24F74B674(&qword_27F214018, MEMORY[0x277D21C48]);
    sub_24F92CC68();
    (*(v44 + 32))(v25 + v48[5], v9, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218590);
    v56 = 2;
    sub_24F74B5D8(&qword_27F218598, &qword_27F2185A0);
    sub_24F92CC68();
    v26 = v48;
    *(v25 + v48[6]) = v53;
    LOBYTE(v53) = 3;
    v27 = sub_24F92CC28();
    v28 = (v25 + v26[7]);
    *v28 = v27;
    v28[1] = v29;
    LOBYTE(v53) = 4;
    v30 = sub_24F92CC28();
    v31 = (v25 + v26[8]);
    *v31 = v30;
    v31[1] = v32;
    LOBYTE(v53) = 5;
    v33 = sub_24F92CC08();
    v34 = v25 + v26[9];
    *v34 = v33;
    v34[8] = v35 & 1;
    LOBYTE(v53) = 6;
    *(v25 + v26[10]) = sub_24F92CC38() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v56 = 7;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v53, v52, qword_27F24EC90);
    LOBYTE(v53) = 8;
    sub_24E65CAA0();
    v36 = v40;
    sub_24F92CC68();
    sub_24E61DA68(v36, v25 + v50, &qword_27F215440);
    sub_24F929608();
    LOBYTE(v53) = 9;
    sub_24F74B674(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    (*(v45 + 8))(v47, v46);
    v37 = v51;
    sub_24E6009C8(v42, v51 + v48[13], &qword_27F213E68);
    sub_24F74B518(v37, v41);
    __swift_destroy_boxed_opaque_existential_1(v49);
    return sub_24F74B57C(v37);
  }
}

uint64_t sub_24F7494FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F74B83C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F749524(uint64_t a1)
{
  v2 = sub_24F74B4C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F749560(uint64_t a1)
{
  v2 = sub_24F74B4C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F74959C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 48), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24F7496DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v38 = a3;
  v39 = sub_24F9248C8();
  v7 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E9F8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EA00);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EA08);
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  *v13 = sub_24F9249A8();
  *(v13 + 1) = 0x4030000000000000;
  v13[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EA10);
  sub_24F749AA0(a1, a2, &v13[*(v21 + 44)]);
  LOBYTE(a2) = sub_24F925858();
  sub_24F923318();
  v22 = &v13[*(v11 + 44)];
  *v22 = a2;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v13, v17, &qword_27F24E9F8);
  v27 = &v17[*(v15 + 44)];
  v28 = v45;
  *(v27 + 4) = v44;
  *(v27 + 5) = v28;
  *(v27 + 6) = v46;
  v29 = v41;
  *v27 = v40;
  *(v27 + 1) = v29;
  v30 = v43;
  *(v27 + 2) = v42;
  *(v27 + 3) = v30;
  v31 = &v20[*(v18 + 36)];
  sub_24F927468();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FC48);
  v33 = &v31[*(v32 + 52)];
  v34 = *(sub_24F924258() + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_24F924B38();
  (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
  *v33 = a4;
  v33[1] = a4;
  *&v31[*(v32 + 56)] = 256;
  sub_24E6009C8(v17, v20, &qword_27F24EA00);
  sub_24F9248B8();
  sub_24F74B108();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v7 + 8))(v9, v39);
  return sub_24E601704(v20, &qword_27F24EA08);
}

uint64_t sub_24F749AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v147 = a2;
  v149 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233180);
  MEMORY[0x28223BE20](v4 - 8);
  v137 = &v133 - v5;
  v6 = sub_24F924A78();
  MEMORY[0x28223BE20](v6 - 8);
  v135 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EA40);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v136 = &v133 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EA48);
  MEMORY[0x28223BE20](v9 - 8);
  v148 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v152 = &v133 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v13 - 8);
  v143 = &v133 - v14;
  v145 = sub_24F91F008();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v133 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v134 = &v133 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v138 = *(v18 - 8);
  v19 = *(v138 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v139 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v133 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A50);
  MEMORY[0x28223BE20](v23);
  v25 = &v133 - v24;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D60);
  MEMORY[0x28223BE20](v141);
  v153 = &v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v140 = &v133 - v28;
  MEMORY[0x28223BE20](v29);
  v154 = &v133 - v30;
  v31 = type metadata accessor for ChallengesHistoryChallengeLockup();
  v33 = *(v31 + 20);
  v32 = *(v31 + 24);
  v142 = v31;
  v34 = *(a1 + v32);
  v35 = sub_24F9289E8();
  v36 = *(v35 - 8);
  v37 = *(v36 + 16);
  v146 = a1;
  v37(v22, a1 + v33, v35);
  (*(v36 + 56))(v22, 0, 1, v35);
  v38 = qword_27F2118C8;

  if (v38 != -1)
  {
    swift_once();
  }

  v169 = xmmword_27F2520F0;
  v170 = unk_27F252100;
  v171 = xmmword_27F252110;
  v172 = *&byte_27F252120;
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  LOBYTE(v155) = 0;
  sub_24E63D388(&v169, &v159);
  sub_24F926F28();
  v39 = v160;
  v25[16] = v159;
  *(v25 + 3) = v39;
  v40 = sub_24E6B7C48(*(&v172 + 1), v34);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  if ((v45 & 1) == 0)
  {
    goto LABEL_4;
  }

  sub_24F92CEF8();
  swift_unknownObjectRetain_n();
  v50 = swift_dynamicCastClass();
  if (!v50)
  {
    swift_unknownObjectRelease();
    v50 = MEMORY[0x277D84F90];
  }

  v51 = *(v50 + 16);

  if (__OFSUB__(v46 >> 1, v44))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v51 != (v46 >> 1) - v44)
  {
LABEL_19:
    swift_unknownObjectRelease();
LABEL_4:
    sub_24E6B8064(v40, v42, v44, v46);
    v48 = v47;
    v49 = v138;
    goto LABEL_11;
  }

  v48 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v49 = v138;
  if (v48)
  {
    goto LABEL_12;
  }

  v48 = MEMORY[0x277D84F90];
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  *(v25 + 4) = v48;
  sub_24E60169C(v22, &v25[v23[11]], &qword_27F213FB0);
  v52 = &v25[v23[13]];
  v53 = v170;
  *v52 = v169;
  v52[1] = v53;
  v54 = v172;
  v52[2] = v171;
  v52[3] = v54;
  *&v25[v23[12]] = 0xBFC657184AE74487;
  *&v25[v23[14]] = 0x3FF0000000000000;
  v55 = v139;
  sub_24E6009C8(v22, v139, &qword_27F213FB0);
  v56 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v57 = (v19 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  sub_24E6009C8(v55, v59 + v56, &qword_27F213FB0);
  *(v59 + v57) = 0xBFC657184AE74487;
  v60 = (v59 + v58);
  v61 = v172;
  v60[2] = v171;
  v60[3] = v61;
  v62 = v170;
  *v60 = v169;
  v60[1] = v62;
  *(v59 + ((v58 + 71) & 0xFFFFFFFFFFFFFFF8)) = 0x3FF0000000000000;
  v63 = &v25[v23[15]];
  *v63 = sub_24E63DE54;
  v63[1] = v59;
  sub_24E63D388(&v169, &v159);
  v64 = sub_24F925838();
  sub_24F923318();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v140;
  sub_24E6009C8(v25, v140, &qword_27F214A50);
  v74 = v73 + *(v141 + 36);
  *v74 = v64;
  *(v74 + 8) = v66;
  *(v74 + 16) = v68;
  *(v74 + 24) = v70;
  *(v74 + 32) = v72;
  *(v74 + 40) = 0;
  sub_24E6009C8(v73, v154, &qword_27F214D60);
  v75 = v142;
  v76 = v146;
  v77 = v146 + v142[9];
  v78 = *v77;
  v79 = *(v77 + 8);
  v80 = v143;
  sub_24F74A990(v79, *(v146 + v142[7] + 8), *(v146 + v142[8]), *(v146 + v142[8] + 8), v143);
  v81 = v144;
  v82 = v145;
  if ((*(v144 + 48))(v80, 1, v145) == 1)
  {
    sub_24E601704(v80, &qword_27F215340);
    v143 = 0;
    v141 = 0;
    v140 = 0;
    v144 = 0;
    v145 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
  }

  else
  {
    v87 = v134;
    (*(v81 + 32))(v134, v80, v82);
    (*(v81 + 16))(v133, v87, v82);
    v143 = sub_24F925DF8();
    v141 = v88;
    v90 = v89;
    v140 = v91;
    v92 = sub_24F925838();
    sub_24F923318();
    v83 = v93;
    v84 = v94;
    v85 = v95;
    v86 = v96;
    (*(v81 + 8))(v87, v82);
    LOBYTE(v159) = v90 & 1;
    LOBYTE(v155) = 0;
    v145 = v90 & 1;
    v144 = v92;
  }

  v97 = 1;
  if (!(v79 & 1 | ((*(v76 + v75[10]) & 1) == 0)))
  {
    sub_24F924A68();
    sub_24F924A58();
    v159 = v78;
    sub_24F924A08();
    sub_24F924A58();
    sub_24F924A98();
    v98 = sub_24F925DE8();
    v100 = v99;
    v102 = v101;
    v103 = sub_24F925C98();
    v105 = v104;
    v107 = v106;
    sub_24E600B40(v98, v100, v102 & 1);

    sub_24E72FF4C();
    v108 = sub_24F925C58();
    v110 = v109;
    LOBYTE(v98) = v111;
    v113 = v112;
    sub_24E600B40(v103, v105, v107 & 1);

    v159 = v108;
    v160 = v110;
    LOBYTE(v161) = v98 & 1;
    v162 = v113;
    v114 = v137;
    sub_24F91EF98();
    v115 = sub_24F91EFA8();
    (*(*(v115 - 8) + 56))(v114, 0, 1, v115);
    v116 = v136;
    sub_24F9260F8();
    sub_24E601704(v114, &qword_27F233180);
    sub_24E600B40(v108, v110, v98 & 1);

    (*(v150 + 32))(v152, v116, v151);
    v97 = 0;
  }

  v117 = v152;
  (*(v150 + 56))(v152, v97, 1, v151);
  v118 = v153;
  sub_24E60169C(v154, v153, &qword_27F214D60);
  v119 = v148;
  sub_24F74B454(v117, v148);
  v120 = v118;
  v121 = v149;
  sub_24E60169C(v120, v149, &qword_27F214D60);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EA50);
  v123 = (v121 + v122[12]);
  v124 = v143;
  *&v155 = v143;
  v125 = v141;
  *(&v155 + 1) = v141;
  v126 = v145;
  *&v156 = v145;
  v127 = v140;
  *(&v156 + 1) = v140;
  v128 = v144;
  *&v157 = v144;
  *(&v157 + 1) = v83;
  *v158 = v84;
  *&v158[8] = v85;
  *&v158[16] = v86;
  v158[24] = 0;
  v129 = v156;
  *v123 = v155;
  v123[1] = v129;
  v130 = *v158;
  v123[2] = v157;
  v123[3] = v130;
  *(v123 + 57) = *&v158[9];
  v131 = v121 + v122[16];
  *v131 = 0;
  *(v131 + 8) = 1;
  sub_24F74B454(v119, v121 + v122[20]);
  sub_24E60169C(&v155, &v159, &qword_27F24EA58);
  sub_24E601704(v117, &qword_27F24EA48);
  sub_24E601704(v154, &qword_27F214D60);
  sub_24E601704(v119, &qword_27F24EA48);
  v159 = v124;
  v160 = v125;
  v161 = v126;
  v162 = v127;
  v163 = v128;
  v164 = v83;
  v165 = v84;
  v166 = v85;
  v167 = v86;
  v168 = 0;
  sub_24E601704(&v159, &qword_27F24EA58);
  return sub_24E601704(v153, &qword_27F214D60);
}

uint64_t sub_24F74A990@<X0>(char a1@<W1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v31[2] = a3;
  v31[3] = a4;
  v31[1] = a2;
  v7 = sub_24F91F0C8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_24F91F008();
  MEMORY[0x28223BE20](v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v31 - v15;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v31 - v20;
  if (a1)
  {
    goto LABEL_9;
  }

  v32 = v18;
  if (qword_27F2117F8 != -1)
  {
    swift_once();
  }

  v22 = qword_27F39F008;
  v23 = sub_24F92BB08();
  v24 = [v22 stringForObjectValue_];

  v18 = v32;
  if (!v24)
  {
LABEL_9:
    v27 = *(v18 + 56);

    return v27(a5, 1, 1, v8, v19);
  }

  else
  {
    v31[0] = a5;
    sub_24F92B0D8();

    sub_24F69B344();

    sub_24F91F0B8();
    sub_24F91F018();
    sub_24F925A18();
    v25 = sub_24F9258E8();

    v33 = v25;
    sub_24E6584A4();
    sub_24F91F038();
    if (qword_27F210D28 != -1)
    {
      swift_once();
    }

    if (byte_27F39D1B1 == 1)
    {
      v26 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    }

    else
    {
      v26 = sub_24F926D18();
    }

    v33 = v26;
    sub_24E876600();
    sub_24F91F038();

    sub_24F91F0B8();
    sub_24F91F018();
    v33 = sub_24F925A08();
    sub_24F91F038();
    v33 = sub_24F926D38();
    sub_24F91F038();
    sub_24F91EE58();
    sub_24F91EE78();
    v29 = *(v32 + 8);
    v29(v10, v8);
    v30 = v31[0];
    sub_24F91EE78();
    v29(v13, v8);
    v29(v16, v8);
    v29(v21, v8);
    return (*(v32 + 56))(v30, 0, 1, v8);
  }
}

uint64_t sub_24F74AE00@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924B38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 8);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  (*(v4 + 104))(v6, *MEMORY[0x277CE0118], v3);
  v8 = sub_24F924258();
  *(a1 + 64) = v8;
  *(a1 + 72) = sub_24F74B674(&qword_27F212868, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a1 + 40));
  (*(v4 + 16))(boxed_opaque_existential_1 + *(v8 + 20), v6, v3);
  *boxed_opaque_existential_1 = v7;
  boxed_opaque_existential_1[1] = v7;
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F74AF80()
{
  sub_24F47DA30();

  return sub_24F9218E8();
}

unint64_t sub_24F74B034()
{
  result = qword_27F24E9F0;
  if (!qword_27F24E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E9F0);
  }

  return result;
}

unint64_t sub_24F74B108()
{
  result = qword_27F24EA18;
  if (!qword_27F24EA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24EA08);
    sub_24F74B1C0();
    sub_24E602068(&qword_27F2419D0, &qword_27F21FC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EA18);
  }

  return result;
}

unint64_t sub_24F74B1C0()
{
  result = qword_27F24EA20;
  if (!qword_27F24EA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24EA00);
    sub_24F74B24C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EA20);
  }

  return result;
}

unint64_t sub_24F74B24C()
{
  result = qword_27F24EA28;
  if (!qword_27F24EA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E9F8);
    sub_24E602068(&qword_27F24EA30, &qword_27F24EA38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EA28);
  }

  return result;
}

uint64_t sub_24F74B30C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F9289E8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24F74B454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EA48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F74B4C4()
{
  result = qword_27F24EA68;
  if (!qword_27F24EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EA68);
  }

  return result;
}

uint64_t sub_24F74B518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengesHistoryChallengeLockup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F74B57C(uint64_t a1)
{
  v2 = type metadata accessor for ChallengesHistoryChallengeLockup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F74B5D8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218590);
    sub_24F74B674(a2, type metadata accessor for PlayerAvatar);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F74B674(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F74B6D0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24EA08);
  sub_24F74B108();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F74B738()
{
  result = qword_27F24EA78;
  if (!qword_27F24EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EA78);
  }

  return result;
}

unint64_t sub_24F74B790()
{
  result = qword_27F24EA80;
  if (!qword_27F24EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EA80);
  }

  return result;
}

unint64_t sub_24F74B7E8()
{
  result = qword_27F24EA88;
  if (!qword_27F24EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EA88);
  }

  return result;
}

uint64_t sub_24F74B83C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7641726579616C70 && a2 == 0xED00007372617461 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xEF676E6972745370 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1802396018 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA7D1A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
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

BOOL ArcadeSubscription.isActive.getter()
{
  swift_getKeyPath();
  sub_24F74D33C();
  sub_24F91FD88();

  return *(v0 + 16) < 2u;
}

uint64_t ArcadeSubscription.updateStateFromEntitlements(policy:)(_BYTE *a1)
{
  *(v2 + 208) = v1;
  v4 = sub_24F91F648();
  *(v2 + 216) = v4;
  *(v2 + 224) = *(v4 - 8);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 73) = *a1;

  return MEMORY[0x2822009F8](sub_24F74BCCC, 0, 0);
}

uint64_t sub_24F74BCCC()
{
  v16 = v0;
  sub_24F74D6CC(v15);
  v1 = v15[0];
  if (v15[0] != 7)
  {
    if (os_variant_has_internal_content())
    {
      v2 = sub_24F92CE08();

      if ((v2 & 1) == 0)
      {
        v3 = *(v0 + 208);
        if (sub_24F0CCA98(*(v3 + 16), v1))
        {
          *(v3 + 16) = v1;
        }

        else
        {
          v10 = *(v0 + 208);
          swift_getKeyPath();
          v11 = swift_task_alloc();
          *(v11 + 16) = v10;
          *(v11 + 24) = v1;
          *(v0 + 192) = v10;
          sub_24F74D33C();
          sub_24F91FD78();
        }

        v12 = *(v0 + 208);
        if (*(v12 + 24))
        {
          swift_getKeyPath();
          v13 = swift_task_alloc();
          *(v13 + 16) = v12;
          *(v13 + 24) = 0;
          *(v0 + 200) = v12;
          sub_24F74D33C();
          sub_24F91FD78();
        }

        v14 = *(v0 + 8);

        return v14();
      }
    }

    else
    {
    }
  }

  v4 = *(v0 + 73);
  v5 = *(v0 + 208);
  v6 = *(v5 + 32);
  *(v0 + 248) = v6;
  v7 = *(v5 + 40);
  *(v0 + 256) = v7;
  sub_24E615E00(v5 + 48, v0 + 32);
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  *(v0 + 72) = v4;

  v8 = swift_task_alloc();
  *(v0 + 264) = v8;
  *v8 = v0;
  v8[1] = sub_24F74BF90;

  return sub_24F635110();
}

uint64_t sub_24F74BF90(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v4 = sub_24F74CCE4;
  }

  else
  {
    v4 = sub_24F74C0A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F74C0A4()
{
  sub_24E615E00(v0[26] + 48, (v0 + 10));
  v1 = swift_task_alloc();
  v0[36] = v1;
  *(v1 + 16) = v0 + 10;
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_24F74C1A0;

  return MEMORY[0x2822008A0](v0 + 21, 0, 0, 0x29286863746566, 0xE700000000000000, sub_24F74DEB8, v1, &type metadata for ArcadeSubscriptionMetadataRequest.MetadataResponse);
}

uint64_t sub_24F74C1A0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {

    v2 = sub_24F74C6CC;
  }

  else
  {

    v2 = sub_24F74C2E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F74C2E8()
{
  v0[39] = v0[21];
  if (qword_27F2113A8 != -1)
  {
LABEL_30:
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E748);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "Got entitlements/offerIDs", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = v0[34];

  if (v5)
  {
    v6 = v0[34];
    if (v6 >> 62)
    {
      v7 = sub_24F92C738();
      if (v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_7:
        v8 = 0;
        v9 = v0[34];
        v38 = v9 & 0xFFFFFFFFFFFFFF8;
        v39 = v9 & 0xC000000000000001;
        v10 = (v0[28] + 8);
        v36 = v6;
        v37 = v0[32];
        do
        {
          if (v39)
          {
            v11 = MEMORY[0x253052270](v8, v6);
            v12 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
LABEL_26:
              __break(1u);
LABEL_23:

              v32 = v40;
              goto LABEL_34;
            }
          }

          else
          {
            if (v8 >= *(v38 + 16))
            {
              __break(1u);
              goto LABEL_30;
            }

            v11 = *(v6 + 8 * v8 + 32);
            v12 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_26;
            }
          }

          v41 = v12;
          if (v37)
          {
            v13 = v10;
            v15 = v0[31];
            v14 = v0[32];
            v40 = v11;
            v16 = [v11 familyID];
            v17 = [v16 stringValue];

            v18 = sub_24F92B0D8();
            v20 = v19;

            if (v18 == v15 && v14 == v20)
            {

              v10 = v13;
              v11 = v40;
            }

            else
            {
              v22 = sub_24F92CE08();

              v10 = v13;
              v11 = v40;
              if ((v22 & 1) == 0)
              {
                goto LABEL_8;
              }
            }

            v23 = [v11 expiryDate];
            if (!v23)
            {
              goto LABEL_23;
            }

            v24 = v23;
            v25 = v0[29];
            v26 = v0[27];
            sub_24F91F608();

            sub_24F91F638();
            v27 = sub_24F91F588();
            v28 = *v10;
            (*v10)(v25, v26);
            v29 = v0[30];
            v30 = v0[27];
            if (v27)
            {

              v28(v29, v30);
              v32 = v40;
              goto LABEL_34;
            }

            v31 = [v40 isInGracePeriod];
            v28(v29, v30);
            v11 = v40;
            v6 = v36;
            if (v31)
            {
              goto LABEL_23;
            }
          }

LABEL_8:

          ++v8;
        }

        while (v41 != v7);
      }
    }
  }

  v32 = 0;
LABEL_34:
  sub_24F74D57C(v32);
  sub_24F92B7F8();
  v0[40] = sub_24F92B7E8();
  v34 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F74CADC, v34, v33);
}

uint64_t sub_24F74C6CC()
{
  v19 = v0;
  sub_24F74D7F8((v0 + 2));
  sub_24F74DEC0((v0 + 10));
  v1 = v0[38];
  if (qword_27F2113A8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E748);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_24F92CFE8();
    v10 = sub_24E7620D4(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v11 = v0[26];
  if (*(v11 + 24))
  {
    swift_getKeyPath();
    v12 = swift_task_alloc();
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    v0[19] = v11;
    sub_24F74D33C();
    sub_24F91FD78();

    v11 = v0[26];
  }

  if (*(v11 + 16) > 5u)
  {
  }

  else
  {
    v13 = sub_24F92CE08();

    if ((v13 & 1) == 0)
    {
      v14 = v0[26];
      swift_getKeyPath();
      v15 = swift_task_alloc();
      *(v15 + 16) = v14;
      *(v15 + 24) = 6;
      v0[18] = v14;
      sub_24F74D33C();
      sub_24F91FD78();

      goto LABEL_12;
    }
  }

  *(v11 + 16) = 6;
LABEL_12:

  v16 = v0[1];

  return v16();
}

uint64_t sub_24F74CADC()
{
  v12 = v0;
  v1 = v0[39];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[26];

  swift_getKeyPath();
  v0[22] = v4;
  sub_24F74D33C();
  sub_24F91FD88();

  v5 = *(v4 + 24);
  v6 = v5;

  ArcadeSubscriptionState.init(arcadeEntitlement:consumedIntroOfferFamilyIds:arcadeSubscriptionFamilyId:)(v5, v1, v3, v2, v11);
  v7 = v11[0];
  if (sub_24F0CCA98(*(v4 + 16), v11[0]))
  {
    *(v4 + 16) = v7;
  }

  else
  {
    v8 = v0[26];
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    v0[23] = v8;
    sub_24F91FD78();
  }

  return MEMORY[0x2822009F8](sub_24F74CC6C, 0, 0);
}

uint64_t sub_24F74CC6C()
{
  sub_24F74D7F8(v0 + 16);
  sub_24F74DEC0(v0 + 80);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F74CCE4()
{
  v19 = v0;
  sub_24F74D7F8((v0 + 2));
  v1 = v0[35];
  if (qword_27F2113A8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E748);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_24F92CFE8();
    v10 = sub_24E7620D4(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v11 = v0[26];
  if (*(v11 + 24))
  {
    swift_getKeyPath();
    v12 = swift_task_alloc();
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    v0[19] = v11;
    sub_24F74D33C();
    sub_24F91FD78();

    v11 = v0[26];
  }

  if (*(v11 + 16) > 5u)
  {
  }

  else
  {
    v13 = sub_24F92CE08();

    if ((v13 & 1) == 0)
    {
      v14 = v0[26];
      swift_getKeyPath();
      v15 = swift_task_alloc();
      *(v15 + 16) = v14;
      *(v15 + 24) = 6;
      v0[18] = v14;
      sub_24F74D33C();
      sub_24F91FD78();

      goto LABEL_12;
    }
  }

  *(v11 + 16) = 6;
LABEL_12:

  v16 = v0[1];

  return v16();
}

uint64_t ArcadeSubscription.state.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_24F74D33C();
  sub_24F91FD88();

  *a1 = *(v1 + 16);
  return result;
}

uint64_t ArcadeSubscription.__allocating_init(arcadeSubscriptionFamilyId:subscriptionEntitlements:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v8 = *(a3 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = sub_24F74E124(a1, a2, v9, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v10;
}

void *ArcadeSubscription.entitlement.getter()
{
  swift_getKeyPath();
  sub_24F74D33C();
  sub_24F91FD88();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_24F74D250@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F74D33C();
  sub_24F91FD88();

  *a2 = *(v3 + 16);
  return result;
}

unint64_t sub_24F74D33C()
{
  result = qword_27F21FE50;
  if (!qword_27F21FE50)
  {
    type metadata accessor for ArcadeSubscription();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FE50);
  }

  return result;
}

uint64_t type metadata accessor for ArcadeSubscription()
{
  result = qword_27F24EA98;
  if (!qword_27F24EA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F74D3E0(unsigned __int8 *a1)
{
  v2 = *a1;
  result = sub_24F0CCA98(*(v1 + 16), *a1);
  if (result)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F74D33C();
    sub_24F91FD78();
  }

  return result;
}

id sub_24F74D4C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F74D33C();
  sub_24F91FD88();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_24F74D54C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24F74D57C(v1);
}

void sub_24F74D57C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F74D33C();
    sub_24F91FD78();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_24F74E3CC();
  v5 = v4;
  v6 = a1;
  v7 = sub_24F92C408();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

void sub_24F74D6CC(_BYTE *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 arrayForKey_];

  if (!v4)
  {

    goto LABEL_9;
  }

  v5 = sub_24F92B5A8();

  v6 = sub_24E9E2340(v5);

  if (!v6)
  {
LABEL_9:
    *a1 = 7;
    return;
  }

  if (!v6[2])
  {

    goto LABEL_9;
  }

  v7 = v6[4];
  v8 = v6[5];

  v9 = v7;
  v10 = v8;

  ArcadeSubscriptionState.init(rawValue:)(*&v9);
}

void sub_24F74D850(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24F74D57C(v1);
}

void sub_24F74D880()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

uint64_t ArcadeSubscription.init(arcadeSubscriptionFamilyId:subscriptionEntitlements:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v8 = *(a3 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_24F74DF14(a1, a2, v12, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v14;
}

uint64_t sub_24F74D9C0()
{
  *(v0 + 16) = sub_24F92B7F8();
  *(v0 + 24) = sub_24F92B7E8();
  *(v0 + 40) = 1;
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_24E8FAC50;

  return ArcadeSubscription.updateStateFromEntitlements(policy:)((v0 + 40));
}

uint64_t sub_24F74DA7C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  if (qword_27F2113A8 != -1)
  {
    swift_once();
  }

  v5 = sub_24F9220D8();
  __swift_project_value_buffer(v5, qword_27F39E748);
  v6 = sub_24F9220B8();
  v7 = sub_24F92BD98();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = sub_24F92B0D8();
    v12 = sub_24E7620D4(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24E5DD000, v6, v7, "Received %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  v13 = sub_24F92B858();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v1;

  sub_24EA998B8(0, 0, v4, &unk_24FA24938, v14);
}

uint64_t sub_24F74DCB0()
{
  *(v0 + 24) = 1;
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E614970;

  return ArcadeSubscription.updateStateFromEntitlements(policy:)((v0 + 24));
}

uint64_t ArcadeSubscription.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  v1 = OBJC_IVAR____TtC12GameStoreKit18ArcadeSubscription___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ArcadeSubscription.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  v1 = OBJC_IVAR____TtC12GameStoreKit18ArcadeSubscription___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24F74DF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23[-1] - v13;
  v23[3] = a5;
  v23[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  *(a4 + 24) = 0;
  sub_24F91FDB8();
  *(a4 + 32) = a1;
  *(a4 + 40) = a2;
  sub_24E615E00(v23, a4 + 48);
  *(a4 + 16) = 5;
  v16 = [objc_opt_self() defaultCenter];
  [v16 addObserver:a4 selector:sel_entitlementsDidChange name:*MEMORY[0x277CEC318] object:0];

  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  sub_24F92B7F8();

  v18 = sub_24F92B7E8();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = a4;
  sub_24EA998B8(0, 0, v14, &unk_24FA20410, v19);

  __swift_destroy_boxed_opaque_existential_1(v23);
  return a4;
}

uint64_t sub_24F74E124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a3, a5);
  return sub_24F74DF14(a1, a2, v13, v14, a5, a6);
}

uint64_t sub_24F74E230()
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

uint64_t sub_24F74E318()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E6541E4;

  return sub_24F74DCB0();
}

unint64_t sub_24F74E3CC()
{
  result = qword_27F23C840;
  if (!qword_27F23C840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F23C840);
  }

  return result;
}

uint64_t sub_24F74E458(uint64_t a1, uint64_t a2, int *a3)
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
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24F74E5F0(uint64_t result, uint64_t a2, int a3, int *a4)
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
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ChallengesFriendComparisonChart()
{
  result = qword_27F24EAA8;
  if (!qword_27F24EAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F74E7C0()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PlayerAvatar(319);
    if (v1 <= 0x3F)
    {
      sub_24F74E93C(319, &qword_27F24EAB8, type metadata accessor for ChallengesFriendComparisonData.WinComparison, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
        if (v3 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
          if (v4 <= 0x3F)
          {
            sub_24F74E93C(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
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

void sub_24F74E93C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F74E9A0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F752340();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_24F92CD08();
    v10 = type metadata accessor for ChallengesFriendComparisonChart();
    LOBYTE(v12) = 2;
    type metadata accessor for PlayerAvatar(0);
    sub_24F752560(&qword_27F218A38, type metadata accessor for PlayerAvatar);
    sub_24F92CD48();
    LOBYTE(v12) = 3;
    sub_24F92CD48();
    v12 = *(v3 + *(v10 + 32));
    v11[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CCE8);
    sub_24F7524C4(&qword_27F24CD10, &qword_27F24CD18);
    sub_24F92CD48();
    LOBYTE(v12) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    LOBYTE(v12) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    LOBYTE(v12) = 7;
    sub_24F929608();
    sub_24F752560(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F74EE24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v36 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v41);
  v42 = &v36 - v5;
  v6 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB80);
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v13 = &v36 - v12;
  v14 = type metadata accessor for ChallengesFriendComparisonChart();
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v16[*(v17 + 36)];
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v49 = v18;
  sub_24E61DA68(&v50, v18, qword_27F21B590);
  v19 = v14[10];
  v20 = sub_24F92A6D8();
  v21 = *(*(v20 - 8) + 56);
  v47 = v19;
  v22 = v16;
  v21(&v16[v19], 1, 1, v20);
  v23 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24F752340();
  v44 = v13;
  v24 = v46;
  sub_24F92D108();
  if (v24)
  {
    v29 = v47;
    __swift_destroy_boxed_opaque_existential_1(v48);
    v27 = v22;
LABEL_4:
    sub_24E601704(v49, qword_27F24EC90);
    return sub_24E601704(v27 + v29, &qword_27F215440);
  }

  v46 = v11;
  v38 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  v53 = 0;
  sub_24E602068(&qword_27F213F30, &qword_27F213F18);
  sub_24F92CC68();
  v26 = v51;
  v27 = v22;
  *v22 = v50;
  *(v22 + 16) = v26;
  *(v22 + 32) = v52;
  LOBYTE(v50) = 1;
  v28 = sub_24F92CC28();
  v29 = v47;
  *(v22 + 40) = v28;
  *(v22 + 48) = v30;
  LOBYTE(v50) = 2;
  sub_24F752560(&qword_27F2185A0, type metadata accessor for PlayerAvatar);
  v31 = v46;
  sub_24F92CC68();
  v37 = 0;
  sub_24F752394(v31, v22 + v14[6], type metadata accessor for PlayerAvatar);
  LOBYTE(v50) = 3;
  v33 = v37;
  v32 = v38;
  sub_24F92CC68();
  if (v33)
  {
    (*(v43 + 8))(v44, v45);
    __swift_destroy_boxed_opaque_existential_1(v48);
    sub_24E601704(v22, &qword_27F213F18);

    if (!v37)
    {
      sub_24F752464(v22 + v14[6], type metadata accessor for PlayerAvatar);
    }

    goto LABEL_4;
  }

  sub_24F752394(v32, v22 + v14[7], type metadata accessor for PlayerAvatar);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CCE8);
  v53 = 4;
  sub_24F7524C4(&qword_27F24CD28, &qword_27F24CD30);
  sub_24F92CC68();
  *(v22 + v14[8]) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
  v53 = 5;
  sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
  sub_24F92CC68();
  sub_24E61DA68(&v50, v49, qword_27F24EC90);
  LOBYTE(v50) = 6;
  sub_24E65CAA0();
  v34 = v42;
  sub_24F92CC68();
  sub_24E61DA68(v34, v22 + v29, &qword_27F215440);
  sub_24F929608();
  LOBYTE(v50) = 7;
  sub_24F752560(&qword_27F213F48, MEMORY[0x277D21F70]);
  v35 = v40;
  sub_24F92CC18();
  (*(v43 + 8))(v44, v45);
  sub_24E6009C8(v35, v22 + v14[11], &qword_27F213E68);
  sub_24F7523FC(v22, v39, type metadata accessor for ChallengesFriendComparisonChart);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return sub_24F752464(v22, type metadata accessor for ChallengesFriendComparisonChart);
}

unint64_t sub_24F74F6EC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x61706D6F436E6977;
  if (v1 != 4)
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 2)
  {
    v5 = 0x7641646E65697266;
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

uint64_t sub_24F74F7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F752704(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F74F820(uint64_t a1)
{
  v2 = sub_24F752340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F74F85C(uint64_t a1)
{
  v2 = sub_24F752340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F74F898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 40), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24F74F9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EAD8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EAE0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  *v18 = 0;
  v18[8] = 1;
  v20 = a3 & 1;
  sub_24F74FD80(a1, a2, v20, &v28 + *(v19 + 44) - v17);
  v31 = *(a1 + *(type metadata accessor for ChallengesFriendComparisonChart() + 32));
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = v20;

  sub_24E62AB1C(a2, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CCE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EAE8);
  sub_24E602068(&qword_27F24EAF0, &qword_27F24CCE8);
  sub_24F75224C();
  sub_24F752560(&qword_27F24EB10, type metadata accessor for ChallengesFriendComparisonData.WinComparison);
  sub_24F927238();
  v28 = v15;
  sub_24E60169C(v18, v15, &qword_27F24EAE0);
  v22 = *(v8 + 16);
  v23 = v29;
  v22(v29, v12, v7);
  v24 = v30;
  sub_24E60169C(v15, v30, &qword_27F24EAE0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB18);
  v22((v24 + *(v25 + 48)), v23, v7);
  v26 = *(v8 + 8);
  v26(v12, v7);
  sub_24E601704(v18, &qword_27F24EAE0);
  v26(v23, v7);
  return sub_24E601704(v28, &qword_27F24EAE0);
}

uint64_t sub_24F74FD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v78 = a4;
  v7 = sub_24F924848();
  v73 = *(v7 - 8);
  v74 = v7;
  MEMORY[0x28223BE20](v7);
  v67 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PlayerAvatarView(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v63 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0);
  MEMORY[0x28223BE20](v18);
  v77 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v71 = &v63 - v21;
  MEMORY[0x28223BE20](v22);
  v75 = &v63 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v63 - v25;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233C8);
  MEMORY[0x28223BE20](v65);
  v76 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v63 - v29;
  MEMORY[0x28223BE20](v31);
  v79 = &v63 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB60);
  MEMORY[0x28223BE20](v33 - 8);
  v72 = &v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v63 - v36;
  *v37 = sub_24F9249A8();
  *(v37 + 1) = 0;
  v37[16] = 1;
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB68) + 44);
  v70 = v37;
  sub_24F7505E0(a1, a2, a3 & 1, &v37[v38]);
  v39 = type metadata accessor for ChallengesFriendComparisonChart();
  v40 = *(v39 + 24);
  v68 = a1;
  sub_24F7523FC(a1 + v40, v11, type metadata accessor for PlayerAvatar);
  LOBYTE(v83[0]) = 7;
  v66 = v17;
  sub_24F8319B8(v11, v83, v17);
  v69 = a3;
  if (a3)
  {
    v41 = *&a2;
    v42 = v67;
  }

  else
  {

    sub_24F92BDC8();
    v43 = sub_24F9257A8();
    v64 = v18;
    v44 = v43;
    sub_24F921FD8();

    v42 = v67;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(a2, 0);
    v18 = v64;
    (*(v73 + 8))(v42, v74);
    v41 = *v83;
  }

  sub_24E6B00B4(v41);
  sub_24F927618();
  sub_24F9238C8();
  sub_24F752394(v66, v26, type metadata accessor for PlayerAvatarView);
  v45 = &v26[*(v18 + 36)];
  v46 = v81;
  *v45 = v80;
  *(v45 + 1) = v46;
  *(v45 + 2) = v82;
  v47 = sub_24F9257F8();
  sub_24E6009C8(v26, v30, &qword_27F2233D0);
  v48 = &v30[*(v65 + 36)];
  *v48 = v47;
  *(v48 + 8) = 0u;
  *(v48 + 24) = 0u;
  v48[40] = 1;
  sub_24E6009C8(v30, v79, &qword_27F2233C8);
  sub_24F7523FC(v68 + *(v39 + 28), v11, type metadata accessor for PlayerAvatar);
  LOBYTE(v83[0]) = 7;
  sub_24F8319B8(v11, v83, v14);
  if (v69)
  {
    v49 = *&a2;
  }

  else
  {

    sub_24F92BDC8();
    v50 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(a2, 0);
    (*(v73 + 8))(v42, v74);
    v49 = *v83;
  }

  sub_24E6B00B4(v49);
  sub_24F927618();
  sub_24F9238C8();
  v51 = v71;
  sub_24F752394(v14, v71, type metadata accessor for PlayerAvatarView);
  v52 = (v51 + *(v18 + 36));
  v53 = v83[1];
  *v52 = v83[0];
  v52[1] = v53;
  v52[2] = v83[2];
  v54 = v75;
  sub_24E6009C8(v51, v75, &qword_27F2233D0);
  v55 = v70;
  v56 = v72;
  sub_24E60169C(v70, v72, &qword_27F24EB60);
  v57 = v79;
  v58 = v76;
  sub_24E60169C(v79, v76, &qword_27F2233C8);
  v59 = v77;
  sub_24E60169C(v54, v77, &qword_27F2233D0);
  v60 = v78;
  sub_24E60169C(v56, v78, &qword_27F24EB60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB70);
  sub_24E60169C(v58, v60 + *(v61 + 48), &qword_27F2233C8);
  sub_24E60169C(v59, v60 + *(v61 + 64), &qword_27F2233D0);
  sub_24E601704(v54, &qword_27F2233D0);
  sub_24E601704(v57, &qword_27F2233C8);
  sub_24E601704(v55, &qword_27F24EB60);
  sub_24E601704(v59, &qword_27F2233D0);
  sub_24E601704(v58, &qword_27F2233C8);
  return sub_24E601704(v56, &qword_27F24EB60);
}

uint64_t sub_24F7505E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v7 = sub_24F924848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x28223BE20](v11);
  v46 = &v44 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245CD0);
  MEMORY[0x28223BE20](v13 - 8);
  v49 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v45 = &v44 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v51 = v20;
  v52 = v21;
  sub_24E600AEC();

  v22 = sub_24F925E18();
  v24 = v23;
  v26 = v25;
  if (a3)
  {
    v27 = *&a2;
  }

  else
  {

    sub_24F92BDC8();
    v28 = sub_24F9257A8();
    v44 = v7;
    v29 = v28;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(a2, 0);
    (*(v8 + 8))(v10, v44);
    v27 = v51;
  }

  if (sub_24E6B00B4(v27) > 3u)
  {
    sub_24F925988();
  }

  else
  {
    sub_24F9258D8();
  }

  *&v30 = COERCE_DOUBLE(sub_24F925C98());
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_24E600B40(v22, v24, v26 & 1);

  v51 = *&v30;
  v52 = v32;
  v37 = v34 & 1;
  v53 = v34 & 1;
  v54 = v36;
  v38 = v46;
  sub_24F9268B8();
  sub_24E600B40(v30, v32, v37);

  v39 = v45;
  (*(v47 + 32))(v45, v38, v48);
  sub_24E6009C8(v39, v19, &qword_27F245CD0);
  v40 = v49;
  sub_24E60169C(v19, v49, &qword_27F245CD0);
  v41 = v50;
  sub_24E60169C(v40, v50, &qword_27F245CD0);
  v42 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB78) + 48);
  *v42 = 0;
  *(v42 + 8) = 1;
  sub_24E601704(v19, &qword_27F245CD0);
  return sub_24E601704(v40, &qword_27F245CD0);
}

uint64_t sub_24F750A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v84 = a4;
  v77 = sub_24F924848();
  v7 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F924A78();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v82 = *(v11 - 8);
  v83 = v11;
  MEMORY[0x28223BE20](v11);
  v81 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v80 = &v77 - v14;
  MEMORY[0x28223BE20](v15);
  v89 = &v77 - v16;
  MEMORY[0x28223BE20](v17);
  v88 = &v77 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB20);
  MEMORY[0x28223BE20](v19 - 8);
  v87 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v77 - v22;
  *v23 = sub_24F9249A8();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB28) + 44);
  v86 = v23;
  sub_24F751218(a1, *&a2, a3 & 1, &v23[v24]);
  sub_24F924A68();
  sub_24F924A58();
  v78 = type metadata accessor for ChallengesFriendComparisonData.WinComparison();
  v79 = a1;
  v85 = *(a1 + *(v78 + 20));
  v90 = v85;
  sub_24F924A08();
  sub_24F924A58();
  sub_24F924A98();
  v25 = sub_24F925DE8();
  v27 = v26;
  v29 = v28;
  if (a3)
  {
    v30 = *&a2;
  }

  else
  {

    sub_24F92BDC8();
    v31 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(a2, 0);
    (*(v7 + 8))(v9, v77);
    v30 = v90;
  }

  if (sub_24E6B00B4(v30) > 3u)
  {
    sub_24F925888();
  }

  else
  {
    sub_24F9258F8();
  }

  v32 = sub_24F925C98();
  v34 = v33;
  v36 = v35;

  sub_24E600B40(v25, v27, v29 & 1);

  v37 = *(v79 + *(v78 + 24));
  if (*&v85 >= *&v37)
  {
    v38 = sub_24F925198();
  }

  else
  {
    v38 = sub_24F9251C8();
  }

  LODWORD(v90) = v38;
  *&v39 = COERCE_DOUBLE(sub_24F925C58());
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_24E600B40(v32, v34, v36 & 1);

  v90 = *&v39;
  v91 = v41;
  v92 = v43 & 1;
  v93 = v45;
  sub_24F9268B8();
  sub_24E600B40(v39, v41, v43 & 1);

  sub_24F924A68();
  sub_24F924A58();
  v90 = v37;
  sub_24F924A08();
  sub_24F924A58();
  sub_24F924A98();
  v46 = sub_24F925DE8();
  v48 = v47;
  v49 = v37;
  v51 = v50;
  sub_24F9258F8();
  v52 = sub_24F925C98();
  v54 = v53;
  v56 = v55;

  sub_24E600B40(v46, v48, v51 & 1);

  if (*&v49 >= *&v85)
  {
    v57 = sub_24F925198();
  }

  else
  {
    v57 = sub_24F9251C8();
  }

  LODWORD(v90) = v57;
  *&v58 = COERCE_DOUBLE(sub_24F925C58());
  v60 = v59;
  v62 = v61;
  v64 = v63;
  sub_24E600B40(v52, v54, v56 & 1);

  v90 = *&v58;
  v91 = v60;
  v92 = v62 & 1;
  v93 = v64;
  sub_24F9268B8();
  sub_24E600B40(v58, v60, v62 & 1);

  v65 = v87;
  sub_24E60169C(v86, v87, &qword_27F24EB20);
  v67 = v82;
  v66 = v83;
  v68 = *(v82 + 16);
  v69 = v80;
  v70 = v88;
  v68(v80, v88, v83);
  v71 = v81;
  v72 = v89;
  v68(v81, v89, v66);
  v73 = v84;
  sub_24E60169C(v65, v84, &qword_27F24EB20);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB30);
  v68((v73 + *(v74 + 48)), v69, v66);
  v68((v73 + *(v74 + 64)), v71, v66);
  v75 = *(v67 + 8);
  v75(v72, v66);
  v75(v70, v66);
  sub_24E601704(v86, &qword_27F24EB20);
  v75(v71, v66);
  v75(v69, v66);
  return sub_24E601704(v87, &qword_27F24EB20);
}

uint64_t sub_24F751218@<X0>(uint64_t a1@<X0>, double a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v58 = a2;
  v62 = a4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB38);
  MEMORY[0x28223BE20](v60);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - v8;
  v10 = sub_24F924848();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GameIcon(0);
  v14 = (v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760);
  MEMORY[0x28223BE20](v54);
  v56 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - v19;
  MEMORY[0x28223BE20](v21);
  v55 = &v50 - v22;
  v23 = *(type metadata accessor for Game() + 72);
  v24 = sub_24F9289E8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 16);
  v57 = a1;
  v26(v16, a1 + v23, v24);
  (*(v25 + 56))(v16, 0, 1, v24);
  v27 = v14[10];
  *&v16[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  swift_storeEnumTagMultiPayload();
  v16[v14[7]] = 1;
  v16[v14[8]] = 1;
  v16[v14[9]] = 0;
  v59 = a3;
  if (a3)
  {
    v28 = *&v58;
    v29 = v58;
    sub_24E6B00B4(v58);
  }

  else
  {
    v28 = *&v58;

    sub_24F92BDC8();
    v30 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v28, 0);
    v51 = v20;
    v31 = v53;
    v32 = *(v52 + 8);
    v32(v12, v53);
    sub_24E6B00B4(*&v63);

    sub_24F92BDC8();
    v33 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v28, 0);
    v32(v12, v31);
    v20 = v51;
    v29 = *&v63;
  }

  sub_24E6B00B4(v29);
  sub_24F927618();
  sub_24F9238C8();
  sub_24F752394(v16, v20, type metadata accessor for GameIcon);
  v34 = v55;
  v35 = &v20[*(v54 + 36)];
  v36 = v64;
  *v35 = v63;
  *(v35 + 1) = v36;
  *(v35 + 2) = v65;
  sub_24E6009C8(v20, v34, &qword_27F216760);
  *v9 = sub_24F924C98();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB40);
  sub_24F751858(v57, v28, v59 & 1, &v9[*(v37 + 44)]);
  v38 = sub_24F925838();
  sub_24F923318();
  v39 = &v9[*(v60 + 36)];
  *v39 = v38;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  v44 = v56;
  sub_24E60169C(v34, v56, &qword_27F216760);
  v45 = v61;
  sub_24E60169C(v9, v61, &qword_27F24EB38);
  v46 = v62;
  sub_24E60169C(v44, v62, &qword_27F216760);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB48);
  sub_24E60169C(v45, v46 + *(v47 + 48), &qword_27F24EB38);
  v48 = v46 + *(v47 + 64);
  *v48 = 0;
  *(v48 + 8) = 1;
  sub_24E601704(v9, &qword_27F24EB38);
  sub_24E601704(v34, &qword_27F216760);
  sub_24E601704(v45, &qword_27F24EB38);
  return sub_24E601704(v44, &qword_27F216760);
}

uint64_t sub_24F751858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  LODWORD(v4) = a3;
  v85 = a4;
  v7 = sub_24F924848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v74 = &v70[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v81 = *(v10 - 8);
  v82 = v10;
  MEMORY[0x28223BE20](v10);
  v80 = &v70[-v11];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358);
  MEMORY[0x28223BE20](v79);
  v78 = &v70[-v12];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB50);
  MEMORY[0x28223BE20](v77);
  v84 = &v70[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v76 = &v70[-v15];
  MEMORY[0x28223BE20](v16);
  v83 = &v70[-v17];
  v18 = 0;
  v86 = 0;
  v87 = 0;
  v19 = 0;
  if (*(a1 + 105) == 1)
  {
    v71 = v4;
    v72 = v8;
    v73 = v7;
    v75 = a2;
    if (qword_27F211498 != -1)
    {
      swift_once();
    }

    v88 = xmmword_27F39E9F8;
    sub_24E600AEC();

    v20 = sub_24F925E18();
    v22 = v21;
    v24 = v23;
    sub_24F925A08();
    v25 = sub_24F925C98();
    v4 = v26;
    v28 = v27;

    sub_24E600B40(v20, v22, v24 & 1);

    sub_24F925938();
    v29 = sub_24F925B78();
    v31 = v30;
    v33 = v32;
    sub_24E600B40(v25, v4, v28 & 1);

    LODWORD(v88) = sub_24F9251C8();
    v18 = sub_24F925C58();
    v35 = v34;
    LOBYTE(v4) = v36;
    v38 = v37;
    sub_24E600B40(v29, v31, v33 & 1);

    v19 = v4 & 1;
    v87 = v35;
    sub_24E5FD138(v18, v35, v4 & 1);
    v86 = v38;

    a2 = v75;
    v7 = v73;
    v8 = v72;
    LOBYTE(v4) = v71;
  }

  if (*(a1 + 56))
  {
    v39 = *(a1 + 48);
    v40 = *(a1 + 56);
  }

  else
  {
    v39 = *(a1 + 32);
  }

  *&v88 = v39;
  *(&v88 + 1) = v40;
  sub_24E600AEC();

  v41 = sub_24F925E18();
  v43 = v42;
  v45 = v44;
  v75 = v18;
  if (v4)
  {
    v46 = *&a2;
  }

  else
  {

    sub_24F92BDC8();
    v47 = sub_24F9257A8();
    sub_24F921FD8();

    v48 = v74;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(a2, 0);
    (*(v8 + 8))(v48, v7);
    v46 = *&v88;
  }

  if (sub_24E6B00B4(v46) > 3u)
  {
    sub_24F9258D8();
  }

  else
  {
    sub_24F925898();
  }

  v49 = sub_24F925C98();
  v51 = v50;
  v53 = v52;
  v55 = v54;

  sub_24E600B40(v41, v43, v45 & 1);

  *&v88 = v49;
  *(&v88 + 1) = v51;
  v89 = v53 & 1;
  v90 = v55;
  v56 = v80;
  sub_24F9268B8();
  sub_24E600B40(v49, v51, v53 & 1);

  v57 = sub_24F925198();
  v58 = v78;
  (*(v81 + 32))(v78, v56, v82);
  *(v58 + *(v79 + 36)) = v57;
  KeyPath = swift_getKeyPath();
  v60 = v76;
  sub_24E6009C8(v58, v76, &qword_27F217358);
  v61 = &v60[*(v77 + 36)];
  *v61 = KeyPath;
  *(v61 + 1) = 2;
  v61[16] = 0;
  v62 = v83;
  sub_24E6009C8(v60, v83, &qword_27F24EB50);
  v63 = v84;
  sub_24E60169C(v62, v84, &qword_27F24EB50);
  v64 = v85;
  v65 = v86;
  v66 = v75;
  v67 = v87;
  *v85 = v75;
  v64[1] = v67;
  v64[2] = v19;
  v64[3] = v65;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB58);
  sub_24E60169C(v63, v64 + *(v68 + 48), &qword_27F24EB50);
  sub_24E65D2B4(v66, v67, v19, v65);
  sub_24E65D2F8(v66, v67, v19, v65);
  sub_24E601704(v62, &qword_27F24EB50);
  sub_24E601704(v63, &qword_27F24EB50);
  return sub_24E65D2F8(v66, v67, v19, v65);
}

uint64_t sub_24F751F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  *a2 = sub_24F927618();
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0x4038000000000000;
  *(a2 + 40) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EAD0);
  return sub_24F74F9D8(a1, v5, v6, a2 + *(v8 + 44));
}

uint64_t sub_24F751FF8()
{
  sub_24E62AB1C(*v0, *(v0 + 8));
  sub_24F47DB80();
  return sub_24F9218E8();
}

unint64_t sub_24F7520A4()
{
  result = qword_27F24EAC8;
  if (!qword_27F24EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EAC8);
  }

  return result;
}

uint64_t sub_24F7521A4()
{
  sub_24E62A5EC(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_24F7521E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *a2 = 0;
  *(a2 + 8) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB08);
  return sub_24F750A04(a1, v5, v6, a2 + *(v7 + 36));
}

unint64_t sub_24F75224C()
{
  result = qword_27F24EAF8;
  if (!qword_27F24EAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24EAE8);
    sub_24E602068(&qword_27F24EB00, &qword_27F24EB08);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EAF8);
  }

  return result;
}

unint64_t sub_24F752340()
{
  result = qword_27F24EB88;
  if (!qword_27F24EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EB88);
  }

  return result;
}

uint64_t sub_24F752394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7523FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F752464(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F7524C4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CCE8);
    sub_24F752560(a2, type metadata accessor for ChallengesFriendComparisonData.WinComparison);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F752560(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F752600()
{
  result = qword_27F24EBA8;
  if (!qword_27F24EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EBA8);
  }

  return result;
}

unint64_t sub_24F752658()
{
  result = qword_27F24EBB0;
  if (!qword_27F24EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EBB0);
  }

  return result;
}

unint64_t sub_24F7526B0()
{
  result = qword_27F24EBB8;
  if (!qword_27F24EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EBB8);
  }

  return result;
}

uint64_t sub_24F752704(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000011 && 0x800000024FA464C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7641646E65697266 && a2 == 0xEC00000072617461 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61706D6F436E6977 && a2 == 0xEE00736E6F736972 || (sub_24F92CE08() & 1) != 0)
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

uint64_t sub_24F7529BC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24F752B00(void *result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ActiveChallengesShelfConstructionIntent()
{
  result = qword_27F24EBC0;
  if (!qword_27F24EBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F752C7C()
{
  sub_24F37A0E4(319, &qword_27F240838, type metadata accessor for Challenge, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24E8EF898(319, &qword_27F240840, &qword_27F231BE8);
    if (v1 <= 0x3F)
    {
      sub_24E8EF898(319, &qword_27F240848, &qword_27F231BF8);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Player(319);
        if (v3 <= 0x3F)
        {
          sub_24F37A0E4(319, &qword_27F21ADC8, type metadata accessor for Game, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_24F752DF4@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F979FB0;
  *(inited + 32) = 0x676E656C6C616863;
  *(inited + 40) = 0xEA00000000007365;
  v3 = *v1;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEE0);
  v4 = sub_24F753218();
  *(inited + 48) = v3;
  *(inited + 80) = v4;
  *(inited + 88) = 0xD000000000000013;
  *(inited + 96) = 0x800000024FA465A0;
  v5 = v1[1];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EBD0);
  v6 = sub_24F7532CC(&qword_27F24EBD8, &qword_27F24EBD0, &unk_24FA24EA0, sub_24EE56FD0);
  *(inited + 104) = v5;
  *(inited + 136) = v6;
  *(inited + 144) = 0xD00000000000001BLL;
  *(inited + 152) = 0x800000024FA5FBA0;
  v7 = v1[2];
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EBE0);
  v8 = sub_24F7532CC(&qword_27F24EBE8, &qword_27F24EBE0, &unk_24FA24EA8, sub_24EE57084);
  *(inited + 160) = v7;
  *(inited + 192) = v8;
  *(inited + 200) = 0x616C506C61636F6CLL;
  *(inited + 208) = 0xEB00000000726579;
  active = type metadata accessor for ActiveChallengesShelfConstructionIntent();
  v10 = active[7];
  *(inited + 240) = type metadata accessor for Player(0);
  *(inited + 248) = sub_24F753348(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E70D960(v1 + v10, boxed_opaque_existential_1);
  *(inited + 256) = 0x444965676170;
  *(inited + 264) = 0xE600000000000000;
  v12 = (v1 + active[8]);
  v13 = *v12;
  v14 = v12[1];
  v15 = MEMORY[0x277D837D0];
  v16 = MEMORY[0x277D22580];
  *(inited + 296) = MEMORY[0x277D837D0];
  *(inited + 304) = v16;
  *(inited + 272) = v13;
  *(inited + 280) = v14;
  *(inited + 312) = 0x5479616C70736964;
  *(inited + 320) = 0xEB00000000657079;
  v17 = *(v1 + active[9]);
  *(inited + 352) = &type metadata for ChallengesShelfDisplayType;
  v18 = sub_24E7C96C0();
  *(inited + 328) = v17;
  *(inited + 360) = v18;
  strcpy((inited + 368), "displayContext");
  *(inited + 383) = -18;
  v19 = 0x65676F5479616C70;
  if (!*(v1 + active[10]))
  {
    v19 = 0x676E656C6C616863;
  }

  v20 = 0xEC00000062754865;
  if (*(v1 + active[10]))
  {
    v20 = 0xEC00000072656874;
  }

  *(inited + 408) = v15;
  *(inited + 416) = v16;
  *(inited + 384) = v19;
  *(inited + 392) = v20;
  *(inited + 424) = 1701667175;
  *(inited + 432) = 0xE400000000000000;
  v21 = active[11];
  *(inited + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  *(inited + 472) = sub_24E736C00();
  v22 = __swift_allocate_boxed_opaque_existential_1((inited + 440));
  sub_24E736938(v1 + v21, v22);

  v23 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v23;
  return result;
}

unint64_t sub_24F753218()
{
  result = qword_27F21AEE8;
  if (!qword_27F21AEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AEE0);
    sub_24F753348(&qword_27F21AEF0, type metadata accessor for Challenge);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AEE8);
  }

  return result;
}

uint64_t sub_24F7532CC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

uint64_t sub_24F753348(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LeaderboardsCountDataIntent.gameBundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LeaderboardsCountDataIntent.leaderboardSetID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LeaderboardsCountDataIntent.playerID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_24F75343C()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x4449726579616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646E7542656D6167;
  }
}

uint64_t sub_24F7534A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F753B4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F7534CC(uint64_t a1)
{
  v2 = sub_24F753708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F753508(uint64_t a1)
{
  v2 = sub_24F753708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LeaderboardsCountDataIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EBF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F753708();
  sub_24F92D128();
  v14 = 0;
  v9 = v11[5];
  sub_24F92CD08();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_24F92CCA8();
  v12 = 2;
  sub_24F92CD08();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F753708()
{
  result = qword_27F24EBF8;
  if (!qword_27F24EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EBF8);
  }

  return result;
}

uint64_t LeaderboardsCountDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EC00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F753708();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_24F92CBC8();
  v21 = v12;
  v23 = 2;
  v13 = sub_24F92CC28();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F753A48()
{
  result = qword_27F24EC08;
  if (!qword_27F24EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EC08);
  }

  return result;
}

unint64_t sub_24F753AA0()
{
  result = qword_27F24EC10;
  if (!qword_27F24EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EC10);
  }

  return result;
}

unint64_t sub_24F753AF8()
{
  result = qword_27F24EC18;
  if (!qword_27F24EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EC18);
  }

  return result;
}

uint64_t sub_24F753B4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E7542656D6167 && a2 == 0xEC0000004449656CLL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA4D4E0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000)
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

uint64_t sub_24F753C94(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_24F753DE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t type metadata accessor for ComponentGrid()
{
  result = qword_27F24EC20;
  if (!qword_27F24EC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F753F6C()
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
          sub_24E65B038(319, &qword_27F21F938, &qword_27F21BE90);
          if (v4 <= 0x3F)
          {
            sub_24F7540A8();
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

void sub_24F7540A8()
{
  if (!qword_27F24EC30)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F24EC30);
    }
  }
}

uint64_t sub_24F7540F8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EC60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7553FC();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v9 = type metadata accessor for ComponentGrid();
    LOBYTE(v12) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    LOBYTE(v12) = 3;
    sub_24F929608();
    sub_24F7555B4(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    v12 = *(v3 + *(v9 + 32));
    HIBYTE(v11) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F8A0);
    sub_24ECF153C(&qword_27F21F8A8, &qword_27F21F8B0);
    sub_24F92CD48();
    LOBYTE(v12) = *(v3 + *(v9 + 36));
    HIBYTE(v11) = 5;
    sub_24F755508();
    sub_24F92CCF8();
    LOBYTE(v12) = 6;
    sub_24F92CD18();
    LOBYTE(v12) = 7;
    sub_24F92CD18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F754504@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EC48);
  v9 = *(v8 - 8);
  v38 = v8;
  v39 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for ComponentGrid();
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 40) = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 9) = 0;
  v44 = v14 + 40;
  sub_24E61DA68(&v47, (v14 + 40), qword_27F21B590);
  v15 = v12[6];
  v16 = sub_24F92A6D8();
  v17 = *(*(v16 - 8) + 56);
  v43 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = v12[7];
  v19 = sub_24F929608();
  v20 = *(*(v19 - 8) + 56);
  v45 = v18;
  v20(&v14[v18], 1, 1, v19);
  v40 = v12;
  v21 = v12[9];
  v14[v21] = 10;
  v22 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24F7553FC();
  v41 = v11;
  v23 = v42;
  sub_24F92D108();
  if (v23)
  {
    v26 = v43;
    v25 = v44;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v27 = v45;
    sub_24E601704(v25, qword_27F24EC90);
    sub_24E601704(&v14[v26], &qword_27F215440);
    return sub_24E601704(&v14[v27], &qword_27F213E68);
  }

  else
  {
    v42 = v19;
    v35 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v50 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v24 = v38;
    sub_24F92CC68();
    v28 = v48;
    *v14 = v47;
    *(v14 + 1) = v28;
    *(v14 + 4) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v50 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    v29 = v43;
    sub_24E61DA68(&v47, v44, qword_27F24EC90);
    LOBYTE(v47) = 2;
    sub_24E65CAA0();
    v30 = v7;
    sub_24F92CC68();
    v31 = v39;
    sub_24E61DA68(v30, &v14[v29], &qword_27F215440);
    LOBYTE(v47) = 3;
    sub_24F7555B4(&qword_27F213F48, MEMORY[0x277D21F70]);
    v32 = v37;
    sub_24F92CC18();
    sub_24E61DA68(v32, &v14[v45], &qword_27F213E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F8A0);
    v50 = 4;
    sub_24ECF153C(&qword_27F21F8D0, &qword_27F21F8D8);
    v33 = v41;
    sub_24F92CC68();
    *&v14[v40[8]] = v47;
    v50 = 5;
    sub_24F755450();
    sub_24F92CC18();
    v14[v35] = v47;
    LOBYTE(v47) = 6;
    v14[v40[10]] = sub_24F92CC38() & 1;
    LOBYTE(v47) = 7;
    LOBYTE(v32) = sub_24F92CC38();
    (*(v31 + 8))(v33, v24);
    v14[v40[11]] = v32 & 1;
    sub_24F7554A4(v14, v36);
    __swift_destroy_boxed_opaque_existential_1(v46);
    return sub_24F18AAAC(v14);
  }
}

uint64_t sub_24F754CB0()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000013;
    if (v1 != 6)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000017;
    if (v1 == 4)
    {
      v6 = 0x736D657469;
    }

    if (*v0 <= 5u)
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
    v2 = 25705;
    v3 = 0x4D747865746E6F63;
    if (v1 != 2)
    {
      v3 = 0xD000000000000011;
    }

    if (*v0)
    {
      v2 = 0x6575676573;
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
}

uint64_t sub_24F754DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F755704(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F754DD0(uint64_t a1)
{
  v2 = sub_24F7553FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F754E0C(uint64_t a1)
{
  v2 = sub_24F7553FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F754E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E68039C(v7, a2);
}

uint64_t sub_24F754F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for ComponentGridView();
  MEMORY[0x28223BE20](v3);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ComponentGrid();
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *(a1 + v6[8]);
  if (*(a1 + v6[9]) != 10)
  {
    v27 = *(a1 + v6[9]);
    sub_24E846150(v28);
    v7 = v28[0];
    v8 = v28[1];
    v9 = v28[2];
    v10 = v28[3];
    v11 = v28[4];
  }

  v13 = *(a1 + v6[11]);
  v24 = *(a1 + v6[10]);
  v25 = v13;
  v14 = v3[6];
  v15 = v8;
  *(v5 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221988);
  swift_storeEnumTagMultiPayload();
  v16 = v5 + v3[7];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = v5 + v3[8];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v5 + v3[9];
  *v18 = swift_getKeyPath();
  *(v18 + 4) = 0;
  v19 = v3[10];
  *(v5 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v20 = v3[11];
  *(v5 + v20) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v21 = v3[12];
  *(v5 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  *v5 = v12;
  v5[1] = v7;
  v5[2] = v15;
  v5[3] = v9;
  v5[4] = v10;
  v5[5] = v11;
  v22 = v25;
  *(v5 + v3[13]) = v24;
  *(v5 + v3[14]) = v22;
  sub_24F755398(v5, v26);
}

uint64_t sub_24F7551D0()
{
  sub_24F47D694();

  return sub_24F9218E8();
}

unint64_t sub_24F755260()
{
  result = qword_27F24EC40;
  if (!qword_27F24EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EC40);
  }

  return result;
}

uint64_t sub_24F755398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentGridView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F7553FC()
{
  result = qword_27F24EC50;
  if (!qword_27F24EC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EC50);
  }

  return result;
}

unint64_t sub_24F755450()
{
  result = qword_27F24EC58;
  if (!qword_27F24EC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EC58);
  }

  return result;
}

uint64_t sub_24F7554A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentGrid();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F755508()
{
  result = qword_27F24EC68;
  if (!qword_27F24EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EC68);
  }

  return result;
}

uint64_t sub_24F7555B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F755600()
{
  result = qword_27F24EC78;
  if (!qword_27F24EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EC78);
  }

  return result;
}

unint64_t sub_24F755658()
{
  result = qword_27F24EC80;
  if (!qword_27F24EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EC80);
  }

  return result;
}

unint64_t sub_24F7556B0()
{
  result = qword_27F24EC88;
  if (!qword_27F24EC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EC88);
  }

  return result;
}

uint64_t sub_24F755704(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA7D200 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA7D220 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA7D240 == a2)
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

void GamesSignInActionImplementation.init(hostViewController:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_unknownObjectWeakInit();
  *(a2 + 8) = [objc_allocWithZone(type metadata accessor for GamesSignInActionImplementation.Coordinator()) init];
  swift_unknownObjectWeakAssign();
}

uint64_t GamesSignInActionImplementation.perform(_:asPartOf:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  if (Strong)
  {
    v33 = Strong;
    v34 = v10;
    v12 = sub_24F92A9E8();
    v13 = *(v3 + 8);
    v14 = *(a3 - 8);
    v32 = *(v14 + 16);
    v32(v35, v4, a3);
    sub_24F757A70(v35);
    *(v13 + qword_27F24ED28) = v12;

    *(v13 + qword_27F24ED30) = a2;

    sub_24E60169C((a1 + 8), v35, qword_27F24EC90);
    sub_24F757BD0(v35);
    if (*a1 == 1)
    {
      v31 = a2;
      v15 = *MEMORY[0x277CED1C0];
      v16 = sub_24E61AA84(0, 1, 1, MEMORY[0x277D84F90]);
      v18 = v16[2];
      v17 = v16[3];
      if (v18 >= v17 >> 1)
      {
        v16 = sub_24E61AA84((v17 > 1), v18 + 1, 1, v16);
      }

      v16[2] = v18 + 1;
      v16[v18 + 4] = v15;
      a2 = v31;
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    if (a1[1] == 1)
    {
      v21 = *MEMORY[0x277CED1B0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_24E61AA84(0, v16[2] + 1, 1, v16);
      }

      v23 = v16[2];
      v22 = v16[3];
      if (v23 >= v22 >> 1)
      {
        v16 = sub_24E61AA84((v22 > 1), v23 + 1, 1, v16);
      }

      v16[2] = v23 + 1;
      v16[v23 + 4] = v21;
    }

    v24 = sub_24F92B858();
    v25 = v34;
    (*(*(v24 - 8) + 56))(v34, 1, 1, v24);
    v32(v35, v4, a3);
    sub_24F92B7F8();

    v26 = v33;
    v27 = sub_24F92B7E8();
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    v28[2] = v27;
    v28[3] = v29;
    v28[4] = *(a3 + 16);
    v28[5] = a2;
    v28[6] = v12;
    v28[7] = v16;
    (*(v14 + 32))(v28 + 8, v35, a3);
    v28[10] = v26;
    sub_24F1D3DA4(0, 0, v25, &unk_24FA25500, v28);

    return v12;
  }

  else
  {
    type metadata accessor for GamesSignInActionImplementation.SignInError();
    swift_getWitnessTable();
    swift_allocError();
    *v19 = 1;
    *(v19 + 8) = 2;
    return sub_24F92A978();
  }
}

uint64_t sub_24F755E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a8;
  v8[25] = v13;
  v8[22] = a6;
  v8[23] = a7;
  v8[20] = a4;
  v8[21] = a5;
  v8[26] = sub_24F92B7F8();
  v8[27] = sub_24F92B7E8();
  v9 = type metadata accessor for NetworkConnectionMonitor();
  v10 = swift_task_alloc();
  v8[28] = v10;
  *v10 = v8;
  v10[1] = sub_24F755F2C;

  return MEMORY[0x28217F228](v8 + 18, v9, v9);
}

uint64_t sub_24F755F2C()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = sub_24F92B778();
  if (v0)
  {
    v5 = sub_24F75636C;
  }

  else
  {
    *(v2 + 240) = v3;
    *(v2 + 248) = v4;
    v5 = sub_24F756090;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24F756090()
{
  v1 = v0[18];
  swift_getKeyPath();
  v0[19] = v1;
  sub_24F758C24(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor);
  sub_24F91FD88();

  v2 = *(v1 + 16);

  if (v2 == 2)
  {

    type metadata accessor for GamesSignInActionImplementation.SignInError();
    swift_getWitnessTable();
    v3 = swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 2;
    sub_24F92A9A8();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[23];
    v7 = v0[24];
    v9 = [objc_allocWithZone(MEMORY[0x277CECAC8]) init];
    v0[32] = v9;
    type metadata accessor for AIDAServiceType(0);
    v10 = sub_24F92B588();
    [v9 setServiceTypes_];

    [v9 setDelegate_];
    [v9 _setShouldForceOperation_];
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_24F7563D0;
    v11 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B628);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_24F7567B4;
    v0[13] = &block_descriptor_21_1;
    v0[14] = v11;
    [v9 prepareInViewController:v7 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_24F75636C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7563D0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 248);
  v4 = *(v1 + 240);
  if (v2)
  {
    v5 = sub_24F7565C0;
  }

  else
  {
    v5 = sub_24F756500;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F756500()
{

  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = type metadata accessor for GamesSignInActionImplementation();
  sub_24F75688C(v2, v1, v4, 0, v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24F7565C0()
{

  swift_willThrow();
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[33];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Sign in UI preparation failed: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v11 = v0[33];

  v12 = v11;
  v13 = v0[32];
  v15 = v0[20];
  v14 = v0[21];
  v16 = type metadata accessor for GamesSignInActionImplementation();
  sub_24F75688C(v13, 0, v15, v11, v14, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_24F7567B4(uint64_t a1, char a2, void *a3)
{
  sub_24F928FD8();
  v6 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    **(*(v6 + 64) + 40) = a2;

    return MEMORY[0x282200950](v6);
  }
}

void sub_24F75688C(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    type metadata accessor for GamesSignInActionImplementation.SignInError();
    swift_getWitnessTable();
    v14 = swift_allocError();
    *v15 = 1;
    *(v15 + 8) = 2;
    sub_24F92A9A8();
    v13 = v14;

    goto LABEL_5;
  }

  v26 = Strong;
  if (a2)
  {
    [Strong presentViewController:a1 animated:1 completion:0];
    v13 = v26;

LABEL_5:

    return;
  }

  if (a4)
  {
    *&v28[0] = a4;
    v16 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
    sub_24EC51A9C();
    if (swift_dynamicCast())
    {
      a4 = v27;
      if (sub_24F756BE4())
      {
        if (qword_27F211430 != -1)
        {
          swift_once();
        }

        v17 = sub_24F9220D8();
        __swift_project_value_buffer(v17, qword_27F39E8E0);
        v18 = v27;
        v19 = sub_24F9220B8();
        v20 = sub_24F92BDB8();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412290;
          *(v21 + 4) = v18;
          *v22 = v18;
          v23 = v18;
          _os_log_impl(&dword_24E5DD000, v19, v20, "handleSignInPreparationComplete: User cancelled sign in, reason: %@", v21, 0xCu);
          sub_24E601704(v22, &qword_27F227B20);
          MEMORY[0x2530542D0](v22, -1, -1);
          MEMORY[0x2530542D0](v21, -1, -1);
        }

        else
        {
        }

        a4 = 2;
        v24 = 2;
      }

      else
      {
        v25 = v27;
        v24 = 0;
      }
    }

    else
    {
      a4 = 0;
      v24 = -1;
    }
  }

  else
  {
    v24 = -1;
  }

  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_24F756D8C(a1, a3, a4, v24, a5, v28, a6);

  sub_24F758C08(a4, v24);
  sub_24F758C08(a4, v24);
  sub_24E601704(v28, qword_27F21B590);
}