uint64_t sub_100028738(uint64_t a1, uint64_t a2)
{
  if (qword_1000FC000 != -1)
  {
    v7 = a1;
    v8 = a2;
    swift_once();
    a1 = v7;
    a2 = v8;
  }

  v2 = off_1000FC610;
  if (*(off_1000FC610 + 2))
  {
    v3 = sub_100099FF8(a1, a2);
    v5 = v4;

    if (v5)
    {
      return *(v2[7] + v3);
    }
  }

  else
  {
  }

  return 86;
}

uint64_t getEnumTagSinglePayload for MetadataKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAB)
  {
    goto LABEL_17;
  }

  if (a2 + 85 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 85) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 85;
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

      return (*a1 | (v4 << 8)) - 85;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 85;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x56;
  v8 = v6 - 86;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetadataKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 85 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 85) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAB)
  {
    v4 = 0;
  }

  if (a2 > 0xAA)
  {
    v5 = ((a2 - 171) >> 8) + 1;
    *result = a2 + 85;
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
    *result = a2 + 85;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100028938()
{
  result = qword_1000FC620;
  if (!qword_1000FC620)
  {
    sub_10001308C(&qword_1000FC628, qword_1000CA0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC620);
  }

  return result;
}

unint64_t sub_1000289A0()
{
  result = qword_1000FC630;
  if (!qword_1000FC630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC630);
  }

  return result;
}

uint64_t sub_1000289F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_1000C5974();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  __chkstk_darwin(v7);
  result = type metadata accessor for MessageDictionary();
  v9 = (v1 + *(result + 136));
  v10 = v9[1];
  v11 = 0uLL;
  if (v10 >> 60 == 15)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
  }

  else
  {
    v22 = *v9;
    v23 = sub_1000C1464();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    sub_100018C68(v22, v10);
    sub_1000C1454();
    sub_1000294BC();
    v30 = v10;
    sub_1000C1444();
    *&v40[48] = v35;
    *&v40[64] = v36;
    v41 = v37;
    v42 = v38;
    v39 = v31;
    *v40 = v32;
    *&v40[16] = v33;
    *&v40[32] = v34;
    v12 = v31;
    v28 = *&v40[24];
    v29 = *&v40[8];
    v26 = *&v40[56];
    v27 = *&v40[40];
    v13 = v32;
    v14 = *(&v36 + 1);
    v16 = v37;

    v15 = sub_100043604();

    sub_100018CBC(v22, v30);
    result = sub_100029510(&v39);
    v21 = v26;
    v20 = v27;
    v19 = v28;
    v11 = v29;
    v18 = BYTE8(v31);
    v17 = BYTE1(v37) << 8;
  }

  *a1 = v12;
  *(a1 + 8) = v18;
  *(a1 + 16) = v13;
  *(a1 + 24) = v11;
  *(a1 + 40) = v19;
  *(a1 + 56) = v20;
  *(a1 + 72) = v21;
  *(a1 + 88) = v14;
  *(a1 + 96) = v17 | v16;
  *(a1 + 104) = v15;
  return result;
}

uint64_t sub_100028FA0@<X0>(uint64_t a1@<X8>)
{
  sub_1000289F4(v6);
  if (v7)
  {

    sub_1000C21B4();
    sub_100018F90(v6, &qword_1000FC638, &unk_1000CA160);
    v4 = sub_1000C21C4();
    return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  }

  else
  {
    v2 = sub_1000C21C4();
    v3 = *(*(v2 - 8) + 56);

    return v3(a1, 1, 1, v2);
  }
}

uint64_t sub_100029204@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C4E44();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_1000289F4(v8);
  if (v8[13])
  {
    sub_1000C4E34();

    sub_1000C4E54();
    sub_100018F90(v8, &qword_1000FC638, &unk_1000CA160);
    v6 = sub_1000C4E64();
    return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }

  else
  {
    v4 = sub_1000C4E64();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

unint64_t sub_1000294BC()
{
  result = qword_1000FC640;
  if (!qword_1000FC640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC640);
  }

  return result;
}

__n128 sub_100029564(uint64_t a1, __int128 *a2)
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

uint64_t sub_100029588(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000295D0(uint64_t result, int a2, int a3)
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
      *(result + 104) = (a2 - 1);
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

unint64_t sub_10002964C(uint64_t a1)
{
  result = sub_100012A54();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000296BC()
{
  v1 = sub_1000C19B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C1464();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1000C1454();
  sub_100029844(&qword_1000FC428, &type metadata accessor for TopLevelDictionary);
  sub_1000C1444();

  if (!v0)
  {
    sub_10002988C();
    swift_allocError();
    swift_willThrow();
    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

uint64_t sub_100029844(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10002988C()
{
  result = qword_1000FC650;
  if (!qword_1000FC650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC650);
  }

  return result;
}

__n128 sub_1000298F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100029914(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 95))
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

uint64_t sub_100029970(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 94) = 0;
    *(result + 92) = 0;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 95) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 95) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000299F4(char a1)
{
  result = 26979;
  switch(a1)
  {
    case 1:
      result = 29539;
      break;
    case 2:
      result = 1751215219;
      break;
    case 3:
      result = 1935764595;
      break;
    case 4:
      result = 7566700;
      break;
    case 5:
      result = 7171187;
      break;
    case 6:
      result = 25699;
      break;
    case 7:
      result = 26728;
      break;
    case 8:
      result = 29286;
      break;
    case 9:
      result = 28006;
      break;
    case 10:
      result = 25456;
      break;
    case 11:
      result = 1836081763;
      break;
    case 12:
      result = 1768055395;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100029AE8(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FC668, &qword_1000CA390);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31[-v8];
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_10002AC6C();
  sub_1000C5D04();
  v11 = *v3;
  v12 = v3[1];
  v31[15] = 0;
  sub_1000C5AF4();
  if (!v2)
  {
    v13 = *(v3 + 16);
    v14 = *(v3 + 17);
    v31[14] = 1;
    sub_1000C5B64();
    v15 = v3[3];
    v16 = v3[4];
    v31[12] = 2;
    sub_1000C5AF4();
    v17 = v3[5];
    v18 = v3[6];
    v31[11] = 3;
    sub_1000C5AF4();
    v19 = v3[7];
    v20 = v3[8];
    v31[10] = 4;
    sub_1000C5AF4();
    v21 = v3[9];
    v22 = v3[10];
    v31[9] = 5;
    sub_1000C5AF4();
    v23 = *(v3 + 88);
    v31[8] = 6;
    sub_1000C5B04();
    v24 = *(v3 + 89);
    v31[7] = 7;
    sub_1000C5B04();
    v25 = *(v3 + 90);
    v31[6] = 8;
    sub_1000C5B04();
    v26 = *(v3 + 91);
    v31[5] = 9;
    sub_1000C5B04();
    v27 = *(v3 + 92);
    v31[4] = 10;
    sub_1000C5B04();
    v28 = *(v3 + 93);
    v31[3] = 11;
    sub_1000C5B04();
    v29 = *(v3 + 94);
    v31[2] = 12;
    sub_1000C5B04();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100029DE8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000299F4(*a1);
  v5 = v4;
  if (v3 == sub_1000299F4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000C5C04();
  }

  return v8 & 1;
}

Swift::Int sub_100029E70()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000299F4(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_100029ED4()
{
  sub_1000299F4(*v0);
  sub_1000C52C4();
}

Swift::Int sub_100029F28()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000299F4(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_100029F88@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002A118(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100029FB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000299F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10002A000@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002A118(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002A034(uint64_t a1)
{
  v2 = sub_10002AC6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002A070(uint64_t a1)
{
  v2 = sub_10002AC6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10002A0AC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10002A164(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    a2[2] = v7[2];
    a2[3] = v5;
    a2[4] = v8[0];
    *(a2 + 79) = *(v8 + 15);
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_10002A118(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F11A0;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002A164@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FC658, &qword_1000CA388);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v78 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v42 = a1;
  sub_10001530C(a1, v10);
  sub_10002AC6C();
  sub_1000C5CF4();
  if (v2)
  {
    v49 = v2;
    v41 = 0;
    v40 = 0;
    v45 = 0;
    v44 = 0;
    v46 = 2;
    v47 = 2;
    v48 = 2;
    v43 = 2;
    sub_100015F68(v42);
    v55 = 0uLL;
    v56 = 0;
    v57 = v78;
    v58 = v75;
    v59 = v76;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = v44;
    v65 = v45;
    v66 = v40;
    v67 = v41;
    v68 = 2;
    v69 = 2;
    v70 = v43;
    v71 = v48;
    v72 = v47;
    v73 = v46;
    v74 = 2;
    return sub_10002ACC0(&v55);
  }

  else
  {
    LOBYTE(v55) = 0;
    *&v39 = sub_1000C5A04();
    *(&v39 + 1) = v13;
    LOBYTE(v55) = 1;
    v38 = sub_1000C5A74();
    v78 = BYTE1(v38) & 1;
    LOBYTE(v55) = 2;
    v36 = sub_1000C5A04();
    v37 = v14;
    LOBYTE(v55) = 3;
    v34 = sub_1000C5A04();
    v35 = v15;
    LOBYTE(v55) = 4;
    v44 = sub_1000C5A04();
    v45 = v16;
    LOBYTE(v55) = 5;
    v40 = sub_1000C5A04();
    v41 = v17;
    LOBYTE(v55) = 6;
    v33 = sub_1000C5A14();
    LOBYTE(v55) = 7;
    v32 = sub_1000C5A14();
    LOBYTE(v55) = 8;
    v18 = sub_1000C5A14();
    v49 = 0;
    v43 = v18;
    LOBYTE(v55) = 9;
    v48 = sub_1000C5A14();
    v49 = 0;
    LOBYTE(v55) = 10;
    v47 = sub_1000C5A14();
    v49 = 0;
    LOBYTE(v55) = 11;
    v46 = sub_1000C5A14();
    v49 = 0;
    v77 = 12;
    v19 = sub_1000C5A14();
    v49 = 0;
    v20 = v19;
    (*(v6 + 8))(v9, v5);
    v50 = v39;
    LOBYTE(v51) = v38;
    v31 = v78;
    BYTE1(v51) = v78;
    v21 = v36;
    v22 = v37;
    *(&v51 + 1) = v36;
    *&v52 = v37;
    v23 = v34;
    v24 = v35;
    *(&v52 + 1) = v34;
    *&v53 = v35;
    *(&v53 + 1) = v44;
    *v54 = v45;
    v25 = v40;
    v26 = v41;
    *&v54[8] = v40;
    *&v54[16] = v41;
    v27 = v33;
    v54[24] = v33;
    v54[25] = v32;
    v54[26] = v43;
    v54[27] = v48;
    v54[28] = v47;
    v54[29] = v46;
    v54[30] = v20;
    sub_10002ACF0(&v50, &v55);
    sub_100015F68(v42);
    v55 = v39;
    v56 = v38;
    v57 = v31;
    v60 = v21;
    v61 = v22;
    v62 = v23;
    v63 = v24;
    v64 = v44;
    v65 = v45;
    v66 = v25;
    v67 = v26;
    v68 = v27;
    v69 = v32;
    v70 = v43;
    v71 = v48;
    v72 = v47;
    v73 = v46;
    v74 = v20;
    result = sub_10002ACC0(&v55);
    v28 = v53;
    a2[2] = v52;
    a2[3] = v28;
    a2[4] = *v54;
    *(a2 + 79) = *&v54[15];
    v29 = v51;
    *a2 = v50;
    a2[1] = v29;
  }

  return result;
}

unint64_t sub_10002AC6C()
{
  result = qword_1000FC660;
  if (!qword_1000FC660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC660);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RelayReachabilityContextDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RelayReachabilityContextDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002AE7C()
{
  result = qword_1000FC670;
  if (!qword_1000FC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC670);
  }

  return result;
}

unint64_t sub_10002AED4()
{
  result = qword_1000FC678;
  if (!qword_1000FC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC678);
  }

  return result;
}

unint64_t sub_10002AF2C()
{
  result = qword_1000FC680;
  if (!qword_1000FC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC680);
  }

  return result;
}

uint64_t TranscriptBackgroundCommandDictionary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FC688, &qword_1000CA4F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35[-v8];
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_10002B264();
  sub_1000C5D04();
  v11 = *v3;
  v12 = *(v3 + 8);
  v35[15] = 0;
  sub_1000C5B74();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v35[14] = 1;
    sub_1000C5AF4();
    v15 = v3[4];
    v16 = v3[5];
    v35[13] = 2;
    sub_1000C5AF4();
    v17 = v3[6];
    v18 = v3[7];
    v35[12] = 3;
    sub_1000C5AF4();
    v19 = v3[8];
    v20 = v3[9];
    v35[11] = 4;
    sub_1000C5AF4();
    v21 = v3[10];
    v22 = v3[11];
    v35[10] = 5;
    sub_1000C5AF4();
    v23 = v3[12];
    v24 = *(v3 + 104);
    v35[9] = 6;
    sub_1000C5B34();
    v25 = v3[14];
    v26 = *(v3 + 120);
    v35[8] = 7;
    sub_1000C5B34();
    v27 = v3[16];
    v28 = *(v3 + 136);
    v35[7] = 8;
    sub_1000C5B34();
    v29 = v3[18];
    v30 = v3[19];
    v35[6] = 9;
    sub_1000C5AF4();
    v31 = *(v3 + 160);
    v35[5] = 10;
    sub_1000C5B04();
    v32 = v3[21];
    v33 = *(v3 + 176);
    v35[4] = 11;
    sub_1000C5B24();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10002B264()
{
  result = qword_1000FC690;
  if (!qword_1000FC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC690);
  }

  return result;
}

double TranscriptBackgroundCommandDictionary.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002B760(a1, v10);
  if (!v2)
  {
    v5 = v18;
    *(a2 + 128) = v17;
    *(a2 + 144) = v5;
    *(a2 + 160) = v19;
    *(a2 + 176) = v20;
    v6 = v14;
    *(a2 + 64) = v13;
    *(a2 + 80) = v6;
    v7 = v16;
    *(a2 + 96) = v15;
    *(a2 + 112) = v7;
    v8 = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = v8;
    result = *&v11;
    v9 = v12;
    *(a2 + 32) = v11;
    *(a2 + 48) = v9;
  }

  return result;
}

uint64_t sub_10002B360(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 6580579;
    v7 = 0x72626162617274;
    if (a1 != 10)
    {
      v7 = 28786;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x73666162617274;
    v9 = 0x76706162617274;
    if (a1 != 7)
    {
      v9 = 0x6162617274;
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
    v1 = 1684628084;
    v2 = 0x736162617274;
    v3 = 0x726162617274;
    if (a1 != 4)
    {
      v3 = 0x6B6162617274;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x64696162617274;
    if (a1 != 1)
    {
      v4 = 0x64696F62617274;
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

uint64_t sub_10002B4B0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = TranscriptBackgroundCommandDictionary.CodingKeys.stringValue.getter(*a1);
  v5 = v4;
  if (v3 == TranscriptBackgroundCommandDictionary.CodingKeys.stringValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000C5C04();
  }

  return v8 & 1;
}

Swift::Int sub_10002B538()
{
  v1 = *v0;
  sub_1000C5CB4();
  TranscriptBackgroundCommandDictionary.CodingKeys.stringValue.getter(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_10002B59C()
{
  TranscriptBackgroundCommandDictionary.CodingKeys.stringValue.getter(*v0);
  sub_1000C52C4();
}

Swift::Int sub_10002B5F0()
{
  v1 = *v0;
  sub_1000C5CB4();
  TranscriptBackgroundCommandDictionary.CodingKeys.stringValue.getter(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_10002B650@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s24MessagesBlastDoorService37TranscriptBackgroundCommandDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10002B680@<X0>(uint64_t *a1@<X8>)
{
  result = TranscriptBackgroundCommandDictionary.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10002B6B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = _s24MessagesBlastDoorService37TranscriptBackgroundCommandDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002B6E8(uint64_t a1)
{
  v2 = sub_10002B264();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002B724(uint64_t a1)
{
  v2 = sub_10002B264();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002B760@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = sub_1000124CC(&qword_1000FC6B0, &qword_1000CA718);
  v5 = *(v106 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v106);
  v8 = &v36 - v7;
  v9 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_10002B264();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  v10 = v5;
  LOBYTE(v69) = 0;
  v11 = sub_1000C5A84();
  v105 = v12 & 1;
  LOBYTE(v69) = 1;
  v54 = sub_1000C5A04();
  v56 = v13;
  LOBYTE(v69) = 2;
  v14 = sub_1000C5A04();
  v55 = v15;
  v50 = v14;
  LOBYTE(v69) = 3;
  v49 = sub_1000C5A04();
  v53 = v16;
  LOBYTE(v69) = 4;
  v48 = sub_1000C5A04();
  v52 = v17;
  LOBYTE(v69) = 5;
  v47 = sub_1000C5A04();
  v51 = v18;
  LOBYTE(v69) = 6;
  v45 = sub_1000C5A44();
  v46 = 0;
  v104 = v19 & 1;
  LOBYTE(v69) = 7;
  v44 = sub_1000C5A44();
  v102 = v20 & 1;
  LOBYTE(v69) = 8;
  v43 = sub_1000C5A44();
  v100 = v21 & 1;
  LOBYTE(v69) = 9;
  v22 = sub_1000C5A04();
  v42 = v23;
  v24 = v22;
  LOBYTE(v69) = 10;
  v41 = sub_1000C5A14();
  v96 = 11;
  v46 = sub_1000C5A34();
  v26 = v25;
  (*(v10 + 8))(v8, v106);
  v97 = v26 & 1;
  *&v57 = v11;
  v38 = v105;
  BYTE8(v57) = v105;
  v27 = v54;
  v28 = v55;
  *&v58 = v54;
  *(&v58 + 1) = v56;
  *&v59 = v50;
  *(&v59 + 1) = v55;
  v29 = v53;
  *&v60 = v49;
  *(&v60 + 1) = v53;
  *&v61 = v48;
  *(&v61 + 1) = v52;
  *&v62 = v47;
  *(&v62 + 1) = v51;
  *&v63 = v45;
  v37 = v104;
  BYTE8(v63) = v104;
  *&v64 = v44;
  v39 = v102;
  BYTE8(v64) = v102;
  *&v65 = v43;
  v40 = v100;
  BYTE8(v65) = v100;
  *&v66 = v24;
  *(&v66 + 1) = v42;
  LOBYTE(v67) = v41;
  *(&v67 + 1) = v46;
  LODWORD(v106) = v97;
  v68 = v97;
  sub_10002C2B4(&v57, &v69);
  sub_100015F68(a1);
  v69 = v11;
  v70 = v38;
  v71 = v27;
  v72 = v56;
  v73 = v50;
  v74 = v28;
  v75 = v49;
  v76 = v29;
  v77 = v48;
  v78 = v52;
  v79 = v47;
  v80 = v51;
  v81 = v45;
  v82 = v37;
  *v83 = *v103;
  *&v83[3] = *&v103[3];
  v84 = v44;
  v85 = v39;
  *&v86[3] = *&v101[3];
  *v86 = *v101;
  v87 = v43;
  v88 = v40;
  *v89 = *v99;
  *&v89[3] = *&v99[3];
  v90 = v24;
  v91 = v42;
  v92 = v41;
  *&v93[3] = *&v98[3];
  *v93 = *v98;
  v94 = v46;
  v95 = v106;
  result = sub_100015058(&v69);
  v31 = v66;
  *(a2 + 128) = v65;
  *(a2 + 144) = v31;
  *(a2 + 160) = v67;
  *(a2 + 176) = v68;
  v32 = v62;
  *(a2 + 64) = v61;
  *(a2 + 80) = v32;
  v33 = v64;
  *(a2 + 96) = v63;
  *(a2 + 112) = v33;
  v34 = v58;
  *a2 = v57;
  *(a2 + 16) = v34;
  v35 = v60;
  *(a2 + 32) = v59;
  *(a2 + 48) = v35;
  return result;
}

uint64_t _s24MessagesBlastDoorService37TranscriptBackgroundCommandDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F12F8;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10002BF34()
{
  result = qword_1000FC698;
  if (!qword_1000FC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC698);
  }

  return result;
}

unint64_t sub_10002BF8C()
{
  result = qword_1000FC6A0;
  if (!qword_1000FC6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC6A0);
  }

  return result;
}

unint64_t sub_10002BFE4()
{
  result = qword_1000FC6A8;
  if (!qword_1000FC6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC6A8);
  }

  return result;
}

__n128 sub_10002C038(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_10002C074(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 177))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_10002C0D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranscriptBackgroundCommandDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TranscriptBackgroundCommandDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002C300(uint64_t a1)
{
  result = sub_1000128B0();
  *(a1 + 8) = result;
  return result;
}

void sub_10002C370(uint64_t a1@<X1>, void (*a2)(char *, char *, uint64_t)@<X8>)
{
  v111 = a2;
  v4 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v100 = &v94 - v6;
  v7 = sub_1000C5974();
  v104 = *(v7 - 8);
  v105 = v7;
  v8 = *(v104 + 64);
  v9 = __chkstk_darwin(v7);
  v99 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v103 = &v94 - v12;
  __chkstk_darwin(v11);
  v102 = &v94 - v13;
  v14 = sub_1000C4ED4();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v16);
  v101 = &v94 - v17;
  v18 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v94 - v23;
  v25 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v107 = &v94 - v27;
  v28 = sub_1000C1974();
  *&v106 = *(v28 - 8);
  v29 = *(v106 + 64);
  __chkstk_darwin(v28);
  v31 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000C4FC4();
  v108 = *(v32 - 8);
  v109 = v32;
  v33 = *(v108 + 64);
  __chkstk_darwin(v32);
  v110 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000C1984();
  if (v36 >> 60 == 15)
  {
    goto LABEL_16;
  }

  v37 = v36 >> 62;
  if ((v36 >> 62) > 1)
  {
    if (v37 != 2)
    {
      goto LABEL_15;
    }

    v39 = *(v35 + 16);
    v38 = *(v35 + 24);
    v40 = __OFSUB__(v38, v39);
    v41 = v38 - v39;
    if (!v40)
    {
      if (v41 >= 1)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v37)
  {
    if (!__OFSUB__(HIDWORD(v35), v35))
    {
      if (HIDWORD(v35) - v35 >= 1)
      {
        goto LABEL_9;
      }

LABEL_15:
      sub_100018CBC(v35, v36);
LABEL_16:
      sub_10002D3E8(a1, v22);
      sub_1000C1994();
      if (v2)
      {
        sub_100018F90(v22, &qword_1000FC3B8, &qword_1000C9788);
      }

      else
      {
        sub_1000C2174();
      }

      return;
    }

    goto LABEL_32;
  }

  if (!BYTE6(v36))
  {
    goto LABEL_15;
  }

LABEL_9:
  v97 = v35;
  v98 = v36;
  isa = sub_1000C1544().super.isa;
  v43 = [(objc_class *)isa _imOptionallyDecompressData];

  v44 = sub_1000C1564();
  v46 = v45;

  v47 = v46 >> 62;
  v96 = v46;
  v95 = v44;
  if ((v46 >> 62) > 1)
  {
    if (v47 != 2)
    {
      goto LABEL_28;
    }

    v49 = *(v44 + 16);
    v48 = *(v44 + 24);
    v40 = __OFSUB__(v48, v49);
    v50 = v48 - v49;
    if (!v40)
    {
      if (v50 > 0)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }

    goto LABEL_33;
  }

  if (v47)
  {
    if (!__OFSUB__(HIDWORD(v44), v44))
    {
      if (HIDWORD(v44) - v44 > 0)
      {
        goto LABEL_22;
      }

LABEL_28:
      v78 = v106;
      (*(v106 + 104))(v31, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v28);
      sub_1000C1964();
      (*(v78 + 8))(v31, v28);
      v79 = v110;
      sub_1000C4FB4();
      sub_100014F70();
      v80 = sub_1000C5704();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_1000C94D0;
      v83 = v107;
      v82 = v108;
      v111 = *(v108 + 16);
      v84 = v109;
      v111(v107, v79, v109);
      (*(v82 + 56))(v83, 0, 1, v84);
      v85 = sub_1000C4A84();
      v87 = v86;
      sub_100018F90(v83, &qword_1000FC438, &unk_1000C9DC0);
      *(v81 + 56) = &type metadata for String;
      *(v81 + 64) = sub_100014FBC();
      *(v81 + 32) = v85;
      *(v81 + 40) = v87;
      sub_1000C5554();
      sub_1000C1A44();

      sub_10002D458(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      v111(v88, v79, v84);
      swift_willThrow();
      sub_100018CD0(v95, v96);
      sub_100018CBC(v97, v98);
      (*(v82 + 8))(v79, v84);
      return;
    }

LABEL_34:
    __break(1u);
    return;
  }

  if (!BYTE6(v46))
  {
    goto LABEL_28;
  }

LABEL_22:
  v51 = sub_1000C1464();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  v54 = sub_1000C1454();
  sub_10002D4A0();
  v94 = v54;
  sub_1000C1444();
  if (v2)
  {
    v112 = v2;
    swift_errorRetain();
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    v55 = v102;
    v56 = v105;
    if (swift_dynamicCast())
    {

      v57 = v103;
      v58 = v104;
      (*(v104 + 32))(v103, v55, v56);
      v59 = v106;
      (*(v106 + 104))(v31, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v28);
      sub_1000C1964();
      (*(v59 + 8))(v31, v28);
      v60 = *(v58 + 16);
      v60(v99, v57, v56);
      sub_1000C4FA4();
      sub_100014F70();
      v61 = sub_1000C5704();
      v111 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v62 = swift_allocObject();
      v106 = xmmword_1000C94D0;
      *(v62 + 16) = xmmword_1000C94D0;
      v63 = v100;
      v60(v100, v57, v56);
      (*(v104 + 56))(v63, 0, 1, v56);
      v64 = sub_1000C4A84();
      v66 = v65;
      sub_100018F90(v63, &qword_1000FC430, &unk_1000C9B00);
      *(v62 + 56) = &type metadata for String;
      v67 = sub_100014FBC();
      *(v62 + 64) = v67;
      *(v62 + 32) = v64;
      *(v62 + 40) = v66;
      sub_1000C5554();
      sub_1000C1A44();

      v68 = sub_1000C5704();
      v69 = swift_allocObject();
      *(v69 + 16) = v106;
      v71 = v107;
      v70 = v108;
      v111 = *(v108 + 16);
      v72 = v109;
      v111(v107, v110, v109);
      (*(v70 + 56))(v71, 0, 1, v72);
      v73 = sub_1000C4A84();
      v75 = v74;
      sub_100018F90(v71, &qword_1000FC438, &unk_1000C9DC0);
      *(v69 + 56) = &type metadata for String;
      *(v69 + 64) = v67;
      *(v69 + 32) = v73;
      *(v69 + 40) = v75;
      sub_1000C5554();
      sub_1000C1A44();

      sub_10002D458(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      v76 = v110;
      v111(v77, v110, v72);
      swift_willThrow();

      sub_100018CD0(v95, v96);
      sub_100018CBC(v97, v98);
      (*(v70 + 8))(v76, v72);
      (*(v104 + 8))(v103, v105);
    }

    else
    {

      sub_100014F70();
      v89 = sub_1000C5704();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_1000C94D0;
      v112 = v2;
      v91 = sub_1000C4A84();
      v93 = v92;
      *(v90 + 56) = &type metadata for String;
      *(v90 + 64) = sub_100014FBC();
      *(v90 + 32) = v91;
      *(v90 + 40) = v93;
      sub_1000C5554();
      sub_1000C1A44();

      swift_getErrorValue();
      swift_getDynamicType();
      v112 = 0;
      v113 = 0xE000000000000000;
      sub_1000C5944(22);

      v112 = 0xD000000000000014;
      v113 = 0x80000001000D5330;
      v116._countAndFlagsBits = sub_1000C5D34();
      sub_1000C52E4(v116);

      sub_10002D458(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      sub_100018CBC(v97, v98);
      sub_100018CD0(v95, v96);
    }
  }

  else
  {
    v109 = v114;
    v110 = v113;
    v108 = v115;
    sub_10002D3E8(a1, v24);
    sub_1000C1994();
    sub_1000C2174();
    sub_100018CBC(v97, v98);
    sub_100018CD0(v95, v96);
  }
}

uint64_t sub_10002D264@<X0>(uint64_t a1@<X2>, void (*a2)(char *, char *, uint64_t)@<X8>)
{
  v5 = sub_1000C19B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C1464();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1000C1454();
  sub_10002D458(&qword_1000FC428, &type metadata accessor for TopLevelDictionary);
  sub_1000C1444();

  if (!v2)
  {
    sub_10002C370(a1, a2);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_10002D3E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002D458(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10002D4A0()
{
  result = qword_1000FC6C0;
  if (!qword_1000FC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC6C0);
  }

  return result;
}

__n128 sub_10002D4F4(uint64_t a1, __int128 *a2)
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
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10002D520(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 119))
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

uint64_t sub_10002D568(uint64_t result, int a2, int a3)
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
    *(result + 118) = 0;
    *(result + 116) = 0;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 119) = 1;
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

    *(result + 119) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002D5E0(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FC6E0, &qword_1000CA868);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_10002DF18();
  sub_1000C5D04();
  *&v21 = *v3;
  LOBYTE(v18[0]) = 0;
  sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
  sub_100015FB4(&qword_1000FC380);
  sub_1000C5BB4();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v12 = *(v3 + 16);
    LOBYTE(v21) = 1;
    sub_1000C5B84();
    v13 = *(v3 + 72);
    v26[2] = *(v3 + 56);
    v26[3] = v13;
    v27[0] = *(v3 + 88);
    *(v27 + 15) = *(v3 + 103);
    v14 = *(v3 + 40);
    v26[0] = *(v3 + 24);
    v26[1] = v14;
    v15 = *(v3 + 72);
    v23 = *(v3 + 56);
    v24 = v15;
    v25[0] = *(v3 + 88);
    *(v25 + 15) = *(v3 + 103);
    v16 = *(v3 + 40);
    v21 = *(v3 + 24);
    v22 = v16;
    v20 = 2;
    sub_10002ACF0(v26, v18);
    sub_10002E028();
    sub_1000C5BB4();
    v18[2] = v23;
    v18[3] = v24;
    *v19 = v25[0];
    *&v19[15] = *(v25 + 15);
    v18[0] = v21;
    v18[1] = v22;
    sub_10002ACC0(v18);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10002D880(char *a1, char *a2)
{
  if (qword_1000CA9C0[*a1] == qword_1000CA9C0[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000C5C04();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_10002D8E8()
{
  v1 = *v0;
  sub_1000C5CB4();
  v2 = qword_1000CA9C0[v1];
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_10002D944()
{
  v1 = qword_1000CA9C0[*v0];
  sub_1000C52C4();
}

Swift::Int sub_10002D984()
{
  v1 = *v0;
  sub_1000C5CB4();
  v2 = qword_1000CA9C0[v1];
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_10002D9DC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002DB6C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10002DA40@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002DB6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002DA74(uint64_t a1)
{
  v2 = sub_10002DF18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002DAB0(uint64_t a1)
{
  v2 = sub_10002DF18();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10002DAEC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002DBB8(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = *v13;
    *(a2 + 111) = *&v13[15];
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

uint64_t sub_10002DB6C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F1438;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002DBB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = sub_1000124CC(&qword_1000FC6C8, &qword_1000CA858);
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v44);
  v8 = &v21 - v7;
  v9 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_10002DF18();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  v10 = v5;
  v24 = a2;
  sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
  LOBYTE(v25) = 0;
  sub_100015FB4(&qword_1000FC3A8);
  v11 = v44;
  sub_1000C5AC4();
  v12 = v27[0];
  LOBYTE(v27[0]) = 1;
  v22 = sub_1000C5A94();
  v23 = v13;
  v33 = 2;
  sub_10002DF6C();
  sub_1000C5AC4();
  (*(v10 + 8))(v8, v11);
  v41 = v36;
  v42 = v37;
  v43[0] = v38[0];
  *(v43 + 15) = *(v38 + 15);
  v39 = v34;
  v40 = v35;
  v15 = v22;
  v14 = v23;
  *&v25 = v12;
  *(&v25 + 1) = v22;
  *v26 = v23;
  *&v26[8] = v34;
  *&v26[24] = v35;
  *&v26[40] = v36;
  *&v26[87] = *(v38 + 15);
  *&v26[72] = v38[0];
  *&v26[56] = v37;
  sub_10002DFC0(&v25, v27);
  sub_100015F68(a1);
  v30 = v41;
  v31 = v42;
  *v32 = v43[0];
  *&v32[15] = *(v43 + 15);
  v28 = v39;
  v27[0] = v12;
  v27[1] = v15;
  v27[2] = v14;
  v29 = v40;
  result = sub_10002DFF8(v27);
  v17 = *&v26[64];
  v18 = v24;
  *(v24 + 64) = *&v26[48];
  *(v18 + 80) = v17;
  *(v18 + 96) = *&v26[80];
  *(v18 + 111) = *&v26[95];
  v19 = *v26;
  *v18 = v25;
  *(v18 + 16) = v19;
  v20 = *&v26[32];
  *(v18 + 32) = *&v26[16];
  *(v18 + 48) = v20;
  return result;
}

unint64_t sub_10002DF18()
{
  result = qword_1000FC6D0;
  if (!qword_1000FC6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC6D0);
  }

  return result;
}

unint64_t sub_10002DF6C()
{
  result = qword_1000FC6D8;
  if (!qword_1000FC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC6D8);
  }

  return result;
}

unint64_t sub_10002E028()
{
  result = qword_1000FC6E8;
  if (!qword_1000FC6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC6E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RelayReachabilityRequestDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RelayReachabilityRequestDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002E1D0()
{
  result = qword_1000FC6F0;
  if (!qword_1000FC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC6F0);
  }

  return result;
}

unint64_t sub_10002E228()
{
  result = qword_1000FC6F8;
  if (!qword_1000FC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC6F8);
  }

  return result;
}

unint64_t sub_10002E280()
{
  result = qword_1000FC700;
  if (!qword_1000FC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC700);
  }

  return result;
}

uint64_t Message.init(messageDictionary:validatorContext:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[6] = a3;
  v6 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v20 - v10;
  v12 = sub_1000C3244();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[3] = type metadata accessor for MessageDictionary();
  v23[4] = &off_1000F5D48;
  v17 = sub_10002E5DC(v23);
  sub_10002E640(a1, v17);
  sub_1000B0354(v23, v16);
  if (v3)
  {
    sub_100018F90(a2, &qword_1000FC3B8, &qword_1000C9788);
    return sub_10002E6A4(a1);
  }

  else
  {
    v21 = v13;
    v22 = v12;
    v19 = _swiftEmptyArrayStorage;
    if (*a1)
    {
      v19 = *a1;
    }

    v20[2] = v19;
    sub_10002D3E8(a2, v11);

    v20[1] = sub_1000C3204();
    v20[0] = sub_1000C3214();
    sub_1000C3234();
    sub_1000A89BC();
    sub_1000C4DF4();
    sub_100018F90(a2, &qword_1000FC3B8, &qword_1000C9788);
    sub_10002E6A4(a1);
    return (*(v21 + 8))(v16, v22);
  }
}

uint64_t *sub_10002E5DC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10002E640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageDictionary();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E6A4(uint64_t a1)
{
  v2 = type metadata accessor for MessageDictionary();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for DoubleValue(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DoubleValue(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DoubleValue(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

void *sub_10002E770@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10002E7A4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

void *sub_10002E7A4(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_10001530C(a1, a1[3]);
  sub_1000C5CE4();
  if (v1)
  {
    sub_100015F68(a1);
  }

  else
  {
    sub_10001530C(v9, v9[3]);
    v5 = sub_1000C5C14();
    v10 = 0;
    v7 = sub_10009B378(v5, v6);

    if (v7)
    {
      v4 = v10;
    }

    else
    {
      v4 = 0;
    }

    sub_100015F68(v9);
    sub_100015F68(a1);
  }

  return v4;
}

uint64_t sub_10002E9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72[4] = a1;
  v72[3] = a2;
  v2 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v82 = v72 - v4;
  v5 = sub_1000C4FC4();
  v83 = *(v5 - 8);
  v84 = v5;
  v6 = *(v83 + 64);
  __chkstk_darwin(v5);
  v85 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C31B4();
  v77 = *(v8 - 8);
  v78 = v8;
  v9 = *(v77 + 64);
  __chkstk_darwin(v8);
  v76 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C3194();
  v74 = *(v11 - 8);
  v75 = v11;
  v12 = *(v74 + 64);
  __chkstk_darwin(v11);
  v73 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C2E14();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v72[2] = v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000C31F4();
  v81 = *(v17 - 8);
  v18 = *(v81 + 64);
  v19 = __chkstk_darwin(v17);
  v72[1] = v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v22 = __chkstk_darwin(v21);
  v79 = v72 - v23;
  __chkstk_darwin(v22);
  v25 = v72 - v24;
  v26 = sub_1000C4EB4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = v72 - v32;
  sub_1000C1DC4();
  sub_1000C1DB4();
  v87 = v33;
  v88 = v27;
  (*(v27 + 16))(v31, v33, v26);
  v34 = sub_1000C5014();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = v86;
  sub_1000C5004();
  if (v37)
  {
    v92 = v37;
    swift_errorRetain();
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    v38 = swift_dynamicCast();
    v80 = v26;
    if (v38)
    {

      v39 = *(v81 + 32);
      v86 = v17;
      v39(v79, v25, v17);
      v40 = v73;
      sub_1000C31D4();
      v41 = sub_1000C3184();
      v43 = v42;
      (*(v74 + 8))(v40, v75);
      v90 = v41;
      v91 = v43;
      v93._countAndFlagsBits = 8250;
      v93._object = 0xE200000000000000;
      sub_1000C52E4(v93);
      v44 = v76;
      sub_1000C31C4();
      v45 = sub_1000C31A4();
      v47 = v46;
      (*(v77 + 8))(v44, v78);
      v94._countAndFlagsBits = v45;
      v94._object = v47;
      sub_1000C52E4(v94);

      if (sub_1000C31E4())
      {
        v89._countAndFlagsBits = 0;
        v89._object = 0xE000000000000000;
        sub_1000C5944(16);

        strcpy(&v89, ". Extra Info: ");
        HIBYTE(v89._object) = -18;
        v48 = sub_1000C51A4();
        v50 = v49;

        v95._countAndFlagsBits = v48;
        v95._object = v50;
        sub_1000C52E4(v95);

        sub_1000C52E4(v89);
      }

      v51 = v85;
      sub_1000C4FB4();
      sub_100014F70();
      v52 = sub_1000C56E4();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1000C94D0;
      v54 = v82;
      v55 = v83;
      v78 = *(v83 + 16);
      v56 = v84;
      v78(v82, v51, v84);
      (*(v55 + 56))(v54, 0, 1, v56);
      v57 = sub_1000C4A84();
      v59 = v58;
      sub_10002FA20(v54);
      *(v53 + 56) = &type metadata for String;
      *(v53 + 64) = sub_100014FBC();
      *(v53 + 32) = v57;
      *(v53 + 40) = v59;
      sub_1000C5554();
      sub_1000C1A44();

      sub_10002FA88(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      v78(v60, v51, v56);
      swift_willThrow();
      (*(v55 + 8))(v51, v56);
      (*(v81 + 8))(v79, v86);
      (*(v88 + 8))(v87, v80);
    }

    else
    {

      v62 = v85;
      sub_1000C4FB4();
      sub_100014F70();
      v81 = sub_1000C56E4();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1000C94D0;
      v64 = v82;
      v65 = v83;
      v86 = *(v83 + 16);
      v66 = v84;
      v86(v82, v62, v84);
      (*(v65 + 56))(v64, 0, 1, v66);
      v67 = sub_1000C4A84();
      v69 = v68;
      sub_10002FA20(v64);
      *(v63 + 56) = &type metadata for String;
      *(v63 + 64) = sub_100014FBC();
      *(v63 + 32) = v67;
      *(v63 + 40) = v69;
      sub_1000C5554();
      v70 = v81;
      sub_1000C1A44();

      sub_10002FA88(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      v86(v71, v62, v66);
      swift_willThrow();

      (*(v65 + 8))(v62, v66);
      return (*(v88 + 8))(v87, v80);
    }
  }

  else
  {
    v86 = v17;

    sub_1000C4FE4();

    sub_1000C1DD4();
    sub_1000C1DA4();
    return (*(v88 + 8))(v87, v26);
  }
}

uint64_t sub_10002FA20(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002FA88(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_10002FAD0(uint64_t a1, uint64_t a2)
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

uint64_t sub_10002FAEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_10002FB34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10002FBA0()
{
  result = qword_1000FC710;
  if (!qword_1000FC710)
  {
    sub_1000C40A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC710);
  }

  return result;
}

Swift::Int sub_10002FC10()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C5CC4(v1);
  return sub_1000C5CD4();
}

Swift::Int sub_10002FC84()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C5CC4(v1);
  return sub_1000C5CD4();
}

uint64_t sub_10002FCC8@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v1 = sub_1000124CC(&qword_1000FC718, &qword_1000CAB38);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v67 - v3;
  v5 = sub_1000C13C4();
  v80 = *(v5 - 8);
  v6 = v80[8];
  __chkstk_darwin(v5);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000124CC(&qword_1000FC3E8, &unk_1000C9E10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v67 - v11;
  v13 = sub_1000C14E4();
  v14 = *(v13 - 8);
  v15 = v14[8];
  __chkstk_darwin(v13);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v87;
  v19 = sub_100030590();
  v20 = v18;
  if (v18)
  {
    sub_100030780();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
  }

  v23 = v19;
  v83 = v5;
  v84 = v17;
  v77 = v13;
  v75 = v4;
  v79 = v8;
  if (v19 >> 62)
  {
LABEL_51:
    v24 = sub_1000C59A4();
    v25 = v77;
    if (v24)
    {
      goto LABEL_5;
    }

LABEL_52:

    sub_100030780();
    swift_allocError();
    *v66 = 1;
    return swift_willThrow();
  }

  v24 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v25 = v77;
  if (!v24)
  {
    goto LABEL_52;
  }

LABEL_5:
  v26 = 0;
  v76 = v23 & 0xFFFFFFFFFFFFFF8;
  v86 = (v14 + 6);
  v87 = v23 & 0xC000000000000001;
  v81 = v12;
  v82 = (v14 + 4);
  v73 = v20;
  v74 = (v80 + 6);
  v71 = (v80 + 1);
  v72 = (v80 + 4);
  v80 = v14 + 1;
  v85 = v24;
  while (1)
  {
    if (v87)
    {
      v27 = sub_1000C5954();
    }

    else
    {
      if (v26 >= *(v76 + 16))
      {
        goto LABEL_50;
      }

      v27 = *(v23 + 8 * v26 + 32);
    }

    v14 = v27;
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v29 = [v27 value];
    sub_1000C5224();
    v20 = v30;

    sub_1000C14C4();

    if ((*v86)(v12, 1, v25) != 1)
    {
      break;
    }

    sub_100018F90(v12, &qword_1000FC3E8, &unk_1000C9E10);
LABEL_7:
    ++v26;
    if (v28 == v85)
    {
      goto LABEL_52;
    }
  }

  v31 = v12;
  v32 = v23;
  v33 = v84;
  (*v82)(v84, v31, v25);
  v34 = sub_1000C14B4();
  v20 = v83;
  if (!v35)
  {
    (*v80)(v33, v25);

    goto LABEL_18;
  }

  v36 = v34;
  v37 = v35;
  v38 = v75;
  sub_1000C13B4();
  if ((*v74)(v38, 1, v20) == 1)
  {
    v20 = v77;
    (*v80)(v33, v77);

    v39 = v38;
    v25 = v20;
    sub_100018F90(v39, &qword_1000FC718, &qword_1000CAB38);
LABEL_18:
    v23 = v32;
    v12 = v81;
    goto LABEL_7;
  }

  (*v72)(v79, v38, v20);
  if ((v36 != *v78 || v37 != v78[1]) && (sub_1000C5C04() & 1) == 0)
  {
    v25 = v77;
    if (v36 == v78[2] && v37 == v78[3])
    {
    }

    else
    {
      v54 = sub_1000C5C04();

      if ((v54 & 1) == 0)
      {

        v20 = v83;
        v43 = v84;
        v23 = v32;
        goto LABEL_47;
      }
    }

    v55 = sub_1000307D4(v78[8], v78[9]);
    v23 = v32;
    if (v56)
    {
      v90 = v55;
      v91 = v56;
      v88 = 32;
      v89 = 0xE100000000000000;
      v69 = sub_100018D24();
      v57 = sub_1000C58B4();

      v12 = v81;
      if (v57[2])
      {
        v58 = v57[5];
        v68 = v57[4];

        v90 = v68;
        v91 = v58;
        v88 = 44;
        v89 = 0xE100000000000000;
        v44 = sub_1000C58B4();

        if (v44[2] == 2)
        {
          v59 = v44[4];
          v60 = v44[5];
          v90 = 0;

          v61 = v59;
          v62 = v73;
          v63 = sub_10009B378(v61, v60);
          v73 = v62;

          if (v63)
          {
            if (v44[2] < 2uLL)
            {
              goto LABEL_54;
            }

LABEL_29:
            v50 = v44[6];
            v51 = v44[7];

            v90 = 0;
            v52 = v73;
            v53 = sub_10009B378(v50, v51);
            v73 = v52;

            if (v53)
            {

              sub_1000C4094();
              v64 = v83;
              v65 = v84;

              (*v71)(v79, v64);
              return (*v80)(v65, v25);
            }

            goto LABEL_43;
          }
        }
      }

LABEL_42:

LABEL_43:

      v20 = v83;
      v43 = v84;
      goto LABEL_48;
    }

    v20 = v83;
    v43 = v84;
LABEL_47:
    v12 = v81;
    goto LABEL_48;
  }

  v40 = v78;
  v41 = sub_1000307D4(v78[6], v78[7]);
  v25 = v77;
  if (v42)
  {
    v43 = v84;
    v23 = v32;
    goto LABEL_26;
  }

  v41 = sub_1000307D4(v40[4], v40[5]);
  v23 = v32;
  if (!v42)
  {

    v43 = v84;
    goto LABEL_47;
  }

  v43 = v84;
LABEL_26:
  v12 = v81;
  v90 = v41;
  v91 = v42;
  v88 = 44;
  v89 = 0xE100000000000000;
  sub_100018D24();
  v44 = sub_1000C58B4();

  if (v44[2] != 2)
  {

    v20 = v83;
LABEL_48:
    (*v71)(v79, v20);
    (*v80)(v43, v25);
    goto LABEL_7;
  }

  v45 = v44[4];
  v46 = v44[5];
  v90 = 0;

  v47 = v45;
  v48 = v73;
  v49 = sub_10009B378(v47, v46);
  v73 = v48;

  if (!v49)
  {
    goto LABEL_42;
  }

  if (v44[2] >= 2uLL)
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

unint64_t sub_100030590()
{
  v0 = objc_opt_self();
  isa = sub_1000C1544().super.isa;
  v11 = 0;
  v2 = [v0 contactsWithData:isa error:&v11];

  v3 = v11;
  if (!v2)
  {
    v4 = v11;
    sub_1000C1474();

LABEL_11:
    swift_willThrow();
    return v4;
  }

  sub_10001D1A8(0, &qword_1000FC730, CNContact_ptr);
  v4 = sub_1000C53A4();
  v5 = v3;

  if (v4 >> 62)
  {
    if (sub_1000C59A4())
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    sub_100030780();
    swift_allocError();
    *v9 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_1000C5954();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v6 = *(v4 + 32);
  }

  v7 = v6;

  v8 = [v7 urlAddresses];
  sub_1000124CC(&qword_1000FC738, &unk_1000CAB40);
  v4 = sub_1000C53A4();

  return v4;
}

unint64_t sub_100030780()
{
  result = qword_1000FC720;
  if (!qword_1000FC720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC720);
  }

  return result;
}

void *sub_1000307D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1394();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v39 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v39 - v13;
  __chkstk_darwin(v12);
  v16 = &v39 - v15;
  v17 = sub_1000C13A4();
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  v40 = v11;
  v41 = v14;
  sub_10001D1A8(0, &qword_1000FC728, NSPredicate_ptr);
  sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000C94D0;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100014FBC();
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;

  result = sub_1000C54E4();
  v49 = result;
  v21 = v18;
  v47 = *(v18 + 16);
  if (!v47)
  {
    v23 = &_swiftEmptyArrayStorage;
LABEL_14:

    if (v23[2])
    {
      v34 = v40;
      (*(v5 + 16))(v40, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

      v35 = v41;
      (*(v5 + 32))(v41, v34, v4);
      v36 = sub_1000C1384();
      v38 = v37;

      (*(v5 + 8))(v35, v4);
      if (v38)
      {
        return v36;
      }
    }

    else
    {
    }

    return 0;
  }

  v22 = 0;
  v42 = (v5 + 8);
  v45 = (v5 + 32);
  v46 = v5 + 16;
  v23 = &_swiftEmptyArrayStorage;
  v43 = v5;
  v44 = v4;
  while (v22 < *(v21 + 16))
  {
    v24 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v25 = *(v5 + 72);
    (*(v5 + 16))(v16, v21 + v24 + v25 * v22, v4);
    v26 = sub_1000C1374();
    v27 = [v49 evaluateWithObject:v26];

    if (v27)
    {
      v28 = v21;
      v29 = *v45;
      (*v45)(v48, v16, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100045AC0(0, v23[2] + 1, 1);
        v23 = v50;
      }

      v32 = v23[2];
      v31 = v23[3];
      if (v32 >= v31 >> 1)
      {
        sub_100045AC0(v31 > 1, v32 + 1, 1);
        v23 = v50;
      }

      v23[2] = v32 + 1;
      v33 = v23 + v24 + v32 * v25;
      v4 = v44;
      result = (v29)(v33, v48, v44);
      v21 = v28;
      v5 = v43;
    }

    else
    {
      result = (*v42)(v16, v4);
    }

    if (v47 == ++v22)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for MapPreviewUnpacker.MapPreviewUnpackerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MapPreviewUnpacker.MapPreviewUnpackerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100030D4C()
{
  result = qword_1000FC740;
  if (!qword_1000FC740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC740);
  }

  return result;
}

unint64_t sub_100030DB4()
{
  result = qword_1000FC748;
  if (!qword_1000FC748)
  {
    sub_1000C45D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC748);
  }

  return result;
}

uint64_t sub_100030E0C@<X0>(uint64_t a1@<X8>)
{
  v20[3] = a1;
  v2 = sub_1000124CC(&qword_1000FC750, &qword_1000CAC78);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v20 - v4;
  v6 = sub_1000C45B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v20 - v12;
  sub_100014F70();
  v14 = sub_1000C5814();
  sub_1000C5554();
  sub_1000C1A44();

  v15 = sub_1000C1464();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_1000C1454();
  sub_1000310F8();
  sub_1000C1444();

  if (!v1)
  {
    sub_1000C45A4();
    v19 = *(v7 + 48);
    if (v19(v5, 1, v6) == 1)
    {
      (*(v7 + 104))(v13, enum case for CollaborationNoticeAction.ActionType.invalid(_:), v6);
      if (v19(v5, 1, v6) != 1)
      {
        sub_10003114C(v5);
      }
    }

    else
    {
      (*(v7 + 32))(v13, v5, v6);
    }

    (*(v7 + 16))(v11, v13, v6);
    sub_1000C45C4();
    return (*(v7 + 8))(v13, v6);
  }

  return result;
}

unint64_t sub_1000310F8()
{
  result = qword_1000FC758;
  if (!qword_1000FC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC758);
  }

  return result;
}

uint64_t sub_10003114C(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FC750, &qword_1000CAC78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003120C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v44 = a3;
  v45 = a2;
  v46 = a4;
  v5 = sub_1000124CC(&qword_1000FC768, &qword_1000CAD30);
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  __chkstk_darwin(v5);
  v42 = &v34 - v7;
  v40 = sub_1000C4CF4();
  v38 = *(v40 - 8);
  v8 = *(v38 + 64);
  __chkstk_darwin(v40);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000C14E4();
  v39 = *(v36 - 8);
  v11 = *(v39 + 64);
  __chkstk_darwin(v36);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C4CC4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000C5514();
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v20 = sub_1000C5724();
  v21 = *(v15 + 16);
  v41 = a1;
  v21(v18, a1, v14);
  v37 = v19;
  if (os_log_type_enabled(v20, v19))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v35 = v5;
    v24 = v23;
    v47 = v23;
    *v22 = 136446210;
    sub_1000C4CB4();
    sub_1000C4CE4();
    (*(v38 + 8))(v10, v40);
    sub_10003A4D0(&qword_1000FC778, &type metadata accessor for URL);
    v25 = v36;
    v26 = sub_1000C5BE4();
    v28 = v27;
    (*(v39 + 8))(v13, v25);
    (*(v15 + 8))(v18, v14);
    v29 = sub_10008AC30(v26, v28, &v47);

    *(v22 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v20, v37, "BlastDoor processing thumbnail for video: %{public}s", v22, 0xCu);
    sub_100015F68(v24);
    v5 = v35;
  }

  else
  {

    v30 = (*(v15 + 8))(v18, v14);
  }

  __chkstk_darwin(v30);
  v32 = v44;
  v31 = v45;
  *(&v34 - 4) = v41;
  *(&v34 - 3) = v32;
  *(&v34 - 2) = v31;
  sub_1000124CC(&qword_1000FC770, &qword_1000CAD38);
  (*(v43 + 104))(v42, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v5);
  return sub_1000C5434();
}

uint64_t sub_1000316D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v35 = a2;
  v36 = a4;
  v38 = a3;
  v34 = a1;
  v39 = sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
  v4 = *(v39 - 8);
  v37 = *(v4 + 64);
  __chkstk_darwin(v39);
  v6 = &v28 - v5;
  v31 = &v28 - v5;
  v32 = sub_1000C26A4();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v32);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C4CC4();
  v29 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000124CC(&qword_1000FC788, &qword_1000CAD48);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v28 - v15;
  v33 = &v28 - v15;
  v17 = sub_1000C5404();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v12, v35, v9);
  v18 = v32;
  (*(v7 + 16))(&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v32);
  v19 = v4;
  (*(v4 + 16))(v6, v34, v39);
  v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v7 + 80) + v21 + 8) & ~*(v7 + 80);
  v23 = (v8 + *(v4 + 80) + v22) & ~*(v4 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v10 + 32))(v24 + v20, v12, v29);
  v25 = v38;
  *(v24 + v21) = v38;
  (*(v7 + 32))(v24 + v22, v30, v18);
  (*(v19 + 32))(v24 + v23, v31, v39);
  v26 = v25;
  sub_10005BDF4(0, 0, v33, &unk_1000CAD58, v24);
}

uint64_t sub_100031A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v7[9] = *(v9 + 64);
  v7[10] = swift_task_alloc();
  v10 = sub_1000C26A4();
  v7[11] = v10;
  v11 = *(v10 - 8);
  v7[12] = v11;
  v7[13] = *(v11 + 64);
  v7[14] = swift_task_alloc();
  v12 = sub_1000C4CF4();
  v7[15] = v12;
  v13 = *(v12 - 8);
  v7[16] = v13;
  v14 = *(v13 + 64) + 15;
  v7[17] = swift_task_alloc();
  v15 = sub_1000C14E4();
  v7[18] = v15;
  v16 = *(v15 - 8);
  v7[19] = v16;
  v17 = *(v16 + 64) + 15;
  v7[20] = swift_task_alloc();
  v18 = sub_1000C4CC4();
  v7[21] = v18;
  v19 = *(v18 - 8);
  v7[22] = v19;
  v7[23] = *(v19 + 64);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();

  return _swift_task_switch(sub_100031CEC, 0, 0);
}

uint64_t sub_100031CEC()
{
  v54 = v0;
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[3];
  v5 = sub_1000C5514();
  v0[26] = sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v6 = sub_1000C5724();
  v50 = *(v3 + 16);
  (v50)(v1, v4, v2);
  v7 = os_log_type_enabled(v6, v5);
  v8 = v0[25];
  v9 = v0[21];
  v10 = v0[22];
  if (v7)
  {
    v12 = v0[19];
    v11 = v0[20];
    v13 = v0[17];
    v44 = v0[18];
    v51 = v5;
    v14 = v0[16];
    v41 = v0[15];
    buf = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v53 = v48;
    *buf = 136446210;
    v42 = v9;
    sub_1000C4CB4();
    sub_1000C4CE4();
    (*(v14 + 8))(v13, v41);
    sub_10003A4D0(&qword_1000FC778, &type metadata accessor for URL);
    v15 = sub_1000C5BE4();
    v17 = v16;
    (*(v12 + 8))(v11, v44);
    (*(v10 + 8))(v8, v42);
    v18 = sub_10008AC30(v15, v17, &v53);

    *(buf + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v51, "Task running for video: %{public}s)", buf, 0xCu);
    sub_100015F68(v48);
  }

  else
  {

    (*(v10 + 8))(v8, v9);
  }

  v19 = v0[21];
  v20 = v0[22];
  v43 = v19;
  v45 = v0[24];
  v21 = v0[14];
  v39 = v0[23];
  v40 = v0[13];
  v23 = v0[11];
  v22 = v0[12];
  v24 = v0[10];
  bufa = v21;
  v49 = v24;
  v25 = v0[7];
  v26 = v0[8];
  v28 = v0[5];
  v27 = v0[6];
  v29 = v0[3];
  v52 = v0[4];
  v50();
  (*(v22 + 16))(v21, v28, v23);
  (*(v26 + 16))(v24, v27, v25);
  v30 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v31 = (v39 + *(v22 + 80) + v30) & ~*(v22 + 80);
  v32 = (v40 + *(v26 + 80) + v31) & ~*(v26 + 80);
  v33 = swift_allocObject();
  v0[27] = v33;
  *(v33 + 16) = v52;
  (*(v20 + 32))(v33 + v30, v45, v43);
  (*(v22 + 32))(v33 + v31, bufa, v23);
  (*(v26 + 32))(v33 + v32, v49, v25);
  v34 = async function pointer to File.withResource<A>(_:)[1];
  v35 = v52;
  v36 = swift_task_alloc();
  v0[28] = v36;
  *v36 = v0;
  v36[1] = sub_100032114;
  v37 = v0[3];

  return File.withResource<A>(_:)();
}

uint64_t sub_100032114()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_1000322D8;
  }

  else
  {
    v5 = *(v2 + 216);

    v4 = sub_100032230;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100032230()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000322D8()
{
  v2 = v0[26];
  v1 = v0[27];

  v3 = sub_1000C5534();
  v4 = sub_1000C5724();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v0[29];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v3, "Caught error: %@", v6, 0xCu);
    sub_100018F90(v7, &qword_1000FC468, &qword_1000CAD70);
  }

  v9 = v0[29];
  v11 = v0[6];
  v10 = v0[7];

  v0[2] = v9;
  sub_1000C5424();
  v13 = v0[24];
  v12 = v0[25];
  v14 = v0[20];
  v15 = v0[17];
  v16 = v0[14];
  v17 = v0[10];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100032464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_10003248C, 0, 0);
}

uint64_t sub_10003248C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = sub_10003AD80();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTu[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
  *v6 = v0;
  v6[1] = sub_1000325C8;
  v7 = *(v0 + 24);

  return _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lF(v7, v2, v3, 0, 0, &unk_1000CAD80, v4, &type metadata for () + 8);
}

uint64_t sub_1000325C8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_100032700, 0, 0);
  }

  else
  {
    v5 = *(v2 + 64);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_100032700()
{
  v1 = v0[8];
  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100032764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[57] = a5;
  v6[58] = a6;
  v6[55] = a2;
  v6[56] = a3;
  v7 = *(*(sub_1000124CC(&qword_1000FC770, &qword_1000CAD38) - 8) + 64) + 15;
  v6[59] = swift_task_alloc();
  v8 = sub_1000124CC(&qword_1000FC798, &unk_1000CAD90);
  v6[60] = v8;
  v9 = *(v8 - 8);
  v6[61] = v9;
  v10 = *(v9 + 64) + 15;
  v6[62] = swift_task_alloc();
  v11 = sub_1000C2764();
  v6[63] = v11;
  v12 = *(v11 - 8);
  v6[64] = v12;
  v13 = *(v12 + 64) + 15;
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v14 = sub_1000C2684();
  v6[67] = v14;
  v15 = *(v14 - 8);
  v6[68] = v15;
  v16 = *(v15 + 64) + 15;
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();
  v17 = sub_1000C2664();
  v6[71] = v17;
  v18 = *(v17 - 8);
  v6[72] = v18;
  v19 = *(v18 + 64) + 15;
  v6[73] = swift_task_alloc();
  v6[74] = swift_task_alloc();
  v20 = *(*(sub_1000124CC(&qword_1000FC460, &qword_1000C9D30) - 8) + 64) + 15;
  v6[75] = swift_task_alloc();
  v21 = sub_1000C4D84();
  v6[76] = v21;
  v22 = *(v21 - 8);
  v6[77] = v22;
  v23 = *(v22 + 64) + 15;
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v24 = sub_1000C54F4();
  v6[80] = v24;
  v25 = *(v24 - 8);
  v6[81] = v25;
  v26 = *(v25 + 64) + 15;
  v6[82] = swift_task_alloc();
  v6[83] = swift_task_alloc();
  v27 = sub_1000C2724();
  v6[84] = v27;
  v28 = *(v27 - 8);
  v6[85] = v28;
  v29 = *(v28 + 64) + 15;
  v6[86] = swift_task_alloc();
  v6[87] = swift_task_alloc();
  v6[88] = swift_task_alloc();
  v30 = sub_1000C2744();
  v6[89] = v30;
  v31 = *(v30 - 8);
  v6[90] = v31;
  v32 = *(v31 + 64) + 15;
  v6[91] = swift_task_alloc();
  v33 = sub_1000C26B4();
  v6[92] = v33;
  v34 = *(v33 - 8);
  v6[93] = v34;
  v35 = *(v34 + 64) + 15;
  v6[94] = swift_task_alloc();
  v6[95] = swift_task_alloc();
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  v6[98] = swift_task_alloc();
  v36 = sub_1000C14E4();
  v6[99] = v36;
  v37 = *(v36 - 8);
  v6[100] = v37;
  v38 = *(v37 + 64) + 15;
  v6[101] = swift_task_alloc();
  v39 = sub_1000C4CF4();
  v6[102] = v39;
  v40 = *(v39 - 8);
  v6[103] = v40;
  v41 = *(v40 + 64) + 15;
  v6[104] = swift_task_alloc();

  return _swift_task_switch(sub_100032CEC, 0, 0);
}

uint64_t sub_100032CEC()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[100];
  v6 = v0[99];
  v7 = v0[55];
  sub_1000C4CB4();
  sub_1000C4CE4();
  (*(v2 + 8))(v1, v3);
  v0[105] = sub_1000124CC(&qword_1000FC7A0, &qword_1000CADA0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000C94D0;
  *(v8 + 32) = sub_1000C5224();
  *(v8 + 40) = v9;
  *(v8 + 72) = &type metadata for Bool;
  *(v8 + 48) = 1;
  sub_10006B6DC(v8);
  swift_setDeallocating();
  sub_100018F90(v8 + 32, &qword_1000FC7A8, &qword_1000CADA8);
  swift_deallocClassInstance();
  v10 = objc_allocWithZone(AVURLAsset);
  sub_1000C1494(v11);
  v13 = v12;
  isa = sub_1000C5174().super.isa;

  v15 = [v10 initWithURL:v13 options:isa];
  v0[106] = v15;

  (*(v5 + 8))(v4, v6);
  v16 = sub_1000C5514();
  v0[107] = sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v17 = sub_1000C5724();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v17, v16, "Created asset: %{public}@", v18, 0xCu);
    sub_100018F90(v19, &qword_1000FC468, &qword_1000CAD70);
  }

  sub_1000C5514();
  v21 = sub_1000C5724();
  sub_1000C1A54();

  v0[2] = v0;
  v0[7] = v0 + 50;
  v0[3] = sub_1000330D8;
  v22 = swift_continuation_init();
  v0[17] = sub_1000124CC(&qword_1000FC7B0, &qword_1000CADB0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10003A3CC;
  v0[13] = &unk_1000F3A88;
  v0[14] = v22;
  [v15 loadTracksWithMediaType:AVMediaTypeVideo completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000330D8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 864) = v3;
  if (v3)
  {
    v4 = *(v1 + 848);

    v5 = sub_100038638;
  }

  else
  {
    v5 = sub_100033220;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100033220()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 400);
  sub_1000C5514();
  v3 = sub_1000C5724();
  sub_1000C1A54();

  if (v2 >> 62)
  {
    v5 = sub_1000C59A4();
    v4 = sub_1000C59A4();
    *(v0 + 872) = v5;
    if (v4)
    {
LABEL_3:
      v6 = __OFSUB__(v4, 1);
      v7 = v4 - 1;
      if (v6)
      {
        __break(1u);
      }

      else if ((v2 & 0xC000000000000001) == 0)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v7 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v8 = *(v2 + 8 * v7 + 32);
LABEL_8:
          v9 = v8;

          goto LABEL_11;
        }

        __break(1u);
      }

      v8 = sub_1000C5954();
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = v4;
    *(v0 + 872) = v4;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_11:
  *(v0 + 880) = v9;
  v10 = *(v0 + 856);
  v11 = sub_1000C5514();
  v12 = sub_1000C5724();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    *v13 = 134349056;
    *(v13 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v12, v11, "Tracks found: %{public}ld)", v13, 0xCu);
  }

  v14 = *(v0 + 848);
  if (v9)
  {
    v15 = *(v0 + 784);
    v16 = *(v0 + 744);
    v17 = *(v0 + 736);
    v18 = *(v0 + 448);
    v19 = objc_opt_self();
    v20 = v9;
    *(v0 + 1484) = [v19 videoAssetIsSpatial:v14];
    sub_1000C2694();
    v21 = *(v16 + 88);
    *(v0 + 888) = v21;
    *(v0 + 896) = (v16 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
    v22 = v21(v15, v17);
    *(v0 + 1460) = v22;
    v23 = enum case for VideoPreview.FrameConstraints.singleFrame(_:);
    *(v0 + 1464) = enum case for VideoPreview.FrameConstraints.singleFrame(_:);
    if (v22 == v23)
    {
      v24 = *(v0 + 784);
      v25 = *(v0 + 736);
      v26 = *(v0 + 728);
      v27 = *(v0 + 720);
      v28 = *(v0 + 712);
      v29 = *(*(v0 + 744) + 96);
      *(v0 + 904) = v29;
      v29(v24, v25);
      (*(v27 + 32))(v26, v24, v28);
      sub_1000124CC(&qword_1000FC7E0, &qword_1000CADD8);
      v30 = sub_1000C1674();
      *(v0 + 912) = v30;
      v31 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
      v32 = swift_task_alloc();
      *(v0 + 920) = v32;
      *v32 = v0;
      v32[1] = sub_100033B2C;

      return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 368, v30, 0, 0);
    }

    if (v22 == enum case for VideoPreview.FrameConstraints.multiFrame(_:))
    {
      v34 = *(v0 + 784);
      v35 = *(v0 + 704);
      v36 = *(v0 + 680);
      v37 = *(v0 + 672);
      v38 = *(*(v0 + 744) + 96);
      v38(v34, *(v0 + 736));
      (*(v36 + 32))(v35, v34, v37);
      if (sub_1000C26F4() >= 1)
      {
        v39 = *(v0 + 704);
        if (sub_1000C2704() >= 1)
        {
          v40 = *(v0 + 704);
          v41 = *(v0 + 680);
          v42 = *(v0 + 672);
          v43 = sub_1000C26F4();
          v44 = sub_1000C2704();
          v45 = sub_1000C26C4();
          (*(v41 + 8))(v40, v42);
          *(v0 + 1000) = v44;
          *(v0 + 992) = v43;
          *(v0 + 984) = v45;
          *(v0 + 976) = v38;
          v46 = *(v0 + 880);
          v47 = async function pointer to AVAssetTrack.info.getter[1];
          v48 = swift_task_alloc();
          *(v0 + 1008) = v48;
          *v48 = v0;
          v48[1] = sub_1000341F4;
          v49 = *(v0 + 664);

          return AVAssetTrack.info.getter(v49);
        }
      }

      v50 = *(v0 + 848);
      v51 = *(v0 + 704);
      v52 = *(v0 + 680);
      v53 = *(v0 + 672);

      sub_1000C4FC4();
      sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion);
      v55 = swift_allocError();
      sub_1000C4FB4();
      v82 = v55;
      swift_willThrow();
    }

    else
    {
      v50 = *(v0 + 848);
      v51 = *(v0 + 784);
      v52 = *(v0 + 744);
      v53 = *(v0 + 736);

      sub_1000C4FC4();
      sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion);
      v54 = swift_allocError();
      sub_1000C4FB4();
      v82 = v54;
      swift_willThrow();
    }

    (*(v52 + 8))(v51, v53);
  }

  else
  {

    sub_1000C4FC4();
    sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion);
    v33 = swift_allocError();
    sub_1000C4FB4();
    v82 = v33;
    swift_willThrow();
  }

  v56 = *(v0 + 832);
  v57 = *(v0 + 808);
  v58 = *(v0 + 784);
  v59 = *(v0 + 776);
  v60 = *(v0 + 768);
  v61 = *(v0 + 760);
  v62 = *(v0 + 752);
  v63 = *(v0 + 728);
  v64 = *(v0 + 704);
  v65 = *(v0 + 696);
  v68 = *(v0 + 688);
  v69 = *(v0 + 664);
  v70 = *(v0 + 656);
  v71 = *(v0 + 632);
  v72 = *(v0 + 624);
  v73 = *(v0 + 600);
  v74 = *(v0 + 592);
  v75 = *(v0 + 584);
  v76 = *(v0 + 560);
  v77 = *(v0 + 552);
  v78 = *(v0 + 528);
  v79 = *(v0 + 520);
  v80 = *(v0 + 496);
  v81 = *(v0 + 472);
  **(v0 + 464) = v82;

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_100033B2C()
{
  v2 = *v1;
  v3 = *(*v1 + 920);
  v4 = *v1;
  v2[116] = v0;

  v5 = v2[114];
  if (v0)
  {
    v6 = v2[106];

    v7 = sub_100038834;
  }

  else
  {

    v7 = sub_100033CAC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100033CAC()
{
  v1 = *(v0 + 880);
  *(v0 + 936) = *(v0 + 368);
  sub_1000124CC(&qword_1000FC7E8, &unk_1000CADE0);
  v2 = sub_1000C1694();
  *(v0 + 952) = v2;
  v3 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
  v4 = swift_task_alloc();
  *(v0 + 960) = v4;
  *v4 = v0;
  v4[1] = sub_100033DBC;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 144, v2, 0, 0);
}

uint64_t sub_100033DBC()
{
  v2 = *v1;
  v3 = *(*v1 + 960);
  v4 = *v1;
  v2[121] = v0;

  v5 = v2[119];
  if (v0)
  {
    v6 = v2[106];

    v7 = sub_100038A58;
  }

  else
  {

    v7 = sub_100033F3C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000341F4()
{
  v2 = *v1;
  v3 = *(*v1 + 1008);
  v8 = *v1;
  *(*v1 + 1016) = v0;

  if (v0)
  {
    v4 = *(v2 + 880);
    v5 = *(v2 + 848);

    v6 = sub_100038C7C;
  }

  else
  {
    v6 = sub_100034350;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100034350()
{
  v1 = v0[107];
  v2 = sub_1000C5514();
  v3 = sub_1000C5724();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v0[125];
    v5 = v0[124];
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v3, v2, "thumbnailFitPxSize: %f x %f", v6, 0x16u);
  }

  v7 = async function pointer to AVAsset.isAutoLoop.getter[1];
  v8 = swift_task_alloc();
  v0[128] = v8;
  *v8 = v0;
  v8[1] = sub_1000344AC;
  v9 = v0[106];

  return AVAsset.isAutoLoop.getter();
}

uint64_t sub_1000344AC(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1024);
  v8 = *v2;
  *(v3 + 1485) = a1;
  *(v3 + 1032) = v1;

  if (v1)
  {
    v5 = *(v3 + 848);

    v6 = sub_100038E78;
  }

  else
  {
    v6 = sub_100034604;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100034604()
{
  v1 = *(v0 + 848);

  v2 = objc_allocWithZone(AVAssetReader);
  *(v0 + 408) = 0;
  v3 = [v2 initWithAsset:v1 error:v0 + 408];
  *(v0 + 1040) = v3;
  v4 = *(v0 + 408);
  v5 = *(v0 + 848);
  if (!v3)
  {
    v46 = *(v0 + 880);
    v47 = *(v0 + 664);
    v48 = *(v0 + 648);
    v49 = *(v0 + 640);
    v50 = v4;
    v51 = sub_1000C1474();

    v254 = v51;
    swift_willThrow();

    (*(v48 + 8))(v47, v49);
    goto LABEL_32;
  }

  v6 = *(v0 + 992);
  v7 = *(v0 + 840);
  v8 = v4;

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000CACB0;
  *(v9 + 32) = sub_1000C5224();
  *(v9 + 40) = v10;
  *(v9 + 72) = sub_1000124CC(&qword_1000FC7B8, &qword_1000CADB8);
  *(v9 + 48) = &off_1000F14A0;
  *(v9 + 80) = sub_1000C5224();
  *(v9 + 88) = v11;
  if ((v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_63;
  }

  v12 = *(v0 + 992);
  if (v12 <= -9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v13 = *(v0 + 1000);
  *(v9 + 120) = &type metadata for Int;
  *(v9 + 96) = v12;
  *(v9 + 128) = sub_1000C5224();
  *(v9 + 136) = v14;
  if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v15 = *(v0 + 1000);
  if (v15 <= -9.22337204e18)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  if (v15 >= 9.22337204e18)
  {
    goto LABEL_68;
  }

  v16 = *(v0 + 896);
  v17 = *(v0 + 888);
  v18 = *(v0 + 776);
  v19 = *(v0 + 736);
  v20 = *(v0 + 448);
  *(v9 + 168) = &type metadata for Int;
  *(v9 + 144) = v15;
  v21 = sub_10006B6DC(v9);
  swift_setDeallocating();
  sub_1000124CC(&qword_1000FC7A8, &qword_1000CADA8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000C2694();
  v22 = v17(v18, v19);
  v23 = enum case for VideoPreview.FrameConstraints.multiFrame(_:);
  *(v0 + 1468) = enum case for VideoPreview.FrameConstraints.multiFrame(_:);
  if (v22 == v23)
  {
    v24 = *(v0 + 776);
    v25 = *(v0 + 696);
    v26 = v0 + 680;
    v27 = *(v0 + 680);
    v28 = (v0 + 672);
    v29 = *(v0 + 672);
    v30 = *(v0 + 744) + 96;
    (*(v0 + 976))(v24, *(v0 + 736));
    (*(v27 + 32))(v25, v24, v29);
    if (sub_1000C26D4() >= 1)
    {
      v31 = *(v0 + 696);
      v32 = sub_1000C5224();
      v34 = v33;
      v35 = sub_1000C26D4();
      *(v0 + 328) = &type metadata for Int;
      *(v0 + 304) = v35;
      sub_10001D8C8((v0 + 304), (v0 + 336));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10003B408((v0 + 336), v32, v34, isUniquelyReferenced_nonNull_native);
    }

    v37 = (v0 + 696);
    *(v0 + 1048) = v21;
    v38 = *(v0 + 696);
    if (sub_1000C26C4() >= 1)
    {
      v39 = *v37;
      if (sub_1000C26E4())
      {
        sub_1000124CC(&qword_1000FC7D8, &qword_1000CADD0);
        v40 = sub_1000C16B4();
        *(v0 + 1056) = v40;
        v41 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
        v42 = swift_task_alloc();
        *(v0 + 1064) = v42;
        *v42 = v0;
        v42[1] = sub_100035B44;
        v43 = *(v0 + 848);
        v44 = v0 + 1384;
        v45 = v40;
LABEL_23:

        return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v44, v45, 0, 0);
      }
    }
  }

  else
  {
    v37 = (v0 + 776);
    v28 = (v0 + 736);
    v26 = v0 + 744;
  }

  (*(*v26 + 8))(*v37, *v28);
  v255 = *(v0 + 1468);
  v52 = *(v0 + 896);
  v53 = *(v0 + 888);
  v54 = *(v0 + 880);
  v55 = *(v0 + 768);
  v56 = *(v0 + 736);
  v57 = *(v0 + 448);
  v58 = objc_allocWithZone(AVAssetReaderTrackOutput);
  v59 = v54;
  isa = sub_1000C5174().super.isa;

  v61 = [v58 initWithTrack:v59 outputSettings:isa];
  *(v0 + 1080) = v61;

  sub_1000C2694();
  if (v53(v55, v56) == v255)
  {
    v62 = *(v0 + 768);
    v63 = *(v0 + 688);
    v64 = *(v0 + 680);
    v65 = *(v0 + 672);
    v66 = *(v0 + 744) + 96;
    (*(v0 + 976))(v62, *(v0 + 736));
    (*(v64 + 32))(v63, v62, v65);
    [v61 setAppliesPreferredTrackTransform:sub_1000C2714() & 1];
    if (sub_1000C26D4() == 1)
    {
      [v61 setLimitsImageQueueCapacityToOneFrame:1];
    }

    (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));
  }

  else
  {
    (*(*(v0 + 744) + 8))(*(v0 + 768), *(v0 + 736));
    [v61 setAppliesPreferredTrackTransform:1];
  }

  v67 = *(v0 + 1040);
  v68 = *(v0 + 1464);
  v69 = *(v0 + 896);
  v70 = *(v0 + 888);
  v71 = *(v0 + 760);
  v72 = *(v0 + 744);
  v73 = *(v0 + 736);
  v74 = *(v0 + 448);
  [v61 setAlwaysCopiesSampleData:0];
  [v67 addOutput:v61];
  sub_1000C2694();
  LODWORD(v74) = v70(v71, v73);
  (*(v72 + 8))(v71, v73);
  if (v74 == v68)
  {
    v75 = *(v0 + 880);
    sub_1000124CC(&qword_1000FC7C8, &qword_1000CADC0);
    v76 = sub_1000C1684();
    *(v0 + 1088) = v76;
    v77 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
    v78 = swift_task_alloc();
    *(v0 + 1096) = v78;
    *v78 = v0;
    v78[1] = sub_100037068;
    v44 = v0 + 1456;
    v45 = v76;
    goto LABEL_23;
  }

  v79 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v80 = [v79 copyNextSampleBuffer];
  if (v80)
  {
    v81 = *(v0 + 984);
    v82 = *(v0 + 1464);
    v83 = *(v0 + 1460);
    v84 = v80;
    v85 = v84;
    if (v83 != v82 && !v81)
    {
LABEL_29:
      v86 = *(v0 + 1080);
      v87 = *(v0 + 880);
      v88 = *(v0 + 848);
      v89 = *(v0 + 664);
      v90 = *(v0 + 648);
      v91 = *(v0 + 640);

      (*(v90 + 8))(v89, v91);
      goto LABEL_30;
    }

    v120 = 0;
    v121 = *(v0 + 616);
    v186 = (v121 + 16);
    v187 = (*(v0 + 648) + 16);
    v122 = *(v0 + 576);
    v123 = *(v0 + 544);
    v124 = *(v0 + 512);
    v184 = (v123 + 16);
    v185 = (v122 + 16);
    v188 = (*(v0 + 744) + 8);
    v178 = (v124 + 16);
    v179 = (*(v0 + 488) + 8);
    v180 = (v124 + 8);
    v181 = (v123 + 8);
    v182 = (v122 + 8);
    v183 = (v121 + 8);
    if (CMSampleBufferGetNumSamples(v84))
    {
      goto LABEL_38;
    }

    do
    {
LABEL_37:
    }

    while (!CMSampleBufferGetNumSamples(v85));
    while (1)
    {
LABEL_38:

      v125 = sub_1000C55B4();
      if (!v125)
      {
        v160 = *(v0 + 1080);
        v161 = *(v0 + 1040);
        v162 = *(v0 + 880);
        v252 = *(v0 + 848);
        v244 = *(v0 + 664);
        v163 = *(v0 + 648);
        v164 = *(v0 + 640);
        sub_1000C4FC4();
        sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion);
        v165 = swift_allocError();
        sub_1000C4FB4();
        v254 = v165;
        swift_willThrow();

        (*(v163 + 8))(v244, v164);
        goto LABEL_32;
      }

      v126 = v125;
      v127 = *(v0 + 856);
      v128 = sub_1000C5514();
      v129 = sub_1000C5724();
      if (os_log_type_enabled(v129, v128))
      {
        v130 = swift_slowAlloc();
        *v130 = 134217984;
        *(v130 + 4) = v120;
        _os_log_impl(&_mh_execute_header, v129, v128, "BlastDoor processing thumbnail %ld", v130, 0xCu);
      }

      v221 = *(v0 + 1485);
      v249 = *(v0 + 1464);
      v237 = *(v0 + 888);
      v242 = *(v0 + 896);
      v225 = *(v0 + 1484);
      v217 = *(v0 + 872);
      v229 = *(v0 + 752);
      v233 = *(v0 + 736);
      v131 = *(v0 + 664);
      v132 = *(v0 + 656);
      v133 = *(v0 + 640);
      v134 = *(v0 + 632);
      v191 = *(v0 + 624);
      v192 = *(v0 + 608);
      v257 = v120;
      v135 = *(v0 + 600);
      v136 = *(v0 + 592);
      v194 = *(v0 + 584);
      v197 = *(v0 + 568);
      v190 = *(v0 + 560);
      v201 = *(v0 + 552);
      v205 = *(v0 + 536);
      v209 = *(v0 + 528);
      v213 = *(v0 + 448);

      sub_1000C55C4();
      sub_1000C5654();
      type metadata accessor for CVBuffer(0);
      v137 = sub_1000C4D54();
      (*(*(v137 - 8) + 56))(v135, 1, 1, v137);
      v189 = v126;
      sub_1000C4D64();
      v138 = *v187;
      (*v187)(v132, v131, v133);
      sub_1000C2654();
      v138(v132, v131, v133);
      sub_1000C2674();
      (*v186)(v191, v134, v192);
      (*v185)(v194, v136, v197);
      (*v184)(v201, v190, v205);
      sub_1000C2754();
      sub_1000C2694();
      v139 = v237(v229, v233);
      v140 = *(v0 + 1080);
      if (v139 == v249)
      {
        v206 = *(v0 + 1040);
        v210 = *(v0 + 880);
        v166 = *(v0 + 856);
        v222 = *(v0 + 848);
        v253 = *(v0 + 640);
        v259 = *(v0 + 664);
        v239 = *(v0 + 632);
        v245 = *(v0 + 648);
        v230 = *(v0 + 592);
        v234 = *(v0 + 608);
        v226 = *(v0 + 568);
        v214 = *(v0 + 536);
        v218 = *(v0 + 560);
        v167 = *(v0 + 528);
        v168 = *(v0 + 520);
        v170 = *(v0 + 496);
        v169 = *(v0 + 504);
        v171 = *(v0 + 472);
        v198 = *(v0 + 456);
        v202 = *(v0 + 480);
        (*v188)(*(v0 + 752), *(v0 + 736));
        sub_1000C5514();
        v172 = sub_1000C5724();
        sub_1000C1A54();

        (*v178)(v168, v167, v169);
        sub_10003A4D0(&qword_1000FC7C0, &type metadata accessor for VideoPreview);
        sub_1000C3FF4();
        sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
        sub_1000C5414();
        (*v179)(v170, v202);
        *(v0 + 424) = 0;
        sub_1000C5424();

        (*v180)(v167, v169);
        (*v181)(v218, v214);
        (*v182)(v230, v226);
        (*v183)(v239, v234);
        (*(v245 + 8))(v259, v253);
        goto LABEL_30;
      }

      (*v188)(*(v0 + 752), *(v0 + 736));
      v141 = [v140 copyNextSampleBuffer];
      v142 = v257 + 1;
      if (__OFADD__(v257, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v143 = v141;
      v258 = v257 + 1;
      if (v141)
      {
        v144 = *(v0 + 1460) != *(v0 + 1464) && v142 == *(v0 + 984);
        v145 = v144;
      }

      else
      {
        v145 = 1;
      }

      v146 = *(v0 + 496);
      v147 = *(v0 + 472);
      v250 = *(v0 + 480);
      v148 = *(v0 + 456);
      (*v178)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
      sub_10003A4D0(&qword_1000FC7C0, &type metadata accessor for VideoPreview);
      sub_1000C3FF4();
      sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
      sub_1000C5414();
      (*v179)(v146, v250);
      v149 = *(v0 + 632);
      v243 = *(v0 + 592);
      v251 = *(v0 + 608);
      v238 = *(v0 + 568);
      v150 = *(v0 + 560);
      v151 = *(v0 + 536);
      v152 = *(v0 + 528);
      v153 = *(v0 + 504);
      if (v145)
      {
        v154 = *(v0 + 632);
        v155 = *(v0 + 456);
        *(v0 + 416) = 0;
        sub_1000C5424();

        (*v180)(v152, v153);
        (*v181)(v150, v151);
        (*v182)(v243, v238);
        (*v183)(v154, v251);
      }

      else
      {

        (*v180)(v152, v153);
        (*v181)(v150, v151);
        (*v182)(v243, v238);
        (*v183)(v149, v251);
      }

      if (!v143)
      {
        break;
      }

      v156 = *(v0 + 984);
      v157 = *(v0 + 1464);
      v158 = *(v0 + 1460);
      v159 = v143;
      v85 = v159;
      v144 = v158 == v157;
      v120 = v258;
      if (!v144 && v258 == v156)
      {
        goto LABEL_29;
      }

      if (!CMSampleBufferGetNumSamples(v159))
      {
        goto LABEL_37;
      }
    }

    v173 = *(v0 + 1080);
    v174 = *(v0 + 1040);
    v175 = *(v0 + 880);
    v176 = *(v0 + 848);
    (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));

LABEL_30:
    v92 = *(v0 + 832);
    v93 = *(v0 + 808);
    v94 = *(v0 + 784);
    v95 = *(v0 + 776);
    v96 = *(v0 + 768);
    v97 = *(v0 + 760);
    v98 = *(v0 + 752);
    v99 = *(v0 + 728);
    v100 = *(v0 + 704);
    v101 = *(v0 + 696);
    v195 = *(v0 + 688);
    v199 = *(v0 + 664);
    v203 = *(v0 + 656);
    v207 = *(v0 + 632);
    v211 = *(v0 + 624);
    v215 = *(v0 + 600);
    v219 = *(v0 + 592);
    v223 = *(v0 + 584);
    v227 = *(v0 + 560);
    v231 = *(v0 + 552);
    v235 = *(v0 + 528);
    v240 = *(v0 + 520);
    v246 = *(v0 + 496);
    v256 = *(v0 + 472);

    v102 = *(v0 + 8);
    goto LABEL_33;
  }

  v103 = *(v0 + 1080);
  v104 = *(v0 + 1040);
  v105 = *(v0 + 880);
  v247 = *(v0 + 848);
  v106 = *(v0 + 664);
  v107 = *(v0 + 648);
  v108 = *(v0 + 640);
  sub_1000C4FC4();
  sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion);
  v109 = swift_allocError();
  sub_1000C4FB4();
  v254 = v109;
  swift_willThrow();

  (*(v107 + 8))(v106, v108);
LABEL_32:
  v110 = *(v0 + 832);
  v111 = *(v0 + 808);
  v112 = *(v0 + 784);
  v113 = *(v0 + 776);
  v114 = *(v0 + 768);
  v115 = *(v0 + 760);
  v116 = *(v0 + 752);
  v117 = *(v0 + 728);
  v118 = *(v0 + 704);
  v119 = *(v0 + 696);
  v193 = *(v0 + 688);
  v196 = *(v0 + 664);
  v200 = *(v0 + 656);
  v204 = *(v0 + 632);
  v208 = *(v0 + 624);
  v212 = *(v0 + 600);
  v216 = *(v0 + 592);
  v220 = *(v0 + 584);
  v224 = *(v0 + 560);
  v228 = *(v0 + 552);
  v232 = *(v0 + 528);
  v236 = *(v0 + 520);
  v241 = *(v0 + 496);
  v248 = *(v0 + 472);
  **(v0 + 464) = v254;

  v102 = *(v0 + 8);
LABEL_33:

  return v102();
}

uint64_t sub_100035B44()
{
  v2 = *v1;
  v3 = *(*v1 + 1064);
  v4 = *v1;
  v2[134] = v0;

  v5 = v2[132];
  if (v0)
  {
    v6 = v2[131];

    v7 = sub_10003909C;
  }

  else
  {

    v7 = sub_100035CC0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100035CC0()
{
  v243 = v0;
  v1 = *(v0 + 696);
  v2 = *(v0 + 1400);
  v3 = *(v0 + 1392);
  *(v0 + 1408) = *(v0 + 1384);
  *(v0 + 1416) = v3;
  *(v0 + 1424) = v2;
  Seconds = CMTimeGetSeconds((v0 + 1408));
  v5 = sub_1000C26C4();
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
LABEL_53:
    __break(1u);
  }

  v6 = Seconds / ((v5 - 1) + 0.1);
  if (v6 <= 0.0)
  {
    (*(*(v0 + 680) + 8))(*(v0 + 696), *(v0 + 672));
    v21 = *(v0 + 1048);
  }

  else
  {
    v7 = *(v0 + 680);
    CMTimeMakeWithSeconds(&v240, v6, 1000);
    epoch = v240.epoch;
    v9 = *&v240.timescale;
    *(v0 + 1432) = v240.value;
    *(v0 + 1440) = v9;
    *(v0 + 1448) = epoch;
    v10 = CMTimeCopyAsDictionary((v0 + 1432), kCFAllocatorDefault);
    v11 = (v7 + 8);
    v12 = *(v0 + 1048);
    if (!v10)
    {
      v73 = *(v0 + 1040);
      v74 = *(v0 + 880);
      v75 = *(v0 + 848);
      v208 = *(v0 + 672);
      v213 = *(v0 + 696);
      v76 = *(v0 + 648);
      v219 = *(v0 + 640);
      v226 = *(v0 + 664);

      sub_1000C4FC4();
      sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion);
      v77 = swift_allocError();
      sub_1000C4FB4();
      v236 = v77;
      swift_willThrow();

      (*v11)(v213, v208);
      (*(v76 + 8))(v226, v219);
      goto LABEL_22;
    }

    v13 = v10;
    v14 = *(v0 + 696);
    v15 = *(v0 + 672);
    v16 = sub_1000C5224();
    v18 = v17;
    *(v0 + 264) = sub_10001D1A8(0, &qword_1000FC478, NSDictionary_ptr);
    *(v0 + 240) = v13;
    sub_10001D8C8((v0 + 240), (v0 + 272));
    v19 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v240.value = v12;
    sub_10003B408((v0 + 272), v16, v18, isUniquelyReferenced_nonNull_native);

    (*v11)(v14, v15);
  }

  v234 = *(v0 + 1468);
  v22 = *(v0 + 896);
  v23 = *(v0 + 888);
  v24 = *(v0 + 880);
  v25 = *(v0 + 768);
  v26 = *(v0 + 736);
  v27 = *(v0 + 448);
  v28 = objc_allocWithZone(AVAssetReaderTrackOutput);
  v29 = v24;
  isa = sub_1000C5174().super.isa;

  v31 = [v28 initWithTrack:v29 outputSettings:isa];
  *(v0 + 1080) = v31;

  sub_1000C2694();
  if (v23(v25, v26) == v234)
  {
    v32 = *(v0 + 768);
    v33 = *(v0 + 688);
    v34 = *(v0 + 680);
    v35 = *(v0 + 672);
    v36 = *(v0 + 744) + 96;
    (*(v0 + 976))(v32, *(v0 + 736));
    (*(v34 + 32))(v33, v32, v35);
    [v31 setAppliesPreferredTrackTransform:sub_1000C2714() & 1];
    if (sub_1000C26D4() == 1)
    {
      [v31 setLimitsImageQueueCapacityToOneFrame:1];
    }

    (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));
  }

  else
  {
    (*(*(v0 + 744) + 8))(*(v0 + 768), *(v0 + 736));
    [v31 setAppliesPreferredTrackTransform:1];
  }

  v37 = *(v0 + 1040);
  v38 = *(v0 + 1464);
  v39 = *(v0 + 896);
  v40 = *(v0 + 888);
  v41 = *(v0 + 760);
  v42 = *(v0 + 744);
  v43 = *(v0 + 736);
  v44 = *(v0 + 448);
  [v31 setAlwaysCopiesSampleData:0];
  [v37 addOutput:v31];
  sub_1000C2694();
  LODWORD(v44) = v40(v41, v43);
  (*(v42 + 8))(v41, v43);
  if (v44 == v38)
  {
    v45 = *(v0 + 880);
    sub_1000124CC(&qword_1000FC7C8, &qword_1000CADC0);
    v46 = sub_1000C1684();
    *(v0 + 1088) = v46;
    v47 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
    v48 = swift_task_alloc();
    *(v0 + 1096) = v48;
    *v48 = v0;
    v48[1] = sub_100037068;

    return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 1456, v46, 0, 0);
  }

  v49 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v50 = [v49 copyNextSampleBuffer];
  if (v50)
  {
    v51 = *(v0 + 984);
    v52 = *(v0 + 1464);
    v53 = *(v0 + 1460);
    v54 = v50;
    v55 = v54;
    if (v53 == v52 || v51)
    {
      v95 = 0;
      v96 = *(v0 + 616);
      v162 = (v96 + 16);
      v163 = (*(v0 + 648) + 16);
      v97 = *(v0 + 576);
      v98 = *(v0 + 544);
      v99 = *(v0 + 512);
      v160 = (v98 + 16);
      v161 = (v97 + 16);
      v164 = (*(v0 + 744) + 8);
      v154 = (v99 + 16);
      v155 = (*(v0 + 488) + 8);
      v156 = (v99 + 8);
      v157 = (v98 + 8);
      v158 = (v97 + 8);
      v159 = (v96 + 8);
      if (CMSampleBufferGetNumSamples(v54))
      {
        goto LABEL_28;
      }

      do
      {
LABEL_27:
      }

      while (!CMSampleBufferGetNumSamples(v55));
      while (1)
      {
LABEL_28:

        v100 = sub_1000C55B4();
        if (!v100)
        {
          v136 = *(v0 + 1080);
          v137 = *(v0 + 1040);
          v138 = *(v0 + 880);
          v232 = *(v0 + 848);
          v223 = *(v0 + 664);
          v139 = *(v0 + 648);
          v140 = *(v0 + 640);
          sub_1000C4FC4();
          sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion);
          v141 = swift_allocError();
          sub_1000C4FB4();
          v236 = v141;
          swift_willThrow();

          (*(v139 + 8))(v223, v140);
          goto LABEL_22;
        }

        v101 = v100;
        v102 = *(v0 + 856);
        v103 = sub_1000C5514();
        v104 = sub_1000C5724();
        if (os_log_type_enabled(v104, v103))
        {
          v105 = swift_slowAlloc();
          *v105 = 134217984;
          *(v105 + 4) = v95;
          _os_log_impl(&_mh_execute_header, v104, v103, "BlastDoor processing thumbnail %ld", v105, 0xCu);
        }

        v197 = *(v0 + 1485);
        v229 = *(v0 + 1464);
        v215 = *(v0 + 888);
        v221 = *(v0 + 896);
        v201 = *(v0 + 1484);
        v193 = *(v0 + 872);
        v205 = *(v0 + 752);
        v210 = *(v0 + 736);
        v106 = *(v0 + 664);
        v107 = *(v0 + 656);
        v108 = *(v0 + 640);
        v109 = *(v0 + 632);
        v167 = *(v0 + 624);
        v168 = *(v0 + 608);
        v237 = v95;
        v110 = *(v0 + 600);
        v111 = *(v0 + 592);
        v170 = *(v0 + 584);
        v173 = *(v0 + 568);
        v166 = *(v0 + 560);
        v177 = *(v0 + 552);
        v181 = *(v0 + 536);
        v185 = *(v0 + 528);
        v189 = *(v0 + 448);

        sub_1000C55C4();
        sub_1000C5654();
        type metadata accessor for CVBuffer(0);
        v241 = v112;
        v242 = &protocol witness table for CVBufferRef;
        v240.value = v101;
        v113 = sub_1000C4D54();
        (*(*(v113 - 8) + 56))(v110, 1, 1, v113);
        v165 = v101;
        sub_1000C4D64();
        v114 = *v163;
        (*v163)(v107, v106, v108);
        sub_1000C2654();
        v114(v107, v106, v108);
        sub_1000C2674();
        (*v162)(v167, v109, v168);
        (*v161)(v170, v111, v173);
        (*v160)(v177, v166, v181);
        sub_1000C2754();
        sub_1000C2694();
        v115 = v215(v205, v210);
        v116 = *(v0 + 1080);
        if (v115 == v229)
        {
          v182 = *(v0 + 1040);
          v186 = *(v0 + 880);
          v142 = *(v0 + 856);
          v198 = *(v0 + 848);
          v233 = *(v0 + 640);
          v239 = *(v0 + 664);
          v217 = *(v0 + 632);
          v224 = *(v0 + 648);
          v206 = *(v0 + 592);
          v211 = *(v0 + 608);
          v202 = *(v0 + 568);
          v190 = *(v0 + 536);
          v194 = *(v0 + 560);
          v143 = *(v0 + 528);
          v144 = *(v0 + 520);
          v146 = *(v0 + 496);
          v145 = *(v0 + 504);
          v147 = *(v0 + 472);
          v174 = *(v0 + 456);
          v178 = *(v0 + 480);
          (*v164)(*(v0 + 752), *(v0 + 736));
          sub_1000C5514();
          v148 = sub_1000C5724();
          sub_1000C1A54();

          (*v154)(v144, v143, v145);
          sub_10003A4D0(&qword_1000FC7C0, &type metadata accessor for VideoPreview);
          sub_1000C3FF4();
          sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
          sub_1000C5414();
          (*v155)(v146, v178);
          *(v0 + 424) = 0;
          sub_1000C5424();

          (*v156)(v143, v145);
          (*v157)(v194, v190);
          (*v158)(v206, v202);
          (*v159)(v217, v211);
          (*(v224 + 8))(v239, v233);
          goto LABEL_19;
        }

        (*v164)(*(v0 + 752), *(v0 + 736));
        v117 = [v116 copyNextSampleBuffer];
        v118 = v237 + 1;
        if (__OFADD__(v237, 1))
        {
          goto LABEL_53;
        }

        v119 = v117;
        v238 = v237 + 1;
        if (v117)
        {
          v120 = *(v0 + 1460) != *(v0 + 1464) && v118 == *(v0 + 984);
          v121 = v120;
        }

        else
        {
          v121 = 1;
        }

        v122 = *(v0 + 496);
        v123 = *(v0 + 472);
        v230 = *(v0 + 480);
        v124 = *(v0 + 456);
        (*v154)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
        sub_10003A4D0(&qword_1000FC7C0, &type metadata accessor for VideoPreview);
        sub_1000C3FF4();
        sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
        sub_1000C5414();
        (*v155)(v122, v230);
        v125 = *(v0 + 632);
        v222 = *(v0 + 592);
        v231 = *(v0 + 608);
        v216 = *(v0 + 568);
        v126 = *(v0 + 560);
        v127 = *(v0 + 536);
        v128 = *(v0 + 528);
        v129 = *(v0 + 504);
        if (v121)
        {
          v130 = *(v0 + 632);
          v131 = *(v0 + 456);
          *(v0 + 416) = 0;
          sub_1000C5424();

          (*v156)(v128, v129);
          (*v157)(v126, v127);
          (*v158)(v222, v216);
          (*v159)(v130, v231);
        }

        else
        {

          (*v156)(v128, v129);
          (*v157)(v126, v127);
          (*v158)(v222, v216);
          (*v159)(v125, v231);
        }

        if (!v119)
        {
          break;
        }

        v132 = *(v0 + 984);
        v133 = *(v0 + 1464);
        v134 = *(v0 + 1460);
        v135 = v119;
        v55 = v135;
        v120 = v134 == v133;
        v95 = v238;
        if (!v120 && v238 == v132)
        {
          goto LABEL_18;
        }

        if (!CMSampleBufferGetNumSamples(v135))
        {
          goto LABEL_27;
        }
      }

      v149 = *(v0 + 1080);
      v150 = *(v0 + 1040);
      v151 = *(v0 + 880);
      v152 = *(v0 + 848);
      (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));
    }

    else
    {
LABEL_18:
      v56 = *(v0 + 1080);
      v57 = *(v0 + 880);
      v58 = *(v0 + 848);
      v59 = *(v0 + 664);
      v60 = *(v0 + 648);
      v61 = *(v0 + 640);

      (*(v60 + 8))(v59, v61);
    }

LABEL_19:
    v62 = *(v0 + 832);
    v63 = *(v0 + 808);
    v64 = *(v0 + 784);
    v65 = *(v0 + 776);
    v66 = *(v0 + 768);
    v67 = *(v0 + 760);
    v68 = *(v0 + 752);
    v69 = *(v0 + 728);
    v70 = *(v0 + 704);
    v71 = *(v0 + 696);
    v171 = *(v0 + 688);
    v175 = *(v0 + 664);
    v179 = *(v0 + 656);
    v183 = *(v0 + 632);
    v187 = *(v0 + 624);
    v191 = *(v0 + 600);
    v195 = *(v0 + 592);
    v199 = *(v0 + 584);
    v203 = *(v0 + 560);
    v207 = *(v0 + 552);
    v212 = *(v0 + 528);
    v218 = *(v0 + 520);
    v225 = *(v0 + 496);
    v235 = *(v0 + 472);

    v72 = *(v0 + 8);
    goto LABEL_23;
  }

  v78 = *(v0 + 1080);
  v79 = *(v0 + 1040);
  v80 = *(v0 + 880);
  v227 = *(v0 + 848);
  v81 = *(v0 + 664);
  v82 = *(v0 + 648);
  v83 = *(v0 + 640);
  sub_1000C4FC4();
  sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion);
  v84 = swift_allocError();
  sub_1000C4FB4();
  v236 = v84;
  swift_willThrow();

  (*(v82 + 8))(v81, v83);
LABEL_22:
  v85 = *(v0 + 832);
  v86 = *(v0 + 808);
  v87 = *(v0 + 784);
  v88 = *(v0 + 776);
  v89 = *(v0 + 768);
  v90 = *(v0 + 760);
  v91 = *(v0 + 752);
  v92 = *(v0 + 728);
  v93 = *(v0 + 704);
  v94 = *(v0 + 696);
  v169 = *(v0 + 688);
  v172 = *(v0 + 664);
  v176 = *(v0 + 656);
  v180 = *(v0 + 632);
  v184 = *(v0 + 624);
  v188 = *(v0 + 600);
  v192 = *(v0 + 592);
  v196 = *(v0 + 584);
  v200 = *(v0 + 560);
  v204 = *(v0 + 552);
  v209 = *(v0 + 528);
  v214 = *(v0 + 520);
  v220 = *(v0 + 496);
  v228 = *(v0 + 472);
  **(v0 + 464) = v236;

  v72 = *(v0 + 8);
LABEL_23:

  return v72();
}

uint64_t sub_100037068()
{
  v2 = *v1;
  v3 = *(*v1 + 1096);
  v4 = *v1;
  *(*v1 + 1104) = v0;

  v5 = *(v2 + 1088);

  if (v0)
  {
    v6 = sub_1000392EC;
  }

  else
  {
    v6 = sub_1000371C8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000371C8()
{
  v1 = ceilf(*(v0 + 1456));
  *(v0 + 1472) = v1;
  if ((LODWORD(v1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -2147500000.0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (v1 >= 2147500000.0)
  {
    goto LABEL_9;
  }

  v2 = *(v0 + 880);
  *(v0 + 1112) = kCMTimeZero.value;
  *(v0 + 1476) = *&kCMTimeZero.timescale;
  *(v0 + 1120) = kCMTimeZero.epoch;
  sub_1000124CC(&qword_1000FC7D0, &qword_1000CADC8);
  v3 = sub_1000C16A4();
  *(v0 + 1128) = v3;
  v4 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
  v5 = swift_task_alloc();
  *(v0 + 1136) = v5;
  *v5 = v0;
  v5[1] = sub_10003733C;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 432, v3, 0, 0);
}

uint64_t sub_10003733C()
{
  v2 = *v1;
  v3 = *(*v1 + 1136);
  v4 = *v1;

  v5 = *(v2 + 1128);
  if (v0)
  {

    v6 = sub_100039520;
  }

  else
  {

    v6 = sub_1000374B0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000374B0()
{
  v229 = v0;
  v1 = *(v0 + 432);
  if (v1 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000C59A4())
  {
    v3 = v0 + 1304;
    if (!i)
    {
      break;
    }

    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = &MBDHTMLToSuper_MENTION_Frame__classData;
    v201 = i;
    while (1)
    {
      if (v5)
      {
        v7 = sub_1000C5954();
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v7 = *(v1 + 32 + 8 * v4);
      }

      v8 = v7;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      if (([v7 v6[17].base_meths] & 1) == 0)
      {
        v10 = *(v0 + 880);
        [v8 timeMapping];
        v11 = v222;
        v12 = *(&v221 + 1);
        *(v0 + 1336) = v221;
        *(v0 + 1344) = v12;
        *(v0 + 1352) = v11;
        v13 = [v10 makeSampleCursorWithPresentationTimeStamp:v0 + 1336];
        if (v13)
        {
          v14 = v13;
          do
          {
            if (([v14 currentSampleDependencyInfo] & 0x1000000) == 0)
            {
              break;
            }

            if ([v14 stepInPresentationOrderByCount:1] != 1)
            {
              break;
            }

            [v14 presentationTimeStamp];
            [v8 timeMapping];
            v15 = v222;
            *(v0 + 1144) = v221;
            *(v0 + 1160) = v15;
            *(v0 + 1176) = v223;
            sub_1000C54D4();
          }

          while ((sub_1000C5634() & 1) == 0);
          if (([v14 currentSampleDependencyInfo] & 0x1000000) == 0)
          {

            [v14 presentationTimeStamp];
            v108 = v221;
            v109 = v222;
            v110 = *(&v221 + 1);
            [v8 timeMapping];
            v111 = v221;
            v113 = *(&v222 + 1);
            v112 = v222;
            v114 = *(&v223 + 1);
            v115 = v223;
            v116 = *(&v221 + 1);
            [v8 timeMapping];
            v117 = v224;
            v118 = v228;
            v119 = v227;
            v120 = v226;
            v121 = v225;
            *(v0 + 1360) = v108;
            *(v0 + 1368) = v110;
            *(v0 + 1376) = v109;
            *(v0 + 1240) = v111;
            *(v0 + 1248) = v116;
            *(v0 + 1256) = __PAIR128__(v113, v112);
            *(v0 + 1272) = v115;
            *(v0 + 1280) = v114;
            *(v0 + 1288) = v117;
            *(v0 + 1296) = v121;
            v3 = v0 + 1304;
            *(v0 + 1304) = v120;
            *(v0 + 1320) = v119;
            *(v0 + 1328) = v118;
            CMTimeMapTimeFromRangeToRange(&v221, (v0 + 1360), (v0 + 1240), (v0 + 1288));
            v17 = *(&v221 + 1);
            v18 = v221;
            v16 = v222;

            goto LABEL_22;
          }

          i = v201;
          v5 = v1 & 0xC000000000000001;
          v6 = &MBDHTMLToSuper_MENTION_Frame__classData;
        }
      }

      if (v4 == i)
      {

        v16 = *(v0 + 1120);
        v3 = v0 + 1304;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

  v16 = *(v0 + 1120);
LABEL_21:
  v17 = *(v3 + 172);
  v18 = *(v0 + 1112);
LABEL_22:
  v19 = *(v0 + 1040);
  v20 = sub_1000C5644(1, *(v0 + 1472));
  *(v0 + 1192) = v18;
  *(v0 + 1200) = v17;
  *(v0 + 1208) = v16;
  *(v0 + 1216) = v20;
  *(v0 + 1224) = v21;
  *(v0 + 1228) = v22;
  *(v0 + 1232) = v23;
  [v19 setTimeRange:v0 + 1192];
  v24 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v25 = [v24 copyNextSampleBuffer];
  if (v25)
  {
    v26 = *(v0 + 984);
    v27 = *(v0 + 1464);
    v28 = *(v0 + 1460);
    v29 = v25;
    v30 = v29;
    if (v28 == v27 || v26)
    {
      v66 = 0;
      v67 = *(v0 + 616);
      v147 = (v67 + 16);
      v148 = (*(v0 + 648) + 16);
      v68 = *(v0 + 576);
      v69 = *(v0 + 544);
      v70 = *(v0 + 512);
      v145 = (v69 + 16);
      v146 = (v68 + 16);
      v149 = (*(v0 + 744) + 8);
      v139 = (v70 + 16);
      v140 = (*(v0 + 488) + 8);
      v141 = (v70 + 8);
      v142 = (v69 + 8);
      v143 = (v68 + 8);
      v144 = (v67 + 8);
      if (CMSampleBufferGetNumSamples(v29))
      {
        goto LABEL_34;
      }

      do
      {
LABEL_33:
      }

      while (!CMSampleBufferGetNumSamples(v30));
      while (1)
      {
LABEL_34:

        v71 = sub_1000C55B4();
        if (!v71)
        {
          v122 = *(v0 + 1080);
          v123 = *(v0 + 1040);
          v124 = *(v0 + 880);
          v214 = *(v0 + 848);
          v206 = *(v0 + 664);
          v125 = *(v0 + 648);
          v126 = *(v0 + 640);
          sub_1000C4FC4();
          sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion);
          v127 = swift_allocError();
          sub_1000C4FB4();
          v217 = v127;
          swift_willThrow();

          (*(v125 + 8))(v206, v126);
          goto LABEL_28;
        }

        v72 = v71;
        v73 = *(v0 + 856);
        v74 = sub_1000C5514();
        v75 = sub_1000C5724();
        if (os_log_type_enabled(v75, v74))
        {
          v76 = swift_slowAlloc();
          *v76 = 134217984;
          *(v76 + 4) = v66;
          _os_log_impl(&_mh_execute_header, v75, v74, "BlastDoor processing thumbnail %ld", v76, 0xCu);
        }

        v182 = *(v3 + 181);
        v211 = *(v0 + 1464);
        v204 = *(v0 + 896);
        v186 = *(v3 + 180);
        v178 = *(v0 + 872);
        v190 = *(v0 + 752);
        v194 = *(v0 + 736);
        v198 = *(v0 + 888);
        v77 = *(v0 + 664);
        v218 = v66;
        v78 = *(v0 + 656);
        v79 = *(v0 + 640);
        v80 = *(v0 + 632);
        v152 = *(v0 + 624);
        v153 = *(v0 + 608);
        v81 = *(v0 + 600);
        v82 = *(v0 + 592);
        v155 = *(v0 + 584);
        v158 = *(v0 + 568);
        v151 = *(v0 + 560);
        v162 = *(v0 + 552);
        v166 = *(v0 + 536);
        v170 = *(v0 + 528);
        v174 = *(v0 + 448);

        sub_1000C55C4();
        sub_1000C5654();
        type metadata accessor for CVBuffer(0);
        *(&v222 + 1) = v83;
        *&v223 = &protocol witness table for CVBufferRef;
        *&v221 = v72;
        v84 = sub_1000C4D54();
        (*(*(v84 - 8) + 56))(v81, 1, 1, v84);
        v85 = v72;
        sub_1000C4D64();
        v86 = *v148;
        (*v148)(v78, v77, v79);
        sub_1000C2654();
        v86(v78, v77, v79);
        v1 = v151;
        sub_1000C2674();
        (*v147)(v152, v80, v153);
        (*v146)(v155, v82, v158);
        (*v145)(v162, v151, v166);
        sub_1000C2754();
        sub_1000C2694();
        v87 = v198(v190, v194);
        v88 = *(v0 + 1080);
        v150 = v85;
        if (v87 == v211)
        {
          v167 = *(v0 + 1040);
          v171 = *(v0 + 880);
          v128 = *(v0 + 856);
          v183 = *(v0 + 848);
          v207 = *(v0 + 648);
          v215 = *(v0 + 640);
          v220 = *(v0 + 664);
          v195 = *(v0 + 608);
          v200 = *(v0 + 632);
          v187 = *(v0 + 568);
          v191 = *(v0 + 592);
          v175 = *(v0 + 536);
          v179 = *(v0 + 560);
          v129 = *(v0 + 528);
          v130 = *(v0 + 520);
          v132 = *(v0 + 496);
          v131 = *(v0 + 504);
          v133 = *(v0 + 472);
          v159 = *(v0 + 456);
          v163 = *(v0 + 480);
          (*v149)(*(v0 + 752), *(v0 + 736));
          sub_1000C5514();
          v134 = sub_1000C5724();
          sub_1000C1A54();

          (*v139)(v130, v129, v131);
          sub_10003A4D0(&qword_1000FC7C0, &type metadata accessor for VideoPreview);
          sub_1000C3FF4();
          sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
          sub_1000C5414();
          (*v140)(v132, v163);
          *(v0 + 424) = 0;
          sub_1000C5424();

          (*v141)(v129, v131);
          (*v142)(v179, v175);
          (*v143)(v191, v187);
          (*v144)(v200, v195);
          (*(v207 + 8))(v220, v215);
          goto LABEL_26;
        }

        (*v149)(*(v0 + 752), *(v0 + 736));
        v89 = [v88 copyNextSampleBuffer];
        v90 = v218 + 1;
        if (__OFADD__(v218, 1))
        {
          goto LABEL_61;
        }

        v91 = v89;
        v219 = v218 + 1;
        if (v89)
        {
          v92 = *(v0 + 1460) != *(v0 + 1464) && v90 == *(v0 + 984);
          v93 = v92;
        }

        else
        {
          v93 = 1;
        }

        v94 = *(v0 + 496);
        v95 = *(v0 + 472);
        v212 = *(v0 + 480);
        v96 = *(v0 + 456);
        (*v139)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
        sub_10003A4D0(&qword_1000FC7C0, &type metadata accessor for VideoPreview);
        sub_1000C3FF4();
        sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
        sub_1000C5414();
        (*v140)(v94, v212);
        v97 = *(v0 + 632);
        v205 = *(v0 + 592);
        v213 = *(v0 + 608);
        v199 = *(v0 + 568);
        v98 = *(v0 + 560);
        v99 = *(v0 + 536);
        v100 = *(v0 + 528);
        v101 = *(v0 + 504);
        if (v93)
        {
          v102 = *(v0 + 632);
          v103 = *(v0 + 456);
          *(v0 + 416) = 0;
          sub_1000C5424();

          (*v141)(v100, v101);
          (*v142)(v98, v99);
          (*v143)(v205, v199);
          (*v144)(v102, v213);
        }

        else
        {

          (*v141)(v100, v101);
          (*v142)(v98, v99);
          (*v143)(v205, v199);
          (*v144)(v97, v213);
        }

        v66 = v90;
        if (!v91)
        {
          break;
        }

        v104 = *(v0 + 984);
        v105 = *(v0 + 1464);
        v106 = *(v0 + 1460);
        v107 = v91;
        v30 = v107;
        v92 = v106 == v105;
        v3 = v0 + 1304;
        if (!v92 && v219 == v104)
        {
          goto LABEL_25;
        }

        if (!CMSampleBufferGetNumSamples(v107))
        {
          goto LABEL_33;
        }
      }

      v135 = *(v0 + 1080);
      v136 = *(v0 + 1040);
      v137 = *(v0 + 880);
      v138 = *(v0 + 848);
      (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));
    }

    else
    {
LABEL_25:
      v31 = *(v0 + 1080);
      v32 = *(v0 + 880);
      v33 = *(v0 + 848);
      v34 = *(v0 + 664);
      v35 = *(v0 + 648);
      v36 = *(v0 + 640);

      (*(v35 + 8))(v34, v36);
    }

LABEL_26:
    v37 = *(v0 + 832);
    v38 = *(v0 + 808);
    v39 = *(v0 + 784);
    v40 = *(v0 + 776);
    v41 = *(v0 + 768);
    v42 = *(v0 + 760);
    v43 = *(v0 + 752);
    v44 = *(v0 + 728);
    v45 = *(v0 + 704);
    v46 = *(v0 + 696);
    v156 = *(v0 + 688);
    v160 = *(v0 + 664);
    v164 = *(v0 + 656);
    v168 = *(v0 + 632);
    v172 = *(v0 + 624);
    v176 = *(v0 + 600);
    v180 = *(v0 + 592);
    v184 = *(v0 + 584);
    v188 = *(v0 + 560);
    v192 = *(v0 + 552);
    v196 = *(v0 + 528);
    v202 = *(v0 + 520);
    v208 = *(v0 + 496);
    v216 = *(v0 + 472);

    v47 = *(v0 + 8);
  }

  else
  {
    v48 = *(v0 + 1080);
    v49 = *(v0 + 1040);
    v50 = *(v0 + 880);
    v209 = *(v0 + 848);
    v51 = *(v0 + 664);
    v52 = *(v0 + 648);
    v53 = *(v0 + 640);
    sub_1000C4FC4();
    sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion);
    v54 = swift_allocError();
    sub_1000C4FB4();
    v217 = v54;
    swift_willThrow();

    (*(v52 + 8))(v51, v53);
LABEL_28:
    v55 = *(v0 + 832);
    v56 = *(v0 + 808);
    v57 = *(v0 + 784);
    v58 = *(v0 + 776);
    v59 = *(v0 + 768);
    v60 = *(v0 + 760);
    v61 = *(v0 + 752);
    v62 = *(v0 + 728);
    v63 = *(v0 + 704);
    v64 = *(v0 + 696);
    v154 = *(v0 + 688);
    v157 = *(v0 + 664);
    v161 = *(v0 + 656);
    v165 = *(v0 + 632);
    v169 = *(v0 + 624);
    v173 = *(v0 + 600);
    v177 = *(v0 + 592);
    v181 = *(v0 + 584);
    v185 = *(v0 + 560);
    v189 = *(v0 + 552);
    v193 = *(v0 + 528);
    v197 = *(v0 + 520);
    v203 = *(v0 + 496);
    v210 = *(v0 + 472);
    **(v0 + 464) = v217;

    v47 = *(v0 + 8);
  }

  return v47();
}

uint64_t sub_100038638()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 848);
  swift_willThrow();

  v3 = *(v0 + 832);
  v4 = *(v0 + 808);
  v5 = *(v0 + 784);
  v6 = *(v0 + 776);
  v7 = *(v0 + 768);
  v8 = *(v0 + 760);
  v9 = *(v0 + 752);
  v10 = *(v0 + 728);
  v11 = *(v0 + 704);
  v12 = *(v0 + 696);
  v15 = *(v0 + 688);
  v16 = *(v0 + 664);
  v17 = *(v0 + 656);
  v18 = *(v0 + 632);
  v19 = *(v0 + 624);
  v20 = *(v0 + 600);
  v21 = *(v0 + 592);
  v22 = *(v0 + 584);
  v23 = *(v0 + 560);
  v24 = *(v0 + 552);
  v25 = *(v0 + 528);
  v26 = *(v0 + 520);
  v27 = *(v0 + 496);
  v28 = *(v0 + 472);
  **(v0 + 464) = *(v0 + 864);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100038834()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 832);
  v6 = *(v0 + 808);
  v7 = *(v0 + 784);
  v8 = *(v0 + 776);
  v9 = *(v0 + 768);
  v10 = *(v0 + 760);
  v11 = *(v0 + 752);
  v12 = *(v0 + 728);
  v13 = *(v0 + 704);
  v14 = *(v0 + 696);
  v17 = *(v0 + 688);
  v18 = *(v0 + 664);
  v19 = *(v0 + 656);
  v20 = *(v0 + 632);
  v21 = *(v0 + 624);
  v22 = *(v0 + 600);
  v23 = *(v0 + 592);
  v24 = *(v0 + 584);
  v25 = *(v0 + 560);
  v26 = *(v0 + 552);
  v27 = *(v0 + 528);
  v28 = *(v0 + 520);
  v29 = *(v0 + 496);
  v30 = *(v0 + 472);
  **(v0 + 464) = *(v0 + 928);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100038A58()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 832);
  v6 = *(v0 + 808);
  v7 = *(v0 + 784);
  v8 = *(v0 + 776);
  v9 = *(v0 + 768);
  v10 = *(v0 + 760);
  v11 = *(v0 + 752);
  v12 = *(v0 + 728);
  v13 = *(v0 + 704);
  v14 = *(v0 + 696);
  v17 = *(v0 + 688);
  v18 = *(v0 + 664);
  v19 = *(v0 + 656);
  v20 = *(v0 + 632);
  v21 = *(v0 + 624);
  v22 = *(v0 + 600);
  v23 = *(v0 + 592);
  v24 = *(v0 + 584);
  v25 = *(v0 + 560);
  v26 = *(v0 + 552);
  v27 = *(v0 + 528);
  v28 = *(v0 + 520);
  v29 = *(v0 + 496);
  v30 = *(v0 + 472);
  **(v0 + 464) = *(v0 + 968);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100038C7C()
{
  v1 = *(v0 + 880);

  v2 = *(v0 + 832);
  v3 = *(v0 + 808);
  v4 = *(v0 + 784);
  v5 = *(v0 + 776);
  v6 = *(v0 + 768);
  v7 = *(v0 + 760);
  v8 = *(v0 + 752);
  v9 = *(v0 + 728);
  v10 = *(v0 + 704);
  v11 = *(v0 + 696);
  v14 = *(v0 + 688);
  v15 = *(v0 + 664);
  v16 = *(v0 + 656);
  v17 = *(v0 + 632);
  v18 = *(v0 + 624);
  v19 = *(v0 + 600);
  v20 = *(v0 + 592);
  v21 = *(v0 + 584);
  v22 = *(v0 + 560);
  v23 = *(v0 + 552);
  v24 = *(v0 + 528);
  v25 = *(v0 + 520);
  v26 = *(v0 + 496);
  v27 = *(v0 + 472);
  **(v0 + 464) = *(v0 + 1016);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100038E78()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 664);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 832);
  v6 = *(v0 + 808);
  v7 = *(v0 + 784);
  v8 = *(v0 + 776);
  v9 = *(v0 + 768);
  v10 = *(v0 + 760);
  v11 = *(v0 + 752);
  v12 = *(v0 + 728);
  v13 = *(v0 + 704);
  v14 = *(v0 + 696);
  v17 = *(v0 + 688);
  v18 = *(v0 + 664);
  v19 = *(v0 + 656);
  v20 = *(v0 + 632);
  v21 = *(v0 + 624);
  v22 = *(v0 + 600);
  v23 = *(v0 + 592);
  v24 = *(v0 + 584);
  v25 = *(v0 + 560);
  v26 = *(v0 + 552);
  v27 = *(v0 + 528);
  v28 = *(v0 + 520);
  v29 = *(v0 + 496);
  v30 = *(v0 + 472);
  **(v0 + 464) = *(v0 + 1032);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10003909C()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 848);
  v3 = *(v0 + 696);
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
  v6 = *(v0 + 664);
  v7 = *(v0 + 648);
  v8 = *(v0 + 640);

  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v6, v8);
  v9 = *(v0 + 832);
  v10 = *(v0 + 808);
  v11 = *(v0 + 784);
  v12 = *(v0 + 776);
  v13 = *(v0 + 768);
  v14 = *(v0 + 760);
  v15 = *(v0 + 752);
  v16 = *(v0 + 728);
  v17 = *(v0 + 704);
  v18 = *(v0 + 696);
  v21 = *(v0 + 688);
  v22 = *(v0 + 664);
  v23 = *(v0 + 656);
  v24 = *(v0 + 632);
  v25 = *(v0 + 624);
  v26 = *(v0 + 600);
  v27 = *(v0 + 592);
  v28 = *(v0 + 584);
  v29 = *(v0 + 560);
  v30 = *(v0 + 552);
  v31 = *(v0 + 528);
  v32 = *(v0 + 520);
  v33 = *(v0 + 496);
  v34 = *(v0 + 472);
  **(v0 + 464) = *(v0 + 1072);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1000392EC()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 880);
  v3 = *(v0 + 848);
  v4 = *(v0 + 664);
  v5 = *(v0 + 648);
  v6 = *(v0 + 640);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 832);
  v8 = *(v0 + 808);
  v9 = *(v0 + 784);
  v10 = *(v0 + 776);
  v11 = *(v0 + 768);
  v12 = *(v0 + 760);
  v13 = *(v0 + 752);
  v14 = *(v0 + 728);
  v15 = *(v0 + 704);
  v16 = *(v0 + 696);
  v19 = *(v0 + 688);
  v20 = *(v0 + 664);
  v21 = *(v0 + 656);
  v22 = *(v0 + 632);
  v23 = *(v0 + 624);
  v24 = *(v0 + 600);
  v25 = *(v0 + 592);
  v26 = *(v0 + 584);
  v27 = *(v0 + 560);
  v28 = *(v0 + 552);
  v29 = *(v0 + 528);
  v30 = *(v0 + 520);
  v31 = *(v0 + 496);
  v32 = *(v0 + 472);
  **(v0 + 464) = *(v0 + 1104);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100039520()
{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1476);
  v5 = sub_1000C5644(1, *(v0 + 1472));
  *(v0 + 1192) = v2;
  *(v0 + 1200) = v4;
  *(v0 + 1208) = v1;
  *(v0 + 1216) = v5;
  *(v0 + 1224) = v6;
  *(v0 + 1228) = v7;
  *(v0 + 1232) = v8;
  [v3 setTimeRange:v0 + 1192];
  v9 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v10 = [v9 copyNextSampleBuffer];
  if (v10)
  {
    v11 = *(v0 + 984);
    v12 = *(v0 + 1464);
    v13 = *(v0 + 1460);
    v14 = v10;
    v15 = v14;
    if (v13 == v12 || v11)
    {
      v51 = 0;
      v52 = *(v0 + 616);
      v116 = (v52 + 16);
      v117 = (*(v0 + 648) + 16);
      v53 = *(v0 + 576);
      v54 = *(v0 + 544);
      v55 = *(v0 + 512);
      v114 = (v54 + 16);
      v115 = (v53 + 16);
      v118 = (*(v0 + 744) + 8);
      v108 = (v55 + 16);
      v109 = (*(v0 + 488) + 8);
      v110 = (v55 + 8);
      v111 = (v54 + 8);
      v112 = (v53 + 8);
      v113 = (v52 + 8);
      if (CMSampleBufferGetNumSamples(v14))
      {
        goto LABEL_13;
      }

      do
      {
LABEL_12:
      }

      while (!CMSampleBufferGetNumSamples(v15));
      while (1)
      {
LABEL_13:

        v56 = sub_1000C55B4();
        if (!v56)
        {
          v91 = *(v0 + 1080);
          v92 = *(v0 + 1040);
          v93 = *(v0 + 880);
          v182 = *(v0 + 848);
          v174 = *(v0 + 664);
          v94 = *(v0 + 648);
          v95 = *(v0 + 640);
          sub_1000C4FC4();
          sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion);
          v96 = swift_allocError();
          sub_1000C4FB4();
          v185 = v96;
          swift_willThrow();

          (*(v94 + 8))(v174, v95);
          goto LABEL_7;
        }

        v57 = v56;
        v58 = *(v0 + 856);
        v59 = sub_1000C5514();
        v60 = sub_1000C5724();
        if (os_log_type_enabled(v60, v59))
        {
          v61 = swift_slowAlloc();
          *v61 = 134217984;
          *(v61 + 4) = v51;
          _os_log_impl(&_mh_execute_header, v60, v59, "BlastDoor processing thumbnail %ld", v61, 0xCu);
        }

        v151 = *(v0 + 1485);
        v179 = *(v0 + 1464);
        v167 = *(v0 + 888);
        v172 = *(v0 + 896);
        v155 = *(v0 + 1484);
        v147 = *(v0 + 872);
        v159 = *(v0 + 752);
        v163 = *(v0 + 736);
        v62 = *(v0 + 664);
        v63 = *(v0 + 656);
        v64 = *(v0 + 640);
        v65 = *(v0 + 632);
        v121 = *(v0 + 624);
        v122 = *(v0 + 608);
        v186 = v51;
        v66 = *(v0 + 600);
        v67 = *(v0 + 592);
        v124 = *(v0 + 584);
        v127 = *(v0 + 568);
        v120 = *(v0 + 560);
        v131 = *(v0 + 552);
        v135 = *(v0 + 536);
        v139 = *(v0 + 528);
        v143 = *(v0 + 448);

        sub_1000C55C4();
        sub_1000C5654();
        type metadata accessor for CVBuffer(0);
        v68 = sub_1000C4D54();
        (*(*(v68 - 8) + 56))(v66, 1, 1, v68);
        v119 = v57;
        sub_1000C4D64();
        v69 = *v117;
        (*v117)(v63, v62, v64);
        sub_1000C2654();
        v69(v63, v62, v64);
        sub_1000C2674();
        (*v116)(v121, v65, v122);
        (*v115)(v124, v67, v127);
        (*v114)(v131, v120, v135);
        sub_1000C2754();
        sub_1000C2694();
        v70 = v167(v159, v163);
        v71 = *(v0 + 1080);
        if (v70 == v179)
        {
          v136 = *(v0 + 1040);
          v140 = *(v0 + 880);
          v97 = *(v0 + 856);
          v183 = *(v0 + 640);
          v188 = *(v0 + 664);
          v169 = *(v0 + 632);
          v175 = *(v0 + 648);
          v160 = *(v0 + 592);
          v164 = *(v0 + 608);
          v152 = *(v0 + 848);
          v156 = *(v0 + 568);
          v144 = *(v0 + 536);
          v148 = *(v0 + 560);
          v98 = *(v0 + 528);
          v99 = *(v0 + 520);
          v101 = *(v0 + 496);
          v100 = *(v0 + 504);
          v102 = *(v0 + 472);
          v128 = *(v0 + 456);
          v132 = *(v0 + 480);
          (*v118)(*(v0 + 752), *(v0 + 736));
          sub_1000C5514();
          v103 = sub_1000C5724();
          sub_1000C1A54();

          (*v108)(v99, v98, v100);
          sub_10003A4D0(&qword_1000FC7C0, &type metadata accessor for VideoPreview);
          sub_1000C3FF4();
          sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
          sub_1000C5414();
          (*v109)(v101, v132);
          *(v0 + 424) = 0;
          sub_1000C5424();

          (*v110)(v98, v100);
          (*v111)(v148, v144);
          (*v112)(v160, v156);
          (*v113)(v169, v164);
          (*(v175 + 8))(v188, v183);
          goto LABEL_5;
        }

        (*v118)(*(v0 + 752), *(v0 + 736));
        v72 = [v71 copyNextSampleBuffer];
        v73 = v186 + 1;
        if (__OFADD__(v186, 1))
        {
          __break(1u);
        }

        v74 = v72;
        v187 = v186 + 1;
        if (v72)
        {
          v75 = *(v0 + 1460) != *(v0 + 1464) && v73 == *(v0 + 984);
          v76 = v75;
        }

        else
        {
          v76 = 1;
        }

        v77 = *(v0 + 496);
        v78 = *(v0 + 472);
        v180 = *(v0 + 480);
        v79 = *(v0 + 456);
        (*v108)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
        sub_10003A4D0(&qword_1000FC7C0, &type metadata accessor for VideoPreview);
        sub_1000C3FF4();
        sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
        sub_1000C5414();
        (*v109)(v77, v180);
        v80 = *(v0 + 632);
        v173 = *(v0 + 592);
        v181 = *(v0 + 608);
        v168 = *(v0 + 568);
        v81 = *(v0 + 560);
        v82 = *(v0 + 536);
        v83 = *(v0 + 528);
        v84 = *(v0 + 504);
        if (v76)
        {
          v85 = *(v0 + 632);
          v86 = *(v0 + 456);
          *(v0 + 416) = 0;
          sub_1000C5424();

          (*v110)(v83, v84);
          (*v111)(v81, v82);
          (*v112)(v173, v168);
          (*v113)(v85, v181);
        }

        else
        {

          (*v110)(v83, v84);
          (*v111)(v81, v82);
          (*v112)(v173, v168);
          (*v113)(v80, v181);
        }

        if (!v74)
        {
          break;
        }

        v87 = *(v0 + 984);
        v88 = *(v0 + 1464);
        v89 = *(v0 + 1460);
        v90 = v74;
        v15 = v90;
        v75 = v89 == v88;
        v51 = v187;
        if (!v75 && v187 == v87)
        {
          goto LABEL_4;
        }

        if (!CMSampleBufferGetNumSamples(v90))
        {
          goto LABEL_12;
        }
      }

      v104 = *(v0 + 1080);
      v105 = *(v0 + 1040);
      v106 = *(v0 + 880);
      v107 = *(v0 + 848);
      (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));
    }

    else
    {
LABEL_4:
      v16 = *(v0 + 1080);
      v17 = *(v0 + 880);
      v18 = *(v0 + 848);
      v19 = *(v0 + 664);
      v20 = *(v0 + 648);
      v21 = *(v0 + 640);

      (*(v20 + 8))(v19, v21);
    }

LABEL_5:
    v22 = *(v0 + 832);
    v23 = *(v0 + 808);
    v24 = *(v0 + 784);
    v25 = *(v0 + 776);
    v26 = *(v0 + 768);
    v27 = *(v0 + 760);
    v28 = *(v0 + 752);
    v29 = *(v0 + 728);
    v30 = *(v0 + 704);
    v31 = *(v0 + 696);
    v125 = *(v0 + 688);
    v129 = *(v0 + 664);
    v133 = *(v0 + 656);
    v137 = *(v0 + 632);
    v141 = *(v0 + 624);
    v145 = *(v0 + 600);
    v149 = *(v0 + 592);
    v153 = *(v0 + 584);
    v157 = *(v0 + 560);
    v161 = *(v0 + 552);
    v165 = *(v0 + 528);
    v170 = *(v0 + 520);
    v176 = *(v0 + 496);
    v184 = *(v0 + 472);

    v32 = *(v0 + 8);
  }

  else
  {
    v33 = *(v0 + 1080);
    v34 = *(v0 + 1040);
    v35 = *(v0 + 880);
    v177 = *(v0 + 848);
    v36 = *(v0 + 664);
    v37 = *(v0 + 648);
    v38 = *(v0 + 640);
    sub_1000C4FC4();
    sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion);
    v39 = swift_allocError();
    sub_1000C4FB4();
    v185 = v39;
    swift_willThrow();

    (*(v37 + 8))(v36, v38);
LABEL_7:
    v40 = *(v0 + 832);
    v41 = *(v0 + 808);
    v42 = *(v0 + 784);
    v43 = *(v0 + 776);
    v44 = *(v0 + 768);
    v45 = *(v0 + 760);
    v46 = *(v0 + 752);
    v47 = *(v0 + 728);
    v48 = *(v0 + 704);
    v49 = *(v0 + 696);
    v123 = *(v0 + 688);
    v126 = *(v0 + 664);
    v130 = *(v0 + 656);
    v134 = *(v0 + 632);
    v138 = *(v0 + 624);
    v142 = *(v0 + 600);
    v146 = *(v0 + 592);
    v150 = *(v0 + 584);
    v154 = *(v0 + 560);
    v158 = *(v0 + 552);
    v162 = *(v0 + 528);
    v166 = *(v0 + 520);
    v171 = *(v0 + 496);
    v178 = *(v0 + 472);
    **(v0 + 464) = v185;

    v32 = *(v0 + 8);
  }

  return v32();
}

uint64_t sub_10003A3CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10001530C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10001D1A8(0, &qword_1000FC7F0, AVAssetTrack_ptr);
    **(*(v4 + 64) + 40) = sub_1000C53A4();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10003A4D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003A518()
{
  v18 = sub_1000C4CC4();
  v1 = *(v18 - 8);
  v2 = *(v1 + 80);
  v16 = (v2 + 32) & ~v2;
  v3 = (*(v1 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = sub_1000C26A4();
  v4 = *(v17 - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 8) & ~v5;
  v7 = *(v4 + 64);
  v8 = sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v15 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v16, v18);

  (*(v4 + 8))(v0 + v6, v17);
  (*(v9 + 8))(v0 + v11, v8);

  return _swift_deallocObject(v0, v11 + v15, v12 | 7);
}

uint64_t sub_10003A71C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000C4CC4() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1000C26A4() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1000124CC(&qword_1000FC780, &qword_1000CAD40) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v7);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10003A8F0;

  return sub_100031A88(a1, v13, v14, v1 + v6, v15, v1 + v9, v1 + v12);
}

uint64_t sub_10003A8F0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10003A9E4()
{
  v17 = sub_1000C4CC4();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_1000C26A4();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v2 | v6 | v11;

  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v15, v13 | 7);
}

uint64_t sub_10003ABCC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000C4CC4() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000C26A4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1000124CC(&qword_1000FC780, &qword_1000CAD40) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10003A8F0;

  return sub_100032464(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

unint64_t sub_10003AD80()
{
  result = qword_1000FC790;
  if (!qword_1000FC790)
  {
    sub_10001D1A8(255, &qword_1000FC1B0, OS_dispatch_queue_serial_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC790);
  }

  return result;
}

uint64_t sub_10003ADE8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10003B8E8;

  return sub_100032764(a1, v6, v7, v9, v8, a2);
}

uint64_t sub_10003AEB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000124CC(&qword_1000FC7F8, &unk_1000CADF0);
  v38 = a2;
  result = sub_1000C59C4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1000C5CB4();
      sub_1000C52C4();
      result = sub_1000C5CD4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10003B150(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000124CC(&qword_1000FC540, &unk_1000CE8C0);
  v36 = a2;
  result = sub_1000C59C4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_10001D8C8(v25, v37);
      }

      else
      {
        sub_10001D804(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1000C5CB4();
      sub_1000C52C4();
      result = sub_1000C5CD4();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_10001D8C8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_10003B408(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100099FF8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10003B72C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10003B150(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100099FF8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1000C5C54();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_100015F68(v23);

    return sub_10001D8C8(a1, v23);
  }

  else
  {
    sub_10003B558(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_10003B558(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10001D8C8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_10003B5C4()
{
  v1 = v0;
  sub_1000124CC(&qword_1000FC7F8, &unk_1000CADF0);
  v2 = *v0;
  v3 = sub_1000C59B4();
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
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_10003B72C()
{
  v1 = v0;
  sub_1000124CC(&qword_1000FC540, &unk_1000CE8C0);
  v2 = *v0;
  v3 = sub_1000C59B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10001D804(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10001D8C8(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_10003B8FC(uint64_t a1)
{
  result = sub_100012958();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003B928()
{
  result = qword_1000FC800;
  if (!qword_1000FC800)
  {
    sub_1000C4394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC800);
  }

  return result;
}

uint64_t sub_10003B9C0@<X0>(uint64_t a1@<X8>)
{
  v561 = a1;
  v424 = sub_1000C3964();
  v423 = *(v424 - 8);
  v1 = *(v423 + 64);
  __chkstk_darwin(v424);
  v422 = &v392 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v426 = sub_1000C1664();
  v425 = *(v426 - 8);
  v3 = *(v425 + 64);
  __chkstk_darwin(v426);
  v419 = &v392 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000124CC(&qword_1000FC830, &qword_1000CAEB0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v417 = &v392 - v7;
  v421 = sub_1000C39B4();
  v420 = *(v421 - 8);
  v8 = *(v420 + 64);
  __chkstk_darwin(v421);
  v418 = &v392 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v416 = sub_1000C3984();
  v415 = *(v416 - 8);
  v10 = *(v415 + 64);
  __chkstk_darwin(v416);
  v414 = &v392 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v413 = sub_1000C3784();
  v412 = *(v413 - 8);
  v12 = *(v412 + 64);
  __chkstk_darwin(v413);
  v411 = &v392 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v410 = sub_1000C3744();
  v409 = *(v410 - 8);
  v14 = *(v409 + 64);
  __chkstk_darwin(v410);
  v408 = &v392 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v436 = sub_1000C3674();
  v435 = *(v436 - 8);
  v16 = *(v435 + 64);
  __chkstk_darwin(v436);
  v434 = &v392 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v444 = sub_1000C3AA4();
  v443 = *(v444 - 8);
  v18 = *(v443 + 64);
  __chkstk_darwin(v444);
  v442 = &v392 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v452 = sub_1000C3A04();
  v451 = *(v452 - 8);
  v20 = *(v451 + 64);
  __chkstk_darwin(v452);
  v460 = &v392 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v459 = sub_1000C3624();
  v458 = *(v459 - 8);
  v22 = *(v458 + 64);
  __chkstk_darwin(v459);
  v467 = &v392 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v466 = sub_1000C3A64();
  v465 = *(v466 - 8);
  v24 = *(v465 + 64);
  __chkstk_darwin(v466);
  v468 = &v392 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v473 = sub_1000C3A84();
  v472 = *(v473 - 8);
  v26 = *(v472 + 64);
  __chkstk_darwin(v473);
  v471 = &v392 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v479 = sub_1000C3934();
  v478 = *(v479 - 8);
  v28 = *(v478 + 64);
  __chkstk_darwin(v479);
  v480 = &v392 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v485 = sub_1000C3904();
  v484 = *(v485 - 8);
  v30 = *(v484 + 64);
  __chkstk_darwin(v485);
  v483 = &v392 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v494 = sub_1000C36E4();
  v493 = *(v494 - 8);
  v32 = *(v493 + 64);
  __chkstk_darwin(v494);
  v495 = &v392 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v492 = sub_1000C3764();
  v491 = *(v492 - 8);
  v34 = *(v491 + 64);
  __chkstk_darwin(v492);
  v490 = &v392 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v500 = sub_1000C3884();
  v499 = *(v500 - 8);
  v36 = *(v499 + 64);
  __chkstk_darwin(v500);
  v498 = &v392 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v505 = sub_1000C38C4();
  v504 = *(v505 - 8);
  v38 = *(v504 + 64);
  __chkstk_darwin(v505);
  v503 = &v392 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v510 = sub_1000C37E4();
  v509 = *(v510 - 8);
  v40 = *(v509 + 64);
  __chkstk_darwin(v510);
  v508 = &v392 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v515 = sub_1000C3A24();
  v514 = *(v515 - 8);
  v42 = *(v514 + 64);
  __chkstk_darwin(v515);
  v513 = &v392 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v520 = sub_1000C38A4();
  v519 = *(v520 - 8);
  v44 = *(v519 + 64);
  __chkstk_darwin(v520);
  v518 = &v392 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v526 = sub_1000C3644();
  v525 = *(v526 - 8);
  v46 = *(v525 + 64);
  __chkstk_darwin(v526);
  v524 = &v392 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v538 = sub_1000C3864();
  v537 = *(v538 - 8);
  v48 = *(v537 + 64);
  __chkstk_darwin(v538);
  v531 = &v392 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v536 = sub_1000C3704();
  v535 = *(v536 - 8);
  v50 = *(v535 + 64);
  __chkstk_darwin(v536);
  v534 = &v392 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1000C3824();
  v542 = *(v52 - 8);
  v543 = v52;
  v53 = *(v542 + 64);
  __chkstk_darwin(v52);
  v541 = &v392 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1000C3724();
  v546 = *(v55 - 8);
  v547 = v55;
  v56 = *(v546 + 64);
  __chkstk_darwin(v55);
  v545 = &v392 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1000C38E4();
  v550 = *(v58 - 8);
  v551 = v58;
  v59 = *(v550 + 64);
  __chkstk_darwin(v58);
  v549 = &v392 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000C36B4();
  v554 = *(v61 - 8);
  v555 = v61;
  v62 = *(v554 + 64);
  __chkstk_darwin(v61);
  v553 = &v392 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000124CC(&qword_1000FC838, &qword_1000CAEB8);
  v65 = *(*(v64 - 8) + 64);
  v66 = __chkstk_darwin(v64 - 8);
  v407 = &v392 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __chkstk_darwin(v66);
  v405 = &v392 - v69;
  v70 = __chkstk_darwin(v68);
  v406 = &v392 - v71;
  v72 = __chkstk_darwin(v70);
  v404 = &v392 - v73;
  v74 = __chkstk_darwin(v72);
  v403 = &v392 - v75;
  v76 = __chkstk_darwin(v74);
  v402 = &v392 - v77;
  v78 = __chkstk_darwin(v76);
  v433 = &v392 - v79;
  v80 = __chkstk_darwin(v78);
  v432 = &v392 - v81;
  v82 = __chkstk_darwin(v80);
  v441 = &v392 - v83;
  v84 = __chkstk_darwin(v82);
  v450 = &v392 - v85;
  v86 = __chkstk_darwin(v84);
  v449 = &v392 - v87;
  v88 = __chkstk_darwin(v86);
  v448 = &v392 - v89;
  v90 = __chkstk_darwin(v88);
  v447 = &v392 - v91;
  v92 = __chkstk_darwin(v90);
  v457 = &v392 - v93;
  v94 = __chkstk_darwin(v92);
  v456 = &v392 - v95;
  v96 = __chkstk_darwin(v94);
  v455 = &v392 - v97;
  v98 = __chkstk_darwin(v96);
  v454 = &v392 - v99;
  v100 = __chkstk_darwin(v98);
  v464 = &v392 - v101;
  v102 = __chkstk_darwin(v100);
  v463 = &v392 - v103;
  v104 = __chkstk_darwin(v102);
  v470 = &v392 - v105;
  v106 = __chkstk_darwin(v104);
  v477 = &v392 - v107;
  v108 = __chkstk_darwin(v106);
  v476 = &v392 - v109;
  v110 = __chkstk_darwin(v108);
  v482 = &v392 - v111;
  v112 = __chkstk_darwin(v110);
  v489 = &v392 - v113;
  v114 = __chkstk_darwin(v112);
  v488 = &v392 - v115;
  v116 = __chkstk_darwin(v114);
  v487 = &v392 - v117;
  v118 = __chkstk_darwin(v116);
  v497 = &v392 - v119;
  v120 = __chkstk_darwin(v118);
  v502 = &v392 - v121;
  v122 = __chkstk_darwin(v120);
  v507 = &v392 - v123;
  v124 = __chkstk_darwin(v122);
  v512 = &v392 - v125;
  v126 = __chkstk_darwin(v124);
  v517 = &v392 - v127;
  v128 = __chkstk_darwin(v126);
  v523 = &v392 - v129;
  v130 = __chkstk_darwin(v128);
  v530 = &v392 - v131;
  v132 = __chkstk_darwin(v130);
  v529 = &v392 - v133;
  v134 = __chkstk_darwin(v132);
  v533 = &v392 - v135;
  v136 = __chkstk_darwin(v134);
  v540 = &v392 - v137;
  v138 = __chkstk_darwin(v136);
  v544 = &v392 - v139;
  v140 = __chkstk_darwin(v138);
  v548 = &v392 - v141;
  v142 = __chkstk_darwin(v140);
  v552 = &v392 - v143;
  __chkstk_darwin(v142);
  v556 = &v392 - v144;
  v145 = sub_1000C3804();
  v557 = *(v145 - 8);
  v558 = v145;
  v146 = *(v557 + 64);
  v147 = __chkstk_darwin(v145);
  v401 = &v392 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __chkstk_darwin(v147);
  v399 = &v392 - v150;
  v151 = __chkstk_darwin(v149);
  v400 = &v392 - v152;
  v153 = __chkstk_darwin(v151);
  v397 = &v392 - v154;
  v155 = __chkstk_darwin(v153);
  v396 = &v392 - v156;
  v157 = __chkstk_darwin(v155);
  v395 = &v392 - v158;
  v159 = __chkstk_darwin(v157);
  v398 = &v392 - v160;
  v161 = __chkstk_darwin(v159);
  v394 = &v392 - v162;
  v163 = __chkstk_darwin(v161);
  v427 = &v392 - v164;
  v165 = __chkstk_darwin(v163);
  v431 = &v392 - v166;
  v167 = __chkstk_darwin(v165);
  v430 = &v392 - v168;
  v169 = __chkstk_darwin(v167);
  v429 = &v392 - v170;
  v171 = __chkstk_darwin(v169);
  v428 = &v392 - v172;
  v173 = __chkstk_darwin(v171);
  v440 = &v392 - v174;
  v175 = __chkstk_darwin(v173);
  v439 = &v392 - v176;
  v177 = __chkstk_darwin(v175);
  v438 = &v392 - v178;
  v179 = __chkstk_darwin(v177);
  v437 = &v392 - v180;
  v181 = __chkstk_darwin(v179);
  v446 = &v392 - v182;
  v183 = __chkstk_darwin(v181);
  v445 = &v392 - v184;
  v185 = __chkstk_darwin(v183);
  v453 = &v392 - v186;
  v187 = __chkstk_darwin(v185);
  v462 = &v392 - v188;
  v189 = __chkstk_darwin(v187);
  v461 = &v392 - v190;
  v191 = __chkstk_darwin(v189);
  v469 = &v392 - v192;
  v193 = __chkstk_darwin(v191);
  v475 = &v392 - v194;
  v195 = __chkstk_darwin(v193);
  v474 = &v392 - v196;
  v197 = __chkstk_darwin(v195);
  v481 = &v392 - v198;
  v199 = __chkstk_darwin(v197);
  v486 = &v392 - v200;
  v201 = __chkstk_darwin(v199);
  v496 = &v392 - v202;
  v203 = __chkstk_darwin(v201);
  v501 = &v392 - v204;
  v205 = __chkstk_darwin(v203);
  v506 = &v392 - v206;
  v207 = __chkstk_darwin(v205);
  v511 = &v392 - v208;
  v209 = __chkstk_darwin(v207);
  v516 = &v392 - v210;
  v211 = __chkstk_darwin(v209);
  v527 = &v392 - v212;
  v213 = __chkstk_darwin(v211);
  v522 = &v392 - v214;
  v215 = __chkstk_darwin(v213);
  v521 = &v392 - v216;
  v217 = __chkstk_darwin(v215);
  v528 = &v392 - v218;
  v219 = __chkstk_darwin(v217);
  v532 = &v392 - v220;
  v221 = __chkstk_darwin(v219);
  v539 = &v392 - v222;
  v223 = __chkstk_darwin(v221);
  v225 = &v392 - v224;
  v226 = __chkstk_darwin(v223);
  v228 = &v392 - v227;
  __chkstk_darwin(v226);
  v230 = &v392 - v229;
  v231 = sub_1000C3694();
  v232 = *(v231 - 8);
  v233 = *(v232 + 64);
  __chkstk_darwin(v231);
  v235 = &v392 - ((v234 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_1000C3A34();
  v237 = *(v236 - 8);
  v238 = *(v237 + 64);
  v239 = __chkstk_darwin(v236);
  v393 = &v392 - ((v240 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v239);
  v242 = (&v392 - v241);
  sub_1000C1654();
  (*(v237 + 16))(v242, v559, v236);
  v243 = (*(v237 + 88))(v242, v236);
  if (v243 == enum case for LinkPresentation.SpecializationMetadata.songMetadata(_:))
  {
    (*(v237 + 96))(v242, v236);
    (*(v232 + 32))(v235, v242, v231);
    v244 = v556;
    sub_1000C3684();
    v245 = v557;
    v246 = v558;
    if ((*(v557 + 48))(v244, 1, v558) == 1)
    {
      (*(v232 + 8))(v235, v231);
      return sub_100018F90(v244, &qword_1000FC838, &qword_1000CAEB8);
    }

    else
    {
      (*(v245 + 32))(v230, v244, v246);
      v254 = sub_1000C37F4();
      sub_1000C1624(v254);
      (*(v245 + 8))(v230, v246);
      return (*(v232 + 8))(v235, v231);
    }
  }

  v248 = v557;
  v249 = v558;
  if (v243 == enum case for LinkPresentation.SpecializationMetadata.albumMetadata(_:))
  {
    (*(v237 + 96))(v242, v236);
    v251 = v553;
    v250 = v554;
    v252 = v555;
    (*(v554 + 32))(v553, v242, v555);
    v253 = v552;
    sub_1000C36A4();
    if ((*(v248 + 48))(v253, 1, v249) != 1)
    {
      (*(v248 + 32))(v228, v253, v249);
      v258 = sub_1000C37F4();
      sub_1000C1624(v258);
      (*(v248 + 8))(v228, v249);
      return (*(v250 + 8))(v251, v252);
    }

    (*(v250 + 8))(v251, v252);
    return sub_100018F90(v253, &qword_1000FC838, &qword_1000CAEB8);
  }

  if (v243 == enum case for LinkPresentation.SpecializationMetadata.musicVideoMetadata(_:))
  {
    (*(v237 + 96))(v242, v236);
    v256 = v549;
    v255 = v550;
    v257 = v551;
    (*(v550 + 32))(v549, v242, v551);
    v253 = v548;
    sub_1000C38D4();
    if ((*(v248 + 48))(v253, 1, v249) != 1)
    {
      (*(v248 + 32))(v225, v253, v249);
      v264 = sub_1000C37F4();
      sub_1000C1624(v264);
      (*(v248 + 8))(v225, v249);
      return (*(v255 + 8))(v256, v257);
    }

    (*(v255 + 8))(v256, v257);
    return sub_100018F90(v253, &qword_1000FC838, &qword_1000CAEB8);
  }

  if (v243 == enum case for LinkPresentation.SpecializationMetadata.artistMetadata(_:))
  {
    (*(v237 + 96))(v242, v236);
    v260 = v545;
    v259 = v546;
    v261 = v547;
    (*(v546 + 32))(v545, v242, v547);
    v262 = v544;
    sub_1000C3714();
    v263 = v248;
    if ((*(v248 + 48))(v262, 1, v249) == 1)
    {
      (*(v259 + 8))(v260, v261);
      return sub_100018F90(v262, &qword_1000FC838, &qword_1000CAEB8);
    }

    v270 = *(v248 + 32);
    v271 = v539;
    v270(v539, v262, v249);
    v272 = sub_1000C37F4();
    sub_1000C1624(v272);
    (*(v263 + 8))(v271, v249);
    return (*(v259 + 8))(v260, v261);
  }

  if (v243 == enum case for LinkPresentation.SpecializationMetadata.playlistMetadata(_:))
  {
    (*(v237 + 96))(v242, v236);
    v266 = v541;
    v265 = v542;
    v267 = v543;
    (*(v542 + 32))(v541, v242, v543);
    v268 = v540;
    sub_1000C3814();
    v269 = v248;
    if ((*(v248 + 48))(v268, 1, v249) == 1)
    {
LABEL_19:
      (*(v265 + 8))(v266, v267);
      return sub_100018F90(v268, &qword_1000FC838, &qword_1000CAEB8);
    }

    v274 = *(v248 + 32);
    v275 = &v562;
LABEL_26:
    v276 = *(v275 - 32);
    v274(v276, v268, v249);
    v277 = sub_1000C37F4();
    sub_1000C1624(v277);
    (*(v269 + 8))(v276, v249);
    return (*(v265 + 8))(v266, v267);
  }

  if (v243 == enum case for LinkPresentation.SpecializationMetadata.radioMetadata(_:))
  {
    (*(v237 + 96))(v242, v236);
    v259 = v535;
    v260 = v534;
    v261 = v536;
    (*(v535 + 32))(v534, v242, v536);
    v253 = v533;
    sub_1000C36F4();
    v273 = v248;
    if ((*(v248 + 48))(v253, 1, v249) == 1)
    {
      (*(v259 + 8))(v260, v261);
      return sub_100018F90(v253, &qword_1000FC838, &qword_1000CAEB8);
    }

    v281 = *(v248 + 32);
    v282 = v528;
    v281(v528, v253, v249);
    v283 = sub_1000C37F4();
    sub_1000C1624(v283);
    (*(v273 + 8))(v282, v249);
    return (*(v259 + 8))(v260, v261);
  }

  if (v243 != enum case for LinkPresentation.SpecializationMetadata.softwareMetadata(_:))
  {
    if (v243 == enum case for LinkPresentation.SpecializationMetadata.bookMetadata(_:))
    {
      (*(v237 + 96))(v242, v236);
      v265 = v525;
      v266 = v524;
      v267 = v526;
      (*(v525 + 32))(v524, v242, v526);
      v268 = v523;
      sub_1000C3634();
      v269 = v248;
      if ((*(v248 + 48))(v268, 1, v249) == 1)
      {
        goto LABEL_19;
      }

      v274 = *(v248 + 32);
      v275 = &v548;
      goto LABEL_26;
    }

    if (v243 == enum case for LinkPresentation.SpecializationMetadata.audioBookMetadata(_:))
    {
      (*(v237 + 96))(v242, v236);
      v265 = v519;
      v266 = v518;
      v267 = v520;
      (*(v519 + 32))(v518, v242, v520);
      v268 = v517;
      sub_1000C3894();
      v269 = v248;
      if ((*(v248 + 48))(v268, 1, v249) == 1)
      {
        goto LABEL_19;
      }

      v274 = *(v248 + 32);
      v275 = &v543;
      goto LABEL_26;
    }

    if (v243 == enum case for LinkPresentation.SpecializationMetadata.podcastEpisodeMetadata(_:))
    {
      (*(v237 + 96))(v242, v236);
      v265 = v514;
      v266 = v513;
      v267 = v515;
      (*(v514 + 32))(v513, v242, v515);
      v268 = v512;
      sub_1000C3A14();
      v269 = v248;
      if ((*(v248 + 48))(v268, 1, v249) == 1)
      {
        goto LABEL_19;
      }

      v274 = *(v248 + 32);
      v275 = &v538;
      goto LABEL_26;
    }

    if (v243 == enum case for LinkPresentation.SpecializationMetadata.podcastMetadata(_:))
    {
      (*(v237 + 96))(v242, v236);
      v265 = v509;
      v266 = v508;
      v267 = v510;
      (*(v509 + 32))(v508, v242, v510);
      v268 = v507;
      sub_1000C37D4();
      v269 = v248;
      if ((*(v248 + 48))(v268, 1, v249) == 1)
      {
        goto LABEL_19;
      }

      v274 = *(v248 + 32);
      v275 = &v533;
      goto LABEL_26;
    }

    if (v243 == enum case for LinkPresentation.SpecializationMetadata.tvEpisodeMetadata(_:))
    {
      (*(v237 + 96))(v242, v236);
      v265 = v504;
      v266 = v503;
      v267 = v505;
      (*(v504 + 32))(v503, v242, v505);
      v268 = v502;
      sub_1000C38B4();
      v269 = v248;
      if ((*(v248 + 48))(v268, 1, v249) == 1)
      {
        goto LABEL_19;
      }

      v274 = *(v248 + 32);
      v275 = &v528;
      goto LABEL_26;
    }

    if (v243 == enum case for LinkPresentation.SpecializationMetadata.tvSeasonMetadata(_:))
    {
      (*(v237 + 96))(v242, v236);
      v265 = v499;
      v266 = v498;
      v267 = v500;
      (*(v499 + 32))(v498, v242, v500);
      v268 = v497;
      sub_1000C3874();
      v269 = v248;
      if ((*(v248 + 48))(v268, 1, v249) == 1)
      {
        goto LABEL_19;
      }

      v274 = *(v248 + 32);
      v275 = &v518;
      goto LABEL_26;
    }

    if (v243 == enum case for LinkPresentation.SpecializationMetadata.tvShowMetadata(_:))
    {
      (*(v237 + 96))(v242, v236);
      v265 = v491;
      v266 = v490;
      v267 = v492;
      (*(v491 + 32))(v490, v242, v492);
      v268 = v487;
      sub_1000C3754();
      if ((*(v248 + 48))(v268, 1, v249) == 1)
      {
        goto LABEL_19;
      }

      v269 = v248;
      v274 = *(v248 + 32);
      v275 = &v513;
      goto LABEL_26;
    }

    if (v243 == enum case for LinkPresentation.SpecializationMetadata.movieMetadata(_:))
    {
      (*(v237 + 96))(v242, v236);
      (*(v493 + 32))(v495, v242, v494);
      v301 = v488;
      sub_1000C36C4();
      v302 = *(v248 + 48);
      if (v302(v301, 1, v249) == 1)
      {
        sub_100018F90(v488, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v305 = v474;
        (*(v248 + 32))(v474, v488, v249);
        v306 = sub_1000C37F4();
        sub_1000C1624(v306);
        (*(v248 + 8))(v305, v249);
      }

      v307 = v489;
      sub_1000C36D4();
      if (v302(v307, 1, v249) != 1)
      {
        v310 = v475;
        (*(v248 + 32))(v475, v489, v249);
        v311 = sub_1000C37F4();
        sub_1000C1624(v311);
        (*(v248 + 8))(v310, v249);
        return (*(v493 + 8))(v495, v494);
      }

      (*(v493 + 8))(v495, v494);
      v304 = &v521;
      return sub_100018F90(*(v304 - 32), &qword_1000FC838, &qword_1000CAEB8);
    }

    if (v243 == enum case for LinkPresentation.SpecializationMetadata.movieBundleMetadata(_:))
    {
      (*(v237 + 96))(v242, v236);
      (*(v484 + 32))(v483, v242, v485);
      v303 = v482;
      sub_1000C38F4();
      if ((*(v248 + 48))(v303, 1, v249) != 1)
      {
        v312 = v469;
        (*(v248 + 32))(v469, v482, v249);
        v313 = sub_1000C37F4();
        sub_1000C1624(v313);
        (*(v248 + 8))(v312, v249);
        return (*(v484 + 8))(v483, v485);
      }

      (*(v484 + 8))(v483, v485);
      v304 = &v514;
      return sub_100018F90(*(v304 - 32), &qword_1000FC838, &qword_1000CAEB8);
    }

    if (v243 == enum case for LinkPresentation.SpecializationMetadata.cloudSharingMetadata(_:))
    {
      (*(v237 + 96))(v242, v236);
      (*(v478 + 32))(v480, v242, v479);
      v308 = v476;
      sub_1000C3914();
      v309 = *(v248 + 48);
      if (v309(v308, 1, v249) == 1)
      {
        sub_100018F90(v476, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v315 = v461;
        (*(v248 + 32))(v461, v476, v249);
        v316 = sub_1000C37F4();
        sub_1000C1624(v316);
        (*(v248 + 8))(v315, v249);
      }

      v317 = v477;
      sub_1000C3924();
      if (v309(v317, 1, v249) != 1)
      {
        v320 = v462;
        (*(v248 + 32))(v462, v477, v249);
        v321 = sub_1000C37F4();
        sub_1000C1624(v321);
        (*(v248 + 8))(v320, v249);
        return (*(v478 + 8))(v480, v479);
      }

      (*(v478 + 8))(v480, v479);
      v304 = &v509;
      return sub_100018F90(*(v304 - 32), &qword_1000FC838, &qword_1000CAEB8);
    }

    if (v243 == enum case for LinkPresentation.SpecializationMetadata.cloudFamilyInvitationMetadata(_:))
    {
      (*(v237 + 96))(v242, v236);
      (*(v472 + 32))(v471, v242, v473);
      v314 = v470;
      sub_1000C3A74();
      if ((*(v248 + 48))(v314, 1, v249) != 1)
      {
        v322 = v453;
        (*(v248 + 32))(v453, v470, v249);
        v323 = sub_1000C37F4();
        sub_1000C1624(v323);
        (*(v248 + 8))(v322, v249);
        return (*(v472 + 8))(v471, v473);
      }

      (*(v472 + 8))(v471, v473);
      v304 = &v502;
      return sub_100018F90(*(v304 - 32), &qword_1000FC838, &qword_1000CAEB8);
    }

    if (v243 == enum case for LinkPresentation.SpecializationMetadata.gameCenterInvitationMetadata(_:))
    {
      (*(v237 + 96))(v242, v236);
      (*(v465 + 32))(v468, v242, v466);
      v318 = v463;
      sub_1000C3A54();
      v319 = *(v248 + 48);
      if (v319(v318, 1, v249) == 1)
      {
        sub_100018F90(v463, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v326 = v445;
        (*(v248 + 32))(v445, v463, v249);
        v327 = sub_1000C37F4();
        sub_1000C1624(v327);
        (*(v248 + 8))(v326, v249);
      }

      v328 = v464;
      sub_1000C3A44();
      if (v319(v328, 1, v249) != 1)
      {
        v331 = v446;
        (*(v248 + 32))(v446, v464, v249);
        v332 = sub_1000C37F4();
        sub_1000C1624(v332);
        (*(v248 + 8))(v331, v249);
        return (*(v465 + 8))(v468, v466);
      }

      (*(v465 + 8))(v468, v466);
      v304 = &v496;
      return sub_100018F90(*(v304 - 32), &qword_1000FC838, &qword_1000CAEB8);
    }

    if (v243 == enum case for LinkPresentation.SpecializationMetadata.mapMetadata(_:))
    {
      (*(v237 + 96))(v242, v236);
      (*(v458 + 32))(v467, v242, v459);
      v324 = v454;
      sub_1000C35E4();
      v325 = *(v248 + 48);
      if (v325(v324, 1, v249) == 1)
      {
        sub_100018F90(v454, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v333 = v437;
        (*(v248 + 32))(v437, v454, v249);
        v334 = sub_1000C37F4();
        sub_1000C1624(v334);
        (*(v248 + 8))(v333, v249);
      }

      v335 = v455;
      sub_1000C3604();
      if (v325(v335, 1, v249) == 1)
      {
        sub_100018F90(v455, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v337 = v438;
        (*(v248 + 32))(v438, v455, v249);
        v338 = sub_1000C37F4();
        sub_1000C1624(v338);
        (*(v248 + 8))(v337, v249);
      }

      v339 = v456;
      sub_1000C3614();
      if (v325(v339, 1, v249) == 1)
      {
        sub_100018F90(v456, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v340 = v439;
        (*(v248 + 32))(v439, v456, v249);
        v341 = sub_1000C37F4();
        sub_1000C1624(v341);
        (*(v248 + 8))(v340, v249);
      }

      v342 = v457;
      sub_1000C35F4();
      if (v325(v342, 1, v249) != 1)
      {
        v343 = v440;
        (*(v248 + 32))(v440, v457, v249);
        v344 = sub_1000C37F4();
        sub_1000C1624(v344);
        (*(v248 + 8))(v343, v249);
        return (*(v458 + 8))(v467, v459);
      }

      (*(v458 + 8))(v467, v459);
      v304 = &v489;
      return sub_100018F90(*(v304 - 32), &qword_1000FC838, &qword_1000CAEB8);
    }

    if (v243 == enum case for LinkPresentation.SpecializationMetadata.mapCollectionMetadata(_:))
    {
      (*(v237 + 96))(v242, v236);
      (*(v451 + 32))(v460, v242, v452);
      v329 = v447;
      sub_1000C39D4();
      v330 = *(v248 + 48);
      if (v330(v329, 1, v249) == 1)
      {
        sub_100018F90(v447, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v345 = v428;
        (*(v248 + 32))(v428, v447, v249);
        v346 = sub_1000C37F4();
        sub_1000C1624(v346);
        (*(v248 + 8))(v345, v249);
      }

      v347 = v448;
      sub_1000C39E4();
      if (v330(v347, 1, v249) == 1)
      {
        sub_100018F90(v448, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v350 = v429;
        (*(v248 + 32))(v429, v448, v249);
        v351 = sub_1000C37F4();
        sub_1000C1624(v351);
        (*(v248 + 8))(v350, v249);
      }

      v352 = v449;
      sub_1000C39F4();
      if (v330(v352, 1, v249) == 1)
      {
        sub_100018F90(v449, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v353 = v430;
        (*(v248 + 32))(v430, v449, v249);
        v354 = sub_1000C37F4();
        sub_1000C1624(v354);
        (*(v248 + 8))(v353, v249);
      }

      v355 = v450;
      sub_1000C39C4();
      if (v330(v355, 1, v249) != 1)
      {
        v356 = v431;
        (*(v248 + 32))(v431, v450, v249);
        v357 = sub_1000C37F4();
        sub_1000C1624(v357);
        (*(v248 + 8))(v356, v249);
        return (*(v451 + 8))(v460, v452);
      }

      (*(v451 + 8))(v460, v452);
      v304 = &v482;
      return sub_100018F90(*(v304 - 32), &qword_1000FC838, &qword_1000CAEB8);
    }

    if (v243 == enum case for LinkPresentation.SpecializationMetadata.mapCollectionPublisherMetadata(_:))
    {
      (*(v237 + 96))(v242, v236);
      (*(v443 + 32))(v442, v242, v444);
      v336 = v441;
      sub_1000C3A94();
      if ((*(v248 + 48))(v336, 1, v249) != 1)
      {
        v358 = v427;
        (*(v248 + 32))(v427, v441, v249);
        v359 = sub_1000C37F4();
        sub_1000C1624(v359);
        (*(v248 + 8))(v358, v249);
        return (*(v443 + 8))(v442, v444);
      }

      (*(v443 + 8))(v442, v444);
      v304 = &v473;
      return sub_100018F90(*(v304 - 32), &qword_1000FC838, &qword_1000CAEB8);
    }

    if (v243 == enum case for LinkPresentation.SpecializationMetadata.fileMetadata(_:))
    {
      (*(v237 + 96))(v242, v236);
      (*(v435 + 32))(v434, v242, v436);
      v348 = v432;
      sub_1000C3664();
      v349 = *(v248 + 48);
      if (v349(v348, 1, v249) == 1)
      {
        sub_100018F90(v432, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v360 = v394;
        (*(v248 + 32))(v394, v432, v249);
        v361 = sub_1000C37F4();
        sub_1000C1624(v361);
        (*(v248 + 8))(v360, v249);
      }

      v362 = v433;
      sub_1000C3654();
      if (v349(v362, 1, v249) != 1)
      {
        v364 = v398;
        (*(v248 + 32))(v398, v433, v249);
        v365 = sub_1000C37F4();
        sub_1000C1624(v365);
        (*(v248 + 8))(v364, v249);
        return (*(v435 + 8))(v434, v436);
      }

      (*(v435 + 8))(v434, v436);
      v304 = &v465;
      return sub_100018F90(*(v304 - 32), &qword_1000FC838, &qword_1000CAEB8);
    }

    if (v243 == enum case for LinkPresentation.SpecializationMetadata.appleNewsMetadata(_:))
    {
      return (*(v237 + 8))(v242, v236);
    }

    if (v243 == enum case for LinkPresentation.SpecializationMetadata.stocksMetadata(_:))
    {
      (*(v237 + 96))(v242, v236);
      (*(v409 + 32))(v408, v242, v410);
      v363 = v402;
      sub_1000C3734();
      if ((*(v248 + 48))(v363, 1, v249) != 1)
      {
        v367 = v395;
        (*(v248 + 32))(v395, v402, v249);
        v368 = sub_1000C37F4();
        sub_1000C1624(v368);
        (*(v248 + 8))(v367, v249);
        return (*(v409 + 8))(v408, v410);
      }

      (*(v409 + 8))(v408, v410);
      v304 = &v434;
    }

    else if (v243 == enum case for LinkPresentation.SpecializationMetadata.appleTVMetadata(_:))
    {
      (*(v237 + 96))(v242, v236);
      (*(v412 + 32))(v411, v242, v413);
      v366 = v403;
      sub_1000C3774();
      if ((*(v248 + 48))(v366, 1, v249) != 1)
      {
        v370 = v396;
        (*(v248 + 32))(v396, v403, v249);
        v371 = sub_1000C37F4();
        sub_1000C1624(v371);
        (*(v248 + 8))(v370, v249);
        return (*(v412 + 8))(v411, v413);
      }

      (*(v412 + 8))(v411, v413);
      v304 = &v435;
    }

    else if (v243 == enum case for LinkPresentation.SpecializationMetadata.photosMomentMetadata(_:))
    {
      (*(v237 + 96))(v242, v236);
      (*(v415 + 32))(v414, v242, v416);
      v369 = v404;
      sub_1000C3974();
      if ((*(v248 + 48))(v369, 1, v249) != 1)
      {
        v374 = v397;
        (*(v248 + 32))(v397, v404, v249);
        v375 = sub_1000C37F4();
        sub_1000C1624(v375);
        (*(v248 + 8))(v374, v249);
        return (*(v415 + 8))(v414, v416);
      }

      (*(v415 + 8))(v414, v416);
      v304 = &v436;
    }

    else
    {
      if (v243 == enum case for LinkPresentation.SpecializationMetadata.photosStatusMetadata(_:) || v243 == enum case for LinkPresentation.SpecializationMetadata.photosSharedLibraryInvitationMetadata(_:) || v243 == enum case for LinkPresentation.SpecializationMetadata.businessChatMetadata(_:) || v243 == enum case for LinkPresentation.SpecializationMetadata.walletPassMetadata(_:) || v243 == enum case for LinkPresentation.SpecializationMetadata.appStoreStoryMetadata(_:) || v243 == enum case for LinkPresentation.SpecializationMetadata.summarizedLinkMetadata(_:) || v243 == enum case for LinkPresentation.SpecializationMetadata.faceTimeInviteMetadata(_:) || v243 == enum case for LinkPresentation.SpecializationMetadata.passwordsInviteMetadata(_:))
      {
        return (*(v237 + 8))(v242, v236);
      }

      if (v243 != enum case for LinkPresentation.SpecializationMetadata.gameActivityMetadata(_:))
      {
        if (v243 == enum case for LinkPresentation.SpecializationMetadata.sharedObjectMetadata(_:))
        {
          (*(v237 + 96))(v242, v236);
          v376 = *v242;
          v377 = swift_projectBox();
          (*(v420 + 16))(v418, v377, v421);
          v378 = v406;
          sub_1000C39A4();
          if ((*(v248 + 48))(v378, 1, v249) == 1)
          {
            sub_100018F90(v406, &qword_1000FC838, &qword_1000CAEB8);
          }

          else
          {
            v386 = v400;
            (*(v248 + 32))(v400, v406, v249);
            v387 = sub_1000C37F4();
            sub_1000C1624(v387);
            (*(v248 + 8))(v386, v249);
          }

          v388 = v417;
          sub_1000C3994();
          if ((*(v237 + 48))(v388, 1, v236) == 1)
          {
            (*(v420 + 8))(v418, v421);
            sub_100018F90(v417, &qword_1000FC830, &qword_1000CAEB0);
          }

          else
          {
            v389 = (*(v237 + 32))(v393, v417, v236);
            v390 = v560;
            sub_10003B9C0(v389);
            v560 = v390;
            if (v390)
            {
              (*(v237 + 8))(v393, v236);
              (*(v420 + 8))(v418, v421);
              (*(v425 + 8))(v561, v426);
            }

            else
            {
              v391 = v419;
              sub_1000C1644();
              (*(v425 + 8))(v391, v426);
              (*(v237 + 8))(v393, v236);
              (*(v420 + 8))(v418, v421);
            }
          }
        }

        sub_1000422BC();
        v382 = swift_allocError();
        *v383 = 0;
        *(v383 + 8) = 0;
        *(v383 + 16) = 1;
        v560 = v382;
        swift_willThrow();
        (*(v425 + 8))(v561, v426);
        return (*(v237 + 8))(v242, v236);
      }

      (*(v237 + 96))(v242, v236);
      (*(v423 + 32))(v422, v242, v424);
      v372 = v405;
      sub_1000C3944();
      v373 = *(v248 + 48);
      if (v373(v372, 1, v249) == 1)
      {
        sub_100018F90(v405, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v379 = v399;
        (*(v248 + 32))(v399, v405, v249);
        v380 = sub_1000C37F4();
        sub_1000C1624(v380);
        (*(v248 + 8))(v379, v249);
      }

      v381 = v407;
      sub_1000C3954();
      if (v373(v381, 1, v249) != 1)
      {
        v384 = v401;
        (*(v248 + 32))(v401, v407, v249);
        v385 = sub_1000C37F4();
        sub_1000C1624(v385);
        (*(v248 + 8))(v384, v249);
        return (*(v423 + 8))(v422, v424);
      }

      (*(v423 + 8))(v422, v424);
      v304 = &v439;
    }

    return sub_100018F90(*(v304 - 32), &qword_1000FC838, &qword_1000CAEB8);
  }

  (*(v237 + 96))(v242, v236);
  v278 = v531;
  (*(v537 + 32))(v531, v242, v538);
  v279 = v529;
  sub_1000C3854();
  v280 = *(v248 + 48);
  if ((v280)(v279, 1, v249) == 1)
  {
    sub_100018F90(v279, &qword_1000FC838, &qword_1000CAEB8);
  }

  else
  {
    v284 = *(v248 + 32);
    v559 = v280;
    v285 = v521;
    v284(v521, v279, v249);
    v286 = sub_1000C37F4();
    sub_1000C1624(v286);
    v287 = v285;
    v280 = v559;
    (*(v248 + 8))(v287, v249);
  }

  v288 = v530;
  sub_1000C3844();
  if ((v280)(v288, 1, v249) == 1)
  {
    sub_100018F90(v288, &qword_1000FC838, &qword_1000CAEB8);
  }

  else
  {
    v289 = v522;
    (*(v248 + 32))(v522, v288, v249);
    v290 = sub_1000C37F4();
    sub_1000C1624(v290);
    (*(v248 + 8))(v289, v249);
  }

  v291 = sub_1000C3834();
  if (v291)
  {
    v559 = v291;
    v292 = *(v291 + 16);
    v293 = v527;
    if (v292)
    {
      v295 = v248 + 16;
      v294 = *(v248 + 16);
      v296 = &v559[(*(v295 + 64) + 32) & ~*(v295 + 64)];
      v297 = *(v295 + 56);
      do
      {
        v294(v293, v296, v249);
        v298 = sub_1000C37F4();
        (*(v295 - 8))(v293, v249);
        sub_1000C1624(v298);
        v296 += v297;
        --v292;
      }

      while (v292);
    }

    v299 = *(v537 + 8);
    v300 = v531;
  }

  else
  {
    v299 = *(v537 + 8);
    v300 = v278;
  }

  return v299(v300, v538);
}

uint64_t sub_100040238@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C1664();
  v76 = *(v2 - 8);
  v77 = v2;
  v3 = *(v76 + 64);
  __chkstk_darwin(v2);
  v75 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000124CC(&qword_1000FC830, &qword_1000CAEB0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v81 = &v70 - v7;
  v8 = sub_1000C3A34();
  v85 = *(v8 - 8);
  v86 = v8;
  v9 = *(v85 + 64);
  __chkstk_darwin(v8);
  v84 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000124CC(&qword_1000FC838, &qword_1000CAEB8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v80 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v70 - v15;
  v17 = sub_1000C3804();
  v83 = *(v17 - 8);
  v18 = *(v83 + 64);
  v19 = __chkstk_darwin(v17);
  v79 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v78 = &v70 - v22;
  v23 = __chkstk_darwin(v21);
  v74 = &v70 - v24;
  __chkstk_darwin(v23);
  v26 = &v70 - v25;
  v27 = sub_1000124CC(&qword_1000FC410, &unk_1000CAEC0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v70 - v29;
  v31 = sub_1000C35D4();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a1;
  sub_1000C1654();
  sub_1000C3794();
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    return sub_100018F90(v30, &qword_1000FC410, &unk_1000CAEC0);
  }

  v71 = v32;
  v72 = v31;
  (*(v32 + 32))(v35, v30, v31);
  v82 = v35;
  sub_1000C35B4();
  v37 = v83;
  v73 = *(v83 + 48);
  if (v73(v16, 1, v17) == 1)
  {
    sub_100018F90(v16, &qword_1000FC838, &qword_1000CAEB8);
  }

  else
  {
    (*(v37 + 32))(v26, v16, v17);
    v40 = sub_1000C37F4();
    sub_1000C1624(v40);
    (*(v37 + 8))(v26, v17);
  }

  v38 = v87;
  v39 = v85;
  v41 = v80;
  v42 = v82;
  sub_1000C35C4();
  v43 = v73(v41, 1, v17);
  v73 = v17;
  if (v43 == 1)
  {
    sub_100018F90(v41, &qword_1000FC838, &qword_1000CAEB8);
  }

  else
  {
    v44 = v74;
    (*(v37 + 32))(v74, v41, v17);
    v45 = sub_1000C37F4();
    sub_1000C1624(v45);
    (*(v37 + 8))(v44, v17);
  }

  v46 = v84;
  v47 = sub_1000C35A4();
  v48 = v86;
  if (v47)
  {
    v80 = v47;
    v49 = *(v47 + 16);
    v50 = v73;
    v51 = v78;
    if (v49)
    {
      v52 = *(v83 + 16);
      v53 = &v80[(*(v83 + 80) + 32) & ~*(v83 + 80)];
      v54 = *(v83 + 72);
      v55 = (v83 + 8);
      do
      {
        v52(v51, v53, v50);
        v56 = sub_1000C37F4();
        (*v55)(v51, v50);
        sub_1000C1624(v56);
        v53 += v54;
        --v49;
      }

      while (v49);
    }

    v48 = v86;
    v38 = v87;
    v46 = v84;
    v39 = v85;
    v42 = v82;
  }

  v57 = sub_1000C3584();
  if (v57)
  {
    v80 = v57;
    v58 = *(v57 + 16);
    v59 = v79;
    v60 = v73;
    if (v58)
    {
      v61 = *(v83 + 16);
      v62 = &v80[(*(v83 + 80) + 32) & ~*(v83 + 80)];
      v63 = *(v83 + 72);
      v64 = (v83 + 8);
      do
      {
        v61(v59, v62, v60);
        v65 = sub_1000C37F4();
        (*v64)(v59, v60);
        sub_1000C1624(v65);
        v62 += v63;
        --v58;
      }

      while (v58);
    }

    v48 = v86;
    v38 = v87;
    v46 = v84;
    v39 = v85;
    v42 = v82;
  }

  v66 = v81;
  sub_1000C3594();
  v67 = (*(v39 + 48))(v66, 1, v48);
  v68 = v88;
  if (v67 == 1)
  {
    (*(v71 + 8))(v42, v72);
    return sub_100018F90(v66, &qword_1000FC830, &qword_1000CAEB0);
  }

  else
  {
    (*(v39 + 32))(v46, v66, v48);
    v69 = v75;
    sub_10003B9C0(v75);
    if (v38)
    {
      (*(v39 + 8))(v46, v48);
      (*(v71 + 8))(v42, v72);
      return (*(v76 + 8))(v68, v77);
    }

    else
    {
      sub_1000C1644();
      (*(v76 + 8))(v69, v77);
      (*(v39 + 8))(v46, v48);
      return (*(v71 + 8))(v42, v72);
    }
  }
}

void sub_100040A6C()
{
  v0 = sub_1000C3E74();
  sub_100042258(v0, qword_1000FC808);
  v1 = sub_100042220(v0, qword_1000FC808);
  sub_100040AB8(v1);
}

void sub_100040AB8(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = sub_1000C3E44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C3E94();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(NSKeyedArchiver);
  v12 = [v11 initRequiringSecureCoding:{1, v17[0]}];
  [v12 encodeObject:0];
  v13 = [v12 encodedData];
  v14 = sub_1000C1564();
  v16 = v15;

  sub_100018C68(v14, v16);
  sub_1000C3E84();
  (*(v7 + 16))(v5, v10, v6);
  (*(v2 + 104))(v5, enum case for EncodedAttachments.EncodedContent.other(_:), v1);
  sub_1000C3E64();
  (*(v7 + 8))(v10, v6);
  sub_100018CD0(v14, v16);
}

uint64_t sub_100040D2C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v83 = a2;
  v82 = a1;
  v71 = a4;
  v5 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v76 = &v67 - v7;
  v8 = sub_1000C4FC4();
  v78 = *(v8 - 8);
  v79 = v8;
  v9 = *(v78 + 64);
  __chkstk_darwin(v8);
  v77 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C27A4();
  v69 = *(v11 - 8);
  v70 = v11;
  v12 = *(v69 + 64);
  __chkstk_darwin(v11);
  v68 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1000C3E74();
  *&v87 = *(v85 - 1);
  v14 = *(v87 + 64);
  __chkstk_darwin(v85);
  v86 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000C3EA4();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v72 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000C1664();
  v73 = *(v19 - 8);
  v74 = v19;
  v20 = *(v73 + 64);
  __chkstk_darwin(v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000C37C4();
  v80 = *(v23 - 8);
  v24 = *(v80 + 64);
  v25 = __chkstk_darwin(v23);
  v81 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v67 - v27;
  v29 = sub_1000C1A94();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4C14();
  v34 = sub_1000C1A84();
  v35 = sub_1000C5514();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v75 = v28;
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Going through new LinkPresentation unpacking flow.", v36, 2u);
    v28 = v75;
  }

  (*(v30 + 8))(v33, v29);
  sub_100018C68(v82, v83);
  v37 = v81;
  v38 = v84;
  sub_1000C37A4();
  if (v38)
  {
    sub_100014F70();
    v39 = sub_1000C56C4();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v40 = swift_allocObject();
    v87 = xmmword_1000C94D0;
    *(v40 + 16) = xmmword_1000C94D0;
    v88 = v38;
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    v41 = sub_1000C4A84();
    v43 = v42;
    *(v40 + 56) = &type metadata for String;
    v86 = sub_100014FBC();
    *(v40 + 64) = v86;
    *(v40 + 32) = v41;
    *(v40 + 40) = v43;
    sub_1000C5554();
    sub_1000C1A44();

    swift_errorRetain();
    v44 = v77;
    sub_1000C4FD4();
    v45 = sub_1000C56C4();
    v46 = swift_allocObject();
    *(v46 + 16) = v87;
    *&v87 = v38;
    v47 = v78;
    v48 = v79;
    v85 = *(v78 + 16);
    v49 = v76;
    v85(v76, v44, v79);
    (*(v47 + 56))(v49, 0, 1, v48);
    v50 = sub_1000C4A84();
    v52 = v51;
    sub_100018F90(v49, &qword_1000FC438, &unk_1000C9DC0);
    v53 = v86;
    *(v46 + 56) = &type metadata for String;
    *(v46 + 64) = v53;
    *(v46 + 32) = v50;
    *(v46 + 40) = v52;
    sub_1000C5554();
    sub_1000C1A44();

    sub_100018BFC();
    swift_allocError();
    v85(v54, v44, v48);
    swift_willThrow();

    return (*(v47 + 8))(v44, v48);
  }

  else
  {
    (*(v80 + 32))(v28, v37, v23);
    sub_100040238(v22);
    v84 = v22;
    v56 = *(a3 + 16);
    if (v56)
    {
      v75 = v28;
      v88 = &_swiftEmptyArrayStorage;
      sub_100045990(0, v56, 0);
      v57 = 0;
      v58 = v88;
      v83 = v87 + 32;
      v59 = (a3 + 40);
      v60 = v86;
      do
      {
        v61 = *(v59 - 1);
        v62 = *v59;
        sub_100018C68(v61, *v59);
        sub_10004168C(v57, v61, v62, v60);
        sub_100018CD0(v61, v62);
        v88 = v58;
        v64 = *(v58 + 2);
        v63 = *(v58 + 3);
        if (v64 >= v63 >> 1)
        {
          sub_100045990(v63 > 1, v64 + 1, 1);
          v58 = v88;
        }

        ++v57;
        v59 += 2;
        *(v58 + 2) = v64 + 1;
        v60 = v86;
        (*(v87 + 32))(&v58[((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v64], v86, v85);
      }

      while (v56 != v57);
      v28 = v75;
    }

    sub_1000C3E54();
    v65 = v23;
    v66 = v68;
    (*(v80 + 16))(v68, v28, v65);
    (*(v69 + 104))(v66, enum case for BalloonPlugin.Payload.linkPresentation(_:), v70);
    sub_1000C4474();
    (*(v80 + 8))(v28, v65);
    return (*(v73 + 8))(v84, v74);
  }
}

uint64_t sub_10004168C@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a4;
  v7 = sub_1000C3E94();
  v73 = *(v7 - 8);
  v8 = *(v73 + 64);
  __chkstk_darwin(v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C3E44();
  v75 = *(v11 - 8);
  v76 = v11;
  v12 = *(v75 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v67 = &v64 - v16;
  v66 = sub_1000C3E74();
  v65 = *(v66 - 8);
  v17 = *(v65 + 64);
  __chkstk_darwin(v66);
  v70 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000C3E34();
  v68 = *(v19 - 8);
  v69 = v19;
  v20 = *(v68 + 64);
  __chkstk_darwin(v19);
  v72 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v64 - v24;
  v26 = sub_1000C4D84();
  v78 = *(v26 - 8);
  v79 = v26;
  v27 = *(v78 + 64);
  v28 = __chkstk_darwin(v26);
  v71 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v81 = &v64 - v30;
  v77 = a1;
  LOBYTE(a1) = sub_1000C1634(a1);
  v31 = sub_1000C5514();
  v80 = sub_100014F70();
  v32 = sub_1000C56B4();
  v33 = v32;
  if (a1)
  {
    v34 = v87;
    v35 = a2;
    if (os_log_type_enabled(v32, v31))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      *(v36 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v33, v31, "%ld should be an image, assessing type", v36, 0xCu);
    }

    *(&v85 + 1) = &type metadata for Data;
    v86 = &protocol witness table for Data;
    *&v84 = a2;
    *(&v84 + 1) = a3;
    v37 = sub_1000C4D54();
    (*(*(v37 - 8) + 56))(v25, 1, 1, v37);
    sub_100018C68(a2, a3);
    v38 = v81;
    sub_1000C4D64();
    sub_1000C4D74();
    sub_10001530C(&v84, *(&v85 + 1));
    sub_1000C2834();
    if (v34)
    {
      (*(v78 + 8))(v38, v79);
      return sub_100015F68(&v84);
    }

    else
    {
      v42 = v83;
      v43 = v78;
      if (v83)
      {
        v44 = v82;
        sub_100015F68(&v84);
        sub_1000C5514();
        v45 = sub_1000C56B4();
        sub_1000124CC(&qword_1000FC348, qword_1000C9550);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1000C94D0;
        *(v46 + 56) = &type metadata for String;
        *(v46 + 64) = sub_100014FBC();
        *(v46 + 32) = v44;
        *(v46 + 40) = v42;

        sub_1000C1A54();

        v47 = v81;

        v48 = v79;
        (*(v43 + 16))(v71, v47, v79);
        v49 = v72;
        sub_1000C3E24();
        v51 = v68;
        v50 = v69;
        v52 = v67;
        (*(v68 + 16))(v67, v49, v69);
        (*(v75 + 104))(v52, enum case for EncodedAttachments.EncodedContent.astc(_:), v76);
        v53 = v70;
        sub_1000C3E64();
        sub_1000C5514();
        v60 = sub_1000C56B4();
        sub_1000C1A54();

        (*(v51 + 8))(v72, v50);
        (*(v43 + 8))(v47, v48);
        return (*(v65 + 32))(v74, v53, v66);
      }

      else
      {
        sub_100015F68(&v84);
        v54 = objc_allocWithZone(NSKeyedUnarchiver);
        sub_100018C68(v35, a3);
        v55 = sub_100046284();
        sub_100018CD0(v35, a3);
        if ([v55 decodeObject])
        {
          sub_1000C58C4();
          swift_unknownObjectRelease();

          sub_100018F90(&v84, &qword_1000FC828, &qword_1000CF790);
          v56 = sub_1000C5974();
          swift_allocError();
          v58 = v57;
          sub_1000124CC(&qword_1000FC400, &unk_1000C97C0);
          v59 = swift_allocObject();
          *(v59 + 16) = xmmword_1000C94D0;
          *(v59 + 56) = &type metadata for MessageDictionary.CodingKeys;
          *(v59 + 64) = sub_1000421CC();
          *(v59 + 32) = 22;
          *&v84 = 0;
          *(&v84 + 1) = 0xE000000000000000;
          sub_1000C5944(56);
          v88._object = 0x80000001000D5F60;
          v88._countAndFlagsBits = 0xD000000000000035;
          sub_1000C52E4(v88);
          v82 = v77;
          v89._countAndFlagsBits = sub_1000C5BE4();
          sub_1000C52E4(v89);

          v90._countAndFlagsBits = 41;
          v90._object = 0xE100000000000000;
          sub_1000C52E4(v90);
          sub_1000C5964();
          (*(*(v56 - 8) + 104))(v58, enum case for DecodingError.dataCorrupted(_:), v56);
          swift_willThrow();
        }

        else
        {

          v84 = 0u;
          v85 = 0u;
          sub_100018F90(&v84, &qword_1000FC828, &qword_1000CF790);
          sub_1000C5514();
          v61 = sub_1000C56B4();
          sub_1000C1A54();

          if (qword_1000FC008 != -1)
          {
            swift_once();
          }

          v62 = v66;
          v63 = sub_100042220(v66, qword_1000FC808);
          (*(v65 + 16))(v74, v63, v62);
        }

        return (*(v43 + 8))(v38, v79);
      }
    }
  }

  else
  {
    sub_1000C1A54();

    sub_100018C68(a2, a3);
    v40 = v87;
    result = sub_1000C3E84();
    if (!v40)
    {
      v41 = v73;
      (*(v73 + 16))(v15, v10, v7);
      (*(v75 + 104))(v15, enum case for EncodedAttachments.EncodedContent.other(_:), v76);
      sub_1000C3E64();
      return (*(v41 + 8))(v10, v7);
    }
  }

  return result;
}