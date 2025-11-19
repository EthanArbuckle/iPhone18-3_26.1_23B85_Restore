uint64_t FeedGroupLayoutEvent.Model.feedGroupLayoutData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedGroupLayoutEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_217D279D0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 32);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t FeedGroupLayoutEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedGroupLayoutEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t FeedGroupLayoutEvent.Model.init(eventData:feedData:groupData:feedGroupLayoutData:timedData:viewData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v12 = *(a2 + 1);
  v11 = *(a2 + 2);
  v13 = *a4;
  v14 = *a6;
  v15 = a6[1];
  v16 = *(a6 + 8);
  v17 = sub_217D8899C();
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for FeedGroupLayoutEvent.Model(0);
  v19 = a7 + v18[5];
  *v19 = v10;
  *(v19 + 8) = v12;
  *(v19 + 16) = v11;
  v20 = (a7 + v18[6]);
  v21 = a3[7];
  v20[6] = a3[6];
  v20[7] = v21;
  v20[8] = a3[8];
  v22 = a3[3];
  v20[2] = a3[2];
  v20[3] = v22;
  v23 = a3[5];
  v20[4] = a3[4];
  v20[5] = v23;
  v24 = a3[1];
  *v20 = *a3;
  v20[1] = v24;
  *(a7 + v18[7]) = v13;
  v25 = v18[8];
  v26 = sub_217D889CC();
  result = (*(*(v26 - 8) + 32))(a7 + v25, a5, v26);
  v28 = a7 + v18[9];
  *v28 = v14;
  *(v28 + 8) = v15;
  *(v28 + 16) = v16;
  return result;
}

uint64_t sub_217D27BF4(uint64_t a1)
{
  v2 = sub_217D280A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D27C30(uint64_t a1)
{
  v2 = sub_217D280A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedGroupLayoutEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D288CC(0, &qword_27CBA4E98, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v31 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D280A4();
  sub_217D89E7C();
  LOBYTE(v47) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for FeedGroupLayoutEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = *(v13 + 1);
    v15 = *(v13 + 2);
    v57 = *v13;
    v58 = v14;
    v59 = v15;
    v56 = 1;
    sub_217A5BA2C();

    sub_217D89CAC();

    v16 = (v3 + v12[6]);
    v17 = v16[6];
    v18 = v16[4];
    v52 = v16[5];
    v53 = v17;
    v19 = v16[6];
    v20 = v16[8];
    v54 = v16[7];
    v55 = v20;
    v21 = v16[2];
    v22 = *v16;
    v48 = v16[1];
    v49 = v21;
    v23 = v16[2];
    v24 = v16[4];
    v50 = v16[3];
    v51 = v24;
    v25 = *v16;
    v44 = v19;
    v45 = v54;
    v46 = v16[8];
    v47 = v25;
    v40 = v23;
    v41 = v50;
    v42 = v18;
    v43 = v52;
    v38 = v22;
    v39 = v48;
    v37 = 2;
    sub_217AF7618(&v47, v36);
    sub_217A5D3B4();
    sub_217D89CAC();
    v36[7] = v45;
    v36[8] = v46;
    v36[2] = v40;
    v36[3] = v41;
    v36[5] = v43;
    v36[6] = v44;
    v36[4] = v42;
    v36[0] = v38;
    v36[1] = v39;
    sub_217AF8104(v36);
    LOBYTE(v32) = *(v3 + v12[7]);
    v35 = 3;
    sub_217A63994();
    sub_217D89C3C();
    v26 = v12[8];
    LOBYTE(v32) = 4;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v28 = (v3 + v12[9]);
    v29 = *v28;
    v30 = v28[1];
    LOWORD(v28) = *(v28 + 8);
    v32 = v29;
    v33 = v30;
    v34 = v28;
    v35 = 5;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217D280A4()
{
  result = qword_27CBA4EA0;
  if (!qword_27CBA4EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4EA0);
  }

  return result;
}

uint64_t FeedGroupLayoutEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = sub_217D889CC();
  v40 = *(v38 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D288CC(0, &qword_27CBA4EA8, MEMORY[0x277D844C8]);
  v44 = v9;
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  v13 = type metadata accessor for FeedGroupLayoutEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D280A4();
  v43 = v12;
  v18 = v58;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v5;
  v36 = a1;
  v20 = v16;
  v21 = v40;
  v50[0] = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  sub_217D89BCC();
  (*(v39 + 32))(v20, v42, v6);
  LOBYTE(v45) = 1;
  sub_217A5B978();
  sub_217D89BCC();
  v22 = v20 + *(v13 + 20);
  *v22 = v50[0];
  *(v22 + 8) = *&v50[8];
  v49 = 2;
  sub_217A5D308();
  v58 = 0;
  sub_217D89BCC();
  v23 = (v20 + *(v13 + 24));
  v24 = v56;
  v25 = v57;
  v23[6] = v55;
  v23[7] = v24;
  v23[8] = v25;
  v26 = v52;
  v23[2] = v51;
  v23[3] = v26;
  v27 = v54;
  v23[4] = v53;
  v23[5] = v27;
  v28 = *&v50[16];
  *v23 = *v50;
  v23[1] = v28;
  v48 = 3;
  sub_217A63908();
  sub_217D89B5C();
  v29 = v13;
  v30 = v41;
  *(v20 + v29[7]) = v45;
  LOBYTE(v45) = 4;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v31 = v38;
  sub_217D89BCC();
  (*(v21 + 32))(v20 + v29[8], v19, v31);
  v48 = 5;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v30 + 8))(v43, v44);
  v32 = v46;
  v33 = v47;
  v34 = v20 + v29[9];
  *v34 = v45;
  *(v34 + 8) = v32;
  *(v34 + 16) = v33;
  sub_217D28930(v20, v37);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_217D28994(v20);
}

void sub_217D288CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D280A4();
    v7 = a3(a1, &type metadata for FeedGroupLayoutEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D28930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedGroupLayoutEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D28994(uint64_t a1)
{
  v2 = type metadata accessor for FeedGroupLayoutEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217D28B2C()
{
  result = qword_27CBA4EC0;
  if (!qword_27CBA4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4EC0);
  }

  return result;
}

unint64_t sub_217D28B84()
{
  result = qword_27CBA4EC8;
  if (!qword_27CBA4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4EC8);
  }

  return result;
}

unint64_t sub_217D28BDC()
{
  result = qword_27CBA4ED0;
  if (!qword_27CBA4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4ED0);
  }

  return result;
}

__n128 FormatSubgroupData.init(layoutIdentifier:layoutReferences:themeIdentifiers:themeReferences:formatVersion:parentGroupName:contentIdentifier:contentSubgroupIdentifier:contentPublishDate:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  return result;
}

uint64_t FormatSubgroupData.layoutIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FormatSubgroupData.layoutIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FormatSubgroupData.layoutReferences.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t FormatSubgroupData.themeIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t FormatSubgroupData.themeReferences.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t FormatSubgroupData.formatVersion.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t FormatSubgroupData.formatVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t FormatSubgroupData.parentGroupName.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t FormatSubgroupData.parentGroupName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t FormatSubgroupData.contentIdentifier.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t FormatSubgroupData.contentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t FormatSubgroupData.contentSubgroupIdentifier.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t FormatSubgroupData.contentSubgroupIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

unint64_t sub_217D29030(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x666552656D656874;
    if (a1 == 2)
    {
      v4 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return 0xD000000000000010;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0xD000000000000012;
    if (a1 == 7)
    {
      v1 = 0xD000000000000019;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000011;
    }

    v2 = 0x655674616D726F66;
    if (a1 != 4)
    {
      v2 = 0x7247746E65726170;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_217D29188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217D2A064(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217D291B0(uint64_t a1)
{
  v2 = sub_217D295BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D291EC(uint64_t a1)
{
  v2 = sub_217D295BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FormatSubgroupData.encode(to:)(void *a1)
{
  sub_217D29D5C(0, &qword_27CBA4ED8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v25 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v27 = v1[3];
  v28 = v11;
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1[7];
  v25[8] = v1[6];
  v26 = v12;
  v25[5] = v14;
  v15 = v1[9];
  v25[6] = v1[8];
  v25[7] = v13;
  v16 = v1[10];
  v17 = v1[11];
  v25[3] = v15;
  v25[4] = v16;
  v19 = v1[12];
  v18 = v1[13];
  v25[1] = v17;
  v25[2] = v19;
  v25[0] = v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D295BC();
  sub_217D89E7C();
  LOBYTE(v31) = 0;
  v21 = v29;
  sub_217D89C6C();
  if (!v21)
  {
    v22 = v26;
    v23 = v27;
    v31 = v28;
    v30 = 1;
    sub_217D01FD8(0, &qword_27CBA4EE8);
    sub_217D29DC0(&qword_27CBA4EF0, sub_217BF6130);
    sub_217D89CAC();
    v31 = v23;
    v30 = 2;
    sub_217D01FD8(0, &qword_2811BCD50);
    sub_217A560C0(&qword_2811BCD48);
    sub_217D89CAC();
    v31 = v22;
    v30 = 3;
    sub_217D89CAC();
    LOBYTE(v31) = 4;
    sub_217D89C6C();
    LOBYTE(v31) = 5;
    sub_217D89C6C();
    LOBYTE(v31) = 6;
    sub_217D89C6C();
    LOBYTE(v31) = 7;
    sub_217D89C6C();
    LOBYTE(v31) = 8;
    sub_217D89CCC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D295BC()
{
  result = qword_27CBA4EE0;
  if (!qword_27CBA4EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4EE0);
  }

  return result;
}

uint64_t FormatSubgroupData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217D29D5C(0, &qword_27CBA4EF8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v32 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D295BC();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v52[0]) = 0;
  v42 = sub_217D89B8C();
  v43 = a2;
  v44 = v12;
  sub_217D01FD8(0, &qword_27CBA4EE8);
  LOBYTE(v45) = 1;
  sub_217D29DC0(&qword_27CBA4F00, sub_217BF60D8);
  sub_217D89BCC();
  v41 = v52[0];
  sub_217D01FD8(0, &qword_2811BCD50);
  LOBYTE(v45) = 2;
  sub_217A560C0(&qword_2811BCD38);
  sub_217D89BCC();
  v40 = v52[0];
  LOBYTE(v45) = 3;
  sub_217D89BCC();
  v13 = v52[0];
  LOBYTE(v52[0]) = 4;
  v14 = sub_217D89B8C();
  v39 = v15;
  LOBYTE(v52[0]) = 5;
  v16 = sub_217D89B8C();
  v38 = v17;
  v35 = v16;
  LOBYTE(v52[0]) = 6;
  v34 = sub_217D89B8C();
  v37 = v18;
  LOBYTE(v52[0]) = 7;
  v19 = sub_217D89B8C();
  v36 = v20;
  v33 = v19;
  v53 = 8;
  v21 = sub_217D89BEC();
  (*(v7 + 8))(v10, v6);
  v22 = v42;
  *&v45 = v42;
  v23 = v44;
  *(&v45 + 1) = v44;
  v24 = v41;
  *&v46 = v41;
  v25 = v40;
  *(&v46 + 1) = v40;
  *&v47 = v13;
  v32 = v14;
  *(&v47 + 1) = v14;
  *&v48 = v39;
  *(&v48 + 1) = v35;
  *&v49 = v38;
  *(&v49 + 1) = v34;
  *&v50 = v37;
  v26 = v33;
  *(&v50 + 1) = v33;
  *&v51 = v36;
  *(&v51 + 1) = v21;
  v27 = v50;
  v28 = v43;
  v43[4] = v49;
  v28[5] = v27;
  v28[6] = v51;
  v29 = v46;
  *v28 = v45;
  v28[1] = v29;
  v30 = v48;
  v28[2] = v47;
  v28[3] = v30;
  sub_217BC0508(&v45, v52);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v52[0] = v22;
  v52[1] = v23;
  v52[2] = v24;
  v52[3] = v25;
  v52[4] = v13;
  v52[5] = v32;
  v52[6] = v39;
  v52[7] = v35;
  v52[8] = v38;
  v52[9] = v34;
  v52[10] = v37;
  v52[11] = v26;
  v52[12] = v36;
  v52[13] = v21;
  return sub_217B93D54(v52);
}

void sub_217D29D5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D295BC();
    v7 = a3(a1, &type metadata for FormatSubgroupData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D29DC0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_217D01FD8(255, &qword_27CBA4EE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_217D29E98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_217D29EE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217D29F60()
{
  result = qword_27CBA4F08;
  if (!qword_27CBA4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F08);
  }

  return result;
}

unint64_t sub_217D29FB8()
{
  result = qword_27CBA4F10;
  if (!qword_27CBA4F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F10);
  }

  return result;
}

unint64_t sub_217D2A010()
{
  result = qword_27CBA4F18;
  if (!qword_27CBA4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F18);
  }

  return result;
}

uint64_t sub_217D2A064(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000217DD2D00 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD2D20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD2D40 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x666552656D656874 && a2 == 0xEF7365636E657265 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x655674616D726F66 && a2 == 0xED00006E6F697372 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7247746E65726170 && a2 == 0xEF656D614E70756FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD2D60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000217DD2D80 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD2DA0 == a2)
  {

    return 8;
  }

  else
  {
    v5 = sub_217D89D4C();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_217D2A42C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C1E48);
  __swift_project_value_buffer(v0, qword_2811C1E48);
  return sub_217D8866C();
}

uint64_t PaywallExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PaywallExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 24);
  sub_217D2BEC0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 24);
  sub_217D2BEC0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 28);
  sub_217D2BEC0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 28);
  sub_217D2BEC0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 32);
  sub_217D2BEC0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 32);
  sub_217D2BEC0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 36);
  sub_217D2BEC0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 36);
  sub_217D2BEC0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 40);
  sub_217D2BEC0(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 40);
  sub_217D2BEC0(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 44);
  sub_217D2BEC0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 44);
  sub_217D2BEC0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 48);
  sub_217D2BEC0(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 48);
  sub_217D2BEC0(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 52);
  sub_217D2BEC0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 52);
  sub_217D2BEC0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 56);
  sub_217D2BEC0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 56);
  sub_217D2BEC0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 60);
  sub_217D2BEC0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 60);
  sub_217D2BEC0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 64);
  sub_217D2BEC0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 64);
  sub_217D2BEC0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.puzzleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 68);
  sub_217D2BEC0(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.puzzleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 68);
  sub_217D2BEC0(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.exposedPaywallContentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 72);
  sub_217D2BEC0(0, &qword_2811C8578, sub_217CB56A4, sub_217CB56FC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.exposedPaywallContentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 72);
  sub_217D2BEC0(0, &qword_2811C8578, sub_217CB56A4, sub_217CB56FC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.purchaseOffersData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 76);
  sub_217D2BEC0(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.purchaseOffersData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 76);
  sub_217D2BEC0(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 80);
  sub_217D2BEC0(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D2BEC0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t PaywallExposureEvent.recipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 80);
  sub_217D2BEC0(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PaywallExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217D2BEC0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_217D2BEC0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  sub_217D2BEC0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v13 - 8) + 104))(a1 + v12, v8, v13);
  v14 = v4[9];
  sub_217D2BEC0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v15 - 8) + 104))(a1 + v14, v8, v15);
  v16 = v4[10];
  sub_217D2BEC0(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217D2BEC0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v19 - 8) + 104))(a1 + v18, v8, v19);
  v20 = v4[12];
  sub_217D2BEC0(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217D2BEC0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217D2BEC0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  (*(*(v25 - 8) + 104))(a1 + v24, v8, v25);
  v26 = v4[15];
  sub_217D2BEC0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_217D2BEC0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v29 - 8) + 104))(a1 + v28, v2, v29);
  v30 = v4[17];
  sub_217D2BEC0(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  (*(*(v31 - 8) + 104))(a1 + v30, v8, v31);
  v32 = v4[18];
  sub_217D2BEC0(0, &qword_2811C8578, sub_217CB56A4, sub_217CB56FC);
  (*(*(v33 - 8) + 104))(a1 + v32, v8, v33);
  v34 = v4[19];
  sub_217D2BEC0(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84);
  (*(*(v35 - 8) + 104))(a1 + v34, v8, v35);
  v36 = v4[20];
  sub_217D2BEC0(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v38 = *(*(v37 - 8) + 104);

  return v38(a1 + v36, v8, v37);
}

uint64_t sub_217D2C860@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t PaywallExposureEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 24);
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
  return sub_217AE38AC(v17, v16, &qword_2811C7DB8);
}

uint64_t PaywallExposureEvent.Model.channelData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 28));
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

uint64_t PaywallExposureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t PaywallExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 36));
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

uint64_t PaywallExposureEvent.Model.paywallData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for PaywallExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t PaywallExposureEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 44));
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

uint64_t PaywallExposureEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t PaywallExposureEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 52));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t PaywallExposureEvent.Model.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 56);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

uint64_t PaywallExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 60));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t PaywallExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 64);
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

uint64_t PaywallExposureEvent.Model.puzzleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 68));
  v4 = v3[4];
  v14 = v3[3];
  v5 = v14;
  v15 = v4;
  v6 = v3[2];
  v12 = v3[1];
  v7 = v12;
  v13 = v6;
  v11 = *v3;
  v8 = v11;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v4;
  *a1 = v8;
  a1[1] = v7;
  return sub_217AE38AC(&v11, &v10, &qword_27CB9F6A0);
}

uint64_t PaywallExposureEvent.Model.exposedPaywallContentData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 72));
  *a1 = v3;

  return sub_217AF77A0(v3);
}

uint64_t PaywallExposureEvent.Model.purchaseOffersData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 76));
}

uint64_t PaywallExposureEvent.Model.recipeData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 80));
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

__n128 PaywallExposureEvent.Model.init(eventData:timedData:articleData:channelData:feedData:groupData:paywallData:issueData:purchaseData:purchaseSessionData:sectionData:viewData:userBundleSubscriptionContextData:puzzleData:exposedPaywallContentData:purchaseOffersData:recipeData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, _OWORD *a6@<X5>, __int16 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11, __int128 *a12, uint64_t *a13, uint64_t a14, _OWORD *a15, uint64_t *a16, uint64_t *a17, uint64_t a18)
{
  v57 = *a5;
  v55 = *(a4 + 4);
  v56 = *(a5 + 2);
  v63 = *a10;
  v62 = a10[1];
  v60 = *a7;
  v61 = *(a10 + 16);
  v64 = a11[1];
  v65 = *a11;
  v68 = *a12;
  v67 = *(a12 + 2);
  v66 = *(a12 + 24);
  v71 = *a13;
  v70 = a13[1];
  v69 = *(a13 + 8);
  v74 = *a16;
  v75 = *a17;
  v76 = *(a18 + 32);
  v25 = sub_217D8899C();
  v72 = *(a18 + 16);
  v73 = *a18;
  v58 = a8[1];
  v59 = *a8;
  v53 = a4[1];
  v54 = *a4;
  (*(*(v25 - 8) + 32))(a9, a1, v25);
  v26 = type metadata accessor for PaywallExposureEvent.Model(0);
  v27 = v26[5];
  v28 = sub_217D889CC();
  (*(*(v28 - 8) + 32))(a9 + v27, a2, v28);
  v29 = a9 + v26[6];
  v30 = *(a3 + 48);
  *(v29 + 32) = *(a3 + 32);
  *(v29 + 48) = v30;
  v31 = *(a3 + 16);
  *v29 = *a3;
  *(v29 + 16) = v31;
  *(v29 + 127) = *(a3 + 127);
  v32 = *(a3 + 112);
  *(v29 + 96) = *(a3 + 96);
  *(v29 + 112) = v32;
  v33 = *(a3 + 80);
  *(v29 + 64) = *(a3 + 64);
  *(v29 + 80) = v33;
  v34 = a9 + v26[7];
  *v34 = v54;
  *(v34 + 16) = v53;
  *(v34 + 32) = v55;
  v35 = a9 + v26[8];
  *v35 = v57;
  *(v35 + 16) = v56;
  v36 = (a9 + v26[9]);
  v37 = a6[7];
  v36[6] = a6[6];
  v36[7] = v37;
  v36[8] = a6[8];
  v38 = a6[3];
  v36[2] = a6[2];
  v36[3] = v38;
  v39 = a6[5];
  v36[4] = a6[4];
  v36[5] = v39;
  v40 = a6[1];
  *v36 = *a6;
  v36[1] = v40;
  *(a9 + v26[10]) = v60;
  v41 = (a9 + v26[11]);
  *v41 = v59;
  v41[1] = v58;
  v42 = a9 + v26[12];
  *v42 = v63;
  *(v42 + 8) = v62;
  *(v42 + 16) = v61;
  v43 = (a9 + v26[13]);
  *v43 = v65;
  v43[1] = v64;
  v44 = a9 + v26[14];
  *v44 = v68;
  *(v44 + 16) = v67;
  *(v44 + 24) = v66;
  v45 = a9 + v26[15];
  *v45 = v71;
  *(v45 + 8) = v70;
  *(v45 + 16) = v69;
  v46 = a9 + v26[16];
  *(v46 + 48) = *(a14 + 48);
  v47 = *(a14 + 32);
  *(v46 + 16) = *(a14 + 16);
  *(v46 + 32) = v47;
  *v46 = *a14;
  v48 = (a9 + v26[17]);
  v49 = a15[4];
  v48[3] = a15[3];
  v48[4] = v49;
  v50 = a15[2];
  v48[1] = a15[1];
  v48[2] = v50;
  *v48 = *a15;
  *(a9 + v26[18]) = v74;
  *(a9 + v26[19]) = v75;
  v51 = a9 + v26[20];
  result = v73;
  *v51 = v73;
  *(v51 + 16) = v72;
  *(v51 + 32) = v76;
  return result;
}

uint64_t sub_217D2D180(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      return 0x74614464656D6974;
    case 2:
      return 0x44656C6369747261;
    case 3:
      v5 = 0x656E6E616863;
      return v5 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
    case 4:
      v4 = 1684366694;
      return v4 | 0x6174614400000000;
    case 5:
      return 0x74614470756F7267;
    case 6:
      v5 = 0x6C6177796170;
      return v5 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
    case 7:
      return 0x7461446575737369;
    case 8:
      return 0x6573616863727570;
    case 9:
      return 0xD000000000000013;
    case 10:
      return 0x446E6F6974636573;
    case 11:
      v4 = 2003134838;
      return v4 | 0x6174614400000000;
    case 12:
      return 0xD000000000000021;
    case 13:
      v3 = 0x656C7A7A7570;
      goto LABEL_16;
    case 14:
      return 0xD000000000000019;
    case 15:
      return 0xD000000000000012;
    case 16:
      v3 = 0x657069636572;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217D2D34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217D30340(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217D2D380(uint64_t a1)
{
  v2 = sub_217D2DF0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D2D3BC(uint64_t a1)
{
  v2 = sub_217D2DF0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PaywallExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D2EF38(0, &qword_27CBA4F20, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v70 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D2DF0C();
  sub_217D89E7C();
  LOBYTE(v110) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for PaywallExposureEvent.Model(0);
    v13 = v12[5];
    v141 = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = v3 + v12[6];
    v15 = *(v14 + 80);
    v16 = *(v14 + 112);
    v139 = *(v14 + 96);
    *v140 = v16;
    v17 = *(v14 + 16);
    v18 = *(v14 + 48);
    v135 = *(v14 + 32);
    v136 = v18;
    v19 = *(v14 + 48);
    v20 = *(v14 + 80);
    v137 = *(v14 + 64);
    v138 = v20;
    v21 = *(v14 + 16);
    v134[0] = *v14;
    v134[1] = v21;
    v22 = *(v14 + 112);
    v132 = v139;
    v133[0] = v22;
    v128 = v135;
    v129 = v19;
    v131 = v15;
    v130 = v137;
    *&v140[15] = *(v14 + 127);
    *(v133 + 15) = *(v14 + 127);
    v127 = v17;
    v126 = v134[0];
    v125 = 2;
    sub_217AE38AC(v134, &v110, &qword_2811C7DB8);
    sub_217ACF52C();
    sub_217D89C3C();
    v123[6] = v132;
    *v124 = v133[0];
    *&v124[15] = *(v133 + 15);
    v123[2] = v128;
    v123[3] = v129;
    v123[5] = v131;
    v123[4] = v130;
    v123[0] = v126;
    v123[1] = v127;
    sub_217AE4A44(v123, &qword_2811C7DB8);
    v23 = (v3 + v12[7]);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    v27 = v23[4];
    *&v110 = *v23;
    *(&v110 + 1) = v24;
    *&v111 = v25;
    *(&v111 + 1) = v26;
    *&v112 = v27;
    LOBYTE(v101) = 3;
    sub_217AD86BC(v110, v24);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v110, *(&v110 + 1));
    v28 = (v3 + v12[8]);
    v29 = v28[1];
    v30 = v28[2];
    v120 = *v28;
    v121 = v29;
    v122 = v30;
    v119 = 4;
    sub_217AD1A68(v120, v29, v30);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v120, v121, v122);
    v31 = (v3 + v12[9]);
    v32 = v31[5];
    v33 = v31[7];
    v116 = v31[6];
    v117 = v33;
    v34 = v31[7];
    v118 = v31[8];
    v35 = v31[1];
    v36 = v31[3];
    v112 = v31[2];
    v113 = v36;
    v37 = v31[3];
    v38 = v31[5];
    v114 = v31[4];
    v115 = v38;
    v39 = v31[1];
    v110 = *v31;
    v111 = v39;
    v107 = v116;
    v108 = v34;
    v109 = v31[8];
    v103 = v112;
    v104 = v37;
    v105 = v114;
    v106 = v32;
    v101 = v110;
    v102 = v35;
    v100 = 5;
    sub_217AE38AC(&v110, v99, &qword_2811BD178);
    sub_217A5D3B4();
    sub_217D89C3C();
    v99[6] = v107;
    v99[7] = v108;
    v99[8] = v109;
    v99[2] = v103;
    v99[3] = v104;
    v99[4] = v105;
    v99[5] = v106;
    v99[0] = v101;
    v99[1] = v102;
    sub_217AE4A44(v99, &qword_2811BD178);
    LOWORD(v85[0]) = *(v3 + v12[10]);
    LOBYTE(v78) = 6;
    sub_217B1DEE8();
    sub_217D89CAC();
    v40 = (v3 + v12[11]);
    v41 = v40[1];
    v42 = v40[2];
    v43 = v40[3];
    *&v85[0] = *v40;
    *(&v85[0] + 1) = v41;
    *&v85[1] = v42;
    *(&v85[1] + 1) = v43;
    LOBYTE(v78) = 7;
    sub_217AE39D0(*&v85[0], v41);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(*&v85[0], *(&v85[0] + 1));
    v44 = (v3 + v12[12]);
    v45 = *v44;
    v46 = v44[1];
    LOBYTE(v44) = *(v44 + 16);
    *&v85[0] = v45;
    *(&v85[0] + 1) = v46;
    LOBYTE(v85[1]) = v44;
    LOBYTE(v78) = 8;
    sub_217AFF378();

    sub_217D89CAC();

    v47 = (v3 + v12[13]);
    v48 = v47[1];
    *&v85[0] = *v47;
    *(&v85[0] + 1) = v48;
    LOBYTE(v78) = 9;
    sub_217B1E4A0();

    sub_217D89CAC();

    v49 = v3 + v12[14];
    v50 = *(v49 + 24);
    *&v85[0] = *v49;
    *(v85 + 8) = *(v49 + 8);
    BYTE8(v85[1]) = v50;
    LOBYTE(v78) = 10;
    sub_217B17644();

    sub_217D89C3C();

    v52 = (v3 + v12[15]);
    v53 = *v52;
    v54 = v52[1];
    LOWORD(v52) = *(v52 + 8);
    v96 = v53;
    v97 = v54;
    v98 = v52;
    v95 = 11;
    sub_217A5E790();

    sub_217D89CAC();

    v55 = (v3 + v12[16]);
    v56 = v55[1];
    v93[0] = *v55;
    v93[1] = v56;
    v58 = *v55;
    v57 = v55[1];
    v93[2] = v55[2];
    v94 = *(v55 + 48);
    v89 = v58;
    v90 = v57;
    v91 = v55[2];
    v92 = *(v55 + 48);
    v88 = 12;
    sub_217ACC004(v93, v85);
    sub_217A55B98();
    sub_217D89CAC();
    v83[0] = v89;
    v83[1] = v90;
    v83[2] = v91;
    v84 = v92;
    sub_217ACC69C(v83);
    v59 = (v3 + v12[17]);
    v60 = v59[4];
    v61 = v59[1];
    v62 = v59[2];
    v86 = v59[3];
    v87 = v60;
    v63 = *v59;
    v64 = *v59;
    v85[1] = v59[1];
    v85[2] = v62;
    v85[0] = v63;
    v80 = v62;
    v81 = v86;
    v82 = v59[4];
    v78 = v64;
    v79 = v61;
    v77 = 13;
    sub_217AE38AC(v85, v76, &qword_27CB9F6A0);
    sub_217AD6D08();
    sub_217D89C3C();
    v76[2] = v80;
    v76[3] = v81;
    v76[4] = v82;
    v76[0] = v78;
    v76[1] = v79;
    sub_217AE4A44(v76, &qword_27CB9F6A0);
    v70 = *(v3 + v12[18]);
    v75 = 14;
    sub_217AF77A0(v70);
    sub_217CB56FC();
    sub_217D89C3C();
    sub_217AF8158(v70);
    v70 = *(v3 + v12[19]);
    v75 = 15;
    sub_217BDDE84();

    sub_217D89C3C();

    v65 = (v3 + v12[20]);
    v66 = v65[1];
    v67 = v65[2];
    v68 = v65[3];
    v69 = v65[4];
    v70 = *v65;
    v71 = v66;
    v72 = v67;
    v73 = v68;
    v74 = v69;
    v75 = 16;
    sub_217AD86BC(v70, v66);
    sub_217B1F08C();
    sub_217D89C3C();
    sub_217AD96A4(v70, v71);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217D2DF0C()
{
  result = qword_27CBA4F28;
  if (!qword_27CBA4F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F28);
  }

  return result;
}

uint64_t PaywallExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v70 = sub_217D889CC();
  v68 = *(v70 - 8);
  v3 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  v71 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v69 = *(v5 - 8);
  v6 = *(v69 + 64);
  MEMORY[0x28223BE20](v5);
  v72 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D2EF38(0, &qword_27CBA4F30, MEMORY[0x277D844C8]);
  v75 = v8;
  v73 = *(v8 - 8);
  v9 = *(v73 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v64 - v10;
  v12 = type metadata accessor for PaywallExposureEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D2DF0C();
  v74 = v11;
  v17 = v110;
  sub_217D89E5C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v71;
  v65 = v12;
  v66 = a1;
  v110 = v15;
  LOBYTE(v101) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v19 = v72;
  sub_217D89BCC();
  v20 = v5;
  v21 = *(v69 + 32);
  v22 = v110;
  v72 = v20;
  v21(v110, v19);
  LOBYTE(v101) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v23 = v18;
  v24 = v70;
  sub_217D89BCC();
  v64[2] = 0;
  v25 = v65;
  (*(v68 + 32))(&v22[v65[5]], v23, v24);
  v92 = 2;
  sub_217ACF4D8();
  sub_217D89B5C();
  v26 = &v22[v25[6]];
  v27 = *v100;
  *(v26 + 6) = v99;
  *(v26 + 7) = v27;
  *(v26 + 127) = *&v100[15];
  v28 = v96;
  *(v26 + 2) = v95;
  *(v26 + 3) = v28;
  v29 = v98;
  *(v26 + 4) = v97;
  *(v26 + 5) = v29;
  v30 = v94;
  *v26 = v93;
  *(v26 + 1) = v30;
  LOBYTE(v81) = 3;
  sub_217AD07F8();
  sub_217D89B5C();
  v31 = v103;
  v32 = &v22[v25[7]];
  v33 = v102;
  *v32 = v101;
  *(v32 + 1) = v33;
  *(v32 + 4) = v31;
  LOBYTE(v81) = 4;
  sub_217A5B978();
  sub_217D89B5C();
  v34 = v102;
  v35 = &v22[v25[8]];
  *v35 = v101;
  *(v35 + 2) = v34;
  v91 = 5;
  sub_217A5D308();
  sub_217D89B5C();
  v36 = &v22[v25[9]];
  v37 = v108;
  *(v36 + 6) = v107;
  *(v36 + 7) = v37;
  *(v36 + 8) = v109;
  v38 = v104;
  *(v36 + 2) = v103;
  *(v36 + 3) = v38;
  v39 = v106;
  *(v36 + 4) = v105;
  *(v36 + 5) = v39;
  v40 = v102;
  *v36 = v101;
  *(v36 + 1) = v40;
  LOBYTE(v87) = 6;
  sub_217B1DE94();
  sub_217D89BCC();
  *&v22[v25[10]] = v81;
  LOBYTE(v87) = 7;
  sub_217ACFF40();
  sub_217D89B5C();
  v41 = &v22[v25[11]];
  v42 = v82;
  *v41 = v81;
  *(v41 + 1) = v42;
  LOBYTE(v87) = 8;
  sub_217AFF324();
  sub_217D89BCC();
  v43 = *(&v81 + 1);
  v44 = v82;
  v45 = &v110[v25[12]];
  *v45 = v81;
  *(v45 + 1) = v43;
  v45[16] = v44;
  LOBYTE(v87) = 9;
  sub_217B1E44C();
  sub_217D89BCC();
  v46 = *(&v81 + 1);
  v47 = &v110[v65[13]];
  *v47 = v81;
  *(v47 + 1) = v46;
  LOBYTE(v87) = 10;
  sub_217B175F0();
  sub_217D89B5C();
  v48 = v82;
  v49 = BYTE8(v82);
  v50 = &v110[v65[14]];
  *v50 = v81;
  *(v50 + 2) = v48;
  v50[24] = v49;
  LOBYTE(v87) = 11;
  sub_217A5E738();
  sub_217D89BCC();
  v51 = *(&v81 + 1);
  v52 = v82;
  v53 = &v110[v65[15]];
  *v53 = v81;
  *(v53 + 1) = v51;
  *(v53 + 8) = v52;
  v86 = 12;
  sub_217A54D08();
  sub_217D89BCC();
  v54 = &v110[v65[16]];
  v55 = v88;
  *v54 = v87;
  *(v54 + 1) = v55;
  *(v54 + 2) = v89;
  v54[48] = v90;
  v80 = 13;
  sub_217AD6CB4();
  sub_217D89B5C();
  v56 = &v110[v65[17]];
  v57 = v84;
  *(v56 + 2) = v83;
  *(v56 + 3) = v57;
  *(v56 + 4) = v85;
  v58 = v82;
  *v56 = v81;
  *(v56 + 1) = v58;
  v79 = 14;
  sub_217CB56A4();
  sub_217D89B5C();
  *&v110[v65[18]] = v76;
  v79 = 15;
  sub_217BDDE2C();
  sub_217D89B5C();
  *&v110[v65[19]] = v76;
  v79 = 16;
  sub_217B1F038();
  sub_217D89B5C();
  (*(v73 + 8))(v74, v75);
  v59 = v78;
  v60 = v110;
  v61 = &v110[v65[20]];
  v62 = v77;
  *v61 = v76;
  *(v61 + 1) = v62;
  *(v61 + 4) = v59;
  sub_217D2EF9C(v60, v67);
  __swift_destroy_boxed_opaque_existential_1(v66);
  return sub_217D2F000(v60);
}

void sub_217D2EF38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D2DF0C();
    v7 = a3(a1, &type metadata for PaywallExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D2EF9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaywallExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D2F000(uint64_t a1)
{
  v2 = type metadata accessor for PaywallExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D2F134@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217D2BEC0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217D2BEC0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_217D2BEC0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v14 - 8) + 104))(a2 + v13, v9, v14);
  v15 = a1[9];
  sub_217D2BEC0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v16 - 8) + 104))(a2 + v15, v9, v16);
  v17 = a1[10];
  sub_217D2BEC0(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217D2BEC0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v20 - 8) + 104))(a2 + v19, v9, v20);
  v21 = a1[12];
  sub_217D2BEC0(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217D2BEC0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217D2BEC0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  (*(*(v26 - 8) + 104))(a2 + v25, v9, v26);
  v27 = a1[15];
  sub_217D2BEC0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  sub_217D2BEC0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v30 - 8) + 104))(a2 + v29, v4, v30);
  v31 = a1[17];
  sub_217D2BEC0(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  (*(*(v32 - 8) + 104))(a2 + v31, v9, v32);
  v33 = a1[18];
  sub_217D2BEC0(0, &qword_2811C8578, sub_217CB56A4, sub_217CB56FC);
  (*(*(v34 - 8) + 104))(a2 + v33, v9, v34);
  v35 = a1[19];
  sub_217D2BEC0(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84);
  (*(*(v36 - 8) + 104))(a2 + v35, v9, v36);
  v37 = a1[20];
  sub_217D2BEC0(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v39 = *(*(v38 - 8) + 104);

  return v39(a2 + v37, v9, v38);
}

void sub_217D2F938()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217D2BEC0(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
      if (v2 <= 0x3F)
      {
        sub_217D2BEC0(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
        if (v3 <= 0x3F)
        {
          sub_217D2BEC0(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
          if (v4 <= 0x3F)
          {
            sub_217D2BEC0(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
            if (v5 <= 0x3F)
            {
              sub_217D2BEC0(319, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
              if (v6 <= 0x3F)
              {
                sub_217D2BEC0(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
                if (v7 <= 0x3F)
                {
                  sub_217D2BEC0(319, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
                  if (v8 <= 0x3F)
                  {
                    sub_217D2BEC0(319, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
                    if (v9 <= 0x3F)
                    {
                      sub_217D2BEC0(319, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
                      if (v10 <= 0x3F)
                      {
                        sub_217D2BEC0(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
                        if (v11 <= 0x3F)
                        {
                          sub_217D2BEC0(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                          if (v12 <= 0x3F)
                          {
                            sub_217D2BEC0(319, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
                            if (v13 <= 0x3F)
                            {
                              sub_217D2BEC0(319, &qword_2811C8578, sub_217CB56A4, sub_217CB56FC);
                              if (v14 <= 0x3F)
                              {
                                sub_217D2BEC0(319, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84);
                                if (v15 <= 0x3F)
                                {
                                  sub_217D2BEC0(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
                                  if (v16 <= 0x3F)
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
  }
}

void sub_217D2FE98()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217D889CC();
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7DB8);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811C7D70);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD308);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811BD178);
            if (v5 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811BD110);
              if (v6 <= 0x3F)
              {
                sub_217A5E974(319, &qword_2811C7C80);
                if (v7 <= 0x3F)
                {
                  sub_217A5E974(319, &qword_27CB9F6A0);
                  if (v8 <= 0x3F)
                  {
                    sub_217A5E974(319, &qword_27CBA4F38);
                    if (v9 <= 0x3F)
                    {
                      sub_217A5E974(319, &qword_2811C2F08);
                      if (v10 <= 0x3F)
                      {
                        sub_217A5E974(319, &qword_2811C7EF8);
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

uint64_t getEnumTagSinglePayload for PaywallExposureEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PaywallExposureEvent.Model.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217D3023C()
{
  result = qword_27CBA4F40;
  if (!qword_27CBA4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F40);
  }

  return result;
}

unint64_t sub_217D30294()
{
  result = qword_27CBA4F48;
  if (!qword_27CBA4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F48);
  }

  return result;
}

unint64_t sub_217D302EC()
{
  result = qword_27CBA4F50;
  if (!qword_27CBA4F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F50);
  }

  return result;
}

uint64_t sub_217D30340(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCD9D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6144656C7A7A7570 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000217DD2DC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD1600 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6144657069636572 && a2 == 0xEA00000000006174)
  {

    return 16;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_217D308F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x436465766F6D6572 && a2 == 0xEC000000746E756FLL)
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

uint64_t sub_217D30984(uint64_t a1)
{
  v2 = sub_217D30B44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D309C0(uint64_t a1)
{
  v2 = sub_217D30B44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsRemoveFavoritesSyncData.encode(to:)(void *a1)
{
  sub_217D30D18(0, &qword_27CBA4F58, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D30B44();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D30B44()
{
  result = qword_27CBA4F60;
  if (!qword_27CBA4F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F60);
  }

  return result;
}

uint64_t SportsRemoveFavoritesSyncData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217D30D18(0, &qword_27CBA4F68, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D30B44();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89BDC();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D30D18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D30B44();
    v7 = a3(a1, &type metadata for SportsRemoveFavoritesSyncData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D30D9C(void *a1)
{
  sub_217D30D18(0, &qword_27CBA4F58, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D30B44();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D30F08()
{
  result = qword_27CBA4F70;
  if (!qword_27CBA4F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F70);
  }

  return result;
}

unint64_t sub_217D30F60()
{
  result = qword_27CBA4F78;
  if (!qword_27CBA4F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F78);
  }

  return result;
}

unint64_t sub_217D30FB8()
{
  result = qword_27CBA4F80;
  if (!qword_27CBA4F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F80);
  }

  return result;
}

NewsAnalytics::AuxiliaryData_optional __swiftcall FormatContent.Resolved.auxiliaryData(itemIdentifier:)(Swift::String itemIdentifier)
{
  v144 = itemIdentifier;
  v124 = v1;
  v133 = sub_217D8939C();
  v2 = *(v133 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v133);
  v132 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_217D8937C();
  v5 = *(v141 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v141);
  v140 = (&v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v138 = (&v110 - v9);
  v143 = sub_217D893DC();
  v118 = *(v143 - 8);
  v10 = *(v118 + 64);
  v11 = MEMORY[0x28223BE20](v143);
  v139 = (&v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v137 = (&v110 - v13);
  v14 = sub_217D893BC();
  v127 = *(v14 - 8);
  v128 = v14;
  v15 = *(v127 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v119 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v122 = &v110 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v117 = &v110 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v110 - v22;
  v24 = sub_217D8924C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v142 = &v110 - v30;
  v135 = sub_217D892DC();
  v31 = *(v135 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v135);
  v34 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_217D891FC();
  v37 = v35[2];
  if (v37)
  {
    v114 = v5;
    v115 = v23;
    v38 = 0;
    v39 = v35 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v145 = v25 + 16;
    v130 = v2 + 16;
    v129 = v2 + 8;
    v121 = (v31 + 8);
    v136 = v34;
    v131 = v2;
    v113 = v31;
    v120 = v35;
    v112 = v37;
    v111 = v39;
    v110 = v31 + 16;
    while (1)
    {
      if (v38 >= v35[2])
      {
        goto LABEL_56;
      }

      v40 = *(v31 + 72);
      v116 = v38;
      (*(v31 + 16))(v34, &v39[v40 * v38], v135);
      v35 = sub_217D892BC();
      v41 = v35;
      v42 = v35[2];
      if (v42)
      {
        break;
      }

LABEL_11:

      v34 = v136;
      v35 = sub_217D892CC();
      v123 = v35[2];
      if (v123)
      {
        v49 = 0;
        v50 = v131;
        v126 = v35 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
        v125 = v35;
        while (v49 < v35[2])
        {
          v51 = *(v50 + 72);
          v134 = v49;
          v52 = &v126[v51 * v49];
          v53 = v132;
          v54 = v133;
          (*(v50 + 16))(v132, v52, v133);
          v55 = sub_217D8938C();
          v35 = (*(v50 + 8))(v53, v54);
          v56 = *(v55 + 16);
          if (v56)
          {
            v57 = 0;
            v58 = v55 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
            while (1)
            {
              if (v57 >= *(v55 + 16))
              {
                __break(1u);
                goto LABEL_54;
              }

              (*(v25 + 16))(v29, v58 + *(v25 + 72) * v57, v24);
              v59 = sub_217D8923C();
              (*(v25 + 8))(v29, v24);
              if (*(v59 + 16))
              {
                v60 = sub_217C2E9BC(v144._countAndFlagsBits, v144._object);
                if (v61)
                {
                  break;
                }
              }

              ++v57;

              if (v56 == v57)
              {
                goto LABEL_13;
              }
            }

            v64 = v60;

            v66 = v127;
            v65 = v128;
            v67 = v119;
            (*(v127 + 16))(v119, *(v59 + 56) + *(v127 + 72) * v64, v128);

            (*(v66 + 32))(v122, v67, v65);
            v68 = sub_217D893AC();
            v69 = *(v68 + 16);
            if (v69)
            {
              v70 = *(v118 + 16);
              v71 = (*(v118 + 80) + 32) & ~*(v118 + 80);
              v134 = v68;
              v72 = v68 + v71;
              v145 = *(v118 + 72);
              v144._object = v114 + 88;
              LODWORD(v144._countAndFlagsBits) = *MEMORY[0x277D34128];
              v73 = (v118 + 8);
              v137 = (v114 + 96);
              v138 = (v114 + 8);
              v63 = MEMORY[0x277D84F90];
              v75 = v140;
              v74 = v141;
              v76 = v143;
              v77 = v139;
              v142 = v70;
              (v70)(v139, v68 + v71, v143);
              while (1)
              {
                sub_217D893CC();
                v78 = (*v144._object)(v75, v74);
                if (v78 == LODWORD(v144._countAndFlagsBits))
                {
                  (*v137)(v75, v74);
                  v79 = [*v75 identifier];
                  v80 = sub_217D8954C();
                  v82 = v81;
                  swift_unknownObjectRelease();

                  (*v73)(v77, v143);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v63 = sub_217B5AD14(0, *(v63 + 2) + 1, 1, v63);
                  }

                  v84 = *(v63 + 2);
                  v83 = *(v63 + 3);
                  if (v84 >= v83 >> 1)
                  {
                    v63 = sub_217B5AD14((v83 > 1), v84 + 1, 1, v63);
                  }

                  *(v63 + 2) = v84 + 1;
                  v85 = &v63[16 * v84];
                  *(v85 + 4) = v80;
                  *(v85 + 5) = v82;
                  v75 = v140;
                  v74 = v141;
                  v70 = v142;
                  v76 = v143;
                  v77 = v139;
                }

                else
                {
                  (*v73)(v77, v76);
                  (*v138)(v75, v74);
                }

                v72 += v145;
                if (!--v69)
                {
                  break;
                }

                (v70)(v77, v72, v76);
              }
            }

            else
            {

              v63 = MEMORY[0x277D84F90];
            }

            (*(v127 + 8))(v122, v128);
            v35 = (*v121)(v136, v135);
            goto LABEL_52;
          }

LABEL_13:
          v49 = v134 + 1;

          v34 = v136;
          v50 = v131;
          v35 = v125;
          if (v49 == v123)
          {
            goto LABEL_22;
          }
        }

LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

LABEL_22:

      v31 = v113;
      v62 = v116 + 1;
      (*v121)(v34, v135);
      v38 = v62;
      v35 = v120;
      v39 = v111;
      if (v62 == v112)
      {
        goto LABEL_23;
      }
    }

    v43 = 0;
    v44 = v35 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    while (1)
    {
      if (v43 >= v41[2])
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v45 = v142;
      (*(v25 + 16))(v142, &v44[*(v25 + 72) * v43], v24);
      v46 = sub_217D8923C();
      (*(v25 + 8))(v45, v24);
      if (*(v46 + 16))
      {
        v47 = sub_217C2E9BC(v144._countAndFlagsBits, v144._object);
        if (v48)
        {
          break;
        }
      }

      ++v43;

      if (v42 == v43)
      {
        goto LABEL_11;
      }
    }

    v86 = v47;

    v87 = v127;
    v88 = *(v46 + 56) + *(v127 + 72) * v86;
    v89 = v117;
    v90 = v128;
    (*(v127 + 16))(v117, v88, v128);

    (*(v87 + 32))(v115, v89, v90);
    v91 = sub_217D893AC();
    v92 = *(v91 + 16);
    if (v92)
    {
      v93 = *(v118 + 16);
      v94 = (*(v118 + 80) + 32) & ~*(v118 + 80);
      v134 = v91;
      v95 = v91 + v94;
      v145 = *(v118 + 72);
      v144._object = v114 + 88;
      LODWORD(v144._countAndFlagsBits) = *MEMORY[0x277D34128];
      v96 = (v118 + 8);
      v139 = (v114 + 96);
      v140 = (v114 + 8);
      v63 = MEMORY[0x277D84F90];
      v97 = v141;
      v98 = v143;
      v99 = v137;
      v100 = v138;
      v142 = v93;
      (v93)(v137, v91 + v94, v143);
      while (1)
      {
        sub_217D893CC();
        v101 = (*v144._object)(v100, v97);
        if (v101 == LODWORD(v144._countAndFlagsBits))
        {
          (*v139)(v100, v97);
          v102 = [*v100 identifier];
          v103 = sub_217D8954C();
          v105 = v104;
          swift_unknownObjectRelease();

          (*v96)(v99, v143);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_217B5AD14(0, *(v63 + 2) + 1, 1, v63);
          }

          v107 = *(v63 + 2);
          v106 = *(v63 + 3);
          if (v107 >= v106 >> 1)
          {
            v63 = sub_217B5AD14((v106 > 1), v107 + 1, 1, v63);
          }

          *(v63 + 2) = v107 + 1;
          v108 = &v63[16 * v107];
          *(v108 + 4) = v103;
          *(v108 + 5) = v105;
          v97 = v141;
          v93 = v142;
          v98 = v143;
          v99 = v137;
          v100 = v138;
        }

        else
        {
          (*v96)(v99, v98);
          (*v140)(v100, v97);
        }

        v95 += v145;
        if (!--v92)
        {
          break;
        }

        (v93)(v99, v95, v98);
      }
    }

    else
    {

      v63 = MEMORY[0x277D84F90];
    }

    v109 = v136;
    (*(v127 + 8))(v115, v128);
    v35 = (*v121)(v109, v135);
  }

  else
  {
LABEL_23:

    v63 = 0;
  }

LABEL_52:
  *v124 = v63;
LABEL_57:
  result.value.articleIDs._rawValue = v35;
  result.is_nil = v36;
  return result;
}

char *FormatContent.Resolved.groupedAuxiliaryData.getter@<X0>(char **a1@<X8>)
{
  v161 = a1;
  v163 = sub_217D8939C();
  v165 = *(v163 - 8);
  v1 = *(v165 + 64);
  MEMORY[0x28223BE20](v163);
  v162 = &v147 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_217D8937C();
  v207 = *(v3 - 8);
  v4 = *(v207 + 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v147 - v8);
  v206 = sub_217D893DC();
  v10 = *(v206 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v206);
  v195 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v201 = &v147 - v14;
  v15 = sub_217D893BC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v187 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v192 = &v147 - v21;
  MEMORY[0x28223BE20](v20);
  v189 = &v147 - v22;
  sub_217D32F44();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v179 = (&v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v147 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v177 = &v147 - v31;
  MEMORY[0x28223BE20](v30);
  v183 = &v147 - v32;
  v175 = sub_217D8924C();
  v33 = *(v175 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v175);
  v167 = &v147 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v171 = &v147 - v37;
  v164 = sub_217D892DC();
  v38 = *(v164 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v164);
  v166 = &v147 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_217D891FC();
  v42 = *(result + 2);
  if (v42)
  {
    v43 = 0;
    v44 = &result[(*(v38 + 80) + 32) & ~*(v38 + 80)];
    v173 = v33 + 16;
    v174 = v33;
    v172 = v33 + 8;
    v188 = v16 + 16;
    v194 = (v16 + 32);
    v205 = v10 + 16;
    v204 = (v10 + 8);
    v203 = v207 + 88;
    v202 = *MEMORY[0x277D34128];
    v197 = v207 + 8;
    v196 = v207 + 96;
    v190 = (v16 + 8);
    v160 = v165 + 16;
    v159 = v165 + 8;
    v151 = (v38 + 8);
    v207 = MEMORY[0x277D84F90];
    v199 = v7;
    v200 = v3;
    v198 = v9;
    v184 = v15;
    v191 = v16;
    v178 = v29;
    v45 = v177;
    v185 = v10;
    v156 = v38;
    v155 = result;
    v154 = v42;
    v153 = v44;
    v152 = v38 + 16;
    while (1)
    {
      if (v43 >= *(result + 2))
      {
        goto LABEL_88;
      }

      v46 = *(v38 + 72);
      v158 = v43;
      (*(v38 + 16))(v166, &v44[v46 * v43], v164);
      result = sub_217D892BC();
      v169 = *(result + 2);
      if (v169)
      {
        v47 = 0;
        v48 = v174;
        v170 = &result[(*(v48 + 80) + 32) & ~*(v48 + 80)];
        v168 = result;
        while (2)
        {
          if (v47 >= *(result + 2))
          {
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          v49 = v171;
          v50 = v175;
          (*(v48 + 16))(v171, &v170[*(v48 + 72) * v47], v175);
          v176 = v47 + 1;
          v51 = sub_217D8923C();
          result = (*(v48 + 8))(v49, v50);
          v52 = 0;
          v54 = v51 + 64;
          v53 = *(v51 + 64);
          v180 = v51;
          v55 = 1 << *(v51 + 32);
          v56 = v55 < 64 ? ~(-1 << v55) : -1;
          v57 = v56 & v53;
          v58 = (v55 + 63) >> 6;
          v59 = v191;
          v182 = v51 + 64;
          v181 = v58;
          while (1)
          {
            if (!v57)
            {
              if (v58 <= v52 + 1)
              {
                v61 = v52 + 1;
              }

              else
              {
                v61 = v58;
              }

              v62 = v61 - 1;
              while (1)
              {
                v60 = v52 + 1;
                if (__OFADD__(v52, 1))
                {
                  break;
                }

                if (v60 >= v58)
                {
                  sub_217D32F9C();
                  v70 = v92;
                  (*(*(v92 - 8) + 56))(v45, 1, 1, v92);
                  v193 = 0;
                  v52 = v62;
                  goto LABEL_25;
                }

                v57 = *(v54 + 8 * v60);
                ++v52;
                if (v57)
                {
                  v52 = v60;
                  goto LABEL_24;
                }
              }

              __break(1u);
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

            v60 = v52;
LABEL_24:
            v193 = (v57 - 1) & v57;
            v63 = __clz(__rbit64(v57)) | (v60 << 6);
            v64 = (*(v180 + 48) + 16 * v63);
            v66 = *v64;
            v65 = v64[1];
            v67 = v189;
            (*(v59 + 16))(v189, *(v180 + 56) + *(v59 + 72) * v63, v15);
            sub_217D32F9C();
            v68 = v59;
            v70 = v69;
            v71 = *(v69 + 48);
            *v45 = v66;
            *(v45 + 1) = v65;
            (*(v68 + 32))(&v45[v71], v67, v15);
            (*(*(v70 - 8) + 56))(v45, 0, 1, v70);

LABEL_25:
            v72 = v183;
            sub_217D33008(v45, v183);
            sub_217D32F9C();
            if ((*(*(v70 - 8) + 48))(v72, 1, v70) == 1)
            {
              break;
            }

            v73 = *(v72 + 8);

            (*v194)(v192, v72 + *(v70 + 48), v15);
            v74 = sub_217D893AC();
            v75 = *(v74 + 16);
            if (v75)
            {
              v76 = (*(v185 + 80) + 32) & ~*(v185 + 80);
              v186 = v74;
              v77 = v74 + v76;
              v78 = *(v185 + 72);
              v79 = *(v185 + 16);
              do
              {
                v80 = v201;
                v81 = v206;
                v79(v201, v77, v206);
                sub_217D893CC();
                (*v204)(v80, v81);
                v82 = (*v203)(v9, v3);
                if (v82 == v202)
                {
                  (*v196)(v9, v3);
                  v83 = [*v9 identifier];
                  v84 = sub_217D8954C();
                  v86 = v85;

                  v87 = v207;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v87 = sub_217B5AD14(0, *(v87 + 2) + 1, 1, v87);
                  }

                  v89 = *(v87 + 2);
                  v88 = *(v87 + 3);
                  v207 = v87;
                  if (v89 >= v88 >> 1)
                  {
                    v207 = sub_217B5AD14((v88 > 1), v89 + 1, 1, v207);
                  }

                  swift_unknownObjectRelease();
                  v90 = v207;
                  *(v207 + 2) = v89 + 1;
                  v91 = &v90[16 * v89];
                  *(v91 + 4) = v84;
                  *(v91 + 5) = v86;
                  v7 = v199;
                  v3 = v200;
                  v9 = v198;
                }

                else
                {
                  (*v197)(v9, v3);
                }

                v77 += v78;
                --v75;
              }

              while (v75);

              v15 = v184;
              v59 = v191;
              v45 = v177;
            }

            else
            {

              v59 = v191;
            }

            result = (*v190)(v192, v15);
            v54 = v182;
            v58 = v181;
            v57 = v193;
          }

          v47 = v176;
          v48 = v174;
          result = v168;
          if (v176 != v169)
          {
            continue;
          }

          break;
        }
      }

      else
      {

        v48 = v174;
      }

      result = sub_217D892CC();
      v149 = *(result + 2);
      if (v149)
      {
        break;
      }

LABEL_78:

      v146 = v158 + 1;
      (*v151)(v166, v164);
      v43 = v146;
      v38 = v156;
      result = v155;
      v44 = v153;
      if (v146 == v154)
      {

        result = v207;
        goto LABEL_81;
      }
    }

    v93 = 0;
    v94 = v165;
    v150 = &result[(*(v94 + 80) + 32) & ~*(v94 + 80)];
    v148 = result;
    while (v93 < *(result + 2))
    {
      v95 = *(v94 + 72);
      v157 = v93;
      v96 = v162;
      v97 = v163;
      v98 = v94;
      (*(v94 + 16))(v162, &v150[v95 * v93], v163);
      v99 = sub_217D8938C();
      result = (*(v98 + 8))(v96, v97);
      v169 = *(v99 + 16);
      if (v169)
      {
        v100 = 0;
        v170 = (v99 + ((*(v48 + 80) + 32) & ~*(v48 + 80)));
        v168 = v99;
        while (v100 < *(v99 + 16))
        {
          v101 = v167;
          v102 = v175;
          (*(v48 + 16))(v167, &v170[*(v48 + 72) * v100], v175);
          v176 = v100 + 1;
          v103 = sub_217D8923C();
          result = (*(v48 + 8))(v101, v102);
          v104 = 0;
          v106 = v103 + 64;
          v105 = *(v103 + 64);
          v180 = v103;
          v107 = 1 << *(v103 + 32);
          if (v107 < 64)
          {
            v108 = ~(-1 << v107);
          }

          else
          {
            v108 = -1;
          }

          v109 = v108 & v105;
          v110 = (v107 + 63) >> 6;
          v111 = v191;
          v182 = v103 + 64;
          v181 = v110;
          while (1)
          {
            if (!v109)
            {
              if (v110 <= v104 + 1)
              {
                v113 = v104 + 1;
              }

              else
              {
                v113 = v110;
              }

              v114 = v113 - 1;
              while (1)
              {
                v112 = v104 + 1;
                if (__OFADD__(v104, 1))
                {
                  goto LABEL_85;
                }

                if (v112 >= v110)
                {
                  sub_217D32F9C();
                  v122 = v145;
                  v124 = v179;
                  (*(*(v145 - 8) + 56))(v179, 1, 1, v145);
                  v193 = 0;
                  v104 = v114;
                  goto LABEL_65;
                }

                v109 = *(v106 + 8 * v112);
                ++v104;
                if (v109)
                {
                  v104 = v112;
                  goto LABEL_64;
                }
              }
            }

            v112 = v104;
LABEL_64:
            v193 = (v109 - 1) & v109;
            v115 = __clz(__rbit64(v109)) | (v112 << 6);
            v116 = (*(v180 + 48) + 16 * v115);
            v118 = *v116;
            v117 = v116[1];
            v119 = v189;
            (*(v111 + 16))(v189, *(v180 + 56) + *(v111 + 72) * v115, v15);
            sub_217D32F9C();
            v120 = v111;
            v122 = v121;
            v123 = *(v121 + 48);
            v124 = v179;
            *v179 = v118;
            *(v124 + 8) = v117;
            (*(v120 + 32))(v124 + v123, v119, v15);
            (*(*(v122 - 8) + 56))(v124, 0, 1, v122);

LABEL_65:
            v125 = v178;
            sub_217D33008(v124, v178);
            sub_217D32F9C();
            if ((*(*(v122 - 8) + 48))(v125, 1, v122) == 1)
            {
              break;
            }

            v126 = *(v125 + 8);

            (*v194)(v187, v125 + *(v122 + 48), v15);
            v127 = sub_217D893AC();
            v128 = *(v127 + 16);
            if (v128)
            {
              v129 = (*(v185 + 80) + 32) & ~*(v185 + 80);
              v186 = v127;
              v130 = v127 + v129;
              v131 = *(v185 + 72);
              v132 = *(v185 + 16);
              do
              {
                v133 = v195;
                v134 = v206;
                v132(v195, v130, v206);
                sub_217D893CC();
                (*v204)(v133, v134);
                v135 = (*v203)(v7, v3);
                if (v135 == v202)
                {
                  (*v196)(v7, v3);
                  v136 = [*v7 identifier];
                  v137 = sub_217D8954C();
                  v139 = v138;

                  v140 = v207;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v140 = sub_217B5AD14(0, *(v140 + 2) + 1, 1, v140);
                  }

                  v142 = *(v140 + 2);
                  v141 = *(v140 + 3);
                  v207 = v140;
                  if (v142 >= v141 >> 1)
                  {
                    v207 = sub_217B5AD14((v141 > 1), v142 + 1, 1, v207);
                  }

                  swift_unknownObjectRelease();
                  v143 = v207;
                  *(v207 + 2) = v142 + 1;
                  v144 = &v143[16 * v142];
                  *(v144 + 4) = v137;
                  *(v144 + 5) = v139;
                  v7 = v199;
                  v3 = v200;
                  v9 = v198;
                }

                else
                {
                  (*v197)(v7, v3);
                }

                v130 += v131;
                --v128;
              }

              while (v128);

              v15 = v184;
            }

            else
            {
            }

            v111 = v191;
            result = (*v190)(v187, v15);
            v106 = v182;
            v110 = v181;
            v109 = v193;
          }

          v100 = v176;
          v45 = v177;
          v48 = v174;
          v99 = v168;
          if (v176 == v169)
          {
            goto LABEL_42;
          }
        }

        goto LABEL_87;
      }

LABEL_42:

      v93 = v157 + 1;
      v94 = v165;
      result = v148;
      if (v157 + 1 == v149)
      {
        goto LABEL_78;
      }
    }

LABEL_89:
    __break(1u);
  }

  else
  {

    result = MEMORY[0x277D84F90];
LABEL_81:
    if (!*(result + 2))
    {

      result = 0;
    }

    *v161 = result;
  }

  return result;
}

void sub_217D32F44()
{
  if (!qword_2811BCE78)
  {
    sub_217D32F9C();
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCE78);
    }
  }
}

void sub_217D32F9C()
{
  if (!qword_2811BCE80)
  {
    sub_217D893BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2811BCE80);
    }
  }
}

uint64_t sub_217D33008(uint64_t a1, uint64_t a2)
{
  sub_217D32F44();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ScienceData.init(agedPersonalizationScore:autoSubscribeCtr:computedGlobalScoreCoefficient:conversionMultiplier:dampenedStaticMultiplier:featureCtr:paidNonPaidSubscriptionCtr:personalizationScore:qualitativeMultiplier:rawPersonalizationScore:staticMultiplier:subscribedChannelCtr:userFeedbackScore:rawUserFeedbackScore:fractionalCohortMembership:titleEmbeddingScore:tabiScore:clientScoreCoefficient:conversionCoefficient:multiplier:halfLifeCoefficient:serverScoreDemocratizationFactor:autofavoritedScoreCoefficient:nicheContentMuliplier:contentTriggerDampenerCoefficient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, double a17@<D7>, __int128 a18, __int128 a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, uint64_t a33, char a34)
{
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a12;
  *(a9 + 24) = a13;
  *(a9 + 32) = a14;
  *(a9 + 40) = a15;
  *(a9 + 48) = a16;
  *(a9 + 56) = a17;
  *(a9 + 64) = a18;
  *(a9 + 80) = a19;
  *(a9 + 96) = a20;
  *(a9 + 104) = a21;
  *(a9 + 112) = a1;
  *(a9 + 120) = a2;
  *(a9 + 128) = a3 & 1;
  *(a9 + 136) = a4;
  *(a9 + 144) = a5 & 1;
  *(a9 + 152) = a6;
  *(a9 + 160) = a7 & 1;
  *(a9 + 168) = a8;
  *(a9 + 176) = a22 & 1;
  *(a9 + 184) = a23;
  result = a24 & 1;
  *(a9 + 192) = a24 & 1;
  *(a9 + 200) = a25;
  *(a9 + 208) = a26 & 1;
  *(a9 + 216) = a27;
  *(a9 + 224) = a28 & 1;
  *(a9 + 232) = a29;
  *(a9 + 240) = a30 & 1;
  *(a9 + 248) = a31;
  *(a9 + 256) = a32 & 1;
  *(a9 + 264) = a33;
  *(a9 + 272) = a34 & 1;
  return result;
}

uint64_t ScienceData.fractionalCohortMembership.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t ScienceData.titleEmbeddingScore.getter()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t ScienceData.titleEmbeddingScore.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t ScienceData.tabiScore.getter()
{
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

uint64_t ScienceData.tabiScore.setter(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

uint64_t ScienceData.clientScoreCoefficient.getter()
{
  result = *(v0 + 152);
  v2 = *(v0 + 160);
  return result;
}

uint64_t ScienceData.clientScoreCoefficient.setter(uint64_t result, char a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2 & 1;
  return result;
}

uint64_t ScienceData.conversionCoefficient.getter()
{
  result = *(v0 + 168);
  v2 = *(v0 + 176);
  return result;
}

uint64_t ScienceData.conversionCoefficient.setter(uint64_t result, char a2)
{
  *(v2 + 168) = result;
  *(v2 + 176) = a2 & 1;
  return result;
}

uint64_t ScienceData.multiplier.getter()
{
  result = *(v0 + 184);
  v2 = *(v0 + 192);
  return result;
}

uint64_t ScienceData.multiplier.setter(uint64_t result, char a2)
{
  *(v2 + 184) = result;
  *(v2 + 192) = a2 & 1;
  return result;
}

uint64_t ScienceData.halfLifeCoefficient.getter()
{
  result = *(v0 + 200);
  v2 = *(v0 + 208);
  return result;
}

uint64_t ScienceData.halfLifeCoefficient.setter(uint64_t result, char a2)
{
  *(v2 + 200) = result;
  *(v2 + 208) = a2 & 1;
  return result;
}

uint64_t ScienceData.serverScoreDemocratizationFactor.getter()
{
  result = *(v0 + 216);
  v2 = *(v0 + 224);
  return result;
}

uint64_t ScienceData.serverScoreDemocratizationFactor.setter(uint64_t result, char a2)
{
  *(v2 + 216) = result;
  *(v2 + 224) = a2 & 1;
  return result;
}

uint64_t ScienceData.autofavoritedScoreCoefficient.getter()
{
  result = *(v0 + 232);
  v2 = *(v0 + 240);
  return result;
}

uint64_t ScienceData.autofavoritedScoreCoefficient.setter(uint64_t result, char a2)
{
  *(v2 + 232) = result;
  *(v2 + 240) = a2 & 1;
  return result;
}

uint64_t ScienceData.nicheContentMuliplier.getter()
{
  result = *(v0 + 248);
  v2 = *(v0 + 256);
  return result;
}

uint64_t ScienceData.nicheContentMuliplier.setter(uint64_t result, char a2)
{
  *(v2 + 248) = result;
  *(v2 + 256) = a2 & 1;
  return result;
}

uint64_t ScienceData.contentTriggerDampenerCoefficient.getter()
{
  result = *(v0 + 264);
  v2 = *(v0 + 272);
  return result;
}

uint64_t ScienceData.contentTriggerDampenerCoefficient.setter(uint64_t result, char a2)
{
  *(v2 + 264) = result;
  *(v2 + 272) = a2 & 1;
  return result;
}

unint64_t sub_217D336A0(char a1)
{
  result = 0x4365727574616566;
  switch(a1)
  {
    case 1:
    case 10:
      result = 0xD000000000000010;
      break;
    case 2:
      v3 = 10;
      goto LABEL_19;
    case 3:
      result = 0xD000000000000014;
      break;
    case 5:
      return result;
    case 6:
    case 14:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
    case 18:
    case 23:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 15:
    case 20:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0x726F635369626174;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 19:
      result = 0x696C7069746C756DLL;
      break;
    case 21:
      result = 0xD000000000000020;
      break;
    case 22:
      v3 = 9;
LABEL_19:
      result = v3 | 0xD000000000000014;
      break;
    case 24:
      result = 0xD000000000000021;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_217D33940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217D34F64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217D33974(uint64_t a1)
{
  v2 = sub_217D34104();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D339B0(uint64_t a1)
{
  v2 = sub_217D34104();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScienceData.encode(to:)(void *a1)
{
  sub_217D34B1C(0, &qword_2811BC840, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v27 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v52 = v1[2];
  v53 = v9;
  v12 = v1[5];
  v49 = v1[4];
  v50 = v11;
  v13 = v1[7];
  v47 = v1[6];
  v48 = v12;
  v15 = v1[8];
  v14 = v1[9];
  v17 = v1[10];
  v16 = v1[11];
  v19 = v1[12];
  v18 = v1[13];
  v20 = v1[15];
  v51 = v1[14];
  v45 = v20;
  v46 = *(v1 + 128);
  v43 = v1[17];
  v44 = *(v1 + 144);
  v29 = v1[19];
  v30 = *(v1 + 160);
  v31 = v1[21];
  v32 = *(v1 + 176);
  v33 = v1[23];
  v34 = *(v1 + 192);
  v35 = v1[25];
  v36 = *(v1 + 208);
  v37 = v1[27];
  v38 = *(v1 + 224);
  v39 = v1[29];
  v40 = *(v1 + 240);
  v41 = v1[31];
  v42 = *(v1 + 256);
  v21 = v1[33];
  v22 = *(v1 + 272);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D34104();
  sub_217D89E7C();
  LOBYTE(v56) = 0;
  v24 = v54;
  sub_217D89C8C();
  if (v24)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v28 = v22;
  v27 = v21;
  v54 = v5;
  v26 = v51;
  LOBYTE(v56) = 1;
  sub_217D89C8C();
  LOBYTE(v56) = 2;
  v53 = v4;
  sub_217D89C8C();
  LOBYTE(v56) = 3;
  sub_217D89C8C();
  LOBYTE(v56) = 4;
  sub_217D89C8C();
  LOBYTE(v56) = 5;
  sub_217D89C8C();
  LOBYTE(v56) = 6;
  sub_217D89C8C();
  LOBYTE(v56) = 7;
  sub_217D89C8C();
  LOBYTE(v56) = 8;
  sub_217D89C8C();
  LOBYTE(v56) = 9;
  sub_217D89C8C();
  LOBYTE(v56) = 10;
  sub_217D89C8C();
  LOBYTE(v56) = 11;
  sub_217D89C8C();
  LOBYTE(v56) = 12;
  sub_217D89C8C();
  LOBYTE(v56) = 13;
  sub_217D89C8C();
  v56 = v26;
  v55 = 14;
  sub_217D34158();
  sub_217D34B80(&qword_2811BCD98, sub_217CDD878);
  sub_217D89CAC();
  LOBYTE(v56) = 15;
  sub_217D89C2C();
  LOBYTE(v56) = 16;
  sub_217D89C2C();
  LOBYTE(v56) = 17;
  sub_217D89C2C();
  LOBYTE(v56) = 18;
  sub_217D89C2C();
  LOBYTE(v56) = 19;
  sub_217D89C2C();
  LOBYTE(v56) = 20;
  sub_217D89C2C();
  LOBYTE(v56) = 21;
  sub_217D89C2C();
  LOBYTE(v56) = 22;
  sub_217D89C2C();
  LOBYTE(v56) = 23;
  sub_217D89C2C();
  LOBYTE(v56) = 24;
  sub_217D89C2C();
  return (*(v54 + 8))(v8, v53);
}

unint64_t sub_217D34104()
{
  result = qword_2811C7CD8;
  if (!qword_2811C7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7CD8);
  }

  return result;
}

void sub_217D34158()
{
  if (!qword_2811BCDA0)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCDA0);
    }
  }
}

uint64_t ScienceData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217D34B1C(0, &qword_2811BCB38, MEMORY[0x277D844C8]);
  v125 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v51 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D34104();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  LOBYTE(v76[0]) = 0;
  sub_217D89BAC();
  v13 = v12;
  LOBYTE(v76[0]) = 1;
  sub_217D89BAC();
  v15 = v14;
  LOBYTE(v76[0]) = 2;
  sub_217D89BAC();
  v17 = v16;
  LOBYTE(v76[0]) = 3;
  sub_217D89BAC();
  v19 = v18;
  LOBYTE(v76[0]) = 4;
  sub_217D89BAC();
  v21 = v20;
  LOBYTE(v76[0]) = 5;
  sub_217D89BAC();
  v23 = v22;
  LOBYTE(v76[0]) = 6;
  sub_217D89BAC();
  v25 = v24;
  LOBYTE(v76[0]) = 7;
  sub_217D89BAC();
  v74 = v26;
  v73 = a2;
  LOBYTE(v76[0]) = 8;
  sub_217D89BAC();
  v28 = v27;
  LOBYTE(v76[0]) = 9;
  sub_217D89BAC();
  v72 = v29;
  LOBYTE(v76[0]) = 10;
  sub_217D89BAC();
  v71 = v30;
  LOBYTE(v76[0]) = 11;
  sub_217D89BAC();
  v70 = v31;
  LOBYTE(v76[0]) = 12;
  sub_217D89BAC();
  v69 = v32;
  LOBYTE(v76[0]) = 13;
  sub_217D89BAC();
  v68 = v33;
  sub_217D34158();
  LOBYTE(v75[0]) = 14;
  sub_217D34B80(&qword_2811BCD90, sub_217CDD820);
  sub_217D89BCC();
  v34 = v76[0];
  LOBYTE(v76[0]) = 15;
  v35 = sub_217D89B4C();
  v124 = v36 & 1;
  LOBYTE(v76[0]) = 16;
  v37 = sub_217D89B4C();
  v122 = v38 & 1;
  LOBYTE(v76[0]) = 17;
  v67 = sub_217D89B4C();
  v120 = v39 & 1;
  LOBYTE(v76[0]) = 18;
  v66 = sub_217D89B4C();
  v118 = v40 & 1;
  LOBYTE(v76[0]) = 19;
  v65 = sub_217D89B4C();
  v116 = v41 & 1;
  LOBYTE(v76[0]) = 20;
  v64 = sub_217D89B4C();
  v114 = v42 & 1;
  LOBYTE(v76[0]) = 21;
  v63 = sub_217D89B4C();
  v112 = v43 & 1;
  LOBYTE(v76[0]) = 22;
  v62 = sub_217D89B4C();
  v110 = v44 & 1;
  LOBYTE(v76[0]) = 23;
  v61 = sub_217D89B4C();
  v108 = v45 & 1;
  v105 = 24;
  v60 = sub_217D89B4C();
  v59 = v46;
  (*(v11 + 8))(v9, v125);
  v106 = v59 & 1;
  v75[0] = v13;
  v75[1] = v15;
  v75[2] = v17;
  v75[3] = v19;
  v75[4] = v21;
  v75[5] = v23;
  v75[6] = v25;
  v75[7] = v74;
  v75[8] = v28;
  v75[9] = v72;
  v75[10] = v71;
  v75[11] = v70;
  v75[12] = v69;
  v75[13] = v68;
  v75[14] = v34;
  v75[15] = v35;
  LODWORD(v125) = v124;
  LOBYTE(v75[16]) = v124;
  *(&v75[16] + 1) = *v123;
  HIDWORD(v75[16]) = *&v123[3];
  v58 = v37;
  v75[17] = v37;
  v59 = v122;
  LOBYTE(v75[18]) = v122;
  *(&v75[18] + 1) = *v121;
  HIDWORD(v75[18]) = *&v121[3];
  v75[19] = v67;
  v57 = v120;
  LOBYTE(v75[20]) = v120;
  HIDWORD(v75[20]) = *&v119[3];
  *(&v75[20] + 1) = *v119;
  v75[21] = v66;
  v56 = v118;
  LOBYTE(v75[22]) = v118;
  HIDWORD(v75[22]) = *&v117[3];
  *(&v75[22] + 1) = *v117;
  v75[23] = v65;
  v55 = v116;
  LOBYTE(v75[24]) = v116;
  HIDWORD(v75[24]) = *&v115[3];
  *(&v75[24] + 1) = *v115;
  v75[25] = v64;
  v54 = v114;
  LOBYTE(v75[26]) = v114;
  HIDWORD(v75[26]) = *&v113[3];
  *(&v75[26] + 1) = *v113;
  v75[27] = v63;
  v53 = v112;
  LOBYTE(v75[28]) = v112;
  HIDWORD(v75[28]) = *&v111[3];
  *(&v75[28] + 1) = *v111;
  v47 = v61;
  v75[29] = v62;
  v52 = v110;
  LOBYTE(v75[30]) = v110;
  HIDWORD(v75[30]) = *&v109[3];
  *(&v75[30] + 1) = *v109;
  v75[31] = v61;
  HIDWORD(v51) = v108;
  LOBYTE(v75[32]) = v108;
  *(&v75[32] + 1) = *v107;
  HIDWORD(v75[32]) = *&v107[3];
  v48 = v60;
  v75[33] = v60;
  v49 = v106;
  LOBYTE(v75[34]) = v106;
  memcpy(v73, v75, 0x111uLL);
  sub_217AD1744(v75, v76);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v76[0] = v13;
  v76[1] = v15;
  v76[2] = v17;
  v76[3] = v19;
  v76[4] = v21;
  v76[5] = v23;
  v76[6] = v25;
  v76[7] = v74;
  v76[8] = v28;
  v76[9] = v72;
  v76[10] = v71;
  v76[11] = v70;
  v76[12] = v69;
  v76[13] = v68;
  v76[14] = v34;
  v76[15] = v35;
  v77 = v125;
  *&v78[3] = *&v123[3];
  *v78 = *v123;
  v79 = v58;
  v80 = v59;
  *v81 = *v121;
  *&v81[3] = *&v121[3];
  v82 = v67;
  v83 = v57;
  *v84 = *v119;
  *&v84[3] = *&v119[3];
  v85 = v66;
  v86 = v56;
  *&v87[3] = *&v117[3];
  *v87 = *v117;
  v88 = v65;
  v89 = v55;
  *&v90[3] = *&v115[3];
  *v90 = *v115;
  v91 = v64;
  v92 = v54;
  *&v93[3] = *&v113[3];
  *v93 = *v113;
  v94 = v63;
  v95 = v53;
  *&v96[3] = *&v111[3];
  *v96 = *v111;
  v97 = v62;
  v98 = v52;
  *&v99[3] = *&v109[3];
  *v99 = *v109;
  v100 = v47;
  v101 = BYTE4(v51);
  *v102 = *v107;
  *&v102[3] = *&v107[3];
  v103 = v48;
  v104 = v49;
  return sub_217AD28B8(v76);
}

void sub_217D34B1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D34104();
    v7 = a3(a1, &type metadata for ScienceData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D34B80(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_217D34158();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217D34C2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 273))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217D34C74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *(result + 272) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 273) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 273) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScienceData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScienceData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217D34E60()
{
  result = qword_27CBA4F88;
  if (!qword_27CBA4F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F88);
  }

  return result;
}

unint64_t sub_217D34EB8()
{
  result = qword_2811C7CC8;
  if (!qword_2811C7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7CC8);
  }

  return result;
}

unint64_t sub_217D34F10()
{
  result = qword_2811C7CD0;
  if (!qword_2811C7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7CD0);
  }

  return result;
}

uint64_t sub_217D34F64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x8000000217DD2DF0 == a2;
  if (v3 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD2E10 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000217DD2E30 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD2E50 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DD2E70 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4365727574616566 && a2 == 0xEA00000000007274 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DD2E90 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DCE8E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD2EB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DD2ED0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD2EF0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD2F10 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD2F30 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD2F50 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DD2F70 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD2F90 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x726F635369626174 && a2 == 0xE900000000000065 || (sub_217D89D4C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DD2FB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD2FD0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x696C7069746C756DLL && a2 == 0xEA00000000007265 || (sub_217D89D4C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD2FF0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000217DD3010 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000217DD3040 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD3060 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DD3080 == a2)
  {

    return 24;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

NewsAnalytics::WidgetLocation_optional __swiftcall WidgetLocation.init(rawValue:)(Swift::String rawValue)
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

unint64_t WidgetLocation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6761507961646F74;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

unint64_t sub_217D35844()
{
  result = qword_27CBA4F90;
  if (!qword_27CBA4F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F90);
  }

  return result;
}

uint64_t sub_217D358A0()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

void sub_217D359B0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xD000000000000011;
  v6 = 0x8000000217DCC8E0;
  v7 = 0x8000000217DCC900;
  v8 = 0xD000000000000013;
  if (v2 != 4)
  {
    v8 = 0xD000000000000014;
    v7 = 0x8000000217DCC920;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE900000000000065;
  v10 = 0x6761507961646F74;
  if (v2 != 1)
  {
    v10 = 0xD000000000000011;
    v9 = 0x8000000217DCC8C0;
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
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_217D35B3C()
{
  result = qword_2811C69C0;
  if (!qword_2811C69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C69C0);
  }

  return result;
}

uint64_t sub_217D35C1C()
{
  if (*v0)
  {
    result = 0x7954746567726174;
  }

  else
  {
    result = 0x6E6F697461636F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_217D35C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7954746567726174 && a2 == 0xEA00000000006570)
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

uint64_t sub_217D35D40(uint64_t a1)
{
  v2 = sub_217D35F64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D35D7C(uint64_t a1)
{
  v2 = sub_217D35F64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscribeButtonContextData.encode(to:)(void *a1)
{
  sub_217D36244(0, &qword_2811BC580, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D35F64();
  sub_217D89E7C();
  v18 = v10;
  v17 = 0;
  sub_217D35FB8();
  sub_217D89CAC();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_217D3600C();
    sub_217D89C3C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217D35F64()
{
  result = qword_2811BEE40;
  if (!qword_2811BEE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEE40);
  }

  return result;
}

unint64_t sub_217D35FB8()
{
  result = qword_2811BFCD8[0];
  if (!qword_2811BFCD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BFCD8);
  }

  return result;
}

unint64_t sub_217D3600C()
{
  result = qword_2811BF158[0];
  if (!qword_2811BF158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BF158);
  }

  return result;
}

uint64_t SubscribeButtonContextData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217D36244(0, &qword_27CBA4F98, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D35F64();
  sub_217D89E5C();
  if (!v2)
  {
    v18 = 0;
    sub_217D362A8();
    sub_217D89BCC();
    v12 = v19;
    v16 = 1;
    sub_217D362FC();
    sub_217D89B5C();
    (*(v7 + 8))(v10, v6);
    v14 = v17;
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D36244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D35F64();
    v7 = a3(a1, &type metadata for SubscribeButtonContextData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D362A8()
{
  result = qword_27CBA4FA0;
  if (!qword_27CBA4FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4FA0);
  }

  return result;
}

unint64_t sub_217D362FC()
{
  result = qword_27CBA4FA8;
  if (!qword_27CBA4FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4FA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubscribeButtonContextData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 65285 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65285 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65285;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 6;
  if (v6 < 5)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for SubscribeButtonContextData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65285 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65285 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 16) + 1;
    *result = a2 - 251;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217D36500()
{
  result = qword_27CBA4FB0;
  if (!qword_27CBA4FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4FB0);
  }

  return result;
}

unint64_t sub_217D36558()
{
  result = qword_2811BEE30;
  if (!qword_2811BEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEE30);
  }

  return result;
}

unint64_t sub_217D365B0()
{
  result = qword_2811BEE38;
  if (!qword_2811BEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEE38);
  }

  return result;
}

uint64_t IssueExposureData.issueSessionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IssueExposureData.issueSessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217D366C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365536575737369 && a2 == 0xEE0044496E6F6973)
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

uint64_t sub_217D36750(uint64_t a1)
{
  v2 = sub_217D36914();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D3678C(uint64_t a1)
{
  v2 = sub_217D36914();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IssueExposureData.encode(to:)(void *a1)
{
  sub_217D36AEC(0, &qword_27CBA4FB8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D36914();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D36914()
{
  result = qword_27CBA4FC0;
  if (!qword_27CBA4FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4FC0);
  }

  return result;
}

uint64_t IssueExposureData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217D36AEC(0, &qword_27CBA4FC8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D36914();
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

void sub_217D36AEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D36914();
    v7 = a3(a1, &type metadata for IssueExposureData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D36B54()
{
  result = qword_2811C44E0;
  if (!qword_2811C44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C44E0);
  }

  return result;
}

unint64_t sub_217D36BAC()
{
  result = qword_2811C44E8[0];
  if (!qword_2811C44E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C44E8);
  }

  return result;
}

uint64_t sub_217D36C18(void *a1)
{
  sub_217D36AEC(0, &qword_27CBA4FB8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D36914();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D36D88()
{
  result = qword_27CBA4FD0;
  if (!qword_27CBA4FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4FD0);
  }

  return result;
}

unint64_t sub_217D36DE0()
{
  result = qword_27CBA4FD8;
  if (!qword_27CBA4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4FD8);
  }

  return result;
}

unint64_t sub_217D36E38()
{
  result = qword_27CBA4FE0;
  if (!qword_27CBA4FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4FE0);
  }

  return result;
}

uint64_t sub_217D36F54()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA5018);
  __swift_project_value_buffer(v0, qword_27CBA5018);
  return sub_217D8866C();
}

uint64_t NotificationIgnoreSubscribeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NotificationIgnoreSubscribeEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationIgnoreSubscribeEvent(0) + 20);
  sub_217D37668(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationIgnoreSubscribeEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationIgnoreSubscribeEvent(0) + 20);
  sub_217D37668(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationIgnoreSubscribeEvent.notificationSubscribedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationIgnoreSubscribeEvent(0) + 24);
  sub_217D37668(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationIgnoreSubscribeEvent.notificationSubscribedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationIgnoreSubscribeEvent(0) + 24);
  sub_217D37668(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationIgnoreSubscribeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationIgnoreSubscribeEvent(0) + 28);
  sub_217D37668(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationIgnoreSubscribeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationIgnoreSubscribeEvent(0) + 28);
  sub_217D37668(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationIgnoreSubscribeEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationIgnoreSubscribeEvent(0) + 32);
  sub_217D37668(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D37668(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t NotificationIgnoreSubscribeEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationIgnoreSubscribeEvent(0) + 32);
  sub_217D37668(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationIgnoreSubscribeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NotificationIgnoreSubscribeEvent(0);
  v5 = v4[5];
  sub_217D37668(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217D37668(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_217D37668(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217D37668(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t NotificationIgnoreSubscribeEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationIgnoreSubscribeEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t NotificationIgnoreSubscribeEvent.Model.notificationSubscribedData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for NotificationIgnoreSubscribeEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t NotificationIgnoreSubscribeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationIgnoreSubscribeEvent.Model(0) + 28));
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

uint64_t NotificationIgnoreSubscribeEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for NotificationIgnoreSubscribeEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

__n128 NotificationIgnoreSubscribeEvent.Model.init(eventData:tagData:notificationSubscribedData:userBundleSubscriptionContextData:userChannelContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int16 *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = *a3;
  v12 = *a5;
  v13 = a5[1];
  v14 = *(a5 + 1);
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = type metadata accessor for NotificationIgnoreSubscribeEvent.Model(0);
  v17 = (a6 + v16[5]);
  *v17 = v9;
  v17[1] = v10;
  *(a6 + v16[6]) = v11;
  v18 = a6 + v16[7];
  v19 = *(a4 + 16);
  *v18 = *a4;
  *(v18 + 16) = v19;
  result = *(a4 + 32);
  *(v18 + 32) = result;
  *(v18 + 48) = *(a4 + 48);
  v21 = a6 + v16[8];
  *v21 = v12;
  *(v21 + 1) = v13;
  *(v21 + 2) = v14;
  return result;
}

unint64_t sub_217D37CA8()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000021;
  if (v1 != 3)
  {
    v3 = 0xD000000000000016;
  }

  if (v1 == 2)
  {
    v3 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v2 = 0x61746144676174;
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

uint64_t sub_217D37D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217D38F14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217D37D7C(uint64_t a1)
{
  v2 = sub_217D38168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D37DB8(uint64_t a1)
{
  v2 = sub_217D38168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationIgnoreSubscribeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D3869C(0, &qword_27CBA5030, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v23[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D38168();
  sub_217D89E7C();
  LOBYTE(v32[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for NotificationIgnoreSubscribeEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[1];
    *&v32[0] = *v13;
    *(&v32[0] + 1) = v14;
    LOBYTE(v28) = 1;
    sub_217AF6B14();

    sub_217D89CAC();

    v35 = *(v3 + v12[6]);
    v34 = 2;
    sub_217B37F4C();
    sub_217D89C3C();
    v15 = (v3 + v12[7]);
    v16 = v15[1];
    v32[0] = *v15;
    v32[1] = v16;
    v18 = *v15;
    v17 = v15[1];
    v32[2] = v15[2];
    v33 = *(v15 + 48);
    v28 = v18;
    v29 = v17;
    v30 = v15[2];
    v31 = *(v15 + 48);
    v27 = 3;
    sub_217ACC004(v32, v25);
    sub_217A55B98();
    sub_217D89CAC();
    v25[0] = v28;
    v25[1] = v29;
    v25[2] = v30;
    v26 = v31;
    sub_217ACC69C(v25);
    v19 = (v3 + v12[8]);
    v20 = *v19;
    v21 = v19[1];
    LOWORD(v19) = *(v19 + 1);
    v23[12] = v20;
    v23[13] = v21;
    v24 = v19;
    v23[11] = 4;
    sub_217ACFB8C();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217D38168()
{
  result = qword_27CBA5038;
  if (!qword_27CBA5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5038);
  }

  return result;
}

uint64_t NotificationIgnoreSubscribeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_217D8899C();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D3869C(0, &qword_27CBA5040, MEMORY[0x277D844C8]);
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for NotificationIgnoreSubscribeEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D38168();
  v32 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v28;
  LOBYTE(v33) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v29;
  sub_217D89BCC();
  (*(v16 + 32))(v14, v17, v4);
  v38 = 1;
  sub_217AF6AC0();
  sub_217D89BCC();
  v18 = *(&v33 + 1);
  v19 = &v14[v11[5]];
  *v19 = v33;
  *(v19 + 1) = v18;
  v38 = 2;
  sub_217B37EF8();
  sub_217D89B5C();
  v20 = v30;
  *&v14[v11[6]] = v33;
  v41 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  v21 = &v14[v11[7]];
  v22 = v34;
  *v21 = v33;
  *(v21 + 1) = v22;
  *(v21 + 2) = v35;
  v21[48] = v36;
  v37 = 4;
  sub_217ACFB38();
  sub_217D89BCC();
  (*(v20 + 8))(v32, v31);
  v23 = v39;
  v24 = v40;
  v25 = &v14[v11[8]];
  *v25 = v38;
  v25[1] = v23;
  *(v25 + 1) = v24;
  sub_217D38700(v14, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217D38764(v14);
}

void sub_217D3869C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D38168();
    v7 = a3(a1, &type metadata for NotificationIgnoreSubscribeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D38700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationIgnoreSubscribeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D38764(uint64_t a1)
{
  v2 = type metadata accessor for NotificationIgnoreSubscribeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D38898@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217D37668(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217D37668(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217D37668(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217D37668(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

void sub_217D38B34()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217D37668(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
    if (v1 <= 0x3F)
    {
      sub_217D37668(319, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C);
      if (v2 <= 0x3F)
      {
        sub_217D37668(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
        if (v3 <= 0x3F)
        {
          sub_217D37668(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_217D38D08()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217D38DAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_217D38DAC()
{
  if (!qword_27CBA5068)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA5068);
    }
  }
}

unint64_t sub_217D38E10()
{
  result = qword_27CBA5070;
  if (!qword_27CBA5070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5070);
  }

  return result;
}

unint64_t sub_217D38E68()
{
  result = qword_27CBA5078;
  if (!qword_27CBA5078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5078);
  }

  return result;
}

unint64_t sub_217D38EC0()
{
  result = qword_27CBA5080;
  if (!qword_27CBA5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5080);
  }

  return result;
}

uint64_t sub_217D38F14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCDB90 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2)
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

uint64_t sub_217D3919C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA50B8);
  __swift_project_value_buffer(v0, qword_27CBA50B8);
  return sub_217D8866C();
}

uint64_t AppBadgeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppBadgeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppBadgeEvent(0) + 20);
  sub_217A62ED4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppBadgeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppBadgeEvent(0) + 20);
  sub_217A62ED4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppBadgeEvent.badgeOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppBadgeEvent(0) + 24);
  sub_217A62ED4(0, &qword_27CBA50D0, sub_217BB03D8, sub_217A69CD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppBadgeEvent.badgeOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppBadgeEvent(0) + 24);
  sub_217A62ED4(0, &qword_27CBA50D0, sub_217BB03D8, sub_217A69CD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppBadgeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AppBadgeEvent(0);
  v5 = *(v4 + 20);
  sub_217A62ED4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_217A62ED4(0, &qword_27CBA50D0, sub_217BB03D8, sub_217A69CD0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t AppBadgeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppBadgeEvent.Model(0) + 20));
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

uint64_t AppBadgeEvent.Model.badgeOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AppBadgeEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

__n128 AppBadgeEvent.Model.init(eventData:userBundleSubscriptionContextData:badgeOriginationData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_217D8899C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for AppBadgeEvent.Model(0);
  v10 = a4 + *(v9 + 20);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  result = *(a2 + 32);
  *(v10 + 32) = result;
  *(v10 + 48) = *(a2 + 48);
  *(a4 + *(v9 + 24)) = v7;
  return result;
}

uint64_t sub_217D39938()
{
  v1 = 0xD000000000000021;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
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

uint64_t sub_217D399A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217D3A7A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217D399CC(uint64_t a1)
{
  v2 = sub_217D39CF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D39A08(uint64_t a1)
{
  v2 = sub_217D39CF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppBadgeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D3A144(0, &qword_27CBA50D8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D39CF0();
  sub_217D89E7C();
  v30 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for AppBadgeEvent.Model(0);
    v13 = (v3 + *(v12 + 20));
    v14 = v13[2];
    v15 = *v13;
    v16 = *v13;
    v27 = v13[1];
    v28 = v14;
    v26 = v15;
    v29 = *(v13 + 48);
    v22 = v16;
    v23 = v27;
    v24 = v13[2];
    v25 = *(v13 + 48);
    v21 = 1;
    sub_217ACC004(&v26, v19);
    sub_217A55B98();
    sub_217D89CAC();
    v19[0] = v22;
    v19[1] = v23;
    v19[2] = v24;
    v20 = v25;
    sub_217ACC69C(v19);
    v18[15] = *(v3 + *(v12 + 24));
    v18[14] = 2;
    sub_217A69CD0();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217D39CF0()
{
  result = qword_27CBA50E0;
  if (!qword_27CBA50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA50E0);
  }

  return result;
}

uint64_t AppBadgeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_217D8899C();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D3A144(0, &qword_27CBA50E8, MEMORY[0x277D844C8]);
  v31 = v7;
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppBadgeEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D39CF0();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v28;
  v16 = v29;
  v25 = v11;
  v26 = v14;
  LOBYTE(v32) = 0;
  sub_217A602A0(&qword_2811C8408);
  v19 = v30;
  v18 = v31;
  sub_217D89BCC();
  (*(v16 + 32))(v26, v19, v4);
  v38 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v20 = &v26[*(v25 + 20)];
  v21 = v33;
  *v20 = v32;
  *(v20 + 1) = v21;
  *(v20 + 2) = v34;
  v20[48] = v35;
  v36 = 2;
  sub_217BB03D8();
  sub_217D89BCC();
  (*(v17 + 8))(v10, v18);
  v22 = v26;
  v26[*(v25 + 24)] = v37;
  sub_217D3A1A8(v22, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217D3A20C(v22);
}

void sub_217D3A144(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D39CF0();
    v7 = a3(a1, &type metadata for AppBadgeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D3A1A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppBadgeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D3A20C(uint64_t a1)
{
  v2 = type metadata accessor for AppBadgeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D3A340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217A62ED4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_217A62ED4(0, &qword_27CBA50D0, sub_217BB03D8, sub_217A69CD0);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_217D3A4D8()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A62ED4(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
    if (v1 <= 0x3F)
    {
      sub_217A62ED4(319, &qword_27CBA50D0, sub_217BB03D8, sub_217A69CD0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_217D3A60C()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217D3A6A4()
{
  result = qword_27CBA5110;
  if (!qword_27CBA5110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5110);
  }

  return result;
}

unint64_t sub_217D3A6FC()
{
  result = qword_27CBA5118;
  if (!qword_27CBA5118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5118);
  }

  return result;
}

unint64_t sub_217D3A754()
{
  result = qword_27CBA5120;
  if (!qword_27CBA5120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5120);
  }

  return result;
}

uint64_t sub_217D3A7A8(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000014 && 0x8000000217DD11D0 == a2)
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

void AppData.init(client:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_217D8888C();
  v6 = v5;
  v7 = sub_217D8886C();
  v9 = v8;

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v9;
}

uint64_t TodayFeedPoolMyArticlesData.feedsNetworkDuration.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t TodayFeedPoolMyArticlesData.feedsNetworkDuration.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t TodayFeedPoolMyArticlesData.evergreenNetworkDuration.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t TodayFeedPoolMyArticlesData.evergreenNetworkDuration.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t TodayFeedPoolMyArticlesData.scoringDuration.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t TodayFeedPoolMyArticlesData.scoringDuration.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t TodayFeedPoolMyArticlesData.smarterFetchData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_217D3AA94(v2);
}

uint64_t sub_217D3AA94(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 TodayFeedPoolMyArticlesData.smarterFetchData.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_i64[0];
  v3 = v1[9];
  v4 = v1[10];
  sub_217D3AB20(v1[8]);
  result = v6;
  *(v1 + 4) = v6;
  v1[10] = v2;
  return result;
}

uint64_t sub_217D3AB20(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 TodayFeedPoolMyArticlesData.init(feedItemCount:totalDuration:feedsNetworkDuration:evergreenNetworkDuration:scoringDuration:source:smarterFetchData:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, unint64_t a5@<X4>, char a6@<W5>, unint64_t a7@<X6>, char a8@<W7>, __n128 *a9@<X8>, unsigned __int8 *a10, __n128 *a11)
{
  v12 = *a10;
  v15 = *a11;
  v13 = a11[1].n128_u64[0];
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u8[8] = a4 & 1;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u8[8] = a6 & 1;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u8[8] = a8 & 1;
  a9[3].n128_u8[9] = v12;
  sub_217D3AB20(0);
  result = v15;
  a9[4] = v15;
  a9[5].n128_u64[0] = v13;
  return result;
}

unint64_t sub_217D3AC04()
{
  v1 = *v0;
  v2 = 0x6D65744964656566;
  v3 = 0x656372756F73;
  if (v1 != 5)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000018;
  if (v1 != 3)
  {
    v4 = 0x44676E69726F6373;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000014;
  if (v1 == 1)
  {
    v5 = 0x7275446C61746F74;
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

uint64_t sub_217D3AD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217D3B938(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217D3AD2C(uint64_t a1)
{
  v2 = sub_217D3B068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D3AD68(uint64_t a1)
{
  v2 = sub_217D3B068();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TodayFeedPoolMyArticlesData.encode(to:)(void *a1)
{
  sub_217D3B5DC(0, &qword_2811BC570, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v19 - v7;
  v10 = *v1;
  v9 = v1[1];
  v26 = v1[2];
  v27 = v9;
  v32 = *(v1 + 24);
  v25 = v1[4];
  v24 = *(v1 + 40);
  v11 = v1[6];
  v12 = *(v1 + 56);
  v20 = *(v1 + 57);
  v21 = v12;
  v13 = v1[9];
  v22 = v1[8];
  v23 = v11;
  v19 = v13;
  v14 = v1[10];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D3B068();
  sub_217D89E7C();
  LOBYTE(v29) = 0;
  v16 = v28;
  sub_217D89CCC();
  if (!v16)
  {
    v28 = v14;
    v17 = v22;
    LOBYTE(v29) = 1;
    sub_217D89CCC();
    LOBYTE(v29) = 2;
    sub_217D89C5C();
    LOBYTE(v29) = 3;
    sub_217D89C5C();
    LOBYTE(v29) = 4;
    sub_217D89C5C();
    LOBYTE(v29) = v20;
    v33 = 5;
    sub_217D3B0BC();
    sub_217D89C3C();
    v29 = v17;
    v30 = v19;
    v31 = v28;
    v33 = 6;
    sub_217D3AA94(v17);
    sub_217C26A98();
    sub_217D89C3C();
    sub_217D3AB20(v29);
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D3B068()
{
  result = qword_2811BEBD8[0];
  if (!qword_2811BEBD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BEBD8);
  }

  return result;
}

unint64_t sub_217D3B0BC()
{
  result = qword_2811BE1E0;
  if (!qword_2811BE1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE1E0);
  }

  return result;
}

uint64_t TodayFeedPoolMyArticlesData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217D3B5DC(0, &qword_27CBA5128, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D3B068();
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_217D3AB20(0);
  }

  else
  {
    LOBYTE(v43[0]) = 0;
    v12 = sub_217D89BEC();
    LOBYTE(v43[0]) = 1;
    v13 = sub_217D89BEC();
    LOBYTE(v43[0]) = 2;
    v68 = sub_217D89B7C();
    v67 = v14 & 1;
    LOBYTE(v43[0]) = 3;
    v36 = sub_217D89B7C();
    v65 = v15 & 1;
    LOBYTE(v43[0]) = 4;
    v35 = sub_217D89B7C();
    v63 = v16 & 1;
    LOBYTE(v37) = 5;
    sub_217D3B640();
    sub_217D89B5C();
    v34 = LOBYTE(v43[0]);
    v57 = 6;
    sub_217C26A40();
    sub_217D89B5C();
    (*(v7 + 8))(v10, v6);
    v17 = v58;
    v29 = v58;
    v28 = v59;
    v27 = v60;
    sub_217D3AB20(0);
    v33 = v12;
    *&v37 = v12;
    v32 = v13;
    *(&v37 + 1) = v13;
    *&v38 = v68;
    v31 = v67;
    BYTE8(v38) = v67;
    *(&v38 + 9) = *v66;
    HIDWORD(v38) = *&v66[3];
    *&v39 = v36;
    v30 = v65;
    BYTE8(v39) = v65;
    *(&v39 + 9) = *v64;
    HIDWORD(v39) = *&v64[3];
    v18 = v35;
    *&v40 = v35;
    v19 = v63;
    BYTE8(v40) = v63;
    LOBYTE(v12) = v34;
    BYTE9(v40) = v34;
    HIWORD(v40) = v62;
    *(&v40 + 10) = v61;
    *&v41 = v17;
    v20 = v28;
    v21 = v27;
    *(&v41 + 1) = v28;
    v42 = v27;
    v22 = v39;
    v23 = v40;
    v24 = v41;
    *(a2 + 80) = v27;
    *(a2 + 48) = v23;
    *(a2 + 64) = v24;
    v25 = v37;
    *(a2 + 16) = v38;
    *(a2 + 32) = v22;
    *a2 = v25;
    sub_217D3B694(&v37, v43);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v43[0] = v33;
    v43[1] = v32;
    v43[2] = v68;
    v44 = v31;
    *v45 = *v66;
    *&v45[3] = *&v66[3];
    v46 = v36;
    v47 = v30;
    *v48 = *v64;
    *&v48[3] = *&v64[3];
    v49 = v18;
    v50 = v19;
    v51 = v12;
    v53 = v62;
    v52 = v61;
    v54 = v29;
    v55 = v20;
    v56 = v21;
    return sub_217D3B6CC(v43);
  }
}

void sub_217D3B5DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D3B068();
    v7 = a3(a1, &type metadata for TodayFeedPoolMyArticlesData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D3B640()
{
  result = qword_27CBA5130;
  if (!qword_27CBA5130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5130);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13NewsAnalytics16SmarterFetchDataVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_217D3B74C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_217D3B7A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

unint64_t sub_217D3B834()
{
  result = qword_27CBA5138;
  if (!qword_27CBA5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5138);
  }

  return result;
}

unint64_t sub_217D3B88C()
{
  result = qword_2811BEBC8;
  if (!qword_2811BEBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEBC8);
  }

  return result;
}

unint64_t sub_217D3B8E4()
{
  result = qword_2811BEBD0;
  if (!qword_2811BEBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEBD0);
  }

  return result;
}

uint64_t sub_217D3B938(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D65744964656566 && a2 == 0xED0000746E756F43;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7275446C61746F74 && a2 == 0xED00006E6F697461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD30B0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DD30D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44676E69726F6373 && a2 == 0xEF6E6F6974617275 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD30F0 == a2)
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

uint64_t RecipeData.recipeID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RecipeData.recipeID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RecipeData.totalTime.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t RecipeData.totalTime.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall RecipeData.init(recipeID:isPaid:totalTime:)(NewsAnalytics::RecipeData *__return_ptr retstr, Swift::String recipeID, Swift::Bool isPaid, Swift::String totalTime)
{
  retstr->recipeID = recipeID;
  retstr->isPaid = isPaid;
  retstr->totalTime = totalTime;
}

uint64_t sub_217D3BCF8()
{
  v1 = 0x646961507369;
  if (*v0 != 1)
  {
    v1 = 0x6D69546C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449657069636572;
  }
}

uint64_t sub_217D3BD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217D3C3F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217D3BD7C(uint64_t a1)
{
  v2 = sub_217D3BFA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D3BDB8(uint64_t a1)
{
  v2 = sub_217D3BFA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeData.encode(to:)(void *a1)
{
  sub_217D3C23C(0, &qword_2811BC888, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v16 = *(v1 + 16);
  v11 = v1[3];
  v15[1] = v1[4];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D3BFA4();
  sub_217D89E7C();
  v19 = 0;
  v13 = v15[3];
  sub_217D89C6C();
  if (!v13)
  {
    v18 = 1;
    sub_217D89C7C();
    v17 = 2;
    sub_217D89C6C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D3BFA4()
{
  result = qword_2811C7F20;
  if (!qword_2811C7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F20);
  }

  return result;
}

uint64_t RecipeData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217D3C23C(0, &qword_27CBA5140, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D3BFA4();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v15 = v12;
  v26 = 1;
  v24 = sub_217D89B9C() & 1;
  v25 = 2;
  v16 = sub_217D89B8C();
  v19 = v18;
  v20 = *(v7 + 8);
  v23 = v16;
  v20(v10, v6);
  v21 = v24;
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v21;
  *(a2 + 24) = v23;
  *(a2 + 32) = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D3C23C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D3BFA4();
    v7 = a3(a1, &type metadata for RecipeData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D3C2EC()
{
  result = qword_27CBA5148;
  if (!qword_27CBA5148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5148);
  }

  return result;
}

unint64_t sub_217D3C344()
{
  result = qword_2811C7F10;
  if (!qword_2811C7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F10);
  }

  return result;
}

unint64_t sub_217D3C39C()
{
  result = qword_2811C7F18;
  if (!qword_2811C7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F18);
  }

  return result;
}

uint64_t sub_217D3C3F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449657069636572 && a2 == 0xE800000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646961507369 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D69546C61746F74 && a2 == 0xE900000000000065)
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

uint64_t sub_217D3C5D4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA5180);
  __swift_project_value_buffer(v0, qword_27CBA5180);
  return sub_217D8866C();
}

uint64_t RecipeShareEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RecipeShareEvent.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 20);
  sub_217D3D708(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeShareEvent.recipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 20);
  sub_217D3D708(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeShareEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 24);
  sub_217D3D708(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeShareEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 24);
  sub_217D3D708(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeShareEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 28);
  sub_217D3D708(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeShareEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 28);
  sub_217D3D708(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeShareEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 32);
  sub_217D3D708(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeShareEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 32);
  sub_217D3D708(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeShareEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 36);
  sub_217D3D708(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeShareEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 36);
  sub_217D3D708(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeShareEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 40);
  sub_217D3D708(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeShareEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 40);
  sub_217D3D708(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeShareEvent.shareContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 44);
  sub_217D3D708(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeShareEvent.shareContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 44);
  sub_217D3D708(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeShareEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 48);
  sub_217D3D708(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeShareEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 48);
  sub_217D3D708(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeShareEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 52);
  sub_217D3D708(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeShareEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 52);
  sub_217D3D708(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeShareEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 56);
  sub_217D3D708(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D3D708(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t RecipeShareEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 56);
  sub_217D3D708(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeShareEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RecipeShareEvent(0);
  v5 = v4[5];
  sub_217D3D708(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217D3D708(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217D3D708(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217D3D708(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217D3D708(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_217D3D708(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217D3D708(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217D3D708(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_217D3D708(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217D3D708(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v2, v25);
}

uint64_t RecipeShareEvent.Model.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeShareEvent.Model(0) + 20);
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

uint64_t RecipeShareEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecipeShareEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t RecipeShareEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeShareEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t RecipeShareEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeShareEvent.Model(0) + 32));
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

uint64_t RecipeShareEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeShareEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t RecipeShareEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for RecipeShareEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t RecipeShareEvent.Model.shareContextData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeShareEvent.Model(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t RecipeShareEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeShareEvent.Model(0) + 48));
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

uint64_t RecipeShareEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeShareEvent.Model(0) + 52);
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

uint64_t RecipeShareEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeShareEvent.Model(0) + 56);
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

__n128 RecipeShareEvent.Model.init(eventData:recipeData:actionData:feedData:groupData:viewData:userChannelContextData:shareContextData:issueData:userBundleSubscriptionContextData:channelData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t *a12)
{
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 16);
  v18 = a2[3];
  v19 = a2[4];
  v37 = *a3;
  v39 = *a4;
  v38 = *(a4 + 2);
  v43 = a6[1];
  v44 = *a6;
  v42 = *(a6 + 8);
  v46 = a7[1];
  v47 = *a7;
  v45 = *(a7 + 1);
  v48 = a8[1];
  v49 = *a8;
  v54 = a12[1];
  v55 = *a12;
  v52 = *(a12 + 17);
  v53 = *(a12 + 16);
  v51 = a12[3];
  v50 = a12[4];
  v20 = sub_217D8899C();
  v40 = a10[1];
  v41 = *a10;
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for RecipeShareEvent.Model(0);
  v22 = a9 + v21[5];
  *v22 = v15;
  *(v22 + 8) = v16;
  *(v22 + 16) = v17;
  *(v22 + 24) = v18;
  *(v22 + 32) = v19;
  *(a9 + v21[6]) = v37;
  v23 = a9 + v21[7];
  *v23 = v39;
  *(v23 + 16) = v38;
  v24 = (a9 + v21[8]);
  v25 = a5[3];
  v24[2] = a5[2];
  v24[3] = v25;
  v26 = a5[1];
  *v24 = *a5;
  v24[1] = v26;
  v27 = a5[8];
  v24[7] = a5[7];
  v24[8] = v27;
  v28 = a5[6];
  v24[5] = a5[5];
  v24[6] = v28;
  v24[4] = a5[4];
  v29 = a9 + v21[9];
  *v29 = v44;
  *(v29 + 8) = v43;
  *(v29 + 16) = v42;
  v30 = a9 + v21[10];
  *v30 = v47;
  *(v30 + 1) = v46;
  *(v30 + 2) = v45;
  v31 = (a9 + v21[11]);
  *v31 = v49;
  v31[1] = v48;
  v32 = (a9 + v21[12]);
  *v32 = v41;
  v32[1] = v40;
  v33 = a9 + v21[13];
  v34 = *(a11 + 16);
  *v33 = *a11;
  *(v33 + 16) = v34;
  result = *(a11 + 32);
  *(v33 + 32) = result;
  *(v33 + 48) = *(a11 + 48);
  v36 = a9 + v21[14];
  *v36 = v55;
  *(v36 + 8) = v54;
  *(v36 + 16) = v53;
  *(v36 + 17) = v52;
  *(v36 + 24) = v51;
  *(v36 + 32) = v50;
  return result;
}

unint64_t sub_217D3E394(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x746144746E657665;
    v6 = 0x61446E6F69746361;
    v7 = 0x6174614464656566;
    if (a1 != 3)
    {
      v7 = 0x74614470756F7267;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x6144657069636572;
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
    v1 = 0x7461446575737369;
    v2 = 0xD000000000000021;
    if (a1 != 9)
    {
      v2 = 0x446C656E6E616863;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000016;
    if (a1 != 6)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 == 5)
    {
      v3 = 0x6174614477656976;
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

uint64_t sub_217D3E510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217D40428(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217D3E538(uint64_t a1)
{
  v2 = sub_217D3ECC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D3E574(uint64_t a1)
{
  v2 = sub_217D3ECC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeShareEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D3F6A0(0, &qword_27CBA5198, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v57[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D3ECC4();
  sub_217D89E7C();
  LOBYTE(v91) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for RecipeShareEvent.Model(0);
    v13 = v12[5];
    v104 = v3;
    v14 = v3 + v13;
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    v18 = *(v14 + 32);
    *&v91 = *v14;
    *(&v91 + 1) = v15;
    LOBYTE(v92) = v16;
    *(&v92 + 1) = v17;
    *&v93 = v18;
    LOBYTE(v82) = 1;
    sub_217B1F08C();

    sub_217D89CAC();

    v19 = v104;
    LOBYTE(v91) = *(v104 + v12[6]);
    LOBYTE(v82) = 2;
    sub_217AED190();
    sub_217D89CAC();
    v20 = (v19 + v12[7]);
    v21 = v20[1];
    v22 = v20[2];
    v101 = *v20;
    v102 = v21;
    v103 = v22;
    v100 = 3;
    sub_217AD1A68(v101, v21, v22);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v101, v102, v103);
    v23 = (v19 + v12[8]);
    v24 = v23[6];
    v25 = v23[4];
    v96 = v23[5];
    v97 = v24;
    v26 = v23[6];
    v27 = v23[8];
    v98 = v23[7];
    v99 = v27;
    v28 = v23[2];
    v29 = *v23;
    v92 = v23[1];
    v93 = v28;
    v30 = v23[2];
    v31 = v23[4];
    v94 = v23[3];
    v95 = v31;
    v32 = *v23;
    v88 = v26;
    v89 = v98;
    v90 = v23[8];
    v91 = v32;
    v84 = v30;
    v85 = v94;
    v86 = v25;
    v87 = v96;
    v82 = v29;
    v83 = v92;
    v81 = 4;
    sub_217AD87FC(&v91, v80);
    sub_217A5D3B4();
    sub_217D89C3C();
    v80[6] = v88;
    v80[7] = v89;
    v80[8] = v90;
    v80[2] = v84;
    v80[3] = v85;
    v80[4] = v86;
    v80[5] = v87;
    v80[0] = v82;
    v80[1] = v83;
    sub_217AD96E8(v80);
    v33 = (v19 + v12[9]);
    v34 = *v33;
    v35 = v33[1];
    LOWORD(v33) = *(v33 + 8);
    *&v71 = v34;
    *(&v71 + 1) = v35;
    LOWORD(v72) = v33;
    LOBYTE(v67) = 5;
    sub_217A5E790();

    sub_217D89C3C();

    v36 = v104;
    v37 = (v104 + v12[10]);
    v38 = *v37;
    v39 = v37[1];
    LOWORD(v37) = *(v37 + 1);
    LOBYTE(v71) = v38;
    BYTE1(v71) = v39;
    WORD1(v71) = v37;
    LOBYTE(v67) = 6;
    sub_217ACFB8C();
    sub_217D89CAC();
    v41 = (v36 + v12[11]);
    v42 = v41[1];
    *&v71 = *v41;
    *(&v71 + 1) = v42;
    LOBYTE(v67) = 7;
    sub_217AF2CAC();

    sub_217D89CAC();

    v43 = (v36 + v12[12]);
    v44 = v43[1];
    v45 = v43[2];
    v46 = v43[3];
    v76 = *v43;
    v77 = v44;
    v78 = v45;
    v79 = v46;
    v75 = 8;
    sub_217AE39D0(v76, v44);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v76, v77);
    v47 = (v36 + v12[13]);
    v48 = v47[1];
    v71 = *v47;
    v72 = v48;
    v50 = *v47;
    v49 = v47[1];
    v73 = v47[2];
    v74 = *(v47 + 48);
    v67 = v50;
    v68 = v49;
    v69 = v47[2];
    v70 = *(v47 + 48);
    v66 = 9;
    sub_217ACC004(&v71, v64);
    sub_217A55B98();
    sub_217D89CAC();
    v64[0] = v67;
    v64[1] = v68;
    v64[2] = v69;
    v65 = v70;
    sub_217ACC69C(v64);
    v51 = (v36 + v12[14]);
    v52 = v51[1];
    v53 = *(v51 + 16);
    v54 = *(v51 + 17);
    v55 = v51[3];
    v56 = v51[4];
    v58 = *v51;
    v59 = v52;
    v60 = v53;
    v61 = v54;
    v62 = v55;
    v63 = v56;
    v57[7] = 10;
    sub_217AD084C();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217D3ECC4()
{
  result = qword_27CBA51A0;
  if (!qword_27CBA51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA51A0);
  }

  return result;
}

uint64_t RecipeShareEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_217D8899C();
  v56 = *(v3 - 8);
  v4 = *(v56 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D3F6A0(0, &qword_27CBA51A8, MEMORY[0x277D844C8]);
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v52 - v8;
  v10 = type metadata accessor for RecipeShareEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D3ECC4();
  v60 = v9;
  v15 = v83;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v83 = a1;
  v53 = v10;
  v54 = v13;
  LOBYTE(v74) = 0;
  sub_217A602A0(&qword_2811C8408);
  v16 = v57;
  sub_217D89BCC();
  v17 = v54;
  (*(v56 + 32))(v54, v16, v3);
  LOBYTE(v69) = 1;
  sub_217B1F038();
  sub_217D89BCC();
  v52 = v3;
  v57 = 0;
  v18 = *(&v74 + 1);
  v19 = v75;
  v20 = *(&v75 + 1);
  v21 = v76;
  v22 = v53;
  v23 = &v17[v53[5]];
  *v23 = v74;
  *(v23 + 1) = v18;
  v23[16] = v19;
  *(v23 + 3) = v20;
  *(v23 + 4) = v21;
  LOBYTE(v69) = 2;
  sub_217AED13C();
  sub_217D89BCC();
  v54[v22[6]] = v74;
  LOBYTE(v69) = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v24 = v75;
  v25 = &v54[v22[7]];
  *v25 = v74;
  *(v25 + 2) = v24;
  v73 = 4;
  sub_217A5D308();
  sub_217D89B5C();
  v26 = &v54[v22[8]];
  v27 = v79;
  v28 = v81;
  v29 = v82;
  *(v26 + 6) = v80;
  *(v26 + 7) = v28;
  *(v26 + 8) = v29;
  v30 = v75;
  v31 = v77;
  v32 = v78;
  *(v26 + 2) = v76;
  *(v26 + 3) = v31;
  *(v26 + 4) = v32;
  *(v26 + 5) = v27;
  *v26 = v74;
  *(v26 + 1) = v30;
  LOBYTE(v62) = 5;
  sub_217A5E738();
  sub_217D89B5C();
  v33 = v70;
  v34 = &v54[v22[9]];
  *v34 = v69;
  *(v34 + 8) = v33;
  LOBYTE(v62) = 6;
  sub_217ACFB38();
  sub_217D89BCC();
  v35 = BYTE1(v69);
  v36 = WORD1(v69);
  v37 = &v54[v22[10]];
  *v37 = v69;
  v37[1] = v35;
  *(v37 + 1) = v36;
  LOBYTE(v62) = 7;
  sub_217AF2C58();
  sub_217D89BCC();
  v38 = *(&v69 + 1);
  v39 = &v54[v22[11]];
  *v39 = v69;
  *(v39 + 1) = v38;
  LOBYTE(v62) = 8;
  sub_217ACFF40();
  sub_217D89B5C();
  v40 = &v54[v53[12]];
  v41 = v70;
  *v40 = v69;
  *(v40 + 1) = v41;
  v68 = 9;
  sub_217A54D08();
  sub_217D89BCC();
  v42 = &v54[v53[13]];
  v43 = v70;
  *v42 = v69;
  *(v42 + 1) = v43;
  *(v42 + 2) = v71;
  v42[48] = v72;
  v61 = 10;
  sub_217AD07F8();
  sub_217D89BCC();
  (*(v58 + 8))(v60, v59);
  v44 = v63;
  v45 = v64;
  v46 = v65;
  v47 = v66;
  v48 = v67;
  v49 = v54;
  v50 = &v54[v53[14]];
  *v50 = v62;
  *(v50 + 1) = v44;
  v50[16] = v45;
  v50[17] = v46;
  *(v50 + 3) = v47;
  *(v50 + 4) = v48;
  sub_217D3F704(v49, v55);
  __swift_destroy_boxed_opaque_existential_1(v83);
  return sub_217D3F768(v49);
}

void sub_217D3F6A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D3ECC4();
    v7 = a3(a1, &type metadata for RecipeShareEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D3F704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeShareEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D3F768(uint64_t a1)
{
  v2 = type metadata accessor for RecipeShareEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D3F89C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217D3D708(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217D3D708(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217D3D708(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217D3D708(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217D3D708(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_217D3D708(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217D3D708(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217D3D708(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_217D3D708(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217D3D708(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v4, v26);
}

void sub_217D3FE08()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217D3D708(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
    if (v1 <= 0x3F)
    {
      sub_217D3D708(319, &qword_2811C8848, sub_217AED13C, sub_217AED190);
      if (v2 <= 0x3F)
      {
        sub_217D3D708(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
        if (v3 <= 0x3F)
        {
          sub_217D3D708(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
          if (v4 <= 0x3F)
          {
            sub_217D3D708(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
            if (v5 <= 0x3F)
            {
              sub_217D3D708(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
              if (v6 <= 0x3F)
              {
                sub_217D3D708(319, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC);
                if (v7 <= 0x3F)
                {
                  sub_217D3D708(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
                  if (v8 <= 0x3F)
                  {
                    sub_217D3D708(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                    if (v9 <= 0x3F)
                    {
                      sub_217D3D708(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
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

void sub_217D401BC()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD308);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD178);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD200);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD110);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217D40324()
{
  result = qword_27CBA51D0;
  if (!qword_27CBA51D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA51D0);
  }

  return result;
}

unint64_t sub_217D4037C()
{
  result = qword_27CBA51D8;
  if (!qword_27CBA51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA51D8);
  }

  return result;
}

unint64_t sub_217D403D4()
{
  result = qword_27CBA51E0;
  if (!qword_27CBA51E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA51E0);
  }

  return result;
}

uint64_t sub_217D40428(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144657069636572 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD6C0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461)
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

uint64_t sub_217D40898()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA5218);
  __swift_project_value_buffer(v0, qword_27CBA5218);
  return sub_217D8866C();
}

uint64_t RecipeUnsaveEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RecipeUnsaveEvent.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 20);
  sub_217D4181C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeUnsaveEvent.recipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 20);
  sub_217D4181C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeUnsaveEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 24);
  sub_217D4181C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeUnsaveEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 24);
  sub_217D4181C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeUnsaveEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 28);
  sub_217D4181C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeUnsaveEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 28);
  sub_217D4181C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeUnsaveEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 32);
  sub_217D4181C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeUnsaveEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 32);
  sub_217D4181C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeUnsaveEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 36);
  sub_217D4181C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeUnsaveEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 36);
  sub_217D4181C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeUnsaveEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 40);
  sub_217D4181C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeUnsaveEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 40);
  sub_217D4181C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeUnsaveEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 44);
  sub_217D4181C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeUnsaveEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 44);
  sub_217D4181C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeUnsaveEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 48);
  sub_217D4181C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeUnsaveEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 48);
  sub_217D4181C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeUnsaveEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 52);
  sub_217D4181C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D4181C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t RecipeUnsaveEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 52);
  sub_217D4181C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeUnsaveEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RecipeUnsaveEvent(0);
  v5 = v4[5];
  sub_217D4181C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217D4181C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217D4181C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217D4181C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217D4181C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_217D4181C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217D4181C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217D4181C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217D4181C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v10, v23);
}

uint64_t RecipeUnsaveEvent.Model.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeUnsaveEvent.Model(0) + 20);
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

uint64_t RecipeUnsaveEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecipeUnsaveEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t RecipeUnsaveEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeUnsaveEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t RecipeUnsaveEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeUnsaveEvent.Model(0) + 32));
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

uint64_t RecipeUnsaveEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeUnsaveEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t RecipeUnsaveEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for RecipeUnsaveEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t RecipeUnsaveEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeUnsaveEvent.Model(0) + 44));
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

uint64_t RecipeUnsaveEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeUnsaveEvent.Model(0) + 48);
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

uint64_t RecipeUnsaveEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeUnsaveEvent.Model(0) + 52));
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

__n128 RecipeUnsaveEvent.Model.init(eventData:recipeData:actionData:feedData:groupData:viewData:userChannelContextData:userBundleSubscriptionContextData:channelData:issueData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, __n128 *a11)
{
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 16);
  v18 = a2[3];
  v19 = a2[4];
  v36 = *a3;
  v38 = *a4;
  v37 = *(a4 + 2);
  v40 = a6[1];
  v41 = *a6;
  v39 = *(a6 + 8);
  v43 = a7[1];
  v44 = *a7;
  v42 = *(a7 + 1);
  v51 = a10[1];
  v52 = *a10;
  v49 = *(a10 + 17);
  v50 = *(a10 + 16);
  v47 = a10[4];
  v48 = a10[3];
  v20 = sub_217D8899C();
  v45 = a11[1];
  v46 = *a11;
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for RecipeUnsaveEvent.Model(0);
  v22 = a9 + v21[5];
  *v22 = v15;
  *(v22 + 8) = v16;
  *(v22 + 16) = v17;
  *(v22 + 24) = v18;
  *(v22 + 32) = v19;
  *(a9 + v21[6]) = v36;
  v23 = a9 + v21[7];
  *v23 = v38;
  *(v23 + 16) = v37;
  v24 = (a9 + v21[8]);
  v25 = a5[3];
  v24[2] = a5[2];
  v24[3] = v25;
  v26 = a5[1];
  *v24 = *a5;
  v24[1] = v26;
  v27 = a5[8];
  v24[7] = a5[7];
  v24[8] = v27;
  v28 = a5[6];
  v24[5] = a5[5];
  v24[6] = v28;
  v24[4] = a5[4];
  v29 = a9 + v21[9];
  *v29 = v41;
  *(v29 + 8) = v40;
  *(v29 + 16) = v39;
  v30 = a9 + v21[10];
  *v30 = v44;
  *(v30 + 1) = v43;
  *(v30 + 2) = v42;
  v31 = a9 + v21[11];
  v32 = *(a8 + 16);
  *v31 = *a8;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(a8 + 32);
  *(v31 + 48) = *(a8 + 48);
  v33 = a9 + v21[12];
  *v33 = v52;
  *(v33 + 8) = v51;
  *(v33 + 16) = v50;
  *(v33 + 17) = v49;
  *(v33 + 24) = v48;
  *(v33 + 32) = v47;
  v34 = (a9 + v21[13]);
  result = v46;
  *v34 = v46;
  v34[1] = v45;
  return result;
}

unint64_t sub_217D423C8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000021;
    v6 = 0x446C656E6E616863;
    if (a1 != 8)
    {
      v6 = 0x7461446575737369;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6174614477656976;
    if (a1 != 5)
    {
      v7 = 0xD000000000000016;
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
    v3 = 0x6174614464656566;
    if (a1 != 3)
    {
      v3 = 0x74614470756F7267;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6144657069636572;
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

uint64_t sub_217D42524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217D44204(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217D4254C(uint64_t a1)
{
  v2 = sub_217D42C38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D42588(uint64_t a1)
{
  v2 = sub_217D42C38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeUnsaveEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D43558(0, &qword_27CBA5230, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v52 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D42C38();
  sub_217D89E7C();
  LOBYTE(v84) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v97 = type metadata accessor for RecipeUnsaveEvent.Model(0);
    v12 = v3 + v97[5];
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    v16 = *(v12 + 32);
    *&v84 = *v12;
    *(&v84 + 1) = v13;
    LOBYTE(v85) = v14;
    *(&v85 + 1) = v15;
    *&v86 = v16;
    LOBYTE(v75) = 1;
    sub_217B1F08C();

    sub_217D89CAC();

    v17 = v97;
    LOBYTE(v84) = *(v3 + v97[6]);
    LOBYTE(v75) = 2;
    sub_217AED190();
    sub_217D89CAC();
    v18 = (v3 + v17[7]);
    v19 = v18[1];
    v20 = v18[2];
    v94 = *v18;
    v95 = v19;
    v96 = v20;
    v93 = 3;
    sub_217AD1A68(v94, v19, v20);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v94, v95, v96);
    v21 = (v3 + v17[8]);
    v22 = v21[6];
    v23 = v21[4];
    v89 = v21[5];
    v90 = v22;
    v24 = v21[6];
    v25 = v21[8];
    v91 = v21[7];
    v92 = v25;
    v26 = v21[2];
    v27 = *v21;
    v85 = v21[1];
    v86 = v26;
    v28 = v21[2];
    v29 = v21[4];
    v87 = v21[3];
    v88 = v29;
    v30 = *v21;
    v81 = v24;
    v82 = v91;
    v83 = v21[8];
    v84 = v30;
    v77 = v28;
    v78 = v87;
    v79 = v23;
    v80 = v89;
    v75 = v27;
    v76 = v85;
    v74 = 4;
    sub_217AD87FC(&v84, v73);
    sub_217A5D3B4();
    sub_217D89C3C();
    v73[6] = v81;
    v73[7] = v82;
    v73[8] = v83;
    v73[2] = v77;
    v73[3] = v78;
    v73[4] = v79;
    v73[5] = v80;
    v73[0] = v75;
    v73[1] = v76;
    sub_217AD96E8(v73);
    v31 = (v3 + v17[9]);
    v32 = *v31;
    v33 = v31[1];
    LOWORD(v31) = *(v31 + 8);
    *&v65 = v32;
    *(&v65 + 1) = v33;
    LOWORD(v66) = v31;
    LOBYTE(v61) = 5;
    sub_217A5E790();

    sub_217D89C3C();

    v34 = (v3 + v17[10]);
    v35 = *v34;
    v36 = v34[1];
    LOWORD(v34) = *(v34 + 1);
    v70 = v35;
    v71 = v36;
    v72 = v34;
    v69 = 6;
    sub_217ACFB8C();
    sub_217D89CAC();
    v37 = (v3 + v17[11]);
    v38 = v37[1];
    v65 = *v37;
    v66 = v38;
    v40 = *v37;
    v39 = v37[1];
    v67 = v37[2];
    v68 = *(v37 + 48);
    v61 = v40;
    v62 = v39;
    v63 = v37[2];
    v64 = *(v37 + 48);
    v60 = 7;
    sub_217ACC004(&v65, v58);
    sub_217A55B98();
    sub_217D89CAC();
    v58[0] = v61;
    v58[1] = v62;
    v58[2] = v63;
    v59 = v64;
    sub_217ACC69C(v58);
    v42 = v3 + v17[12];
    v43 = *(v42 + 8);
    v44 = *(v42 + 16);
    v45 = *(v42 + 17);
    v46 = *(v42 + 24);
    v47 = *(v42 + 32);
    v53 = *v42;
    v54 = v43;
    LOBYTE(v55) = v44;
    BYTE1(v55) = v45;
    v56 = v46;
    v57 = v47;
    HIBYTE(v52) = 8;
    sub_217AD084C();

    sub_217D89CAC();

    v48 = (v3 + v97[13]);
    v49 = v48[1];
    v50 = v48[2];
    v51 = v48[3];
    v53 = *v48;
    v54 = v49;
    v55 = v50;
    v56 = v51;
    HIBYTE(v52) = 9;
    sub_217AE39D0(v53, v49);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v53, v54);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217D42C38()
{
  result = qword_27CBA5238;
  if (!qword_27CBA5238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5238);
  }

  return result;
}

uint64_t RecipeUnsaveEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_217D8899C();
  v54 = *(v3 - 8);
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D43558(0, &qword_27CBA5240, MEMORY[0x277D844C8]);
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - v8;
  v10 = type metadata accessor for RecipeUnsaveEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D42C38();
  v58 = v9;
  v15 = v78;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v55;
  v78 = a1;
  v51 = v10;
  v52 = v13;
  LOBYTE(v69) = 0;
  sub_217A602A0(&qword_2811C8408);
  sub_217D89BCC();
  v17 = v52;
  (*(v54 + 32))(v52, v57, v3);
  LOBYTE(v64) = 1;
  sub_217B1F038();
  sub_217D89BCC();
  v50 = v3;
  v57 = 0;
  v18 = *(&v69 + 1);
  v19 = v70;
  v20 = *(&v70 + 1);
  v21 = v71;
  v22 = v51;
  v23 = &v17[v51[5]];
  *v23 = v69;
  *(v23 + 1) = v18;
  v23[16] = v19;
  *(v23 + 3) = v20;
  *(v23 + 4) = v21;
  LOBYTE(v64) = 2;
  sub_217AED13C();
  sub_217D89BCC();
  v17[v22[6]] = v69;
  LOBYTE(v64) = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v24 = v70;
  v25 = &v17[v22[7]];
  *v25 = v69;
  *(v25 + 2) = v24;
  v68 = 4;
  sub_217A5D308();
  sub_217D89B5C();
  v26 = &v17[v22[8]];
  v27 = v74;
  v28 = v76;
  v29 = v77;
  *(v26 + 6) = v75;
  *(v26 + 7) = v28;
  *(v26 + 8) = v29;
  v30 = v70;
  v31 = v72;
  v32 = v73;
  *(v26 + 2) = v71;
  *(v26 + 3) = v31;
  *(v26 + 4) = v32;
  *(v26 + 5) = v27;
  *v26 = v69;
  *(v26 + 1) = v30;
  LOBYTE(v60) = 5;
  sub_217A5E738();
  sub_217D89B5C();
  v33 = v65;
  v34 = &v17[v22[9]];
  *v34 = v64;
  *(v34 + 8) = v33;
  LOBYTE(v60) = 6;
  sub_217ACFB38();
  sub_217D89BCC();
  v35 = BYTE1(v64);
  v36 = WORD1(v64);
  v37 = &v17[v22[10]];
  *v37 = v64;
  v37[1] = v35;
  *(v37 + 1) = v36;
  v63 = 7;
  sub_217A54D08();
  sub_217D89BCC();
  v38 = &v52[v51[11]];
  v39 = v65;
  *v38 = v64;
  *(v38 + 1) = v39;
  *(v38 + 2) = v66;
  v38[48] = v67;
  v59 = 8;
  sub_217AD07F8();
  sub_217D89BCC();
  v40 = *(&v60 + 1);
  v41 = v61;
  v42 = BYTE1(v61);
  v43 = *(&v61 + 1);
  v44 = v62;
  v45 = &v52[v51[12]];
  *v45 = v60;
  *(v45 + 1) = v40;
  v45[16] = v41;
  v45[17] = v42;
  *(v45 + 3) = v43;
  *(v45 + 4) = v44;
  v59 = 9;
  sub_217ACFF40();
  sub_217D89B5C();
  (*(v16 + 8))(v58, v56);
  v46 = v52;
  v47 = &v52[v51[13]];
  v48 = v61;
  *v47 = v60;
  *(v47 + 1) = v48;
  sub_217D435BC(v46, v53);
  __swift_destroy_boxed_opaque_existential_1(v78);
  return sub_217D43620(v46);
}

void sub_217D43558(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D42C38();
    v7 = a3(a1, &type metadata for RecipeUnsaveEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D435BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeUnsaveEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D43620(uint64_t a1)
{
  v2 = type metadata accessor for RecipeUnsaveEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D43754@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217D4181C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217D4181C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217D4181C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217D4181C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217D4181C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_217D4181C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217D4181C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217D4181C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217D4181C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v11, v24);
}

void sub_217D43C48()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217D4181C(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
    if (v1 <= 0x3F)
    {
      sub_217D4181C(319, &qword_2811C8848, sub_217AED13C, sub_217AED190);
      if (v2 <= 0x3F)
      {
        sub_217D4181C(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
        if (v3 <= 0x3F)
        {
          sub_217D4181C(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
          if (v4 <= 0x3F)
          {
            sub_217D4181C(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
            if (v5 <= 0x3F)
            {
              sub_217D4181C(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
              if (v6 <= 0x3F)
              {
                sub_217D4181C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                if (v7 <= 0x3F)
                {
                  sub_217D4181C(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
                  if (v8 <= 0x3F)
                  {
                    sub_217D4181C(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
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

void sub_217D43FAC()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD308);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD178);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD200);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD110);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217D44100()
{
  result = qword_27CBA5268;
  if (!qword_27CBA5268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5268);
  }

  return result;
}

unint64_t sub_217D44158()
{
  result = qword_27CBA5270;
  if (!qword_27CBA5270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5270);
  }

  return result;
}

unint64_t sub_217D441B0()
{
  result = qword_27CBA5278;
  if (!qword_27CBA5278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5278);
  }

  return result;
}

uint64_t sub_217D44204(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144657069636572 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061)
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