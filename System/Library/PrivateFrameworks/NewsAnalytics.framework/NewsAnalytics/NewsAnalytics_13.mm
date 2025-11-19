__n128 WidgetEngagementData.init(identifier:engagementType:webEmbedData:articleData:groupData:tagData:contentFetchDate:displayMode:topicTag:userID:engagementURL:typeData:locationData:storyType:engagementID:entryID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, _OWORD *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14, char *a15, char *a16, __int128 a17, __n128 a18, uint64_t a19, uint64_t a20)
{
  v23 = *a3;
  v24 = *a4;
  v25 = a4[1];
  v26 = *a7;
  v27 = a7[1];
  v28 = *a10;
  v29 = *a15;
  v30 = *a16;
  v40 = (a9 + 424);
  v41 = (a9 + 408);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v23;

  v31 = a5[4];
  *(a9 + 120) = a5[5];
  v32 = a5[7];
  *(a9 + 136) = a5[6];
  *(a9 + 152) = v32;
  v33 = *a5;
  *(a9 + 56) = a5[1];
  v34 = a5[3];
  *(a9 + 72) = a5[2];
  *(a9 + 88) = v34;
  *(a9 + 24) = v24;
  *(a9 + 32) = v25;
  *(a9 + 167) = *(a5 + 127);
  *(a9 + 104) = v31;
  *(a9 + 40) = v33;
  v35 = a6[7];
  *(a9 + 272) = a6[6];
  *(a9 + 288) = v35;
  *(a9 + 304) = a6[8];
  v36 = a6[3];
  *(a9 + 208) = a6[2];
  *(a9 + 224) = v36;
  v37 = a6[5];
  *(a9 + 240) = a6[4];
  *(a9 + 256) = v37;
  v38 = a6[1];
  *(a9 + 176) = *a6;
  *(a9 + 192) = v38;
  *(a9 + 320) = v26;
  *(a9 + 328) = v27;
  *(a9 + 336) = a8;
  *(a9 + 344) = v28;
  *(a9 + 352) = a11;
  *(a9 + 368) = a12;
  *(a9 + 384) = a13;
  *(a9 + 392) = a14;
  *(a9 + 400) = v29;
  *(a9 + 401) = v30;
  result = a18;
  *v41 = a17;
  *v40 = a18;
  *(a9 + 440) = a19;
  *(a9 + 448) = a20;
  return result;
}

uint64_t WidgetEngagementData.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WidgetEngagementData.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WidgetEngagementData.webEmbedData.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t WidgetEngagementData.webEmbedData.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t WidgetEngagementData.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 152);
  v12[6] = *(v1 + 136);
  v13[0] = v3;
  *(v13 + 15) = *(v1 + 167);
  v4 = *(v1 + 56);
  v5 = *(v1 + 88);
  v12[2] = *(v1 + 72);
  v12[3] = v5;
  v12[4] = *(v1 + 104);
  v12[5] = v2;
  v12[0] = *(v1 + 40);
  v12[1] = v4;
  v6 = *(v1 + 120);
  v7 = *(v1 + 152);
  *(a1 + 96) = *(v1 + 136);
  *(a1 + 112) = v7;
  *(a1 + 127) = *(v1 + 167);
  v8 = *(v1 + 56);
  v9 = *(v1 + 88);
  *(a1 + 32) = *(v1 + 72);
  *(a1 + 48) = v9;
  *(a1 + 64) = *(v1 + 104);
  *(a1 + 80) = v6;
  *a1 = *(v1 + 40);
  *(a1 + 16) = v8;
  return sub_217AD1630(v12, v11);
}

__n128 WidgetEngagementData.articleData.setter(__int128 *a1)
{
  v3 = *(v1 + 120);
  v4 = *(v1 + 152);
  v12[6] = *(v1 + 136);
  v13[0] = v4;
  *(v13 + 15) = *(v1 + 167);
  v5 = *(v1 + 56);
  v6 = *(v1 + 88);
  v12[2] = *(v1 + 72);
  v12[3] = v6;
  v12[4] = *(v1 + 104);
  v12[5] = v3;
  v12[0] = *(v1 + 40);
  v12[1] = v5;
  sub_217AD2864(v12);
  v7 = a1[4];
  *(v1 + 120) = a1[5];
  v8 = a1[7];
  *(v1 + 136) = a1[6];
  *(v1 + 152) = v8;
  v9 = *a1;
  *(v1 + 56) = a1[1];
  result = a1[2];
  v11 = a1[3];
  *(v1 + 72) = result;
  *(v1 + 88) = v11;
  *(v1 + 104) = v7;
  *(v1 + 167) = *(a1 + 127);
  *(v1 + 40) = v9;
  return result;
}

uint64_t WidgetEngagementData.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[16];
  v3 = v1[18];
  v20 = v1[17];
  v21 = v3;
  v4 = v1[18];
  v22 = v1[19];
  v5 = v1[12];
  v6 = v1[14];
  v16 = v1[13];
  v7 = v16;
  v17 = v6;
  v8 = v1[14];
  v9 = v1[16];
  v18 = v1[15];
  v10 = v18;
  v19 = v9;
  v11 = v1[12];
  v15[0] = v1[11];
  v12 = v15[0];
  v15[1] = v11;
  a1[6] = v20;
  a1[7] = v4;
  a1[8] = v1[19];
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = v2;
  *a1 = v12;
  a1[1] = v5;
  return sub_217AF7618(v15, &v14);
}

__n128 WidgetEngagementData.groupData.setter(uint64_t a1)
{
  v3 = v1[18];
  v11[6] = v1[17];
  v11[7] = v3;
  v11[8] = v1[19];
  v4 = v1[14];
  v11[2] = v1[13];
  v11[3] = v4;
  v5 = v1[16];
  v11[4] = v1[15];
  v11[5] = v5;
  v6 = v1[12];
  v11[0] = v1[11];
  v11[1] = v6;
  sub_217AF8104(v11);
  v7 = *(a1 + 112);
  v1[17] = *(a1 + 96);
  v1[18] = v7;
  v1[19] = *(a1 + 128);
  v8 = *(a1 + 48);
  v1[13] = *(a1 + 32);
  v1[14] = v8;
  v9 = *(a1 + 80);
  v1[15] = *(a1 + 64);
  v1[16] = v9;
  result = *(a1 + 16);
  v1[11] = *a1;
  v1[12] = result;
  return result;
}

uint64_t WidgetEngagementData.tagData.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 328);
  *a1 = *(v1 + 320);
  a1[1] = v2;
}

uint64_t WidgetEngagementData.tagData.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 328);

  *(v1 + 320) = v2;
  *(v1 + 328) = v3;
  return result;
}

uint64_t WidgetEngagementData.topicTag.getter()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);

  return v1;
}

uint64_t WidgetEngagementData.topicTag.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 360);

  *(v2 + 352) = a1;
  *(v2 + 360) = a2;
  return result;
}

uint64_t WidgetEngagementData.userID.getter()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return v1;
}

uint64_t WidgetEngagementData.userID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 376);

  *(v2 + 368) = a1;
  *(v2 + 376) = a2;
  return result;
}

uint64_t WidgetEngagementData.engagementURL.getter()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  return v1;
}

uint64_t WidgetEngagementData.engagementURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 392);

  *(v2 + 384) = a1;
  *(v2 + 392) = a2;
  return result;
}

uint64_t WidgetEngagementData.storyType.getter()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);

  return v1;
}

uint64_t WidgetEngagementData.storyType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 416);

  *(v2 + 408) = a1;
  *(v2 + 416) = a2;
  return result;
}

uint64_t WidgetEngagementData.engagementID.getter()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);

  return v1;
}

uint64_t WidgetEngagementData.engagementID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 432);

  *(v2 + 424) = a1;
  *(v2 + 432) = a2;
  return result;
}

uint64_t WidgetEngagementData.entryID.getter()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);

  return v1;
}

uint64_t WidgetEngagementData.entryID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 448);

  *(v2 + 440) = a1;
  *(v2 + 448) = a2;
  return result;
}

unint64_t sub_217BB9DD4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
    case 10:
    case 14:
      result = 0x656D656761676E65;
      break;
    case 2:
      result = 0x6465626D45626577;
      break;
    case 3:
      result = 0x44656C6369747261;
      break;
    case 4:
      result = 0x74614470756F7267;
      break;
    case 5:
      result = 0x61746144676174;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x4D79616C70736964;
      break;
    case 8:
      result = 0x6761546369706F74;
      break;
    case 9:
      result = 0x444972657375;
      break;
    case 11:
      result = 0x6174614465707974;
      break;
    case 12:
      result = 0x6E6F697461636F6CLL;
      break;
    case 13:
      result = 0x70795479726F7473;
      break;
    case 15:
      result = 0x44497972746E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217BB9FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BBB900(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BB9FCC(uint64_t a1)
{
  v2 = sub_217BBA72C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BBA008(uint64_t a1)
{
  v2 = sub_217BBA72C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetEngagementData.encode(to:)(void *a1)
{
  sub_217BBB480(0, &qword_2811BC628, MEMORY[0x277D84538]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v33 - v6;
  v8 = *v1;
  v49 = v1[1];
  v50 = v8;
  v48 = *(v1 + 16);
  v9 = v1[3];
  v46 = v1[4];
  v47 = v9;
  v10 = *(v1 + 17);
  v81 = *(v1 + 15);
  v82 = v10;
  v83[0] = *(v1 + 19);
  *(v83 + 15) = *(v1 + 167);
  v11 = *(v1 + 7);
  v12 = *(v1 + 11);
  v78 = *(v1 + 9);
  v79 = v12;
  v80 = *(v1 + 13);
  v76 = *(v1 + 5);
  v77 = v11;
  v13 = *(v1 + 18);
  v90 = *(v1 + 17);
  v91 = v13;
  v92 = *(v1 + 19);
  v14 = *(v1 + 14);
  v86 = *(v1 + 13);
  v87 = v14;
  v15 = *(v1 + 16);
  v88 = *(v1 + 15);
  v89 = v15;
  v16 = *(v1 + 12);
  v84 = *(v1 + 11);
  v85 = v16;
  v17 = v1[41];
  v44 = v1[40];
  v45 = v17;
  v43 = v1[42];
  v42 = *(v1 + 344);
  v18 = v1[45];
  v40 = v1[44];
  v41 = v18;
  v19 = v1[47];
  v38 = v1[46];
  v39 = v19;
  v20 = v1[49];
  v36 = v1[48];
  v37 = v20;
  LODWORD(v9) = *(v1 + 400);
  v34 = *(v1 + 401);
  v35 = v9;
  v21 = v1[51];
  v33[3] = v1[52];
  v33[4] = v21;
  v22 = v1[53];
  v33[1] = v1[54];
  v33[2] = v22;
  v23 = v1[56];
  v33[0] = v1[55];
  v24 = a1[3];
  v25 = a1[4];
  v26 = a1;
  v28 = v27;
  __swift_project_boxed_opaque_existential_1(v26, v24);
  sub_217BBA72C();
  sub_217D89E7C();
  LOBYTE(v56) = 0;
  v29 = v93;
  sub_217D89C6C();
  if (v29)
  {
    return (*(v4 + 8))(v7, v28);
  }

  v31 = v46;
  v30 = v47;
  v93 = v23;
  LOBYTE(v56) = v48;
  LOBYTE(v54[0]) = 1;
  sub_217BBA780();
  sub_217D89CAC();
  *&v56 = v30;
  *(&v56 + 1) = v31;
  LOBYTE(v54[0]) = 2;
  sub_217AE89C8();

  sub_217D89C3C();

  v73 = v81;
  v74 = v82;
  v75[0] = v83[0];
  *(v75 + 15) = *(v83 + 15);
  v70 = v78;
  v71 = v79;
  v72 = v80;
  v68 = v76;
  v69 = v77;
  v67 = 3;
  sub_217AD1630(&v76, &v56);
  sub_217ACF52C();
  v50 = v7;
  sub_217D89CAC();
  v65[5] = v73;
  v65[6] = v74;
  *v66 = v75[0];
  *&v66[15] = *(v75 + 15);
  v65[2] = v70;
  v65[3] = v71;
  v65[4] = v72;
  v65[0] = v68;
  v65[1] = v69;
  sub_217AD2864(v65);
  v62 = v90;
  v63 = v91;
  v64 = v92;
  v58 = v86;
  v59 = v87;
  v60 = v88;
  v61 = v89;
  v56 = v84;
  v57 = v85;
  v55 = 4;
  sub_217AF7618(&v84, v54);
  sub_217A5D3B4();
  sub_217D89CAC();
  v54[7] = v63;
  v54[8] = v64;
  v54[2] = v58;
  v54[3] = v59;
  v54[5] = v61;
  v54[6] = v62;
  v54[4] = v60;
  v54[0] = v56;
  v54[1] = v57;
  sub_217AF8104(v54);
  v52 = v44;
  v53 = v45;
  v51 = 5;
  sub_217AF6B14();

  sub_217D89CAC();

  LOBYTE(v52) = 6;
  sub_217D89CCC();
  LOBYTE(v52) = v42;
  v51 = 7;
  sub_217BBA7D4();
  sub_217D89CAC();
  LOBYTE(v52) = 8;
  sub_217D89C0C();
  LOBYTE(v52) = 9;
  sub_217D89C6C();
  LOBYTE(v52) = 10;
  sub_217D89C6C();
  LOBYTE(v52) = v35;
  v51 = 11;
  sub_217B0B798();
  sub_217D89CAC();
  LOBYTE(v52) = v34;
  v51 = 12;
  sub_217B0BA6C();
  sub_217D89CAC();
  LOBYTE(v52) = 13;
  sub_217D89C0C();
  LOBYTE(v52) = 14;
  sub_217D89C0C();
  LOBYTE(v52) = 15;
  sub_217D89C0C();
  return (*(v4 + 8))(v50, v28);
}

unint64_t sub_217BBA72C()
{
  result = qword_2811C1A38[0];
  if (!qword_2811C1A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C1A38);
  }

  return result;
}

unint64_t sub_217BBA780()
{
  result = qword_2811C1A00;
  if (!qword_2811C1A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1A00);
  }

  return result;
}

unint64_t sub_217BBA7D4()
{
  result = qword_2811C68E0;
  if (!qword_2811C68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C68E0);
  }

  return result;
}

uint64_t WidgetEngagementData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217BBB480(0, &qword_2811BC9C0, MEMORY[0x277D844C8]);
  v122 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BBA72C();
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v52 = v6;
    LOBYTE(v54) = 0;
    v11 = sub_217D89B8C();
    v48 = a2;
    v12 = v11;
    v51 = v13;
    LOBYTE(v53[0]) = 1;
    sub_217BBB4E4();
    sub_217D89BCC();
    v14 = v54;
    LOBYTE(v53[0]) = 2;
    sub_217AE8974();
    sub_217D89B5C();
    v45 = v14;
    v15 = v54;
    v50 = v55;

    v100 = 3;
    sub_217ACF4D8();
    sub_217D89BCC();
    v44 = v15;
    v118 = v106;
    v119 = v107;
    *v120 = *v108;
    *&v120[15] = *&v108[15];
    v115 = v103;
    v116 = v104;
    v117 = v105;
    v113 = v101;
    v114 = v102;
    v90 = 4;
    sub_217A5D308();
    sub_217D89BCC();
    *&v112[81] = v96;
    *&v112[97] = v97;
    *&v112[113] = v98;
    *&v112[129] = v99;
    *&v112[17] = v92;
    *&v112[33] = v93;
    *&v112[49] = v94;
    *&v112[65] = v95;
    *&v112[1] = v91;
    LOBYTE(v53[0]) = 5;
    sub_217AF6AC0();
    sub_217D89BCC();
    v43 = v54;
    v16 = v55;
    LOBYTE(v54) = 6;
    v17 = sub_217D89BEC();
    v47 = v16;
    v42 = v17;
    LOBYTE(v53[0]) = 7;
    sub_217BBB538();
    sub_217D89BCC();
    LODWORD(v16) = v54;
    LOBYTE(v54) = 8;
    v41 = sub_217D89B2C();
    v39 = v16;
    v40 = v12;
    v49 = v18;
    LOBYTE(v54) = 9;
    v19 = sub_217D89B8C();
    v46 = v20;
    v21 = v19;
    LOBYTE(v54) = 10;
    v38 = sub_217D89B8C();
    v23 = v22;
    LOBYTE(v53[0]) = 11;
    sub_217B0B744();
    sub_217D89BCC();
    v37 = v54;
    LOBYTE(v53[0]) = 12;
    sub_217B0BA18();
    sub_217D89BCC();
    v36 = v54;
    LOBYTE(v54) = 13;
    v35 = sub_217D89B2C();
    v25 = v24;
    LOBYTE(v54) = 14;
    v34 = sub_217D89B2C();
    v27 = v26;
    v89 = 15;
    v28 = sub_217D89B2C();
    v32 = v29;
    v33 = v28;
    (*(v52 + 8))(v9, v122);
    *&v53[15] = v118;
    *&v53[17] = v119;
    *&v53[19] = *v120;
    *&v53[7] = v114;
    *&v53[9] = v115;
    *&v53[11] = v116;
    *&v53[13] = v117;
    *&v53[5] = v113;
    *(&v53[33] + 7) = *&v112[96];
    *(&v53[35] + 7) = *&v112[112];
    *(&v53[37] + 7) = *&v112[128];
    *(&v53[25] + 7) = *&v112[32];
    *(&v53[27] + 7) = *&v112[48];
    *(&v53[29] + 7) = *&v112[64];
    *(&v53[31] + 7) = *&v112[80];
    *(&v53[21] + 7) = *v112;
    v53[0] = v40;
    v53[1] = v51;
    LOBYTE(v53[2]) = v45;
    *(&v53[2] + 1) = v121[0];
    HIDWORD(v53[2]) = *(v121 + 3);
    v53[3] = v44;
    v53[4] = v50;
    *(&v53[20] + 7) = *&v120[15];
    HIBYTE(v53[39]) = v112[144];
    *(&v53[23] + 7) = *&v112[16];
    v53[40] = v43;
    v53[41] = v47;
    v53[42] = v42;
    LOBYTE(v53[43]) = v39;
    *(&v53[43] + 1) = *v111;
    HIDWORD(v53[43]) = *&v111[3];
    v53[44] = v41;
    v53[45] = v49;
    v53[46] = v21;
    v53[47] = v46;
    v53[48] = v38;
    v53[49] = v23;
    LOBYTE(v53[50]) = v37;
    BYTE1(v53[50]) = v36;
    *(&v53[50] + 2) = v109;
    HIWORD(v53[50]) = v110;
    v53[51] = v35;
    v53[52] = v25;
    v53[53] = v34;
    v53[54] = v27;
    v53[55] = v33;
    v53[56] = v32;
    memcpy(v48, v53, 0x1C8uLL);
    sub_217BBB58C(v53, &v54);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v65 = v118;
    v66 = v119;
    *v67 = *v120;
    v61 = v114;
    v62 = v115;
    v63 = v116;
    *&v67[119] = *&v112[96];
    *&v67[135] = *&v112[112];
    *&v67[151] = *&v112[128];
    v64 = v117;
    v60 = v113;
    *&v67[55] = *&v112[32];
    *&v67[71] = *&v112[48];
    *&v67[87] = *&v112[64];
    *&v67[103] = *&v112[80];
    *&v67[23] = *v112;
    v54 = v40;
    v55 = v51;
    v56 = v45;
    *v57 = v121[0];
    *&v57[3] = *(v121 + 3);
    v58 = v44;
    v59 = v50;
    *&v67[15] = *&v120[15];
    v67[167] = v112[144];
    *&v67[39] = *&v112[16];
    v68 = v43;
    v69 = v47;
    v70 = v42;
    v71 = v39;
    *v72 = *v111;
    *&v72[3] = *&v111[3];
    v73 = v41;
    v74 = v49;
    v75 = v21;
    v76 = v46;
    v77 = v38;
    v78 = v23;
    v79 = v37;
    v80 = v36;
    v81 = v109;
    v82 = v110;
    v83 = v35;
    v84 = v25;
    v85 = v34;
    v86 = v27;
    v87 = v33;
    v88 = v32;
    return sub_217BBB5C4(&v54);
  }
}

void sub_217BBB480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BBA72C();
    v7 = a3(a1, &type metadata for WidgetEngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BBB4E4()
{
  result = qword_2811C19F0;
  if (!qword_2811C19F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C19F0);
  }

  return result;
}

unint64_t sub_217BBB538()
{
  result = qword_2811C68D0;
  if (!qword_2811C68D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C68D0);
  }

  return result;
}

unint64_t sub_217BBB5F8()
{
  result = qword_2811C1A10;
  if (!qword_2811C1A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1A10);
  }

  return result;
}

unint64_t sub_217BBB650()
{
  result = qword_2811C1A18;
  if (!qword_2811C1A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1A18);
  }

  return result;
}

uint64_t sub_217BBB6DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 456))
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

uint64_t sub_217BBB724(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 440) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 456) = 1;
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

    *(result + 456) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217BBB7FC()
{
  result = qword_27CBA1348;
  if (!qword_27CBA1348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1348);
  }

  return result;
}

unint64_t sub_217BBB854()
{
  result = qword_2811C1A28;
  if (!qword_2811C1A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1A28);
  }

  return result;
}

unint64_t sub_217BBB8AC()
{
  result = qword_2811C1A30;
  if (!qword_2811C1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1A30);
  }

  return result;
}

uint64_t sub_217BBB900(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D656761676E65 && a2 == 0xEE0065707954746ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465626D45626577 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCEF10 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4D79616C70736964 && a2 == 0xEB0000000065646FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6761546369706F74 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x444972657375 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656D656761676E65 && a2 == 0xED00004C5255746ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6174614465707974 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x70795479726F7473 && a2 == 0xE900000000000065 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x656D656761676E65 && a2 == 0xEC0000004449746ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x44497972746E65 && a2 == 0xE700000000000000)
  {

    return 15;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

NewsAnalytics::DownloadLocation_optional __swiftcall DownloadLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DownloadLocation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x756F59726F66;
  v4 = 0x6C656E6E616863;
  if (v1 != 3)
  {
    v4 = 0x756F72676B636162;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656E697A6167616DLL;
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

unint64_t sub_217BBBF28()
{
  result = qword_27CBA1350;
  if (!qword_27CBA1350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1350);
  }

  return result;
}

uint64_t sub_217BBBF7C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BBC060()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217BBC130()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217BBC21C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x756F59726F66;
  v7 = 0xE700000000000000;
  v8 = 0x6C656E6E616863;
  if (v2 != 3)
  {
    v8 = 0x756F72676B636162;
    v7 = 0xEA0000000000646ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656E697A6167616DLL;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_217BBC37C()
{
  result = qword_27CBA1358;
  if (!qword_27CBA1358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1358);
  }

  return result;
}

uint64_t sub_217BBC498()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C75C0);
  __swift_project_value_buffer(v0, qword_2811C75C0);
  return sub_217D8866C();
}

uint64_t FeedLoadEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FeedLoadEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedLoadEvent(0) + 20);
  sub_217A604D4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedLoadEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadEvent(0) + 20);
  sub_217A604D4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadEvent.feedConfigData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedLoadEvent(0) + 24);
  sub_217A604D4(0, &qword_2811C8728, sub_217A60838, sub_217A6088C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedLoadEvent.feedConfigData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadEvent(0) + 24);
  sub_217A604D4(0, &qword_2811C8728, sub_217A60838, sub_217A6088C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadEvent(0) + 28);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedLoadEvent(0) + 32);
  sub_217A604D4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedLoadEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadEvent(0) + 32);
  sub_217A604D4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  Event = type metadata accessor for FeedLoadEvent(0);
  v5 = Event[5];
  sub_217A604D4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = Event[6];
  sub_217A604D4(0, &qword_2811C8728, sub_217A60838, sub_217A6088C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = Event[7];
  sub_217A608E0();
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = Event[8];
  sub_217A604D4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t FeedLoadEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedLoadEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t FeedLoadEvent.Model.feedConfigData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedLoadEvent.Model(0) + 24);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v6;
}

uint64_t sub_217BBCF0C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 28);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t FeedLoadEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedLoadEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t FeedLoadEvent.Model.init(eventData:feedData:feedConfigData:timedData:viewData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *a3;
  v12 = a3[1];
  v13 = *(a3 + 16);
  v24 = *(a3 + 3);
  v14 = a3[5];
  v15 = *a5;
  v26 = a5[1];
  v25 = *(a5 + 8);
  v16 = sub_217D8899C();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  v17 = type metadata accessor for FeedLoadEvent.Model(0);
  v18 = a6 + v17[5];
  *v18 = v8;
  *(v18 + 8) = v9;
  *(v18 + 16) = v10;
  v19 = a6 + v17[6];
  *v19 = v11;
  *(v19 + 8) = v12;
  *(v19 + 16) = v13;
  *(v19 + 24) = v24;
  *(v19 + 40) = v14;
  v20 = v17[7];
  v21 = sub_217D889CC();
  result = (*(*(v21 - 8) + 32))(a6 + v20, a4, v21);
  v23 = a6 + v17[8];
  *v23 = v15;
  *(v23 + 8) = v26;
  *(v23 + 16) = v25;
  return result;
}

uint64_t sub_217BBD12C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x666E6F4364656566;
  v4 = 0x74614464656D6974;
  if (v1 != 3)
  {
    v4 = 0x6174614477656976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6174614464656566;
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

uint64_t sub_217BBD1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BBE254(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BBD1FC(uint64_t a1)
{
  v2 = sub_217BBD5D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BBD238(uint64_t a1)
{
  v2 = sub_217BBD5D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedLoadEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BBDC24(0, &qword_27CBA1360, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BBD5D0();
  sub_217D89E7C();
  LOBYTE(v26) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for FeedLoadEvent.Model(0);
    v13 = v3 + v12[5];
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    LOBYTE(v26) = *v13;
    v27 = v14;
    v28 = v15;
    v31 = 1;
    sub_217A5BA2C();

    sub_217D89CAC();

    v16 = (v3 + v12[6]);
    v17 = v16[1];
    v18 = *(v16 + 16);
    v19 = v16[5];
    v26 = *v16;
    v27 = v17;
    LOBYTE(v28) = v18;
    v29 = *(v16 + 3);
    v30 = v19;
    v31 = 2;
    sub_217A6088C();

    sub_217D89CAC();

    v21 = v12[7];
    LOBYTE(v26) = 3;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v22 = (v3 + v12[8]);
    v23 = *v22;
    v24 = v22[1];
    LOWORD(v22) = *(v22 + 8);
    v26 = v23;
    v27 = v24;
    LOWORD(v28) = v22;
    v31 = 4;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217BBD5D0()
{
  result = qword_27CBA1368;
  if (!qword_27CBA1368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1368);
  }

  return result;
}

uint64_t FeedLoadEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_217D889CC();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217D8899C();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BBDC24(0, &qword_27CBA1370, MEMORY[0x277D844C8]);
  v39 = v10;
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = type metadata accessor for FeedLoadEvent.Model(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BBD5D0();
  v38 = v13;
  v19 = v40;
  sub_217D89E5C();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v17;
  v41[0] = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v21 = v36;
  sub_217D89BCC();
  (*(v35 + 32))(v20, v21, v7);
  v44 = 1;
  sub_217A5B978();
  sub_217D89BCC();
  v22 = v20 + v14[5];
  *v22 = v41[0];
  *(v22 + 8) = *&v41[8];
  v44 = 2;
  sub_217A60838();
  sub_217D89BCC();
  v23 = v41[16];
  v24 = v43;
  v25 = v20 + v14[6];
  *v25 = *v41;
  *(v25 + 16) = v23;
  *(v25 + 24) = v42;
  *(v25 + 40) = v24;
  v41[0] = 3;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v26 = v34;
  sub_217D89BCC();
  (*(v33 + 32))(v20 + v14[7], v6, v26);
  v44 = 4;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v37 + 8))(v38, v39);
  v27 = *&v41[8];
  v28 = *&v41[16];
  v29 = v20 + v14[8];
  *v29 = *v41;
  *(v29 + 8) = v27;
  *(v29 + 16) = v28;
  sub_217BBDC88(v20, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217BBDCEC(v20);
}

void sub_217BBDC24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BBD5D0();
    v7 = a3(a1, &type metadata for FeedLoadEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BBDC88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedLoadEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BBDCEC(uint64_t a1)
{
  v2 = type metadata accessor for FeedLoadEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BBDE20@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A604D4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A604D4(0, &qword_2811C8728, sub_217A60838, sub_217A6088C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A608E0();
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217A604D4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v14 = *(*(v13 - 8) + 104);

  return v14(a2 + v12, v4, v13);
}

uint64_t sub_217BBE098()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    result = sub_217D889CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_217BBE150()
{
  result = qword_27CBA1388;
  if (!qword_27CBA1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1388);
  }

  return result;
}

unint64_t sub_217BBE1A8()
{
  result = qword_27CBA1390;
  if (!qword_27CBA1390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1390);
  }

  return result;
}

unint64_t sub_217BBE200()
{
  result = qword_27CBA1398;
  if (!qword_27CBA1398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1398);
  }

  return result;
}

uint64_t sub_217BBE254(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E6F4364656566 && a2 == 0xEE00617461446769 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217BBE41C(uint64_t a1)
{
  sub_217BBF3C8();
  v20 = *(v2 - 8);
  v21 = v2;
  v3 = *(v20 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BBF45C();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_217D881AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  (*(v13 + 16))(&v19 - v15, a1, v12);
  if (swift_dynamicCast())
  {
    sub_217BBE6AC(a1);
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v17 = v21;
    if (swift_dynamicCast())
    {
      sub_217BBE6AC(a1);
      (*(v20 + 8))(v5, v17);
    }
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_217BBE6AC(uint64_t a1)
{
  v89 = type metadata accessor for ArticleEngagementEvent.Model(0);
  v2 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v95 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BBF3C8();
  v99 = v4;
  v90 = *(v4 - 1);
  v5 = *(v90 + 64);
  MEMORY[0x28223BE20](v4);
  v97 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BBF4F0();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v85 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v88 = &v78 - v11;
  v12 = sub_217D891CC();
  v92 = *(v12 - 8);
  v93 = v12;
  v13 = *(v92 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v84 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v86 = &v78 - v16;
  v91 = sub_217D8928C();
  v94 = *(v91 - 8);
  v17 = *(v94 + 64);
  v18 = MEMORY[0x28223BE20](v91);
  v87 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v78 - v20;
  v22 = type metadata accessor for HeadlineExposureEvent.Model(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BBF45C();
  v27 = v26;
  v96 = *(v26 - 1);
  v28 = *(v96 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_217D881AC();
  v100 = *(v31 - 8);
  v32 = *(v100 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v78 - v33;
  v35 = a1;
  v36 = sub_217D8816C();
  v37 = sub_217D887BC();
  v79 = v22;
  v81 = v25;
  v82 = v37;
  v83 = v38;
  v39 = v98;
  v40 = v99;

  v41 = v100;
  (*(v100 + 16))(v34, v35, v31);
  if (!swift_dynamicCast())
  {
    v45 = v40;
    if (!swift_dynamicCast())
    {
      sub_217AE010C(v82, v83);
      return (*(v41 + 8))(v34, v31);
    }

    v80 = v34;
    v46 = v39[7];
    sub_217BBF5A8(&qword_2811C0968, type metadata accessor for ArticleEngagementEvent.Model);
    v47 = v95;
    v48 = v89;
    sub_217D88A1C();
    v60 = v47 + *(v48 + 24);
    v61 = *(v60 + 16);
    v62 = *(v60 + 24);
    LOBYTE(v101) = *(v47 + *(v48 + 20) + 17);
    v63 = ViewAction.rawValue.getter();
    if (v63 == 0x656E696C64616568 && v64 == 0xEB00000000706154)
    {

      v65 = v94;
      v66 = v87;
    }

    else
    {
      v70 = sub_217D89D4C();

      v65 = v94;
      v66 = v87;
      if ((v70 & 1) == 0)
      {
        sub_217AE010C(v82, v83);
LABEL_19:
        sub_217BBF548(v95, type metadata accessor for ArticleEngagementEvent.Model);
        (*(v90 + 8))(v97, v45);
        return (*(v100 + 8))(v80, v31);
      }
    }

    v71 = v91;
    (*(v65 + 104))(v66, *MEMORY[0x277D338F8], v91);
    v72 = v39[6];
    __swift_project_boxed_opaque_existential_1(v39 + 2, v39[5]);
    v73 = v85;
    sub_217D8931C();
    v75 = v92;
    v74 = v93;
    if ((*(v92 + 48))(v73, 1, v93) == 1)
    {
      (*(v65 + 8))(v66, v71);
      sub_217AE010C(v82, v83);
      sub_217BBF548(v73, sub_217BBF4F0);
    }

    else
    {
      v76 = v84;
      (*(v75 + 32))(v84, v73, v74);
      v77 = v39[5];
      v96 = v39[6];
      __swift_project_boxed_opaque_existential_1(v39 + 2, v77);
      sub_217D8932C();
      sub_217AE010C(v82, v83);
      (*(v75 + 8))(v76, v74);
      (*(v65 + 8))(v66, v71);
    }

    v45 = v99;
    goto LABEL_19;
  }

  v99 = v30;
  v80 = v34;
  v42 = v39[7];
  sub_217BBF5A8(&qword_2811C11B8, type metadata accessor for HeadlineExposureEvent.Model);
  v43 = v81;
  v44 = v79;
  sub_217D88A1C();
  v95 = v31;
  v97 = v27;
  v50 = v43 + *(v44 + 28);
  v51 = *(v50 + 16);
  v52 = *(v50 + 24);
  v53 = v94;
  v54 = v21;
  v55 = v91;
  (*(v94 + 104))(v21, *MEMORY[0x277D33900], v91);
  v56 = v39[6];
  __swift_project_boxed_opaque_existential_1(v39 + 2, v39[5]);
  v57 = v88;
  sub_217D8931C();
  v59 = v92;
  v58 = v93;
  if ((*(v92 + 48))(v57, 1, v93) == 1)
  {
    (*(v53 + 8))(v54, v55);
    sub_217AE010C(v82, v83);
    sub_217BBF548(v57, sub_217BBF4F0);
  }

  else
  {
    v67 = v86;
    (*(v59 + 32))(v86, v57, v58);
    v68 = v39[6];
    __swift_project_boxed_opaque_existential_1(v39 + 2, v39[5]);
    sub_217D8932C();
    sub_217AE010C(v82, v83);
    (*(v59 + 8))(v67, v58);
    (*(v53 + 8))(v54, v55);
  }

  v69 = v96;
  sub_217BBF548(v81, type metadata accessor for HeadlineExposureEvent.Model);
  (*(v69 + 8))(v99, v97);
  return (*(v100 + 8))(v80, v95);
}

uint64_t sub_217BBF250()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_217BBF3C8()
{
  if (!qword_2811C88B8)
  {
    type metadata accessor for ArticleEngagementEvent(255);
    sub_217BBF5A8(qword_2811C08B8, type metadata accessor for ArticleEngagementEvent);
    v0 = sub_217D881AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C88B8);
    }
  }
}

void sub_217BBF45C()
{
  if (!qword_2811C88C0)
  {
    type metadata accessor for HeadlineExposureEvent(255);
    sub_217BBF5A8(qword_2811C10C8, type metadata accessor for HeadlineExposureEvent);
    v0 = sub_217D881AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C88C0);
    }
  }
}

void sub_217BBF4F0()
{
  if (!qword_2811BCEC8)
  {
    sub_217D891CC();
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCEC8);
    }
  }
}

uint64_t sub_217BBF548(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217BBF5A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217BBF6B8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA13D0);
  __swift_project_value_buffer(v0, qword_27CBA13D0);
  return sub_217D8866C();
}

uint64_t FeedGroupLayoutFailureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FeedGroupLayoutFailureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutFailureEvent(0) + 20);
  sub_217A605CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutFailureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutFailureEvent(0) + 20);
  sub_217A605CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutFailureEvent.subgroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutFailureEvent(0) + 24);
  sub_217A605CC(0, &qword_27CBA13E8, sub_217BBFA6C, sub_217BBFAC0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217BBFA6C()
{
  result = qword_2811C3518;
  if (!qword_2811C3518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3518);
  }

  return result;
}

unint64_t sub_217BBFAC0()
{
  result = qword_2811C3520;
  if (!qword_2811C3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3520);
  }

  return result;
}

uint64_t FeedGroupLayoutFailureEvent.subgroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutFailureEvent(0) + 24);
  sub_217A605CC(0, &qword_27CBA13E8, sub_217BBFA6C, sub_217BBFAC0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutFailureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutFailureEvent(0) + 28);
  sub_217A605CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutFailureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutFailureEvent(0) + 28);
  sub_217A605CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutFailureEvent.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutFailureEvent(0) + 32);
  sub_217A605CC(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutFailureEvent.errorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutFailureEvent(0) + 32);
  sub_217A605CC(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutFailureEvent.diagnosticsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutFailureEvent(0) + 36);
  sub_217A605CC(0, &qword_27CBA13F0, sub_217B5E9C4, sub_217B5EA1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutFailureEvent.diagnosticsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutFailureEvent(0) + 36);
  sub_217A605CC(0, &qword_27CBA13F0, sub_217B5E9C4, sub_217B5EA1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutFailureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FeedGroupLayoutFailureEvent(0);
  v5 = v4[5];
  sub_217A605CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A605CC(0, &qword_27CBA13E8, sub_217BBFA6C, sub_217BBFAC0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A605CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217A605CC(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217A605CC(0, &qword_27CBA13F0, sub_217B5E9C4, sub_217B5EA1C);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v12, v15);
}

uint64_t FeedGroupLayoutFailureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedGroupLayoutFailureEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t FeedGroupLayoutFailureEvent.Model.subgroupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedGroupLayoutFailureEvent.Model(0) + 24));
  v5 = v3[5];
  v15 = v3[4];
  v4 = v15;
  v16 = v5;
  v17 = v3[6];
  v6 = v17;
  v7 = v3[3];
  v13 = v3[2];
  v8 = v13;
  v14 = v7;
  v9 = v3[1];
  v12[0] = *v3;
  v12[1] = v9;
  *a1 = v12[0];
  a1[1] = v9;
  a1[4] = v4;
  a1[5] = v5;
  a1[2] = v8;
  a1[3] = v7;
  a1[6] = v6;
  return sub_217BC0508(v12, &v11);
}

uint64_t FeedGroupLayoutFailureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedGroupLayoutFailureEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t FeedGroupLayoutFailureEvent.Model.errorData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedGroupLayoutFailureEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_217BC060C(v4, v5, v6, v7);
}

uint64_t sub_217BC060C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t FeedGroupLayoutFailureEvent.Model.diagnosticsData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedGroupLayoutFailureEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 FeedGroupLayoutFailureEvent.Model.init(eventData:feedData:subgroupData:viewData:errorData:diagnosticsData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a2;
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  v14 = *a4;
  v15 = a4[1];
  v16 = *(a4 + 8);
  v32 = *a6;
  v30 = *(a5 + 32);
  v31 = a6[1];
  v17 = sub_217D8899C();
  v28 = *(a5 + 16);
  v29 = *a5;
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for FeedGroupLayoutFailureEvent.Model(0);
  v19 = a7 + v18[5];
  *v19 = v11;
  *(v19 + 8) = v12;
  *(v19 + 16) = v13;
  v20 = (a7 + v18[6]);
  v21 = a3[5];
  v20[4] = a3[4];
  v20[5] = v21;
  v20[6] = a3[6];
  v22 = a3[1];
  *v20 = *a3;
  v20[1] = v22;
  v23 = a3[3];
  v20[2] = a3[2];
  v20[3] = v23;
  v24 = a7 + v18[7];
  *v24 = v14;
  *(v24 + 8) = v15;
  *(v24 + 16) = v16;
  v25 = a7 + v18[8];
  result = v29;
  *v25 = v29;
  *(v25 + 16) = v28;
  *(v25 + 32) = v30;
  v27 = (a7 + v18[9]);
  *v27 = v32;
  v27[1] = v31;
  return result;
}

uint64_t sub_217BC07D4()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6174614477656976;
  v4 = 0x746144726F727265;
  if (v1 != 4)
  {
    v4 = 0x74736F6E67616964;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6174614464656566;
  if (v1 != 1)
  {
    v5 = 0x70756F7267627573;
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

uint64_t sub_217BC08A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BC1DC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BC08CC(uint64_t a1)
{
  v2 = sub_217BC0D6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BC0908(uint64_t a1)
{
  v2 = sub_217BC0D6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedGroupLayoutFailureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BC14A4(0, &qword_27CBA13F8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v35 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BC0D6C();
  sub_217D89E7C();
  LOBYTE(v49[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for FeedGroupLayoutFailureEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = *(v13 + 1);
    v15 = *(v13 + 2);
    v55 = *v13;
    v56 = v14;
    v57 = v15;
    v60 = 1;
    sub_217A5BA2C();

    sub_217D89CAC();

    v16 = (v3 + v12[6]);
    v17 = v16[3];
    v18 = v16[5];
    v52 = v16[4];
    v53 = v18;
    v19 = v16[5];
    v54 = v16[6];
    v20 = v16[1];
    v49[0] = *v16;
    v49[1] = v20;
    v21 = v16[3];
    v23 = *v16;
    v22 = v16[1];
    v50 = v16[2];
    v51 = v21;
    v46 = v52;
    v47 = v19;
    v48 = v16[6];
    v42 = v23;
    v43 = v22;
    v44 = v50;
    v45 = v17;
    v59 = 2;
    sub_217BC0508(v49, v41);
    sub_217BBFAC0();
    sub_217D89CAC();
    v41[4] = v46;
    v41[5] = v47;
    v41[6] = v48;
    v41[0] = v42;
    v41[1] = v43;
    v41[2] = v44;
    v41[3] = v45;
    sub_217B93D54(v41);
    v25 = v3 + v12[7];
    v26 = *v25;
    v27 = *(v25 + 8);
    LOWORD(v25) = *(v25 + 16);
    v36 = v26;
    v37 = v27;
    LOWORD(v38) = v25;
    v58 = 3;
    sub_217A5E790();

    sub_217D89CAC();

    v28 = (v3 + v12[8]);
    v29 = v28[1];
    v30 = v28[2];
    v31 = v28[3];
    v32 = v28[4];
    v36 = *v28;
    v37 = v29;
    v38 = v30;
    v39 = v31;
    v40 = v32;
    v58 = 4;
    sub_217BC060C(v36, v29, v30, v31);
    sub_217A60BE4();
    sub_217D89C3C();
    sub_217BC0DC0(v36, v37, v38, v39);
    v33 = (v3 + v12[9]);
    v34 = v33[1];
    v36 = *v33;
    v37 = v34;
    v58 = 5;
    sub_217B5EA1C();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217BC0D6C()
{
  result = qword_27CBA1400;
  if (!qword_27CBA1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1400);
  }

  return result;
}

uint64_t sub_217BC0DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t FeedGroupLayoutFailureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_217D8899C();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BC14A4(0, &qword_27CBA1408, MEMORY[0x277D844C8]);
  v36 = v7;
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = type metadata accessor for FeedGroupLayoutFailureEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BC0D6C();
  v37 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v34;
  v17 = v14;
  v41[0] = 0;
  sub_217A602A0(&qword_2811C8408);
  v18 = v35;
  v19 = v36;
  sub_217D89BCC();
  (*(v33 + 32))(v17, v18, v4);
  LOBYTE(v38) = 1;
  sub_217A5B978();
  sub_217D89BCC();
  v20 = v17 + v11[5];
  *v20 = v41[0];
  *(v20 + 8) = *&v41[8];
  v48 = 2;
  sub_217BBFA6C();
  v35 = 0;
  sub_217D89BCC();
  v21 = (v17 + v11[6]);
  v22 = v45;
  v21[4] = v44;
  v21[5] = v22;
  v21[6] = v46;
  v23 = *&v41[16];
  *v21 = *v41;
  v21[1] = v23;
  v24 = v43;
  v21[2] = v42;
  v21[3] = v24;
  v47 = 3;
  sub_217A5E738();
  sub_217D89BCC();
  v25 = *(&v38 + 1);
  v26 = v39;
  v27 = v17 + v11[7];
  *v27 = v38;
  *(v27 + 8) = v25;
  *(v27 + 16) = v26;
  v47 = 4;
  sub_217A60B90();
  sub_217D89B5C();
  v28 = v40;
  v29 = v17 + v11[8];
  v30 = v39;
  *v29 = v38;
  *(v29 + 16) = v30;
  *(v29 + 32) = v28;
  v47 = 5;
  sub_217B5E9C4();
  sub_217D89B5C();
  (*(v16 + 8))(v37, v19);
  *(v17 + v11[9]) = v38;
  sub_217BC1508(v17, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217BC156C(v17);
}

void sub_217BC14A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BC0D6C();
    v7 = a3(a1, &type metadata for FeedGroupLayoutFailureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BC1508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedGroupLayoutFailureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BC156C(uint64_t a1)
{
  v2 = type metadata accessor for FeedGroupLayoutFailureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BC16A0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A605CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A605CC(0, &qword_27CBA13E8, sub_217BBFA6C, sub_217BBFAC0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A605CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217A605CC(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217A605CC(0, &qword_27CBA13F0, sub_217B5E9C4, sub_217B5EA1C);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v13, v16);
}

void sub_217BC19AC()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A605CC(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
    if (v1 <= 0x3F)
    {
      sub_217A605CC(319, &qword_27CBA13E8, sub_217BBFA6C, sub_217BBFAC0);
      if (v2 <= 0x3F)
      {
        sub_217A605CC(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
        if (v3 <= 0x3F)
        {
          sub_217A605CC(319, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
          if (v4 <= 0x3F)
          {
            sub_217A605CC(319, &qword_27CBA13F0, sub_217B5E9C4, sub_217B5EA1C);
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

void sub_217BC1BD0()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_27CBA1430);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_27CBA1438);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217BC1CBC()
{
  result = qword_27CBA1440;
  if (!qword_27CBA1440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1440);
  }

  return result;
}

unint64_t sub_217BC1D14()
{
  result = qword_27CBA1448;
  if (!qword_27CBA1448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1448);
  }

  return result;
}

unint64_t sub_217BC1D6C()
{
  result = qword_27CBA1450;
  if (!qword_27CBA1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1450);
  }

  return result;
}

uint64_t sub_217BC1DC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70756F7267627573 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746144726F727265 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74736F6E67616964 && a2 == 0xEF61746144736369)
  {

    return 5;
  }

  else
  {
    v6 = sub_217D89D4C();

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

NewsAnalytics::NotificationSubscribedType_optional __swiftcall NotificationSubscribedType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NotificationSubscribedType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x7374726F7073;
  if (v1 != 5)
  {
    v3 = 0x73656C7A7A7570;
  }

  v4 = 0x6E6974656B72616DLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C656E6E616863;
  if (v1 != 1)
  {
    v5 = 0x657573734977656ELL;
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

unint64_t sub_217BC2124()
{
  result = qword_27CBA1458;
  if (!qword_27CBA1458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1458);
  }

  return result;
}

uint64_t sub_217BC2184()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

void sub_217BC22AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x7374726F7073;
  if (v2 != 5)
  {
    v6 = 0x73656C7A7A7570;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE900000000000067;
  v8 = 0x6E6974656B72616DLL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x8000000217DCB160;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6C656E6E616863;
  if (v2 != 1)
  {
    v10 = 0x657573734977656ELL;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_217BC2450()
{
  result = qword_27CBA1460;
  if (!qword_27CBA1460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1460);
  }

  return result;
}

uint64_t sub_217BC24A4()
{
  sub_217A55A08(0, &qword_2811BCF18, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_217D88DDC();
}

uint64_t sub_217BC2520(uint64_t a1)
{
  v349 = *MEMORY[0x277D85DE8];
  v296 = type metadata accessor for SportsSessionEndEvent.Model(0);
  v2 = *(*(v296 - 8) + 64);
  MEMORY[0x28223BE20](v296);
  v297 = &v271 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BC7F34();
  v5 = v4;
  v291 = *(v4 - 8);
  v6 = *(v291 + 64);
  MEMORY[0x28223BE20](v4);
  v290 = &v271 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_217BC7E50(0, &qword_27CBA1478, MEMORY[0x277CEACA0], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v292 = &v271 - v11;
  v12 = sub_217D889CC();
  v298 = *(v12 - 8);
  v299 = v12;
  v13 = *(v298 + 64);
  MEMORY[0x28223BE20](v12);
  v302 = &v271 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_217D87CCC();
  v306 = *(v15 - 8);
  v307 = v15;
  v16 = *(v306 + 64);
  MEMORY[0x28223BE20](v15);
  v305 = &v271 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = sub_217D8899C();
  v311 = *(v326 - 8);
  v18 = *(v311 + 64);
  v19 = MEMORY[0x28223BE20](v326);
  v303 = &v271 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v301 = &v271 - v21;
  v293 = type metadata accessor for AppSessionEndEvent.Model(0);
  v22 = *(*(v293 - 8) + 64);
  MEMORY[0x28223BE20](v293);
  v295 = &v271 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v318 = sub_217D8806C();
  v309 = *(v318 - 8);
  v24 = *(v309 + 64);
  v25 = MEMORY[0x28223BE20](v318);
  v316 = &v271 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v308 = &v271 - v27;
  v325 = sub_217D8800C();
  v310 = *(v325 - 8);
  v28 = v310[8];
  MEMORY[0x28223BE20](v325);
  v324 = &v271 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BC7E50(0, &qword_2811C8400, MEMORY[0x277CEAEB0], v8);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v323 = &v271 - v32;
  sub_217BC7E50(0, &unk_2811C8A30, MEMORY[0x277CEAC78], v8);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v332 = &v271 - v35;
  sub_217BC7E50(0, &qword_2811C8C80, MEMORY[0x277CC9578], v8);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v327 = &v271 - v38;
  v331 = sub_217D87C9C();
  v328 = *(v331 - 1);
  v39 = *(v328 + 64);
  MEMORY[0x28223BE20](v331);
  *&v329 = &v271 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_217D8797C();
  v313 = *(v41 - 8);
  v314 = v41;
  v42 = *(v313 + 64);
  MEMORY[0x28223BE20](v41);
  v312 = (&v271 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217BC7FC8();
  v315 = v44;
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44);
  v300 = &v271 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v304 = &v271 - v49;
  MEMORY[0x28223BE20](v48);
  v317 = &v271 - v50;
  *&v330 = sub_217D8808C();
  v322 = *(v330 - 8);
  v51 = *(v322 + 64);
  v52 = MEMORY[0x28223BE20](v330);
  v319 = &v271 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v320 = &v271 - v55;
  MEMORY[0x28223BE20](v54);
  v57 = &v271 - v56;
  v321 = type metadata accessor for Session();
  v58 = *(*(v321 - 8) + 64);
  MEMORY[0x28223BE20](v321);
  v60 = &v271 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_217D889FC();
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  v65 = (&v271 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  v333 = a1;
  v66 = sub_217D887EC();
  if (v66 != 6 && v66)
  {
    goto LABEL_5;
  }

  v289 = v5;
  sub_217D8884C();
  if (v67)
  {

LABEL_5:
    result = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  v287 = v60;
  v70 = sub_217D88A3C();
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  swift_allocObject();
  v73 = sub_217D88A2C();
  *v65 = sub_217BC5340;
  v65[1] = 0;
  (*(v62 + 104))(v65, *MEMORY[0x277D6C9B0], v61);
  sub_217D88A0C();
  v74 = objc_opt_self();
  sub_217D8883C();
  sub_217BC8030();
  v75 = sub_217D896CC();

  *v338 = 0;
  v76 = [v74 dataWithJSONObject:v75 options:0 error:v338];

  v77 = *v338;
  if (!v76)
  {
    v82 = v77;
    sub_217D87B2C();

    swift_willThrow();
    goto LABEL_10;
  }

  v78 = sub_217D87C0C();
  v80 = v79;

  sub_217BC7E50(0, &qword_2811BCE68, MEMORY[0x277CEAC80], MEMORY[0x277D83940]);
  sub_217BC8094();
  v81 = v334;
  sub_217D88A1C();
  if (v81)
  {
    sub_217AE010C(v78, v80);
LABEL_10:

    goto LABEL_6;
  }

  v277 = v80;
  v278 = v78;
  v279 = v73;
  v83 = *v338;
  sub_217D887FC();
  v84 = sub_217D8947C();

  *v338 = 0;
  v85 = [v74 dataWithJSONObject:v84 options:0 error:v338];

  v86 = *v338;
  if (!v85)
  {
    v90 = v86;

    sub_217D87B2C();

    swift_willThrow();
    sub_217AE010C(v278, v277);
    goto LABEL_10;
  }

  v276 = v83;
  v87 = sub_217D87C0C();
  v89 = v88;

  sub_217BC816C(&qword_2811BD390, type metadata accessor for Session);
  sub_217D88A1C();
  v272 = v87;
  v273 = v89;
  v334 = 0;
  v91 = *(v276 + 16);
  v92 = MEMORY[0x277D84F90];
  v274 = v91;
  if (v91)
  {
    v285 = *(v322 + 16);
    v286 = v322 + 16;
    v93 = v276 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v94 = *(v322 + 72);
    v283 = (v322 + 8);
    v284 = v94;
    v95 = v327;
    v281 = (v310 + 1);
    v282 = (v328 + 56);
    v280 = (v311 + 48);
    v275 = (v311 + 8);
    v288 = (v328 + 32);
    v96 = v330;
    while (1)
    {
      v310 = v92;
      v285(v57, v93, v96);
      sub_217D8803C();
      v98 = v332;
      v99 = sub_217D8802C();
      v100 = v96;
      v101 = *(v99 - 8);
      if ((*(v101 + 48))(v98, 1, v99) != 1)
      {
        break;
      }

      sub_217BC81B4(v98, &unk_2811C8A30, MEMORY[0x277CEAC78], MEMORY[0x277D83D88], sub_217BC7E50);
      v102 = v324;
      sub_217D8804C();
      v103 = v323;
      sub_217D87FFC();
      (*v281)(v102, v325);
      v104 = v326;
      if ((*v280)(v103, 1, v326) != 1)
      {
        sub_217D8896C();
        (*v283)(v57, v330);
        (*v275)(v103, v104);
LABEL_23:
        v105 = v331;
        (*v282)(v95, 0, 1, v331);
        v106 = *v288;
        (*v288)(v329, v95, v105);
        v92 = v310;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_217B5B1F0(0, v92[2] + 1, 1, v92);
        }

        v108 = v92[2];
        v107 = v92[3];
        if (v108 >= v107 >> 1)
        {
          v92 = sub_217B5B1F0(v107 > 1, v108 + 1, 1, v92);
        }

        v92[2] = v108 + 1;
        v106(v92 + ((*(v328 + 80) + 32) & ~*(v328 + 80)) + *(v328 + 72) * v108, v329, v331);
        v96 = v330;
        goto LABEL_18;
      }

      v96 = v330;
      (*v283)(v57, v330);
      v97 = MEMORY[0x277D83D88];
      sub_217BC81B4(v103, &qword_2811C8400, MEMORY[0x277CEAEB0], MEMORY[0x277D83D88], sub_217BC7E50);
      (*v282)(v95, 1, 1, v331);
      sub_217BC81B4(v95, &qword_2811C8C80, MEMORY[0x277CC9578], v97, sub_217BC7E50);
      v92 = v310;
LABEL_18:
      v93 += v284;
      if (!--v91)
      {
        goto LABEL_28;
      }
    }

    sub_217D8801C();
    (*(v101 + 8))(v98, v99);
    v95 = v327;
    sub_217D87C5C();
    (*v283)(v57, v100);
    goto LABEL_23;
  }

LABEL_28:
  v109 = v317;
  sub_217BC5408(v317, v317 + *(v315 + 48), v333, v92);

  v110 = sub_217D879BC();
  v111 = *(v110 + 48);
  v112 = *(v110 + 52);
  swift_allocObject();
  v113 = sub_217D879AC();
  v115 = v312;
  v114 = v313;
  *v312 = sub_217BC5EB8;
  v115[1] = 0;
  (*(v114 + 104))(v115, *MEMORY[0x277CC8770], v314);
  sub_217D8798C();
  v116 = sub_217D887EC();
  if (v116 <= 5)
  {
    v117 = v287;
    v118 = v277;
    if ((v116 - 1) >= 5 && !v116)
    {
      v332 = v113;
      v119 = 0;
      v120 = (v322 + 16);
      v121 = v308;
      v122 = (v309 + 8);
      v123 = (v322 + 8);
      while (v274 != v119)
      {
        if (v119 >= *(v276 + 16))
        {
          goto LABEL_74;
        }

        (*(v322 + 16))(v320, v276 + ((*(v322 + 80) + 32) & ~*(v322 + 80)) + *(v322 + 72) * v119, v330);
        sub_217D8807C();
        v125 = sub_217D8805C();
        v127 = v126;
        (*v122)(v121, v318);
        if (v125 == 0xD000000000000012 && 0x8000000217DCF320 == v127)
        {

          (*v123)(v320, v330);
          goto LABEL_47;
        }

        ++v119;
        v124 = sub_217D89D4C();

        (*v123)(v320, v330);
        if (v124)
        {
          goto LABEL_47;
        }
      }

      LODWORD(v323) = sub_217D8882C();
      if (v323)
      {
        v157 = 7;
      }

      else
      {
        v157 = 4;
      }

      LODWORD(v324) = v157;
      v158 = v305;
      sub_217D87CBC();
      sub_217D87CAC();
      *&v330 = v159;
      (*(v306 + 8))(v158, v307);
      v160 = v317;
      v161 = v304;
      sub_217BC8214(v317, v304);
      v162 = v315;
      v163 = *(v315 + 48);
      v164 = v287[1];
      *&v329 = *v287;
      v165 = v287[2];
      v166 = v287[3];

      sub_217D8897C();
      v167 = *(v328 + 8);
      v168 = v331;
      v167(v161, v331);
      sub_217BC8214(v160, v161);
      *&v330 = *(v162 + 48);
      v169 = v300;
      sub_217BC8214(v160, v300);
      v170 = v169 + *(v162 + 48);
      sub_217D889BC();
      v167(v169, v168);
      v167(v161 + v330, v168);
      v171 = v321;
      v172 = v287 + *(v321 + 36);
      v174 = *v172;
      v173 = *(v172 + 1);
      v175 = *(v172 + 2);
      *&v329 = *(v172 + 3);
      v176 = *(v172 + 4);
      *&v330 = *(v172 + 5);
      v177 = v172[48];
      sub_217D887FC();
      if (v175 == 1)
      {
        *v338 = 0;
        *&v338[8] = 0xE000000000000000;
        sub_217D899FC();

        *v338 = 0xD00000000000003FLL;
        *&v338[8] = 0x8000000217DCF2E0;
        sub_217BC816C(&qword_27CBA1480, MEMORY[0x277CC9578]);
        v178 = v317;
        v179 = sub_217D89CFC();
        MEMORY[0x21CEACC70](v179);

        MEMORY[0x21CEACC70](0x73736573206E6920, 0xEC0000003D6E6F69);
        v180 = sub_217D8949C();
        v182 = v181;

        MEMORY[0x21CEACC70](v180, v182);

        v183 = *v338;
        v184 = *&v338[8];
        sub_217BC8278();
        swift_allocError();
        *v185 = v183;
        v185[1] = v184;
        swift_willThrow();

        sub_217AE010C(v272, v273);
        sub_217AE010C(v278, v277);

        (*(v298 + 8))(v302, v299);
        (*(v311 + 8))(v301, v326);
        v186 = v178;
LABEL_63:
        sub_217BC85C4(v186, sub_217BC7FC8);
        v156 = v287;
LABEL_64:
        result = sub_217BC85C4(v156, type metadata accessor for Session);
        goto LABEL_6;
      }

      v316 = v174;
      *&v345 = v174;
      *(&v345 + 1) = v173;
      v318 = v173;
      v319 = v175;
      *&v346 = v175;
      *(&v346 + 1) = v329;
      v322 = v176;
      *&v347 = v176;
      *(&v347 + 1) = v330;
      LODWORD(v320) = v177;
      v348 = v177;
      sub_217ACC004(&v345, v338);

      v193 = (v287 + v171[14]);
      v194 = v193[1];
      v315 = *v193;
      v195 = v193[2];
      v196 = v193[3];
      v197 = v193[5];
      v325 = v193[4];
      v198 = v193[6];
      v327 = v197;
      v328 = v198;
      sub_217D887FC();
      if (!v194)
      {
        *v338 = 0;
        *&v338[8] = 0xE000000000000000;
        sub_217D899FC();

        *v338 = 0xD00000000000002ELL;
        *&v338[8] = 0x8000000217DCF340;
        sub_217BC816C(&qword_27CBA1480, MEMORY[0x277CC9578]);
        v217 = v317;
        v218 = sub_217D89CFC();
        MEMORY[0x21CEACC70](v218);

        MEMORY[0x21CEACC70](0x73736573206E6920, 0xEC0000003D6E6F69);
        v219 = sub_217D8949C();
        v221 = v220;

        MEMORY[0x21CEACC70](v219, v221);

        v222 = *v338;
        v223 = *&v338[8];
        sub_217BC8278();
        swift_allocError();
        *v224 = v222;
        v224[1] = v223;
        swift_willThrow();

        sub_217AE010C(v272, v273);
        sub_217AE010C(v278, v277);

        sub_217BC84CC(v316, v318, v319);
        (*(v298 + 8))(v302, v299);
        (*(v311 + 8))(v301, v326);
        v186 = v217;
        goto LABEL_63;
      }

      v199 = v315;
      *&v341 = v315;
      *(&v341 + 1) = v194;
      v312 = v194;
      v313 = v195;
      *&v342 = v195;
      *(&v342 + 1) = v196;
      v314 = v196;
      *&v343 = v325;
      *(&v343 + 1) = v327;
      v344 = v328;
      sub_217B9E08C(&v341, v338);

      v200 = v287;
      v201 = (v287 + v171[17]);
      v202 = *v201;
      v203 = v201[1];
      sub_217D887FC();
      if (!v202)
      {
        *v338 = 0;
        *&v338[8] = 0xE000000000000000;
        sub_217D899FC();

        *v338 = 0xD000000000000036;
        *&v338[8] = 0x8000000217DCF370;
        sub_217BC816C(&qword_27CBA1480, MEMORY[0x277CC9578]);
        v206 = v317;
        v225 = sub_217D89CFC();
        MEMORY[0x21CEACC70](v225);

        MEMORY[0x21CEACC70](0x73736573206E6920, 0xEC0000003D6E6F69);
        v226 = sub_217D8949C();
        v228 = v227;

        MEMORY[0x21CEACC70](v226, v228);

        v229 = *v338;
        v230 = *&v338[8];
        sub_217BC8278();
        swift_allocError();
        *v231 = v229;
        v231[1] = v230;
        swift_willThrow();

        sub_217AE010C(v272, v273);
        sub_217AE010C(v278, v277);

        sub_217BC84CC(v316, v318, v319);
        sub_217BC8514(v199, v312);
        goto LABEL_66;
      }

      v310 = v202;
      *&v340 = v202;
      *(&v340 + 1) = v203;
      sub_217A55A60(&v340, v338);

      v204 = v200 + v171[15];
      LODWORD(v309) = *v204;
      v205 = v204[4];
      sub_217D887FC();
      if (v205)
      {
        *v338 = 0;
        *&v338[8] = 0xE000000000000000;
        sub_217D899FC();

        *v338 = 0xD000000000000030;
        *&v338[8] = 0x8000000217DCF3B0;
        sub_217BC816C(&qword_27CBA1480, MEMORY[0x277CC9578]);
        v206 = v317;
        v207 = sub_217D89CFC();
        MEMORY[0x21CEACC70](v207);

        MEMORY[0x21CEACC70](0x73736573206E6920, 0xEC0000003D6E6F69);
        v208 = sub_217D8949C();
        v210 = v209;

        MEMORY[0x21CEACC70](v208, v210);

        v211 = *v338;
        v212 = *&v338[8];
        sub_217BC8278();
        swift_allocError();
        *v213 = v211;
        v213[1] = v212;
        swift_willThrow();

        sub_217AE010C(v272, v273);
        sub_217AE010C(v278, v277);

        sub_217BC84CC(v316, v318, v319);
        sub_217BC8514(v199, v312);

LABEL_66:
        (*(v298 + 8))(v302, v299);
        (*(v311 + 8))(v301, v326);
        sub_217BC85C4(v206, sub_217BC7FC8);
        v156 = v200;
        goto LABEL_64;
      }

      v232 = v199;

      v120 = *(v200 + v171[18]);
      sub_217D887FC();
      if (!v120)
      {
        *v338 = 0;
        *&v338[8] = 0xE000000000000000;
        sub_217D899FC();

        *v338 = 0xD000000000000036;
        *&v338[8] = 0x8000000217DCF3F0;
        sub_217BC816C(&qword_27CBA1480, MEMORY[0x277CC9578]);
        v234 = v317;
        v235 = sub_217D89CFC();
        MEMORY[0x21CEACC70](v235);

        MEMORY[0x21CEACC70](0x73736573206E6920, 0xEC0000003D6E6F69);
        v236 = sub_217D8949C();
        v238 = v237;

        MEMORY[0x21CEACC70](v236, v238);

        v239 = *v338;
        v240 = *&v338[8];
        sub_217BC8278();
        swift_allocError();
        *v241 = v239;
        v241[1] = v240;
        swift_willThrow();

        sub_217AE010C(v272, v273);
        sub_217AE010C(v278, v277);

        sub_217BC84CC(v316, v318, v319);
        sub_217BC8514(v232, v312);

        (*(v298 + 8))(v302, v299);
        (*(v311 + 8))(v301, v326);
        sub_217BC85C4(v234, sub_217BC7FC8);
        v156 = v287;
        goto LABEL_64;
      }

      memset(v339, 0, 64);
      sub_217BC81B4(v339, &qword_2811C2DE0, &type metadata for TabiRequestSummary, MEMORY[0x277D83D88], sub_217A55A08);
      if (v323)
      {
      }

      else
      {
        v242 = sub_217D89D4C();

        if ((v242 & 1) == 0)
        {
LABEL_75:
          v247 = 3;
LABEL_76:
          sub_217BC8584(v338);
          v248 = v292;
          sub_217D8881C();
          sub_217BC5FB4(v248, &v335);
          sub_217BC81B4(v248, &qword_27CBA1478, MEMORY[0x277CEACA0], MEMORY[0x277D83D88], sub_217BC7E50);
          v249 = v335;
          LOBYTE(v248) = v336;
          v250 = v295;
          (*(v311 + 32))(v295, v301, v326);
          v251 = v293;
          (*(v298 + 32))(v250 + *(v293 + 20), v302, v299);
          v252 = v250 + v251[6];
          v253 = v346;
          *v252 = v345;
          *(v252 + 16) = v253;
          *(v252 + 32) = v347;
          *(v252 + 48) = v348;
          v254 = v250 + v251[7];
          v255 = v342;
          *v254 = v341;
          *(v254 + 16) = v255;
          *(v254 + 32) = v343;
          *(v254 + 48) = v344;
          v256 = (v250 + v251[8]);
          *v256 = xmmword_217DA3B00;
          v256[1] = 0u;
          v256[2] = 0u;
          v256[3] = 0u;
          v256[4] = 0u;
          v256[5] = 0u;
          *(v250 + v251[9]) = v340;
          *(v250 + v251[10]) = v309;
          *(v250 + v251[11]) = v324;
          memcpy((v250 + v251[12]), v338, 0x144uLL);
          *(v250 + v251[13]) = v120;
          v257 = v250 + v251[14];
          *v257 = 0x6E776F6E6B6E75;
          *(v257 + 8) = 0xE700000000000000;
          v258 = MEMORY[0x277D84F90];
          *(v257 + 16) = MEMORY[0x277D84F90];
          *(v257 + 24) = v258;
          *(v257 + 32) = 0;
          *(v257 + 33) = *v337;
          *(v257 + 36) = *&v337[3];
          *(v257 + 40) = 0u;
          *(v257 + 56) = 0u;
          *(v257 + 72) = 0u;
          *(v257 + 88) = 0u;
          *(v257 + 104) = 0x6E776F6E6B6E75;
          *(v257 + 112) = 0xE700000000000000;
          *(v250 + v251[15]) = 0;
          v259 = v250 + v251[16];
          *v259 = 0;
          *(v259 + 4) = 1;
          *(v250 + v251[17]) = v247;
          v260 = v250 + v251[18];
          *(v260 + 2) = v248;
          *v260 = v249;
          sub_217BC816C(&qword_2811C3FA8, type metadata accessor for AppSessionEndEvent.Model);
          v261 = v334;
          sub_217D8799C();
          if (v261)
          {

            sub_217AE010C(v272, v273);
            sub_217AE010C(v278, v277);

            sub_217BC85C4(v295, type metadata accessor for AppSessionEndEvent.Model);
            sub_217BC85C4(v317, sub_217BC7FC8);
            result = sub_217BC85C4(v287, type metadata accessor for Session);
          }

          else
          {
            v262 = objc_allocWithZone(sub_217D887CC());
            v263 = sub_217D887DC();
            sub_217D887FC();
            v264 = sub_217BC82CC(v263);
            v334 = 0;
            v265 = v264;

            sub_217D8884C();
            sub_217D887EC();
            type metadata accessor for AppSessionEndEvent(0);
            sub_217BC816C(qword_2811C3ED8, type metadata accessor for AppSessionEndEvent);
            v266 = v290;
            sub_217D8817C();
            v267 = *(v294 + 32);
            sub_217D885AC();
            sub_217A53600(0, &unk_2811BC478, &qword_2811C8478);
            v268 = swift_allocObject();
            *(v268 + 16) = xmmword_217D8D8F0;
            v269 = v289;
            *(v268 + 56) = v289;
            *(v268 + 64) = sub_217BC816C(&qword_2811C8880, sub_217BC7F34);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v268 + 32));
            (*(v291 + 32))(boxed_opaque_existential_1, v266, v269);

            sub_217AE010C(v272, v273);
            sub_217AE010C(v278, v277);

            sub_217BC85C4(v295, type metadata accessor for AppSessionEndEvent.Model);
            sub_217BC85C4(v317, sub_217BC7FC8);
            sub_217BC85C4(v287, type metadata accessor for Session);
            result = v268;
          }

          goto LABEL_6;
        }
      }

      v243 = v294;
      v244 = *(v294 + 16);

      sub_217BB3BE4(v338);

      v245 = v338[0];
      v246 = *(v243 + 16);

      sub_217BB3BF4(&v335);

      v247 = v245 | (v335 << 8);
      goto LABEL_76;
    }

LABEL_39:

    sub_217AE010C(v272, v273);
    sub_217AE010C(v278, v118);

    sub_217BC85C4(v109, sub_217BC7FC8);
    sub_217BC85C4(v117, type metadata accessor for Session);
    result = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  v117 = v287;
  v118 = v277;
  if (v116 != 6)
  {
    goto LABEL_39;
  }

  v332 = v113;
  v128 = 0;
  v120 = (v309 + 8);
  v129 = (v322 + 8);
  v130 = v316;
  while (v274 != v128)
  {
    if (v128 >= *(v276 + 16))
    {
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    (*(v322 + 16))(v319, v276 + ((*(v322 + 80) + 32) & ~*(v322 + 80)) + *(v322 + 72) * v128, v330);
    sub_217D8807C();
    v132 = sub_217D8805C();
    v134 = v133;
    (*v120)(v130, v318);
    if (v132 == 0xD000000000000015 && 0x8000000217DCF2C0 == v134)
    {

      (*v129)(v319, v330);
LABEL_47:

      sub_217AE010C(v272, v273);
      sub_217AE010C(v278, v277);

      sub_217BC85C4(v317, sub_217BC7FC8);
      sub_217BC85C4(v287, type metadata accessor for Session);
      goto LABEL_5;
    }

    ++v128;
    v131 = sub_217D89D4C();

    (*v129)(v319, v330);
    if (v131)
    {
      goto LABEL_47;
    }
  }

  v135 = v305;
  sub_217D87CBC();
  *&v330 = sub_217D87CAC();
  (*(v306 + 8))(v135, v307);
  v136 = v304;
  sub_217BC8214(v317, v304);
  v137 = *(v315 + 48);
  v138 = v287;
  v139 = *v287;
  v140 = v287[1];
  v141 = v287[2];
  v142 = v287[3];

  sub_217D8897C();
  (*(v328 + 8))(v136, v331);
  v143 = v138 + *(v321 + 36);
  v144 = *(v143 + 1);
  v329 = *v143;
  v330 = v144;
  v145 = *(v143 + 4);
  v146 = *(v143 + 5);
  v147 = v143[48];
  sub_217D887FC();
  if (v330 == 1)
  {
    *v338 = 0;
    *&v338[8] = 0xE000000000000000;
    sub_217D899FC();

    *v338 = 0xD00000000000003FLL;
    *&v338[8] = 0x8000000217DCF2E0;
    sub_217BC816C(&qword_27CBA1480, MEMORY[0x277CC9578]);
    v148 = v317;
    v149 = sub_217D89CFC();
    MEMORY[0x21CEACC70](v149);

    MEMORY[0x21CEACC70](0x73736573206E6920, 0xEC0000003D6E6F69);
    v150 = sub_217D8949C();
    v152 = v151;

    MEMORY[0x21CEACC70](v150, v152);

    v153 = *v338;
    v154 = *&v338[8];
    sub_217BC8278();
    swift_allocError();
    *v155 = v153;
    v155[1] = v154;
    swift_willThrow();

    sub_217AE010C(v272, v273);
    sub_217AE010C(v278, v277);

    (*(v311 + 8))(v303, v326);
    sub_217BC85C4(v148, sub_217BC7FC8);
    v156 = v138;
    goto LABEL_64;
  }

  *v338 = v329;
  *&v338[16] = v330;
  *&v338[32] = v145;
  *&v338[40] = v146;
  v338[48] = v147;
  sub_217ACC004(v338, v339);

  v187 = v297;
  (*(v311 + 32))(v297, v303, v326);
  v188 = v296;
  v189 = v187 + *(v296 + 20);
  v190 = *&v338[16];
  *v189 = *v338;
  *(v189 + 16) = v190;
  *(v189 + 32) = *&v338[32];
  *(v189 + 48) = v338[48];
  *(v187 + *(v188 + 24)) = MEMORY[0x277D84F90];
  sub_217A53600(0, &unk_2811BC478, &qword_2811C8478);
  v191 = swift_allocObject();
  *(v191 + 16) = xmmword_217D8D8F0;
  sub_217BC816C(&qword_27CBA1490, type metadata accessor for SportsSessionEndEvent.Model);
  v192 = v334;
  sub_217D8799C();
  if (v192)
  {

    sub_217AE010C(v272, v273);
    sub_217AE010C(v278, v277);

    sub_217BC85C4(v187, type metadata accessor for SportsSessionEndEvent.Model);
    sub_217BC85C4(v317, sub_217BC7FC8);
    sub_217BC85C4(v287, type metadata accessor for Session);
    *(v191 + 16) = 0;
  }

  else
  {
    v214 = objc_allocWithZone(sub_217D887CC());
    v215 = sub_217D887DC();
    sub_217D887FC();
    v216 = v317;
    v331 = sub_217BC82CC(v215);

    *&v330 = sub_217D8884C();
    v334 = 0;
    sub_217D887EC();
    sub_217BC8438();
    *(v191 + 56) = v233;
    *(v191 + 64) = sub_217BC816C(&qword_27CBA14A8, sub_217BC8438);
    __swift_allocate_boxed_opaque_existential_1((v191 + 32));
    type metadata accessor for SportsSessionEndEvent(0);
    sub_217BC816C(&qword_27CBA14A0, type metadata accessor for SportsSessionEndEvent);
    sub_217D8817C();

    sub_217AE010C(v272, v273);
    sub_217AE010C(v278, v277);

    sub_217BC85C4(v297, type metadata accessor for SportsSessionEndEvent.Model);
    sub_217BC85C4(v216, sub_217BC7FC8);
    sub_217BC85C4(v287, type metadata accessor for Session);
    result = v191;
  }

LABEL_6:
  v69 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_217BC5340(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_217D89E4C();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_217D89D5C();
    __swift_destroy_boxed_opaque_existential_1(v4);
    return sub_217D87C5C();
  }

  return result;
}

uint64_t sub_217BC5408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v39 = a1;
  v40 = a2;
  sub_217BC7E50(0, &qword_2811C8C80, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v37 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = sub_217D87C9C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v37 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v37 - v23;
  sub_217D8880C();
  v25 = *(v15 + 48);
  if (v25(v13, 1, v14) == 1)
  {
    sub_217D87C8C();
    if (v25(v13, 1, v14) != 1)
    {
      sub_217BC81B4(v13, &qword_2811C8C80, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_217BC7E50);
    }
  }

  else
  {
    (*(v15 + 32))(v24, v13, v14);
  }

  v26 = v38;
  sub_217BC5958(v38, v11);
  if (v25(v11, 1, v14) == 1)
  {
    (*(v15 + 16))(v22, v24, v14);
    if (v25(v11, 1, v14) != 1)
    {
      sub_217BC81B4(v11, &qword_2811C8C80, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_217BC7E50);
    }
  }

  else
  {
    (*(v15 + 32))(v22, v11, v14);
  }

  sub_217BC5C08(v26, v8);
  if (v25(v8, 1, v14) == 1)
  {
    (*(v15 + 16))(v19, v24, v14);
    v27 = v25(v8, 1, v14);
    v28 = v39;
    if (v27 != 1)
    {
      sub_217BC81B4(v8, &qword_2811C8C80, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_217BC7E50);
    }
  }

  else
  {
    (*(v15 + 32))(v19, v8, v14);
    v28 = v39;
  }

  sub_217BC816C(&qword_2811C8C88, MEMORY[0x277CC9578]);
  v29 = sub_217D894EC();
  v30 = *(v15 + 16);
  if (v29)
  {
    v31 = v22;
  }

  else
  {
    v31 = v24;
  }

  v30(v28, v31, v14);
  v32 = sub_217D894FC();
  v33 = v22;
  v34 = v28;
  v35 = *(v15 + 8);
  v35(v33, v14);
  v35(v24, v14);
  if (v32)
  {
    return (*(v15 + 32))(v40, v19, v14);
  }

  v35(v19, v14);
  return (v30)(v40, v34, v14);
}

uint64_t sub_217BC5958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217D87C9C();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_217BC816C(&qword_2811C8C88, MEMORY[0x277CC9578]);
        v21 = sub_217D894EC();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_217BC5C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217D87C9C();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_217BC816C(&qword_2811C8C88, MEMORY[0x277CC9578]);
        v21 = sub_217D894EC();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_217BC5EB8(uint64_t a1, void *a2)
{
  v2 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_217D89E6C();
  result = sub_217D87C6C();
  v5 = v4 * 1000.0;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.22337204e18)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_217D89D6C();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_217BC5FB4@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v62 = a2;
  v3 = sub_217D8860C();
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_217BC7E50(0, &qword_27CBA1468, MEMORY[0x277CEADE0], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v58 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = &v56 - v11;
  v12 = sub_217D882CC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BC7E50(0, &qword_27CBA1470, MEMORY[0x277CEAD00], v6);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - v22;
  v24 = MEMORY[0x277CEACA0];
  sub_217BC7E50(0, &qword_27CBA1478, MEMORY[0x277CEACA0], v6);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v56 - v27;
  v29 = sub_217D8812C();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v35 = v34;
  v36 = v24;
  v38 = v37;
  sub_217BC7EB4(v33, v28, &qword_27CBA1478, v36);
  if ((*(v35 + 48))(v28, 1, v38) == 1)
  {
    result = sub_217BC81B4(v28, &qword_27CBA1478, MEMORY[0x277CEACA0], MEMORY[0x277D83D88], sub_217BC7E50);
    v40 = 3072;
  }

  else
  {
    v56 = v35;
    (*(v35 + 32))(v32, v28, v38);
    sub_217D8811C();
    sub_217BC7EB4(v23, v21, &qword_27CBA1470, MEMORY[0x277CEAD00]);
    if ((*(v13 + 48))(v21, 1, v12) == 1)
    {
      sub_217BC81B4(v23, &qword_27CBA1470, MEMORY[0x277CEAD00], MEMORY[0x277D83D88], sub_217BC7E50);
      v41 = 2816;
    }

    else
    {
      (*(v13 + 32))(v16, v21, v12);
      sub_217BC6774(&v66);
      (*(v13 + 8))(v16, v12);
      sub_217BC81B4(v23, &qword_27CBA1470, MEMORY[0x277CEAD00], MEMORY[0x277D83D88], sub_217BC7E50);
      v41 = v66;
    }

    v42 = v59;
    sub_217D8810C();
    v43 = v58;
    sub_217BC7EB4(v42, v58, &qword_27CBA1468, MEMORY[0x277CEADE0]);
    v45 = v60;
    v44 = v61;
    if ((*(v60 + 48))(v43, 1, v61) == 1)
    {
      sub_217BC81B4(v42, &qword_27CBA1468, MEMORY[0x277CEADE0], MEMORY[0x277D83D88], sub_217BC7E50);
      v46 = 40;
    }

    else
    {
      v47 = v57;
      (*(v45 + 32))(v57, v43, v44);
      v48 = sub_217D885FC();
      sub_217BC7070(v48, v49, &v63);

      (*(v45 + 8))(v47, v44);
      sub_217BC81B4(v42, &qword_27CBA1468, MEMORY[0x277CEADE0], MEMORY[0x277D83D88], sub_217BC7E50);
      v46 = v63;
    }

    sub_217A535B4();
    v50 = sub_217D898DC();
    sub_217D897FC();
    sub_217A53600(0, &qword_2811BC410, &qword_2811BC3E0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_217D8D8F0;
    v64 = v41;
    v65 = v46;
    v52 = sub_217D8958C();
    v54 = v53;
    *(v51 + 56) = MEMORY[0x277D837D0];
    *(v51 + 64) = sub_217A62448();
    *(v51 + 32) = v52;
    *(v51 + 40) = v54;
    sub_217D88E5C();

    result = (*(v56 + 8))(v32, v38);
    v40 = v41 | (v46 << 16);
  }

  v55 = v62;
  *v62 = v40;
  *(v55 + 2) = BYTE2(v40);
  return result;
}

uint64_t sub_217BC6774@<X0>(char *a1@<X8>)
{
  v2 = sub_217D882AC();
  sub_217BC67F0(v2, v3, &v10);

  v4 = v10;
  v5 = sub_217D882BC();
  sub_217BC6CDC(v5, v6, &v9);

  v8 = v9;
  *a1 = v4;
  a1[1] = v8;
  return result;
}

void sub_217BC67F0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (!a2)
  {
    sub_217A535B4();
    v7 = sub_217D898DC();
    sub_217D897FC();
    sub_217D88E5C();

LABEL_7:
    v6 = 0;
    goto LABEL_12;
  }

  if ((a1 != 0x5F4441425F435845 || a2 != 0xEE00535345434341) && (sub_217D89D4C() & 1) == 0)
  {
    if (a1 == 0xD000000000000013 && 0x8000000217DCF1A0 == a2 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 2;
      goto LABEL_12;
    }

    if (a1 == 0x544952415F435845 && a2 == 0xEE00434954454D48 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 3;
      goto LABEL_12;
    }

    if (a1 == 0x4C554D455F435845 && a2 == 0xED00004E4F495441 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 4;
      goto LABEL_12;
    }

    if (a1 == 0x54464F535F435845 && a2 == 0xEC00000045524157 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 5;
      goto LABEL_12;
    }

    if (a1 == 0x414552425F435845 && a2 == 0xEE00544E494F504BLL || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 6;
      goto LABEL_12;
    }

    if (a1 == 0x435359535F435845 && a2 == 0xEB000000004C4C41 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 7;
      goto LABEL_12;
    }

    if (a1 == 0xD000000000000010 && 0x8000000217DCF1C0 == a2 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 8;
      goto LABEL_12;
    }

    if (a1 == 0x5F4350525F435845 && a2 == 0xED00005452454C41 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 9;
      goto LABEL_12;
    }

    if (a1 == 0x534152435F435845 && a2 == 0xE900000000000048 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 10;
      goto LABEL_12;
    }

    if (a1 == 0x4F5345525F435845 && a2 == 0xEC00000045435255 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 11;
      goto LABEL_12;
    }

    if (a1 == 0x524155475F435845 && a2 == 0xE900000000000044 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 12;
      goto LABEL_12;
    }

    if (a1 == 0xD000000000000011 && 0x8000000217DCF1E0 == a2 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 13;
      goto LABEL_12;
    }

    sub_217A535B4();

    v8 = sub_217D898DC();
    sub_217D897DC();
    sub_217A53600(0, &qword_2811BC410, &qword_2811BC3E0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_217D8D8F0;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_217A62448();
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;
    sub_217D88E5C();

    goto LABEL_7;
  }

  v6 = 1;
LABEL_12:
  *a3 = v6;
}

void sub_217BC6CDC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (!a2)
  {
    sub_217A535B4();
    v7 = sub_217D898DC();
    sub_217D897FC();
    sub_217D88E5C();

LABEL_7:
    v6 = 0;
    goto LABEL_12;
  }

  if ((a1 != 0x56474553474953 || a2 != 0xE700000000000000) && (sub_217D89D4C() & 1) == 0)
  {
    if (a1 == 0x4C4C49474953 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 2;
      goto LABEL_12;
    }

    if (a1 == 0x54524241474953 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 3;
      goto LABEL_12;
    }

    if (a1 == 0x455046474953 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 4;
      goto LABEL_12;
    }

    if (a1 == 0x535542474953 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 5;
      goto LABEL_12;
    }

    if (a1 == 0x50415254474953 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 6;
      goto LABEL_12;
    }

    if (a1 == 0x4C4C494B474953 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 7;
      goto LABEL_12;
    }

    if (a1 == 0x4D524554474953 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 8;
      goto LABEL_12;
    }

    if (a1 == 0x54495551474953 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 9;
      goto LABEL_12;
    }

    sub_217A535B4();

    v8 = sub_217D898DC();
    sub_217D897DC();
    sub_217A53600(0, &qword_2811BC410, &qword_2811BC3E0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_217D8D8F0;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_217A62448();
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;
    sub_217D88E5C();

    goto LABEL_7;
  }

  v6 = 1;
LABEL_12:
  *a3 = v6;
}

void sub_217BC7070(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (!a2)
  {
    sub_217A535B4();
    v7 = sub_217D898DC();
    sub_217D897FC();
    sub_217D88E5C();

LABEL_5:
    v6 = 0;
    goto LABEL_82;
  }

  sub_217A4EBC4();

  if ((sub_217D8995C() & 1) == 0)
  {
    if (sub_217D8995C())
    {

      v6 = 3;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 4;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 5;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 6;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 7;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 8;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 9;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 10;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 11;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 12;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 13;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 14;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 15;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 16;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 17;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 18;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 19;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 20;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 21;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 22;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 23;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 24;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 25;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 26;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 27;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 28;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 29;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 30;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 31;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 32;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 33;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 34;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 35;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 36;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 37;
      goto LABEL_82;
    }

    v8 = MEMORY[0x277D837D0];
    if (sub_217D8995C())
    {

      v6 = 38;
      goto LABEL_82;
    }

    if (a1 == 0x3E534E5F4F4E3CLL && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
    {

      v6 = 1;
      goto LABEL_82;
    }

    sub_217A535B4();
    v9 = sub_217D898DC();
    sub_217D897DC();
    sub_217A53600(0, &qword_2811BC410, &qword_2811BC3E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_217D8D8F0;
    *(v10 + 56) = v8;
    *(v10 + 64) = sub_217A62448();
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    sub_217D88E5C();

    goto LABEL_5;
  }

  v6 = 2;
LABEL_82:
  *a3 = v6;
}

void *FlushAnalyticsBatchesStartupTask.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t FlushAnalyticsBatchesStartupTask.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void sub_217BC7E50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_217BC7EB4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_217BC7E50(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_217BC7F34()
{
  if (!qword_2811C8878)
  {
    type metadata accessor for AppSessionEndEvent(255);
    sub_217BC816C(qword_2811C3ED8, type metadata accessor for AppSessionEndEvent);
    v0 = sub_217D881AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8878);
    }
  }
}

void sub_217BC7FC8()
{
  if (!qword_2811C8C98)
  {
    sub_217D87C9C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2811C8C98);
    }
  }
}

void sub_217BC8030()
{
  if (!qword_2811BCE88)
  {
    v0 = sub_217D894AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCE88);
    }
  }
}

unint64_t sub_217BC8094()
{
  result = qword_2811BCE60;
  if (!qword_2811BCE60)
  {
    sub_217BC7E50(255, &qword_2811BCE68, MEMORY[0x277CEAC80], MEMORY[0x277D83940]);
    sub_217BC816C(&qword_2811C8A28, MEMORY[0x277CEAC80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BCE60);
  }

  return result;
}

uint64_t sub_217BC816C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217BC81B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_217BC8214(uint64_t a1, uint64_t a2)
{
  sub_217BC7FC8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_217BC8278()
{
  result = qword_27CBA1488;
  if (!qword_27CBA1488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1488);
  }

  return result;
}

uint64_t sub_217BC82CC(uint64_t result)
{
  if (!result)
  {
    sub_217D899FC();

    sub_217D87C9C();
    sub_217BC816C(&qword_27CBA1480, MEMORY[0x277CC9578]);
    v1 = sub_217D89CFC();
    MEMORY[0x21CEACC70](v1);

    MEMORY[0x21CEACC70](0x73736573206E6920, 0xEC0000003D6E6F69);
    v2 = sub_217D8949C();
    MEMORY[0x21CEACC70](v2);

    sub_217BC8278();
    swift_allocError();
    *v3 = 0xD000000000000022;
    v3[1] = 0x8000000217DCF430;
    return swift_willThrow();
  }

  return result;
}

void sub_217BC8438()
{
  if (!qword_27CBA1498)
  {
    type metadata accessor for SportsSessionEndEvent(255);
    sub_217BC816C(&qword_27CBA14A0, type metadata accessor for SportsSessionEndEvent);
    v0 = sub_217D881AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA1498);
    }
  }
}

uint64_t sub_217BC84CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_217BC8514(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double sub_217BC8584(uint64_t a1)
{
  result = 0.0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 319) = 0;
  *(a1 + 323) = 1;
  return result;
}

uint64_t sub_217BC85C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217BC8718()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA14E0);
  __swift_project_value_buffer(v0, qword_27CBA14E0);
  return sub_217D8866C();
}

uint64_t IssueTocViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t IssueTocViewEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 20);
  sub_217BC927C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueTocViewEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 20);
  sub_217BC927C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueTocViewEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 24);
  sub_217BC927C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueTocViewEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 24);
  sub_217BC927C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueTocViewEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 28);
  sub_217BC927C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueTocViewEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 28);
  sub_217BC927C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueTocViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 32);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueTocViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 36);
  sub_217BC927C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueTocViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 36);
  sub_217BC927C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueTocViewEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 40);
  sub_217BC927C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueTocViewEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 40);
  sub_217BC927C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueTocViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 44);
  sub_217BC927C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BC927C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t IssueTocViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 44);
  sub_217BC927C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueTocViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for IssueTocViewEvent(0);
  v5 = v4[5];
  sub_217BC927C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BC927C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217BC927C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217A608E0();
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_217BC927C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  sub_217BC927C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217BC927C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v2, v19);
}

uint64_t IssueTocViewEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IssueTocViewEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t IssueTocViewEvent.Model.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IssueTocViewEvent.Model(0) + 24);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
}

uint64_t IssueTocViewEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueTocViewEvent.Model(0) + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t sub_217BC991C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 32);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t IssueTocViewEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueTocViewEvent.Model(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t IssueTocViewEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for IssueTocViewEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t IssueTocViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueTocViewEvent.Model(0) + 44));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

__n128 IssueTocViewEvent.Model.init(eventData:channelData:issueData:issueViewData:timedData:feedData:userChannelContextData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v12 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 16);
  v15 = *(a2 + 17);
  v16 = a2[3];
  v17 = a2[4];
  v18 = *a3;
  v32 = *(a3 + 17);
  v33 = *(a3 + 16);
  v31 = a3[3];
  v34 = a3[1];
  v35 = a4[1];
  v38 = *a6;
  v36 = *a4;
  v37 = *(a6 + 2);
  v40 = a7[1];
  v41 = *a7;
  v39 = *(a7 + 1);
  v19 = sub_217D8899C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for IssueTocViewEvent.Model(0);
  v21 = a9 + v20[5];
  *v21 = v12;
  *(v21 + 8) = v13;
  *(v21 + 16) = v14;
  *(v21 + 17) = v15;
  *(v21 + 24) = v16;
  *(v21 + 32) = v17;
  v22 = a9 + v20[6];
  *v22 = v18;
  *(v22 + 8) = v34;
  *(v22 + 16) = v33;
  *(v22 + 17) = v32;
  *(v22 + 24) = v31;
  v23 = (a9 + v20[7]);
  *v23 = v36;
  v23[1] = v35;
  v24 = v20[8];
  v25 = sub_217D889CC();
  (*(*(v25 - 8) + 32))(a9 + v24, a5, v25);
  v26 = a9 + v20[9];
  *v26 = v38;
  *(v26 + 16) = v37;
  v27 = a9 + v20[10];
  *v27 = v41;
  *(v27 + 1) = v40;
  *(v27 + 2) = v39;
  v28 = a9 + v20[11];
  v29 = *(a8 + 16);
  *v28 = *a8;
  *(v28 + 16) = v29;
  result = *(a8 + 32);
  *(v28 + 32) = result;
  *(v28 + 48) = *(a8 + 48);
  return result;
}

unint64_t sub_217BC9C78()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000016;
  if (v1 != 6)
  {
    v3 = 0xD000000000000021;
  }

  v4 = 0x74614464656D6974;
  if (v1 != 4)
  {
    v4 = 0x6174614464656566;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7461446575737369;
  if (v1 != 2)
  {
    v5 = 0x6569566575737369;
  }

  if (*v0)
  {
    v2 = 0x446C656E6E616863;
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

uint64_t sub_217BC9D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BCB614(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BC9DB0(uint64_t a1)
{
  v2 = sub_217BCA344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BC9DEC(uint64_t a1)
{
  v2 = sub_217BCA344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IssueTocViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BCABD8(0, &qword_27CBA14F8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v38 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BCA344();
  sub_217D89E7C();
  LOBYTE(v44) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for IssueTocViewEvent.Model(0);
    v13 = v3 + v12[5];
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = *(v13 + 17);
    v17 = *(v13 + 24);
    v18 = *(v13 + 32);
    *&v44 = *v13;
    *(&v44 + 1) = v14;
    LOBYTE(v45) = v15;
    BYTE1(v45) = v16;
    *(&v45 + 1) = v17;
    *&v46 = v18;
    LOBYTE(v40) = 1;
    sub_217AD084C();

    sub_217D89CAC();

    v19 = v3 + v12[6];
    v20 = *(v19 + 8);
    v21 = *(v19 + 16);
    v22 = *(v19 + 17);
    v23 = *(v19 + 24);
    *&v44 = *v19;
    *(&v44 + 1) = v20;
    LOBYTE(v45) = v21;
    BYTE1(v45) = v22;
    *(&v45 + 1) = v23;
    LOBYTE(v40) = 2;
    sub_217ACFF94();

    sub_217D89CAC();

    v25 = (v3 + v12[7]);
    v26 = v25[1];
    *&v44 = *v25;
    *(&v44 + 1) = v26;
    LOBYTE(v40) = 3;
    sub_217AD01EC();

    sub_217D89CAC();

    v27 = v12[8];
    LOBYTE(v44) = 4;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v28 = (v3 + v12[9]);
    v29 = v28[1];
    v30 = v28[2];
    *&v44 = *v28;
    *(&v44 + 1) = v29;
    *&v45 = v30;
    LOBYTE(v40) = 5;
    sub_217AD1A68(v44, v29, v30);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v44, *(&v44 + 1), v45);
    v31 = (v3 + v12[10]);
    v32 = *v31;
    v33 = v31[1];
    LOWORD(v31) = *(v31 + 1);
    v50 = v32;
    v51 = v33;
    v52 = v31;
    v49 = 6;
    sub_217ACFB8C();
    sub_217D89CAC();
    v34 = (v3 + v12[11]);
    v35 = v34[1];
    v44 = *v34;
    v45 = v35;
    v37 = *v34;
    v36 = v34[1];
    v46 = v34[2];
    v47 = *(v34 + 48);
    v40 = v37;
    v41 = v36;
    v42 = v34[2];
    v43 = *(v34 + 48);
    v48 = 7;
    sub_217ACC004(&v44, v38);
    sub_217A55B98();
    sub_217D89CAC();
    v38[0] = v40;
    v38[1] = v41;
    v38[2] = v42;
    v39 = v43;
    sub_217ACC69C(v38);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217BCA344()
{
  result = qword_27CBA1500;
  if (!qword_27CBA1500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1500);
  }

  return result;
}

uint64_t IssueTocViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_217D889CC();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217D8899C();
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217BCABD8(0, &qword_27CBA1508, MEMORY[0x277D844C8]);
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - v12;
  v14 = type metadata accessor for IssueTocViewEvent.Model(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BCA344();
  v55 = v13;
  v19 = v56;
  sub_217D89E5C();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v6;
  v21 = v17;
  LOBYTE(v57) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v22 = v52;
  v23 = v54;
  sub_217D89BCC();
  (*(v51 + 32))(v21, v22, v7);
  v61 = 1;
  sub_217AD07F8();
  sub_217D89BCC();
  v24 = *(&v57 + 1);
  v25 = v58;
  v26 = BYTE1(v58);
  v27 = *(&v58 + 1);
  v28 = v59;
  v29 = v21 + v14[5];
  *v29 = v57;
  *(v29 + 8) = v24;
  *(v29 + 16) = v25;
  *(v29 + 17) = v26;
  *(v29 + 24) = v27;
  *(v29 + 32) = v28;
  v61 = 2;
  sub_217ACFF40();
  v47 = 0;
  sub_217D89BCC();
  v52 = a1;
  v30 = v53;
  v31 = *(&v57 + 1);
  v32 = v58;
  v33 = BYTE1(v58);
  v34 = *(&v58 + 1);
  v35 = v21 + v14[6];
  *v35 = v57;
  *(v35 + 8) = v31;
  *(v35 + 16) = v32;
  *(v35 + 17) = v33;
  *(v35 + 24) = v34;
  v61 = 3;
  sub_217AD0198();
  sub_217D89BCC();
  v36 = *(&v57 + 1);
  v37 = (v21 + v14[7]);
  *v37 = v57;
  v37[1] = v36;
  LOBYTE(v57) = 4;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v56 = v20;
  v38 = v50;
  sub_217D89BCC();
  (*(v49 + 32))(v21 + v14[8], v56, v38);
  v61 = 5;
  sub_217A5B978();
  sub_217D89B5C();
  v39 = v58;
  v40 = v21 + v14[9];
  *v40 = v57;
  *(v40 + 16) = v39;
  v61 = 6;
  sub_217ACFB38();
  sub_217D89BCC();
  v41 = BYTE1(v57);
  v42 = WORD1(v57);
  v43 = v21 + v14[10];
  *v43 = v57;
  *(v43 + 1) = v41;
  *(v43 + 2) = v42;
  v61 = 7;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v30 + 8))(v55, v23);
  v44 = v21 + v14[11];
  v45 = v58;
  *v44 = v57;
  *(v44 + 16) = v45;
  *(v44 + 32) = v59;
  *(v44 + 48) = v60;
  sub_217BCAC3C(v21, v48);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return sub_217BCACA0(v21);
}

void sub_217BCABD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BCA344();
    v7 = a3(a1, &type metadata for IssueTocViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BCAC3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IssueTocViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BCACA0(uint64_t a1)
{
  v2 = type metadata accessor for IssueTocViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BCADD4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217BC927C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BC927C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217BC927C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217A608E0();
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_217BC927C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  sub_217BC927C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217BC927C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v4, v20);
}

void sub_217BCB1A0()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217BC927C(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
    if (v1 <= 0x3F)
    {
      sub_217BC927C(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
      if (v2 <= 0x3F)
      {
        sub_217BC927C(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
        if (v3 <= 0x3F)
        {
          sub_217A608E0();
          if (v4 <= 0x3F)
          {
            sub_217BC927C(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
            if (v5 <= 0x3F)
            {
              sub_217BC927C(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
              if (v6 <= 0x3F)
              {
                sub_217BC927C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                if (v7 <= 0x3F)
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

void sub_217BCB42C()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217D889CC();
    if (v1 <= 0x3F)
    {
      sub_217AD6554();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217BCB510()
{
  result = qword_27CBA1510;
  if (!qword_27CBA1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1510);
  }

  return result;
}

unint64_t sub_217BCB568()
{
  result = qword_27CBA1518;
  if (!qword_27CBA1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1518);
  }

  return result;
}

unint64_t sub_217BCB5C0()
{
  result = qword_27CBA1520;
  if (!qword_27CBA1520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1520);
  }

  return result;
}

uint64_t sub_217BCB614(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t ValidationEventProcessor.__allocating_init()()
{
  v0 = sub_217D889FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = swift_allocObject();
  v6 = sub_217D88A3C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v5 + 16) = sub_217D88A2C();
  *v4 = sub_217BC5340;
  v4[1] = 0;
  (*(v1 + 104))(v4, *MEMORY[0x277D6C9B0], v0);
  sub_217D88A0C();
  return v5;
}

uint64_t ValidationEventProcessor.init()()
{
  v1 = sub_217D889FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_217D88A3C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_217D88A2C();
  *v5 = sub_217BC5340;
  v5[1] = 0;
  (*(v2 + 104))(v5, *MEMORY[0x277D6C9B0], v1);
  sub_217D88A0C();
  return v0;
}

uint64_t ValidationEventProcessor.process<A>(processEvent:)(uint64_t a1)
{
  v90 = a1;
  v73 = type metadata accessor for FeedViewEvent.Model(0);
  v1 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v74 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B0EFB4();
  v84 = v3;
  v78 = *(v3 - 1);
  v4 = *(v78 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v77 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v81 = &v73 - v7;
  v75 = type metadata accessor for IssueExposureEvent.Model(0);
  v8 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v76 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BCC5AC();
  v88 = v10;
  v83 = *(v10 - 1);
  v11 = *(v83 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v82 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v85 = &v73 - v14;
  v79 = type metadata accessor for HeadlineExposureEvent.Model(0);
  v15 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v80 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BBF45C();
  v18 = v17;
  v87 = *(v17 - 8);
  v19 = *(v87 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v86 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v73 - v22;
  v24 = type metadata accessor for ArticleViewEvent.Model(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BCC640();
  v29 = v28;
  v30 = *(v28 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v28);
  v34 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v73 - v35;
  v37 = sub_217D881AC();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v73 - v39;
  v91 = v41;
  (*(v41 + 16))(&v73 - v39, v90, v37);
  if (swift_dynamicCast())
  {
    v88 = v40;
    v90 = v37;
    (*(v30 + 32))(v34, v36, v29);
    v42 = *(v89 + 16);
    v43 = sub_217D8816C();
    v59 = sub_217D887BC();
    v61 = v60;

    sub_217BCE070(&qword_2811C59B8, type metadata accessor for ArticleViewEvent.Model);
    sub_217D88A1C();
    sub_217AE010C(v59, v61);
    sub_217BCC868(v27);
    sub_217BCE0B8(v27, type metadata accessor for ArticleViewEvent.Model);
    (*(v30 + 8))(v34, v29);
    return (*(v91 + 8))(v88, v90);
  }

  if (!swift_dynamicCast())
  {
    v48 = v85;
    v49 = v88;
    if (swift_dynamicCast())
    {
      v51 = v82;
      v50 = v83;
      (*(v83 + 32))(v82, v48, v49);
      v52 = *(v89 + 16);
      v53 = sub_217D8816C();
      v54 = sub_217D887BC();
      v56 = v55;

      sub_217BCE070(&qword_2811C32B0, type metadata accessor for IssueExposureEvent.Model);
      v57 = v76;
      sub_217D88A1C();
      sub_217AE010C(v54, v56);
      sub_217BCD8B8(v57);
      v58 = type metadata accessor for IssueExposureEvent.Model;
    }

    else
    {
      v62 = v81;
      v49 = v84;
      if (!swift_dynamicCast())
      {
        return (*(v91 + 8))(v40, v37);
      }

      v51 = v77;
      v50 = v78;
      (*(v78 + 32))(v77, v62, v49);
      v63 = *(v89 + 16);
      v64 = sub_217D8816C();
      v70 = sub_217D887BC();
      v72 = v71;

      sub_217BCE070(&qword_2811C7478, type metadata accessor for FeedViewEvent.Model);
      v57 = v74;
      sub_217D88A1C();
      sub_217AE010C(v70, v72);
      sub_217BCDDFC(v57);
      v58 = type metadata accessor for FeedViewEvent.Model;
    }

    sub_217BCE0B8(v57, v58);
    (*(v50 + 8))(v51, v49);
    return (*(v91 + 8))(v40, v37);
  }

  v45 = v86;
  v44 = v87;
  (*(v87 + 32))(v86, v23, v18);
  v46 = *(v89 + 16);
  v47 = sub_217D8816C();
  v65 = sub_217D887BC();
  v67 = v66;

  sub_217BCE070(&qword_2811C11B8, type metadata accessor for HeadlineExposureEvent.Model);
  v68 = v80;
  sub_217D88A1C();
  sub_217AE010C(v65, v67);
  sub_217BCD11C(v68);
  sub_217BCE0B8(v68, type metadata accessor for HeadlineExposureEvent.Model);
  (*(v44 + 8))(v45, v18);
  return (*(v91 + 8))(v40, v37);
}

void sub_217BCC5AC()
{
  if (!qword_2811C88D0)
  {
    type metadata accessor for IssueExposureEvent(255);
    sub_217BCE070(qword_2811C31F0, type metadata accessor for IssueExposureEvent);
    v0 = sub_217D881AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C88D0);
    }
  }
}

void sub_217BCC640()
{
  if (!qword_2811C8900)
  {
    type metadata accessor for ArticleViewEvent(255);
    sub_217BCE070(qword_2811C5890, type metadata accessor for ArticleViewEvent);
    v0 = sub_217D881AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8900);
    }
  }
}

uint64_t ValidationEventProcessor.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ValidationEventProcessor.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_217BCC730(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void))
{
  if ((a4 & 1) == 0)
  {
    sub_217A535B4();
    v8 = sub_217D898DC();
    sub_217D897EC();
    sub_217A67100();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_217D9CB60;
    v10 = MEMORY[0x277D837D0];
    *(v9 + 56) = MEMORY[0x277D837D0];
    v11 = sub_217A62448();
    *(v9 + 64) = v11;
    *(v9 + 32) = a2;
    *(v9 + 40) = a3;
    a5(0);

    sub_217D89A8C();
    *(v9 + 96) = v10;
    *(v9 + 104) = v11;
    *(v9 + 72) = 0;
    *(v9 + 80) = 0xE000000000000000;
    sub_217D88E5C();
  }
}

void sub_217BCC868(uint64_t a1)
{
  v2 = type metadata accessor for ArticleViewEvent.Model(0);
  v3 = (a1 + *(v2 + 40));
  if (*(v3 + 2) != 1)
  {
    v4 = v2;
    v5 = *v3;
    switch(v5)
    {
      case 9:
        *&v114 = sub_217D8898C();
        *(&v114 + 1) = v42;
        *&v105 = 0xD000000000000016;
        *(&v105 + 1) = 0x8000000217DCB510;
        sub_217A4EBC4();
        v43 = sub_217D8995C();

        if (v43)
        {
          return;
        }

        v44 = (a1 + *(v4 + 44));
        v45 = v44[7];
        v111 = v44[6];
        v112 = v45;
        v113 = v44[8];
        v46 = v44[3];
        v107 = v44[2];
        v108 = v46;
        v47 = v44[5];
        v109 = v44[4];
        v110 = v47;
        v48 = v44[1];
        v105 = *v44;
        v106 = v48;
        v49 = sub_217BCE168(&v105) == 0;
        sub_217BCC730(a1, 0xD00000000000003CLL, 0x8000000217DCF4C0, v49, type metadata accessor for ArticleViewEvent.Model);
        v50 = v44[7];
        v120 = v44[6];
        v121 = v50;
        v122 = v44[8];
        v51 = v44[3];
        v116 = v44[2];
        v117 = v51;
        v52 = v44[5];
        v118 = v44[4];
        v119 = v52;
        v53 = v44[1];
        v114 = *v44;
        v115 = v53;
        v54 = sub_217BCE168(&v114);
        v55 = 1;
        if (v54 != 1 && BYTE1(v114) != 93)
        {
          LOBYTE(v96) = BYTE1(v114);
          v56 = GroupType.rawValue.getter();
          v58 = v57;
          if (v56 == GroupType.rawValue.getter() && v58 == v59)
          {

            v55 = 0;
          }

          else
          {
            v74 = sub_217D89D4C();

            v55 = v74 ^ 1;
          }
        }

        sub_217BCC730(a1, 0xD000000000000049, 0x8000000217DCF500, v55 & 1, type metadata accessor for ArticleViewEvent.Model);
        v75 = v44[7];
        v102 = v44[6];
        v103 = v75;
        v104 = v44[8];
        v76 = v44[3];
        v98 = v44[2];
        v99 = v76;
        v77 = v44[5];
        v100 = v44[4];
        v101 = v77;
        v78 = v44[1];
        v96 = *v44;
        v97 = v78;
        v79 = sub_217BCE168(&v96);
        v66 = 1;
        if (v79 != 1 && BYTE1(v96) != 93)
        {
          v80 = GroupType.rawValue.getter();
          v82 = v81;
          if (v80 == GroupType.rawValue.getter() && v82 == v83)
          {

            v66 = 0;
          }

          else
          {
            v84 = sub_217D89D4C();

            v66 = v84 ^ 1;
          }
        }

        v72 = " have unknown group types";
        v73 = 0xD000000000000044;
        goto LABEL_47;
      case 2:
        *&v114 = sub_217D8898C();
        *(&v114 + 1) = v24;
        *&v105 = 0xD000000000000016;
        *(&v105 + 1) = 0x8000000217DCB510;
        sub_217A4EBC4();
        v25 = sub_217D8995C();

        if (v25)
        {
          return;
        }

        v26 = (a1 + *(v4 + 44));
        v27 = v26[7];
        v111 = v26[6];
        v112 = v27;
        v113 = v26[8];
        v28 = v26[3];
        v107 = v26[2];
        v108 = v28;
        v29 = v26[5];
        v109 = v26[4];
        v110 = v29;
        v30 = v26[1];
        v105 = *v26;
        v106 = v30;
        v31 = sub_217BCE168(&v105) == 0;
        sub_217BCC730(a1, 0xD000000000000036, 0x8000000217DCF5A0, v31, type metadata accessor for ArticleViewEvent.Model);
        v32 = v26[7];
        v120 = v26[6];
        v121 = v32;
        v122 = v26[8];
        v33 = v26[3];
        v116 = v26[2];
        v117 = v33;
        v34 = v26[5];
        v118 = v26[4];
        v119 = v34;
        v35 = v26[1];
        v114 = *v26;
        v115 = v35;
        v36 = sub_217BCE168(&v114);
        v37 = 1;
        if (v36 != 1 && BYTE1(v114) != 93)
        {
          LOBYTE(v96) = BYTE1(v114);
          v38 = GroupType.rawValue.getter();
          v40 = v39;
          if (v38 == GroupType.rawValue.getter() && v40 == v41)
          {

            v37 = 0;
          }

          else
          {
            v60 = sub_217D89D4C();

            v37 = v60 ^ 1;
          }
        }

        sub_217BCC730(a1, 0xD000000000000043, 0x8000000217DCF5E0, v37 & 1, type metadata accessor for ArticleViewEvent.Model);
        v61 = v26[7];
        v102 = v26[6];
        v103 = v61;
        v104 = v26[8];
        v62 = v26[3];
        v98 = v26[2];
        v99 = v62;
        v63 = v26[5];
        v100 = v26[4];
        v101 = v63;
        v64 = v26[1];
        v96 = *v26;
        v97 = v64;
        v65 = sub_217BCE168(&v96);
        v66 = 1;
        if (v65 != 1 && BYTE1(v96) != 93)
        {
          v67 = GroupType.rawValue.getter();
          v69 = v68;
          if (v67 == GroupType.rawValue.getter() && v69 == v70)
          {

            v66 = 0;
          }

          else
          {
            v71 = sub_217D89D4C();

            v66 = v71 ^ 1;
          }
        }

        v72 = "unknown group types";
        v73 = 0xD00000000000003ELL;
        goto LABEL_47;
      case 1:
        *&v114 = sub_217D8898C();
        *(&v114 + 1) = v6;
        *&v105 = 0xD000000000000016;
        *(&v105 + 1) = 0x8000000217DCB510;
        sub_217A4EBC4();
        v7 = sub_217D8995C();

        if ((v7 & 1) == 0)
        {
          v8 = (a1 + *(v4 + 44));
          v9 = v8[7];
          v111 = v8[6];
          v112 = v9;
          v113 = v8[8];
          v10 = v8[3];
          v107 = v8[2];
          v108 = v10;
          v11 = v8[5];
          v109 = v8[4];
          v110 = v11;
          v12 = v8[1];
          v105 = *v8;
          v106 = v12;
          v13 = sub_217BCE168(&v105) == 0;
          sub_217BCC730(a1, 0xD000000000000033, 0x8000000217DCF670, v13, type metadata accessor for ArticleViewEvent.Model);
          v14 = v8[7];
          v120 = v8[6];
          v121 = v14;
          v122 = v8[8];
          v15 = v8[3];
          v116 = v8[2];
          v117 = v15;
          v16 = v8[5];
          v118 = v8[4];
          v119 = v16;
          v17 = v8[1];
          v114 = *v8;
          v115 = v17;
          v18 = sub_217BCE168(&v114);
          v19 = 1;
          if (v18 != 1 && BYTE1(v114) != 93)
          {
            LOBYTE(v96) = BYTE1(v114);
            v20 = GroupType.rawValue.getter();
            v22 = v21;
            if (v20 == GroupType.rawValue.getter() && v22 == v23)
            {

              v19 = 0;
            }

            else
            {
              v85 = sub_217D89D4C();

              v19 = v85 ^ 1;
            }
          }

          sub_217BCC730(a1, 0xD000000000000040, 0x8000000217DCF6B0, v19 & 1, type metadata accessor for ArticleViewEvent.Model);
          v86 = v8[7];
          v102 = v8[6];
          v103 = v86;
          v104 = v8[8];
          v87 = v8[3];
          v98 = v8[2];
          v99 = v87;
          v88 = v8[5];
          v100 = v8[4];
          v101 = v88;
          v89 = v8[1];
          v96 = *v8;
          v97 = v89;
          v90 = sub_217BCE168(&v96);
          v66 = 1;
          if (v90 != 1 && BYTE1(v96) != 93)
          {
            v91 = GroupType.rawValue.getter();
            v93 = v92;
            if (v91 == GroupType.rawValue.getter() && v93 == v94)
            {

              v66 = 0;
            }

            else
            {
              v95 = sub_217D89D4C();

              v66 = v95 ^ 1;
            }
          }

          v72 = "nown group types";
          v73 = 0xD00000000000003BLL;
LABEL_47:
          sub_217BCC730(a1, v73, v72 | 0x8000000000000000, v66 & 1, type metadata accessor for ArticleViewEvent.Model);
        }

        break;
    }
  }
}

void sub_217BCD11C(uint64_t a1)
{
  v2 = type metadata accessor for HeadlineExposureEvent.Model(0);
  v3 = *(a1 + *(v2 + 40));
  switch(v3)
  {
    case 9:
      v36 = (a1 + *(v2 + 44));
      v37 = v36[7];
      v103 = v36[6];
      v104 = v37;
      v105 = v36[8];
      v38 = v36[3];
      v99 = v36[2];
      v100 = v38;
      v39 = v36[5];
      v101 = v36[4];
      v102 = v39;
      v40 = v36[1];
      v97 = *v36;
      v98 = v40;
      v41 = sub_217BCE168(&v97) == 0;
      sub_217BCC730(a1, 0xD00000000000003CLL, 0x8000000217DCF4C0, v41, type metadata accessor for HeadlineExposureEvent.Model);
      v42 = v36[7];
      v112 = v36[6];
      v113 = v42;
      v114 = v36[8];
      v43 = v36[3];
      v108 = v36[2];
      v109 = v43;
      v44 = v36[5];
      v110 = v36[4];
      v111 = v44;
      v45 = v36[1];
      v106 = *v36;
      v107 = v45;
      v46 = sub_217BCE168(&v106);
      v47 = 1;
      if (v46 != 1 && BYTE1(v106) != 93)
      {
        LOBYTE(v88) = BYTE1(v106);
        v48 = GroupType.rawValue.getter();
        v50 = v49;
        if (v48 == GroupType.rawValue.getter() && v50 == v51)
        {

          v47 = 0;
        }

        else
        {
          v66 = sub_217D89D4C();

          v47 = v66 ^ 1;
        }
      }

      sub_217BCC730(a1, 0xD000000000000049, 0x8000000217DCF500, v47 & 1, type metadata accessor for HeadlineExposureEvent.Model);
      v67 = v36[7];
      v94 = v36[6];
      v95 = v67;
      v96 = v36[8];
      v68 = v36[3];
      v90 = v36[2];
      v91 = v68;
      v69 = v36[5];
      v92 = v36[4];
      v93 = v69;
      v70 = v36[1];
      v88 = *v36;
      v89 = v70;
      v71 = sub_217BCE168(&v88);
      v58 = 1;
      if (v71 != 1 && BYTE1(v88) != 93)
      {
        v72 = GroupType.rawValue.getter();
        v74 = v73;
        if (v72 == GroupType.rawValue.getter() && v74 == v75)
        {

          v58 = 0;
        }

        else
        {
          v76 = sub_217D89D4C();

          v58 = v76 ^ 1;
        }
      }

      v64 = " have unknown group types";
      v65 = 0xD000000000000044;
      break;
    case 2:
      v20 = (a1 + *(v2 + 44));
      v21 = v20[7];
      v103 = v20[6];
      v104 = v21;
      v105 = v20[8];
      v22 = v20[3];
      v99 = v20[2];
      v100 = v22;
      v23 = v20[5];
      v101 = v20[4];
      v102 = v23;
      v24 = v20[1];
      v97 = *v20;
      v98 = v24;
      v25 = sub_217BCE168(&v97) == 0;
      sub_217BCC730(a1, 0xD00000000000003BLL, 0x8000000217DCF780, v25, type metadata accessor for HeadlineExposureEvent.Model);
      v26 = v20[7];
      v112 = v20[6];
      v113 = v26;
      v114 = v20[8];
      v27 = v20[3];
      v108 = v20[2];
      v109 = v27;
      v28 = v20[5];
      v110 = v20[4];
      v111 = v28;
      v29 = v20[1];
      v106 = *v20;
      v107 = v29;
      v30 = sub_217BCE168(&v106);
      v31 = 1;
      if (v30 != 1 && BYTE1(v106) != 93)
      {
        LOBYTE(v88) = BYTE1(v106);
        v32 = GroupType.rawValue.getter();
        v34 = v33;
        if (v32 == GroupType.rawValue.getter() && v34 == v35)
        {

          v31 = 0;
        }

        else
        {
          v52 = sub_217D89D4C();

          v31 = v52 ^ 1;
        }
      }

      sub_217BCC730(a1, 0xD000000000000048, 0x8000000217DCF7C0, v31 & 1, type metadata accessor for HeadlineExposureEvent.Model);
      v53 = v20[7];
      v94 = v20[6];
      v95 = v53;
      v96 = v20[8];
      v54 = v20[3];
      v90 = v20[2];
      v91 = v54;
      v55 = v20[5];
      v92 = v20[4];
      v93 = v55;
      v56 = v20[1];
      v88 = *v20;
      v89 = v56;
      v57 = sub_217BCE168(&v88);
      v58 = 1;
      if (v57 != 1 && BYTE1(v88) != 93)
      {
        v59 = GroupType.rawValue.getter();
        v61 = v60;
        if (v59 == GroupType.rawValue.getter() && v61 == v62)
        {

          v58 = 0;
        }

        else
        {
          v63 = sub_217D89D4C();

          v58 = v63 ^ 1;
        }
      }

      v64 = "have unknown group types";
      v65 = 0xD000000000000043;
      break;
    case 1:
      v4 = (a1 + *(v2 + 44));
      v5 = v4[7];
      v103 = v4[6];
      v104 = v5;
      v105 = v4[8];
      v6 = v4[3];
      v99 = v4[2];
      v100 = v6;
      v7 = v4[5];
      v101 = v4[4];
      v102 = v7;
      v8 = v4[1];
      v97 = *v4;
      v98 = v8;
      v9 = sub_217BCE168(&v97) == 0;
      sub_217BCC730(a1, 0xD000000000000038, 0x8000000217DCF860, v9, type metadata accessor for HeadlineExposureEvent.Model);
      v10 = v4[7];
      v112 = v4[6];
      v113 = v10;
      v114 = v4[8];
      v11 = v4[3];
      v108 = v4[2];
      v109 = v11;
      v12 = v4[5];
      v110 = v4[4];
      v111 = v12;
      v13 = v4[1];
      v106 = *v4;
      v107 = v13;
      v14 = sub_217BCE168(&v106);
      v15 = 1;
      if (v14 != 1 && BYTE1(v106) != 93)
      {
        LOBYTE(v88) = BYTE1(v106);
        v16 = GroupType.rawValue.getter();
        v18 = v17;
        if (v16 == GroupType.rawValue.getter() && v18 == v19)
        {

          v15 = 0;
        }

        else
        {
          v77 = sub_217D89D4C();

          v15 = v77 ^ 1;
        }
      }

      sub_217BCC730(a1, 0xD000000000000045, 0x8000000217DCF8A0, v15 & 1, type metadata accessor for HeadlineExposureEvent.Model);
      v78 = v4[7];
      v94 = v4[6];
      v95 = v78;
      v96 = v4[8];
      v79 = v4[3];
      v90 = v4[2];
      v91 = v79;
      v80 = v4[5];
      v92 = v4[4];
      v93 = v80;
      v81 = v4[1];
      v88 = *v4;
      v89 = v81;
      v82 = sub_217BCE168(&v88);
      v58 = 1;
      if (v82 != 1 && BYTE1(v88) != 93)
      {
        v83 = GroupType.rawValue.getter();
        v85 = v84;
        if (v83 == GroupType.rawValue.getter() && v85 == v86)
        {

          v58 = 0;
        }

        else
        {
          v87 = sub_217D89D4C();

          v58 = v87 ^ 1;
        }
      }

      v64 = "e unknown group types";
      v65 = 0xD000000000000040;
      break;
    default:
      return;
  }

  sub_217BCC730(a1, v65, v64 | 0x8000000000000000, v58 & 1, type metadata accessor for HeadlineExposureEvent.Model);
}

void sub_217BCD8B8(uint64_t a1)
{
  v2 = type metadata accessor for IssueExposureEvent.Model(0);
  v3 = (a1 + *(v2 + 28));
  if (*(v3 + 2) != 1)
  {
    v4 = *v3;
    if (v4 == 2)
    {
      v21 = (a1 + *(v2 + 32));
      v22 = v21[7];
      v77 = v21[6];
      v78 = v22;
      v79 = v21[8];
      v23 = v21[3];
      v73 = v21[2];
      v74 = v23;
      v24 = v21[5];
      v75 = v21[4];
      v76 = v24;
      v25 = v21[1];
      v71 = *v21;
      v72 = v25;
      v26 = sub_217BCE168(&v71) == 0;
      sub_217BCC730(a1, 0xD000000000000038, 0x8000000217DCF940, v26, type metadata accessor for IssueExposureEvent.Model);
      v27 = v21[7];
      v86 = v21[6];
      v87 = v27;
      v88 = v21[8];
      v28 = v21[3];
      v82 = v21[2];
      v83 = v28;
      v29 = v21[5];
      v84 = v21[4];
      v85 = v29;
      v30 = v21[1];
      v80 = *v21;
      v81 = v30;
      v31 = sub_217BCE168(&v80);
      v32 = 1;
      if (v31 != 1 && BYTE1(v80) != 93)
      {
        LOBYTE(v62) = BYTE1(v80);
        v33 = GroupType.rawValue.getter();
        v35 = v34;
        if (v33 == GroupType.rawValue.getter() && v35 == v36)
        {

          v32 = 0;
        }

        else
        {
          v51 = sub_217D89D4C();

          v32 = v51 ^ 1;
        }
      }

      sub_217BCC730(a1, 0xD000000000000045, 0x8000000217DCF980, v32 & 1, type metadata accessor for IssueExposureEvent.Model);
      v52 = v21[7];
      v68 = v21[6];
      v69 = v52;
      v70 = v21[8];
      v53 = v21[3];
      v64 = v21[2];
      v65 = v53;
      v54 = v21[5];
      v66 = v21[4];
      v67 = v54;
      v55 = v21[1];
      v62 = *v21;
      v63 = v55;
      v56 = sub_217BCE168(&v62);
      v43 = 1;
      if (v56 != 1 && BYTE1(v62) != 93)
      {
        v57 = GroupType.rawValue.getter();
        v59 = v58;
        if (v57 == GroupType.rawValue.getter() && v59 == v60)
        {

          v43 = 0;
        }

        else
        {
          v61 = sub_217D89D4C();

          v43 = v61 ^ 1;
        }
      }

      v49 = "e unknown group types";
      v50 = 0xD000000000000040;
    }

    else
    {
      if (v4 != 1)
      {
        return;
      }

      v5 = (a1 + *(v2 + 32));
      v6 = v5[7];
      v77 = v5[6];
      v78 = v6;
      v79 = v5[8];
      v7 = v5[3];
      v73 = v5[2];
      v74 = v7;
      v8 = v5[5];
      v75 = v5[4];
      v76 = v8;
      v9 = v5[1];
      v71 = *v5;
      v72 = v9;
      v10 = sub_217BCE168(&v71) == 0;
      sub_217BCC730(a1, 0xD000000000000035, 0x8000000217DCFA20, v10, type metadata accessor for IssueExposureEvent.Model);
      v11 = v5[7];
      v86 = v5[6];
      v87 = v11;
      v88 = v5[8];
      v12 = v5[3];
      v82 = v5[2];
      v83 = v12;
      v13 = v5[5];
      v84 = v5[4];
      v85 = v13;
      v14 = v5[1];
      v80 = *v5;
      v81 = v14;
      v15 = sub_217BCE168(&v80);
      v16 = 1;
      if (v15 != 1 && BYTE1(v80) != 93)
      {
        LOBYTE(v62) = BYTE1(v80);
        v17 = GroupType.rawValue.getter();
        v19 = v18;
        if (v17 == GroupType.rawValue.getter() && v19 == v20)
        {

          v16 = 0;
        }

        else
        {
          v37 = sub_217D89D4C();

          v16 = v37 ^ 1;
        }
      }

      sub_217BCC730(a1, 0xD000000000000042, 0x8000000217DCFA60, v16 & 1, type metadata accessor for IssueExposureEvent.Model);
      v38 = v5[7];
      v68 = v5[6];
      v69 = v38;
      v70 = v5[8];
      v39 = v5[3];
      v64 = v5[2];
      v65 = v39;
      v40 = v5[5];
      v66 = v5[4];
      v67 = v40;
      v41 = v5[1];
      v62 = *v5;
      v63 = v41;
      v42 = sub_217BCE168(&v62);
      v43 = 1;
      if (v42 != 1 && BYTE1(v62) != 93)
      {
        v44 = GroupType.rawValue.getter();
        v46 = v45;
        if (v44 == GroupType.rawValue.getter() && v46 == v47)
        {

          v43 = 0;
        }

        else
        {
          v48 = sub_217D89D4C();

          v43 = v48 ^ 1;
        }
      }

      v49 = "nknown group types";
      v50 = 0xD00000000000003DLL;
    }

    sub_217BCC730(a1, v50, v49 | 0x8000000000000000, v43 & 1, type metadata accessor for IssueExposureEvent.Model);
  }
}

uint64_t sub_217BCDDFC(uint64_t a1)
{
  result = type metadata accessor for FeedViewEvent.Model(0);
  v3 = *(a1 + *(result + 24));
  if (v3 == 7)
  {
    if (*(a1 + *(result + 52) + 8))
    {
      return result;
    }

    v4 = 0x8000000217DCFB20;
    sub_217A535B4();
    v5 = sub_217D898DC();
    sub_217D897EC();
    sub_217A67100();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_217D9CB60;
    v7 = MEMORY[0x277D837D0];
    *(v6 + 56) = MEMORY[0x277D837D0];
    v8 = sub_217A62448();
    *(v6 + 64) = v8;
    v9 = 0xD000000000000028;
    goto LABEL_10;
  }

  if (v3 == 6)
  {
    if (*(a1 + *(result + 52) + 8))
    {
      return result;
    }

    v4 = 0x8000000217DCFAF0;
    sub_217A535B4();
    v5 = sub_217D898DC();
    sub_217D897EC();
    sub_217A67100();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_217D9CB60;
    v7 = MEMORY[0x277D837D0];
    *(v6 + 56) = MEMORY[0x277D837D0];
    v8 = sub_217A62448();
    *(v6 + 64) = v8;
    v9 = 0xD00000000000002DLL;
    goto LABEL_10;
  }

  if (v3 == 1 && *(a1 + *(result + 52) + 8))
  {
    v4 = 0x8000000217DCFB50;
    sub_217A535B4();
    v5 = sub_217D898DC();
    sub_217D897EC();
    sub_217A67100();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_217D9CB60;
    v7 = MEMORY[0x277D837D0];
    *(v6 + 56) = MEMORY[0x277D837D0];
    v8 = sub_217A62448();
    *(v6 + 64) = v8;
    v9 = 0xD000000000000031;
LABEL_10:
    *(v6 + 32) = v9;
    *(v6 + 40) = v4;
    sub_217D89A8C();
    *(v6 + 96) = v7;
    *(v6 + 104) = v8;
    *(v6 + 72) = 0;
    *(v6 + 80) = 0xE000000000000000;
    sub_217D88E5C();
  }

  return result;
}

uint64_t sub_217BCE070(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217BCE0B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217BCE168(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_217BCE180()
{
  sub_217A4D2B0(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v0 = sub_217D882DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217D8D8F0;
  (*(v1 + 104))(v4 + v3, *MEMORY[0x277CEAD10], v0);
  sub_217A4D370();
  sub_217D8854C();
}

uint64_t sub_217BCE2DC()
{
  sub_217A4D314();
  v1 = *(*(v0 - 8) + 80);

  return sub_217BCE180();
}

uint64_t sub_217BCE398(uint64_t a1)
{
  v2 = sub_217BCE56C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BCE3D4(uint64_t a1)
{
  v2 = sub_217BCE56C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DownloadStateData.encode(to:)(void *a1)
{
  sub_217BCE7AC(0, &qword_27CBA1528, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BCE56C();
  sub_217D89E7C();
  v13 = v9;
  sub_217BCE5C0();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BCE56C()
{
  result = qword_27CBA1530;
  if (!qword_27CBA1530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1530);
  }

  return result;
}

unint64_t sub_217BCE5C0()
{
  result = qword_27CBA1538;
  if (!qword_27CBA1538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1538);
  }

  return result;
}

uint64_t DownloadStateData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217BCE7AC(0, &qword_27CBA1540, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BCE56C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BCE810();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BCE7AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BCE56C();
    v7 = a3(a1, &type metadata for DownloadStateData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BCE810()
{
  result = qword_27CBA1548;
  if (!qword_27CBA1548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1548);
  }

  return result;
}

unint64_t sub_217BCE868()
{
  result = qword_2811C4660;
  if (!qword_2811C4660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4660);
  }

  return result;
}

unint64_t sub_217BCE8C0()
{
  result = qword_2811C4668;
  if (!qword_2811C4668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4668);
  }

  return result;
}

unint64_t sub_217BCE968()
{
  result = qword_27CBA1550;
  if (!qword_27CBA1550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1550);
  }

  return result;
}

unint64_t sub_217BCE9C0()
{
  result = qword_27CBA1558;
  if (!qword_27CBA1558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1558);
  }

  return result;
}

unint64_t sub_217BCEA18()
{
  result = qword_27CBA1560;
  if (!qword_27CBA1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1560);
  }

  return result;
}

uint64_t PersonalizationFeatureCTRData.personalizationFeatureID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PersonalizationFeatureCTRData.personalizationFeatureID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PersonalizationFeatureCTRData.init(personalizationFeatureID:ctr:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

unint64_t sub_217BCEB38()
{
  if (*v0)
  {
    result = 7500899;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t sub_217BCEB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x8000000217DCFC20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 7500899 && a2 == 0xE300000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_217D89D4C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_217BCEC58(uint64_t a1)
{
  v2 = sub_217BCEE50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BCEC94(uint64_t a1)
{
  v2 = sub_217BCEE50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalizationFeatureCTRData.encode(to:)(void *a1)
{
  sub_217BCF090(0, &qword_27CBA1568, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v14[0] = v1[2];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BCEE50();
  sub_217D89E7C();
  v16 = 0;
  v12 = v14[1];
  sub_217D89C6C();
  if (!v12)
  {
    v15 = 1;
    sub_217D89CCC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BCEE50()
{
  result = qword_27CBA1570;
  if (!qword_27CBA1570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1570);
  }

  return result;
}

uint64_t PersonalizationFeatureCTRData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217BCF090(0, &qword_27CBA1578, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BCEE50();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v15 = v12;
  v19 = 1;
  v16 = sub_217D89BEC();
  (*(v7 + 8))(v10, v6);
  *a2 = v15;
  a2[1] = v14;
  a2[2] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BCF090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BCEE50();
    v7 = a3(a1, &type metadata for PersonalizationFeatureCTRData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BCF0F8()
{
  result = qword_27CBA1580;
  if (!qword_27CBA1580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1580);
  }

  return result;
}

unint64_t sub_217BCF150()
{
  result = qword_27CBA1588;
  if (!qword_27CBA1588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1588);
  }

  return result;
}

uint64_t sub_217BCF1D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_217BCF21C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_217BCF280()
{
  result = qword_27CBA1590;
  if (!qword_27CBA1590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1590);
  }

  return result;
}

unint64_t sub_217BCF2D8()
{
  result = qword_27CBA1598;
  if (!qword_27CBA1598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1598);
  }

  return result;
}

unint64_t sub_217BCF330()
{
  result = qword_27CBA15A0;
  if (!qword_27CBA15A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA15A0);
  }

  return result;
}

uint64_t sub_217BCF3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657A695374786574 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217BCF458(uint64_t a1)
{
  v2 = sub_217A67970();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BCF494(uint64_t a1)
{
  v2 = sub_217A67970();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TextSizeData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217A678F4(0, &qword_27CBA15A8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A67970();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B3471C();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217BCF6A4()
{
  result = qword_27CBA15B0;
  if (!qword_27CBA15B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA15B0);
  }

  return result;
}

uint64_t sub_217BCF7C0()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C3688);
  __swift_project_value_buffer(v0, qword_2811C3688);
  return sub_217D8866C();
}

uint64_t FollowingViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_217BCFD24(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FollowingViewEvent.viewData.setter(uint64_t a1)
{
  sub_217BCFD24(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FollowingViewEvent.followingData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowingViewEvent(0) + 20);
  sub_217BCFD24(0, &qword_2811C8768, sub_217A532C8, sub_217A53320);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowingViewEvent.followingData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowingViewEvent(0) + 20);
  sub_217BCFD24(0, &qword_2811C8768, sub_217A532C8, sub_217A53320);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowingViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowingViewEvent(0) + 24);
  sub_217A6018C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowingViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowingViewEvent(0) + 28);
  sub_217BCFD24(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BCFD24(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t FollowingViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowingViewEvent(0) + 28);
  sub_217BCFD24(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowingViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217BCFD24(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FollowingViewEvent(0);
  v5 = v4[5];
  sub_217BCFD24(0, &qword_2811C8768, sub_217A532C8, sub_217A53320);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A6018C();
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217BCFD24(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t FollowingViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t sub_217BD00D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t FollowingViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FollowingViewEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

__n128 FollowingViewEvent.Model.init(viewData:followingData:eventData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *a2;
  *a5 = *a1;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9;
  *(a5 + 18) = v10;
  v11 = type metadata accessor for FollowingViewEvent.Model(0);
  v12 = *(v11 + 24);
  v13 = sub_217D8899C();
  (*(*(v13 - 8) + 32))(a5 + v12, a3, v13);
  v14 = a5 + *(v11 + 28);
  v15 = *(a4 + 16);
  *v14 = *a4;
  *(v14 + 16) = v15;
  result = *(a4 + 32);
  *(v14 + 32) = result;
  *(v14 + 48) = *(a4 + 48);
  return result;
}

unint64_t sub_217BD0288()
{
  v1 = 0x6174614477656976;
  v2 = 0x746144746E657665;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000021;
  }

  if (*v0)
  {
    v1 = 0x6E69776F6C6C6F66;
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

uint64_t sub_217BD0318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BD1200(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BD0340(uint64_t a1)
{
  v2 = sub_217BD0698();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BD037C(uint64_t a1)
{
  v2 = sub_217BD0698();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FollowingViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BD0B58(0, &qword_27CBA15B8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD0698();
  sub_217D89E7C();
  v12 = *(v3 + 8);
  v13 = *(v3 + 16);
  *&v27 = *v3;
  *(&v27 + 1) = v12;
  LOWORD(v28) = v13;
  LOBYTE(v23) = 0;
  sub_217A5E790();

  sub_217D89CAC();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v27) = *(v3 + 18);
    LOBYTE(v23) = 1;
    sub_217A53320();
    sub_217D89CAC();
    v14 = type metadata accessor for FollowingViewEvent.Model(0);
    v15 = *(v14 + 24);
    v32 = 2;
    sub_217D8899C();
    sub_217A602A0(&unk_2811C8410);
    sub_217D89CAC();
    v16 = (v3 + *(v14 + 28));
    v17 = v16[1];
    v27 = *v16;
    v28 = v17;
    v19 = *v16;
    v18 = v16[1];
    v29 = v16[2];
    v30 = *(v16 + 48);
    v23 = v19;
    v24 = v18;
    v25 = v16[2];
    v26 = *(v16 + 48);
    v31 = 3;
    sub_217ACC004(&v27, v21);
    sub_217A55B98();
    sub_217D89CAC();
    v21[0] = v23;
    v21[1] = v24;
    v21[2] = v25;
    v22 = v26;
    sub_217ACC69C(v21);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217BD0698()
{
  result = qword_2811C3670;
  if (!qword_2811C3670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3670);
  }

  return result;
}

uint64_t FollowingViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_217D8899C();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BD0B58(0, &qword_2811BCA38, MEMORY[0x277D844C8]);
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for FollowingViewEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_217BD0698();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v28 = v7;
  v29 = v12;
  v18 = v32;
  v19 = v15;
  v39 = 0;
  sub_217A5E738();
  v20 = v33;
  sub_217D89BCC();
  v21 = *(&v35 + 1);
  v22 = v36;
  *v19 = v35;
  *(v19 + 8) = v21;
  *(v19 + 16) = v22;
  v39 = 1;
  sub_217A532C8();
  sub_217D89BCC();
  *(v19 + 18) = v35;
  LOBYTE(v35) = 2;
  sub_217A602A0(&qword_2811C8408);
  v23 = v28;
  sub_217D89BCC();
  (*(v31 + 32))(v19 + *(v29 + 24), v23, v4);
  v39 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v18 + 8))(v11, v20);
  v24 = v30;
  v25 = v19 + *(v29 + 28);
  v26 = v36;
  *v25 = v35;
  *(v25 + 16) = v26;
  *(v25 + 32) = v37;
  *(v25 + 48) = v38;
  sub_217BD0BBC(v19, v24);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_217BD0C20(v19);
}

void sub_217BD0B58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BD0698();
    v7 = a3(a1, &type metadata for FollowingViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BD0BBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowingViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BD0C20(uint64_t a1)
{
  v2 = type metadata accessor for FollowingViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BD0D54@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217BCFD24(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217BCFD24(0, &qword_2811C8768, sub_217A532C8, sub_217A53320);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A6018C();
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217BCFD24(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217BD0F64()
{
  sub_217BCFD24(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  if (v0 <= 0x3F)
  {
    sub_217BCFD24(319, &qword_2811C8768, sub_217A532C8, sub_217A53320);
    if (v1 <= 0x3F)
    {
      sub_217A6018C();
      if (v2 <= 0x3F)
      {
        sub_217BCFD24(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_217BD10FC()
{
  result = qword_27CBA15C0;
  if (!qword_27CBA15C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA15C0);
  }

  return result;
}

unint64_t sub_217BD1154()
{
  result = qword_2811C3660;
  if (!qword_2811C3660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3660);
  }

  return result;
}

unint64_t sub_217BD11AC()
{
  result = qword_2811C3668;
  if (!qword_2811C3668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3668);
  }

  return result;
}

uint64_t sub_217BD1200(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6174614477656976 && a2 == 0xE800000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69776F6C6C6F66 && a2 == 0xED00006174614467 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_217D89D4C();

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

unint64_t NewsletterSubscriptionType.init(_:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t VideoAdLoadData.init(duration:loadState:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t sub_217BD140C()
{
  if (*v0)
  {
    result = 0x7461745364616F6CLL;
  }

  else
  {
    result = 0x6E6F697461727564;
  }

  *v0;
  return result;
}

uint64_t sub_217BD144C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

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

uint64_t sub_217BD1530(uint64_t a1)
{
  v2 = sub_217BD1740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BD156C(uint64_t a1)
{
  v2 = sub_217BD1740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdLoadData.encode(to:)(void *a1)
{
  sub_217BD19B4(0, &qword_27CBA15C8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = *(v1 + 8);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD1740();
  sub_217D89E7C();
  v17 = 0;
  sub_217D89CCC();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_217BD1794();
    sub_217D89CAC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217BD1740()
{
  result = qword_27CBA15D0;
  if (!qword_27CBA15D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA15D0);
  }

  return result;
}

unint64_t sub_217BD1794()
{
  result = qword_27CBA15D8;
  if (!qword_27CBA15D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA15D8);
  }

  return result;
}

uint64_t VideoAdLoadData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217BD19B4(0, &qword_27CBA15E0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD1740();
  sub_217D89E5C();
  if (!v2)
  {
    v18 = 0;
    v12 = sub_217D89BEC();
    v16 = 1;
    sub_217BD1A18();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    v14 = v17;
    *a2 = v12;
    *(a2 + 8) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BD19B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BD1740();
    v7 = a3(a1, &type metadata for VideoAdLoadData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BD1A18()
{
  result = qword_27CBA15E8;
  if (!qword_27CBA15E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA15E8);
  }

  return result;
}

unint64_t sub_217BD1A70()
{
  result = qword_27CBA15F0;
  if (!qword_27CBA15F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA15F0);
  }

  return result;
}

unint64_t sub_217BD1AC8()
{
  result = qword_27CBA15F8;
  if (!qword_27CBA15F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA15F8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VideoAdLoadData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoAdLoadData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

unint64_t sub_217BD1C0C()
{
  result = qword_27CBA1600;
  if (!qword_27CBA1600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1600);
  }

  return result;
}

unint64_t sub_217BD1C64()
{
  result = qword_27CBA1608;
  if (!qword_27CBA1608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1608);
  }

  return result;
}

unint64_t sub_217BD1CBC()
{
  result = qword_27CBA1610;
  if (!qword_27CBA1610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1610);
  }

  return result;
}

NewsAnalytics::PaywallVisualContentType_optional __swiftcall PaywallVisualContentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PaywallVisualContentType.rawValue.getter()
{
  v1 = 0x746C7561666564;
  v2 = 0x657061707377656ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x6F69647561;
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

unint64_t sub_217BD1DFC()
{
  result = qword_27CBA1618;
  if (!qword_27CBA1618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1618);
  }

  return result;
}

uint64_t sub_217BD1E50()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BD1F18()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217BD1FCC()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217BD209C(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746C7561666564;
  v4 = 0xE900000000000072;
  v5 = 0x657061707377656ELL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000217DCB1A0;
  }

  if (*v1)
  {
    v3 = 0x6F69647561;
    v2 = 0xE500000000000000;
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

unint64_t sub_217BD21E0()
{
  result = qword_2811BF790;
  if (!qword_2811BF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF790);
  }

  return result;
}

NewsAnalytics::MediaPlayLocation_optional __swiftcall MediaPlayLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

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

uint64_t MediaPlayLocation.rawValue.getter()
{
  if (*v0)
  {
    result = 1684366694;
  }

  else
  {
    result = 0x656C6369747261;
  }

  *v0;
  return result;
}

uint64_t sub_217BD22CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1684366694;
  }

  else
  {
    v4 = 0x656C6369747261;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1684366694;
  }

  else
  {
    v6 = 0x656C6369747261;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();
  }

  return v9 & 1;
}

unint64_t sub_217BD2370()
{
  result = qword_27CBA1620;
  if (!qword_27CBA1620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1620);
  }

  return result;
}

uint64_t sub_217BD23C4()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BD2440()
{
  *v0;
  sub_217D895CC();
}

uint64_t sub_217BD24A8()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BD2520@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_217D89B0C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_217BD2580(uint64_t *a1@<X8>)
{
  v2 = 1684366694;
  if (!*v1)
  {
    v2 = 0x656C6369747261;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_217BD2678()
{
  result = qword_27CBA1628;
  if (!qword_27CBA1628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1628);
  }

  return result;
}

uint64_t IssueExposureContextData.surfacedByChannelID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IssueExposureContextData.surfacedByChannelID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217BD2780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x8000000217DCFC40 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217BD2814(uint64_t a1)
{
  v2 = sub_217BD29D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BD2850(uint64_t a1)
{
  v2 = sub_217BD29D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IssueExposureContextData.encode(to:)(void *a1)
{
  sub_217BD2BB0(0, &qword_27CBA1630, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD29D8();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BD29D8()
{
  result = qword_27CBA1638;
  if (!qword_27CBA1638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1638);
  }

  return result;
}

uint64_t IssueExposureContextData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217BD2BB0(0, &qword_27CBA1640, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD29D8();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89B8C();
    v14 = v13;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BD2BB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BD29D8();
    v7 = a3(a1, &type metadata for IssueExposureContextData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BD2C34(void *a1)
{
  sub_217BD2BB0(0, &qword_27CBA1630, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD29D8();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BD2DA4()
{
  result = qword_27CBA1648;
  if (!qword_27CBA1648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1648);
  }

  return result;
}

unint64_t sub_217BD2DFC()
{
  result = qword_27CBA1650;
  if (!qword_27CBA1650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1650);
  }

  return result;
}

unint64_t sub_217BD2E54()
{
  result = qword_27CBA1658;
  if (!qword_27CBA1658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1658);
  }

  return result;
}

uint64_t URLData.url.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t URLData.url.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t URLData.metadata.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t URLData.metadata.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

NewsAnalytics::URLData __swiftcall URLData.init(url:metadata:)(Swift::String url, Swift::String_optional metadata)
{
  v2->value = url;
  v2[1] = metadata;
  result.metadata = metadata;
  result.url = url;
  return result;
}

uint64_t sub_217BD2FCC()
{
  if (*v0)
  {
    result = 0x617461646174656DLL;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_217BD3000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

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

uint64_t sub_217BD30DC(uint64_t a1)
{
  v2 = sub_217BD32D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BD3118(uint64_t a1)
{
  v2 = sub_217BD32D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t URLData.encode(to:)(void *a1)
{
  sub_217BD3538(0, &qword_2811BC508, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v15[1] = v1[3];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD32D4();
  sub_217D89E7C();
  v17 = 0;
  v13 = v15[3];
  sub_217D89C6C();
  if (!v13)
  {
    v16 = 1;
    sub_217D89C0C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BD32D4()
{
  result = qword_2811BD358;
  if (!qword_2811BD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD358);
  }

  return result;
}

uint64_t URLData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217BD3538(0, &qword_27CBA1660, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD32D4();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v20 = v12;
  v21 = 1;
  v15 = sub_217D89B2C();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  *a2 = v20;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BD3538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BD32D4();
    v7 = a3(a1, &type metadata for URLData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BD35F8()
{
  result = qword_27CBA1668;
  if (!qword_27CBA1668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1668);
  }

  return result;
}

unint64_t sub_217BD3650()
{
  result = qword_2811BD348;
  if (!qword_2811BD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD348);
  }

  return result;
}

unint64_t sub_217BD36A8()
{
  result = qword_2811BD350;
  if (!qword_2811BD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD350);
  }

  return result;
}

uint64_t sub_217BD36FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_217BD3AB0();
  result = sub_217D89ACC();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_217D89E1C();
      MEMORY[0x21CEAD4A0](v21);
      result = sub_217D89E3C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

void *sub_217BD3970()
{
  v1 = v0;
  sub_217BD3AB0();
  v2 = *v0;
  v3 = sub_217D89ABC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_217BD3AB0()
{
  if (!qword_27CBA1670)
  {
    type metadata accessor for FCSubscriptionOrigin(255);
    sub_217BD3B1C();
    v0 = sub_217D89AEC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA1670);
    }
  }
}

unint64_t sub_217BD3B1C()
{
  result = qword_27CBA1678;
  if (!qword_27CBA1678)
  {
    type metadata accessor for FCSubscriptionOrigin(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1678);
  }

  return result;
}

uint64_t sub_217BD3B74()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_27CBA1680);
  v1 = __swift_project_value_buffer(v0, qword_27CBA1680);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *MEMORY[0x277CEACB0];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_217BD3C60()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_27CBA1698);
  v1 = __swift_project_value_buffer(v0, qword_27CBA1698);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217BD3D20()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA16B0);
  __swift_project_value_buffer(v0, qword_27CBA16B0);
  return sub_217D8866C();
}

uint64_t VideoAdLoadEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_217BD4B9C(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t VideoAdLoadEvent.adUserData.setter(uint64_t a1)
{
  sub_217BD4B9C(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t VideoAdLoadEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 20);
  sub_217A6018C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 24);
  sub_217BD4B9C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 24);
  sub_217BD4B9C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 28);
  sub_217BD4B9C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 28);
  sub_217BD4B9C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 32);
  sub_217BD4B9C(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217BD4434()
{
  result = qword_27CBA16D0;
  if (!qword_27CBA16D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA16D0);
  }

  return result;
}

unint64_t sub_217BD4488()
{
  result = qword_27CBA16D8;
  if (!qword_27CBA16D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA16D8);
  }

  return result;
}

uint64_t VideoAdLoadEvent.videoAdData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 32);
  sub_217BD4B9C(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 36);
  sub_217BD4B9C(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 36);
  sub_217BD4B9C(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 40);
  sub_217BD4B9C(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 40);
  sub_217BD4B9C(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.adGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 44);
  sub_217BD4B9C(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.adGroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 44);
  sub_217BD4B9C(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.adLoadData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 48);
  sub_217BD4B9C(0, &qword_27CBA16E0, sub_217BD1A70, sub_217BD1AC8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BD4B9C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t VideoAdLoadEvent.adLoadData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 48);
  sub_217BD4B9C(0, &qword_27CBA16E0, sub_217BD1A70, sub_217BD1AC8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217BD4B9C(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  Event = type metadata accessor for VideoAdLoadEvent(0);
  v5 = Event[5];
  sub_217A6018C();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = Event[6];
  sub_217BD4B9C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = Event[7];
  sub_217BD4B9C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = Event[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217BD4B9C(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = Event[9];
  sub_217BD4B9C(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = Event[10];
  sub_217BD4B9C(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  (*(*(v17 - 8) + 104))(a1 + v16, v12, v17);
  v18 = Event[11];
  sub_217BD4B9C(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  (*(*(v19 - 8) + 104))(a1 + v18, v12, v19);
  v20 = Event[12];
  sub_217BD4B9C(0, &qword_27CBA16E0, sub_217BD1A70, sub_217BD1AC8);
  v22 = *(*(v21 - 8) + 104);

  return v22(a1 + v20, v2, v21);
}

uint64_t VideoAdLoadEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_217BD51A8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t VideoAdLoadEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdLoadEvent.Model(0) + 24));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t VideoAdLoadEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoAdLoadEvent.Model(0) + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t VideoAdLoadEvent.Model.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoAdLoadEvent.Model(0) + 32);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t VideoAdLoadEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdLoadEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t VideoAdLoadEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoAdLoadEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t VideoAdLoadEvent.Model.adGroupData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoAdLoadEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t VideoAdLoadEvent.Model.adLoadData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for VideoAdLoadEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

__n128 VideoAdLoadEvent.Model.init(adUserData:eventData:userBundleSubscriptionContextData:channelData:videoAdData:adPlacementData:adFeedData:adGroupData:adLoadData:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, __n128 *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, char *a8@<X7>, char *a9@<X8>, uint64_t *a10)
{
  v13 = a1[1];
  v14 = *a4;
  v15 = a4[1];
  v16 = *(a4 + 16);
  v29 = *(a4 + 17);
  v17 = a4[3];
  v18 = a4[4];
  v31 = *a5;
  v30 = a5[1].n128_u64[0];
  v33 = *a6;
  v32 = a6[1];
  v34 = *a7;
  v35 = *a8;
  v37 = *a10;
  v36 = *(a10 + 8);
  *a9 = *a1;
  *(a9 + 1) = v13;
  v19 = type metadata accessor for VideoAdLoadEvent.Model(0);
  v20 = v19[5];
  v21 = sub_217D8899C();
  (*(*(v21 - 8) + 32))(&a9[v20], a2, v21);
  v22 = &a9[v19[6]];
  v23 = *(a3 + 16);
  *v22 = *a3;
  *(v22 + 1) = v23;
  *(v22 + 2) = *(a3 + 32);
  v22[48] = *(a3 + 48);
  v24 = &a9[v19[7]];
  *v24 = v14;
  *(v24 + 1) = v15;
  v24[16] = v16;
  v24[17] = v29;
  *(v24 + 3) = v17;
  *(v24 + 4) = v18;
  v25 = &a9[v19[8]];
  result = v31;
  *v25 = v31;
  v25[1].n128_u64[0] = v30;
  v27 = &a9[v19[9]];
  *v27 = v33;
  *(v27 + 1) = v32;
  a9[v19[10]] = v34;
  a9[v19[11]] = v35;
  v28 = &a9[v19[12]];
  *v28 = v37;
  v28[8] = v36;
  return result;
}