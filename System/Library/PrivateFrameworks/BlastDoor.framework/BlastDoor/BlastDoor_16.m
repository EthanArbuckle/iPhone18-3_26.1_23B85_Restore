unint64_t sub_21414A0F4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x724774756F6E6166;
    v6 = 0x496E6F6973736573;
    if (a1 == 2)
    {
      v6 = 0xD000000000000012;
    }

    if (!a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7069636974726170;
    v2 = 0xD000000000000012;
    if (a1 != 7)
    {
      v2 = 0x6F43746E65696C63;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x616974696E497369;
    if (a1 != 4)
    {
      v3 = 0x7069636974726170;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_21414A258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143676DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21414A280(uint64_t a1)
{
  v2 = sub_2142F3804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21414A2BC(uint64_t a1)
{
  v2 = sub_2142F3804();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21414A2F8(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9073D8, &qword_2146F4A18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v47 - v8;
  v10 = v2[3];
  v11 = v2[4];
  v143 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v10);
  sub_2142F3804();
  sub_2146DAA08();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(v143);
  }

  v12 = v6;
  LOBYTE(v76[0]) = 0;
  sub_2142F261C();
  sub_2146DA1C8();
  v13 = v77;
  LOBYTE(v77) = 1;
  v14 = sub_2146DA168();
  v17 = v16;
  v75 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v76[0]) = 2;
  sub_2142E15CC();
  sub_2146DA1C8();
  v74 = v13;
  v18 = v77;
  LOBYTE(v77) = 3;
  *&v72 = sub_2146DA168();
  *(&v72 + 1) = v19;
  v73 = v18;
  LOBYTE(v77) = 4;
  LODWORD(v71) = sub_2146DA178();
  LOBYTE(v77) = 5;
  v70 = sub_2146DA228();
  v123 = 6;
  sub_2142F2670();
  sub_2146DA1C8();
  v120 = v128;
  v121 = v129;
  v122 = v130;
  v116 = v124;
  v117 = v125;
  v118 = v126;
  v119 = v127;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907248, &qword_2146F4988);
  LOBYTE(v76[0]) = 7;
  sub_2142F26C4();
  sub_2146DA1C8();
  v20 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907278, &qword_2146F49A0);
  v114[2951] = 8;
  sub_2142F2850();
  sub_2146DA1C8();
  v49 = v5;
  v55 = v20;
  memcpy(v114, v115, 0xB81uLL);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v21 = swift_allocObject();
  v65 = xmmword_2146E9BF0;
  *(v21 + 16) = xmmword_2146E9BF0;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_214059900;
  *(v22 + 24) = 0;
  *(v21 + 32) = v22;
  sub_2142F2518(&v116, &v77);
  sub_213FB2E54(v114, &v77, &qword_27C907278, &qword_2146F49A0);
  sub_214042B80(v21, &v77);
  v50 = v77;
  v23 = v78;
  v48 = v79;
  v24 = v80;
  v69 = v81;
  sub_2144BBF10(v111);
  v63 = v111[0];
  v66 = v111[1];
  v67 = v111[2];
  v64 = v112;
  v25 = swift_allocObject();
  *(v25 + 16) = v65;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_214059900;
  *(v26 + 24) = 0;
  *(v25 + 32) = v26;
  sub_214042B80(v25, v76);
  v59 = *&v76[0];
  v53 = *&v76[1];
  v61 = *(&v76[0] + 1);
  v62 = *(&v76[1] + 1);
  v60 = LOBYTE(v76[2]);
  sub_2144BC164(v109);
  v58 = v109[1];
  v56 = v109[0];
  v57 = v109[2];
  v54 = v110;
  v51 = v71 & 1;
  v135 = v120;
  v136 = v121;
  v137 = v122;
  v131 = v116;
  v132 = v117;
  v133 = v118;
  v134 = v119;
  memcpy(&v113[7], v114, 0xB81uLL);
  *&v76[0] = v75;
  *(&v76[0] + 1) = v17;
  v52 = v17;
  LOBYTE(v111[0]) = v69;
  v77 = 0xD000000000000020;
  v78 = 0x800000021478E690;
  v79 = 0xD00000000000001CLL;
  *&v65 = 0x800000021478A360;
  v80 = 0x800000021478A360;
  v71 = v24;

  v68 = v23;
  v27 = v50;
  v28 = v50(v76, v111, &v77);
  if (v28)
  {
    v29 = v65;

    *&v76[0] = v73;
    LOBYTE(v111[0]) = v64;
    v77 = 0xD000000000000025;
    v78 = 0x800000021478E6C0;
    v79 = 0xD00000000000001CLL;
    v80 = v29;

    v30 = v63(v76, v111, &v77);
    if (v30)
    {
      v33 = v65;

      v76[0] = v72;
      LOBYTE(v111[0]) = v60;
      v77 = 0xD00000000000001CLL;
      v78 = 0x800000021478E6F0;
      v79 = 0xD00000000000001CLL;
      v80 = v33;

      v34 = v59(v76, v111, &v77);
      if (v34)
      {
        v37 = v65;

        v111[0] = v55;
        LOBYTE(v76[0]) = v54;
        v77 = 0xD000000000000025;
        v78 = 0x800000021478E710;
        v79 = 0xD00000000000001CLL;
        v80 = v37;

        sub_213FBE134(v57);
        v38 = v56(v111, v76, &v77);
        if (v38)
        {
          v40 = v57;
          sub_213FB7170(v57);

          sub_2142F2470(&v116);
          sub_213FB2DF4(v114, &qword_27C907278, &qword_2146F49A0);
          (*(v12 + 8))(v9, v49);
          v41 = v58;

          sub_213FB7170(v40);
          v42 = v74;
          LOBYTE(v76[0]) = v74;
          *(v76 + 1) = v142[0];
          DWORD1(v76[0]) = *(v142 + 3);
          *(&v76[0] + 1) = v27;
          *&v76[1] = v68;
          *(&v76[1] + 1) = v75;
          *&v76[2] = v52;
          BYTE8(v76[2]) = v69;
          *(&v76[2] + 9) = *v141;
          HIDWORD(v76[2]) = *&v141[3];
          *&v76[3] = v63;
          *(&v76[3] + 1) = v66;
          v43 = v73;
          *&v76[4] = v73;
          BYTE8(v76[4]) = v64;
          *(&v76[4] + 9) = *v140;
          HIDWORD(v76[4]) = *&v140[3];
          *&v76[5] = v59;
          *(&v76[5] + 1) = v61;
          v76[6] = v72;
          LOBYTE(v76[7]) = v60;
          BYTE1(v76[7]) = v51;
          *(&v76[7] + 2) = v138;
          WORD3(v76[7]) = v139;
          *(&v76[7] + 1) = v70;
          v76[9] = v132;
          v76[8] = v131;
          v76[13] = v136;
          v76[12] = v135;
          v76[10] = v133;
          v76[11] = v134;
          *&v76[14] = v137;
          *(&v76[14] + 1) = v56;
          *&v76[15] = v41;
          v44 = v55;
          *(&v76[15] + 1) = v55;
          LOBYTE(v40) = v54;
          LOBYTE(v76[16]) = v54;
          memcpy(&v76[16] + 1, v113, 0xB88uLL);
          memcpy(v4, v76, 0xC89uLL);
          sub_2142F3858(v76, &v77);
          __swift_destroy_boxed_opaque_existential_1(v143);
          LOBYTE(v77) = v42;
          *(&v77 + 1) = v142[0];
          HIDWORD(v77) = *(v142 + 3);
          v78 = v50;
          v79 = v68;
          v80 = v75;
          v81 = v52;
          v82 = v69;
          *v83 = *v141;
          *&v83[3] = *&v141[3];
          v84 = v63;
          v85 = v66;
          v86 = v43;
          v87 = v64;
          *v88 = *v140;
          *&v88[3] = *&v140[3];
          v89 = v59;
          v90 = v61;
          v91 = v72;
          v92 = v60;
          v93 = v51;
          v94 = v138;
          v95 = v139;
          v96 = v70;
          v98 = v132;
          v97 = v131;
          v102 = v136;
          v101 = v135;
          v99 = v133;
          v100 = v134;
          v103 = v137;
          v104 = v56;
          v105 = v58;
          v106 = v44;
          v107 = v40;
          goto LABEL_8;
        }

        sub_214031C4C();
        swift_allocError();
        *v45 = 0xD000000000000025;
        v45[1] = 0x800000021478E710;
        v46 = v65;
        v45[2] = 0xD00000000000001CLL;
        v45[3] = v46;
        swift_willThrow();

        sub_2142F2470(&v116);
        sub_213FB2DF4(v114, &qword_27C907278, &qword_2146F49A0);
        (*(v12 + 8))(v9, v49);

        sub_213FB7170(v57);
        v71 = v52;
        v67 = v73;
        v62 = *(&v72 + 1);
        v53 = v72;
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v39 = 0xD00000000000001CLL;
        v39[1] = 0x800000021478E6F0;
        v39[2] = 0xD00000000000001CLL;
        v39[3] = v65;
        swift_willThrow();

        sub_2142F2470(&v116);
        sub_213FB2DF4(v114, &qword_27C907278, &qword_2146F49A0);
        (*(v12 + 8))(v9, v49);

        v71 = v52;
        v67 = v73;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v35 = 0xD000000000000025;
      v35[1] = 0x800000021478E6C0;
      v36 = v65;
      v35[2] = 0xD00000000000001CLL;
      v35[3] = v36;
      swift_willThrow();

      sub_2142F2470(&v116);
      sub_213FB2DF4(v114, &qword_27C907278, &qword_2146F49A0);
      (*(v12 + 8))(v9, v49);

      v71 = v52;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000020;
    v31[1] = 0x800000021478E690;
    v32 = v65;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = v32;
    swift_willThrow();

    sub_2142F2470(&v116);
    sub_213FB2DF4(v114, &qword_27C907278, &qword_2146F49A0);
    (*(v12 + 8))(v9, v49);

    v75 = v48;
  }

  __swift_destroy_boxed_opaque_existential_1(v143);
  LOBYTE(v77) = v74;
  *(&v77 + 1) = v142[0];
  HIDWORD(v77) = *(v142 + 3);
  v78 = v27;
  v79 = v68;
  v80 = v75;
  v81 = v71;
  v82 = v69;
  *v83 = *v141;
  *&v83[3] = *&v141[3];
  v84 = v63;
  v85 = v66;
  v86 = v67;
  v87 = v64;
  *&v88[3] = *&v140[3];
  *v88 = *v140;
  v89 = v59;
  v90 = v61;
  *&v91 = v53;
  *(&v91 + 1) = v62;
  v92 = v60;
  v93 = v51;
  v95 = v139;
  v94 = v138;
  v96 = v70;
  v98 = v132;
  v97 = v131;
  v102 = v136;
  v101 = v135;
  v99 = v133;
  v100 = v134;
  v103 = v137;
  v104 = v56;
  v105 = v58;
  v106 = v57;
  v107 = v54;
LABEL_8:
  memcpy(v108, v113, sizeof(v108));
  return sub_2142F37B0(&v77);
}

uint64_t sub_21414B434(uint64_t a1)
{
  v31 = v2;
  v3 = MEMORY[0x28223BE20](a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9073E8, &qword_2146F4A20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v9 = *(v1 + 10);
  v47 = *(v1 + 11);
  v10 = *(v1 + 13);
  v48 = *(v1 + 12);
  v49 = v10;
  v11 = *(v1 + 9);
  v44 = *(v1 + 8);
  v45 = v11;
  v12 = *v1;
  v13 = *(v1 + 4);
  v30 = *(v1 + 3);
  v52 = v13;
  v14 = *(v1 + 8);
  v15 = *(v1 + 12);
  v28 = *(v1 + 13);
  v29 = v14;
  v25 = v1[113];
  v16 = *(v1 + 15);
  v26 = v15;
  v27 = v16;
  v50 = *(v1 + 28);
  v46 = v9;
  v24 = *(v1 + 31);
  memcpy(v51, v1 + 264, 0xB81uLL);
  v17 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2142F3804();
  sub_2146DAA28();
  LOBYTE(v33[0]) = v12;
  v18 = v4;
  v32[0] = 0;
  sub_2142F2984();
  v19 = v31;
  sub_2146DA388();
  if (v19)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v21 = v29;
  v22 = v28;
  if (!v52)
  {
    goto LABEL_8;
  }

  LOBYTE(v33[0]) = 1;

  sub_2146DA328();

  if (!v21)
  {
    goto LABEL_8;
  }

  v33[0] = v21;
  v32[0] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2142E1F00();
  sub_2146DA388();
  if (!v22)
  {
    goto LABEL_8;
  }

  LOBYTE(v33[0]) = 3;

  sub_2146DA328();

  LOBYTE(v33[0]) = 4;
  sub_2146DA338();
  LOBYTE(v33[0]) = 5;
  sub_2146DA3E8();
  v40 = v47;
  v41 = v48;
  v42 = v49;
  v43 = v50;
  v37 = v44;
  v38 = v45;
  v39 = v46;
  v36 = 6;
  sub_2142F2518(&v44, v33);
  sub_2142F29D8();
  sub_2146DA388();
  v34[3] = v40;
  v34[4] = v41;
  v34[5] = v42;
  v35 = v43;
  v34[0] = v37;
  v34[1] = v38;
  v34[2] = v39;
  sub_2142F2470(v34);
  if (v24 != 1)
  {
    v33[0] = v24;
    v32[0] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907248, &qword_2146F4988);
    sub_2142F2A2C();
    sub_2146DA388();
    memcpy(v33, v51, 0xB81uLL);
    v32[2951] = 8;
    sub_213FB2E54(v51, v32, &qword_27C907278, &qword_2146F49A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907278, &qword_2146F49A0);
    sub_2142F2BB8();
    sub_2146DA388();
    memcpy(v32, v33, 0xB81uLL);
    sub_213FB2DF4(v32, &qword_27C907278, &qword_2146F49A0);
    return (*(v5 + 8))(v8, v18);
  }

  else
  {
LABEL_8:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

__n128 Handwriting.init(with:creationDate:drawing:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2146D8B88();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for Handwriting();
  v10 = *(v9 + 20);
  v11 = sub_2146D8B08();
  (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  v12 = a4 + *(v9 + 24);
  v13 = *(a3 + 48);
  *(v12 + 32) = *(a3 + 32);
  *(v12 + 48) = v13;
  *(v12 + 64) = *(a3 + 64);
  result = *(a3 + 16);
  *v12 = *a3;
  *(v12 + 16) = result;
  return result;
}

unint64_t sub_21414BB14()
{
  v1 = 0x6E6F697461657263;
  if (*v0 != 1)
  {
    v1 = 0x676E6977617264;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_21414BB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143679E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21414BBA4(uint64_t a1)
{
  v2 = sub_2142F38B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21414BBE0(uint64_t a1)
{
  v2 = sub_2142F38B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Handwriting.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v31 = sub_2146D8B08();
  v29 = *(v31 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2146D8B88();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9073F0, &qword_2146F4A28);
  v10 = *(v32 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v32);
  v13 = &v26 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F38B4();
  v15 = v33;
  sub_2146DAA08();
  if (v15)
  {
    v25 = a1;
  }

  else
  {
    v16 = v10;
    v33 = a1;
    v17 = v30;
    v18 = v31;
    LOBYTE(v39) = 0;
    sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0]);
    sub_2146DA1C8();
    v27 = v6;
    LOBYTE(v39) = 1;
    sub_214328930(&qword_280B34D28, MEMORY[0x277CC9578]);
    sub_2146DA1C8();
    v44 = 2;
    sub_2142F3908();
    sub_2146DA1C8();
    (*(v16 + 8))(v13, v32);
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v34 = v39;
    v35 = v40;
    v20 = v28;
    (*(v17 + 32))(v28, v9, v27);
    v21 = type metadata accessor for Handwriting();
    (*(v29 + 32))(v20 + *(v21 + 20), v5, v18);
    v22 = (v20 + *(v21 + 24));
    v23 = v37;
    v22[2] = v36;
    v22[3] = v23;
    v22[4] = v38;
    v24 = v35;
    *v22 = v34;
    v22[1] = v24;
    v25 = v33;
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t Handwriting.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907408, &unk_2146F4A30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F38B4();
  sub_2146DAA28();
  LOBYTE(v25[0]) = 0;
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
  sub_2146DA388();
  if (!v2)
  {
    v11 = type metadata accessor for Handwriting();
    v12 = *(v11 + 20);
    v30 = 1;
    sub_2146D8B08();
    sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578]);
    sub_2146DA388();
    v13 = (v3 + *(v11 + 24));
    v14 = v13[1];
    v15 = v13[3];
    v26 = v13[2];
    v27 = v15;
    v16 = v13[3];
    v28 = v13[4];
    v17 = v13[1];
    v25[0] = *v13;
    v25[1] = v17;
    v22 = v26;
    v23 = v16;
    v24 = v13[4];
    v20 = v25[0];
    v21 = v14;
    v29 = 2;
    sub_2142F395C(v25, v19);
    sub_2142F39B8();
    sub_2146DA388();
    v19[2] = v22;
    v19[3] = v23;
    v19[4] = v24;
    v19[0] = v20;
    v19[1] = v21;
    sub_2142F3A0C(v19);
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 sub_21414C3A0@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v15 = *(a5 + 32);
  v26 = *(a7 + 40);
  v27 = *(a7 + 32);
  v25 = *(a7 + 48);
  *a8 = *a1;
  v16 = type metadata accessor for IDSActivitySharingInvitation(0);
  sub_21408AC04(a2, &a8[v16[5]], &qword_27C907418, &unk_214755810);
  sub_21408AC04(a3, &a8[v16[6]], &qword_27C907420, &unk_2146F4A40);
  sub_21408AC04(a4, &a8[v16[7]], &qword_27C907428, &unk_214755800);
  v17 = &a8[v16[8]];
  v18 = *(a5 + 16);
  *v17 = *a5;
  *(v17 + 1) = v18;
  v17[32] = v15;
  v19 = &a8[v16[9]];
  *(v19 + 57) = *(a6 + 57);
  v20 = a6[3];
  v19[2] = a6[2];
  v19[3] = v20;
  v21 = a6[1];
  *v19 = *a6;
  v19[1] = v21;
  v22 = &a8[v16[10]];
  result = *a7;
  v24 = *(a7 + 16);
  *v22 = *a7;
  *(v22 + 1) = v24;
  *(v22 + 4) = v27;
  *(v22 + 5) = v26;
  v22[48] = v25;
  return result;
}

uint64_t sub_21414C4DC()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000018;
    if (v1 != 1)
    {
      v5 = 0xD000000000000019;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x726F70736E617274;
    }
  }

  else
  {
    if (v1 == 5)
    {
      v2 = 0xD000000000000017;
    }

    else
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0xD000000000000019;
    if (v1 != 3)
    {
      v3 = 0xD000000000000016;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21414C5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214367B10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21414C600(uint64_t a1)
{
  v2 = sub_2142F3A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21414C63C(uint64_t a1)
{
  v2 = sub_2142F3A60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21414C678@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v47 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907428, &unk_214755800);
  v3 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907420, &unk_2146F4A40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907418, &unk_214755810);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  *&v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907430, &qword_2146F4A50);
  v13 = *(v50 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v50);
  v16 = &v40 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2142F3A60();
  *&v51 = v16;
  v19 = v52;
  sub_2146DAA08();
  if (!v19)
  {
    v46 = v8;
    v52 = v12;
    v20 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907440, &qword_2146F4A58);
    LOBYTE(v59) = 0;
    sub_2142F3AB4();
    v21 = v50;
    sub_2146DA1C8();
    v22 = v64;
    LOBYTE(v64) = 1;
    sub_2142F3B8C();
    sub_2146DA1C8();
    v45 = v22;
    LOBYTE(v64) = 2;
    sub_2142F3C40();
    sub_2146DA1C8();
    LOBYTE(v64) = 3;
    sub_2142F3CF4();
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907488, &qword_2146F4A60);
    LOBYTE(v59) = 4;
    sub_2142F3DA8();
    sub_2146DA1C8();
    v44 = *(&v64 + 1);
    v24 = v64;
    v49 = *(&v65 + 1);
    v25 = v65;
    v26 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9074A0, &qword_2146F4A68);
    v63 = 5;
    sub_2142F3E80();
    sub_2146DA1C8();
    v41 = v24;
    v42 = v26;
    v43 = v25;
    v61 = v66;
    *v62 = *v67;
    *&v62[9] = *&v67[9];
    v59 = v64;
    v60 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9074B8, &qword_2146F4A70);
    v53 = 6;
    sub_2142F3F58();
    sub_2146DA1C8();
    v27 = v46;
    (*(v20 + 8))(v51, v21);
    v28 = v56;
    v29 = v57;
    LOBYTE(v25) = v58;
    v30 = type metadata accessor for IDSActivitySharingInvitation(0);
    v51 = v55;
    v50 = v54;
    v31 = v47;
    sub_21408AC04(v52, &v47[v30[5]], &qword_27C907418, &unk_214755810);
    sub_21408AC04(v27, &v31[v30[6]], &qword_27C907420, &unk_2146F4A40);
    sub_21408AC04(v48, &v31[v30[7]], &qword_27C907428, &unk_214755800);
    *v31 = v45;
    v32 = &v31[v30[8]];
    v33 = v44;
    *v32 = v41;
    *(v32 + 1) = v33;
    v34 = v49;
    *(v32 + 2) = v43;
    *(v32 + 3) = v34;
    v32[32] = v42;
    v35 = &v31[v30[9]];
    v36 = *v62;
    v35[2] = v61;
    v35[3] = v36;
    *(v35 + 57) = *&v62[9];
    v37 = v60;
    *v35 = v59;
    v35[1] = v37;
    v38 = &v31[v30[10]];
    v39 = v51;
    *v38 = v50;
    *(v38 + 1) = v39;
    *(v38 + 4) = v28;
    *(v38 + 5) = v29;
    v38[48] = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(v68);
}

uint64_t sub_21414CE28(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9074D0, &qword_2146F4A78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F3A60();
  sub_2146DAA28();
  LOBYTE(v48[0]) = *v3;
  LOBYTE(v44) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907440, &qword_2146F4A58);
  sub_2142F4030();
  sub_2146DA388();
  if (!v2)
  {
    v11 = type metadata accessor for IDSActivitySharingInvitation(0);
    v12 = v11[5];
    LOBYTE(v48[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907418, &unk_214755810);
    sub_2142F4108();
    sub_2146DA388();
    v13 = v11[6];
    LOBYTE(v48[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907420, &unk_2146F4A40);
    sub_2142F41BC();
    sub_2146DA388();
    v14 = v11[7];
    LOBYTE(v48[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907428, &unk_214755800);
    sub_2142F4270();
    sub_2146DA388();
    v15 = &v3[v11[8]];
    v16 = *(v15 + 1);
    v17 = *(v15 + 2);
    v18 = *(v15 + 3);
    v19 = v15[32];
    v52 = *v15;
    v53 = v16;
    v54 = v17;
    v55 = v18;
    v56 = v19;
    v51 = 4;
    sub_21431326C(v52, v16, v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907488, &qword_2146F4A60);
    sub_2142F4324();
    sub_2146DA388();
    sub_214313220(v52, v53, v54, v55);
    v20 = &v3[v11[9]];
    v21 = v20[1];
    v22 = v20[3];
    v49 = v20[2];
    v50[0] = v22;
    *(v50 + 9) = *(v20 + 57);
    v23 = v20[1];
    v48[0] = *v20;
    v48[1] = v23;
    v24 = v20[3];
    v46 = v49;
    v47[0] = v24;
    *(v47 + 9) = *(v20 + 57);
    v44 = v48[0];
    v45 = v21;
    v43 = 5;
    sub_213FB2E54(v48, v41, &qword_27C9074A0, &qword_2146F4A68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9074A0, &qword_2146F4A68);
    sub_2142F43FC();
    sub_2146DA388();
    v41[2] = v46;
    *v42 = v47[0];
    *&v42[9] = *(v47 + 9);
    v41[0] = v44;
    v41[1] = v45;
    sub_213FB2DF4(v41, &qword_27C9074A0, &qword_2146F4A68);
    v25 = &v3[v11[10]];
    v26 = *(v25 + 1);
    v27 = *(v25 + 2);
    v28 = *(v25 + 3);
    v29 = *(v25 + 4);
    v30 = *(v25 + 5);
    v31 = v25[48];
    v34 = *v25;
    v35 = v26;
    v36 = v27;
    v37 = v28;
    v38 = v29;
    v39 = v30;
    v40 = v31;
    v33[7] = 6;
    sub_2142F44D4(v34, v26, v27, v28, v29, v30, v31, sub_213FDC9D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9074B8, &qword_2146F4A70);
    sub_2142F4534();
    sub_2146DA388();
    sub_2142F460C(v34, v35, v36, v37, v38, v39, v40, sub_213FDC6D0);
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 sub_21414D31C@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, unint64_t a8@<X7>, __n128 *a9@<X8>, char a10, unint64_t a11, unint64_t a12, unsigned __int16 a13, __n128 a14, unint64_t a15, char a16, unint64_t a17, unint64_t a18, unsigned __int8 a19, unint64_t a20, char a21)
{
  result = a14;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u8[0] = a3 & 1;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u8[0] = a7 & 1;
  a9[3].n128_u64[1] = a8;
  a9[4].n128_u8[0] = a10 & 1;
  a9[4].n128_u64[1] = a11;
  a9[5].n128_u64[0] = a12;
  a9[5].n128_u16[4] = a13;
  a9[6] = a14;
  a9[7].n128_u64[0] = a15;
  a9[7].n128_u8[8] = a16 & 1;
  a9[8].n128_u64[0] = a17;
  a9[8].n128_u64[1] = a18;
  a9[9].n128_u8[0] = a19;
  a9[9].n128_u64[1] = a20;
  a9[10].n128_u8[0] = a21 & 1;
  return result;
}

uint64_t sub_21414D3C0(char a1)
{
  result = 0x646E616D6D6F63;
  switch(a1)
  {
    case 1:
      result = 0x496567617373656DLL;
      break;
    case 2:
      result = 0x556567617373656DLL;
      break;
    case 3:
      result = 0x65736E6F70736572;
      break;
    case 4:
      result = 0x736165526C696166;
      break;
    case 5:
      result = 0x6E656B6F74;
      break;
    case 6:
      result = 0x6C616E7265746E69;
      break;
    case 7:
      result = 0x50676E6967676F6CLL;
      break;
    case 8:
      result = 0x746163696C707061;
      break;
    case 9:
      result = 0x5474736575716572;
      break;
    case 10:
      result = 0x6973736553736469;
      break;
    case 11:
      result = 0x6553646572616873;
      break;
    case 12:
      result = 0x6C6F636F746F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21414D588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214367D60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21414D5B0(uint64_t a1)
{
  v2 = sub_2142F466C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21414D5EC(uint64_t a1)
{
  v2 = sub_2142F466C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21414D628@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907548, &qword_2146F4A80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F466C();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v54) = 0;
    v49 = sub_2146DA1A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
    v57 = 1;
    sub_2142E14CC();
    sub_2146DA1C8();
    v48 = v54;
    v47 = v55;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    v57 = 2;
    v12 = sub_2142E1278();
    sub_2146DA1C8();
    v43 = v12;
    v44 = v11;
    v45 = v55;
    v46 = v54;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v57 = 3;
    v15 = sub_2142E11FC();
    sub_2146DA1C8();
    v42 = v54;
    v41 = v55;
    v57 = 4;
    sub_2146DA1C8();
    v39 = v15;
    v40 = v14;
    v16 = v54;
    LODWORD(v15) = v55;
    v57 = 5;
    sub_2146DA1C8();
    v35 = v15;
    v38 = v54;
    v36 = v16;
    v37 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v57 = 6;
    v17 = sub_2142E1378();
    sub_2146DA1C8();
    v33 = v54;
    v57 = 7;
    v34 = v17;
    sub_2146DA1C8();
    v32 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v57 = 8;
    sub_2142E12FC();
    sub_2146DA1C8();
    v18 = v37;
    v30 = v54;
    v31 = v55;
    v57 = 9;
    sub_2146DA1C8();
    v29 = v54;
    HIDWORD(v28) = v55;
    v57 = 10;
    sub_2146DA1C8();
    v43 = v54;
    v44 = v55;
    v57 = 11;
    sub_2146DA1C8();
    LOBYTE(v15) = v54;
    v57 = 12;
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v19 = v54;
    v20 = v55;
    v21 = v47;
    v56 = v47;
    v22 = v41;
    v53 = v41;
    v23 = v35;
    v52 = v35;
    v24 = BYTE4(v28);
    v51 = BYTE4(v28);
    v50 = v55;
    *a2 = v49;
    *(a2 + 8) = v48;
    *(a2 + 16) = v21;
    v25 = v45;
    *(a2 + 24) = v46;
    *(a2 + 32) = v25;
    *(a2 + 40) = v42;
    *(a2 + 48) = v22;
    *(a2 + 56) = v36;
    *(a2 + 64) = v23;
    *(a2 + 72) = v38;
    *(a2 + 80) = v18;
    *(a2 + 88) = v33;
    *(a2 + 89) = v32;
    v26 = v31;
    *(a2 + 96) = v30;
    *(a2 + 104) = v26;
    *(a2 + 112) = v29;
    *(a2 + 120) = v24;
    v27 = v44;
    *(a2 + 128) = v43;
    *(a2 + 136) = v27;
    *(a2 + 144) = v15;
    *(a2 + 152) = v19;
    *(a2 + 160) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21414DD18(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907550, &qword_2146F4A88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = *v1;
  v43 = v1[1];
  LODWORD(v42) = *(v1 + 16);
  v9 = v1[3];
  v40 = v1[4];
  v41 = v9;
  v10 = v1[5];
  LODWORD(v39) = *(v1 + 48);
  v37 = v1[7];
  v38 = v10;
  v47 = *(v1 + 64);
  v11 = v1[10];
  v35 = v1[9];
  v36 = v11;
  LODWORD(v10) = *(v1 + 88);
  v33 = *(v1 + 89);
  v34 = v10;
  v12 = v1[12];
  v31 = v1[13];
  v32 = v12;
  v30 = v1[14];
  v29 = *(v1 + 120);
  v13 = v1[16];
  v27 = v1[17];
  v28 = v13;
  v26 = *(v1 + 144);
  v25 = v1[19];
  v14 = *(v1 + 160);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F466C();
  sub_2146DAA28();
  LOBYTE(v45) = 0;
  v16 = v44;
  sub_2146DA368();
  if (v16)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v18 = v40;
  v19 = v41;
  LODWORD(v44) = v14;
  v20 = v4;
  v45 = v43;
  LOBYTE(v46) = v42;
  v48 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
  sub_2142E1E84();
  sub_2146DA388();
  v45 = v19;
  v46 = v18;
  v48 = 2;
  sub_213FDCA18(v19, v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  v22 = sub_2142E1CAC();
  sub_2146DA388();
  v42 = v21;
  v43 = v20;
  v41 = v22;
  sub_213FDC6BC(v45, v46);
  v45 = v38;
  LOBYTE(v46) = v39;
  v48 = 3;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  v24 = sub_2142E1C30();
  sub_2146DA388();
  v45 = v37;
  LOBYTE(v46) = v47;
  v48 = 4;
  sub_2146DA388();
  v45 = v35;
  v46 = v36;
  v48 = 5;
  sub_213FDCA18(v35, v36);
  sub_2146DA388();
  v39 = v24;
  v40 = v23;
  sub_213FDC6BC(v45, v46);
  LOBYTE(v45) = v34;
  v48 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  sub_2142E1D30();
  sub_2146DA388();
  LOBYTE(v45) = v33;
  v48 = 7;
  sub_2146DA388();
  v45 = v32;
  v46 = v31;
  v48 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  v45 = v30;
  LOBYTE(v46) = v29;
  v48 = 9;
  sub_2146DA388();
  v45 = v28;
  v46 = v27;
  v48 = 10;
  sub_213FDCA18(v28, v27);
  sub_2146DA388();
  sub_213FDC6BC(v45, v46);
  LOBYTE(v45) = v26;
  v48 = 11;
  sub_2146DA388();
  v45 = v25;
  LOBYTE(v46) = v44;
  v48 = 12;
  sub_2146DA388();
  return (*(v20 + 8))(0, v3);
}

__n128 sub_21414E334@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, _OWORD *a15, __int128 a16, __int128 a17, __n128 a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22)
{
  result = a18;
  v23 = a15[3];
  *(a9 + 136) = a15[2];
  *(a9 + 152) = v23;
  v24 = a15[5];
  *(a9 + 168) = a15[4];
  *(a9 + 184) = v24;
  v25 = a15[1];
  *(a9 + 104) = *a15;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12 & 1;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  *(a9 + 120) = v25;
  *(a9 + 200) = a16;
  *(a9 + 216) = a17;
  *(a9 + 232) = a18;
  *(a9 + 248) = a19;
  *(a9 + 256) = a20 & 1;
  *(a9 + 264) = a21;
  *(a9 + 272) = a22;
  return result;
}

unint64_t sub_21414E3E4(char a1)
{
  result = 0x646E616D6D6F63;
  switch(a1)
  {
    case 1:
      result = 0x496567617373656DLL;
      break;
    case 2:
      result = 0x556567617373656DLL;
      break;
    case 3:
      result = 0x65736E6F70736572;
      break;
    case 4:
      result = 0x54746E65746E6F63;
      break;
    case 5:
      result = 0x6D695468636F7065;
      break;
    case 6:
      result = 0x6C725570747468;
      break;
    case 7:
      result = 0x6461654870747468;
      break;
    case 8:
    case 9:
    case 10:
      result = 0x79646F4270747468;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x6F72724570747468;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21414E570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143681B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21414E598(uint64_t a1)
{
  v2 = sub_2142F46C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21414E5D4(uint64_t a1)
{
  v2 = sub_2142F46C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21414E610@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907558, &qword_2146F4A90);
  v5 = *(v58 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v58);
  v8 = &v38 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F46C0();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v5;
    v57 = a2;
    LOBYTE(v69) = 0;
    v56 = sub_2146DA1A8();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    LOBYTE(v63) = 1;
    v12 = sub_2142E11FC();
    sub_2146DA1C8();
    v54 = v11;
    v55 = v12;
    v53 = v69;
    v52 = BYTE8(v69);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    LOBYTE(v63) = 2;
    v14 = sub_2142E1278();
    sub_2146DA1C8();
    *&v51 = v14;
    *(&v51 + 1) = v13;
    v16 = v69;
    LOBYTE(v63) = 3;
    sub_2146DA1C8();
    v50 = v16;
    v49 = v69;
    v48 = BYTE8(v69);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v63) = 4;
    v18 = sub_2142E12FC();
    sub_2146DA1C8();
    v46 = v17;
    v47 = v18;
    v19 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
    LOBYTE(v63) = 5;
    sub_2142E14CC();
    sub_2146DA1C8();
    v45 = *(&v19 + 1);
    v20 = v69;
    v44 = BYTE8(v69);
    LOBYTE(v63) = 6;
    sub_2146DA1C8();
    v42 = v20;
    v43 = v19;
    v21 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056A8, &qword_2146F3D10);
    v77 = 7;
    sub_2142E1720();
    sub_2146DA1C8();
    v65 = v71;
    v66 = v72;
    v67 = v73;
    v68 = v74;
    v63 = v69;
    v64 = v70;
    v76 = 8;
    sub_2146DA1C8();
    v40 = v62;
    v41 = *(&v21 + 1);
    v76 = 9;
    sub_2146DA1C8();
    v39 = v62;
    v76 = 10;
    sub_2146DA1C8();
    v51 = v62;
    v76 = 11;
    sub_2146DA1C8();
    v55 = v62;
    LODWORD(v54) = BYTE8(v62);
    v76 = 12;
    v22 = v58;
    sub_2146DA1C8();
    (*(v10 + 8))(v8, v22);
    v23 = v66;
    v24 = v56;
    v25 = v57;
    *(v57 + 136) = v65;
    *(v25 + 152) = v23;
    v26 = v68;
    *(v25 + 168) = v67;
    *(v25 + 184) = v26;
    v27 = v64;
    *(v25 + 104) = v63;
    v28 = v52;
    v75 = v52;
    v29 = v48;
    v61 = v48;
    v30 = v44;
    v60 = v44;
    v31 = v54;
    v59 = v54;
    *v25 = v24;
    *(v25 + 8) = v53;
    *(v25 + 16) = v28;
    v32 = *(&v50 + 1);
    *(v25 + 24) = v50;
    *(v25 + 32) = v32;
    *(v25 + 40) = v49;
    *(v25 + 48) = v29;
    v33 = v45;
    *(v25 + 56) = v43;
    *(v25 + 64) = v33;
    v34 = v41;
    *(v25 + 72) = v42;
    *(v25 + 80) = v30;
    *(v25 + 88) = v21;
    *(v25 + 96) = v34;
    *(v25 + 120) = v27;
    v35 = *(&v40 + 1);
    *(v25 + 200) = v40;
    *(v25 + 208) = v35;
    v36 = *(&v39 + 1);
    *(v25 + 216) = v39;
    *(v25 + 224) = v36;
    v37 = *(&v51 + 1);
    *(v25 + 232) = v51;
    *(v25 + 240) = v37;
    *(v25 + 248) = v55;
    *(v25 + 256) = v31;
    *(v25 + 264) = v62;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21414EDC8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907560, &qword_2146F4A98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v37 - v6;
  v8 = *v1;
  v57 = v1[1];
  LODWORD(v56) = *(v1 + 16);
  v9 = v1[3];
  v54 = v1[4];
  v55 = v9;
  v53 = v1[5];
  LODWORD(v52) = *(v1 + 48);
  v10 = v1[8];
  *&v51 = v1[7];
  *(&v51 + 1) = v10;
  v11 = v1[9];
  v50 = *(v1 + 80);
  v12 = v1[11];
  *(&v48 + 1) = v1[12];
  v49 = v11;
  v13 = *(v1 + 19);
  v71 = *(v1 + 17);
  v72 = v13;
  v14 = *(v1 + 23);
  v73 = *(v1 + 21);
  v74 = v14;
  v15 = *(v1 + 15);
  v69 = *(v1 + 13);
  v70 = v15;
  v16 = v1[25];
  v47 = v1[26];
  *&v48 = v12;
  v17 = v1[27];
  v45 = v1[28];
  v46 = v16;
  v18 = v1[30];
  v42 = v1[29];
  v43 = v18;
  v44 = v17;
  v19 = v1[31];
  v41 = *(v1 + 256);
  v20 = v1[34];
  v39 = v1[33];
  v40 = v19;
  v21 = a1[3];
  v22 = a1[4];
  v23 = a1;
  v25 = v24;
  __swift_project_boxed_opaque_existential_1(v23, v21);
  sub_2142F46C0();
  sub_2146DAA28();
  LOBYTE(v63) = 0;
  v26 = v75;
  sub_2146DA368();
  if (v26)
  {
    return (*(v4 + 8))(v7, v25);
  }

  v29 = v54;
  v28 = v55;
  v30 = v53;
  v38 = v20;
  v75 = v4;
  *&v63 = v57;
  BYTE8(v63) = v56;
  LOBYTE(v61[0]) = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  v32 = sub_2142E1C30();
  sub_2146DA388();
  v57 = v32;
  *&v63 = v28;
  *(&v63 + 1) = v29;
  LOBYTE(v61[0]) = 2;
  sub_213FDCA18(v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  v33 = sub_2142E1CAC();
  sub_2146DA388();
  v55 = v33;
  v56 = v31;
  sub_213FDC6BC(v63, *(&v63 + 1));
  *&v63 = v30;
  BYTE8(v63) = v52;
  LOBYTE(v61[0]) = 3;
  sub_2146DA388();
  v63 = v51;
  LOBYTE(v61[0]) = 4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v35 = sub_214045AC0();
  sub_2146DA388();
  v54 = v35;
  *&v63 = v49;
  BYTE8(v63) = v50;
  LOBYTE(v61[0]) = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
  sub_2142E1E84();
  sub_2146DA388();
  v63 = v48;
  LOBYTE(v61[0]) = 6;
  sub_2146DA388();
  v65 = v71;
  v66 = v72;
  v67 = v73;
  v68 = v74;
  v63 = v69;
  v64 = v70;
  v62 = 7;
  sub_213FB2E54(&v69, v61, &qword_27C9056A8, &qword_2146F3D10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056A8, &qword_2146F3D10);
  sub_2142E2054();
  sub_2146DA388();
  v53 = v34;
  v61[2] = v65;
  v61[3] = v66;
  v61[4] = v67;
  v61[5] = v68;
  v61[0] = v63;
  v61[1] = v64;
  sub_213FB2DF4(v61, &qword_27C9056A8, &qword_2146F3D10);
  v59 = v46;
  v60 = v47;
  v58 = 8;
  sub_213FDCA18(v46, v47);
  sub_2146DA388();
  sub_213FDC6BC(v59, v60);
  v59 = v44;
  v60 = v45;
  v58 = 9;
  sub_2146DA388();
  v59 = v42;
  v60 = v43;
  v58 = 10;
  sub_213FDCA18(v42, v43);
  v52 = v25;
  sub_2146DA388();
  sub_213FDC6BC(v59, v60);
  v59 = v40;
  LOBYTE(v60) = v41;
  v58 = 11;
  sub_2146DA388();
  v59 = v39;
  v60 = v38;
  v58 = 12;
  v36 = v52;
  sub_2146DA388();
  return (*(v75 + 8))(0, v36);
}

uint64_t sub_21414F474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, char *a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, __int128 a19, uint64_t a20, char *a21, uint64_t a22, char *a23, uint64_t a24)
{
  v163 = a2;
  v127 = *a11;
  v124 = *a13;
  v125 = *a12;
  v130 = *a21;
  v131 = *a23;
  v25 = type metadata accessor for IDSHealthInvitation(0);
  sub_213FB2E54(a14, a9 + v25[12], &qword_27C907568, &unk_2146F4AA0);
  sub_213FB2E54(a15, a9 + v25[13], &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(a16, a9 + v25[14], &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(a17, a9 + v25[15], &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(a20, a9 + v25[18], &qword_27C907570, &qword_214732A10);
  sub_214392E94(&v159);
  v122 = v161;
  v123 = v160;
  v121 = v162;
  sub_214392EC8(&v155);
  v26 = v156;
  v27 = v157;
  v28 = v158;
  sub_2143930D8(&v152);
  v29 = v153;
  v30 = v154;
  sub_214393298(&v148);
  v119 = v150;
  v120 = v149;
  v118 = v151;
  sub_2143932CC(&v144);
  v31 = v145;
  v32 = v146;
  v117 = v147;
  sub_2143934A4(&v141);
  v33 = v142;
  v34 = v143;
  *a9 = v159;
  *(a9 + 16) = v123;
  *(a9 + 24) = v122;
  *(a9 + 32) = v121;
  *(a9 + 40) = v155;
  *(a9 + 56) = v26;
  *(a9 + 64) = v27;
  *(a9 + 72) = v28;
  *(a9 + 80) = v152;
  *(a9 + 96) = v29;
  *(a9 + 104) = v30;
  *(a9 + 112) = a6;
  *(a9 + 120) = a7;
  *(a9 + 128) = a8;
  *(a9 + 136) = a10;
  *(a9 + 144) = v127;
  *(a9 + 145) = v125;
  *(a9 + 146) = v124;
  v35 = a9 + v25[16];
  *v35 = v148;
  *(v35 + 16) = v120;
  *(v35 + 24) = v119;
  *(v35 + 32) = v118;
  v36 = a9 + v25[17];
  *v36 = v144;
  *(v36 + 16) = v31;
  *(v36 + 24) = v32;
  *(v36 + 32) = v117;
  *(a9 + v25[19]) = v130;
  *(a9 + v25[20]) = a22;
  *(a9 + v25[21]) = v131;
  v37 = a9 + v25[22];
  *v37 = v141;
  *(v37 + 16) = v33;
  *(v37 + 24) = v34;
  v39 = *a9;
  v38 = *(a9 + 8);
  v40 = *(a9 + 16);
  v41 = *(a9 + 24);
  v42 = *(a9 + 32);
  *&v155 = a1;
  *(&v155 + 1) = v163;
  v136 = v42;
  LOBYTE(v148) = v42;
  *&v159 = 0xD000000000000018;
  *(&v159 + 1) = 0x800000021478E740;
  v160 = 0xD00000000000001CLL;
  v161 = 0x800000021478A360;

  v133 = v41;
  v43 = v41;
  v44 = v39;
  sub_213FDC9D0(v40, v43);
  v45 = v39(&v155, &v148, &v159);
  if (v140)
  {

LABEL_6:

    sub_213FB2DF4(a20, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(a17, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a16, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a15, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a14, &qword_27C907568, &unk_2146F4AA0);
    v57 = *(a9 + 8);
    v58 = *(a9 + 16);
    v59 = *(a9 + 24);

    sub_213FDC6D0(v58, v59);
    *a9 = v44;
    *(a9 + 8) = v38;
    *(a9 + 16) = v40;
    *(a9 + 24) = v133;
    *(a9 + 32) = v136;
    return sub_21432887C(a9, type metadata accessor for IDSHealthInvitation);
  }

  v128 = v36;
  v129 = v35;
  v126 = v37;
  if ((v45 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v56 = 0xD000000000000018;
    v56[1] = 0x800000021478E740;
    v56[2] = 0xD00000000000001CLL;
    v56[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  sub_213FDC6D0(v40, v133);

  v46 = *(a9 + 8);
  v47 = *(a9 + 16);
  v48 = *(a9 + 24);

  sub_213FDC6D0(v47, v48);
  *a9 = v44;
  *(a9 + 8) = v38;
  v49 = v163;
  *(a9 + 16) = a1;
  *(a9 + 24) = v49;
  *(a9 + 32) = v136;
  v51 = *(a9 + 40);
  v50 = *(a9 + 48);
  v52 = *(a9 + 56);
  v53 = *(a9 + 64);
  v54 = *(a9 + 72);
  *&v155 = a3;
  *(&v155 + 1) = a4;
  LOBYTE(v148) = v54;
  *&v159 = 0xD00000000000002CLL;
  *(&v159 + 1) = 0x800000021478E760;
  v160 = 0xD00000000000001CLL;
  v161 = 0x800000021478A360;

  sub_213FDC9D0(v52, v53);
  v55 = v51(&v155, &v148, &v159);
  if ((v55 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v69 = 0xD00000000000002CLL;
    v69[1] = 0x800000021478E760;
    v69[2] = 0xD00000000000001CLL;
    v69[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a20, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(a17, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a16, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a15, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a14, &qword_27C907568, &unk_2146F4AA0);
    v70 = *(a9 + 48);
    v71 = *(a9 + 56);
    v72 = *(a9 + 64);

    sub_213FDC6D0(v71, v72);
    *(a9 + 40) = v51;
    *(a9 + 48) = v50;
    *(a9 + 56) = v52;
    *(a9 + 64) = v53;
    *(a9 + 72) = v54;
    return sub_21432887C(a9, type metadata accessor for IDSHealthInvitation);
  }

  sub_213FDC6D0(v52, v53);

  v61 = *(a9 + 48);
  v62 = *(a9 + 56);
  v63 = *(a9 + 64);

  sub_213FDC6D0(v62, v63);
  *(a9 + 40) = v51;
  *(a9 + 48) = v50;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = v54;
  v65 = *(a9 + 80);
  v64 = *(a9 + 88);
  v66 = *(a9 + 96);
  v67 = *(a9 + 104);
  *&v155 = a5;
  LOBYTE(v148) = v67;
  *&v159 = 0xD000000000000029;
  *(&v159 + 1) = 0x800000021478E790;
  v160 = 0xD00000000000001CLL;
  v161 = 0x800000021478A360;

  v68 = v65(&v155, &v148, &v159);
  if ((v68 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v81 = 0xD000000000000029;
    v81[1] = 0x800000021478E790;
    v81[2] = 0xD00000000000001CLL;
    v81[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a20, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(a17, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a16, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a15, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a14, &qword_27C907568, &unk_2146F4AA0);
    v82 = *(a9 + 88);
    v83 = *(a9 + 96);

    *(a9 + 80) = v65;
    *(a9 + 88) = v64;
    *(a9 + 96) = v66;
    *(a9 + 104) = v67;
    return sub_21432887C(a9, type metadata accessor for IDSHealthInvitation);
  }

  v73 = *(a9 + 88);
  v74 = *(a9 + 96);

  *(a9 + 80) = v65;
  *(a9 + 88) = v64;
  *(a9 + 96) = a5;
  *(a9 + 104) = v67;
  v76 = *v129;
  v75 = *(v129 + 8);
  v77 = *(v129 + 16);
  v78 = *(v129 + 24);
  v79 = *(v129 + 32);
  v155 = a18;
  LODWORD(v163) = v79;
  LOBYTE(v148) = v79;
  *&v159 = 0xD000000000000022;
  *(&v159 + 1) = 0x800000021478E7C0;
  v160 = 0xD00000000000001CLL;
  v161 = 0x800000021478A360;

  sub_213FDC9D0(v77, v78);
  v80 = v76(&v155, &v148, &v159);
  if ((v80 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v94 = 0xD000000000000022;
    v94[1] = 0x800000021478E7C0;
    v94[2] = 0xD00000000000001CLL;
    v94[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a20, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(a17, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a16, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a15, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a14, &qword_27C907568, &unk_2146F4AA0);
    v95 = *(v129 + 8);
    v96 = *(v129 + 16);
    v97 = *(v129 + 24);

    sub_213FDC6D0(v96, v97);
    *v129 = v76;
    *(v129 + 8) = v75;
    *(v129 + 16) = v77;
    *(v129 + 24) = v78;
    *(v129 + 32) = v163;
    return sub_21432887C(a9, type metadata accessor for IDSHealthInvitation);
  }

  sub_213FDC6D0(v77, v78);

  v84 = *(v129 + 8);
  v85 = *(v129 + 16);
  v86 = *(v129 + 24);

  sub_213FDC6D0(v85, v86);
  *v129 = v76;
  *(v129 + 8) = v75;
  *(v129 + 16) = a18;
  *(v129 + 32) = v163;
  v88 = *v128;
  v87 = *(v128 + 8);
  v89 = *(v128 + 16);
  v90 = *(v128 + 24);
  v91 = *(v128 + 32);
  v155 = a19;
  LODWORD(v163) = v91;
  LOBYTE(v148) = v91;
  *&v159 = 0xD000000000000026;
  *(&v159 + 1) = 0x800000021478E7F0;
  v160 = 0xD00000000000001CLL;
  v161 = 0x800000021478A360;
  v92 = v89;

  sub_213FDC9D0(v92, v90);
  v93 = v88(&v155, &v148, &v159);
  v98 = v88;
  if ((v93 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v107 = 0xD000000000000026;
    v107[1] = 0x800000021478E7F0;
    v107[2] = 0xD00000000000001CLL;
    v107[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a20, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(a17, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a16, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a15, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a14, &qword_27C907568, &unk_2146F4AA0);
    v108 = *(v128 + 8);
    v109 = *(v128 + 16);
    v110 = *(v128 + 24);

    sub_213FDC6D0(v109, v110);
    *v128 = v88;
    *(v128 + 8) = v87;
    *(v128 + 16) = v92;
    *(v128 + 24) = v90;
    *(v128 + 32) = v163;
    return sub_21432887C(a9, type metadata accessor for IDSHealthInvitation);
  }

  sub_213FDC6D0(v92, v90);

  v99 = *(v128 + 8);
  v100 = *(v128 + 16);
  v101 = *(v128 + 24);

  sub_213FDC6D0(v100, v101);
  *v128 = v98;
  *(v128 + 8) = v87;
  *(v128 + 16) = a19;
  *(v128 + 32) = v163;
  v103 = *v126;
  v102 = *(v126 + 8);
  v104 = *(v126 + 16);
  v105 = *(v126 + 24);
  *&v155 = a24;
  LOBYTE(v148) = v105;
  *&v159 = 0xD00000000000002BLL;
  *(&v159 + 1) = 0x800000021478E820;
  v160 = 0xD00000000000001CLL;
  v161 = 0x800000021478A360;

  v106 = v103(&v155, &v148, &v159);
  if ((v106 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v113 = 0xD00000000000002BLL;
    v113[1] = 0x800000021478E820;
    v113[2] = 0xD00000000000001CLL;
    v113[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a20, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(a17, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a16, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a15, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a14, &qword_27C907568, &unk_2146F4AA0);
    v114 = *(v126 + 8);
    v115 = *(v126 + 16);

    *v126 = v103;
    *(v126 + 8) = v102;
    *(v126 + 16) = v104;
    *(v126 + 24) = v105;
    return sub_21432887C(a9, type metadata accessor for IDSHealthInvitation);
  }

  sub_213FB2DF4(a20, &qword_27C907570, &qword_214732A10);
  sub_213FB2DF4(a17, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(a16, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(a15, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(a14, &qword_27C907568, &unk_2146F4AA0);
  v111 = *(v126 + 8);
  v112 = *(v126 + 16);

  *v126 = v103;
  *(v126 + 8) = v102;
  *(v126 + 16) = a24;
  *(v126 + 24) = v105;
  return result;
}

unint64_t sub_21415031C(char a1)
{
  result = 1684632949;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
    case 16:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x6D614E7473726966;
      break;
    case 4:
      result = 0x656D614E7473616CLL;
      break;
    case 5:
      result = 1701869940;
      break;
    case 6:
      result = 0x6F69746365726964;
      break;
    case 7:
      result = 0x737574617473;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x69646F4D65746164;
      break;
    case 10:
      result = 0x6563634165746164;
      break;
    case 11:
      result = 0x69766E4965746164;
      break;
    case 12:
      result = 0x6974617469766E69;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_214150548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143685F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214150570(uint64_t a1)
{
  v2 = sub_2142F4714();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141505AC(uint64_t a1)
{
  v2 = sub_2142F4714();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141505E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v194 = a2;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  v3 = *(*(v195 - 8) + 64);
  MEMORY[0x28223BE20](v195);
  v196 = &v163[-v4];
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v5 = *(*(v200 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v200);
  v197 = &v163[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v198 = &v163[-v9];
  MEMORY[0x28223BE20](v8);
  v199 = &v163[-v10];
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907568, &unk_2146F4AA0);
  v11 = *(*(v201 - 8) + 64);
  MEMORY[0x28223BE20](v201);
  v13 = &v163[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907578, &qword_2146F4AB0);
  v202 = *(v14 - 8);
  v15 = *(v202 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v163[-v16];
  v18 = type metadata accessor for IDSHealthInvitation(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v163[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = a1[3];
  v23 = a1[4];
  v226 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_2142F4714();
  v24 = v203;
  sub_2146DAA08();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v226);
  }

  v192 = v18;
  v193 = v21;
  v203 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v218) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v25 = *(&v222 + 1);
  v26 = v222;
  LOBYTE(v218) = 1;
  sub_2146DA1C8();
  v190 = v222;
  v191 = __PAIR128__(*(&v222 + 1), v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v218) = 2;
  v28 = sub_2142E15CC();
  sub_2146DA1C8();
  v188 = v27;
  v189 = v28;
  v29 = v222;
  LOBYTE(v218) = 3;
  sub_2146DA1C8();
  v31 = *(&v222 + 1);
  v187 = v222;
  LOBYTE(v218) = 4;
  sub_2146DA1C8();
  v184 = v31;
  v185 = *(&v222 + 1);
  v32 = v222;
  v186 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907588, &qword_2146F4AB8);
  LOBYTE(v218) = 5;
  sub_2142F4768();
  sub_2146DA1C8();
  v183 = v32;
  LODWORD(v32) = v222;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9075A0, &qword_2146F4AC0);
  LOBYTE(v218) = 6;
  sub_2142F4840();
  sub_2146DA1C8();
  LODWORD(v182) = v32;
  LODWORD(v32) = v222;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9075B8, &qword_2146F4AC8);
  LOBYTE(v218) = 7;
  sub_2142F4918();
  sub_2146DA1C8();
  LODWORD(v181) = v32;
  LODWORD(v180) = v222;
  LOBYTE(v222) = 8;
  sub_2142F49F0();
  sub_2146DA1C8();
  v179 = v29;
  LOBYTE(v222) = 9;
  sub_2142EC0C4();
  v201 = v14;
  v33 = v17;
  sub_2146DA1C8();
  LOBYTE(v222) = 10;
  sub_2146DA1C8();
  LOBYTE(v222) = 11;
  sub_2146DA1C8();
  LOBYTE(v218) = 12;
  sub_2146DA1C8();
  v200 = *(&v222 + 1);
  v34 = v222;
  LOBYTE(v218) = 13;
  sub_2146DA1C8();
  v178 = *(&v222 + 1);
  v35 = v222;
  LOBYTE(v222) = 14;
  sub_2142F4AA4();
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9075F0, &qword_2146F4AD0);
  LOBYTE(v218) = 15;
  sub_2142F4B58();
  sub_2146DA1C8();
  v36 = v222;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907608, &qword_2146F4AD8);
  LOBYTE(v218) = 16;
  sub_2142F4C30();
  sub_2146DA1C8();
  v37 = v222;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907620, &qword_2146F4AE0);
  LOBYTE(v218) = 17;
  sub_2142F4D08();
  sub_2146DA1C8();
  v177 = v222;
  LOBYTE(v218) = 18;
  sub_2146DA1C8();
  v195 = 0;
  v189 = v222;
  v38 = v192;
  v39 = v193;
  sub_213FB2E54(v203, v193 + *(v192 + 48), &qword_27C907568, &unk_2146F4AA0);
  sub_213FB2E54(v199, v39 + v38[13], &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(v198, v39 + v38[14], &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(v197, v39 + v38[15], &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(v196, v39 + v38[18], &qword_27C907570, &qword_214732A10);
  sub_214392E94(&v222);
  v188 = v223;
  v176 = v224;
  v175 = v225;
  sub_214392EC8(&v218);
  v167 = v220;
  v168 = v219;
  v166 = v221;
  sub_2143930D8(&v215);
  v165 = v216;
  v164 = v217;
  sub_214393298(&v211);
  v173 = v213;
  v174 = v212;
  v172 = v214;
  sub_2143932CC(&v207);
  v170 = v209;
  v171 = v208;
  v169 = v210;
  sub_2143934A4(&v204);
  v40 = v205;
  v41 = v206;
  *v39 = v222;
  v42 = v176;
  v39[2] = v188;
  v39[3] = v42;
  *(v39 + 32) = v175;
  *(v39 + 5) = v218;
  v43 = v167;
  v39[7] = v168;
  v39[8] = v43;
  *(v39 + 72) = v166;
  *(v39 + 5) = v215;
  v39[12] = v165;
  *(v39 + 104) = v164;
  v44 = v184;
  v39[14] = v187;
  v39[15] = v44;
  v45 = v185;
  v39[16] = v183;
  v39[17] = v45;
  *(v39 + 144) = v182;
  *(v39 + 145) = v181;
  *(v39 + 146) = v180;
  v46 = v39 + v38[16];
  *v46 = v211;
  *(v46 + 2) = v174;
  *(v46 + 3) = v173;
  v182 = v46;
  v46[32] = v172;
  v47 = v39 + v38[17];
  *v47 = v207;
  *(v47 + 2) = v171;
  *(v47 + 3) = v170;
  v181 = v47;
  v47[32] = v169;
  *(v39 + v38[19]) = v36;
  *(v39 + v38[20]) = v37;
  *(v39 + v38[21]) = v177;
  v48 = v39 + v38[22];
  *v48 = v204;
  *(v48 + 2) = v40;
  v180 = v48;
  v48[24] = v41;
  v50 = *v39;
  v49 = v39[1];
  v51 = v39[2];
  v52 = v39[3];
  LODWORD(v48) = *(v39 + 32);
  *&v218 = v191;
  *(&v218 + 1) = v186;
  LODWORD(v187) = v48;
  LOBYTE(v211) = v48;
  *&v222 = 0xD000000000000018;
  *(&v222 + 1) = 0x800000021478E740;
  v223 = 0xD00000000000001CLL;
  v224 = 0x800000021478A360;
  v192 = 0x800000021478A360;

  v183 = v51;
  v185 = v52;
  sub_213FDC9D0(v51, v52);
  v184 = v49;
  v53 = v195;
  v188 = v50;
  v54 = v50(&v218, &v211, &v222);
  v195 = v53;
  if (v53)
  {

LABEL_10:

    sub_213FB2DF4(v196, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v197, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v198, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v199, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v203, &qword_27C907568, &unk_2146F4AA0);
    (*(v202 + 8))(v33, v201);
    v72 = v193;
    v73 = v193[1];
    v74 = v193[2];
    v75 = v193[3];

    sub_213FDC6D0(v74, v75);
    v77 = v183;
    v76 = v184;
    *v72 = v188;
    v72[1] = v76;
    v78 = v185;
    v72[2] = v77;
    v72[3] = v78;
    *(v72 + 32) = v187;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v226);
    return sub_21432887C(v193, type metadata accessor for IDSHealthInvitation);
  }

  if ((v54 & 1) == 0)
  {
    sub_214031C4C();
    v70 = swift_allocError();
    *v71 = 0xD000000000000018;
    v71[1] = 0x800000021478E740;
    v71[2] = 0xD00000000000001CLL;
    v71[3] = v192;
    v195 = v70;
    swift_willThrow();
    goto LABEL_10;
  }

  sub_213FDC6D0(v183, v185);

  v55 = v193;
  v56 = v193[1];
  v57 = v193[2];
  v58 = v193[3];

  sub_213FDC6D0(v57, v58);
  v59 = v184;
  *v55 = v188;
  v55[1] = v59;
  v60 = v186;
  v55[2] = v191;
  v55[3] = v60;
  *(v55 + 32) = v187;
  v62 = v55[5];
  v61 = v55[6];
  v64 = v55[7];
  v63 = v55[8];
  v65 = *(v55 + 72);
  *&v218 = v190;
  *(&v218 + 1) = *(&v191 + 1);
  LODWORD(v191) = v65;
  LOBYTE(v211) = v65;
  *&v222 = 0xD00000000000002CLL;
  *(&v222 + 1) = 0x800000021478E760;
  v223 = 0xD00000000000001CLL;
  v224 = v192;

  v66 = v64;
  v187 = v63;
  sub_213FDC9D0(v64, v63);
  v67 = v61;
  v68 = v195;
  v188 = v62;
  v69 = v62(&v218, &v211, &v222);
  v195 = v68;
  if (v68)
  {

LABEL_16:

    sub_213FB2DF4(v196, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v197, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v198, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v199, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v203, &qword_27C907568, &unk_2146F4AA0);
    (*(v202 + 8))(v33, v201);
    v93 = v193;
    v94 = v193[6];
    v95 = v193[7];
    v96 = v193[8];

    sub_213FDC6D0(v95, v96);
    v97 = v187;
    v93[5] = v188;
    v93[6] = v61;
    v93[7] = v66;
    v93[8] = v97;
    *(v93 + 72) = v191;
    goto LABEL_11;
  }

  if ((v69 & 1) == 0)
  {
    sub_214031C4C();
    v90 = swift_allocError();
    *v91 = 0xD00000000000002CLL;
    v91[1] = 0x800000021478E760;
    v92 = v192;
    v91[2] = 0xD00000000000001CLL;
    v91[3] = v92;
    v195 = v90;
    swift_willThrow();
    goto LABEL_16;
  }

  sub_213FDC6D0(v66, v187);

  v79 = v193;
  v80 = v193[6];
  v81 = v193[7];
  v82 = v193[8];

  sub_213FDC6D0(v81, v82);
  v79[5] = v188;
  v79[6] = v67;
  v83 = *(&v191 + 1);
  v79[7] = v190;
  v79[8] = v83;
  *(v79 + 72) = v191;
  v85 = v79[10];
  v84 = v79[11];
  v86 = v79[12];
  v87 = *(v79 + 104);
  *&v218 = v179;
  DWORD2(v191) = v87;
  LOBYTE(v211) = v87;
  *&v222 = 0xD000000000000029;
  *(&v222 + 1) = 0x800000021478E790;
  v223 = 0xD00000000000001CLL;
  v224 = v192;

  v88 = v195;
  *&v191 = v85;
  v89 = v85(&v218, &v211, &v222);
  v195 = v88;
  if (v88)
  {

LABEL_21:

    sub_213FB2DF4(v196, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v197, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v198, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v199, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v203, &qword_27C907568, &unk_2146F4AA0);
    (*(v202 + 8))(v33, v201);
    v111 = v193;
    v112 = v193[11];
    v113 = v193[12];

    v111[10] = v191;
    v111[11] = v84;
    v111[12] = v86;
    *(v111 + 104) = BYTE8(v191);
    goto LABEL_11;
  }

  if ((v89 & 1) == 0)
  {
    sub_214031C4C();
    v108 = swift_allocError();
    *v109 = 0xD000000000000029;
    v109[1] = 0x800000021478E790;
    v110 = v192;
    v109[2] = 0xD00000000000001CLL;
    v109[3] = v110;
    v195 = v108;
    swift_willThrow();
    goto LABEL_21;
  }

  v98 = v193;
  v99 = v193[11];
  v100 = v193[12];

  v98[10] = v191;
  v98[11] = v84;
  v98[12] = v179;
  *(v98 + 104) = BYTE8(v191);
  v102 = *v182;
  v101 = *(v182 + 1);
  v104 = *(v182 + 2);
  v103 = *(v182 + 3);
  v105 = v182[32];
  *&v218 = v34;
  *(&v218 + 1) = v200;
  LODWORD(v191) = v105;
  LOBYTE(v211) = v105;
  *&v222 = 0xD000000000000022;
  *(&v222 + 1) = 0x800000021478E7C0;
  v223 = 0xD00000000000001CLL;
  v224 = v192;

  sub_213FDC9D0(v104, v103);
  v106 = v195;
  *(&v191 + 1) = v102;
  v107 = v102(&v218, &v211, &v222);
  v195 = v106;
  if (v106)
  {

LABEL_26:

    sub_213FB2DF4(v196, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v197, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v198, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v199, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v203, &qword_27C907568, &unk_2146F4AA0);
    (*(v202 + 8))(v33, v201);
    v131 = v182;
    v132 = *(v182 + 1);
    v133 = *(v182 + 2);
    v134 = *(v182 + 3);

    sub_213FDC6D0(v133, v134);
    *v131 = *(&v191 + 1);
    *(v131 + 1) = v101;
    *(v131 + 2) = v104;
    *(v131 + 3) = v103;
    v131[32] = v191;
    goto LABEL_11;
  }

  if ((v107 & 1) == 0)
  {
    sub_214031C4C();
    v128 = swift_allocError();
    *v129 = 0xD000000000000022;
    v129[1] = 0x800000021478E7C0;
    v130 = v192;
    v129[2] = 0xD00000000000001CLL;
    v129[3] = v130;
    v195 = v128;
    swift_willThrow();
    goto LABEL_26;
  }

  sub_213FDC6D0(v104, v103);
  v114 = v192;

  v115 = v182;
  v116 = *(v182 + 1);
  v117 = *(v182 + 2);
  v118 = *(v182 + 3);

  sub_213FDC6D0(v117, v118);
  *v115 = *(&v191 + 1);
  *(v115 + 1) = v101;
  v119 = v200;
  *(v115 + 2) = v34;
  *(v115 + 3) = v119;
  v115[32] = v191;
  v121 = *v181;
  v120 = *(v181 + 1);
  v122 = *(v181 + 2);
  v123 = *(v181 + 3);
  v124 = v181[32];
  *&v218 = v35;
  *(&v218 + 1) = v178;
  LODWORD(v200) = v124;
  LOBYTE(v211) = v124;
  *&v222 = 0xD000000000000026;
  *(&v222 + 1) = 0x800000021478E7F0;
  v223 = 0xD00000000000001CLL;
  v224 = v114;

  sub_213FDC9D0(v122, v123);
  v125 = v195;
  v126 = v121;
  v127 = v121(&v218, &v211, &v222);
  v195 = v125;
  if (v125)
  {

LABEL_31:

    sub_213FB2DF4(v196, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v197, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v198, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v199, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v203, &qword_27C907568, &unk_2146F4AA0);
    (*(v202 + 8))(v33, v201);
    v150 = v181;
    v151 = *(v181 + 1);
    v152 = *(v181 + 2);
    v153 = *(v181 + 3);

    sub_213FDC6D0(v152, v153);
    *v150 = v121;
    *(v150 + 1) = v120;
    *(v150 + 2) = v122;
    *(v150 + 3) = v123;
    v150[32] = v200;
    goto LABEL_11;
  }

  if ((v127 & 1) == 0)
  {
    sub_214031C4C();
    v147 = swift_allocError();
    *v148 = 0xD000000000000026;
    v148[1] = 0x800000021478E7F0;
    v149 = v192;
    v148[2] = 0xD00000000000001CLL;
    v148[3] = v149;
    v195 = v147;
    swift_willThrow();
    goto LABEL_31;
  }

  sub_213FDC6D0(v122, v123);
  v135 = v192;

  v136 = v181;
  v137 = *(v181 + 1);
  v138 = *(v181 + 2);
  v139 = *(v181 + 3);

  sub_213FDC6D0(v138, v139);
  *v136 = v126;
  *(v136 + 1) = v120;
  v140 = v178;
  *(v136 + 2) = v35;
  *(v136 + 3) = v140;
  v136[32] = v200;
  v142 = *v180;
  v141 = *(v180 + 1);
  v143 = *(v180 + 2);
  v144 = v180[24];
  *&v218 = v189;
  LODWORD(v200) = v144;
  LOBYTE(v211) = v144;
  *&v222 = 0xD00000000000002BLL;
  *(&v222 + 1) = 0x800000021478E820;
  v223 = 0xD00000000000001CLL;
  v224 = v135;

  v145 = v195;
  v146 = v142(&v218, &v211, &v222);
  v195 = v145;
  if (v145)
  {

LABEL_35:

    sub_213FB2DF4(v196, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v197, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v198, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v199, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v203, &qword_27C907568, &unk_2146F4AA0);
    (*(v202 + 8))(v33, v201);
    v160 = v180;
    v161 = *(v180 + 1);
    v162 = *(v180 + 2);

    *v160 = v142;
    *(v160 + 1) = v141;
    *(v160 + 2) = v143;
    v160[24] = v200;
    goto LABEL_11;
  }

  if ((v146 & 1) == 0)
  {
    sub_214031C4C();
    v157 = swift_allocError();
    *v158 = 0xD00000000000002BLL;
    v158[1] = 0x800000021478E820;
    v159 = v192;
    v158[2] = 0xD00000000000001CLL;
    v158[3] = v159;
    v195 = v157;
    swift_willThrow();
    goto LABEL_35;
  }

  sub_213FB2DF4(v196, &qword_27C907570, &qword_214732A10);
  sub_213FB2DF4(v197, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v198, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v199, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v203, &qword_27C907568, &unk_2146F4AA0);
  (*(v202 + 8))(v33, v201);
  v154 = v180;
  v155 = *(v180 + 1);
  v156 = *(v180 + 2);

  *v154 = v142;
  *(v154 + 1) = v141;
  *(v154 + 2) = v189;
  v154[24] = v200;
  sub_214328704(v193, v194, type metadata accessor for IDSHealthInvitation);
  return __swift_destroy_boxed_opaque_existential_1(v226);
}

uint64_t sub_214152120(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907638, &qword_2146F4AE8);
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F4714();
  sub_2146DAA28();
  v10 = *(v3 + 24);
  if (v10 == 1)
  {
    goto LABEL_11;
  }

  *&v28 = *(v3 + 16);
  *(&v28 + 1) = v10;
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v2)
  {
    return (*(v27 + 8))(v8, v5);
  }

  v11 = *(v3 + 64);
  if (v11 == 1)
  {
    goto LABEL_11;
  }

  *&v28 = *(v3 + 56);
  *(&v28 + 1) = v11;
  v29 = 1;
  sub_2146DA388();
  if (!*(v3 + 96))
  {
    goto LABEL_11;
  }

  *&v28 = *(v3 + 96);
  v29 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2142E1F00();
  sub_2146DA388();
  v28 = *(v3 + 112);
  v29 = 3;
  sub_2146DA388();
  v28 = *(v3 + 128);
  v29 = 4;
  sub_2146DA388();
  LOBYTE(v28) = *(v3 + 144);
  v29 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907588, &qword_2146F4AB8);
  sub_2142F4DE0();
  sub_2146DA388();
  LOBYTE(v28) = *(v3 + 145);
  v29 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9075A0, &qword_2146F4AC0);
  sub_2142F4EB8();
  sub_2146DA388();
  LOBYTE(v28) = *(v3 + 146);
  v29 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9075B8, &qword_2146F4AC8);
  sub_2142F4F90();
  sub_2146DA388();
  v13 = type metadata accessor for IDSHealthInvitation(0);
  v14 = *(v13 + 48);
  v25 = v13;
  v26 = v14;
  LOBYTE(v28) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907568, &unk_2146F4AA0);
  sub_2142F5068();
  sub_2146DA388();
  v26 = v25[13];
  LOBYTE(v28) = 9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v16 = sub_2142EC30C();
  v26 = v15;
  v24 = v16;
  sub_2146DA388();
  v17 = v25[14];
  LOBYTE(v28) = 10;
  sub_2146DA388();
  v18 = v25[15];
  LOBYTE(v28) = 11;
  sub_2146DA388();
  v19 = v3 + v25[16];
  v20 = *(v19 + 24);
  if (v20 == 1)
  {
    goto LABEL_11;
  }

  *&v28 = *(v19 + 16);
  *(&v28 + 1) = v20;
  v29 = 12;
  sub_2146DA388();
  v21 = v3 + v25[17];
  v22 = *(v21 + 24);
  if (v22 == 1)
  {
    goto LABEL_11;
  }

  *&v28 = *(v21 + 16);
  *(&v28 + 1) = v22;
  v29 = 13;
  sub_2146DA388();
  v23 = v25[18];
  LOBYTE(v28) = 14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  sub_2142F511C();
  sub_2146DA388();
  LOBYTE(v28) = *(v3 + v25[19]);
  v29 = 15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9075F0, &qword_2146F4AD0);
  sub_2142F51D0();
  sub_2146DA388();
  *&v28 = *(v3 + v25[20]);
  v29 = 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907608, &qword_2146F4AD8);
  sub_2142F52A8();
  sub_2146DA388();
  LOBYTE(v28) = *(v3 + v25[21]);
  v29 = 17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907620, &qword_2146F4AE0);
  sub_2142F5380();
  sub_2146DA388();
  if (!*(v3 + v25[22] + 16))
  {
LABEL_11:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *&v28 = *(v3 + v25[22] + 16);
    v29 = 18;
    sub_2146DA388();
    return (*(v27 + 8))(v8, v5);
  }

  return result;
}

double sub_2141528B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, uint64_t a12, unint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, unint64_t a23)
{
  v207 = a2;
  v156 = *(a4 + 32);
  v157 = a10[1];
  v158 = *a10;
  v26 = type metadata accessor for IDSHomeKitInvitation(0);
  v163 = a3;
  sub_213FB2E54(a3, a9 + v26[5], &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(a11, a9 + v26[11], &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(a15, a9 + v26[14], &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(a16, a9 + v26[15], &qword_27C9041D8, &qword_2146ED5C0);
  sub_2144B2AB8(&v203);
  v27 = v204;
  v28 = v205;
  LOBYTE(a3) = v206;
  sub_2144B2AEC(&v198);
  v29 = v199;
  v30 = v200;
  v131 = v201;
  v132 = v202;
  sub_2144B2C30(&v194);
  v133 = v196;
  v134 = v195;
  v140 = v197;
  sub_2144B2D98(&v190);
  v136 = v192;
  v137 = v191;
  v142 = v193;
  sub_2144B2DCC(&v186);
  v138 = v188;
  v139 = v187;
  v143 = v189;
  sub_2144B2E00(&v181);
  v141 = v182;
  v155 = v183;
  v154 = v184;
  v152 = v185;
  sub_2144B2F78(&v176);
  v150 = v177;
  v148 = v178;
  v146 = v179;
  v144 = v180;
  sub_2144B2FB4(v174);
  *(a9 + 16) = v27;
  *(a9 + 24) = v28;
  v31 = a9;
  *(a9 + 32) = a3;
  *a9 = v203;
  v32 = *a4;
  v33 = a4[1];
  v34 = a9 + v26[6];
  *(v34 + 32) = v156;
  *v34 = v32;
  *(v34 + 16) = v33;
  *(a9 + v26[7]) = a5;
  v35 = a9 + v26[8];
  *(v35 + 16) = v29;
  *(v35 + 24) = v30;
  *(v35 + 25) = v131;
  *v35 = v198;
  *(v35 + 26) = v132;
  *(a9 + v26[9]) = a8;
  v36 = (a9 + v26[10]);
  *v36 = v158;
  v36[1] = v157;
  v37 = a9 + v26[12];
  *(v37 + 16) = v134;
  *(v37 + 24) = v133;
  *v37 = v194;
  v135 = v37;
  *(v37 + 32) = v140;
  v38 = a9 + v26[13];
  *(v38 + 16) = v137;
  *(v38 + 24) = v136;
  *v38 = v190;
  *(v38 + 32) = v142;
  v39 = a9 + v26[16];
  *(v39 + 16) = v139;
  *(v39 + 24) = v138;
  *v39 = v186;
  *(v39 + 32) = v143;
  v40 = a9 + v26[17];
  *(v40 + 16) = v141;
  LOBYTE(v37) = v175;
  *v40 = v181;
  *(v40 + 24) = v155;
  *(v40 + 25) = v154;
  *(v40 + 26) = v152;
  v41 = a9 + v26[18];
  *v41 = v176;
  *(v41 + 16) = v150;
  *(v41 + 24) = v148;
  *(v41 + 25) = v146;
  *(v41 + 26) = v144;
  v42 = a9 + v26[19];
  v43 = v174[1];
  *v42 = v174[0];
  *(v42 + 16) = v43;
  *(v42 + 32) = v37;
  v44 = *a9;
  v45 = *(v31 + 8);
  v46 = *(v31 + 16);
  v47 = *(v31 + 24);
  *&v203 = 0xD00000000000001DLL;
  *(&v203 + 1) = 0x800000021478E850;
  v166 = v31;
  LOBYTE(v31) = *(v31 + 32);
  *&v194 = a1;
  *(&v194 + 1) = v207;
  v159 = v31;
  LOBYTE(v190) = v31;
  v204 = 0xD00000000000001CLL;
  v205 = 0x800000021478A360;

  sub_213FDC9D0(v46, v47);
  v48 = v44(&v194, &v190, &v203);
  if (v161)
  {

    sub_213FDC6BC(a22, a23);

LABEL_6:

    sub_213FDC6BC(a12, a13);

    sub_213FB2DF4(a16, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(a15, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v163, &qword_27C913090, &unk_2146E9DB0);
    v59 = *(v166 + 8);
    v60 = *(v166 + 16);
    v61 = *(v166 + 24);

    sub_213FDC6D0(v60, v61);
    *v166 = v44;
    *(v166 + 8) = v45;
    *(v166 + 16) = v46;
    *(v166 + 24) = v47;
    *(v166 + 32) = v159;
    v62 = v166;
LABEL_7:
    sub_21432887C(v62, type metadata accessor for IDSHomeKitInvitation);
    return result;
  }

  v151 = v39;
  v153 = v38;
  v147 = v41;
  v149 = v40;
  v145 = v42;
  if ((v48 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v58 = 0xD00000000000001DLL;
    v58[1] = 0x800000021478E850;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FDC6BC(a22, a23);

    goto LABEL_6;
  }

  sub_213FDC6D0(v46, v47);

  v49 = *(v166 + 8);
  v50 = *(v166 + 16);
  v51 = *(v166 + 24);

  sub_213FDC6D0(v50, v51);
  *v166 = v44;
  *(v166 + 8) = v45;
  v52 = v207;
  *(v166 + 16) = a1;
  *(v166 + 24) = v52;
  *(v166 + 32) = v159;
  v53 = v35;
  v54 = *v35;
  v55 = *(v53 + 8);
  v170 = *(v53 + 16);
  v162 = *(v53 + 24);
  v160 = *(v53 + 25);
  v56 = *(v53 + 26);
  *&v194 = a6;
  BYTE8(v194) = a7 & 1;
  LODWORD(v207) = v56;
  LOBYTE(v190) = v56;
  *&v203 = 0xD000000000000025;
  *(&v203 + 1) = 0x800000021478E870;
  v204 = 0xD00000000000001CLL;
  v205 = 0x800000021478A360;

  v57 = v54(&v194, &v190, &v203);
  if ((v57 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v69 = 0xD000000000000025;
    v69[1] = 0x800000021478E870;
    v69[2] = 0xD00000000000001CLL;
    v69[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a22, a23);
    sub_213FDC6BC(a12, a13);

    sub_213FB2DF4(a16, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(a15, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v163, &qword_27C913090, &unk_2146E9DB0);
    v70 = *(v53 + 8);

    *v53 = v54;
    *(v53 + 8) = v55;
    *(v53 + 16) = v170;
    *(v53 + 24) = v162;
    *(v53 + 25) = v160;
    *(v53 + 26) = v207;
    v62 = v166;
    goto LABEL_7;
  }

  v64 = *(v53 + 8);

  *v53 = v54;
  *(v53 + 8) = v55;
  *(v53 + 16) = a6;
  *(v53 + 24) = a7 & 1;
  *(v53 + 25) = 0;
  *(v53 + 26) = v207;
  v65 = *(v135 + 8);
  v67 = *(v135 + 16);
  v66 = *(v135 + 24);
  v68 = *(v135 + 32);
  *&v203 = *v135;
  *(&v203 + 1) = v65;
  v204 = v67;
  v205 = v66;
  v206 = v68;

  sub_21404F7E0(v67, v66);
  sub_214032118(a12, a13, 2, 0xD000000000000028, 0x800000021478E8A0, 0xD00000000000001CLL, 0x800000021478A360);

  v71 = v204;
  v72 = v205;
  v73 = v206;
  v74 = *(v135 + 8);
  v75 = *(v135 + 16);
  v76 = *(v135 + 24);

  sub_214032564(v75, v76);
  *v135 = v203;
  *(v135 + 16) = v71;
  *(v135 + 24) = v72;
  *(v135 + 32) = v73;
  v78 = *v153;
  v77 = *(v153 + 8);
  v79 = *(v153 + 16);
  v80 = *(v153 + 24);
  v81 = *(v153 + 32);
  v194 = a14;
  LODWORD(v207) = v81;
  LOBYTE(v190) = v81;
  *&v203 = 0xD00000000000002ALL;
  *(&v203 + 1) = 0x800000021478E8D0;
  v204 = 0xD00000000000001CLL;
  v205 = 0x800000021478A360;

  sub_213FDC9D0(v79, v80);
  v82 = v78(&v194, &v190, &v203);
  if ((v82 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v92 = 0xD00000000000002ALL;
    v92[1] = 0x800000021478E8D0;
    v92[2] = 0xD00000000000001CLL;
    v92[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FDC6BC(a22, a23);

    sub_213FDC6BC(a12, a13);
    sub_213FB2DF4(a16, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(a15, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v163, &qword_27C913090, &unk_2146E9DB0);
    v93 = *(v153 + 8);
    v94 = *(v153 + 16);
    v95 = *(v153 + 24);

    sub_213FDC6D0(v94, v95);
    *v153 = v78;
    *(v153 + 8) = v77;
    *(v153 + 16) = v79;
    *(v153 + 24) = v80;
    *(v153 + 32) = v207;
LABEL_14:
    v62 = v166;
    goto LABEL_7;
  }

  sub_213FDC6D0(v79, v80);

  v83 = *(v153 + 8);
  v84 = *(v153 + 16);
  v85 = *(v153 + 24);

  sub_213FDC6D0(v84, v85);
  *v153 = v78;
  *(v153 + 8) = v77;
  *(v153 + 16) = a14;
  *(v153 + 32) = v207;
  v87 = *v151;
  v86 = *(v151 + 8);
  v88 = *(v151 + 16);
  v89 = *(v151 + 24);
  v90 = *(v151 + 32);
  v194 = a17;
  LODWORD(v207) = v90;
  LOBYTE(v190) = v90;
  *&v203 = 0xD00000000000001BLL;
  *(&v203 + 1) = 0x800000021478E900;
  v204 = 0xD00000000000001CLL;
  v205 = 0x800000021478A360;

  sub_213FDC9D0(v88, v89);
  v171 = v87;
  v91 = v87(&v194, &v190, &v203);
  if ((v91 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v104 = 0xD00000000000001BLL;
    v104[1] = 0x800000021478E900;
    v104[2] = 0xD00000000000001CLL;
    v104[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FDC6BC(a22, a23);

    sub_213FDC6BC(a12, a13);
    sub_213FB2DF4(a16, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(a15, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v163, &qword_27C913090, &unk_2146E9DB0);
    v105 = *(v151 + 8);
    v106 = *(v151 + 16);
    v107 = *(v151 + 24);

    sub_213FDC6D0(v106, v107);
    *v151 = v87;
    *(v151 + 8) = v86;
    *(v151 + 16) = v88;
    *(v151 + 24) = v89;
    *(v151 + 32) = v207;
    goto LABEL_14;
  }

  sub_213FDC6D0(v88, v89);

  v96 = *(v151 + 8);
  v97 = *(v151 + 16);
  v98 = *(v151 + 24);

  sub_213FDC6D0(v97, v98);
  *v151 = v171;
  *(v151 + 8) = v86;
  *(v151 + 16) = a17;
  *(v151 + 32) = v207;
  v99 = *v149;
  v100 = *(v149 + 8);
  v172 = *(v149 + 16);
  v167 = *(v149 + 24);
  v164 = *(v149 + 25);
  v101 = *(v149 + 26);
  *&v194 = a18;
  v102 = v99;
  BYTE8(v194) = a19 & 1;
  LODWORD(v207) = v101;
  LOBYTE(v190) = v101;
  *&v203 = 0xD000000000000024;
  *(&v203 + 1) = 0x800000021478E920;
  v204 = 0xD00000000000001CLL;
  v205 = 0x800000021478A360;

  v103 = v102(&v194, &v190, &v203);
  if ((v103 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v114 = 0xD000000000000024;
    v114[1] = 0x800000021478E920;
    v114[2] = 0xD00000000000001CLL;
    v114[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a22, a23);
    sub_213FDC6BC(a12, a13);

    sub_213FB2DF4(a16, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(a15, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v163, &qword_27C913090, &unk_2146E9DB0);
    v115 = *(v149 + 8);

    *v149 = v102;
    *(v149 + 8) = v100;
    *(v149 + 16) = v172;
    *(v149 + 24) = v167;
    *(v149 + 25) = v164;
    *(v149 + 26) = v207;
    goto LABEL_14;
  }

  v108 = *(v149 + 8);

  *v149 = v102;
  *(v149 + 8) = v100;
  *(v149 + 16) = a18;
  *(v149 + 24) = a19 & 1;
  *(v149 + 25) = 0;
  *(v149 + 26) = v207;
  v110 = *v41;
  v109 = *(v41 + 8);
  v111 = *(v41 + 16);
  LODWORD(v207) = *(v41 + 24);
  v173 = *(v41 + 25);
  v112 = *(v41 + 26);
  *&v194 = a20;
  BYTE8(v194) = a21 & 1;
  LOBYTE(v190) = v112;
  *&v203 = 0xD000000000000030;
  *(&v203 + 1) = 0x800000021478E950;
  v204 = 0xD00000000000001CLL;
  v205 = 0x800000021478A360;

  v113 = v110(&v194, &v190, &v203);
  if (v113)
  {

    v116 = *(v147 + 8);

    *v147 = v110;
    *(v147 + 8) = v109;
    *(v147 + 16) = a20;
    *(v147 + 24) = a21 & 1;
    *(v147 + 25) = 0;
    *(v147 + 26) = v112;
    v117 = *(v145 + 8);
    v119 = *(v145 + 16);
    v118 = *(v145 + 24);
    v120 = *(v145 + 32);
    *&v203 = *v145;
    *(&v203 + 1) = v117;
    v204 = v119;
    v205 = v118;
    v206 = v120;

    sub_21404F7E0(v119, v118);
    sub_214032118(a22, a23, 2, 0xD00000000000003ALL, 0x800000021478E990, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(a22, a23);
    sub_213FDC6BC(a12, a13);
    sub_213FB2DF4(a16, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(a15, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v163, &qword_27C913090, &unk_2146E9DB0);
    v123 = v204;
    v124 = v205;
    v125 = v206;
    v126 = *(v145 + 8);
    v127 = *(v145 + 16);
    v128 = *(v145 + 24);

    sub_214032564(v127, v128);
    result = *&v203;
    *v145 = v203;
    *(v145 + 16) = v123;
    *(v145 + 24) = v124;
    *(v145 + 32) = v125;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v121 = 0xD000000000000030;
    v121[1] = 0x800000021478E950;
    v121[2] = 0xD00000000000001CLL;
    v121[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a22, a23);
    sub_213FDC6BC(a12, a13);

    sub_213FB2DF4(a16, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(a15, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v163, &qword_27C913090, &unk_2146E9DB0);
    v122 = *(v147 + 8);

    *v147 = v110;
    *(v147 + 8) = v109;
    *(v147 + 16) = v111;
    *(v147 + 24) = v207;
    *(v147 + 25) = v173;
    *(v147 + 26) = v112;
    sub_21432887C(v166, type metadata accessor for IDSHomeKitInvitation);
  }

  return result;
}

unint64_t sub_214153D9C(char a1)
{
  result = 0x656D614E656D6F68;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
    case 9:
      v3 = 5;
      goto LABEL_9;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 8:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x5365657469766E69;
      break;
    case 7:
      result = 0x44495555656D6F68;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0x644972657375;
      break;
    case 13:
      result = 0x6974617469766E69;
      break;
    case 14:
      v3 = 11;
LABEL_9:
      result = v3 | 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000025;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_214153F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214368BE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214153F9C(uint64_t a1)
{
  v2 = sub_2142F5458();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214153FD8(uint64_t a1)
{
  v2 = sub_2142F5458();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214154014@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v226 = a2;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  v3 = *(*(v227 - 8) + 64);
  MEMORY[0x28223BE20](v227);
  v228 = &v183[-v4];
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v5 = *(*(v230 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v230);
  v229 = &v183[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v231 = &v183[-v8];
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v9 = *(*(v232 - 8) + 64);
  MEMORY[0x28223BE20](v232);
  v11 = &v183[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9076C0, &qword_2146F4AF0);
  v233 = *(v12 - 8);
  v234 = v12;
  v13 = *(v233 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v183[-v14];
  v16 = type metadata accessor for IDSHomeKitInvitation(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v183[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5458();
  v21 = v268;
  sub_2146DAA08();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v223 = v16;
  v224 = v19;
  v225 = v11;
  v268 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v255) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v22 = v264;
  LOBYTE(v264) = 1;
  sub_2142EC0C4();
  sub_2146DA1C8();
  v232 = *(&v22 + 1);
  v222 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9076D0, &qword_2146F4AF8);
  LOBYTE(v255) = 2;
  sub_2142F54AC();
  sub_2146DA1C8();
  v218 = v264;
  v219 = v265;
  v220 = v266;
  LODWORD(v221) = v267;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v255) = 3;
  v217 = sub_2142E1378();
  sub_2146DA1C8();
  v216 = v24;
  LODWORD(v214) = v264;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v255) = 4;
  v215 = sub_2142E11FC();
  sub_2146DA1C8();
  v213 = v25;
  v26 = v264;
  LODWORD(v25) = BYTE8(v264);
  LOBYTE(v255) = 5;
  sub_2146DA1C8();
  v212 = v25;
  v216 = v26;
  LODWORD(v217) = v264;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9076E8, &qword_2146F4B00);
  LOBYTE(v255) = 6;
  sub_2142F55C8();
  sub_2146DA1C8();
  v211 = *(&v264 + 1);
  v27 = v264;
  LOBYTE(v264) = 7;
  v210 = sub_2142EFBA8();
  sub_2146DA1C8();
  v209 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v255) = 8;
  v208 = sub_2142E1278();
  sub_2146DA1C8();
  v207 = v264;
  LOBYTE(v255) = 9;
  v28 = v15;
  sub_2146DA1C8();
  v206 = v264;
  LOBYTE(v264) = 10;
  sub_2146DA1C8();
  LOBYTE(v264) = 11;
  sub_2142E285C();
  sub_2146DA1C8();
  LOBYTE(v255) = 12;
  sub_2146DA1C8();
  v230 = *(&v264 + 1);
  v29 = v264;
  LOBYTE(v255) = 13;
  sub_2146DA1C8();
  v210 = v264;
  v205 = BYTE8(v264);
  LOBYTE(v255) = 14;
  sub_2146DA1C8();
  v215 = v264;
  LODWORD(v213) = BYTE8(v264);
  LOBYTE(v255) = 15;
  sub_2146DA1C8();
  v227 = 0;
  v208 = *(&v264 + 1);
  v204 = v264;
  v31 = v223;
  v30 = v224;
  sub_213FB2E54(v225, v224 + *(v223 + 20), &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(v231, v30 + v31[11], &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(v229, v30 + v31[14], &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(v228, v30 + v31[15], &qword_27C9041D8, &qword_2146ED5C0);
  sub_2144B2AB8(&v264);
  v33 = v265;
  v32 = v266;
  LOBYTE(v27) = v267;
  sub_2144B2AEC(&v259);
  v187 = v260;
  v185 = v262;
  v186 = v261;
  v184 = v263;
  sub_2144B2C30(&v255);
  v34 = v256;
  v203 = v257;
  v202 = v258;
  sub_2144B2D98(&v251);
  v200 = v253;
  v201 = v252;
  v199 = v254;
  sub_2144B2DCC(&v247);
  v197 = v249;
  v198 = v248;
  v196 = v250;
  sub_2144B2E00(&v242);
  v195 = v243;
  v193 = v245;
  v194 = v244;
  v192 = v246;
  sub_2144B2F78(&v237);
  v191 = v238;
  v189 = v240;
  v190 = v239;
  v188 = v241;
  sub_2144B2FB4(v235);
  v30[2] = v33;
  v30[3] = v32;
  *(v30 + 32) = v27;
  *v30 = v264;
  v35 = v30 + v31[6];
  v36 = *(&v218 + 1);
  *v35 = v218;
  *(v35 + 1) = v36;
  LOBYTE(v36) = v236;
  v37 = v220;
  *(v35 + 2) = v219;
  *(v35 + 3) = v37;
  v35[32] = v221;
  *(v30 + v31[7]) = v214;
  v38 = v30 + v31[8];
  *v38 = v259;
  *(v38 + 2) = v187;
  LOBYTE(v37) = v185;
  v38[24] = v186;
  v38[25] = v37;
  v219 = v38;
  v38[26] = v184;
  *(v30 + v31[9]) = v217;
  v39 = (v30 + v31[10]);
  v40 = v211;
  *v39 = v209;
  v39[1] = v40;
  v41 = v30 + v31[12];
  *v41 = v255;
  v42 = v203;
  *(v41 + 2) = v34;
  *(v41 + 3) = v42;
  *(&v218 + 1) = v41;
  v41[32] = v202;
  v43 = v30 + v31[13];
  *v43 = v251;
  v44 = v200;
  *(v43 + 2) = v201;
  *(v43 + 3) = v44;
  *&v218 = v43;
  v43[32] = v199;
  v45 = v30 + v31[16];
  *v45 = v247;
  v46 = v197;
  *(v45 + 2) = v198;
  *(v45 + 3) = v46;
  v217 = v45;
  v45[32] = v196;
  v47 = v30 + v31[17];
  *v47 = v242;
  *(v47 + 2) = v195;
  LOBYTE(v46) = v193;
  v47[24] = v194;
  v47[25] = v46;
  v214 = v47;
  v47[26] = v192;
  v48 = v30 + v31[18];
  *v48 = v237;
  *(v48 + 2) = v191;
  LOBYTE(v46) = v189;
  v48[24] = v190;
  v48[25] = v46;
  v211 = v48;
  v48[26] = v188;
  v49 = v30 + v31[19];
  v50 = v235[1];
  *v49 = v235[0];
  *(v49 + 1) = v50;
  v209 = v49;
  v49[32] = v36;
  v52 = *v30;
  v51 = v30[1];
  v54 = v30[2];
  v53 = v30[3];
  LODWORD(v46) = *(v30 + 32);
  *&v255 = v222;
  *(&v255 + 1) = v232;
  LODWORD(v220) = v46;
  LOBYTE(v251) = v46;
  *&v264 = 0xD00000000000001DLL;
  *(&v264 + 1) = 0x800000021478E850;
  v265 = 0xD00000000000001CLL;
  v266 = 0x800000021478A360;
  v223 = 0x800000021478A360;

  sub_213FDC9D0(v54, v53);
  v55 = v227;
  v221 = v52;
  v56 = v52(&v255, &v251, &v264);
  v227 = v55;
  if (v55)
  {

LABEL_9:

    sub_213FDC6BC(v207, *(&v207 + 1));
    sub_213FDC6BC(v204, v208);
    sub_213FB2DF4(v228, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v229, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v231, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v225, &qword_27C913090, &unk_2146E9DB0);
    (*(v233 + 8))(v28, v234);
    v72 = v224;
    v73 = v224[1];
    v74 = v224[2];
    v75 = v224[3];

    sub_213FDC6D0(v74, v75);
    *v72 = v221;
    v72[1] = v51;
    v72[2] = v54;
    v72[3] = v53;
    *(v72 + 32) = v220;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v268);
    return sub_21432887C(v224, type metadata accessor for IDSHomeKitInvitation);
  }

  if ((v56 & 1) == 0)
  {
    sub_214031C4C();
    v69 = swift_allocError();
    *v70 = 0xD00000000000001DLL;
    v70[1] = 0x800000021478E850;
    v71 = v223;
    v70[2] = 0xD00000000000001CLL;
    v70[3] = v71;
    v227 = v69;
    swift_willThrow();
    goto LABEL_9;
  }

  sub_213FDC6D0(v54, v53);
  v57 = v223;

  v58 = v224;
  v59 = v224[1];
  v60 = v224[2];
  v61 = v224[3];

  sub_213FDC6D0(v60, v61);
  v62 = v222;
  *v58 = v221;
  v58[1] = v51;
  v63 = v232;
  v58[2] = v62;
  v58[3] = v63;
  *(v58 + 32) = v220;
  v65 = *v219;
  v64 = *(v219 + 8);
  v221 = *(v219 + 16);
  LODWORD(v220) = *(v219 + 24);
  LODWORD(v203) = *(v219 + 25);
  v66 = *(v219 + 26);
  *&v255 = v216;
  BYTE8(v255) = v212;
  LODWORD(v232) = v66;
  LOBYTE(v251) = v66;
  *&v264 = 0xD000000000000025;
  *(&v264 + 1) = 0x800000021478E870;
  v265 = 0xD00000000000001CLL;
  v266 = v57;

  v67 = v227;
  v222 = v65;
  v68 = v65(&v255, &v251, &v264);
  v227 = v67;
  if (v67)
  {

    sub_213FDC6BC(v207, *(&v207 + 1));
    sub_213FDC6BC(v204, v208);
    sub_213FB2DF4(v228, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v229, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v231, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v225, &qword_27C913090, &unk_2146E9DB0);
    (*(v233 + 8))(v28, v234);

LABEL_16:
    v94 = v219;
    v95 = *(v219 + 8);

    v96 = v221;
    *v94 = v222;
    *(v94 + 8) = v64;
    *(v94 + 16) = v96;
    *(v94 + 24) = v220;
    v97 = v203;
LABEL_17:
    *(v94 + 25) = v97;
    *(v94 + 26) = v232;
    goto LABEL_10;
  }

  if ((v68 & 1) == 0)
  {

    sub_214031C4C();
    v91 = swift_allocError();
    *v92 = 0xD000000000000025;
    v92[1] = 0x800000021478E870;
    v93 = v223;
    v92[2] = 0xD00000000000001CLL;
    v92[3] = v93;
    v227 = v91;
    swift_willThrow();

    sub_213FDC6BC(v207, *(&v207 + 1));
    sub_213FDC6BC(v204, v208);

    sub_213FB2DF4(v228, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v229, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v231, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v225, &qword_27C913090, &unk_2146E9DB0);
    (*(v233 + 8))(v28, v234);
    goto LABEL_16;
  }

  v76 = v223;

  v77 = v219;
  v78 = *(v219 + 8);

  *v77 = v222;
  *(v77 + 8) = v64;
  *(v77 + 16) = v216;
  *(v77 + 24) = v212;
  *(v77 + 25) = 0;
  *(v77 + 26) = v232;
  v79 = *(*(&v218 + 1) + 8);
  v81 = *(*(&v218 + 1) + 16);
  v80 = *(*(&v218 + 1) + 24);
  v82 = *(*(&v218 + 1) + 32);
  *&v264 = **(&v218 + 1);
  *(&v264 + 1) = v79;
  v265 = v81;
  v266 = v80;
  v267 = v82;

  sub_21404F7E0(v81, v80);
  v83 = v227;
  sub_214032118(v207, *(&v207 + 1), 2, 0xD000000000000028, 0x800000021478E8A0, 0xD00000000000001CLL, v76);
  v227 = v83;
  if (v83)
  {

    sub_213FDC6BC(v207, *(&v207 + 1));
    sub_213FDC6BC(v204, v208);

    sub_213FB2DF4(v228, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v229, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v231, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v225, &qword_27C913090, &unk_2146E9DB0);
    (*(v233 + 8))(v28, v234);
    v84 = v265;
    v85 = v266;
    v86 = v267;
    v87 = *(&v218 + 1);
LABEL_14:
    v88 = *(v87 + 1);
    v89 = *(v87 + 2);
    v90 = *(v87 + 3);

    sub_214032564(v89, v90);
    *v87 = v264;
    *(v87 + 2) = v84;
    *(v87 + 3) = v85;
    v87[32] = v86;
    goto LABEL_10;
  }

  v98 = v223;

  v99 = v265;
  v100 = v266;
  LODWORD(v232) = v267;
  v101 = *(&v218 + 1);
  v102 = *(*(&v218 + 1) + 8);
  v103 = *(*(&v218 + 1) + 16);
  v104 = *(*(&v218 + 1) + 24);

  sub_214032564(v103, v104);
  *v101 = v264;
  *(v101 + 16) = v99;
  *(v101 + 24) = v100;
  *(v101 + 32) = v232;
  v106 = *v218;
  v105 = *(v218 + 8);
  v107 = *(v218 + 16);
  v108 = *(v218 + 24);
  v109 = *(v218 + 32);
  v255 = v206;
  LODWORD(v222) = v109;
  LOBYTE(v251) = v109;
  *&v264 = 0xD00000000000002ALL;
  *(&v264 + 1) = 0x800000021478E8D0;
  v265 = 0xD00000000000001CLL;
  v266 = v98;

  sub_213FDC9D0(v107, v108);
  v110 = v227;
  v232 = v106;
  v111 = v106(&v255, &v251, &v264);
  v227 = v110;
  if (v110)
  {
    goto LABEL_25;
  }

  if ((v111 & 1) == 0)
  {
    sub_214031C4C();
    v136 = swift_allocError();
    *v137 = 0xD00000000000002ALL;
    v137[1] = 0x800000021478E8D0;
    v138 = v223;
    v137[2] = 0xD00000000000001CLL;
    v137[3] = v138;
    v227 = v136;
    swift_willThrow();

LABEL_25:

    sub_213FDC6BC(v207, *(&v207 + 1));
    sub_213FDC6BC(v204, v208);

    sub_213FB2DF4(v228, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v229, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v231, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v225, &qword_27C913090, &unk_2146E9DB0);
    (*(v233 + 8))(v28, v234);
    v139 = v218;
    v140 = *(v218 + 8);
    v141 = *(v218 + 16);
    v142 = *(v218 + 24);

    sub_213FDC6D0(v141, v142);
    *v139 = v232;
    *(v139 + 8) = v105;
    *(v139 + 16) = v107;
    *(v139 + 24) = v108;
LABEL_26:
    *(v139 + 32) = v222;
    goto LABEL_10;
  }

  sub_213FDC6D0(v107, v108);
  v112 = v223;

  v113 = v218;
  v114 = *(v218 + 8);
  v115 = *(v218 + 16);
  v116 = *(v218 + 24);

  sub_213FDC6D0(v115, v116);
  *v113 = v232;
  *(v113 + 8) = v105;
  v117 = *(&v206 + 1);
  *(v113 + 16) = v206;
  *(v113 + 24) = v117;
  *(v113 + 32) = v222;
  v119 = *v217;
  v118 = *(v217 + 8);
  v121 = *(v217 + 16);
  v120 = *(v217 + 24);
  v122 = *(v217 + 32);
  *&v255 = v29;
  *(&v255 + 1) = v230;
  LODWORD(v222) = v122;
  LOBYTE(v251) = v122;
  *&v264 = 0xD00000000000001BLL;
  *(&v264 + 1) = 0x800000021478E900;
  v265 = 0xD00000000000001CLL;
  v266 = v112;

  v221 = v120;
  sub_213FDC9D0(v121, v120);
  v123 = v227;
  v232 = v119;
  v124 = v119(&v255, &v251, &v264);
  v227 = v123;
  if (v123)
  {
LABEL_28:

    sub_213FDC6BC(v207, *(&v207 + 1));
    sub_213FDC6BC(v204, v208);

    sub_213FB2DF4(v228, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v229, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v231, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v225, &qword_27C913090, &unk_2146E9DB0);
    (*(v233 + 8))(v28, v234);
    v139 = v217;
    v146 = *(v217 + 8);
    v147 = *(v217 + 16);
    v148 = *(v217 + 24);

    sub_213FDC6D0(v147, v148);
    *v139 = v232;
    *(v139 + 8) = v118;
    v149 = v221;
    *(v139 + 16) = v121;
    *(v139 + 24) = v149;
    goto LABEL_26;
  }

  if ((v124 & 1) == 0)
  {
    sub_214031C4C();
    v143 = swift_allocError();
    *v144 = 0xD00000000000001BLL;
    v144[1] = 0x800000021478E900;
    v145 = v223;
    v144[2] = 0xD00000000000001CLL;
    v144[3] = v145;
    v227 = v143;
    swift_willThrow();

    goto LABEL_28;
  }

  sub_213FDC6D0(v121, v221);
  v125 = v223;

  v126 = v217;
  v127 = *(v217 + 8);
  v128 = *(v217 + 16);
  v129 = *(v217 + 24);

  sub_213FDC6D0(v128, v129);
  *v126 = v232;
  *(v126 + 8) = v118;
  v130 = v230;
  *(v126 + 16) = v29;
  *(v126 + 24) = v130;
  *(v126 + 32) = v222;
  v132 = *v214;
  v131 = *(v214 + 1);
  v230 = *(v214 + 2);
  LODWORD(v222) = v214[24];
  LODWORD(v221) = v214[25];
  v133 = v214[26];
  *&v255 = v210;
  BYTE8(v255) = v205;
  LODWORD(v232) = v133;
  LOBYTE(v251) = v133;
  *&v264 = 0xD000000000000024;
  *(&v264 + 1) = 0x800000021478E920;
  v265 = 0xD00000000000001CLL;
  v266 = v125;

  v134 = v227;
  v135 = v132(&v255, &v251, &v264);
  v227 = v134;
  if (v134)
  {
    sub_213FDC6BC(v207, *(&v207 + 1));
    sub_213FDC6BC(v204, v208);
    sub_213FB2DF4(v228, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v229, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v231, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v225, &qword_27C913090, &unk_2146E9DB0);
    (*(v233 + 8))(v28, v234);

LABEL_33:
    v94 = v214;
    v162 = *(v214 + 1);

    *v94 = v132;
    *(v94 + 8) = v131;
    *(v94 + 16) = v230;
    *(v94 + 24) = v222;
    v97 = v221;
    goto LABEL_17;
  }

  if ((v135 & 1) == 0)
  {
    sub_214031C4C();
    v159 = swift_allocError();
    *v160 = 0xD000000000000024;
    v160[1] = 0x800000021478E920;
    v161 = v223;
    v160[2] = 0xD00000000000001CLL;
    v160[3] = v161;
    v227 = v159;
    swift_willThrow();

    sub_213FDC6BC(v207, *(&v207 + 1));
    sub_213FDC6BC(v204, v208);

    sub_213FB2DF4(v228, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v229, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v231, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v225, &qword_27C913090, &unk_2146E9DB0);
    (*(v233 + 8))(v28, v234);
    goto LABEL_33;
  }

  v150 = v223;

  v151 = v214;
  v152 = *(v214 + 1);

  *v151 = v132;
  *(v151 + 1) = v131;
  *(v151 + 2) = v210;
  v151[24] = v205;
  v151[25] = 0;
  v151[26] = v232;
  v154 = *v211;
  v153 = *(v211 + 1);
  v232 = *(v211 + 2);
  LODWORD(v230) = v211[24];
  LODWORD(v222) = v211[25];
  v155 = v211[26];
  *&v255 = v215;
  BYTE8(v255) = v213;
  v156 = v155;
  LOBYTE(v251) = v155;
  *&v264 = 0xD000000000000030;
  *(&v264 + 1) = 0x800000021478E950;
  v265 = 0xD00000000000001CLL;
  v266 = v150;

  v157 = v227;
  v158 = v154(&v255, &v251, &v264);
  v227 = v157;
  if (v157)
  {
    sub_213FDC6BC(v207, *(&v207 + 1));
    sub_213FDC6BC(v204, v208);
    sub_213FB2DF4(v228, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v229, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v231, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v225, &qword_27C913090, &unk_2146E9DB0);
    (*(v233 + 8))(v28, v234);

LABEL_38:
    v174 = v211;
    v175 = *(v211 + 1);

    *v174 = v154;
    *(v174 + 1) = v153;
    *(v174 + 2) = v232;
    v174[24] = v230;
    v174[25] = v222;
    v174[26] = v156;
    goto LABEL_10;
  }

  if ((v158 & 1) == 0)
  {
    sub_214031C4C();
    v171 = swift_allocError();
    *v172 = 0xD000000000000030;
    v172[1] = 0x800000021478E950;
    v173 = v223;
    v172[2] = 0xD00000000000001CLL;
    v172[3] = v173;
    v227 = v171;
    swift_willThrow();

    sub_213FDC6BC(v207, *(&v207 + 1));
    sub_213FDC6BC(v204, v208);

    sub_213FB2DF4(v228, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v229, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v231, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v225, &qword_27C913090, &unk_2146E9DB0);
    (*(v233 + 8))(v28, v234);
    goto LABEL_38;
  }

  v163 = v223;

  v164 = v211;
  v165 = *(v211 + 1);

  *v164 = v154;
  *(v164 + 1) = v153;
  *(v164 + 2) = v215;
  v164[24] = v213;
  v164[25] = 0;
  v164[26] = v156;
  v166 = *(v209 + 1);
  v168 = *(v209 + 2);
  v167 = *(v209 + 3);
  v169 = v209[32];
  *&v264 = *v209;
  *(&v264 + 1) = v166;
  v265 = v168;
  v266 = v167;
  v267 = v169;

  sub_21404F7E0(v168, v167);
  v170 = v227;
  sub_214032118(v204, v208, 2, 0xD00000000000003ALL, 0x800000021478E990, 0xD00000000000001CLL, v163);
  v227 = v170;
  if (v170)
  {
    sub_213FDC6BC(v207, *(&v207 + 1));
    sub_213FDC6BC(v204, v208);

    sub_213FB2DF4(v228, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v229, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v231, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v225, &qword_27C913090, &unk_2146E9DB0);
    (*(v233 + 8))(v28, v234);
    v84 = v265;
    v85 = v266;
    v86 = v267;
    v87 = v209;
    goto LABEL_14;
  }

  sub_213FDC6BC(v207, *(&v207 + 1));
  sub_213FDC6BC(v204, v208);

  sub_213FB2DF4(v228, &qword_27C9041D8, &qword_2146ED5C0);
  sub_213FB2DF4(v229, &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2DF4(v231, &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2DF4(v225, &qword_27C913090, &unk_2146E9DB0);
  (*(v233 + 8))(v28, v234);
  v176 = v265;
  v177 = v266;
  v178 = v267;
  v179 = v209;
  v180 = *(v209 + 1);
  v181 = *(v209 + 2);
  v182 = *(v209 + 3);

  sub_214032564(v181, v182);
  *v179 = v264;
  *(v179 + 2) = v176;
  *(v179 + 3) = v177;
  v179[32] = v178;
  sub_214328704(v224, v226, type metadata accessor for IDSHomeKitInvitation);
  return __swift_destroy_boxed_opaque_existential_1(v268);
}

uint64_t sub_214156008(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907700, &qword_2146F4B08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v47 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5458();
  sub_2146DAA28();
  v11 = *(v3 + 24);
  if (v11 != 1)
  {
    v52 = *(v3 + 16);
    v53 = v11;
    v57 = 0;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    if (v2)
    {
      return (*(v6 + 8))(v9, v5);
    }

    v51 = v12;
    v13 = type metadata accessor for IDSHomeKitInvitation(0);
    v14 = v13[5];
    LOBYTE(v52) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    sub_2142EC30C();
    sub_2146DA388();
    v15 = v3 + v13[6];
    v16 = *(v15 + 8);
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    v19 = *(v15 + 32);
    v52 = *v15;
    v53 = v16;
    v54 = v17;
    v55 = v18;
    v56 = v19;
    v57 = 2;
    sub_2142F56E4(v52, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9076D0, &qword_2146F4AF8);
    sub_2142F5728();
    sub_2146DA388();
    sub_2142F5584(v52, v53);
    LOBYTE(v52) = *(v3 + v13[7]);
    v57 = 3;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v21 = sub_2142E1D30();
    v50 = v20;
    sub_2146DA388();
    v48 = v21;
    v49 = v13;
    v22 = v3 + v13[8];
    if ((*(v22 + 25) & 1) == 0)
    {
      v23 = *(v22 + 24);
      v52 = *(v22 + 16);
      LOBYTE(v53) = v23 & 1;
      v57 = 4;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
      v25 = sub_2142E1C30();
      sub_2146DA388();
      v47[3] = v25;
      v47[4] = v24;
      v26 = v49;
      LOBYTE(v52) = *(v3 + v49[9]);
      v57 = 5;
      sub_2146DA388();
      v27 = (v3 + v26[10]);
      v28 = v27[1];
      v52 = *v27;
      v53 = v28;
      v57 = 6;
      sub_2142F5800(v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9076E8, &qword_2146F4B00);
      sub_2142F5848();
      sub_2146DA388();
      sub_2142F56A0(v52);
      v50 = v26[11];
      LOBYTE(v52) = 7;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
      v30 = sub_2142EFE18();
      v50 = v29;
      sub_2146DA388();
      v48 = v30;
      v31 = v3 + v26[12];
      v32 = *(v31 + 24);
      if (v32 >> 60 != 11)
      {
        v52 = *(v31 + 16);
        v53 = v32;
        v57 = 8;
        sub_213FDCA18(v52, v32);
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
        v47[2] = sub_2142E1CAC();
        sub_2146DA388();
        sub_213FDC6BC(v52, v53);
        v34 = v3 + v49[13];
        v35 = *(v34 + 24);
        if (v35 != 1)
        {
          v52 = *(v34 + 16);
          v53 = v35;
          v57 = 9;
          sub_2146DA388();
          v47[1] = v33;
          v36 = v49[14];
          LOBYTE(v52) = 10;
          sub_2146DA388();
          v37 = v49[15];
          LOBYTE(v52) = 11;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
          sub_2142E29C4();
          sub_2146DA388();
          v38 = v3 + v49[16];
          v39 = *(v38 + 24);
          if (v39 != 1)
          {
            v52 = *(v38 + 16);
            v53 = v39;
            v57 = 12;
            sub_2146DA388();
            v40 = v3 + v49[17];
            if ((*(v40 + 25) & 1) == 0)
            {
              v41 = *(v40 + 24);
              v52 = *(v40 + 16);
              LOBYTE(v53) = v41 & 1;
              v57 = 13;
              sub_2146DA388();
              v42 = v3 + v49[18];
              if ((*(v42 + 25) & 1) == 0)
              {
                v43 = *(v42 + 24);
                v52 = *(v42 + 16);
                LOBYTE(v53) = v43 & 1;
                v57 = 14;
                sub_2146DA388();
                v45 = v3 + v49[19];
                v46 = *(v45 + 24);
                if (v46 >> 60 != 11)
                {
                  v52 = *(v45 + 16);
                  v53 = v46;
                  v57 = 15;
                  sub_213FDCA18(v52, v46);
                  sub_2146DA388();
                  sub_213FDC6BC(v52, v53);
                  return (*(v6 + 8))(v9, v5);
                }
              }
            }
          }
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214156794@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_21415679C()
{
  if (*v0)
  {
    return 0x5279614472616579;
  }

  else
  {
    return 0x527961446B656577;
  }
}

uint64_t sub_2141567D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x527961446B656577 && a2 == 0xEC00000073656C75;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5279614472616579 && a2 == 0xEC00000073656C75)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2141568B8(uint64_t a1)
{
  v2 = sub_2142F5920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141568F4(uint64_t a1)
{
  v2 = sub_2142F5920();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214156930@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907728, &qword_2146F4B10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5920();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907738, &qword_2146F4B18);
    v15 = 0;
    sub_2142F5974();
    sub_2146DA1C8();
    v11 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907760, &qword_2146F4B28);
    v15 = 1;
    sub_2142F5AD0();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214156B38(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907788, &qword_2146F4B38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5920();

  sub_2146DAA28();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907738, &qword_2146F4B18);
  sub_2142F5C08();
  sub_2146DA388();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907760, &qword_2146F4B28);
    sub_2142F5D64();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_214156D40@<X0>(unint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, char a4@<W3>, unint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v8 = v7;
  sub_2144B37F4(&v56);
  v14 = v56;
  v13 = v57;
  v49 = v59;
  v76 = *(&v59 + 3);
  v77 = HIBYTE(v59);
  v50 = v60;
  v52 = v61;
  v37 = v58;
  v38 = v62;
  v43 = v63;
  v51 = v65;
  v75 = v67;
  v74 = v66;
  v48 = v68;
  v44 = v69;
  v42 = v70;
  v41 = v71;
  v46 = BYTE2(v59);
  v47 = v73;
  v80 = BYTE1(v59);
  v39 = v64;
  v40 = v72;
  v79 = v64;
  v78 = v72;
  v54 = a1;
  v55 = a2 & 1;
  v53 = BYTE2(v59);
  v56 = 0xD00000000000002ELL;
  v57 = 0x800000021478E9D0;
  v58 = 0xD00000000000001CLL;
  v59 = 0x800000021478A360;

  v45 = v14;
  v15 = v14(&v54, &v53, &v56);
  if (v8)
  {

LABEL_6:
    v20 = v48;
    v19 = v13;
    v21 = v44;
    v17 = v43;

    v22 = v37;
    v23 = v38;
    v24 = v47;
    v25 = v39;
LABEL_7:
    v56 = v45;
    v57 = v19;
    v58 = v22;
    LOBYTE(v59) = v49;
    BYTE1(v59) = v80;
    BYTE2(v59) = v46;
    *(&v59 + 3) = v76;
    HIBYTE(v59) = v77;
    v60 = v50;
    v61 = v52;
    v62 = v23;
    v63 = v17;
    v64 = v25;
    v65 = v51;
    v66 = v74;
    v67 = v75;
    v68 = v20;
    v69 = v21;
    v70 = v42;
    v71 = v41;
    v72 = v40;
    v73 = v24;
    return sub_21404A864(&v56);
  }

  v32 = a1;
  v33 = a3;
  if ((v15 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD00000000000002ELL;
    v18[1] = 0x800000021478E9D0;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  v49 = a2 & 1;

  v80 = 0;
  v54 = a3;
  v55 = a4 & 1;
  v53 = v51;
  v56 = 0xD00000000000002CLL;
  v57 = 0x800000021478EA00;
  v58 = 0xD00000000000001CLL;
  v59 = 0x800000021478A360;

  v16 = v50(&v54, &v53, &v56);
  v17 = v43;
  v24 = v47;
  v21 = v44;
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD00000000000002CLL;
    v28[1] = 0x800000021478EA00;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();
    v20 = v48;

    v22 = a1;
    v25 = v39;
    v23 = v38;
LABEL_11:
    v19 = v13;
    goto LABEL_7;
  }

  v17 = a4 & 1;

  v79 = 0;
  v54 = a5;
  v55 = a6 & 1;
  v53 = v47;
  v56 = 0xD000000000000032;
  v57 = 0x800000021478EA30;
  v58 = 0xD00000000000001CLL;
  v59 = 0x800000021478A360;

  v27 = v48(&v54, &v53, &v56);
  v20 = v48;
  v23 = v33;
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000032;
    v31[1] = 0x800000021478EA30;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();

    v25 = v79;
    v22 = v32;
    goto LABEL_11;
  }

  v78 = 0;
  v29 = v80;
  v30 = v79;
  *a7 = v45;
  *(a7 + 8) = v13;
  *(a7 + 16) = v32;
  *(a7 + 24) = v49;
  *(a7 + 25) = v29;
  *(a7 + 26) = v46;
  *(a7 + 27) = v76;
  *(a7 + 31) = v77;
  *(a7 + 32) = v50;
  *(a7 + 40) = v52;
  *(a7 + 48) = v33;
  *(a7 + 56) = v17;
  *(a7 + 57) = v30;
  *(a7 + 58) = v51;
  *(a7 + 59) = v74;
  *(a7 + 63) = v75;
  *(a7 + 64) = v48;
  *(a7 + 72) = v44;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6 & 1;
  *(a7 + 90) = v47;
  return result;
}

uint64_t sub_21415728C()
{
  v1 = 0x656D6954646E65;
  if (*v0 != 1)
  {
    v1 = 0x6854664F73796164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D69547472617473;
  }
}

uint64_t sub_2141572F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143690E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214157320(uint64_t a1)
{
  v2 = sub_2142F5E9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21415735C(uint64_t a1)
{
  v2 = sub_2142F5E9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214157398@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9077C0, &qword_2146F4B40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5E9C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v71) = 0;
  sub_2142E11FC();
  sub_2146DA1C8();
  v70 = a2;
  v105 = v78;
  v11 = v79;
  LOBYTE(v71) = 1;
  sub_2146DA1C8();
  v69 = v11;
  v67 = v78;
  v12 = v79;
  v95 = 2;
  sub_2146DA1C8();
  v51 = v12;
  v50 = v96;
  v49 = v97;
  sub_2144B37F4(&v78);
  v14 = v79;
  v68 = v78;
  v53 = v80;
  v52 = v81;
  v102 = *(&v81 + 3);
  v103 = HIBYTE(v81);
  v66 = v82;
  v54 = v83;
  v59 = v84;
  v65 = v86;
  v100 = v88;
  v99 = v87;
  v62 = v89;
  v64 = v90;
  v58 = v91;
  v57 = v92;
  v63 = v94;
  v104 = BYTE1(v81);
  v55 = v85;
  v101 = v85;
  v56 = v93;
  v98 = v93;
  *&v71 = v105;
  BYTE8(v71) = v69;
  v60 = BYTE2(v81);
  LOBYTE(v76) = BYTE2(v81);
  v78 = 0xD00000000000002ELL;
  v79 = 0x800000021478E9D0;
  v80 = 0xD00000000000001CLL;
  v81 = 0x800000021478A360;

  v61 = v14;
  v15 = v68(&v71, &v76, &v78);
  v48 = 0x800000021478A360;
  if ((v15 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD00000000000002ELL;
    v20[1] = 0x800000021478E9D0;
    v21 = v48;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = v21;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
    v22 = v62;
    v17 = v61;
    v19 = v59;

    v23 = v53;
    v24 = v52;
LABEL_7:
    v25 = v55;
    v26 = v54;
    goto LABEL_8;
  }

  v16 = v48;

  v17 = v61;

  v104 = 0;
  *&v71 = v67;
  BYTE8(v71) = v51;
  LOBYTE(v76) = v65;
  v78 = 0xD00000000000002CLL;
  v79 = 0x800000021478EA00;
  v80 = 0xD00000000000001CLL;
  v81 = v16;

  v18 = (v66)(&v71, &v76, &v78);
  v19 = v59;
  if ((v18 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD00000000000002CLL;
    v31[1] = 0x800000021478EA00;
    v32 = v48;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = v32;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
    v22 = v62;

    v24 = v69;
    v23 = v105;
    goto LABEL_7;
  }

  v27 = v48;

  v101 = 0;
  v76 = v50;
  v28 = v49;
  v77 = v49;
  LOBYTE(v71) = v63;
  v78 = 0xD000000000000032;
  v79 = 0x800000021478EA30;
  v80 = 0xD00000000000001CLL;
  v81 = v27;

  v29 = v62;
  v30 = v62(&v76, &v71, &v78);
  v22 = v29;
  if (v30)
  {

    (*(v6 + 8))(v9, v5);
    v33 = v64;

    v98 = 0;
    *&v71 = v68;
    *(&v71 + 1) = v17;
    *&v72 = v105;
    BYTE8(v72) = v69;
    v59 = v104;
    BYTE9(v72) = v104;
    v34 = v60;
    BYTE10(v72) = v60;
    *(&v72 + 11) = v102;
    HIBYTE(v72) = v103;
    v73 = v66;
    v35 = *(&v66 + 1);
    *&v74 = v67;
    v36 = v28;
    v37 = v51;
    BYTE8(v74) = v51;
    LODWORD(v58) = v101;
    BYTE9(v74) = v101;
    v38 = v65;
    BYTE10(v74) = v65;
    *(&v74 + 11) = v99;
    HIBYTE(v74) = v100;
    *v75 = v29;
    v39 = v50;
    *&v75[8] = v33;
    *&v75[16] = v50;
    v75[24] = v36;
    v75[25] = 0;
    v40 = v63;
    v75[26] = v63;
    v41 = v72;
    v42 = v70;
    *v70 = v71;
    v42[1] = v41;
    v43 = v73;
    v44 = v74;
    v45 = *v75;
    *(v42 + 75) = *&v75[11];
    v42[3] = v44;
    v42[4] = v45;
    v42[2] = v43;
    sub_21404A808(&v71, &v78);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v78 = v68;
    v79 = v61;
    v80 = v105;
    LOBYTE(v81) = v69;
    BYTE1(v81) = v59;
    BYTE2(v81) = v34;
    *(&v81 + 3) = v102;
    HIBYTE(v81) = v103;
    *&v82 = v66;
    *(&v82 + 1) = v35;
    v83 = v67;
    v84 = v37;
    v85 = v58;
    v86 = v38;
    v87 = v99;
    v88 = v100;
    v89 = v62;
    v90 = v64;
    v91 = v39;
    v92 = v49;
    v93 = 0;
    v94 = v40;
    return sub_21404A864(&v78);
  }

  sub_214031C4C();
  swift_allocError();
  *v46 = 0xD000000000000032;
  v46[1] = 0x800000021478EA30;
  v47 = v48;
  v46[2] = 0xD00000000000001CLL;
  v46[3] = v47;
  swift_willThrow();
  (*(v6 + 8))(v9, v5);

  v25 = v101;
  v26 = v67;
  v19 = v51;
  v24 = v69;
  v23 = v105;
LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(a1);
  v78 = v68;
  v79 = v17;
  v80 = v23;
  LOBYTE(v81) = v24;
  BYTE1(v81) = v104;
  BYTE2(v81) = v60;
  *(&v81 + 3) = v102;
  HIBYTE(v81) = v103;
  v82 = v66;
  v83 = v26;
  v84 = v19;
  v85 = v25;
  v86 = v65;
  v88 = v100;
  v87 = v99;
  v89 = v22;
  v90 = v64;
  v91 = v58;
  v92 = v57;
  v93 = v56;
  v94 = v63;
  return sub_21404A864(&v78);
}

uint64_t sub_214157E4C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9077D0, &qword_2146F4B48);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 25);
  v18 = *(v1 + 48);
  v23 = *(v1 + 56);
  v17 = *(v1 + 57);
  v16 = *(v1 + 80);
  v10 = *(v1 + 88);
  v14 = *(v1 + 89);
  v15 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5E9C();
  sub_2146DAA28();
  if (v9)
  {
LABEL_9:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v21 = v7;
  v22 = v8 & 1;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  sub_2142E1C30();
  v12 = v19;
  sub_2146DA388();
  if (!v12)
  {
    if ((v17 & 1) == 0)
    {
      v21 = v18;
      v22 = v23 & 1;
      v24 = 1;
      sub_2146DA388();
      if ((v14 & 1) == 0)
      {
        v21 = v16;
        v22 = v15 & 1;
        v24 = 2;
        sub_2146DA388();
        return (*(v20 + 8))(v6, v3);
      }
    }

    goto LABEL_9;
  }

  return (*(v20 + 8))(v6, v3);
}

uint64_t sub_214158124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21408AC04(a1, a3, &qword_27C913090, &unk_2146E9DB0);
  v5 = type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule(0);
  return sub_21408AC04(a2, a3 + *(v5 + 20), &qword_27C913090, &unk_2146E9DB0);
}

uint64_t sub_2141581A0()
{
  if (*v0)
  {
    result = 0x65746144646E65;
  }

  else
  {
    result = 0x7461447472617473;
  }

  *v0;
  return result;
}

uint64_t sub_2141581E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2141582C4(uint64_t a1)
{
  v2 = sub_2142F5EF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214158300(uint64_t a1)
{
  v2 = sub_2142F5EF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21415833C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9077D8, &qword_2146F4B50);
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5EF0();
  sub_2146DAA08();
  if (!v2)
  {
    v16 = v22;
    v25 = 0;
    sub_2142EC0C4();
    sub_2146DA1C8();
    v24 = 1;
    sub_2146DA1C8();
    (*(v16 + 8))(v14, v23);
    v18 = v21;
    sub_21408AC04(v10, v21, &qword_27C913090, &unk_2146E9DB0);
    v19 = type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule(0);
    sub_21408AC04(v8, v18 + *(v19 + 20), &qword_27C913090, &unk_2146E9DB0);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141585D4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9077E8, &qword_2146F4B58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5EF0();
  sub_2146DAA28();
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  sub_2142EC30C();
  sub_2146DA388();
  if (!v1)
  {
    v9 = *(type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule(0) + 20);
    v11[14] = 1;
    sub_2146DA388();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2141587A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a2;
  v8 = type metadata accessor for IDSInvitationContext(0);
  v40 = a4;
  sub_2143287C0(a4, a5 + *(v8 + 24), type metadata accessor for IDSInvitationContextType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2140676DC;
  *(v10 + 24) = 0;
  *(inited + 32) = v10;
  sub_214042B80(inited, &v47);
  v11 = v47;
  v12 = v48;
  v13 = v49;
  v14 = v50;
  v15 = v51;
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2146EA720;
  *(v17 + 16) = sub_21438F468;
  *(v17 + 24) = v18;
  *(v16 + 32) = v17;
  sub_21404328C(v16, &v43);
  v19 = v44;
  v20 = v45;
  v21 = v46;
  *a5 = v11;
  *(a5 + 8) = v12;
  *(a5 + 16) = v13;
  *(a5 + 24) = v14;
  *(a5 + 32) = v15;
  *(a5 + 40) = v43;
  *(a5 + 56) = v19;
  *(a5 + 64) = v20;
  *(a5 + 65) = v21;
  *&v43 = a1;
  *(&v43 + 1) = v52;
  v42[0] = v15;
  v47 = 0xD00000000000001BLL;
  v48 = 0x800000021478EA70;
  v49 = 0xD00000000000001CLL;
  v50 = 0x800000021478A360;

  v22 = v11(&v43, v42, &v47);
  if (v39)
  {

LABEL_6:

    sub_21432887C(v40, type metadata accessor for IDSInvitationContextType);
    v31 = *(a5 + 8);
    v32 = *(a5 + 24);

    *a5 = v11;
    *(a5 + 8) = v12;
    *(a5 + 16) = v13;
    *(a5 + 24) = v14;
    *(a5 + 32) = v15;
    return sub_21432887C(a5, type metadata accessor for IDSInvitationContext);
  }

  if ((v22 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD00000000000001BLL;
    v30[1] = 0x800000021478EA70;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  v23 = *(a5 + 8);
  v24 = *(a5 + 24);

  *a5 = v11;
  *(a5 + 8) = v12;
  v25 = v52;
  *(a5 + 16) = a1;
  *(a5 + 24) = v25;
  *(a5 + 32) = v15;
  v27 = *(a5 + 40);
  v26 = *(a5 + 48);
  v52 = *(a5 + 56);
  v28 = *(a5 + 65);
  v42[0] = *(a5 + 64);
  *&v43 = a3;
  v41 = v28;
  v47 = 0xD000000000000020;
  v48 = 0x800000021478EA90;
  v49 = 0xD00000000000001CLL;
  v50 = 0x800000021478A360;

  v29 = v27(&v43, &v41, &v47);
  if ((v29 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD000000000000020;
    v35[1] = 0x800000021478EA90;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = 0x800000021478A360;
    swift_willThrow();
    sub_21432887C(v40, type metadata accessor for IDSInvitationContextType);
    v36 = v42[0];
    v37 = *(a5 + 48);

    *(a5 + 40) = v27;
    *(a5 + 48) = v26;
    *(a5 + 56) = v52;
    *(a5 + 64) = v36;
    *(a5 + 65) = v28;
    return sub_21432887C(a5, type metadata accessor for IDSInvitationContext);
  }

  sub_21432887C(v40, type metadata accessor for IDSInvitationContextType);
  v34 = *(a5 + 48);

  *(a5 + 40) = v27;
  *(a5 + 48) = v26;
  *(a5 + 56) = a3;
  *(a5 + 64) = 0;
  *(a5 + 65) = v28;
  return result;
}

uint64_t sub_214158C6C()
{
  v1 = 0x54747865746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x747865746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616D65686373;
  }
}

uint64_t sub_214158CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436920C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214158CF4(uint64_t a1)
{
  v2 = sub_2142F5F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214158D30(uint64_t a1)
{
  v2 = sub_2142F5F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214158D6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = type metadata accessor for IDSInvitationContextType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9077F0, &qword_2146F4B60);
  v76 = *(v7 - 8);
  v8 = *(v76 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v65 - v9;
  v11 = type metadata accessor for IDSInvitationContext(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v15 = a1[4];
  v89 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2142F5F44();
  v17 = v77;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v89);
  }

  v77 = v6;
  v18 = v76;
  v74 = v14;
  LOBYTE(v84) = 0;
  v19 = v10;
  v20 = sub_2146DA168();
  v22 = v21;
  v23 = v20;
  LOBYTE(v84) = 1;
  v72 = sub_2146DA1A8();
  LOBYTE(v84) = 2;
  sub_214328930(&qword_27C905090, type metadata accessor for IDSInvitationContextType);
  v24 = v77;
  sub_2146DA1C8();
  v68 = v19;
  v69 = v7;
  v26 = *(v11 + 24);
  v70 = v23;
  v27 = v74;
  sub_2143287C0(v24, v74 + v26, type metadata accessor for IDSInvitationContextType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v73 = v22;
  inited = swift_initStackObject();
  v67 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_2140676DC;
  *(v29 + 24) = 0;
  *(inited + 32) = v29;
  sub_214042B80(inited, &v84);
  v30 = v84;
  v32 = v85;
  v31 = v86;
  v33 = v87;
  v71 = v88;
  v34 = swift_initStackObject();
  *(v34 + 16) = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v35 = swift_allocObject();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2146EA720;
  *(v35 + 16) = sub_21438F468;
  *(v35 + 24) = v36;
  *(v34 + 32) = v35;
  v37 = v34;
  LOBYTE(v34) = v71;
  sub_21404328C(v37, &v80);
  v38 = v81;
  v39 = v82;
  v40 = v83;
  *v27 = v30;
  v27[1] = v32;
  v66 = v31;
  v27[2] = v31;
  v27[3] = v33;
  *(v27 + 32) = v34;
  *(v27 + 5) = v80;
  v27[7] = v38;
  *(v27 + 64) = v39;
  *(v27 + 65) = v40;
  *&v80 = v70;
  *(&v80 + 1) = v73;
  v79[0] = v34;
  v84 = 0xD00000000000001BLL;
  v85 = 0x800000021478EA70;
  v86 = 0xD00000000000001CLL;
  v87 = 0x800000021478A360;
  *&v67 = v33;

  v41 = v32;
  v42 = v30(&v80, v79, &v84);
  v43 = v30;
  v44 = v70;
  if (v42)
  {
    v66 = 0;

    v45 = v74;
    v46 = v74[1];
    v52 = v73;
    v47 = v74[3];

    *v45 = v43;
    v45[1] = v41;
    v45[2] = v44;
    v45[3] = v52;
    *(v45 + 32) = v71;
    v49 = v45[5];
    v48 = v45[6];
    v50 = v45[7];
    v51 = *(v45 + 64);
    LODWORD(v52) = *(v45 + 65);
    v79[0] = v51;
    *&v80 = v72;
    v78 = v52;
    v84 = 0xD000000000000020;
    v85 = 0x800000021478EA90;
    v86 = 0xD00000000000001CLL;
    v87 = 0x800000021478A360;

    v53 = v66;
    v73 = v49;
    v54 = v49(&v80, &v78, &v84);
    if (v53)
    {
      v75 = v50;
      sub_21432887C(v77, type metadata accessor for IDSInvitationContextType);
      (*(v18 + 8))(v68, v69);

LABEL_12:
      v57 = v74;
      v64 = v74[6];

      *(v57 + 40) = v73;
      *(v57 + 48) = v48;
      *(v57 + 56) = v75;
      *(v57 + 64) = v51;
      *(v57 + 65) = v52;
      goto LABEL_8;
    }

    v71 = v52;
    v52 = v69;
    if ((v54 & 1) == 0)
    {
      v75 = v50;
      sub_214031C4C();
      swift_allocError();
      *v63 = 0xD000000000000020;
      v63[1] = 0x800000021478EA90;
      v63[2] = 0xD00000000000001CLL;
      v63[3] = 0x800000021478A360;
      swift_willThrow();
      sub_21432887C(v77, type metadata accessor for IDSInvitationContextType);
      (*(v18 + 8))(v68, v52);
      v51 = v79[0];
      LOBYTE(v52) = v71;
      goto LABEL_12;
    }

    sub_21432887C(v77, type metadata accessor for IDSInvitationContextType);
    (*(v18 + 8))(v68, v52);
    v61 = v74;
    v62 = v74[6];

    *(v61 + 40) = v73;
    *(v61 + 48) = v48;
    *(v61 + 56) = v72;
    *(v61 + 64) = 0;
    *(v61 + 65) = v71;
    sub_214328704(v61, v75, type metadata accessor for IDSInvitationContext);
    return __swift_destroy_boxed_opaque_existential_1(v89);
  }

  sub_214031C4C();
  swift_allocError();
  *v55 = 0xD00000000000001BLL;
  v55[1] = 0x800000021478EA70;
  v55[2] = 0xD00000000000001CLL;
  v55[3] = 0x800000021478A360;
  swift_willThrow();

  v56 = v71;
  sub_21432887C(v77, type metadata accessor for IDSInvitationContextType);
  (*(v76 + 8))(v68, v69);
  v57 = v74;
  v58 = v74[1];
  v59 = v74[3];

  *v57 = v43;
  *(v57 + 8) = v41;
  v60 = v67;
  *(v57 + 16) = v66;
  *(v57 + 24) = v60;
  *(v57 + 32) = v56;
LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v89);
  return sub_21432887C(v57, type metadata accessor for IDSInvitationContext);
}

uint64_t sub_214159680(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907800, &qword_2146F4B68);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5F44();
  sub_2146DAA28();
  if (!*(v4 + 24))
  {
    goto LABEL_6;
  }

  v12 = *(v4 + 16);
  v16[15] = 0;

  sub_2146DA328();
  if (v3)
  {
    (*(v7 + 8))(v10, v6);
  }

  if (*(v4 + 64))
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v14 = *(v4 + 56);
    v16[14] = 1;
    sub_2146DA368();
    v15 = *(type metadata accessor for IDSInvitationContext(0) + 24);
    v16[13] = 2;
    type metadata accessor for IDSInvitationContextType(0);
    sub_214328930(&qword_27C905098, type metadata accessor for IDSInvitationContextType);
    sub_2146DA388();
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t IDSInvitation.init(with:state:expiration:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_2143287C0(a1, a7, type metadata accessor for IDSInvitationContext);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2146F3C70;
  *(v9 + 16) = sub_21438F468;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  sub_21404328C(inited, &v62);
  v11 = v63;
  v12 = v64;
  v13 = v65;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2140676DC;
  *(v15 + 24) = 0;
  *(v14 + 32) = v15;
  sub_214042B80(v14, &v58);
  v16 = v59;
  v17 = v60;
  v18 = v61;
  v19 = type metadata accessor for IDSInvitation(0);
  v20 = a7 + v19[5];
  *v20 = v62;
  *(v20 + 16) = v11;
  *(v20 + 24) = v12;
  *(v20 + 25) = v13;
  v21 = a7 + v19[6];
  *v21 = a3;
  *(v21 + 8) = a4 & 1;
  v22 = a7 + v19[7];
  *v22 = v58;
  *(v22 + 16) = v16;
  *(v22 + 24) = v17;
  *(v22 + 32) = v18;
  v24 = *v20;
  v23 = *(v20 + 8);
  v47 = *(v20 + 16);
  v25 = *(v20 + 24);
  v26 = *(v20 + 25);
  v57[0] = v25;
  *&v62 = a2;
  v50 = v26;
  v56 = v26;
  *&v58 = 0xD000000000000013;
  *(&v58 + 1) = 0x800000021478EAC0;
  v59 = 0xD00000000000001CLL;
  v60 = 0x800000021478A360;

  v27 = v66;
  v28 = v24(&v62, &v56, &v58);
  v66 = v27;
  if (v27)
  {

    sub_21432887C(a1, type metadata accessor for IDSInvitationContext);

LABEL_7:
    v38 = *(v20 + 8);

    *v20 = v24;
    *(v20 + 8) = v23;
    *(v20 + 16) = v47;
    *(v20 + 24) = v25;
    *(v20 + 25) = v50;
    return sub_21432887C(a7, type metadata accessor for IDSInvitation);
  }

  if ((v28 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD000000000000013;
    v37[1] = 0x800000021478EAC0;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = 0x800000021478A360;
    swift_willThrow();
    sub_21432887C(a1, type metadata accessor for IDSInvitationContext);
    v25 = v57[0];
    goto LABEL_7;
  }

  v29 = *(v20 + 8);

  *v20 = v24;
  *(v20 + 8) = v23;
  *(v20 + 16) = a2;
  *(v20 + 24) = 0;
  *(v20 + 25) = v50;
  v31 = *v22;
  v30 = *(v22 + 8);
  v32 = *(v22 + 24);
  v51 = *(v22 + 16);
  v33 = *(v22 + 32);
  *&v62 = a5;
  *(&v62 + 1) = a6;
  v53 = v33;
  v57[0] = v33;
  *&v58 = 0xD000000000000018;
  *(&v58 + 1) = 0x800000021478EAE0;
  v59 = 0xD00000000000001CLL;
  v60 = 0x800000021478A360;

  v34 = v66;
  v35 = v31(&v62, v57, &v58);
  v66 = v34;
  if (v34)
  {

    v36 = a1;
  }

  else
  {
    v36 = a1;
    if (v35)
    {

      sub_21432887C(a1, type metadata accessor for IDSInvitationContext);
      v40 = *(v22 + 8);
      v41 = *(v22 + 24);

      *v22 = v31;
      *(v22 + 8) = v30;
      *(v22 + 16) = a5;
      *(v22 + 24) = a6;
      *(v22 + 32) = v53;
      return result;
    }

    sub_214031C4C();
    v42 = swift_allocError();
    *v43 = 0xD000000000000018;
    v43[1] = 0x800000021478EAE0;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = 0x800000021478A360;
    v66 = v42;
    swift_willThrow();
  }

  sub_21432887C(v36, type metadata accessor for IDSInvitationContext);
  v44 = *(v22 + 8);
  v45 = *(v22 + 24);

  *v22 = v31;
  *(v22 + 8) = v30;
  *(v22 + 16) = v51;
  *(v22 + 24) = v32;
  *(v22 + 32) = v53;
  return sub_21432887C(a7, type metadata accessor for IDSInvitation);
}

uint64_t sub_214159E50()
{
  v1 = 0x747865746E6F63;
  v2 = 0x6974617269707865;
  if (*v0 != 2)
  {
    v2 = 0x696669746E656469;
  }

  if (*v0)
  {
    v1 = 0x6574617473;
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

uint64_t sub_214159ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214369324(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214159EF4(uint64_t a1)
{
  v2 = sub_2142F5F98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214159F30(uint64_t a1)
{
  v2 = sub_2142F5F98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IDSInvitation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = type metadata accessor for IDSInvitationContext(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907808, &qword_2146F4B70);
  v72 = *(v7 - 8);
  v8 = *(v72 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v61 - v9;
  v11 = type metadata accessor for IDSInvitation(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2142F5F98();
  v17 = v73;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v83);
  }

  v18 = v11;
  v73 = v14;
  LOBYTE(v76) = 0;
  sub_214328930(&qword_27C9050A0, type metadata accessor for IDSInvitationContext);
  sub_2146DA1C8();
  v19 = v6;
  LOBYTE(v76) = 1;
  v20 = sub_2146DA1A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v79) = 2;
  sub_2142E35EC();
  sub_2146DA1C8();
  v21 = v76;
  v70 = BYTE8(v76);
  LOBYTE(v76) = 3;
  v63 = sub_2146DA168();
  v69 = v23;
  v68 = v7;
  v24 = v73;
  sub_2143287C0(v19, v73, type metadata accessor for IDSInvitationContext);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v67 = v21;
  v26 = inited;
  v65 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2146F3C70;
  *(v27 + 16) = sub_21438F468;
  *(v27 + 24) = v28;
  *(v26 + 32) = v27;
  sub_21404328C(v26, &v79);
  v66 = v19;
  v29 = v80;
  LOBYTE(v26) = v81;
  LODWORD(v64) = v82;
  v30 = swift_initStackObject();
  *(v30 + 16) = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_2140676DC;
  *(v31 + 24) = 0;
  *(v30 + 32) = v31;
  sub_214042B80(v30, &v76);
  v32 = v78;
  v33 = v24 + v18[5];
  *v33 = v79;
  *(v33 + 16) = v29;
  *(v33 + 24) = v26;
  *(v33 + 25) = v64;
  v34 = v24 + v18[6];
  *v34 = v67;
  *(v34 + 8) = v70;
  v35 = v24 + v18[7];
  v36 = v77;
  *v35 = v76;
  *(v35 + 16) = v36;
  *(v35 + 32) = v32;
  v38 = *v33;
  v37 = *(v33 + 8);
  v64 = *(v33 + 16);
  LODWORD(v34) = *(v33 + 25);
  v75[0] = *(v33 + 24);
  *&v79 = v20;
  v70 = v34;
  v74 = v34;
  *&v76 = 0xD000000000000013;
  *(&v76 + 1) = 0x800000021478EAC0;
  *&v65 = 0x800000021478EAC0;
  *&v77 = 0xD00000000000001CLL;
  *(&v77 + 1) = 0x800000021478A360;

  v67 = v38;
  v39 = v38(&v79, &v74, &v76);
  v40 = v65;
  v62 = v35;
  v41 = v66;
  if (v39)
  {

    v42 = *(v33 + 8);

    *v33 = v67;
    *(v33 + 8) = v37;
    *(v33 + 16) = v20;
    *(v33 + 24) = 0;
    *(v33 + 25) = v70;
    v44 = *v62;
    v43 = *(v62 + 8);
    v45 = *(v62 + 24);
    v64 = *(v62 + 16);
    v46 = *(v62 + 32);
    *&v79 = v63;
    *(&v79 + 1) = v69;
    v70 = v46;
    v75[0] = v46;
    *&v76 = 0xD000000000000018;
    *(&v76 + 1) = 0x800000021478EAE0;
    *&v77 = 0xD00000000000001CLL;
    *(&v77 + 1) = 0x800000021478A360;
    *&v65 = v45;

    v67 = v44;
    v47 = v44(&v79, v75, &v76);
    if (v47)
    {

      sub_21432887C(v41, type metadata accessor for IDSInvitationContext);
      (*(v72 + 8))(v10, v68);
      v52 = v62;
      v53 = *(v62 + 8);
      v54 = *(v62 + 24);

      *v52 = v67;
      *(v52 + 8) = v43;
      v55 = v69;
      *(v52 + 16) = v63;
      *(v52 + 24) = v55;
      *(v52 + 32) = v70;
      sub_214328704(v73, v71, type metadata accessor for IDSInvitation);
      return __swift_destroy_boxed_opaque_existential_1(v83);
    }

    sub_214031C4C();
    swift_allocError();
    *v56 = 0xD000000000000018;
    v56[1] = 0x800000021478EAE0;
    v56[2] = 0xD00000000000001CLL;
    v56[3] = 0x800000021478A360;
    swift_willThrow();

    sub_21432887C(v41, type metadata accessor for IDSInvitationContext);
    (*(v72 + 8))(v10, v68);
    v57 = v62;
    v58 = *(v62 + 8);
    v59 = *(v62 + 24);

    *v57 = v67;
    *(v57 + 8) = v43;
    v60 = v65;
    *(v57 + 16) = v64;
    *(v57 + 24) = v60;
    *(v57 + 32) = v70;
  }

  else
  {

    sub_214031C4C();
    swift_allocError();
    *v48 = 0xD000000000000013;
    v48[1] = v40;
    v48[2] = 0xD00000000000001CLL;
    v48[3] = 0x800000021478A360;
    swift_willThrow();
    sub_21432887C(v41, type metadata accessor for IDSInvitationContext);
    (*(v72 + 8))(v10, v68);
    v49 = v75[0];
    v50 = *(v33 + 8);

    *v33 = v67;
    *(v33 + 8) = v37;
    *(v33 + 16) = v64;
    *(v33 + 24) = v49;
    *(v33 + 25) = v70;
  }

  v51 = v73;
  __swift_destroy_boxed_opaque_existential_1(v83);
  return sub_21432887C(v51, type metadata accessor for IDSInvitation);
}

uint64_t IDSInvitation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907818, &qword_2146F4B78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5F98();
  sub_2146DAA28();
  v24 = 0;
  type metadata accessor for IDSInvitationContext(0);
  sub_214328930(&qword_27C9050A8, type metadata accessor for IDSInvitationContext);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = type metadata accessor for IDSInvitation(0);
  v12 = v3 + *(v11 + 20);
  if (*(v12 + 24))
  {
    goto LABEL_7;
  }

  v13 = v11;
  v14 = *(v12 + 16);
  v23 = 1;
  sub_2146DA368();
  v15 = (v3 + *(v13 + 24));
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  v21 = v16;
  v22 = v15;
  v20[15] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  sub_2142E37F4();
  sub_2146DA388();
  v18 = v3 + *(v13 + 28);
  if (!*(v18 + 24))
  {
LABEL_7:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v19 = *(v18 + 16);
    v20[14] = 3;

    sub_2146DA328();
    (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_21415AC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v64 = a2;
  v14 = type metadata accessor for IDSKCSharingInvitation();
  v55 = a3;
  sub_2143287C0(a3, a9 + v14[5], type metadata accessor for CloudKitSharingToken);
  v54 = a6;
  sub_213FB2E54(a6, a9 + v14[7], &qword_27C913090, &unk_2146E9DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_214059900;
  *(v16 + 24) = 0;
  *(inited + 32) = v16;
  sub_214042B80(inited, &v60);
  v17 = v61;
  v18 = v62;
  v19 = v63;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_2146E9BF0;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_2140676DC;
  *(v21 + 24) = 0;
  *(v20 + 32) = v21;
  sub_214042B80(v20, v58);
  v22 = v59;
  *a9 = v60;
  *(a9 + 16) = v17;
  *(a9 + 24) = v18;
  *(a9 + 32) = v19;
  v23 = a9 + v14[6];
  v24 = v58[1];
  *v23 = v58[0];
  *(v23 + 16) = v24;
  *(v23 + 32) = v22;
  v25 = (a9 + v14[8]);
  *v25 = a7;
  v25[1] = a8;
  v27 = *a9;
  v26 = *(a9 + 8);
  v28 = *(a9 + 24);
  v49 = *(a9 + 16);
  v29 = *(a9 + 32);
  *&v58[0] = a1;
  *(&v58[0] + 1) = v64;
  v51 = v29;
  v57 = v29;
  *&v60 = 0xD00000000000001ELL;
  *(&v60 + 1) = 0x800000021478EB00;
  v61 = 0xD00000000000001CLL;
  v62 = 0x800000021478A360;

  v30 = v27(v58, &v57, &v60);
  if (v53)
  {

LABEL_6:
    sub_213FB2DF4(v54, &qword_27C913090, &unk_2146E9DB0);
    sub_21432887C(v55, type metadata accessor for CloudKitSharingToken);
    v40 = *(a9 + 8);
    v41 = *(a9 + 24);

    *a9 = v27;
    *(a9 + 8) = v26;
    *(a9 + 16) = v49;
    *(a9 + 24) = v28;
    *(a9 + 32) = v51;
    return sub_21432887C(a9, type metadata accessor for IDSKCSharingInvitation);
  }

  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD00000000000001ELL;
    v39[1] = 0x800000021478EB00;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v31 = *(a9 + 8);
  v32 = *(a9 + 24);

  *a9 = v27;
  *(a9 + 8) = v26;
  v33 = v64;
  *(a9 + 16) = a1;
  *(a9 + 24) = v33;
  *(a9 + 32) = v51;
  v35 = *v23;
  v34 = *(v23 + 8);
  v36 = *(v23 + 24);
  v52 = *(v23 + 16);
  v37 = *(v23 + 32);
  *&v58[0] = a4;
  *(&v58[0] + 1) = a5;
  LODWORD(v64) = v37;
  v57 = v37;
  *&v60 = 0xD000000000000024;
  *(&v60 + 1) = 0x800000021478EB20;
  v61 = 0xD00000000000001CLL;
  v62 = 0x800000021478A360;

  v38 = v35(v58, &v57, &v60);
  if ((v38 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v45 = 0xD000000000000024;
    v45[1] = 0x800000021478EB20;
    v45[2] = 0xD00000000000001CLL;
    v45[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v54, &qword_27C913090, &unk_2146E9DB0);
    sub_21432887C(v55, type metadata accessor for CloudKitSharingToken);
    v46 = *(v23 + 8);
    v47 = *(v23 + 24);

    *v23 = v35;
    *(v23 + 8) = v34;
    *(v23 + 16) = v52;
    *(v23 + 24) = v36;
    *(v23 + 32) = v64;
    return sub_21432887C(a9, type metadata accessor for IDSKCSharingInvitation);
  }

  sub_213FB2DF4(v54, &qword_27C913090, &unk_2146E9DB0);
  sub_21432887C(v55, type metadata accessor for CloudKitSharingToken);
  v43 = *(v23 + 8);
  v44 = *(v23 + 24);

  *v23 = v35;
  *(v23 + 8) = v34;
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  *(v23 + 32) = v64;
  return result;
}

uint64_t sub_21415B190()
{
  v1 = *v0;
  v2 = 0x444970756F7267;
  v3 = 0x4865657469766E69;
  v4 = 0x656D6954746E6573;
  if (v1 != 3)
  {
    v4 = 0x4E79616C70736964;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6974617469766E69;
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

uint64_t sub_21415B24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214369490(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21415B274(uint64_t a1)
{
  v2 = sub_2142F5FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21415B2B0(uint64_t a1)
{
  v2 = sub_2142F5FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21415B2EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v3 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v87 = &v75 - v4;
  v5 = type metadata accessor for CloudKitSharingToken();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907820, &qword_2146F4B80);
  v89 = *(v9 - 8);
  v10 = *(v89 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v75 - v11;
  v13 = type metadata accessor for IDSKCSharingInvitation();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v98 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2142F5FEC();
  v19 = v90;
  sub_2146DAA08();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v98);
  }

  v84 = v13;
  v90 = v8;
  v85 = v16;
  LOBYTE(v94) = 0;
  v20 = sub_2146DA168();
  v22 = v21;
  v23 = v20;
  LOBYTE(v94) = 1;
  sub_214328930(&qword_27C9057A0, type metadata accessor for CloudKitSharingToken);
  v24 = v90;
  sub_2146DA1C8();
  v83 = v23;
  LOBYTE(v94) = 2;
  v25 = sub_2146DA168();
  v27 = v26;
  v81 = v25;
  v82 = v22;
  LOBYTE(v94) = 3;
  sub_2142EC0C4();
  v28 = v87;
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v92[0]) = 4;
  sub_2142E12FC();
  sub_2146DA1C8();
  v88 = v27;
  v80 = v12;
  v79 = v9;
  v78 = *(&v94 + 1);
  v30 = v94;
  v31 = v84;
  v32 = v85;
  sub_2143287C0(v24, &v85[v84[5]], type metadata accessor for CloudKitSharingToken);
  sub_213FB2E54(v28, v32 + v31[7], &qword_27C913090, &unk_2146E9DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v77 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_214059900;
  *(v34 + 24) = 0;
  *(inited + 32) = v34;
  sub_214042B80(inited, &v94);
  v35 = v95;
  v36 = v96;
  LOBYTE(v28) = v97;
  v37 = swift_initStackObject();
  *(v37 + 16) = v77;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_2140676DC;
  *(v38 + 24) = 0;
  *(v37 + 32) = v38;
  sub_214042B80(v37, v92);
  v39 = v93;
  *v32 = v94;
  *(v32 + 16) = v35;
  *(v32 + 24) = v36;
  *(v32 + 32) = v28;
  v40 = v32 + v31[6];
  v41 = v92[1];
  *v40 = v92[0];
  *(v40 + 16) = v41;
  *(v40 + 32) = v39;
  v42 = (v32 + v31[8]);
  v43 = v78;
  *v42 = v30;
  v42[1] = v43;
  v45 = *v32;
  v44 = *(v32 + 8);
  v46 = *(v32 + 24);
  v78 = *(v32 + 16);
  LODWORD(v43) = *(v32 + 32);
  *&v92[0] = v83;
  *(&v92[0] + 1) = v82;
  LODWORD(v84) = v43;
  v91 = v43;
  *&v94 = 0xD00000000000001ELL;
  *(&v94 + 1) = 0x800000021478EB00;
  v95 = 0xD00000000000001CLL;
  v96 = 0x800000021478A360;

  v47 = v45(v92, &v91, &v94);
  *&v77 = 0x800000021478A360;
  v48 = v79;
  if (v47)
  {
    v49 = v77;
    v78 = 0;

    v50 = v85;
    v51 = *(v85 + 1);
    v52 = *(v85 + 3);

    *v50 = v45;
    *(v50 + 8) = v44;
    v53 = v82;
    *(v50 + 16) = v83;
    *(v50 + 24) = v53;
    *(v50 + 32) = v84;
    v54 = *v40;
    v55 = *(v40 + 8);
    v56 = *(v40 + 24);
    v76 = *(v40 + 16);
    v57 = *(v40 + 32);
    *&v92[0] = v81;
    *(&v92[0] + 1) = v88;
    LODWORD(v84) = v57;
    v91 = v57;
    *&v94 = 0xD000000000000024;
    *(&v94 + 1) = 0x800000021478EB20;
    v95 = 0xD00000000000001CLL;
    v96 = v49;
    v82 = v56;

    v58 = v78;
    v83 = v54;
    v59 = v54(v92, &v91, &v94);
    v60 = v80;
    if (v58)
    {

LABEL_12:

      sub_213FB2DF4(v87, &qword_27C913090, &unk_2146E9DB0);
      sub_21432887C(v90, type metadata accessor for CloudKitSharingToken);
      (*(v89 + 8))(v60, v48);
      v72 = *(v40 + 8);
      v73 = *(v40 + 24);

      *v40 = v83;
      *(v40 + 8) = v55;
      v74 = v82;
      *(v40 + 16) = v76;
      *(v40 + 24) = v74;
      *(v40 + 32) = v84;
      v64 = v85;
      goto LABEL_8;
    }

    if ((v59 & 1) == 0)
    {
      sub_214031C4C();
      swift_allocError();
      *v70 = 0xD000000000000024;
      v70[1] = 0x800000021478EB20;
      v71 = v77;
      v70[2] = 0xD00000000000001CLL;
      v70[3] = v71;
      swift_willThrow();
      goto LABEL_12;
    }

    sub_213FB2DF4(v87, &qword_27C913090, &unk_2146E9DB0);
    sub_21432887C(v90, type metadata accessor for CloudKitSharingToken);
    (*(v89 + 8))(v60, v48);
    v67 = *(v40 + 8);
    v68 = *(v40 + 24);

    *v40 = v83;
    *(v40 + 8) = v55;
    v69 = v88;
    *(v40 + 16) = v81;
    *(v40 + 24) = v69;
    *(v40 + 32) = v84;
    sub_214328704(v85, v86, type metadata accessor for IDSKCSharingInvitation);
    return __swift_destroy_boxed_opaque_existential_1(v98);
  }

  sub_214031C4C();
  swift_allocError();
  *v61 = 0xD00000000000001ELL;
  v61[1] = 0x800000021478EB00;
  v62 = v77;
  v61[2] = 0xD00000000000001CLL;
  v61[3] = v62;
  swift_willThrow();

  v63 = v80;
  sub_213FB2DF4(v87, &qword_27C913090, &unk_2146E9DB0);
  sub_21432887C(v90, type metadata accessor for CloudKitSharingToken);
  (*(v89 + 8))(v63, v48);
  v64 = v85;
  v65 = *(v85 + 1);
  v66 = *(v85 + 3);

  *v64 = v45;
  *(v64 + 8) = v44;
  *(v64 + 16) = v78;
  *(v64 + 24) = v46;
  *(v64 + 32) = v84;
LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v98);
  return sub_21432887C(v64, type metadata accessor for IDSKCSharingInvitation);
}

uint64_t sub_21415BE0C(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907830, &qword_2146F4B88);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5FEC();
  sub_2146DAA28();
  if (!*(v4 + 24))
  {
    goto LABEL_6;
  }

  v12 = *(v4 + 16);
  LOBYTE(v20) = 0;

  sub_2146DA328();
  if (v3)
  {
    (*(v7 + 8))(v10, v6);
  }

  v14 = type metadata accessor for IDSKCSharingInvitation();
  v15 = v14[5];
  LOBYTE(v20) = 1;
  type metadata accessor for CloudKitSharingToken();
  sub_214328930(&qword_27C9057C0, type metadata accessor for CloudKitSharingToken);
  sub_2146DA388();
  v16 = v4 + v14[6];
  if (*(v16 + 24))
  {
    v17 = *(v16 + 16);
    LOBYTE(v20) = 2;

    sub_2146DA328();

    v18 = v14[7];
    LOBYTE(v20) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    sub_2142EC30C();
    sub_2146DA388();
    v20 = *(v4 + v14[8]);
    v19[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21415C19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21415C228(uint64_t a1)
{
  v2 = sub_2142F6040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21415C264(uint64_t a1)
{
  v2 = sub_2142F6040();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21415C2A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907838, &qword_2146F4B90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F6040();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2140526D4();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21415C40C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907848, &qword_2146F4B98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F6040();
  sub_2146DAA28();
  v12 = v8;
  sub_214052728();
  sub_2146DA388();
  return (*(v4 + 8))(v7, v3);
}

uint64_t IDSProtobuf.init(with:type:isResponse:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_21408AC04(a1, a4, &qword_27C9041E8, &qword_2146F4BA0);
  result = type metadata accessor for IDSProtobuf(0);
  v8 = a4 + *(result + 20);
  *v8 = a2;
  *(v8 + 2) = BYTE2(a2) & 1;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_21415C5FC()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x6E6F707365527369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_21415C64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214369654(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21415C674(uint64_t a1)
{
  v2 = sub_2142F6094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21415C6B0(uint64_t a1)
{
  v2 = sub_2142F6094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IDSProtobuf.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041E8, &qword_2146F4BA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-v6];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907850, &qword_2146F4BA8);
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v23);
  v11 = &v20[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F6094();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v22;
    v29 = 0;
    sub_2142F60E8();
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907870, &qword_2146F4BB0);
    v26 = 1;
    sub_2142F619C();
    sub_2146DA1C8();
    v21 = v27;
    v16 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v24 = 2;
    sub_2142E1378();
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v23);
    v17 = v25;
    sub_21408AC04(v7, v14, &qword_27C9041E8, &qword_2146F4BA0);
    v18 = type metadata accessor for IDSProtobuf(0);
    v19 = v14 + *(v18 + 20);
    *v19 = v21;
    *(v19 + 2) = v16;
    *(v14 + *(v18 + 24)) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t IDSProtobuf.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907880, &qword_2146F4BB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F6094();
  sub_2146DAA28();
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041E8, &qword_2146F4BA0);
  sub_2142F6218();
  sub_2146DA388();
  if (!v2)
  {
    v11 = type metadata accessor for IDSProtobuf(0);
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 2);
    v16 = v13;
    v17 = v12;
    v15[11] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907870, &qword_2146F4BB0);
    sub_2142F62CC();
    sub_2146DA388();
    v15[10] = *(v3 + *(v11 + 24));
    v15[9] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    sub_2142E1D30();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21415CC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = type metadata accessor for IDSSampleInvitation();
  v50 = a3;
  sub_213FB2E54(a3, a6 + *(v10 + 20), &qword_27C913090, &unk_2146E9DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2140676DC;
  *(v12 + 24) = 0;
  *(inited + 32) = v12;
  sub_214042B80(inited, &v54);
  v13 = v55;
  v14 = v56;
  v15 = v57;
  sub_2144A2974(v52);
  v16 = v53;
  *a6 = v54;
  *(a6 + 16) = v13;
  *(a6 + 24) = v14;
  *(a6 + 32) = v15;
  v17 = a6 + *(v10 + 24);
  v18 = v52[1];
  *v17 = v52[0];
  *(v17 + 16) = v18;
  *(v17 + 32) = v16;
  v19 = *a6;
  v20 = *(a6 + 8);
  v45 = *(a6 + 16);
  v46 = *(a6 + 24);
  v21 = *(a6 + 32);
  v22 = a1;
  *&v52[0] = a1;
  *(&v52[0] + 1) = a2;
  v23 = v19;
  v49 = v21;
  v58 = v21;
  *&v54 = 0xD000000000000019;
  *(&v54 + 1) = 0x800000021478EB50;
  v55 = 0xD00000000000001CLL;
  v56 = 0x800000021478A360;

  v24 = v23(v52, &v58, &v54);
  if (v47)
  {

LABEL_6:
    sub_213FB2DF4(v50, &qword_27C913090, &unk_2146E9DB0);
    v34 = *(a6 + 8);
    v35 = *(a6 + 24);

    *a6 = v23;
    *(a6 + 8) = v20;
    *(a6 + 16) = v45;
    *(a6 + 24) = v46;
    *(a6 + 32) = v49;
    return sub_21432887C(a6, type metadata accessor for IDSSampleInvitation);
  }

  if ((v24 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD000000000000019;
    v33[1] = 0x800000021478EB50;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v25 = *(a6 + 8);
  v26 = *(a6 + 24);

  *a6 = v23;
  *(a6 + 8) = v20;
  *(a6 + 16) = v22;
  *(a6 + 24) = a2;
  *(a6 + 32) = v49;
  v28 = *v17;
  v27 = *(v17 + 8);
  v29 = *(v17 + 16);
  v30 = *(v17 + 24);
  v31 = *(v17 + 32);
  *&v52[0] = a4;
  *(&v52[0] + 1) = a5;
  v48 = v31;
  v58 = v31;
  *&v54 = 0xD00000000000001ALL;
  *(&v54 + 1) = 0x800000021478EB70;
  v55 = 0xD00000000000001CLL;
  v56 = 0x800000021478A360;

  sub_213FDC9D0(v29, v30);
  v32 = v28(v52, &v58, &v54);
  if ((v32 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD00000000000001ALL;
    v40[1] = 0x800000021478EB70;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v50, &qword_27C913090, &unk_2146E9DB0);
    v41 = *(v17 + 8);
    v42 = *(v17 + 16);
    v43 = *(v17 + 24);

    sub_213FDC6D0(v42, v43);
    *v17 = v28;
    *(v17 + 8) = v27;
    *(v17 + 16) = v29;
    *(v17 + 24) = v30;
    *(v17 + 32) = v48;
    return sub_21432887C(a6, type metadata accessor for IDSSampleInvitation);
  }

  sub_213FDC6D0(v29, v30);

  sub_213FB2DF4(v50, &qword_27C913090, &unk_2146E9DB0);
  v37 = *(v17 + 8);
  v38 = *(v17 + 16);
  v39 = *(v17 + 24);

  result = sub_213FDC6D0(v38, v39);
  *v17 = v28;
  *(v17 + 8) = v27;
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = v48;
  return result;
}

uint64_t sub_21415D0D8()
{
  v1 = 1702125924;
  if (*v0 != 1)
  {
    v1 = 0x6E6F73616572;
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

uint64_t sub_21415D124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214369774(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21415D14C(uint64_t a1)
{
  v2 = sub_2142F6348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21415D188(uint64_t a1)
{
  v2 = sub_2142F6348();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21415D1C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v71 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9078A0, &qword_2146F4BC0);
  v84 = *(v7 - 8);
  v8 = *(v84 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v71 - v9;
  v11 = type metadata accessor for IDSSampleInvitation();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2142F6348();
  v17 = v85;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v86);
  }

  v18 = v11;
  v85 = v6;
  v82 = v14;
  LOBYTE(v89) = 0;
  v19 = sub_2146DA168();
  v20 = v7;
  v22 = v21;
  v81 = v19;
  LOBYTE(v89) = 1;
  sub_2142EC0C4();
  v23 = v85;
  sub_2146DA1C8();
  v24 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v87[0]) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v78 = v10;
  v79 = *(&v89 + 1);
  v73 = v89;
  v26 = *(v18 + 20);
  v80 = v22;
  v27 = v82;
  sub_213FB2E54(v23, &v82[v26], &qword_27C913090, &unk_2146E9DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_2140676DC;
  *(v29 + 24) = 0;
  *(inited + 32) = v29;
  sub_214042B80(inited, &v89);
  v31 = v90;
  v30 = v91;
  LOBYTE(v23) = v92;
  sub_2144A2974(v87);
  v32 = v88;
  *v27 = v89;
  *(v27 + 2) = v31;
  *(v27 + 3) = v30;
  v27[32] = v23;
  v33 = &v27[*(v18 + 24)];
  v34 = v87[1];
  *v33 = v87[0];
  *(v33 + 1) = v34;
  v33[32] = v32;
  v36 = *v27;
  v35 = *(v27 + 1);
  v37 = *(v27 + 3);
  v74 = *(v27 + 2);
  v38 = v27[32];
  *&v87[0] = v81;
  *(&v87[0] + 1) = v80;
  v93 = v38;
  v94 = v38;
  *&v89 = 0xD000000000000019;
  *(&v89 + 1) = 0x800000021478EB50;
  v75 = 0x800000021478EB50;
  v90 = 0xD00000000000001CLL;
  v91 = 0x800000021478A360;
  v76 = v37;

  v77 = v36;
  v39 = v36(v87, &v94, &v89);
  v40 = v74;
  v71 = 0xD000000000000019;
  v41 = v75;
  v72 = v33;
  if (v39)
  {
    v74 = v20;

    v42 = v82;
    v43 = *(v82 + 1);
    v44 = *(v82 + 3);

    *v42 = v77;
    *(v42 + 1) = v35;
    v45 = v80;
    *(v42 + 2) = v81;
    *(v42 + 3) = v45;
    v42[32] = v93;
    v47 = *v72;
    v46 = *(v72 + 1);
    v48 = *(v72 + 2);
    v49 = *(v72 + 3);
    v50 = v72[32];
    *&v87[0] = v73;
    *(&v87[0] + 1) = v79;
    LODWORD(v80) = v50;
    v94 = v50;
    *&v89 = 0xD00000000000001ALL;
    *(&v89 + 1) = 0x800000021478EB70;
    v90 = 0xD00000000000001CLL;
    v91 = 0x800000021478A360;

    sub_213FDC9D0(v48, v49);
    v81 = v47;
    v51 = v47(v87, &v94, &v89);
    v57 = v74;
    if (v51)
    {
      sub_213FDC6D0(v48, v49);

      sub_213FB2DF4(v85, &qword_27C913090, &unk_2146E9DB0);
      (*(v84 + 8))(v78, v57);
      v58 = v72;
      v59 = *(v72 + 1);
      v60 = *(v72 + 2);
      v61 = *(v72 + 3);

      sub_213FDC6D0(v60, v61);
      v62 = v82;
      *v58 = v81;
      *(v58 + 1) = v46;
      v63 = v79;
      *(v58 + 2) = v73;
      *(v58 + 3) = v63;
      v58[32] = v80;
      sub_214328704(v62, v83, type metadata accessor for IDSSampleInvitation);
      return __swift_destroy_boxed_opaque_existential_1(v86);
    }

    v64 = v48;
    sub_214031C4C();
    swift_allocError();
    *v65 = 0xD00000000000001ALL;
    v65[1] = 0x800000021478EB70;
    v65[2] = 0xD00000000000001CLL;
    v65[3] = 0x800000021478A360;
    swift_willThrow();

    v66 = v84;
    v67 = v72;
    sub_213FB2DF4(v85, &qword_27C913090, &unk_2146E9DB0);
    (*(v66 + 8))(v78, v57);
    v68 = *(v67 + 1);
    v69 = *(v67 + 2);
    v70 = *(v67 + 3);

    sub_213FDC6D0(v69, v70);
    v53 = v82;
    *v67 = v81;
    *(v67 + 1) = v46;
    *(v67 + 2) = v64;
    *(v67 + 3) = v49;
    v67[32] = v80;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v52 = v71;
    v52[1] = v41;
    v52[2] = 0xD00000000000001CLL;
    v52[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v85, &qword_27C913090, &unk_2146E9DB0);
    (*(v24 + 8))(v78, v20);
    v53 = v82;
    v54 = *(v82 + 1);
    v55 = *(v82 + 3);

    *v53 = v77;
    *(v53 + 8) = v35;
    v56 = v76;
    *(v53 + 16) = v40;
    *(v53 + 24) = v56;
    *(v53 + 32) = v93;
  }

  __swift_destroy_boxed_opaque_existential_1(v86);
  return sub_21432887C(v53, type metadata accessor for IDSSampleInvitation);
}

uint64_t sub_21415DA28(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9078B0, &qword_2146F4BC8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F6348();
  sub_2146DAA28();
  if (!*(v4 + 24))
  {
    goto LABEL_6;
  }

  v12 = *(v4 + 16);
  LOBYTE(v19) = 0;

  sub_2146DA328();
  if (v3)
  {
    (*(v7 + 8))(v10, v6);
  }

  v14 = type metadata accessor for IDSSampleInvitation();
  v15 = *(v14 + 20);
  LOBYTE(v19) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  sub_2142EC30C();
  sub_2146DA388();
  v16 = v4 + *(v14 + 24);
  v17 = *(v16 + 24);
  if (v17 == 1)
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v19 = *(v16 + 16);
    v20 = v17;
    v18[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_21415DCE0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v10 = type metadata accessor for IDSSampleMessage(0);
  v69 = a5;
  sub_213FB2E54(a5, a8 + *(v10 + 24), &qword_27C913090, &unk_2146E9DB0);
  sub_2144707D4(&v82);
  v11 = v83;
  v12 = v84;
  v13 = v85;
  v14 = v86;
  sub_214470918(&v78);
  v15 = v79;
  v16 = v80;
  v17 = v81;
  sub_214470A38(&v73);
  v18 = v74;
  v19 = v75;
  v20 = v76;
  v21 = v77;
  *a8 = v82;
  *(a8 + 16) = v11;
  *(a8 + 24) = v12;
  *(a8 + 25) = v13;
  *(a8 + 26) = v14;
  *(a8 + 32) = v78;
  *(a8 + 48) = v15;
  *(a8 + 56) = v16;
  *(a8 + 64) = v17;
  v22 = a8 + *(v10 + 28);
  *v22 = v73;
  *(v22 + 16) = v18;
  *(v22 + 24) = v19;
  *(v22 + 25) = v20;
  *(v22 + 26) = v21;
  v24 = *a8;
  v23 = *(a8 + 8);
  v64 = *(a8 + 16);
  v62 = *(a8 + 25);
  v63 = *(a8 + 24);
  v25 = *(a8 + 26);
  *&v82 = a1;
  BYTE8(v82) = a2 & 1;
  v67 = v25;
  LOBYTE(v73) = v25;
  *&v78 = 0xD000000000000018;
  *(&v78 + 1) = 0x800000021478EB90;
  v79 = 0xD00000000000001CLL;
  v80 = 0x800000021478A360;

  v26 = v87;
  v27 = v24(&v82, &v73, &v78);
  v87 = v26;
  if (v26)
  {

    sub_213FB2DF4(v69, &qword_27C913090, &unk_2146E9DB0);

LABEL_7:
    v38 = *(a8 + 8);

    *a8 = v24;
    *(a8 + 8) = v23;
    *(a8 + 16) = v64;
    *(a8 + 24) = v63;
    *(a8 + 25) = v62;
    *(a8 + 26) = v67;
    return sub_21432887C(a8, type metadata accessor for IDSSampleMessage);
  }

  if ((v27 & 1) == 0)
  {

    sub_214031C4C();
    v36 = swift_allocError();
    *v37 = 0xD000000000000018;
    v37[1] = 0x800000021478EB90;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = 0x800000021478A360;
    v87 = v36;
    swift_willThrow();
    sub_213FB2DF4(v69, &qword_27C913090, &unk_2146E9DB0);
    goto LABEL_7;
  }

  v28 = *(a8 + 8);

  *a8 = v24;
  *(a8 + 8) = v23;
  *(a8 + 16) = a1;
  *(a8 + 24) = a2 & 1;
  *(a8 + 25) = 0;
  *(a8 + 26) = v67;
  v30 = *(a8 + 32);
  v29 = *(a8 + 40);
  v32 = *(a8 + 48);
  v31 = *(a8 + 56);
  v33 = *(a8 + 64);
  *&v82 = a3;
  *(&v82 + 1) = a4;
  v68 = v33;
  LOBYTE(v73) = v33;
  *&v78 = 0xD00000000000001BLL;
  *(&v78 + 1) = 0x800000021478EBB0;
  v79 = 0xD00000000000001CLL;
  v80 = 0x800000021478A360;

  v66 = v31;
  sub_213FDC9D0(v32, v31);
  v34 = v87;
  v35 = v30(&v82, &v73, &v78);
  v87 = v34;
  if (v34)
  {

LABEL_14:

    sub_213FB2DF4(v69, &qword_27C913090, &unk_2146E9DB0);
    v52 = *(a8 + 40);
    v53 = *(a8 + 48);
    v54 = *(a8 + 56);

    sub_213FDC6D0(v53, v54);
    *(a8 + 32) = v30;
    *(a8 + 40) = v29;
    *(a8 + 48) = v32;
    *(a8 + 56) = v66;
    *(a8 + 64) = v68;
    return sub_21432887C(a8, type metadata accessor for IDSSampleMessage);
  }

  if ((v35 & 1) == 0)
  {
    sub_214031C4C();
    v50 = swift_allocError();
    *v51 = 0xD00000000000001BLL;
    v51[1] = 0x800000021478EBB0;
    v51[2] = 0xD00000000000001CLL;
    v51[3] = 0x800000021478A360;
    v87 = v50;
    swift_willThrow();
    goto LABEL_14;
  }

  sub_213FDC6D0(v32, v66);

  v40 = *(a8 + 40);
  v41 = *(a8 + 48);
  v42 = *(a8 + 56);

  sub_213FDC6D0(v41, v42);
  *(a8 + 32) = v30;
  *(a8 + 40) = v29;
  *(a8 + 48) = a3;
  *(a8 + 56) = a4;
  *(a8 + 64) = v68;
  v44 = *v22;
  v43 = *(v22 + 8);
  v45 = *(v22 + 16);
  v46 = *(v22 + 24);
  v72 = *(v22 + 25);
  v47 = *(v22 + 26);
  *&v82 = a6;
  BYTE8(v82) = a7 & 1;
  LOBYTE(v73) = v47;
  *&v78 = 0xD000000000000018;
  *(&v78 + 1) = 0x800000021478EBD0;
  v79 = 0xD00000000000001CLL;
  v80 = 0x800000021478A360;

  v48 = v87;
  v49 = v44(&v82, &v73, &v78);
  v87 = v48;
  if (v48)
  {
    sub_213FB2DF4(v69, &qword_27C913090, &unk_2146E9DB0);
  }

  else
  {
    if (v49)
    {

      sub_213FB2DF4(v69, &qword_27C913090, &unk_2146E9DB0);
      v55 = *(v22 + 8);

      *v22 = v44;
      *(v22 + 8) = v43;
      *(v22 + 16) = a6;
      *(v22 + 24) = a7 & 1;
      *(v22 + 25) = 0;
      *(v22 + 26) = v47;
      return result;
    }

    sub_214031C4C();
    v56 = swift_allocError();
    *v57 = 0xD000000000000018;
    v57[1] = 0x800000021478EBD0;
    v57[2] = 0xD00000000000001CLL;
    v57[3] = 0x800000021478A360;
    v87 = v56;
    swift_willThrow();
    sub_213FB2DF4(v69, &qword_27C913090, &unk_2146E9DB0);
  }

  v58 = *(v22 + 8);

  *v22 = v44;
  *(v22 + 8) = v43;
  *(v22 + 16) = v45;
  *(v22 + 24) = v46;
  *(v22 + 25) = v72;
  *(v22 + 26) = v47;
  return sub_21432887C(a8, type metadata accessor for IDSSampleMessage);
}

uint64_t sub_21415E2A8()
{
  v1 = 0x646E616D6D6F63;
  v2 = 1702125924;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x614E746E65696C63;
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

uint64_t sub_21415E320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214369884(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21415E348(uint64_t a1)
{
  v2 = sub_2142F639C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21415E384(uint64_t a1)
{
  v2 = sub_2142F639C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21415E3C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v3 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v5 = &v75 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9078B8, &qword_2146F4BD0);
  v90 = *(v6 - 8);
  v7 = *(v90 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v75 - v8;
  v10 = type metadata accessor for IDSSampleMessage(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F639C();
  v15 = v105;
  sub_2146DAA08();
  if (v15)
  {
    v16 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  v85 = v10;
  v86 = v13;
  v87 = v5;
  v105 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v100) = 0;
  sub_2142E11FC();
  sub_2146DA1C8();
  v17 = v6;
  v18 = v96;
  v19 = BYTE8(v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v100) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  LODWORD(v83) = v19;
  v84 = v18;
  v21 = v96;
  LOBYTE(v96) = 2;
  sub_2142EC0C4();
  v22 = v87;
  sub_2146DA1C8();
  LOBYTE(v100) = 3;
  sub_2146DA1C8();
  v89 = *(&v21 + 1);
  v79 = v21;
  v77 = v96;
  v78 = BYTE8(v96);
  v23 = v85;
  v24 = v86;
  sub_213FB2E54(v22, v86 + v85[6], &qword_27C913090, &unk_2146E9DB0);
  sub_2144707D4(&v100);
  v82 = v101;
  LODWORD(v81) = v102;
  LODWORD(v80) = v103;
  LOBYTE(v22) = v104;
  sub_214470918(&v96);
  v25 = v97;
  v26 = v98;
  v27 = v99;
  sub_214470A38(&v91);
  v28 = v92;
  v29 = v93;
  v30 = v94;
  v31 = v95;
  *v24 = v100;
  v24[2] = v82;
  *(v24 + 24) = v81;
  *(v24 + 25) = v80;
  *(v24 + 26) = v22;
  *(v24 + 2) = v96;
  v24[6] = v25;
  v24[7] = v26;
  *(v24 + 64) = v27;
  v32 = v24 + v23[7];
  *v32 = v91;
  *(v32 + 2) = v28;
  v32[24] = v29;
  v32[25] = v30;
  v32[26] = v31;
  v34 = *v24;
  v33 = v24[1];
  v82 = v24[2];
  LODWORD(v81) = *(v24 + 24);
  LODWORD(v80) = *(v24 + 25);
  v35 = *(v24 + 26);
  *&v100 = v84;
  BYTE8(v100) = v83;
  LODWORD(v85) = v35;
  LOBYTE(v91) = v35;
  *&v96 = 0xD000000000000018;
  *(&v96 + 1) = 0x800000021478EB90;
  v97 = 0xD00000000000001CLL;
  v98 = 0x800000021478A360;

  v36 = v34(&v100, &v91, &v96);
  v75 = 0xD000000000000018;
  v76 = 0x800000021478A360;
  if (v36)
  {
    v37 = v76;

    v38 = v86;
    v39 = v86[1];

    *v38 = v34;
    v38[1] = v33;
    v38[2] = v84;
    *(v38 + 24) = v83;
    *(v38 + 25) = 0;
    *(v38 + 26) = v85;
    v41 = v38[4];
    v40 = v38[5];
    v42 = v38[6];
    v43 = v38[7];
    v44 = *(v38 + 64);
    v45 = v89;
    *&v100 = v79;
    *(&v100 + 1) = v89;
    LODWORD(v84) = v44;
    LOBYTE(v91) = v44;
    v80 = 0xD00000000000001BLL;
    *&v96 = 0xD00000000000001BLL;
    *(&v96 + 1) = 0x800000021478EBB0;
    v81 = 0x800000021478EBB0;
    v97 = 0xD00000000000001CLL;
    v98 = v37;

    v83 = v42;
    v82 = v43;
    sub_213FDC9D0(v42, v43);
    v46 = v40;
    v85 = v41;
    v47 = (v41)(&v100, &v91, &v96);
    v51 = v80;
    v52 = v81;
    v53 = v45;
    if (v47)
    {
      sub_213FDC6D0(v83, v82);
      v54 = v76;

      v55 = v86;
      v56 = v86[5];
      v83 = v86[6];
      v57 = v86[7];

      sub_213FDC6D0(v83, v57);
      v55[4] = v85;
      v55[5] = v46;
      v55[6] = v79;
      v55[7] = v53;
      *(v55 + 64) = v84;
      v58 = *v32;
      v59 = *(v32 + 1);
      v83 = *(v32 + 2);
      LODWORD(v85) = v32[24];
      LODWORD(v84) = v32[25];
      v60 = v32[26];
      v61 = v77;
      *&v100 = v77;
      BYTE8(v100) = v78;
      LODWORD(v89) = v60;
      LOBYTE(v91) = v60;
      *&v96 = v75;
      *(&v96 + 1) = 0x800000021478EBD0;
      v97 = 0xD00000000000001CLL;
      v98 = v54;
      v62 = v58;

      v63 = v62(&v100, &v91, &v96);
      if (v63)
      {

        sub_213FB2DF4(v87, &qword_27C913090, &unk_2146E9DB0);
        (*(v90 + 8))(v9, v17);
        v72 = *(v32 + 1);

        *v32 = v62;
        *(v32 + 1) = v59;
        *(v32 + 2) = v61;
        v32[24] = v78;
        v32[25] = 0;
        v32[26] = v89;
        sub_214328704(v86, v88, type metadata accessor for IDSSampleMessage);
        v16 = v105;
        return __swift_destroy_boxed_opaque_existential_1(v16);
      }

      sub_214031C4C();
      swift_allocError();
      *v73 = v75;
      v73[1] = 0x800000021478EBD0;
      v73[2] = 0xD00000000000001CLL;
      v73[3] = v76;
      swift_willThrow();
      sub_213FB2DF4(v87, &qword_27C913090, &unk_2146E9DB0);
      (*(v90 + 8))(v9, v17);
      v74 = *(v32 + 1);

      *v32 = v62;
      *(v32 + 1) = v59;
      *(v32 + 2) = v83;
      v32[24] = v85;
      v32[25] = v84;
      v32[26] = v89;
      v49 = v86;
    }

    else
    {
      v64 = v9;
      sub_214031C4C();
      swift_allocError();
      *v65 = v51;
      v65[1] = v52;
      v66 = v76;
      v65[2] = 0xD00000000000001CLL;
      v65[3] = v66;
      swift_willThrow();

      v67 = v90;
      sub_213FB2DF4(v87, &qword_27C913090, &unk_2146E9DB0);
      (*(v67 + 8))(v64, v17);
      v49 = v86;
      v68 = v86[5];
      v69 = v86[6];
      v70 = v86[7];

      sub_213FDC6D0(v69, v70);
      v49[4] = v85;
      v49[5] = v46;
      v71 = v82;
      v49[6] = v83;
      v49[7] = v71;
      *(v49 + 64) = v84;
    }
  }

  else
  {

    sub_214031C4C();
    swift_allocError();
    *v48 = v75;
    v48[1] = 0x800000021478EB90;
    v48[2] = 0xD00000000000001CLL;
    v48[3] = v76;
    swift_willThrow();
    sub_213FB2DF4(v87, &qword_27C913090, &unk_2146E9DB0);
    (*(v90 + 8))(v9, v17);
    v49 = v86;
    v50 = v86[1];

    *v49 = v34;
    v49[1] = v33;
    v49[2] = v82;
    *(v49 + 24) = v81;
    *(v49 + 25) = v80;
    *(v49 + 26) = v85;
  }

  __swift_destroy_boxed_opaque_existential_1(v105);
  return sub_21432887C(v49, type metadata accessor for IDSSampleMessage);
}

uint64_t sub_21415EEC8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9078C8, &qword_2146F4BD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F639C();
  sub_2146DAA28();
  if ((*(v3 + 25) & 1) == 0)
  {
    v11 = *(v3 + 24);
    v19 = *(v3 + 16);
    LOBYTE(v20) = v11 & 1;
    v21 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    if (v2)
    {
      return (*(v6 + 8))(v9, v5);
    }

    v12 = *(v3 + 56);
    if (v12 != 1)
    {
      v19 = *(v3 + 48);
      v20 = v12;
      v21 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      v18 = type metadata accessor for IDSSampleMessage(0);
      v13 = *(v18 + 24);
      LOBYTE(v19) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
      sub_2142EC30C();
      sub_2146DA388();
      v14 = v3 + *(v18 + 28);
      if ((*(v14 + 25) & 1) == 0)
      {
        v15 = *(v14 + 24);
        v19 = *(v14 + 16);
        LOBYTE(v20) = v15 & 1;
        v21 = 3;
        sub_2146DA388();
        return (*(v6 + 8))(v9, v5);
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21415F22C(uint64_t a1)
{
  v2 = sub_2142F63F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21415F268(uint64_t a1)
{
  v2 = sub_2142F63F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21415F2A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for IDSSampleMessageType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9078D0, &qword_2146F4BE0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F63F0();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v17;
    sub_214328930(&qword_27C9078E0, type metadata accessor for IDSSampleMessageType);
    v14 = v18;
    sub_2146DA1C8();
    (*(v8 + 8))(v11, v7);
    sub_214328704(v14, v13, type metadata accessor for IDSSampleMessageType);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21415F4B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9078E8, &qword_2146F4BE8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F63F0();
  sub_2146DAA28();
  type metadata accessor for IDSSampleMessageType(0);
  sub_214328930(&qword_27C9078F0, type metadata accessor for IDSSampleMessageType);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21415F640(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9078E8, &qword_2146F4BE8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F63F0();
  sub_2146DAA28();
  type metadata accessor for IDSSampleMessageType(0);
  sub_214328930(&qword_27C9078F0, type metadata accessor for IDSSampleMessageType);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21415F7C8(uint64_t a1)
{
  v2 = sub_2142F6444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21415F804(uint64_t a1)
{
  v2 = sub_2142F6444();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21415F8F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

unint64_t sub_21415F90C()
{
  v1 = 0xD000000000000013;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000011;
  }

  v2 = 0xD000000000000018;
  if (!*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_21415F980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143699F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21415F9A8(uint64_t a1)
{
  v2 = sub_2142F6498();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21415F9E4(uint64_t a1)
{
  v2 = sub_2142F6498();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21415FA20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907910, &qword_2146F4C00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F6498();
  sub_2146DAA08();
  if (!v2)
  {
    v22 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    v24 = 0;
    sub_2142E1278();
    sub_2146DA1C8();
    v21 = *(&v23 + 1);
    v11 = v23;
    v24 = 1;
    sub_2146DA1C8();
    v20 = v11;
    v19 = *(&v23 + 1);
    v12 = v23;
    v24 = 2;
    sub_2146DA1C8();
    v13 = v12;
    v14 = v23;
    v24 = 3;
    sub_21406116C();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v16 = v21;
    v17 = v22;
    *v22 = v20;
    v17[1] = v16;
    v18 = v19;
    v17[2] = v13;
    v17[3] = v18;
    *(v17 + 2) = v14;
    *(v17 + 3) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21415FD20(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907920, &qword_2146F4C08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v23 = v1[3];
  v24 = v10;
  v11 = v1[4];
  v21 = v1[5];
  v22 = v11;
  v12 = v1[7];
  v19 = v1[6];
  v20 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FDCA18(v8, v9);
  sub_2142F6498();
  sub_2146DAA28();
  v26 = v8;
  v27 = v9;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  sub_2142E1CAC();
  v14 = v25;
  sub_2146DA388();
  if (v14)
  {
    sub_213FDC6BC(v26, v27);
  }

  else
  {
    v15 = v21;
    v16 = v22;
    sub_213FDC6BC(v26, v27);
    v26 = v24;
    v27 = v23;
    v28 = 1;
    sub_213FDCA18(v24, v23);
    sub_2146DA388();
    sub_213FDC6BC(v26, v27);
    v26 = v16;
    v27 = v15;
    v28 = 2;
    sub_213FDCA18(v16, v15);
    sub_2146DA388();
    sub_213FDC6BC(v26, v27);
    v26 = v19;
    v27 = v20;
    v28 = 3;
    sub_21402D9F8(v19, v20);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v26, v27);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t RedWoodInvite.init(with:resourcepath:isprod:aaToken:timeout:appleName:shareType:isESM:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(void, void, void), uint64_t a15, char a16)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v19 = swift_allocObject();
  LOBYTE(v75) = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = 128;
  *(v20 + 24) = v75;
  *(v19 + 16) = sub_2142F64EC;
  *(v19 + 24) = v20;
  *(v18 + 32) = v19;
  sub_214042B80(v18, &v75);
  v22 = v75;
  v21 = v76;
  v23 = v78;
  v49 = v77;
  v24 = v79;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2146E9BF0;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_2140676DC;
  *(v26 + 24) = 0;
  *(v25 + 32) = v26;
  sub_214042B80(v25, &v116);
  v72 = v116;
  v127 = v117;
  v50 = v118;
  v74 = v119;
  v73 = v120;
  sub_2145DF858(v114);
  v67 = v114[0];
  v71 = v114[2];
  v69 = v114[1];
  v70 = v114[3];
  v62 = v115;
  sub_2145DF978(v112);
  v51 = v112[0];
  v66 = v112[2];
  v64 = v112[1];
  v65 = v112[3];
  v57 = v113;
  sub_2145DFB8C(v110);
  v53 = v110[0];
  v59 = v110[2];
  v60 = v110[3];
  v61 = v110[1];
  v58 = v111;
  v121 = a11 & 1;
  v116 = a1;
  v117 = a2;
  v54 = v24;
  LOBYTE(v114[0]) = v24;
  v75 = 0xD00000000000001ALL;
  v76 = 0x800000021478EBF0;
  v77 = 0xD00000000000001CLL;
  v78 = 0x800000021478A360;

  v27 = v22(&v116, v114, &v75);
  if (v52)
  {

    v28 = v53;
    v29 = v21;
LABEL_6:

    a1 = v49;
    v32 = v50;
    v33 = v57;
    v34 = v51;
LABEL_7:
    v35 = v62;
LABEL_8:
    *&v94[3] = *(v124 + 3);
    *v94 = v124[0];
    *&v97[3] = *(v123 + 3);
    *v97 = v123[0];
    *&v103[3] = *&v122[3];
    *v103 = *v122;
    v75 = v22;
    v76 = v29;
    v77 = a1;
    v78 = v23;
    v79 = v54;
    *v80 = v126[0];
    *&v80[3] = *(v126 + 3);
    v81 = a3;
    v82 = a4;
    v83 = v72;
    v84 = v127;
    v85 = v32;
    v86 = v74;
    v87 = v73;
    *&v88[3] = *&v125[3];
    *v88 = *v125;
    v89 = v67;
    v90 = v69;
    v91 = v71;
    v92 = v70;
    v93 = v35;
    v95 = a10;
    v96 = a11 & 1;
    v98 = v34;
    v99 = v64;
    v100 = v66;
    v101 = v65;
    v102 = v33;
    v104 = v28;
    v105 = v61;
    v106 = v59;
    v107 = v60;
    v108 = v58;
    v109 = a16;
    return sub_2142F6504(&v75);
  }

  v45 = a2;
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD00000000000001ALL;
    v31[1] = 0x800000021478EBF0;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v53;
    v29 = v21;
    goto LABEL_6;
  }

  v29 = v21;

  v116 = a5;
  v117 = a6;
  LOBYTE(v114[0]) = v73;
  v75 = 0xD000000000000014;
  v76 = 0x800000021478EC10;
  v77 = 0xD00000000000001CLL;
  v78 = 0x800000021478A360;

  v30 = v72(&v116, v114, &v75);
  v33 = v57;
  v34 = v51;
  v35 = v62;
  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v38 = 0xD000000000000014;
    v38[1] = 0x800000021478EC10;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v53;

    v23 = v45;
    v32 = v50;
    goto LABEL_8;
  }

  v116 = a7;
  v117 = a8;
  LOBYTE(v114[0]) = v62;
  v75 = 0xD000000000000015;
  v76 = 0x800000021478EC30;
  v77 = 0xD00000000000001CLL;
  v78 = 0x800000021478A360;

  sub_213FDC9D0(v71, v70);
  v37 = v67(&v116, v114, &v75);
  if ((v37 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD000000000000015;
    v40[1] = 0x800000021478EC30;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v53;

    sub_213FDC6D0(v71, v70);
    v23 = v45;
    v32 = a5;
    v74 = a6;
    goto LABEL_8;
  }

  sub_213FDC6D0(v71, v70);

  sub_213FDC6D0(v71, v70);
  v116 = a12;
  v117 = a13;
  LOBYTE(v114[0]) = v57;
  v75 = 0xD000000000000017;
  v76 = 0x800000021478EC50;
  v77 = 0xD00000000000001CLL;
  v78 = 0x800000021478A360;

  sub_213FDC9D0(v66, v65);
  v39 = v51(&v116, v114, &v75);
  if ((v39 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000017;
    v42[1] = 0x800000021478EC50;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v53;

    sub_213FDC6D0(v66, v65);
    v23 = v45;
    v74 = a6;
    v32 = a5;
    v70 = a8;
    v71 = a7;
    goto LABEL_7;
  }

  sub_213FDC6D0(v66, v65);

  sub_213FDC6D0(v66, v65);
  v116 = a14;
  v117 = a15;
  LOBYTE(v114[0]) = v58;
  v75 = 0xD000000000000017;
  v76 = 0x800000021478EC70;
  v77 = 0xD00000000000001CLL;
  v78 = 0x800000021478A360;

  sub_213FDC9D0(v59, v60);
  v41 = v53(&v116, v114, &v75);
  v28 = v53;
  if ((v41 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v44 = 0xD000000000000017;
    v44[1] = 0x800000021478EC70;
    v44[2] = 0xD00000000000001CLL;
    v44[3] = 0x800000021478A360;
    swift_willThrow();

    v33 = v57;

    sub_213FDC6D0(v59, v60);
    v23 = v45;
    v74 = a6;
    v32 = a5;
    v70 = a8;
    v71 = a7;
    v65 = a13;
    v66 = a12;
    goto LABEL_7;
  }

  sub_213FDC6D0(v59, v60);

  result = sub_213FDC6D0(v59, v60);
  *a9 = v22;
  *(a9 + 8) = v21;
  *(a9 + 16) = a1;
  *(a9 + 24) = v45;
  *(a9 + 32) = v54;
  *(a9 + 33) = v126[0];
  *(a9 + 36) = *(v126 + 3);
  *(a9 + 40) = a3;
  *(a9 + 48) = a4;
  v43 = v127;
  *(a9 + 56) = v72;
  *(a9 + 64) = v43;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = v73;
  *(a9 + 89) = *v125;
  *(a9 + 92) = *&v125[3];
  *(a9 + 96) = v67;
  *(a9 + 104) = v69;
  *(a9 + 112) = a7;
  *(a9 + 120) = a8;
  *(a9 + 128) = v62;
  *(a9 + 132) = *(v124 + 3);
  *(a9 + 129) = v124[0];
  *(a9 + 136) = a10;
  *(a9 + 144) = a11 & 1;
  *(a9 + 148) = *(v123 + 3);
  *(a9 + 145) = v123[0];
  *(a9 + 152) = v51;
  *(a9 + 160) = v64;
  *(a9 + 168) = a12;
  *(a9 + 176) = a13;
  *(a9 + 184) = v57;
  LODWORD(v43) = *v122;
  *(a9 + 188) = *&v122[3];
  *(a9 + 185) = v43;
  *(a9 + 192) = v53;
  *(a9 + 200) = v61;
  *(a9 + 208) = a14;
  *(a9 + 216) = a15;
  *(a9 + 224) = v58;
  *(a9 + 225) = a16;
  return result;
}

uint64_t sub_214160B34()
{
  v1 = *v0;
  v2 = 0x546E6F6973736573;
  v3 = 0x7079546572616873;
  if (v1 != 6)
  {
    v3 = 0x4D53457369;
  }

  v4 = 0x74756F656D6974;
  if (v1 != 4)
  {
    v4 = 0x6D614E656C707061;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x646F72707369;
  if (v1 != 2)
  {
    v5 = 0x6E656B6F546161;
  }

  if (*v0)
  {
    v2 = 0x656372756F736572;
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

uint64_t sub_214160C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214369B58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214160C68(uint64_t a1)
{
  v2 = sub_2142F6558();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214160CA4(uint64_t a1)
{
  v2 = sub_2142F6558();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RedWoodInvite.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907928, &qword_2146F4C10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v73 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v181 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142F6558();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v181);
  }

  v12 = v6;
  v115 = a2;
  LOBYTE(v131) = 0;
  v13 = sub_2146DA168();
  v15 = v14;
  v114 = v13;
  LOBYTE(v131) = 1;
  v17 = v5;
  v16 = sub_2146DA168();
  v19 = v18;
  v113 = v16;
  LOBYTE(v131) = 2;
  v110 = sub_2146DA168();
  v111 = v19;
  v112 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v116) = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v109 = v131;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v116) = 4;
  sub_2142E11FC();
  sub_2146DA1C8();
  v108 = v131;
  v22 = BYTE8(v131);
  LOBYTE(v116) = 5;
  sub_2146DA1C8();
  v106 = v22;
  v107 = *(&v131 + 1);
  v23 = v131;
  LOBYTE(v116) = 6;
  sub_2146DA1C8();
  v24 = *(&v131 + 1);
  v102 = v131;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  v174 = 7;
  sub_2142E1378();
  sub_2146DA1C8();
  v75 = v23;
  v77 = v17;
  v79 = v24;
  v78 = v175;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v25 = swift_allocObject();
  v101 = xmmword_2146E9BF0;
  *(v25 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v26 = swift_allocObject();
  LOBYTE(v131) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 128;
  *(v27 + 24) = v131;
  *(v26 + 16) = sub_21438F674;
  *(v26 + 24) = v27;
  *(v25 + 32) = v26;
  sub_214042B80(v25, &v131);
  v28 = *(&v131 + 1);
  v76 = v132;
  v103 = v133;
  v104 = v131;
  v105 = v134;
  v29 = swift_allocObject();
  *(v29 + 16) = v101;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2140676DC;
  *(v30 + 24) = 0;
  *(v29 + 32) = v30;
  sub_214042B80(v29, &v116);
  v97 = v116;
  v89 = v117;
  v99 = *(&v116 + 1);
  v100 = *(&v117 + 1);
  v98 = v118;
  sub_2145DF858(&v168);
  v90 = v168;
  v94 = v170;
  v92 = v169;
  v93 = v171;
  v91 = v172;
  sub_2145DF978(v166);
  v84 = v166[0];
  v86 = v166[1];
  v87 = v166[2];
  v88 = v166[3];
  v85 = v167;
  sub_2145DFB8C(v164);
  v80 = v164[0];
  v31 = v164[2];
  v82 = v164[3];
  v83 = v164[1];
  v81 = v165;
  v173 = v106;
  *&v116 = v114;
  *(&v116 + 1) = v15;
  LOBYTE(v168) = v105;
  *&v131 = 0xD00000000000001ALL;
  v95 = 0x800000021478EBF0;
  *(&v131 + 1) = 0x800000021478EBF0;
  v132 = 0xD00000000000001CLL;
  *&v101 = 0x800000021478A360;
  v133 = 0x800000021478A360;

  v96 = v28;
  v32 = v104(&v116, &v168, &v131);
  v74 = v31;
  if ((v32 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD00000000000001ALL;
    v36[1] = v95;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = v101;
    swift_willThrow();

    v37 = v74;

    (*(v12 + 8))(v9, v77);
    v15 = v103;

    v38 = v96;

    v114 = v76;
    v39 = v111;
    v40 = v108;
    goto LABEL_8;
  }

  v33 = v101;

  *&v116 = v110;
  *(&v116 + 1) = v112;
  LOBYTE(v168) = v98;
  *&v131 = 0xD000000000000014;
  *(&v131 + 1) = 0x800000021478EC10;
  v132 = 0xD00000000000001CLL;
  v133 = v33;

  if ((v97(&v116, &v168, &v131) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000014;
    v42[1] = 0x800000021478EC10;
    v43 = v101;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = v43;
    swift_willThrow();

    (*(v12 + 8))(v9, v77);

LABEL_11:
    v39 = v111;
    v40 = v108;
    v38 = v96;
    v37 = v74;
    goto LABEL_8;
  }

  v34 = v101;

  v116 = v109;
  LOBYTE(v168) = v91;
  *&v131 = 0xD000000000000015;
  *(&v131 + 1) = 0x800000021478EC30;
  v132 = 0xD00000000000001CLL;
  v133 = v34;

  sub_213FDC9D0(v94, v93);
  v35 = v90(&v116, &v168, &v131);
  if ((v35 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v48 = 0xD000000000000015;
    v48[1] = 0x800000021478EC30;
    v48[2] = 0xD00000000000001CLL;
    v48[3] = v101;
    swift_willThrow();

    (*(v12 + 8))(v9, v77);

    sub_213FDC6D0(v94, v93);
    v89 = v110;
    v100 = v112;
    goto LABEL_11;
  }

  v45 = v93;
  v44 = v94;
  sub_213FDC6D0(v94, v93);
  v46 = v101;

  sub_213FDC6D0(v44, v45);
  *&v116 = v75;
  *(&v116 + 1) = v107;
  LOBYTE(v168) = v85;
  *&v131 = 0xD000000000000017;
  *(&v131 + 1) = 0x800000021478EC50;
  v132 = 0xD00000000000001CLL;
  v133 = v46;

  sub_213FDC9D0(v87, v88);
  v47 = v84(&v116, &v168, &v131);
  if ((v47 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v52 = 0xD000000000000017;
    v52[1] = 0x800000021478EC50;
    v52[2] = 0xD00000000000001CLL;
    v52[3] = v101;
    swift_willThrow();

    (*(v12 + 8))(v9, v77);

    sub_213FDC6D0(v87, v88);
    v89 = v110;
    v100 = v112;
    v93 = *(&v109 + 1);
    v94 = v109;
    goto LABEL_11;
  }

  v49 = v87;
  sub_213FDC6D0(v87, v88);
  v50 = v101;

  sub_213FDC6D0(v49, v88);
  v168 = v102;
  v169 = v79;
  LOBYTE(v116) = v81;
  *&v131 = 0xD000000000000017;
  *(&v131 + 1) = 0x800000021478EC70;
  v132 = 0xD00000000000001CLL;
  v133 = v50;

  sub_213FDC9D0(v74, v82);
  v51 = v80(&v168, &v116, &v131);
  if (v51)
  {
    v53 = v74;
    v54 = v82;
    sub_213FDC6D0(v74, v82);

    (*(v12 + 8))(v9, v77);

    sub_213FDC6D0(v53, v54);
    *(&v124 + 1) = *v178;
    *(&v125 + 1) = *v177;
    HIDWORD(v127) = *&v176[3];
    *(&v127 + 9) = *v176;
    *(&v118 + 1) = v180[0];
    DWORD1(v118) = *(v180 + 3);
    *(&v121 + 9) = *v179;
    HIDWORD(v121) = *&v179[3];
    DWORD1(v124) = *&v178[3];
    DWORD1(v125) = *&v177[3];
    LOBYTE(v130) = v81;
    HIBYTE(v130) = v78;
    v56 = v114;
    v55 = v115;
    *(v115 + 224) = v130;
    v57 = v104;
    v58 = v96;
    *&v116 = v104;
    *(&v116 + 1) = v96;
    *&v117 = v56;
    *(&v117 + 1) = v15;
    v59 = v15;
    v60 = v105;
    LOBYTE(v118) = v105;
    *(&v118 + 1) = v113;
    *&v119 = v111;
    *(&v119 + 1) = v97;
    *&v120 = v99;
    *(&v120 + 1) = v110;
    *&v121 = v112;
    BYTE8(v121) = v98;
    *&v122 = v90;
    *(&v122 + 1) = v92;
    v123 = v109;
    LOBYTE(v124) = v91;
    *(&v124 + 1) = v108;
    LOBYTE(v125) = v106;
    *(&v125 + 1) = v84;
    *&v126 = v86;
    v61 = v75;
    *(&v126 + 1) = v75;
    *&v127 = v107;
    BYTE8(v127) = v85;
    *&v128 = v80;
    *(&v128 + 1) = v83;
    *&v129 = v102;
    *(&v129 + 1) = v79;
    v62 = v117;
    *v55 = v116;
    v55[1] = v62;
    v63 = v118;
    v64 = v119;
    v65 = v121;
    v55[4] = v120;
    v55[5] = v65;
    v55[2] = v63;
    v55[3] = v64;
    v66 = v122;
    v67 = v123;
    v68 = v125;
    v55[8] = v124;
    v55[9] = v68;
    v55[6] = v66;
    v55[7] = v67;
    v69 = v126;
    v70 = v127;
    v71 = v129;
    v55[12] = v128;
    v55[13] = v71;
    v55[10] = v69;
    v55[11] = v70;
    sub_21404F098(&v116, &v131);
    __swift_destroy_boxed_opaque_existential_1(v181);
    *&v131 = v57;
    *(&v131 + 1) = v58;
    v132 = v56;
    v133 = v59;
    v134 = v60;
    *v135 = v180[0];
    *&v135[3] = *(v180 + 3);
    v136 = v113;
    v137 = v111;
    v138 = v97;
    v139 = v99;
    v140 = v110;
    v141 = v112;
    v142 = v98;
    *v143 = *v179;
    *&v143[3] = *&v179[3];
    v144 = v90;
    v145 = v92;
    v146 = v109;
    v147 = v91;
    *v148 = *v178;
    *&v148[3] = *&v178[3];
    v149 = v108;
    v150 = v106;
    *v151 = *v177;
    *&v151[3] = *&v177[3];
    v152 = v84;
    v153 = v86;
    v154 = v61;
    v155 = v107;
    v156 = v85;
    *&v157[3] = *&v176[3];
    *v157 = *v176;
    v158 = v80;
    v159 = v83;
    v160 = v102;
    v41 = v79;
    goto LABEL_9;
  }

  sub_214031C4C();
  swift_allocError();
  *v72 = 0xD000000000000017;
  v72[1] = 0x800000021478EC70;
  v72[2] = 0xD00000000000001CLL;
  v72[3] = v101;
  swift_willThrow();

  (*(v12 + 8))(v9, v77);

  v37 = v74;
  sub_213FDC6D0(v74, v82);
  v39 = v111;
  v100 = v112;
  v93 = *(&v109 + 1);
  v94 = v109;
  v87 = v75;
  v40 = v108;
  v88 = v107;
  v89 = v110;
  v38 = v96;
LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v181);
  *&v131 = v104;
  *(&v131 + 1) = v38;
  v132 = v114;
  v133 = v15;
  v134 = v105;
  *v135 = v180[0];
  *&v135[3] = *(v180 + 3);
  v136 = v113;
  v137 = v39;
  v138 = v97;
  v139 = v99;
  v140 = v89;
  v141 = v100;
  v142 = v98;
  *v143 = *v179;
  *&v143[3] = *&v179[3];
  v144 = v90;
  v145 = v92;
  *&v146 = v94;
  *(&v146 + 1) = v93;
  v147 = v91;
  *&v148[3] = *&v178[3];
  *v148 = *v178;
  v149 = v40;
  v150 = v106;
  *&v151[3] = *&v177[3];
  *v151 = *v177;
  v152 = v84;
  v153 = v86;
  v154 = v87;
  v155 = v88;
  v156 = v85;
  *&v157[3] = *&v176[3];
  *v157 = *v176;
  v158 = v80;
  v41 = v82;
  v159 = v83;
  v160 = v37;
LABEL_9:
  v161 = v41;
  v162 = v81;
  v163 = v78;
  return sub_2142F6504(&v131);
}

uint64_t RedWoodInvite.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907938, &qword_2146F4C18);
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 40);
  v29 = *(v1 + 48);
  v30 = v10;
  v11 = *(v1 + 80);
  v27 = *(v1 + 72);
  v28 = v11;
  v12 = *(v1 + 112);
  v25 = *(v1 + 120);
  v26 = v12;
  v13 = *(v1 + 136);
  v34 = *(v1 + 144);
  v14 = *(v1 + 176);
  v23 = *(v1 + 168);
  v24 = v13;
  v15 = *(v1 + 216);
  v21 = *(v1 + 208);
  v22 = v14;
  v20 = v15;
  v19 = *(v1 + 225);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F6558();
  sub_2146DAA28();
  if (!v9)
  {
    goto LABEL_9;
  }

  LOBYTE(v32) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v31 + 8))(v7, v4);
  }

  LOBYTE(v32) = 1;
  sub_2146DA328();
  if (!v28)
  {
    goto LABEL_9;
  }

  LOBYTE(v32) = 2;

  sub_2146DA328();

  if (v25 == 1)
  {
    goto LABEL_9;
  }

  v32 = v26;
  v33 = v25;
  v35 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  v32 = v24;
  LOBYTE(v33) = v34;
  v35 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  sub_2142E1C30();
  sub_2146DA388();
  if (v22 == 1 || (v32 = v23, v33 = v22, v35 = 5, sub_2146DA388(), v20 == 1))
  {
LABEL_9:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v32 = v21;
    v33 = v20;
    v35 = 6;
    sub_2146DA388();
    LOBYTE(v32) = v19;
    v35 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    sub_2142E1D30();
    sub_2146DA388();
    return (*(v31 + 8))(v7, v4);
  }

  return result;
}

void *sub_214162300@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v17 = a1[1];
  __src[0] = *a1;
  __src[1] = v17;
  v18 = a1[3];
  __src[2] = a1[2];
  __src[3] = v18;
  v19 = *(a2 + 208);
  __src[16] = *(a2 + 192);
  __src[17] = v19;
  LOWORD(__src[18]) = *(a2 + 224);
  v20 = *(a2 + 144);
  __src[12] = *(a2 + 128);
  __src[13] = v20;
  v21 = *(a2 + 176);
  __src[14] = *(a2 + 160);
  __src[15] = v21;
  v22 = *(a2 + 80);
  __src[8] = *(a2 + 64);
  __src[9] = v22;
  v23 = *(a2 + 112);
  __src[10] = *(a2 + 96);
  __src[11] = v23;
  v24 = *(a2 + 16);
  __src[4] = *a2;
  __src[5] = v24;
  v25 = *(a2 + 48);
  __src[6] = *(a2 + 32);
  __src[7] = v25;
  result = memcpy(a9, __src, 0x122uLL);
  *(a9 + 290) = a3;
  *(a9 + 296) = a4;
  *(a9 + 304) = a5;
  *(a9 + 312) = a6;
  *(a9 + 320) = a7;
  *(a9 + 328) = a8;
  *(a9 + 336) = a10 & 1;
  return result;
}

uint64_t sub_2141623EC()
{
  v1 = *v0;
  v2 = 0x7265666E6F637661;
  v3 = 6581603;
  v4 = 0x496E6F6973736573;
  if (v1 != 4)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x49646F6F77646572;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
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

uint64_t sub_2141624BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214369DFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141624E4(uint64_t a1)
{
  v2 = sub_2142F65AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214162520(uint64_t a1)
{
  v2 = sub_2142F65AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416255C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907940, &unk_2146F4C20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142F65AC();
  sub_2146DAA08();
  if (!v2)
  {
    v12 = v6;
    v25 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904250, qword_214766C00);
    v66 = 0;
    sub_2142F6600();
    v13 = v5;
    sub_2146DA1C8();
    v62 = v67;
    v63 = v68;
    v64 = v69;
    v65 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904248, &qword_2146F4C30);
    v46 = 1;
    sub_2142F66D8();
    sub_2146DA1C8();
    v43 = v59;
    v44 = v60;
    v45 = v61;
    v39 = v55;
    v40 = v56;
    v41 = v57;
    v42 = v58;
    v35 = v51;
    v36 = v52;
    v37 = v53;
    v38 = v54;
    v31 = v47;
    v32 = v48;
    v33 = v49;
    v34 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v30 = 2;
    sub_2142E1378();
    sub_2146DA1C8();
    v24 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v30 = 3;
    sub_2142E12FC();
    sub_2146DA1C8();
    v22 = v28;
    v23 = v29;
    v30 = 4;
    sub_2146DA1C8();
    v15 = v23;
    v16 = v29;
    v21 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v30 = 5;
    sub_2142E11FC();
    sub_2146DA1C8();
    (*(v12 + 8))(v9, v13);
    v17 = v28;
    v18 = v29;
    *v27 = v62;
    *&v27[16] = v63;
    *&v27[32] = v64;
    *&v27[48] = v65;
    *&v27[256] = v43;
    *&v27[272] = v44;
    *&v27[288] = v45;
    *&v27[192] = v39;
    *&v27[208] = v40;
    *&v27[224] = v41;
    *&v27[240] = v42;
    *&v27[128] = v35;
    *&v27[144] = v36;
    *&v27[160] = v37;
    *&v27[176] = v38;
    *&v27[64] = v31;
    *&v27[80] = v32;
    *&v27[96] = v33;
    *&v27[112] = v34;
    v26 = v29;
    v19 = v25;
    memcpy(v25, v27, 0x122uLL);
    v19[290] = v24;
    v20 = v21;
    *(v19 + 37) = v22;
    *(v19 + 38) = v15;
    *(v19 + 39) = v20;
    *(v19 + 40) = v16;
    *(v19 + 41) = v17;
    v19[336] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(v71);
}

uint64_t sub_214162B08(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907970, &qword_2146F4C38);
  v80 = *(v3 - 8);
  v4 = *(v80 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - v5;
  v7 = v1[1];
  v61 = *v1;
  v62 = v7;
  v8 = v1[3];
  v63 = v1[2];
  v64 = v8;
  v9 = v1[17];
  v77 = v1[16];
  v78 = v9;
  v79 = *(v1 + 144);
  v10 = v1[13];
  v73 = v1[12];
  v74 = v10;
  v11 = v1[15];
  v75 = v1[14];
  v76 = v11;
  v12 = v1[9];
  v69 = v1[8];
  v70 = v12;
  v13 = v1[11];
  v71 = v1[10];
  v72 = v13;
  v14 = v1[5];
  v65 = v1[4];
  v66 = v14;
  v15 = v1[7];
  v67 = v1[6];
  v68 = v15;
  v32 = *(v1 + 290);
  v16 = *(v1 + 38);
  v30 = *(v1 + 37);
  v31 = v16;
  v17 = *(v1 + 40);
  v28 = *(v1 + 39);
  v29 = v17;
  v26 = *(v1 + 41);
  v27 = *(v1 + 336);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FB2E54(&v61, &v40, &qword_27C904250, qword_214766C00);
  sub_2142F65AC();
  v19 = v6;
  v20 = v3;
  sub_2146DAA28();
  v57 = v61;
  v58 = v62;
  v59 = v63;
  v60 = v64;
  v56 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904250, qword_214766C00);
  sub_2142F67B0();
  v21 = v33;
  sub_2146DA388();
  if (v21)
  {
    v40 = v57;
    v41 = v58;
    v42 = v59;
    v43 = v60;
    sub_213FB2DF4(&v40, &qword_27C904250, qword_214766C00);
    return (*(v80 + 8))(v6, v3);
  }

  else
  {
    v23 = v32;
    v24 = v80;
    v55[0] = v57;
    v55[1] = v58;
    v55[2] = v59;
    v55[3] = v60;
    sub_213FB2DF4(v55, &qword_27C904250, qword_214766C00);
    v52 = v77;
    v53 = v78;
    v54 = v79;
    v48 = v73;
    v49 = v74;
    v50 = v75;
    v51 = v76;
    v44 = v69;
    v45 = v70;
    v46 = v71;
    v47 = v72;
    v40 = v65;
    v41 = v66;
    v42 = v67;
    v43 = v68;
    v39 = 1;
    sub_213FB2E54(&v65, v37, &qword_27C904248, &qword_2146F4C30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904248, &qword_2146F4C30);
    sub_2142F6888();
    sub_2146DA388();
    v37[11] = v51;
    v37[12] = v52;
    v37[13] = v53;
    v37[7] = v47;
    v37[8] = v48;
    v38 = v54;
    v37[9] = v49;
    v37[10] = v50;
    v37[4] = v44;
    v37[5] = v45;
    v37[6] = v46;
    v37[0] = v40;
    v37[1] = v41;
    v37[2] = v42;
    v37[3] = v43;
    sub_213FB2DF4(v37, &qword_27C904248, &qword_2146F4C30);
    LOBYTE(v34) = v23;
    v36 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    sub_2142E1D30();
    sub_2146DA388();
    v34 = v30;
    v35 = v31;
    v36 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v34 = v28;
    v35 = v29;
    v36 = 4;
    sub_2146DA388();
    v34 = v26;
    LOBYTE(v35) = v27;
    v36 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    return (*(v24 + 8))(v19, v20);
  }
}

double sub_214163080@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, unint64_t a5@<X4>, uint64_t (*a6)(void, void, void)@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, char a11, char a12, char a13, uint64_t a14, unint64_t a15, char a16, uint64_t a17, unint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, char a23)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_214059900;
  *(v29 + 24) = 0;
  *(v28 + 32) = v29;
  v73 = a2;
  sub_213FDCA18(a2, a3);
  v74 = a8;
  sub_213FDCA18(a8, a10);
  sub_214042B80(v28, &v90);
  v30 = v90;
  v31 = v92;
  v67 = v91;
  v32 = v93;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2146E9BF0;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_214059900;
  *(v34 + 24) = 0;
  *(v33 + 32) = v34;
  sub_214042B80(v33, &v136);
  v151 = v136;
  v68 = v138;
  v87 = v139;
  v89 = v137;
  v35 = v140;
  sub_2146A6158(v134);
  v82 = v134[0];
  v85 = v134[2];
  v83 = v134[1];
  v84 = v134[3];
  v80 = v135;
  sub_2146A62C0(&v130);
  v79 = v130;
  v75 = v131;
  v76 = v132;
  v78 = v133;
  v71 = v32;
  v142 = a20 & 1;
  v141 = a22 & 1;
  v136 = a4;
  v137 = a5;
  LOBYTE(v134[0]) = v32;
  *&v90 = 0xD00000000000001ALL;
  *(&v90 + 1) = 0x800000021478EC90;
  v91 = 0xD00000000000001CLL;
  v92 = 0x800000021478A360;

  v36 = (v30)(&v136, v134, &v90);
  v70 = v35;
  if (v86)
  {
    sub_213FDC6BC(a17, a18);
    sub_213FDC6BC(a14, a15);

    v37 = a8;
    v38 = v31;
LABEL_6:
    v41 = a10;
    sub_213FDC6BC(v37, a10);
    v42 = v73;
    v43 = a3;
    sub_213FDC6BC(v73, a3);

    v45 = v67;
    v44 = v68;
    v47 = v75;
    v46 = v76;
    v48 = v82;
    v49 = v80;
    v51 = v84;
    v50 = v85;
    v52 = v83;
    v53 = *(&v30 + 1);
    v54 = v87;
LABEL_7:
    *&v90 = a1;
    *(&v90 + 1) = v42;
    v91 = v43;
    v92 = v30;
    v93 = v53;
    v94 = v45;
    v95 = v38;
    v96 = v71;
    *v97 = v150[0];
    *&v97[3] = *(v150 + 3);
    v98 = v151;
    v99 = v89;
    v100 = v44;
    v101 = v54;
    v102 = v70;
    *&v103[3] = *(v149 + 3);
    *v103 = v149[0];
    v104 = v37;
    v105 = v41;
    v106 = a11;
    v107 = a12;
    v108 = a13;
    v110 = v148;
    v109 = v147;
    v111 = v48;
    v112 = v52;
    v113 = v50;
    v114 = v51;
    v115 = v49;
    v116 = a16;
    v118 = v146;
    v117 = v145;
    v119 = v79;
    v120 = v47;
    v121 = v46;
    v122 = v78;
    *&v123[3] = *(v144 + 3);
    *v123 = v144[0];
    v124 = a19;
    v125 = a20 & 1;
    *&v126[3] = *(v143 + 3);
    *v126 = v143[0];
    v127 = a21;
    v128 = a22 & 1;
    v129 = a23;
    sub_2142F6960(&v90);
    return result;
  }

  v63 = a4;
  v64 = a5;
  if ((v36 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD00000000000001ALL;
    v40[1] = 0x800000021478EC90;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a17, a18);
    sub_213FDC6BC(a14, a15);

    v37 = a8;
    v38 = v31;
    goto LABEL_6;
  }

  v136 = a6;
  v137 = a7;
  LOBYTE(v134[0]) = v35;
  *&v90 = 0xD00000000000001ELL;
  *(&v90 + 1) = 0x800000021478ECB0;
  v91 = 0xD00000000000001CLL;
  v92 = 0x800000021478A360;

  v39 = v151(&v136, v134, &v90);
  v41 = a10;
  v43 = a3;
  if ((v39 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v56 = 0xD00000000000001ELL;
    v56[1] = 0x800000021478ECB0;
    v56[2] = 0xD00000000000001CLL;
    v56[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a17, a18);
    sub_213FDC6BC(a14, a15);

    v37 = a8;
    v42 = v73;
    sub_213FDC6BC(a8, a10);
    sub_213FDC6BC(v73, a3);
    v54 = v87;

    v38 = v64;
    v45 = a4;
    v47 = v75;
    v46 = v76;
    v48 = v82;
    v49 = v80;
    v51 = v84;
    v50 = v85;
    v52 = v83;
    v44 = v68;
    v53 = *(&v30 + 1);
    goto LABEL_7;
  }

  *&v90 = v82;
  *(&v90 + 1) = v83;
  v91 = v85;
  v92 = v84;
  LOBYTE(v93) = v80;

  sub_21404F7E0(v85, v84);
  sub_214032118(a14, a15, 2, 0xD000000000000029, 0x800000021478ECD0, 0xD00000000000001CLL, 0x800000021478A360);

  v57 = v90;
  v69 = v91;
  v88 = v92;
  v81 = v93;

  sub_214032564(v85, v84);
  v90 = v79;
  v91 = v75;
  v92 = v76;
  LOBYTE(v93) = v78;

  sub_21404F7E0(v75, v76);
  sub_214032118(a17, a18, 2, 0xD000000000000026, 0x800000021478ED00, 0xD00000000000001CLL, 0x800000021478A360);
  sub_213FDC6BC(a17, a18);
  sub_213FDC6BC(a14, a15);
  sub_213FDC6BC(a8, a10);
  sub_213FDC6BC(v73, a3);

  v59 = v91;
  v58 = v92;
  v60 = v93;

  sub_214032564(v75, v76);
  *a9 = a1;
  *(a9 + 8) = v73;
  *(a9 + 16) = a3;
  *(a9 + 24) = v30;
  *(a9 + 40) = v63;
  *(a9 + 48) = v64;
  *(a9 + 56) = v32;
  *(a9 + 57) = v150[0];
  *(a9 + 60) = *(v150 + 3);
  *(a9 + 64) = v151;
  *(a9 + 72) = v89;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = v70;
  v61 = v149[0];
  *(a9 + 100) = *(v149 + 3);
  *(a9 + 97) = v61;
  *(a9 + 104) = v74;
  *(a9 + 112) = a10;
  *(a9 + 120) = a11;
  *(a9 + 121) = a12;
  *(a9 + 122) = a13;
  *(a9 + 123) = v147;
  *(a9 + 127) = v148;
  *(a9 + 128) = v57;
  *(a9 + 144) = v69;
  *(a9 + 152) = v88;
  *(a9 + 160) = v81;
  *(a9 + 161) = a16;
  v62 = v145;
  *(a9 + 166) = v146;
  *(a9 + 162) = v62;
  result = *&v90;
  *(a9 + 168) = v90;
  *(a9 + 184) = v59;
  *(a9 + 192) = v58;
  *(a9 + 200) = v60;
  *(a9 + 204) = *(v144 + 3);
  *(a9 + 201) = v144[0];
  *(a9 + 208) = a19;
  *(a9 + 216) = a20 & 1;
  *(a9 + 220) = *(v143 + 3);
  *(a9 + 217) = v143[0];
  *(a9 + 224) = a21;
  *(a9 + 232) = a22 & 1;
  *(a9 + 233) = a23;
  return result;
}

unint64_t sub_214163B70(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      result = 1651469410;
      break;
    case 2:
      result = 0x496E6F6973736573;
      break;
    case 3:
      result = 0x7069636974726170;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 13:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000024;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x535365746F6D6572;
      break;
    case 12:
      result = 0x655365746F6D6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_214163D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436A014(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214163D48(uint64_t a1)
{
  v2 = sub_2142F69B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214163D84(uint64_t a1)
{
  v2 = sub_2142F69B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214163DC0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907998, &qword_2146F4C40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v59 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v166 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142F69B4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v166);
  }

  v98 = v6;
  v111[0] = 0;
  v12 = sub_2146DA1B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v99) = 1;
  sub_2142E1278();
  sub_2146DA1C8();
  v97 = v12;
  v14 = *v111;
  v111[0] = 2;
  *&v95 = sub_2146DA168();
  *(&v95 + 1) = v15;
  v96 = v14;
  v111[0] = 3;
  v16 = sub_2146DA168();
  v18 = v17;
  v94 = v16;
  LOBYTE(v99) = 4;
  sub_2146DA1C8();
  v92 = v18;
  v93 = *v111;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v99) = 5;
  *&v91 = sub_2142E1378();
  sub_2146DA1C8();
  v20 = v111[0];
  LOBYTE(v99) = 6;
  sub_2146DA1C8();
  v89 = v111[0];
  LOBYTE(v99) = 7;
  v90 = v19;
  sub_2146DA1C8();
  v88 = v20;
  v87 = v111[0];
  LOBYTE(v99) = 8;
  sub_2146DA1C8();
  v85 = *v111;
  LOBYTE(v99) = 9;
  v86 = v5;
  sub_2146DA1C8();
  v84 = v111[0];
  LOBYTE(v99) = 10;
  sub_2146DA1C8();
  v83 = *v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v99) = 11;
  sub_2142E11FC();
  sub_2146DA1C8();
  v81 = *v111;
  v82 = v111[8];
  LOBYTE(v99) = 12;
  sub_2146DA1C8();
  v79 = *v111;
  v80 = v111[8];
  v156 = 13;
  sub_2146DA1C8();
  v63 = v157;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v21 = swift_allocObject();
  v91 = xmmword_2146E9BF0;
  *(v21 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_214059900;
  *(v22 + 24) = 0;
  *(v21 + 32) = v22;
  sub_213FDCA18(v96, *(&v96 + 1));
  sub_213FDCA18(v93, *(&v93 + 1));
  sub_214042B80(v21, v111);
  v23 = *&v111[8];
  v78 = *v111;
  v24 = *&v111[24];
  *(&v61 + 1) = *&v111[16];
  v25 = v112;
  v26 = swift_allocObject();
  *(v26 + 16) = v91;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_214059900;
  *(v27 + 24) = 0;
  *(v26 + 32) = v27;
  sub_214042B80(v26, &v99);
  v73 = v99;
  v66 = v100;
  v76 = *(&v99 + 1);
  v77 = *(&v100 + 1);
  v74 = v101[0];
  sub_2146A6158(&v150);
  v70 = v150;
  v71 = v152;
  v72 = v151;
  v69 = v153;
  sub_2146A62C0(&v146);
  v65 = v146;
  v67 = v147;
  v68 = v148;
  v64 = v149;
  v155 = v82;
  v154 = v80;
  v99 = v95;
  v62 = v25;
  LOBYTE(v150) = v25;
  *v111 = 0xD00000000000001ALL;
  *&v111[8] = 0x800000021478EC90;
  *&v111[16] = 0xD00000000000001CLL;
  v75 = 0x800000021478A360;
  *&v111[24] = 0x800000021478A360;
  *&v91 = v24;

  v90 = v23;
  v28 = v78(&v99, &v150, v111);
  if (v28)
  {
    v29 = v75;

    *&v99 = v94;
    *(&v99 + 1) = v92;
    LOBYTE(v150) = v74;
    *v111 = 0xD00000000000001ELL;
    *&v111[8] = 0x800000021478ECB0;
    *&v111[16] = 0xD00000000000001CLL;
    *&v111[24] = v29;

    if (v73(&v99, &v150, v111))
    {
      v32 = v75;

      *v111 = v70;
      v33 = v71;
      v34 = v72;
      *&v111[16] = v72;
      *&v111[24] = v71;
      LOBYTE(v112) = v69;

      sub_21404F7E0(v34, v33);
      sub_214032118(v85, *(&v85 + 1), 2, 0xD000000000000029, 0x800000021478ECD0, 0xD00000000000001CLL, v32);
      v37 = v75;

      v60 = *&v111[8];
      *&v70 = *v111;
      v61 = *&v111[16];
      v69 = v112;

      sub_214032564(v72, v71);
      v150 = v65;
      v38 = v67;
      v39 = v68;
      v151 = v67;
      v152 = v68;
      v153 = v64;

      sub_21404F7E0(v38, v39);
      sub_214032118(v83, *(&v83 + 1), 2, 0xD000000000000026, 0x800000021478ED00, 0xD00000000000001CLL, v37);

      sub_213FDC6BC(v85, *(&v85 + 1));
      sub_213FDC6BC(v83, *(&v83 + 1));
      sub_213FDC6BC(v93, *(&v93 + 1));
      v40 = *(&v96 + 1);
      v41 = v96;
      sub_213FDC6BC(v96, *(&v96 + 1));
      (*(v98 + 8))(v9, v86);
      v98 = *(&v150 + 1);
      v42 = v150;
      *&v91 = v150;
      v43 = v152;
      *(&v85 + 1) = v151;
      v86 = v152;
      LODWORD(v85) = v153;

      sub_214032564(v67, v68);
      *&v101[25] = v165[0];
      *&v101[28] = *(v165 + 3);
      *&v104[4] = *&v164[3];
      *&v104[1] = *v164;
      *&v104[27] = v162;
      v104[31] = v163;
      WORD3(v107) = v161;
      *(&v107 + 2) = v160;
      HIDWORD(v109) = *&v159[3];
      *(&v109 + 9) = *v159;
      *(v110 + 9) = *v158;
      HIDWORD(v110[0]) = *&v158[3];
      *(&v99 + 1) = v41;
      *&v100 = v40;
      v44 = v78;
      *(&v100 + 1) = v78;
      *v101 = v90;
      v45 = *(&v95 + 1);
      *&v101[8] = v95;
      v101[24] = v62;
      *&v102 = v73;
      *(&v102 + 1) = v76;
      *&v103 = v94;
      *(&v103 + 1) = v92;
      v104[0] = v74;
      *&v104[8] = v93;
      v104[24] = v88;
      v104[25] = v89;
      v104[26] = v87;
      *&v105 = v70;
      *(&v105 + 1) = v60;
      v106 = v61;
      LOBYTE(v107) = v69;
      BYTE1(v107) = v84;
      *(&v107 + 1) = v42;
      *&v108 = v98;
      v46 = v97;
      v47 = *(&v85 + 1);
      *(&v108 + 1) = *(&v85 + 1);
      *&v109 = v43;
      LOBYTE(v43) = v85;
      BYTE8(v109) = v85;
      *&v110[0] = v81;
      BYTE8(v110[0]) = v82;
      *&v110[1] = v79;
      BYTE8(v110[1]) = v80;
      BYTE9(v110[1]) = v63;
      v48 = *(v110 + 10);
      *&v99 = v97;
      v49 = v100;
      *a2 = v99;
      a2[1] = v49;
      v50 = *v101;
      v51 = *&v101[16];
      v52 = v103;
      a2[4] = v102;
      a2[5] = v52;
      a2[2] = v50;
      a2[3] = v51;
      v53 = *v104;
      v54 = *&v104[16];
      v55 = v106;
      a2[8] = v105;
      a2[9] = v55;
      a2[6] = v53;
      a2[7] = v54;
      v56 = v107;
      v57 = v108;
      *(a2 + 218) = v48;
      v58 = v110[0];
      a2[12] = v109;
      a2[13] = v58;
      a2[10] = v56;
      a2[11] = v57;
      sub_2142F6A08(&v99, v111);
      __swift_destroy_boxed_opaque_existential_1(v166);
      *v111 = v46;
      *&v111[8] = v96;
      *&v111[24] = v44;
      v112 = v90;
      v113 = v95;
      v114 = v45;
      v115 = v62;
      *v116 = v165[0];
      *&v116[3] = *(v165 + 3);
      v117 = v73;
      v118 = v76;
      v119 = v94;
      v120 = v92;
      v121 = v74;
      *&v122[3] = *&v164[3];
      *v122 = *v164;
      v123 = v93;
      v124 = v88;
      v125 = v89;
      v126 = v87;
      v127 = v162;
      v128 = v163;
      *&v129 = v70;
      *(&v129 + 1) = v60;
      v130 = v61;
      v131 = v69;
      v132 = v84;
      v134 = v161;
      v133 = v160;
      *&v135 = v91;
      *(&v135 + 1) = v98;
      v136 = v47;
      v137 = v86;
      v138 = v43;
      *&v139[3] = *&v159[3];
      *v139 = *v159;
      v140 = v81;
      v141 = v82;
      *&v142[3] = *&v158[3];
      v31 = *v158;
      goto LABEL_8;
    }

    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD00000000000001ELL;
    v35[1] = 0x800000021478ECB0;
    v36 = v75;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = v36;
    swift_willThrow();

    sub_213FDC6BC(v85, *(&v85 + 1));
    sub_213FDC6BC(v83, *(&v83 + 1));
    sub_213FDC6BC(v93, *(&v93 + 1));
    sub_213FDC6BC(v96, *(&v96 + 1));
    (*(v98 + 8))(v9, v86);

    *&v91 = *(&v95 + 1);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD00000000000001ALL;
    v30[1] = 0x800000021478EC90;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = v75;
    swift_willThrow();

    sub_213FDC6BC(v85, *(&v85 + 1));
    sub_213FDC6BC(v83, *(&v83 + 1));
    sub_213FDC6BC(v93, *(&v93 + 1));
    sub_213FDC6BC(v96, *(&v96 + 1));
    (*(v98 + 8))(v9, v86);

    *&v95 = *(&v61 + 1);
  }

  __swift_destroy_boxed_opaque_existential_1(v166);
  *v111 = v97;
  *&v111[8] = v96;
  *&v111[24] = v78;
  v112 = v90;
  v113 = v95;
  v114 = v91;
  v115 = v62;
  *v116 = v165[0];
  *&v116[3] = *(v165 + 3);
  v117 = v73;
  v118 = v76;
  v119 = v66;
  v120 = v77;
  v121 = v74;
  *&v122[3] = *&v164[3];
  *v122 = *v164;
  v123 = v93;
  v124 = v88;
  v125 = v89;
  v126 = v87;
  v128 = v163;
  v127 = v162;
  v129 = v70;
  *&v130 = v72;
  *(&v130 + 1) = v71;
  v131 = v69;
  v132 = v84;
  v134 = v161;
  v133 = v160;
  v135 = v65;
  v136 = v67;
  v137 = v68;
  v138 = v64;
  *&v139[3] = *&v159[3];
  *v139 = *v159;
  v140 = v81;
  v141 = v82;
  v31 = *v158;
  *&v142[3] = *&v158[3];
LABEL_8:
  *v142 = v31;
  v143 = v79;
  v144 = v80;
  v145 = v63;
  return sub_2142F6960(v111);
}