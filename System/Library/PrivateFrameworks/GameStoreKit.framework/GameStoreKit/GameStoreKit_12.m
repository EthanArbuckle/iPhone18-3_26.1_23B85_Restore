unint64_t sub_24E72B8DC()
{
  result = qword_27F21A688;
  if (!qword_27F21A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A688);
  }

  return result;
}

uint64_t sub_24E72B930(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6575676573;
      break;
    case 2:
      result = 0x4D747865746E6F63;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x76417265646E6573;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x656C746974;
      break;
    case 7:
      result = 0x736C6C65737075;
      break;
    case 8:
      v3 = 0x65726F6E6769;
      goto LABEL_15;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
    case 13:
      result = 0xD000000000000016;
      break;
    case 11:
      v3 = 0x747065636361;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6341000000000000;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E72BACC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A7D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E72FFA8();
  sub_24F92D128();
  LOBYTE(v14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v9 = type metadata accessor for IncomingFriendRequest();
    LOBYTE(v14) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    LOBYTE(v14) = 3;
    sub_24F929608();
    sub_24E731238(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    LOBYTE(v14) = 4;
    type metadata accessor for PlayerAvatar(0);
    sub_24E731238(&qword_27F218A38, type metadata accessor for PlayerAvatar);
    sub_24F92CD48();
    LOBYTE(v14) = 5;
    sub_24F92CD48();
    LOBYTE(v14) = 6;
    sub_24F92CD08();
    v14 = *(v3 + *(v9 + 44));
    v13 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A7B8);
    sub_24E73017C(&qword_27F21A7D8, sub_24E7301F4);
    sub_24F92CD48();
    LOBYTE(v14) = 8;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
    sub_24E602068(&qword_27F218310, &qword_27F2169E8);
    v12 = v10;
    sub_24F92CD48();
    LOBYTE(v14) = 9;
    sub_24F92CD08();
    LOBYTE(v14) = 10;
    sub_24F92CD08();
    LOBYTE(v14) = 11;
    sub_24F92CD48();
    LOBYTE(v14) = 12;
    sub_24F92CD08();
    LOBYTE(v14) = 13;
    sub_24F92CD08();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E72C090@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v66 = type metadata accessor for PlayerAvatar(0);
  v3 = MEMORY[0x28223BE20](v66);
  v64 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v65 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v60 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v9);
  v11 = &v60 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A7A8);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v13 = &v60 - v12;
  v14 = type metadata accessor for IncomingFriendRequest();
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + 40) = 0u;
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 9) = 0;
  v75 = v16 + 40;
  sub_24E61DA68(&v76, (v16 + 40), qword_27F21B590);
  v17 = *(v14 + 24);
  v18 = sub_24F92A6D8();
  v19 = *(*(v18 - 8) + 56);
  v74 = v17;
  v19(&v16[v17], 1, 1, v18);
  v71 = v14;
  v20 = *(v14 + 28);
  v21 = sub_24F929608();
  v22 = *(*(v21 - 8) + 56);
  v73 = v20;
  v22(&v16[v20], 1, 1, v21);
  v23 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24E72FFA8();
  v68 = v13;
  v24 = v72;
  sub_24F92D108();
  if (v24)
  {
    v72 = v24;
    v25 = v71;
    __swift_destroy_boxed_opaque_existential_1(v70);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    LODWORD(v68) = 0;
    LODWORD(v69) = 0;
  }

  else
  {
    v61 = v8;
    v62 = v9;
    v72 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v79 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v32 = v77;
    *v16 = v76;
    *(v16 + 1) = v32;
    *(v16 + 4) = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v79 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    v33 = v71;
    sub_24E61DA68(&v76, v75, qword_27F24EC90);
    LOBYTE(v76) = 2;
    sub_24E65CAA0();
    v34 = v72;
    sub_24F92CC68();
    sub_24E61DA68(v34, &v16[v74], &qword_27F215440);
    LOBYTE(v76) = 3;
    sub_24E731238(&qword_27F213F48, MEMORY[0x277D21F70]);
    v35 = v61;
    sub_24F92CC18();
    sub_24E61DA68(v35, &v16[v73], &qword_27F213E68);
    LOBYTE(v76) = 4;
    sub_24E731238(&qword_27F2185A0, type metadata accessor for PlayerAvatar);
    v36 = v65;
    sub_24F92CC68();
    sub_24E72FFFC(v36, &v16[v33[8]]);
    LOBYTE(v76) = 5;
    v37 = v64;
    sub_24F92CC68();
    sub_24E72FFFC(v37, &v16[v33[9]]);
    LOBYTE(v76) = 6;
    v38 = sub_24F92CC28();
    v39 = &v16[v33[10]];
    *v39 = v38;
    v39[1] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A7B8);
    v79 = 7;
    sub_24E73017C(&qword_27F21A7C0, sub_24E730060);
    sub_24F92CC68();
    *&v16[v33[11]] = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
    v79 = 8;
    sub_24E602068(&qword_27F243830, &qword_27F2169E8);
    sub_24F92CC68();
    v72 = 0;
    v41 = &v16[v33[12]];
    v42 = v77;
    *v41 = v76;
    *(v41 + 1) = v42;
    *(v41 + 4) = v78;
    LOBYTE(v76) = 9;
    v43 = v72;
    v44 = sub_24F92CC28();
    v72 = v43;
    if (!v43)
    {
      v46 = &v16[v71[13]];
      *v46 = v44;
      v46[1] = v45;
      LOBYTE(v76) = 10;
      v47 = sub_24F92CC28();
      v72 = 0;
      v48 = &v16[v71[14]];
      *v48 = v47;
      v48[1] = v49;
      v79 = 11;
      sub_24F92CC68();
      v72 = 0;
      v50 = &v16[v71[15]];
      v51 = v77;
      *v50 = v76;
      *(v50 + 1) = v51;
      *(v50 + 4) = v78;
      LOBYTE(v76) = 12;
      v52 = sub_24F92CC28();
      v72 = 0;
      v53 = &v16[v71[16]];
      *v53 = v52;
      v53[1] = v54;
      LOBYTE(v76) = 13;
      v55 = sub_24F92CC28();
      v72 = 0;
      v56 = v55;
      v58 = v57;
      (*(v67 + 8))(v68, v69);
      v59 = &v16[v71[17]];
      *v59 = v56;
      *(v59 + 1) = v58;
      sub_24E7300B4(v16, v63, type metadata accessor for IncomingFriendRequest);
      __swift_destroy_boxed_opaque_existential_1(v70);
      return sub_24E73011C(v16, type metadata accessor for IncomingFriendRequest);
    }

    (*(v67 + 8))(v68, v69);
    LODWORD(v68) = 0;
    LODWORD(v69) = 0;
    v26 = 1;
    v27 = 1;
    v28 = 1;
    v29 = 1;
    v30 = 1;
    v25 = v71;
    __swift_destroy_boxed_opaque_existential_1(v70);
    sub_24E601704(v16, &qword_27F213F18);
  }

  sub_24E601704(v75, qword_27F24EC90);
  sub_24E601704(&v16[v74], &qword_27F215440);
  result = sub_24E601704(&v16[v73], &qword_27F213E68);
  if (v26)
  {
    result = sub_24E73011C(&v16[v25[8]], type metadata accessor for PlayerAvatar);
    if (!v27)
    {
LABEL_6:
      if (!v28)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if (!v27)
  {
    goto LABEL_6;
  }

  result = sub_24E73011C(&v16[v25[9]], type metadata accessor for PlayerAvatar);
  if (!v28)
  {
LABEL_7:
    if (!v29)
    {
      goto LABEL_8;
    }

LABEL_15:

    if (!v30)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_14:

  if (v29)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (!v30)
  {
    goto LABEL_9;
  }

LABEL_16:
  result = sub_24E601704(&v16[v25[12]], &qword_27F2169E8);
LABEL_9:
  if (v68)
  {
    result = sub_24E601704(&v16[v25[15]], &qword_27F2169E8);
    if (!v69)
    {
      return result;
    }
  }

  else if (!v69)
  {
    return result;
  }
}

uint64_t sub_24E72CE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E730B90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E72CE6C(uint64_t a1)
{
  v2 = sub_24E72FFA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E72CEA8(uint64_t a1)
{
  v2 = sub_24E72FFA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E72CEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E68039C(v7, a2);
}

unint64_t sub_24E72D014()
{
  result = qword_27F21A690;
  if (!qword_27F21A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A690);
  }

  return result;
}

uint64_t sub_24E72D068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6B8);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v20 - v10;
  sub_24E72D2A8(v2, a1);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v7, v11, &qword_27F21A6B0);
  v12 = &v11[*(v9 + 44)];
  v13 = v20[5];
  *(v12 + 4) = v20[4];
  *(v12 + 5) = v13;
  *(v12 + 6) = v20[6];
  v14 = v20[1];
  *v12 = v20[0];
  *(v12 + 1) = v14;
  v15 = v20[3];
  *(v12 + 2) = v20[2];
  *(v12 + 3) = v15;
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6C0) + 36);
  v17 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v18 = type metadata accessor for GradientBackground(0);
  (*(*(v18 - 8) + 56))(v16 + v17, 1, 1, v18);
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *(v16 + 16) = xmmword_24F93CFD0;
  *(v16 + 32) = 0x4030000000000000;
  *(v16 + 40) = 257;
  return sub_24E6009C8(v11, a2, &qword_27F21A6B8);
}

uint64_t sub_24E72D2A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6C8);
  MEMORY[0x28223BE20](v4);
  v37 = (&v32 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6D0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6D8);
  MEMORY[0x28223BE20](v9);
  v11 = (&v32 - v10);
  v12 = sub_24F924848();
  v13 = MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a1 + 16);
  v17 = *(a1 + 8);
  v40 = v17;
  if (v41 == 1)
  {
    v18 = v17;
  }

  else
  {
    v33 = v14;
    v34 = v13;

    sub_24F92BDC8();
    v35 = a1;
    v19 = sub_24F9257A8();
    v36 = v6;
    v20 = v19;
    a1 = v35;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v40, &qword_27F218208);
    (*(v33 + 8))(v16, v34);
    v18 = *&v39;
  }

  if (sub_24E6B00B4(v18) >= 4u)
  {
    *v11 = sub_24F924998();
    v11[1] = 0;
    *(v11 + 16) = 1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6E0);
    sub_24E72D7B4(a1, a2, v11 + *(v25 + 44));
    v39 = *(a1 + 24);
    v26 = swift_allocObject();
    v27 = *(a1 + 16);
    *(v26 + 16) = *a1;
    *(v26 + 32) = v27;
    *(v26 + 48) = *(a1 + 32);
    v28 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6E8) + 36);
    *v28 = sub_24E72DE30;
    *(v28 + 1) = 0;
    *(v28 + 2) = sub_24E72FD1C;
    *(v28 + 3) = v26;
    sub_24E60169C(&v40, v38, &qword_27F218208);
    sub_24E60169C(&v39, v38, &qword_27F21A6F0);
    v29 = sub_24F925808();
    v30 = v11 + *(v9 + 36);
    *v30 = v29;
    *(v30 + 8) = 0u;
    *(v30 + 24) = 0u;
    v30[40] = 1;
    v24 = &qword_27F21A6D8;
    sub_24E60169C(v11, v8, &qword_27F21A6D8);
  }

  else
  {
    v21 = *a1;
    v22 = sub_24F924C88();
    v11 = v37;
    *v37 = v22;
    v11[1] = v21;
    *(v11 + 16) = 0;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A730);
    sub_24E72DE5C(a1, a2, v11 + *(v23 + 44));
    v24 = &qword_27F21A6C8;
    sub_24E60169C(v11, v8, &qword_27F21A6C8);
  }

  swift_storeEnumTagMultiPayload();
  sub_24E72FD74();
  sub_24E602068(&qword_27F21A728, &qword_27F21A6C8);
  sub_24F924E28();
  return sub_24E601704(v11, v24);
}

uint64_t sub_24E72D7B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A738);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A740);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v38[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A790);
  v13 = MEMORY[0x28223BE20](v12);
  v42 = &v38[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38[-v16];
  MEMORY[0x28223BE20](v15);
  v39 = &v38[-v18];
  v19 = *a1;
  *v7 = sub_24F924C88();
  *(v7 + 1) = v19;
  v7[16] = 0;
  v20 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A748) + 44)];
  v40 = a2;
  sub_24E72E1FC(a2, v20, 1.4);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v7, v11, &qword_27F21A738);
  v21 = &v11[*(v9 + 44)];
  v22 = v54[26];
  v21[4] = v54[25];
  v21[5] = v22;
  v21[6] = v54[27];
  v23 = v54[22];
  *v21 = v54[21];
  v21[1] = v23;
  v24 = v54[24];
  v21[2] = v54[23];
  v21[3] = v24;
  v41 = a1;
  v54[0] = *(a1 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
  sub_24F926F38();
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v11, v17, &qword_27F21A740);
  v25 = &v17[*(v12 + 36)];
  v26 = v54[33];
  v25[4] = v54[32];
  v25[5] = v26;
  v25[6] = v54[34];
  v27 = v54[29];
  *v25 = v54[28];
  v25[1] = v27;
  v28 = v54[31];
  v25[2] = v54[30];
  v25[3] = v28;
  v29 = v17;
  v30 = v39;
  sub_24E6009C8(v29, v39, &qword_27F21A790);
  *&v49 = sub_24F924C98();
  *(&v49 + 1) = v19;
  LOBYTE(v50) = 0;
  v31 = type metadata accessor for IncomingFriendRequest();
  v32 = v40;
  v33 = *(v40 + *(v31 + 44));

  v46[0] = sub_24F9249A8();
  v46[1] = 0;
  v47 = 1;
  sub_24E72E97C(v32, &v48);
  sub_24E60169C(v46, v45, &qword_27F21A750);
  *(&v50 + 1) = v33;
  sub_24E60169C(v45, v51, &qword_27F21A750);

  sub_24E601704(v46, &qword_27F21A750);
  sub_24E601704(v45, &qword_27F21A750);

  v54[0] = *(v41 + 3);
  sub_24F926F38();
  sub_24F927618();
  sub_24F9242E8();
  v53[10] = v51[8];
  v53[11] = v51[9];
  v53[12] = v51[10];
  LOBYTE(v53[13]) = v52;
  v53[6] = v51[4];
  v53[7] = v51[5];
  v53[8] = v51[6];
  v53[9] = v51[7];
  v53[2] = v51[0];
  v53[3] = v51[1];
  v53[4] = v51[2];
  v53[5] = v51[3];
  v53[0] = v49;
  v53[1] = v50;
  memcpy(v54, v53, 0x148uLL);
  v34 = v42;
  sub_24E60169C(v30, v42, &qword_27F21A790);
  sub_24E60169C(v54, v44, &qword_27F21A798);
  v35 = v43;
  sub_24E60169C(v34, v43, &qword_27F21A790);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A7A0);
  sub_24E60169C(v44, v35 + *(v36 + 48), &qword_27F21A798);
  sub_24E601704(v54, &qword_27F21A798);
  sub_24E601704(v30, &qword_27F21A790);
  sub_24E601704(v44, &qword_27F21A798);
  return sub_24E601704(v34, &qword_27F21A790);
}

uint64_t sub_24E72DE30@<X0>(void *a1@<X8>)
{
  result = sub_24F923998();
  *a1 = v3;
  return result;
}

uint64_t sub_24E72DE5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A738);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29[-v6 - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A740);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29[-v14 - 8];
  MEMORY[0x28223BE20](v13);
  v17 = &v29[-v16 - 8];
  v18 = *a1;
  *v7 = sub_24F924C88();
  *(v7 + 1) = v18;
  v7[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A748);
  sub_24E72E1FC(a2, &v7[*(v19 + 44)], 1.0);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v7, v15, &qword_27F21A738);
  v20 = &v15[*(v9 + 44)];
  v21 = v42;
  v20[4] = v41;
  v20[5] = v21;
  v20[6] = v43;
  v22 = v38;
  *v20 = *&v37[184];
  v20[1] = v22;
  v23 = v40;
  v20[2] = v39;
  v20[3] = v23;
  sub_24E6009C8(v15, v17, &qword_27F21A740);
  v34[0] = sub_24F924C88();
  v34[1] = v18;
  v35 = 0;
  v24 = *(a2 + *(type metadata accessor for IncomingFriendRequest() + 44));

  v31[0] = sub_24F9249A8();
  v31[1] = 0;
  v32 = 1;
  sub_24E72E97C(a2, &v33);
  sub_24E60169C(v31, v30, &qword_27F21A750);
  v36 = v24;
  sub_24E60169C(v30, v37, &qword_27F21A750);

  sub_24E601704(v31, &qword_27F21A750);
  sub_24E601704(v30, &qword_27F21A750);

  sub_24E60169C(v17, v12, &qword_27F21A740);
  sub_24E60169C(v34, v29, &qword_27F21A758);
  v25 = v28;
  sub_24E60169C(v12, v28, &qword_27F21A740);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A760);
  sub_24E60169C(v29, v25 + *(v26 + 48), &qword_27F21A758);
  sub_24E601704(v34, &qword_27F21A758);
  sub_24E601704(v17, &qword_27F21A740);
  sub_24E601704(v29, &qword_27F21A758);
  return sub_24E601704(v12, &qword_27F21A740);
}

uint64_t sub_24E72E1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D1>)
{
  v55 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215110) - 8;
  v5 = MEMORY[0x28223BE20](v53);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A768);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v52 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = (&v51 - v12);
  *v13 = sub_24F927618();
  v13[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A770);
  v16.n128_f64[0] = a3;
  sub_24E72E620(a1, v13 + *(v15 + 44), v16);
  v17 = sub_24F925818();
  v18 = v13 + *(v9 + 44);
  *v18 = v17;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 1;
  v19 = (a1 + *(type metadata accessor for IncomingFriendRequest() + 40));
  v20 = v19[1];
  v56 = *v19;
  v57 = v20;
  sub_24E600AEC();

  v21 = sub_24F925E18();
  v23 = v22;
  v25 = v24;
  sub_24F925998();
  v26 = sub_24F925C98();
  v28 = v27;
  v30 = v29;

  sub_24E600B40(v21, v23, v25 & 1);

  LODWORD(v56) = sub_24F925198();
  v31 = sub_24F925C58();
  v33 = v32;
  v35 = v34;
  sub_24E600B40(v26, v28, v30 & 1);

  sub_24E72FF4C();
  v36 = sub_24F925C58();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_24E600B40(v31, v33, v35 & 1);

  v56 = v36;
  v57 = v38;
  LOBYTE(v33) = v40 & 1;
  v58 = v40 & 1;
  v59 = v42;
  v43 = v51;
  sub_24F9268B8();
  sub_24E600B40(v36, v38, v33);

  KeyPath = swift_getKeyPath();
  v45 = v52;
  v46 = v43 + *(v53 + 44);
  *v46 = KeyPath;
  *(v46 + 8) = 1;
  sub_24E60169C(v13, v45, &qword_27F21A768);
  v47 = v54;
  sub_24E60169C(v43, v54, &qword_27F215110);
  v48 = v55;
  sub_24E60169C(v45, v55, &qword_27F21A768);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A780);
  sub_24E60169C(v47, v48 + *(v49 + 48), &qword_27F215110);
  sub_24E601704(v43, &qword_27F215110);
  sub_24E601704(v13, &qword_27F21A768);
  sub_24E601704(v47, &qword_27F215110);
  return sub_24E601704(v45, &qword_27F21A768);
}

uint64_t sub_24E72E620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q1>)
{
  v31 = a3;
  v30 = a2;
  v4 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A370);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v29 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v19 = type metadata accessor for IncomingFriendRequest();
  sub_24E7300B4(a1 + *(v19 + 36), v6, type metadata accessor for PlayerAvatar);
  LOBYTE(v35[0]) = 7;
  sub_24F8319B8(v6, v35, v18);
  sub_24F927618();
  sub_24F9238C8();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0);
  v21 = &v18[*(v20 + 36)];
  v22 = v33;
  *v21 = v32;
  *(v21 + 1) = v22;
  *(v21 + 2) = v34;
  *&v18[*(v8 + 44)] = vmulq_n_f64(xmmword_24F94E5C0, v31.n128_f64[0]);
  sub_24E7300B4(a1 + *(v19 + 32), v6, type metadata accessor for PlayerAvatar);
  LOBYTE(v35[0]) = 7;
  sub_24F8319B8(v6, v35, v16);
  sub_24F927618();
  sub_24F9238C8();
  v23 = &v16[*(v20 + 36)];
  v24 = v35[1];
  *v23 = v35[0];
  *(v23 + 1) = v24;
  *(v23 + 2) = v35[2];
  *&v16[*(v8 + 44)] = vmulq_n_f64(xmmword_24F94E5D0, v31.n128_f64[0]);
  sub_24E60169C(v18, v13, &qword_27F21A370);
  v25 = v29;
  sub_24E60169C(v16, v29, &qword_27F21A370);
  v26 = v30;
  sub_24E60169C(v13, v30, &qword_27F21A370);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A788);
  sub_24E60169C(v25, v26 + *(v27 + 48), &qword_27F21A370);
  sub_24E601704(v16, &qword_27F21A370);
  sub_24E601704(v18, &qword_27F21A370);
  sub_24E601704(v25, &qword_27F21A370);
  return sub_24E601704(v13, &qword_27F21A370);
}

uint64_t sub_24E72E97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IncomingFriendRequest();
  v5 = (a1 + v4[13]);
  v7 = *v5;
  v6 = v5[1];
  v8 = (a1 + v4[14]);
  v10 = *v8;
  v9 = v8[1];
  sub_24E60169C(a1 + v4[12], &v21, &qword_27F2169E8);
  sub_24E612C80(&v21, v26);
  v25[0] = v7;
  v25[1] = v6;
  v25[2] = v10;
  v25[3] = v9;
  v26[40] = 0;
  v11 = v4[15];
  v12 = (a1 + v4[16]);
  v14 = *v12;
  v13 = v12[1];
  v15 = (a1 + v4[17]);
  v17 = *v15;
  v16 = v15[1];
  sub_24E60169C(a1 + v11, v20, &qword_27F2169E8);
  sub_24E612C80(v20, v24);
  *&v21 = v14;
  *(&v21 + 1) = v13;
  v22 = v17;
  v23 = v16;
  v24[40] = 1;
  sub_24E72FEE4(v25, v20);
  sub_24E72FEE4(&v21, v19);
  sub_24E72FEE4(v20, a2);
  sub_24E72FEE4(v19, a2 + 80);

  sub_24E72FF1C(&v21);
  sub_24E72FF1C(v25);
  sub_24E72FF1C(v19);
  return sub_24E72FF1C(v20);
}

uint64_t sub_24E72EAE8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24F924C58();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A8E0);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A7B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58);
  sub_24E602068(&qword_27F21A8E8, &qword_27F21A7B8);
  sub_24E7313AC();
  sub_24E602068(&qword_27F212910, &qword_27F211B58);
  sub_24F927228();
  v2 = sub_24F925A18();
  KeyPath = swift_getKeyPath();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A8F8) + 36));
  *v4 = KeyPath;
  v4[1] = v2;
  LODWORD(v2) = sub_24F9251C8();
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A900) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
  v7 = *MEMORY[0x277CE13B8];
  v8 = sub_24F927748();
  (*(*(v8 - 8) + 104))(&v5[v6], v7, v8);
  *v5 = v2;
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A908) + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0) + 28);
  sub_24F924CF8();
  v11 = sub_24F924D08();
  (*(*(v11 - 8) + 56))(v9 + v10, 0, 1, v11);
  result = swift_getKeyPath();
  *v9 = result;
  return result;
}

uint64_t sub_24E72EE24@<X0>(uint64_t a1@<X8>)
{
  sub_24E600AEC();

  result = sub_24F925E18();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_24E72EE98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v53 = sub_24F924C38();
  v45 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v44 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A858);
  v47 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v46 = &v42 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A860);
  MEMORY[0x28223BE20](v50);
  v52 = &v42 - v5;
  v51 = sub_24F925598();
  v43 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A868);
  v11 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A870);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A878);
  v42 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v18 = &v42 - v17;
  v19 = *(v2 + 72);
  v20 = sub_24F9232F8();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  v21 = (v11 + 32);
  sub_24E615E00(v2 + 32, v60);
  sub_24E72FEE4(v2, &v56);
  v22 = swift_allocObject();
  v23 = v59[0];
  v22[3] = v58;
  v22[4] = v23;
  *(v22 + 73) = *(v59 + 9);
  v24 = v57;
  v22[1] = v56;
  v22[2] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A880);
  sub_24E731010();
  sub_24F921788();
  if (v19 == 1)
  {
    v25 = sub_24F926C88();
    (*v21)(v16, v13, v48);
    *&v16[*(v14 + 36)] = v25;
    sub_24F925588();
    v26 = sub_24E731154();
    v27 = sub_24E731238(&qword_27F21A8C8, MEMORY[0x277CDE400]);
    v28 = v51;
    sub_24F926178();
    (*(v43 + 8))(v7, v28);
    sub_24E601704(v16, &qword_27F21A870);
    v29 = v42;
    v30 = v49;
    (*(v42 + 16))(v52, v18, v49);
    swift_storeEnumTagMultiPayload();
    *&v56 = v14;
    *(&v56 + 1) = v28;
    *&v57 = v26;
    *(&v57 + 1) = v27;
    swift_getOpaqueTypeConformance2();
    v31 = sub_24E731238(&qword_27F21A8C0, MEMORY[0x277CDDEE0]);
    *&v56 = v14;
    *(&v56 + 1) = v53;
    *&v57 = v26;
    *(&v57 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return (*(v29 + 8))(v18, v30);
  }

  else
  {
    v33 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    (*v21)(v16, v13, v48);
    *&v16[*(v14 + 36)] = v33;
    v34 = v44;
    sub_24F924C28();
    v35 = sub_24E731154();
    v36 = sub_24E731238(&qword_27F21A8C0, MEMORY[0x277CDDEE0]);
    v37 = v46;
    v38 = v53;
    sub_24F926178();
    (*(v45 + 8))(v34, v38);
    sub_24E601704(v16, &qword_27F21A870);
    v39 = v47;
    v40 = v54;
    (*(v47 + 16))(v52, v37, v54);
    swift_storeEnumTagMultiPayload();
    v41 = sub_24E731238(&qword_27F21A8C8, MEMORY[0x277CDE400]);
    *&v56 = v14;
    *(&v56 + 1) = v51;
    *&v57 = v35;
    *(&v57 + 1) = v41;
    swift_getOpaqueTypeConformance2();
    *&v56 = v14;
    *(&v56 + 1) = v38;
    *&v57 = v35;
    *(&v57 + 1) = v36;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return (*(v39 + 8))(v37, v40);
  }
}

__n128 sub_24E72F784@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A898);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-v6];
  v19 = a1;
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A8D0);
  sub_24E731318();
  sub_24F926EA8();
  LOBYTE(a1) = sub_24F925868();
  sub_24F923318();
  v8 = &v7[*(v5 + 44)];
  *v8 = a1;
  *(v8 + 1) = v9;
  *(v8 + 2) = v10;
  *(v8 + 3) = v11;
  *(v8 + 4) = v12;
  v8[40] = 0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v7, a2, &qword_27F21A898);
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A880) + 36);
  v14 = v25;
  *(v13 + 64) = v24;
  *(v13 + 80) = v14;
  *(v13 + 96) = v26;
  v15 = v21;
  *v13 = v20;
  *(v13 + 16) = v15;
  result = v23;
  *(v13 + 32) = v22;
  *(v13 + 48) = result;
  return result;
}

uint64_t sub_24E72F950@<X0>(uint64_t a1@<X8>)
{
  sub_24E600AEC();

  v2 = sub_24F925E18();
  v4 = v3;
  v6 = v5;
  sub_24F925A28();
  v7 = sub_24F925C98();
  v9 = v8;
  v11 = v10;

  sub_24E600B40(v2, v4, v6 & 1);

  sub_24F9268B8();
  sub_24E600B40(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B70) + 36);
  *v13 = KeyPath;
  *(v13 + 8) = 1;
  *(v13 + 16) = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A8D0);
  *(a1 + *(result + 36)) = 257;
  return result;
}

uint64_t sub_24E72FB00()
{
  sub_24E62AB1C(*(v0 + 8), *(v0 + 16));
  sub_24E72D014();

  return sub_24F9218E8();
}

unint64_t sub_24E72FBD0()
{
  result = qword_27F21A6A0;
  if (!qword_27F21A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A6A0);
  }

  return result;
}

uint64_t sub_24E72FCD8()
{
  sub_24E62A5EC(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

unint64_t sub_24E72FD74()
{
  result = qword_27F21A6F8;
  if (!qword_27F21A6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A6D8);
    sub_24E72FE00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A6F8);
  }

  return result;
}

unint64_t sub_24E72FE00()
{
  result = qword_27F21A700;
  if (!qword_27F21A700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A6E8);
    sub_24E602068(&qword_27F21A708, &qword_27F21A710);
    sub_24E602068(&qword_27F21A718, &qword_27F21A720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A700);
  }

  return result;
}

unint64_t sub_24E72FF4C()
{
  result = qword_27F21A778;
  if (!qword_27F21A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A778);
  }

  return result;
}

unint64_t sub_24E72FFA8()
{
  result = qword_27F21A7B0;
  if (!qword_27F21A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A7B0);
  }

  return result;
}

uint64_t sub_24E72FFFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerAvatar(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E730060()
{
  result = qword_27F21A7C8;
  if (!qword_27F21A7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A7C8);
  }

  return result;
}

uint64_t sub_24E7300B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E73011C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E73017C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A7B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E7301F4()
{
  result = qword_27F21A7E0;
  if (!qword_27F21A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A7E0);
  }

  return result;
}

uint64_t sub_24E730248(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A7E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E73042C();
  sub_24F92D108();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_24F92CC28();
    v10 = 1;
    sub_24F92CC28();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24E73042C()
{
  result = qword_27F21A7F0;
  if (!qword_27F21A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A7F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IncomingFriendRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IncomingFriendRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24E730604(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E73064C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E7306C4()
{
  result = qword_27F21A800;
  if (!qword_27F21A800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A6C0);
    sub_24E730780();
    sub_24E731238(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A800);
  }

  return result;
}

unint64_t sub_24E730780()
{
  result = qword_27F21A808;
  if (!qword_27F21A808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A6B8);
    sub_24E73080C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A808);
  }

  return result;
}

unint64_t sub_24E73080C()
{
  result = qword_27F21A810;
  if (!qword_27F21A810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A6B0);
    sub_24E730890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A810);
  }

  return result;
}

unint64_t sub_24E730890()
{
  result = qword_27F21A818;
  if (!qword_27F21A818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A820);
    sub_24E72FD74();
    sub_24E602068(&qword_27F21A728, &qword_27F21A6C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A818);
  }

  return result;
}

unint64_t sub_24E730984()
{
  result = qword_27F21A828;
  if (!qword_27F21A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A828);
  }

  return result;
}

unint64_t sub_24E7309DC()
{
  result = qword_27F21A830;
  if (!qword_27F21A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A830);
  }

  return result;
}

unint64_t sub_24E730A34()
{
  result = qword_27F21A838;
  if (!qword_27F21A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A838);
  }

  return result;
}

unint64_t sub_24E730A8C()
{
  result = qword_27F21A840;
  if (!qword_27F21A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A840);
  }

  return result;
}

unint64_t sub_24E730AE4()
{
  result = qword_27F21A848;
  if (!qword_27F21A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A848);
  }

  return result;
}

unint64_t sub_24E730B3C()
{
  result = qword_27F21A850;
  if (!qword_27F21A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A850);
  }

  return result;
}

uint64_t sub_24E730B90(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x76417265646E6573 && a2 == 0xEC00000072617461 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA464C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736C6C65737075 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x634165726F6E6769 && a2 == 0xEC0000006E6F6974 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA464E0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA46500 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6341747065636361 && a2 == 0xEC0000006E6F6974 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA46520 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA46540 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

unint64_t sub_24E731010()
{
  result = qword_27F21A888;
  if (!qword_27F21A888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A880);
    sub_24E73109C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A888);
  }

  return result;
}

unint64_t sub_24E73109C()
{
  result = qword_27F21A890;
  if (!qword_27F21A890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A898);
    sub_24E602068(&qword_27F21A8A0, &qword_27F21A8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A890);
  }

  return result;
}

unint64_t sub_24E731154()
{
  result = qword_27F21A8B0;
  if (!qword_27F21A8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A870);
    sub_24E602068(&qword_27F21A8B8, &qword_27F21A868);
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A8B0);
  }

  return result;
}

uint64_t sub_24E731238(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_33Tm()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_24E7312D0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_24F926E48();
  *a1 = result;
  return result;
}

unint64_t sub_24E731318()
{
  result = qword_27F21A8D8;
  if (!qword_27F21A8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A8D0);
    sub_24E63C68C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A8D8);
  }

  return result;
}

unint64_t sub_24E7313AC()
{
  result = qword_27F21A8F0;
  if (!qword_27F21A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A8F0);
  }

  return result;
}

uint64_t sub_24E73141C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_24F926E48();
  *a1 = result;
  return result;
}

unint64_t sub_24E731464()
{
  result = qword_27F21A910;
  if (!qword_27F21A910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A918);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A870);
    sub_24F925598();
    sub_24E731154();
    sub_24E731238(&qword_27F21A8C8, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    sub_24F924C38();
    sub_24E731238(&qword_27F21A8C0, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A910);
  }

  return result;
}

unint64_t sub_24E7315E0()
{
  result = qword_27F21A920;
  if (!qword_27F21A920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A908);
    sub_24E731698();
    sub_24E602068(&qword_27F21A958, &qword_27F2365A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A920);
  }

  return result;
}

unint64_t sub_24E731698()
{
  result = qword_27F21A928;
  if (!qword_27F21A928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A930);
    sub_24E731750();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A928);
  }

  return result;
}

unint64_t sub_24E731750()
{
  result = qword_27F21A938;
  if (!qword_27F21A938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A900);
    sub_24E731808();
    sub_24E602068(&qword_27F213F88, &qword_27F213F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A938);
  }

  return result;
}

unint64_t sub_24E731808()
{
  result = qword_27F21A940;
  if (!qword_27F21A940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A8F8);
    sub_24E602068(&qword_27F21A948, &qword_27F21A950);
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A940);
  }

  return result;
}

uint64_t GameOverviewShelfIntent.pageID.getter()
{
  v1 = *(v0 + *(type metadata accessor for GameOverviewShelfIntent() + 20));

  return v1;
}

uint64_t type metadata accessor for GameOverviewShelfIntent()
{
  result = qword_27F21A978;
  if (!qword_27F21A978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t GameOverviewShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v5 = type metadata accessor for GameOverviewShelfIntent();
  v6 = (v2 + *(v5 + 20));
  v7 = *v6;
  v8 = v6[1];
  v9 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v9;
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v10 = *(v5 + 24);
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E73246C(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E7324B4(v2 + v10, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 1701667175;
  *(inited + 152) = 0xE400000000000000;
  *(inited + 184) = type metadata accessor for Game();
  *(inited + 192) = sub_24E73246C(&qword_27F217960, type metadata accessor for Game);
  v12 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24E7324B4(v2, v12, type metadata accessor for Game);

  v13 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v13;
  return result;
}

uint64_t sub_24E731C3C()
{
  v1 = 0x444965676170;
  if (*v0 != 1)
  {
    v1 = 0x726579616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667175;
  }
}

uint64_t sub_24E731C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E732998(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E731CB0(uint64_t a1)
{
  v2 = sub_24E732418();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E731CEC(uint64_t a1)
{
  v2 = sub_24E732418();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameOverviewShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A960);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E732418();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Game();
  sub_24E73246C(&qword_27F214950, type metadata accessor for Game);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for GameOverviewShelfIntent();
    v8[14] = 1;
    sub_24F92CD08();
    v8[13] = 2;
    type metadata accessor for Player(0);
    sub_24E73246C(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t GameOverviewShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v26);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v6);
  v28 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A970);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = &v23 - v8;
  v10 = type metadata accessor for GameOverviewShelfIntent();
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24E732418();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v14 = v27;
  v24 = v10;
  v15 = v12;
  v33 = 0;
  sub_24E73246C(&qword_27F214968, type metadata accessor for Game);
  v17 = v28;
  v16 = v29;
  sub_24F92CC68();
  sub_24E691974(v17, v15, type metadata accessor for Game);
  v32 = 1;
  v18 = sub_24F92CC28();
  v19 = v24;
  v20 = (v15 + *(v24 + 20));
  *v20 = v18;
  v20[1] = v21;
  v31 = 2;
  sub_24E73246C(&qword_27F213E38, type metadata accessor for Player);
  sub_24F92CC68();
  (*(v14 + 8))(v9, v16);
  sub_24E691974(v5, v15 + *(v19 + 24), type metadata accessor for Player);
  sub_24E7324B4(v15, v25, type metadata accessor for GameOverviewShelfIntent);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_24E73251C(v15, type metadata accessor for GameOverviewShelfIntent);
}

unint64_t sub_24E732418()
{
  result = qword_27F21A968;
  if (!qword_27F21A968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A968);
  }

  return result;
}

uint64_t sub_24E73246C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E7324B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E73251C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E732590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Game();
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
    v11 = type metadata accessor for Player(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24E7326CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Game();
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
    v11 = type metadata accessor for Player(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24E7327F4()
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

unint64_t sub_24E732894()
{
  result = qword_27F21A988;
  if (!qword_27F21A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A988);
  }

  return result;
}

unint64_t sub_24E7328EC()
{
  result = qword_27F21A990;
  if (!qword_27F21A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A990);
  }

  return result;
}

unint64_t sub_24E732944()
{
  result = qword_27F21A998;
  if (!qword_27F21A998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A998);
  }

  return result;
}

uint64_t sub_24E732998(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667175 && a2 == 0xE400000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444965676170 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000)
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

uint64_t sub_24E732AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InGameBannerRequiredData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E732B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465726975716572 && a2 == 0xEC00000061746144)
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

uint64_t sub_24E732C10(uint64_t a1)
{
  v2 = sub_24E732DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E732C4C(uint64_t a1)
{
  v2 = sub_24E732DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InGameBannerPageIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A9A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E732DEC();
  sub_24F92D128();
  type metadata accessor for InGameBannerRequiredData();
  sub_24E7330EC(&qword_27F21A9B0);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E732DEC()
{
  result = qword_27F21A9A8;
  if (!qword_27F21A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A9A8);
  }

  return result;
}

uint64_t InGameBannerPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for InGameBannerRequiredData();
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A9B8);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for InGameBannerPageIntent();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E732DEC();
  sub_24F92D108();
  if (!v2)
  {
    v12 = v16;
    sub_24E7330EC(&qword_27F21A9C0);
    v13 = v17;
    sub_24F92CC68();
    (*(v15 + 8))(v8, v6);
    sub_24E733130(v13, v11, type metadata accessor for InGameBannerRequiredData);
    sub_24E733130(v11, v12, type metadata accessor for InGameBannerPageIntent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for InGameBannerPageIntent()
{
  result = qword_27F21A9C8;
  if (!qword_27F21A9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E7330EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InGameBannerRequiredData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E733130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7331D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A9A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E732DEC();
  sub_24F92D128();
  type metadata accessor for InGameBannerRequiredData();
  sub_24E7330EC(&qword_27F21A9B0);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24E733348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InGameBannerRequiredData();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E7333C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InGameBannerRequiredData();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24E733438()
{
  result = type metadata accessor for InGameBannerRequiredData();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24E7334B8()
{
  result = qword_27F21A9D8;
  if (!qword_27F21A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A9D8);
  }

  return result;
}

unint64_t sub_24E733510()
{
  result = qword_27F21A9E0;
  if (!qword_27F21A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A9E0);
  }

  return result;
}

unint64_t sub_24E733568()
{
  result = qword_27F21A9E8;
  if (!qword_27F21A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A9E8);
  }

  return result;
}

uint64_t sub_24E7335BC(double *a1)
{
  result = sub_24E6B00B4(*a1);
  v3 = a1[2];
  v4 = v3 + v3;
  if (COERCE__INT64(fabs(v3 + v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v4 < 9.22337204e18)
  {
    v5 = 0;
    v6 = v4 / 200;
    v19 = *(MEMORY[0x277D768C8] + 16);
    v20 = *MEMORY[0x277D768C8];
    v7 = MEMORY[0x277D84F90];
    v8 = result;
    v9 = 0.0;
    v10 = 200.0;
    v11 = 400;
    v18 = vdupq_n_s64(0xC0C81C8000000000);
    while (1)
    {
      v12 = v5 - v6;
      if (__OFSUB__(v5, v6))
      {
        break;
      }

      v13 = qword_24F94F328[v8];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24E6172CC(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_24E6172CC((v14 > 1), v15 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 160 * v15;
      *(v16 + 32) = v9;
      *(v16 + 40) = v10;
      *(v16 + 48) = v18;
      *(v16 + 64) = 0;
      *(v16 + 66) = v22;
      *(v16 + 70) = v23;
      *(v16 + 72) = 0;
      *(v16 + 80) = 0;
      *(v16 + 88) = v12;
      *(v16 + 96) = v12;
      *(v16 + 104) = v13;
      *(v16 + 112) = v13;
      *(v16 + 120) = v13;
      *(v16 + 128) = v13;
      *(v16 + 136) = v3;
      *(v16 + 144) = v3;
      *(v16 + 152) = 1;
      *(v16 + 156) = *&v21[3];
      *(v16 + 153) = *v21;
      *(v16 + 160) = v20;
      *(v16 + 176) = v19;
      if (++v5 == 15)
      {
        return v7;
      }

      v10 = v11;
      v17 = v11 - 200;
      v11 += 200;
      v9 = v17;
      if (v17 > v10)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24E7337D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AA28);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F94F380;
  v1 = type metadata accessor for AccessPointHighlight(0);
  v2 = sub_24E7367F0(&qword_27F21AA30, type metadata accessor for AccessPointHighlight);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for AchievementCard(0);
  v4 = sub_24E7367F0(&qword_27F21AA38, type metadata accessor for AchievementCard);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for AchievementsCard();
  v6 = sub_24E7367F0(&qword_27F21AA40, type metadata accessor for AchievementsCard);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for AchievementRow();
  v8 = sub_24E7367F0(&qword_27F21AA48, type metadata accessor for AchievementRow);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = type metadata accessor for AchievementDetailsGlobalPlayer();
  v10 = sub_24E7367F0(&qword_27F21AA50, type metadata accessor for AchievementDetailsGlobalPlayer);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  v11 = type metadata accessor for AchievementDetailsHeader();
  v12 = sub_24E7367F0(&qword_27F21AA58, type metadata accessor for AchievementDetailsHeader);
  *(v0 + 112) = v11;
  *(v0 + 120) = v12;
  v13 = type metadata accessor for AchievementsCountHeaderItem(0);
  v14 = sub_24E7367F0(&qword_27F21AA60, type metadata accessor for AchievementsCountHeaderItem);
  *(v0 + 128) = v13;
  *(v0 + 136) = v14;
  v15 = type metadata accessor for ActionButtonRow();
  v16 = sub_24E7367F0(&qword_27F21AA68, type metadata accessor for ActionButtonRow);
  *(v0 + 144) = v15;
  *(v0 + 152) = v16;
  v17 = type metadata accessor for ActivityCard();
  v18 = sub_24E7367F0(&qword_27F21AA70, type metadata accessor for ActivityCard);
  *(v0 + 160) = v17;
  *(v0 + 168) = v18;
  v19 = type metadata accessor for ActivityInviteCard();
  v20 = sub_24E7367F0(&qword_27F21AA78, type metadata accessor for ActivityInviteCard);
  *(v0 + 176) = v19;
  *(v0 + 184) = v20;
  v21 = type metadata accessor for ActivityFeedLockup();
  v22 = sub_24E7367F0(&qword_27F216720, type metadata accessor for ActivityFeedLockup);
  *(v0 + 192) = v21;
  *(v0 + 200) = v22;
  v23 = type metadata accessor for AppEventCard(0);
  v24 = sub_24E7367F0(&qword_27F21AA80, type metadata accessor for AppEventCard);
  *(v0 + 208) = v23;
  *(v0 + 216) = v24;
  v25 = type metadata accessor for AppEventDetail(0);
  v26 = sub_24E7367F0(&qword_27F21AA88, type metadata accessor for AppEventDetail);
  *(v0 + 224) = v25;
  *(v0 + 232) = v26;
  v27 = type metadata accessor for AppEventSearchCard();
  v28 = sub_24E7367F0(&qword_27F21AA90, type metadata accessor for AppEventSearchCard);
  *(v0 + 240) = v27;
  *(v0 + 248) = v28;
  v29 = type metadata accessor for ArcadeUpsellCard();
  v30 = sub_24E7367F0(&qword_27F21AA98, type metadata accessor for ArcadeUpsellCard);
  *(v0 + 256) = v29;
  *(v0 + 264) = v30;
  v31 = type metadata accessor for BoolSetting();
  v32 = sub_24E7367F0(&qword_27F21AAA0, type metadata accessor for BoolSetting);
  *(v0 + 272) = v31;
  *(v0 + 280) = v32;
  v33 = type metadata accessor for ButtonGroup(0);
  v34 = sub_24E7367F0(&qword_27F21AAA8, type metadata accessor for ButtonGroup);
  *(v0 + 288) = v33;
  *(v0 + 296) = v34;
  v35 = type metadata accessor for ButtonGroupItem();
  v36 = sub_24E7367F0(&qword_27F21AAB0, type metadata accessor for ButtonGroupItem);
  *(v0 + 304) = v35;
  *(v0 + 312) = v36;
  v37 = type metadata accessor for CenteredCapsuleButton();
  v38 = sub_24E7367F0(&qword_27F21AAB8, type metadata accessor for CenteredCapsuleButton);
  *(v0 + 320) = v37;
  *(v0 + 328) = v38;
  v39 = type metadata accessor for ChallengeCard(0);
  v40 = sub_24E7367F0(&qword_27F21AAC0, type metadata accessor for ChallengeCard);
  *(v0 + 336) = v39;
  *(v0 + 344) = v40;
  v41 = type metadata accessor for ChallengeCompletedCard(0);
  v42 = sub_24E7367F0(&qword_27F21AAC8, type metadata accessor for ChallengeCompletedCard);
  *(v0 + 352) = v41;
  *(v0 + 360) = v42;
  v43 = type metadata accessor for ChallengeDetailDescription(0);
  v44 = sub_24E7367F0(&qword_27F21AAD0, type metadata accessor for ChallengeDetailDescription);
  *(v0 + 368) = v43;
  *(v0 + 376) = v44;
  v45 = type metadata accessor for ChallengeInviteCard();
  v46 = sub_24E7367F0(&qword_27F21AAD8, type metadata accessor for ChallengeInviteCard);
  *(v0 + 384) = v45;
  *(v0 + 392) = v46;
  v47 = type metadata accessor for ChallengeSuggestionCard();
  v48 = sub_24E7367F0(&qword_27F21AAE0, type metadata accessor for ChallengeSuggestionCard);
  *(v0 + 400) = v47;
  *(v0 + 408) = v48;
  v49 = type metadata accessor for ChallengeDetailHiddenInvitedPlayerLockup();
  v50 = sub_24E7367F0(&qword_27F21AAE8, type metadata accessor for ChallengeDetailHiddenInvitedPlayerLockup);
  *(v0 + 416) = v49;
  *(v0 + 424) = v50;
  v51 = type metadata accessor for ChallengeDetailPlayerLockup();
  v52 = sub_24E7367F0(&qword_27F21AAF0, type metadata accessor for ChallengeDetailPlayerLockup);
  *(v0 + 432) = v51;
  *(v0 + 440) = v52;
  v53 = type metadata accessor for ChallengesGameSuggestionLockup();
  v54 = sub_24E7367F0(&qword_27F218480, type metadata accessor for ChallengesGameSuggestionLockup);
  *(v0 + 448) = v53;
  *(v0 + 456) = v54;
  v55 = type metadata accessor for ChallengesHubHeaderButton();
  v56 = sub_24E7367F0(&qword_27F21AAF8, type metadata accessor for ChallengesHubHeaderButton);
  *(v0 + 464) = v55;
  *(v0 + 472) = v56;
  v57 = type metadata accessor for ChallengeDetailHero(0);
  v58 = sub_24E7367F0(&qword_27F21AB00, type metadata accessor for ChallengeDetailHero);
  *(v0 + 480) = v57;
  *(v0 + 488) = v58;
  v59 = type metadata accessor for ChallengeInviteLockup();
  v60 = sub_24E7367F0(&qword_27F21AB08, type metadata accessor for ChallengeInviteLockup);
  *(v0 + 496) = v59;
  *(v0 + 504) = v60;
  v61 = type metadata accessor for ChallengesFriendComparisonHeader();
  v62 = sub_24E7367F0(&qword_27F21AB10, type metadata accessor for ChallengesFriendComparisonHeader);
  *(v0 + 512) = v61;
  *(v0 + 520) = v62;
  v63 = type metadata accessor for ChallengesFriendComparisonChart();
  v64 = sub_24E7367F0(&qword_27F21AB18, type metadata accessor for ChallengesFriendComparisonChart);
  *(v0 + 528) = v63;
  *(v0 + 536) = v64;
  v65 = type metadata accessor for ChallengesHistoryChallengeLockup();
  v66 = sub_24E7367F0(&qword_27F21AB20, type metadata accessor for ChallengesHistoryChallengeLockup);
  *(v0 + 544) = v65;
  *(v0 + 552) = v66;
  v67 = type metadata accessor for ChallengesHistoryGameLockup();
  v68 = sub_24E7367F0(&qword_27F21AB28, type metadata accessor for ChallengesHistoryGameLockup);
  *(v0 + 560) = v67;
  *(v0 + 568) = v68;
  v69 = type metadata accessor for ChallengesHistoryHero(0);
  v70 = sub_24E7367F0(&qword_27F21AB30, type metadata accessor for ChallengesHistoryHero);
  *(v0 + 576) = v69;
  *(v0 + 584) = v70;
  v71 = type metadata accessor for ChallengesHistoryPlayerLockup();
  v72 = sub_24E7367F0(&qword_27F21AB38, type metadata accessor for ChallengesHistoryPlayerLockup);
  *(v0 + 592) = v71;
  *(v0 + 600) = v72;
  v73 = type metadata accessor for ChallengesLeaderboardSuggestionLockup();
  v74 = sub_24E7367F0(&qword_27F21AB40, type metadata accessor for ChallengesLeaderboardSuggestionLockup);
  *(v0 + 608) = v73;
  *(v0 + 616) = v74;
  v75 = type metadata accessor for ChartCard();
  v76 = sub_24E7367F0(&qword_27F21AB48, type metadata accessor for ChartCard);
  *(v0 + 624) = v75;
  *(v0 + 632) = v76;
  v77 = type metadata accessor for ClampingComponentGrid();
  v78 = sub_24E7367F0(&qword_27F21AB50, type metadata accessor for ClampingComponentGrid);
  *(v0 + 640) = v77;
  *(v0 + 648) = v78;
  v79 = type metadata accessor for ComingSoonPlatter();
  v80 = sub_24E7367F0(&qword_27F21AB58, type metadata accessor for ComingSoonPlatter);
  *(v0 + 656) = v79;
  *(v0 + 664) = v80;
  v81 = type metadata accessor for ComponentGrid();
  v82 = sub_24E7367F0(&qword_27F21AB60, type metadata accessor for ComponentGrid);
  *(v0 + 672) = v81;
  *(v0 + 680) = v82;
  v83 = type metadata accessor for ContactLockup();
  v84 = sub_24E7367F0(&qword_27F21AB68, type metadata accessor for ContactLockup);
  *(v0 + 688) = v83;
  *(v0 + 696) = v84;
  v85 = type metadata accessor for ContinuePlayingIcon(0);
  v86 = sub_24E7367F0(&qword_27F21AB70, type metadata accessor for ContinuePlayingIcon);
  *(v0 + 704) = v85;
  *(v0 + 712) = v86;
  v87 = type metadata accessor for EmptyState();
  v88 = sub_24E7367F0(&qword_27F21AB78, type metadata accessor for EmptyState);
  *(v0 + 720) = v87;
  *(v0 + 728) = v88;
  v89 = type metadata accessor for DashboardHero();
  v90 = sub_24E7367F0(&qword_27F21AB80, type metadata accessor for DashboardHero);
  *(v0 + 736) = v89;
  *(v0 + 744) = v90;
  v91 = type metadata accessor for DebugErrorCard();
  v92 = sub_24E7367F0(&qword_27F21AB88, type metadata accessor for DebugErrorCard);
  *(v0 + 752) = v91;
  *(v0 + 760) = v92;
  v93 = type metadata accessor for FriendInviteButton();
  v94 = sub_24E7367F0(&qword_27F21AB90, type metadata accessor for FriendInviteButton);
  *(v0 + 768) = v93;
  *(v0 + 776) = v94;
  v95 = type metadata accessor for FriendRequestCard();
  v96 = sub_24E7367F0(&qword_27F21AB98, type metadata accessor for FriendRequestCard);
  *(v0 + 784) = v95;
  *(v0 + 792) = v96;
  v97 = type metadata accessor for FriendRequestOverlayComponentGrid();
  v98 = sub_24E7367F0(&qword_27F21ABA0, type metadata accessor for FriendRequestOverlayComponentGrid);
  *(v0 + 800) = v97;
  *(v0 + 808) = v98;
  v99 = type metadata accessor for FriendsArePlayingCard();
  v100 = sub_24E7367F0(&qword_27F21ABA8, type metadata accessor for FriendsArePlayingCard);
  *(v0 + 816) = v99;
  *(v0 + 824) = v100;
  v101 = type metadata accessor for FriendsPlayingHeaderItem();
  v102 = sub_24E7367F0(&qword_27F21ABB0, type metadata accessor for FriendsPlayingHeaderItem);
  *(v0 + 832) = v101;
  *(v0 + 840) = v102;
  v103 = type metadata accessor for FriendSuggestionCard();
  v104 = sub_24E7367F0(&qword_27F21ABB8, type metadata accessor for FriendSuggestionCard);
  *(v0 + 848) = v103;
  *(v0 + 856) = v104;
  v105 = type metadata accessor for FriendSuggestionLockup();
  v106 = sub_24E7367F0(&qword_27F21ABC0, type metadata accessor for FriendSuggestionLockup);
  *(v0 + 864) = v105;
  *(v0 + 872) = v106;
  v107 = type metadata accessor for FriendRequestLockup(0);
  v108 = sub_24E7367F0(&qword_27F21ABC8, type metadata accessor for FriendRequestLockup);
  *(v0 + 880) = v107;
  *(v0 + 888) = v108;
  v109 = type metadata accessor for FriendRequestOverlayHeader();
  v110 = sub_24E7367F0(&qword_27F21ABD0, type metadata accessor for FriendRequestOverlayHeader);
  *(v0 + 896) = v109;
  *(v0 + 904) = v110;
  v111 = type metadata accessor for FriendRequestOverlayLockup();
  v112 = sub_24E7367F0(&qword_27F21ABD8, type metadata accessor for FriendRequestOverlayLockup);
  *(v0 + 912) = v111;
  *(v0 + 920) = v112;
  v113 = type metadata accessor for FriendRequestsPrivacyToggle();
  v114 = sub_24E7367F0(&qword_27F215480, type metadata accessor for FriendRequestsPrivacyToggle);
  *(v0 + 928) = v113;
  *(v0 + 936) = v114;
  v115 = type metadata accessor for GameDetailsAnnotation();
  v116 = sub_24E7367F0(&qword_27F21ABE0, type metadata accessor for GameDetailsAnnotation);
  *(v0 + 944) = v115;
  *(v0 + 952) = v116;
  v117 = type metadata accessor for GameDetailsAnnotationCard(0);
  v118 = sub_24E7367F0(&qword_27F21ABE8, type metadata accessor for GameDetailsAnnotationCard);
  *(v0 + 960) = v117;
  *(v0 + 968) = v118;
  v119 = type metadata accessor for GameDetailsBanner();
  v120 = sub_24E7367F0(&qword_27F21ABF0, type metadata accessor for GameDetailsBanner);
  *(v0 + 976) = v119;
  *(v0 + 984) = v120;
  v121 = type metadata accessor for GameDetailsDeveloper();
  v122 = sub_24E7367F0(&qword_27F21ABF8, type metadata accessor for GameDetailsDeveloper);
  *(v0 + 992) = v121;
  *(v0 + 1000) = v122;
  v123 = type metadata accessor for GameDetailsHeader(0);
  v124 = sub_24E7367F0(&qword_27F21AC00, type metadata accessor for GameDetailsHeader);
  *(v0 + 1008) = v123;
  *(v0 + 1016) = v124;
  v125 = type metadata accessor for GameDetailsMediaItem(0);
  v126 = sub_24E7367F0(&qword_27F213FF8, type metadata accessor for GameDetailsMediaItem);
  *(v0 + 1024) = v125;
  *(v0 + 1032) = v126;
  v127 = type metadata accessor for GameDetailsMediaPreview();
  v128 = sub_24E7367F0(&qword_27F214328, type metadata accessor for GameDetailsMediaPreview);
  *(v0 + 1040) = v127;
  *(v0 + 1048) = v128;
  v129 = type metadata accessor for GameDetailsMediaPreviewCard(0);
  v130 = sub_24E7367F0(&qword_27F21AC08, type metadata accessor for GameDetailsMediaPreviewCard);
  *(v0 + 1056) = v129;
  *(v0 + 1064) = v130;
  v131 = type metadata accessor for GameDetailsRatings();
  v132 = sub_24E7367F0(&qword_27F213EF0, type metadata accessor for GameDetailsRatings);
  *(v0 + 1072) = v131;
  *(v0 + 1080) = v132;
  v133 = type metadata accessor for GameDetailsRatingsAndReviews(0);
  v134 = sub_24E7367F0(&qword_27F214568, type metadata accessor for GameDetailsRatingsAndReviews);
  *(v0 + 1088) = v133;
  *(v0 + 1096) = v134;
  v135 = type metadata accessor for GameDetailsRibbon();
  v136 = sub_24E7367F0(&qword_27F2144C0, type metadata accessor for GameDetailsRibbon);
  *(v0 + 1104) = v135;
  *(v0 + 1112) = v136;
  v137 = type metadata accessor for GameDetailsSummary();
  v138 = sub_24E7367F0(&qword_27F214738, type metadata accessor for GameDetailsSummary);
  *(v0 + 1120) = v137;
  *(v0 + 1128) = v138;
  v139 = type metadata accessor for GameDetailsSummaryCard();
  v140 = sub_24E7367F0(&qword_27F21AC10, type metadata accessor for GameDetailsSummaryCard);
  *(v0 + 1136) = v139;
  *(v0 + 1144) = v140;
  v141 = type metadata accessor for GameHero(0);
  v142 = sub_24E7367F0(&qword_27F218A08, type metadata accessor for GameHero);
  *(v0 + 1152) = v141;
  *(v0 + 1160) = v142;
  v143 = type metadata accessor for GameHeroDetails(0);
  v144 = sub_24E7367F0(&qword_27F21AC18, type metadata accessor for GameHeroDetails);
  *(v0 + 1168) = v143;
  *(v0 + 1176) = v144;
  v145 = type metadata accessor for GameInstallLockup(0);
  v146 = sub_24E7367F0(&qword_27F21AC20, type metadata accessor for GameInstallLockup);
  *(v0 + 1184) = v145;
  *(v0 + 1192) = v146;
  v147 = type metadata accessor for GameLibraryMenuLockup(0);
  v148 = sub_24E7367F0(&qword_27F21AC28, type metadata accessor for GameLibraryMenuLockup);
  *(v0 + 1200) = v147;
  *(v0 + 1208) = v148;
  v149 = type metadata accessor for GameLockup(0);
  v150 = sub_24E7367F0(&qword_27F216AD0, type metadata accessor for GameLockup);
  *(v0 + 1216) = v149;
  *(v0 + 1224) = v150;
  v151 = type metadata accessor for GroupedTable();
  v152 = sub_24E7367F0(&qword_27F21AC30, type metadata accessor for GroupedTable);
  *(v0 + 1232) = v151;
  *(v0 + 1240) = v152;
  v153 = type metadata accessor for GroupedTableRow(0);
  v154 = sub_24E7367F0(&qword_27F21AC38, type metadata accessor for GroupedTableRow);
  *(v0 + 1248) = v153;
  *(v0 + 1256) = v154;
  v155 = type metadata accessor for GSKParagraph();
  v156 = sub_24E7367F0(&qword_27F21AC40, type metadata accessor for GSKParagraph);
  *(v0 + 1264) = v155;
  *(v0 + 1272) = v156;
  v157 = type metadata accessor for GSKDivider(0);
  v158 = sub_24E7367F0(&qword_27F21AC48, type metadata accessor for GSKDivider);
  *(v0 + 1280) = v157;
  *(v0 + 1288) = v158;
  v159 = type metadata accessor for IncomingFriendRequest();
  v160 = sub_24E7367F0(&qword_27F21A6A8, type metadata accessor for IncomingFriendRequest);
  *(v0 + 1296) = v159;
  *(v0 + 1304) = v160;
  v161 = type metadata accessor for InviteFriendsCard();
  v162 = sub_24E7367F0(&qword_27F21AC50, type metadata accessor for InviteFriendsCard);
  *(v0 + 1312) = v161;
  *(v0 + 1320) = v162;
  v163 = type metadata accessor for InviteFriendsCardComponent(0);
  v164 = sub_24E7367F0(&qword_27F21AC58, type metadata accessor for InviteFriendsCardComponent);
  *(v0 + 1328) = v163;
  *(v0 + 1336) = v164;
  v165 = type metadata accessor for InviteFriendsRow(0);
  v166 = sub_24E7367F0(&qword_27F21AC60, type metadata accessor for InviteFriendsRow);
  *(v0 + 1344) = v165;
  *(v0 + 1352) = v166;
  v167 = type metadata accessor for InviteFriendsUpsellComponent();
  v168 = sub_24E7367F0(&qword_27F21AC68, type metadata accessor for InviteFriendsUpsellComponent);
  *(v0 + 1360) = v167;
  *(v0 + 1368) = v168;
  v169 = type metadata accessor for LargePlayerLockup();
  v170 = sub_24E7367F0(&qword_27F21AC70, type metadata accessor for LargePlayerLockup);
  *(v0 + 1376) = v169;
  *(v0 + 1384) = v170;
  v171 = type metadata accessor for LeaderboardCard();
  v172 = sub_24E7367F0(&qword_27F21AC78, type metadata accessor for LeaderboardCard);
  *(v0 + 1392) = v171;
  *(v0 + 1400) = v172;
  v173 = type metadata accessor for LeaderboardChallengeSuggestionLockup();
  v174 = sub_24E7367F0(&qword_27F21AC80, type metadata accessor for LeaderboardChallengeSuggestionLockup);
  *(v0 + 1408) = v173;
  *(v0 + 1416) = v174;
  v175 = type metadata accessor for LeaderboardWithFriendCard();
  v176 = sub_24E7367F0(&qword_27F21AC88, type metadata accessor for LeaderboardWithFriendCard);
  *(v0 + 1424) = v175;
  *(v0 + 1432) = v176;
  v177 = type metadata accessor for LeaderboardPersonalBestCard();
  v178 = sub_24E7367F0(&qword_27F21AC90, type metadata accessor for LeaderboardPersonalBestCard);
  *(v0 + 1440) = v177;
  *(v0 + 1448) = v178;
  v179 = type metadata accessor for LeaderboardActionButton();
  v180 = sub_24E7367F0(&qword_27F21AC98, type metadata accessor for LeaderboardActionButton);
  *(v0 + 1456) = v179;
  *(v0 + 1464) = v180;
  v181 = type metadata accessor for LeaderboardEntryTable();
  v182 = sub_24E7367F0(&qword_27F21ACA0, type metadata accessor for LeaderboardEntryTable);
  *(v0 + 1472) = v181;
  *(v0 + 1480) = v182;
  v183 = type metadata accessor for LeaderboardEntryTableRow(0);
  v184 = sub_24E7367F0(&qword_27F21ACA8, type metadata accessor for LeaderboardEntryTableRow);
  *(v0 + 1488) = v183;
  *(v0 + 1496) = v184;
  v185 = type metadata accessor for LeaderboardRow();
  v186 = sub_24E7367F0(&qword_27F21ACB0, type metadata accessor for LeaderboardRow);
  *(v0 + 1504) = v185;
  *(v0 + 1512) = v186;
  v187 = type metadata accessor for LeaderboardSetCard();
  v188 = sub_24E7367F0(&qword_27F21ACB8, type metadata accessor for LeaderboardSetCard);
  *(v0 + 1520) = v187;
  *(v0 + 1528) = v188;
  v189 = type metadata accessor for LeaderboardsCountHeaderItem(0);
  v190 = sub_24E7367F0(&qword_27F21ACC0, type metadata accessor for LeaderboardsCountHeaderItem);
  *(v0 + 1536) = v189;
  *(v0 + 1544) = v190;
  v191 = type metadata accessor for LeaderboardTimer();
  v192 = sub_24E7367F0(&qword_27F21ACC8, type metadata accessor for LeaderboardTimer);
  *(v0 + 1552) = v191;
  *(v0 + 1560) = v192;
  v193 = type metadata accessor for LinkPlatter(0);
  v194 = sub_24E7367F0(&qword_27F21ACD0, type metadata accessor for LinkPlatter);
  *(v0 + 1568) = v193;
  *(v0 + 1576) = v194;
  v195 = type metadata accessor for LockupCollectionSearchItem();
  v196 = sub_24E7367F0(&qword_27F21ACD8, type metadata accessor for LockupCollectionSearchItem);
  *(v0 + 1584) = v195;
  *(v0 + 1592) = v196;
  v197 = type metadata accessor for MediaCard();
  v198 = sub_24E7367F0(&qword_27F21ACE0, type metadata accessor for MediaCard);
  *(v0 + 1600) = v197;
  *(v0 + 1608) = v198;
  v199 = type metadata accessor for MultiplayerInviteLockup();
  v200 = sub_24E7367F0(&qword_27F21ACE8, type metadata accessor for MultiplayerInviteLockup);
  *(v0 + 1616) = v199;
  *(v0 + 1624) = v200;
  v201 = type metadata accessor for NotImplemented();
  v202 = sub_24E7367F0(&qword_27F21ACF0, type metadata accessor for NotImplemented);
  *(v0 + 1632) = v201;
  *(v0 + 1640) = v202;
  v203 = type metadata accessor for OptionSetting(0);
  v204 = sub_24E7367F0(&qword_27F21ACF8, type metadata accessor for OptionSetting);
  *(v0 + 1648) = v203;
  *(v0 + 1656) = v204;
  v205 = type metadata accessor for OverlayCapsuleLockup(0);
  v206 = sub_24E7367F0(&qword_27F21AD00, type metadata accessor for OverlayCapsuleLockup);
  *(v0 + 1664) = v205;
  *(v0 + 1672) = v206;
  v207 = type metadata accessor for OverlayPlatterLockup(0);
  v208 = sub_24E7367F0(&qword_27F217048, type metadata accessor for OverlayPlatterLockup);
  *(v0 + 1680) = v207;
  *(v0 + 1688) = v208;
  v209 = type metadata accessor for OverlayUnavailableNowPlayingFeatures();
  v210 = sub_24E7367F0(&qword_27F21AD08, type metadata accessor for OverlayUnavailableNowPlayingFeatures);
  *(v0 + 1696) = v209;
  *(v0 + 1704) = v210;
  v211 = type metadata accessor for OverlayHomeButtonReservedNotice(0);
  v212 = sub_24E7367F0(&qword_27F21AD10, type metadata accessor for OverlayHomeButtonReservedNotice);
  *(v0 + 1712) = v211;
  *(v0 + 1720) = v212;
  v213 = type metadata accessor for OverlayCardLockup(0);
  v214 = sub_24E7367F0(&qword_27F21AD18, type metadata accessor for OverlayCardLockup);
  *(v0 + 1728) = v213;
  *(v0 + 1736) = v214;
  v215 = type metadata accessor for OverviewTile(0);
  v216 = sub_24E7367F0(&qword_27F21AD20, type metadata accessor for OverviewTile);
  *(v0 + 1744) = v215;
  *(v0 + 1752) = v216;
  v217 = type metadata accessor for PlayTogetherActivityTile(0);
  v218 = sub_24E7367F0(&qword_27F21AD28, type metadata accessor for PlayTogetherActivityTile);
  *(v0 + 1760) = v217;
  *(v0 + 1768) = v218;
  v219 = type metadata accessor for PlayTogetherTile();
  v220 = sub_24E7367F0(&qword_27F21AD30, type metadata accessor for PlayTogetherTile);
  *(v0 + 1776) = v219;
  *(v0 + 1784) = v220;
  v221 = type metadata accessor for PlayerLockup(0);
  v222 = sub_24E7367F0(&qword_27F21AD38, type metadata accessor for PlayerLockup);
  *(v0 + 1792) = v221;
  *(v0 + 1800) = v222;
  v223 = type metadata accessor for ProfileEditor();
  v224 = sub_24E7367F0(&qword_27F21AD40, type metadata accessor for ProfileEditor);
  *(v0 + 1808) = v223;
  *(v0 + 1816) = v224;
  v225 = type metadata accessor for ProfileHero(0);
  v226 = sub_24E7367F0(&qword_27F21AD48, type metadata accessor for ProfileHero);
  *(v0 + 1824) = v225;
  *(v0 + 1832) = v226;
  v227 = type metadata accessor for Ratings();
  v228 = sub_24E7367F0(&qword_27F21AD50, type metadata accessor for Ratings);
  *(v0 + 1840) = v227;
  *(v0 + 1848) = v228;
  v229 = type metadata accessor for RecordingRowLockup(0);
  v230 = sub_24E7367F0(&qword_27F21AD58, type metadata accessor for RecordingRowLockup);
  *(v0 + 1856) = v229;
  *(v0 + 1864) = v230;
  v231 = type metadata accessor for ReleaseStateIndicator();
  v232 = sub_24E7367F0(&qword_27F21AD60, type metadata accessor for ReleaseStateIndicator);
  *(v0 + 1872) = v231;
  *(v0 + 1880) = v232;
  v233 = type metadata accessor for SearchAppStoreButton();
  v234 = sub_24E7367F0(&qword_27F21AD68, type metadata accessor for SearchAppStoreButton);
  *(v0 + 1888) = v233;
  *(v0 + 1896) = v234;
  v235 = type metadata accessor for SearchCard();
  v236 = sub_24E7367F0(&qword_27F219668, type metadata accessor for SearchCard);
  *(v0 + 1904) = v235;
  *(v0 + 1912) = v236;
  v237 = type metadata accessor for SearchPromptItem(0);
  v238 = sub_24E7367F0(&qword_27F21AD70, type metadata accessor for SearchPromptItem);
  *(v0 + 1920) = v237;
  *(v0 + 1928) = v238;
  v239 = type metadata accessor for SettingsResetButton();
  v240 = sub_24E7367F0(&qword_27F21AD78, type metadata accessor for SettingsResetButton);
  *(v0 + 1936) = v239;
  *(v0 + 1944) = v240;
  v241 = type metadata accessor for SmallBrick(0);
  v242 = sub_24E7367F0(&qword_27F21AD80, type metadata accessor for SmallBrick);
  *(v0 + 1952) = v241;
  *(v0 + 1960) = v242;
  v243 = type metadata accessor for SocialSuggestionLockup(0);
  v244 = sub_24E7367F0(&qword_27F21AD88, type metadata accessor for SocialSuggestionLockup);
  *(v0 + 1968) = v243;
  *(v0 + 1976) = v244;
  v245 = type metadata accessor for SocialSuggestionsComponentGrid();
  result = sub_24E7367F0(&qword_27F21AD90, type metadata accessor for SocialSuggestionsComponentGrid);
  *(v0 + 1984) = v245;
  *(v0 + 1992) = result;
  off_27F21A9F0 = v0;
  return result;
}

uint64_t sub_24E735A48()
{
  if (qword_27F20FE40 != -1)
  {
    swift_once();
  }

  v0 = off_27F21A9F0;
  v1 = *(off_27F21A9F0 + 2);
  if (v1)
  {

    v2 = MEMORY[0x277D84F90];
    v3 = 32;
    do
    {
      v13 = *&v0[v3];
      v14 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AA10);
      v4 = sub_24F92B188();
      v6 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_24E6173E8(0, v2[2] + 1, 1, v2);
      }

      v8 = v2[2];
      v7 = v2[3];
      if (v8 >= v7 >> 1)
      {
        v2 = sub_24E6173E8((v7 > 1), v8 + 1, 1, v2);
      }

      v2[2] = v8 + 1;
      v9 = &v2[4 * v8];
      v9[4] = v4;
      v9[5] = v6;
      *(v9 + 3) = v13;
      v3 += 16;
      --v1;
    }

    while (v1);

    if (v2[2])
    {
      goto LABEL_11;
    }

LABEL_13:
    v10 = MEMORY[0x277D84F98];
    goto LABEL_14;
  }

  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_13;
  }

LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AA20);
  v10 = sub_24F92CB58();
LABEL_14:
  *&v14 = v10;

  sub_24E73623C(v11, 1, &v14);

  off_27F21A9F8 = v14;
  return result;
}

uint64_t static ComponentKinds.table.getter()
{
  if (qword_27F20FE48 != -1)
  {
    swift_once();
  }
}

unint64_t sub_24E735CA0()
{
  result = qword_27F21AA00;
  if (!qword_27F21AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AA00);
  }

  return result;
}

uint64_t sub_24E735CF4()
{
  if (qword_27F20FE48 != -1)
  {
    swift_once();
  }
}

unint64_t sub_24E735D50()
{
  if (qword_27F20FE48 != -1)
  {
    swift_once();
  }

  v1 = off_27F21A9F8;

  return sub_24E7365C8(v1);
}

uint64_t sub_24E735DD4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_24F9285B8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_24F928388();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = dynamic_cast_existential_2_conditional(a1);
  if (v9)
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    sub_24E615E00(a2, v30);
    *&v32 = v12;
    *(&v32 + 1) = v13;
    v33 = v14;
    __swift_allocate_boxed_opaque_existential_1(v31);
    sub_24F92BA78();
    if (v3)
    {
      return __swift_deallocate_boxed_opaque_existential_2(v31);
    }

LABEL_7:
    v29 = v32;
    v22 = v32;
    v23 = __swift_project_boxed_opaque_existential_1(v31, v32);
    *(a3 + 24) = v29;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v23, v22);
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v16 = dynamic_cast_existential_2_conditional(a1);
  if (v16)
  {
    v19 = v16;
    v20 = v17;
    v21 = v18;
    sub_24E615E00(a2, v30);
    result = sub_24F928298();
    if (v3)
    {
      return result;
    }

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_24F92D0E8();
    sub_24F928598();
    *&v32 = v19;
    *(&v32 + 1) = v20;
    v33 = v21;
    __swift_allocate_boxed_opaque_existential_1(v31);
    sub_24F929538();
    goto LABEL_7;
  }

  v25 = sub_24F92C918();
  swift_allocError();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
  *v27 = a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F92D0C8();
  sub_24F92C888();

  v31[0] = 60;
  v31[1] = 0xE100000000000000;
  v28 = sub_24F92D1E8();
  MEMORY[0x253050C20](v28);

  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA46560);
  sub_24F92C908();
  (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
  return swift_willThrow();
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_2(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x2530542D0);
  }

  return result;
}

void sub_24E73623C(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v37 = *(a1 + 48);
  v9 = *a3;

  v10 = sub_24E76D644(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_24E89AE38(v15, v6 & 1);
    v10 = sub_24E76D644(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_24F92CF88();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_24E8AEC48();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  *(v21[7] + 16 * v10) = v37;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_24F92C888();
    MEMORY[0x253050C20](0xD00000000000001BLL, 0x800000024FA45540);
    sub_24F92CA38();
    MEMORY[0x253050C20](39, 0xE100000000000000);
    sub_24F92CA88();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 80);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v37 = *v6;
      v26 = *a3;

      v27 = sub_24E76D644(v8, v7);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_24E89AE38(v31, 1);
        v27 = sub_24E76D644(v8, v7);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v8;
      v34[1] = v7;
      *(v33[7] + 16 * v27) = v37;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v33[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

unint64_t sub_24E7365C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AA08);
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
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AA10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AA18);
        swift_dynamicCast();
        result = sub_24E76D644(v15, v14);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v15;
          v9[1] = v14;
          v10 = result;

          *(v2[7] + 8 * v10) = v21;
          v8 = v11;
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
          v17 = (v2[6] + 16 * result);
          *v17 = v15;
          v17[1] = v14;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
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

uint64_t sub_24E7367F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ChallengesHistoryHeaderShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ChallengesHistoryHeaderShelfIntent.game.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ChallengesHistoryHeaderShelfIntent() + 36);

  return sub_24E736938(v3, a1);
}

uint64_t type metadata accessor for ChallengesHistoryHeaderShelfIntent()
{
  result = qword_27F21ADB8;
  if (!qword_27F21ADB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E736938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t ChallengesHistoryHeaderShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  strcpy((inited + 88), "completedCount");
  *(inited + 103) = -18;
  v7 = v1[2];
  v8 = MEMORY[0x277D83B88];
  *(inited + 128) = MEMORY[0x277D83B88];
  v9 = sub_24E65901C();
  *(inited + 104) = v7;
  *(inited + 136) = v9;
  *(inited + 144) = 0x6E756F43656D6167;
  *(inited + 152) = 0xE900000000000074;
  v10 = v1[3];
  v11 = *(v1 + 32);
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390);
  v12 = sub_24E658F98();
  *(inited + 160) = v10;
  *(inited + 168) = v11;
  *(inited + 192) = v12;
  *(inited + 200) = 0x6F43646E65697266;
  *(inited + 208) = 0xEB00000000746E75;
  v13 = v1[5];
  *(inited + 240) = v8;
  *(inited + 248) = v9;
  *(inited + 216) = v13;
  *(inited + 256) = 0x796C6E4F6E6977;
  *(inited + 264) = 0xE700000000000000;
  LOBYTE(v13) = *(v1 + 48);
  v14 = MEMORY[0x277D22598];
  *(inited + 296) = MEMORY[0x277D839B0];
  *(inited + 304) = v14;
  *(inited + 272) = v13;
  *(inited + 312) = 1701667175;
  *(inited + 320) = 0xE400000000000000;
  v15 = *(type metadata accessor for ChallengesHistoryHeaderShelfIntent() + 36);
  *(inited + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  *(inited + 360) = sub_24E736C00();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 328));
  sub_24E736938(v1 + v15, boxed_opaque_existential_1);

  v17 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v17;
  return result;
}

unint64_t sub_24E736C00()
{
  result = qword_27F21AD98;
  if (!qword_27F21AD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216FE0);
    sub_24E70EA88(&qword_27F217960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AD98);
  }

  return result;
}

uint64_t sub_24E736CA0()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 0x6F43646E65697266;
  v4 = 0x796C6E4F6E6977;
  if (v1 != 4)
  {
    v4 = 1701667175;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6574656C706D6F63;
  if (v1 != 1)
  {
    v5 = 0x6E756F43656D6167;
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

uint64_t sub_24E736D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E7379C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E736D90(uint64_t a1)
{
  v2 = sub_24E737490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E736DCC(uint64_t a1)
{
  v2 = sub_24E737490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesHistoryHeaderShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ADA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E737490();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD38();
    v8[13] = 2;
    sub_24F92CCE8();
    v8[12] = 3;
    sub_24F92CD38();
    v8[11] = 4;
    sub_24F92CD18();
    type metadata accessor for ChallengesHistoryHeaderShelfIntent();
    v8[10] = 5;
    type metadata accessor for Game();
    sub_24E70EA88(&qword_27F214950);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ChallengesHistoryHeaderShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ADB0);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ChallengesHistoryHeaderShelfIntent();
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E737490();
  v12 = v25;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v21 = v9;
  v25 = v5;
  v15 = v23;
  v14 = v24;
  v31 = 0;
  *v11 = sub_24F92CC28();
  *(v11 + 1) = v16;
  v30 = 1;
  *(v11 + 2) = sub_24F92CC58();
  v29 = 2;
  *(v11 + 3) = sub_24F92CC08();
  v11[32] = v17 & 1;
  v28 = 3;
  *(v11 + 5) = sub_24F92CC58();
  v27 = 4;
  v11[48] = sub_24F92CC38() & 1;
  type metadata accessor for Game();
  v26 = 5;
  sub_24E70EA88(&qword_27F214968);
  v18 = v25;
  sub_24F92CC18();
  (*(v15 + 8))(v8, v14);
  sub_24E7374E4(v18, &v11[*(v21 + 36)]);
  sub_24E737554(v11, v22);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_24E7375B8(v11);
}

unint64_t sub_24E737490()
{
  result = qword_27F21ADA8;
  if (!qword_27F21ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21ADA8);
  }

  return result;
}

uint64_t sub_24E7374E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E737554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengesHistoryHeaderShelfIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7375B8(uint64_t a1)
{
  v2 = type metadata accessor for ChallengesHistoryHeaderShelfIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E737628(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E7376F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E7377A8()
{
  sub_24E659BE8();
  if (v0 <= 0x3F)
  {
    sub_24E737854();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E737854()
{
  if (!qword_27F21ADC8)
  {
    type metadata accessor for Game();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21ADC8);
    }
  }
}

unint64_t sub_24E7378C0()
{
  result = qword_27F21ADD0;
  if (!qword_27F21ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21ADD0);
  }

  return result;
}

unint64_t sub_24E737918()
{
  result = qword_27F21ADD8;
  if (!qword_27F21ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21ADD8);
  }

  return result;
}

unint64_t sub_24E737970()
{
  result = qword_27F21ADE0;
  if (!qword_27F21ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21ADE0);
  }

  return result;
}

uint64_t sub_24E7379C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xEE00746E756F4364 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E756F43656D6167 && a2 == 0xE900000000000074 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43646E65697266 && a2 == 0xEB00000000746E75 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796C6E4F6E6977 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t ChallengesAllLeaderboardsShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = type metadata accessor for GSKShelf();
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = *a2;
  v5 = *(a2 + 24);
  *(v3 + 72) = *(a2 + 16);
  *(v3 + 80) = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  *(v3 + 88) = v6;
  *(v3 + 96) = v7;

  return MEMORY[0x2822009F8](sub_24E737C9C, 0, 0);
}

uint64_t sub_24E737C9C()
{
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_24E737D4C;
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[3];

  return sub_24E646310(v5, v4, v2, v3, v6);
}

uint64_t sub_24E737D4C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_24E73814C;
  }

  else
  {

    v4 = sub_24E737E74;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24E737E74()
{

  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_24E737F34;
  v2 = v0[14];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = v0[3];

  return sub_24E6467B8(v5, v2, v3, v4, v6);
}

uint64_t sub_24E737F34()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24E7381D8;
  }

  else
  {

    v2 = sub_24E73805C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E73805C()
{
  v1 = v0[6];
  v2 = v0[2];
  sub_24E614E60(v1, v0[5]);
  sub_24F928138();
  sub_24E614EC4(v1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24E73814C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E7381D8()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_24E738268()
{
  result = qword_27F21ADE8;
  if (!qword_27F21ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21ADE8);
  }

  return result;
}

uint64_t sub_24E7382BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return ChallengesAllLeaderboardsShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t InGameBannerPageConstructionIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for InGameBannerPageConstructionIntent()
{
  result = qword_27F21AE10;
  if (!qword_27F21AE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t InGameBannerPageConstructionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = MEMORY[0x277D22580];
  v5 = *v1;
  v6 = v1[1];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v4;
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x800000024FA46580;
  v7 = *(type metadata accessor for InGameBannerPageConstructionIntent() + 20);
  *(inited + 128) = type metadata accessor for InGameBannerRequiredData();
  *(inited + 136) = sub_24E7330EC(&qword_27F21ADF0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E738EA4(v1 + v7, boxed_opaque_existential_1, type metadata accessor for InGameBannerRequiredData);

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

uint64_t sub_24E7385F0()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24E73862C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46580 == a2)
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

uint64_t sub_24E73870C(uint64_t a1)
{
  v2 = sub_24E738DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E738748(uint64_t a1)
{
  v2 = sub_24E738DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InGameBannerPageConstructionIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ADF8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E738DEC();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for InGameBannerPageConstructionIntent();
    v8[14] = 1;
    type metadata accessor for InGameBannerRequiredData();
    sub_24E7330EC(&qword_27F21A9B0);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t InGameBannerPageConstructionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v18 = type metadata accessor for InGameBannerRequiredData();
  MEMORY[0x28223BE20](v18);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE08);
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v14 - v6;
  v8 = type metadata accessor for InGameBannerPageConstructionIntent();
  MEMORY[0x28223BE20](v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E738DEC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v11 = v17;
  v21 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v12;
  v20 = 1;
  sub_24E7330EC(&qword_27F21A9C0);
  sub_24F92CC68();
  (*(v11 + 8))(v7, v19);
  sub_24E738E40(v5, v10 + *(v15 + 20));
  sub_24E738EA4(v10, v16, type metadata accessor for InGameBannerPageConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E738F0C(v10);
}

unint64_t sub_24E738C60@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v6 = *v2;
  v7 = v2[1];
  v8 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v8;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x800000024FA46580;
  v9 = *(a1 + 20);
  *(inited + 128) = type metadata accessor for InGameBannerRequiredData();
  *(inited + 136) = sub_24E7330EC(&qword_27F21ADF0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E738EA4(v2 + v9, boxed_opaque_existential_1, type metadata accessor for InGameBannerRequiredData);

  v11 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v11;
  return result;
}

unint64_t sub_24E738DEC()
{
  result = qword_27F21AE00;
  if (!qword_27F21AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AE00);
  }

  return result;
}

uint64_t sub_24E738E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InGameBannerRequiredData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E738EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E738F0C(uint64_t a1)
{
  v2 = type metadata accessor for InGameBannerPageConstructionIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E738F7C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for InGameBannerRequiredData();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E73903C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for InGameBannerRequiredData();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24E7390E0()
{
  result = type metadata accessor for InGameBannerRequiredData();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24E739170()
{
  result = qword_27F21AE20;
  if (!qword_27F21AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AE20);
  }

  return result;
}

unint64_t sub_24E7391C8()
{
  result = qword_27F21AE28;
  if (!qword_27F21AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AE28);
  }

  return result;
}

unint64_t sub_24E739220()
{
  result = qword_27F21AE30;
  if (!qword_27F21AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AE30);
  }

  return result;
}

uint64_t sub_24E739274()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E040);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170A0);
  sub_24F924038();
  sub_24E6A4C1C();
  sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F217098, &qword_27F2170A0);
  swift_getWitnessTable();
  return sub_24F926B08();
}

uint64_t sub_24E739418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[2] = a4;
  v26[1] = a2;
  v8 = sub_24F924218();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - v13;
  v15 = type metadata accessor for CommonCardAttributes(0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a5 + 8);
  v28[3] = a3;
  v28[4] = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  (*(a5 + 24))(a3, a5);
  v21 = v18[*(v16 + 92)];
  if (v21 == 2 || (v21 & 1) == 0)
  {
    v27 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE58);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_24F93DE60;
    sub_24F924208();
    v27 = v22;
  }

  sub_24E73A600(&qword_27F216C88, MEMORY[0x277CDFB98]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40);
  sub_24E602068(&qword_27F21AE48, &qword_27F21AE40);
  sub_24F92C6A8();
  sub_24E73A648(v18, type metadata accessor for CommonCardAttributes);
  v23 = MEMORY[0x277CDFB98];
  sub_24E73A600(&qword_27F216C88, MEMORY[0x277CDFB98]);
  sub_24F92C698();
  sub_24E73A600(&qword_27F21AE50, v23);
  sub_24F92AFF8();
  v24 = *(v9 + 8);
  v24(v12, v8);
  v24(v14, v8);
  sub_24EADA8F0();
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_24E7397B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v23 = a2;
  v2 = sub_24F924258();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = (&v22 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEA0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  if (qword_27F210D28 != -1)
  {
    swift_once();
  }

  if (byte_27F39D1B1)
  {
    v11 = 32.0;
  }

  else
  {
    v11 = 26.0;
  }

  v12 = *(v2 + 20);
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_24F924B38();
  v15 = *(*(v14 - 8) + 104);
  v15(v7 + v12, v13, v14);
  *v7 = v11;
  v7[1] = v11;
  v16 = &v10[*(v8 + 36)];
  sub_24E73A8FC(v7, v16);
  *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)) = 256;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEA8);
  (*(*(v17 - 8) + 16))(v10, v22, v17);
  v15(v5 + *(v2 + 20), v13, v14);
  *v5 = v11;
  v5[1] = v11;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEB0);
  v19 = v23;
  v20 = v23 + *(v18 + 36);
  sub_24E73A8FC(v5, v20);
  *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEB8) + 36)) = 0;
  return sub_24E73A960(v10, v19);
}

uint64_t sub_24E739A54@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_24F924258();
  MEMORY[0x28223BE20](v3);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E040);
  v6 = sub_24F924038();
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170A0);
  v9 = sub_24F924038();
  v26 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  sub_24E72FF4C();
  sub_24F926418();
  v15 = *(v3 + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_24F924B38();
  (*(*(v17 - 8) + 104))(&v5->i8[v15], v16, v17);
  *v5 = vdupq_n_s64(0x4040000000000000uLL);
  v18 = sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
  v30 = a1;
  v31 = v18;
  WitnessTable = swift_getWitnessTable();
  sub_24E73A600(&qword_27F212868, MEMORY[0x277CDFC08]);
  sub_24F5A41C0(v5, v6, v3, WitnessTable);
  sub_24E73A648(v5, MEMORY[0x277CDFC08]);
  (*(v25 + 8))(v8, v6);
  v20 = sub_24E602068(&qword_27F217098, &qword_27F2170A0);
  v28 = WitnessTable;
  v29 = v20;
  v21 = swift_getWitnessTable();
  sub_24E7896B8(v12, v9, v21);
  v22 = *(v26 + 8);
  v22(v12, v9);
  sub_24E7896B8(v14, v9, v21);
  return (v22)(v14, v9);
}

uint64_t sub_24E739E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a1;
  v37 = a4;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v32[-v10];
  v12 = sub_24F924038();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v32[-v17];
  v19 = sub_24F924E38();
  v35 = *(v19 - 8);
  v36 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v32[-v21];
  if (v33)
  {
    MEMORY[0x25304C420](v20);
    v23 = sub_24E73A224();
    v38 = a3;
    v39 = v23;
    WitnessTable = swift_getWitnessTable();
    sub_24E7896B8(v15, v12, WitnessTable);
    v25 = *(v13 + 8);
    v25(v15, v12);
    sub_24E7896B8(v18, v12, WitnessTable);
    sub_24ECCCBA0(v15, v12);
    v25(v15, v12);
    v25(v18, v12);
  }

  else
  {
    sub_24E7896B8(v34, a2, a3);
    sub_24E7896B8(v11, a2, a3);
    v26 = sub_24E73A224();
    v44 = a3;
    v45 = v26;
    swift_getWitnessTable();
    sub_24ECCCC98(v8, v12, a2);
    v27 = *(v6 + 8);
    v27(v8, a2);
    v27(v11, a2);
  }

  v28 = sub_24E73A224();
  v42 = a3;
  v43 = v28;
  v40 = swift_getWitnessTable();
  v41 = a3;
  v29 = v36;
  v30 = swift_getWitnessTable();
  sub_24E7896B8(v22, v29, v30);
  return (*(v35 + 8))(v22, v29);
}

unint64_t sub_24E73A224()
{
  result = qword_27F21AE38;
  if (!qword_27F21AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AE38);
  }

  return result;
}

uint64_t sub_24E73A2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924B38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210D28 != -1)
  {
    swift_once();
  }

  if (byte_27F39D1B1)
  {
    v8 = 32.0;
  }

  else
  {
    v8 = 26.0;
  }

  (*(v5 + 104))(v7, *MEMORY[0x277CE0118], v4);
  v9 = sub_24F924258();
  v31 = v9;
  v32 = sub_24E73A600(&qword_27F212868, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
  (*(v5 + 16))(boxed_opaque_existential_1 + *(v9 + 20), v7, v4);
  *boxed_opaque_existential_1 = v8;
  boxed_opaque_existential_1[1] = v8;
  (*(v5 + 8))(v7, v4);
  sub_24E612C80(&v30, v33);
  sub_24E73A6A8(v33, a2);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE68);
  v12 = v11[9];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE70);
  (*(*(v13 - 8) + 16))(a2 + v12, a1, v13);
  v14 = a2 + v11[10];
  *v14 = sub_24F923398() & 1;
  *(v14 + 8) = v15;
  *(v14 + 16) = v16 & 1;
  v17 = a2 + v11[11];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v18 = qword_27F24E488;
  v19 = sub_24F923398();
  v21 = v20;
  v23 = v22;
  v24 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE78) + 36);
  *v24 = v18;
  *(v24 + 8) = v19 & 1;
  *(v24 + 16) = v21;
  *(v24 + 24) = v23 & 1;
  LOBYTE(v18) = sub_24F923398();
  v26 = v25;
  LOBYTE(v21) = v27;
  sub_24E73A720(v33);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE80);
  v29 = a2 + *(result + 36);
  *v29 = v18 & 1;
  *(v29 + 8) = v26;
  *(v29 + 16) = v21 & 1;
  return result;
}

uint64_t sub_24E73A600(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E73A648(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E73A6A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E73A720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E73A79C()
{
  result = qword_27F21AE88;
  if (!qword_27F21AE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AE80);
    sub_24E73A828();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AE88);
  }

  return result;
}

unint64_t sub_24E73A828()
{
  result = qword_27F21AE90;
  if (!qword_27F21AE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AE78);
    sub_24E602068(&qword_27F21AE98, &qword_27F21AE68);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AE90);
  }

  return result;
}

uint64_t sub_24E73A8FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F924258();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E73A960(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E73A9D4()
{
  result = qword_27F21AEC0;
  if (!qword_27F21AEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AEB0);
    sub_24E73AA8C();
    sub_24E602068(&qword_27F21AED8, &qword_27F21AEB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AEC0);
  }

  return result;
}

unint64_t sub_24E73AA8C()
{
  result = qword_27F21AEC8;
  if (!qword_27F21AEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AEA0);
    sub_24E602068(&qword_27F21AED0, &qword_27F21AEA8);
    sub_24E602068(&qword_27F216528, &qword_27F2164C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AEC8);
  }

  return result;
}

unint64_t ChallengesFriendComparisonCompletedShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x444965676170;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v10;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 88) = 0x614E646E65697266;
  *(inited + 96) = 0xEA0000000000656DLL;
  *(inited + 128) = v9;
  *(inited + 136) = v10;
  *(inited + 104) = v5;
  *(inited + 112) = v6;
  *(inited + 144) = 0xD000000000000013;
  *(inited + 152) = 0x800000024FA465A0;
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEE0);
  *(inited + 192) = sub_24E73B1DC(&qword_27F21AEE8, &qword_27F21AEF0);
  *(inited + 160) = v7;

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

uint64_t sub_24E73AD64()
{
  v1 = 0x614E646E65697266;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_24E73ADC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E73B460(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E73ADEC(uint64_t a1)
{
  v2 = sub_24E73B188();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E73AE28(uint64_t a1)
{
  v2 = sub_24E73B188();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesFriendComparisonCompletedShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E73B188();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v18 = v9;
  v21 = 1;
  v16 = sub_24F92CC28();
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEE0);
  v20 = 2;
  sub_24E73B1DC(&qword_27F21AF08, &qword_27F21AF10);
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v13 = v19;
  *a2 = v18;
  a2[1] = v11;
  v14 = v17;
  a2[2] = v16;
  a2[3] = v14;
  a2[4] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24E73B188()
{
  result = qword_27F21AF00;
  if (!qword_27F21AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AF00);
  }

  return result;
}

uint64_t sub_24E73B1DC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AEE0);
    sub_24E73B264(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E73B264(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Challenge(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E73B2A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E73B2F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E73B35C()
{
  result = qword_27F21AF18;
  if (!qword_27F21AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AF18);
  }

  return result;
}

unint64_t sub_24E73B3B4()
{
  result = qword_27F21AF20;
  if (!qword_27F21AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AF20);
  }

  return result;
}

unint64_t sub_24E73B40C()
{
  result = qword_27F21AF28;
  if (!qword_27F21AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AF28);
  }

  return result;
}

uint64_t sub_24E73B460(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E646E65697266 && a2 == 0xEA0000000000656DLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA465A0 == a2)
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

uint64_t sub_24E73B5A0(uint64_t a1)
{
  v2 = sub_24E73B72C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E73B5DC(uint64_t a1)
{
  v2 = sub_24E73B72C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FriendOutboxDataIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E73B72C();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E73B72C()
{
  result = qword_27F21AF38;
  if (!qword_27F21AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AF38);
  }

  return result;
}

uint64_t sub_24E73B7C8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E73B72C();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E73B900()
{
  result = qword_27F21AF40;
  if (!qword_27F21AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AF40);
  }

  return result;
}

unint64_t sub_24E73B958()
{
  result = qword_27F21AF48;
  if (!qword_27F21AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AF48);
  }

  return result;
}

uint64_t sub_24E73BA20()
{
  v0 = sub_24F927618();
  v2 = v1;
  if (qword_27F211948 != -1)
  {
    swift_once();
  }

  v10 = xmmword_27F2543E0;
  v3 = qword_27F2543F0;
  v4 = qword_27F2543F8;
  v5 = sub_24E609BDC(&unk_2861BD058);
  v6 = sub_24E609BF0(&unk_2861BD0C8);
  v7 = sub_24E609CD8(&unk_2861BD160);
  v8 = sub_24E609DC4(&unk_2861BD1D0);
  xmmword_27F39A8F8 = 5uLL;
  qword_27F39A908 = v0;
  unk_27F39A910 = v2;
  xmmword_27F39A918 = v10;
  qword_27F39A928 = v3;
  qword_27F39A930 = v4;
  unk_27F39A938 = v5;
  qword_27F39A940 = v6;
  unk_27F39A948 = v7;
  qword_27F39A950 = v8;
  byte_27F39A958 = 1;
}

uint64_t sub_24E73BB34()
{
  v0 = sub_24F9275F8();
  v2 = v1;
  if (qword_27F211948 != -1)
  {
    swift_once();
  }

  v10 = xmmword_27F2543E0;
  v3 = qword_27F2543F0;
  v4 = qword_27F2543F8;
  v5 = sub_24E609BDC(&unk_2861BD240);
  v6 = sub_24E609BF0(&unk_2861BD2B0);
  v7 = sub_24E609CD8(&unk_2861BD348);
  v8 = sub_24E609DC4(&unk_2861BD3B8);
  *&xmmword_27F39A960 = 5;
  *(&xmmword_27F39A960 + 1) = 0x4050000000000000;
  qword_27F39A970 = v0;
  unk_27F39A978 = v2;
  xmmword_27F39A980 = v10;
  qword_27F39A990 = v3;
  qword_27F39A998 = v4;
  unk_27F39A9A0 = v5;
  qword_27F39A9A8 = v6;
  unk_27F39A9B0 = v7;
  qword_27F39A9B8 = v8;
  byte_27F39A9C0 = 1;
}

uint64_t sub_24E73BC4C()
{
  v0 = sub_24F927618();
  v2 = v1;
  if (qword_27F211958 != -1)
  {
    swift_once();
  }

  v10 = xmmword_27F254420;
  v3 = qword_27F254430;
  v4 = qword_27F254438;
  v5 = sub_24E609BDC(&unk_2861BD428);
  v6 = sub_24E609BF0(&unk_2861BD478);
  v7 = sub_24E609CD8(&unk_2861BD4E0);
  v8 = sub_24E609DC4(&unk_2861BD550);
  xmmword_27F39A9C8 = 3uLL;
  qword_27F39A9D8 = v0;
  unk_27F39A9E0 = v2;
  xmmword_27F39A9E8 = v10;
  qword_27F39A9F8 = v3;
  qword_27F39AA00 = v4;
  unk_27F39AA08 = v5;
  qword_27F39AA10 = v6;
  unk_27F39AA18 = v7;
  qword_27F39AA20 = v8;
  byte_27F39AA28 = 0;
}

uint64_t sub_24E73BD5C()
{
  v0 = sub_24F927618();
  v2 = v1;
  if (qword_27F211968 != -1)
  {
    swift_once();
  }

  v10 = xmmword_27F254460;
  v3 = qword_27F254470;
  v4 = qword_27F254478;
  v5 = sub_24E609BDC(&unk_2861BCF50);
  v6 = sub_24E609BF0(&unk_2861BCF80);
  v7 = sub_24E609CD8(&unk_2861BCFB8);
  v8 = sub_24E609DC4(&unk_2861BCFE8);
  xmmword_27F39AA30 = 1uLL;
  qword_27F39AA40 = v0;
  unk_27F39AA48 = v2;
  xmmword_27F39AA50 = v10;
  qword_27F39AA60 = v3;
  qword_27F39AA68 = v4;
  unk_27F39AA70 = v5;
  qword_27F39AA78 = v6;
  unk_27F39AA80 = v7;
  qword_27F39AA88 = v8;
  byte_27F39AA90 = 0;
}

uint64_t sub_24E73BE6C()
{
  v0 = sub_24F927618();
  v2 = v1;
  if (qword_27F211948 != -1)
  {
    swift_once();
  }

  v10 = xmmword_27F2543E0;
  v3 = qword_27F2543F0;
  v4 = qword_27F2543F8;
  v5 = sub_24E609BDC(&unk_2861BD5C0);
  v6 = sub_24E609BF0(&unk_2861BD630);
  v7 = sub_24E609CD8(&unk_2861BD6C8);
  v8 = sub_24E609DC4(&unk_2861BD738);
  xmmword_27F39AA98 = 5uLL;
  qword_27F39AAA8 = v0;
  unk_27F39AAB0 = v2;
  xmmword_27F39AAB8 = v10;
  qword_27F39AAC8 = v3;
  qword_27F39AAD0 = v4;
  unk_27F39AAD8 = v5;
  qword_27F39AAE0 = v6;
  unk_27F39AAE8 = v7;
  qword_27F39AAF0 = v8;
  byte_27F39AAF8 = 0;
}

uint64_t sub_24E73BF7C()
{
  v0 = sub_24F927618();
  v2 = v1;
  if (qword_27F211948 != -1)
  {
    swift_once();
  }

  v10 = xmmword_27F2543E0;
  v3 = qword_27F2543F0;
  v4 = qword_27F2543F8;
  v5 = sub_24E609BDC(&unk_2861BF2A0);
  v6 = sub_24E609BF0(&unk_2861BF310);
  v7 = sub_24E609CD8(&unk_2861BF3A8);
  v8 = sub_24E609DC4(&unk_2861BF418);
  xmmword_27F39AB00 = 5uLL;
  qword_27F39AB10 = v0;
  unk_27F39AB18 = v2;
  xmmword_27F39AB20 = v10;
  qword_27F39AB30 = v3;
  qword_27F39AB38 = v4;
  unk_27F39AB40 = v5;
  qword_27F39AB48 = v6;
  unk_27F39AB50 = v7;
  qword_27F39AB58 = v8;
  byte_27F39AB60 = 0;
}

uint64_t sub_24E73C08C()
{
  v0 = sub_24F927618();
  v2 = v1;
  if (qword_27F211948 != -1)
  {
    swift_once();
  }

  v10 = xmmword_27F2543E0;
  v3 = qword_27F2543F0;
  v4 = qword_27F2543F8;
  v5 = sub_24E609BDC(&unk_2861BF488);
  v6 = sub_24E609BF0(&unk_2861BF4F8);
  v7 = sub_24E609CD8(&unk_2861BF590);
  v8 = sub_24E609DC4(&unk_2861BF600);
  xmmword_27F39AB68 = 5uLL;
  qword_27F39AB78 = v0;
  unk_27F39AB80 = v2;
  xmmword_27F39AB88 = v10;
  qword_27F39AB98 = v3;
  qword_27F39ABA0 = v4;
  unk_27F39ABA8 = v5;
  qword_27F39ABB0 = v6;
  unk_27F39ABB8 = v7;
  qword_27F39ABC0 = v8;
  byte_27F39ABC8 = 0;
}

uint64_t sub_24E73C19C@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - v12;
  v14 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      sub_24F4E9558(a3, v16);
      goto LABEL_21;
    }

    if (a2 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v17 = qword_27F39E610;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v17 = qword_27F39E658;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      sub_24F4E9E44(a3, v16);
      goto LABEL_21;
    }

    if (qword_27F2112F8 != -1)
    {
      swift_once();
    }

    v17 = qword_27F39E628;
  }

  else
  {
    if (qword_27F211300 != -1)
    {
      swift_once();
    }

    v17 = qword_27F39E640;
  }

  v18 = __swift_project_value_buffer(v14, v17);
  sub_24E745628(v18, v16, type metadata accessor for CardLayoutMetrics);
LABEL_21:
  sub_24E746F20(v16, a4, type metadata accessor for CardLayoutMetrics);
  v19 = a1 + *(type metadata accessor for MediaCard() + 32);
  result = type metadata accessor for CommonCardAttributes(0);
  if (*(v19 + *(result + 36)))
  {
    v21 = 1;
  }

  else
  {
    v22 = result;
    sub_24E60169C(v19 + *(result + 32), v13, &qword_27F213FB8);
    v23 = type metadata accessor for GSKVideo();
    v21 = 1;
    v24 = (*(*(v23 - 8) + 48))(v13, 1, v23);
    result = sub_24E601704(v13, &qword_27F213FB8);
    if (v24 == 1)
    {
      sub_24E60169C(v19 + *(v22 + 28), v10, &qword_27F213FB0);
      v25 = sub_24F9289E8();
      v21 = (*(*(v25 - 8) + 48))(v10, 1, v25) != 1;
      result = sub_24E601704(v10, &qword_27F213FB0);
    }
  }

  *(a4 + *(v14 + 40)) = v21;
  return result;
}

uint64_t sub_24E73C580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v228 = a5;
  v218 = a4;
  v235 = a6;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219068);
  MEMORY[0x28223BE20](v186);
  v188 = (&v171 - v9);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219070);
  MEMORY[0x28223BE20](v187);
  v184 = (&v171 - v10);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219078);
  MEMORY[0x28223BE20](v204);
  v189 = &v171 - v11;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  MEMORY[0x28223BE20](v227);
  v206 = &v171 - v12;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF58);
  MEMORY[0x28223BE20](v200);
  v203 = &v171 - v13;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF60);
  MEMORY[0x28223BE20](v181);
  v182 = (&v171 - v14);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF68);
  MEMORY[0x28223BE20](v201);
  v183 = &v171 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF70);
  MEMORY[0x28223BE20](v16 - 8);
  v202 = &v171 - v17;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF78);
  MEMORY[0x28223BE20](v215);
  v205 = &v171 - v18;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF80);
  MEMORY[0x28223BE20](v213);
  v214 = &v171 - v19;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF88);
  MEMORY[0x28223BE20](v224);
  v216 = &v171 - v20;
  v192 = type metadata accessor for ColorGroup();
  v191 = *(v192 - 8);
  v21 = MEMORY[0x28223BE20](v192);
  v180 = &v171 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v176 = &v171 - v23;
  v212 = type metadata accessor for CardContentBackgroundStyle(0);
  v24 = MEMORY[0x28223BE20](v212);
  v178 = &v171 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v179 = &v171 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v194 = &v171 - v29;
  MEMORY[0x28223BE20](v28);
  v199 = &v171 - v30;
  v211 = type metadata accessor for MediaCardConfiguration.VisualView(0);
  MEMORY[0x28223BE20](v211);
  v198 = &v171 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF90);
  MEMORY[0x28223BE20](v32);
  v34 = &v171 - v33;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF98);
  MEMORY[0x28223BE20](v222);
  v219 = &v171 - v35;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AFA0);
  MEMORY[0x28223BE20](v208);
  v209 = &v171 - v36;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AFA8);
  MEMORY[0x28223BE20](v220);
  v210 = &v171 - v37;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AFB0);
  MEMORY[0x28223BE20](v226);
  v223 = &v171 - v38;
  v196 = type metadata accessor for CardElementView.Category(0);
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v185 = &v171 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AFB8);
  MEMORY[0x28223BE20](v207);
  v197 = &v171 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AFC0);
  v232 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v231 = &v171 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v44 = MEMORY[0x28223BE20](v43 - 8);
  *&v193 = &v171 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v47 = &v171 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  v49 = MEMORY[0x28223BE20](v48 - 8);
  v190 = &v171 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v177 = &v171 - v52;
  MEMORY[0x28223BE20](v51);
  v233 = &v171 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  v55 = MEMORY[0x28223BE20](v54 - 8);
  v57 = &v171 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v59 = &v171 - v58;
  v229 = type metadata accessor for CardLayoutMetrics(0);
  v60 = MEMORY[0x28223BE20](v229);
  v62 = (&v171 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v60);
  v234 = &v171 - v63;
  v225 = a1;
  v230 = a2;
  if (sub_24E744BC0(a1, a2, a3))
  {
    v221 = a3;
    v64 = a3;
    if (a3 > 2u)
    {
      v65 = v235;
      if (v64 == 3)
      {
        sub_24F4E9558(v218, v62);
        goto LABEL_25;
      }

      if (v64 == 4)
      {
        if (qword_27F2112F0 != -1)
        {
          swift_once();
        }

        v69 = qword_27F39E610;
      }

      else
      {
        if (qword_27F211308 != -1)
        {
          swift_once();
        }

        v69 = qword_27F39E658;
      }
    }

    else
    {
      v65 = v235;
      if (v64)
      {
        if (v64 == 1)
        {
          sub_24F4E9E44(v218, v62);
          goto LABEL_25;
        }

        if (qword_27F2112F8 != -1)
        {
          swift_once();
        }

        v69 = qword_27F39E628;
      }

      else
      {
        if (qword_27F211300 != -1)
        {
          swift_once();
        }

        v69 = qword_27F39E640;
      }
    }

    v70 = __swift_project_value_buffer(v229, v69);
    sub_24E745628(v70, v62, type metadata accessor for CardLayoutMetrics);
LABEL_25:
    v71 = v62;
    v72 = v234;
    sub_24E746F20(v71, v234, type metadata accessor for CardLayoutMetrics);
    v171 = type metadata accessor for MediaCard();
    v73 = v230;
    v74 = v230 + *(v171 + 32);
    v75 = type metadata accessor for CommonCardAttributes(0);
    v76 = *(v74 + *(v75 + 36));
    v217 = v41;
    v175 = v34;
    v174 = v32;
    v172 = v75;
    if (v76)
    {
      v77 = 1;
      *(v72 + v229[10]) = 1;
      sub_24E73EE78(v73, v233);
    }

    else
    {
      v78 = v75;
      sub_24E60169C(v74 + *(v75 + 32), v59, &qword_27F213FB8);
      v79 = type metadata accessor for GSKVideo();
      v80 = v74;
      v81 = 1;
      *&v173 = *(*(v79 - 8) + 48);
      v82 = (v173)(v59, 1, v79);
      sub_24E601704(v59, &qword_27F213FB8);
      if (v82 == 1)
      {
        sub_24E60169C(v80 + *(v78 + 28), v47, &qword_27F213FB0);
        v83 = sub_24F9289E8();
        v81 = (*(*(v83 - 8) + 48))(v47, 1, v83) != 1;
        sub_24E601704(v47, &qword_27F213FB0);
      }

      *(v234 + v229[10]) = v81;
      sub_24E73EE78(v230, v233);
      sub_24E60169C(v80 + *(v78 + 32), v57, &qword_27F213FB8);
      v77 = 1;
      v84 = (v173)(v57, 1, v79);
      sub_24E601704(v57, &qword_27F213FB8);
      v65 = v235;
      v74 = v80;
      if (v84 == 1)
      {
        v85 = v193;
        sub_24E60169C(v80 + *(v172 + 28), v193, &qword_27F213FB0);
        v86 = sub_24F9289E8();
        v77 = (*(*(v86 - 8) + 48))(v85, 1, v86) != 1;
        sub_24E601704(v85, &qword_27F213FB0);
      }
    }

    v87 = v74;
    if (v221 > 2u)
    {
      if (v221 == 3)
      {
        if (qword_27F20FE58 != -1)
        {
          swift_once();
        }

        v88 = &xmmword_27F39A960;
      }

      else if (v221 == 4)
      {
        if (qword_27F20FE50 != -1)
        {
          swift_once();
        }

        v88 = &xmmword_27F39A8F8;
      }

      else
      {
        if (qword_27F20FE70 != -1)
        {
          swift_once();
        }

        v88 = &xmmword_27F39AA98;
      }
    }

    else if (v221 && v221 != 1)
    {
      if (qword_27F20FE60 != -1)
      {
        swift_once();
      }

      v88 = &xmmword_27F39A9C8;
    }

    else
    {
      if (qword_27F20FE68 != -1)
      {
        swift_once();
      }

      v88 = &xmmword_27F39AA30;
    }

    v241 = *(v88 + 96);
    v89 = v88[5];
    *&v240[16] = v88[4];
    *&v240[32] = v89;
    v90 = v88[3];
    v239 = v88[2];
    *v240 = v90;
    v91 = v88[1];
    v237 = *v88;
    v238 = v91;
    v92 = v241;
    v93 = *&v240[40];
    v193 = *&v240[24];
    v94 = v239;
    v95 = v90;
    v173 = *&v240[8];
    v96 = v91;
    v97 = *(&v237 + 1);
    v98 = v237;
    sub_24E7450A0(&v237, &v236);
    v237 = __PAIR128__(v97, v98);
    v238 = v96;
    v239 = v94;
    *v240 = v95;
    *&v240[8] = v173;
    *&v240[24] = v193;
    *&v240[40] = v93;
    v241 = v92;
    if (v225 <= 0xAu)
    {
      v99 = v217;
      if (!v225)
      {
        v120 = *(v87 + 16);
        if (v120)
        {
          v121 = *(v87 + 8);
          v122 = HIBYTE(v120) & 0xF;
          if ((v120 & 0x2000000000000000) == 0)
          {
            v122 = v121 & 0xFFFFFFFFFFFFLL;
          }

          v123 = v196;
          if (v122)
          {
            v124 = v185;
            sub_24E60169C(v87 + *(v172 + 24), &v185[*(v196 + 20)], &qword_27F213FB0);
            v125 = *(v234 + v229[9]);
            v126 = *(v234 + v229[8]);
            v127 = *(v234 + v229[6]);
            *v124 = v121;
            v124[1] = v120;
            *(v124 + v123[6]) = v125;
            *(v124 + v123[7]) = v77;
            *(v124 + v123[8]) = v126;
            *(v124 + v123[9]) = v127;
            v236 = 0x4034000000000000;
            sub_24E66ED98();

            sub_24F9237C8();
            v236 = 0x4008000000000000;
            sub_24F9237C8();
            v236 = 0x4018000000000000;
            sub_24F9237C8();
            v236 = 0x4010000000000000;
            sub_24F9237C8();
            v128 = v197;
            sub_24E746F20(v124, v197, type metadata accessor for CardElementView.Category);
            v129 = 0;
          }

          else
          {
            v129 = 1;
            v128 = v197;
          }
        }

        else
        {
          v129 = 1;
          v128 = v197;
          v123 = v196;
        }

        (*(v195 + 56))(v128, v129, 1, v123);
        sub_24E60169C(v128, v209, &qword_27F21AFB8);
        swift_storeEnumTagMultiPayload();
        sub_24E74524C();
        sub_24E745300(&qword_27F21AFE0, type metadata accessor for MediaCardConfiguration.VisualView);
        v152 = v210;
        sub_24F924E28();
        sub_24E60169C(v152, v219, &qword_27F21AFA8);
        swift_storeEnumTagMultiPayload();
        sub_24E745190();
        sub_24E7454E4(&qword_27F21AFE8, &qword_27F21AF88, &unk_24F94FF38, sub_24E745348);
        v153 = v223;
        sub_24F924E28();
        sub_24E601704(v152, &qword_27F21AFA8);
        sub_24E60169C(v153, v175, &qword_27F21AFB0);
        swift_storeEnumTagMultiPayload();
        sub_24E7450D8();
        sub_24E701970();
        sub_24F924E28();
        sub_24E745598(&v237);
        sub_24E601704(v153, &qword_27F21AFB0);
        sub_24E601704(v128, &qword_27F21AFB8);
        v65 = v235;
        goto LABEL_101;
      }

      if (v225 == 2)
      {
        v100 = v198;
        sub_24E745628(v230, v198, type metadata accessor for MediaCard);
        v101 = v211;
        *(v100 + *(v211 + 20)) = v221;
        v102 = v100 + v101[6];
        v103 = *&v240[32];
        *(v102 + 64) = *&v240[16];
        *(v102 + 80) = v103;
        *(v102 + 96) = v241;
        v104 = v238;
        *v102 = v237;
        *(v102 + 16) = v104;
        v105 = *v240;
        *(v102 + 32) = v239;
        *(v102 + 48) = v105;
        *(v100 + v101[7]) = v228;
        v106 = v100 + v101[8];
        *v106 = swift_getKeyPath();
        *(v106 + 8) = 0;
        v107 = v100 + v101[9];
        type metadata accessor for CardSafeArea(0);
        sub_24E745300(&qword_27F214D10, type metadata accessor for CardSafeArea);

        *v107 = sub_24F923598();
        *(v107 + 8) = v108 & 1;
        sub_24E745628(v100, v209, type metadata accessor for MediaCardConfiguration.VisualView);
        swift_storeEnumTagMultiPayload();
        sub_24E74524C();
        sub_24E745300(&qword_27F21AFE0, type metadata accessor for MediaCardConfiguration.VisualView);
        v109 = v210;
        sub_24F924E28();
        sub_24E60169C(v109, v219, &qword_27F21AFA8);
        swift_storeEnumTagMultiPayload();
        sub_24E745190();
        sub_24E7454E4(&qword_27F21AFE8, &qword_27F21AF88, &unk_24F94FF38, sub_24E745348);
        v110 = v223;
        sub_24F924E28();
        sub_24E601704(v109, &qword_27F21AFA8);
        sub_24E60169C(v110, v175, &qword_27F21AFB0);
        swift_storeEnumTagMultiPayload();
        sub_24E7450D8();
        sub_24E701970();
        sub_24F924E28();
        sub_24E601704(v110, &qword_27F21AFB0);
        sub_24E7455C8(v100, type metadata accessor for MediaCardConfiguration.VisualView);
LABEL_101:
        v159 = v234;
LABEL_102:
        sub_24E601704(v233, &qword_27F2190D8);
        sub_24E7455C8(v159, type metadata accessor for CardLayoutMetrics);
        sub_24E6009C8(v231, v65, &qword_27F21AFC0);
        return (*(v232 + 56))(v65, 0, 1, v99);
      }

LABEL_60:
      v119 = v206;
      sub_24E91E334(v225, v230, v221, v218, v228, v206);
      sub_24E60169C(v119, v175, &qword_27F214A20);
      swift_storeEnumTagMultiPayload();
      sub_24E7450D8();
      sub_24E701970();
      sub_24F924E28();
      sub_24E745598(&v237);
      sub_24E601704(v119, &qword_27F214A20);
      goto LABEL_101;
    }

    v99 = v217;
    if (v225 != 11)
    {
      if (v225 == 12)
      {
        v111 = v221;
        if (v221 - 2 >= 4)
        {
          v114 = v202;
          if (v221)
          {
            v154 = v206;
            sub_24E91E334(0xC, v230, 1, v218, v228, v206);
            sub_24E60169C(v154, v182, &qword_27F214A20);
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8);
            sub_24E63D098();
            sub_24E701970();
            v155 = v183;
            sub_24F924E28();
            sub_24E60169C(v155, v203, &qword_27F21AF68);
            swift_storeEnumTagMultiPayload();
            sub_24E745458();
            sub_24E7018B8();
            sub_24F924E28();
            sub_24E601704(v155, &qword_27F21AF68);
            v138 = v154;
            v139 = &qword_27F214A20;
          }

          else
          {
            v134 = sub_24F926C98();
            v135 = sub_24F925808();
            v136 = v182;
            *v182 = v134;
            *(v136 + 8) = v135;
            swift_storeEnumTagMultiPayload();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8);
            sub_24E63D098();
            sub_24E701970();
            v137 = v183;
            sub_24F924E28();
            sub_24E60169C(v137, v203, &qword_27F21AF68);
            swift_storeEnumTagMultiPayload();
            sub_24E745458();
            sub_24E7018B8();
            sub_24F924E28();

            v138 = v137;
            v139 = &qword_27F21AF68;
          }

          sub_24E601704(v138, v139);
          v151 = v219;
        }

        else
        {
          v112 = v190;
          sub_24E60169C(v233, v190, &qword_27F2190D8);
          v113 = (*(v191 + 48))(v112, 1, v192);
          v114 = v202;
          if (v113 == 1)
          {
            sub_24E601704(v112, &qword_27F2190D8);
            v115 = sub_24F926C98();
            v116 = sub_24F925808();
            v117 = v188;
            *v188 = v115;
            *(v117 + 8) = v116;
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8);
            sub_24E602068(&qword_27F219118, &qword_27F219070);
            sub_24E63D098();
            v118 = v189;
            sub_24F924E28();
          }

          else
          {
            v146 = v180;
            sub_24E746F20(v112, v180, type metadata accessor for ColorGroup);
            v147 = sub_24F927618();
            v148 = v184;
            *v184 = v147;
            *(v148 + 8) = v149;
            v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219120);
            sub_24F594F18(v111 != 5, v146, v148 + *(v150 + 44));
            sub_24E60169C(v148, v188, &qword_27F219070);
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8);
            sub_24E602068(&qword_27F219118, &qword_27F219070);
            sub_24E63D098();
            v118 = v189;
            sub_24F924E28();
            sub_24E601704(v148, &qword_27F219070);
            sub_24E7455C8(v146, type metadata accessor for ColorGroup);
          }

          v151 = v219;
          sub_24E60169C(v118, v203, &qword_27F219078);
          swift_storeEnumTagMultiPayload();
          sub_24E745458();
          sub_24E7018B8();
          sub_24F924E28();
          sub_24E601704(v118, &qword_27F219078);
        }

        v156 = v205;
        sub_24E6009C8(v114, v205, &qword_27F21AF70);
        sub_24E60169C(v156, v214, &qword_27F21AF78);
        swift_storeEnumTagMultiPayload();
        sub_24E745300(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
        sub_24E745348();
        v157 = v216;
        sub_24F924E28();
        sub_24E60169C(v157, v151, &qword_27F21AF88);
        swift_storeEnumTagMultiPayload();
        sub_24E745190();
        sub_24E7454E4(&qword_27F21AFE8, &qword_27F21AF88, &unk_24F94FF38, sub_24E745348);
        v158 = v223;
        sub_24F924E28();
        sub_24E601704(v157, &qword_27F21AF88);
        sub_24E60169C(v158, v175, &qword_27F21AFB0);
        swift_storeEnumTagMultiPayload();
        sub_24E7450D8();
        sub_24E701970();
        sub_24F924E28();
        sub_24E745598(&v237);
        sub_24E601704(v158, &qword_27F21AFB0);
        sub_24E601704(v156, &qword_27F21AF78);
        v65 = v235;
        v159 = v234;
        v99 = v217;
        goto LABEL_102;
      }

      goto LABEL_60;
    }

    if (v221 <= 1u)
    {
      v131 = v219;
      if (v221)
      {
        v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
        v132 = v194;
        (*(*(v160 - 8) + 56))(v194, 2, 5, v160);
      }

      else
      {
        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
        v132 = v194;
        (*(*(v140 - 8) + 56))(v194, 1, 5, v140);
      }

      goto LABEL_100;
    }

    if (v221 - 2 < 2)
    {
      if (v77)
      {
        v130 = 5;
        v131 = v219;
        v132 = v194;
        v133 = v179;
LABEL_96:
        v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
        (*(*(v163 - 8) + 56))(v133, v130, 5, v163);
        sub_24E746F20(v133, v132, type metadata accessor for CardContentBackgroundStyle);
LABEL_100:
        v168 = v199;
        sub_24E746F20(v132, v199, type metadata accessor for CardContentBackgroundStyle);
        sub_24E745628(v168, v214, type metadata accessor for CardContentBackgroundStyle);
        swift_storeEnumTagMultiPayload();
        sub_24E745300(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
        sub_24E745348();
        v169 = v216;
        sub_24F924E28();
        sub_24E60169C(v169, v131, &qword_27F21AF88);
        swift_storeEnumTagMultiPayload();
        sub_24E745190();
        sub_24E7454E4(&qword_27F21AFE8, &qword_27F21AF88, &unk_24F94FF38, sub_24E745348);
        v170 = v223;
        sub_24F924E28();
        sub_24E601704(v169, &qword_27F21AF88);
        sub_24E60169C(v170, v175, &qword_27F21AFB0);
        swift_storeEnumTagMultiPayload();
        sub_24E7450D8();
        sub_24E701970();
        sub_24F924E28();
        sub_24E745598(&v237);
        sub_24E601704(v170, &qword_27F21AFB0);
        sub_24E7455C8(v168, type metadata accessor for CardContentBackgroundStyle);
        v99 = v217;
        goto LABEL_101;
      }

      v133 = v179;
      if (v221 == 3)
      {

        v131 = v219;
      }

      else
      {
        v162 = sub_24F92CE08();

        v131 = v219;
        if ((v162 & 1) == 0)
        {
          goto LABEL_94;
        }
      }

      if (*(*(v230 + *(v171 + 36)) + 16) == 1)
      {
        v130 = 3;
LABEL_95:
        v132 = v194;
        goto LABEL_96;
      }

LABEL_94:
      v130 = 1;
      goto LABEL_95;
    }

    if (v221 != 4)
    {
      v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
      v132 = v194;
      (*(*(v161 - 8) + 56))(v194, 1, 5, v161);
LABEL_99:
      v131 = v219;
      goto LABEL_100;
    }

    if (v77)
    {
      v141 = v177;
      sub_24E60169C(v233, v177, &qword_27F2190D8);
      v142 = v191;
      v143 = v192;
      if ((*(v191 + 48))(v141, 1, v192) != 1)
      {
        v164 = v176;
        sub_24E746F20(v141, v176, type metadata accessor for ColorGroup);
        v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
        v166 = *(v165 + 48);
        v167 = v164;
        v145 = v178;
        sub_24E746F20(v167, v178, type metadata accessor for ColorGroup);
        (*(v142 + 56))(v145, 0, 1, v143);
        *(v145 + v166) = 1;
        (*(*(v165 - 8) + 56))(v145, 0, 5, v165);
        goto LABEL_98;
      }

      sub_24E601704(v141, &qword_27F2190D8);
    }

    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
    v145 = v178;
    (*(*(v144 - 8) + 56))(v178, 4, 5, v144);
LABEL_98:
    v132 = v194;
    sub_24E746F20(v145, v194, type metadata accessor for CardContentBackgroundStyle);
    goto LABEL_99;
  }

  v66 = *(v232 + 56);
  v67 = v235;

  return v66(v67, 1, 1, v41);
}

uint64_t sub_24E73EE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v85 = &v76 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v76 - v6;
  v88 = type metadata accessor for GSKVideo();
  v8 = *(v88 - 8);
  v9 = MEMORY[0x28223BE20](v88);
  v84 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v78 = &v76 - v11;
  v12 = sub_24F9289E8();
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v79 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v82 = &v76 - v16;
  MEMORY[0x28223BE20](v15);
  v77 = &v76 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  MEMORY[0x28223BE20](v18 - 8);
  v81 = &v76 - v19;
  v20 = type metadata accessor for MixedMediaItem.ContentType();
  v80 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v76 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v76 - v27;
  v29 = type metadata accessor for MediaCard();
  v30 = *(v29 + 32);
  v83 = a1;
  v31 = a1 + v30;
  v32 = type metadata accessor for CommonCardAttributes(0);
  v33 = (v31 + v32[9]);
  if (*v33)
  {
    v34 = v33[1];
    if (*(v34 + 16))
    {
      v35 = sub_24E76DCB8(0);
      if (v36)
      {
        sub_24E745628(*(v34 + 56) + *(v80 + 72) * v35, v26, type metadata accessor for MixedMediaItem.ContentType);
        sub_24E746F20(v26, v28, type metadata accessor for MixedMediaItem.ContentType);
        sub_24E745628(v28, v23, type metadata accessor for MixedMediaItem.ContentType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v37 = v78;
          sub_24E746F20(v23, v78, type metadata accessor for GSKVideo);
          v38 = sub_24F9289A8();
          v39 = v81;
          if (v38)
          {
            v40 = qword_27F20FEE0;
            v41 = v38;
            if (v40 != -1)
            {
              v74 = v41;
              swift_once();
              v41 = v74;
            }

            v42 = v41;
            v43 = sub_24F926BD8();
            ColorGrouping.colorGroup(for:)(v43);

            sub_24E7455C8(v37, type metadata accessor for GSKVideo);
LABEL_29:
            sub_24E7455C8(v28, type metadata accessor for MixedMediaItem.ContentType);
            return sub_24E6009C8(v39, v89, &qword_27F2190D8);
          }

          sub_24E7455C8(v37, type metadata accessor for GSKVideo);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F219128);

          v64 = v86;
          v63 = v87;
          v65 = v77;
          (*(v86 + 32))(v77, v23, v87);
          v66 = sub_24F9289A8();
          v39 = v81;
          if (v66)
          {
            v67 = qword_27F20FEE0;
            v68 = v66;
            if (v67 != -1)
            {
              v75 = v68;
              swift_once();
              v68 = v75;
            }

            v69 = v68;
            v70 = sub_24F926BD8();
            ColorGrouping.colorGroup(for:)(v70);

            (*(v64 + 8))(v65, v63);
            goto LABEL_29;
          }

          (*(v64 + 8))(v65, v63);
        }

        sub_24E7455C8(v28, type metadata accessor for MixedMediaItem.ContentType);
        v71 = type metadata accessor for ColorGroup();
        (*(*(v71 - 8) + 56))(v39, 1, 1, v71);
        return sub_24E6009C8(v39, v89, &qword_27F2190D8);
      }
    }
  }

  sub_24E60169C(v31 + v32[8], v7, &qword_27F213FB8);
  if ((*(v8 + 48))(v7, 1, v88) == 1)
  {
    sub_24E601704(v7, &qword_27F213FB8);
    v44 = v31 + v32[7];
    v45 = v85;
    sub_24E60169C(v44, v85, &qword_27F213FB0);
    v47 = v86;
    v46 = v87;
    if ((*(v86 + 48))(v45, 1, v87) == 1)
    {
      sub_24E601704(v45, &qword_27F213FB0);
      v48 = *(v83 + *(v29 + 36));
      if (!*(v48 + 16))
      {
        goto LABEL_24;
      }

      v49 = v79;
      (*(v47 + 16))(v79, v48 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v46);
    }

    else
    {
      v49 = v82;
      (*(v47 + 32))(v82, v45, v46);
    }

    v57 = sub_24F9289A8();
    if (v57)
    {
      v58 = qword_27F20FEE0;
      v59 = v57;
      if (v58 != -1)
      {
        v73 = v59;
        swift_once();
        v59 = v73;
      }

      v60 = v59;
      v61 = sub_24F926BD8();
      ColorGrouping.colorGroup(for:)(v61);

      return (*(v47 + 8))(v49, v46);
    }

    (*(v47 + 8))(v49, v46);
LABEL_24:
    v62 = type metadata accessor for ColorGroup();
    return (*(*(v62 - 8) + 56))(v89, 1, 1, v62);
  }

  v50 = v84;
  sub_24E746F20(v7, v84, type metadata accessor for GSKVideo);
  v51 = sub_24F9289A8();
  if (!v51)
  {
    sub_24E7455C8(v50, type metadata accessor for GSKVideo);
    goto LABEL_24;
  }

  v52 = qword_27F20FEE0;
  v53 = v51;
  if (v52 != -1)
  {
    v72 = v53;
    swift_once();
    v53 = v72;
  }

  v54 = v53;
  v55 = sub_24F926BD8();
  ColorGrouping.colorGroup(for:)(v55);

  return sub_24E7455C8(v50, type metadata accessor for GSKVideo);
}

__n128 sub_24E73F84C@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_24F926E08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_24F921C08())
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v6 = sub_24F926E88();
    (*(v3 + 8))(v5, v2);
    v7 = sub_24F925818();
    sub_24F923318();
    v15[0] = 0;
    v16[0] = v6;
    v16[1] = 0;
    v17.n128_u16[0] = 1;
    *(v17.n128_u32 + 2) = v22[0];
    v17.n128_u16[3] = WORD2(v22[0]);
    v17.n128_u8[8] = v7;
    *(&v17.n128_u32[2] + 1) = v24;
    v17.n128_u32[3] = *(&v24 + 3);
    *&v18 = v8;
    *(&v18 + 1) = v9;
    *&v19 = v10;
    *(&v19 + 1) = v11;
    v20 = 0;
    v26 = v18;
    v27 = v19;
    v28 = 0;
    v24 = v6;
    v25 = v17;
    v21 = 0;
    sub_24E60169C(v16, v22, &qword_27F21B1B0);
    sub_24E60169C(v16, v22, &qword_27F21B1B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B1B0);
    sub_24E746E8C();
    sub_24F924E28();

    sub_24E601704(v16, &qword_27F21B1B0);
    sub_24E601704(v16, &qword_27F21B1B0);
    v26 = v22[2];
    v27 = v22[3];
    v28 = v23;
    v24 = v22[0];
    v25 = v22[1];
  }

  else
  {
    v12 = sub_24F926C98();
    LOBYTE(v16[0]) = 1;
    *&v22[0] = v12;
    HIBYTE(v23) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B1B0);
    sub_24E746E8C();
    sub_24F924E28();
  }

  v13 = v27;
  *(a1 + 32) = v26;
  *(a1 + 48) = v13;
  *(a1 + 64) = v28;
  result = v25;
  *a1 = v24;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24E73FB84@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = sub_24F924848();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GameIcon(0);
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760);
  MEMORY[0x28223BE20](v35);
  v11 = &v34 - v10;
  v12 = sub_24F9289E8();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v9, v1, v12);
  (*(v13 + 56))(v9, 0, 1, v12);
  v14 = v7[10];
  *&v9[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  swift_storeEnumTagMultiPayload();
  v9[v7[7]] = 1;
  v9[v7[8]] = 1;
  v9[v7[9]] = 0;
  v34 = type metadata accessor for MediaCardConfiguration.IconView(0);
  v15 = *(v34 + 24);
  v36 = v1;
  v16 = v1 + v15;
  v17 = *v16;
  v18 = *(v16 + 8);
  if (v18 == 1)
  {
    v19 = v3;
    v20 = v2;
  }

  else
  {

    sub_24F92BDC8();
    v21 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v17, 0);
    v19 = v3;
    v20 = v2;
    (*(v3 + 8))(v5, v2);
  }

  if (!v18)
  {

    sub_24F92BDC8();
    v22 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v17, 0);
    (*(v19 + 8))(v5, v20);
  }

  sub_24F927618();
  sub_24F9238C8();
  sub_24E746F20(v9, v11, type metadata accessor for GameIcon);
  v23 = v36;
  v24 = &v11[*(v35 + 36)];
  v25 = v39;
  *v24 = v38;
  *(v24 + 1) = v25;
  *(v24 + 2) = v40;
  v26 = *(v23 + *(v34 + 20));
  sub_24F9278A8();
  v28 = v27;
  v30 = v29;
  v31 = v37;
  sub_24E6009C8(v11, v37, &qword_27F216760);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B1C0);
  v33 = (v31 + *(result + 36));
  *v33 = v26;
  v33[1] = v28;
  v33[2] = v30;
  return result;
}

uint64_t sub_24E73FFEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B1C8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30[-v8];
  v10 = v1[5];
  v31[4] = v1[4];
  v31[5] = v10;
  *v32 = v1[6];
  *&v32[9] = *(v1 + 105);
  v11 = v1[1];
  v31[0] = *v1;
  v12 = v1[2];
  v13 = v1[3];
  v31[1] = v11;
  v31[2] = v12;
  v31[3] = v13;
  *v9 = sub_24F9275F8();
  v9[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B1D0);
  sub_24E740418(v31);
  v15 = sub_24F925828();
  if (v32[9] > 4u)
  {
  }

  else
  {
    v16 = sub_24F92CE08();

    if ((v16 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v34 = v32[24];
  v33 = *&v32[16];
  if (v32[24] != 1)
  {

    sub_24F92BDC8();
    v17 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v33, &qword_27F21B1E0);
    v18 = *(v4 + 8);
    v18(v6, v3);
    if (v30[15] != 3)
    {

      sub_24F92BDC8();
      v19 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E601704(&v33, &qword_27F21B1E0);
      v18(v6, v3);
    }
  }

LABEL_8:
  sub_24F923318();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_24E6009C8(v9, a1, &qword_27F21B1C8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B1D8);
  v29 = a1 + *(result + 36);
  *v29 = v15;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23;
  *(v29 + 24) = v25;
  *(v29 + 32) = v27;
  *(v29 + 40) = 0;
  return result;
}

uint64_t sub_24E740418(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219530);
  MEMORY[0x28223BE20](v2);
  v3 = sub_24E6B7C74(*(a1 + 8), *a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if ((v8 & 1) == 0)
  {

LABEL_3:
    sub_24E6B88C8(v3, v5, v7, v9);
    v11 = v10;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  sub_24F92CEF8();
  swift_unknownObjectRetain_n();

  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v9 >> 1, v7))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v13 != (v9 >> 1) - v7)
  {
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v11 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v11)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

LABEL_11:
  v20[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219538);
  sub_24E602068(&qword_27F219540, &qword_27F219538);
  sub_24F921BA8();
  swift_getKeyPath();
  v14 = swift_allocObject();
  v15 = *(a1 + 80);
  v14[5] = *(a1 + 64);
  v14[6] = v15;
  v14[7] = *(a1 + 96);
  *(v14 + 121) = *(a1 + 105);
  v16 = *(a1 + 16);
  v14[1] = *a1;
  v14[2] = v16;
  v17 = *(a1 + 48);
  v14[3] = *(a1 + 32);
  v14[4] = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_24E746FF4;
  *(v18 + 24) = v14;
  sub_24E747034(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B1E8);
  sub_24E602068(&qword_27F219550, &qword_27F219530);
  sub_24E74706C(&qword_27F21B1F0, &qword_27F21B1E8, &unk_24F950588, sub_24E7046B0);
  return sub_24F927228();
}

uint64_t sub_24E740738@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v110 = a3;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B1F8);
  MEMORY[0x28223BE20](v107);
  v109 = &v106 - v5;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219548);
  MEMORY[0x28223BE20](v108);
  v7 = &v106 - v6;
  v8 = sub_24F924848();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 105) == 5)
  {
    BYTE8(v130) = *(a2 + 120);
    v13 = a2[14];
    *&v130 = v13;
    if (BYTE8(v130) != 1)
    {
      v14 = v10;

      sub_24F92BDC8();
      v15 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E601704(&v130, &qword_27F21B1E0);
      (*(v9 + 8))(v12, v14);
      LOBYTE(v13) = v120;
    }

    v16 = &v120;
    if (v13 > 1u)
    {
      if (v13 != 2)
      {
        if (qword_27F20FE80 != -1)
        {
          swift_once();
        }

        for (i = &xmmword_27F39AB68; ; i = &xmmword_27F39AA98)
        {
LABEL_32:
          v125 = *(i + 96);
          v57 = i[5];
          v123 = i[4];
          v124 = v57;
          v58 = i[3];
          *v122 = i[2];
          *&v122[16] = v58;
          v59 = i[1];
          v120 = *i;
          v121 = v59;
          v60 = v125;
          v61 = *(&v124 + 1);
          v106 = *(v16 + 72);
          v62 = *v122;
          v63 = v58;
          v111 = *(v16 + 56);
          v64 = v59;
          v65 = *(&v120 + 1);
          v66 = v120;
          sub_24E7450A0(&v120, &v116);
          v120 = __PAIR128__(v65, v66);
          v121 = v64;
          *v122 = v62;
          *&v122[16] = v63;
          v67 = *(&v111 + 1);
          *(v16 + 56) = v111;
          v68 = v106;
          *(v16 + 72) = v106;
          *(&v124 + 1) = v61;
          v125 = v60;
          v69 = v67;
          if (*(v67 + 16))
          {
            v70 = sub_24E7728CC(a1);
            if (v71)
            {
              v16 = *(*(v69 + 56) + 8 * v70);
            }

            else
            {
              v16 = 0;
            }

            v68 = v106;
          }

          else
          {
            v16 = 0;
          }

          v72 = *(&v68 + 1);
          v73 = 0;
          v74 = 0;
          if (*(*(&v68 + 1) + 16))
          {
            v106 = v68;
            v75 = sub_24E7728CC(a1);
            *&v68 = v106;
            if (v76)
            {
              v74 = *(*(v72 + 56) + 8 * v75);
            }
          }

          v77 = v68;
          if (*(v68 + 16))
          {
            v78 = sub_24E7728CC(a1);
            v79 = 0;
            if (v80)
            {
              v81 = (*(v77 + 56) + 16 * v78);
              v73 = *v81;
              v79 = v81[1];
            }
          }

          else
          {
            v79 = 0;
          }

          v82 = 0;
          if (*(v61 + 16))
          {
            v83 = sub_24E7728CC(a1);
            if (v84)
            {
              v82 = *(*(v61 + 56) + 8 * v83);
            }
          }

          if ((a1 & 0x8000000000000000) != 0)
          {
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
          }

          else
          {
            v85 = *a2;
            if (*(*a2 + 16) > a1)
            {
              v86 = sub_24F9289E8();
              v87 = *(v86 - 8);
              (*(v87 + 16))(v7, v85 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * a1, v86);
              (*(v87 + 56))(v7, 0, 1, v86);
              v88 = type metadata accessor for GameIcon(0);
              v89 = v88[8];
              *&v7[v89] = swift_getKeyPath();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
              swift_storeEnumTagMultiPayload();
              v7[v88[5]] = 1;
              v7[v88[6]] = 1;
              v7[v88[7]] = 0;
              v90 = sub_24F927618();
              v92 = v91;
              LOBYTE(v126) = 1;
              *(&v126 + 1) = 0;
              *&v127 = 0;
              *(&v127 + 1) = v111;
              *v128 = v63;
              *&v128[8] = v62;
              *&v128[24] = v90;
              v129 = v91;
              v93 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219598) + 36)];
              v94 = v127;
              v95 = *&v128[16];
              *(v93 + 2) = *v128;
              *(v93 + 3) = v95;
              *(v93 + 8) = v129;
              *v93 = v126;
              *(v93 + 1) = v94;
              LOBYTE(v116) = 1;
              *(&v116 + 1) = 0;
              *&v117 = 0;
              *(&v117 + 1) = v111;
              *v118 = v63;
              *&v118[8] = v62;
              *&v118[24] = v90;
              v119 = v92;

              sub_24E60169C(&v126, &v112, &qword_27F2195A8);
              sub_24E601704(&v116, &qword_27F2195A8);
              sub_24F927618();
              sub_24F9238C8();
              v96 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219588) + 36)];
              v97 = v113;
              *v96 = v112;
              *(v96 + 1) = v97;
              *(v96 + 2) = v114;
              *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219578) + 36)] = v82;
              sub_24F9278A8();
              v99 = v98;
              v101 = v100;
              v102 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219568) + 36)];
              *v102 = v74;
              *(v102 + 1) = v99;
              *(v102 + 2) = v101;
              v103 = v109;
              v104 = &v7[*(v108 + 36)];
              *v104 = v73;
              *(v104 + 1) = v79;
              sub_24E60169C(v7, v103, &qword_27F219548);
              swift_storeEnumTagMultiPayload();
              sub_24E7046B0();
              sub_24F924E28();
              sub_24E745598(&v120);
              return sub_24E601704(v7, &qword_27F219548);
            }
          }

          __break(1u);
LABEL_56:
          swift_once();
LABEL_21:
          ;
        }
      }
    }

    else if (v13)
    {
      if (qword_27F20FE78 != -1)
      {
        swift_once();
      }

      i = &xmmword_27F39AB00;
      goto LABEL_32;
    }

    if (qword_27F20FE70 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_21;
  }

  v18 = *(a2 + 3);
  v112 = *(a2 + 1);
  v113 = v18;
  v19 = *(a2 + 7);
  v114 = *(a2 + 5);
  v115 = v19;
  v20 = a2[10];
  v21 = a2[11];
  v22 = a2[12];
  v16 = 1;
  if (*(a2[9] + 16))
  {
    sub_24E7728CC(a1);
    if (v23)
    {
      v16 = 0;
    }
  }

  v24 = 0;
  v25 = 0;
  if (*(v21 + 16))
  {
    v26 = sub_24E7728CC(a1);
    if (v27)
    {
      v25 = *(*(v21 + 56) + 8 * v26);
    }
  }

  if (*(v20 + 16))
  {
    v28 = sub_24E7728CC(a1);
    v29 = 0;
    if (v30)
    {
      v31 = (*(v20 + 56) + 16 * v28);
      v24 = *v31;
      v29 = v31[1];
    }
  }

  else
  {
    v29 = 0;
  }

  v32 = 0;
  if (*(v22 + 16))
  {
    v33 = sub_24E7728CC(a1);
    if (v34)
    {
      v32 = *(*(v22 + 56) + 8 * v33);
    }
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_53;
  }

  v35 = *a2;
  if (*(*a2 + 16) <= a1)
  {
    goto LABEL_54;
  }

  v36 = sub_24F9289E8();
  v37 = *(v36 - 8);
  (*(v37 + 16))(v7, v35 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * a1, v36);
  (*(v37 + 56))(v7, 0, 1, v36);
  v38 = type metadata accessor for GameIcon(0);
  v39 = v38[8];
  *&v7[v39] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  swift_storeEnumTagMultiPayload();
  v7[v38[5]] = 1;
  v7[v38[6]] = 1;
  v7[v38[7]] = 0;
  v130 = v114;
  v131 = v115;
  v40 = sub_24F927618();
  v42 = v41;
  v43 = v130;
  v44 = v131;
  LOBYTE(v116) = 1;
  *(&v116 + 1) = 0;
  *&v117 = 0;
  *(&v117 + 1) = *(&v131 + 1);
  *v118 = v131;
  *&v118[8] = v130;
  *&v118[24] = v40;
  v119 = v41;
  v45 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219598) + 36)];
  v46 = *&v118[16];
  *(v45 + 2) = *v118;
  *(v45 + 3) = v46;
  *(v45 + 8) = v119;
  v47 = v117;
  *v45 = v116;
  *(v45 + 1) = v47;
  LOBYTE(v120) = 1;
  *(&v120 + 1) = 0;
  *&v121 = 0;
  *(&v121 + 1) = *(&v44 + 1);
  *v122 = v44;
  *&v122[8] = v43;
  *&v122[24] = v40;
  *&v123 = v42;
  sub_24E7049FC(&v130, &v126);
  sub_24E60169C(&v116, &v126, &qword_27F2195A8);
  sub_24E601704(&v120, &qword_27F2195A8);
  sub_24F927618();
  sub_24F9238C8();
  v48 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219588) + 36)];
  v49 = v127;
  *v48 = v126;
  *(v48 + 1) = v49;
  *(v48 + 2) = *v128;
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219578) + 36)] = v32;
  sub_24F9278A8();
  v51 = v50;
  v53 = v52;
  v54 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219568) + 36)];
  *v54 = v25;
  *(v54 + 1) = v51;
  *(v54 + 2) = v53;
  v55 = v109;
  v56 = &v7[*(v108 + 36)];
  *v56 = v24;
  *(v56 + 1) = v29;
  sub_24E60169C(v7, v55, &qword_27F219548);
  swift_storeEnumTagMultiPayload();
  sub_24E7046B0();
  sub_24F924E28();
  return sub_24E601704(v7, &qword_27F219548);
}

uint64_t sub_24E741270@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v436 = a1;
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B030);
  MEMORY[0x28223BE20](v384);
  v385 = (&v357 - v3);
  v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B038);
  MEMORY[0x28223BE20](v391);
  v386 = &v357 - v4;
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B040);
  MEMORY[0x28223BE20](v396);
  v395 = (&v357 - v5);
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B048);
  MEMORY[0x28223BE20](v389);
  v390 = &v357 - v6;
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B050);
  MEMORY[0x28223BE20](v394);
  v392 = &v357 - v7;
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B058);
  MEMORY[0x28223BE20](v372);
  v374 = &v357 - v8;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B060);
  MEMORY[0x28223BE20](v373);
  v375 = &v357 - v9;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B068);
  MEMORY[0x28223BE20](v383);
  v376 = &v357 - v10;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B070);
  MEMORY[0x28223BE20](v380);
  v382 = &v357 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B078);
  v369 = *(v12 - 8);
  v370 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v363 = &v357 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v360 = &v357 - v15;
  v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B080);
  v16 = MEMORY[0x28223BE20](v368);
  v364 = &v357 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v361 = &v357 - v18;
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B088);
  v19 = MEMORY[0x28223BE20](v387);
  v365 = &v357 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v362 = &v357 - v21;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218AC8);
  v22 = MEMORY[0x28223BE20](v367);
  v371 = &v357 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v366 = &v357 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B090);
  v378 = *(v25 - 8);
  v379 = v25;
  MEMORY[0x28223BE20](v25);
  v377 = &v357 - v26;
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B098);
  MEMORY[0x28223BE20](v388);
  v381 = &v357 - v27;
  v409 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0A0);
  MEMORY[0x28223BE20](v409);
  v397 = &v357 - v28;
  v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0A8);
  MEMORY[0x28223BE20](v407);
  v408 = &v357 - v29;
  v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0B0);
  MEMORY[0x28223BE20](v434);
  v410 = &v357 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  v401 = *(v31 - 8);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v402 = v33;
  v403 = &v357 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v400 = &v357 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2191F8);
  MEMORY[0x28223BE20](v35 - 8);
  v404 = &v357 - v36;
  v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219200);
  MEMORY[0x28223BE20](v406);
  v405 = &v357 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v38 - 8);
  v412 = &v357 - v39;
  v40 = sub_24F9289E8();
  v41 = *(v40 - 8);
  v42 = MEMORY[0x28223BE20](v40);
  v393 = &v357 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v398 = v46;
  v399 = &v357 - v45;
  MEMORY[0x28223BE20](v44);
  v416 = &v357 - v47;
  v411 = type metadata accessor for GSKVideoView(0);
  MEMORY[0x28223BE20](v411);
  v420 = &v357 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219218);
  MEMORY[0x28223BE20](v413);
  v414 = &v357 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219220);
  MEMORY[0x28223BE20](v50 - 8);
  v421 = &v357 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219228);
  MEMORY[0x28223BE20](v52);
  v415 = &v357 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v54 - 8);
  v419 = &v357 - v55;
  v56 = type metadata accessor for GSKVideo();
  v417 = *(v56 - 8);
  v418 = v56;
  MEMORY[0x28223BE20](v56);
  v422 = &v357 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0B8);
  MEMORY[0x28223BE20](v431);
  v433 = &v357 - v58;
  v428 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0C0);
  MEMORY[0x28223BE20](v428);
  v430 = &v357 - v59;
  v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0C8);
  MEMORY[0x28223BE20](v432);
  v427 = &v357 - v60;
  v423 = type metadata accessor for CardElementView.PrimaryMixedMediaView(0);
  MEMORY[0x28223BE20](v423);
  v437 = (&v357 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v424 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219230);
  MEMORY[0x28223BE20](v424);
  v425 = &v357 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219238);
  MEMORY[0x28223BE20](v63 - 8);
  v438 = (&v357 - v64);
  v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219240);
  MEMORY[0x28223BE20](v429);
  v426 = &v357 - v65;
  v66 = sub_24F924848();
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v69 = &v357 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v435 = type metadata accessor for MediaCardConfiguration.VisualView(0);
  v70 = v2 + v435[9];
  v71 = *v70;
  v72 = *(v70 + 8);

  if ((v72 & 1) == 0)
  {
    sub_24F92BDC8();
    v73 = sub_24F9257A8();
    v359 = v52;
    v74 = v41;
    v75 = v40;
    v76 = v73;
    sub_24F921FD8();

    v40 = v75;
    v41 = v74;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v67 + 8))(v69, v66);
    v71 = v455;
  }

  swift_getKeyPath();
  *&v455 = v71;
  sub_24E745300(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  v78 = v71[2];
  v77 = *(v71 + 3);
  v80 = *(v71 + 4);
  v79 = *(v71 + 5);

  v81 = type metadata accessor for MediaCard();
  v82 = v2 + v81[8];
  v83 = type metadata accessor for CommonCardAttributes(0);
  v84 = (v82 + *(v83 + 36));
  if (!*v84)
  {
    v93 = v83;
    v94 = v419;
    sub_24E60169C(v82 + *(v83 + 32), v419, &qword_27F213FB8);
    if ((*(v417 + 48))(v94, 1, v418) == 1)
    {
      sub_24E601704(v94, &qword_27F213FB8);
      v95 = v82 + *(v93 + 28);
      v96 = v412;
      sub_24E60169C(v95, v412, &qword_27F213FB0);
      if (v41[6](v96, 1, v40) == 1)
      {
        sub_24E601704(v96, &qword_27F213FB0);
        v97 = *(v2 + v81[9]);
        v98 = v436;
        if (!*(v97 + 16))
        {
          v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0D0);
          return (*(*(v145 - 8) + 56))(v98, 1, 1, v145);
        }

        v438 = v41;
        v99 = *(v2 + v435[5]);
        v358 = v40;
        if (v99 > 2)
        {
          v149 = v436;
          if (v99 != 3 && v99 != 4)
          {

            v98 = v149;
LABEL_65:
            if (*(v97 + 16) == 1)
            {
              v171 = v438[2];
              v171(v393, v97 + ((*(v438 + 80) + 32) & ~*(v438 + 80)), v358);
              v172 = [objc_opt_self() standardUserDefaults];
              v173 = sub_24F92B098();
              v174 = [v172 BOOLForKey_];

              if (v174 && (v175 = (v2 + v81[10]), v175[3]) && (v176 = v175[5]) != 0)
              {
                v177 = v175[4];

                sub_24F8188E0(v177, v176);

                sub_24F3E5448(MEMORY[0x277D84F90]);
                v178 = v366;
                sub_24F928948();
                sub_24F927618();
                sub_24F9238C8();
                v179 = &v178[*(v367 + 36)];
                v180 = v481;
                *v179 = v480;
                *(v179 + 1) = v180;
                *(v179 + 2) = v482;
                v181 = v2 + v435[6];
                v182 = *(v181 + 48);
                v183 = *(v181 + 80);
                v452 = *(v181 + 64);
                v453 = v183;
                v184 = *(v181 + 16);
                v185 = *(v181 + 48);
                v450 = *(v181 + 32);
                v451 = v185;
                v186 = *(v181 + 16);
                v448 = *v181;
                v449 = v186;
                v187 = *(v181 + 80);
                v443 = v452;
                v444 = v187;
                v439 = v448;
                v440 = v184;
                v454 = *(v181 + 96);
                LODWORD(v177) = v454;
                LOBYTE(v445) = *(v181 + 96);
                v441 = v450;
                v442 = v182;
                *(&v445 + 1) = v78;
                *&v446 = v77;
                *(&v446 + 1) = v80;
                v447 = v79;
                sub_24E7450A0(&v448, &v455);
                sub_24E6E94A4();
                sub_24E745E18();
                v188 = v360;
                sub_24F925ED8();
                v461 = v445;
                v462 = v446;
                v463 = v447;
                v457 = v441;
                v458 = v442;
                v459 = v443;
                v460 = v444;
                v455 = v439;
                v456 = v440;
                sub_24E7466BC(&v455);
                v189 = v397;
                if (v177 == 1)
                {
                  sub_24F925868();
                }

                else
                {
                  sub_24F925848();
                }

                v338 = sub_24EA91914(v78);
                v340 = v339;
                v342 = v341;
                v344 = v343;
                v345 = sub_24F925808();
                v346 = v361;
                (*(v369 + 32))(v361, v188, v370);
                v347 = v346 + *(v368 + 36);
                *v347 = v345;
                *(v347 + 8) = v338;
                *(v347 + 16) = v340;
                *(v347 + 24) = v342;
                *(v347 + 32) = v344;
                *(v347 + 40) = 0;
                sub_24F9242E8();
                v348 = v362;
                sub_24E6009C8(v346, v362, &qword_27F21B080);
                v349 = (v348 + *(v387 + 36));
                v350 = v444;
                v349[4] = v443;
                v349[5] = v350;
                v349[6] = v445;
                v351 = v440;
                *v349 = v439;
                v349[1] = v351;
                v352 = v442;
                v349[2] = v441;
                v349[3] = v352;
                sub_24E60169C(v348, v382, &qword_27F21B088);
                swift_storeEnumTagMultiPayload();
                sub_24E745CA8();
                sub_24E745E6C();
                v317 = v377;
                sub_24F924E28();
                sub_24E601704(v348, &qword_27F21B088);
                v319 = &qword_27F218AC8;
                v318 = v366;
              }

              else
              {
                v192 = v374;
                v171(v374, v393, v358);
                v193 = type metadata accessor for MediaCardConfiguration.IconView(0);
                *&v192[*(v193 + 20)] = 0xBFCACEE9F37BEBD6;
                v194 = &v192[*(v193 + 24)];
                *v194 = swift_getKeyPath();
                v194[8] = 0;
                LOBYTE(v194) = sub_24F925818();
                v195 = v2 + v435[6];
                sub_24F923318();
                v196 = &v192[*(v372 + 36)];
                *v196 = v194;
                *(v196 + 1) = v197;
                *(v196 + 2) = v198;
                *(v196 + 3) = v199;
                *(v196 + 4) = v200;
                v196[40] = 0;
                v189 = v397;
                if (*(v195 + 96) == 1)
                {
                  sub_24F925868();
                }

                else
                {
                  sub_24F925848();
                }

                v301 = sub_24EA91914(v78);
                v303 = v302;
                v305 = v304;
                v307 = v306;
                v308 = sub_24F925808();
                v309 = v192;
                v310 = v375;
                sub_24E6009C8(v309, v375, &qword_27F21B058);
                v311 = v310 + *(v373 + 36);
                *v311 = v308;
                *(v311 + 8) = v301;
                *(v311 + 16) = v303;
                *(v311 + 24) = v305;
                *(v311 + 32) = v307;
                *(v311 + 40) = 0;
                sub_24F9242E8();
                v312 = v376;
                sub_24E6009C8(v310, v376, &qword_27F21B060);
                v313 = (v312 + *(v383 + 36));
                v314 = v460;
                v313[4] = v459;
                v313[5] = v314;
                v313[6] = v461;
                v315 = v456;
                *v313 = v455;
                v313[1] = v315;
                v316 = v458;
                v313[2] = v457;
                v313[3] = v316;
                sub_24E60169C(v312, v382, &qword_27F21B068);
                swift_storeEnumTagMultiPayload();
                sub_24E745CA8();
                sub_24E745E6C();
                v317 = v377;
                sub_24F924E28();
                v318 = v312;
                v319 = &qword_27F21B068;
              }

              sub_24E601704(v318, v319);
              (v438[1])(v393, v358);
              v353 = v381;
              sub_24E6009C8(v317, v381, &qword_27F21B090);
              (*(v378 + 56))(v353, 0, 1, v379);
              sub_24E60169C(v353, v390, &qword_27F21B098);
              swift_storeEnumTagMultiPayload();
              sub_24E745B98();
              sub_24E746060();
              v354 = v392;
              sub_24F924E28();
              sub_24E60169C(v354, v395, &qword_27F21B050);
              swift_storeEnumTagMultiPayload();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0D8);
              sub_24E745B0C();
              sub_24E7460EC();
              sub_24F924E28();
              v355 = v354;
              v191 = v189;
              sub_24E601704(v355, &qword_27F21B050);
              v336 = v353;
              v337 = &qword_27F21B098;
              goto LABEL_113;
            }

LABEL_71:
            if (v99 > 2)
            {
              v190 = v2;
              if (v99 == 3)
              {
                v191 = v397;
              }

              else
              {
                v191 = v397;
                if (v99 != 4)
                {

LABEL_85:
                  v236 = [objc_opt_self() standardUserDefaults];
                  v237 = sub_24F92B098();
                  v238 = [v236 BOOLForKey_];

                  if (v238 && (v239 = (v190 + v81[10]), v239[3]) && (v240 = v239[5]) != 0)
                  {
                    v241 = v239[4];

                    sub_24F8188E0(v241, v240);

                    sub_24F3E5448(MEMORY[0x277D84F90]);
                    v242 = v371;
                    sub_24F928948();
                    sub_24F927618();
                    sub_24F9238C8();
                    v243 = (v242 + *(v367 + 36));
                    v244 = v481;
                    *v243 = v480;
                    v243[1] = v244;
                    v243[2] = v482;
                    v245 = v190 + v435[6];
                    v246 = *(v245 + 48);
                    v247 = *(v245 + 80);
                    v452 = *(v245 + 64);
                    v453 = v247;
                    v248 = *(v245 + 16);
                    v249 = *(v245 + 48);
                    v450 = *(v245 + 32);
                    v451 = v249;
                    v250 = *(v245 + 16);
                    v448 = *v245;
                    v449 = v250;
                    v251 = *(v245 + 80);
                    v443 = v452;
                    v444 = v251;
                    v439 = v448;
                    v440 = v248;
                    v454 = *(v245 + 96);
                    LODWORD(v241) = v454;
                    LOBYTE(v445) = *(v245 + 96);
                    v441 = v450;
                    v442 = v246;
                    *(&v445 + 1) = v78;
                    *&v446 = v77;
                    *(&v446 + 1) = v80;
                    v447 = v79;
                    sub_24E7450A0(&v448, &v455);
                    sub_24E6E94A4();
                    sub_24E745E18();
                    v252 = v363;
                    sub_24F925ED8();
                    v461 = v445;
                    v462 = v446;
                    v463 = v447;
                    v457 = v441;
                    v458 = v442;
                    v459 = v443;
                    v460 = v444;
                    v455 = v439;
                    v456 = v440;
                    sub_24E7466BC(&v455);
                    if (v241 == 1)
                    {
                      sub_24F925868();
                    }

                    else
                    {
                      sub_24F925848();
                    }

                    v320 = sub_24EA91914(v78);
                    v322 = v321;
                    v324 = v323;
                    v326 = v325;
                    v327 = sub_24F925808();
                    v328 = v364;
                    (*(v369 + 32))(v364, v252, v370);
                    v329 = v328 + *(v368 + 36);
                    *v329 = v327;
                    *(v329 + 8) = v320;
                    *(v329 + 16) = v322;
                    *(v329 + 24) = v324;
                    *(v329 + 32) = v326;
                    *(v329 + 40) = 0;
                    sub_24F9242E8();
                    v330 = v365;
                    sub_24E6009C8(v328, v365, &qword_27F21B080);
                    v331 = (v330 + *(v387 + 36));
                    v332 = v444;
                    v331[4] = v443;
                    v331[5] = v332;
                    v331[6] = v445;
                    v333 = v440;
                    *v331 = v439;
                    v331[1] = v333;
                    v334 = v442;
                    v331[2] = v441;
                    v331[3] = v334;
                    sub_24E60169C(v330, v385, &qword_27F21B088);
                    swift_storeEnumTagMultiPayload();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0D8);
                    sub_24E745CA8();
                    sub_24E7460EC();
                    v287 = v386;
                    sub_24F924E28();
                    sub_24E601704(v330, &qword_27F21B088);
                    sub_24E601704(v371, &qword_27F218AC8);
                  }

                  else
                  {
                    v253 = v190 + v435[6];
                    LOBYTE(v445) = *(v253 + 96);
                    v254 = *(v253 + 80);
                    v443 = *(v253 + 64);
                    v444 = v254;
                    v255 = *(v253 + 16);
                    v439 = *v253;
                    v440 = v255;
                    v256 = *(v253 + 48);
                    v441 = *(v253 + 32);
                    v442 = v256;
                    v257 = v445;
                    v466 = v255;
                    v465 = v439;
                    v471 = v445;
                    v470 = v254;
                    v469 = v443;
                    v467 = v441;
                    v468 = v256;
                    KeyPath = swift_getKeyPath();
                    LOBYTE(v448) = 0;

                    sub_24E7450A0(&v439, &v455);
                    v259 = sub_24F925818();
                    sub_24F923318();
                    v261 = v260;
                    v263 = v262;
                    v265 = v264;
                    v267 = v266;
                    LOBYTE(v480) = 0;
                    if (v257 == 1)
                    {
                      sub_24F925868();
                    }

                    else
                    {
                      sub_24F925848();
                    }

                    v268 = sub_24EA91914(v78);
                    v270 = v269;
                    v272 = v271;
                    v274 = v273;
                    v275 = sub_24F925808();
                    LOBYTE(v448) = 0;
                    sub_24F9242E8();
                    *&v464[55] = v458;
                    *&v464[71] = v459;
                    *&v464[87] = v460;
                    *&v464[103] = v461;
                    *&v464[7] = v455;
                    *&v464[23] = v456;
                    *&v464[39] = v457;
                    v276 = v385;
                    *v385 = v97;
                    v277 = v468;
                    *(v276 + 5) = v467;
                    v278 = v465;
                    *(v276 + 3) = v466;
                    *(v276 + 1) = v278;
                    v279 = v469;
                    v280 = v470;
                    *(v276 + 104) = v471;
                    *(v276 + 11) = v280;
                    *(v276 + 9) = v279;
                    *(v276 + 7) = v277;
                    *(v276 + 105) = v99;
                    v276[14] = KeyPath;
                    *(v276 + 120) = 0;
                    *(v276 + 128) = v259;
                    v276[17] = v261;
                    v276[18] = v263;
                    v276[19] = v265;
                    v276[20] = v267;
                    *(v276 + 168) = 0;
                    *(v276 + 176) = v275;
                    *(v276 + 23) = v268;
                    v276[24] = v270;
                    v276[25] = v272;
                    v276[26] = v274;
                    *(v276 + 216) = 0;
                    v281 = *v464;
                    v282 = *&v464[16];
                    v283 = *&v464[48];
                    *(v276 + 249) = *&v464[32];
                    *(v276 + 233) = v282;
                    *(v276 + 217) = v281;
                    v284 = *&v464[64];
                    v285 = *&v464[80];
                    v286 = *&v464[96];
                    v276[41] = *&v464[111];
                    *(v276 + 297) = v285;
                    *(v276 + 313) = v286;
                    *(v276 + 265) = v283;
                    *(v276 + 281) = v284;
                    swift_storeEnumTagMultiPayload();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0D8);
                    sub_24E745CA8();
                    sub_24E7460EC();
                    v287 = v386;
                    sub_24F924E28();
                  }

                  sub_24E60169C(v287, v390, &qword_27F21B038);
                  swift_storeEnumTagMultiPayload();
                  sub_24E745B98();
                  sub_24E746060();
                  v335 = v392;
                  sub_24F924E28();
                  sub_24E60169C(v335, v395, &qword_27F21B050);
                  swift_storeEnumTagMultiPayload();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0D8);
                  sub_24E745B0C();
                  sub_24E7460EC();
                  v191 = v397;
                  sub_24F924E28();
                  sub_24E601704(v335, &qword_27F21B050);
                  v336 = v287;
                  v337 = &qword_27F21B038;
LABEL_113:
                  sub_24E601704(v336, v337);
                  v98 = v436;
LABEL_114:
                  sub_24E60169C(v191, v408, &qword_27F21B0A0);
                  swift_storeEnumTagMultiPayload();
                  sub_24E703044();
                  sub_24E7463A0();
                  v356 = v410;
                  sub_24F924E28();
                  sub_24E60169C(v356, v433, &qword_27F21B0B0);
                  swift_storeEnumTagMultiPayload();
                  sub_24E74642C();
                  sub_24E746630();
                  sub_24F924E28();
                  sub_24E601704(v356, &qword_27F21B0B0);
                  sub_24E601704(v191, &qword_27F21B0A0);
                  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0D0);
                  v168 = *(*(v167 - 8) + 56);
                  v169 = v98;
                  return v168(v169, 0, 1, v167);
                }
              }
            }

            else
            {
              v190 = v2;
              v191 = v397;
            }

            v201 = sub_24F92CE08();

            if ((v201 & 1) == 0)
            {
              v202 = v190 + v435[6];
              LOBYTE(v445) = *(v202 + 96);
              v203 = *(v202 + 80);
              v443 = *(v202 + 64);
              v444 = v203;
              v204 = *(v202 + 16);
              v439 = *v202;
              v440 = v204;
              v205 = *(v202 + 48);
              v441 = *(v202 + 32);
              v442 = v205;
              v206 = v445;
              v474 = v204;
              v473 = v439;
              v479 = v445;
              v478 = v203;
              v477 = v443;
              v475 = v441;
              v476 = v205;
              v207 = swift_getKeyPath();
              LOBYTE(v448) = 0;

              sub_24E7450A0(&v439, &v455);
              v208 = sub_24F925818();
              sub_24F923318();
              v210 = v209;
              v212 = v211;
              v214 = v213;
              v216 = v215;
              LOBYTE(v480) = 0;
              if (v206 == 1)
              {
                sub_24F925868();
              }

              else
              {
                sub_24F925848();
              }

              v217 = sub_24EA91914(v78);
              v219 = v218;
              v221 = v220;
              v223 = v222;
              v224 = sub_24F925808();
              LOBYTE(v448) = 0;
              sub_24F9242E8();
              *&v472[55] = v458;
              *&v472[71] = v459;
              *&v472[87] = v460;
              *&v472[103] = v461;
              *&v472[7] = v455;
              *&v472[23] = v456;
              *&v472[39] = v457;
              v225 = v395;
              *v395 = v97;
              v226 = v476;
              *(v225 + 5) = v475;
              v227 = v473;
              *(v225 + 3) = v474;
              *(v225 + 1) = v227;
              v228 = v477;
              v229 = v478;
              *(v225 + 104) = v479;
              *(v225 + 11) = v229;
              *(v225 + 9) = v228;
              *(v225 + 7) = v226;
              *(v225 + 105) = v99;
              v225[14] = v207;
              *(v225 + 120) = 0;
              *(v225 + 128) = v208;
              v225[17] = v210;
              v225[18] = v212;
              v225[19] = v214;
              v225[20] = v216;
              *(v225 + 168) = 0;
              *(v225 + 176) = v224;
              *(v225 + 23) = v217;
              v225[24] = v219;
              v225[25] = v221;
              v225[26] = v223;
              *(v225 + 216) = 0;
              v230 = *v472;
              v231 = *&v472[16];
              v232 = *&v472[48];
              *(v225 + 249) = *&v472[32];
              *(v225 + 233) = v231;
              *(v225 + 217) = v230;
              v233 = *&v472[64];
              v234 = *&v472[80];
              v235 = *&v472[96];
              v225[41] = *&v472[111];
              *(v225 + 297) = v234;
              *(v225 + 313) = v235;
              *(v225 + 265) = v232;
              *(v225 + 281) = v233;
              swift_storeEnumTagMultiPayload();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0D8);
              sub_24E745B0C();
              sub_24E7460EC();
              sub_24F924E28();
              goto LABEL_114;
            }

            goto LABEL_85;
          }

          v98 = v436;
        }

        v170 = sub_24F92CE08();

        if ((v170 & 1) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_65;
      }

      v437 = v41[4];
      v113 = v416;
      v437(v416, v96, v40);
      v114 = sub_24F922348();
      v115 = v400;
      (*(*(v114 - 8) + 56))(v400, 1, 1, v114);
      v429 = *MEMORY[0x277CEE240];
      v116 = v40;
      v438 = v41;
      v117 = v399;
      v41[2](v399, v113, v40);
      v430 = v2;
      v118 = v115;
      v119 = v403;
      sub_24E6009C8(v118, v403, &qword_27F214148);
      v120 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v121 = (v398 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
      v122 = (*(v401 + 80) + v121 + 8) & ~*(v401 + 80);
      v123 = v122 + v402;
      v124 = swift_allocObject();
      v125 = v117;
      v126 = v429;
      v358 = v116;
      v437(v124 + v120, v125, v116);
      *(v124 + v121) = v126;
      sub_24E6009C8(v119, v124 + v122, &qword_27F214148);
      *(v124 + v123) = 1;
      v127 = *(v430 + v435[5]);
      if (v127 > 2)
      {
        v128 = v404;
        if (v127 == 3)
        {
          v150 = v126;

          v129 = v436;
          sub_24F925868();
          goto LABEL_98;
        }

        v129 = v436;
      }

      else
      {
        v128 = v404;
        v129 = v436;
      }

      v151 = sub_24F92CE08();
      v152 = v126;

      if ((v151 & 1) == 0)
      {
        if (v127 <= 2 || v127 == 4)
        {
          v288 = sub_24F92CE08();

          if ((v288 & 1) == 0)
          {
            sub_24F925818();
            goto LABEL_98;
          }
        }

        else
        {
        }

        sub_24F925808();
        goto LABEL_98;
      }

      sub_24F925868();
LABEL_98:
      v289 = sub_24EA91914(v78);
      v291 = v290;
      v293 = v292;
      v295 = v294;
      v296 = sub_24F925808();
      if (v127 > 4)
      {
        v297 = 1;
      }

      else
      {
        v297 = sub_24F92CE08();
      }

      LOBYTE(v448) = 0;
      *&v455 = sub_24E623C20;
      *(&v455 + 1) = v124;
      LOBYTE(v456) = v296;
      *(&v456 + 1) = v289;
      *&v457 = v291;
      *(&v457 + 1) = v293;
      *&v458 = v295;
      BYTE8(v458) = 0;
      sub_24E92463C(v297 & 1);

      if (v127 > 4)
      {
        v298 = 1;
      }

      else
      {
        v298 = sub_24F92CE08();
      }

      *(&v440 + 1) = sub_24F925048();
      *&v441 = MEMORY[0x277CE0420];
      __swift_allocate_boxed_opaque_existential_1(&v439);
      sub_24F925258();
      v299 = v405;
      sub_24E923E88(v298 & 1, &v439);
      sub_24E601704(v128, &qword_27F2191F8);
      __swift_destroy_boxed_opaque_existential_1(&v439);
      sub_24E60169C(v299, v408, &qword_27F219200);
      swift_storeEnumTagMultiPayload();
      sub_24E703044();
      sub_24E7463A0();
      v300 = v410;
      sub_24F924E28();
      sub_24E60169C(v300, v433, &qword_27F21B0B0);
      swift_storeEnumTagMultiPayload();
      sub_24E74642C();
      sub_24E746630();
      sub_24F924E28();
      sub_24E601704(v300, &qword_27F21B0B0);
      sub_24E601704(v299, &qword_27F219200);
      (v438[1])(v416, v358);
      v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0D0);
      v168 = *(*(v167 - 8) + 56);
      v169 = v129;
      return v168(v169, 0, 1, v167);
    }

    v100 = v422;
    sub_24E746F20(v94, v422, type metadata accessor for GSKVideo);
    v101 = v420;
    sub_24E745628(v100, v420, type metadata accessor for GSKVideo);
    v102 = v411;
    v103 = *(v411 + 20);
    v104 = type metadata accessor for VideoConfiguration();
    (*(*(v104 - 8) + 56))(v101 + v103, 1, 1, v104);
    v105 = sub_24F9238D8();
    v106 = (v101 + v102[12]);
    type metadata accessor for GSKVideoPlaybackCoordinator();
    sub_24E745300(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator);
    *v106 = sub_24F9243D8();
    v106[1] = v107;
    *(v101 + v102[9]) = 1;
    *(v101 + v102[10]) = v105;
    *(v101 + v102[11]) = 0;
    *(v101 + v102[6]) = 0x3FE8000000000000;
    *(v101 + v102[7]) = 0x3FE0000000000000;
    v108 = v101 + v102[8];
    *(v108 + 32) = 0u;
    *(v108 + 48) = 0u;
    *v108 = 0u;
    *(v108 + 16) = 0u;
    *(v108 + 64) = 5;
    v109 = *(v2 + v435[5]);
    v110 = v436;
    if (v109 > 2)
    {
      v111 = v414;
      if (v109 == 3)
      {

        v147 = v427;
        sub_24F925868();
        goto LABEL_55;
      }
    }

    else
    {
      v111 = v414;
    }

    v147 = v427;
    v148 = sub_24F92CE08();

    if ((v148 & 1) == 0)
    {
      if (v109 <= 2 || v109 == 4)
      {
        v153 = sub_24F92CE08();

        if ((v153 & 1) == 0)
        {
          sub_24F925818();
          goto LABEL_55;
        }
      }

      else
      {
      }

      sub_24F925808();
      goto LABEL_55;
    }

    sub_24F925868();
LABEL_55:
    v154 = sub_24EA91914(v78);
    v156 = v155;
    v158 = v157;
    v160 = v159;
    v161 = sub_24F925808();
    sub_24E746F20(v420, v111, type metadata accessor for GSKVideoView);
    v162 = v111 + *(v413 + 36);
    *v162 = v161;
    *(v162 + 8) = v154;
    *(v162 + 16) = v156;
    *(v162 + 24) = v158;
    *(v162 + 32) = v160;
    *(v162 + 40) = 0;
    if (v109 > 4)
    {

      v164 = 1;
      sub_24E924370(1);
      sub_24E601704(v111, &qword_27F219218);
    }

    else
    {
      v163 = sub_24F92CE08();

      sub_24E924370(v163 & 1);
      sub_24E601704(v111, &qword_27F219218);
      v164 = sub_24F92CE08();
    }

    *(&v456 + 1) = sub_24F925048();
    *&v457 = MEMORY[0x277CE0420];
    __swift_allocate_boxed_opaque_existential_1(&v455);
    sub_24F925258();
    v165 = v415;
    v166 = v421;
    sub_24E923C6C(v164 & 1, &v455);
    sub_24E601704(v166, &qword_27F219220);
    __swift_destroy_boxed_opaque_existential_1(&v455);
    sub_24E60169C(v165, v430, &qword_27F219228);
    swift_storeEnumTagMultiPayload();
    sub_24E70388C();
    sub_24E702DB8();
    sub_24F924E28();
    sub_24E60169C(v147, v433, &qword_27F21B0C8);
    swift_storeEnumTagMultiPayload();
    sub_24E74642C();
    sub_24E746630();
    sub_24F924E28();
    sub_24E601704(v147, &qword_27F21B0C8);
    sub_24E601704(v165, &qword_27F219228);
    sub_24E7455C8(v422, type metadata accessor for GSKVideo);
    goto LABEL_58;
  }

  v85 = v84[1];
  v86 = *(v2 + v435[5]);
  v87 = v437;
  *v437 = *v84;
  *(v87 + 1) = v85;
  *(v87 + 16) = v86;
  v88 = v423;
  v89 = *(v423 + 24);
  *(v87 + v89) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v90 = *(v88 + 28);
  *(v87 + v90) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v91 = v87 + *(v88 + 32);
  *v91 = swift_getKeyPath();
  v91[8] = 0;
  if (v86 > 2)
  {
    v92 = v425;
    if (v86 == 3)
    {

      sub_24F925868();
      goto LABEL_31;
    }
  }

  else
  {
    v92 = v425;
  }

  v112 = sub_24F92CE08();

  if ((v112 & 1) == 0)
  {
    if (v86 <= 2 || v86 == 4)
    {
      v130 = sub_24F92CE08();

      if ((v130 & 1) == 0)
      {
        sub_24F925818();
        goto LABEL_31;
      }
    }

    else
    {
    }

    sub_24F925808();
    goto LABEL_31;
  }

  sub_24F925868();
LABEL_31:
  v131 = sub_24EA91914(v78);
  v133 = v132;
  v135 = v134;
  v137 = v136;
  v138 = sub_24F925808();
  sub_24E746F20(v437, v92, type metadata accessor for CardElementView.PrimaryMixedMediaView);
  v139 = v92 + *(v424 + 36);
  *v139 = v138;
  *(v139 + 8) = v131;
  *(v139 + 16) = v133;
  *(v139 + 24) = v135;
  *(v139 + 32) = v137;
  *(v139 + 40) = 0;
  if (v86 > 4)
  {

    v142 = 1;
    sub_24E9240A4(1);
    sub_24E601704(v92, &qword_27F219230);
    v110 = v436;
    v141 = v427;
  }

  else
  {
    v140 = sub_24F92CE08();

    sub_24E9240A4(v140 & 1);
    sub_24E601704(v92, &qword_27F219230);
    v110 = v436;
    v141 = v427;
    v142 = sub_24F92CE08();
  }

  *(&v456 + 1) = sub_24F925048();
  *&v457 = MEMORY[0x277CE0420];
  __swift_allocate_boxed_opaque_existential_1(&v455);
  sub_24F925258();
  v143 = v426;
  v144 = v438;
  sub_24E923A50(v142 & 1, &v455);
  sub_24E601704(v144, &qword_27F219238);
  __swift_destroy_boxed_opaque_existential_1(&v455);
  sub_24E60169C(v143, v430, &qword_27F219240);
  swift_storeEnumTagMultiPayload();
  sub_24E70388C();
  sub_24E702DB8();
  sub_24F924E28();
  sub_24E60169C(v141, v433, &qword_27F21B0C8);
  swift_storeEnumTagMultiPayload();
  sub_24E74642C();
  sub_24E746630();
  sub_24F924E28();
  sub_24E601704(v141, &qword_27F21B0C8);
  sub_24E601704(v143, &qword_27F219240);
LABEL_58:
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B0D0);
  v168 = *(*(v167 - 8) + 56);
  v169 = v110;
  return v168(v169, 0, 1, v167);
}

uint64_t sub_24E744BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  if (a1 == 12)
  {
    if (a3 - 1 >= 4)
    {
      if (!a3)
      {
        return 1;
      }

      v23 = a2 + *(type metadata accessor for MediaCard() + 32);
      v24 = type metadata accessor for CommonCardAttributes(0);
      if (!*(v23 + *(v24 + 36)))
      {
        v25 = v24;
        sub_24E60169C(v23 + *(v24 + 32), v8, &qword_27F213FB8);
        v26 = type metadata accessor for GSKVideo();
        v27 = (*(*(v26 - 8) + 48))(v8, 1, v26);
        sub_24E601704(v8, &qword_27F213FB8);
        if (v27 == 1)
        {
          sub_24E60169C(v23 + *(v25 + 28), v15, &qword_27F213FB0);
          v28 = sub_24F9289E8();
          v29 = (*(*(v28 - 8) + 48))(v15, 1, v28) == 1;
          v30 = v15;
LABEL_22:
          sub_24E601704(v30, &qword_27F213FB0);
          return v29;
        }
      }
    }

    else
    {
      v18 = a2 + *(type metadata accessor for MediaCard() + 32);
      v19 = type metadata accessor for CommonCardAttributes(0);
      sub_24E60169C(v18 + *(v19 + 28), v12, &qword_27F213FB0);
      v20 = sub_24F9289E8();
      v21 = (*(*(v20 - 8) + 48))(v12, 1, v20);
      sub_24E601704(v12, &qword_27F213FB0);
      if (v21 == 1)
      {
        return *(v18 + *(v19 + 36)) == 0;
      }
    }

    return 0;
  }

  if (a1 == 3)
  {
    if (a3)
    {
      v31 = sub_24F92CE08();

      if (v31)
      {
        return 1;
      }

      v32 = a2 + *(type metadata accessor for MediaCard() + 32);
      v33 = type metadata accessor for CommonCardAttributes(0);
      sub_24E60169C(v32 + *(v33 + 28), v17, &qword_27F213FB0);
      v34 = sub_24F9289E8();
      v29 = 1;
      if ((*(*(v34 - 8) + 48))(v17, 1, v34) == 1)
      {
        v29 = *(v32 + *(v33 + 36)) != 0;
      }

      v30 = v17;
      goto LABEL_22;
    }

    return 1;
  }

  return sub_24E92D030(a1, a2, a3);
}

unint64_t sub_24E7450D8()
{
  result = qword_27F21AFC8;
  if (!qword_27F21AFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AFB0);
    sub_24E745190();
    sub_24E7454E4(&qword_27F21AFE8, &qword_27F21AF88, &unk_24F94FF38, sub_24E745348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AFC8);
  }

  return result;
}

unint64_t sub_24E745190()
{
  result = qword_27F21AFD0;
  if (!qword_27F21AFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AFA8);
    sub_24E74524C();
    sub_24E745300(&qword_27F21AFE0, type metadata accessor for MediaCardConfiguration.VisualView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AFD0);
  }

  return result;
}

unint64_t sub_24E74524C()
{
  result = qword_27F21AFD8;
  if (!qword_27F21AFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AFB8);
    sub_24E745300(&qword_27F214B78, type metadata accessor for CardElementView.Category);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AFD8);
  }

  return result;
}

uint64_t sub_24E745300(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E745348()
{
  result = qword_27F21AFF0;
  if (!qword_27F21AFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AF78);
    sub_24E7453CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AFF0);
  }

  return result;
}

unint64_t sub_24E7453CC()
{
  result = qword_27F21AFF8;
  if (!qword_27F21AFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AF70);
    sub_24E745458();
    sub_24E7018B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AFF8);
  }

  return result;
}

unint64_t sub_24E745458()
{
  result = qword_27F21B000;
  if (!qword_27F21B000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AF68);
    sub_24E63D098();
    sub_24E701970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B000);
  }

  return result;
}

uint64_t sub_24E7454E4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_24E745300(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E7455C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E745628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E745698(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E7456E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E745760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MediaCard();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 56);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24E745834(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MediaCard();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 56) = (a2 - 1);
  }

  return result;
}

void sub_24E7458F0()
{
  type metadata accessor for MediaCard();
  if (v0 <= 0x3F)
  {
    sub_24F928FD8();
    if (v1 <= 0x3F)
    {
      sub_24E746BEC(319, &qword_27F215590);
      if (v2 <= 0x3F)
      {
        sub_24E7268F0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24E7459D0()
{
  result = qword_27F21B018;
  if (!qword_27F21B018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B020);
    sub_24E745A54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B018);
  }

  return result;
}

unint64_t sub_24E745A54()
{
  result = qword_27F21B028;
  if (!qword_27F21B028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AFC0);
    sub_24E7450D8();
    sub_24E701970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B028);
  }

  return result;
}

unint64_t sub_24E745B0C()
{
  result = qword_27F21B0E0;
  if (!qword_27F21B0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B050);
    sub_24E745B98();
    sub_24E746060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B0E0);
  }

  return result;
}

unint64_t sub_24E745B98()
{
  result = qword_27F21B0E8;
  if (!qword_27F21B0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B098);
    sub_24E745C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B0E8);
  }

  return result;
}

unint64_t sub_24E745C1C()
{
  result = qword_27F21B0F0;
  if (!qword_27F21B0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B090);
    sub_24E745CA8();
    sub_24E745E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B0F0);
  }

  return result;
}

unint64_t sub_24E745CA8()
{
  result = qword_27F21B0F8;
  if (!qword_27F21B0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B088);
    sub_24E745D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B0F8);
  }

  return result;
}

unint64_t sub_24E745D34()
{
  result = qword_27F21B100;
  if (!qword_27F21B100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218AC8);
    sub_24E6E94A4();
    sub_24E745E18();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B100);
  }

  return result;
}

unint64_t sub_24E745E18()
{
  result = qword_27F21B108;
  if (!qword_27F21B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B108);
  }

  return result;
}

unint64_t sub_24E745E6C()
{
  result = qword_27F21B110;
  if (!qword_27F21B110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B068);
    sub_24E745EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B110);
  }

  return result;
}

unint64_t sub_24E745EF8()
{
  result = qword_27F21B118;
  if (!qword_27F21B118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B060);
    sub_24E745F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B118);
  }

  return result;
}

unint64_t sub_24E745F84()
{
  result = qword_27F21B120;
  if (!qword_27F21B120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B058);
    sub_24E745300(&qword_27F21B128, type metadata accessor for MediaCardConfiguration.IconView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B120);
  }

  return result;
}

unint64_t sub_24E746060()
{
  result = qword_27F21B130;
  if (!qword_27F21B130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B038);
    sub_24E745CA8();
    sub_24E7460EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B130);
  }

  return result;
}

unint64_t sub_24E7460EC()
{
  result = qword_27F21B138;
  if (!qword_27F21B138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B0D8);
    sub_24E746178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B138);
  }

  return result;
}

unint64_t sub_24E746178()
{
  result = qword_27F21B140;
  if (!qword_27F21B140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B148);
    sub_24E746204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B140);
  }

  return result;
}

unint64_t sub_24E746204()
{
  result = qword_27F21B150;
  if (!qword_27F21B150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B158);
    sub_24E746290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B150);
  }

  return result;
}

unint64_t sub_24E746290()
{
  result = qword_27F21B160;
  if (!qword_27F21B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B160);
  }

  return result;
}

unint64_t sub_24E7462E4()
{
  result = qword_27F2192F8;
  if (!qword_27F2192F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219300);
    sub_24E7032C8();
    sub_24E745300(&qword_27F2192D0, type metadata accessor for HeroMediaBlurModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2192F8);
  }

  return result;
}

unint64_t sub_24E7463A0()
{
  result = qword_27F21B168;
  if (!qword_27F21B168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B0A0);
    sub_24E745B0C();
    sub_24E7460EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B168);
  }

  return result;
}

unint64_t sub_24E74642C()
{
  result = qword_27F21B170;
  if (!qword_27F21B170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B0C8);
    sub_24E70388C();
    sub_24E702DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B170);
  }

  return result;
}

unint64_t sub_24E7464B8()
{
  result = qword_27F2193A8;
  if (!qword_27F2193A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2193B0);
    sub_24E703A5C();
    sub_24E745300(&qword_27F2192D0, type metadata accessor for HeroMediaBlurModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2193A8);
  }

  return result;
}

unint64_t sub_24E746574()
{
  result = qword_27F2192B8;
  if (!qword_27F2192B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2192C0);
    sub_24E702F88();
    sub_24E745300(&qword_27F2192D0, type metadata accessor for HeroMediaBlurModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2192B8);
  }

  return result;
}

unint64_t sub_24E746630()
{
  result = qword_27F21B178;
  if (!qword_27F21B178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B0B0);
    sub_24E703044();
    sub_24E7463A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B178);
  }

  return result;
}

uint64_t sub_24E7466EC()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = sub_24F922348();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24E7468F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
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

uint64_t sub_24E746940(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E7469C4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_24E746A94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24) + 8) = -a2;
  }

  return result;
}

void sub_24E746B50()
{
  sub_24F9289E8();
  if (v0 <= 0x3F)
  {
    sub_24E746BEC(319, &qword_27F21B190);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E746BEC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24F923578();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_24E746C6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E746CB4(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

unint64_t sub_24E746D28()
{
  result = qword_27F21B198;
  if (!qword_27F21B198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B1A0);
    sub_24E746DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B198);
  }

  return result;
}

unint64_t sub_24E746DAC()
{
  result = qword_27F21B1A8;
  if (!qword_27F21B1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B0D0);
    sub_24E74642C();
    sub_24E746630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B1A8);
  }

  return result;
}

unint64_t sub_24E746E8C()
{
  result = qword_27F21B1B8;
  if (!qword_27F21B1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B1B0);
    sub_24E6E97A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B1B8);
  }

  return result;
}

uint64_t sub_24E746F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E746F88()
{

  sub_24E62A5EC(*(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t sub_24E746FFC()
{

  return swift_deallocObject();
}

uint64_t sub_24E74706C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24E7470EC()
{
  result = qword_27F21B200;
  if (!qword_27F21B200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B208);
    sub_24E746E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B200);
  }

  return result;
}

unint64_t sub_24E74717C()
{
  result = qword_27F21B210;
  if (!qword_27F21B210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B1C0);
    sub_24E6801D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B210);
  }

  return result;
}

unint64_t sub_24E74720C()
{
  result = qword_27F21B218;
  if (!qword_27F21B218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B1D8);
    sub_24E602068(&qword_27F21B220, &qword_27F21B1C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B218);
  }

  return result;
}

uint64_t sub_24E7472C4()
{
  v0 = sub_24F922348();
  __swift_allocate_value_buffer(v0, qword_27F39ABD0);
  __swift_project_value_buffer(v0, qword_27F39ABD0);
  return _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
}

uint64_t sub_24E747318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F923F78();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x277CDFA90], v5, v7);
  v10 = sub_24F923F68();
  (*(v6 + 8))(v9, v5);
  v11 = 24;
  if (v10)
  {
    v11 = 72;
  }

  v12 = *(*(v2 + 16) + v11);
  if (v12 == 2)
  {
    v13 = sub_24E747AD4(*(v2 + 25), a1, &OBJC_IVAR____TtC12GameStoreKit5Brick_collectionIcons, &OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions);
    if (v13 != 2 && (v13 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v14 = MEMORY[0x277CDF3C0];
    goto LABEL_9;
  }

  if (v12)
  {
    goto LABEL_8;
  }

LABEL_6:
  v14 = MEMORY[0x277CDF3D0];
LABEL_9:
  v15 = *v14;
  v16 = sub_24F9234D8();
  return (*(*(v16 - 8) + 104))(a2, v15, v16);
}

BOOL sub_24E7474C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = *(v0 + 16);
  sub_24E747EE8(v10 + OBJC_IVAR____TtC12GameStoreKit5Brick_title, &v17 - v8);
  v11 = sub_24F91F008();
  v12 = *(*(v11 - 8) + 48);
  v13 = 1;
  v14 = v12(v9, 1, v11);
  sub_24E747F58(v9);
  if (v14 == 1)
  {
    sub_24E747EE8(v10 + OBJC_IVAR____TtC12GameStoreKit5Brick_subtitle, v6);
    v15 = v12(v6, 1, v11);
    sub_24E747F58(v6);
    if (v15 == 1)
    {
      sub_24E747EE8(v10 + OBJC_IVAR____TtC12GameStoreKit5Brick_caption, v3);
      v13 = v12(v3, 1, v11) != 1;
      sub_24E747F58(v3);
    }
  }

  return v13;
}

uint64_t sub_24E747690()
{
  v1 = sub_24F923F78();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x277CDFA90], v1, v3);
  v6 = sub_24F923F68();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
  }

  v8 = *(*(v0 + 16) + 16);
  if (!v8)
  {
    return 0;
  }

  if (v8 >> 62)
  {
    result = sub_24F92C738();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x253052270](0, v8);
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_24E747804()
{
  v1 = sub_24F923F78();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x277CDFA90], v1, v3);
  v6 = sub_24F923F68();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    goto LABEL_2;
  }

  v8 = *(*(v0 + 16) + 16);
  if (!v8)
  {
    result = 0;
    goto LABEL_10;
  }

  if (v8 >> 62)
  {
    result = sub_24F92C738();
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_10;
    }
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x253052270](0, v8);
    goto LABEL_10;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_2:

LABEL_10:
    v9 = result == 0;

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E747988()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BrickViewModel()
{
  result = qword_27F21B228;
  if (!qword_27F21B228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24E747A6C()
{
  result = qword_27F21B238;
  if (!qword_27F21B238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B238);
  }

  return result;
}

uint64_t sub_24E747AD4(unsigned __int8 a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *(v4 + 16);
  v6 = *(v5 + *a3);
  if (!v6)
  {
    return 2;
  }

  v18 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
LABEL_29:
    v8 = sub_24F92C738();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    do
    {
      v11 = v9;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x253052270](v11, v6);
          v9 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v11 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v12 = *(v6 + 8 * v11 + 32);

          v9 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }
        }

        swift_beginAccess();
        v13 = *(v12 + 48);
        if (v13)
        {
          break;
        }

        swift_endAccess();

        ++v11;
        if (v9 == v8)
        {
          goto LABEL_22;
        }
      }

      v14 = v13;

      sub_24F926BF8();
      swift_endAccess();

      MEMORY[0x253050F00]();
      if (*(v18 + 16) >= *(v18 + 24) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v10 = v18;
    }

    while (v9 != v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

LABEL_22:

  if (*(v5 + *a4))
  {
    v15 = sub_24F3DFC1C(a1, v10);
  }

  else
  {
    v15 = 2;
  }

  return v15;
}

uint64_t sub_24E747CE4(unsigned __int8 a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 80);
  if (!v3)
  {
    return 2;
  }

  v14 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_29:
    v5 = sub_24F92C738();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    do
    {
      v8 = v6;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x253052270](v8, v3);
          v6 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v9 = *(v3 + 8 * v8 + 32);

          v6 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }
        }

        swift_beginAccess();
        v10 = *(v9 + 48);
        if (v10)
        {
          break;
        }

        swift_endAccess();

        ++v8;
        if (v6 == v5)
        {
          goto LABEL_22;
        }
      }

      v11 = v10;

      sub_24F926BF8();
      swift_endAccess();

      MEMORY[0x253050F00]();
      if (*(v14 + 16) >= *(v14 + 24) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v7 = v14;
    }

    while (v6 != v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

LABEL_22:

  if (*(v2 + 88))
  {
    v12 = sub_24F3DFC1C(a1, v7);
  }

  else
  {
    v12 = 2;
  }

  return v12;
}