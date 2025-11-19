uint64_t PDFPageViewEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 68);
  sub_217C14EB8(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 72);
  sub_217C14EB8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C14EB8(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t PDFPageViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 72);
  sub_217C14EB8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PDFPageViewEvent(0);
  v5 = v4[5];
  sub_217C14EB8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C14EB8(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217C14EB8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217C14EB8(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217A608E0();
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  v16 = *MEMORY[0x277CEACF0];
  sub_217C14EB8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v17 - 8) + 104))(a1 + v15, v16, v17);
  v18 = v4[11];
  sub_217C14EB8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v19 - 8) + 104))(a1 + v18, v16, v19);
  v20 = v4[12];
  sub_217C14EB8(0, &qword_2811C8720, sub_217BB0C7C, sub_217BB0CD4);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217C14EB8(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  (*(*(v23 - 8) + 104))(a1 + v22, v16, v23);
  v24 = v4[14];
  sub_217C14EB8(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
  (*(*(v25 - 8) + 104))(a1 + v24, v16, v25);
  v26 = v4[15];
  sub_217C14EB8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_217C14EB8(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
  (*(*(v29 - 8) + 104))(a1 + v28, v16, v29);
  v30 = v4[17];
  sub_217C14EB8(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  (*(*(v31 - 8) + 104))(a1 + v30, v16, v31);
  v32 = v4[18];
  sub_217C14EB8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v34 = *(*(v33 - 8) + 104);

  return v34(a1 + v32, v16, v33);
}

uint64_t PDFPageViewEvent.Model.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 20);
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

uint64_t PDFPageViewEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t PDFPageViewEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 28);
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

uint64_t PDFPageViewEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for PDFPageViewEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t sub_217C158E8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 36);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t PDFPageViewEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t PDFPageViewEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 44));
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

uint64_t PDFPageViewEvent.Model.pdfPageContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 48));
  v4 = *v3;
  LODWORD(v3) = *(v3 + 2);
  *a1 = v4;
  *(a1 + 8) = v3;
}

uint64_t PDFPageViewEvent.Model.campaignData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  return sub_217B1563C(v4, v5);
}

uint64_t PDFPageViewEvent.Model.notificationData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 56));
  v5 = v3[5];
  v14 = v3[4];
  v4 = v14;
  v15 = v5;
  v6 = v3[3];
  v12 = v3[2];
  v13 = v6;
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  a1[2] = v12;
  a1[3] = v6;
  a1[4] = v4;
  a1[5] = v5;
  *a1 = v7;
  a1[1] = v8;
  return sub_217AE38AC(v11, &v10, &qword_2811C4F30);
}

uint64_t PDFPageViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 60);
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

uint64_t PDFPageViewEvent.Model.referralData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 64));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  return sub_217B1563C(v4, v5);
}

uint64_t PDFPageViewEvent.Model.paywallData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for PDFPageViewEvent.Model(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t PDFPageViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 72));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 PDFPageViewEvent.Model.init(eventData:issueData:issueViewData:channelData:userChannelContextData:timedData:feedData:groupData:pdfPageContext:campaignData:notificationData:userBundleSubscriptionContextData:referralData:paywallData:viewData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, __int128 *a11, _OWORD *a12, uint64_t a13, uint64_t a14, __int16 *a15, uint64_t *a16)
{
  v19 = *a2;
  v20 = a2[1];
  v21 = *(a2 + 16);
  v48 = *(a2 + 17);
  v47 = a2[3];
  v50 = *a3;
  v49 = a3[1];
  v56 = *a4;
  v55 = a4[1];
  v54 = *(a4 + 16);
  v53 = *(a4 + 17);
  v52 = a4[3];
  v51 = a4[4];
  v59 = *a5;
  v58 = a5[1];
  v57 = *(a5 + 1);
  v61 = *a7;
  v60 = *(a7 + 2);
  v68 = *a10;
  v67 = *(a10 + 2);
  v75 = a16[1];
  v76 = *a16;
  v73 = *a15;
  v74 = *(a16 + 8);
  v64 = *(a11 + 5);
  v65 = *(a11 + 4);
  v71 = *(a14 + 40);
  v72 = *(a14 + 32);
  v22 = sub_217D8899C();
  v69 = *(a14 + 16);
  v70 = *a14;
  v62 = a11[1];
  v63 = *a11;
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = type metadata accessor for PDFPageViewEvent.Model(0);
  v24 = a9 + v23[5];
  *v24 = v19;
  *(v24 + 8) = v20;
  *(v24 + 16) = v21;
  *(v24 + 17) = v48;
  *(v24 + 24) = v47;
  v25 = (a9 + v23[6]);
  *v25 = v50;
  v25[1] = v49;
  v26 = a9 + v23[7];
  *v26 = v56;
  *(v26 + 8) = v55;
  *(v26 + 16) = v54;
  *(v26 + 17) = v53;
  *(v26 + 24) = v52;
  *(v26 + 32) = v51;
  v27 = a9 + v23[8];
  *v27 = v59;
  *(v27 + 1) = v58;
  *(v27 + 2) = v57;
  v28 = v23[9];
  v29 = sub_217D889CC();
  (*(*(v29 - 8) + 32))(a9 + v28, a6, v29);
  v30 = a9 + v23[10];
  *v30 = v61;
  *(v30 + 16) = v60;
  v31 = (a9 + v23[11]);
  v32 = a8[3];
  v31[2] = a8[2];
  v31[3] = v32;
  v33 = a8[1];
  *v31 = *a8;
  v31[1] = v33;
  v34 = a8[8];
  v31[7] = a8[7];
  v31[8] = v34;
  v35 = a8[6];
  v31[5] = a8[5];
  v31[6] = v35;
  v31[4] = a8[4];
  v36 = a9 + v23[12];
  *v36 = v68;
  *(v36 + 8) = v67;
  v37 = a9 + v23[13];
  *v37 = v63;
  *(v37 + 16) = v62;
  *(v37 + 32) = v65;
  *(v37 + 40) = v64;
  v38 = (a9 + v23[14]);
  v39 = a12[3];
  v38[2] = a12[2];
  v38[3] = v39;
  v40 = a12[5];
  v38[4] = a12[4];
  v38[5] = v40;
  v41 = a12[1];
  *v38 = *a12;
  v38[1] = v41;
  v42 = a9 + v23[15];
  *(v42 + 48) = *(a13 + 48);
  v43 = *(a13 + 32);
  *(v42 + 16) = *(a13 + 16);
  *(v42 + 32) = v43;
  *v42 = *a13;
  v44 = a9 + v23[16];
  result = v70;
  *v44 = v70;
  *(v44 + 16) = v69;
  *(v44 + 32) = v72;
  *(v44 + 40) = v71;
  *(a9 + v23[17]) = v73;
  v46 = a9 + v23[18];
  *v46 = v76;
  *(v46 + 8) = v75;
  *(v46 + 16) = v74;
  return result;
}

uint64_t sub_217C15FC8(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x7461446575737369;
      break;
    case 2:
      result = 0x6569566575737369;
      break;
    case 3:
      v3 = 0x656E6E616863;
      goto LABEL_14;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x74614464656D6974;
      break;
    case 6:
      result = 0x6174614464656566;
      break;
    case 7:
      result = 0x74614470756F7267;
      break;
    case 8:
      result = 0x4365676150666470;
      break;
    case 9:
      result = 0x6E676961706D6163;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000021;
      break;
    case 12:
      result = 0x6C61727265666572;
      break;
    case 13:
      v3 = 0x6C6177796170;
LABEL_14:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
      break;
    case 14:
      result = 0x6174614477656976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217C16184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C18AAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C161AC(uint64_t a1)
{
  v2 = sub_217C16BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C161E8(uint64_t a1)
{
  v2 = sub_217C16BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PDFPageViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C179F0(0, &qword_27CBA2230, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v75 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C16BD0();
  sub_217D89E7C();
  LOBYTE(v123) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v136 = type metadata accessor for PDFPageViewEvent.Model(0);
    v12 = v3 + v136[5];
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *(v12 + 17);
    v16 = *(v12 + 24);
    *&v123 = *v12;
    *(&v123 + 1) = v13;
    LOBYTE(v124) = v14;
    BYTE1(v124) = v15;
    *(&v124 + 1) = v16;
    LOBYTE(v114) = 1;
    sub_217ACFF94();

    sub_217D89CAC();

    v17 = v136;
    v18 = (v3 + v136[6]);
    v19 = v18[1];
    *&v123 = *v18;
    *(&v123 + 1) = v19;
    LOBYTE(v114) = 2;
    sub_217AD01EC();

    sub_217D89CAC();

    v21 = v3 + v17[7];
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    v24 = *(v21 + 17);
    v25 = *(v21 + 24);
    v26 = *(v21 + 32);
    *&v123 = *v21;
    *(&v123 + 1) = v22;
    LOBYTE(v124) = v23;
    BYTE1(v124) = v24;
    *(&v124 + 1) = v25;
    *&v125 = v26;
    LOBYTE(v114) = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v27 = v136;
    v28 = (v3 + v136[8]);
    v29 = *v28;
    v30 = v28[1];
    LOWORD(v28) = *(v28 + 1);
    LOBYTE(v123) = v29;
    BYTE1(v123) = v30;
    WORD1(v123) = v28;
    LOBYTE(v114) = 4;
    sub_217ACFB8C();
    sub_217D89CAC();
    v31 = v27[9];
    LOBYTE(v123) = 5;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v32 = v136;
    v33 = (v3 + v136[10]);
    v34 = v33[1];
    v35 = v33[2];
    v133 = *v33;
    v134 = v34;
    v135 = v35;
    v132 = 6;
    sub_217AD1A68(v133, v34, v35);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v133, v134, v135);
    v36 = (v3 + v32[11]);
    v37 = v36[6];
    v38 = v36[4];
    v128 = v36[5];
    v129 = v37;
    v39 = v36[6];
    v40 = v36[8];
    v130 = v36[7];
    v131 = v40;
    v41 = v36[2];
    v42 = *v36;
    v124 = v36[1];
    v125 = v41;
    v43 = v36[2];
    v44 = v36[4];
    v126 = v36[3];
    v127 = v44;
    v45 = *v36;
    v120 = v39;
    v121 = v130;
    v122 = v36[8];
    v123 = v45;
    v116 = v43;
    v117 = v126;
    v118 = v38;
    v119 = v128;
    v114 = v42;
    v115 = v124;
    v113 = 7;
    sub_217AE38AC(&v123, v112, &qword_2811BD178);
    sub_217A5D3B4();
    sub_217D89C3C();
    v112[6] = v120;
    v112[7] = v121;
    v112[8] = v122;
    v112[2] = v116;
    v112[3] = v117;
    v112[4] = v118;
    v112[5] = v119;
    v112[0] = v114;
    v112[1] = v115;
    sub_217AE4A44(v112, &qword_2811BD178);
    v46 = (v3 + v32[12]);
    v47 = *v46;
    LODWORD(v46) = *(v46 + 2);
    *&v100[0] = v47;
    DWORD2(v100[0]) = v46;
    LOBYTE(v94) = 8;
    sub_217BB0CD4();

    sub_217D89CAC();

    v48 = (v3 + v32[13]);
    v49 = v48[1];
    v50 = v48[2];
    v51 = v48[3];
    v52 = v48[4];
    v53 = v48[5];
    v106 = *v48;
    v107 = v49;
    v108 = v50;
    v109 = v51;
    v110 = v52;
    v111 = v53;
    v105 = 9;
    sub_217B1563C(v106, v49);
    sub_217A66ADC();
    sub_217D89C3C();
    sub_217B15D30(v106, v107);
    v54 = (v3 + v32[14]);
    v55 = v54[3];
    v56 = v54[1];
    v101 = v54[2];
    v102 = v55;
    v57 = v54[3];
    v58 = v54[5];
    v103 = v54[4];
    v104 = v58;
    v59 = v54[1];
    v100[0] = *v54;
    v100[1] = v59;
    v96 = v101;
    v97 = v57;
    v60 = v54[5];
    v98 = v103;
    v99 = v60;
    v94 = v100[0];
    v95 = v56;
    v93 = 10;
    sub_217AE38AC(v100, v92, &qword_2811C4F30);
    sub_217B9C280();
    sub_217D89C3C();
    v92[2] = v96;
    v92[3] = v97;
    v92[4] = v98;
    v92[5] = v99;
    v92[0] = v94;
    v92[1] = v95;
    sub_217AE4A44(v92, &qword_2811C4F30);
    v61 = (v3 + v136[15]);
    v62 = v61[1];
    v90[0] = *v61;
    v90[1] = v62;
    v64 = *v61;
    v63 = v61[1];
    v90[2] = v61[2];
    v91 = *(v61 + 48);
    v86 = v64;
    v65 = v61[2];
    v87 = v63;
    v88 = v65;
    v89 = *(v61 + 48);
    v85 = 11;
    sub_217ACC004(v90, v83);
    sub_217A55B98();
    sub_217D89CAC();
    v83[0] = v86;
    v83[1] = v87;
    v83[2] = v88;
    v84 = v89;
    sub_217ACC69C(v83);
    v66 = (v3 + v136[16]);
    v67 = v66[1];
    v68 = v66[2];
    v69 = v66[3];
    v70 = v66[4];
    v71 = v66[5];
    v77 = *v66;
    v78 = v67;
    v79 = v68;
    v80 = v69;
    v81 = v70;
    v82 = v71;
    v76 = 12;
    sub_217B1563C(v77, v67);
    sub_217ACDCB0();
    sub_217D89C3C();
    sub_217B15D30(v77, v78);
    LOWORD(v77) = *(v3 + v136[17]);
    v76 = 13;
    sub_217B1DEE8();
    sub_217D89C3C();
    v72 = v3 + v136[18];
    v73 = *v72;
    v74 = *(v72 + 8);
    LOWORD(v72) = *(v72 + 16);
    v77 = v73;
    v78 = v74;
    LOWORD(v79) = v72;
    v76 = 14;
    sub_217A5E790();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C16BD0()
{
  result = qword_27CBA2238;
  if (!qword_27CBA2238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2238);
  }

  return result;
}

uint64_t PDFPageViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_217D889CC();
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217D8899C();
  v73 = *(v7 - 8);
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v7);
  v74 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C179F0(0, &qword_27CBA2240, MEMORY[0x277D844C8]);
  v11 = *(v10 - 8);
  v75 = v10;
  v76 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v68 - v13;
  v15 = type metadata accessor for PDFPageViewEvent.Model(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v20 = a1[4];
  v105 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_217C16BD0();
  v77 = v14;
  v21 = v78;
  sub_217D89E5C();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v105);
  }

  v69 = v15;
  v78 = v18;
  LOBYTE(v96) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v22 = v74;
  sub_217D89BCC();
  v23 = v78;
  (*(v73 + 32))(v78, v22, v7);
  LOBYTE(v89) = 1;
  sub_217ACFF40();
  sub_217D89BCC();
  v68 = v7;
  v74 = 0;
  v24 = *(&v96 + 1);
  v25 = v97;
  v26 = BYTE1(v97);
  v27 = *(&v97 + 1);
  v28 = v69;
  v29 = &v23[v69[5]];
  *v29 = v96;
  *(v29 + 1) = v24;
  v29[16] = v25;
  v29[17] = v26;
  *(v29 + 3) = v27;
  LOBYTE(v89) = 2;
  sub_217AD0198();
  sub_217D89BCC();
  v30 = *(&v96 + 1);
  v31 = &v23[v28[6]];
  *v31 = v96;
  *(v31 + 1) = v30;
  LOBYTE(v89) = 3;
  sub_217AD07F8();
  sub_217D89BCC();
  v32 = *(&v96 + 1);
  v33 = v97;
  v34 = BYTE1(v97);
  v35 = *(&v97 + 1);
  v36 = v98;
  v37 = &v23[v28[7]];
  *v37 = v96;
  *(v37 + 1) = v32;
  v37[16] = v33;
  v37[17] = v34;
  *(v37 + 3) = v35;
  *(v37 + 4) = v36;
  LOBYTE(v89) = 4;
  sub_217ACFB38();
  sub_217D89BCC();
  v38 = BYTE1(v96);
  v39 = WORD1(v96);
  v40 = &v23[v28[8]];
  *v40 = v96;
  v40[1] = v38;
  *(v40 + 1) = v39;
  LOBYTE(v96) = 5;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v41 = v72;
  sub_217D89BCC();
  (*(v71 + 32))(&v23[v28[9]], v6, v41);
  LOBYTE(v89) = 6;
  sub_217A5B978();
  sub_217D89B5C();
  v42 = v97;
  v43 = &v23[v28[10]];
  *v43 = v96;
  *(v43 + 2) = v42;
  v95 = 7;
  sub_217A5D308();
  sub_217D89B5C();
  v44 = &v78[v28[11]];
  v45 = v103;
  *(v44 + 6) = v102;
  *(v44 + 7) = v45;
  *(v44 + 8) = v104;
  v46 = v99;
  *(v44 + 2) = v98;
  *(v44 + 3) = v46;
  v47 = v101;
  *(v44 + 4) = v100;
  *(v44 + 5) = v47;
  v48 = v97;
  *v44 = v96;
  *(v44 + 1) = v48;
  LOBYTE(v84) = 8;
  sub_217BB0C7C();
  sub_217D89BCC();
  v49 = DWORD2(v89);
  v50 = &v78[v69[12]];
  *v50 = v89;
  *(v50 + 2) = v49;
  LOBYTE(v84) = 9;
  sub_217A66A84();
  sub_217D89B5C();
  v51 = &v78[v69[13]];
  v52 = v90;
  v53 = v91;
  *v51 = v89;
  *(v51 + 1) = v52;
  *(v51 + 2) = v53;
  v88 = 10;
  sub_217B9C22C();
  sub_217D89B5C();
  v54 = &v78[v69[14]];
  v55 = v92;
  v56 = v93;
  v57 = v90;
  *(v54 + 2) = v91;
  *(v54 + 3) = v55;
  v58 = v94;
  *(v54 + 4) = v56;
  *(v54 + 5) = v58;
  *v54 = v89;
  *(v54 + 1) = v57;
  v83 = 11;
  sub_217A54D08();
  sub_217D89BCC();
  v59 = &v78[v69[15]];
  v60 = v85;
  *v59 = v84;
  *(v59 + 1) = v60;
  *(v59 + 2) = v86;
  v59[48] = v87;
  v79 = 12;
  sub_217ACDC58();
  sub_217D89B5C();
  v61 = &v78[v69[16]];
  v62 = v81;
  *v61 = v80;
  *(v61 + 1) = v62;
  *(v61 + 2) = v82;
  v79 = 13;
  sub_217B1DE94();
  sub_217D89B5C();
  *&v78[v69[17]] = v80;
  v79 = 14;
  sub_217A5E738();
  sub_217D89B5C();
  (*(v76 + 8))(v77, v75);
  v63 = v81;
  v64 = v70;
  v65 = v78;
  v66 = &v78[v69[18]];
  *v66 = v80;
  *(v66 + 8) = v63;
  sub_217C17A54(v65, v64);
  __swift_destroy_boxed_opaque_existential_1(v105);
  return sub_217C17AB8(v65);
}

void sub_217C179F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C16BD0();
    v7 = a3(a1, &type metadata for PDFPageViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C17A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PDFPageViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C17AB8(uint64_t a1)
{
  v2 = type metadata accessor for PDFPageViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C17BEC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217C14EB8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C14EB8(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217C14EB8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217C14EB8(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217A608E0();
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  v17 = *MEMORY[0x277CEACF0];
  sub_217C14EB8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v18 - 8) + 104))(a2 + v16, v17, v18);
  v19 = a1[11];
  sub_217C14EB8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v20 - 8) + 104))(a2 + v19, v17, v20);
  v21 = a1[12];
  sub_217C14EB8(0, &qword_2811C8720, sub_217BB0C7C, sub_217BB0CD4);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217C14EB8(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  (*(*(v24 - 8) + 104))(a2 + v23, v17, v24);
  v25 = a1[14];
  sub_217C14EB8(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
  (*(*(v26 - 8) + 104))(a2 + v25, v17, v26);
  v27 = a1[15];
  sub_217C14EB8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  sub_217C14EB8(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
  (*(*(v30 - 8) + 104))(a2 + v29, v17, v30);
  v31 = a1[17];
  sub_217C14EB8(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  (*(*(v32 - 8) + 104))(a2 + v31, v17, v32);
  v33 = a1[18];
  sub_217C14EB8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v35 = *(*(v34 - 8) + 104);

  return v35(a2 + v33, v17, v34);
}

void sub_217C18300()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217C14EB8(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
    if (v1 <= 0x3F)
    {
      sub_217C14EB8(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
      if (v2 <= 0x3F)
      {
        sub_217C14EB8(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
        if (v3 <= 0x3F)
        {
          sub_217C14EB8(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
          if (v4 <= 0x3F)
          {
            sub_217A608E0();
            if (v5 <= 0x3F)
            {
              sub_217C14EB8(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
              if (v6 <= 0x3F)
              {
                sub_217C14EB8(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
                if (v7 <= 0x3F)
                {
                  sub_217C14EB8(319, &qword_2811C8720, sub_217BB0C7C, sub_217BB0CD4);
                  if (v8 <= 0x3F)
                  {
                    sub_217C14EB8(319, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
                    if (v9 <= 0x3F)
                    {
                      sub_217C14EB8(319, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
                      if (v10 <= 0x3F)
                      {
                        sub_217C14EB8(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                        if (v11 <= 0x3F)
                        {
                          sub_217C14EB8(319, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
                          if (v12 <= 0x3F)
                          {
                            sub_217C14EB8(319, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
                            if (v13 <= 0x3F)
                            {
                              sub_217C14EB8(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
                              if (v14 <= 0x3F)
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
}

void sub_217C187BC()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217D889CC();
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD308);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD178);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C7A98);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811C4F30);
            if (v5 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811C78F0);
              if (v6 <= 0x3F)
              {
                sub_217A5E974(319, &qword_2811C7CF8);
                if (v7 <= 0x3F)
                {
                  sub_217A5E974(319, &qword_2811BD200);
                  if (v8 <= 0x3F)
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

unint64_t sub_217C189A8()
{
  result = qword_27CBA2248;
  if (!qword_27CBA2248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2248);
  }

  return result;
}

unint64_t sub_217C18A00()
{
  result = qword_27CBA2250;
  if (!qword_27CBA2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2250);
  }

  return result;
}

unint64_t sub_217C18A58()
{
  result = qword_27CBA2258;
  if (!qword_27CBA2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2258);
  }

  return result;
}

uint64_t sub_217C18AAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4365676150666470 && a2 == 0xEE00747865746E6FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCEBF0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6C61727265666572 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000)
  {

    return 14;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t GroupingInventoryItem.tagID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GroupingInventoryItem.tagID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GroupingInventoryItem.init(tagID:headlineCount:hardPaywallBundleArticleCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 20) = a4;
  return result;
}

uint64_t sub_217C1908C()
{
  v1 = 0x656E696C64616568;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449676174;
  }
}

uint64_t sub_217C190F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C19814(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C1911C(uint64_t a1)
{
  v2 = sub_217C1933C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C19158(uint64_t a1)
{
  v2 = sub_217C1933C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupingInventoryItem.encode(to:)(void *a1)
{
  sub_217C195A8(0, &qword_2811BC610, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  LODWORD(v7) = *(v1 + 5);
  v16 = *(v1 + 4);
  v14[1] = v7;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C1933C();
  sub_217D89E7C();
  v19 = 0;
  v12 = v15;
  sub_217D89C6C();
  if (!v12)
  {
    v18 = 1;
    sub_217D89CBC();
    v17 = 2;
    sub_217D89CBC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C1933C()
{
  result = qword_2811C1268;
  if (!qword_2811C1268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1268);
  }

  return result;
}

uint64_t GroupingInventoryItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217C195A8(0, &qword_27CBA2260, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C1933C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v15 = v12;
  v21 = 1;
  v19 = sub_217D89BDC();
  v20 = 2;
  v17 = sub_217D89BDC();
  (*(v7 + 8))(v10, v6);
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v19;
  *(a2 + 20) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C195A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C1933C();
    v7 = a3(a1, &type metadata for GroupingInventoryItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C19610()
{
  result = qword_27CBA2268;
  if (!qword_27CBA2268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2268);
  }

  return result;
}

unint64_t sub_217C19668()
{
  result = qword_2811C1250;
  if (!qword_2811C1250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1250);
  }

  return result;
}

unint64_t sub_217C19710()
{
  result = qword_27CBA2270;
  if (!qword_27CBA2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2270);
  }

  return result;
}

unint64_t sub_217C19768()
{
  result = qword_2811C1258;
  if (!qword_2811C1258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1258);
  }

  return result;
}

unint64_t sub_217C197C0()
{
  result = qword_2811C1260;
  if (!qword_2811C1260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1260);
  }

  return result;
}

uint64_t sub_217C19814(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449676174 && a2 == 0xE500000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E696C64616568 && a2 == 0xED0000746E756F43 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000217DD0650 == a2)
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

uint64_t sub_217C19A00()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C0990);
  __swift_project_value_buffer(v0, qword_2811C0990);
  return sub_217D8866C();
}

uint64_t ArticleEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleEngagementEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 20);
  sub_217C1A624(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleEngagementEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 20);
  sub_217C1A624(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleEngagementEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 24);
  sub_217C1A624(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleEngagementEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 24);
  sub_217C1A624(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleEngagementEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 28);
  sub_217C1A624(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleEngagementEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 28);
  sub_217C1A624(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleEngagementEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 32);
  sub_217C1A624(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleEngagementEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 32);
  sub_217C1A624(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleEngagementEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 36);
  sub_217C1A624(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleEngagementEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 36);
  sub_217C1A624(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleEngagementEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 40);
  sub_217C1A624(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleEngagementEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 40);
  sub_217C1A624(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleEngagementEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 44);
  sub_217C1A624(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C1A624(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t ArticleEngagementEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 44);
  sub_217C1A624(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleEngagementEvent(0);
  v5 = v4[5];
  sub_217C1A624(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C1A624(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217C1A624(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217C1A624(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_217C1A624(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  sub_217C1A624(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v17 - 8) + 104))(a1 + v16, v14, v17);
  v18 = v4[11];
  sub_217C1A624(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v14, v19);
}

uint64_t ArticleEngagementEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleEngagementEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ArticleEngagementEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleEngagementEvent.Model(0) + 24);
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

uint64_t ArticleEngagementEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleEngagementEvent.Model(0) + 28);
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

uint64_t ArticleEngagementEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleEngagementEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t ArticleEngagementEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleEngagementEvent.Model(0) + 36));
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

uint64_t ArticleEngagementEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleEngagementEvent.Model(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ArticleEngagementEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleEngagementEvent.Model(0) + 44));
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

__n128 ArticleEngagementEvent.Model.init(eventData:viewData:articleData:channelData:userChannelContextData:issueData:issueViewData:groupData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a2;
  v15 = a2[1];
  v16 = *(a2 + 8);
  v40 = a4[1];
  v41 = *a4;
  v39 = *(a4 + 16);
  v17 = *(a4 + 17);
  v18 = a4[3];
  v38 = a4[4];
  v43 = a5[1];
  v44 = *a5;
  v42 = *(a5 + 1);
  v45 = a7[1];
  v46 = *a7;
  v19 = sub_217D8899C();
  v36 = a6[1];
  v37 = *a6;
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for ArticleEngagementEvent.Model(0);
  v21 = a9 + v20[5];
  *v21 = v14;
  *(v21 + 8) = v15;
  *(v21 + 16) = v16;
  v22 = a9 + v20[6];
  v23 = *(a3 + 48);
  *(v22 + 32) = *(a3 + 32);
  *(v22 + 48) = v23;
  v24 = *(a3 + 16);
  *v22 = *a3;
  *(v22 + 16) = v24;
  *(v22 + 127) = *(a3 + 127);
  v25 = *(a3 + 112);
  *(v22 + 96) = *(a3 + 96);
  *(v22 + 112) = v25;
  v26 = *(a3 + 80);
  *(v22 + 64) = *(a3 + 64);
  *(v22 + 80) = v26;
  v27 = a9 + v20[7];
  *v27 = v41;
  *(v27 + 8) = v40;
  *(v27 + 16) = v39;
  *(v27 + 17) = v17;
  *(v27 + 24) = v18;
  *(v27 + 32) = v38;
  v28 = a9 + v20[8];
  *v28 = v44;
  *(v28 + 1) = v43;
  *(v28 + 2) = v42;
  v29 = (a9 + v20[9]);
  *v29 = v37;
  v29[1] = v36;
  v30 = (a9 + v20[10]);
  *v30 = v46;
  v30[1] = v45;
  v31 = a9 + v20[11];
  v32 = *(a8 + 112);
  *(v31 + 96) = *(a8 + 96);
  *(v31 + 112) = v32;
  *(v31 + 128) = *(a8 + 128);
  v33 = *(a8 + 48);
  *(v31 + 32) = *(a8 + 32);
  *(v31 + 48) = v33;
  v34 = *(a8 + 80);
  *(v31 + 64) = *(a8 + 64);
  *(v31 + 80) = v34;
  result = *(a8 + 16);
  *v31 = *a8;
  *(v31 + 16) = result;
  return result;
}

uint64_t sub_217C1B034()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6569566575737369;
  if (v1 != 6)
  {
    v3 = 0x74614470756F7267;
  }

  v4 = 0xD000000000000016;
  if (v1 != 4)
  {
    v4 = 0x7461446575737369;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x44656C6369747261;
  if (v1 != 2)
  {
    v5 = 0x446C656E6E616863;
  }

  if (*v0)
  {
    v2 = 0x6174614477656976;
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

uint64_t sub_217C1B14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C1CA50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C1B174(uint64_t a1)
{
  v2 = sub_217C1B7A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C1B1B0(uint64_t a1)
{
  v2 = sub_217C1B7A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C1BF6C(0, &qword_27CBA2278, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v50 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C1B7A0();
  sub_217D89E7C();
  LOBYTE(v61) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for ArticleEngagementEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = *v13;
    v15 = v13[1];
    LOWORD(v13) = *(v13 + 8);
    v92 = v14;
    v93 = v15;
    v94 = v13;
    v91 = 1;
    sub_217A5E790();

    sub_217D89CAC();

    v16 = v3 + v12[6];
    v17 = *(v16 + 80);
    v18 = *(v16 + 112);
    v89 = *(v16 + 96);
    *v90 = v18;
    v19 = *(v16 + 16);
    v20 = *(v16 + 48);
    v85 = *(v16 + 32);
    v86 = v20;
    v21 = *(v16 + 48);
    v22 = *(v16 + 80);
    v87 = *(v16 + 64);
    v88 = v22;
    v23 = *(v16 + 16);
    v84[0] = *v16;
    v84[1] = v23;
    v24 = *(v16 + 112);
    v82 = v89;
    v83[0] = v24;
    v78 = v85;
    v79 = v21;
    v80 = v87;
    v81 = v17;
    *&v90[15] = *(v16 + 127);
    *(v83 + 15) = *(v16 + 127);
    v76 = v84[0];
    v77 = v19;
    v75 = 2;
    sub_217AD1630(v84, &v61);
    sub_217ACF52C();
    sub_217D89CAC();
    v73[6] = v82;
    *v74 = v83[0];
    *&v74[15] = *(v83 + 15);
    v73[2] = v78;
    v73[3] = v79;
    v73[4] = v80;
    v73[5] = v81;
    v73[0] = v76;
    v73[1] = v77;
    sub_217AD2864(v73);
    v25 = v3 + v12[7];
    v26 = *(v25 + 8);
    v27 = *(v25 + 16);
    v28 = *(v25 + 17);
    v29 = *(v25 + 24);
    v30 = *(v25 + 32);
    *&v61 = *v25;
    *(&v61 + 1) = v26;
    LOBYTE(v62) = v27;
    BYTE1(v62) = v28;
    *(&v62 + 1) = v29;
    *&v63 = v30;
    LOBYTE(v52) = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v31 = (v3 + v12[8]);
    v32 = *v31;
    v33 = v31[1];
    LOWORD(v31) = *(v31 + 1);
    LOBYTE(v61) = v32;
    BYTE1(v61) = v33;
    WORD1(v61) = v31;
    LOBYTE(v52) = 4;
    sub_217ACFB8C();
    sub_217D89CAC();
    v34 = (v3 + v12[9]);
    v35 = v34[1];
    v36 = v34[2];
    v37 = v34[3];
    *&v61 = *v34;
    *(&v61 + 1) = v35;
    *&v62 = v36;
    *(&v62 + 1) = v37;
    LOBYTE(v52) = 5;
    sub_217AE39D0(v61, v35);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v61, *(&v61 + 1));
    v38 = (v3 + v12[10]);
    v39 = v38[1];
    v71 = *v38;
    v72 = v39;
    v70 = 6;
    sub_217AD01EC();

    sub_217D89C3C();

    v40 = (v3 + v12[11]);
    v41 = v40[5];
    v42 = v40[7];
    v67 = v40[6];
    v68 = v42;
    v43 = v40[7];
    v69 = v40[8];
    v44 = v40[1];
    v45 = v40[3];
    v63 = v40[2];
    v64 = v45;
    v46 = v40[3];
    v47 = v40[5];
    v65 = v40[4];
    v66 = v47;
    v48 = v40[1];
    v61 = *v40;
    v62 = v48;
    v58 = v67;
    v59 = v43;
    v60 = v40[8];
    v54 = v63;
    v55 = v46;
    v56 = v65;
    v57 = v41;
    v52 = v61;
    v53 = v44;
    v51 = 7;
    sub_217AD87FC(&v61, v50);
    sub_217A5D3B4();
    sub_217D89C3C();
    v50[6] = v58;
    v50[7] = v59;
    v50[8] = v60;
    v50[2] = v54;
    v50[3] = v55;
    v50[4] = v56;
    v50[5] = v57;
    v50[0] = v52;
    v50[1] = v53;
    sub_217AD96E8(v50);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C1B7A0()
{
  result = qword_2811C0980;
  if (!qword_2811C0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0980);
  }

  return result;
}

uint64_t ArticleEngagementEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_217D8899C();
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v51 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C1BF6C(0, &qword_2811BC990, MEMORY[0x277D844C8]);
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v46 - v8;
  v10 = type metadata accessor for ArticleEngagementEvent.Model(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C1B7A0();
  v52 = v9;
  v15 = v72;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v48;
  v72 = v13;
  LOBYTE(v53) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v50;
  sub_217D89BCC();
  v18 = *(v16 + 32);
  v19 = v72;
  v18(v72, v51, v3);
  LOBYTE(v64) = 1;
  sub_217A5E738();
  sub_217D89BCC();
  v46[1] = v3;
  v51 = 0;
  v20 = *(&v53 + 1);
  v21 = v54;
  v22 = &v19[v10[5]];
  *v22 = v53;
  *(v22 + 1) = v20;
  *(v22 + 8) = v21;
  v63 = 2;
  sub_217ACF4D8();
  sub_217D89BCC();
  v23 = &v19[v10[6]];
  v24 = v71[0];
  *(v23 + 6) = v70;
  *(v23 + 7) = v24;
  *(v23 + 127) = *(v71 + 15);
  v25 = v67;
  *(v23 + 2) = v66;
  *(v23 + 3) = v25;
  v26 = v69;
  *(v23 + 4) = v68;
  *(v23 + 5) = v26;
  v27 = v65;
  *v23 = v64;
  *(v23 + 1) = v27;
  v62 = 3;
  sub_217AD07F8();
  sub_217D89BCC();
  v28 = *(&v53 + 1);
  v29 = v54;
  v30 = BYTE1(v54);
  v31 = *(&v54 + 1);
  v32 = v55;
  v33 = &v19[v10[7]];
  *v33 = v53;
  *(v33 + 1) = v28;
  v33[16] = v29;
  v33[17] = v30;
  *(v33 + 3) = v31;
  *(v33 + 4) = v32;
  v62 = 4;
  sub_217ACFB38();
  sub_217D89BCC();
  v34 = BYTE1(v53);
  v35 = WORD1(v53);
  v36 = &v19[v10[8]];
  *v36 = v53;
  v36[1] = v34;
  *(v36 + 1) = v35;
  v62 = 5;
  sub_217ACFF40();
  sub_217D89B5C();
  v37 = &v19[v10[9]];
  v38 = v54;
  *v37 = v53;
  *(v37 + 1) = v38;
  v62 = 6;
  sub_217AD0198();
  sub_217D89B5C();
  *&v19[v10[10]] = v53;
  v62 = 7;
  sub_217A5D308();
  sub_217D89B5C();
  (*(v49 + 8))(v52, v17);
  v39 = v72;
  v40 = &v72[v10[11]];
  v41 = v60;
  *(v40 + 6) = v59;
  *(v40 + 7) = v41;
  *(v40 + 8) = v61;
  v42 = v56;
  *(v40 + 2) = v55;
  *(v40 + 3) = v42;
  v43 = v58;
  *(v40 + 4) = v57;
  *(v40 + 5) = v43;
  v44 = v54;
  *v40 = v53;
  *(v40 + 1) = v44;
  sub_217C1BFD0(v39, v47);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C1C034(v39);
}

void sub_217C1BF6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C1B7A0();
    v7 = a3(a1, &type metadata for ArticleEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C1BFD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C1C034(uint64_t a1)
{
  v2 = type metadata accessor for ArticleEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C1C168@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217C1A624(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C1A624(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217C1A624(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217C1A624(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_217C1A624(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  sub_217C1A624(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v18 - 8) + 104))(a2 + v17, v15, v18);
  v19 = a1[11];
  sub_217C1A624(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v15, v20);
}

void sub_217C1C564()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217C1A624(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
    if (v1 <= 0x3F)
    {
      sub_217C1A624(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
      if (v2 <= 0x3F)
      {
        sub_217C1A624(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
        if (v3 <= 0x3F)
        {
          sub_217C1A624(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
          if (v4 <= 0x3F)
          {
            sub_217C1A624(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
            if (v5 <= 0x3F)
            {
              sub_217C1A624(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
              if (v6 <= 0x3F)
              {
                sub_217C1A624(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
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

void sub_217C1C828()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD110);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C71A8);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD178);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_217C1C94C()
{
  result = qword_27CBA2280;
  if (!qword_27CBA2280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2280);
  }

  return result;
}

unint64_t sub_217C1C9A4()
{
  result = qword_2811C0970;
  if (!qword_2811C0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0970);
  }

  return result;
}

unint64_t sub_217C1C9FC()
{
  result = qword_2811C0978;
  if (!qword_2811C0978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0978);
  }

  return result;
}

uint64_t sub_217C1CA50(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061)
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

uint64_t TrackData.init(trackDuration:trackVariant:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 4) = v3;
  return result;
}

uint64_t sub_217C1CD88()
{
  if (*v0)
  {
    result = 0x7261566B63617274;
  }

  else
  {
    result = 0x7275446B63617274;
  }

  *v0;
  return result;
}

uint64_t sub_217C1CDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7275446B63617274 && a2 == 0xED00006E6F697461;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7261566B63617274 && a2 == 0xEC000000746E6169)
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

uint64_t sub_217C1CEC0(uint64_t a1)
{
  v2 = sub_217C1D0D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C1CEFC(uint64_t a1)
{
  v2 = sub_217C1D0D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TrackData.encode(to:)(void *a1)
{
  sub_217C1D344(0, &qword_27CBA2288, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = *(v1 + 4);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C1D0D0();
  sub_217D89E7C();
  v17 = 0;
  sub_217D89CBC();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_217C1D124();
    sub_217D89CAC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217C1D0D0()
{
  result = qword_27CBA2290;
  if (!qword_27CBA2290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2290);
  }

  return result;
}

unint64_t sub_217C1D124()
{
  result = qword_27CBA2298;
  if (!qword_27CBA2298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2298);
  }

  return result;
}

uint64_t TrackData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217C1D344(0, &qword_27CBA22A0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C1D0D0();
  sub_217D89E5C();
  if (!v2)
  {
    v18 = 0;
    v12 = sub_217D89BDC();
    v16 = 1;
    sub_217C1D3A8();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    v14 = v17;
    *a2 = v12;
    *(a2 + 4) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C1D344(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C1D0D0();
    v7 = a3(a1, &type metadata for TrackData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C1D3A8()
{
  result = qword_27CBA22A8;
  if (!qword_27CBA22A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA22A8);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TrackData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TrackData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_217C1D4F4()
{
  result = qword_27CBA22B0;
  if (!qword_27CBA22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA22B0);
  }

  return result;
}

unint64_t sub_217C1D54C()
{
  result = qword_27CBA22B8;
  if (!qword_27CBA22B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA22B8);
  }

  return result;
}

unint64_t sub_217C1D5A4()
{
  result = qword_27CBA22C0;
  if (!qword_27CBA22C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA22C0);
  }

  return result;
}

unint64_t sub_217C1D5F8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
LABEL_8:
      sub_217D899FC();

      v3 = 0xD000000000000020;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (a2 == 2)
  {
LABEL_6:
    sub_217D899FC();

    v3 = 0xD000000000000021;
    goto LABEL_9;
  }

  if (a2 == 3)
  {
    goto LABEL_8;
  }

  sub_217D899FC();

  v3 = 0xD000000000000015;
LABEL_9:
  v6 = v3;
  v4 = MEMORY[0x21CEACD70](a1, MEMORY[0x277D837D0]);
  MEMORY[0x21CEACC70](v4);

  return v6;
}

void *sub_217C1D768()
{
  v1 = v0;
  v2 = sub_217D889FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v0[3] = [objc_opt_self() defaultStore];
  v0[4] = 1937204590;
  v0[5] = 0xE400000000000000;
  v0[6] = 0x706F742D7377656ELL;
  v0[7] = 0xEB00000000736369;
  v7 = sub_217D88A3C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v0[2] = sub_217D88A2C();
  *v6 = sub_217BC5340;
  v6[1] = 0;
  (*(v3 + 104))(v6, *MEMORY[0x277D6C9B0], v2);
  sub_217D88A0C();
  v10 = v0[3];
  if (v10)
  {
    v11 = v0[4];
    v12 = v1[5];
    v13 = v10;

    v14 = sub_217D8951C();

    [v13 setClientIdentifier_];
  }

  return v1;
}

void PortraitEventProcessor.process<A>(processEvent:)(uint64_t a1)
{
  v223 = type metadata accessor for ArticleViewEvent.Model(0);
  v2 = *(*(v223 - 8) + 64);
  MEMORY[0x28223BE20](v223);
  v222 = &v217 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BCC640();
  v229 = v4;
  v224 = *(v4 - 8);
  v5 = *(v224 + 64);
  MEMORY[0x28223BE20](v4);
  v228 = &v217 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = type metadata accessor for HeadlineExposureEvent.Model(0);
  v7 = *(*(v226 - 8) + 64);
  MEMORY[0x28223BE20](v226);
  v225 = &v217 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BBF45C();
  v234 = v9;
  v227 = *(v9 - 8);
  v10 = *(v227 + 64);
  MEMORY[0x28223BE20](v9);
  v233 = &v217 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for UnfollowTagEvent.Model(0);
  v12 = *(*(v231 - 8) + 64);
  MEMORY[0x28223BE20](v231);
  v230 = &v217 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C1FB0C();
  v239 = v14;
  v232 = *(v14 - 8);
  v15 = *(v232 + 64);
  MEMORY[0x28223BE20](v14);
  v238 = &v217 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for FollowTagEvent.Model(0);
  v17 = *(*(v236 - 8) + 64);
  MEMORY[0x28223BE20](v236);
  v235 = &v217 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C1FBA0();
  v244 = v19;
  v237 = *(v19 - 8);
  v20 = *(v237 + 64);
  MEMORY[0x28223BE20](v19);
  v243 = &v217 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for UnblockTagEvent.Model(0);
  v22 = *(*(v241 - 8) + 64);
  MEMORY[0x28223BE20](v241);
  v240 = &v217 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C1FC34();
  v249 = v24;
  v242 = *(v24 - 8);
  v25 = *(v242 + 64);
  MEMORY[0x28223BE20](v24);
  v248 = &v217 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = type metadata accessor for BlockTagEvent.Model(0);
  v27 = *(*(v246 - 8) + 64);
  MEMORY[0x28223BE20](v246);
  v245 = &v217 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C1FCC8();
  v254 = v29;
  v247 = *(v29 - 8);
  v30 = *(v247 + 64);
  MEMORY[0x28223BE20](v29);
  v253 = &v217 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = type metadata accessor for ArticleSaveEvent.Model(0);
  v32 = *(*(v251 - 8) + 64);
  MEMORY[0x28223BE20](v251);
  v250 = &v217 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C1FD5C();
  v259 = v34;
  v252 = *(v34 - 8);
  v35 = *(v252 + 64);
  MEMORY[0x28223BE20](v34);
  v258 = &v217 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = type metadata accessor for ArticleShareEvent.Model(0);
  v37 = *(*(v256 - 8) + 64);
  MEMORY[0x28223BE20](v256);
  v255 = &v217 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C1FDF0();
  v264 = v39;
  v257 = *(v39 - 8);
  v40 = *(v257 + 64);
  MEMORY[0x28223BE20](v39);
  v263 = &v217 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = type metadata accessor for ArticleDislikeEvent.Model(0);
  v42 = *(*(v260 - 8) + 64);
  MEMORY[0x28223BE20](v260);
  v261 = &v217 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C1FE84();
  *&v267 = v44;
  v262 = *(v44 - 8);
  v45 = *(v262 + 64);
  MEMORY[0x28223BE20](v44);
  v266 = &v217 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for ArticleLikeEvent.Model(0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v217 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C1FF18();
  v52 = v51;
  v265 = *(v51 - 8);
  v53 = *(v265 + 64);
  MEMORY[0x28223BE20](v51);
  v55 = &v217 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_217D881AC();
  v269 = *(v56 - 8);
  v57 = *(v269 + 64);
  MEMORY[0x28223BE20](v56);
  v59 = &v217 - v58;
  v60 = a1;
  v61 = sub_217D8816C();
  v62 = sub_217D887BC();
  v270 = 0;
  v70 = v50;
  v219 = v62;
  v220 = v71;

  v72 = v269;
  v73 = *(v269 + 16);
  v221 = v60;
  v73(v59, v60, v56);
  v217 = v55;
  v74 = swift_dynamicCast();
  v218 = v59;
  if (!v74)
  {
    if (swift_dynamicCast())
    {
      v89 = v56;
      sub_217D897CC();
      if (qword_2811C7B40 != -1)
      {
        swift_once();
      }

      sub_217A67100();
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_217D8D8F0;
      v91 = sub_217D8818C();
      v93 = v92;
      *(v90 + 56) = MEMORY[0x277D837D0];
      *(v90 + 64) = sub_217A62448();
      *(v90 + 32) = v91;
      *(v90 + 40) = v93;
      sub_217D88E6C();

      v94 = *(v268 + 16);
      sub_217C2021C(&qword_27CBA22F8, type metadata accessor for ArticleDislikeEvent.Model);
      v95 = v260;
      v96 = v261;
      v97 = v219;
      v98 = v220;
      v99 = v270;
      sub_217D88A1C();
      v100 = v262;
      if (!v99)
      {
        v126 = *(v96 + *(v95 + 20) + 120);
        v127 = v218;
        if (*(v126 + 16))
        {
          sub_217C1FFAC(v126, 1u);
        }

        sub_217AE010C(v219, v220);
        sub_217C20264(v96, type metadata accessor for ArticleDislikeEvent.Model);
        (*(v100 + 8))(v266, v267);
        (*(v72 + 8))(v127, v89);
        return;
      }

      v101 = v99;
      sub_217AE010C(v97, v98);
      (*(v100 + 8))(v266, v267);
      (*(v72 + 8))(v218, v89);
      goto LABEL_29;
    }

    if (swift_dynamicCast())
    {
      sub_217D897CC();
      if (qword_2811C7B40 != -1)
      {
        swift_once();
      }

      sub_217A67100();
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_217D8D8F0;
      *&v267 = v56;
      v103 = sub_217D8818C();
      v105 = v104;
      *(v102 + 56) = MEMORY[0x277D837D0];
      *(v102 + 64) = sub_217A62448();
      *(v102 + 32) = v103;
      *(v102 + 40) = v105;
      sub_217D88E6C();

      v106 = *(v268 + 16);
      sub_217C2021C(&qword_27CBA22F0, type metadata accessor for ArticleShareEvent.Model);
      v107 = v255;
      v108 = v256;
      v109 = v219;
      v110 = v220;
      v111 = v270;
      sub_217D88A1C();
      v112 = v257;
      if (!v111)
      {
        v139 = v267;
        v140 = *(v107 + *(v108 + 20) + 120);
        v141 = v218;
        if (*(v140 + 16))
        {
          sub_217C1FFAC(v140, 0);
        }

        sub_217AE010C(v219, v220);
        sub_217C20264(v107, type metadata accessor for ArticleShareEvent.Model);
        (*(v112 + 8))(v263, v264);
        (*(v72 + 8))(v141, v139);
        return;
      }

      v101 = v111;
      sub_217AE010C(v109, v110);
      (*(v112 + 8))(v263, v264);
      (*(v72 + 8))(v218, v267);
      goto LABEL_29;
    }

    if (swift_dynamicCast())
    {
      sub_217D897CC();
      if (qword_2811C7B40 != -1)
      {
        swift_once();
      }

      sub_217A67100();
      v115 = swift_allocObject();
      *(v115 + 16) = xmmword_217D8D8F0;
      v116 = v56;
      v117 = sub_217D8818C();
      v119 = v118;
      *(v115 + 56) = MEMORY[0x277D837D0];
      *(v115 + 64) = sub_217A62448();
      *(v115 + 32) = v117;
      *(v115 + 40) = v119;
      sub_217D88E6C();

      v120 = *(v268 + 16);
      sub_217C2021C(&qword_27CBA22E8, type metadata accessor for ArticleSaveEvent.Model);
      v121 = v250;
      v122 = v251;
      v123 = v219;
      v124 = v220;
      v125 = v270;
      sub_217D88A1C();
      if (!v125)
      {
        v152 = *(v121 + *(v122 + 20) + 120);
        v153 = v218;
        if (*(v152 + 16))
        {
          sub_217C1FFAC(v152, 0);
        }

        sub_217AE010C(v219, v220);
        sub_217C20264(v121, type metadata accessor for ArticleSaveEvent.Model);
        (*(v252 + 8))(v258, v259);
        (*(v72 + 8))(v153, v116);
        return;
      }

      v101 = v125;
      sub_217AE010C(v123, v124);
      (*(v252 + 8))(v258, v259);
      (*(v72 + 8))(v218, v116);
      goto LABEL_29;
    }

    if (swift_dynamicCast())
    {
      sub_217D897CC();
      if (qword_2811C7B40 != -1)
      {
        swift_once();
      }

      sub_217A67100();
      v128 = swift_allocObject();
      v267 = xmmword_217D8D8F0;
      *(v128 + 16) = xmmword_217D8D8F0;
      v129 = v56;
      v130 = sub_217D8818C();
      v132 = v131;
      *(v128 + 56) = MEMORY[0x277D837D0];
      *(v128 + 64) = sub_217A62448();
      *(v128 + 32) = v130;
      *(v128 + 40) = v132;
      sub_217D88E6C();

      v133 = *(v268 + 16);
      sub_217C2021C(&qword_27CBA22E0, type metadata accessor for BlockTagEvent.Model);
      v134 = v245;
      v135 = v246;
      v136 = v219;
      v137 = v220;
      v138 = v270;
      sub_217D88A1C();
      if (v138)
      {
        v85 = v138;
        sub_217AE010C(v136, v137);
        (*(v247 + 8))(v253, v254);
LABEL_54:
        (*(v269 + 8))(v218, v129);
        goto LABEL_10;
      }

      sub_217C201CC();
      v164 = v134;
      v165 = swift_allocObject();
      *(v165 + 16) = v267;
      v166 = (v164 + *(v135 + 24));
      v167 = v166[1];
      *(v165 + 32) = *v166;
      *(v165 + 40) = v167;

      sub_217C1FFAC(v165, 1u);
      sub_217AE010C(v136, v137);

      sub_217C20264(v164, type metadata accessor for BlockTagEvent.Model);
      (*(v247 + 8))(v253, v254);
    }

    else if (swift_dynamicCast())
    {
      sub_217D897CC();
      if (qword_2811C7B40 != -1)
      {
        swift_once();
      }

      sub_217A67100();
      v142 = swift_allocObject();
      v267 = xmmword_217D8D8F0;
      *(v142 + 16) = xmmword_217D8D8F0;
      v129 = v56;
      v143 = sub_217D8818C();
      v145 = v144;
      *(v142 + 56) = MEMORY[0x277D837D0];
      *(v142 + 64) = sub_217A62448();
      *(v142 + 32) = v143;
      *(v142 + 40) = v145;
      sub_217D88E6C();

      v146 = *(v268 + 16);
      sub_217C2021C(&qword_27CBA22D8, type metadata accessor for UnblockTagEvent.Model);
      v147 = v240;
      v148 = v241;
      v149 = v219;
      v150 = v220;
      v151 = v270;
      sub_217D88A1C();
      if (v151)
      {
        v85 = v151;
        sub_217AE010C(v149, v150);
        (*(v242 + 8))(v248, v249);
        goto LABEL_54;
      }

      sub_217C201CC();
      v180 = v147;
      v181 = swift_allocObject();
      *(v181 + 16) = v267;
      v182 = (v180 + *(v148 + 24));
      v183 = v182[1];
      *(v181 + 32) = *v182;
      *(v181 + 40) = v183;

      sub_217C1FFAC(v181, 0);
      sub_217AE010C(v149, v150);

      sub_217C20264(v180, type metadata accessor for UnblockTagEvent.Model);
      (*(v242 + 8))(v248, v249);
    }

    else
    {
      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {
          v168 = v72;
          sub_217D897CC();
          if (qword_2811C7B40 != -1)
          {
            swift_once();
          }

          sub_217A67100();
          v169 = swift_allocObject();
          v267 = xmmword_217D8D8F0;
          *(v169 + 16) = xmmword_217D8D8F0;
          v170 = v56;
          v171 = sub_217D8818C();
          v173 = v172;
          *(v169 + 56) = MEMORY[0x277D837D0];
          *(v169 + 64) = sub_217A62448();
          *(v169 + 32) = v171;
          *(v169 + 40) = v173;
          sub_217D88E6C();

          v174 = *(v268 + 16);
          sub_217C2021C(&qword_27CBA22C8, type metadata accessor for UnfollowTagEvent.Model);
          v175 = v230;
          v176 = v231;
          v177 = v219;
          v178 = v220;
          v179 = v270;
          sub_217D88A1C();
          if (!v179)
          {
            sub_217C201CC();
            v209 = v175;
            v210 = swift_allocObject();
            *(v210 + 16) = v267;
            v211 = (v209 + *(v176 + 20));
            v212 = v211[1];
            *(v210 + 32) = *v211;
            *(v210 + 40) = v212;

            sub_217C1FFAC(v210, 1u);
            sub_217AE010C(v177, v178);

            sub_217C20264(v209, type metadata accessor for UnfollowTagEvent.Model);
            (*(v232 + 8))(v238, v239);
            (*(v72 + 8))(v218, v170);
            return;
          }

          v85 = v179;
          sub_217AE010C(v177, v178);
          (*(v232 + 8))(v238, v239);
          (*(v168 + 8))(v218, v170);
          goto LABEL_10;
        }

        if (swift_dynamicCast())
        {
          sub_217D897CC();
          if (qword_2811C7B40 != -1)
          {
            swift_once();
          }

          sub_217A67100();
          v184 = swift_allocObject();
          *(v184 + 16) = xmmword_217D8D8F0;
          v185 = v56;
          v186 = sub_217D8818C();
          v188 = v187;
          *(v184 + 56) = MEMORY[0x277D837D0];
          *(v184 + 64) = sub_217A62448();
          *(v184 + 32) = v186;
          *(v184 + 40) = v188;
          sub_217D88E6C();

          v189 = *(v268 + 16);
          sub_217C2021C(&qword_2811C11B8, type metadata accessor for HeadlineExposureEvent.Model);
          v190 = v225;
          v191 = v226;
          v192 = v219;
          v193 = v220;
          v194 = v270;
          sub_217D88A1C();
          if (!v194)
          {
            v213 = *(v190 + *(v191 + 28) + 120);
            v214 = v218;
            if (*(v213 + 16))
            {
              sub_217C1FFAC(v213, 4u);
            }

            sub_217AE010C(v219, v220);
            sub_217C20264(v190, type metadata accessor for HeadlineExposureEvent.Model);
            (*(v227 + 8))(v233, v234);
            (*(v72 + 8))(v214, v185);
            return;
          }

          v101 = v194;
          sub_217AE010C(v192, v193);
          (*(v227 + 8))(v233, v234);
        }

        else
        {
          if (!swift_dynamicCast())
          {
            sub_217AE010C(v219, v220);
            (*(v72 + 8))(v59, v56);
            return;
          }

          sub_217D897CC();
          if (qword_2811C7B40 != -1)
          {
            swift_once();
          }

          sub_217A67100();
          v199 = swift_allocObject();
          *(v199 + 16) = xmmword_217D8D8F0;
          v185 = v56;
          v200 = sub_217D8818C();
          v202 = v201;
          *(v199 + 56) = MEMORY[0x277D837D0];
          *(v199 + 64) = sub_217A62448();
          *(v199 + 32) = v200;
          *(v199 + 40) = v202;
          sub_217D88E6C();

          v203 = *(v268 + 16);
          sub_217C2021C(&qword_2811C59B8, type metadata accessor for ArticleViewEvent.Model);
          v204 = v222;
          v205 = v223;
          v206 = v219;
          v207 = v220;
          v208 = v270;
          sub_217D88A1C();
          if (!v208)
          {
            v215 = *(v204 + *(v205 + 28) + 120);
            v216 = v218;
            if (*(v215 + 16))
            {
              sub_217C1FFAC(v215, 2u);
            }

            sub_217AE010C(v219, v220);
            sub_217C20264(v204, type metadata accessor for ArticleViewEvent.Model);
            (*(v224 + 8))(v228, v229);
            (*(v72 + 8))(v216, v185);
            return;
          }

          v101 = v208;
          sub_217AE010C(v206, v207);
          (*(v224 + 8))(v228, v229);
        }

        (*(v72 + 8))(v218, v185);
LABEL_29:
        v88 = MEMORY[0x277D837D0];
        v85 = v101;
        goto LABEL_2;
      }

      sub_217D897CC();
      if (qword_2811C7B40 != -1)
      {
        swift_once();
      }

      sub_217A67100();
      v154 = swift_allocObject();
      v267 = xmmword_217D8D8F0;
      *(v154 + 16) = xmmword_217D8D8F0;
      v129 = v56;
      v155 = sub_217D8818C();
      v157 = v156;
      *(v154 + 56) = MEMORY[0x277D837D0];
      *(v154 + 64) = sub_217A62448();
      *(v154 + 32) = v155;
      *(v154 + 40) = v157;
      sub_217D88E6C();

      v158 = *(v268 + 16);
      sub_217C2021C(&qword_27CBA22D0, type metadata accessor for FollowTagEvent.Model);
      v159 = v235;
      v160 = v236;
      v161 = v219;
      v162 = v220;
      v163 = v270;
      sub_217D88A1C();
      if (v163)
      {
        v85 = v163;
        sub_217AE010C(v161, v162);
        (*(v237 + 8))(v243, v244);
        goto LABEL_54;
      }

      sub_217C201CC();
      v195 = v159;
      v196 = swift_allocObject();
      *(v196 + 16) = v267;
      v197 = (v195 + *(v160 + 20));
      v198 = v197[1];
      *(v196 + 32) = *v197;
      *(v196 + 40) = v198;

      sub_217C1FFAC(v196, 0);
      sub_217AE010C(v161, v162);

      sub_217C20264(v195, type metadata accessor for FollowTagEvent.Model);
      (*(v237 + 8))(v243, v244);
    }

    (*(v269 + 8))(v218, v129);
    return;
  }

  *&v267 = v52;
  sub_217D897CC();
  if (qword_2811C7B40 != -1)
  {
    swift_once();
  }

  sub_217A67100();
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_217D8D8F0;
  v76 = sub_217D8818C();
  v78 = v77;
  *(v75 + 56) = MEMORY[0x277D837D0];
  *(v75 + 64) = sub_217A62448();
  *(v75 + 32) = v76;
  *(v75 + 40) = v78;
  sub_217D88E6C();

  v79 = *(v268 + 16);
  sub_217C2021C(&qword_27CBA2300, type metadata accessor for ArticleLikeEvent.Model);
  v80 = v70;
  v81 = v47;
  v82 = v219;
  v83 = v220;
  v84 = v270;
  sub_217D88A1C();
  v85 = v84;
  v86 = v265;
  v87 = v217;
  if (v85)
  {
    sub_217AE010C(v82, v83);
    (*(v86 + 8))(v87, v267);
    (*(v269 + 8))(v218, v56);
LABEL_10:
    v88 = MEMORY[0x277D837D0];
LABEL_2:
    sub_217D897DC();
    if (qword_2811C7B40 != -1)
    {
      swift_once();
    }

    sub_217A67100();
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_217D9CB60;
    v64 = sub_217D8818C();
    v66 = v65;
    *(v63 + 56) = v88;
    v67 = sub_217A62448();
    *(v63 + 64) = v67;
    *(v63 + 32) = v64;
    *(v63 + 40) = v66;
    swift_getErrorValue();
    v68 = sub_217D89DBC();
    *(v63 + 96) = v88;
    *(v63 + 104) = v67;
    *(v63 + 72) = v68;
    *(v63 + 80) = v69;
    sub_217D88E6C();

    return;
  }

  v113 = *(v80 + *(v81 + 20) + 120);
  v114 = v269;
  if (*(v113 + 16))
  {
    sub_217C1FFAC(v113, 0);
  }

  sub_217AE010C(v219, v220);
  sub_217C20264(v80, type metadata accessor for ArticleLikeEvent.Model);
  (*(v86 + 8))(v87, v267);
  (*(v114 + 8))(v218, v56);
}

void sub_217C1FB0C()
{
  if (!qword_2811C88E0)
  {
    type metadata accessor for UnfollowTagEvent(255);
    sub_217C2021C(qword_2811C4A30, type metadata accessor for UnfollowTagEvent);
    v0 = sub_217D881AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C88E0);
    }
  }
}

void sub_217C1FBA0()
{
  if (!qword_2811C8888)
  {
    type metadata accessor for FollowTagEvent(255);
    sub_217C2021C(qword_2811C6FD0, type metadata accessor for FollowTagEvent);
    v0 = sub_217D881AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8888);
    }
  }
}

void sub_217C1FC34()
{
  if (!qword_2811C8918)
  {
    type metadata accessor for UnblockTagEvent(255);
    sub_217C2021C(qword_2811C5F18, type metadata accessor for UnblockTagEvent);
    v0 = sub_217D881AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8918);
    }
  }
}

void sub_217C1FCC8()
{
  if (!qword_2811C88A8)
  {
    type metadata accessor for BlockTagEvent(255);
    sub_217C2021C(qword_2811C77A0, type metadata accessor for BlockTagEvent);
    v0 = sub_217D881AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C88A8);
    }
  }
}

void sub_217C1FD5C()
{
  if (!qword_2811C8908)
  {
    type metadata accessor for ArticleSaveEvent(255);
    sub_217C2021C(qword_2811C5B00, type metadata accessor for ArticleSaveEvent);
    v0 = sub_217D881AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8908);
    }
  }
}

void sub_217C1FDF0()
{
  if (!qword_2811C88D8)
  {
    type metadata accessor for ArticleShareEvent(255);
    sub_217C2021C(qword_2811C48A8, type metadata accessor for ArticleShareEvent);
    v0 = sub_217D881AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C88D8);
    }
  }
}

void sub_217C1FE84()
{
  if (!qword_2811C88C8)
  {
    type metadata accessor for ArticleDislikeEvent(255);
    sub_217C2021C(qword_2811C2B70, type metadata accessor for ArticleDislikeEvent);
    v0 = sub_217D881AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C88C8);
    }
  }
}

void sub_217C1FF18()
{
  if (!qword_2811C8910)
  {
    type metadata accessor for ArticleLikeEvent(255);
    sub_217C2021C(qword_2811C5D88, type metadata accessor for ArticleLikeEvent);
    v0 = sub_217D881AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8910);
    }
  }
}

void sub_217C1FFAC(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = sub_217C202C4(a1, a2, v3);
  v7 = v3[3];
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v19[4] = sub_217C20764;
    v19[5] = v8;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_217C20648;
    v19[3] = &block_descriptor_1;
    v9 = _Block_copy(v19);

    v10 = v7;

    [v10 registerFeedback:v6 completion:v9];
    _Block_release(v9);
  }

  else
  {
    sub_217D897DC();
    if (qword_2811C7B40 != -1)
    {
      swift_once();
    }

    sub_217A67100();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_217D9CB60;
    v12 = sub_217C1D5F8(a1, a2);
    v14 = v13;
    v15 = MEMORY[0x277D837D0];
    *(v11 + 56) = MEMORY[0x277D837D0];
    v16 = sub_217A62448();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v18 = v3[4];
    v17 = v3[5];
    *(v11 + 96) = v15;
    *(v11 + 104) = v16;
    *(v11 + 64) = v16;
    *(v11 + 72) = v18;
    *(v11 + 80) = v17;

    sub_217D88E6C();
  }
}

void sub_217C201CC()
{
  if (!qword_2811BC428)
  {
    v0 = sub_217D89D0C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BC428);
    }
  }
}

uint64_t sub_217C2021C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217C20264(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_217C202C4(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = *(a3 + 48);
  v5 = *(a3 + 56);
  v6 = objc_allocWithZone(MEMORY[0x277D3A400]);
  v7 = sub_217D896CC();
  v8 = sub_217D8951C();
  if (a2 <= 1u)
  {
    v10 = v6;
    if (a2)
    {
      v11 = 0;
      v12 = v7;
    }

    else
    {
      v11 = v7;
      v12 = 0;
    }

    v13 = 0;
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    v10 = v6;
    v11 = 0;
    v12 = 0;
    v13 = v7;
LABEL_11:
    v9 = [v10 initWithExplicitlyEngagedStrings:v11 explicitlyRejectedStrings:v12 implicitlyEngagedStrings:v13 implicitlyRejectedStrings:0 mappingId:v8];
    goto LABEL_12;
  }

  if (a2 == 3)
  {
    v9 = [v6 initWithExplicitlyEngagedStrings:0 explicitlyRejectedStrings:0 implicitlyEngagedStrings:0 implicitlyRejectedStrings:v7 mappingId:v8];
  }

  else
  {
    v9 = [v6 initWithExplicitlyEngagedStrings:0 implicitlyEngagedStrings:0 offeredStrings:v7 mappingId:v8];
  }

LABEL_12:
  v14 = v9;

  return v14;
}

uint64_t sub_217C203FC(char a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a1)
  {
    sub_217D897CC();
    if (qword_2811C7B40 != -1)
    {
      swift_once();
    }

    sub_217A67100();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_217D8D8F0;
    v7 = sub_217C1D5F8(a3, a4);
    v9 = v8;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_217A62448();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    sub_217D88E6C();
  }

  else
  {
    sub_217D897DC();
    if (qword_2811C7B40 != -1)
    {
      swift_once();
    }

    sub_217A67100();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_217D9CB60;
    v13 = sub_217C1D5F8(a3, a4);
    v15 = v14;
    v16 = MEMORY[0x277D837D0];
    *(v12 + 56) = MEMORY[0x277D837D0];
    v17 = sub_217A62448();
    *(v12 + 64) = v17;
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    v18 = 0xE000000000000000;
    if (a2)
    {
      swift_getErrorValue();
      v19 = sub_217D89DBC();
      v18 = v20;
    }

    else
    {
      v19 = 0;
    }

    MEMORY[0x21CEACC70](v19, v18);

    *(v12 + 96) = v16;
    *(v12 + 104) = v17;
    *(v12 + 72) = 0;
    *(v12 + 80) = 0xE000000000000000;
    sub_217D88E6C();
  }
}

void sub_217C20648(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t PortraitEventProcessor.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return v0;
}

uint64_t PortraitEventProcessor.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t ErrorDetails.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ErrorDetails.domain.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ErrorDetails.message.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ErrorDetails.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ErrorDetails.init(domain:code:message:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_217C208C8()
{
  v1 = 1701080931;
  if (*v0 != 1)
  {
    v1 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_217C20918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C21004(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C20940(uint64_t a1)
{
  v2 = sub_217C20B68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C2097C(uint64_t a1)
{
  v2 = sub_217C20B68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ErrorDetails.encode(to:)(void *a1)
{
  sub_217C20DF8(0, &qword_27CBA2308, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v15[1] = v1[3];
  v15[2] = v11;
  v15[0] = v1[4];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C20B68();
  sub_217D89E7C();
  v18 = 0;
  v13 = v15[3];
  sub_217D89C6C();
  if (!v13)
  {
    v17 = 1;
    sub_217D89CCC();
    v16 = 2;
    sub_217D89C0C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C20B68()
{
  result = qword_27CBA2310;
  if (!qword_27CBA2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2310);
  }

  return result;
}

uint64_t ErrorDetails.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217C20DF8(0, &qword_27CBA2318, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C20B68();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v15 = v12;
  v25 = 1;
  v23 = sub_217D89BEC();
  v24 = 2;
  v16 = sub_217D89B2C();
  v19 = v18;
  v20 = *(v7 + 8);
  v22 = v16;
  v20(v10, v6);
  *a2 = v15;
  a2[1] = v14;
  v21 = v22;
  a2[2] = v23;
  a2[3] = v21;
  a2[4] = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C20DF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C20B68();
    v7 = a3(a1, &type metadata for ErrorDetails.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C20E94(uint64_t a1, int a2)
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

unint64_t sub_217C20F00()
{
  result = qword_27CBA2320;
  if (!qword_27CBA2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2320);
  }

  return result;
}

unint64_t sub_217C20F58()
{
  result = qword_27CBA2328;
  if (!qword_27CBA2328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2328);
  }

  return result;
}

unint64_t sub_217C20FB0()
{
  result = qword_27CBA2330;
  if (!qword_27CBA2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2330);
  }

  return result;
}

uint64_t sub_217C21004(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
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

NewsAnalytics::VideoAdEngagementType_optional __swiftcall VideoAdEngagementType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VideoAdEngagementType.rawValue.getter()
{
  v1 = *v0;
  v2 = 2036427888;
  v3 = 0x6D6F436863746177;
  v4 = 1885956979;
  if (v1 != 4)
  {
    v4 = 0x726F4D6E7261656CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6573756170;
  if (v1 != 1)
  {
    v5 = 0x656D75736572;
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

unint64_t sub_217C2124C()
{
  result = qword_27CBA2338;
  if (!qword_27CBA2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2338);
  }

  return result;
}

uint64_t sub_217C212A8()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

void sub_217C213A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 2036427888;
  v5 = 0xED00006574656C70;
  v6 = 0x6D6F436863746177;
  v7 = 0xE400000000000000;
  v8 = 1885956979;
  if (v2 != 4)
  {
    v8 = 0x726F4D6E7261656CLL;
    v7 = 0xE900000000000065;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6573756170;
  if (v2 != 1)
  {
    v10 = 0x656D75736572;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_217C2151C()
{
  result = qword_27CBA2340;
  if (!qword_27CBA2340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2340);
  }

  return result;
}

uint64_t sub_217C21638()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2378);
  __swift_project_value_buffer(v0, qword_27CBA2378);
  return sub_217D8866C();
}

uint64_t ArticleUndislikeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleUndislikeEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 20);
  sub_217C225BC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUndislikeEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 20);
  sub_217C225BC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUndislikeEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 24);
  sub_217C225BC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUndislikeEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 24);
  sub_217C225BC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUndislikeEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 28);
  sub_217C225BC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUndislikeEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 28);
  sub_217C225BC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUndislikeEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 32);
  sub_217C225BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUndislikeEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 32);
  sub_217C225BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUndislikeEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 36);
  sub_217C225BC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUndislikeEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 36);
  sub_217C225BC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUndislikeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 40);
  sub_217C225BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUndislikeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 40);
  sub_217C225BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUndislikeEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 44);
  sub_217C225BC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUndislikeEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 44);
  sub_217C225BC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUndislikeEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 48);
  sub_217C225BC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUndislikeEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 48);
  sub_217C225BC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUndislikeEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 52);
  sub_217C225BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C225BC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t ArticleUndislikeEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 52);
  sub_217C225BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUndislikeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleUndislikeEvent(0);
  v5 = v4[5];
  sub_217C225BC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C225BC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217C225BC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217C225BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217C225BC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v15 - 8) + 104))(a1 + v14, v12, v15);
  v16 = v4[10];
  sub_217C225BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217C225BC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v19 - 8) + 104))(a1 + v18, v12, v19);
  v20 = v4[12];
  sub_217C225BC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217C225BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v12, v23);
}

uint64_t ArticleUndislikeEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleUndislikeEvent.Model(0) + 20);
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

uint64_t ArticleUndislikeEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleUndislikeEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ArticleUndislikeEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleUndislikeEvent.Model(0) + 28);
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

uint64_t ArticleUndislikeEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUndislikeEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ArticleUndislikeEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUndislikeEvent.Model(0) + 36));
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

uint64_t ArticleUndislikeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUndislikeEvent.Model(0) + 40));
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

uint64_t ArticleUndislikeEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUndislikeEvent.Model(0) + 44));
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

uint64_t ArticleUndislikeEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleUndislikeEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t ArticleUndislikeEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUndislikeEvent.Model(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 ArticleUndislikeEvent.Model.init(eventData:articleData:actionData:channelData:feedData:groupData:userBundleSubscriptionContextData:issueData:userChannelContextData:viewData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t *a11)
{
  v17 = *a3;
  v18 = a4[1];
  v19 = *(a4 + 16);
  v20 = *(a4 + 17);
  v42 = a4[3];
  v43 = *a4;
  v41 = a4[4];
  v45 = *a5;
  v44 = *(a5 + 2);
  v49 = a10[1];
  v50 = *a10;
  v48 = *(a10 + 1);
  v53 = *a11;
  v52 = a11[1];
  v51 = *(a11 + 8);
  v21 = sub_217D8899C();
  v46 = a8[1];
  v47 = *a8;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for ArticleUndislikeEvent.Model(0);
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
  *(a9 + v22[6]) = v17;
  v28 = a9 + v22[7];
  *v28 = v43;
  *(v28 + 8) = v18;
  *(v28 + 16) = v19;
  *(v28 + 17) = v20;
  *(v28 + 24) = v42;
  *(v28 + 32) = v41;
  v29 = a9 + v22[8];
  *v29 = v45;
  *(v29 + 16) = v44;
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
  result = v47;
  *v37 = v47;
  v37[1] = v46;
  v39 = a9 + v22[12];
  *v39 = v50;
  *(v39 + 1) = v49;
  *(v39 + 2) = v48;
  v40 = a9 + v22[13];
  *v40 = v53;
  *(v40 + 8) = v52;
  *(v40 + 16) = v51;
  return result;
}

unint64_t sub_217C231C0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7461446575737369;
    v6 = 0x6174614477656976;
    if (a1 == 8)
    {
      v6 = 0xD000000000000016;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000021;
    if (a1 == 5)
    {
      v7 = 0x74614470756F7267;
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
    v1 = 0x746144746E657665;
    v2 = 0x61446E6F69746361;
    v3 = 0x446C656E6E616863;
    if (a1 != 3)
    {
      v3 = 0x6174614464656566;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x44656C6369747261;
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

uint64_t sub_217C23318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C24FC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C23340(uint64_t a1)
{
  v2 = sub_217C23AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C2337C(uint64_t a1)
{
  v2 = sub_217C23AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleUndislikeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C24458(0, &qword_27CBA2390, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v58 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C23AF8();
  sub_217D89E7C();
  v117 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v118 = v7;
    v13 = type metadata accessor for ArticleUndislikeEvent.Model(0);
    v59 = v3;
    v60 = v13;
    v14 = v3 + *(v13 + 20);
    v15 = *(v14 + 96);
    v16 = *(v14 + 64);
    v114 = *(v14 + 80);
    v115 = v15;
    v17 = *(v14 + 96);
    *v116 = *(v14 + 112);
    v18 = *(v14 + 16);
    v19 = *(v14 + 48);
    v111 = *(v14 + 32);
    v112 = v19;
    v20 = *(v14 + 48);
    v113 = *(v14 + 64);
    v21 = *(v14 + 16);
    v110[0] = *v14;
    v110[1] = v21;
    v107 = v114;
    v108 = v17;
    v109[0] = *(v14 + 112);
    v104 = v111;
    v105 = v20;
    v106 = v16;
    *&v116[15] = *(v14 + 127);
    *(v109 + 15) = *(v14 + 127);
    v102 = v110[0];
    v103 = v18;
    v101 = 1;
    sub_217AD1630(v110, &v86);
    sub_217ACF52C();
    sub_217D89CAC();
    v99[5] = v107;
    v99[6] = v108;
    *v100 = v109[0];
    *&v100[15] = *(v109 + 15);
    v99[2] = v104;
    v99[3] = v105;
    v99[4] = v106;
    v99[0] = v102;
    v99[1] = v103;
    sub_217AD2864(v99);
    v22 = v59;
    v23 = v60;
    LOBYTE(v86) = *(v59 + v60[6]);
    LOBYTE(v77) = 2;
    sub_217AED190();
    sub_217D89CAC();
    v24 = v22 + v23[7];
    v25 = *(v24 + 8);
    v26 = *(v24 + 16);
    v27 = *(v24 + 17);
    v28 = *(v24 + 24);
    v29 = *(v24 + 32);
    *&v86 = *v24;
    *(&v86 + 1) = v25;
    LOBYTE(v87) = v26;
    BYTE1(v87) = v27;
    *(&v87 + 1) = v28;
    *&v88 = v29;
    LOBYTE(v77) = 3;
    sub_217AD084C();

    sub_217D89CAC();
    v7 = v118;

    v30 = v60;
    v31 = (v22 + v60[8]);
    v32 = v31[1];
    v33 = v31[2];
    v96 = *v31;
    v97 = v32;
    v98 = v33;
    v95 = 4;
    sub_217AD1A68(v96, v32, v33);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v96, v97, v98);
    v34 = v59;
    v35 = (v59 + v30[9]);
    v36 = v35[6];
    v37 = v35[4];
    v91 = v35[5];
    v92 = v36;
    v38 = v35[6];
    v39 = v35[8];
    v93 = v35[7];
    v94 = v39;
    v40 = v35[2];
    v41 = *v35;
    v87 = v35[1];
    v88 = v40;
    v42 = v35[2];
    v43 = v35[4];
    v89 = v35[3];
    v90 = v43;
    v44 = *v35;
    v83 = v38;
    v84 = v93;
    v85 = v35[8];
    v86 = v44;
    v79 = v42;
    v80 = v89;
    v81 = v37;
    v82 = v91;
    v77 = v41;
    v78 = v87;
    v76 = 5;
    sub_217AD87FC(&v86, v75);
    sub_217A5D3B4();
    sub_217D89C3C();
    v75[6] = v83;
    v75[7] = v84;
    v75[8] = v85;
    v75[2] = v79;
    v75[3] = v80;
    v75[4] = v81;
    v75[5] = v82;
    v75[0] = v77;
    v75[1] = v78;
    sub_217AD96E8(v75);
    v45 = v34 + v30[10];
    v46 = *(v45 + 16);
    v47 = *(v45 + 32);
    v73[0] = *v45;
    v73[1] = v46;
    v73[2] = v47;
    v74 = *(v45 + 48);
    v69 = v73[0];
    v70 = v46;
    v71 = *(v45 + 32);
    v72 = *(v45 + 48);
    v68 = 6;
    sub_217ACC004(v73, v66);
    sub_217A55B98();
    sub_217D89CAC();
    v66[0] = v69;
    v66[1] = v70;
    v66[2] = v71;
    v67 = v72;
    sub_217ACC69C(v66);
    v48 = (v34 + v30[11]);
    v49 = v48[1];
    v50 = v48[2];
    v51 = v48[3];
    v62 = *v48;
    v63 = v49;
    v64 = v50;
    v65 = v51;
    v61 = 7;
    sub_217AE39D0(v62, v49);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v62, v63);
    v52 = (v34 + v30[12]);
    v53 = *v52;
    v54 = v52[1];
    LOWORD(v52) = *(v52 + 1);
    LOBYTE(v62) = v53;
    BYTE1(v62) = v54;
    WORD1(v62) = v52;
    v61 = 8;
    sub_217ACFB8C();
    sub_217D89CAC();
    v55 = v34 + v30[13];
    v56 = *v55;
    v57 = *(v55 + 8);
    LOWORD(v55) = *(v55 + 16);
    v62 = v56;
    v63 = v57;
    LOWORD(v64) = v55;
    v61 = 9;
    sub_217A5E790();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C23AF8()
{
  result = qword_27CBA2398;
  if (!qword_27CBA2398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2398);
  }

  return result;
}

uint64_t ArticleUndislikeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v4 = sub_217D8899C();
  v55 = *(v4 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C24458(0, &qword_27CBA23A0, MEMORY[0x277D844C8]);
  v58 = v7;
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v51 - v9;
  v11 = type metadata accessor for ArticleUndislikeEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_217C23AF8();
  v59 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  v17 = v56;
  v52 = v11;
  v53 = v14;
  LOBYTE(v78) = 0;
  sub_217A602A0(&qword_2811C8408);
  v18 = v57;
  sub_217D89BCC();
  v19 = v53;
  (*(v55 + 32))(v53, v18, v4);
  v69 = 1;
  sub_217ACF4D8();
  sub_217D89BCC();
  v51 = v4;
  v57 = 0;
  v20 = v52;
  v21 = &v19[v52[5]];
  v22 = *v77;
  *(v21 + 6) = v76;
  *(v21 + 7) = v22;
  *(v21 + 127) = *&v77[15];
  v23 = v73;
  *(v21 + 2) = v72;
  *(v21 + 3) = v23;
  v24 = v75;
  *(v21 + 4) = v74;
  *(v21 + 5) = v24;
  v25 = v71;
  *v21 = v70;
  *(v21 + 1) = v25;
  LOBYTE(v64) = 2;
  sub_217AED13C();
  sub_217D89BCC();
  v19[v20[6]] = v78;
  LOBYTE(v64) = 3;
  sub_217AD07F8();
  sub_217D89BCC();
  v26 = *(&v78 + 1);
  v27 = v79;
  v28 = BYTE1(v79);
  v29 = *(&v79 + 1);
  v30 = v80;
  v31 = &v19[v20[7]];
  *v31 = v78;
  *(v31 + 1) = v26;
  v31[16] = v27;
  v31[17] = v28;
  *(v31 + 3) = v29;
  *(v31 + 4) = v30;
  LOBYTE(v64) = 4;
  sub_217A5B978();
  sub_217D89B5C();
  v32 = v79;
  v33 = &v19[v20[8]];
  *v33 = v78;
  *(v33 + 2) = v32;
  v68 = 5;
  sub_217A5D308();
  sub_217D89B5C();
  v34 = &v19[v20[9]];
  v35 = v83;
  v36 = v85;
  *(v34 + 6) = v84;
  *(v34 + 7) = v36;
  *(v34 + 8) = v86;
  v37 = v81;
  *(v34 + 2) = v80;
  *(v34 + 3) = v37;
  *(v34 + 4) = v82;
  *(v34 + 5) = v35;
  v38 = v79;
  *v34 = v78;
  *(v34 + 1) = v38;
  v63 = 6;
  sub_217A54D08();
  sub_217D89BCC();
  v39 = &v19[v20[10]];
  v40 = v65;
  *v39 = v64;
  *(v39 + 1) = v40;
  *(v39 + 2) = v66;
  v39[48] = v67;
  v60 = 7;
  sub_217ACFF40();
  sub_217D89B5C();
  v41 = v52;
  v42 = &v53[v52[11]];
  v43 = v62;
  *v42 = v61;
  *(v42 + 1) = v43;
  v60 = 8;
  sub_217ACFB38();
  sub_217D89BCC();
  v44 = BYTE1(v61);
  v45 = WORD1(v61);
  v46 = &v53[v41[12]];
  *v46 = v61;
  v46[1] = v44;
  *(v46 + 1) = v45;
  v60 = 9;
  sub_217A5E738();
  sub_217D89B5C();
  (*(v17 + 8))(v59, v58);
  v47 = v62;
  v48 = v53;
  v49 = &v53[v52[13]];
  *v49 = v61;
  *(v49 + 8) = v47;
  sub_217C244BC(v48, v54);
  __swift_destroy_boxed_opaque_existential_1(v87);
  return sub_217C24520(v48);
}

void sub_217C24458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C23AF8();
    v7 = a3(a1, &type metadata for ArticleUndislikeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C244BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleUndislikeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C24520(uint64_t a1)
{
  v2 = type metadata accessor for ArticleUndislikeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C24654@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217C225BC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C225BC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217C225BC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217C225BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217C225BC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v16 - 8) + 104))(a2 + v15, v13, v16);
  v17 = a1[10];
  sub_217C225BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217C225BC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v20 - 8) + 104))(a2 + v19, v13, v20);
  v21 = a1[12];
  sub_217C225BC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217C225BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v13, v24);
}

void sub_217C24B48()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217C225BC(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
    if (v1 <= 0x3F)
    {
      sub_217C225BC(319, &qword_2811C8848, sub_217AED13C, sub_217AED190);
      if (v2 <= 0x3F)
      {
        sub_217C225BC(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
        if (v3 <= 0x3F)
        {
          sub_217C225BC(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
          if (v4 <= 0x3F)
          {
            sub_217C225BC(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
            if (v5 <= 0x3F)
            {
              sub_217C225BC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
              if (v6 <= 0x3F)
              {
                sub_217C225BC(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
                if (v7 <= 0x3F)
                {
                  sub_217C225BC(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
                  if (v8 <= 0x3F)
                  {
                    sub_217C225BC(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
                    if (v9 <= 0x3F)
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

unint64_t sub_217C24EC0()
{
  result = qword_27CBA23A8;
  if (!qword_27CBA23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA23A8);
  }

  return result;
}

unint64_t sub_217C24F18()
{
  result = qword_27CBA23B0;
  if (!qword_27CBA23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA23B0);
  }

  return result;
}

unint64_t sub_217C24F70()
{
  result = qword_27CBA23B8;
  if (!qword_27CBA23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA23B8);
  }

  return result;
}

uint64_t sub_217C24FC4(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t ConfigurableOffersData.offerIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConfigurableOffersData.offerIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217C253CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656449726566666FLL && a2 == 0xEF7265696669746ELL)
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

uint64_t sub_217C2545C(uint64_t a1)
{
  v2 = sub_217C25620();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C25498(uint64_t a1)
{
  v2 = sub_217C25620();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfigurableOffersData.encode(to:)(void *a1)
{
  sub_217C257F8(0, &qword_2811BC5F0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C25620();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C25620()
{
  result = qword_2811C0510[0];
  if (!qword_2811C0510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C0510);
  }

  return result;
}

uint64_t ConfigurableOffersData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217C257F8(0, &qword_27CBA23C0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C25620();
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

void sub_217C257F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C25620();
    v7 = a3(a1, &type metadata for ConfigurableOffersData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C25860()
{
  result = qword_2811C04E8;
  if (!qword_2811C04E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C04E8);
  }

  return result;
}

unint64_t sub_217C258B8()
{
  result = qword_2811C04F0;
  if (!qword_2811C04F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C04F0);
  }

  return result;
}

uint64_t sub_217C25924(void *a1)
{
  sub_217C257F8(0, &qword_2811BC5F0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C25620();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C25A94()
{
  result = qword_27CBA23C8;
  if (!qword_27CBA23C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA23C8);
  }

  return result;
}

unint64_t sub_217C25AEC()
{
  result = qword_2811C0500;
  if (!qword_2811C0500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0500);
  }

  return result;
}

unint64_t sub_217C25B44()
{
  result = qword_2811C0508;
  if (!qword_2811C0508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0508);
  }

  return result;
}

uint64_t sub_217C25BE4(uint64_t a1)
{
  v2 = sub_217C25DB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C25C20(uint64_t a1)
{
  v2 = sub_217C25DB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdEngagementData.encode(to:)(void *a1)
{
  sub_217C25FF8(0, &qword_27CBA23D0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C25DB8();
  sub_217D89E7C();
  v13 = v9;
  sub_217C25E0C();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C25DB8()
{
  result = qword_27CBA23D8;
  if (!qword_27CBA23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA23D8);
  }

  return result;
}

unint64_t sub_217C25E0C()
{
  result = qword_27CBA23E0;
  if (!qword_27CBA23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA23E0);
  }

  return result;
}

uint64_t AdEngagementData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C25FF8(0, &qword_27CBA23E8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C25DB8();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C2605C();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C25FF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C25DB8();
    v7 = a3(a1, &type metadata for AdEngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C2605C()
{
  result = qword_27CBA23F0;
  if (!qword_27CBA23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA23F0);
  }

  return result;
}

unint64_t sub_217C260B4()
{
  result = qword_27CBA23F8;
  if (!qword_27CBA23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA23F8);
  }

  return result;
}

unint64_t sub_217C2610C()
{
  result = qword_27CBA2400;
  if (!qword_27CBA2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2400);
  }

  return result;
}

unint64_t sub_217C261B4()
{
  result = qword_27CBA2408;
  if (!qword_27CBA2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2408);
  }

  return result;
}

unint64_t sub_217C2620C()
{
  result = qword_27CBA2410;
  if (!qword_27CBA2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2410);
  }

  return result;
}

unint64_t sub_217C26264()
{
  result = qword_27CBA2418;
  if (!qword_27CBA2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2418);
  }

  return result;
}

uint64_t SmarterFetchData.fetchSources.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SmarterFetchData.fetchStrategy.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SmarterFetchData.fetchStrategy.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

NewsAnalytics::SmarterFetchData __swiftcall SmarterFetchData.init(fetchSources:fetchStrategy:)(Swift::OpaquePointer fetchSources, Swift::String_optional fetchStrategy)
{
  *v2 = fetchSources;
  *(v2 + 8) = fetchStrategy;
  result.fetchStrategy = fetchStrategy;
  result.fetchSources = fetchSources;
  return result;
}

uint64_t sub_217C263A8()
{
  if (*v0)
  {
    result = 0x7274536863746566;
  }

  else
  {
    result = 0x756F536863746566;
  }

  *v0;
  return result;
}

uint64_t sub_217C263F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F536863746566 && a2 == 0xEC00000073656372;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7274536863746566 && a2 == 0xED00007967657461)
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

uint64_t sub_217C264E0(uint64_t a1)
{
  v2 = sub_217C26738();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C2651C(uint64_t a1)
{
  v2 = sub_217C26738();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SmarterFetchData.encode(to:)(void *a1)
{
  sub_217C269D8(0, &qword_2811BC700, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v14 - v8;
  v11 = *v1;
  v10 = v1[1];
  v14[1] = v1[2];
  v14[2] = v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C26738();

  sub_217D89E7C();
  v17 = v11;
  v16 = 0;
  sub_217A55F8C();
  sub_217A55FDC(&qword_2811BCD48);
  sub_217D89CAC();

  if (!v2)
  {
    v15 = 1;
    sub_217D89C0C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217C26738()
{
  result = qword_2811C4D38;
  if (!qword_2811C4D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4D38);
  }

  return result;
}

uint64_t SmarterFetchData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217C269D8(0, &qword_27CBA2420, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v17[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C26738();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_217A55F8C();
  v17[15] = 0;
  sub_217A55FDC(&qword_2811BCD38);
  sub_217D89BCC();
  v12 = v18;
  v17[14] = 1;
  v13 = sub_217D89B2C();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  *a2 = v12;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C269D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C26738();
    v7 = a3(a1, &type metadata for SmarterFetchData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C26A40()
{
  result = qword_27CBA2428;
  if (!qword_27CBA2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2428);
  }

  return result;
}

unint64_t sub_217C26A98()
{
  result = qword_2811C4D20;
  if (!qword_2811C4D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4D20);
  }

  return result;
}

uint64_t sub_217C26B1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_217C26B64(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_217C26BC8()
{
  result = qword_27CBA2430;
  if (!qword_27CBA2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2430);
  }

  return result;
}

unint64_t sub_217C26C20()
{
  result = qword_2811C4D28;
  if (!qword_2811C4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4D28);
  }

  return result;
}

unint64_t sub_217C26C78()
{
  result = qword_2811C4D30;
  if (!qword_2811C4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4D30);
  }

  return result;
}

uint64_t sub_217C26D94()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2468);
  __swift_project_value_buffer(v0, qword_27CBA2468);
  return sub_217D8866C();
}

uint64_t ConsentScreenViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ConsentScreenViewEvent.consentScreenActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConsentScreenViewEvent(0) + 20);
  sub_217C26F60();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C26F60()
{
  if (!qword_27CBA2480)
  {
    sub_217C26FC8();
    sub_217C2701C();
    v0 = sub_217D8829C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA2480);
    }
  }
}

unint64_t sub_217C26FC8()
{
  result = qword_27CBA2488;
  if (!qword_27CBA2488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2488);
  }

  return result;
}

unint64_t sub_217C2701C()
{
  result = qword_27CBA2490;
  if (!qword_27CBA2490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2490);
  }

  return result;
}

uint64_t ConsentScreenViewEvent.consentScreenActionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ConsentScreenViewEvent(0) + 20);
  sub_217C26F60();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ConsentScreenViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for ConsentScreenViewEvent(0) + 20);
  v5 = *MEMORY[0x277CEACF0];
  sub_217C26F60();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1 + v4, v5, v6);
}

uint64_t ConsentScreenViewEvent.Model.consentScreenActionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ConsentScreenViewEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ConsentScreenViewEvent.Model.init(eventData:consentScreenActionData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_217D8899C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ConsentScreenViewEvent.Model(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

unint64_t sub_217C272EC()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0x746144746E657665;
  }

  *v0;
  return result;
}

uint64_t sub_217C27330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DD0930 == a2)
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

uint64_t sub_217C2741C(uint64_t a1)
{
  v2 = sub_217C27660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C27458(uint64_t a1)
{
  v2 = sub_217C27660();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConsentScreenViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C27A0C(0, &qword_27CBA2498, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C27660();
  sub_217D89E7C();
  v13[15] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v13[14] = *(v3 + *(type metadata accessor for ConsentScreenViewEvent.Model(0) + 20));
    v13[13] = 1;
    sub_217C2701C();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C27660()
{
  result = qword_27CBA24A0;
  if (!qword_27CBA24A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA24A0);
  }

  return result;
}

uint64_t ConsentScreenViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = sub_217D8899C();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C27A0C(0, &qword_27CBA24A8, MEMORY[0x277D844C8]);
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = type metadata accessor for ConsentScreenViewEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C27660();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v12;
  v24 = v15;
  v17 = v26;
  v32 = 0;
  sub_217A602A0(&qword_2811C8408);
  v18 = v29;
  v19 = v27;
  sub_217D89BCC();
  v20 = v24;
  (*(v17 + 32))(v24, v6, v18);
  v30 = 1;
  sub_217C26FC8();
  sub_217D89B5C();
  (*(v28 + 8))(v11, v19);
  *(v20 + *(v23 + 20)) = v31;
  sub_217C27A70(v20, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C27AD4(v20);
}

void sub_217C27A0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C27660();
    v7 = a3(a1, &type metadata for ConsentScreenViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C27A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConsentScreenViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C27AD4(uint64_t a1)
{
  v2 = type metadata accessor for ConsentScreenViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C27C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = *MEMORY[0x277CEACF0];
  sub_217C26F60();
  v9 = *(*(v8 - 8) + 104);

  return v9(a2 + v6, v7, v8);
}

uint64_t sub_217C27D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_217C27E0C()
{
  if (!qword_27CBA24D0)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA24D0);
    }
  }
}

unint64_t sub_217C27E70()
{
  result = qword_27CBA24D8;
  if (!qword_27CBA24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA24D8);
  }

  return result;
}

unint64_t sub_217C27EC8()
{
  result = qword_27CBA24E0;
  if (!qword_27CBA24E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA24E0);
  }

  return result;
}

unint64_t sub_217C27F20()
{
  result = qword_27CBA24E8;
  if (!qword_27CBA24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA24E8);
  }

  return result;
}

NewsAnalytics::SportScoreConcernContentType_optional __swiftcall SportScoreConcernContentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SportScoreConcernContentType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6172756363616E69;
  v3 = 0x656D6954656D6167;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x6E696874656D6F73;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x53646579616C6564;
  if (v1 != 1)
  {
    v5 = 0x6F666E496D616574;
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

unint64_t sub_217C280D4()
{
  result = qword_27CBA24F0;
  if (!qword_27CBA24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA24F0);
  }

  return result;
}

uint64_t sub_217C28130()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

void sub_217C28258(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF65726F63536574;
  v4 = 0x6172756363616E69;
  v5 = 0xE800000000000000;
  v6 = 0x656D6954656D6167;
  v7 = 0x8000000217DCB3B0;
  v8 = 0xD000000000000011;
  if (v2 != 4)
  {
    v8 = 0x6E696874656D6F73;
    v7 = 0xED000065736C4567;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000065726F63;
  v10 = 0x53646579616C6564;
  if (v2 != 1)
  {
    v10 = 0x6F666E496D616574;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_217C283FC()
{
  result = qword_27CBA24F8;
  if (!qword_27CBA24F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA24F8);
  }

  return result;
}

NewsAnalytics::TodayFeedPoolMyArticlesSource_optional __swiftcall TodayFeedPoolMyArticlesSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TodayFeedPoolMyArticlesSource.rawValue.getter()
{
  v1 = 0x74694B64756F6C63;
  if (*v0 != 1)
  {
    v1 = 0x4672657472616D73;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217C28510(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x74694B64756F6C63;
  if (v2 != 1)
  {
    v4 = 0x4672657472616D73;
    v3 = 0xEC00000068637465;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x74694B64756F6C63;
  if (*a2 != 1)
  {
    v8 = 0x4672657472616D73;
    v7 = 0xEC00000068637465;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
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
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217C28628()
{
  result = qword_27CBA2500;
  if (!qword_27CBA2500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2500);
  }

  return result;
}

uint64_t sub_217C2867C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C28728()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217C287C0()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C28874(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x74694B64756F6C63;
  if (v2 != 1)
  {
    v5 = 0x4672657472616D73;
    v4 = 0xEC00000068637465;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217C2899C()
{
  result = qword_2811BE1D8;
  if (!qword_2811BE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE1D8);
  }

  return result;
}

uint64_t UserEmbeddingData.embeddingCoefficients.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_217C28A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000217DD0950 == a2)
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

uint64_t sub_217C28B04(uint64_t a1)
{
  v2 = sub_217C28D18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C28B40(uint64_t a1)
{
  v2 = sub_217C28D18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserEmbeddingData.encode(to:)(void *a1)
{
  sub_217C28F80(0, &qword_2811BC6D0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C28D18();

  sub_217D89E7C();
  v12[1] = v9;
  sub_217C28D6C();
  sub_217C28FE4(&qword_2811BCD20);
  sub_217D89CAC();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C28D18()
{
  result = qword_2811C42D8;
  if (!qword_2811C42D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C42D8);
  }

  return result;
}

void sub_217C28D6C()
{
  if (!qword_2811BCD28)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCD28);
    }
  }
}

uint64_t UserEmbeddingData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217C28F80(0, &qword_2811BCA58, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C28D18();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C28D6C();
    sub_217C28FE4(&qword_2811BCD18);
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C28F80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C28D18();
    v7 = a3(a1, &type metadata for UserEmbeddingData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C28FE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_217C28D6C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217C290A0()
{
  result = qword_27CBA2508;
  if (!qword_27CBA2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2508);
  }

  return result;
}

unint64_t sub_217C290F8()
{
  result = qword_2811C42C8;
  if (!qword_2811C42C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C42C8);
  }

  return result;
}

unint64_t sub_217C29150()
{
  result = qword_2811C42D0;
  if (!qword_2811C42D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C42D0);
  }

  return result;
}

void __swiftcall Error.errorData()(NewsAnalytics::ErrorData *__return_ptr retstr)
{
  v3 = v1;
  v5 = *(v1 - 8);
  v6 = *(v5 + 64);
  (MEMORY[0x28223BE20])();
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x277D84F90];
  v22 = &v24;
  sub_217C29550(sub_217C29548, v21, v3);
  (*(v5 + 16))(v8, v2, v3);
  v9 = sub_217D89D1C();
  if (v9)
  {
    v10 = v9;
    (*(v5 + 8))(v8, v3);
  }

  else
  {
    v10 = swift_allocError();
    (*(v5 + 32))(v11, v8, v3);
  }

  v12 = sub_217D87B1C();

  v13 = [v12 domain];
  v14 = sub_217D8954C();
  v16 = v15;

  v23 = [v12 code];
  v17 = sub_217D89CFC();
  v19 = v18;

  v20 = v24;
  retstr->errorDomain.value._countAndFlagsBits = v14;
  retstr->errorDomain.value._object = v16;
  retstr->errorCode._countAndFlagsBits = v17;
  retstr->errorCode._object = v19;
  retstr->errorDetails.value._rawValue = v20;
}

uint64_t sub_217C29398(void *a1, uint64_t *a2)
{
  sub_217C297B8();
  sub_217C29804();
  v4 = a1;
  v5 = sub_217D89D1C();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = swift_allocError();
    *v7 = v4;
  }

  v8 = sub_217D87B1C();

  v9 = [v8 domain];
  v10 = sub_217D8954C();
  v12 = v11;

  v13 = [v8 code];
  v14 = [v8 localizedDescription];
  v15 = sub_217D8954C();
  v17 = v16;

  v18 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v18;
  if ((result & 1) == 0)
  {
    result = sub_217B5B404(0, *(v18 + 16) + 1, 1, v18);
    v18 = result;
    *a2 = result;
  }

  v21 = *(v18 + 16);
  v20 = *(v18 + 24);
  if (v21 >= v20 >> 1)
  {
    result = sub_217B5B404((v20 > 1), v21 + 1, 1, v18);
    v18 = result;
    *a2 = result;
  }

  *(v18 + 16) = v21 + 1;
  v22 = (v18 + 40 * v21);
  v22[4] = v10;
  v22[5] = v12;
  v22[6] = v13;
  v22[7] = v15;
  v22[8] = v17;
  return result;
}

uint64_t sub_217C29550(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v10);
  v11 = sub_217D89D1C();
  if (v11)
  {
    v12 = v11;
    (*(v6 + 8))(v9, a3);
  }

  else
  {
    v12 = swift_allocError();
    (*(v6 + 32))(v13, v9, a3);
  }

  v14 = sub_217D87B1C();

  a1(v14);
  v15 = [v14 underlyingErrors];
  sub_217C29754();
  v16 = sub_217D896EC();

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = (v16 + 32);
    do
    {
      v19 = *v18++;
      swift_getErrorValue();
      v20 = v24[1];
      v21 = v24[2];
      v22 = v19;
      sub_217C29550(a1, a2, v20, v21);

      --v17;
    }

    while (v17);
  }
}

unint64_t sub_217C29754()
{
  result = qword_2811BC3F0;
  if (!qword_2811BC3F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2811BC3F0);
  }

  return result;
}

unint64_t sub_217C297B8()
{
  result = qword_27CBA2510;
  if (!qword_27CBA2510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CBA2510);
  }

  return result;
}

unint64_t sub_217C29804()
{
  result = qword_27CBA2518;
  if (!qword_27CBA2518)
  {
    sub_217C297B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2518);
  }

  return result;
}

uint64_t sub_217C29924()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C2958);
  __swift_project_value_buffer(v0, qword_2811C2958);
  return sub_217D8866C();
}

uint64_t OfflineModeEndEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t OfflineModeEndEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OfflineModeEndEvent(0) + 20);
  sub_217B8A2C8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OfflineModeEndEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OfflineModeEndEvent(0) + 20);
  sub_217B8A2C8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OfflineModeEndEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OfflineModeEndEvent(0) + 24);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OfflineModeEndEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for OfflineModeEndEvent(0);
  v5 = *(v4 + 20);
  sub_217B8A2C8();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_217A608E0();
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t OfflineModeEndEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for OfflineModeEndEvent.Model(0) + 20));
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

uint64_t sub_217C29E78@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t OfflineModeEndEvent.Model.init(eventData:userBundleSubscriptionContextData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_217D8899C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for OfflineModeEndEvent.Model(0);
  v10 = a4 + *(v9 + 20);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  *(v10 + 32) = *(a2 + 32);
  *(v10 + 48) = *(a2 + 48);
  v12 = *(v9 + 24);
  v13 = sub_217D889CC();
  v14 = *(*(v13 - 8) + 32);

  return v14(a4 + v12, a3, v13);
}

uint64_t sub_217C29FE8()
{
  v1 = 0xD000000000000021;
  if (*v0 != 1)
  {
    v1 = 0x74614464656D6974;
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

uint64_t sub_217C2A048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C2AE9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C2A070(uint64_t a1)
{
  v2 = sub_217C2A3D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C2A0AC(uint64_t a1)
{
  v2 = sub_217C2A3D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OfflineModeEndEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C2A910(0, &qword_27CBA2520, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C2A3D4();
  sub_217D89E7C();
  v31 = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for OfflineModeEndEvent.Model(0);
    v13 = (v3 + *(v12 + 20));
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
    v17 = *(v12 + 24);
    v19[15] = 2;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C2A3D4()
{
  result = qword_27CBA2528;
  if (!qword_27CBA2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2528);
  }

  return result;
}

uint64_t OfflineModeEndEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = sub_217D889CC();
  v27 = *(v29 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_217D8899C();
  v31 = *(v34 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v34);
  v32 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C2A910(0, &qword_27CBA2530, MEMORY[0x277D844C8]);
  v33 = v9;
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = type metadata accessor for OfflineModeEndEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C2A3D4();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v16;
  v19 = v30;
  v18 = v31;
  LOBYTE(v35) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  sub_217D89BCC();
  (*(v18 + 32))(v26, v32, v34);
  v40 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v32 = v13;
  v20 = &v26[*(v13 + 20)];
  v21 = v36;
  *v20 = v35;
  *(v20 + 1) = v21;
  *(v20 + 2) = v37;
  v20[48] = v38;
  v39 = 2;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v25 = v6;
  v22 = v29;
  sub_217D89BCC();
  (*(v19 + 8))(v12, v33);
  v23 = v26;
  (*(v27 + 32))(&v26[*(v32 + 6)], v25, v22);
  sub_217C2A974(v23, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C2A9D8(v23);
}

void sub_217C2A910(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C2A3D4();
    v7 = a3(a1, &type metadata for OfflineModeEndEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C2A974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineModeEndEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C2A9D8(uint64_t a1)
{
  v2 = type metadata accessor for OfflineModeEndEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C2AB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217B8A2C8();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_217A608E0();
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_217C2AC34()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217B8A2C8();
    if (v1 <= 0x3F)
    {
      sub_217A608E0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_217C2ACF8()
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

unint64_t sub_217C2AD98()
{
  result = qword_27CBA2548;
  if (!qword_27CBA2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2548);
  }

  return result;
}

unint64_t sub_217C2ADF0()
{
  result = qword_27CBA2550;
  if (!qword_27CBA2550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2550);
  }

  return result;
}

unint64_t sub_217C2AE48()
{
  result = qword_27CBA2558;
  if (!qword_27CBA2558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2558);
  }

  return result;
}

uint64_t sub_217C2AE9C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
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

NewsAnalytics::SessionObserverKind_optional __swiftcall SessionObserverKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SessionObserverKind.rawValue.getter()
{
  v1 = 0x6F69647561;
  if (*v0 != 1)
  {
    v1 = 0x7274656D656C6574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7368801;
  }
}

uint64_t sub_217C2B0C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6F69647561;
  if (v2 != 1)
  {
    v4 = 0x7274656D656C6574;
    v3 = 0xE900000000000079;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7368801;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6F69647561;
  if (*a2 != 1)
  {
    v8 = 0x7274656D656C6574;
    v7 = 0xE900000000000079;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7368801;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217C2B1BC()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C2B258()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217C2B2E0()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C2B384(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6F69647561;
  if (v2 != 1)
  {
    v5 = 0x7274656D656C6574;
    v4 = 0xE900000000000079;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7368801;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_217C2B3EC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      return result;
    }

    if (a2 == 1)
    {
      type metadata accessor for AppSessionStartEvent(0);
      sub_217A4C15C(qword_2811C2300, type metadata accessor for AppSessionStartEvent);
      v9 = 0u;
      v10 = 0u;
      sub_217D8822C();
      sub_217AE4A44(&v9, &qword_2811BC3D0);
      type metadata accessor for AppSessionEndEvent(0);
      sub_217A4C15C(qword_2811C3ED8, type metadata accessor for AppSessionEndEvent);
      sub_217D8821C();
      v4 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, a3[3]);
      v5 = *(v4 + 8);
      result = sub_217D8910C();
      if (result)
      {
        type metadata accessor for OfflineModeStartEvent(0);
        sub_217A4C15C(&qword_2811C0E68, type metadata accessor for OfflineModeStartEvent);
        v9 = 0u;
        v10 = 0u;
        sub_217D8822C();
        sub_217AE4A44(&v9, &qword_2811BC3D0);
        type metadata accessor for OfflineModeEndEvent(0);
        sub_217A4C15C(&qword_2811C2948, type metadata accessor for OfflineModeEndEvent);
        return sub_217D8821C();
      }

      return result;
    }

LABEL_12:
    result = sub_217D89A9C();
    __break(1u);
    return result;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      return result;
    }

    goto LABEL_12;
  }

  v7 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v8 = *(v7 + 8);
  if (sub_217D8910C())
  {
    type metadata accessor for OfflineModeEndEvent(0);
    sub_217A4C15C(&qword_2811C2948, type metadata accessor for OfflineModeEndEvent);
    v9 = 0u;
    v10 = 0u;
    sub_217D8822C();
    sub_217AE4A44(&v9, &qword_2811BC3D0);
  }

  type metadata accessor for AppSessionEndEvent(0);
  sub_217A4C15C(qword_2811C3ED8, type metadata accessor for AppSessionEndEvent);
  v9 = 0u;
  v10 = 0u;
  sub_217D8822C();
  return sub_217AE4A44(&v9, &qword_2811BC3D0);
}

id SessionObserver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() currentDevice];
  [v2 endGeneratingDeviceOrientationNotifications];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_217D8951C();
    [v4 removeObserver:v0 forKeyPath:v5 context:0];
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void (*SessionObserver.window.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_window;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_217C2BAB0;
}

void sub_217C2BAB0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    v7 = *(v3 + 32);
    v6 = *(v3 + 40);
    swift_endAccess();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = *(v3 + 32);
      v10 = Strong;
      sub_217A56BD0(Strong);
      v11 = sub_217D8951C();
      [v10 addObserver:v9 forKeyPath:v11 options:1 context:0];

      sub_217A4CAE8();
    }
  }

  free(v3);
}

uint64_t SessionObserver.sceneSessionIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sceneSessionIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t SessionObserver.sceneSessionIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sceneSessionIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id SessionObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_217C2BDCC()
{
  swift_getObjectType();

  return sub_217D87DCC();
}

uint64_t sub_217C2BE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2870](a1, a2, a3, ObjectType, a7);
}

uint64_t sub_217C2BE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2858](a1, a2, a3, a4, ObjectType, a8);
}

Swift::Void __swiftcall SessionObserver.sessionWillEnd(withEndReason:)(NSNumber withEndReason)
{
  v3 = v1;
  v5 = sub_217D87C9C();
  v137 = *(v5 - 8);
  v138 = v5;
  v6 = *(v137 + 64);
  MEMORY[0x28223BE20](v5);
  v136 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [(objc_class *)withEndReason.super.super.isa integerValue];
  if (v8 >= 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0x504020300uLL >> (8 * v8);
  }

  sub_217A4E5C4(0, &qword_2811BCB80, 0x277D86200);
  v10 = sub_217D898DC();
  sub_217A5070C(0, &qword_2811BC410, &qword_2811BC3E0, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  v12 = v11;
  *(v11 + 16) = xmmword_217D9CB60;
  if (v3[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_kind])
  {
    if (v3[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_kind] == 1)
    {
      v13 = 0xE500000000000000;
      v14 = 0x6F69647561;
    }

    else
    {
      v13 = 0xE900000000000079;
      v14 = 0x7274656D656C6574;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    v14 = 7368801;
  }

  v15 = MEMORY[0x277D837D0];
  *(v11 + 56) = MEMORY[0x277D837D0];
  v16 = sub_217A62448();
  v12[8] = v16;
  v12[4] = v14;
  v12[5] = v13;
  if (v9 > 2u)
  {
    if (v9 == 3)
    {
      v17 = 0x8000000217DCCA10;
      v18 = 0xD000000000000015;
    }

    else if (v9 == 4)
    {
      v18 = 0x6975516563726F66;
      v17 = 0xE900000000000074;
    }

    else
    {
      v17 = 0xEF74657365524449;
      v18 = 0x72617073646C6566;
    }
  }

  else if (v9)
  {
    if (v9 == 1)
    {
      v17 = 0xED0000646E756F72;
      v18 = 0x676B636142707061;
    }

    else
    {
      v17 = 0xEF646E756F72676BLL;
      v18 = 0x636142656E656373;
    }
  }

  else
  {
    v17 = 0xE700000000000000;
    v18 = 0x6E776F6E6B6E75;
  }

  v12[12] = v15;
  v12[13] = v16;
  v12[9] = v18;
  v12[10] = v17;
  sub_217D897FC();
  sub_217D88E5C();

  v19 = *&v3[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager];
  sub_217D883AC();
  LOBYTE(v154) = v9;
  sub_217A4BFDC(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v21 = v20;
  v22 = sub_217D882DC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 80);
  v25 = (v24 + 32) & ~v24;
  v129 = v25 + *(v23 + 72);
  v130 = v24;
  v133 = v21;
  v26 = swift_allocObject();
  v126 = xmmword_217D8D8F0;
  *(v26 + 16) = xmmword_217D8D8F0;
  v27 = *MEMORY[0x277CEAD10];
  v28 = *(v23 + 104);
  v131 = v25;
  v132 = v23 + 104;
  v128 = v27;
  v127 = v28;
  v28(v26 + v25);
  sub_217BE3E20();
  v134 = "ics session start";
  sub_217D8890C();

  v135 = v3;
  v29 = *&v3[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext];
  v30 = [v29 userEventHistory];
  v31 = [v30 storage];

  v140 = [objc_msgSend(v29 appConfigurationManager)];
  swift_unknownObjectRelease();
  v32 = [v31 sessions];
  if (v32)
  {
    v33 = v32;
    sub_217D88FFC();
    v34 = sub_217D896EC();
  }

  else
  {
    v34 = 0;
  }

  v35 = [v31 metadata];
  v36 = sub_217D883AC();
  v37 = [v35 sessionsOnDiskSize];
  v38 = v37 % 1000;
  v125 = v36;
  if (v37 % 1000 > 499)
  {
LABEL_27:
    v40 = 1000 - v38;
    v39 = __OFADD__(v37, v40);
    v38 = v37 + v40;
    if (v39)
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    goto LABEL_28;
  }

  v39 = __OFSUB__(v37, v38);
  v38 = v37 - v38;
  if (v39)
  {
    __break(1u);
    goto LABEL_27;
  }

LABEL_28:
  v124 = v38;
  v41 = [v31 prunedSessionIDs];
  v42 = sub_217D896EC();

  v36 = v42[2];

  if (v36 % 0x3E8 > 0x1F3)
  {
    v44 = 1000 - v36 % 0x3E8;
    v39 = __OFADD__(v36, v44);
    v43 = v36 + v44;
    if (v39)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }
  }

  else
  {
    v43 = 1000 * (v36 / 0x3E8);
  }

  v123 = v43;
  v45 = [v31 prunedSessionSize];
  if ((v45 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_61;
  }

  v122 = v22;
  if (v45 % 0x3E8 > 0x1F3)
  {
    v46 = 1000 - v45 % 0x3E8;
    v121 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }
  }

  else
  {
    v121 = 1000 * (v45 / 0x3E8);
  }

  v2 = -1.0;
  v22 = v34 >> 62;
  if (!v34)
  {
    v120 = -1;
    goto LABEL_45;
  }

  v42 = (v34 & 0xFFFFFFFFFFFFFF8);
  if (v22)
  {
    goto LABEL_64;
  }

  v47 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v120 = v47;
  if (v47)
  {
LABEL_38:
    v36 = v47 - 1;
    if (!__OFSUB__(v47, 1))
    {
      if ((v34 & 0xC000000000000001) == 0)
      {
        if ((v36 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v36 < v42[2])
        {
          v42 = *(v34 + 8 * v36 + 32);
LABEL_43:
          v25 = v136;
          sub_217D88FEC();
          v36 = v25;
          sub_217D87C4C();
          v49 = v48;

          (*(v137 + 8))(v25, v138);
          v2 = -v49;
          goto LABEL_45;
        }

        __break(1u);
        goto LABEL_111;
      }

LABEL_108:

      v42 = MEMORY[0x21CEAD080](v36, v34);

      goto LABEL_43;
    }

LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  while (1)
  {
LABEL_45:
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v2 > -9.22337204e18)
    {
      break;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    if (v34 >= 0)
    {
      v36 = v42;
    }

    else
    {
      v36 = v34;
    }

    v120 = sub_217D89AAC();
    v47 = sub_217D89AAC();
    if (v47)
    {
      goto LABEL_38;
    }
  }

  if (v2 >= 9.22337204e18)
  {
    goto LABEL_63;
  }

  v50 = v2;
  v51 = v2 % 1000;
  if (v51 > 499)
  {
    goto LABEL_52;
  }

  v25 = v50 - v51;
  if (__OFSUB__(v50, v51))
  {
    __break(1u);
LABEL_52:
    v52 = 1000 - v51;
    v25 = v50 + v52;
    if (!__OFADD__(v50, v52))
    {
      goto LABEL_53;
    }

    goto LABEL_105;
  }

LABEL_53:
  v53 = -1.0;
  if (!v34)
  {
    goto LABEL_71;
  }

  v36 = v34 & 0xFFFFFFFFFFFFFF8;
  if (v22)
  {
    if (!sub_217D89AAC())
    {
      goto LABEL_70;
    }

LABEL_56:
    if ((v34 & 0xC000000000000001) == 0)
    {
      if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v54 = *(v34 + 32);
LABEL_59:
      v55 = v54;

      v22 = v136;
      sub_217D88FEC();
      v36 = v22;
      sub_217D87C4C();
      v57 = v56;

      (*(v137 + 8))(v22, v138);
      v53 = -v57;
      goto LABEL_71;
    }

LABEL_111:
    v54 = MEMORY[0x21CEAD080](0, v34);
    goto LABEL_59;
  }

  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_56;
  }

LABEL_70:

LABEL_71:
  if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_100;
  }

  if (v53 <= -9.22337204e18)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (v53 >= 9.22337204e18)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v58 = v53;
  v59 = v53 % 1000;
  v139 = v19;
  v118 = v31;
  v119 = v25;
  if (v59 <= 499)
  {
    v36 = v58 - v59;
    if (!__OFSUB__(v58, v59))
    {
      goto LABEL_79;
    }

    __break(1u);
  }

  v60 = 1000 - v59;
  v36 = v58 + v60;
  if (__OFADD__(v58, v60))
  {
    goto LABEL_106;
  }

LABEL_79:
  v111 = [v35 aggregateStoreGenerationTime];
  v110 = [v35 aggregateTotalCount];
  [v35 meanCountOfEvents];
  v62 = v61;
  [v35 standardDeviationOfEvents];
  v64 = v63;
  v109 = [v35 totalEventsCount];
  v108 = [v35 headlineEventCount];
  v107 = [v35 headlinesWithValidTitleEmbeddingsEventCount];
  v106 = [v35 headlinesWithInvalidTitleEmbeddingsEventCount];
  v105 = [v35 headlinesWithValidBodyEmbeddingsEventCount];
  v104 = [v35 headlinesWithInvalidBodyEmbeddingsEventCount];
  if (([v140 respondsToSelector_] & 1) != 0 && objc_msgSend(v140, sel_personalizationAnalyticsEnabled) && (v65 = v36, (v66 = objc_msgSend(v35, sel_eventCounts)) != 0))
  {
    v67 = v66;
    sub_217C2CFD0(&v154);

    v117 = 0;
    v114 = v155;
    v115 = v154;
    v112 = *&v156[16];
    v113 = *v156;
    v116 = *&v156[32];
    v68 = *&v156[40];
    v69 = *&v156[48];
    v36 = v65;
  }

  else
  {
    v116 = 0;
    v68 = 0;
    v69 = 0;
    v117 = 1;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
  }

  if (([v140 respondsToSelector_] & 1) != 0 && objc_msgSend(v140, sel_personalizationAnalyticsEnabled) && (v70 = v36, (v71 = objc_msgSend(v35, sel_aggregateStoreData)) != 0))
  {
    v72 = v71;
    sub_217C2D3F0(&v154);

    v73 = 0;
    v74 = v154;
    v75 = v155;
    v76 = *v156;
    v77 = *&v156[16];
    v78 = *&v156[32];
    v79 = *&v156[48];
    v80 = v157;
    v36 = v70;
  }

  else
  {
    v79 = 0;
    v80 = 0;
    v73 = 1;
    v74 = 0uLL;
    v75 = 0uLL;
    v76 = 0uLL;
    v77 = 0uLL;
    v78 = 0uLL;
  }

  *&v154 = v124;
  BYTE8(v154) = 0;
  v155.i64[0] = v123;
  v155.i64[1] = v121;
  *v156 = v120;
  *&v156[8] = v119;
  *&v156[16] = v36;
  *&v156[24] = v111;
  *&v156[32] = v110;
  *&v156[40] = v62;
  *&v156[48] = v64;
  *&v157 = v109;
  *(&v157 + 1) = v108;
  v158 = v107;
  v159 = v106;
  v160 = v105;
  v161 = v104;
  v163 = v114;
  v162 = v115;
  v165 = v112;
  v164 = v113;
  v166 = v116;
  v167 = v68;
  v168 = v69;
  v169 = v117;
  v170 = v74;
  v171 = v75;
  v172 = v76;
  v173 = v77;
  v174 = v78;
  v175 = v79;
  v176 = v80;
  v177 = v73;
  v81 = swift_allocObject();
  *(v81 + 16) = v126;
  v127(v81 + v131, v128, v122);
  sub_217C2EC90();
  sub_217D8890C();

  sub_217D883AC();
  v82 = v135;
  v83 = *&v135[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_tabiDataProvider + 24];
  v84 = *&v135[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_tabiDataProvider + 32];
  __swift_project_boxed_opaque_existential_1(&v135[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_tabiDataProvider], v83);
  (*(v84 + 8))(&v154, v83, v84);
  v85 = *(&v154 + 1);
  if (*(&v154 + 1))
  {
    v86 = v156[0];
    v87 = v155;
    v88 = v154;
    v89 = v159;
    v90 = v158;
    v91 = v157;
    v92 = *&v156[40];
    v93 = *&v156[24];
    v94 = *&v156[8];
    v153[0] = *&v156[1];
    *(v153 + 3) = *&v156[4];
  }

  else
  {
    v95 = MEMORY[0x277D84F90];
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    sub_217AE4A44(&v145, &qword_2811C2DE0);
    v94 = 0uLL;
    v86 = 0;
    v87 = vdupq_n_s64(v95);
    v85 = 0xE700000000000000;
    v88 = 0x6E776F6E6B6E75;
    v90 = 0x6E776F6E6B6E75;
    v89 = 0xE700000000000000;
    v93 = 0uLL;
    v92 = 0uLL;
    v91 = 0uLL;
  }

  *&v141 = v88;
  *(&v141 + 1) = v85;
  v142 = v87;
  LOBYTE(v143[0]) = v86;
  *(v143 + 1) = v153[0];
  DWORD1(v143[0]) = *(v153 + 3);
  *(v143 + 8) = v94;
  *(&v143[1] + 8) = v93;
  *(&v143[2] + 8) = v92;
  *(&v143[3] + 8) = v91;
  *(&v143[4] + 1) = v90;
  v144 = v89;
  sub_217C2ECE4();
  sub_217D8890C();

  v149 = v143[2];
  v150 = v143[3];
  v151 = v143[4];
  v152 = v144;
  v145 = v141;
  v146 = v142;
  v147 = v143[0];
  v148 = v143[1];
  sub_217B9F380(&v145);
  v96 = *&v82[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_liveActivityCountDataProvider + 24];
  v97 = *&v82[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_liveActivityCountDataProvider + 32];
  __swift_project_boxed_opaque_existential_1(&v82[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_liveActivityCountDataProvider], v96);
  (*(v97 + 8))(&v141, v96, v97);
  if (BYTE4(v141) != 1)
  {
    v98 = v141;
    sub_217D883AC();
    LODWORD(v141) = v98;
    sub_217C2ED94();
    sub_217D8890C();
  }

  v99 = *&v82[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_userEmbeddingDataProvider + 24];
  v100 = *&v82[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_userEmbeddingDataProvider + 32];
  __swift_project_boxed_opaque_existential_1(&v82[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_userEmbeddingDataProvider], v99);
  (*(v100 + 8))(&v141, v99, v100);
  v101 = v141;
  if (v141)
  {
    sub_217D883AC();
    *&v141 = v101;
    sub_217C2ED40();
    sub_217D8890C();
  }

  *(swift_allocObject() + 16) = v82;
  v102 = v82;
  v103 = v136;
  sub_217D87C8C();
  sub_217D8834C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v137 + 8))(v103, v138);
}

Swift::Int64 __swiftcall Int64.rounded(by:)(Swift::Int64 by)
{
  if (!by)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (by == -1 && v1 == 0x8000000000000000)
  {
    goto LABEL_12;
  }

  v2 = v1 % by;
  if (v1 % by < by / 2)
  {
    by = v1 - v2;
    if (!__OFSUB__(v1, v2))
    {
      return by;
    }

    __break(1u);
  }

  v3 = __OFSUB__(by, v2);
  v4 = by - v2;
  if (v3)
  {
    goto LABEL_13;
  }

  by = v1 + v4;
  if (__OFADD__(v1, v4))
  {
LABEL_14:
    __break(1u);
  }

  return by;
}

uint64_t sub_217C2CFD0@<X0>(void *a1@<X8>)
{
  result = [v1 articleSeenEventCount];
  v4 = result % 10;
  if (result % 10 <= 4)
  {
    v5 = (result - v4);
    if (!__OFSUB__(result, v4))
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v6 = 10 - v4;
  v5 = (result + v6);
  if (__OFADD__(result, v6))
  {
    __break(1u);
    goto LABEL_58;
  }

LABEL_6:
  result = [v1 articleVisitedEventCount];
  v7 = result % 10;
  if (result % 10 > 4)
  {
    goto LABEL_10;
  }

  v8 = (result - v7);
  if (__OFSUB__(result, v7))
  {
    __break(1u);
LABEL_10:
    v9 = 10 - v7;
    v8 = (result + v9);
    if (!__OFADD__(result, v9))
    {
      goto LABEL_11;
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_11:
  result = [v1 articleReadEventCount];
  v10 = result % 10;
  if (result % 10 > 4)
  {
    goto LABEL_15;
  }

  v11 = (result - v10);
  if (__OFSUB__(result, v10))
  {
    __break(1u);
LABEL_15:
    v12 = 10 - v10;
    v11 = (result + v12);
    if (!__OFADD__(result, v12))
    {
      goto LABEL_16;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_16:
  result = [v1 articleLikedEventCount];
  v13 = result % 10;
  if (result % 10 > 4)
  {
    goto LABEL_20;
  }

  v14 = (result - v13);
  if (__OFSUB__(result, v13))
  {
    __break(1u);
LABEL_20:
    v15 = 10 - v13;
    v14 = (result + v15);
    if (!__OFADD__(result, v15))
    {
      goto LABEL_21;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_21:
  result = [v1 articleDislikedEventCount];
  v16 = result % 10;
  if (result % 10 > 4)
  {
    goto LABEL_25;
  }

  v17 = (result - v16);
  if (__OFSUB__(result, v16))
  {
    __break(1u);
LABEL_25:
    v18 = 10 - v16;
    v17 = (result + v18);
    if (!__OFADD__(result, v18))
    {
      goto LABEL_26;
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

LABEL_26:
  result = [v1 articleSharedEventCount];
  v19 = result % 10;
  if (result % 10 > 4)
  {
    goto LABEL_30;
  }

  v20 = (result - v19);
  if (__OFSUB__(result, v19))
  {
    __break(1u);
LABEL_30:
    v21 = 10 - v19;
    v20 = (result + v21);
    if (!__OFADD__(result, v21))
    {
      goto LABEL_31;
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_31:
  result = [v1 articleSavedEventCount];
  v22 = result % 10;
  if (result % 10 > 4)
  {
    goto LABEL_35;
  }

  v23 = (result - v22);
  if (__OFSUB__(result, v22))
  {
    __break(1u);
LABEL_35:
    v24 = 10 - v22;
    v23 = (result + v24);
    if (!__OFADD__(result, v24))
    {
      goto LABEL_36;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_36:
  result = [v1 feedViewEventCount];
  v25 = result % 10;
  if (result % 10 > 4)
  {
    goto LABEL_40;
  }

  v26 = (result - v25);
  if (__OFSUB__(result, v25))
  {
    __break(1u);
LABEL_40:
    v27 = 10 - v25;
    v26 = (result + v27);
    if (!__OFADD__(result, v27))
    {
      goto LABEL_41;
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_41:
  result = [v1 tagFollowedEventCount];
  v28 = result % 10;
  v43 = v26;
  if (result % 10 > 4)
  {
    goto LABEL_45;
  }

  v29 = __OFSUB__(result, v28);
  v28 = result - v28;
  if (v29)
  {
    __break(1u);
LABEL_45:
    v30 = 10 - v28;
    v29 = __OFADD__(result, v30);
    v28 = result + v30;
    if (!v29)
    {
      goto LABEL_46;
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_46:
  v31 = v20;
  v32 = v17;
  v33 = v14;
  v34 = v11;
  v35 = v8;
  v36 = v5;
  result = [v1 tagUnfollowedEventCount];
  v37 = result % 10;
  if (result % 10 <= 4)
  {
    v38 = (result - v37);
    if (!__OFSUB__(result, v37))
    {
      goto LABEL_51;
    }

    __break(1u);
  }

  v39 = 10 - v37;
  v38 = (result + v39);
  if (__OFADD__(result, v39))
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_51:
  result = [v1 tagMutedEventCount];
  v40 = result % 10;
  if (result % 10 <= 4)
  {
    v29 = __OFSUB__(result, v40);
    v40 = result - v40;
    if (!v29)
    {
      goto LABEL_56;
    }

    __break(1u);
  }

  v41 = 10 - v40;
  v29 = __OFADD__(result, v41);
  v40 = result + v41;
  if (!v29)
  {
LABEL_56:
    *a1 = v36;
    a1[1] = v35;
    a1[2] = v34;
    a1[3] = v33;
    a1[4] = v32;
    a1[5] = v31;
    a1[6] = v23;
    a1[7] = v43;
    a1[8] = v42;
    a1[9] = v38;
    a1[10] = v40;
    return result;
  }

LABEL_67:
  __break(1u);
  return result;
}

void sub_217C2D3F0(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 baselineTimestamp];
  v5 = [v2 baselineStatelessEventCount];
  v6 = [v2 baselineTotalEventCount];
  v7 = [v2 aggregateCounts];
  v8 = [v7 tag];
  v9 = [v7 channelTopic];
  v10 = [v7 group];

  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = 0;
  *(a1 + 32) = v6;
  *(a1 + 40) = 0;
  *(a1 + 48) = v8;
  *(a1 + 56) = 0;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  *(a1 + 80) = v10;
  *(a1 + 88) = 0;
  *(a1 + 89) = 0;
}

uint64_t sub_217C2D510(uint64_t a1)
{
  sub_217A4E5C4(0, &qword_2811BCB80, 0x277D86200);
  v2 = sub_217D898DC();
  sub_217A5070C(0, &qword_2811BC410, &qword_2811BC3E0, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  v4 = v3;
  *(v3 + 16) = xmmword_217D8D8F0;
  if (*(a1 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_kind))
  {
    if (*(a1 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_kind) == 1)
    {
      v5 = 0xE500000000000000;
      v6 = 0x6F69647561;
    }

    else
    {
      v5 = 0xE900000000000079;
      v6 = 0x7274656D656C6574;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v6 = 7368801;
  }

  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_217A62448();
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;
  sub_217D897FC();
  sub_217D88E5C();
}

uint64_t SessionObserver.networkReachabilityConnectivityDidChange(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_tracker);
  *(swift_allocObject() + 16) = a1;
  swift_unknownObjectRetain();
  sub_217D8894C();
}

void sub_217C2D74C(int a1, id a2)
{
  if (a2)
  {
    if ([a2 isNetworkReachable])
    {
      type metadata accessor for OfflineModeEndEvent(0);
      sub_217A4C15C(&qword_2811C2948, type metadata accessor for OfflineModeEndEvent);
      v2 = 0u;
      v3 = 0u;
      sub_217D8822C();
      sub_217AE4A44(&v2, &qword_2811BC3D0);
    }

    else
    {
      type metadata accessor for OfflineModeStartEvent(0);
      sub_217A4C15C(&qword_2811C0E68, type metadata accessor for OfflineModeStartEvent);
      v2 = 0u;
      v3 = 0u;
      sub_217D8822C();
      sub_217AE4A44(&v2, &qword_2811BC3D0);
      type metadata accessor for OfflineModeEndEvent(0);
      sub_217A4C15C(&qword_2811C2948, type metadata accessor for OfflineModeEndEvent);
      sub_217D8821C();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_217C2D998(uint64_t a1)
{
  sub_217A619E0(0, &qword_2811C8A10, sub_217A61A40);
  v128 = *(v2 - 8);
  v129 = v2;
  v3 = *(v128 + 64);
  MEMORY[0x28223BE20](v2);
  v127 = &v105 - v4;
  sub_217A619E0(0, &qword_2811C8960, sub_217A66A2C);
  v125 = *(v5 - 8);
  v126 = v5;
  v6 = *(v125 + 64);
  MEMORY[0x28223BE20](v5);
  v124 = &v105 - v7;
  v8 = sub_217D8885C();
  v120 = *(v8 - 8);
  v121 = v8;
  v9 = *(v120 + 64);
  MEMORY[0x28223BE20](v8);
  v119 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_217D88B6C();
  v11 = *(v134 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v134);
  v118 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v123 = &v105 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v131 = &v105 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v105 - v19;
  v21 = sub_217D88B9C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v117 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v122 = &v105 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v105 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v105 - v31;
  sub_217A4BFDC(0, &qword_2811BCF70, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v34 = v33;
  v133 = a1;
  sub_217D88C3C();
  sub_217D88B8C();
  v37 = *(v22 + 8);
  v35 = v22 + 8;
  v36 = v37;
  v132 = v21;
  v37(v32, v21);
  sub_217D88B7C();
  v39 = v38;
  v42 = *(v11 + 8);
  v40 = v11 + 8;
  v41 = v42;
  v42(v20, v134);
  if (!v39)
  {
    sub_217D88C3C();
    v43 = v131;
    sub_217D88B8C();
    v44 = v30;
    v45 = v132;
    v36(v44, v132);
    sub_217D88B7C();
    v47 = v46;
    v41(v43, v134);
    if (!v47)
    {
      v49 = v45;
      v107 = v40;
      v108 = v36;
      v109 = v35;
      URLHandlerContext<A>.urlReferralData()(&v135);
      v160 = v135;
      v161 = v136;
      v162 = v137;
      v50 = v139;
      v115 = v140;
      v116 = v138;
      v113 = v142;
      v114 = v141;
      v111 = v145;
      v112 = v143;
      v158 = v151;
      v159 = v144;
      v156 = v149;
      v157 = v150;
      v154 = v147;
      v155 = v148;
      memcpy(v153, v152, sizeof(v153));
      v131 = v146;
      v51 = v130;
      if (v146 != 1)
      {
        v52 = *(v130 + 16);
        sub_217D883AC();
        v53 = *MEMORY[0x277CEAE38];
        v55 = v120;
        v54 = v121;
        v56 = *(v120 + 104);
        v106 = v41;
        v57 = v51;
        v58 = v119;
        v56(v119, v53, v121);
        sub_217D8891C();

        v59 = v58;
        v51 = v57;
        v41 = v106;
        (*(v55 + 8))(v59, v54);
      }

      v121 = v50;
      v110 = v34;
      if (v50)
      {
        *&v135 = v116;
        *(&v135 + 1) = v50;
        *&v136 = v115;
        *(&v136 + 1) = v114;
        *&v137 = v113;
        *(&v137 + 1) = v112;
        sub_217A66A2C();

        v60 = v124;
        sub_217D880EC();
        v61 = *(v51 + 16);
        sub_217A4BFDC(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v62 = sub_217D882DC();
        v63 = *(v62 - 8);
        v64 = *(v63 + 72);
        v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_217D8D8F0;
        (*(v63 + 104))(v66 + v65, *MEMORY[0x277CEAD10], v62);
        v49 = v132;
        sub_217D8835C();
        v51 = v130;

        (*(v125 + 8))(v60, v126);
      }

      if (v131 != 1)
      {
        v78 = 0xEC0000006E6F6974;
        v79 = 0x6163696669746F6ELL;
        v76 = v127;
LABEL_26:
        *&v135 = v79;
        *(&v135 + 1) = v78;
        sub_217A61A40();
        sub_217D880EC();
        v89 = *(v51 + 16);
        sub_217A4BFDC(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v90 = sub_217D882DC();
        v91 = v76;
        v92 = *(v90 - 8);
        v93 = *(v92 + 72);
        v94 = (*(v92 + 80) + 32) & ~*(v92 + 80);
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_217D8D8F0;
        (*(v92 + 104))(v95 + v94, *MEMORY[0x277CEAD10], v90);
        sub_217D8835C();

        sub_217D883AC();
        v96 = swift_allocObject();
        v97 = v161;
        *(v96 + 16) = v160;
        *(v96 + 32) = v97;
        *(v96 + 48) = v162;
        v98 = v121;
        *(v96 + 64) = v116;
        *(v96 + 72) = v98;
        v99 = v114;
        *(v96 + 80) = v115;
        *(v96 + 88) = v99;
        v100 = v112;
        *(v96 + 96) = v113;
        *(v96 + 104) = v100;
        v101 = v158;
        *(v96 + 112) = v159;
        v102 = v131;
        *(v96 + 128) = v111;
        *(v96 + 136) = v102;
        v103 = v156;
        *(v96 + 192) = v157;
        *(v96 + 208) = v101;
        v104 = v155;
        *(v96 + 144) = v154;
        *(v96 + 160) = v104;
        *(v96 + 176) = v103;
        memcpy((v96 + 224), v153, 0x1C8uLL);
        sub_217D888EC();

        return (*(v128 + 8))(v91, v129);
      }

      v67 = v122;
      sub_217D88C3C();
      v68 = v123;
      sub_217D88B8C();
      v108(v67, v49);
      v69 = sub_217D88B7C();
      v71 = v70;
      v72 = v134;
      (v41)(v68);
      v73 = *MEMORY[0x277D34C30];
      v74 = sub_217D8954C();
      v76 = v127;
      if (v71)
      {
        if (v69 == v74 && v71 == v75)
        {
          goto LABEL_20;
        }

        v77 = sub_217D89D4C();

        if (v77)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      v80 = v117;
      sub_217D88C3C();
      v81 = v118;
      sub_217D88B8C();
      v108(v80, v49);
      v82 = sub_217D88B7C();
      v84 = v83;
      v41(v81, v72);
      v85 = *MEMORY[0x277D34C48];
      v86 = sub_217D8954C();
      if (v84)
      {
        if (v82 == v86 && v84 == v87)
        {
LABEL_20:

LABEL_21:
          v78 = 0xEB00000000746567;
          v79 = 0x6469577961646F74;
LABEL_25:
          v51 = v130;
          goto LABEL_26;
        }

        v88 = sub_217D89D4C();

        if (v88)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      v79 = 0x6C616E7265747865;
      v78 = 0xEC0000006B6E694CLL;
      goto LABEL_25;
    }
  }
}

uint64_t sub_217C2E5CC(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v26[0] = *a2;
  v26[1] = v3;
  v5 = *a2;
  v4 = a2[1];
  v26[2] = a2[2];
  __dst[0] = v5;
  v6 = a2[2];
  __dst[1] = v4;
  __dst[2] = v6;
  sub_217A4BFDC(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v24 = sub_217D882DC();
  v7 = *(v24 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_217D8D8F0;
  v11 = *(v7 + 104);
  v12 = *MEMORY[0x277CEAD10];
  v11(v10 + v9);
  sub_217C2EEEC(v26, v25);
  sub_217B7CFA8();
  sub_217D8820C();

  v13 = *(a2 + 7);
  if (v13)
  {
    v14 = *(a2 + 6);
    v15 = a2[5];
    __dst[1] = a2[4];
    __dst[2] = v15;
    *&__dst[0] = v14;
    *(&__dst[0] + 1) = v13;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_217D8D8F0;
    (v11)(v16 + v9, v12, v24);
    sub_217A66A2C();
    sub_217D8820C();
  }

  v17 = *(a2 + 15);
  if (v17 != 1)
  {
    v18 = *(a2 + 14);
    v19 = a2[11];
    __dst[3] = a2[10];
    __dst[4] = v19;
    __dst[5] = a2[12];
    v20 = a2[9];
    __dst[1] = a2[8];
    __dst[2] = v20;
    *&__dst[0] = v18;
    *(&__dst[0] + 1) = v17;
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_217D8D8F0;
    (v11)(v21 + v9, v12, v24);
    sub_217AE0160();
    sub_217D8820C();
  }

  memcpy(__dst, a2 + 13, 0x1C8uLL);
  result = get_enum_tag_for_layout_string_13NewsAnalytics20WidgetEngagementDataVSg_0(__dst);
  if (result != 1)
  {
    memcpy(v25, __dst, sizeof(v25));
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_217D8D8F0;
    (v11)(v23 + v9, v12, v24);
    sub_217C2EF48();
    sub_217D8820C();
  }

  return result;
}

uint64_t sub_217C2E960()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_217C2E9BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_217D89E1C();
  sub_217D895CC();
  v6 = sub_217D89E3C();

  return sub_217C2EA34(a1, a2, v6);
}

unint64_t sub_217C2EA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_217D89D4C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_217C2EAEC(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, objc_class *a13)
{
  v23 = objc_allocWithZone(a13);

  return sub_217A4B71C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, v23);
}

unint64_t sub_217C2EB94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_217C2F034();
    v3 = sub_217D89ADC();
    v4 = a1 + 32;

    while (1)
    {
      sub_217C2F0D4(v4, &v11);
      v5 = v11;
      result = sub_217D7AC1C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_217B2C754(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_217C2EC90()
{
  result = qword_2811C1B70;
  if (!qword_2811C1B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1B70);
  }

  return result;
}

unint64_t sub_217C2ECE4()
{
  result = qword_2811BD2A8;
  if (!qword_2811BD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD2A8);
  }

  return result;
}

unint64_t sub_217C2ED40()
{
  result = qword_2811C42C0;
  if (!qword_2811C42C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C42C0);
  }

  return result;
}

unint64_t sub_217C2ED94()
{
  result = qword_2811C0EF8;
  if (!qword_2811C0EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0EF8);
  }

  return result;
}

unint64_t sub_217C2EDF4()
{
  result = qword_27CBA2638;
  if (!qword_27CBA2638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2638);
  }

  return result;
}

unint64_t sub_217C2EF48()
{
  result = qword_2811C1A20;
  if (!qword_2811C1A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1A20);
  }

  return result;
}

void sub_217C2EF9C()
{
  if (!qword_27CBA2730)
  {
    sub_217A4BFDC(255, &qword_27CBA2738, MEMORY[0x277D6CCB8], MEMORY[0x277D83940]);
    v0 = sub_217D89AEC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA2730);
    }
  }
}

void sub_217C2F034()
{
  if (!qword_27CBA2740)
  {
    type metadata accessor for OpenURLOptionsKey(255);
    sub_217A4C15C(&qword_27CB9E6D8, type metadata accessor for OpenURLOptionsKey);
    v0 = sub_217D89AEC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA2740);
    }
  }
}

uint64_t sub_217C2F0D4(uint64_t a1, uint64_t a2)
{
  sub_217C2F138();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_217C2F138()
{
  if (!qword_27CBA2750)
  {
    type metadata accessor for OpenURLOptionsKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CBA2750);
    }
  }
}

NewsAnalytics::PuzzleRevealType_optional __swiftcall PuzzleRevealType.init(rawValue:)(Swift::String rawValue)
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

uint64_t PuzzleRevealType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 1685221239;
  if (*v0 != 2)
  {
    v2 = 0x72657474656CLL;
  }

  if (*v0)
  {
    v1 = 7105633;
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

unint64_t sub_217C2F27C()
{
  result = qword_27CBA2758;
  if (!qword_27CBA2758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2758);
  }

  return result;
}

uint64_t sub_217C2F2D0()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C2F380()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217C2F41C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C2F4D4(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE400000000000000;
  v5 = 1685221239;
  if (*v1 != 2)
  {
    v5 = 0x72657474656CLL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 7105633;
    v2 = 0xE300000000000000;
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

unint64_t sub_217C2F600()
{
  result = qword_27CBA2760;
  if (!qword_27CBA2760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2760);
  }

  return result;
}

uint64_t GroupingInventoryData.inventory.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_217C2F6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F746E65766E69 && a2 == 0xE900000000000079)
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

uint64_t sub_217C2F764(uint64_t a1)
{
  v2 = sub_217C2F984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C2F7A0(uint64_t a1)
{
  v2 = sub_217C2F984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupingInventoryData.encode(to:)(void *a1)
{
  sub_217C2FBF8(0, &qword_2811BC618, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C2F984();

  sub_217D89E7C();
  v12[1] = v9;
  sub_217C2F9D8();
  sub_217C2FC5C(&qword_2811BCDC8, sub_217C19668);
  sub_217D89CAC();

  return (*(v5 + 8))(v8, v4);
}