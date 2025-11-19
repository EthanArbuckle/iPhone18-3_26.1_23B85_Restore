uint64_t EORGroupExposureEvent.hostRecipeViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 32);
  sub_217B7E47C(0, &qword_27CBA08F8, sub_217B7DEC4, sub_217B7DF18);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B7DEC4()
{
  result = qword_27CBA0900;
  if (!qword_27CBA0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0900);
  }

  return result;
}

unint64_t sub_217B7DF18()
{
  result = qword_27CBA0908;
  if (!qword_27CBA0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0908);
  }

  return result;
}

uint64_t EORGroupExposureEvent.hostRecipeViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 32);
  sub_217B7E47C(0, &qword_27CBA08F8, sub_217B7DEC4, sub_217B7DF18);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORGroupExposureEvent.hostRecipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 36);
  sub_217B7E47C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORGroupExposureEvent.hostRecipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 36);
  sub_217B7E47C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORGroupExposureEvent.hostRecipeChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 40);
  sub_217B7E47C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORGroupExposureEvent.hostRecipeChannelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 40);
  sub_217B7E47C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORGroupExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 44);
  sub_217B7E47C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B7E47C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t EORGroupExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 44);
  sub_217B7E47C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORGroupExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for EORGroupExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B7E47C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B7E47C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217B7E47C(0, &qword_27CBA08F8, sub_217B7DEC4, sub_217B7DF18);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217B7E47C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  sub_217B7E47C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v16 - 8) + 104))(a1 + v15, v2, v16);
  v17 = v4[11];
  sub_217B7E47C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v19 = *(*(v18 - 8) + 104);

  return v19(a1 + v17, v2, v18);
}

uint64_t sub_217B7E9D0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t EORGroupExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EORGroupExposureEvent.Model(0) + 24));
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
  return sub_217AF7618(v17, &v16);
}

uint64_t EORGroupExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EORGroupExposureEvent.Model(0) + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t EORGroupExposureEvent.Model.hostRecipeViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EORGroupExposureEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t EORGroupExposureEvent.Model.hostRecipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EORGroupExposureEvent.Model(0) + 36);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t EORGroupExposureEvent.Model.hostRecipeChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EORGroupExposureEvent.Model(0) + 40);
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

uint64_t EORGroupExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EORGroupExposureEvent.Model(0) + 44));
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

__n128 EORGroupExposureEvent.Model.init(eventData:timedData:groupData:feedData:hostRecipeViewData:hostRecipeData:hostRecipeChannelData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a4;
  v15 = *(a4 + 1);
  v16 = *(a4 + 2);
  v17 = a5[1];
  v38 = a6[1];
  v39 = *a6;
  v37 = *(a6 + 16);
  v36 = a6[3];
  v34 = *a5;
  v35 = a6[4];
  v44 = a7[1];
  v45 = *a7;
  v42 = *(a7 + 17);
  v43 = *(a7 + 16);
  v40 = a7[4];
  v41 = a7[3];
  v18 = sub_217D8899C();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for EORGroupExposureEvent.Model(0);
  v20 = v19[5];
  v21 = sub_217D889CC();
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v22 = (a9 + v19[6]);
  v23 = a3[7];
  v22[6] = a3[6];
  v22[7] = v23;
  v22[8] = a3[8];
  v24 = a3[3];
  v22[2] = a3[2];
  v22[3] = v24;
  v25 = a3[5];
  v22[4] = a3[4];
  v22[5] = v25;
  v26 = a3[1];
  *v22 = *a3;
  v22[1] = v26;
  v27 = a9 + v19[7];
  *v27 = v14;
  *(v27 + 8) = v15;
  *(v27 + 16) = v16;
  v28 = (a9 + v19[8]);
  *v28 = v34;
  v28[1] = v17;
  v29 = a9 + v19[9];
  *v29 = v39;
  *(v29 + 8) = v38;
  *(v29 + 16) = v37;
  *(v29 + 24) = v36;
  *(v29 + 32) = v35;
  v30 = a9 + v19[10];
  *v30 = v45;
  *(v30 + 8) = v44;
  *(v30 + 16) = v43;
  *(v30 + 17) = v42;
  *(v30 + 24) = v41;
  *(v30 + 32) = v40;
  v31 = a9 + v19[11];
  *(v31 + 48) = *(a8 + 48);
  result = *(a8 + 16);
  v33 = *(a8 + 32);
  *(v31 + 16) = result;
  *(v31 + 32) = v33;
  *v31 = *a8;
  return result;
}

unint64_t sub_217B7EEB0()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000021;
    if (v1 == 6)
    {
      v5 = 0xD000000000000015;
    }

    v6 = 0xD000000000000012;
    if (v1 != 4)
    {
      v6 = 0x6963655274736F68;
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
    v2 = 0x746144746E657665;
    v3 = 0x74614470756F7267;
    if (v1 != 2)
    {
      v3 = 0x6174614464656566;
    }

    if (*v0)
    {
      v2 = 0x74614464656D6974;
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

uint64_t sub_217B7EFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B80A70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B7EFE8(uint64_t a1)
{
  v2 = sub_217B7F618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B7F024(uint64_t a1)
{
  v2 = sub_217B7F618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EORGroupExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B80050(0, &qword_27CBA0910, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v44 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B7F618();
  sub_217D89E7C();
  LOBYTE(v70[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for EORGroupExposureEvent.Model(0);
    v13 = v12[5];
    v81 = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = (v3 + v12[6]);
    v15 = v14[5];
    v16 = v14[7];
    v75 = v14[6];
    v76 = v16;
    v17 = v14[7];
    v77 = v14[8];
    v18 = v14[1];
    v19 = v14[3];
    v71 = v14[2];
    v72 = v19;
    v20 = v14[3];
    v21 = v14[5];
    v73 = v14[4];
    v74 = v21;
    v22 = v14[1];
    v70[0] = *v14;
    v70[1] = v22;
    v67 = v75;
    v68 = v17;
    v69 = v14[8];
    v63 = v71;
    v64 = v20;
    v65 = v73;
    v66 = v15;
    v61 = v70[0];
    v62 = v18;
    v80 = 2;
    sub_217AF7618(v70, v60);
    sub_217A5D3B4();
    sub_217D89CAC();
    v60[6] = v67;
    v60[7] = v68;
    v60[8] = v69;
    v60[2] = v63;
    v60[3] = v64;
    v60[4] = v65;
    v60[5] = v66;
    v60[0] = v61;
    v60[1] = v62;
    sub_217AF8104(v60);
    v23 = v3 + v12[7];
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
    LOBYTE(v50) = *v23;
    *(&v50 + 1) = v24;
    *&v51 = v25;
    LOBYTE(v46) = 3;
    sub_217A5BA2C();

    sub_217D89CAC();

    v26 = (v3 + v12[8]);
    v27 = v26[1];
    *&v50 = *v26;
    *(&v50 + 1) = v27;
    LOBYTE(v46) = 4;
    sub_217B7DF18();

    sub_217D89CAC();

    v28 = v3 + v12[9];
    v29 = *(v28 + 8);
    v30 = *(v28 + 16);
    v31 = *(v28 + 24);
    v32 = *(v28 + 32);
    *&v50 = *v28;
    *(&v50 + 1) = v29;
    LOBYTE(v51) = v30;
    *(&v51 + 1) = v31;
    *&v52 = v32;
    LOBYTE(v46) = 5;
    sub_217B1F08C();

    sub_217D89CAC();

    v33 = (v3 + v12[10]);
    v34 = v33[1];
    v35 = *(v33 + 16);
    v36 = *(v33 + 17);
    v37 = v33[3];
    v38 = v33[4];
    v54 = *v33;
    v55 = v34;
    v56 = v35;
    v57 = v36;
    v58 = v37;
    v59 = v38;
    v79 = 6;
    sub_217AD084C();

    sub_217D89CAC();

    v40 = (v3 + v12[11]);
    v41 = v40[1];
    v50 = *v40;
    v51 = v41;
    v43 = *v40;
    v42 = v40[1];
    v52 = v40[2];
    v53 = *(v40 + 48);
    v46 = v43;
    v47 = v42;
    v48 = v40[2];
    v49 = *(v40 + 48);
    v78 = 7;
    sub_217ACC004(&v50, v44);
    sub_217A55B98();
    sub_217D89CAC();
    v44[0] = v46;
    v44[1] = v47;
    v44[2] = v48;
    v45 = v49;
    sub_217ACC69C(v44);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B7F618()
{
  result = qword_27CBA0918;
  if (!qword_27CBA0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0918);
  }

  return result;
}

uint64_t EORGroupExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v52 = sub_217D889CC();
  v51 = *(v52 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v52);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v53 = *(v6 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v6);
  v55 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B80050(0, &qword_27CBA0920, MEMORY[0x277D844C8]);
  v57 = v9;
  v54 = *(v9 - 8);
  v10 = *(v54 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - v11;
  v13 = type metadata accessor for EORGroupExposureEvent.Model(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B7F618();
  v56 = v12;
  v18 = v72;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v5;
  v20 = v54;
  v72 = v16;
  LOBYTE(v63) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v21 = v55;
  sub_217D89BCC();
  v22 = v72;
  (*(v53 + 32))(v72, v21, v6);
  LOBYTE(v63) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v23 = v19;
  v24 = v52;
  sub_217D89BCC();
  v49 = v6;
  v55 = 0;
  (*(v51 + 32))(&v22[v13[5]], v23, v24);
  v62 = 2;
  sub_217A5D308();
  sub_217D89BCC();
  v25 = &v22[v13[6]];
  v26 = v68;
  v27 = v70;
  v28 = v71;
  *(v25 + 6) = v69;
  *(v25 + 7) = v27;
  *(v25 + 8) = v28;
  v29 = v66;
  *(v25 + 2) = v65;
  *(v25 + 3) = v29;
  *(v25 + 4) = v67;
  *(v25 + 5) = v26;
  v30 = v64;
  *v25 = v63;
  *(v25 + 1) = v30;
  v61 = 3;
  sub_217A5B978();
  sub_217D89BCC();
  v31 = &v22[v13[7]];
  *v31 = v58[0];
  *(v31 + 8) = *(v58 + 8);
  v61 = 4;
  sub_217B7DEC4();
  sub_217D89BCC();
  v32 = *(&v58[0] + 1);
  v33 = &v22[v13[8]];
  *v33 = *&v58[0];
  *(v33 + 1) = v32;
  v61 = 5;
  sub_217B1F038();
  sub_217D89BCC();
  v34 = *(&v58[0] + 1);
  v35 = v58[1];
  v36 = *(&v58[1] + 1);
  v37 = v59;
  v38 = &v22[v13[9]];
  *v38 = *&v58[0];
  *(v38 + 1) = v34;
  v38[16] = v35;
  *(v38 + 3) = v36;
  *(v38 + 4) = v37;
  v61 = 6;
  sub_217AD07F8();
  sub_217D89BCC();
  v39 = *(&v58[0] + 1);
  v40 = v58[1];
  v41 = BYTE1(v58[1]);
  v42 = *(&v58[1] + 1);
  v43 = v59;
  v44 = &v22[v13[10]];
  *v44 = *&v58[0];
  *(v44 + 1) = v39;
  v44[16] = v40;
  v44[17] = v41;
  *(v44 + 3) = v42;
  *(v44 + 4) = v43;
  v61 = 7;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v20 + 8))(v56, v57);
  v45 = v72;
  v46 = &v72[v13[11]];
  v47 = v58[1];
  *v46 = v58[0];
  *(v46 + 1) = v47;
  *(v46 + 2) = v59;
  v46[48] = v60;
  sub_217B800B4(v45, v50);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B80118(v45);
}

void sub_217B80050(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B7F618();
    v7 = a3(a1, &type metadata for EORGroupExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B800B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EORGroupExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B80118(uint64_t a1)
{
  v2 = type metadata accessor for EORGroupExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B8024C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B7E47C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B7E47C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217B7E47C(0, &qword_27CBA08F8, sub_217B7DEC4, sub_217B7DF18);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217B7E47C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  sub_217B7E47C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v17 - 8) + 104))(a2 + v16, v4, v17);
  v18 = a1[11];
  sub_217B7E47C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v20 = *(*(v19 - 8) + 104);

  return v20(a2 + v18, v4, v19);
}

void sub_217B80604()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217B7E47C(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
      if (v2 <= 0x3F)
      {
        sub_217B7E47C(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
        if (v3 <= 0x3F)
        {
          sub_217B7E47C(319, &qword_27CBA08F8, sub_217B7DEC4, sub_217B7DF18);
          if (v4 <= 0x3F)
          {
            sub_217B7E47C(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
            if (v5 <= 0x3F)
            {
              sub_217B7E47C(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
              if (v6 <= 0x3F)
              {
                sub_217B7E47C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
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

uint64_t sub_217B80890()
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

unint64_t sub_217B8096C()
{
  result = qword_27CBA0948;
  if (!qword_27CBA0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0948);
  }

  return result;
}

unint64_t sub_217B809C4()
{
  result = qword_27CBA0950;
  if (!qword_27CBA0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0950);
  }

  return result;
}

unint64_t sub_217B80A1C()
{
  result = qword_27CBA0958;
  if (!qword_27CBA0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0958);
  }

  return result;
}

uint64_t sub_217B80A70(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCE880 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6963655274736F68 && a2 == 0xEE00617461446570 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DCE8A0 == a2 || (sub_217D89D4C() & 1) != 0)
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

uint64_t sub_217B80DE4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0990);
  __swift_project_value_buffer(v0, qword_27CBA0990);
  return sub_217D8866C();
}

uint64_t EORFeedViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EORFeedViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORFeedViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 24);
  sub_217B81CA8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORFeedViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 24);
  sub_217B81CA8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORFeedViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 28);
  sub_217B81CA8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORFeedViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 28);
  sub_217B81CA8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORFeedViewEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 32);
  sub_217B81CA8(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORFeedViewEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 32);
  sub_217B81CA8(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORFeedViewEvent.hostRecipeViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 36);
  sub_217B81CA8(0, &qword_27CBA08F8, sub_217B7DEC4, sub_217B7DF18);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORFeedViewEvent.hostRecipeViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 36);
  sub_217B81CA8(0, &qword_27CBA08F8, sub_217B7DEC4, sub_217B7DF18);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORFeedViewEvent.hostRecipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 40);
  sub_217B81CA8(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORFeedViewEvent.hostRecipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 40);
  sub_217B81CA8(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORFeedViewEvent.hostRecipeChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 44);
  sub_217B81CA8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORFeedViewEvent.hostRecipeChannelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 44);
  sub_217B81CA8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORFeedViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 48);
  sub_217B81CA8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORFeedViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 48);
  sub_217B81CA8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORFeedViewEvent.viewEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 52);
  sub_217B81CA8(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B81CA8(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t EORFeedViewEvent.viewEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 52);
  sub_217B81CA8(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORFeedViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for EORFeedViewEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B81CA8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B81CA8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217B81CA8(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217B81CA8(0, &qword_27CBA08F8, sub_217B7DEC4, sub_217B7DF18);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  sub_217B81CA8(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  (*(*(v16 - 8) + 104))(a1 + v15, v2, v16);
  v17 = v4[11];
  sub_217B81CA8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v18 - 8) + 104))(a1 + v17, v2, v18);
  v19 = v4[12];
  sub_217B81CA8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v20 - 8) + 104))(a1 + v19, v2, v20);
  v21 = v4[13];
  sub_217B81CA8(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0);
  v23 = *(*(v22 - 8) + 104);

  return v23(a1 + v21, v2, v22);
}

uint64_t sub_217B822EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t EORFeedViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EORFeedViewEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t EORFeedViewEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EORFeedViewEvent.Model(0) + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t EORFeedViewEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for EORFeedViewEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t EORFeedViewEvent.Model.hostRecipeViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EORFeedViewEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t EORFeedViewEvent.Model.hostRecipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EORFeedViewEvent.Model(0) + 40);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t EORFeedViewEvent.Model.hostRecipeChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EORFeedViewEvent.Model(0) + 44);
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

uint64_t EORFeedViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EORFeedViewEvent.Model(0) + 48);
  v11 = *(v3 + 48);
  v4 = v11;
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  v10 = *(v3 + 32);
  v6 = v10;
  *a1 = v9[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v4;
  return sub_217ACC004(v9, v8);
}

uint64_t EORFeedViewEvent.Model.viewEndData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EORFeedViewEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

__n128 EORFeedViewEvent.Model.init(eventData:timedData:viewData:feedData:orientationData:hostRecipeViewData:hostRecipeData:hostRecipeChannelData:userBundleSubscriptionContextData:viewEndData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, __int16 *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11)
{
  v14 = *a3;
  v15 = a3[1];
  v16 = *(a3 + 8);
  v17 = *(a4 + 1);
  v18 = *(a4 + 2);
  v31 = *a4;
  v32 = *a5;
  v33 = a6[1];
  v34 = *a6;
  v38 = a7[1];
  v39 = *a7;
  v37 = *(a7 + 16);
  v35 = a7[4];
  v36 = a7[3];
  v44 = a8[1];
  v45 = *a8;
  v42 = *(a8 + 17);
  v43 = *(a8 + 16);
  v40 = a8[4];
  v41 = a8[3];
  v46 = *a11;
  v19 = sub_217D8899C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for EORFeedViewEvent.Model(0);
  v21 = v20[5];
  v22 = sub_217D889CC();
  (*(*(v22 - 8) + 32))(a9 + v21, a2, v22);
  v23 = a9 + v20[6];
  *v23 = v14;
  *(v23 + 8) = v15;
  *(v23 + 16) = v16;
  v24 = a9 + v20[7];
  *v24 = v31;
  *(v24 + 8) = v17;
  *(v24 + 16) = v18;
  *(a9 + v20[8]) = v32;
  v25 = (a9 + v20[9]);
  *v25 = v34;
  v25[1] = v33;
  v26 = a9 + v20[10];
  *v26 = v39;
  *(v26 + 8) = v38;
  *(v26 + 16) = v37;
  *(v26 + 24) = v36;
  *(v26 + 32) = v35;
  v27 = a9 + v20[11];
  *v27 = v45;
  *(v27 + 8) = v44;
  *(v27 + 16) = v43;
  *(v27 + 17) = v42;
  *(v27 + 24) = v41;
  *(v27 + 32) = v40;
  v28 = a9 + v20[12];
  v29 = *(a10 + 16);
  *v28 = *a10;
  *(v28 + 16) = v29;
  result = *(a10 + 32);
  *(v28 + 32) = result;
  *(v28 + 48) = *(a10 + 48);
  *(a9 + v20[13]) = v46;
  return result;
}

unint64_t sub_217B827FC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000021;
    if (a1 != 8)
    {
      v5 = 0x44646E4577656976;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000015;
    }

    v6 = 0xD000000000000012;
    if (a1 != 5)
    {
      v6 = 0x6963655274736F68;
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
    v1 = 0x746144746E657665;
    v2 = 0x6174614477656976;
    v3 = 0x6174614464656566;
    if (a1 != 3)
    {
      v3 = 0x7461746E6569726FLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x74614464656D6974;
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

uint64_t sub_217B8296C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B8456C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B82994(uint64_t a1)
{
  v2 = sub_217B83014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B829D0(uint64_t a1)
{
  v2 = sub_217B83014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EORFeedViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B839A8(0, &qword_27CBA09A8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v38[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B83014();
  sub_217D89E7C();
  LOBYTE(v46) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for EORFeedViewEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v46) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = (v3 + v12[6]);
    v15 = *v14;
    v16 = v14[1];
    LOWORD(v14) = *(v14 + 8);
    *&v46 = v15;
    *(&v46 + 1) = v16;
    LOWORD(v47) = v14;
    LOBYTE(v42) = 2;
    sub_217A5E790();

    sub_217D89CAC();

    v17 = v3 + v12[7];
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    LOBYTE(v46) = *v17;
    *(&v46 + 1) = v18;
    *&v47 = v19;
    LOBYTE(v42) = 3;
    sub_217A5BA2C();

    sub_217D89CAC();

    LOWORD(v46) = *(v3 + v12[8]);
    LOBYTE(v42) = 4;
    sub_217A4CF88();
    sub_217D89CAC();
    v21 = (v3 + v12[9]);
    v22 = v21[1];
    *&v46 = *v21;
    *(&v46 + 1) = v22;
    LOBYTE(v42) = 5;
    sub_217B7DF18();

    sub_217D89CAC();

    v23 = v3 + v12[10];
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
    v26 = *(v23 + 24);
    v27 = *(v23 + 32);
    *&v46 = *v23;
    *(&v46 + 1) = v24;
    LOBYTE(v47) = v25;
    *(&v47 + 1) = v26;
    *&v48 = v27;
    LOBYTE(v42) = 6;
    sub_217B1F08C();

    sub_217D89CAC();

    v28 = (v3 + v12[11]);
    v29 = v28[1];
    v30 = *(v28 + 16);
    v31 = *(v28 + 17);
    v32 = v28[3];
    v33 = v28[4];
    v51 = *v28;
    v52 = v29;
    v53 = v30;
    v54 = v31;
    v55 = v32;
    v56 = v33;
    v50 = 7;
    sub_217AD084C();

    sub_217D89CAC();

    v34 = (v3 + v12[12]);
    v35 = v34[1];
    v46 = *v34;
    v47 = v35;
    v37 = *v34;
    v36 = v34[1];
    v48 = v34[2];
    v49 = *(v34 + 48);
    v42 = v37;
    v43 = v36;
    v44 = v34[2];
    v45 = *(v34 + 48);
    v41 = 8;
    sub_217ACC004(&v46, v39);
    sub_217A55B98();
    sub_217D89CAC();
    v39[0] = v42;
    v39[1] = v43;
    v39[2] = v44;
    v40 = v45;
    sub_217ACC69C(v39);
    v38[15] = *(v3 + v12[13]);
    v38[14] = 9;
    sub_217B570C0();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B83014()
{
  result = qword_27CBA09B0;
  if (!qword_27CBA09B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA09B0);
  }

  return result;
}

uint64_t EORFeedViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_217D889CC();
  v54 = *(v3 - 8);
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217D8899C();
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v7);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B839A8(0, &qword_27CBA09B8, MEMORY[0x277D844C8]);
  v59 = v10;
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - v12;
  v14 = type metadata accessor for EORFeedViewEvent.Model(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_217B83014();
  v58 = v13;
  v20 = v61;
  sub_217D89E5C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v21 = v6;
  v22 = v56;
  v51 = v14;
  v52 = v3;
  v61 = v17;
  v62[0] = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v23 = v57;
  sub_217D89BCC();
  v24 = *(v55 + 32);
  v25 = v61;
  v57 = v7;
  v24(v61, v23, v7);
  v62[0] = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v26 = v21;
  v27 = v52;
  sub_217D89BCC();
  v50 = 0;
  v28 = v51;
  (*(v54 + 32))(&v25[v51[5]], v26, v27);
  v67 = 2;
  sub_217A5E738();
  sub_217D89BCC();
  v29 = *&v62[8];
  v30 = *&v62[16];
  v31 = &v25[v28[6]];
  *v31 = *v62;
  *(v31 + 1) = v29;
  *(v31 + 8) = v30;
  v67 = 3;
  sub_217A5B978();
  sub_217D89BCC();
  v32 = &v25[v28[7]];
  *v32 = v62[0];
  *(v32 + 8) = *&v62[8];
  v67 = 4;
  sub_217A4CF30();
  sub_217D89BCC();
  *&v25[v28[8]] = *v62;
  v67 = 5;
  sub_217B7DEC4();
  sub_217D89BCC();
  v33 = *&v62[8];
  v34 = &v25[v28[9]];
  *v34 = *v62;
  *(v34 + 1) = v33;
  v67 = 6;
  sub_217B1F038();
  sub_217D89BCC();
  v35 = *&v62[8];
  v36 = v62[16];
  v37 = *&v62[24];
  v38 = v63;
  v39 = &v25[v28[10]];
  *v39 = *v62;
  *(v39 + 1) = v35;
  v39[16] = v36;
  *(v39 + 3) = v37;
  *(v39 + 4) = v38;
  v67 = 7;
  sub_217AD07F8();
  sub_217D89BCC();
  v40 = *&v62[8];
  v41 = v62[16];
  v42 = v62[17];
  v43 = *&v62[24];
  v44 = v63;
  v45 = &v61[v28[11]];
  *v45 = *v62;
  *(v45 + 1) = v40;
  v45[16] = v41;
  v45[17] = v42;
  *(v45 + 3) = v43;
  *(v45 + 4) = v44;
  v67 = 8;
  sub_217A54D08();
  sub_217D89BCC();
  v46 = &v61[v28[12]];
  v47 = *&v62[16];
  *v46 = *v62;
  *(v46 + 1) = v47;
  *(v46 + 2) = v63;
  v46[48] = v64;
  v65 = 9;
  sub_217B57068();
  sub_217D89BCC();
  (*(v22 + 8))(v58, v59);
  v48 = v61;
  v61[v51[13]] = v66;
  sub_217B83A0C(v48, v53);
  __swift_destroy_boxed_opaque_existential_1(v60);
  return sub_217B83A70(v48);
}

void sub_217B839A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B83014();
    v7 = a3(a1, &type metadata for EORFeedViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B83A0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EORFeedViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B83A70(uint64_t a1)
{
  v2 = type metadata accessor for EORFeedViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B83BA4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B81CA8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B81CA8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217B81CA8(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217B81CA8(0, &qword_27CBA08F8, sub_217B7DEC4, sub_217B7DF18);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  sub_217B81CA8(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  (*(*(v17 - 8) + 104))(a2 + v16, v4, v17);
  v18 = a1[11];
  sub_217B81CA8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v19 - 8) + 104))(a2 + v18, v4, v19);
  v20 = a1[12];
  sub_217B81CA8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v21 - 8) + 104))(a2 + v20, v4, v21);
  v22 = a1[13];
  sub_217B81CA8(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0);
  v24 = *(*(v23 - 8) + 104);

  return v24(a2 + v22, v4, v23);
}

void sub_217B8404C()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217B81CA8(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
      if (v2 <= 0x3F)
      {
        sub_217B81CA8(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
        if (v3 <= 0x3F)
        {
          sub_217B81CA8(319, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
          if (v4 <= 0x3F)
          {
            sub_217B81CA8(319, &qword_27CBA08F8, sub_217B7DEC4, sub_217B7DF18);
            if (v5 <= 0x3F)
            {
              sub_217B81CA8(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
              if (v6 <= 0x3F)
              {
                sub_217B81CA8(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
                if (v7 <= 0x3F)
                {
                  sub_217B81CA8(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                  if (v8 <= 0x3F)
                  {
                    sub_217B81CA8(319, &qword_2811C87C0, sub_217B57068, sub_217B570C0);
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

uint64_t sub_217B84378()
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

unint64_t sub_217B84468()
{
  result = qword_27CBA09E0;
  if (!qword_27CBA09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA09E0);
  }

  return result;
}

unint64_t sub_217B844C0()
{
  result = qword_27CBA09E8;
  if (!qword_27CBA09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA09E8);
  }

  return result;
}

unint64_t sub_217B84518()
{
  result = qword_27CBA09F0;
  if (!qword_27CBA09F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA09F0);
  }

  return result;
}

uint64_t sub_217B8456C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCE880 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6963655274736F68 && a2 == 0xEE00617461446570 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DCE8A0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x44646E4577656976 && a2 == 0xEB00000000617461)
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

NewsAnalytics::FeedGroupLayoutPath_optional __swiftcall FeedGroupLayoutPath.init(rawValue:)(Swift::String rawValue)
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

uint64_t FeedGroupLayoutPath.rawValue.getter()
{
  v1 = 1953718630;
  if (*v0 != 1)
  {
    v1 = 0x6568636163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2003790963;
  }
}

uint64_t sub_217B84960(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1953718630;
  if (v2 != 1)
  {
    v5 = 0x6568636163;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 2003790963;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1953718630;
  if (*a2 != 1)
  {
    v8 = 0x6568636163;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 2003790963;
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
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217B84A44()
{
  result = qword_27CBA09F8;
  if (!qword_27CBA09F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA09F8);
  }

  return result;
}

uint64_t sub_217B84A98()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B84B28()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217B84BA4()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B84C3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1953718630;
  if (v2 != 1)
  {
    v5 = 0x6568636163;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 2003790963;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217B84D48()
{
  result = qword_2811C2A30;
  if (!qword_2811C2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A30);
  }

  return result;
}

NewsAnalytics::EmailShareUserActionType_optional __swiftcall EmailShareUserActionType.init(rawValue:)(Swift::String rawValue)
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

uint64_t EmailShareUserActionType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6C65636E6163;
  if (*v0 != 2)
  {
    v2 = 0x6E6564646968;
  }

  if (*v0)
  {
    v1 = 0x6572616873;
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

unint64_t sub_217B84E78()
{
  result = qword_27CBA0A00;
  if (!qword_27CBA0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A00);
  }

  return result;
}

uint64_t sub_217B84ECC()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B84F84()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217B85028()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B850E8(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0x6C65636E6163;
  if (*v1 != 2)
  {
    v4 = 0x6E6564646968;
  }

  if (*v1)
  {
    v3 = 0x6572616873;
    v2 = 0xE500000000000000;
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
    v2 = 0xE600000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_217B8521C()
{
  result = qword_27CBA0A08;
  if (!qword_27CBA0A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A08);
  }

  return result;
}

uint64_t SectionData.sectionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SectionData.sectionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SectionData.sectionItemCount.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t SectionData.sectionItemCount.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t SectionData.init(sectionID:sectionItemCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

unint64_t sub_217B85350()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x496E6F6974636573;
  }

  *v0;
  return result;
}

uint64_t sub_217B85394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496E6F6974636573 && a2 == 0xE900000000000044;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCE8C0 == a2)
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

uint64_t sub_217B85480(uint64_t a1)
{
  v2 = sub_217B85684();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B854BC(uint64_t a1)
{
  v2 = sub_217B85684();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SectionData.encode(to:)(void *a1)
{
  sub_217B858D8(0, &qword_2811BC838, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v14[0] = v1[2];
  v15 = *(v1 + 24);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B85684();
  sub_217D89E7C();
  v17 = 0;
  v12 = v14[1];
  sub_217D89C6C();
  if (!v12)
  {
    v16 = 1;
    sub_217D89C5C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B85684()
{
  result = qword_2811C7CA8;
  if (!qword_2811C7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7CA8);
  }

  return result;
}

uint64_t SectionData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217B858D8(0, &qword_2811BCB30, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B85684();
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
  v15 = sub_217D89B7C();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  *a2 = v20;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15;
  *(a2 + 24) = v17 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B858D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B85684();
    v7 = a3(a1, &type metadata for SectionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B85988()
{
  result = qword_27CBA0A10;
  if (!qword_27CBA0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A10);
  }

  return result;
}

unint64_t sub_217B859E0()
{
  result = qword_2811C7C98;
  if (!qword_2811C7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7C98);
  }

  return result;
}

unint64_t sub_217B85A38()
{
  result = qword_2811C7CA0;
  if (!qword_2811C7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7CA0);
  }

  return result;
}

uint64_t RecipeEventUserInfo.eventAggregationPersonalizationData.getter()
{
  v1 = *v0;
  sub_217B85AC0(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_217B85AC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_217B0A564(a1, a2);
  }

  return a1;
}

uint64_t RecipeEventUserInfo.init(eventAggregationPersonalizationData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double ProcessEvent.recipeUserInfo.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_217D8819C();
  if (!v3[3])
  {
    sub_217A576FC(v3);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    result = 0.0;
    *a1 = xmmword_217D9D920;
  }

  return result;
}

uint64_t ProcessEvent.eventAggregationPersonalizationData.getter()
{
  ProcessEvent.recipeUserInfo.getter(&v1);
  if ((*(&v1 + 1) & 0xF000000000000000) == 0xB000000000000000)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217B85BBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_217B85C18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t ScoringValueDistribution.min.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t ScoringValueDistribution.min.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ScoringValueDistribution.max.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t ScoringValueDistribution.max.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ScoringValueDistribution.mean.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t ScoringValueDistribution.mean.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t ScoringValueDistribution.median.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t ScoringValueDistribution.median.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t ScoringValueDistribution.variance.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t ScoringValueDistribution.variance.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t sub_217B85E0C()
{
  v1 = *v0;
  v2 = 7235949;
  v3 = 1851876717;
  v4 = 0x6E616964656DLL;
  if (v1 != 3)
  {
    v4 = 0x65636E6169726176;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7889261;
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

uint64_t sub_217B85E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B86744(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B85EB4(uint64_t a1)
{
  v2 = sub_217B8616C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B85EF0(uint64_t a1)
{
  v2 = sub_217B8616C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScoringValueDistribution.encode(to:)(void *a1)
{
  sub_217B86454(0, &qword_2811BC5C8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v21 = v1[2];
  v20 = *(v1 + 24);
  v19 = v1[4];
  v18 = *(v1 + 40);
  v17 = v1[6];
  v16 = *(v1 + 56);
  v15 = v1[8];
  v14[3] = *(v1 + 72);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8616C();
  sub_217D89E7C();
  v27 = 0;
  v12 = v22;
  sub_217D89C2C();
  if (!v12)
  {
    v26 = 1;
    sub_217D89C2C();
    v25 = 2;
    sub_217D89C2C();
    v24 = 3;
    sub_217D89C2C();
    v23 = 4;
    sub_217D89C2C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B8616C()
{
  result = qword_2811BF778;
  if (!qword_2811BF778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF778);
  }

  return result;
}

uint64_t ScoringValueDistribution.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217B86454(0, &qword_27CBA0A18, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v28 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8616C();
  sub_217D89E5C();
  if (!v2)
  {
    v41 = 0;
    v12 = sub_217D89B4C();
    v36 = v13 & 1;
    v40 = 1;
    v14 = sub_217D89B4C();
    v35 = v15 & 1;
    v39 = 2;
    v31 = sub_217D89B4C();
    v34 = v16 & 1;
    v38 = 3;
    v30 = sub_217D89B4C();
    v33 = v17 & 1;
    v37 = 4;
    v18 = sub_217D89B4C();
    v21 = v20;
    v22 = *(v7 + 8);
    v29 = v18;
    v22(v10, v6);
    v32 = v21 & 1;
    v23 = v36;
    v24 = v35;
    v25 = v34;
    v26 = v33;
    *a2 = v12;
    *(a2 + 8) = v23;
    *(a2 + 16) = v14;
    *(a2 + 24) = v24;
    v27 = v30;
    *(a2 + 32) = v31;
    *(a2 + 40) = v25;
    *(a2 + 48) = v27;
    *(a2 + 56) = v26;
    *(a2 + 64) = v29;
    *(a2 + 72) = v21 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B86454(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B8616C();
    v7 = a3(a1, &type metadata for ScoringValueDistribution.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B864BC()
{
  result = qword_27CBA0A20;
  if (!qword_27CBA0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A20);
  }

  return result;
}

unint64_t sub_217B86514()
{
  result = qword_2811BF760;
  if (!qword_2811BF760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF760);
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

uint64_t sub_217B865BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 73))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217B865DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = (a2 - 1);
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

  *(result + 73) = v3;
  return result;
}

unint64_t sub_217B86640()
{
  result = qword_27CBA0A28;
  if (!qword_27CBA0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A28);
  }

  return result;
}

unint64_t sub_217B86698()
{
  result = qword_2811BF768;
  if (!qword_2811BF768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF768);
  }

  return result;
}

unint64_t sub_217B866F0()
{
  result = qword_2811BF770;
  if (!qword_2811BF770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF770);
  }

  return result;
}

uint64_t sub_217B86744(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v3 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1851876717 && a2 == 0xE400000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E616964656DLL && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65636E6169726176 && a2 == 0xE800000000000000)
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

NewsAnalytics::ScoreData __swiftcall ScoreData.init(personalizationScore:postPolicyPersonalizationScore:)(Swift::Float personalizationScore, Swift::Float postPolicyPersonalizationScore)
{
  *v2 = personalizationScore;
  v2[1] = postPolicyPersonalizationScore;
  result.postPolicyPersonalizationScore = postPolicyPersonalizationScore;
  result.personalizationScore = personalizationScore;
  return result;
}

unint64_t sub_217B86960()
{
  if (*v0)
  {
    result = 0xD00000000000001ELL;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_217B869A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000217DCE8E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000217DCE900 == a2)
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

uint64_t sub_217B86A84(uint64_t a1)
{
  v2 = sub_217B86C70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B86AC0(uint64_t a1)
{
  v2 = sub_217B86C70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScoreData.encode(to:)(void *a1)
{
  sub_217B86E7C(0, &qword_2811BC4C8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v14[-v8];
  v11 = *v1;
  v10 = v1[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B86C70();
  sub_217D89E7C();
  v14[15] = 0;
  sub_217D89C9C();
  if (!v2)
  {
    v14[14] = 1;
    sub_217D89C9C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217B86C70()
{
  result = qword_2811BD0B8;
  if (!qword_2811BD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0B8);
  }

  return result;
}

uint64_t ScoreData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217B86E7C(0, &qword_2811BC8C8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B86C70();
  sub_217D89E5C();
  if (!v2)
  {
    v19 = 0;
    sub_217D89BBC();
    v13 = v12;
    v18 = 1;
    sub_217D89BBC();
    v16 = v15;
    (*(v7 + 8))(v10, v6);
    *a2 = v13;
    a2[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B86E7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B86C70();
    v7 = a3(a1, &type metadata for ScoreData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B86EE4()
{
  result = qword_2811BD098;
  if (!qword_2811BD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD098);
  }

  return result;
}

unint64_t sub_217B86F3C()
{
  result = qword_2811BD0A0;
  if (!qword_2811BD0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScoreData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScoreData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_217B87038()
{
  result = qword_27CBA0A30;
  if (!qword_27CBA0A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A30);
  }

  return result;
}

unint64_t sub_217B87090()
{
  result = qword_2811BD0A8;
  if (!qword_2811BD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0A8);
  }

  return result;
}

unint64_t sub_217B870E8()
{
  result = qword_2811BD0B0;
  if (!qword_2811BD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0B0);
  }

  return result;
}

NewsAnalytics::FollowingType_optional __swiftcall FollowingType.init(rawValue:)(Swift::String rawValue)
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

unint64_t FollowingType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6E69776F6C6C6F66;
  if (v1 != 4)
  {
    v3 = 0xD000000000000017;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0xD000000000000016;
  if (v1 == 1)
  {
    v4 = 0x6E69776F6C6C6F66;
  }

  if (*v0)
  {
    v2 = v4;
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

unint64_t sub_217B87278()
{
  result = qword_27CBA0A38;
  if (!qword_27CBA0A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A38);
  }

  return result;
}

uint64_t sub_217B872D4()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

void sub_217B873EC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0x8000000217DCAFE0;
  v6 = 0xEF6573776F724267;
  v7 = 0x6E69776F6C6C6F66;
  if (v2 != 4)
  {
    v7 = 0xD000000000000017;
    v6 = 0x8000000217DCB010;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0xE900000000000067;
  v9 = 0xD000000000000016;
  if (v2 == 1)
  {
    v9 = 0x6E69776F6C6C6F66;
  }

  else
  {
    v8 = 0x8000000217DCAFC0;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_217B87580()
{
  result = qword_2811C72B8;
  if (!qword_2811C72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C72B8);
  }

  return result;
}

NewsAnalytics::UserType_optional __swiftcall UserType.init(rawValue:)(Swift::String rawValue)
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

uint64_t UserType.rawValue.getter()
{
  v1 = 7824750;
  if (*v0 != 1)
  {
    v1 = 0x6E696E7275746572;
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

uint64_t sub_217B87688(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7824750;
  if (v2 != 1)
  {
    v4 = 0x6E696E7275746572;
    v3 = 0xE900000000000067;
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

  v7 = 0xE300000000000000;
  v8 = 7824750;
  if (*a2 != 1)
  {
    v8 = 0x6E696E7275746572;
    v7 = 0xE900000000000067;
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

unint64_t sub_217B87788()
{
  result = qword_27CBA0A40;
  if (!qword_27CBA0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A40);
  }

  return result;
}

uint64_t sub_217B877DC()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B8787C()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217B87908()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B87A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B63616264656566 && a2 == 0xEC00000065707954)
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

uint64_t sub_217B87B18(uint64_t a1)
{
  v2 = sub_217B87CEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B87B54(uint64_t a1)
{
  v2 = sub_217B87CEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleFeedbackData.encode(to:)(void *a1)
{
  sub_217B87F2C(0, &qword_27CBA0A48, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B87CEC();
  sub_217D89E7C();
  v13 = v9;
  sub_217B87D40();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B87CEC()
{
  result = qword_27CBA0A50;
  if (!qword_27CBA0A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A50);
  }

  return result;
}

unint64_t sub_217B87D40()
{
  result = qword_27CBA0A58;
  if (!qword_27CBA0A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A58);
  }

  return result;
}

uint64_t ArticleFeedbackData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B87F2C(0, &qword_27CBA0A60, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B87CEC();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B87F90();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B87F2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B87CEC();
    v7 = a3(a1, &type metadata for ArticleFeedbackData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B87F90()
{
  result = qword_27CBA0A68;
  if (!qword_27CBA0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A68);
  }

  return result;
}

unint64_t sub_217B87FE8()
{
  result = qword_27CBA0A70;
  if (!qword_27CBA0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A70);
  }

  return result;
}

unint64_t sub_217B88040()
{
  result = qword_27CBA0A78;
  if (!qword_27CBA0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A78);
  }

  return result;
}

unint64_t sub_217B880E8()
{
  result = qword_27CBA0A80;
  if (!qword_27CBA0A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A80);
  }

  return result;
}

unint64_t sub_217B88140()
{
  result = qword_27CBA0A88;
  if (!qword_27CBA0A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A88);
  }

  return result;
}

unint64_t sub_217B88198()
{
  result = qword_27CBA0A90;
  if (!qword_27CBA0A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A90);
  }

  return result;
}

__n128 HeadlineScoringData.sortingScoreDistribution.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 57) = *(v1 + 57);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 HeadlineScoringData.sortingScoreDistribution.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v2;
  *(v1 + 57) = *(a1 + 57);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

__n128 HeadlineScoringData.agedPersonalizationScoreDistribution.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  *(a1 + 32) = *(v1 + 112);
  *(a1 + 48) = v2;
  *(a1 + 57) = *(v1 + 137);
  result = *(v1 + 96);
  *a1 = *(v1 + 80);
  *(a1 + 16) = result;
  return result;
}

__n128 HeadlineScoringData.agedPersonalizationScoreDistribution.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 112) = *(a1 + 32);
  *(v1 + 128) = v2;
  *(v1 + 137) = *(a1 + 57);
  result = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = result;
  return result;
}

__n128 HeadlineScoringData.tabiScoreDistribution.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  *(a1 + 32) = *(v1 + 192);
  *(a1 + 48) = v2;
  *(a1 + 57) = *(v1 + 217);
  result = *(v1 + 176);
  *a1 = *(v1 + 160);
  *(a1 + 16) = result;
  return result;
}

__n128 HeadlineScoringData.tabiScoreDistribution.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 192) = *(a1 + 32);
  *(v1 + 208) = v2;
  *(v1 + 217) = *(a1 + 57);
  result = *(a1 + 16);
  *(v1 + 160) = *a1;
  *(v1 + 176) = result;
  return result;
}

__n128 HeadlineScoringData.embeddingScoreDistribution.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 288);
  *(a1 + 32) = *(v1 + 272);
  *(a1 + 48) = v2;
  v3 = *(v1 + 256);
  *a1 = *(v1 + 240);
  *(a1 + 16) = v3;
  result = *(v1 + 297);
  *(a1 + 57) = result;
  return result;
}

__n128 HeadlineScoringData.embeddingScoreDistribution.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 272) = *(a1 + 32);
  *(v1 + 288) = v2;
  *(v1 + 297) = *(a1 + 57);
  result = *(a1 + 16);
  *(v1 + 240) = *a1;
  *(v1 + 256) = result;
  return result;
}

__n128 HeadlineScoringData.clientScoreDistribution.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 368);
  *(a1 + 32) = *(v1 + 352);
  *(a1 + 48) = v2;
  v3 = *(v1 + 336);
  *a1 = *(v1 + 320);
  *(a1 + 16) = v3;
  result = *(v1 + 377);
  *(a1 + 57) = result;
  return result;
}

__n128 HeadlineScoringData.clientScoreDistribution.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 352) = *(a1 + 32);
  *(v1 + 368) = v2;
  *(v1 + 377) = *(a1 + 57);
  result = *(a1 + 16);
  *(v1 + 320) = *a1;
  *(v1 + 336) = result;
  return result;
}

void *HeadlineScoringData.init(sortingScoreDistribution:agedPersonalizationScoreDistribution:tabiScoreDistribution:embeddingScoreDistribution:clientScoreDistribution:context:headlineCount:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, char *a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v10 = a1[3];
  v22[2] = a1[2];
  v22[3] = v10;
  *(&v22[3] + 9) = *(a1 + 57);
  v11 = a1[1];
  v22[0] = *a1;
  v22[1] = v11;
  v12 = a2[3];
  v22[7] = a2[2];
  v22[8] = v12;
  *(&v22[8] + 9) = *(a2 + 57);
  v13 = a2[1];
  v22[5] = *a2;
  v22[6] = v13;
  v14 = a3[3];
  v22[12] = a3[2];
  v22[13] = v14;
  *(&v22[13] + 9) = *(a3 + 57);
  v15 = a3[1];
  v22[10] = *a3;
  v22[11] = v15;
  *(&v22[18] + 9) = *(a4 + 57);
  v16 = a4[3];
  v22[17] = a4[2];
  v22[18] = v16;
  v17 = a4[1];
  v22[15] = *a4;
  v22[16] = v17;
  *(&v22[23] + 9) = *(a5 + 57);
  v18 = a5[3];
  v22[22] = a5[2];
  v22[23] = v18;
  v19 = a5[1];
  v22[20] = *a5;
  v22[21] = v19;
  v20 = *a6;
  result = memcpy(a8, v22, 0x189uLL);
  *(a8 + 393) = v20;
  *(a8 + 396) = a7;
  return result;
}

unint64_t sub_217B884F8()
{
  v1 = *v0;
  v2 = 0x747865746E6F63;
  if (v1 != 5)
  {
    v2 = 0x656E696C64616568;
  }

  v3 = 0xD00000000000001ALL;
  if (v1 != 3)
  {
    v3 = 0xD000000000000017;
  }

  if (*v0 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000024;
  if (v1 != 1)
  {
    v4 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217B885EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B89184(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B88614(uint64_t a1)
{
  v2 = sub_217B88A14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B88650(uint64_t a1)
{
  v2 = sub_217B88A14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HeadlineScoringData.encode(to:)(void *a1)
{
  v2 = v1;
  sub_217B88E74(0, &qword_2811BC680, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v27 - v8;
  v10 = v2[7];
  v37[0] = v2[8];
  *(v37 + 9) = *(v2 + 137);
  v11 = v2[5];
  v35 = v2[6];
  v36 = v10;
  v34 = v11;
  v12 = v2[13];
  v40 = v2[12];
  v41[0] = v12;
  *(v41 + 9) = *(v2 + 217);
  v13 = v2[11];
  v38 = v2[10];
  v39 = v13;
  v14 = v2[18];
  v44 = v2[17];
  v45[0] = v14;
  *(v45 + 9) = *(v2 + 297);
  v15 = v2[16];
  v42 = v2[15];
  v43 = v15;
  v16 = v2[22];
  v17 = v2[23];
  v18 = v2[20];
  v47 = v2[21];
  v48 = v16;
  v49[0] = v17;
  *(v49 + 9) = *(v2 + 377);
  v46 = v18;
  v19 = *(v2 + 393);
  v27[1] = *(v2 + 99);
  v28 = v19;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B88A14();
  sub_217D89E7C();
  v21 = v2[3];
  v32 = v2[2];
  v33[0] = v21;
  *(v33 + 9) = *(v2 + 57);
  v22 = v2[1];
  v30 = *v2;
  v31 = v22;
  v29 = 0;
  sub_217B86514();
  v23 = v9;
  v24 = v50;
  sub_217D89CAC();
  if (v24)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v26 = v28;
  v32 = v36;
  v33[0] = v37[0];
  *(v33 + 9) = *(v37 + 9);
  v30 = v34;
  v31 = v35;
  v29 = 1;
  sub_217D89CAC();
  v32 = v40;
  v33[0] = v41[0];
  *(v33 + 9) = *(v41 + 9);
  v30 = v38;
  v31 = v39;
  v29 = 2;
  sub_217D89CAC();
  v32 = v44;
  v33[0] = v45[0];
  *(v33 + 9) = *(v45 + 9);
  v30 = v42;
  v31 = v43;
  v29 = 3;
  sub_217D89CAC();
  v32 = v48;
  v33[0] = v49[0];
  *(v33 + 9) = *(v49 + 9);
  v30 = v46;
  v31 = v47;
  v29 = 4;
  sub_217D89CAC();
  LOBYTE(v30) = v26;
  v29 = 5;
  sub_217B88A68();
  sub_217D89CAC();
  LOBYTE(v30) = 6;
  sub_217D89CBC();
  return (*(v6 + 8))(v23, 0);
}

unint64_t sub_217B88A14()
{
  result = qword_2811C2A28;
  if (!qword_2811C2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A28);
  }

  return result;
}

unint64_t sub_217B88A68()
{
  result = qword_2811C0498;
  if (!qword_2811C0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0498);
  }

  return result;
}

uint64_t HeadlineScoringData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217B88E74(0, &qword_27CBA0A98, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_217B88A14();
  sub_217D89E5C();
  if (!v2)
  {
    v16 = v7;
    v39 = 0;
    sub_217B864BC();
    sub_217D89BCC();
    v44[2] = v42;
    v44[3] = v43[0];
    *(&v44[3] + 9) = *(v43 + 9);
    v44[0] = v40;
    v44[1] = v41;
    v34 = 1;
    sub_217D89BCC();
    v44[7] = v37;
    v44[8] = *v38;
    *(&v44[8] + 9) = *&v38[9];
    v44[5] = v35;
    v44[6] = v36;
    v29 = 2;
    sub_217D89BCC();
    v44[11] = v31;
    v44[12] = v32;
    v44[13] = *v33;
    *(&v44[13] + 9) = *&v33[9];
    v44[10] = v30;
    v24 = 3;
    sub_217D89BCC();
    *(&v44[18] + 9) = *&v28[9];
    v44[17] = v27;
    v44[18] = *v28;
    v44[15] = v25;
    v44[16] = v26;
    v19 = 4;
    sub_217D89BCC();
    *(&v44[23] + 9) = *&v23[9];
    v44[22] = v22;
    v44[23] = *v23;
    v44[20] = v20;
    v44[21] = v21;
    v17 = 5;
    sub_217B88ED8();
    sub_217D89BCC();
    v14 = v18;
    v18 = 6;
    v15 = sub_217D89BDC();
    (*(v16 + 8))(v10, v6);
    memcpy(a2, v44, 0x189uLL);
    *(a2 + 393) = v14;
    *(a2 + 396) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(v45);
}

void sub_217B88E74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B88A14();
    v7 = a3(a1, &type metadata for HeadlineScoringData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B88ED8()
{
  result = qword_27CBA0AA0;
  if (!qword_27CBA0AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0AA0);
  }

  return result;
}

uint64_t sub_217B88F6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 400))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 393);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_217B88FB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 392) = 0;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 400) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 400) = 0;
    }

    if (a2)
    {
      *(result + 393) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_217B89080()
{
  result = qword_27CBA0AA8;
  if (!qword_27CBA0AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0AA8);
  }

  return result;
}

unint64_t sub_217B890D8()
{
  result = qword_2811C2A18;
  if (!qword_2811C2A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A18);
  }

  return result;
}

unint64_t sub_217B89130()
{
  result = qword_2811C2A20;
  if (!qword_2811C2A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A20);
  }

  return result;
}

uint64_t sub_217B89184(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000217DCE920 == a2;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000217DCE940 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DCE970 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCE990 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DCE9B0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656E696C64616568 && a2 == 0xED0000746E756F43)
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

NewsAnalytics::SessionStartSource_optional __swiftcall SessionStartSource.init(rawValue:)(Swift::String rawValue)
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

uint64_t SessionStartSource.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6C616E7265747865;
  if (*v0 != 2)
  {
    v2 = 0x6163696669746F6ELL;
  }

  if (*v0)
  {
    v1 = 0x6469577961646F74;
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

unint64_t sub_217B894D4()
{
  result = qword_27CBA0AB0;
  if (!qword_27CBA0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0AB0);
  }

  return result;
}

uint64_t sub_217B89528()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B89604()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217B896CC()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B897B0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEC0000006B6E694CLL;
  v5 = 0x6C616E7265747865;
  if (*v1 != 2)
  {
    v5 = 0x6163696669746F6ELL;
    v4 = 0xEC0000006E6F6974;
  }

  if (*v1)
  {
    v3 = 0x6469577961646F74;
    v2 = 0xEB00000000746567;
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

uint64_t IssueViewData.issueViewingSessionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IssueViewData.issueViewingSessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217B8990C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000217DCE9D0 == a2)
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

uint64_t sub_217B899A0(uint64_t a1)
{
  v2 = sub_217B89B64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B899DC(uint64_t a1)
{
  v2 = sub_217B89B64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IssueViewData.encode(to:)(void *a1)
{
  sub_217B89D3C(0, &qword_2811BC7C0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B89B64();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B89B64()
{
  result = qword_2811C71D0[0];
  if (!qword_2811C71D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C71D0);
  }

  return result;
}

uint64_t IssueViewData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217B89D3C(0, &qword_2811BCAD8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B89B64();
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

void sub_217B89D3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B89B64();
    v7 = a3(a1, &type metadata for IssueViewData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B89DC0(void *a1)
{
  sub_217B89D3C(0, &qword_2811BC7C0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B89B64();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B89F30()
{
  result = qword_27CBA0AB8;
  if (!qword_27CBA0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0AB8);
  }

  return result;
}

unint64_t sub_217B89F88()
{
  result = qword_2811C71C0;
  if (!qword_2811C71C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C71C0);
  }

  return result;
}

unint64_t sub_217B89FE0()
{
  result = qword_2811C71C8;
  if (!qword_2811C71C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C71C8);
  }

  return result;
}

uint64_t sub_217B8A0FC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0AF0);
  __swift_project_value_buffer(v0, qword_27CBA0AF0);
  return sub_217D8866C();
}

uint64_t GameCenterExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t GameCenterExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GameCenterExposureEvent(0) + 20);
  sub_217B8A2C8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B8A2C8()
{
  if (!qword_2811C8510)
  {
    sub_217A54D08();
    sub_217A55B98();
    v0 = sub_217D8829C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8510);
    }
  }
}

uint64_t GameCenterExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GameCenterExposureEvent(0) + 20);
  sub_217B8A2C8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GameCenterExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for GameCenterExposureEvent(0) + 20);
  sub_217B8A2C8();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t GameCenterExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GameCenterExposureEvent.Model(0) + 20));
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

__n128 GameCenterExposureEvent.Model.init(eventData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_217D8899C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for GameCenterExposureEvent.Model(0) + 20);
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  result = *(a2 + 32);
  *(v7 + 32) = result;
  *(v7 + 48) = *(a2 + 48);
  return result;
}

unint64_t sub_217B8A5EC()
{
  if (*v0)
  {
    result = 0xD000000000000021;
  }

  else
  {
    result = 0x746144746E657665;
  }

  *v0;
  return result;
}

uint64_t sub_217B8A630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
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

uint64_t sub_217B8A71C(uint64_t a1)
{
  v2 = sub_217B8A9C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B8A758(uint64_t a1)
{
  v2 = sub_217B8A9C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameCenterExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B8AD84(0, &qword_27CBA0B08, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8A9C4();
  sub_217D89E7C();
  v28 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = (v3 + *(type metadata accessor for GameCenterExposureEvent.Model(0) + 20));
    v13 = v12[2];
    v14 = *v12;
    v15 = *v12;
    v24 = v12[1];
    v25 = v13;
    v23 = v14;
    v26 = *(v12 + 48);
    v19 = v15;
    v20 = v24;
    v21 = v12[2];
    v22 = *(v12 + 48);
    v27 = 1;
    sub_217ACC004(&v23, v17);
    sub_217A55B98();
    sub_217D89CAC();
    v17[0] = v19;
    v17[1] = v20;
    v17[2] = v21;
    v18 = v22;
    sub_217ACC69C(v17);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B8A9C4()
{
  result = qword_27CBA0B10;
  if (!qword_27CBA0B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0B10);
  }

  return result;
}

uint64_t GameCenterExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_217D8899C();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B8AD84(0, &qword_27CBA0B18, MEMORY[0x277D844C8]);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = type metadata accessor for GameCenterExposureEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8A9C4();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  LOBYTE(v32) = 0;
  sub_217A602A0(&qword_2811C8408);
  v19 = v31;
  v20 = v29;
  sub_217D89BCC();
  (*(v18 + 32))(v17, v6, v19);
  v36 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v30 + 8))(v11, v20);
  v21 = v27;
  v22 = v17 + *(v26 + 20);
  v23 = v33;
  *v22 = v32;
  *(v22 + 16) = v23;
  *(v22 + 32) = v34;
  *(v22 + 48) = v35;
  sub_217B8ADE8(v17, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B8AE4C(v17);
}

void sub_217B8AD84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B8A9C4();
    v7 = a3(a1, &type metadata for GameCenterExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B8ADE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameCenterExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B8AE4C(uint64_t a1)
{
  v2 = type metadata accessor for GameCenterExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B8AF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217B8A2C8();
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_217B8B068()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217B8A2C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_217B8B114()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217B8B19C()
{
  result = qword_27CBA0B40;
  if (!qword_27CBA0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0B40);
  }

  return result;
}

unint64_t sub_217B8B1F4()
{
  result = qword_27CBA0B48;
  if (!qword_27CBA0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0B48);
  }

  return result;
}

unint64_t sub_217B8B24C()
{
  result = qword_27CBA0B50;
  if (!qword_27CBA0B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0B50);
  }

  return result;
}

uint64_t sub_217B8B368()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0B88);
  __swift_project_value_buffer(v0, qword_27CBA0B88);
  return sub_217D8866C();
}

uint64_t HeartbeatEvent.heartbeatData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_217B8B460();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_217B8B460()
{
  if (!qword_27CBA0BA0)
  {
    type metadata accessor for HeartbeatData();
    sub_217A5AE10(&qword_27CBA0BA8);
    sub_217A5AE10(&qword_2811C7278);
    v0 = sub_217D8829C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA0BA0);
    }
  }
}

uint64_t HeartbeatEvent.heartbeatData.setter(uint64_t a1)
{
  sub_217B8B460();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HeartbeatEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217B8B460();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_217B8B618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartbeatData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B8B6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6165627472616568 && a2 == 0xED00006174614474)
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

uint64_t sub_217B8B73C(uint64_t a1)
{
  v2 = sub_217A5AD0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B8B778(uint64_t a1)
{
  v2 = sub_217A5AD0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HeartbeatEvent.Model.encode(to:)(void *a1)
{
  sub_217A5AB34(0, &qword_2811BC790, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A5AD0C();
  sub_217D89E7C();
  type metadata accessor for HeartbeatData();
  sub_217A5AE10(&qword_2811C7278);
  sub_217D89CAC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t HeartbeatEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for HeartbeatData();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v22 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A5AB34(0, &qword_27CBA0BB0, MEMORY[0x277D844C8]);
  v8 = v7;
  v21 = *(v7 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = type metadata accessor for HeartbeatEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A5AD0C();
  sub_217D89E5C();
  if (!v2)
  {
    v17 = v21;
    sub_217A5AE10(&qword_27CBA0BA8);
    v18 = v22;
    sub_217D89BCC();
    (*(v17 + 8))(v11, v8);
    sub_217B8BBB0(v18, v15, type metadata accessor for HeartbeatData);
    sub_217B8BBB0(v15, v20, type metadata accessor for HeartbeatEvent.Model);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217B8BBB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_217B8BCD8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217B8B460();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

unint64_t sub_217B8BECC()
{
  result = qword_27CBA0BC8;
  if (!qword_27CBA0BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0BC8);
  }

  return result;
}

uint64_t FeedJournalEntryData.init(groupResults:duration:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t FeedJournalEntryData.groupResults.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_217B8BFB4()
{
  if (*v0)
  {
    result = 0x6E6F697461727564;
  }

  else
  {
    result = 0x73655270756F7267;
  }

  *v0;
  return result;
}

uint64_t sub_217B8BFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73655270756F7267 && a2 == 0xEC00000073746C75;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
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

uint64_t sub_217B8C0D8(uint64_t a1)
{
  v2 = sub_217B8C338();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B8C114(uint64_t a1)
{
  v2 = sub_217B8C338();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedJournalEntryData.encode(to:)(void *a1)
{
  sub_217B8C668(0, &qword_2811BC658, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v13 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8C338();

  sub_217D89E7C();
  v16 = v10;
  v15 = 0;
  sub_217B8C38C();
  sub_217B8C6CC(&qword_2811BCDA8, sub_217B8C3DC);
  sub_217D89CAC();

  if (!v2)
  {
    v14 = 1;
    sub_217D89CCC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217B8C338()
{
  result = qword_2811C2110[0];
  if (!qword_2811C2110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C2110);
  }

  return result;
}

void sub_217B8C38C()
{
  if (!qword_2811BCDB0)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCDB0);
    }
  }
}

unint64_t sub_217B8C3DC()
{
  result = qword_2811BF100;
  if (!qword_2811BF100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF100);
  }

  return result;
}

uint64_t FeedJournalEntryData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217B8C668(0, &qword_27CBA0BD0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8C338();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_217B8C38C();
  v15[15] = 0;
  sub_217B8C6CC(&qword_27CBA0BD8, sub_217B8C738);
  sub_217D89BCC();
  v12 = v16;
  v15[14] = 1;
  v13 = sub_217D89BEC();
  (*(v7 + 8))(v10, v6);
  *a2 = v12;
  a2[1] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B8C668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B8C338();
    v7 = a3(a1, &type metadata for FeedJournalEntryData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B8C6CC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_217B8C38C();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217B8C738()
{
  result = qword_27CBA0BE0;
  if (!qword_27CBA0BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0BE0);
  }

  return result;
}

unint64_t sub_217B8C790()
{
  result = qword_2811C20F0;
  if (!qword_2811C20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C20F0);
  }

  return result;
}

unint64_t sub_217B8C7E8()
{
  result = qword_2811C20F8;
  if (!qword_2811C20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C20F8);
  }

  return result;
}

uint64_t sub_217B8C86C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_217B8C8B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217B8C914()
{
  result = qword_27CBA0BE8;
  if (!qword_27CBA0BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0BE8);
  }

  return result;
}

unint64_t sub_217B8C96C()
{
  result = qword_2811C2100;
  if (!qword_2811C2100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2100);
  }

  return result;
}

unint64_t sub_217B8C9C4()
{
  result = qword_2811C2108;
  if (!qword_2811C2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2108);
  }

  return result;
}

uint64_t sub_217B8CA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701080931 && a2 == 0xE400000000000000)
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

uint64_t sub_217B8CAF0(uint64_t a1)
{
  v2 = sub_217B8CCB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B8CB2C(uint64_t a1)
{
  v2 = sub_217B8CCB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AMSErrorData.encode(to:)(void *a1)
{
  sub_217B8CE84(0, &qword_27CBA0BF0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8CCB0();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B8CCB0()
{
  result = qword_27CBA0BF8;
  if (!qword_27CBA0BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0BF8);
  }

  return result;
}

uint64_t AMSErrorData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217B8CE84(0, &qword_27CBA0C00, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8CCB0();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89BDC();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B8CE84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B8CCB0();
    v7 = a3(a1, &type metadata for AMSErrorData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B8CEEC()
{
  result = qword_2811C7B28;
  if (!qword_2811C7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7B28);
  }

  return result;
}

unint64_t sub_217B8CF44()
{
  result = qword_2811C7B30;
  if (!qword_2811C7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7B30);
  }

  return result;
}

uint64_t sub_217B8CFB0(void *a1)
{
  sub_217B8CE84(0, &qword_27CBA0BF0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8CCB0();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B8D11C()
{
  result = qword_27CBA0C08;
  if (!qword_27CBA0C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0C08);
  }

  return result;
}

unint64_t sub_217B8D174()
{
  result = qword_27CBA0C10;
  if (!qword_27CBA0C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0C10);
  }

  return result;
}

unint64_t sub_217B8D1CC()
{
  result = qword_27CBA0C18;
  if (!qword_27CBA0C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0C18);
  }

  return result;
}

uint64_t sub_217B8D2E8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0C50);
  __swift_project_value_buffer(v0, qword_27CBA0C50);
  return sub_217D8866C();
}

uint64_t FeedEmptyEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FeedEmptyEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedEmptyEvent(0) + 20);
  sub_217A604D4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedEmptyEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedEmptyEvent(0) + 20);
  sub_217A604D4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedEmptyEvent.feedConfigData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedEmptyEvent(0) + 24);
  sub_217A604D4(0, &qword_2811C8728, sub_217A60838, sub_217A6088C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedEmptyEvent.feedConfigData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedEmptyEvent(0) + 24);
  sub_217A604D4(0, &qword_2811C8728, sub_217A60838, sub_217A6088C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedEmptyEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedEmptyEvent(0) + 28);
  sub_217A604D4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedEmptyEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedEmptyEvent(0) + 28);
  sub_217A604D4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedEmptyEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FeedEmptyEvent(0);
  v5 = v4[5];
  sub_217A604D4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A604D4(0, &qword_2811C8728, sub_217A60838, sub_217A6088C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A604D4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t FeedEmptyEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedEmptyEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t FeedEmptyEvent.Model.feedConfigData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedEmptyEvent.Model(0) + 24);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v6;
}

uint64_t FeedEmptyEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedEmptyEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 FeedEmptyEvent.Model.init(eventData:feedData:feedConfigData:viewData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = *a3;
  v11 = a3[1];
  v12 = *(a3 + 16);
  v21 = *(a3 + 3);
  v13 = a3[5];
  v14 = *a4;
  v23 = a4[1];
  v22 = *(a4 + 8);
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a5, a1, v15);
  v16 = type metadata accessor for FeedEmptyEvent.Model(0);
  v17 = a5 + v16[5];
  *v17 = v7;
  *(v17 + 8) = v8;
  *(v17 + 16) = v9;
  v18 = a5 + v16[6];
  *v18 = v10;
  *(v18 + 8) = v11;
  *(v18 + 16) = v12;
  result = v21;
  *(v18 + 24) = v21;
  *(v18 + 40) = v13;
  v20 = a5 + v16[7];
  *v20 = v14;
  *(v20 + 8) = v23;
  *(v20 + 16) = v22;
  return result;
}

uint64_t sub_217B8DD70()
{
  v1 = 0x746144746E657665;
  v2 = 0x666E6F4364656566;
  if (*v0 != 2)
  {
    v2 = 0x6174614477656976;
  }

  if (*v0)
  {
    v1 = 0x6174614464656566;
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

uint64_t sub_217B8DDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B8ED78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B8DE20(uint64_t a1)
{
  v2 = sub_217B8E168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B8DE5C(uint64_t a1)
{
  v2 = sub_217B8E168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedEmptyEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B8E648(0, &qword_27CBA0C68, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v24 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8E168();
  sub_217D89E7C();
  LOBYTE(v25) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for FeedEmptyEvent.Model(0);
    v13 = v3 + v12[5];
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    LOBYTE(v25) = *v13;
    v26 = v14;
    v27 = v15;
    v30 = 1;
    sub_217A5BA2C();

    sub_217D89CAC();

    v16 = (v3 + v12[6]);
    v17 = v16[1];
    v18 = *(v16 + 16);
    v19 = v16[5];
    v25 = *v16;
    v26 = v17;
    LOBYTE(v27) = v18;
    v28 = *(v16 + 3);
    v29 = v19;
    v30 = 2;
    sub_217A6088C();

    sub_217D89CAC();

    v20 = (v3 + v12[7]);
    v21 = *v20;
    v22 = v20[1];
    LOWORD(v20) = *(v20 + 8);
    v25 = v21;
    v26 = v22;
    LOWORD(v27) = v20;
    v30 = 3;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B8E168()
{
  result = qword_27CBA0C70;
  if (!qword_27CBA0C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0C70);
  }

  return result;
}

uint64_t FeedEmptyEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_217D8899C();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B8E648(0, &qword_27CBA0C78, MEMORY[0x277D844C8]);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for FeedEmptyEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8E168();
  v31 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v27;
  v32[0] = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v28;
  sub_217D89BCC();
  (*(v16 + 32))(v14, v17, v4);
  v35 = 1;
  sub_217A5B978();
  sub_217D89BCC();
  v18 = &v14[v11[5]];
  *v18 = v32[0];
  *(v18 + 8) = *&v32[8];
  v35 = 2;
  sub_217A60838();
  sub_217D89BCC();
  v19 = v32[16];
  v20 = v34;
  v21 = &v14[v11[6]];
  *v21 = *v32;
  v21[16] = v19;
  *(v21 + 24) = v33;
  *(v21 + 5) = v20;
  v35 = 3;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v29 + 8))(v31, v30);
  v22 = *&v32[8];
  v23 = *&v32[16];
  v24 = &v14[v11[7]];
  *v24 = *v32;
  *(v24 + 1) = v22;
  *(v24 + 8) = v23;
  sub_217B8E6AC(v14, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B8E710(v14);
}

void sub_217B8E648(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B8E168();
    v7 = a3(a1, &type metadata for FeedEmptyEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B8E6AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedEmptyEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B8E710(uint64_t a1)
{
  v2 = type metadata accessor for FeedEmptyEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B8E844@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  sub_217A604D4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217B8EA54()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A604D4(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
    if (v1 <= 0x3F)
    {
      sub_217A604D4(319, &qword_2811C8728, sub_217A60838, sub_217A6088C);
      if (v2 <= 0x3F)
      {
        sub_217A604D4(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217B8EBD8()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217B8EC74()
{
  result = qword_27CBA0CA0;
  if (!qword_27CBA0CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0CA0);
  }

  return result;
}

unint64_t sub_217B8ECCC()
{
  result = qword_27CBA0CA8;
  if (!qword_27CBA0CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0CA8);
  }

  return result;
}

unint64_t sub_217B8ED24()
{
  result = qword_27CBA0CB0;
  if (!qword_27CBA0CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0CB0);
  }

  return result;
}

uint64_t sub_217B8ED78(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000)
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

double FCFeedPersonalizedItemScoreProfile.scienceData.getter@<D0>(uint64_t a1@<X8>)
{
  [v1 agedPersonalizationScore];
  v50 = v3;
  [v1 autoSubscribeCtr];
  v49 = v4;
  [v1 computedGlobalScoreCoefficient];
  v48 = v5;
  [v1 conversionMultiplier];
  v47 = v6;
  [v1 dampenedStaticMultiplier];
  v46 = v7;
  [v1 paidNonpaidSubscriptionCtr];
  v45 = v8;
  [v1 personalizationScore];
  v44 = v9;
  [v1 qualitativeMultiplier];
  v43 = v10;
  [v1 rawPersonalizationScore];
  v42 = v11;
  [v1 staticMultiplier];
  v41 = v12;
  [v1 subscribedChannelCtr];
  v40 = v13;
  [v1 userFeedbackScore];
  v39 = v14;
  [v1 rawUserFeedbackScore];
  v38 = v15;
  v16 = sub_217B8F26C(v1);
  [v1 tabiScore];
  v18 = round(v17 * 10000.0) / 10000.0;
  v19 = [v1 coefficients];
  [v19 conversionCoefficient];
  v21 = v20;

  v22 = round(v21 * 100.0) / 100.0;
  [v1 multiplier];
  v24 = round(v23 * 1000.0) / 1000.0;
  v25 = [v1 coefficients];
  [v25 halfLifeCoefficient];
  v27 = v26;

  v28 = round(v27 * 100.0) / 100.0;
  [v1 serverScoreDemocratizationFactor];
  v30 = round(v29 * 100.0) / 100.0;
  v31 = [v1 coefficients];
  [v31 autofavoritedScoreCoefficient];
  v33 = v32;

  [v1 nicheContentMultiplier];
  v35 = round(v34 * 1000.0) / 1000.0;
  [v1 contentTriggerDampener];
  *a1 = v50;
  *(a1 + 8) = v49;
  *(a1 + 16) = v48;
  *(a1 + 24) = v47;
  *(a1 + 32) = v46;
  *(a1 + 40) = 0;
  *(a1 + 48) = v45;
  *(a1 + 56) = v44;
  *(a1 + 64) = v43;
  *(a1 + 72) = v42;
  *(a1 + 80) = v41;
  *(a1 + 88) = v40;
  *(a1 + 96) = v39;
  *(a1 + 104) = v38;
  *(a1 + 112) = v16;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  result = round(v36 * 100.0) / 100.0;
  *(a1 + 136) = v18;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = v22;
  *(a1 + 176) = 0;
  *(a1 + 184) = v24;
  *(a1 + 192) = 0;
  *(a1 + 200) = v28;
  *(a1 + 208) = 0;
  *(a1 + 216) = v30;
  *(a1 + 224) = 0;
  *(a1 + 232) = round(v33 * 100.0) / 100.0;
  *(a1 + 240) = 0;
  *(a1 + 248) = v35;
  *(a1 + 256) = 0;
  *(a1 + 264) = result;
  *(a1 + 272) = 0;
  return result;
}

char *sub_217B8F26C(void *a1)
{
  v2 = [a1 cohortMemberships];
  sub_217B8F4A8();
  v3 = sub_217D896EC();

  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v21 = MEMORY[0x277D84F90];
      result = sub_217B2C784(0, v4 & ~(v4 >> 63), 0);
      if (v4 < 0)
      {
        break;
      }

      v6 = 0;
      v7 = v21;
      v20 = v3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x21CEAD080](v6, v3);
        }

        else
        {
          if (v6 >= *(v20 + 16))
          {
            goto LABEL_16;
          }

          v9 = *(v3 + 8 * v6 + 32);
        }

        v10 = v9;
        result = [v9 tagID];
        if (!result)
        {
          goto LABEL_21;
        }

        v11 = result;
        v12 = sub_217D8954C();
        v14 = v13;

        [v10 score];
        v16 = v15;

        v18 = *(v21 + 16);
        v17 = *(v21 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_217B2C784((v17 > 1), v18 + 1, 1);
        }

        *(v21 + 16) = v18 + 1;
        v19 = (v21 + 24 * v18);
        v19[4] = v12;
        v19[5] = v14;
        v19[6] = v16;
        ++v6;
        if (v8 == v4)
        {

          return v7;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v4 = sub_217D89AAC();
      if (!v4)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_18:

    return MEMORY[0x277D84F90];
  }

  return result;
}

Swift::Double __swiftcall Double.rounded(to:)(Swift::Int to)
{
  v2 = v1;
  v3 = __exp10(to);
  return round(v3 * v2) / v3;
}

unint64_t sub_217B8F4A8()
{
  result = qword_2811BCC18;
  if (!qword_2811BCC18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811BCC18);
  }

  return result;
}

uint64_t sub_217B8F5BC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0CB8);
  __swift_project_value_buffer(v0, qword_27CBA0CB8);
  return sub_217D8866C();
}

uint64_t JourneyMessageDismissalEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t JourneyMessageDismissalEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageDismissalEvent(0) + 20);
  sub_217A62AF4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageDismissalEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageDismissalEvent(0) + 20);
  sub_217A62AF4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageDismissalEvent.dialogStyleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageDismissalEvent(0) + 24);
  sub_217A62AF4(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageDismissalEvent.dialogStyleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageDismissalEvent(0) + 24);
  sub_217A62AF4(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageDismissalEvent.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageDismissalEvent(0) + 28);
  sub_217A62AF4(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageDismissalEvent.placementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageDismissalEvent(0) + 28);
  sub_217A62AF4(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageDismissalEvent.engagementPlacementOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageDismissalEvent(0) + 32);
  sub_217A62AF4(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageDismissalEvent.engagementPlacementOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageDismissalEvent(0) + 32);
  sub_217A62AF4(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageDismissalEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageDismissalEvent(0) + 36);
  sub_217A62AF4(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageDismissalEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageDismissalEvent(0) + 36);
  sub_217A62AF4(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageDismissalEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for JourneyMessageDismissalEvent(0);
  v5 = v4[5];
  sub_217A62AF4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A62AF4(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A62AF4(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217A62AF4(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217A62AF4(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v12, v15);
}

uint64_t JourneyMessageDismissalEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageDismissalEvent.Model(0) + 20));
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

uint64_t JourneyMessageDismissalEvent.Model.dialogStyleData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JourneyMessageDismissalEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t JourneyMessageDismissalEvent.Model.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JourneyMessageDismissalEvent.Model(0) + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v6;
}

uint64_t JourneyMessageDismissalEvent.Model.engagementPlacementOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JourneyMessageDismissalEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t JourneyMessageDismissalEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageDismissalEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 JourneyMessageDismissalEvent.Model.init(eventData:userBundleSubscriptionContextData:dialogStyleData:placementData:engagementPlacementOriginationData:purchaseData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a3;
  v12 = *a4;
  v13 = a4[1];
  v14 = *a5;
  v15 = *a6;
  v16 = a6[1];
  v26 = *(a6 + 16);
  v17 = sub_217D8899C();
  v24 = *(a4 + 2);
  v25 = *(a4 + 1);
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for JourneyMessageDismissalEvent.Model(0);
  v19 = a7 + v18[5];
  v20 = *(a2 + 16);
  *v19 = *a2;
  *(v19 + 16) = v20;
  *(v19 + 32) = *(a2 + 32);
  *(v19 + 48) = *(a2 + 48);
  *(a7 + v18[6]) = v11;
  v21 = a7 + v18[7];
  *v21 = v12;
  *(v21 + 8) = v13;
  result = v25;
  *(v21 + 16) = v25;
  *(v21 + 32) = v24;
  *(a7 + v18[8]) = v14;
  v23 = a7 + v18[9];
  *v23 = v15;
  *(v23 + 8) = v16;
  *(v23 + 16) = v26;
  return result;
}

uint64_t sub_217B90544()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6E656D6563616C70;
  if (v1 == 4)
  {
    v4 = 0xD000000000000022;
  }

  else
  {
    v4 = 0x6573616863727570;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000021;
  if (v1 != 1)
  {
    v5 = 0x7453676F6C616964;
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

uint64_t sub_217B9062C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B91A18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B90654(uint64_t a1)
{
  v2 = sub_217B90B44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B90690(uint64_t a1)
{
  v2 = sub_217B90B44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JourneyMessageDismissalEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B910FC(0, &qword_27CBA0CD0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B90B44();
  sub_217D89E7C();
  v44 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for JourneyMessageDismissalEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[2];
    v15 = *v13;
    v16 = *v13;
    v41 = v13[1];
    v42 = v14;
    v40 = v15;
    v43 = *(v13 + 48);
    v36 = v16;
    v17 = v13[2];
    v37 = v41;
    v38 = v17;
    v39 = *(v13 + 48);
    v35 = 1;
    sub_217ACC004(&v40, v33);
    sub_217A55B98();
    sub_217D89CAC();
    v33[0] = v36;
    v33[1] = v37;
    v33[2] = v38;
    v34 = v39;
    sub_217ACC69C(v33);
    LOBYTE(v27) = *(v3 + v12[6]);
    v32 = 2;
    sub_217AFEA44();
    sub_217D89CAC();
    v18 = (v3 + v12[7]);
    v19 = v18[1];
    v20 = v18[2];
    v21 = v18[5];
    v27 = *v18;
    v28 = v19;
    v29 = v20;
    v30 = *(v18 + 3);
    v31 = v21;
    v32 = 3;
    sub_217AFEC9C();

    sub_217D89CAC();

    LOBYTE(v27) = *(v3 + v12[8]);
    v32 = 4;
    sub_217AFF0A4();
    sub_217D89C3C();
    v23 = (v3 + v12[9]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v23) = *(v23 + 16);
    v27 = v24;
    v28 = v25;
    LOBYTE(v29) = v23;
    v32 = 5;
    sub_217AFF378();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B90B44()
{
  result = qword_27CBA0CD8;
  if (!qword_27CBA0CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0CD8);
  }

  return result;
}

uint64_t JourneyMessageDismissalEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_217D8899C();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B910FC(0, &qword_27CBA0CE0, MEMORY[0x277D844C8]);
  v8 = *(v7 - 8);
  v36 = v7;
  v37 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for JourneyMessageDismissalEvent.Model(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B90B44();
  v38 = v11;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v17 = v15;
  v18 = v34;
  LOBYTE(v42) = 0;
  sub_217A602A0(&qword_2811C8408);
  v19 = v35;
  v20 = v36;
  sub_217D89BCC();
  (*(v18 + 32))(v17, v19, v4);
  v47 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v21 = v17 + v12[5];
  v22 = v43;
  *v21 = v42;
  *(v21 + 16) = v22;
  *(v21 + 32) = v44;
  *(v21 + 48) = v45;
  v46 = 2;
  sub_217AFE9F0();
  v35 = 0;
  sub_217D89BCC();
  v23 = v32;
  v24 = v37;
  *(v17 + v12[6]) = v39;
  v46 = 3;
  sub_217AFEC48();
  sub_217D89BCC();
  v25 = *(&v39 + 1);
  v26 = v17 + v12[7];
  *v26 = v39;
  *(v26 + 8) = v25;
  v27 = v41;
  *(v26 + 16) = v40;
  *(v26 + 32) = v27;
  v46 = 4;
  sub_217AFF050();
  sub_217D89B5C();
  *(v17 + v12[8]) = v39;
  v46 = 5;
  sub_217AFF324();
  sub_217D89B5C();
  (*(v24 + 8))(v38, v20);
  v28 = v40;
  v29 = v17 + v12[9];
  *v29 = v39;
  *(v29 + 16) = v28;
  sub_217B91160(v17, v33);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_217B911C4(v17);
}

void sub_217B910FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B90B44();
    v7 = a3(a1, &type metadata for JourneyMessageDismissalEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B91160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JourneyMessageDismissalEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B911C4(uint64_t a1)
{
  v2 = type metadata accessor for JourneyMessageDismissalEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B912F8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A62AF4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A62AF4(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A62AF4(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217A62AF4(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217A62AF4(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v13, v16);
}

void sub_217B91604()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A62AF4(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
    if (v1 <= 0x3F)
    {
      sub_217A62AF4(319, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
      if (v2 <= 0x3F)
      {
        sub_217A62AF4(319, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
        if (v3 <= 0x3F)
        {
          sub_217A62AF4(319, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4);
          if (v4 <= 0x3F)
          {
            sub_217A62AF4(319, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
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

void sub_217B91828()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_27CB9F100);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_27CB9F108);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217B91914()
{
  result = qword_27CBA0CF8;
  if (!qword_27CBA0CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0CF8);
  }

  return result;
}

unint64_t sub_217B9196C()
{
  result = qword_27CBA0D00;
  if (!qword_27CBA0D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0D00);
  }

  return result;
}

unint64_t sub_217B919C4()
{
  result = qword_27CBA0D08;
  if (!qword_27CBA0D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0D08);
  }

  return result;
}

uint64_t sub_217B91A18(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x7453676F6C616964 && a2 == 0xEF61746144656C79 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xED00006174614474 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000217DCD720 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144)
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

uint64_t AdPlacementData.placementID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AdPlacementData.placementID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217B91CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656D6563616C70 && a2 == 0xEB00000000444974)
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

uint64_t sub_217B91D80(uint64_t a1)
{
  v2 = sub_217B91F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B91DBC(uint64_t a1)
{
  v2 = sub_217B91F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdPlacementData.encode(to:)(void *a1)
{
  sub_217B9211C(0, &qword_2811BC778, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B91F44();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B91F44()
{
  result = qword_2811C6988;
  if (!qword_2811C6988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6988);
  }

  return result;
}

uint64_t AdPlacementData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217B9211C(0, &qword_27CBA0D10, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B91F44();
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

void sub_217B9211C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B91F44();
    v7 = a3(a1, &type metadata for AdPlacementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B921A0(void *a1)
{
  sub_217B9211C(0, &qword_2811BC778, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B91F44();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B92310()
{
  result = qword_27CBA0D18;
  if (!qword_27CBA0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0D18);
  }

  return result;
}

unint64_t sub_217B92368()
{
  result = qword_2811C6978;
  if (!qword_2811C6978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6978);
  }

  return result;
}

unint64_t sub_217B923C0()
{
  result = qword_2811C6980;
  if (!qword_2811C6980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6980);
  }

  return result;
}

uint64_t FeedLayoutTracker.__allocating_init(tracker:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t FeedLayoutTracker.trackFeedDidFailSubgroupLayout(subgroup:failure:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_217D8908C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = *(v2 + 16);
  sub_217A4998C(a1, v13);
  (*(v6 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v9 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_217A517E4(v13, v10 + 16);
  (*(v6 + 32))(v10 + v9, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_217D8894C();
}

char *sub_217B925B0(uint64_t a1, void *a2, uint64_t a3)
{
  v164 = a3;
  v174 = a1;
  v4 = sub_217D87C9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v171 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_217D8920C();
  v175 = *(v172 - 8);
  v8 = *(v175 + 64);
  v9 = MEMORY[0x28223BE20](v172);
  v169 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v168 = &v158 - v11;
  v12 = sub_217D88E0C();
  v166 = *(v12 - 8);
  v167 = v12;
  v13 = *(v166 + 64);
  MEMORY[0x28223BE20](v12);
  v165 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B93C9C(0, &qword_2811C8CA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v193 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v194 = &v158 - v19;
  v196 = sub_217D87BAC();
  v188 = *(v196 - 1);
  v20 = *(v188 + 64);
  v21 = MEMORY[0x28223BE20](v196);
  v192 = &v158 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v191 = &v158 - v23;
  sub_217B93B34();
  v185 = v24;
  v176 = *(v24 - 8);
  v25 = *(v176 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v195 = &v158 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v158 - v28;
  v30 = sub_217D8930C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v177 = &v158 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  *&v200 = &v158 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v158 - v37;
  v39 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_217D8911C();
  if (!v209.errorCode._object)
  {
    return sub_217B93C2C(&v209, &qword_2811BCEE0, sub_217B93BC8);
  }

  sub_217A517E4(&v209.errorDomain.value._countAndFlagsBits, v214);
  __swift_project_boxed_opaque_existential_1(v214, v215);
  v40 = sub_217D890BC();
  if (!v40)
  {
    return __swift_destroy_boxed_opaque_existential_1(v214);
  }

  v170 = v5;
  v163 = v4;
  v41 = v40;
  sub_217D890FC();
  sub_217D892FC();
  v42 = *(v31 + 8);
  v42(v38, v30);
  v43 = sub_217D8933C();
  v159 = v44;
  v160 = v43;

  v45 = v200;
  v173 = v41;
  sub_217D890FC();
  sub_217D892FC();
  v161 = v42;
  v42(v45, v30);
  v46 = sub_217D8934C();

  v47 = *(v46 + 16);
  v182 = v30;
  v183 = v31 + 8;
  if (v47)
  {
    v48 = *(v176 + 16);
    v49 = (*(v176 + 80) + 32) & ~*(v176 + 80);
    v187 = v46;
    v50 = v46 + v49;
    v198 = *(v176 + 72);
    v199 = v48;
    v51 = (v188 + 48);
    v189 = (v188 + 8);
    v190 = (v188 + 32);
    *&v200 = v176 + 16;
    v52 = (v176 + 8);
    v186 = MEMORY[0x277D84F90];
    v53 = v196;
    v54 = v185;
    v55 = v194;
    v48(v29, v50, v185);
    while (1)
    {
      sub_217D8929C();
      if ((*v51)(v55, 1, v53) == 1)
      {
        (*v52)(v29, v54);
        sub_217B93C2C(v55, &qword_2811C8CA0, MEMORY[0x277CC9260]);
      }

      else
      {
        v56 = v191;
        (*v190)(v191, v55, v53);
        v197 = sub_217D87B5C();
        v58 = v57;
        (*v189)(v56, v53);
        (*v52)(v29, v54);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v186 = sub_217B5B0E0(0, *(v186 + 2) + 1, 1, v186);
        }

        v60 = *(v186 + 2);
        v59 = *(v186 + 3);
        if (v60 >= v59 >> 1)
        {
          v186 = sub_217B5B0E0((v59 > 1), v60 + 1, 1, v186);
        }

        v61 = v186;
        *(v186 + 2) = v60 + 1;
        v62 = &v61[16 * v60];
        v53 = v196;
        *(v62 + 4) = v197;
        *(v62 + 5) = v58;
        v54 = v185;
        v55 = v194;
      }

      v50 += v198;
      if (!--v47)
      {
        break;
      }

      v199(v29, v50, v54);
    }

    v30 = v182;
  }

  else
  {

    v186 = MEMORY[0x277D84F90];
    v53 = v196;
  }

  v64 = sub_217D890DC();
  v65 = v177;
  v66 = v193;
  v67 = v195;
  if (!(v64 >> 62))
  {
    v68 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v68)
    {
      goto LABEL_19;
    }

LABEL_29:

    v158 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v82 = v64;
  v68 = sub_217D89AAC();
  v64 = v82;
  if (!v68)
  {
    goto LABEL_29;
  }

LABEL_19:
  v69 = v64;
  v209.errorDomain.value._countAndFlagsBits = MEMORY[0x277D84F90];
  result = sub_217B2C7A4(0, v68 & ~(v68 >> 63), 0);
  if ((v68 & 0x8000000000000000) == 0)
  {
    v70 = 0;
    countAndFlagsBits = v209.errorDomain.value._countAndFlagsBits;
    v72 = v69;
    *&v200 = v69 & 0xC000000000000001;
    v73 = v69;
    do
    {
      v74 = countAndFlagsBits;
      if (v200)
      {
        MEMORY[0x21CEAD080](v70, v72);
      }

      else
      {
        v75 = *(v72 + 8 * v70 + 32);
      }

      v76 = sub_217D8933C();
      v78 = v77;

      countAndFlagsBits = v74;
      v209.errorDomain.value._countAndFlagsBits = v74;
      v79 = *(v74 + 16);
      v80 = *(countAndFlagsBits + 24);
      if (v79 >= v80 >> 1)
      {
        sub_217B2C7A4((v80 > 1), v79 + 1, 1);
        countAndFlagsBits = v209.errorDomain.value._countAndFlagsBits;
      }

      ++v70;
      *(countAndFlagsBits + 16) = v79 + 1;
      v81 = countAndFlagsBits + 16 * v79;
      *(v81 + 32) = v76;
      *(v81 + 40) = v78;
      v53 = v196;
      v72 = v73;
    }

    while (v68 != v70);
    v158 = countAndFlagsBits;

    v30 = v182;
    v65 = v177;
    v67 = v195;
LABEL_30:
    isUniquelyReferenced_nonNull_native = sub_217D890DC();
    if (isUniquelyReferenced_nonNull_native >> 62)
    {
      goto LABEL_71;
    }

    v84 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
    v162 = isUniquelyReferenced_nonNull_native;
    if (v84)
    {
      do
      {
        v85 = 0;
        v180 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
        v181 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
        v179 = isUniquelyReferenced_nonNull_native + 32;
        v198 = v188 + 48;
        v199 = (v176 + 16);
        v190 = (v188 + 8);
        v191 = (v188 + 32);
        v86 = MEMORY[0x277D84F90];
        v197 = (v176 + 8);
        v178 = v84;
        while (1)
        {
          v189 = v86;
          if (!v181)
          {
            break;
          }

          isUniquelyReferenced_nonNull_native = MEMORY[0x21CEAD080](v85, v162);
          v89 = __OFADD__(v85, 1);
          v90 = v85 + 1;
          if (v89)
          {
            goto LABEL_65;
          }

LABEL_38:
          v187 = v90;
          v188 = isUniquelyReferenced_nonNull_native;
          v91 = sub_217D8934C();
          v92 = *(v91 + 16);
          if (v92)
          {
            v93 = *(v176 + 80);
            v184 = v91;
            v94 = v91 + ((v93 + 32) & ~v93);
            v95 = *(v176 + 72);
            *&v200 = *(v176 + 16);
            v96 = MEMORY[0x277D84F90];
            v97 = v185;
            v194 = v95;
            (v200)(v67, v94, v185);
            while (1)
            {
              sub_217D8929C();
              if ((*v198)(v66, 1, v53) == 1)
              {
                (*v197)(v67, v97);
                sub_217B93C2C(v66, &qword_2811C8CA0, MEMORY[0x277CC9260]);
              }

              else
              {
                v98 = v192;
                (*v191)(v192, v66, v53);
                v99 = v67;
                v100 = sub_217D87B5C();
                v102 = v101;
                (*v190)(v98, v53);
                (*v197)(v99, v97);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v96 = sub_217B5B0E0(0, *(v96 + 2) + 1, 1, v96);
                }

                v104 = *(v96 + 2);
                v103 = *(v96 + 3);
                if (v104 >= v103 >> 1)
                {
                  v96 = sub_217B5B0E0((v103 > 1), v104 + 1, 1, v96);
                }

                *(v96 + 2) = v104 + 1;
                v105 = &v96[16 * v104];
                *(v105 + 4) = v100;
                *(v105 + 5) = v102;
                v66 = v193;
                v95 = v194;
                v67 = v195;
                v53 = v196;
              }

              v94 += v95;
              if (!--v92)
              {
                break;
              }

              (v200)(v67, v94, v97);
            }

            v65 = v177;
          }

          else
          {

            v96 = MEMORY[0x277D84F90];
          }

          v106 = *(v96 + 2);
          isUniquelyReferenced_nonNull_native = v189;
          v67 = *(v189 + 2);
          v107 = &v67[v106];
          v30 = v182;
          if (__OFADD__(v67, v106))
          {
            goto LABEL_67;
          }

          v108 = v189;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v109 = v108;
          if (!isUniquelyReferenced_nonNull_native || v107 > *(v108 + 3) >> 1)
          {
            if (v67 <= v107)
            {
              v110 = &v67[v106];
            }

            else
            {
              v110 = v67;
            }

            isUniquelyReferenced_nonNull_native = sub_217B5B0E0(isUniquelyReferenced_nonNull_native, v110, 1, v108);
            v109 = isUniquelyReferenced_nonNull_native;
          }

          v67 = v195;
          if (*(v96 + 2))
          {
            if ((*(v109 + 24) >> 1) - *(v109 + 16) < v106)
            {
              goto LABEL_69;
            }

            v111 = v109;
            swift_arrayInitWithCopy();

            v86 = v111;
            v85 = v187;
            if (v106)
            {
              v112 = *(v86 + 2);
              v89 = __OFADD__(v112, v106);
              v113 = v112 + v106;
              if (v89)
              {
                goto LABEL_70;
              }

              *(v86 + 2) = v113;
            }
          }

          else
          {
            v87 = v109;

            v86 = v87;
            v85 = v187;
            if (v106)
            {
              goto LABEL_68;
            }
          }

          if (v85 == v178)
          {
            goto LABEL_73;
          }
        }

        if (v85 >= *(v180 + 16))
        {
          goto LABEL_66;
        }

        v88 = *(v179 + 8 * v85);

        v89 = __OFADD__(v85, 1);
        v90 = v85 + 1;
        if (!v89)
        {
          goto LABEL_38;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        v114 = isUniquelyReferenced_nonNull_native;
        v115 = sub_217D89AAC();
        isUniquelyReferenced_nonNull_native = v114;
        v84 = v115;
        v162 = isUniquelyReferenced_nonNull_native;
      }

      while (v115);
    }

    v86 = MEMORY[0x277D84F90];
LABEL_73:
    v189 = v86;

    v116 = v165;
    sub_217D8941C();
    v117 = sub_217D88DFC();
    v199 = v118;
    *&v200 = v117;
    (*(v166 + 8))(v116, v167);
    __swift_project_boxed_opaque_existential_1(v214, v215);
    v119 = sub_217D890CC();
    v197 = v120;
    v198 = v119;
    v121 = v168;
    sub_217D890EC();
    v122 = sub_217D891DC();
    v123 = v30;
    v195 = v124;
    v196 = v122;
    v125 = *(v175 + 8);
    v175 += 8;
    v125(v121, v172);
    sub_217D890FC();
    v126 = sub_217D892EC();
    v127 = v65;
    v129 = v128;
    v130 = v161;
    v161(v127, v123);
    v209.errorDomain.value._countAndFlagsBits = v126;
    v209.errorDomain.value._object = v129;
    v204.errorDomain.value._countAndFlagsBits = 14906;
    v204.errorDomain.value._object = 0xE200000000000000;
    sub_217A4EBC4();
    v131 = sub_217D8991C();

    v132 = *(v131 + 16);
    if (v132)
    {
      v133 = (v131 + 16 + 16 * v132);
      v134 = *v133;
      v135 = v133[1];
    }

    else
    {

      sub_217D890FC();
      v134 = sub_217D892EC();
      v136 = v130;
      v135 = v137;
      v136(v127, v123);
    }

    v138 = v169;
    sub_217D890EC();
    v139 = v171;
    sub_217D891EC();
    v125(v138, v172);
    sub_217D87C6C();
    v141 = v140;
    v142 = *(v170 + 8);
    v170 += 8;
    result = v142(v139, v163);
    v143 = v141 * 1000.0;
    if (COERCE__INT64(fabs(v141 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v143 > -9.22337204e18)
    {
      if (v143 < 9.22337204e18)
      {
        v204.errorDomain.value._countAndFlagsBits = v160;
        v204.errorDomain.value._object = v159;
        v204.errorCode._countAndFlagsBits = v186;
        v204.errorCode._object = v158;
        v204.errorDetails.value._rawValue = v189;
        *&v204.errorDetails.is_nil = v200;
        *&v205 = v199;
        *(&v205 + 1) = v198;
        *&v206 = v197;
        *(&v206 + 1) = v196;
        *&v207 = v195;
        *(&v207 + 1) = v134;
        *&v208 = v135;
        *(&v208 + 1) = v143;
        sub_217B93C9C(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v198 = v144;
        v145 = sub_217D882DC();
        v146 = *(*(v145 - 8) + 80);
        v147 = *(v145 - 8);
        v148 = (v146 + 32) & ~v146;
        v193 = *(v147 + 72);
        v194 = v146;
        v149 = swift_allocObject();
        v200 = xmmword_217D8D8F0;
        *(v149 + 16) = xmmword_217D8D8F0;
        LODWORD(v197) = *MEMORY[0x277CEAD18];
        v196 = *(v147 + 104);
        v196(v149 + v148);
        v192 = (v147 + 104);
        v195 = "ics17FeedLayoutTracker";
        sub_217B93D00();
        v199 = v142;
        sub_217D8820C();

        v211 = v206;
        v212 = v207;
        v213 = v208;
        v209 = v204;
        v210 = v205;
        sub_217B93D54(&v209);
        v150 = sub_217D8907C();
        swift_getErrorValue();
        Error.errorData()(&v204);

        errorDomain = v204.errorDomain;
        errorCode = v204.errorCode;
        rawValue = v204.errorDetails.value._rawValue;
        v151 = swift_allocObject();
        *(v151 + 16) = v200;
        v152 = v197;
        v153 = v196;
        (v196)(v151 + v148, v197, v145);
        sub_217B93DA8();
        sub_217D8820C();

        v204.errorDomain.value._countAndFlagsBits = sub_217D8906C();
        v204.errorDomain.value._object = v154;
        v155 = swift_allocObject();
        *(v155 + 16) = v200;
        v153(v155 + v148, v152, v145);
        sub_217B93DFC();
        sub_217D8820C();

        v156 = v171;
        sub_217D87C8C();
        type metadata accessor for FeedGroupLayoutFailureEvent(0);
        strcpy(&v204, "realtime-");
        WORD1(v204.errorDomain.value._object) = 0;
        HIDWORD(v204.errorDomain.value._object) = -385875968;
        v157 = sub_217D8809C();
        MEMORY[0x21CEACC70](v157);

        sub_217D881CC();
        sub_217B93E50(&qword_27CBA0D40, type metadata accessor for FeedGroupLayoutFailureEvent);
        sub_217D881EC();
        sub_217D881DC();

        (v199)(v156, v163);
        return __swift_destroy_boxed_opaque_existential_1(v214);
      }

      goto LABEL_83;
    }

    __break(1u);
LABEL_83:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t FeedLayoutTracker.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t FeedLayoutTracker.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_217B93934(uint64_t a1, uint64_t a2)
{
  v5 = sub_217D8908C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = *(*v2 + 16);
  sub_217A4998C(a1, v13);
  (*(v6 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v9 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_217A517E4(v13, v10 + 16);
  (*(v6 + 32))(v10 + v9, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_217D8894C();
}

char *sub_217B93AC0(uint64_t a1)
{
  v3 = *(sub_217D8908C() - 8);
  v4 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_217B925B0(a1, (v1 + 16), v4);
}

void sub_217B93B34()
{
  if (!qword_27CBA0D20)
  {
    sub_217D8921C();
    sub_217B93E50(&qword_27CBA0D28, MEMORY[0x277D33498]);
    v0 = sub_217D892AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA0D20);
    }
  }
}

unint64_t sub_217B93BC8()
{
  result = qword_2811BCEE8;
  if (!qword_2811BCEE8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2811BCEE8);
  }

  return result;
}

uint64_t sub_217B93C2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_217B93C9C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_217B93C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_217B93D00()
{
  result = qword_2811C3528[0];
  if (!qword_2811C3528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C3528);
  }

  return result;
}

unint64_t sub_217B93DA8()
{
  result = qword_27CBA0D30;
  if (!qword_27CBA0D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0D30);
  }

  return result;
}

unint64_t sub_217B93DFC()
{
  result = qword_27CBA0D38;
  if (!qword_27CBA0D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0D38);
  }

  return result;
}

uint64_t sub_217B93E50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SportsTagListData.tagIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_217B93F00(uint64_t a1)
{
  v2 = sub_217A66378();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B93F3C(uint64_t a1)
{
  v2 = sub_217A66378();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsTagListData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217A662FC(0, &qword_27CBA0D48, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A66378();
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

unint64_t sub_217B94180()
{
  result = qword_27CBA0D50;
  if (!qword_27CBA0D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0D50);
  }

  return result;
}

uint64_t UserBundleSubscriptionContextData.bundleSubscriptionPurchaseID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t UserBundleSubscriptionContextData.bundleSubscriptionPurchaseID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t UserBundleSubscriptionContextData.sBundlePurchaseID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t UserBundleSubscriptionContextData.sBundlePurchaseID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_217B943D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B94998(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B943FC(uint64_t a1)
{
  v2 = sub_217A652E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B94438(uint64_t a1)
{
  v2 = sub_217A652E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserBundleSubscriptionContextData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217A65030(0, &qword_2811BC930, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v31 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A652E4();
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v38) = 0;
    sub_217B94804();
    sub_217D89BCC();
    v12 = v42;
    v42 = 1;
    v13 = sub_217D89B2C();
    v15 = v14;
    v37 = v13;
    v42 = 2;
    v36 = sub_217D89B9C();
    v42 = 3;
    v16 = sub_217D89B9C();
    v34 = v12;
    v35 = v16;
    v42 = 4;
    v17 = sub_217D89B2C();
    v19 = v18;
    v33 = v17;
    v55 = 5;
    v20 = sub_217D89B3C();
    v35 &= 1u;
    v36 &= 1u;
    v21 = v36;
    v22 = *(v7 + 8);
    v32 = v20;
    v22(v10, v6);
    v23 = v34;
    LOBYTE(v38) = v34;
    *(&v38 + 1) = *v56;
    DWORD1(v38) = *&v56[3];
    v24 = v37;
    *(&v38 + 1) = v37;
    *&v39 = v15;
    BYTE8(v39) = v21;
    v25 = v35;
    BYTE9(v39) = v35;
    *(&v39 + 10) = v53;
    HIWORD(v39) = v54;
    v26 = v33;
    *&v40 = v33;
    *(&v40 + 1) = v19;
    v41 = v32;
    v27 = v38;
    v28 = v39;
    v29 = v40;
    *(a2 + 48) = v32;
    *(a2 + 16) = v28;
    *(a2 + 32) = v29;
    *a2 = v27;
    sub_217ACC004(&v38, &v42);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v42 = v23;
    *v43 = *v56;
    *&v43[3] = *&v56[3];
    v44 = v24;
    v45 = v15;
    v46 = v36;
    v47 = v25;
    v48 = v53;
    v49 = v54;
    v50 = v26;
    v51 = v19;
    v52 = v32;
    return sub_217ACC69C(&v42);
  }
}

unint64_t sub_217B94804()
{
  result = qword_2811BF978;
  if (!qword_2811BF978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF978);
  }

  return result;
}

uint64_t sub_217B94870(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t sub_217B948CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_217B94944()
{
  result = qword_27CBA0D58;
  if (!qword_27CBA0D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0D58);
  }

  return result;
}

uint64_t sub_217B94998(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000217DCEAF0 == a2;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217DCEB10 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000217DCEB30 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x66696C706D417369 && a2 == 0xED00007265735579 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DCEB50 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217DCEB70 == a2)
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

uint64_t sub_217B94BA0()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_2811C2D70);
  v1 = __swift_project_value_buffer(v0, qword_2811C2D70);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *MEMORY[0x277CEACB0];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_217B94C8C()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_2811C2D48);
  v1 = __swift_project_value_buffer(v0, qword_2811C2D48);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217B94D4C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C2D20);
  __swift_project_value_buffer(v0, qword_2811C2D20);
  return sub_217D8866C();
}

uint64_t AdJournalEntryEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AdJournalEntryEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 20);
  sub_217B96078(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdJournalEntryEvent.adUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 20);
  sub_217B96078(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 24);
  sub_217B96078(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdJournalEntryEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 24);
  sub_217B96078(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 28);
  sub_217B96078(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdJournalEntryEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 28);
  sub_217B96078(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.adCreativeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 32);
  sub_217B96078(0, &qword_2811C8750, sub_217B95460, sub_217B954B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B95460()
{
  result = qword_2811C7148;
  if (!qword_2811C7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7148);
  }

  return result;
}

unint64_t sub_217B954B4()
{
  result = qword_2811C7150;
  if (!qword_2811C7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7150);
  }

  return result;
}

uint64_t AdJournalEntryEvent.adCreativeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 32);
  sub_217B96078(0, &qword_2811C8750, sub_217B95460, sub_217B954B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 36);
  sub_217B96078(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdJournalEntryEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 36);
  sub_217B96078(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.adJournalEntryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 40);
  sub_217B96078(0, &qword_2811C8650, sub_217B95868, sub_217B958BC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B95868()
{
  result = qword_2811C4050;
  if (!qword_2811C4050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4050);
  }

  return result;
}

unint64_t sub_217B958BC()
{
  result = qword_2811C4058;
  if (!qword_2811C4058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4058);
  }

  return result;
}

uint64_t AdJournalEntryEvent.adJournalEntryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 40);
  sub_217B96078(0, &qword_2811C8650, sub_217B95868, sub_217B958BC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.adSizeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 44);
  sub_217B96078(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B95AC0()
{
  result = qword_2811C7FF8;
  if (!qword_2811C7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7FF8);
  }

  return result;
}

unint64_t sub_217B95B14()
{
  result = qword_2811C8000;
  if (!qword_2811C8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8000);
  }

  return result;
}

uint64_t AdJournalEntryEvent.adSizeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 44);
  sub_217B96078(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 48);
  sub_217B96078(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdJournalEntryEvent.adPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 48);
  sub_217B96078(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 52);
  sub_217B96078(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdJournalEntryEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 52);
  sub_217B96078(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.adGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 56);
  sub_217B96078(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B96078(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t AdJournalEntryEvent.adGroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 56);
  sub_217B96078(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AdJournalEntryEvent(0);
  v5 = v4[5];
  sub_217B96078(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B96078(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217B96078(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217B96078(0, &qword_2811C8750, sub_217B95460, sub_217B954B4);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217B96078(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217B96078(0, &qword_2811C8650, sub_217B95868, sub_217B958BC);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217B96078(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14);
  (*(*(v19 - 8) + 104))(a1 + v18, v10, v19);
  v20 = v4[12];
  sub_217B96078(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_217B96078(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  (*(*(v23 - 8) + 104))(a1 + v22, v10, v23);
  v24 = v4[14];
  sub_217B96078(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v10, v25);
}

uint64_t AdJournalEntryEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AdJournalEntryEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t AdJournalEntryEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AdJournalEntryEvent.Model(0) + 24));
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

uint64_t AdJournalEntryEvent.Model.channelData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AdJournalEntryEvent.Model(0) + 28));
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

uint64_t AdJournalEntryEvent.Model.adCreativeData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AdJournalEntryEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t AdJournalEntryEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AdJournalEntryEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t AdJournalEntryEvent.Model.adJournalEntryData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AdJournalEntryEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t AdJournalEntryEvent.Model.adSizeData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AdJournalEntryEvent.Model(0);
  v4 = (v1 + *(result + 44));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t AdJournalEntryEvent.Model.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AdJournalEntryEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t AdJournalEntryEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AdJournalEntryEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t AdJournalEntryEvent.Model.adGroupData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AdJournalEntryEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

__n128 AdJournalEntryEvent.Model.init(eventData:adUserData:userBundleSubscriptionContextData:channelData:adCreativeData:adPlacementData:adJournalEntryData:adSizeData:adPositionData:adFeedData:adGroupData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, __int16 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, int *a10, char *a11, char *a12)
{
  v16 = *a2;
  v17 = a2[1];
  v18 = *(a4 + 32);
  v19 = *a5;
  v20 = *a6;
  v21 = a6[1];
  v34 = *a7;
  v36 = *a8;
  v35 = *(a8 + 8);
  v37 = *(a10 + 4);
  v38 = *a10;
  v39 = *a11;
  v40 = *a12;
  v22 = sub_217D8899C();
  v32 = *(a4 + 16);
  v33 = *a4;
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = type metadata accessor for AdJournalEntryEvent.Model(0);
  v24 = (a9 + v23[5]);
  *v24 = v16;
  v24[1] = v17;
  v25 = a9 + v23[6];
  v26 = *(a3 + 16);
  *v25 = *a3;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a3 + 32);
  *(v25 + 48) = *(a3 + 48);
  v27 = a9 + v23[7];
  result = v33;
  *v27 = v33;
  *(v27 + 16) = v32;
  *(v27 + 32) = v18;
  *(a9 + v23[8]) = v19;
  v29 = (a9 + v23[9]);
  *v29 = v20;
  v29[1] = v21;
  *(a9 + v23[10]) = v34;
  v30 = a9 + v23[11];
  *v30 = v36;
  *(v30 + 8) = v35;
  v31 = a9 + v23[12];
  *v31 = v38;
  *(v31 + 4) = v37;
  *(a9 + v23[13]) = v39;
  *(a9 + v23[14]) = v40;
  return result;
}

unint64_t sub_217B96B9C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x746144746E657665;
    v7 = 0xD000000000000021;
    v8 = 0x446C656E6E616863;
    if (a1 != 3)
    {
      v8 = 0x6974616572436461;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6144726573556461;
    }

    if (a1 <= 1u)
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
    v1 = 0x697469736F506461;
    v2 = 0x6144646565466461;
    if (a1 != 9)
    {
      v2 = 0x4470756F72476461;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6D6563616C506461;
    v4 = 0xD000000000000012;
    if (a1 != 6)
    {
      v4 = 0x6144657A69536461;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_217B96D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B989A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B96D7C(uint64_t a1)
{
  v2 = sub_217B97404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B96DB8(uint64_t a1)
{
  v2 = sub_217B97404();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdJournalEntryEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B97C0C(0, &qword_27CBA0D60, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v31 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B97404();
  sub_217D89E7C();
  LOBYTE(v44[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for AdJournalEntryEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[1];
    v47 = *v13;
    v48 = v14;
    v46 = 1;
    sub_217A586D4();

    sub_217D89CAC();

    v15 = (v3 + v12[6]);
    v16 = v15[1];
    v44[0] = *v15;
    v44[1] = v16;
    v18 = *v15;
    v17 = v15[1];
    v44[2] = v15[2];
    v45 = *(v15 + 48);
    v40 = v18;
    v41 = v17;
    v42 = v15[2];
    v43 = *(v15 + 48);
    v39 = 2;
    sub_217ACC004(v44, v37);
    sub_217A55B98();
    sub_217D89CAC();
    v37[0] = v40;
    v37[1] = v41;
    v37[2] = v42;
    v38 = v43;
    sub_217ACC69C(v37);
    v19 = (v3 + v12[7]);
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[3];
    v23 = v19[4];
    v32 = *v19;
    v33 = v20;
    v34 = v21;
    v35 = v22;
    v36 = v23;
    HIBYTE(v31) = 3;
    sub_217AD86BC(v32, v20);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v32, v33);
    LOBYTE(v32) = *(v3 + v12[8]);
    HIBYTE(v31) = 4;
    sub_217B954B4();
    sub_217D89CAC();
    v24 = (v3 + v12[9]);
    v25 = v24[1];
    v32 = *v24;
    v33 = v25;
    HIBYTE(v31) = 5;
    sub_217B3CE84();

    sub_217D89CAC();

    LOWORD(v32) = *(v3 + v12[10]);
    HIBYTE(v31) = 6;
    sub_217B958BC();
    sub_217D89CAC();
    v26 = v3 + v12[11];
    v27 = *v26;
    LOBYTE(v26) = *(v26 + 8);
    v32 = v27;
    LOBYTE(v33) = v26;
    HIBYTE(v31) = 7;
    sub_217B95B14();
    sub_217D89C3C();
    v28 = (v3 + v12[12]);
    v29 = *v28;
    LOBYTE(v28) = *(v28 + 4);
    LODWORD(v32) = v29;
    BYTE4(v32) = v28;
    HIBYTE(v31) = 8;
    sub_217B3D0DC();
    sub_217D89C3C();
    LOBYTE(v32) = *(v3 + v12[13]);
    HIBYTE(v31) = 9;
    sub_217A5BFF4();
    sub_217D89C3C();
    LOBYTE(v32) = *(v3 + v12[14]);
    HIBYTE(v31) = 10;
    sub_217B3D560();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B97404()
{
  result = qword_27CBA0D68;
  if (!qword_27CBA0D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0D68);
  }

  return result;
}

uint64_t AdJournalEntryEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_217D8899C();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B97C0C(0, &qword_27CBA0D70, MEMORY[0x277D844C8]);
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v33 - v9;
  v11 = type metadata accessor for AdJournalEntryEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B97404();
  v41 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v14;
  v35 = a1;
  LOBYTE(v45) = 0;
  sub_217A602A0(&qword_2811C8408);
  v16 = v38;
  sub_217D89BCC();
  v17 = v34;
  (*(v37 + 32))(v34, v16, v4);
  LOBYTE(v42) = 1;
  sub_217A5867C();
  sub_217D89BCC();
  v33[1] = v4;
  v38 = 0;
  v18 = *(&v45 + 1);
  v19 = &v17[v11[5]];
  *v19 = v45;
  *(v19 + 1) = v18;
  v50 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  v20 = &v17[v11[6]];
  v21 = v46;
  *v20 = v45;
  *(v20 + 1) = v21;
  *(v20 + 2) = v47;
  v20[48] = v48;
  v49 = 3;
  sub_217AD07F8();
  sub_217D89B5C();
  v22 = v44;
  v23 = &v17[v11[7]];
  v24 = v43;
  *v23 = v42;
  *(v23 + 1) = v24;
  *(v23 + 4) = v22;
  v49 = 4;
  sub_217B95460();
  sub_217D89BCC();
  v17[v11[8]] = v42;
  v49 = 5;
  sub_217B3CE30();
  sub_217D89BCC();
  v25 = *(&v42 + 1);
  v26 = &v17[v11[9]];
  *v26 = v42;
  *(v26 + 1) = v25;
  v49 = 6;
  sub_217B95868();
  sub_217D89BCC();
  *&v17[v11[10]] = v42;
  v49 = 7;
  sub_217B95AC0();
  sub_217D89B5C();
  v27 = BYTE8(v42);
  v28 = &v17[v11[11]];
  *v28 = v42;
  v28[8] = v27;
  v49 = 8;
  sub_217B3D088();
  sub_217D89B5C();
  v29 = BYTE4(v42);
  v30 = &v17[v11[12]];
  *v30 = v42;
  v30[4] = v29;
  v49 = 9;
  sub_217A5BD70();
  sub_217D89B5C();
  v34[v11[13]] = v42;
  v49 = 10;
  sub_217B3D50C();
  sub_217D89B5C();
  (*(v39 + 8))(v41, v40);
  v31 = v34;
  v34[v11[14]] = v42;
  sub_217B97C70(v31, v36);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return sub_217B97CD4(v31);
}

void sub_217B97C0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B97404();
    v7 = a3(a1, &type metadata for AdJournalEntryEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B97C70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdJournalEntryEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B97CD4(uint64_t a1)
{
  v2 = type metadata accessor for AdJournalEntryEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B97E08@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217B96078(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B96078(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217B96078(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217B96078(0, &qword_2811C8750, sub_217B95460, sub_217B954B4);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217B96078(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217B96078(0, &qword_2811C8650, sub_217B95868, sub_217B958BC);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217B96078(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14);
  (*(*(v20 - 8) + 104))(a2 + v19, v11, v20);
  v21 = a1[12];
  sub_217B96078(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_217B96078(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  (*(*(v24 - 8) + 104))(a2 + v23, v11, v24);
  v25 = a1[14];
  sub_217B96078(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v11, v26);
}

void sub_217B98374()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217B96078(319, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
    if (v1 <= 0x3F)
    {
      sub_217B96078(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
      if (v2 <= 0x3F)
      {
        sub_217B96078(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
        if (v3 <= 0x3F)
        {
          sub_217B96078(319, &qword_2811C8750, sub_217B95460, sub_217B954B4);
          if (v4 <= 0x3F)
          {
            sub_217B96078(319, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
            if (v5 <= 0x3F)
            {
              sub_217B96078(319, &qword_2811C8650, sub_217B95868, sub_217B958BC);
              if (v6 <= 0x3F)
              {
                sub_217B96078(319, &qword_2811C8838, sub_217B95AC0, sub_217B95B14);
                if (v7 <= 0x3F)
                {
                  sub_217B96078(319, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
                  if (v8 <= 0x3F)
                  {
                    sub_217B96078(319, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
                    if (v9 <= 0x3F)
                    {
                      sub_217B96078(319, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
                      if (v10 <= 0x3F)
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

void sub_217B98728()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811C7D70);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_27CBA0D88);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9FD60);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_27CB9FD68);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_27CB9FD70);
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

unint64_t sub_217B988A4()
{
  result = qword_27CBA0D90;
  if (!qword_27CBA0D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0D90);
  }

  return result;
}

unint64_t sub_217B988FC()
{
  result = qword_27CBA0D98;
  if (!qword_27CBA0D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0D98);
  }

  return result;
}

unint64_t sub_217B98954()
{
  result = qword_27CBA0DA0;
  if (!qword_27CBA0DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0DA0);
  }

  return result;
}

uint64_t sub_217B989A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144726573556461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6974616572436461 && a2 == 0xEE00617461446576 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCEB90 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6144657A69536461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x697469736F506461 && a2 == 0xEE00617461446E6FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4470756F72476461 && a2 == 0xEB00000000617461)
  {

    return 10;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_217B98D58(uint64_t a1)
{
  v2 = v1;
  v41 = sub_217D8847C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20]();
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_217B995B8();
  result = sub_217D899DC();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_217A4AC00(&qword_2811C8470);
      result = sub_217D894BC();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

void *sub_217B99094()
{
  v1 = v0;
  v2 = sub_217D8847C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B995B8();
  v7 = *v0;
  v8 = sub_217D899CC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_217B992BC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_217D8847C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_217B995B8();
  v10 = sub_217D899DC();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_217A4AC00(&qword_2811C8470);
      result = sub_217D894BC();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

void sub_217B995B8()
{
  if (!qword_27CBA0DA8)
  {
    sub_217D8847C();
    sub_217A4AC00(&qword_2811C8470);
    v0 = sub_217D899EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA0DA8);
    }
  }
}

uint64_t sub_217B99700()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0DB0);
  __swift_project_value_buffer(v0, qword_27CBA0DB0);
  return sub_217D8866C();
}

uint64_t EmailSignupEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EmailSignupEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EmailSignupEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EmailSignupEvent.userActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EmailSignupEvent(0) + 24);
  sub_217B99DFC(0, &qword_2811C8580, sub_217B999F4, sub_217B99A48);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B999F4()
{
  result = qword_2811BF298;
  if (!qword_2811BF298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF298);
  }

  return result;
}

unint64_t sub_217B99A48()
{
  result = qword_2811BF2A0;
  if (!qword_2811BF2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF2A0);
  }

  return result;
}

uint64_t EmailSignupEvent.userActionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EmailSignupEvent(0) + 24);
  sub_217B99DFC(0, &qword_2811C8580, sub_217B999F4, sub_217B99A48);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EmailSignupEvent.newsletterSubscriptionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EmailSignupEvent(0) + 28);
  sub_217B99DFC(0, &qword_2811C8568, sub_217B2B33C, sub_217B2B394);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EmailSignupEvent.newsletterSubscriptionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EmailSignupEvent(0) + 28);
  sub_217B99DFC(0, &qword_2811C8568, sub_217B2B33C, sub_217B2B394);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EmailSignupEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EmailSignupEvent(0) + 32);
  sub_217B99DFC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}