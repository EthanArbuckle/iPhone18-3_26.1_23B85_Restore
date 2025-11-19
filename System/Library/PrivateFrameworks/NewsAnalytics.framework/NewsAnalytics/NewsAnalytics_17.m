unint64_t sub_217C2F984()
{
  result = qword_2811C1290[0];
  if (!qword_2811C1290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C1290);
  }

  return result;
}

void sub_217C2F9D8()
{
  if (!qword_2811BCDD0)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCDD0);
    }
  }
}

uint64_t GroupingInventoryData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217C2FBF8(0, &qword_27CBA2768, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C2F984();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C2F9D8();
    sub_217C2FC5C(&qword_27CBA2770, sub_217C19610);
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C2FBF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C2F984();
    v7 = a3(a1, &type metadata for GroupingInventoryData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C2FC5C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_217C2F9D8();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217C2FD24()
{
  result = qword_27CBA2778;
  if (!qword_27CBA2778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2778);
  }

  return result;
}

unint64_t sub_217C2FD7C()
{
  result = qword_2811C1280;
  if (!qword_2811C1280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1280);
  }

  return result;
}

unint64_t sub_217C2FDD4()
{
  result = qword_2811C1288;
  if (!qword_2811C1288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1288);
  }

  return result;
}

uint64_t NotificationData.notificationID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NotificationData.notificationID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NotificationData.senderChannelID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t NotificationData.senderChannelID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t NotificationData.sourceChannelID.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t NotificationData.sourceChannelID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t NotificationData.notificationArticleID.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t NotificationData.notificationArticleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t NotificationData.algoId.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t NotificationData.algoId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_217C30234(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000016;
    if (a1 != 8)
    {
      v5 = 0x64496F676C61;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000010;
    if (a1 != 5)
    {
      v6 = 0xD00000000000001DLL;
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
    v1 = 0x6163696669746F6ELL;
    v2 = 0x68437265646E6573;
    v3 = 0x6843656372756F73;
    if (a1 != 3)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
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

uint64_t sub_217C303B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C3132C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C303DC(uint64_t a1)
{
  v2 = sub_217C30784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C30418(uint64_t a1)
{
  v2 = sub_217C30784();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationData.encode(to:)(void *a1)
{
  sub_217C30F04(0, &qword_27CBA2780, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v18 - v7;
  v10 = *v1;
  v9 = v1[1];
  v29 = *(v1 + 16);
  v11 = v1[3];
  v27 = v1[4];
  v28 = v11;
  v12 = v1[5];
  v25 = v1[6];
  v26 = v12;
  v13 = v1[7];
  v23 = v1[8];
  v24 = v13;
  LODWORD(v13) = *(v1 + 72);
  v21 = *(v1 + 73);
  v22 = v13;
  LODWORD(v13) = *(v1 + 74);
  v19 = *(v1 + 75);
  v20 = v13;
  v14 = v1[11];
  v18[1] = v1[10];
  v18[2] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C30784();
  sub_217D89E7C();
  v44 = 0;
  v16 = v30;
  sub_217D89C0C();
  if (!v16)
  {
    v43 = 1;
    sub_217D89C7C();
    v42 = 2;
    sub_217D89C0C();
    v41 = 3;
    sub_217D89C0C();
    v40 = 4;
    sub_217D89C0C();
    v39 = v22;
    v38 = 5;
    sub_217C307D8();
    sub_217D89C3C();
    v37 = v21;
    v36 = 6;
    sub_217C3082C();
    sub_217D89C3C();
    v35 = v20;
    v34 = 7;
    sub_217C30880();
    sub_217D89C3C();
    v33 = v19;
    v32 = 8;
    sub_217C308D4();
    sub_217D89C3C();
    v31 = 9;
    sub_217D89C0C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C30784()
{
  result = qword_27CBA2788;
  if (!qword_27CBA2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2788);
  }

  return result;
}

unint64_t sub_217C307D8()
{
  result = qword_27CBA2790;
  if (!qword_27CBA2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2790);
  }

  return result;
}

unint64_t sub_217C3082C()
{
  result = qword_27CBA2798;
  if (!qword_27CBA2798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2798);
  }

  return result;
}

unint64_t sub_217C30880()
{
  result = qword_27CBA27A0;
  if (!qword_27CBA27A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27A0);
  }

  return result;
}

unint64_t sub_217C308D4()
{
  result = qword_27CBA27A8;
  if (!qword_27CBA27A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27A8);
  }

  return result;
}

uint64_t NotificationData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217C30F04(0, &qword_27CBA27B0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v41 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C30784();
  sub_217D89E5C();
  if (v2)
  {
    v74 = v2;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v58[0]) = 0;
  v12 = sub_217D89B2C();
  v15 = v14;
  v16 = v12;
  LOBYTE(v58[0]) = 1;
  v51 = sub_217D89B9C();
  LOBYTE(v58[0]) = 2;
  v17 = sub_217D89B2C();
  v19 = v18;
  v49 = v17;
  v50 = v16;
  LOBYTE(v58[0]) = 3;
  v20 = sub_217D89B2C();
  v22 = v21;
  v47 = v20;
  v48 = a2;
  LOBYTE(v58[0]) = 4;
  v23 = sub_217D89B2C();
  v74 = 0;
  v25 = v24;
  v46 = v23;
  LOBYTE(v52) = 5;
  sub_217C30F68();
  v26 = v74;
  sub_217D89B5C();
  v74 = v26;
  if (v26)
  {
    goto LABEL_10;
  }

  v45 = LOBYTE(v58[0]);
  LOBYTE(v52) = 6;
  sub_217C30FBC();
  v27 = v74;
  sub_217D89B5C();
  v74 = v27;
  if (v27)
  {
    goto LABEL_10;
  }

  v44 = LOBYTE(v58[0]);
  LOBYTE(v52) = 7;
  sub_217C31010();
  v28 = v74;
  sub_217D89B5C();
  v74 = v28;
  if (v28 || (v43 = LOBYTE(v58[0]), LOBYTE(v52) = 8, sub_217C31064(), v29 = v74, sub_217D89B5C(), (v74 = v29) != 0))
  {
LABEL_10:
    (*(v7 + 8))(v10, v6);
    goto LABEL_4;
  }

  v42 = LOBYTE(v58[0]);
  v72 = 9;
  *&v41 = sub_217D89B2C();
  *(&v41 + 1) = v30;
  v74 = 0;
  v51 &= 1u;
  v31 = v51;
  (*(v7 + 8))(v10, v6);
  v32 = v50;
  *&v52 = v50;
  *(&v52 + 1) = v15;
  LOBYTE(v53) = v31;
  *(&v53 + 1) = *v73;
  DWORD1(v53) = *&v73[3];
  v33 = v49;
  *(&v53 + 1) = v49;
  v34 = v47;
  *&v54 = v19;
  *(&v54 + 1) = v47;
  *&v55 = v22;
  *(&v55 + 1) = v46;
  *&v56 = v25;
  BYTE8(v56) = v45;
  BYTE9(v56) = v44;
  BYTE10(v56) = v43;
  BYTE11(v56) = v42;
  v35 = v41;
  v57 = v41;
  v36 = v54;
  v37 = v55;
  v38 = v41;
  v39 = v48;
  v48[4] = v56;
  v39[5] = v38;
  v39[2] = v36;
  v39[3] = v37;
  v40 = v53;
  *v39 = v52;
  v39[1] = v40;
  sub_217ADF510(&v52, v58);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v58[0] = v32;
  v58[1] = v15;
  v59 = v51;
  *v60 = *v73;
  *&v60[3] = *&v73[3];
  v61 = v33;
  v62 = v19;
  v63 = v34;
  v64 = v22;
  v65 = v46;
  v66 = v25;
  v67 = v45;
  v68 = v44;
  v69 = v43;
  v70 = v42;
  v71 = __PAIR128__(*(&v41 + 1), v35);
  return sub_217C310B8(v58);
}

void sub_217C30F04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C30784();
    v7 = a3(a1, &type metadata for NotificationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C30F68()
{
  result = qword_27CBA27B8;
  if (!qword_27CBA27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27B8);
  }

  return result;
}

unint64_t sub_217C30FBC()
{
  result = qword_27CBA27C0;
  if (!qword_27CBA27C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27C0);
  }

  return result;
}

unint64_t sub_217C31010()
{
  result = qword_27CBA27C8;
  if (!qword_27CBA27C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27C8);
  }

  return result;
}

unint64_t sub_217C31064()
{
  result = qword_27CBA27D0;
  if (!qword_27CBA27D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27D0);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_217C3113C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_217C31198(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_217C31228()
{
  result = qword_27CBA27D8;
  if (!qword_27CBA27D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27D8);
  }

  return result;
}

unint64_t sub_217C31280()
{
  result = qword_27CBA27E0;
  if (!qword_27CBA27E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27E0);
  }

  return result;
}

unint64_t sub_217C312D8()
{
  result = qword_27CBA27E8;
  if (!qword_27CBA27E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27E8);
  }

  return result;
}

uint64_t sub_217C3132C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696669746F6ELL && a2 == 0xEE0044496E6F6974;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD0FB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68437265646E6573 && a2 == 0xEF44496C656E6E61 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6843656372756F73 && a2 == 0xEF44496C656E6E61 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD0FD0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD0FF0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000217DD1010 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD1030 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DD1050 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x64496F676C61 && a2 == 0xE600000000000000)
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

NewsAnalytics::NotificationSurfacedAs_optional __swiftcall NotificationSurfacedAs.init(rawValue:)(Swift::String rawValue)
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

uint64_t NotificationSurfacedAs.rawValue.getter()
{
  v1 = 0x74616964656D6D69;
  if (*v0 != 1)
  {
    v1 = 0x756F59726F66;
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

uint64_t sub_217C3171C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x74616964656D6D69;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x756F59726F66;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x74616964656D6D69;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x756F59726F66;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
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
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217C31824()
{
  result = qword_27CBA27F0;
  if (!qword_27CBA27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27F0);
  }

  return result;
}

uint64_t sub_217C31878()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C3191C()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217C319AC()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C31A58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x74616964656D6D69;
  if (v2 != 1)
  {
    v5 = 0x756F59726F66;
    v4 = 0xE600000000000000;
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

unint64_t sub_217C31B78()
{
  result = qword_27CBA27F8;
  if (!qword_27CBA27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27F8);
  }

  return result;
}

unint64_t sub_217C31BCC(char a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      result = 0x7961646F54;
      break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 8:
      result = 0x2B7377654ELL;
      break;
    case 9:
      result = 0x747241664F646E45;
      break;
    case 10:
      result = 0x6F69647541;
      break;
    case 11:
      result = 0x7369486F69647541;
      break;
    case 12:
      result = 0x616C506F69647541;
      break;
    case 13:
      result = 0x6465766153;
      break;
    case 14:
      result = 0x79726F74736948;
      break;
    case 15:
      result = 0x686372616553;
      break;
    case 16:
      result = 0x6F48686372616553;
      break;
    case 17:
      result = 0x6957646572616853;
      break;
    case 18:
      result = 0x7374726F7053;
      break;
    case 19:
      result = 0x76457374726F7053;
      break;
    case 20:
      result = 0x7548656C7A7A7550;
      break;
    case 21:
      result = 0x7954656C7A7A7550;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    case 23:
      result = 0x6F42657069636552;
      break;
    case 24:
      result = 0x627548646F6F46;
      break;
    case 25:
      result = 0x6143657069636552;
      break;
    case 26:
      result = 0x636552664F646E45;
      break;
    default:
      return result;
  }

  return result;
}

char *sub_217C31E24(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = a2;
  v47 = a5;
  v44 = a3;
  v45 = a4;
  v48 = sub_217D87A4C();
  v10 = *(v48 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v48);
  v43 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v43 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  v22 = a1[1];
  v49 = *a1;
  v50 = v22;

  MEMORY[0x21CEACC70](a6, a7);
  sub_217D8959C();

  sub_217D87A1C();

  v23 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_217B5ABE8(v24 > 1, v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v28 = *(v10 + 32);
  v26 = v10 + 32;
  v27 = v28;
  v29 = (*(v26 + 48) + 32) & ~*(v26 + 48);
  v30 = *(v26 + 40);
  v31 = v21;
  v32 = v48;
  v28(&v23[v29 + v30 * v25], v31, v48);
  if (v46[1])
  {
    v33 = *v46;
    sub_217D87A1C();
    v35 = *(v23 + 2);
    v34 = *(v23 + 3);
    if (v35 >= v34 >> 1)
    {
      v23 = sub_217B5ABE8(v34 > 1, v35 + 1, 1, v23);
    }

    *(v23 + 2) = v35 + 1;
    v27(&v23[v29 + v35 * v30], v19, v32);
  }

  sub_217D87A1C();
  v37 = *(v23 + 2);
  v36 = *(v23 + 3);
  if (v37 >= v36 >> 1)
  {
    v23 = sub_217B5ABE8(v36 > 1, v37 + 1, 1, v23);
  }

  *(v23 + 2) = v37 + 1;
  v27(&v23[v29 + v37 * v30], v16, v32);
  if (v47 != 1)
  {
    sub_217C31BCC(v44);
    if (v38)
    {
      v39 = v43;
      sub_217D87A1C();

      v41 = *(v23 + 2);
      v40 = *(v23 + 3);
      if (v41 >= v40 >> 1)
      {
        v23 = sub_217B5ABE8(v40 > 1, v41 + 1, 1, v23);
      }

      *(v23 + 2) = v41 + 1;
      v27(&v23[v29 + v41 * v30], v39, v32);
    }
  }

  return v23;
}

void sub_217C32214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  v51 = a3;
  v4 = sub_217D87A4C();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecipeViewEvent.Model(0);
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7);
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C327B8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_217D881AC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v47 - v17;
  sub_217C32810();
  v20 = v19;
  v21 = *(v19 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14);
  v25 = swift_dynamicCast();
  v26 = *(v21 + 56);
  if (v25)
  {
    v26(v13, 0, 1, v20);
    (*(v21 + 32))(v24, v13, v20);
    v27 = sub_217D8816C();
    v28 = v54;
    v29 = sub_217D887BC();
    if (v28)
    {
      (*(v21 + 8))(v24, v20);
    }

    else
    {
      v31 = v29;
      v32 = v30;

      v33 = sub_217D8796C();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      sub_217D8795C();
      sub_217C328A4(&qword_27CBA2808, type metadata accessor for RecipeViewEvent.Model);
      v36 = v53;
      sub_217D8794C();
      v54 = v32;

      sub_217D87A1C();
      v37 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
      v39 = v37[2];
      v38 = v37[3];
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v47 = v39 + 1;
        v46 = sub_217B5ABE8(v38 > 1, v39 + 1, 1, v37);
        v40 = v47;
        v37 = v46;
      }

      v37[2] = v40;
      (*(v48 + 32))(v37 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v39, v52, v49);
      v59 = v37;
      v41 = v36 + v7[6];
      v56 = *(v41 + 32);
      v42 = *(v41 + 16);
      v55[0] = *v41;
      v55[1] = v42;
      v43 = v36 + v7[7];
      v58 = *(v43 + 32);
      v44 = *(v43 + 16);
      v57[0] = *v43;
      v57[1] = v44;
      v45 = sub_217C31E24(v55, v57, *(v36 + v7[8]), *(v36 + v7[8] + 8), *(v36 + v7[8] + 16), v50, v51);
      sub_217B0E7A0(v45);
      sub_217AE010C(v31, v54);
      sub_217C328EC(v36, type metadata accessor for RecipeViewEvent.Model);
      (*(v21 + 8))(v24, v20);
    }
  }

  else
  {
    v26(v13, 1, 1, v20);
    sub_217C328EC(v13, sub_217C327B8);
    sub_217B0F048();
    swift_allocError();
    swift_willThrow();
  }
}

void sub_217C327B8()
{
  if (!qword_27CBA2800)
  {
    sub_217C32810();
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA2800);
    }
  }
}

void sub_217C32810()
{
  if (!qword_2811C8920)
  {
    type metadata accessor for RecipeViewEvent(255);
    sub_217C328A4(qword_2811C61B8, type metadata accessor for RecipeViewEvent);
    v0 = sub_217D881AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8920);
    }
  }
}

uint64_t sub_217C328A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217C328EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FCRelativePriority.analyticsPriority.getter@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result + 1) >= 4)
  {
    type metadata accessor for FCRelativePriority(0);
    result = sub_217D89D8C();
    __break(1u);
  }

  else
  {
    *a2 = result + 1;
  }

  return result;
}

uint64_t sub_217C32A68()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2810);
  __swift_project_value_buffer(v0, qword_27CBA2810);
  return sub_217D8866C();
}

uint64_t EOAGroupExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EOAGroupExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAGroupExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 24);
  sub_217C335CC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAGroupExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 24);
  sub_217C335CC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAGroupExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 28);
  sub_217C335CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAGroupExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 28);
  sub_217C335CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAGroupExposureEvent.hostArticleViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 32);
  sub_217C335CC(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAGroupExposureEvent.hostArticleViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 32);
  sub_217C335CC(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAGroupExposureEvent.hostArticleNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 36);
  sub_217C335CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAGroupExposureEvent.hostArticleNewsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 36);
  sub_217C335CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAGroupExposureEvent.hostArticleChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 40);
  sub_217C335CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAGroupExposureEvent.hostArticleChannelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 40);
  sub_217C335CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAGroupExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 44);
  sub_217C335CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C335CC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t EOAGroupExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 44);
  sub_217C335CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAGroupExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for EOAGroupExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C335CC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217C335CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217C335CC(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217C335CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  sub_217C335CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v16 - 8) + 104))(a1 + v15, v2, v16);
  v17 = v4[11];
  sub_217C335CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v19 = *(*(v18 - 8) + 104);

  return v19(a1 + v17, v2, v18);
}

uint64_t sub_217C33B20@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t EOAGroupExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EOAGroupExposureEvent.Model(0) + 24));
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

uint64_t EOAGroupExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EOAGroupExposureEvent.Model(0) + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t EOAGroupExposureEvent.Model.hostArticleViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EOAGroupExposureEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t EOAGroupExposureEvent.Model.hostArticleNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EOAGroupExposureEvent.Model(0) + 36);
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

uint64_t EOAGroupExposureEvent.Model.hostArticleChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EOAGroupExposureEvent.Model(0) + 40);
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

uint64_t EOAGroupExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EOAGroupExposureEvent.Model(0) + 44));
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

__n128 EOAGroupExposureEvent.Model.init(eventData:timedData:groupData:feedData:hostArticleViewData:hostArticleNewsArticleData:hostArticleChannelData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *a4;
  v17 = *(a4 + 1);
  v16 = *(a4 + 2);
  v38 = a5[1];
  v39 = *a5;
  v44 = a7[1];
  v45 = *a7;
  v42 = *(a7 + 17);
  v43 = *(a7 + 16);
  v40 = a7[4];
  v41 = a7[3];
  v18 = sub_217D8899C();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for EOAGroupExposureEvent.Model(0);
  v20 = v19[5];
  v21 = sub_217D889CC();
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v22 = (a9 + v19[6]);
  v23 = a3[3];
  v22[2] = a3[2];
  v22[3] = v23;
  v24 = a3[1];
  *v22 = *a3;
  v22[1] = v24;
  v25 = a3[8];
  v22[7] = a3[7];
  v22[8] = v25;
  v26 = a3[6];
  v22[5] = a3[5];
  v22[6] = v26;
  v22[4] = a3[4];
  v27 = a9 + v19[7];
  *v27 = v15;
  *(v27 + 8) = v17;
  *(v27 + 16) = v16;
  v28 = (a9 + v19[8]);
  *v28 = v39;
  v28[1] = v38;
  v29 = a9 + v19[9];
  v30 = *(a6 + 48);
  *(v29 + 32) = *(a6 + 32);
  *(v29 + 48) = v30;
  v31 = *(a6 + 16);
  *v29 = *a6;
  *(v29 + 16) = v31;
  *(v29 + 127) = *(a6 + 127);
  v32 = *(a6 + 112);
  *(v29 + 96) = *(a6 + 96);
  *(v29 + 112) = v32;
  v33 = *(a6 + 80);
  *(v29 + 64) = *(a6 + 64);
  *(v29 + 80) = v33;
  v34 = a9 + v19[10];
  *v34 = v45;
  *(v34 + 8) = v44;
  *(v34 + 16) = v43;
  *(v34 + 17) = v42;
  *(v34 + 24) = v41;
  *(v34 + 32) = v40;
  v35 = a9 + v19[11];
  v36 = *(a8 + 16);
  *v35 = *a8;
  *(v35 + 16) = v36;
  result = *(a8 + 32);
  *(v35 + 32) = result;
  *(v35 + 48) = *(a8 + 48);
  return result;
}

unint64_t sub_217C34040()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000021;
    if (v1 == 6)
    {
      v5 = 0xD000000000000016;
    }

    v6 = 0xD000000000000013;
    if (v1 != 4)
    {
      v6 = 0xD00000000000001ALL;
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

uint64_t sub_217C34144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C35B8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C3416C(uint64_t a1)
{
  v2 = sub_217C34834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C341A8(uint64_t a1)
{
  v2 = sub_217C34834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EOAGroupExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C3516C(0, &qword_27CBA2828, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v48 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C34834();
  sub_217D89E7C();
  LOBYTE(v97[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for EOAGroupExposureEvent.Model(0);
    v13 = v12[5];
    v105 = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = (v3 + v12[6]);
    v15 = v14[5];
    v16 = v14[7];
    v102 = v14[6];
    v103 = v16;
    v17 = v14[7];
    v104 = v14[8];
    v18 = v14[1];
    v19 = v14[3];
    v98 = v14[2];
    v99 = v19;
    v20 = v14[3];
    v21 = v14[5];
    v100 = v14[4];
    v101 = v21;
    v22 = v14[1];
    v97[0] = *v14;
    v97[1] = v22;
    v94 = v102;
    v95 = v17;
    v96 = v14[8];
    v90 = v98;
    v91 = v20;
    v92 = v100;
    v93 = v15;
    v88 = v97[0];
    v89 = v18;
    v87 = 2;
    sub_217AF7618(v97, v86);
    sub_217A5D3B4();
    sub_217D89CAC();
    v86[6] = v94;
    v86[7] = v95;
    v86[8] = v96;
    v86[2] = v90;
    v86[3] = v91;
    v86[4] = v92;
    v86[5] = v93;
    v86[0] = v88;
    v86[1] = v89;
    sub_217AF8104(v86);
    v23 = v3 + v12[7];
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
    LOBYTE(v75) = *v23;
    *(&v75 + 1) = v24;
    *&v76 = v25;
    LOBYTE(v67) = 3;
    sub_217A5BA2C();

    sub_217D89CAC();

    v26 = (v3 + v12[8]);
    v27 = v26[1];
    v84 = *v26;
    v85 = v27;
    v83 = 4;
    sub_217BA73F4();

    sub_217D89CAC();

    v28 = (v3 + v12[9]);
    v29 = v28[5];
    v30 = v28[7];
    v81 = v28[6];
    *v82 = v30;
    v31 = v28[1];
    v32 = v28[3];
    v77 = v28[2];
    v78 = v32;
    v33 = v28[3];
    v34 = v28[5];
    v79 = v28[4];
    v80 = v34;
    v35 = v28[1];
    v75 = *v28;
    v76 = v35;
    v36 = v28[7];
    v73 = v81;
    v74[0] = v36;
    v69 = v77;
    v70 = v33;
    v71 = v79;
    v72 = v29;
    *&v82[15] = *(v28 + 127);
    *(v74 + 15) = *(v28 + 127);
    v67 = v75;
    v68 = v31;
    v66 = 5;
    sub_217AD1630(&v75, v64);
    sub_217ACF52C();
    sub_217D89CAC();
    v64[6] = v73;
    *v65 = v74[0];
    *&v65[15] = *(v74 + 15);
    v64[2] = v69;
    v64[3] = v70;
    v64[4] = v71;
    v64[5] = v72;
    v64[0] = v67;
    v64[1] = v68;
    sub_217AD2864(v64);
    v37 = (v3 + v12[10]);
    v38 = v37[1];
    v39 = *(v37 + 16);
    v40 = *(v37 + 17);
    v41 = v37[3];
    v42 = v37[4];
    v58 = *v37;
    v59 = v38;
    v60 = v39;
    v61 = v40;
    v62 = v41;
    v63 = v42;
    v57 = 6;
    sub_217AD084C();

    sub_217D89CAC();

    v43 = (v3 + v12[11]);
    v44 = v43[1];
    v55[0] = *v43;
    v55[1] = v44;
    v46 = *v43;
    v45 = v43[1];
    v55[2] = v43[2];
    v56 = *(v43 + 48);
    v51 = v46;
    v52 = v45;
    v53 = v43[2];
    v54 = *(v43 + 48);
    v50 = 7;
    sub_217ACC004(v55, v48);
    sub_217A55B98();
    sub_217D89CAC();
    v48[0] = v51;
    v48[1] = v52;
    v48[2] = v53;
    v49 = v54;
    sub_217ACC69C(v48);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C34834()
{
  result = qword_27CBA2830;
  if (!qword_27CBA2830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2830);
  }

  return result;
}

uint64_t EOAGroupExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_217D889CC();
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v56 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C3516C(0, &qword_27CBA2838, MEMORY[0x277D844C8]);
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = type metadata accessor for EOAGroupExposureEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_217C34834();
  v17 = v57;
  sub_217D89E5C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v76);
  }

  v18 = v53;
  v19 = v14;
  LOBYTE(v67) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v20 = v55;
  sub_217D89BCC();
  v21 = *(v52 + 32);
  v57 = v19;
  v21(v19, v56, v6);
  LOBYTE(v67) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v22 = v18;
  v23 = v51;
  sub_217D89BCC();
  v48 = v6;
  v56 = 0;
  (*(v50 + 32))(v57 + v11[5], v22, v23);
  v66 = 2;
  sub_217A5D308();
  sub_217D89BCC();
  v24 = (v57 + v11[6]);
  v25 = v74;
  v24[6] = v73;
  v24[7] = v25;
  v24[8] = v75;
  v26 = v70;
  v24[2] = v69;
  v24[3] = v26;
  v27 = v72;
  v24[4] = v71;
  v24[5] = v27;
  v28 = v68;
  *v24 = v67;
  v24[1] = v28;
  LOBYTE(v58) = 3;
  sub_217A5B978();
  sub_217D89BCC();
  v29 = v54;
  v30 = v57 + v11[7];
  *v30 = v64[0];
  *(v30 + 8) = *(v64 + 8);
  LOBYTE(v58) = 4;
  sub_217BA73A0();
  sub_217D89BCC();
  v31 = *(&v64[0] + 1);
  v32 = (v57 + v11[8]);
  *v32 = *&v64[0];
  v32[1] = v31;
  v63 = 5;
  sub_217ACF4D8();
  sub_217D89BCC();
  v33 = v57 + v11[9];
  v34 = v64[5];
  v35 = *v65;
  *(v33 + 96) = v64[6];
  *(v33 + 112) = v35;
  *(v33 + 127) = *&v65[15];
  v36 = v64[3];
  *(v33 + 32) = v64[2];
  *(v33 + 48) = v36;
  *(v33 + 64) = v64[4];
  *(v33 + 80) = v34;
  v37 = v64[1];
  *v33 = v64[0];
  *(v33 + 16) = v37;
  v62 = 6;
  sub_217AD07F8();
  sub_217D89BCC();
  v38 = *(&v58 + 1);
  v39 = v59;
  v40 = BYTE1(v59);
  v41 = *(&v59 + 1);
  v42 = v60;
  v43 = v57 + v11[10];
  *v43 = v58;
  *(v43 + 8) = v38;
  *(v43 + 16) = v39;
  *(v43 + 17) = v40;
  *(v43 + 24) = v41;
  *(v43 + 32) = v42;
  v62 = 7;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v29 + 8))(0, v20);
  v44 = v57;
  v45 = v57 + v11[11];
  v46 = v59;
  *v45 = v58;
  *(v45 + 16) = v46;
  *(v45 + 32) = v60;
  *(v45 + 48) = v61;
  sub_217C351D0(v44, v49);
  __swift_destroy_boxed_opaque_existential_1(v76);
  return sub_217C35234(v44);
}

void sub_217C3516C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C34834();
    v7 = a3(a1, &type metadata for EOAGroupExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C351D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EOAGroupExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C35234(uint64_t a1)
{
  v2 = type metadata accessor for EOAGroupExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C35368@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C335CC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217C335CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217C335CC(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217C335CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  sub_217C335CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v17 - 8) + 104))(a2 + v16, v4, v17);
  v18 = a1[11];
  sub_217C335CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v20 = *(*(v19 - 8) + 104);

  return v20(a2 + v18, v4, v19);
}

void sub_217C35720()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217C335CC(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
      if (v2 <= 0x3F)
      {
        sub_217C335CC(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
        if (v3 <= 0x3F)
        {
          sub_217C335CC(319, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4);
          if (v4 <= 0x3F)
          {
            sub_217C335CC(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
            if (v5 <= 0x3F)
            {
              sub_217C335CC(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
              if (v6 <= 0x3F)
              {
                sub_217C335CC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
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

uint64_t sub_217C359AC()
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

unint64_t sub_217C35A88()
{
  result = qword_27CBA2840;
  if (!qword_27CBA2840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2840);
  }

  return result;
}

unint64_t sub_217C35AE0()
{
  result = qword_27CBA2848;
  if (!qword_27CBA2848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2848);
  }

  return result;
}

unint64_t sub_217C35B38()
{
  result = qword_27CBA2850;
  if (!qword_27CBA2850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2850);
  }

  return result;
}

uint64_t sub_217C35B8C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000013 && 0x8000000217DCED30 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCED50 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCED70 == a2 || (sub_217D89D4C() & 1) != 0)
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

uint64_t UserSubscriptionContextData.purchaseSources.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

NewsAnalytics::UserSubscriptionContextData __swiftcall UserSubscriptionContextData.init(isPurchaser:purchaseSources:)(Swift::Bool isPurchaser, Swift::OpaquePointer purchaseSources)
{
  *v2 = isPurchaser;
  *(v2 + 8) = purchaseSources;
  result.purchaseSources = purchaseSources;
  result.isPurchaser = isPurchaser;
  return result;
}

uint64_t sub_217C35EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6168637275507369 && a2 == 0xEB00000000726573;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEF73656372756F53)
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

uint64_t sub_217C35FAC(uint64_t a1)
{
  v2 = sub_217A64958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C35FE8(uint64_t a1)
{
  v2 = sub_217A64958();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserSubscriptionContextData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217A64708(0, &qword_2811BC940, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A64958();
  sub_217D89E5C();
  if (!v2)
  {
    v17 = 0;
    v15 = sub_217D89B9C() & 1;
    sub_217A64AAC();
    v16 = 1;
    sub_217A64AFC(&qword_2811BCDF0, sub_217C36234);
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    v13 = v14[1];
    *a2 = v15;
    *(a2 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217C36234()
{
  result = qword_2811C6B08;
  if (!qword_2811C6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6B08);
  }

  return result;
}

unint64_t sub_217C362C4()
{
  result = qword_27CBA2858;
  if (!qword_27CBA2858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2858);
  }

  return result;
}

void ChannelDataFactory.createChannelData(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_getObjectType();
  v5 = [a1 identifier];
  v6 = sub_217D8954C();
  v8 = v7;

  v9 = FCChannelProviding.isAdSupported()();
  v10 = *(v2 + 16);
  swift_getObjectType();
  v11 = FCBundleSubscriptionManagerType.bundleContainsChannel(_:)(a1);
  v12 = [a1 language];
  if (v12)
  {
    v13 = v12;
    v14 = sub_217D8954C();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 17) = v11 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
}

void ChannelDataFactory.createChannelContextData(for:)(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  sub_217C36530(v2, a1, &v13);
  v5 = v13;
  sub_217C36680(a1, v2, &v12);
  v6 = v12;
  v7 = *(v2 + 32);
  v8 = [a1 identifier];
  if (!v8)
  {
    sub_217D8954C();
    v8 = sub_217D8951C();
  }

  v9 = [v7 hasSubscriptionToTagID_];

  v10 = [a1 identifier];
  if (!v10)
  {
    sub_217D8954C();
    v10 = sub_217D8951C();
  }

  v11 = [v7 hasMutedSubscriptionForTagID_];

  *a2 = v9;
  a2[1] = v11;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_217C36530@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v5 = *(a1 + 24);
  swift_unknownObjectRetain();
  if ([a2 tagType] == 3)
  {
    v6 = [a2 asSection];
    if (!v6 || (v7 = [v6 parentID], swift_unknownObjectRelease(), !v7))
    {
      result = swift_unknownObjectRelease();
LABEL_8:
      v14 = 2;
      goto LABEL_9;
    }
  }

  else
  {
    v7 = [a2 identifier];
  }

  v9 = sub_217D8954C();
  v11 = v10;

  v12 = [v5 purchasedTagIDs];
  v13 = sub_217D8973C();

  LOBYTE(v12) = sub_217C3682C(v9, v11, v13);

  swift_unknownObjectRelease();

  if ((v12 & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = 1;
LABEL_9:
  *a3 = v14;
  return result;
}

void sub_217C36680(id a1@<X1>, uint64_t a2@<X0>, _BYTE *a3@<X8>)
{
  v4 = *(a2 + 24);
  v5 = [a1 identifier];
  if (!v5)
  {
    sub_217D8954C();
    v5 = sub_217D8951C();
  }

  v6 = [v4 purchaseLookUpEntryForTagID_];

  if (!v6)
  {
    LOBYTE(v8) = 0;
    goto LABEL_7;
  }

  v7 = [v6 purchaseType];
  if (v7 < 3)
  {
    v8 = 0x30200u >> (8 * v7);

LABEL_7:
    *a3 = v8;
    return;
  }

  sub_217D89A9C();
  __break(1u);
}

uint64_t ChannelDataFactory.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ChannelDataFactory.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_217C3682C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_217D89E1C();
  sub_217D895CC();
  v7 = sub_217D89E3C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_217D89D4C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_217C369EC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2890);
  __swift_project_value_buffer(v0, qword_27CBA2890);
  return sub_217D8866C();
}

uint64_t ArticleViewResignEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleViewResignEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewResignEvent(0) + 20);
  sub_217C372B0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewResignEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewResignEvent(0) + 20);
  sub_217C372B0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewResignEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewResignEvent(0) + 24);
  sub_217C372B0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewResignEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewResignEvent(0) + 24);
  sub_217C372B0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewResignEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewResignEvent(0) + 28);
  sub_217C372B0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewResignEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewResignEvent(0) + 28);
  sub_217C372B0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewResignEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewResignEvent(0) + 32);
  sub_217C372B0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewResignEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewResignEvent(0) + 32);
  sub_217C372B0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewResignEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewResignEvent(0) + 36);
  sub_217C372B0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C372B0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t ArticleViewResignEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewResignEvent(0) + 36);
  sub_217C372B0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewResignEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleViewResignEvent(0);
  v5 = v4[5];
  sub_217C372B0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C372B0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217C372B0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217C372B0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217C372B0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v15 = *(*(v14 - 8) + 104);

  return v15(a1 + v13, v2, v14);
}

uint64_t ArticleViewResignEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewResignEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ArticleViewResignEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewResignEvent.Model(0) + 24));
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

uint64_t ArticleViewResignEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ArticleViewResignEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ArticleViewResignEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleViewResignEvent.Model(0) + 32);
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

uint64_t ArticleViewResignEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleViewResignEvent.Model(0) + 36);
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

__n128 ArticleViewResignEvent.Model.init(eventData:viewData:userBundleSubscriptionContextData:orientationData:articleData:channelData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int16 *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 8);
  v14 = *a4;
  v31 = a6[1];
  v32 = *a6;
  v29 = *(a6 + 17);
  v30 = *(a6 + 16);
  v15 = a6[3];
  v16 = a6[4];
  v17 = sub_217D8899C();
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for ArticleViewResignEvent.Model(0);
  v19 = a7 + v18[5];
  *v19 = v11;
  *(v19 + 8) = v12;
  *(v19 + 16) = v13;
  v20 = a7 + v18[6];
  v21 = *(a3 + 16);
  *v20 = *a3;
  *(v20 + 16) = v21;
  *(v20 + 32) = *(a3 + 32);
  *(v20 + 48) = *(a3 + 48);
  *(a7 + v18[7]) = v14;
  v22 = a7 + v18[8];
  v23 = *(a5 + 48);
  *(v22 + 32) = *(a5 + 32);
  *(v22 + 48) = v23;
  v24 = *(a5 + 16);
  *v22 = *a5;
  *(v22 + 16) = v24;
  *(v22 + 127) = *(a5 + 127);
  v25 = *(a5 + 112);
  *(v22 + 96) = *(a5 + 96);
  *(v22 + 112) = v25;
  result = *(a5 + 64);
  v27 = *(a5 + 80);
  *(v22 + 64) = result;
  *(v22 + 80) = v27;
  v28 = a7 + v18[9];
  *v28 = v32;
  *(v28 + 8) = v31;
  *(v28 + 16) = v30;
  *(v28 + 17) = v29;
  *(v28 + 24) = v15;
  *(v28 + 32) = v16;
  return result;
}

uint64_t sub_217C37A7C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x7461746E6569726FLL;
  v4 = 0x44656C6369747261;
  if (v1 != 4)
  {
    v4 = 0x446C656E6E616863;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6174614477656976;
  if (v1 != 1)
  {
    v5 = 0xD000000000000021;
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

uint64_t sub_217C37B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C39090(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C37B84(uint64_t a1)
{
  v2 = sub_217C380B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C37BC0(uint64_t a1)
{
  v2 = sub_217C380B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleViewResignEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C387B8(0, &qword_27CBA28A8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v35[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C380B0();
  sub_217D89E7C();
  LOBYTE(v53[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for ArticleViewResignEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = *v13;
    v15 = v13[1];
    LOWORD(v13) = *(v13 + 8);
    v72 = v14;
    v73 = v15;
    v74 = v13;
    v71 = 1;
    sub_217A5E790();

    sub_217D89CAC();

    v16 = (v3 + v12[6]);
    v17 = v16[1];
    v69[0] = *v16;
    v69[1] = v17;
    v19 = *v16;
    v18 = v16[1];
    v69[2] = v16[2];
    v70 = *(v16 + 48);
    v65 = v19;
    v66 = v18;
    v67 = v16[2];
    v68 = *(v16 + 48);
    v64 = 2;
    sub_217ACC004(v69, v53);
    sub_217A55B98();
    sub_217D89CAC();
    v62[0] = v65;
    v62[1] = v66;
    v62[2] = v67;
    v63 = v68;
    sub_217ACC69C(v62);
    v61 = *(v3 + v12[7]);
    v60 = 3;
    sub_217A4CF88();
    sub_217D89CAC();
    v20 = v3 + v12[8];
    v21 = *(v20 + 96);
    v22 = *(v20 + 64);
    v57 = *(v20 + 80);
    v58 = v21;
    v23 = *(v20 + 96);
    *v59 = *(v20 + 112);
    v24 = *(v20 + 16);
    v25 = *(v20 + 48);
    v54 = *(v20 + 32);
    v55 = v25;
    v26 = *(v20 + 48);
    v56 = *(v20 + 64);
    v27 = *(v20 + 16);
    v53[0] = *v20;
    v53[1] = v27;
    v50 = v57;
    v51 = v23;
    v52[0] = *(v20 + 112);
    v47 = v54;
    v48 = v26;
    v49 = v22;
    *&v59[15] = *(v20 + 127);
    *(v52 + 15) = *(v20 + 127);
    v45 = v53[0];
    v46 = v24;
    v44 = 4;
    sub_217AD1630(v53, v42);
    sub_217ACF52C();
    sub_217D89CAC();
    v42[6] = v51;
    *v43 = v52[0];
    *&v43[15] = *(v52 + 15);
    v42[2] = v47;
    v42[3] = v48;
    v42[4] = v49;
    v42[5] = v50;
    v42[0] = v45;
    v42[1] = v46;
    sub_217AD2864(v42);
    v29 = (v3 + v12[9]);
    v30 = v29[1];
    v31 = *(v29 + 16);
    v32 = *(v29 + 17);
    v33 = v29[3];
    v34 = v29[4];
    v36 = *v29;
    v37 = v30;
    v38 = v31;
    v39 = v32;
    v40 = v33;
    v41 = v34;
    v35[7] = 5;
    sub_217AD084C();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C380B0()
{
  result = qword_27CBA28B0;
  if (!qword_27CBA28B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA28B0);
  }

  return result;
}

uint64_t ArticleViewResignEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_217D8899C();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C387B8(0, &qword_27CBA28B8, MEMORY[0x277D844C8]);
  v40 = v8;
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for ArticleViewResignEvent.Model(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_217C380B0();
  v41 = v11;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v18 = v39;
  LOBYTE(v55) = 0;
  sub_217A602A0(&qword_2811C8408);
  sub_217D89BCC();
  (*(v38 + 32))(v15, v7, v4);
  LOBYTE(v51) = 1;
  sub_217A5E738();
  sub_217D89BCC();
  v19 = *(&v55 + 1);
  v20 = v56;
  v21 = &v15[v12[5]];
  *v21 = v55;
  *(v21 + 1) = v19;
  *(v21 + 8) = v20;
  v50 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  v22 = &v15[v12[6]];
  v23 = v52;
  *v22 = v51;
  *(v22 + 1) = v23;
  *(v22 + 2) = v53;
  v22[48] = v54;
  LOBYTE(v43) = 3;
  sub_217A4CF30();
  sub_217D89BCC();
  *&v15[v12[7]] = v55;
  v49 = 4;
  sub_217ACF4D8();
  sub_217D89BCC();
  v24 = &v15[v12[8]];
  v25 = *v62;
  *(v24 + 6) = v61;
  *(v24 + 7) = v25;
  *(v24 + 127) = *&v62[15];
  v26 = v58;
  *(v24 + 2) = v57;
  *(v24 + 3) = v26;
  v27 = v60;
  *(v24 + 4) = v59;
  *(v24 + 5) = v27;
  v28 = v56;
  *v24 = v55;
  *(v24 + 1) = v28;
  v42 = 5;
  sub_217AD07F8();
  sub_217D89BCC();
  (*(v18 + 8))(v41, v40);
  v29 = v44;
  v30 = v45;
  v31 = v46;
  v32 = v47;
  v33 = v48;
  v34 = &v15[v12[9]];
  *v34 = v43;
  *(v34 + 1) = v29;
  v34[16] = v30;
  v34[17] = v31;
  *(v34 + 3) = v32;
  *(v34 + 4) = v33;
  sub_217C3881C(v15, v37);
  __swift_destroy_boxed_opaque_existential_1(v63);
  return sub_217C38880(v15);
}

void sub_217C387B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C380B0();
    v7 = a3(a1, &type metadata for ArticleViewResignEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C3881C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewResignEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C38880(uint64_t a1)
{
  v2 = type metadata accessor for ArticleViewResignEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C389B4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217C372B0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C372B0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217C372B0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217C372B0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217C372B0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v16 = *(*(v15 - 8) + 104);

  return v16(a2 + v14, v4, v15);
}

void sub_217C38CB4()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217C372B0(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
    if (v1 <= 0x3F)
    {
      sub_217C372B0(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
      if (v2 <= 0x3F)
      {
        sub_217C372B0(319, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
        if (v3 <= 0x3F)
        {
          sub_217C372B0(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
          if (v4 <= 0x3F)
          {
            sub_217C372B0(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
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

uint64_t sub_217C38ED8()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217C38F8C()
{
  result = qword_27CBA28C0;
  if (!qword_27CBA28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA28C0);
  }

  return result;
}

unint64_t sub_217C38FE4()
{
  result = qword_27CBA28C8;
  if (!qword_27CBA28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA28C8);
  }

  return result;
}

unint64_t sub_217C3903C()
{
  result = qword_27CBA28D0;
  if (!qword_27CBA28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA28D0);
  }

  return result;
}

uint64_t sub_217C39090(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461)
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

NewsAnalytics::FeedConfigSource_optional __swiftcall FeedConfigSource.init(rawValue:)(Swift::String rawValue)
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

uint64_t FeedConfigSource.rawValue.getter()
{
  v1 = 0x74694B64756F6C63;
  if (*v0 != 1)
  {
    v1 = 0x656764457377656ELL;
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

uint64_t sub_217C39368(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x74694B64756F6C63;
  if (v2 != 1)
  {
    v3 = 0x656764457377656ELL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x74694B64756F6C63;
  if (*a2 != 1)
  {
    v6 = 0x656764457377656ELL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();
  }

  return v9 & 1;
}

unint64_t sub_217C39470()
{
  result = qword_27CBA28D8;
  if (!qword_27CBA28D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA28D8);
  }

  return result;
}

uint64_t sub_217C394C4()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C39568()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217C395F8()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C396A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x74694B64756F6C63;
  if (v2 != 1)
  {
    v4 = 0x656764457377656ELL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_217C397C4()
{
  result = qword_2811C5268;
  if (!qword_2811C5268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5268);
  }

  return result;
}

NewsAnalytics::SearchOriginationType_optional __swiftcall SearchOriginationType.init(rawValue:)(Swift::String rawValue)
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

uint64_t SearchOriginationType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6553746E65636572;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6142686372616573;
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

unint64_t sub_217C39930()
{
  result = qword_27CBA28E0;
  if (!qword_27CBA28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA28E0);
  }

  return result;
}

uint64_t sub_217C39984()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C39A78()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217C39B58()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C39C54(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEC00000068637261;
  v6 = 0x6553746E65636572;
  v7 = 0xD000000000000016;
  v8 = 0x8000000217DCB430;
  if (v2 != 3)
  {
    v7 = 0xD000000000000019;
    v8 = 0x8000000217DCB450;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x6142686372616573;
    v3 = 0xE900000000000072;
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

unint64_t sub_217C39DC4()
{
  result = qword_27CBA28E8;
  if (!qword_27CBA28E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA28E8);
  }

  return result;
}

uint64_t sub_217C39EE0()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2920);
  __swift_project_value_buffer(v0, qword_27CBA2920);
  return sub_217D8866C();
}

uint64_t LiveActivityUnsubscribeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t LiveActivityUnsubscribeEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivityUnsubscribeEvent(0) + 20);
  sub_217C3A7A4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LiveActivityUnsubscribeEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivityUnsubscribeEvent(0) + 20);
  sub_217C3A7A4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivityUnsubscribeEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivityUnsubscribeEvent(0) + 24);
  sub_217C3A7A4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LiveActivityUnsubscribeEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivityUnsubscribeEvent(0) + 24);
  sub_217C3A7A4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivityUnsubscribeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivityUnsubscribeEvent(0) + 28);
  sub_217C3A7A4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LiveActivityUnsubscribeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivityUnsubscribeEvent(0) + 28);
  sub_217C3A7A4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivityUnsubscribeEvent.liveActivityData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivityUnsubscribeEvent(0) + 32);
  sub_217C3A7A4(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LiveActivityUnsubscribeEvent.liveActivityData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivityUnsubscribeEvent(0) + 32);
  sub_217C3A7A4(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivityUnsubscribeEvent.liveActivityDismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivityUnsubscribeEvent(0) + 36);
  sub_217C3A7A4(0, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C3A7A4(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t LiveActivityUnsubscribeEvent.liveActivityDismissalData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivityUnsubscribeEvent(0) + 36);
  sub_217C3A7A4(0, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivityUnsubscribeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for LiveActivityUnsubscribeEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217C3A7A4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217C3A7A4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217C3A7A4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217C3A7A4(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217C3A7A4(0, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t LiveActivityUnsubscribeEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiveActivityUnsubscribeEvent.Model(0) + 20));
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

uint64_t LiveActivityUnsubscribeEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiveActivityUnsubscribeEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t LiveActivityUnsubscribeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiveActivityUnsubscribeEvent.Model(0) + 28));
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

uint64_t LiveActivityUnsubscribeEvent.Model.liveActivityData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiveActivityUnsubscribeEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t LiveActivityUnsubscribeEvent.Model.liveActivityDismissalData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LiveActivityUnsubscribeEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

__n128 LiveActivityUnsubscribeEvent.Model.init(eventData:groupData:feedData:userBundleSubscriptionContextData:liveActivityData:liveActivityDismissalData:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v27 = *a3;
  v11 = *(a3 + 2);
  v12 = *a5;
  v13 = a5[1];
  v14 = *a6;
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a7, a1, v15);
  v16 = type metadata accessor for LiveActivityUnsubscribeEvent.Model(0);
  v17 = (a7 + v16[5]);
  v18 = a2[3];
  v17[2] = a2[2];
  v17[3] = v18;
  v19 = a2[1];
  *v17 = *a2;
  v17[1] = v19;
  v20 = a2[8];
  v17[7] = a2[7];
  v17[8] = v20;
  v21 = a2[6];
  v17[5] = a2[5];
  v17[6] = v21;
  v17[4] = a2[4];
  v22 = a7 + v16[6];
  *v22 = v27;
  *(v22 + 16) = v11;
  v23 = a7 + v16[7];
  v24 = *(a4 + 16);
  *v23 = *a4;
  *(v23 + 16) = v24;
  result = *(a4 + 32);
  *(v23 + 32) = result;
  *(v23 + 48) = *(a4 + 48);
  v26 = (a7 + v16[8]);
  *v26 = v12;
  v26[1] = v13;
  *(a7 + v16[9]) = v14;
  return result;
}

unint64_t sub_217C3AF2C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000021;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74614470756F7267;
  if (v1 != 1)
  {
    v5 = 0x6174614464656566;
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

uint64_t sub_217C3AFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C3C570(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C3B020(uint64_t a1)
{
  v2 = sub_217C3B50C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C3B05C(uint64_t a1)
{
  v2 = sub_217C3B50C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivityUnsubscribeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C3BC4C(0, &qword_27CBA2938, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v33 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C3B50C();
  sub_217D89E7C();
  v70 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for LiveActivityUnsubscribeEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[6];
    v15 = v13[4];
    v66 = v13[5];
    v67 = v14;
    v16 = v13[6];
    v17 = v13[8];
    v68 = v13[7];
    v69 = v17;
    v18 = v13[2];
    v19 = *v13;
    v62 = v13[1];
    v63 = v18;
    v20 = v13[2];
    v21 = v13[4];
    v64 = v13[3];
    v65 = v21;
    v22 = *v13;
    v58 = v16;
    v59 = v68;
    v60 = v13[8];
    v61 = v22;
    v54 = v20;
    v55 = v64;
    v56 = v15;
    v57 = v66;
    v52 = v19;
    v53 = v62;
    v51 = 1;
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
    v23 = (v3 + v12[6]);
    v24 = v23[1];
    v25 = v23[2];
    v47 = *v23;
    v48 = v24;
    v49 = v25;
    v46 = 2;
    sub_217AD1A68(v47, v24, v25);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v47, v48, v49);
    v26 = (v3 + v12[7]);
    v27 = v26[1];
    v44[0] = *v26;
    v44[1] = v27;
    v29 = *v26;
    v28 = v26[1];
    v44[2] = v26[2];
    v45 = *(v26 + 48);
    v40 = v29;
    v41 = v28;
    v42 = v26[2];
    v43 = *(v26 + 48);
    v39 = 3;
    sub_217ACC004(v44, v37);
    sub_217A55B98();
    sub_217D89CAC();
    v37[0] = v40;
    v37[1] = v41;
    v37[2] = v42;
    v38 = v43;
    sub_217ACC69C(v37);
    v30 = (v3 + v12[8]);
    v31 = v30[1];
    v35 = *v30;
    v36 = v31;
    v34 = 4;
    sub_217B0F464();

    sub_217D89CAC();

    LOBYTE(v35) = *(v3 + v12[9]);
    v34 = 5;
    sub_217B0FD98();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C3B50C()
{
  result = qword_27CBA2940;
  if (!qword_27CBA2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2940);
  }

  return result;
}

uint64_t LiveActivityUnsubscribeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_217D8899C();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C3BC4C(0, &qword_27CBA2948, MEMORY[0x277D844C8]);
  v56 = v7;
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = type metadata accessor for LiveActivityUnsubscribeEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C3B50C();
  v37 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v35;
  LOBYTE(v47) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v36;
  sub_217D89BCC();
  (*(v34 + 32))(v14, v17, v4);
  v46 = 1;
  sub_217A5D308();
  sub_217D89B5C();
  v18 = &v14[v11[5]];
  v19 = v52;
  v20 = v54;
  v21 = v55;
  *(v18 + 6) = v53;
  *(v18 + 7) = v20;
  *(v18 + 8) = v21;
  v22 = v50;
  v23 = v51;
  *(v18 + 2) = v49;
  *(v18 + 3) = v22;
  *(v18 + 4) = v23;
  *(v18 + 5) = v19;
  v24 = v48;
  *v18 = v47;
  *(v18 + 1) = v24;
  LOBYTE(v39) = 2;
  sub_217A5B978();
  v36 = 0;
  sub_217D89B5C();
  v25 = v43;
  v26 = &v14[v11[6]];
  *v26 = v42;
  *(v26 + 2) = v25;
  v41 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  v27 = &v14[v11[7]];
  v28 = v43;
  *v27 = v42;
  *(v27 + 1) = v28;
  *(v27 + 2) = v44;
  v27[48] = v45;
  v38 = 4;
  sub_217B0F410();
  sub_217D89BCC();
  v29 = v40;
  v30 = &v14[v11[8]];
  *v30 = v39;
  *(v30 + 1) = v29;
  v38 = 5;
  sub_217B0FD44();
  sub_217D89BCC();
  (*(v16 + 8))(v37, v56);
  v14[v11[9]] = v39;
  sub_217C3BCB0(v14, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C3BD14(v14);
}

void sub_217C3BC4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C3B50C();
    v7 = a3(a1, &type metadata for LiveActivityUnsubscribeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C3BCB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivityUnsubscribeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C3BD14(uint64_t a1)
{
  v2 = type metadata accessor for LiveActivityUnsubscribeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C3BE48@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217C3A7A4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217C3A7A4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  sub_217C3A7A4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217C3A7A4(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217C3A7A4(0, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

void sub_217C3C15C()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217C3A7A4(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
    if (v1 <= 0x3F)
    {
      sub_217C3A7A4(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
      if (v2 <= 0x3F)
      {
        sub_217C3A7A4(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
        if (v3 <= 0x3F)
        {
          sub_217C3A7A4(319, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464);
          if (v4 <= 0x3F)
          {
            sub_217C3A7A4(319, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98);
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

void sub_217C3C380()
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
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217C3C46C()
{
  result = qword_27CBA2970;
  if (!qword_27CBA2970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2970);
  }

  return result;
}

unint64_t sub_217C3C4C4()
{
  result = qword_27CBA2978;
  if (!qword_27CBA2978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2978);
  }

  return result;
}

unint64_t sub_217C3C51C()
{
  result = qword_27CBA2980;
  if (!qword_27CBA2980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2980);
  }

  return result;
}

uint64_t sub_217C3C570(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD8E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000217DCD920 == a2)
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

NewsAnalytics::CellularRadioAccessTechnology_optional __swiftcall CellularRadioAccessTechnology.init(rawValue:)(Swift::String rawValue)
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

uint64_t CellularRadioAccessTechnology.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 1851881335;
  v4 = 0x47356E617777;
  if (v1 != 3)
  {
    v4 = 0x6863616552746F6ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1768319351;
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

unint64_t sub_217C3C878()
{
  result = qword_27CBA2988;
  if (!qword_27CBA2988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2988);
  }

  return result;
}

uint64_t sub_217C3C8CC()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C3C9A4()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217C3CA68()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C3CB48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE400000000000000;
  v6 = 1851881335;
  v7 = 0xE600000000000000;
  v8 = 0x47356E617777;
  if (v2 != 3)
  {
    v8 = 0x6863616552746F6ELL;
    v7 = 0xEC000000656C6261;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1768319351;
    v3 = 0xE400000000000000;
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

unint64_t sub_217C3CC9C()
{
  result = qword_2811BE500;
  if (!qword_2811BE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE500);
  }

  return result;
}

uint64_t sub_217C3CDB8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2990);
  __swift_project_value_buffer(v0, qword_27CBA2990);
  return sub_217D8866C();
}

uint64_t SearchExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchExposureEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchExposureEvent(0) + 24);
  sub_217A62D60(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchExposureEvent(0) + 24);
  sub_217A62D60(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchExposureEvent(0) + 28);
  sub_217A62D60(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchExposureEvent(0) + 28);
  sub_217A62D60(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SearchExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A62D60(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A62D60(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t sub_217C3D554@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t SearchExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchExposureEvent.Model(0) + 24));
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

uint64_t SearchExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchExposureEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 SearchExposureEvent.Model.init(eventData:timedData:userBundleSubscriptionContextData:viewData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = a4[1];
  v11 = *(a4 + 8);
  v12 = sub_217D8899C();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  v13 = type metadata accessor for SearchExposureEvent.Model(0);
  v14 = v13[5];
  v15 = sub_217D889CC();
  (*(*(v15 - 8) + 32))(a5 + v14, a2, v15);
  v16 = a5 + v13[6];
  v17 = *(a3 + 16);
  *v16 = *a3;
  *(v16 + 16) = v17;
  result = *(a3 + 32);
  *(v16 + 32) = result;
  *(v16 + 48) = *(a3 + 48);
  v19 = a5 + v13[7];
  *v19 = v9;
  *(v19 + 8) = v10;
  *(v19 + 16) = v11;
  return result;
}

unint64_t sub_217C3D7BC()
{
  v1 = 0x746144746E657665;
  v2 = 0xD000000000000021;
  if (*v0 != 2)
  {
    v2 = 0x6174614477656976;
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

uint64_t sub_217C3D83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C3E8D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C3D864(uint64_t a1)
{
  v2 = sub_217C3DC40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C3D8A0(uint64_t a1)
{
  v2 = sub_217C3DC40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C3E204(0, &qword_27CBA29A8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v22[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C3DC40();
  sub_217D89E7C();
  LOBYTE(v33[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for SearchExposureEvent.Model(0);
    v13 = v12[5];
    v35 = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = (v3 + v12[6]);
    v15 = v14[1];
    v33[0] = *v14;
    v33[1] = v15;
    v17 = *v14;
    v16 = v14[1];
    v33[2] = v14[2];
    v34 = *(v14 + 48);
    v29 = v17;
    v30 = v16;
    v31 = v14[2];
    v32 = *(v14 + 48);
    v28 = 2;
    sub_217ACC004(v33, v26);
    sub_217A55B98();
    sub_217D89CAC();
    v26[0] = v29;
    v26[1] = v30;
    v26[2] = v31;
    v27 = v32;
    sub_217ACC69C(v26);
    v18 = (v3 + v12[7]);
    v19 = *v18;
    v20 = v18[1];
    LOWORD(v18) = *(v18 + 8);
    v23 = v19;
    v24 = v20;
    v25 = v18;
    v22[7] = 3;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C3DC40()
{
  result = qword_27CBA29B0;
  if (!qword_27CBA29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA29B0);
  }

  return result;
}

uint64_t SearchExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v36 = sub_217D889CC();
  v34 = *(v36 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C3E204(0, &qword_27CBA29B8, MEMORY[0x277D844C8]);
  v40 = v9;
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = type metadata accessor for SearchExposureEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C3DC40();
  v39 = v12;
  v18 = v41;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v5;
  v41 = v13;
  v21 = v35;
  v20 = v36;
  LOBYTE(v45) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  sub_217D89BCC();
  v22 = *(v21 + 32);
  v23 = v16;
  v24 = v38;
  v38 = v6;
  v22(v16, v24);
  LOBYTE(v45) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v25 = v19;
  sub_217D89BCC();
  v26 = v41;
  (*(v34 + 32))(v23 + *(v41 + 20), v25, v20);
  v50 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  v27 = v23 + *(v26 + 24);
  v28 = v46;
  *v27 = v45;
  *(v27 + 16) = v28;
  *(v27 + 32) = v47;
  *(v27 + 48) = v48;
  v49 = 3;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v37 + 8))(v39, v40);
  v29 = v43;
  v30 = v44;
  v31 = v23 + *(v26 + 28);
  *v31 = v42;
  *(v31 + 8) = v29;
  *(v31 + 16) = v30;
  sub_217C3E268(v23, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C3E2CC(v23);
}

void sub_217C3E204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C3DC40();
    v7 = a3(a1, &type metadata for SearchExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C3E268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C3E2CC(uint64_t a1)
{
  v2 = type metadata accessor for SearchExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C3E400@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A62D60(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A62D60(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217C3E5D8()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217A62D60(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
      if (v2 <= 0x3F)
      {
        sub_217A62D60(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217C3E724()
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

unint64_t sub_217C3E7D4()
{
  result = qword_27CBA29D0;
  if (!qword_27CBA29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA29D0);
  }

  return result;
}

unint64_t sub_217C3E82C()
{
  result = qword_27CBA29D8;
  if (!qword_27CBA29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA29D8);
  }

  return result;
}

unint64_t sub_217C3E884()
{
  result = qword_27CBA29E0;
  if (!qword_27CBA29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA29E0);
  }

  return result;
}

uint64_t sub_217C3E8D8(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
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

uint64_t AdData.opportunityIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AdData.opportunityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AdData.placementIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AdData.placementIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall AdData.init(opportunityIdentifier:placementIdentifier:isFilled:)(NewsAnalytics::AdData *__return_ptr retstr, Swift::String opportunityIdentifier, Swift::String placementIdentifier, Swift::Bool isFilled)
{
  retstr->opportunityIdentifier = opportunityIdentifier;
  retstr->placementIdentifier = placementIdentifier;
  retstr->isFilled = isFilled;
}

unint64_t sub_217C3EBAC()
{
  v1 = 0x64656C6C69467369;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_217C3EC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C3F380(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C3EC3C(uint64_t a1)
{
  v2 = sub_217C3EE60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C3EC78(uint64_t a1)
{
  v2 = sub_217C3EE60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdData.encode(to:)(void *a1)
{
  sub_217C3F130(0, &qword_27CBA29E8, MEMORY[0x277D84538]);
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
  v16 = *(v1 + 32);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C3EE60();
  sub_217D89E7C();
  v19 = 0;
  v13 = v15[3];
  sub_217D89C6C();
  if (!v13)
  {
    v18 = 1;
    sub_217D89C6C();
    v17 = 2;
    sub_217D89C7C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C3EE60()
{
  result = qword_27CBA29F0;
  if (!qword_27CBA29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA29F0);
  }

  return result;
}

uint64_t AdData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217C3F130(0, &qword_27CBA29F8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C3EE60();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v24 = a2;
  v25 = v12;
  v27 = 1;
  v15 = sub_217D89B8C();
  v23 = v16;
  v26 = 2;
  v17 = sub_217D89B9C();
  (*(v7 + 8))(v10, v6);
  v18 = v17 & 1;
  v19 = v24;
  *v24 = v25;
  v19[1] = v14;
  v20 = v23;
  v19[2] = v15;
  v19[3] = v20;
  *(v19 + 32) = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C3F130(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C3EE60();
    v7 = a3(a1, &type metadata for AdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C3F1CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_217C3F214(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217C3F27C()
{
  result = qword_27CBA2A00;
  if (!qword_27CBA2A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2A00);
  }

  return result;
}

unint64_t sub_217C3F2D4()
{
  result = qword_27CBA2A08;
  if (!qword_27CBA2A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2A08);
  }

  return result;
}

unint64_t sub_217C3F32C()
{
  result = qword_27CBA2A10;
  if (!qword_27CBA2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2A10);
  }

  return result;
}

uint64_t sub_217C3F380(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x8000000217DD1190 == a2;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD11B0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C6C69467369 && a2 == 0xE800000000000000)
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

uint64_t sub_217C3F524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6461427070417369 && a2 == 0xEB00000000646567;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD11D0 == a2)
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

uint64_t sub_217C3F60C(uint64_t a1)
{
  v2 = sub_217A69B84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C3F648(uint64_t a1)
{
  v2 = sub_217A69B84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppBadgeData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217A69970(0, &qword_27CBA2A18, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A69B84();
  sub_217D89E5C();
  if (!v2)
  {
    v17 = 0;
    v18 = sub_217D89B9C() & 1;
    v15 = 1;
    sub_217BB03D8();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    v13 = v16;
    *a2 = v18;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t getEnumTagSinglePayload for AppBadgeData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for AppBadgeData(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
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
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217C3F9E8()
{
  result = qword_27CBA2A20;
  if (!qword_27CBA2A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2A20);
  }

  return result;
}

uint64_t sub_217C3FB04()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2A58);
  __swift_project_value_buffer(v0, qword_27CBA2A58);
  return sub_217D8866C();
}

uint64_t MediaEngageCompleteEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MediaEngageCompleteEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 20);
  sub_217C411F0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 20);
  sub_217C411F0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 24);
  sub_217C411F0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 24);
  sub_217C411F0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 28);
  sub_217C411F0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 28);
  sub_217C411F0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 32);
  sub_217C411F0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 32);
  sub_217C411F0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 36);
  sub_217C411F0(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 36);
  sub_217C411F0(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 40);
  sub_217C411F0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 40);
  sub_217C411F0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.anfComponentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 44);
  sub_217C411F0(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.anfComponentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 44);
  sub_217C411F0(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.mediaEngagementCompletedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 48);
  sub_217C411F0(0, &qword_2811C8530, sub_217C408D8, sub_217C4092C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217C408D8()
{
  result = qword_2811BEA48;
  if (!qword_2811BEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEA48);
  }

  return result;
}

unint64_t sub_217C4092C()
{
  result = qword_2811BEA50[0];
  if (!qword_2811BEA50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BEA50);
  }

  return result;
}

uint64_t MediaEngageCompleteEvent.mediaEngagementCompletedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 48);
  sub_217C411F0(0, &qword_2811C8530, sub_217C408D8, sub_217C4092C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 52);
  sub_217C411F0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 52);
  sub_217C411F0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 56);
  sub_217C411F0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 56);
  sub_217C411F0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 60);
  sub_217C411F0(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 60);
  sub_217C411F0(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 64);
  sub_217C411F0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 64);
  sub_217C411F0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.articleExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 68);
  sub_217C411F0(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C411F0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t MediaEngageCompleteEvent.articleExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 68);
  sub_217C411F0(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for MediaEngageCompleteEvent(0);
  v5 = v4[5];
  sub_217C411F0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C411F0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217C411F0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217C411F0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217C411F0(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217C411F0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217C411F0(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  (*(*(v19 - 8) + 104))(a1 + v18, v10, v19);
  v20 = v4[12];
  sub_217C411F0(0, &qword_2811C8530, sub_217C408D8, sub_217C4092C);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217C411F0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217C411F0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v25 - 8) + 104))(a1 + v24, v10, v25);
  v26 = v4[15];
  sub_217C411F0(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v27 - 8) + 104))(a1 + v26, v10, v27);
  v28 = v4[16];
  sub_217C411F0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  (*(*(v29 - 8) + 104))(a1 + v28, v10, v29);
  v30 = v4[17];
  sub_217C411F0(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v32 = *(*(v31 - 8) + 104);

  return v32(a1 + v30, v10, v31);
}

uint64_t MediaEngageCompleteEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 20);
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

uint64_t MediaEngageCompleteEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 24);
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

uint64_t MediaEngageCompleteEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 28));
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

uint64_t MediaEngageCompleteEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t MediaEngageCompleteEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 36));
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

uint64_t MediaEngageCompleteEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t MediaEngageCompleteEvent.Model.anfComponentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 44));
  v5 = v3[3];
  v10 = v3[2];
  v4 = v10;
  v11 = v5;
  v6 = v3[1];
  v9[0] = *v3;
  v9[1] = v6;
  *a1 = v9[0];
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v5;
  return sub_217AE38AC(v9, &v8, &qword_27CB9ECA0);
}

uint64_t MediaEngageCompleteEvent.Model.mediaEngagementCompletedData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t MediaEngageCompleteEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 52);
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

uint64_t MediaEngageCompleteEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 56));
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

uint64_t MediaEngageCompleteEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 60));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t MediaEngageCompleteEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t MediaEngageCompleteEvent.Model.articleExposureContextData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 68));
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

__n128 MediaEngageCompleteEvent.Model.init(eventData:articleData:channelData:groupData:feedData:mediaData:viewData:anfComponentData:mediaEngagementCompletedData:userBundleSubscriptionContextData:issueData:issueViewData:orientationData:articleExposureContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X3>, __int128 *a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, __int128 *a12, uint64_t *a13, __int16 *a14, uint64_t a15)
{
  v20 = a3[1];
  v51 = *a3;
  v21 = *(a3 + 16);
  v50 = *(a3 + 17);
  v49 = a3[3];
  v48 = a3[4];
  v53 = *a5;
  v52 = *(a5 + 2);
  v58 = *a6;
  v57 = *(a6 + 1);
  v56 = *(a6 + 2);
  v55 = *(a6 + 6);
  v54 = a6[28];
  v61 = *a7;
  v60 = a7[1];
  v59 = *(a7 + 8);
  v65 = *a10;
  v64 = *(a10 + 8);
  v68 = a13[1];
  v69 = *a13;
  v70 = *a14;
  v71 = *(a15 + 32);
  v22 = sub_217D8899C();
  v67 = *a15;
  v66 = *(a15 + 16);
  v62 = a12[1];
  v63 = *a12;
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  v24 = a9 + v23[5];
  v25 = *(a2 + 48);
  *(v24 + 32) = *(a2 + 32);
  *(v24 + 48) = v25;
  v26 = *(a2 + 16);
  *v24 = *a2;
  *(v24 + 16) = v26;
  *(v24 + 127) = *(a2 + 127);
  v27 = *(a2 + 112);
  *(v24 + 96) = *(a2 + 96);
  *(v24 + 112) = v27;
  v28 = *(a2 + 80);
  *(v24 + 64) = *(a2 + 64);
  *(v24 + 80) = v28;
  v29 = a9 + v23[6];
  *v29 = v51;
  *(v29 + 8) = v20;
  *(v29 + 16) = v21;
  *(v29 + 17) = v50;
  *(v29 + 24) = v49;
  *(v29 + 32) = v48;
  v30 = (a9 + v23[7]);
  v31 = a4[3];
  v30[2] = a4[2];
  v30[3] = v31;
  v32 = a4[1];
  *v30 = *a4;
  v30[1] = v32;
  v33 = a4[8];
  v30[7] = a4[7];
  v30[8] = v33;
  v34 = a4[6];
  v30[5] = a4[5];
  v30[6] = v34;
  v30[4] = a4[4];
  v35 = a9 + v23[8];
  *v35 = v53;
  *(v35 + 16) = v52;
  v36 = a9 + v23[9];
  *v36 = v58;
  *(v36 + 8) = v57;
  *(v36 + 16) = v56;
  *(v36 + 24) = v55;
  *(v36 + 28) = v54;
  v37 = a9 + v23[10];
  *v37 = v61;
  *(v37 + 8) = v60;
  *(v37 + 16) = v59;
  v38 = (a9 + v23[11]);
  v39 = a8[1];
  *v38 = *a8;
  v38[1] = v39;
  v40 = a8[3];
  v38[2] = a8[2];
  v38[3] = v40;
  v41 = a9 + v23[12];
  *v41 = v65;
  *(v41 + 8) = v64;
  v42 = a9 + v23[13];
  *(v42 + 48) = *(a11 + 48);
  v43 = *(a11 + 32);
  *(v42 + 16) = *(a11 + 16);
  *(v42 + 32) = v43;
  *v42 = *a11;
  v44 = (a9 + v23[14]);
  *v44 = v63;
  v44[1] = v62;
  v45 = (a9 + v23[15]);
  *v45 = v69;
  v45[1] = v68;
  *(a9 + v23[16]) = v70;
  v46 = a9 + v23[17];
  result = v67;
  *v46 = v67;
  *(v46 + 16) = v66;
  *(v46 + 32) = v71;
  return result;
}

uint64_t sub_217C42204(char a1)
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
      goto LABEL_14;
    case 5:
      result = 0x746144616964656DLL;
      break;
    case 6:
      v3 = 2003134838;
LABEL_14:
      result = v3 | 0x6174614400000000;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD00000000000001CLL;
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

uint64_t sub_217C423AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C44A8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C423D4(uint64_t a1)
{
  v2 = sub_217C42DD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C42410(uint64_t a1)
{
  v2 = sub_217C42DD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaEngageCompleteEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C43A34(0, &qword_27CBA2A70, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v72 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C42DD0();
  sub_217D89E7C();
  v148 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
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
    v130[3] = v136;
    v130[5] = v138;
    v130[4] = v137;
    v130[1] = v134;
    v130[2] = v135;
    v130[0] = v133;
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
    v47 = v45[1];
    LOWORD(v45) = *(v45 + 8);
    v101 = v46;
    v102 = v47;
    v103 = v45;
    v100 = 6;
    sub_217A5E790();

    sub_217D89CAC();

    v48 = (v3 + v12[11]);
    v49 = v48[1];
    v96 = *v48;
    v97 = v49;
    v50 = v48[3];
    v52 = *v48;
    v51 = v48[1];
    v98 = v48[2];
    v99 = v50;
    v92 = v52;
    v93 = v51;
    v53 = v48[3];
    v94 = v48[2];
    v95 = v53;
    v91 = 7;
    sub_217AE38AC(&v96, v90, &qword_27CB9ECA0);
    sub_217AE2368();
    sub_217D89C3C();
    v90[0] = v92;
    v90[1] = v93;
    v90[2] = v94;
    v90[3] = v95;
    sub_217AE4A44(v90, &qword_27CB9ECA0);
    v54 = (v3 + v12[12]);
    v55 = *v54;
    LOBYTE(v54) = *(v54 + 8);
    v88 = v55;
    v89 = v54;
    v87 = 8;
    sub_217C4092C();
    sub_217D89CAC();
    v56 = (v3 + v12[13]);
    v57 = v56[1];
    v85[0] = *v56;
    v85[1] = v57;
    v59 = *v56;
    v58 = v56[1];
    v85[2] = v56[2];
    v86 = *(v56 + 48);
    v81 = v59;
    v82 = v58;
    v83 = v56[2];
    v84 = *(v56 + 48);
    v80 = 9;
    sub_217ACC004(v85, v78);
    sub_217A55B98();
    sub_217D89CAC();
    v78[0] = v81;
    v78[1] = v82;
    v78[2] = v83;
    v79 = v84;
    sub_217ACC69C(v78);
    v60 = (v3 + v12[14]);
    v61 = v60[1];
    v62 = v60[2];
    v63 = v60[3];
    v72 = *v60;
    v73 = v61;
    v74 = v62;
    v75 = v63;
    v77 = 10;
    sub_217AE39D0(v72, v61);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v72, v73);
    v64 = (v3 + v12[15]);
    v65 = v64[1];
    v72 = *v64;
    v73 = v65;
    v77 = 11;
    sub_217AD01EC();

    sub_217D89C3C();

    LOWORD(v72) = *(v3 + v12[16]);
    v77 = 12;
    sub_217A4CF88();
    sub_217D89C3C();
    v66 = (v3 + v12[17]);
    v67 = v66[1];
    v68 = v66[2];
    v69 = v66[3];
    v70 = v66[4];
    v72 = *v66;
    v73 = v67;
    v74 = v68;
    v75 = v69;
    v76 = v70;
    v77 = 13;
    sub_217AE3AE8(v72, v67);
    sub_217AE2CFC();
    sub_217D89C3C();
    sub_217AE4AE4(v72, v73);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C42DD0()
{
  result = qword_27CBA2A78;
  if (!qword_27CBA2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2A78);
  }

  return result;
}

uint64_t MediaEngageCompleteEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_217D8899C();
  v64 = *(v3 - 8);
  v4 = *(v64 + 64);
  MEMORY[0x28223BE20](v3);
  v66 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C43A34(0, &qword_27CBA2A80, MEMORY[0x277D844C8]);
  v68 = v6;
  v65 = *(v6 - 8);
  v7 = *(v65 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v60 - v8;
  v10 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C42DD0();
  v67 = v9;
  v15 = v102;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v65;
  v61 = v10;
  v62 = a1;
  v102 = v13;
  LOBYTE(v93) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v66;
  sub_217D89BCC();
  v18 = v102;
  (*(v64 + 32))(v102, v17, v3);
  v84 = 1;
  sub_217ACF4D8();
  sub_217D89BCC();
  v60[1] = v3;
  v66 = 0;
  v19 = v61;
  v20 = &v18[v61[5]];
  v21 = *v92;
  *(v20 + 6) = v91;
  *(v20 + 7) = v21;
  *(v20 + 127) = *&v92[15];
  v22 = v88;
  *(v20 + 2) = v87;
  *(v20 + 3) = v22;
  v23 = v90;
  *(v20 + 4) = v89;
  *(v20 + 5) = v23;
  v24 = v86;
  *v20 = v85;
  *(v20 + 1) = v24;
  LOBYTE(v79) = 2;
  sub_217AD07F8();
  sub_217D89BCC();
  v25 = *(&v93 + 1);
  v26 = v94;
  v27 = BYTE1(v94);
  v28 = *(&v94 + 1);
  v29 = v95;
  v30 = &v18[v19[6]];
  *v30 = v93;
  *(v30 + 1) = v25;
  v30[16] = v26;
  v30[17] = v27;
  *(v30 + 3) = v28;
  *(v30 + 4) = v29;
  v83 = 3;
  sub_217A5D308();
  sub_217D89B5C();
  v31 = &v18[v19[7]];
  v32 = v100;
  *(v31 + 6) = v99;
  *(v31 + 7) = v32;
  *(v31 + 8) = v101;
  v33 = v96;
  *(v31 + 2) = v95;
  *(v31 + 3) = v33;
  v34 = v98;
  *(v31 + 4) = v97;
  *(v31 + 5) = v34;
  v35 = v94;
  *v31 = v93;
  *(v31 + 1) = v35;
  LOBYTE(v74) = 4;
  sub_217A5B978();
  sub_217D89B5C();
  v36 = v80;
  v37 = &v18[v19[8]];
  *v37 = v79;
  *(v37 + 2) = v36;
  LOBYTE(v74) = 5;
  sub_217AE1CB4();
  sub_217D89BCC();
  v38 = *(&v79 + 1);
  v39 = v80;
  v40 = DWORD2(v80);
  v41 = BYTE12(v80);
  v42 = &v18[v19[9]];
  *v42 = v79;
  *(v42 + 1) = v38;
  *(v42 + 2) = v39;
  *(v42 + 6) = v40;
  v42[28] = v41;
  LOBYTE(v74) = 6;
  sub_217A5E738();
  sub_217D89BCC();
  v43 = *(&v79 + 1);
  v44 = v80;
  v45 = &v18[v19[10]];
  *v45 = v79;
  *(v45 + 1) = v43;
  *(v45 + 8) = v44;
  v78 = 7;
  sub_217AE2314();
  sub_217D89B5C();
  v46 = &v18[v19[11]];
  v47 = v80;
  *v46 = v79;
  *(v46 + 1) = v47;
  v48 = v82;
  *(v46 + 2) = v81;
  *(v46 + 3) = v48;
  LOBYTE(v69) = 8;
  sub_217C408D8();
  sub_217D89BCC();
  v49 = BYTE8(v74);
  v50 = &v102[v19[12]];
  *v50 = v74;
  v50[8] = v49;
  v73 = 9;
  sub_217A54D08();
  sub_217D89BCC();
  v51 = &v102[v61[13]];
  v52 = v75;
  *v51 = v74;
  *(v51 + 1) = v52;
  *(v51 + 2) = v76;
  v51[48] = v77;
  v72 = 10;
  sub_217ACFF40();
  sub_217D89B5C();
  v53 = &v102[v61[14]];
  v54 = v70;
  *v53 = v69;
  *(v53 + 1) = v54;
  v72 = 11;
  sub_217AD0198();
  sub_217D89B5C();
  *&v102[v61[15]] = v69;
  v72 = 12;
  sub_217A4CF30();
  sub_217D89B5C();
  *&v102[v61[16]] = v69;
  v72 = 13;
  sub_217AE2CA8();
  sub_217D89B5C();
  (*(v16 + 8))(v67, v68);
  v55 = v71;
  v56 = v102;
  v57 = &v102[v61[17]];
  v58 = v70;
  *v57 = v69;
  *(v57 + 1) = v58;
  *(v57 + 4) = v55;
  sub_217C43A98(v56, v63);
  __swift_destroy_boxed_opaque_existential_1(v62);
  return sub_217C43AFC(v56);
}

void sub_217C43A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C42DD0();
    v7 = a3(a1, &type metadata for MediaEngageCompleteEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C43A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C43AFC(uint64_t a1)
{
  v2 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C43C30@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217C411F0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C411F0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217C411F0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217C411F0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217C411F0(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217C411F0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217C411F0(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  (*(*(v20 - 8) + 104))(a2 + v19, v11, v20);
  v21 = a1[12];
  sub_217C411F0(0, &qword_2811C8530, sub_217C408D8, sub_217C4092C);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217C411F0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217C411F0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v26 - 8) + 104))(a2 + v25, v11, v26);
  v27 = a1[15];
  sub_217C411F0(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v28 - 8) + 104))(a2 + v27, v11, v28);
  v29 = a1[16];
  sub_217C411F0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  (*(*(v30 - 8) + 104))(a2 + v29, v11, v30);
  v31 = a1[17];
  sub_217C411F0(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v33 = *(*(v32 - 8) + 104);

  return v33(a2 + v31, v11, v32);
}

void sub_217C44304()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217C411F0(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
    if (v1 <= 0x3F)
    {
      sub_217C411F0(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
      if (v2 <= 0x3F)
      {
        sub_217C411F0(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
        if (v3 <= 0x3F)
        {
          sub_217C411F0(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
          if (v4 <= 0x3F)
          {
            sub_217C411F0(319, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08);
            if (v5 <= 0x3F)
            {
              sub_217C411F0(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
              if (v6 <= 0x3F)
              {
                sub_217C411F0(319, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
                if (v7 <= 0x3F)
                {
                  sub_217C411F0(319, &qword_2811C8530, sub_217C408D8, sub_217C4092C);
                  if (v8 <= 0x3F)
                  {
                    sub_217C411F0(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                    if (v9 <= 0x3F)
                    {
                      sub_217C411F0(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
                      if (v10 <= 0x3F)
                      {
                        sub_217C411F0(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
                        if (v11 <= 0x3F)
                        {
                          sub_217C411F0(319, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
                          if (v12 <= 0x3F)
                          {
                            sub_217C411F0(319, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
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

void sub_217C447A8()
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

unint64_t sub_217C44988()
{
  result = qword_27CBA2A88;
  if (!qword_27CBA2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2A88);
  }

  return result;
}

unint64_t sub_217C449E0()
{
  result = qword_27CBA2A90;
  if (!qword_27CBA2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2A90);
  }

  return result;
}

unint64_t sub_217C44A38()
{
  result = qword_27CBA2A98;
  if (!qword_27CBA2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2A98);
  }

  return result;
}

uint64_t sub_217C44A8C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD5D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217DD11F0 == a2 || (sub_217D89D4C() & 1) != 0)
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

uint64_t sub_217C44FD0()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C11E8);
  __swift_project_value_buffer(v0, qword_2811C11E8);
  return sub_217D8866C();
}

uint64_t HeadlineExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HeadlineExposureEvent.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 20);
  sub_217C4752C(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.adData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 20);
  sub_217C4752C(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 24);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 28);
  sub_217C4752C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 28);
  sub_217C4752C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 32);
  sub_217C4752C(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 32);
  sub_217C4752C(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 36);
  sub_217C4752C(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 36);
  sub_217C4752C(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 40);
  sub_217C4752C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 40);
  sub_217C4752C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 44);
  sub_217C4752C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 44);
  sub_217C4752C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 48);
  sub_217C4752C(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.articleScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 48);
  sub_217C4752C(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 52);
  sub_217C4752C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 52);
  sub_217C4752C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 56);
  sub_217C4752C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 56);
  sub_217C4752C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 60);
  sub_217C4752C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 60);
  sub_217C4752C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 64);
  sub_217C4752C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 64);
  sub_217C4752C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.articleExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 68);
  sub_217C4752C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.articleExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 68);
  sub_217C4752C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.articleViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 72);
  sub_217C4752C(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.articleViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 72);
  sub_217C4752C(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.searchResponseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 76);
  sub_217C4752C(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.searchResponseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 76);
  sub_217C4752C(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.shareOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 80);
  sub_217C4752C(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217C46A64()
{
  result = qword_2811C1C60;
  if (!qword_2811C1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1C60);
  }

  return result;
}

unint64_t sub_217C46AB8()
{
  result = qword_2811C1C68;
  if (!qword_2811C1C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1C68);
  }

  return result;
}

uint64_t HeadlineExposureEvent.shareOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 80);
  sub_217C4752C(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.auxiliaryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 84);
  sub_217C4752C(0, &qword_2811C8778, sub_217B75EA8, sub_217B75F00);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.auxiliaryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 84);
  sub_217C4752C(0, &qword_2811C8778, sub_217B75EA8, sub_217B75F00);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.recirculationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 88);
  sub_217C4752C(0, &qword_2811C8678, sub_217AE0B30, sub_217AE0B88);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.recirculationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 88);
  sub_217C4752C(0, &qword_2811C8678, sub_217AE0B30, sub_217AE0B88);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.experimentalScoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 92);
  sub_217C4752C(0, &qword_2811C84B0, sub_217B86EE4, sub_217B86F3C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.experimentalScoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 92);
  sub_217C4752C(0, &qword_2811C84B0, sub_217B86EE4, sub_217B86F3C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.offlineModeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 96);
  sub_217C4752C(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.offlineModeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 96);
  sub_217C4752C(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.recipeListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 100);
  sub_217C4752C(0, &qword_2811C8718, sub_217BB19F8, sub_217BB1A50);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.recipeListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 100);
  sub_217C4752C(0, &qword_2811C8718, sub_217BB19F8, sub_217BB1A50);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 104);
  sub_217C4752C(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C4752C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t HeadlineExposureEvent.dismissalData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 104);
  sub_217C4752C(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for HeadlineExposureEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217C4752C(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217A608E0();
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  sub_217C4752C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217C4752C(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217C4752C(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  (*(*(v15 - 8) + 104))(a1 + v14, v6, v15);
  v16 = v4[10];
  sub_217C4752C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217C4752C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v19 - 8) + 104))(a1 + v18, v6, v19);
  v20 = v4[12];
  sub_217C4752C(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217C4752C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217C4752C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217C4752C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v27 - 8) + 104))(a1 + v26, v6, v27);
  v28 = v4[16];
  sub_217C4752C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v29 - 8) + 104))(a1 + v28, v2, v29);
  v30 = v4[17];
  sub_217C4752C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  (*(*(v31 - 8) + 104))(a1 + v30, v6, v31);
  v32 = v4[18];
  sub_217C4752C(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4);
  (*(*(v33 - 8) + 104))(a1 + v32, v6, v33);
  v34 = v4[19];
  sub_217C4752C(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84);
  (*(*(v35 - 8) + 104))(a1 + v34, v6, v35);
  v36 = v4[20];
  sub_217C4752C(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8);
  (*(*(v37 - 8) + 104))(a1 + v36, v6, v37);
  v38 = v4[21];
  sub_217C4752C(0, &qword_2811C8778, sub_217B75EA8, sub_217B75F00);
  (*(*(v39 - 8) + 104))(a1 + v38, v6, v39);
  v40 = v4[22];
  sub_217C4752C(0, &qword_2811C8678, sub_217AE0B30, sub_217AE0B88);
  (*(*(v41 - 8) + 104))(a1 + v40, v6, v41);
  v42 = v4[23];
  sub_217C4752C(0, &qword_2811C84B0, sub_217B86EE4, sub_217B86F3C);
  (*(*(v43 - 8) + 104))(a1 + v42, v6, v43);
  v44 = v4[24];
  sub_217C4752C(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390);
  (*(*(v45 - 8) + 104))(a1 + v44, v2, v45);
  v46 = v4[25];
  sub_217C4752C(0, &qword_2811C8718, sub_217BB19F8, sub_217BB1A50);
  (*(*(v47 - 8) + 104))(a1 + v46, v6, v47);
  v48 = v4[26];
  sub_217C4752C(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
  v50 = *(*(v49 - 8) + 104);

  return v50(a1 + v48, v6, v49);
}

uint64_t HeadlineExposureEvent.Model.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);

  return sub_217AE39D0(v4, v5);
}

uint64_t sub_217C48214@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t HeadlineExposureEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 28);
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

uint64_t HeadlineExposureEvent.Model.feedPositionData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for HeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t HeadlineExposureEvent.Model.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for HeadlineExposureEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t HeadlineExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 40);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t HeadlineExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 44));
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

uint64_t HeadlineExposureEvent.Model.articleScienceData.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent.Model(0) + 48);
  memcpy(__dst, (v1 + v3), 0x111uLL);
  memcpy(a1, (v1 + v3), 0x111uLL);
  return sub_217AD1744(__dst, &v5);
}

uint64_t HeadlineExposureEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for HeadlineExposureEvent.Model(0);
  v4 = (v1 + *(result + 52));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t HeadlineExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 56);
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

uint64_t HeadlineExposureEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 60));
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

uint64_t HeadlineExposureEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 64);
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

uint64_t HeadlineExposureEvent.Model.articleExposureContextData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 68));
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

uint64_t HeadlineExposureEvent.Model.articleViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 72));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t HeadlineExposureEvent.Model.searchResponseData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for HeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t HeadlineExposureEvent.Model.shareOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for HeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 80));
  return result;
}

uint64_t HeadlineExposureEvent.Model.auxiliaryData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 84));
}

uint64_t HeadlineExposureEvent.Model.recirculationData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 88));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t HeadlineExposureEvent.Model.experimentalScoreData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for HeadlineExposureEvent.Model(0);
  v4 = (v1 + *(result + 92));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t HeadlineExposureEvent.Model.offlineModeData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for HeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 96));
  return result;
}

uint64_t HeadlineExposureEvent.Model.recipeListData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 100));
  *a1 = v3;

  return sub_217AF77A0(v3);
}

uint64_t HeadlineExposureEvent.Model.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 104));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 HeadlineExposureEvent.Model.init(eventData:adData:timedData:articleData:feedPositionData:inGroupPositionData:feedData:groupData:articleScienceData:userChannelContextData:userBundleSubscriptionContextData:issueData:channelData:articleExposureContextData:articleViewData:searchResponseData:shareOriginationData:auxiliaryData:recirculationData:experimentalScoreData:offlineModeData:recipeListData:dismissalData:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, int *a6@<X5>, char *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, const void *a10, char *a11, uint64_t a12, __int128 *a13, uint64_t *a14, uint64_t a15, uint64_t *a16, char *a17, char *a18, uint64_t *a19, uint64_t *a20, uint64_t *a21, char *a22, uint64_t *a23, uint64_t *a24)
{
  v61 = *a5;
  v62 = *(a6 + 4);
  v63 = *a6;
  v66 = *a7;
  v65 = *(a7 + 1);
  v64 = *(a7 + 2);
  v73 = a11[1];
  v74 = *a11;
  v72 = *(a11 + 1);
  v80 = *a14;
  v79 = a14[1];
  v77 = *(a14 + 17);
  v78 = *(a14 + 16);
  v75 = a14[4];
  v76 = a14[3];
  v81 = a16[1];
  v82 = *a16;
  v83 = *a17;
  v84 = *a18;
  v85 = *a19;
  v86 = a20[1];
  v87 = *a20;
  v88 = *(a21 + 8);
  v89 = *a21;
  v90 = *a23;
  v93 = a24[1];
  v94 = *a24;
  v91 = *a22;
  v92 = *(a24 + 16);
  v30 = *(a2 + 32);
  v71 = *(a15 + 32);
  v31 = sub_217D8899C();
  v69 = *(a15 + 16);
  v70 = *a15;
  v67 = a13[1];
  v68 = *a13;
  v59 = a2[1];
  v60 = *a2;
  (*(*(v31 - 8) + 32))(a9, a1, v31);
  v32 = type metadata accessor for HeadlineExposureEvent.Model(0);
  v33 = a9 + v32[5];
  *v33 = v60;
  *(v33 + 16) = v59;
  *(v33 + 32) = v30;
  v34 = v32[6];
  v35 = sub_217D889CC();
  (*(*(v35 - 8) + 32))(a9 + v34, a3, v35);
  v36 = a9 + v32[7];
  v37 = *(a4 + 48);
  *(v36 + 32) = *(a4 + 32);
  *(v36 + 48) = v37;
  v38 = *(a4 + 16);
  *v36 = *a4;
  *(v36 + 16) = v38;
  *(v36 + 127) = *(a4 + 127);
  v39 = *(a4 + 112);
  *(v36 + 96) = *(a4 + 96);
  *(v36 + 112) = v39;
  v40 = *(a4 + 80);
  *(v36 + 64) = *(a4 + 64);
  *(v36 + 80) = v40;
  *(a9 + v32[8]) = v61;
  v41 = a9 + v32[9];
  *v41 = v63;
  *(v41 + 4) = v62;
  v42 = a9 + v32[10];
  *v42 = v66;
  *(v42 + 8) = v65;
  *(v42 + 16) = v64;
  v43 = (a9 + v32[11]);
  v44 = a8[7];
  v43[6] = a8[6];
  v43[7] = v44;
  v43[8] = a8[8];
  v45 = a8[3];
  v43[2] = a8[2];
  v43[3] = v45;
  v46 = a8[5];
  v43[4] = a8[4];
  v43[5] = v46;
  v47 = a8[1];
  *v43 = *a8;
  v43[1] = v47;
  memcpy((a9 + v32[12]), a10, 0x111uLL);
  v48 = a9 + v32[13];
  *v48 = v74;
  *(v48 + 1) = v73;
  *(v48 + 2) = v72;
  v49 = a9 + v32[14];
  v50 = *(a12 + 16);
  *v49 = *a12;
  *(v49 + 16) = v50;
  *(v49 + 32) = *(a12 + 32);
  *(v49 + 48) = *(a12 + 48);
  v51 = (a9 + v32[15]);
  *v51 = v68;
  v51[1] = v67;
  v52 = a9 + v32[16];
  *v52 = v80;
  *(v52 + 8) = v79;
  *(v52 + 16) = v78;
  *(v52 + 17) = v77;
  *(v52 + 24) = v76;
  *(v52 + 32) = v75;
  v53 = a9 + v32[17];
  result = v70;
  *v53 = v70;
  *(v53 + 16) = v69;
  *(v53 + 32) = v71;
  v55 = (a9 + v32[18]);
  *v55 = v82;
  v55[1] = v81;
  *(a9 + v32[19]) = v83;
  *(a9 + v32[20]) = v84;
  *(a9 + v32[21]) = v85;
  v56 = (a9 + v32[22]);
  *v56 = v87;
  v56[1] = v86;
  v57 = a9 + v32[23];
  *v57 = v89;
  *(v57 + 8) = v88;
  *(a9 + v32[24]) = v91;
  *(a9 + v32[25]) = v90;
  v58 = a9 + v32[26];
  *v58 = v94;
  *(v58 + 8) = v93;
  *(v58 + 16) = v92;
  return result;
}

unint64_t sub_217C48CC0(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x617461446461;
      break;
    case 2:
      result = 0x74614464656D6974;
      break;
    case 3:
      result = 0x44656C6369747261;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x6174614464656566;
      break;
    case 7:
      result = 0x74614470756F7267;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0xD000000000000021;
      break;
    case 11:
      result = 0x7461446575737369;
      break;
    case 12:
      result = 0x446C656E6E616863;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0x56656C6369747261;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0x7261696C69787561;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0xD000000000000015;
      break;
    case 20:
      result = 0x4D656E696C66666FLL;
      break;
    case 21:
      result = 0x694C657069636572;
      break;
    case 22:
      result = 0x617373696D736964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217C48F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C4BBC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C48FC0(uint64_t a1)
{
  v2 = sub_217C49CB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C48FFC(uint64_t a1)
{
  v2 = sub_217C49CB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HeadlineExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C4AE64(0, &qword_27CBA2AA0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v77 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C49CB8();
  sub_217D89E7C();
  LOBYTE(v99[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for HeadlineExposureEvent.Model(0);
    v13 = v3 + v12[5];
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    v17 = *(v13 + 32);
    v99[0] = *v13;
    v99[1] = v14;
    v99[2] = v15;
    v99[3] = v16;
    LOBYTE(v99[4]) = v17;
    v97[0] = 1;
    sub_217AE39D0(v99[0], v14);
    sub_217AF3490();
    sub_217D89C3C();
    sub_217AE4AA0(v99[0], v99[1]);
    v18 = v12[6];
    v140 = 2;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v19 = v3 + v12[7];
    v20 = *(v19 + 80);
    v21 = *(v19 + 112);
    v138 = *(v19 + 96);
    *v139 = v21;
    v22 = *(v19 + 16);
    v23 = *(v19 + 48);
    v134 = *(v19 + 32);
    v135 = v23;
    v24 = *(v19 + 48);
    v25 = *(v19 + 80);
    v136 = *(v19 + 64);
    v137 = v25;
    v26 = *(v19 + 16);
    v133[0] = *v19;
    v133[1] = v26;
    v27 = *(v19 + 112);
    v131 = v138;
    v132[0] = v27;
    v127 = v134;
    v128 = v24;
    v130 = v20;
    v129 = v136;
    *&v139[15] = *(v19 + 127);
    *(v132 + 15) = *(v19 + 127);
    v126 = v22;
    v125 = v133[0];
    v124 = 3;
    sub_217AD1630(v133, v99);
    sub_217ACF52C();
    sub_217D89CAC();
    v122[6] = v131;
    *v123 = v132[0];
    *&v123[15] = *(v132 + 15);
    v122[2] = v127;
    v122[3] = v128;
    v122[5] = v130;
    v122[4] = v129;
    v122[1] = v126;
    v122[0] = v125;
    sub_217AD2864(v122);
    LODWORD(v99[0]) = *(v3 + v12[8]);
    v97[0] = 4;
    sub_217AD7710();
    sub_217D89CAC();
    v28 = (v3 + v12[9]);
    v29 = *v28;
    LOBYTE(v28) = *(v28 + 4);
    LODWORD(v99[0]) = v29;
    BYTE4(v99[0]) = v28;
    v97[0] = 5;
    sub_217B4FFFC();
    sub_217D89C3C();
    v30 = (v3 + v12[10]);
    v31 = *(v30 + 1);
    v32 = *(v30 + 2);
    v119 = *v30;
    v120 = v31;
    v121 = v32;
    v118 = 6;
    sub_217A5BA2C();

    sub_217D89CAC();

    v33 = (v3 + v12[11]);
    v34 = v33[5];
    v35 = v33[7];
    v115 = v33[6];
    v116 = v35;
    v36 = v33[7];
    v117 = v33[8];
    v37 = v33[1];
    v38 = v33[3];
    v111 = v33[2];
    v112 = v38;
    v40 = v33[3];
    v39 = v33[4];
    v41 = v39;
    v114 = v33[5];
    v113 = v39;
    v42 = *v33;
    v43 = *v33;
    v110[1] = v33[1];
    v110[0] = v42;
    v107 = v115;
    v108 = v36;
    v109 = v33[8];
    v103 = v111;
    v104 = v40;
    v106 = v34;
    v105 = v41;
    v102 = v37;
    v101 = v43;
    v100 = 7;
    sub_217AD87FC(v110, v99);
    sub_217A5D3B4();
    sub_217D89C3C();
    v98[6] = v107;
    v98[7] = v108;
    v98[8] = v109;
    v98[2] = v103;
    v98[3] = v104;
    v98[4] = v105;
    v98[5] = v106;
    v98[0] = v101;
    v98[1] = v102;
    sub_217AD96E8(v98);
    v44 = v12[12];
    memcpy(v99, (v3 + v44), 0x111uLL);
    memcpy(v97, (v3 + v44), sizeof(v97));
    v96[279] = 8;
    sub_217AD1744(v99, v96);
    sub_217ACF934();
    sub_217D89CAC();
    memcpy(v96, v97, 0x111uLL);
    sub_217AD28B8(v96);
    v45 = (v3 + v12[13]);
    v46 = *v45;
    v47 = v45[1];
    LOWORD(v45) = *(v45 + 1);
    v93 = v46;
    v94 = v47;
    v95 = v45;
    v92 = 9;
    sub_217ACFB8C();
    sub_217D89CAC();
    v48 = (v3 + v12[14]);
    v49 = v48[1];
    v90[0] = *v48;
    v90[1] = v49;
    v51 = *v48;
    v50 = v48[1];
    v90[2] = v48[2];
    v91 = *(v48 + 48);
    v86 = v51;
    v87 = v50;
    v88 = v48[2];
    v89 = *(v48 + 48);
    v85 = 10;
    sub_217ACC004(v90, v83);
    sub_217A55B98();
    sub_217D89CAC();
    v83[0] = v86;
    v83[1] = v87;
    v83[2] = v88;
    v84 = v89;
    sub_217ACC69C(v83);
    v52 = (v3 + v12[15]);
    v53 = v52[1];
    v54 = v52[2];
    v55 = v52[3];
    v77 = *v52;
    v78 = v53;
    v79 = v54;
    v80 = v55;
    v82 = 11;
    sub_217AE39D0(v77, v53);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v77, v78);
    v57 = v3 + v12[16];
    v58 = *(v57 + 8);
    v59 = *(v57 + 16);
    v60 = *(v57 + 17);
    v61 = *(v57 + 24);
    v62 = *(v57 + 32);
    v77 = *v57;
    v78 = v58;
    LOBYTE(v79) = v59;
    BYTE1(v79) = v60;
    v80 = v61;
    v81 = v62;
    v82 = 12;
    sub_217AD084C();

    sub_217D89CAC();

    v63 = (v3 + v12[17]);
    v64 = v63[1];
    v65 = v63[2];
    v66 = v63[3];
    v67 = v63[4];
    v77 = *v63;
    v78 = v64;
    v79 = v65;
    v80 = v66;
    v81 = v67;
    v82 = 13;
    sub_217AE3AE8(v77, v64);
    sub_217AE2CFC();
    sub_217D89C3C();
    sub_217AE4AE4(v77, v78);
    v68 = (v3 + v12[18]);
    v69 = v68[1];
    v77 = *v68;
    v78 = v69;
    v82 = 14;
    sub_217BA73F4();

    sub_217D89C3C();

    LOBYTE(v77) = *(v3 + v12[19]);
    v82 = 15;
    sub_217B2BA84();
    sub_217D89C3C();
    LOBYTE(v77) = *(v3 + v12[20]);
    v82 = 16;
    sub_217C46AB8();
    sub_217D89C3C();
    v77 = *(v3 + v12[21]);
    v82 = 17;
    sub_217B75F00();

    sub_217D89C3C();

    v70 = (v3 + v12[22]);
    v71 = v70[1];
    v77 = *v70;
    v78 = v71;
    v82 = 18;
    sub_217AE0B88();

    sub_217D89C3C();

    v72 = v3 + v12[23];
    v73 = *v72;
    LOBYTE(v72) = *(v72 + 8);
    v77 = v73;
    LOBYTE(v78) = v72;
    v82 = 19;
    sub_217B86F3C();
    sub_217D89C3C();
    LOBYTE(v77) = *(v3 + v12[24]);
    v82 = 20;
    sub_217ACA390();
    sub_217D89CAC();
    v77 = *(v3 + v12[25]);
    v82 = 21;
    sub_217AF77A0(v77);
    sub_217BB1A50();
    sub_217D89C3C();
    sub_217AF8158(v77);
    v74 = v3 + v12[26];
    v75 = *v74;
    v76 = *(v74 + 8);
    LOBYTE(v74) = *(v74 + 16);
    v77 = v75;
    v78 = v76;
    LOBYTE(v79) = v74;
    v82 = 22;
    sub_217AD7DEC();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C49CB8()
{
  result = qword_2811C11D0;
  if (!qword_2811C11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C11D0);
  }

  return result;
}

uint64_t HeadlineExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_217D889CC();
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = *(v68 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v70 = *(v6 - 8);
  v7 = *(v70 + 64);
  MEMORY[0x28223BE20](v6);
  v72 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C4AE64(0, &qword_2811BC9B0, MEMORY[0x277D844C8]);
  v73 = *(v9 - 8);
  v74 = v9;
  v10 = *(v73 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v64 - v11;
  v13 = type metadata accessor for HeadlineExposureEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C49CB8();
  v75 = v12;
  v18 = v106;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v71;
  v106 = a1;
  v65 = v13;
  v66 = v16;
  LOBYTE(v105[0]) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v20 = v72;
  sub_217D89BCC();
  v21 = v66;
  (*(v70 + 32))(v66, v20, v6);
  LOBYTE(v87) = 1;
  sub_217AF343C();
  sub_217D89B5C();
  v64[2] = v6;
  v72 = 0;
  v22 = v105[2];
  v23 = &v21[v65[5]];
  v24 = v105[1];
  *v23 = v105[0];
  *(v23 + 1) = v24;
  v23[32] = v22;
  LOBYTE(v105[0]) = 2;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v25 = v19;
  v26 = v69;
  sub_217D89BCC();
  v27 = v65;
  (*(v68 + 32))(&v66[v65[6]], v25, v26);
  v96 = 3;
  sub_217ACF4D8();
  sub_217D89BCC();
  v28 = v66;
  v29 = &v66[v27[7]];
  v30 = *v104;
  *(v29 + 6) = v103;
  *(v29 + 7) = v30;
  *(v29 + 127) = *&v104[15];
  v31 = v100;
  *(v29 + 2) = v99;
  *(v29 + 3) = v31;
  v32 = v102;
  *(v29 + 4) = v101;
  *(v29 + 5) = v32;
  v33 = v98;
  *v29 = v97;
  *(v29 + 1) = v33;
  LOBYTE(v87) = 4;
  sub_217AD76BC();
  sub_217D89BCC();
  *&v28[v27[8]] = v105[0];
  LOBYTE(v87) = 5;
  sub_217B4FFA8();
  sub_217D89B5C();
  v34 = BYTE4(v105[0]);
  v35 = &v28[v27[9]];
  *v35 = v105[0];
  v35[4] = v34;
  LOBYTE(v87) = 6;
  sub_217A5B978();
  sub_217D89BCC();
  v36 = &v28[v27[10]];
  *v36 = v105[0];
  *(v36 + 8) = *(v105 + 8);
  v86 = 7;
  sub_217A5D308();
  sub_217D89B5C();
  v37 = &v28[v65[11]];
  v38 = v94;
  *(v37 + 6) = v93;
  *(v37 + 7) = v38;
  *(v37 + 8) = v95;
  v39 = v90;
  *(v37 + 2) = v89;
  *(v37 + 3) = v39;
  v40 = v92;
  *(v37 + 4) = v91;
  *(v37 + 5) = v40;
  v41 = v88;
  *v37 = v87;
  *(v37 + 1) = v41;
  v85 = 8;
  sub_217ACF8E0();
  sub_217D89BCC();
  memcpy(&v66[v65[12]], v105, 0x111uLL);
  LOBYTE(v76) = 9;
  sub_217ACFB38();
  sub_217D89BCC();
  v42 = BYTE1(v81);
  v43 = WORD1(v81);
  v44 = &v66[v65[13]];
  *v44 = v81;
  v44[1] = v42;
  *(v44 + 1) = v43;
  v80 = 10;
  sub_217A54D08();
  sub_217D89BCC();
  v45 = &v66[v65[14]];
  v46 = v82;
  *v45 = v81;
  *(v45 + 1) = v46;
  *(v45 + 2) = v83;
  v45[48] = v84;
  v79 = 11;
  sub_217ACFF40();
  sub_217D89B5C();
  v47 = &v66[v65[15]];
  v48 = v77;
  *v47 = v76;
  *(v47 + 1) = v48;
  v79 = 12;
  sub_217AD07F8();
  sub_217D89BCC();
  v49 = *(&v76 + 1);
  v50 = v77;
  v51 = BYTE1(v77);
  v52 = *(&v77 + 1);
  v53 = v78;
  v54 = &v66[v65[16]];
  *v54 = v76;
  *(v54 + 1) = v49;
  v54[16] = v50;
  v54[17] = v51;
  *(v54 + 3) = v52;
  *(v54 + 4) = v53;
  v79 = 13;
  sub_217AE2CA8();
  sub_217D89B5C();
  v55 = v78;
  v56 = &v66[v65[17]];
  v57 = v77;
  *v56 = v76;
  *(v56 + 1) = v57;
  *(v56 + 4) = v55;
  v79 = 14;
  sub_217BA73A0();
  sub_217D89B5C();
  *&v66[v65[18]] = v76;
  v79 = 15;
  sub_217B2BA2C();
  sub_217D89B5C();
  v66[v65[19]] = v76;
  v79 = 16;
  sub_217C46A64();
  sub_217D89B5C();
  v66[v65[20]] = v76;
  v79 = 17;
  sub_217B75EA8();
  sub_217D89B5C();
  *&v66[v65[21]] = v76;
  v79 = 18;
  sub_217AE0B30();
  sub_217D89B5C();
  *&v66[v65[22]] = v76;
  v79 = 19;
  sub_217B86EE4();
  sub_217D89B5C();
  v58 = BYTE8(v76);
  v59 = &v66[v65[23]];
  *v59 = v76;
  v59[8] = v58;
  v79 = 20;
  sub_217ACA338();
  sub_217D89BCC();
  v66[v65[24]] = v76;
  v79 = 21;
  sub_217BB19F8();
  sub_217D89B5C();
  *&v66[v65[25]] = v76;
  v79 = 22;
  sub_217AD7D98();
  sub_217D89B5C();
  (*(v73 + 8))(v75, v74);
  v60 = v77;
  v61 = v66;
  v62 = &v66[v65[26]];
  *v62 = v76;
  v62[16] = v60;
  sub_217C4AEC8(v61, v67);
  __swift_destroy_boxed_opaque_existential_1(v106);
  return sub_217C4AF2C(v61);
}

void sub_217C4AE64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C49CB8();
    v7 = a3(a1, &type metadata for HeadlineExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C4AEC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C4AF2C(uint64_t a1)
{
  v2 = type metadata accessor for HeadlineExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_217C4B08C()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217C4752C(319, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
    if (v1 <= 0x3F)
    {
      sub_217A608E0();
      if (v2 <= 0x3F)
      {
        sub_217C4752C(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
        if (v3 <= 0x3F)
        {
          sub_217C4752C(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
          if (v4 <= 0x3F)
          {
            sub_217C4752C(319, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
            if (v5 <= 0x3F)
            {
              sub_217C4752C(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
              if (v6 <= 0x3F)
              {
                sub_217C4752C(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
                if (v7 <= 0x3F)
                {
                  sub_217C4752C(319, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
                  if (v8 <= 0x3F)
                  {
                    sub_217C4752C(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
                    if (v9 <= 0x3F)
                    {
                      sub_217C4752C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                      if (v10 <= 0x3F)
                      {
                        sub_217C4752C(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
                        if (v11 <= 0x3F)
                        {
                          sub_217C4752C(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
                          if (v12 <= 0x3F)
                          {
                            sub_217C4752C(319, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
                            if (v13 <= 0x3F)
                            {
                              sub_217C4752C(319, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4);
                              if (v14 <= 0x3F)
                              {
                                sub_217C4752C(319, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84);
                                if (v15 <= 0x3F)
                                {
                                  sub_217C4752C(319, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_217C4752C(319, &qword_2811C8778, sub_217B75EA8, sub_217B75F00);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_217C4752C(319, &qword_2811C8678, sub_217AE0B30, sub_217AE0B88);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_217C4752C(319, &qword_2811C84B0, sub_217B86EE4, sub_217B86F3C);
                                        if (v19 <= 0x3F)
                                        {
                                          sub_217C4752C(319, &qword_2811C86F0, sub_217ACA338, sub_217ACA390);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_217C4752C(319, &qword_2811C8718, sub_217BB19F8, sub_217BB1A50);
                                            if (v21 <= 0x3F)
                                            {
                                              sub_217C4752C(319, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
                                              if (v22 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_217C4B7CC()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD3F0);
    if (v1 <= 0x3F)
    {
      sub_217D889CC();
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811C29D8);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD178);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811BD110);
            if (v5 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811BF120);
              if (v6 <= 0x3F)
              {
                sub_217A5E974(319, &qword_2811C6910);
                if (v7 <= 0x3F)
                {
                  sub_217A5E974(319, &qword_2811C2E40);
                  if (v8 <= 0x3F)
                  {
                    sub_217A5E974(319, &qword_2811C1C58);
                    if (v9 <= 0x3F)
                    {
                      sub_217A5E974(319, &qword_2811C7850);
                      if (v10 <= 0x3F)
                      {
                        sub_217A5E974(319, &qword_2811C4350);
                        if (v11 <= 0x3F)
                        {
                          sub_217A5E974(319, &qword_2811BD090);
                          if (v12 <= 0x3F)
                          {
                            sub_217A5E974(319, &qword_2811C6AD8);
                            if (v13 <= 0x3F)
                            {
                              sub_217A5E974(319, &qword_2811C7628);
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

unint64_t sub_217C4BABC()
{
  result = qword_27CBA2AA8;
  if (!qword_27CBA2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2AA8);
  }

  return result;
}

unint64_t sub_217C4BB14()
{
  result = qword_2811C11C0;
  if (!qword_2811C11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C11C0);
  }

  return result;
}

unint64_t sub_217C4BB6C()
{
  result = qword_2811C11C8;
  if (!qword_2811C11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C11C8);
  }

  return result;
}

uint64_t sub_217C4BBC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461446461 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCDE60 == a2 || (sub_217D89D4C() & 1) != 0)
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

  else if (a1 == 0xD000000000000012 && 0x8000000217DCCCA0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD5F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x56656C6369747261 && a2 == 0xEF61746144776569 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD1210 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD1230 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7261696C69787561 && a2 == 0xED00006174614479 || (sub_217D89D4C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD1250 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD0520 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x4D656E696C66666FLL && a2 == 0xEF6174614465646FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x694C657069636572 && a2 == 0xEE00617461447473 || (sub_217D89D4C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x617373696D736964 && a2 == 0xED0000617461446CLL)
  {

    return 22;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

uint64_t sub_217C4C3B0()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2AE0);
  __swift_project_value_buffer(v0, qword_27CBA2AE0);
  return sub_217D8866C();
}

uint64_t LiveActivitySubscribeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t LiveActivitySubscribeEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivitySubscribeEvent(0) + 20);
  sub_217C4CC74(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LiveActivitySubscribeEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivitySubscribeEvent(0) + 20);
  sub_217C4CC74(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivitySubscribeEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivitySubscribeEvent(0) + 24);
  sub_217C4CC74(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LiveActivitySubscribeEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivitySubscribeEvent(0) + 24);
  sub_217C4CC74(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivitySubscribeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivitySubscribeEvent(0) + 28);
  sub_217C4CC74(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LiveActivitySubscribeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivitySubscribeEvent(0) + 28);
  sub_217C4CC74(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivitySubscribeEvent.liveActivityData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivitySubscribeEvent(0) + 32);
  sub_217C4CC74(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LiveActivitySubscribeEvent.liveActivityData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivitySubscribeEvent(0) + 32);
  sub_217C4CC74(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivitySubscribeEvent.liveActivityOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivitySubscribeEvent(0) + 36);
  sub_217C4CC74(0, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C4CC74(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t LiveActivitySubscribeEvent.liveActivityOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivitySubscribeEvent(0) + 36);
  sub_217C4CC74(0, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivitySubscribeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for LiveActivitySubscribeEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217C4CC74(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217C4CC74(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217C4CC74(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217C4CC74(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217C4CC74(0, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t LiveActivitySubscribeEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiveActivitySubscribeEvent.Model(0) + 20));
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

uint64_t LiveActivitySubscribeEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiveActivitySubscribeEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t LiveActivitySubscribeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiveActivitySubscribeEvent.Model(0) + 28));
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

uint64_t LiveActivitySubscribeEvent.Model.liveActivityData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiveActivitySubscribeEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t LiveActivitySubscribeEvent.Model.liveActivityOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LiveActivitySubscribeEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

__n128 LiveActivitySubscribeEvent.Model.init(eventData:groupData:feedData:userBundleSubscriptionContextData:liveActivityData:liveActivityOriginationData:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v27 = *a3;
  v11 = *(a3 + 2);
  v12 = *a5;
  v13 = a5[1];
  v14 = *a6;
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a7, a1, v15);
  v16 = type metadata accessor for LiveActivitySubscribeEvent.Model(0);
  v17 = (a7 + v16[5]);
  v18 = a2[3];
  v17[2] = a2[2];
  v17[3] = v18;
  v19 = a2[1];
  *v17 = *a2;
  v17[1] = v19;
  v20 = a2[8];
  v17[7] = a2[7];
  v17[8] = v20;
  v21 = a2[6];
  v17[5] = a2[5];
  v17[6] = v21;
  v17[4] = a2[4];
  v22 = a7 + v16[6];
  *v22 = v27;
  *(v22 + 16) = v11;
  v23 = a7 + v16[7];
  v24 = *(a4 + 16);
  *v23 = *a4;
  *(v23 + 16) = v24;
  result = *(a4 + 32);
  *(v23 + 32) = result;
  *(v23 + 48) = *(a4 + 48);
  v26 = (a7 + v16[8]);
  *v26 = v12;
  v26[1] = v13;
  *(a7 + v16[9]) = v14;
  return result;
}

unint64_t sub_217C4D3FC()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000021;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74614470756F7267;
  if (v1 != 1)
  {
    v5 = 0x6174614464656566;
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

uint64_t sub_217C4D4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C4EA40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C4D4F0(uint64_t a1)
{
  v2 = sub_217C4D9DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C4D52C(uint64_t a1)
{
  v2 = sub_217C4D9DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivitySubscribeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C4E11C(0, &qword_27CBA2AF8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v33 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C4D9DC();
  sub_217D89E7C();
  v70 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for LiveActivitySubscribeEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[6];
    v15 = v13[4];
    v66 = v13[5];
    v67 = v14;
    v16 = v13[6];
    v17 = v13[8];
    v68 = v13[7];
    v69 = v17;
    v18 = v13[2];
    v19 = *v13;
    v62 = v13[1];
    v63 = v18;
    v20 = v13[2];
    v21 = v13[4];
    v64 = v13[3];
    v65 = v21;
    v22 = *v13;
    v58 = v16;
    v59 = v68;
    v60 = v13[8];
    v61 = v22;
    v54 = v20;
    v55 = v64;
    v56 = v15;
    v57 = v66;
    v52 = v19;
    v53 = v62;
    v51 = 1;
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
    v23 = (v3 + v12[6]);
    v24 = v23[1];
    v25 = v23[2];
    v47 = *v23;
    v48 = v24;
    v49 = v25;
    v46 = 2;
    sub_217AD1A68(v47, v24, v25);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v47, v48, v49);
    v26 = (v3 + v12[7]);
    v27 = v26[1];
    v44[0] = *v26;
    v44[1] = v27;
    v29 = *v26;
    v28 = v26[1];
    v44[2] = v26[2];
    v45 = *(v26 + 48);
    v40 = v29;
    v41 = v28;
    v42 = v26[2];
    v43 = *(v26 + 48);
    v39 = 3;
    sub_217ACC004(v44, v37);
    sub_217A55B98();
    sub_217D89CAC();
    v37[0] = v40;
    v37[1] = v41;
    v37[2] = v42;
    v38 = v43;
    sub_217ACC69C(v37);
    v30 = (v3 + v12[8]);
    v31 = v30[1];
    v35 = *v30;
    v36 = v31;
    v34 = 4;
    sub_217B0F464();

    sub_217D89CAC();

    LOBYTE(v35) = *(v3 + v12[9]);
    v34 = 5;
    sub_217B0FAC4();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C4D9DC()
{
  result = qword_27CBA2B00;
  if (!qword_27CBA2B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2B00);
  }

  return result;
}

uint64_t LiveActivitySubscribeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_217D8899C();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C4E11C(0, &qword_27CBA2B08, MEMORY[0x277D844C8]);
  v56 = v7;
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = type metadata accessor for LiveActivitySubscribeEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C4D9DC();
  v37 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v35;
  LOBYTE(v47) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v36;
  sub_217D89BCC();
  (*(v34 + 32))(v14, v17, v4);
  v46 = 1;
  sub_217A5D308();
  sub_217D89B5C();
  v18 = &v14[v11[5]];
  v19 = v52;
  v20 = v54;
  v21 = v55;
  *(v18 + 6) = v53;
  *(v18 + 7) = v20;
  *(v18 + 8) = v21;
  v22 = v50;
  v23 = v51;
  *(v18 + 2) = v49;
  *(v18 + 3) = v22;
  *(v18 + 4) = v23;
  *(v18 + 5) = v19;
  v24 = v48;
  *v18 = v47;
  *(v18 + 1) = v24;
  LOBYTE(v39) = 2;
  sub_217A5B978();
  v36 = 0;
  sub_217D89B5C();
  v25 = v43;
  v26 = &v14[v11[6]];
  *v26 = v42;
  *(v26 + 2) = v25;
  v41 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  v27 = &v14[v11[7]];
  v28 = v43;
  *v27 = v42;
  *(v27 + 1) = v28;
  *(v27 + 2) = v44;
  v27[48] = v45;
  v38 = 4;
  sub_217B0F410();
  sub_217D89BCC();
  v29 = v40;
  v30 = &v14[v11[8]];
  *v30 = v39;
  *(v30 + 1) = v29;
  v38 = 5;
  sub_217B0FA70();
  sub_217D89BCC();
  (*(v16 + 8))(v37, v56);
  v14[v11[9]] = v39;
  sub_217C4E180(v14, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C4E1E4(v14);
}

void sub_217C4E11C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C4D9DC();
    v7 = a3(a1, &type metadata for LiveActivitySubscribeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C4E180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivitySubscribeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C4E1E4(uint64_t a1)
{
  v2 = type metadata accessor for LiveActivitySubscribeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C4E318@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217C4CC74(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217C4CC74(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  sub_217C4CC74(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217C4CC74(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217C4CC74(0, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

void sub_217C4E62C()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217C4CC74(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
    if (v1 <= 0x3F)
    {
      sub_217C4CC74(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
      if (v2 <= 0x3F)
      {
        sub_217C4CC74(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
        if (v3 <= 0x3F)
        {
          sub_217C4CC74(319, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464);
          if (v4 <= 0x3F)
          {
            sub_217C4CC74(319, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4);
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

void sub_217C4E850()
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
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217C4E93C()
{
  result = qword_27CBA2B30;
  if (!qword_27CBA2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2B30);
  }

  return result;
}

unint64_t sub_217C4E994()
{
  result = qword_27CBA2B38;
  if (!qword_27CBA2B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2B38);
  }

  return result;
}

unint64_t sub_217C4E9EC()
{
  result = qword_27CBA2B40;
  if (!qword_27CBA2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2B40);
  }

  return result;
}

uint64_t sub_217C4EA40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD8E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000217DCD900 == a2)
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

uint64_t sub_217C4EC98(uint64_t a1)
{
  v2 = sub_217A64D94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C4ECD4(uint64_t a1)
{
  v2 = sub_217A64D94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContentEnvironmentData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217A64D18(0, &qword_2811BC988, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A64D94();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C4EEA8();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}