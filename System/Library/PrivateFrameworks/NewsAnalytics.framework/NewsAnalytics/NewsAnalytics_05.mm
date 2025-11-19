uint64_t ReplicaAdvertisementViewEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ReplicaAdvertisementViewEvent.Model(0) + 48));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ReplicaAdvertisementViewEvent.Model.issueExposureContextData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ReplicaAdvertisementViewEvent.Model(0) + 52));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ReplicaAdvertisementViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReplicaAdvertisementViewEvent.Model(0) + 56);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  LOBYTE(v3) = *(v3 + 48);
  v10 = v3;
  *a1 = v8[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v3;
  return sub_217ACC004(v8, v7);
}

uint64_t ReplicaAdvertisementViewEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReplicaAdvertisementViewEvent.Model(0) + 60);
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

uint64_t ReplicaAdvertisementViewEvent.Model.issueViewContextData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ReplicaAdvertisementViewEvent.Model(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t ReplicaAdvertisementViewEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ReplicaAdvertisementViewEvent.Model(0) + 68));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t sub_217AD1A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

__n128 ReplicaAdvertisementViewEvent.Model.init(eventData:timedData:articleData:viewData:articleScienceData:userChannelContextData:orientationData:issueData:issueViewData:issueExposureContextData:userBundleSubscriptionContextData:channelData:issueViewContextData:feedData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, const void *a5@<X4>, char *a6@<X5>, __int16 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t a12, uint64_t *a13, char *a14, __n128 *a15)
{
  v20 = *a4;
  v19 = a4[1];
  v21 = *(a4 + 8);
  v42 = a6[1];
  v43 = *a6;
  v22 = *(a6 + 1);
  v44 = *a7;
  v48 = a8[1];
  v49 = *a8;
  v46 = *(a8 + 17);
  v47 = *(a8 + 16);
  v45 = a8[3];
  v50 = a10[1];
  v51 = *a10;
  v52 = a11[1];
  v53 = *a11;
  v60 = *a13;
  v59 = a13[1];
  v58 = *(a13 + 16);
  v57 = *(a13 + 17);
  v55 = a13[4];
  v56 = a13[3];
  v61 = *a14;
  v63 = *a15;
  v62 = a15[1].n128_u64[0];
  v23 = sub_217D8899C();
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  v24 = type metadata accessor for ReplicaAdvertisementViewEvent.Model(0);
  v25 = v24[5];
  v26 = sub_217D889CC();
  (*(*(v26 - 8) + 32))(a9 + v25, a2, v26);
  v27 = a9 + v24[6];
  v28 = *(a3 + 112);
  *(v27 + 96) = *(a3 + 96);
  *(v27 + 112) = v28;
  *(v27 + 127) = *(a3 + 127);
  v29 = *(a3 + 48);
  *(v27 + 32) = *(a3 + 32);
  *(v27 + 48) = v29;
  v30 = *(a3 + 80);
  *(v27 + 64) = *(a3 + 64);
  *(v27 + 80) = v30;
  v31 = *(a3 + 16);
  *v27 = *a3;
  *(v27 + 16) = v31;
  v32 = a9 + v24[7];
  *v32 = v20;
  *(v32 + 8) = v19;
  *(v32 + 16) = v21;
  memcpy((a9 + v24[8]), a5, 0x111uLL);
  v33 = a9 + v24[9];
  *v33 = v43;
  *(v33 + 1) = v42;
  *(v33 + 2) = v22;
  *(a9 + v24[10]) = v44;
  v34 = a9 + v24[11];
  *v34 = v49;
  *(v34 + 8) = v48;
  *(v34 + 16) = v47;
  *(v34 + 17) = v46;
  *(v34 + 24) = v45;
  v35 = (a9 + v24[12]);
  *v35 = v51;
  v35[1] = v50;
  v36 = (a9 + v24[13]);
  *v36 = v53;
  v36[1] = v52;
  v37 = a9 + v24[14];
  v38 = *(a12 + 16);
  *v37 = *a12;
  *(v37 + 16) = v38;
  *(v37 + 32) = *(a12 + 32);
  *(v37 + 48) = *(a12 + 48);
  v39 = a9 + v24[15];
  *v39 = v60;
  *(v39 + 8) = v59;
  *(v39 + 16) = v58;
  *(v39 + 17) = v57;
  *(v39 + 24) = v56;
  *(v39 + 32) = v55;
  *(a9 + v24[16]) = v61;
  v40 = (a9 + v24[17]);
  result = v63;
  *v40 = v63;
  v40[1].n128_u64[0] = v62;
  return result;
}

unint64_t sub_217AD1D18(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x74614464656D6974;
      break;
    case 2:
      result = 0x44656C6369747261;
      break;
    case 3:
      result = 0x6174614477656976;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0x7461746E6569726FLL;
      break;
    case 7:
      result = 0x7461446575737369;
      break;
    case 8:
      result = 0x6569566575737369;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD000000000000021;
      break;
    case 11:
      result = 0x446C656E6E616863;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x6174614464656566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217AD1ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217AD45D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217AD1F04(uint64_t a1)
{
  v2 = sub_217AD2810();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AD1F40(uint64_t a1)
{
  v2 = sub_217AD2810();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReplicaAdvertisementViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217AD34F8(0, &qword_27CB9EAF0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v55 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AD2810();
  sub_217D89E7C();
  v79[0] = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for ReplicaAdvertisementViewEvent.Model(0);
    v13 = *(v12 + 20);
    v101 = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v102 = v12;
    v14 = v3 + *(v12 + 24);
    v15 = *(v14 + 96);
    v16 = *(v14 + 64);
    v98 = *(v14 + 80);
    v99 = v15;
    v17 = *(v14 + 96);
    *v100 = *(v14 + 112);
    v18 = *(v14 + 16);
    v19 = *(v14 + 48);
    v95 = *(v14 + 32);
    v96 = v19;
    v20 = *(v14 + 48);
    v97 = *(v14 + 64);
    v21 = *(v14 + 16);
    v94[0] = *v14;
    v94[1] = v21;
    v91 = v98;
    v92 = v17;
    v93[0] = *(v14 + 112);
    v88 = v95;
    v89 = v20;
    v90 = v16;
    *&v100[15] = *(v14 + 127);
    *(v93 + 15) = *(v14 + 127);
    v86 = v94[0];
    v87 = v18;
    v85 = 2;
    sub_217AD1630(v94, v79);
    sub_217ACF52C();
    sub_217D89CAC();
    v83[5] = v91;
    v83[6] = v92;
    *v84 = v93[0];
    *&v84[15] = *(v93 + 15);
    v83[2] = v88;
    v83[3] = v89;
    v83[4] = v90;
    v83[0] = v86;
    v83[1] = v87;
    sub_217AD2864(v83);
    v22 = v102;
    v23 = v102[7];
    v56 = v3;
    v24 = (v3 + v23);
    v25 = *v24;
    v26 = v24[1];
    LOWORD(v24) = *(v24 + 8);
    v80 = v25;
    v81 = v26;
    v82 = v24;
    v79[279] = 3;
    sub_217A5E790();

    sub_217D89CAC();

    v27 = v22[8];
    v28 = v56;
    memcpy(v79, (v56 + v27), 0x111uLL);
    memcpy(v78, (v56 + v27), sizeof(v78));
    v77[279] = 4;
    sub_217AD1744(v79, v77);
    sub_217ACF934();
    sub_217D89CAC();
    memcpy(v77, v78, 0x111uLL);
    sub_217AD28B8(v77);
    v29 = (v28 + v22[9]);
    v30 = *v29;
    v31 = v29[1];
    LOWORD(v29) = *(v29 + 1);
    LOBYTE(v70) = v30;
    BYTE1(v70) = v31;
    WORD1(v70) = v29;
    LOBYTE(v66) = 5;
    sub_217ACFB8C();
    sub_217D89CAC();
    LOWORD(v70) = *(v28 + v22[10]);
    LOBYTE(v66) = 6;
    sub_217A4CF88();
    sub_217D89CAC();
    v32 = v28 + v22[11];
    v33 = *(v32 + 8);
    v34 = *(v32 + 16);
    v35 = *(v32 + 17);
    v36 = *(v32 + 24);
    *&v70 = *v32;
    *(&v70 + 1) = v33;
    LOBYTE(v71) = v34;
    BYTE1(v71) = v35;
    *(&v71 + 1) = v36;
    LOBYTE(v66) = 7;
    sub_217ACFF94();

    sub_217D89CAC();

    v37 = (v28 + v22[12]);
    v38 = v37[1];
    *&v70 = *v37;
    *(&v70 + 1) = v38;
    LOBYTE(v66) = 8;
    sub_217AD01EC();

    sub_217D89C3C();

    v39 = (v28 + v22[13]);
    v40 = v39[1];
    v75 = *v39;
    v76 = v40;
    v74 = 9;
    sub_217AD0444();

    sub_217D89C3C();

    v41 = (v28 + v22[14]);
    v42 = v41[1];
    v70 = *v41;
    v71 = v42;
    v44 = *v41;
    v43 = v41[1];
    v72 = v41[2];
    v73 = *(v41 + 48);
    v66 = v44;
    v67 = v43;
    v68 = v41[2];
    v69 = *(v41 + 48);
    v65 = 10;
    sub_217ACC004(&v70, v63);
    sub_217A55B98();
    sub_217D89CAC();
    v63[0] = v66;
    v63[1] = v67;
    v63[2] = v68;
    v64 = v69;
    sub_217ACC69C(v63);
    v46 = v56 + v102[15];
    v47 = *(v46 + 8);
    v48 = *(v46 + 16);
    v49 = *(v46 + 17);
    v50 = *(v46 + 24);
    v51 = *(v46 + 32);
    v58 = *v46;
    v59 = v47;
    LOBYTE(v60) = v48;
    BYTE1(v60) = v49;
    v61 = v50;
    v62 = v51;
    v57 = 11;
    sub_217AD084C();

    sub_217D89CAC();

    LOBYTE(v58) = *(v56 + v102[16]);
    v57 = 12;
    sub_217AD0AA4();
    sub_217D89C3C();
    v52 = (v56 + v102[17]);
    v53 = v52[1];
    v54 = v52[2];
    v58 = *v52;
    v59 = v53;
    v60 = v54;
    v57 = 13;
    sub_217AD1A68(v58, v53, v54);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v58, v59, v60);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217AD2810()
{
  result = qword_27CB9EAF8;
  if (!qword_27CB9EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EAF8);
  }

  return result;
}

uint64_t sub_217AD290C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t ReplicaAdvertisementViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_217D889CC();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217D8899C();
  v64 = *(v7 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v7);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217AD34F8(0, &qword_27CB9EB00, MEMORY[0x277D844C8]);
  v67 = v10;
  v65 = *(v10 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v59 - v12;
  v14 = type metadata accessor for ReplicaAdvertisementViewEvent.Model(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  v91 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_217AD2810();
  v68 = v13;
  v20 = v69;
  sub_217D89E5C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v91);
  }

  v21 = v65;
  v60 = v14;
  v69 = v17;
  LOBYTE(v90[0]) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v22 = v66;
  sub_217D89BCC();
  v23 = v7;
  v24 = *(v64 + 32);
  v25 = v69;
  v66 = v23;
  v24(v69, v22);
  LOBYTE(v90[0]) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v26 = v6;
  v27 = v63;
  sub_217D89BCC();
  v59 = 0;
  v28 = v26;
  v29 = v60;
  (*(v62 + 32))(&v25[v60[5]], v28, v27);
  v81 = 2;
  sub_217ACF4D8();
  sub_217D89BCC();
  v30 = &v25[v29[6]];
  v31 = *v89;
  *(v30 + 6) = v88;
  *(v30 + 7) = v31;
  *(v30 + 127) = *&v89[15];
  v32 = v85;
  *(v30 + 2) = v84;
  *(v30 + 3) = v32;
  v33 = v87;
  *(v30 + 4) = v86;
  *(v30 + 5) = v33;
  v34 = v83;
  *v30 = v82;
  *(v30 + 1) = v34;
  LOBYTE(v76) = 3;
  sub_217A5E738();
  sub_217D89BCC();
  v35 = v90[1];
  v36 = v90[2];
  v37 = &v25[v29[7]];
  *v37 = v90[0];
  *(v37 + 1) = v35;
  *(v37 + 8) = v36;
  v80 = 4;
  sub_217ACF8E0();
  sub_217D89BCC();
  memcpy(&v25[v29[8]], v90, 0x111uLL);
  LOBYTE(v71) = 5;
  sub_217ACFB38();
  sub_217D89BCC();
  v38 = BYTE1(v76);
  v39 = WORD1(v76);
  v40 = &v25[v29[9]];
  *v40 = v76;
  v40[1] = v38;
  *(v40 + 1) = v39;
  LOBYTE(v71) = 6;
  sub_217A4CF30();
  sub_217D89BCC();
  *&v25[v29[10]] = v76;
  LOBYTE(v71) = 7;
  sub_217ACFF40();
  sub_217D89BCC();
  v41 = *(&v76 + 1);
  v42 = v77;
  v43 = BYTE1(v77);
  v44 = *(&v77 + 1);
  v45 = &v25[v29[11]];
  *v45 = v76;
  *(v45 + 1) = v41;
  v45[16] = v42;
  v45[17] = v43;
  *(v45 + 3) = v44;
  LOBYTE(v71) = 8;
  sub_217AD0198();
  sub_217D89B5C();
  *&v69[v60[12]] = v76;
  LOBYTE(v71) = 9;
  sub_217AD03F0();
  sub_217D89B5C();
  *&v69[v60[13]] = v76;
  v75 = 10;
  sub_217A54D08();
  sub_217D89BCC();
  v46 = &v69[v60[14]];
  v47 = v77;
  *v46 = v76;
  *(v46 + 1) = v47;
  *(v46 + 2) = v78;
  v46[48] = v79;
  v70 = 11;
  sub_217AD07F8();
  sub_217D89BCC();
  v48 = *(&v71 + 1);
  v49 = v72;
  v50 = BYTE1(v72);
  v51 = v73;
  v52 = v74;
  v53 = &v69[v60[15]];
  *v53 = v71;
  *(v53 + 1) = v48;
  v53[16] = v49;
  v53[17] = v50;
  *(v53 + 3) = v51;
  *(v53 + 4) = v52;
  v70 = 12;
  sub_217AD0A50();
  sub_217D89B5C();
  v69[v60[16]] = v71;
  v70 = 13;
  sub_217A5B978();
  sub_217D89B5C();
  (*(v21 + 8))(v68, v67);
  v54 = v72;
  v55 = v61;
  v56 = v69;
  v57 = &v69[v60[17]];
  *v57 = v71;
  *(v57 + 2) = v54;
  sub_217AD355C(v56, v55);
  __swift_destroy_boxed_opaque_existential_1(v91);
  return sub_217AD35C0(v56);
}

void sub_217AD34F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AD2810();
    v7 = a3(a1, &type metadata for ReplicaAdvertisementViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217AD355C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicaAdvertisementViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AD35C0(uint64_t a1)
{
  v2 = type metadata accessor for ReplicaAdvertisementViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217AD36F4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217AD0CA8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217AD0CA8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217AD0CA8(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217AD0CA8(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  sub_217AD0CA8(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  (*(*(v17 - 8) + 104))(a2 + v16, v4, v17);
  v18 = a1[11];
  sub_217AD0CA8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v19 - 8) + 104))(a2 + v18, v4, v19);
  v20 = a1[12];
  v21 = *MEMORY[0x277CEACF0];
  sub_217AD0CA8(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v22 - 8) + 104))(a2 + v20, v21, v22);
  v23 = a1[13];
  sub_217AD0CA8(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444);
  (*(*(v24 - 8) + 104))(a2 + v23, v21, v24);
  v25 = a1[14];
  sub_217AD0CA8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_217AD0CA8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  sub_217AD0CA8(0, &qword_2811C85E0, sub_217AD0A50, sub_217AD0AA4);
  (*(*(v30 - 8) + 104))(a2 + v29, v21, v30);
  v31 = a1[17];
  sub_217AD0CA8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v33 = *(*(v32 - 8) + 104);

  return v33(a2 + v31, v21, v32);
}

void sub_217AD3D90()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217AD0CA8(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
      if (v2 <= 0x3F)
      {
        sub_217AD0CA8(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
        if (v3 <= 0x3F)
        {
          sub_217AD0CA8(319, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
          if (v4 <= 0x3F)
          {
            sub_217AD0CA8(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
            if (v5 <= 0x3F)
            {
              sub_217AD0CA8(319, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
              if (v6 <= 0x3F)
              {
                sub_217AD0CA8(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
                if (v7 <= 0x3F)
                {
                  sub_217AD0CA8(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
                  if (v8 <= 0x3F)
                  {
                    sub_217AD0CA8(319, &qword_2811C8598, sub_217AD03F0, sub_217AD0444);
                    if (v9 <= 0x3F)
                    {
                      sub_217AD0CA8(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                      if (v10 <= 0x3F)
                      {
                        sub_217AD0CA8(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
                        if (v11 <= 0x3F)
                        {
                          sub_217AD0CA8(319, &qword_2811C85E0, sub_217AD0A50, sub_217AD0AA4);
                          if (v12 <= 0x3F)
                          {
                            sub_217AD0CA8(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
                            if (v13 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_217AD41FC()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217D889CC();
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C71A8);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BF960);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C1EE0);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811BD308);
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

uint64_t getEnumTagSinglePayload for ViewType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ViewType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217AD44D0()
{
  result = qword_27CB9EB08;
  if (!qword_27CB9EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EB08);
  }

  return result;
}

unint64_t sub_217AD4528()
{
  result = qword_27CB9EB10;
  if (!qword_27CB9EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EB10);
  }

  return result;
}

unint64_t sub_217AD4580()
{
  result = qword_27CB9EB18;
  if (!qword_27CB9EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EB18);
  }

  return result;
}

uint64_t sub_217AD45D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCCCA0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCCCE0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DCCD00 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000)
  {

    return 13;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217AD4B1C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C5C68);
  __swift_project_value_buffer(v0, qword_2811C5C68);
  return sub_217D8866C();
}

uint64_t ArticleLoadEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleLoadEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLoadEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLoadEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLoadEvent(0) + 24);
  sub_217A602E4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLoadEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLoadEvent(0) + 24);
  sub_217A602E4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLoadEvent.articleLoadData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLoadEvent(0) + 28);
  sub_217A602E4(0, &qword_2811C8708, sub_217AD4FC0, sub_217AD5014);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AD4FC0()
{
  result = qword_2811C6940;
  if (!qword_2811C6940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6940);
  }

  return result;
}

unint64_t sub_217AD5014()
{
  result = qword_2811C6948;
  if (!qword_2811C6948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6948);
  }

  return result;
}

uint64_t ArticleLoadEvent.articleLoadData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLoadEvent(0) + 28);
  sub_217A602E4(0, &qword_2811C8708, sub_217AD4FC0, sub_217AD5014);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLoadEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  Event = type metadata accessor for ArticleLoadEvent(0);
  v5 = Event[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = Event[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217A602E4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = Event[7];
  sub_217A602E4(0, &qword_2811C8708, sub_217AD4FC0, sub_217AD5014);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

uint64_t sub_217AD5374@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ArticleLoadEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLoadEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ArticleLoadEvent.Model.articleLoadData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLoadEvent.Model(0) + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 ArticleLoadEvent.Model.init(eventData:timedData:feedData:articleLoadData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v18 = *a3;
  v8 = a3[1].n128_u64[0];
  v9 = *a4;
  v10 = a4[1];
  v11 = sub_217D8899C();
  (*(*(v11 - 8) + 32))(a5, a1, v11);
  v12 = type metadata accessor for ArticleLoadEvent.Model(0);
  v13 = v12[5];
  v14 = sub_217D889CC();
  (*(*(v14 - 8) + 32))(a5 + v13, a2, v14);
  v15 = (a5 + v12[6]);
  result = v18;
  *v15 = v18;
  v15[1].n128_u64[0] = v8;
  v17 = (a5 + v12[7]);
  *v17 = v9;
  v17[1] = v10;
  return result;
}

uint64_t sub_217AD55B8()
{
  v1 = 0x746144746E657665;
  v2 = 0x6174614464656566;
  if (*v0 != 2)
  {
    v2 = 0x4C656C6369747261;
  }

  if (*v0)
  {
    v1 = 0x74614464656D6974;
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

uint64_t sub_217AD5640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217AD66BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217AD5668(uint64_t a1)
{
  v2 = sub_217AD59C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AD56A4(uint64_t a1)
{
  v2 = sub_217AD59C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleLoadEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217AD5F7C(0, &qword_27CB9EB20, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AD59C0();
  sub_217D89E7C();
  LOBYTE(v21) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for ArticleLoadEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v21) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = (v3 + v12[6]);
    v15 = v14[1];
    v16 = v14[2];
    v21 = *v14;
    v22 = v15;
    v23 = v16;
    HIBYTE(v20) = 2;
    sub_217AD1A68(v21, v15, v16);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v21, v22, v23);
    v17 = (v3 + v12[7]);
    v18 = v17[1];
    v21 = *v17;
    v22 = v18;
    HIBYTE(v20) = 3;
    sub_217AD5014();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217AD59C0()
{
  result = qword_27CB9EB28;
  if (!qword_27CB9EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EB28);
  }

  return result;
}

uint64_t ArticleLoadEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v35 = sub_217D889CC();
  v33 = *(v35 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v38 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217AD5F7C(0, &qword_27CB9EB30, MEMORY[0x277D844C8]);
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ArticleLoadEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AD59C0();
  v39 = v12;
  v18 = v40;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = v13;
  v19 = v16;
  v20 = v34;
  v21 = v35;
  LOBYTE(v41) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  sub_217D89BCC();
  v22 = *(v20 + 32);
  v23 = v38;
  v38 = v6;
  v22(v16, v23);
  LOBYTE(v41) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  sub_217D89BCC();
  (*(v33 + 32))(&v16[*(v40 + 20)], v5, v21);
  v43 = 2;
  sub_217A5B978();
  sub_217D89B5C();
  v24 = a1;
  v25 = v42;
  v26 = v40;
  v27 = v19 + *(v40 + 24);
  *v27 = v41;
  *(v27 + 16) = v25;
  v43 = 3;
  sub_217AD4FC0();
  sub_217D89BCC();
  (*(v36 + 8))(v39, v37);
  v28 = *(&v41 + 1);
  v29 = (v19 + *(v26 + 28));
  *v29 = v41;
  v29[1] = v28;
  sub_217AD5FE0(v19, v32);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_217AD6044(v19);
}

void sub_217AD5F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AD59C0();
    v7 = a3(a1, &type metadata for ArticleLoadEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217AD5FE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleLoadEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AD6044(uint64_t a1)
{
  v2 = type metadata accessor for ArticleLoadEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217AD6178@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217A602E4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217A602E4(0, &qword_2811C8708, sub_217AD4FC0, sub_217AD5014);
  v13 = *(*(v12 - 8) + 104);

  return v13(a2 + v11, v4, v12);
}

void sub_217AD6364()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217A602E4(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
      if (v2 <= 0x3F)
      {
        sub_217A602E4(319, &qword_2811C8708, sub_217AD4FC0, sub_217AD5014);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_217AD64B0()
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

void sub_217AD6554()
{
  if (!qword_2811BD308)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BD308);
    }
  }
}

unint64_t sub_217AD65B8()
{
  result = qword_27CB9EB48;
  if (!qword_27CB9EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EB48);
  }

  return result;
}

unint64_t sub_217AD6610()
{
  result = qword_27CB9EB50;
  if (!qword_27CB9EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EB50);
  }

  return result;
}

unint64_t sub_217AD6668()
{
  result = qword_27CB9EB58;
  if (!qword_27CB9EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EB58);
  }

  return result;
}

uint64_t sub_217AD66BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C656C6369747261 && a2 == 0xEF6174614464616FLL)
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

uint64_t sub_217AD6900()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C2770);
  __swift_project_value_buffer(v0, qword_2811C2770);
  return sub_217D8866C();
}

uint64_t PuzzleExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PuzzleExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 20);
  sub_217AD7D1C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 20);
  sub_217AD7D1C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.puzzleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 24);
  sub_217AD7D1C(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AD6CB4()
{
  result = qword_2811C7F28;
  if (!qword_2811C7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F28);
  }

  return result;
}

unint64_t sub_217AD6D08()
{
  result = qword_2811C7F30;
  if (!qword_2811C7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F30);
  }

  return result;
}

uint64_t PuzzleExposureEvent.puzzleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 24);
  sub_217AD7D1C(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 28);
  sub_217AD7D1C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 28);
  sub_217AD7D1C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 32);
  sub_217AD7D1C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleExposureEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 32);
  sub_217AD7D1C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 36);
  sub_217AD7D1C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 36);
  sub_217AD7D1C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 40);
  sub_217AD7D1C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 40);
  sub_217AD7D1C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 44);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 48);
  sub_217AD7D1C(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AD76BC()
{
  result = qword_2811C5240;
  if (!qword_2811C5240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5240);
  }

  return result;
}

unint64_t sub_217AD7710()
{
  result = qword_2811C5248;
  if (!qword_2811C5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5248);
  }

  return result;
}

uint64_t PuzzleExposureEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 48);
  sub_217AD7D1C(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.puzzleLayoutData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 52);
  sub_217AD7D1C(0, &qword_2811C86B0, sub_217AD7914, sub_217AD7968);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AD7914()
{
  result = qword_2811C4D78;
  if (!qword_2811C4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4D78);
  }

  return result;
}

unint64_t sub_217AD7968()
{
  result = qword_2811C4D80[0];
  if (!qword_2811C4D80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C4D80);
  }

  return result;
}

uint64_t PuzzleExposureEvent.puzzleLayoutData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 52);
  sub_217AD7D1C(0, &qword_2811C86B0, sub_217AD7914, sub_217AD7968);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.offlineModeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 56);
  sub_217AD7D1C(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleExposureEvent.offlineModeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 56);
  sub_217AD7D1C(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 60);
  sub_217AD7D1C(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217AD7D1C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

unint64_t sub_217AD7D98()
{
  result = qword_2811C7630;
  if (!qword_2811C7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7630);
  }

  return result;
}

unint64_t sub_217AD7DEC()
{
  result = qword_2811C7638;
  if (!qword_2811C7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7638);
  }

  return result;
}

uint64_t PuzzleExposureEvent.dismissalData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 60);
  sub_217AD7D1C(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PuzzleExposureEvent(0);
  v5 = v4[5];
  sub_217AD7D1C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217AD7D1C(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217AD7D1C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217AD7D1C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217AD7D1C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217AD7D1C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v17 - 8) + 104))(a1 + v16, v10, v17);
  v18 = v4[11];
  sub_217A608E0();
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217AD7D1C(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_217AD7D1C(0, &qword_2811C86B0, sub_217AD7914, sub_217AD7968);
  (*(*(v23 - 8) + 104))(a1 + v22, v10, v23);
  v24 = v4[14];
  sub_217AD7D1C(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217AD7D1C(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
  v28 = *(*(v27 - 8) + 104);

  return v28(a1 + v26, v10, v27);
}

uint64_t PuzzleExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleExposureEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t PuzzleExposureEvent.Model.puzzleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleExposureEvent.Model(0) + 24));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_217AD85B8(v10, &v9);
}

uint64_t PuzzleExposureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleExposureEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t PuzzleExposureEvent.Model.channelData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleExposureEvent.Model(0) + 32));
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

  return sub_217AD86BC(v4, v5);
}

uint64_t sub_217AD86BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t PuzzleExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleExposureEvent.Model(0) + 36));
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

uint64_t PuzzleExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleExposureEvent.Model(0) + 40));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AD87FC(v17, &v16);
}

uint64_t sub_217AD87FC(uint64_t a1, uint64_t a2)
{
  sub_217A5E974(0, &qword_2811BD178);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AD889C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 44);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t PuzzleExposureEvent.Model.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for PuzzleExposureEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t PuzzleExposureEvent.Model.puzzleLayoutData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PuzzleExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t PuzzleExposureEvent.Model.offlineModeData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PuzzleExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t PuzzleExposureEvent.Model.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleExposureEvent.Model(0) + 60));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t PuzzleExposureEvent.Model.init(eventData:viewData:puzzleData:feedData:channelData:userBundleSubscriptionContextData:groupData:timedData:feedPositionData:puzzleLayoutData:offlineModeData:dismissalData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int *a10, char *a11, char *a12, uint64_t *a13)
{
  v19 = *a2;
  v20 = a2[1];
  v21 = *(a2 + 8);
  v45 = *a4;
  v22 = *(a4 + 2);
  v46 = *(a5 + 4);
  v47 = *(a10 + 4);
  v48 = *a10;
  v49 = *a11;
  v50 = *a12;
  v52 = a13[1];
  v53 = *a13;
  v51 = *(a13 + 16);
  v23 = sub_217D8899C();
  v43 = a5[1];
  v44 = *a5;
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  v24 = type metadata accessor for PuzzleExposureEvent.Model(0);
  v25 = a9 + v24[5];
  *v25 = v19;
  *(v25 + 8) = v20;
  *(v25 + 16) = v21;
  v26 = (a9 + v24[6]);
  v27 = a3[3];
  v26[2] = a3[2];
  v26[3] = v27;
  v26[4] = a3[4];
  v28 = a3[1];
  *v26 = *a3;
  v26[1] = v28;
  v29 = a9 + v24[7];
  *v29 = v45;
  *(v29 + 16) = v22;
  v30 = a9 + v24[8];
  *v30 = v44;
  *(v30 + 16) = v43;
  *(v30 + 32) = v46;
  v31 = a9 + v24[9];
  v32 = *(a6 + 16);
  *v31 = *a6;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(a6 + 32);
  *(v31 + 48) = *(a6 + 48);
  v33 = (a9 + v24[10]);
  v34 = a7[7];
  v33[6] = a7[6];
  v33[7] = v34;
  v33[8] = a7[8];
  v35 = a7[3];
  v33[2] = a7[2];
  v33[3] = v35;
  v36 = a7[5];
  v33[4] = a7[4];
  v33[5] = v36;
  v37 = a7[1];
  *v33 = *a7;
  v33[1] = v37;
  v38 = v24[11];
  v39 = sub_217D889CC();
  result = (*(*(v39 - 8) + 32))(a9 + v38, a8, v39);
  v41 = a9 + v24[12];
  *v41 = v48;
  *(v41 + 4) = v47;
  *(a9 + v24[13]) = v49;
  *(a9 + v24[14]) = v50;
  v42 = a9 + v24[15];
  *v42 = v53;
  *(v42 + 8) = v52;
  *(v42 + 16) = v51;
  return result;
}

unint64_t sub_217AD8C48(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000010;
    v7 = 0x4D656E696C66666FLL;
    if (a1 != 10)
    {
      v7 = 0x617373696D736964;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x74614470756F7267;
    v9 = 0x74614464656D6974;
    if (a1 != 7)
    {
      v9 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x6174614464656566;
    v3 = 0x446C656E6E616863;
    if (a1 != 4)
    {
      v3 = 0xD000000000000021;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6174614477656976;
    if (a1 != 1)
    {
      v4 = 0x6144656C7A7A7570;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_217AD8DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217ADB0FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217AD8E30(uint64_t a1)
{
  v2 = sub_217AD95FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AD8E6C(uint64_t a1)
{
  v2 = sub_217AD95FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PuzzleExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217ADA194(0, &qword_27CB9EB60, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v50 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AD95FC();
  sub_217D89E7C();
  LOBYTE(v68) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for PuzzleExposureEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = *v13;
    v15 = v13[1];
    LOWORD(v13) = *(v13 + 8);
    v103 = v14;
    v104 = v15;
    v105 = v13;
    v102 = 1;
    sub_217A5E790();

    sub_217D89CAC();

    v16 = (v3 + v12[6]);
    v17 = v16[2];
    v18 = *v16;
    v98 = v16[1];
    v99 = v17;
    v19 = v16[2];
    v20 = v16[4];
    v100 = v16[3];
    v101 = v20;
    v21 = *v16;
    v94 = v19;
    v95 = v100;
    v96 = v16[4];
    v97 = v21;
    v92 = v18;
    v93 = v98;
    v91 = 2;
    sub_217AD85B8(&v97, &v68);
    sub_217AD6D08();
    sub_217D89CAC();
    v90[2] = v94;
    v90[3] = v95;
    v90[4] = v96;
    v90[0] = v92;
    v90[1] = v93;
    sub_217AD9650(v90);
    v22 = (v3 + v12[7]);
    v23 = v22[1];
    v24 = v22[2];
    *&v68 = *v22;
    *(&v68 + 1) = v23;
    *&v69 = v24;
    LOBYTE(v57) = 3;
    sub_217AD1A68(v68, v23, v24);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v68, *(&v68 + 1), v69);
    v25 = (v3 + v12[8]);
    v26 = v25[1];
    v27 = v25[2];
    v28 = v25[3];
    v29 = v25[4];
    v85 = *v25;
    v86 = v26;
    v87 = v27;
    v88 = v28;
    v89 = v29;
    v84 = 4;
    sub_217AD86BC(v85, v26);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v85, v86);
    v30 = (v3 + v12[9]);
    v31 = v30[1];
    v82[0] = *v30;
    v82[1] = v31;
    v33 = *v30;
    v32 = v30[1];
    v82[2] = v30[2];
    v83 = *(v30 + 48);
    v78 = v33;
    v79 = v32;
    v80 = v30[2];
    v81 = *(v30 + 48);
    v77 = 5;
    sub_217ACC004(v82, &v68);
    sub_217A55B98();
    sub_217D89CAC();
    v66[0] = v78;
    v66[1] = v79;
    v66[2] = v80;
    v67 = v81;
    sub_217ACC69C(v66);
    v34 = (v3 + v12[10]);
    v35 = v34[5];
    v36 = v34[7];
    v74 = v34[6];
    v75 = v36;
    v37 = v34[7];
    v76 = v34[8];
    v38 = v34[1];
    v39 = v34[3];
    v70 = v34[2];
    v71 = v39;
    v40 = v34[3];
    v41 = v34[5];
    v72 = v34[4];
    v73 = v41;
    v42 = v34[1];
    v68 = *v34;
    v69 = v42;
    v63 = v74;
    v64 = v37;
    v65 = v34[8];
    v59 = v70;
    v60 = v40;
    v61 = v72;
    v62 = v35;
    v57 = v68;
    v58 = v38;
    v56 = 6;
    sub_217AD87FC(&v68, v55);
    sub_217A5D3B4();
    sub_217D89C3C();
    v55[7] = v64;
    v55[8] = v65;
    v55[2] = v59;
    v55[3] = v60;
    v55[5] = v62;
    v55[6] = v63;
    v55[4] = v61;
    v55[0] = v57;
    v55[1] = v58;
    sub_217AD96E8(v55);
    v43 = v12[11];
    LOBYTE(v51) = 7;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v44 = (v3 + v12[12]);
    v45 = *v44;
    LOBYTE(v44) = *(v44 + 4);
    LODWORD(v51) = v45;
    BYTE4(v51) = v44;
    v54 = 8;
    sub_217AD7710();
    sub_217D89C3C();
    LOBYTE(v51) = *(v3 + v12[13]);
    v54 = 9;
    sub_217AD7968();
    sub_217D89C3C();
    LOBYTE(v51) = *(v3 + v12[14]);
    v54 = 10;
    sub_217ACA390();
    sub_217D89CAC();
    v47 = (v3 + v12[15]);
    v48 = *v47;
    v49 = v47[1];
    LOBYTE(v47) = *(v47 + 16);
    v51 = v48;
    v52 = v49;
    v53 = v47;
    v54 = 11;
    sub_217AD7DEC();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217AD95FC()
{
  result = qword_27CB9EB68;
  if (!qword_27CB9EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EB68);
  }

  return result;
}

uint64_t sub_217AD96A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_217AD96E8(uint64_t a1)
{
  sub_217A5E974(0, &qword_2811BD178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PuzzleExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_217D889CC();
  v4 = *(v3 - 8);
  v58 = v3;
  v59 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217D8899C();
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  MEMORY[0x28223BE20](v8);
  v62 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217ADA194(0, &qword_27CB9EB70, MEMORY[0x277D844C8]);
  v63 = v11;
  v61 = *(v11 - 8);
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - v13;
  v15 = type metadata accessor for PuzzleExposureEvent.Model(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v19 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_217AD95FC();
  v64 = v14;
  v21 = v65;
  sub_217D89E5C();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v22 = v61;
  v65 = v15;
  v56 = v18;
  LOBYTE(v78) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v23 = v62;
  sub_217D89BCC();
  v24 = *(v60 + 32);
  v25 = v56;
  v62 = v8;
  v24(v56, v23, v8);
  LOBYTE(v73) = 1;
  sub_217A5E738();
  sub_217D89BCC();
  v55 = 0;
  v26 = *(&v78 + 1);
  v27 = v79;
  v28 = v65;
  v29 = &v25[v65[5]];
  *v29 = v78;
  *(v29 + 1) = v26;
  *(v29 + 8) = v27;
  v90 = 2;
  sub_217AD6CB4();
  sub_217D89BCC();
  v30 = &v25[v28[6]];
  v31 = v76;
  *(v30 + 2) = v75;
  *(v30 + 3) = v31;
  *(v30 + 4) = v77;
  v32 = v74;
  *v30 = v73;
  *(v30 + 1) = v32;
  LOBYTE(v69) = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v33 = v79;
  v34 = &v25[v28[7]];
  *v34 = v78;
  *(v34 + 2) = v33;
  LOBYTE(v69) = 4;
  sub_217AD07F8();
  sub_217D89B5C();
  v35 = v80;
  v36 = &v25[v28[8]];
  v37 = v79;
  *v36 = v78;
  *(v36 + 1) = v37;
  *(v36 + 4) = v35;
  v89 = 5;
  sub_217A54D08();
  sub_217D89BCC();
  v38 = &v25[v28[9]];
  v39 = v70;
  *v38 = v69;
  *(v38 + 1) = v39;
  *(v38 + 2) = v71;
  v38[48] = v72;
  v88 = 6;
  sub_217A5D308();
  sub_217D89B5C();
  v40 = &v25[v28[10]];
  v41 = v85;
  *(v40 + 6) = v84;
  *(v40 + 7) = v41;
  *(v40 + 8) = v86;
  v42 = v81;
  *(v40 + 2) = v80;
  *(v40 + 3) = v42;
  v43 = v83;
  *(v40 + 4) = v82;
  *(v40 + 5) = v43;
  v44 = v79;
  *v40 = v78;
  *(v40 + 1) = v44;
  LOBYTE(v67) = 7;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v54 = v7;
  v45 = v58;
  sub_217D89BCC();
  (*(v59 + 32))(&v25[v28[11]], v54, v45);
  v87 = 8;
  sub_217AD76BC();
  sub_217D89B5C();
  v46 = BYTE4(v67);
  v47 = &v25[v65[12]];
  *v47 = v67;
  v47[4] = v46;
  v87 = 9;
  sub_217AD7914();
  sub_217D89B5C();
  v56[v65[13]] = v67;
  v87 = 10;
  sub_217ACA338();
  sub_217D89BCC();
  v56[v65[14]] = v67;
  v87 = 11;
  sub_217AD7D98();
  sub_217D89B5C();
  (*(v22 + 8))(v64, v63);
  v48 = v68;
  v50 = v56;
  v49 = v57;
  v51 = &v56[v65[15]];
  *v51 = v67;
  v51[16] = v48;
  sub_217ADA1F8(v50, v49);
  __swift_destroy_boxed_opaque_existential_1(v66);
  return sub_217ADA25C(v50);
}

void sub_217ADA194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AD95FC();
    v7 = a3(a1, &type metadata for PuzzleExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217ADA1F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217ADA25C(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217ADA390@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217AD7D1C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217AD7D1C(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217AD7D1C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217AD7D1C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217AD7D1C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217AD7D1C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v18 - 8) + 104))(a2 + v17, v11, v18);
  v19 = a1[11];
  sub_217A608E0();
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217AD7D1C(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_217AD7D1C(0, &qword_2811C86B0, sub_217AD7914, sub_217AD7968);
  (*(*(v24 - 8) + 104))(a2 + v23, v11, v24);
  v25 = a1[14];
  sub_217AD7D1C(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_217AD7D1C(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
  v29 = *(*(v28 - 8) + 104);

  return v29(a2 + v27, v11, v28);
}

void sub_217ADA93C()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217AD7D1C(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
    if (v1 <= 0x3F)
    {
      sub_217AD7D1C(319, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
      if (v2 <= 0x3F)
      {
        sub_217AD7D1C(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
        if (v3 <= 0x3F)
        {
          sub_217AD7D1C(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
          if (v4 <= 0x3F)
          {
            sub_217AD7D1C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
            if (v5 <= 0x3F)
            {
              sub_217AD7D1C(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
              if (v6 <= 0x3F)
              {
                sub_217A608E0();
                if (v7 <= 0x3F)
                {
                  sub_217AD7D1C(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
                  if (v8 <= 0x3F)
                  {
                    sub_217AD7D1C(319, &qword_2811C86B0, sub_217AD7914, sub_217AD7968);
                    if (v9 <= 0x3F)
                    {
                      sub_217AD7D1C(319, &qword_2811C86F0, sub_217ACA338, sub_217ACA390);
                      if (v10 <= 0x3F)
                      {
                        sub_217AD7D1C(319, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
                        if (v11 <= 0x3F)
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
      }
    }
  }
}

void sub_217ADAD08()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD308);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7D70);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD178);
        if (v3 <= 0x3F)
        {
          sub_217D889CC();
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811C5238);
            if (v5 <= 0x3F)
            {
              sub_217A5E974(319, &qword_27CB9EB88);
              if (v6 <= 0x3F)
              {
                sub_217A5E974(319, &qword_2811C7628);
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

uint64_t getEnumTagSinglePayload for PuzzleExposureEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PuzzleExposureEvent.Model.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217ADAFF8()
{
  result = qword_27CB9EB90;
  if (!qword_27CB9EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EB90);
  }

  return result;
}

unint64_t sub_217ADB050()
{
  result = qword_27CB9EB98;
  if (!qword_27CB9EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EB98);
  }

  return result;
}

unint64_t sub_217ADB0A8()
{
  result = qword_27CB9EBA0;
  if (!qword_27CB9EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EBA0);
  }

  return result;
}

uint64_t sub_217ADB0FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6144656C7A7A7570 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD40 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4D656E696C66666FLL && a2 == 0xEF6174614465646FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x617373696D736964 && a2 == 0xED0000617461446CLL)
  {

    return 11;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t ReferringArticleData.articleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ReferringArticleData.articleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ReferringArticleData.init(articleID:publisherArticleVersion:role:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  return result;
}

uint64_t sub_217ADB5FC()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 1701605234;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49656C6369747261;
  }
}

uint64_t sub_217ADB658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217ADBE08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217ADB680(uint64_t a1)
{
  v2 = sub_217ADB8CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ADB6BC(uint64_t a1)
{
  v2 = sub_217ADB8CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReferringArticleData.encode(to:)(void *a1)
{
  sub_217ADBBAC(0, &qword_2811BC640, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v15[0] = v1[2];
  v16 = *(v1 + 24);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ADB8CC();
  sub_217D89E7C();
  v20 = 0;
  v12 = v15[1];
  sub_217D89C6C();
  if (!v12)
  {
    v13 = v16;
    v19 = 1;
    sub_217D89CCC();
    v18 = v13;
    v17 = 2;
    sub_217ADB920();
    sub_217D89CAC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217ADB8CC()
{
  result = qword_2811C1C98[0];
  if (!qword_2811C1C98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C1C98);
  }

  return result;
}

unint64_t sub_217ADB920()
{
  result = qword_2811BD418[0];
  if (!qword_2811BD418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BD418);
  }

  return result;
}

uint64_t ReferringArticleData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217ADBBAC(0, &qword_2811BC9D8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ADB8CC();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v15 = v12;
  v22 = 1;
  v19 = sub_217D89BEC();
  v20 = 2;
  sub_217ADBC10();
  sub_217D89BCC();
  (*(v7 + 8))(v10, v6);
  v17 = v21;
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v19;
  *(a2 + 24) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217ADBBAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217ADB8CC();
    v7 = a3(a1, &type metadata for ReferringArticleData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217ADBC10()
{
  result = qword_2811BD408;
  if (!qword_2811BD408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD408);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_217ADBCA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

unint64_t sub_217ADBD04()
{
  result = qword_27CB9EBA8;
  if (!qword_27CB9EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EBA8);
  }

  return result;
}

unint64_t sub_217ADBD5C()
{
  result = qword_2811C1C88;
  if (!qword_2811C1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1C88);
  }

  return result;
}

unint64_t sub_217ADBDB4()
{
  result = qword_2811C1C90;
  if (!qword_2811C1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1C90);
  }

  return result;
}

uint64_t sub_217ADBE08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49656C6369747261 && a2 == 0xE900000000000044;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DCCD60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t ProgressInfo.lastPlayedDate.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t ProgressInfo.lastPlayedDate.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t ProgressInfo.completedDate.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t ProgressInfo.completedDate.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t ProgressInfo.init(progressLevel:lastPlayedDate:completedDate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t sub_217ADC000()
{
  v1 = 0x79616C507473616CLL;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73736572676F7270;
  }
}

uint64_t sub_217ADC080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217ADC7FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217ADC0A8(uint64_t a1)
{
  v2 = sub_217ADC2D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ADC0E4(uint64_t a1)
{
  v2 = sub_217ADC2D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProgressInfo.encode(to:)(void *a1)
{
  sub_217ADC52C(0, &qword_2811BC808, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v16 = *(v1 + 16);
  v15[1] = *(v1 + 3);
  v15[2] = v10;
  v11 = *(v1 + 32);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ADC2D4();
  sub_217D89E7C();
  v19 = 0;
  v13 = v15[3];
  sub_217D89CBC();
  if (!v13)
  {
    v18 = 1;
    sub_217D89C5C();
    v17 = 2;
    sub_217D89C5C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217ADC2D4()
{
  result = qword_2811C7980;
  if (!qword_2811C7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7980);
  }

  return result;
}

uint64_t ProgressInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217ADC52C(0, &qword_27CB9EBB0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ADC2D4();
  sub_217D89E5C();
  if (!v2)
  {
    v24 = 0;
    v12 = sub_217D89BDC();
    v23 = 1;
    v20 = sub_217D89B7C();
    v21 = v13 & 1;
    v22 = 2;
    v15 = sub_217D89B7C();
    v17 = v16;
    (*(v7 + 8))(v10, v6);
    v18 = v21;
    *a2 = v12;
    *(a2 + 8) = v20;
    *(a2 + 16) = v18;
    *(a2 + 24) = v15;
    *(a2 + 32) = v17 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217ADC52C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217ADC2D4();
    v7 = a3(a1, &type metadata for ProgressInfo.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217ADC594()
{
  result = qword_27CB9EBB8;
  if (!qword_27CB9EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EBB8);
  }

  return result;
}

unint64_t sub_217ADC5EC()
{
  result = qword_2811C7968;
  if (!qword_2811C7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7968);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_217ADC684(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217ADC6A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 33) = v3;
  return result;
}

unint64_t sub_217ADC6F8()
{
  result = qword_27CB9EBC0;
  if (!qword_27CB9EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EBC0);
  }

  return result;
}

unint64_t sub_217ADC750()
{
  result = qword_2811C7970;
  if (!qword_2811C7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7970);
  }

  return result;
}

unint64_t sub_217ADC7A8()
{
  result = qword_2811C7978;
  if (!qword_2811C7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7978);
  }

  return result;
}

uint64_t sub_217ADC7FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572676F7270 && a2 == 0xED00006C6576654CLL;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79616C507473616CLL && a2 == 0xEE00657461446465 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xED00006574614464)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

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

NewsAnalytics::ResultAction_optional __swiftcall ResultAction.init(rawValue:)(Swift::String rawValue)
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

uint64_t ResultAction.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x646564616F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x676B636142707061;
  }

  if (*v0)
  {
    v1 = 0x656E6F646E616261;
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

unint64_t sub_217ADCA20()
{
  result = qword_27CB9EBC8;
  if (!qword_27CB9EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EBC8);
  }

  return result;
}

uint64_t sub_217ADCA74()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217ADCB44()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217ADCC00()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217ADCCD8(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE600000000000000;
  v5 = 0x646564616F6CLL;
  if (*v1 != 2)
  {
    v5 = 0x676B636142707061;
    v4 = 0xEF6465646E756F72;
  }

  if (*v1)
  {
    v3 = 0x656E6F646E616261;
    v2 = 0xE900000000000064;
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

unint64_t sub_217ADCE24()
{
  result = qword_27CB9EBD0;
  if (!qword_27CB9EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EBD0);
  }

  return result;
}

uint64_t NotificationReceiptReporter.__allocating_init(log:contentType:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  NotificationReceiptReporter.init(log:contentType:)(a1, a2);
  return v4;
}

Swift::Void __swiftcall NotificationReceiptReporter.startSession()()
{
  v1 = sub_217D87C9C();
  v43 = *(v1 - 8);
  v44 = v1;
  v2 = *(v43 + 64);
  MEMORY[0x28223BE20](v1);
  v42 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_217D87CCC();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_217D888BC();
  v36 = *(v37 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v37);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for SessionData;
  v38 = MEMORY[0x277D83D88];
  sub_217A520D0(0, &qword_27CB9EBD8, type metadata accessor for SessionData, MEMORY[0x277D83D88]);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - v16;
  v18 = v0[3];
  sub_217D897FC();
  sub_217D88E5C();
  sub_217ADD3A0(v0, v17);
  sub_217ADD6C8(v0, v45);
  sub_217ADD8DC(v0, &v46);
  v35 = v46;
  v34 = v47;
  sub_217ADDAEC(v0, &v46);
  v19 = v0[2];
  sub_217ADE808(v17, v15);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 71) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_217ADE89C(v15, v23 + v20);
  v24 = (v23 + v21);
  v25 = v45[1];
  *v24 = v45[0];
  v24[1] = v25;
  v26 = v45[3];
  v24[2] = v45[2];
  v24[3] = v26;
  v27 = (v23 + v22);
  v28 = v34;
  *v27 = v35;
  v27[1] = v28;
  v29 = v23 + ((v22 + 39) & 0xFFFFFFFFFFFFFFF8);
  v30 = v48;
  *(v29 + 16) = v47;
  *(v29 + 32) = v30;
  *v29 = v46;
  *(v29 + 48) = v49;
  sub_217D8833C();

  strcpy(v10, "notification");
  v10[13] = 0;
  *(v10 + 7) = -5120;
  v31 = v36;
  v32 = v37;
  (*(v36 + 104))(v10, *MEMORY[0x277CEAE70], v37);
  sub_217D87CBC();
  sub_217D87CAC();
  (*(v40 + 8))(v7, v41);
  v33 = v42;
  sub_217D87C8C();
  sub_217D8836C();

  (*(v43 + 8))(v33, v44);
  (*(v31 + 8))(v10, v32);
  sub_217AE0580(v17, &qword_27CB9EBD8, v39, v38, sub_217A520D0);
}

uint64_t sub_217ADD3A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SessionData();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[5];
  v9 = sub_217D8951C();
  v10 = [v8 dataForKey_];

  if (v10)
  {
    v11 = sub_217D87C0C();
    v13 = v12;

    v14 = a1[4];
    sub_217A52088(&qword_2811C7C50, type metadata accessor for SessionData);
    sub_217D88A1C();
    sub_217AE010C(v11, v13);
    sub_217AE045C(v7, a2);
    return (*(v19 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v15 = a1[3];
    sub_217D897DC();
    sub_217D88E5C();
    v16 = *(v19 + 56);

    return v16(a2, 1, 1, v4);
  }
}

double sub_217ADD6C8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[5];
  v5 = sub_217D8951C();
  v6 = [v4 dataForKey_];

  if (v6)
  {
    v7 = sub_217D87C0C();
    v9 = v8;

    v10 = a1[4];
    sub_217A59044();
    sub_217D88A1C();
    sub_217AE010C(v7, v9);
    *a2 = v13;
    a2[1] = v14;
    result = *&v15;
    a2[2] = v15;
    a2[3] = v16;
  }

  else
  {
    v11 = a1[3];
    sub_217D897DC();
    sub_217D88E5C();
    result = 0.0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_217ADD8DC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v5 = sub_217D8951C();
  v6 = [v4 dataForKey_];

  if (v6)
  {
    v7 = sub_217D87C0C();
    v9 = v8;

    v10 = a1[4];
    sub_217A57A28();
    sub_217D88A1C();
    sub_217AE010C(v7, v9);
    result = *&v13;
    *a2 = v13;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
  }

  else
  {
    v11 = a1[3];
    sub_217D897DC();
    sub_217D88E5C();
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_217ADDAEC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v5 = sub_217D8951C();
  v6 = [v4 dataForKey_];

  if (v6)
  {
    v7 = sub_217D87C0C();
    v9 = v8;

    v10 = a1[4];
    sub_217A57F3C();
    sub_217D88A1C();
    sub_217AE010C(v7, v9);
    *a2 = v13;
    *(a2 + 16) = v14;
    result = *&v15;
    *(a2 + 32) = v15;
    *(a2 + 48) = v16;
  }

  else
  {
    v11 = a1[3];
    sub_217D897DC();
    sub_217D88E5C();
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_217ADDD0C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8)
{
  *&v77 = a6;
  *(&v77 + 1) = a7;
  v90 = a1;
  v91 = a5;
  v76 = a4;
  v10 = a8[1];
  v81 = a8 + 1;
  v11 = *a8;
  v85 = v10;
  v86 = v11;
  v12 = *(a8 + 4);
  v83 = *(a8 + 5);
  v84 = v12;
  v92 = a8;
  v82 = *(a8 + 6);
  v13 = a3[1];
  v103 = *a3;
  v104 = v13;
  v14 = a3[3];
  v105 = a3[2];
  v106 = v14;
  sub_217AE0368(0, &qword_2811C8970, sub_217A57EE4);
  v88 = *(v15 - 8);
  v89 = v15;
  v16 = *(v88 + 64);
  MEMORY[0x28223BE20](v15);
  v87 = &v70 - v17;
  sub_217AE0368(0, &qword_2811C8940, sub_217A579D0);
  v79 = *(v18 - 8);
  v80 = v18;
  v19 = *(v79 + 64);
  MEMORY[0x28223BE20](v18);
  v78 = &v70 - v20;
  sub_217AE0368(0, &qword_2811C8990, sub_217A58FEC);
  v74 = *(v21 - 8);
  v75 = v21;
  v22 = *(v74 + 64);
  MEMORY[0x28223BE20](v21);
  v73 = &v70 - v23;
  sub_217AE03C8();
  v71 = *(v24 - 8);
  v72 = v24;
  v25 = *(v71 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A520D0(0, &qword_27CB9EBD8, type metadata accessor for SessionData, MEMORY[0x277D83D88]);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v70 - v30;
  v32 = type metadata accessor for SessionData();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v70 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v70 - v38;
  sub_217ADE808(a2, v31);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    result = sub_217AE0580(v31, &qword_27CB9EBD8, type metadata accessor for SessionData, MEMORY[0x277D83D88], sub_217A520D0);
  }

  else
  {
    sub_217AE045C(v31, v39);
    sub_217AE04C0(v39, v37);
    v70 = sub_217A52088(&qword_2811C7C60, type metadata accessor for SessionData);
    sub_217D880EC();
    sub_217A520D0(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v41 = sub_217D882DC();
    v42 = *(v41 - 8);
    v43 = *(v42 + 72);
    v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_217D8D8F0;
    (*(v42 + 104))(v45 + v44, *MEMORY[0x277CEAD10], v41);
    sub_217D8854C();

    (*(v71 + 8))(v27, v72);
    result = sub_217AE0524(v39);
  }

  v46 = *(a3 + 1);
  if (v46)
  {
    v47 = *a3;
    v48 = a3[2];
    v96 = a3[1];
    v97 = v48;
    v98 = a3[3];
    v94 = v47;
    v95 = v46;
    v99 = v103;
    v100 = v104;
    v101 = v105;
    v102 = v106;
    sub_217A6395C(&v99, v93);
    sub_217A58FEC();
    v49 = v73;
    sub_217D880EC();
    sub_217A520D0(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v50 = sub_217D882DC();
    v51 = *(v50 - 8);
    v52 = *(v51 + 72);
    v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_217D8D8F0;
    (*(v51 + 104))(v54 + v53, *MEMORY[0x277CEAD10], v50);
    sub_217D8854C();

    result = (*(v74 + 8))(v49, v75);
  }

  if (v91)
  {
    *&v99 = v76;
    *(&v99 + 1) = v91;
    v100 = v77;
    sub_217A579D0();

    v55 = v78;
    sub_217D880EC();
    sub_217A520D0(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v56 = sub_217D882DC();
    v57 = *(v56 - 8);
    v58 = *(v57 + 72);
    v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_217D8D8F0;
    (*(v57 + 104))(v60 + v59, *MEMORY[0x277CEAD10], v56);
    sub_217D8854C();

    result = (*(v79 + 8))(v55, v80);
  }

  v61 = v92[1];
  if (v61)
  {
    v62 = *v92;
    v63 = v81[1];
    v96 = *v81;
    v97 = v63;
    *&v98 = *(v81 + 4);
    v94 = v62;
    v95 = v61;
    v99 = v86;
    v100 = v85;
    *&v101 = v84;
    *(&v101 + 1) = v83;
    *&v102 = v82;
    sub_217A61B90(&v99, v93);
    sub_217A57EE4();
    v64 = v87;
    sub_217D880EC();
    sub_217A520D0(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v65 = sub_217D882DC();
    v66 = *(v65 - 8);
    v67 = *(v66 + 72);
    v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_217D8D8F0;
    (*(v66 + 104))(v69 + v68, *MEMORY[0x277CEAD10], v65);
    sub_217D8854C();

    return (*(v88 + 8))(v64, v89);
  }

  return result;
}

uint64_t sub_217ADE808(uint64_t a1, uint64_t a2)
{
  sub_217A520D0(0, &qword_27CB9EBD8, type metadata accessor for SessionData, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217ADE89C(uint64_t a1, uint64_t a2)
{
  sub_217A520D0(0, &qword_27CB9EBD8, type metadata accessor for SessionData, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217ADE930(uint64_t a1)
{
  sub_217A520D0(0, &qword_27CB9EBD8, type metadata accessor for SessionData, MEMORY[0x277D83D88]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 71) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v1 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];

  return sub_217ADDD0C(a1, v1 + v5, (v1 + v6), v10, v11, v12, v13, (v1 + v8));
}

uint64_t sub_217ADEB70@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[5];
  v7 = sub_217D8951C();
  v8 = [v6 dictionaryForKey_];

  if (!v8)
  {
    v13 = a1[3];
    sub_217D897DC();
LABEL_14:
    result = sub_217D88E5C();
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v9 = sub_217D8948C();

  v10 = a2[4];
  if (v10)
  {
    v11 = a2[3];
    v12 = v10;
  }

  else
  {
    v12 = a2[6];
    if (!v12)
    {

      v22 = a1[3];
      sub_217D897DC();
      goto LABEL_14;
    }

    v11 = a2[5];
  }

  v14 = *(v9 + 16);

  if (!v14)
  {

    goto LABEL_12;
  }

  v15 = sub_217C2E9BC(v11, v12);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_217AE02B0(*(v9 + 56) + 32 * v15, v29);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v21 = a1[3];
    sub_217D897DC();
    goto LABEL_14;
  }

  v18 = v34;
  v19 = v35;
  v20 = a1[4];
  sub_217AD07F8();
  sub_217D88A1C();
  result = sub_217AE010C(v18, v19);
  v24 = v29[1];
  v25 = v32;
  v26 = v33;
  v27 = 256;
  if (!v31)
  {
    v27 = 0;
  }

  v28 = v27 | v30;
  *a3 = v29[0];
  *(a3 + 8) = v24;
  *(a3 + 16) = v28;
  *(a3 + 24) = v25;
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_217ADEEC8@<X0>(void *a1@<X0>, void *a2@<X1>, int *a3@<X8>)
{
  v6 = a1[5];
  v7 = sub_217D8951C();
  v8 = [v6 dictionaryForKey_];

  if (!v8)
  {
    v13 = a1[3];
    sub_217D897DC();
    v14 = 2;
LABEL_14:
    result = sub_217D88E5C();
    goto LABEL_15;
  }

  v9 = sub_217D8948C();

  v10 = a2[4];
  if (v10)
  {
    v11 = a2[3];
    v12 = v10;
  }

  else
  {
    v12 = a2[6];
    if (!v12)
    {

      v21 = a1[3];
      sub_217D897DC();
      v14 = 2;
      goto LABEL_14;
    }

    v11 = a2[5];
  }

  v15 = *(v9 + 16);

  if (!v15)
  {

    goto LABEL_12;
  }

  v16 = sub_217C2E9BC(v11, v12);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_217AE02B0(*(v9 + 56) + 32 * v16, v26);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v20 = a1[3];
    sub_217D897DC();
    v14 = 2;
    goto LABEL_14;
  }

  v19 = a1[4];
  sub_217ACFB38();
  sub_217D88A1C();
  result = sub_217AE010C(v24, v25);
  if (v26[1])
  {
    v23 = 256;
  }

  else
  {
    v23 = 0;
  }

  v14 = v23 | v26[0] | (v26[2] << 16) | (v26[3] << 24);
LABEL_15:
  *a3 = v14;
  return result;
}

uint64_t sub_217ADF224(uint64_t a1, uint64_t a2, __int128 *a3, char a4, uint64_t *a5, int a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = a3[3];
    v22 = a3[2];
    v23 = v11;
    v12 = a3[5];
    v24 = a3[4];
    v25 = v12;
    v13 = a3[1];
    v20 = *a3;
    v21 = v13;
    sub_217AE0160();
    sub_217D8820C();
    LOBYTE(v20) = a4;
    sub_217AE01B4();
    sub_217D8820C();
    sub_217ADF56C(&v16);
    sub_217A4DD9C();
    sub_217D8820C();
    v20 = v16;
    v21 = v17;
    v22 = v18;
    LOBYTE(v23) = v19;
    sub_217ACC69C(&v20);
    v14 = a5[1];
    if (v14)
    {
      v15 = *a5;
      v17 = *(a5 + 1);
      *&v18 = a5[4];
      *&v16 = v15;
      *(&v16 + 1) = v14;
      sub_217AE025C();
      sub_217D8820C();
    }

    if (a6 != 2)
    {
      LOWORD(v16) = a6 & 0x101;
      BYTE2(v16) = BYTE2(a6);
      BYTE3(v16) = HIBYTE(a6);
      sub_217AE0208();
      sub_217D8820C();
    }

    type metadata accessor for NotificationReceivedEvent(0);
    sub_217A52088(&qword_27CB9EC00, type metadata accessor for NotificationReceivedEvent);
    v16 = 0u;
    v17 = 0u;
    sub_217D8822C();

    return sub_217AE0580(&v16, &qword_2811BC3D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_217A55E90);
  }

  return result;
}

double sub_217ADF56C@<D0>(uint64_t a1@<X8>)
{
  v2 = NewsCoreUserDefaults();
  v3 = sub_217D8951C();
  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_217D8996C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v10 = v16;
  v11 = v17;
  if (*(&v17 + 1))
  {
    if (swift_dynamicCast())
    {
      v5 = sub_217D8796C();
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();
      sub_217D8795C();
      sub_217A54D08();
      sub_217D8794C();

      sub_217AE010C(v14, v15);

      v8 = v11;
      *a1 = v10;
      *(a1 + 16) = v8;
      result = *&v12;
      *(a1 + 32) = v12;
      *(a1 + 48) = v13;
      return result;
    }
  }

  else
  {

    sub_217AE0580(&v10, &qword_2811BC3D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_217A55E90);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_217ADF824(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    LOBYTE(v9[0]) = a3;
    sub_217AE00B8();
    sub_217D8820C();
    sub_217ADF56C(&v5);
    sub_217A4DD9C();
    sub_217D8820C();
    v9[0] = v5;
    v9[1] = v6;
    v9[2] = v7;
    v10 = v8;
    sub_217ACC69C(v9);
    type metadata accessor for AppBadgeEvent(0);
    sub_217A52088(&qword_27CB9EBE8, type metadata accessor for AppBadgeEvent);
    v5 = 0u;
    v6 = 0u;
    sub_217D8822C();

    return sub_217AE0580(&v5, &qword_2811BC3D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_217A55E90);
  }

  return result;
}

uint64_t NotificationReceiptReporter.endSession(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_217D87C9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 24);
  sub_217D897FC();
  sub_217D88E5C();
  v11 = *(v2 + 16);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;

  sub_217D87C8C();
  sub_217D8834C();

  (*(v6 + 8))(v9, v5);
}

uint64_t sub_217ADFB88(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 24);
    sub_217D897FC();
    sub_217D88E5C();

    a2();
  }

  return result;
}

uint64_t NotificationReceiptReporter.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t NotificationReceiptReporter.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_217ADFFDC()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC13NewsAnalyticsP33_73410A717757B42F2A6F1BC37191285735NotificationReceiptReporterEndpoint_defaultURL;
  v3 = sub_217D87BAC();
  v4 = *(*(v3 - 8) + 8);
  v4(&v0[v2], v3);
  v4(&v0[OBJC_IVAR____TtC13NewsAnalyticsP33_73410A717757B42F2A6F1BC37191285735NotificationReceiptReporterEndpoint_notificationReceiptURL], v3);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

unint64_t sub_217AE00B8()
{
  result = qword_27CB9EBE0;
  if (!qword_27CB9EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EBE0);
  }

  return result;
}

uint64_t sub_217AE010C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_217AE0160()
{
  result = qword_27CB9EBF0;
  if (!qword_27CB9EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EBF0);
  }

  return result;
}

unint64_t sub_217AE01B4()
{
  result = qword_27CB9EBF8;
  if (!qword_27CB9EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EBF8);
  }

  return result;
}

unint64_t sub_217AE0208()
{
  result = qword_27CB9EC08;
  if (!qword_27CB9EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EC08);
  }

  return result;
}

unint64_t sub_217AE025C()
{
  result = qword_27CB9EC10;
  if (!qword_27CB9EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EC10);
  }

  return result;
}

uint64_t sub_217AE02B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_217AE030C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_217AE0368(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_217D880FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_217AE03C8()
{
  if (!qword_2811C8938)
  {
    type metadata accessor for SessionData();
    sub_217A52088(&qword_2811C7C60, type metadata accessor for SessionData);
    v0 = sub_217D880FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8938);
    }
  }
}

uint64_t sub_217AE045C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AE04C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AE0524(uint64_t a1)
{
  v2 = type metadata accessor for SessionData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217AE0580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t RecirculationData.dataProviderID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RecirculationData.dataProviderID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217AE069C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x766F725061746164 && a2 == 0xEE00444972656469)
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

uint64_t sub_217AE072C(uint64_t a1)
{
  v2 = sub_217AE08F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AE0768(uint64_t a1)
{
  v2 = sub_217AE08F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecirculationData.encode(to:)(void *a1)
{
  sub_217AE0AC8(0, &qword_27CB9EC18, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AE08F0();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217AE08F0()
{
  result = qword_27CB9EC20;
  if (!qword_27CB9EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EC20);
  }

  return result;
}

uint64_t RecirculationData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217AE0AC8(0, &qword_27CB9EC28, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AE08F0();
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

void sub_217AE0AC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AE08F0();
    v7 = a3(a1, &type metadata for RecirculationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217AE0B30()
{
  result = qword_2811C4358;
  if (!qword_2811C4358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4358);
  }

  return result;
}

unint64_t sub_217AE0B88()
{
  result = qword_2811C4360;
  if (!qword_2811C4360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4360);
  }

  return result;
}

uint64_t sub_217AE0BF4(void *a1)
{
  sub_217AE0AC8(0, &qword_27CB9EC18, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AE08F0();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217AE0D64()
{
  result = qword_27CB9EC30;
  if (!qword_27CB9EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EC30);
  }

  return result;
}

unint64_t sub_217AE0DBC()
{
  result = qword_27CB9EC38;
  if (!qword_27CB9EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EC38);
  }

  return result;
}

unint64_t sub_217AE0E14()
{
  result = qword_27CB9EC40;
  if (!qword_27CB9EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EC40);
  }

  return result;
}

NewsAnalytics::FeedbackType_optional __swiftcall FeedbackType.init(rawValue:)(Swift::String rawValue)
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

uint64_t FeedbackType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x65736C6166;
  if (*v0 != 2)
  {
    v2 = 0x656279616DLL;
  }

  if (*v0)
  {
    v1 = 1702195828;
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

unint64_t sub_217AE0F40()
{
  result = qword_27CB9EC48;
  if (!qword_27CB9EC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EC48);
  }

  return result;
}

uint64_t sub_217AE0F94()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217AE1048()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217AE10E8()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217AE11A4(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0x65736C6166;
  if (*v1 != 2)
  {
    v4 = 0x656279616DLL;
  }

  if (*v1)
  {
    v3 = 1702195828;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_217AE12D4()
{
  result = qword_27CB9EC50;
  if (!qword_27CB9EC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EC50);
  }

  return result;
}

uint64_t sub_217AE13F0()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9EC88);
  __swift_project_value_buffer(v0, qword_27CB9EC88);
  return sub_217D8866C();
}

uint64_t MediaEngageEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MediaEngageEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 20);
  sub_217AE2C2C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 20);
  sub_217AE2C2C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 24);
  sub_217AE2C2C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 24);
  sub_217AE2C2C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 28);
  sub_217AE2C2C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 28);
  sub_217AE2C2C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 32);
  sub_217AE2C2C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 32);
  sub_217AE2C2C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 36);
  sub_217AE2C2C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AE1CB4()
{
  result = qword_2811BD0D0;
  if (!qword_2811BD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0D0);
  }

  return result;
}

unint64_t sub_217AE1D08()
{
  result = qword_2811BD0D8;
  if (!qword_2811BD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0D8);
  }

  return result;
}

uint64_t MediaEngageEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 36);
  sub_217AE2C2C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.mediaEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 40);
  sub_217AE2C2C(0, &qword_2811C8600, sub_217AE1F0C, sub_217AE1F60);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AE1F0C()
{
  result = qword_2811C29C8;
  if (!qword_2811C29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C29C8);
  }

  return result;
}

unint64_t sub_217AE1F60()
{
  result = qword_2811C29D0;
  if (!qword_2811C29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C29D0);
  }

  return result;
}

uint64_t MediaEngageEvent.mediaEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 40);
  sub_217AE2C2C(0, &qword_2811C8600, sub_217AE1F0C, sub_217AE1F60);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 44);
  sub_217AE2C2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 44);
  sub_217AE2C2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.anfComponentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 48);
  sub_217AE2C2C(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AE2314()
{
  result = qword_2811C5E48;
  if (!qword_2811C5E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5E48);
  }

  return result;
}

unint64_t sub_217AE2368()
{
  result = qword_2811C5E50;
  if (!qword_2811C5E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5E50);
  }

  return result;
}

uint64_t MediaEngageEvent.anfComponentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 48);
  sub_217AE2C2C(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 52);
  sub_217AE2C2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 52);
  sub_217AE2C2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 56);
  sub_217AE2C2C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 56);
  sub_217AE2C2C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 60);
  sub_217AE2C2C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 60);
  sub_217AE2C2C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 64);
  sub_217AE2C2C(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 64);
  sub_217AE2C2C(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.articleExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 68);
  sub_217AE2C2C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217AE2C2C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

unint64_t sub_217AE2CA8()
{
  result = qword_2811BF128;
  if (!qword_2811BF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF128);
  }

  return result;
}

unint64_t sub_217AE2CFC()
{
  result = qword_2811BF130;
  if (!qword_2811BF130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF130);
  }

  return result;
}

uint64_t MediaEngageEvent.articleExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 68);
  sub_217AE2C2C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for MediaEngageEvent(0);
  v5 = v4[5];
  sub_217AE2C2C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217AE2C2C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217AE2C2C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217AE2C2C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217AE2C2C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217AE2C2C(0, &qword_2811C8600, sub_217AE1F0C, sub_217AE1F60);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217AE2C2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217AE2C2C(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_217AE2C2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217AE2C2C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v25 - 8) + 104))(a1 + v24, v10, v25);
  v26 = v4[15];
  sub_217AE2C2C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v27 - 8) + 104))(a1 + v26, v10, v27);
  v28 = v4[16];
  sub_217AE2C2C(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  (*(*(v29 - 8) + 104))(a1 + v28, v10, v29);
  v30 = v4[17];
  sub_217AE2C2C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v32 = *(*(v31 - 8) + 104);

  return v32(a1 + v30, v10, v31);
}

uint64_t MediaEngageEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t MediaEngageEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 24);
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

uint64_t MediaEngageEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 28));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AE38AC(v17, &v16, &qword_2811BD178);
}

uint64_t MediaEngageEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t MediaEngageEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 36));
  v4 = *v3;
  v6 = *(v3 + 1);
  v5 = *(v3 + 2);
  v7 = *(v3 + 6);
  LOBYTE(v3) = v3[28];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 28) = v3;
}

uint64_t MediaEngageEvent.Model.mediaEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for MediaEngageEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 3);
  v8 = *(v4 + 16);
  LOBYTE(v4) = *(v4 + 17);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 12) = v7;
  *(a1 + 16) = v8;
  *(a1 + 17) = v4;
  return result;
}

uint64_t MediaEngageEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t MediaEngageEvent.Model.anfComponentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 48));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v5 = v3[3];
  v10 = v3[2];
  v6 = v10;
  v11 = v5;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  return sub_217AE38AC(v9, &v8, &qword_27CB9ECA0);
}

uint64_t sub_217AE38AC(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_217A5E974(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t MediaEngageEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 52);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  LOBYTE(v3) = *(v3 + 48);
  v10 = v3;
  *a1 = v8[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v3;
  return sub_217ACC004(v8, v7);
}

uint64_t MediaEngageEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_217AE39D0(v4, v5);
}

uint64_t sub_217AE39D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t MediaEngageEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 60));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t MediaEngageEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for MediaEngageEvent.Model(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t MediaEngageEvent.Model.articleExposureContextData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 68));
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

  return sub_217AE3AE8(v4, v5);
}

uint64_t sub_217AE3AE8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

__n128 MediaEngageEvent.Model.init(eventData:articleData:channelData:groupData:feedData:mediaData:mediaEngagementData:viewData:anfComponentData:userBundleSubscriptionContextData:issueData:issueViewData:orientationData:articleExposureContextData:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, __int128 *a11, __int128 *a12, uint64_t *a13, __int16 *a14, uint64_t a15)
{
  v19 = a3[1];
  v20 = *(a3 + 16);
  v57 = *(a3 + 17);
  v56 = a3[3];
  v55 = a3[4];
  v60 = *a5;
  v58 = *a3;
  v59 = *(a5 + 2);
  v64 = *(a6 + 1);
  v63 = *(a6 + 2);
  v62 = *(a6 + 6);
  v61 = a6[28];
  v70 = *a7;
  v69 = *(a7 + 8);
  v68 = *(a7 + 3);
  v67 = *(a7 + 16);
  v65 = *a6;
  v66 = *(a7 + 17);
  v72 = a8[1];
  v73 = *a8;
  v71 = *(a8 + 8);
  v78 = a13[1];
  v79 = *a13;
  v80 = *a14;
  v81 = *(a15 + 32);
  v21 = sub_217D8899C();
  v76 = *(a15 + 16);
  v77 = *a15;
  v74 = a12[1];
  v75 = *a12;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for MediaEngageEvent.Model(0);
  v23 = a9 + v22[5];
  *(v23 + 127) = *(a2 + 127);
  v24 = a2[3];
  v25 = *a2;
  v26 = a2[1];
  v28 = a2[6];
  v27 = a2[7];
  v29 = a2[4];
  v30 = a2[5];
  *(v23 + 32) = a2[2];
  *(v23 + 48) = v24;
  *v23 = v25;
  *(v23 + 16) = v26;
  *(v23 + 96) = v28;
  *(v23 + 112) = v27;
  *(v23 + 64) = v29;
  *(v23 + 80) = v30;
  v31 = a9 + v22[6];
  *v31 = v58;
  *(v31 + 8) = v19;
  *(v31 + 16) = v20;
  *(v31 + 17) = v57;
  *(v31 + 24) = v56;
  *(v31 + 32) = v55;
  v32 = a4[7];
  v33 = a4[8];
  v34 = a4[2];
  v35 = a4[3];
  v37 = a4[4];
  v36 = a4[5];
  v39 = *a4;
  v38 = a4[1];
  v40 = (a9 + v22[7]);
  v40[6] = a4[6];
  v40[7] = v32;
  v40[8] = v33;
  v40[2] = v34;
  v40[3] = v35;
  v40[4] = v37;
  v40[5] = v36;
  *v40 = v39;
  v40[1] = v38;
  v41 = a9 + v22[8];
  *(v41 + 16) = v59;
  *v41 = v60;
  v42 = a9 + v22[9];
  *v42 = v65;
  *(v42 + 8) = v64;
  *(v42 + 16) = v63;
  *(v42 + 24) = v62;
  *(v42 + 28) = v61;
  v43 = a9 + v22[10];
  *v43 = v70;
  *(v43 + 8) = v69;
  *(v43 + 12) = v68;
  *(v43 + 16) = v67;
  *(v43 + 17) = v66;
  v44 = a9 + v22[11];
  *v44 = v73;
  *(v44 + 8) = v72;
  *(v44 + 16) = v71;
  v45 = (a9 + v22[12]);
  v46 = a10[3];
  v45[2] = a10[2];
  v45[3] = v46;
  v47 = a10[1];
  *v45 = *a10;
  v45[1] = v47;
  v48 = a9 + v22[13];
  *(v48 + 48) = *(a11 + 48);
  v49 = a11[2];
  v50 = *a11;
  *(v48 + 16) = a11[1];
  *(v48 + 32) = v49;
  *v48 = v50;
  v51 = (a9 + v22[14]);
  *v51 = v75;
  v51[1] = v74;
  v52 = (a9 + v22[15]);
  *v52 = v79;
  v52[1] = v78;
  *(a9 + v22[16]) = v80;
  v53 = a9 + v22[17];
  *(v53 + 32) = v81;
  result = v77;
  *v53 = v77;
  *(v53 + 16) = v76;
  return result;
}

uint64_t sub_217AE3E10(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x44656C6369747261;
      break;
    case 2:
      result = 0x446C656E6E616863;
      break;
    case 3:
      result = 0x74614470756F7267;
      break;
    case 4:
      v3 = 1684366694;
      goto LABEL_11;
    case 5:
      result = 0x746144616964656DLL;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      v3 = 2003134838;
LABEL_11:
      result = v3 | 0x6174614400000000;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0x7461446575737369;
      break;
    case 11:
      result = 0x6569566575737369;
      break;
    case 12:
      result = 0x7461746E6569726FLL;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217AE3FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217AE6778(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217AE3FE0(uint64_t a1)
{
  v2 = sub_217AE49F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AE401C(uint64_t a1)
{
  v2 = sub_217AE49F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaEngageEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217AE572C(0, &qword_27CB9ECA8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v75 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AE49F0();
  sub_217D89E7C();
  v148 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for MediaEngageEvent.Model(0);
    v13 = v3 + v12[5];
    v14 = *(v13 + 80);
    v15 = *(v13 + 112);
    v146 = *(v13 + 96);
    *v147 = v15;
    v16 = *(v13 + 16);
    v17 = *(v13 + 48);
    v142 = *(v13 + 32);
    v143 = v17;
    v18 = *(v13 + 48);
    v19 = *(v13 + 80);
    v144 = *(v13 + 64);
    v145 = v19;
    v20 = *(v13 + 16);
    v141[0] = *v13;
    v141[1] = v20;
    v21 = *(v13 + 112);
    v139 = v146;
    v140[0] = v21;
    v135 = v142;
    v136 = v18;
    v138 = v14;
    v137 = v144;
    *&v147[15] = *(v13 + 127);
    *(v140 + 15) = *(v13 + 127);
    v134 = v16;
    v133 = v141[0];
    v132 = 1;
    sub_217AD1630(v141, v115);
    sub_217ACF52C();
    sub_217D89CAC();
    v130[6] = v139;
    *v131 = v140[0];
    *&v131[15] = *(v140 + 15);
    v130[2] = v135;
    v130[3] = v136;
    v130[5] = v138;
    v130[4] = v137;
    v130[0] = v133;
    v130[1] = v134;
    sub_217AD2864(v130);
    v22 = (v3 + v12[6]);
    v23 = v22[1];
    v24 = *(v22 + 16);
    v25 = *(v22 + 17);
    v26 = v22[3];
    v27 = v22[4];
    v124 = *v22;
    v125 = v23;
    v126 = v24;
    v127 = v25;
    v128 = v26;
    v129 = v27;
    v123 = 2;
    sub_217AD084C();

    sub_217D89CAC();

    v28 = (v3 + v12[7]);
    v29 = v28[5];
    v30 = v28[7];
    v120 = v28[6];
    v121 = v30;
    v31 = v28[7];
    v122 = v28[8];
    v32 = v28[1];
    v33 = v28[3];
    v116 = v28[2];
    v117 = v33;
    v34 = v28[3];
    v35 = v28[5];
    v118 = v28[4];
    v119 = v35;
    v36 = v28[1];
    v115[0] = *v28;
    v115[1] = v36;
    v112 = v120;
    v113 = v31;
    v114 = v28[8];
    v108 = v116;
    v109 = v34;
    v110 = v118;
    v111 = v29;
    v106 = v115[0];
    v107 = v32;
    v105 = 3;
    sub_217AE38AC(v115, v104, &qword_2811BD178);
    sub_217A5D3B4();
    sub_217D89C3C();
    v104[6] = v112;
    v104[7] = v113;
    v104[8] = v114;
    v104[2] = v108;
    v104[3] = v109;
    v104[4] = v110;
    v104[5] = v111;
    v104[0] = v106;
    v104[1] = v107;
    sub_217AE4A44(v104, &qword_2811BD178);
    v37 = (v3 + v12[8]);
    v38 = v37[1];
    v39 = v37[2];
    *&v96 = *v37;
    *(&v96 + 1) = v38;
    *&v97 = v39;
    LOBYTE(v92) = 4;
    sub_217AD1A68(v96, v38, v39);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v96, *(&v96 + 1), v97);
    v40 = (v3 + v12[9]);
    v41 = *v40;
    v42 = *(v40 + 1);
    v43 = *(v40 + 2);
    v44 = *(v40 + 6);
    LOBYTE(v40) = v40[28];
    LOBYTE(v96) = v41;
    *(&v96 + 1) = v42;
    *&v97 = v43;
    DWORD2(v97) = v44;
    BYTE12(v97) = v40;
    LOBYTE(v92) = 5;
    sub_217AE1D08();

    sub_217D89CAC();

    v45 = (v3 + v12[10]);
    v46 = *v45;
    v47 = *(v45 + 8);
    v48 = *(v45 + 3);
    v49 = *(v45 + 16);
    LOBYTE(v45) = *(v45 + 17);
    *&v96 = v46;
    BYTE8(v96) = v47;
    HIDWORD(v96) = v48;
    LOBYTE(v97) = v49;
    BYTE1(v97) = v45;
    LOBYTE(v92) = 6;
    sub_217AE1F60();
    sub_217D89CAC();
    v50 = (v3 + v12[11]);
    v51 = *v50;
    v52 = v50[1];
    LOWORD(v50) = *(v50 + 8);
    v101 = v51;
    v102 = v52;
    v103 = v50;
    v100 = 7;
    sub_217A5E790();

    sub_217D89CAC();

    v53 = (v3 + v12[12]);
    v54 = v53[1];
    v96 = *v53;
    v97 = v54;
    v55 = v53[3];
    v57 = *v53;
    v56 = v53[1];
    v98 = v53[2];
    v99 = v55;
    v92 = v57;
    v93 = v56;
    v58 = v53[3];
    v94 = v53[2];
    v95 = v58;
    v91 = 8;
    sub_217AE38AC(&v96, v90, &qword_27CB9ECA0);
    sub_217AE2368();
    sub_217D89C3C();
    v90[0] = v92;
    v90[1] = v93;
    v90[2] = v94;
    v90[3] = v95;
    sub_217AE4A44(v90, &qword_27CB9ECA0);
    v59 = (v3 + v12[13]);
    v60 = v59[1];
    v88[0] = *v59;
    v88[1] = v60;
    v62 = *v59;
    v61 = v59[1];
    v88[2] = v59[2];
    v89 = *(v59 + 48);
    v84 = v62;
    v85 = v61;
    v86 = v59[2];
    v87 = *(v59 + 48);
    v83 = 9;
    sub_217ACC004(v88, v81);
    sub_217A55B98();
    sub_217D89CAC();
    v81[0] = v84;
    v81[1] = v85;
    v81[2] = v86;
    v82 = v87;
    sub_217ACC69C(v81);
    v63 = (v3 + v12[14]);
    v64 = v63[1];
    v65 = v63[2];
    v66 = v63[3];
    v75 = *v63;
    v76 = v64;
    v77 = v65;
    v78 = v66;
    v80 = 10;
    sub_217AE39D0(v75, v64);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v75, v76);
    v67 = (v3 + v12[15]);
    v68 = v67[1];
    v75 = *v67;
    v76 = v68;
    v80 = 11;
    sub_217AD01EC();

    sub_217D89C3C();

    LOWORD(v75) = *(v3 + v12[16]);
    v80 = 12;
    sub_217A4CF88();
    sub_217D89C3C();
    v69 = (v3 + v12[17]);
    v70 = v69[1];
    v71 = v69[2];
    v72 = v69[3];
    v73 = v69[4];
    v75 = *v69;
    v76 = v70;
    v77 = v71;
    v78 = v72;
    v79 = v73;
    v80 = 13;
    sub_217AE3AE8(v75, v70);
    sub_217AE2CFC();
    sub_217D89C3C();
    sub_217AE4AE4(v75, v76);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217AE49F0()
{
  result = qword_27CB9ECB0;
  if (!qword_27CB9ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9ECB0);
  }

  return result;
}

uint64_t sub_217AE4A44(uint64_t a1, unint64_t *a2)
{
  sub_217A5E974(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217AE4AA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_217AE4AE4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t MediaEngageEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_217D8899C();
  v67 = *(v3 - 8);
  v4 = *(v67 + 64);
  MEMORY[0x28223BE20](v3);
  v69 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217AE572C(0, &qword_27CB9ECB8, MEMORY[0x277D844C8]);
  v71 = v6;
  v68 = *(v6 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v63 - v8;
  v10 = type metadata accessor for MediaEngageEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AE49F0();
  v70 = v9;
  v15 = v105;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v68;
  v64 = v10;
  v65 = a1;
  v105 = v13;
  LOBYTE(v96) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v69;
  sub_217D89BCC();
  v18 = v105;
  (*(v67 + 32))(v105, v17, v3);
  v87 = 1;
  sub_217ACF4D8();
  sub_217D89BCC();
  v63[1] = v3;
  v69 = 0;
  v19 = v64;
  v20 = &v18[v64[5]];
  v21 = *v95;
  *(v20 + 6) = v94;
  *(v20 + 7) = v21;
  *(v20 + 127) = *&v95[15];
  v22 = v91;
  *(v20 + 2) = v90;
  *(v20 + 3) = v22;
  v23 = v93;
  *(v20 + 4) = v92;
  *(v20 + 5) = v23;
  v24 = v89;
  *v20 = v88;
  *(v20 + 1) = v24;
  LOBYTE(v82) = 2;
  sub_217AD07F8();
  sub_217D89BCC();
  v25 = *(&v96 + 1);
  v26 = v97;
  v27 = BYTE1(v97);
  v28 = *(&v97 + 1);
  v29 = v98;
  v30 = &v18[v19[6]];
  *v30 = v96;
  *(v30 + 1) = v25;
  v30[16] = v26;
  v30[17] = v27;
  *(v30 + 3) = v28;
  *(v30 + 4) = v29;
  v86 = 3;
  sub_217A5D308();
  sub_217D89B5C();
  v31 = &v18[v19[7]];
  v32 = v103;
  *(v31 + 6) = v102;
  *(v31 + 7) = v32;
  *(v31 + 8) = v104;
  v33 = v99;
  *(v31 + 2) = v98;
  *(v31 + 3) = v33;
  v34 = v101;
  *(v31 + 4) = v100;
  *(v31 + 5) = v34;
  v35 = v97;
  *v31 = v96;
  *(v31 + 1) = v35;
  LOBYTE(v77) = 4;
  sub_217A5B978();
  sub_217D89B5C();
  v36 = v83;
  v37 = &v18[v19[8]];
  *v37 = v82;
  *(v37 + 2) = v36;
  LOBYTE(v77) = 5;
  sub_217AE1CB4();
  sub_217D89BCC();
  v38 = *(&v82 + 1);
  v39 = v83;
  v40 = DWORD2(v83);
  v41 = BYTE12(v83);
  v42 = &v18[v19[9]];
  *v42 = v82;
  *(v42 + 1) = v38;
  *(v42 + 2) = v39;
  *(v42 + 6) = v40;
  v42[28] = v41;
  LOBYTE(v77) = 6;
  sub_217AE1F0C();
  sub_217D89BCC();
  v43 = BYTE8(v82);
  v44 = HIDWORD(v82);
  v45 = v83;
  v46 = BYTE1(v83);
  v47 = &v18[v19[10]];
  *v47 = v82;
  v47[8] = v43;
  *(v47 + 3) = v44;
  v47[16] = v45;
  v47[17] = v46;
  LOBYTE(v77) = 7;
  sub_217A5E738();
  sub_217D89BCC();
  v48 = *(&v82 + 1);
  v49 = v83;
  v50 = &v18[v19[11]];
  *v50 = v82;
  *(v50 + 1) = v48;
  *(v50 + 8) = v49;
  v81 = 8;
  sub_217AE2314();
  sub_217D89B5C();
  v51 = &v105[v19[12]];
  v52 = v83;
  *v51 = v82;
  *(v51 + 1) = v52;
  v53 = v85;
  *(v51 + 2) = v84;
  *(v51 + 3) = v53;
  v76 = 9;
  sub_217A54D08();
  sub_217D89BCC();
  v54 = &v105[v64[13]];
  v55 = v78;
  *v54 = v77;
  *(v54 + 1) = v55;
  *(v54 + 2) = v79;
  v54[48] = v80;
  v75 = 10;
  sub_217ACFF40();
  sub_217D89B5C();
  v56 = &v105[v64[14]];
  v57 = v73;
  *v56 = v72;
  *(v56 + 1) = v57;
  v75 = 11;
  sub_217AD0198();
  sub_217D89B5C();
  *&v105[v64[15]] = v72;
  v75 = 12;
  sub_217A4CF30();
  sub_217D89B5C();
  *&v105[v64[16]] = v72;
  v75 = 13;
  sub_217AE2CA8();
  sub_217D89B5C();
  (*(v16 + 8))(v70, v71);
  v58 = v74;
  v59 = v105;
  v60 = &v105[v64[17]];
  v61 = v73;
  *v60 = v72;
  *(v60 + 1) = v61;
  *(v60 + 4) = v58;
  sub_217AE5790(v59, v66);
  __swift_destroy_boxed_opaque_existential_1(v65);
  return sub_217AE57F4(v59);
}

void sub_217AE572C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AE49F0();
    v7 = a3(a1, &type metadata for MediaEngageEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217AE5790(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaEngageEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AE57F4(uint64_t a1)
{
  v2 = type metadata accessor for MediaEngageEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217AE5928@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217AE2C2C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217AE2C2C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217AE2C2C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217AE2C2C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217AE2C2C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217AE2C2C(0, &qword_2811C8600, sub_217AE1F0C, sub_217AE1F60);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217AE2C2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217AE2C2C(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_217AE2C2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217AE2C2C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v26 - 8) + 104))(a2 + v25, v11, v26);
  v27 = a1[15];
  sub_217AE2C2C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v28 - 8) + 104))(a2 + v27, v11, v28);
  v29 = a1[16];
  sub_217AE2C2C(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  (*(*(v30 - 8) + 104))(a2 + v29, v11, v30);
  v31 = a1[17];
  sub_217AE2C2C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v33 = *(*(v32 - 8) + 104);

  return v33(a2 + v31, v11, v32);
}

void sub_217AE5FFC()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217AE2C2C(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
    if (v1 <= 0x3F)
    {
      sub_217AE2C2C(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
      if (v2 <= 0x3F)
      {
        sub_217AE2C2C(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
        if (v3 <= 0x3F)
        {
          sub_217AE2C2C(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
          if (v4 <= 0x3F)
          {
            sub_217AE2C2C(319, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
            if (v5 <= 0x3F)
            {
              sub_217AE2C2C(319, &qword_2811C8600, sub_217AE1F0C, sub_217AE1F60);
              if (v6 <= 0x3F)
              {
                sub_217AE2C2C(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
                if (v7 <= 0x3F)
                {
                  sub_217AE2C2C(319, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
                  if (v8 <= 0x3F)
                  {
                    sub_217AE2C2C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                    if (v9 <= 0x3F)
                    {
                      sub_217AE2C2C(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
                      if (v10 <= 0x3F)
                      {
                        sub_217AE2C2C(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
                        if (v11 <= 0x3F)
                        {
                          sub_217AE2C2C(319, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
                          if (v12 <= 0x3F)
                          {
                            sub_217AE2C2C(319, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
                            if (v13 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_217AE64A0()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD178);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD308);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9ECA0);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD110);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811C71A8);
            if (v5 <= 0x3F)
            {
              sub_217A5E974(319, &qword_27CB9ECC0);
              if (v6 <= 0x3F)
              {
                sub_217A5E974(319, &qword_2811BF120);
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

unint64_t sub_217AE6674()
{
  result = qword_27CB9ECC8;
  if (!qword_27CB9ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9ECC8);
  }

  return result;
}

unint64_t sub_217AE66CC()
{
  result = qword_27CB9ECD0;
  if (!qword_27CB9ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9ECD0);
  }

  return result;
}

unint64_t sub_217AE6724()
{
  result = qword_27CB9ECD8;
  if (!qword_27CB9ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9ECD8);
  }

  return result;
}

uint64_t sub_217AE6778(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746144616964656DLL && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCD5B0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD5D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD5F0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217AE6BF8(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v38 = a1;
  v2 = sub_217D87A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = sub_217D87AAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217AE6FDC();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  sub_217D87A7C();
  sub_217AE7034(v21, v19);
  if ((*(v11 + 48))(v19, 1, v10) == 1)
  {
    sub_217AE7098(v21);
    v22 = v19;
LABEL_13:
    sub_217AE7098(v22);
    return 0;
  }

  (*(v11 + 32))(v14, v19, v10);
  result = sub_217D87A5C();
  if (!result)
  {
    (*(v11 + 8))(v14, v10);
    v22 = v21;
    goto LABEL_13;
  }

  v24 = result;
  v33 = v21;
  v34 = v14;
  v35 = v11;
  v36 = v10;
  v32 = v9;
  v25 = *(result + 16);
  if (!v25)
  {
LABEL_11:

    (*(v35 + 8))(v34, v36);
    v22 = v33;
    goto LABEL_13;
  }

  v26 = 0;
  while (v26 < *(v24 + 16))
  {
    (*(v3 + 16))(v7, v24 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v26, v2);
    if (sub_217D87A2C() == v38 && v27 == v37)
    {

LABEL_16:

      v29 = v32;
      (*(v3 + 32))(v32, v7, v2);
      v30 = sub_217D87A3C();
      (*(v35 + 8))(v34, v36);
      sub_217AE7098(v33);
      (*(v3 + 8))(v29, v2);
      return v30;
    }

    v28 = sub_217D89D4C();

    if (v28)
    {
      goto LABEL_16;
    }

    ++v26;
    result = (*(v3 + 8))(v7, v2);
    if (v25 == v26)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_217AE6FDC()
{
  if (!qword_2811C8CB8[0])
  {
    sub_217D87AAC();
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, qword_2811C8CB8);
    }
  }
}

uint64_t sub_217AE7034(uint64_t a1, uint64_t a2)
{
  sub_217AE6FDC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AE7098(uint64_t a1)
{
  sub_217AE6FDC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SportsSessionStartEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SportsSessionStartEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsSessionStartEvent(0) + 20);
  sub_217A62888(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SportsSessionStartEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsSessionStartEvent(0) + 20);
  sub_217A62888(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsSessionStartEvent.sportsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsSessionStartEvent(0) + 24);
  sub_217A62888(0, &qword_2811C8808, sub_217A6120C, sub_217A61284);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SportsSessionStartEvent.sportsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsSessionStartEvent(0) + 24);
  sub_217A62888(0, &qword_2811C8808, sub_217A6120C, sub_217A61284);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsSessionStartEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  started = type metadata accessor for SportsSessionStartEvent(0);
  v5 = *(started + 20);
  sub_217A62888(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(started + 24);
  sub_217A62888(0, &qword_2811C8808, sub_217A6120C, sub_217A61284);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t SportsSessionStartEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SportsSessionStartEvent.Model(0) + 20));
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

uint64_t SportsSessionStartEvent.Model.sportsData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for SportsSessionStartEvent.Model(0) + 24));
}

__n128 SportsSessionStartEvent.Model.init(eventData:userBundleSubscriptionContextData:sportsData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_217D8899C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  started = type metadata accessor for SportsSessionStartEvent.Model(0);
  v10 = a4 + *(started + 20);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  result = *(a2 + 32);
  *(v10 + 32) = result;
  *(v10 + 48) = *(a2 + 48);
  *(a4 + *(started + 24)) = v7;
  return result;
}

uint64_t sub_217AE7928()
{
  v1 = 0xD000000000000021;
  if (*v0 != 1)
  {
    v1 = 0x61447374726F7073;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_217AE7990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217AE8488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217AE79B8(uint64_t a1)
{
  v2 = sub_217AE7CF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AE79F4(uint64_t a1)
{
  v2 = sub_217AE7CF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsSessionStartEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217AE8148(0, &qword_27CB9ED40, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AE7CF4();
  sub_217D89E7C();
  v31 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    started = type metadata accessor for SportsSessionStartEvent.Model(0);
    v13 = (v3 + *(started + 20));
    v14 = v13[2];
    v15 = *v13;
    v16 = *v13;
    v28 = v13[1];
    v29 = v14;
    v27 = v15;
    v30 = *(v13 + 48);
    v23 = v16;
    v24 = v28;
    v25 = v13[2];
    v26 = *(v13 + 48);
    v22 = 1;
    sub_217ACC004(&v27, v20);
    sub_217A55B98();
    sub_217D89CAC();
    v20[0] = v23;
    v20[1] = v24;
    v20[2] = v25;
    v21 = v26;
    sub_217ACC69C(v20);
    v19 = *(v3 + *(started + 24));
    v18[7] = 2;
    sub_217A61284();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217AE7CF4()
{
  result = qword_27CB9ED48;
  if (!qword_27CB9ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9ED48);
  }

  return result;
}

uint64_t SportsSessionStartEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_217D8899C();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v29 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217AE8148(0, &qword_27CB9ED50, MEMORY[0x277D844C8]);
  v30 = v7;
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  started = type metadata accessor for SportsSessionStartEvent.Model(0);
  v12 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AE7CF4();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v27;
  v16 = v28;
  v24 = started;
  v25 = v14;
  LOBYTE(v32) = 0;
  sub_217A602A0(&qword_2811C8408);
  v19 = v29;
  v18 = v30;
  sub_217D89BCC();
  (*(v16 + 32))(v25, v19, v4);
  v37 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v20 = &v25[*(v24 + 20)];
  v21 = v33;
  *v20 = v32;
  *(v20 + 1) = v21;
  *(v20 + 2) = v34;
  v20[48] = v35;
  v36 = 2;
  sub_217A6120C();
  sub_217D89BCC();
  (*(v17 + 8))(v10, v18);
  v22 = v25;
  *&v25[*(v24 + 24)] = v31;
  sub_217AE81AC(v22, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217AE8210(v22);
}

void sub_217AE8148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AE7CF4();
    v7 = a3(a1, &type metadata for SportsSessionStartEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217AE81AC(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for SportsSessionStartEvent.Model(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_217AE8210(uint64_t a1)
{
  started = type metadata accessor for SportsSessionStartEvent.Model(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_217AE82EC()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217AE8384()
{
  result = qword_27CB9ED68;
  if (!qword_27CB9ED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9ED68);
  }

  return result;
}

unint64_t sub_217AE83DC()
{
  result = qword_27CB9ED70;
  if (!qword_27CB9ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9ED70);
  }

  return result;
}

unint64_t sub_217AE8434()
{
  result = qword_27CB9ED78;
  if (!qword_27CB9ED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9ED78);
  }

  return result;
}

uint64_t sub_217AE8488(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61447374726F7073 && a2 == 0xEA00000000006174)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217AE8680()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9EDB0);
  __swift_project_value_buffer(v0, qword_27CB9EDB0);
  return sub_217D8866C();
}

uint64_t WebEmbedViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WebEmbedViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedViewEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedViewEvent.webEmbedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedViewEvent(0) + 24);
  sub_217AE8BCC(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AE8974()
{
  result = qword_2811C7898;
  if (!qword_2811C7898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7898);
  }

  return result;
}

unint64_t sub_217AE89C8()
{
  result = qword_2811C78A0;
  if (!qword_2811C78A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C78A0);
  }

  return result;
}

uint64_t WebEmbedViewEvent.webEmbedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedViewEvent(0) + 24);
  sub_217AE8BCC(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedViewEvent(0) + 28);
  sub_217AE8BCC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217AE8BCC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t WebEmbedViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedViewEvent(0) + 28);
  sub_217AE8BCC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WebEmbedViewEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217AE8BCC(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217AE8BCC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t sub_217AE8F40@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t WebEmbedViewEvent.Model.webEmbedData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedViewEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t WebEmbedViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedViewEvent.Model(0) + 28));
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

__n128 WebEmbedViewEvent.Model.init(eventData:timedData:webEmbedData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = sub_217D8899C();
  (*(*(v11 - 8) + 32))(a5, a1, v11);
  v12 = type metadata accessor for WebEmbedViewEvent.Model(0);
  v13 = v12[5];
  v14 = sub_217D889CC();
  (*(*(v14 - 8) + 32))(a5 + v13, a2, v14);
  v15 = (a5 + v12[6]);
  *v15 = v9;
  v15[1] = v10;
  v16 = a5 + v12[7];
  v17 = *(a4 + 16);
  *v16 = *a4;
  *(v16 + 16) = v17;
  result = *(a4 + 32);
  *(v16 + 32) = result;
  *(v16 + 48) = *(a4 + 48);
  return result;
}

unint64_t sub_217AE9198()
{
  v1 = 0x746144746E657665;
  v2 = 0x6465626D45626577;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000021;
  }

  if (*v0)
  {
    v1 = 0x74614464656D6974;
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

uint64_t sub_217AE9220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217AEA288(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217AE9248(uint64_t a1)
{
  v2 = sub_217AE95EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AE9284(uint64_t a1)
{
  v2 = sub_217AE95EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebEmbedViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217AE9BB4(0, &qword_27CB9EDC8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AE95EC();
  sub_217D89E7C();
  LOBYTE(v27[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for WebEmbedViewEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v27[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = (v3 + v12[6]);
    v15 = v14[1];
    v29 = *v14;
    v30 = v15;
    v32 = 2;
    sub_217AE89C8();

    sub_217D89CAC();

    v16 = (v3 + v12[7]);
    v17 = v16[1];
    v27[0] = *v16;
    v27[1] = v17;
    v19 = *v16;
    v18 = v16[1];
    v27[2] = v16[2];
    v28 = *(v16 + 48);
    v23 = v19;
    v24 = v18;
    v25 = v16[2];
    v26 = *(v16 + 48);
    v31 = 3;
    sub_217ACC004(v27, v21);
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

unint64_t sub_217AE95EC()
{
  result = qword_27CB9EDD0;
  if (!qword_27CB9EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EDD0);
  }

  return result;
}

uint64_t WebEmbedViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v34 = sub_217D889CC();
  v32 = *(v34 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217AE9BB4(0, &qword_27CB9EDD8, MEMORY[0x277D844C8]);
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = type metadata accessor for WebEmbedViewEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AE95EC();
  v38 = v12;
  v18 = v39;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = v13;
  v19 = v16;
  v20 = v33;
  v21 = v34;
  LOBYTE(v40) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  sub_217D89BCC();
  v22 = *(v20 + 32);
  v23 = v37;
  v37 = v6;
  v22(v16, v23);
  LOBYTE(v40) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  sub_217D89BCC();
  (*(v32 + 32))(&v16[*(v39 + 20)], v5, v21);
  v44 = 2;
  sub_217AE8974();
  sub_217D89BCC();
  v24 = a1;
  v25 = *(&v40 + 1);
  v26 = v39;
  v27 = (v19 + *(v39 + 24));
  *v27 = v40;
  v27[1] = v25;
  v44 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v35 + 8))(v38, v36);
  v28 = v19 + *(v26 + 28);
  v29 = v41;
  *v28 = v40;
  *(v28 + 16) = v29;
  *(v28 + 32) = v42;
  *(v28 + 48) = v43;
  sub_217AE9C18(v19, v31);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_217AE9C7C(v19);
}

void sub_217AE9BB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AE95EC();
    v7 = a3(a1, &type metadata for WebEmbedViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217AE9C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AE9C7C(uint64_t a1)
{
  v2 = type metadata accessor for WebEmbedViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217AE9DB0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217AE8BCC(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217AE8BCC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217AE9F88()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217AE8BCC(319, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
      if (v2 <= 0x3F)
      {
        sub_217AE8BCC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217AEA0D4()
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

unint64_t sub_217AEA184()
{
  result = qword_27CB9EDE0;
  if (!qword_27CB9EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EDE0);
  }

  return result;
}

unint64_t sub_217AEA1DC()
{
  result = qword_27CB9EDE8;
  if (!qword_27CB9EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EDE8);
  }

  return result;
}

unint64_t sub_217AEA234()
{
  result = qword_27CB9EDF0;
  if (!qword_27CB9EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EDF0);
  }

  return result;
}

uint64_t sub_217AEA288(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465626D45626577 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
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

uint64_t MutedTagListData.tagIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_217AEA46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x734449676174 && a2 == 0xE600000000000000)
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

uint64_t sub_217AEA4F0(uint64_t a1)
{
  v2 = sub_217A69418();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AEA52C(uint64_t a1)
{
  v2 = sub_217A69418();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MutedTagListData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217A6939C(0, &qword_2811BCA70, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A69418();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD38);
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217AEA730()
{
  result = qword_2811C5048;
  if (!qword_2811C5048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5048);
  }

  return result;
}

uint64_t sub_217AEA7AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_217AEA7F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217AEA854()
{
  result = qword_27CB9EDF8;
  if (!qword_27CB9EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EDF8);
  }

  return result;
}

NewsAnalytics::ActionMethod_optional __swiftcall ActionMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ActionMethod.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 0x4D747865746E6F63;
    if (v1 != 2)
    {
      v7 = 0x7463416570697773;
    }

    if (*v0)
    {
      v6 = 0x776F7272616873;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 2003134838;
    v3 = 0x616D6D6F4379656BLL;
    if (v1 != 7)
    {
      v3 = 0x6E65746E49707061;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x7261626C6F6F74;
    if (v1 != 4)
    {
      v4 = 0x726162756E656DLL;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_217AEAA40()
{
  result = qword_27CB9EE00;
  if (!qword_27CB9EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE00);
  }

  return result;
}

uint64_t sub_217AEAA94()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D837D4();
  return sub_217D89E3C();
}

uint64_t sub_217AEAAE4()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D837D4();
  return sub_217D89E3C();
}

uint64_t sub_217AEAB34@<X0>(uint64_t *a1@<X8>)
{
  result = ActionMethod.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217AEAC1C()
{
  result = qword_27CB9EE08;
  if (!qword_27CB9EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE08);
  }

  return result;
}

uint64_t sub_217AEACD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7954746C75736572 && a2 == 0xEA00000000006570)
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

uint64_t sub_217AEAD68(uint64_t a1)
{
  v2 = sub_217AEAF3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AEADA4(uint64_t a1)
{
  v2 = sub_217AEAF3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscriptionResultData.encode(to:)(void *a1)
{
  sub_217AEB17C(0, &qword_27CB9EE10, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AEAF3C();
  sub_217D89E7C();
  v13 = v9;
  sub_217AEAF90();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217AEAF3C()
{
  result = qword_27CB9EE18;
  if (!qword_27CB9EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE18);
  }

  return result;
}

unint64_t sub_217AEAF90()
{
  result = qword_27CB9EE20;
  if (!qword_27CB9EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE20);
  }

  return result;
}

uint64_t SubscriptionResultData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217AEB17C(0, &qword_27CB9EE28, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AEAF3C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217AEB1E0();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217AEB17C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AEAF3C();
    v7 = a3(a1, &type metadata for SubscriptionResultData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217AEB1E0()
{
  result = qword_27CB9EE30;
  if (!qword_27CB9EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE30);
  }

  return result;
}

unint64_t sub_217AEB238()
{
  result = qword_2811C03B8;
  if (!qword_2811C03B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C03B8);
  }

  return result;
}

unint64_t sub_217AEB290()
{
  result = qword_2811C03C0;
  if (!qword_2811C03C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C03C0);
  }

  return result;
}

unint64_t sub_217AEB338()
{
  result = qword_27CB9EE38;
  if (!qword_27CB9EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE38);
  }

  return result;
}

unint64_t sub_217AEB390()
{
  result = qword_27CB9EE40;
  if (!qword_27CB9EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE40);
  }

  return result;
}

unint64_t sub_217AEB3E8()
{
  result = qword_27CB9EE48;
  if (!qword_27CB9EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE48);
  }

  return result;
}

NewsAnalytics::JourneyTriggerInactiveErrorReason_optional __swiftcall JourneyTriggerInactiveErrorReason.init(rawValue:)(Swift::String rawValue)
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

unint64_t JourneyTriggerInactiveErrorReason.rawValue.getter()
{
  v1 = 0x64657269707865;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000016;
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

unint64_t sub_217AEB530()
{
  result = qword_27CB9EE50;
  if (!qword_27CB9EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE50);
  }

  return result;
}

uint64_t sub_217AEB584()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217AEB654()
{
  *v0;
  sub_217D895CC();
}

uint64_t sub_217AEB710()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217AEB7E8(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x64657269707865;
  v4 = 0x8000000217DCA720;
  v5 = 0xD000000000000017;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x8000000217DCA740;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000016;
    v2 = 0x8000000217DCA700;
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

unint64_t sub_217AEB934()
{
  result = qword_27CB9EE58;
  if (!qword_27CB9EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE58);
  }

  return result;
}

uint64_t AudioEngagementData.engagementID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t AudioEngagementData.engagementID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t AudioEngagementData.init(timePlayed:deltaTimePlayed:userAction:position:engagementID:playMethod:listeningSource:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a3;
  v10 = *a7;
  v11 = *a8;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v9;
  *(a9 + 20) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = v10;
  *(a9 + 41) = v11;
  return result;
}

uint64_t sub_217AEBB78()
{
  v1 = *v0;
  v2 = 0x79616C50656D6974;
  v3 = 0x6874654D79616C70;
  if (v1 != 5)
  {
    v3 = 0x6E696E657473696CLL;
  }

  v4 = 0x6E6F697469736F70;
  if (v1 != 3)
  {
    v4 = 0x656D656761676E65;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6D695461746C6564;
  if (v1 != 1)
  {
    v5 = 0x6974634172657375;
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

uint64_t sub_217AEBC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217AECA5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217AEBCAC(uint64_t a1)
{
  v2 = sub_217AEBFD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AEBCE8(uint64_t a1)
{
  v2 = sub_217AEBFD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioEngagementData.encode(to:)(void *a1)
{
  sub_217AEC4A4(0, &qword_27CB9EE60, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v17 - v7;
  v9 = *v1;
  v23 = v1[1];
  v10 = *(v1 + 16);
  v21 = *(v1 + 5);
  v22 = v10;
  v11 = v1[3];
  v19 = v1[4];
  v20 = v11;
  v18 = *(v1 + 40);
  v12 = *(v1 + 41);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AEBFD4();
  sub_217D89E7C();
  v34 = 0;
  v14 = v24;
  sub_217D89CCC();
  if (!v14)
  {
    v15 = v22;
    LODWORD(v24) = v12;
    v33 = 1;
    sub_217D89CCC();
    v32 = v15;
    v31 = 2;
    sub_217AEC028();
    sub_217D89CAC();
    v30 = 3;
    sub_217D89CBC();
    v29 = 4;
    sub_217D89C6C();
    v28 = v18;
    v27 = 5;
    sub_217AEC07C();
    sub_217D89C3C();
    v26 = v24;
    v25 = 6;
    sub_217AEC0D0();
    sub_217D89CAC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217AEBFD4()
{
  result = qword_27CB9EE68;
  if (!qword_27CB9EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE68);
  }

  return result;
}

unint64_t sub_217AEC028()
{
  result = qword_27CB9EE70;
  if (!qword_27CB9EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE70);
  }

  return result;
}

unint64_t sub_217AEC07C()
{
  result = qword_27CB9EE78;
  if (!qword_27CB9EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE78);
  }

  return result;
}

unint64_t sub_217AEC0D0()
{
  result = qword_27CB9EE80;
  if (!qword_27CB9EE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE80);
  }

  return result;
}

uint64_t AudioEngagementData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217AEC4A4(0, &qword_27CB9EE88, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AEBFD4();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35[0]) = 0;
  v12 = sub_217D89BEC();
  LOBYTE(v35[0]) = 1;
  v32 = sub_217D89BEC();
  LOBYTE(v33) = 2;
  sub_217AEC508();
  sub_217D89BCC();
  v13 = LOBYTE(v35[0]);
  LOBYTE(v35[0]) = 3;
  v14 = sub_217D89BDC();
  v30 = v13;
  v31 = v14;
  LOBYTE(v35[0]) = 4;
  v28 = sub_217D89B8C();
  v29 = v15;
  LOBYTE(v33) = 5;
  sub_217AEC55C();
  sub_217D89B5C();
  v16 = LOBYTE(v35[0]);
  v44 = 6;
  sub_217AEC5B0();
  sub_217D89BCC();
  (*(v7 + 8))(v10, v6);
  v26 = v16;
  v27 = v45;
  v17 = v16;
  v18 = v32;
  *&v33 = v12;
  *(&v33 + 1) = v32;
  v19 = v30;
  v20 = v31;
  v34[0] = v30;
  *&v34[1] = v46;
  v34[3] = v47;
  *&v34[4] = v31;
  v21 = v28;
  v22 = v29;
  *&v34[8] = v28;
  *&v34[16] = v29;
  v34[24] = v17;
  v34[25] = v45;
  v23 = *v34;
  *a2 = v33;
  a2[1] = v23;
  *(a2 + 26) = *&v34[10];
  sub_217AEC604(&v33, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35[0] = v12;
  v35[1] = v18;
  v36 = v19;
  v37 = v46;
  v38 = v47;
  v39 = v20;
  v40 = v21;
  v41 = v22;
  v42 = v26;
  v43 = v27;
  return sub_217AEC63C(v35);
}

void sub_217AEC4A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AEBFD4();
    v7 = a3(a1, &type metadata for AudioEngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217AEC508()
{
  result = qword_27CB9EE90;
  if (!qword_27CB9EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE90);
  }

  return result;
}

unint64_t sub_217AEC55C()
{
  result = qword_27CB9EE98;
  if (!qword_27CB9EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE98);
  }

  return result;
}

unint64_t sub_217AEC5B0()
{
  result = qword_27CB9EEA0;
  if (!qword_27CB9EEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EEA0);
  }

  return result;
}

unint64_t sub_217AEC670()
{
  result = qword_2811C2A80;
  if (!qword_2811C2A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A80);
  }

  return result;
}

unint64_t sub_217AEC6C8()
{
  result = qword_2811C2A88;
  if (!qword_2811C2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A88);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_217AEC760(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217AEC7A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlternateHeadlineTreatmentStateData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlternateHeadlineTreatmentStateData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217AEC958()
{
  result = qword_27CB9EEA8;
  if (!qword_27CB9EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EEA8);
  }

  return result;
}

unint64_t sub_217AEC9B0()
{
  result = qword_27CB9EEB0;
  if (!qword_27CB9EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EEB0);
  }

  return result;
}

unint64_t sub_217AECA08()
{
  result = qword_27CB9EEB8;
  if (!qword_27CB9EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EEB8);
  }

  return result;
}

uint64_t sub_217AECA5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79616C50656D6974 && a2 == 0xEA00000000006465;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D695461746C6564 && a2 == 0xEF646579616C5065 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974634172657375 && a2 == 0xEA00000000006E6FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D656761676E65 && a2 == 0xEC0000004449746ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6874654D79616C70 && a2 == 0xEA0000000000646FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E696E657473696CLL && a2 == 0xEF656372756F5367)
  {

    return 6;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217AECD88()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9EEF0);
  __swift_project_value_buffer(v0, qword_27CB9EEF0);
  return sub_217D8866C();
}

uint64_t ArticleLikeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleLikeEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 20);
  sub_217AEDF64(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLikeEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 20);
  sub_217AEDF64(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLikeEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 24);
  sub_217AEDF64(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AED13C()
{
  result = qword_2811C8048;
  if (!qword_2811C8048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8048);
  }

  return result;
}

unint64_t sub_217AED190()
{
  result = qword_2811C8050;
  if (!qword_2811C8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8050);
  }

  return result;
}

uint64_t ArticleLikeEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 24);
  sub_217AEDF64(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLikeEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 28);
  sub_217AEDF64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLikeEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 28);
  sub_217AEDF64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLikeEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 32);
  sub_217AEDF64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLikeEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 32);
  sub_217AEDF64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLikeEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 36);
  sub_217AEDF64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLikeEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 36);
  sub_217AEDF64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLikeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 40);
  sub_217AEDF64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLikeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 40);
  sub_217AEDF64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLikeEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 44);
  sub_217AEDF64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLikeEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 44);
  sub_217AEDF64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLikeEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 48);
  sub_217AEDF64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLikeEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 48);
  sub_217AEDF64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLikeEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 52);
  sub_217AEDF64(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLikeEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 52);
  sub_217AEDF64(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLikeEvent.articleExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 56);
  sub_217AEDF64(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217AEDF64(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t ArticleLikeEvent.articleExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 56);
  sub_217AEDF64(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLikeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleLikeEvent(0);
  v5 = v4[5];
  sub_217AEDF64(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217AEDF64(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217AEDF64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217AEDF64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217AEDF64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v15 - 8) + 104))(a1 + v14, v12, v15);
  v16 = v4[10];
  sub_217AEDF64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217AEDF64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v19 - 8) + 104))(a1 + v18, v12, v19);
  v20 = v4[12];
  sub_217AEDF64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217AEDF64(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v23 - 8) + 104))(a1 + v22, v12, v23);
  v24 = v4[14];
  sub_217AEDF64(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v12, v25);
}

uint64_t ArticleLikeEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleLikeEvent.Model(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t ArticleLikeEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleLikeEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ArticleLikeEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleLikeEvent.Model(0) + 28);
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

uint64_t ArticleLikeEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLikeEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ArticleLikeEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLikeEvent.Model(0) + 36));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AD87FC(v17, &v16);
}

uint64_t ArticleLikeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLikeEvent.Model(0) + 40));
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

uint64_t ArticleLikeEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLikeEvent.Model(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_217AE39D0(v4, v5);
}

uint64_t ArticleLikeEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleLikeEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t ArticleLikeEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLikeEvent.Model(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ArticleLikeEvent.Model.articleExposureContextData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLikeEvent.Model(0) + 56));
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

  return sub_217AE3AE8(v4, v5);
}

__n128 ArticleLikeEvent.Model.init(eventData:articleData:actionData:channelData:feedData:groupData:userBundleSubscriptionContextData:issueData:userChannelContextData:viewData:articleExposureContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t *a11, uint64_t a12)
{
  v18 = *a3;
  v44 = a4[1];
  v45 = *a4;
  v19 = *(a4 + 16);
  v20 = *(a4 + 17);
  v42 = a4[4];
  v43 = a4[3];
  v47 = *a5;
  v46 = *(a5 + 2);
  v53 = a10[1];
  v54 = *a10;
  v52 = *(a10 + 1);
  v56 = a11[1];
  v57 = *a11;
  v55 = *(a11 + 8);
  v58 = *(a12 + 32);
  v21 = sub_217D8899C();
  v50 = *(a12 + 16);
  v51 = *a12;
  v48 = a8[1];
  v49 = *a8;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for ArticleLikeEvent.Model(0);
  v23 = a9 + v22[5];
  v24 = *(a2 + 48);
  *(v23 + 32) = *(a2 + 32);
  *(v23 + 48) = v24;
  v25 = *(a2 + 16);
  *v23 = *a2;
  *(v23 + 16) = v25;
  *(v23 + 127) = *(a2 + 127);
  v26 = *(a2 + 112);
  *(v23 + 96) = *(a2 + 96);
  *(v23 + 112) = v26;
  v27 = *(a2 + 80);
  *(v23 + 64) = *(a2 + 64);
  *(v23 + 80) = v27;
  *(a9 + v22[6]) = v18;
  v28 = a9 + v22[7];
  *v28 = v45;
  *(v28 + 8) = v44;
  *(v28 + 16) = v19;
  *(v28 + 17) = v20;
  *(v28 + 24) = v43;
  *(v28 + 32) = v42;
  v29 = a9 + v22[8];
  *v29 = v47;
  *(v29 + 16) = v46;
  v30 = (a9 + v22[9]);
  v31 = a6[3];
  v30[2] = a6[2];
  v30[3] = v31;
  v32 = a6[1];
  *v30 = *a6;
  v30[1] = v32;
  v33 = a6[8];
  v30[7] = a6[7];
  v30[8] = v33;
  v34 = a6[6];
  v30[5] = a6[5];
  v30[6] = v34;
  v30[4] = a6[4];
  v35 = a9 + v22[10];
  v36 = *(a7 + 16);
  *v35 = *a7;
  *(v35 + 16) = v36;
  *(v35 + 32) = *(a7 + 32);
  *(v35 + 48) = *(a7 + 48);
  v37 = (a9 + v22[11]);
  *v37 = v49;
  v37[1] = v48;
  v38 = a9 + v22[12];
  *v38 = v54;
  *(v38 + 1) = v53;
  *(v38 + 2) = v52;
  v39 = a9 + v22[13];
  *v39 = v57;
  *(v39 + 8) = v56;
  *(v39 + 16) = v55;
  v40 = a9 + v22[14];
  result = v51;
  *v40 = v51;
  *(v40 + 16) = v50;
  *(v40 + 32) = v58;
  return result;
}

unint64_t sub_217AEEC38(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v4 = 0x746144746E657665;
    v5 = 0x61446E6F69746361;
    v6 = 0x446C656E6E616863;
    if (a1 != 3)
    {
      v6 = 0x6174614464656566;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    if (a1)
    {
      v4 = 0x44656C6369747261;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6174614477656976;
    if (a1 != 9)
    {
      v1 = 0xD00000000000001ALL;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000016;
    }

    v2 = 0xD000000000000021;
    if (a1 != 6)
    {
      v2 = 0x7461446575737369;
    }

    if (a1 == 5)
    {
      v2 = 0x74614470756F7267;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_217AEEDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217AF0D04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217AEEDE4(uint64_t a1)
{
  v2 = sub_217AEF5D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AEEE20(uint64_t a1)
{
  v2 = sub_217AEF5D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleLikeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217AEFF90(0, &qword_27CB9EF08, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v59 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AEF5D0();
  sub_217D89E7C();
  v116 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for ArticleLikeEvent.Model(0);
    v13 = v3 + v12[5];
    v14 = *(v13 + 80);
    v15 = *(v13 + 112);
    v114 = *(v13 + 96);
    *v115 = v15;
    v16 = *(v13 + 16);
    v17 = *(v13 + 48);
    v110 = *(v13 + 32);
    v111 = v17;
    v18 = *(v13 + 48);
    v19 = *(v13 + 80);
    v112 = *(v13 + 64);
    v113 = v19;
    v20 = *(v13 + 16);
    v109[0] = *v13;
    v109[1] = v20;
    v21 = *(v13 + 112);
    v107 = v114;
    v108[0] = v21;
    v103 = v110;
    v104 = v18;
    v105 = v112;
    v106 = v14;
    *&v115[15] = *(v13 + 127);
    *(v108 + 15) = *(v13 + 127);
    v101 = v109[0];
    v102 = v16;
    v100 = 1;
    sub_217AD1630(v109, &v85);
    sub_217ACF52C();
    sub_217D89CAC();
    v98[6] = v107;
    *v99 = v108[0];
    *&v99[15] = *(v108 + 15);
    v98[2] = v103;
    v98[3] = v104;
    v98[4] = v105;
    v98[5] = v106;
    v98[0] = v101;
    v98[1] = v102;
    sub_217AD2864(v98);
    LOBYTE(v85) = *(v3 + v12[6]);
    LOBYTE(v76) = 2;
    sub_217AED190();
    sub_217D89CAC();
    v22 = v3 + v12[7];
    v23 = *(v22 + 8);
    v24 = *(v22 + 16);
    v25 = *(v22 + 17);
    v26 = *(v22 + 24);
    v27 = *(v22 + 32);
    *&v85 = *v22;
    *(&v85 + 1) = v23;
    LOBYTE(v86) = v24;
    BYTE1(v86) = v25;
    *(&v86 + 1) = v26;
    *&v87 = v27;
    LOBYTE(v76) = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v28 = (v3 + v12[8]);
    v29 = v28[1];
    v30 = v28[2];
    v95 = *v28;
    v96 = v29;
    v97 = v30;
    v94 = 4;
    sub_217AD1A68(v95, v29, v30);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v95, v96, v97);
    v31 = (v3 + v12[9]);
    v32 = v31[5];
    v33 = v31[7];
    v91 = v31[6];
    v92 = v33;
    v34 = v31[7];
    v93 = v31[8];
    v35 = v31[1];
    v36 = v31[3];
    v87 = v31[2];
    v88 = v36;
    v37 = v31[3];
    v38 = v31[5];
    v89 = v31[4];
    v90 = v38;
    v39 = v31[1];
    v85 = *v31;
    v86 = v39;
    v82 = v91;
    v83 = v34;
    v84 = v31[8];
    v78 = v87;
    v79 = v37;
    v80 = v89;
    v81 = v32;
    v76 = v85;
    v77 = v35;
    v75 = 5;
    sub_217AD87FC(&v85, v74);
    sub_217A5D3B4();
    sub_217D89C3C();
    v74[6] = v82;
    v74[7] = v83;
    v74[8] = v84;
    v74[2] = v78;
    v74[3] = v79;
    v74[4] = v80;
    v74[5] = v81;
    v74[0] = v76;
    v74[1] = v77;
    sub_217AD96E8(v74);
    v40 = v3 + v12[10];
    v41 = *(v40 + 16);
    v42 = *(v40 + 32);
    v72[0] = *v40;
    v72[1] = v41;
    v72[2] = v42;
    v73 = *(v40 + 48);
    v68 = v72[0];
    v69 = v41;
    v70 = *(v40 + 32);
    v71 = *(v40 + 48);
    v67 = 6;
    sub_217ACC004(v72, v65);
    sub_217A55B98();
    sub_217D89CAC();
    v65[0] = v68;
    v65[1] = v69;
    v65[2] = v70;
    v66 = v71;
    sub_217ACC69C(v65);
    v43 = (v3 + v12[11]);
    v44 = v43[1];
    v45 = v43[2];
    v46 = v43[3];
    v59 = *v43;
    v60 = v44;
    v61 = v45;
    v62 = v46;
    v64 = 7;
    sub_217AE39D0(v59, v44);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v59, v60);
    v47 = (v3 + v12[12]);
    v48 = *v47;
    v49 = v47[1];
    LOWORD(v47) = *(v47 + 1);
    LOBYTE(v59) = v48;
    BYTE1(v59) = v49;
    WORD1(v59) = v47;
    v64 = 8;
    sub_217ACFB8C();
    sub_217D89CAC();
    v50 = v3 + v12[13];
    v51 = *v50;
    v52 = *(v50 + 8);
    LOWORD(v50) = *(v50 + 16);
    v59 = v51;
    v60 = v52;
    LOWORD(v61) = v50;
    v64 = 9;
    sub_217A5E790();

    sub_217D89C3C();

    v53 = (v3 + v12[14]);
    v54 = v53[1];
    v55 = v53[2];
    v56 = v53[3];
    v57 = v53[4];
    v59 = *v53;
    v60 = v54;
    v61 = v55;
    v62 = v56;
    v63 = v57;
    v64 = 10;
    sub_217AE3AE8(v59, v54);
    sub_217AE2CFC();
    sub_217D89C3C();
    sub_217AE4AE4(v59, v60);
  }

  return (*(v7 + 8))(v10, v6);
}