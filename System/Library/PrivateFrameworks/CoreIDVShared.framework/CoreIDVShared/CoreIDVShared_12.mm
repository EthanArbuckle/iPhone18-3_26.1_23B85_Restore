unint64_t sub_225ABE804()
{
  result = qword_27D73C948;
  if (!qword_27D73C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C948);
  }

  return result;
}

unint64_t sub_225ABE85C()
{
  result = qword_27D73C950;
  if (!qword_27D73C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C950);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13CoreIDVShared15CBOREncodedCBORVyAA21ISO18013ReaderRequestV06DeviceG4InfoVGSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_225ABE900(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225ABE948(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_225ABE9B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_225ABEA0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_225ABEA7C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_225ABEAD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
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

uint64_t sub_225ABEB60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_225ABEBA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_225ABEC20()
{
  sub_225AB1C00();
  if (v0 <= 0x3F)
  {
    sub_225ABECA4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_225ABECA4()
{
  if (!qword_27D73C968)
  {
    sub_225CCD354();
    v0 = sub_225CCEFC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D73C968);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13CoreIDVShared21ISO18013ReaderRequestV03DocE4InfoVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225ABED30(uint64_t a1, int a2)
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

uint64_t sub_225ABED78(uint64_t result, int a2, int a3)
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

uint64_t sub_225ABEDE0(uint64_t a1, int a2)
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

uint64_t sub_225ABEE28(uint64_t result, int a2, int a3)
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

unint64_t sub_225ABEF24()
{
  result = qword_27D73C970;
  if (!qword_27D73C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C970);
  }

  return result;
}

unint64_t sub_225ABEF7C()
{
  result = qword_27D73C978;
  if (!qword_27D73C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C978);
  }

  return result;
}

unint64_t sub_225ABEFD4()
{
  result = qword_27D73C980;
  if (!qword_27D73C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C980);
  }

  return result;
}

unint64_t sub_225ABF02C()
{
  result = qword_27D73C988;
  if (!qword_27D73C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C988);
  }

  return result;
}

unint64_t sub_225ABF084()
{
  result = qword_27D73C990;
  if (!qword_27D73C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C990);
  }

  return result;
}

unint64_t sub_225ABF0DC()
{
  result = qword_27D73C998;
  if (!qword_27D73C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C998);
  }

  return result;
}

unint64_t sub_225ABF134()
{
  result = qword_27D73C9A0;
  if (!qword_27D73C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C9A0);
  }

  return result;
}

unint64_t sub_225ABF18C()
{
  result = qword_27D73C9A8;
  if (!qword_27D73C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C9A8);
  }

  return result;
}

unint64_t sub_225ABF1E4()
{
  result = qword_27D73C9B0;
  if (!qword_27D73C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C9B0);
  }

  return result;
}

unint64_t sub_225ABF23C()
{
  result = qword_27D73C9B8;
  if (!qword_27D73C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C9B8);
  }

  return result;
}

unint64_t sub_225ABF294()
{
  result = qword_27D73C9C0;
  if (!qword_27D73C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C9C0);
  }

  return result;
}

unint64_t sub_225ABF2EC()
{
  result = qword_27D73C9C8;
  if (!qword_27D73C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C9C8);
  }

  return result;
}

unint64_t sub_225ABF344()
{
  result = qword_27D73C9D0;
  if (!qword_27D73C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C9D0);
  }

  return result;
}

unint64_t sub_225ABF39C()
{
  result = qword_27D73C9D8;
  if (!qword_27D73C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C9D8);
  }

  return result;
}

unint64_t sub_225ABF3F4()
{
  result = qword_27D73C9E0;
  if (!qword_27D73C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C9E0);
  }

  return result;
}

unint64_t sub_225ABF44C()
{
  result = qword_27D73C9E8;
  if (!qword_27D73C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C9E8);
  }

  return result;
}

unint64_t sub_225ABF4A4()
{
  result = qword_27D73C9F0;
  if (!qword_27D73C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C9F0);
  }

  return result;
}

unint64_t sub_225ABF4FC()
{
  result = qword_27D73C9F8;
  if (!qword_27D73C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C9F8);
  }

  return result;
}

unint64_t sub_225ABF554()
{
  result = qword_27D73CA00;
  if (!qword_27D73CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CA00);
  }

  return result;
}

unint64_t sub_225ABF5AC()
{
  result = qword_27D73CA08;
  if (!qword_27D73CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CA08);
  }

  return result;
}

unint64_t sub_225ABF604()
{
  result = qword_27D73CA10;
  if (!qword_27D73CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CA10);
  }

  return result;
}

unint64_t sub_225ABF65C()
{
  result = qword_27D73CA18;
  if (!qword_27D73CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CA18);
  }

  return result;
}

unint64_t sub_225ABF6B4()
{
  result = qword_27D73CA20;
  if (!qword_27D73CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CA20);
  }

  return result;
}

unint64_t sub_225ABF70C()
{
  result = qword_27D73CA28;
  if (!qword_27D73CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CA28);
  }

  return result;
}

unint64_t sub_225ABF764()
{
  result = qword_27D73CA30;
  if (!qword_27D73CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CA30);
  }

  return result;
}

unint64_t sub_225ABF7BC()
{
  result = qword_27D73CA38;
  if (!qword_27D73CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CA38);
  }

  return result;
}

unint64_t sub_225ABF814()
{
  result = qword_27D73CA40;
  if (!qword_27D73CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CA40);
  }

  return result;
}

unint64_t sub_225ABF86C()
{
  result = qword_27D73CA48;
  if (!qword_27D73CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CA48);
  }

  return result;
}

unint64_t sub_225ABF8C4()
{
  result = qword_27D73CA50;
  if (!qword_27D73CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CA50);
  }

  return result;
}

unint64_t sub_225ABF91C()
{
  result = qword_27D73CA58;
  if (!qword_27D73CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CA58);
  }

  return result;
}

uint64_t sub_225ABF970()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_225ABF9BC()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_225ABFA08()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_225ABFA54()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_225ABFAA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_225ABFB08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_225ABFB68(unint64_t *a1, void (*a2)(uint64_t))
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

void ISO18013ReaderRequest.externalData.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v7 = v1[6];
  v6 = v1[7];
  v8 = v1[8];
  if (qword_27D739F48 != -1)
  {
    v27 = v1[7];
    v28 = a1;
    swift_once();
    v6 = v27;
    a1 = v28;
  }

  v10 = qword_27D73C6C0;
  v9 = *algn_27D73C6C8;
  if (qword_27D739F50 != -1)
  {
    v34 = v6;
    v29 = a1;
    swift_once();
    v6 = v34;
    a1 = v29;
  }

  v11 = qword_27D73C6D0;
  v12 = *algn_27D73C6D8;
  v13 = *algn_27D73C6D8 < v9;
  if (qword_27D73C6D0 != v10)
  {
    v13 = qword_27D73C6D0 < v10;
  }

  if (v13)
  {
    __break(1u);
LABEL_39:
    v30 = v6;
    v31 = a1;
    swift_once();
    v6 = v30;
    a1 = v31;
    goto LABEL_22;
  }

  v14 = v4 < v9;
  if (v3 != v10)
  {
    v14 = v3 < v10;
  }

  if (!v14)
  {
    v15 = v4 < *algn_27D73C6D8;
    if (v3 != qword_27D73C6D0)
    {
      v15 = v3 < qword_27D73C6D0;
    }

    if (v15)
    {
      if (*(v5 + 16))
      {
        v16 = a1;
        v17 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
        a1 = v16;
        v18 = (v5 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)));
        v19 = v18[11];
        if (v18[6] != 1 && v19 >> 60 != 15)
        {
          v21 = v18[10];
          sub_225CCD3A4();
          swift_allocObject();
          sub_2259CB6FC(v21, v19);
          sub_2259CB710(v21, v19);
          sub_225CCD394();
          sub_225ABFF00(v21, v19, &v32);
          sub_2259B97A8(v21, v19);
          if (v2)
          {
            return;
          }

          goto LABEL_37;
        }
      }

LABEL_28:
      v32 = 0uLL;
      v33 = 0xF000000000000000;
LABEL_29:
      v24 = v33;
      *a1 = v32;
      *(a1 + 16) = v24;
      return;
    }
  }

  if (qword_27D739F58 != -1)
  {
    goto LABEL_39;
  }

LABEL_22:
  v22 = *algn_27D73C6E8 < v12;
  if (qword_27D73C6E0 != v11)
  {
    v22 = qword_27D73C6E0 < v11;
  }

  if (v22)
  {
    __break(1u);
    return;
  }

  v23 = v4 < v12;
  if (v3 != v11)
  {
    v23 = v3 < v11;
  }

  if (v23)
  {
    goto LABEL_28;
  }

  v25 = v3 >= qword_27D73C6E0;
  if (v3 == qword_27D73C6E0)
  {
    v25 = v4 >= *algn_27D73C6E8;
  }

  if (v25 || v7 == 1 || v8 >> 60 == 15)
  {
    goto LABEL_28;
  }

  v16 = a1;
  v26 = v6;
  sub_225CCD3A4();
  swift_allocObject();
  sub_2259CB710(v26, v8);
  sub_225CCD394();
  sub_225ABFF00(v26, v8, &v32);
  if (!v2)
  {
LABEL_37:
    a1 = v16;
    goto LABEL_29;
  }
}

uint64_t sub_225ABFF00@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_2259CB710(a1, a2);
  sub_225AC03F0();
  sub_225CCD364();
  sub_2259BEF00(a1, a2);

  if (v3)
  {
    return sub_2259BEF00(a1, a2);
  }

  *a3 = 24;
  a3[1] = a1;
  a3[2] = a2;
  return result;
}

void ISO18013ReaderRequest.interpretWillNotRetainIntentAsDisplayOnly.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (qword_27D739F48 != -1)
  {
    swift_once();
  }

  v4 = qword_27D73C6C0;
  v5 = *algn_27D73C6C8;
  if (qword_27D739F50 != -1)
  {
    swift_once();
  }

  v6 = qword_27D73C6D0;
  v7 = *algn_27D73C6D8;
  v8 = *algn_27D73C6D8 < v5;
  if (qword_27D73C6D0 != v4)
  {
    v8 = qword_27D73C6D0 < v4;
  }

  if (v8)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_17;
  }

  v9 = v2 < v5;
  if (v1 != v4)
  {
    v9 = v1 < v4;
  }

  if (!v9)
  {
    v10 = v2 < *algn_27D73C6D8;
    if (v1 != qword_27D73C6D0)
    {
      v10 = v1 < qword_27D73C6D0;
    }

    if (v10)
    {
      if (*(v3 + 16))
      {
        type metadata accessor for ISO18013ReaderRequest.DocRequest();
      }

      return;
    }
  }

  if (qword_27D739F58 != -1)
  {
    goto LABEL_23;
  }

LABEL_17:
  v11 = *algn_27D73C6E8 < v7;
  if (qword_27D73C6E0 != v6)
  {
    v11 = qword_27D73C6E0 < v6;
  }

  if (v11)
  {
    __break(1u);
  }
}

void ISO18013ReaderRequest.logotypeIconData.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[6];
  v5 = v0[10];
  v6 = v0[11];
  if (qword_27D739F48 != -1)
  {
    swift_once();
  }

  v7 = qword_27D73C6C0;
  v8 = *algn_27D73C6C8;
  if (qword_27D739F50 != -1)
  {
    swift_once();
  }

  v9 = qword_27D73C6D0;
  v10 = *algn_27D73C6D8;
  v11 = *algn_27D73C6D8 < v8;
  if (qword_27D73C6D0 != v7)
  {
    v11 = qword_27D73C6D0 < v7;
  }

  if (v11)
  {
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_18;
  }

  v12 = v2 < v8;
  if (v1 != v7)
  {
    v12 = v1 < v7;
  }

  if (!v12)
  {
    v13 = v2 < *algn_27D73C6D8;
    if (v1 != qword_27D73C6D0)
    {
      v13 = v1 < qword_27D73C6D0;
    }

    if (v13)
    {
      if (*(v3 + 16))
      {
        v14 = *(type metadata accessor for ISO18013ReaderRequest.DocRequest() - 8);
        v15 = (v3 + ((*(v14 + 80) + 32) & ~*(v14 + 80)));
        if (v15[6] != 1)
        {
          sub_2259CB6FC(v15[13], v15[14]);
        }
      }

      return;
    }
  }

  if (qword_27D739F58 != -1)
  {
    goto LABEL_32;
  }

LABEL_18:
  v16 = *algn_27D73C6E8 < v10;
  if (qword_27D73C6E0 != v9)
  {
    v16 = qword_27D73C6E0 < v9;
  }

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v17 = v2 < v10;
    if (v1 != v9)
    {
      v17 = v1 < v9;
    }

    if (!v17)
    {
      v18 = v1 >= qword_27D73C6E0;
      if (v1 == qword_27D73C6E0)
      {
        v18 = v2 >= *algn_27D73C6E8;
      }

      if (!v18 && v4 != 1)
      {
        sub_2259CB6FC(v5, v6);
      }
    }
  }
}

unint64_t sub_225AC03F0()
{
  result = qword_27D73CA70;
  if (!qword_27D73CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CA70);
  }

  return result;
}

__n128 ISO18013RequestForwardingEncryptedResponse.init(response:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t ISO18013RequestForwardingEncryptedResponse.response.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_2259CB710(v2, v3);

  return sub_2259CB710(v4, v5);
}

uint64_t ISO18013RequestForwardingEncryptedResponse.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v32 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC74();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_0(v35, v36);
    v9 = sub_225CCF874();
    v11 = v9 == 0x6970616364 && v10 == 0xE500000000000000;
    if (v11 || (v12 = v9, v13 = v10, (sub_225CCF934() & 1) != 0))
    {

      __swift_mutable_project_boxed_opaque_existential_0(v35, v36);
      sub_225AC0FF0();
      sub_225CCF884();
      v32 = v34[1];
      v33 = v34[0];
      __swift_destroy_boxed_opaque_existential_0(v35);
      v14 = v32;
      *a2 = v33;
      a2[1] = v14;
    }

    else
    {
      *&v32 = 0;
      *&v34[0] = 0;
      *(&v34[0] + 1) = 0xE000000000000000;
      sub_225CCF204();

      *&v34[0] = 0xD00000000000002CLL;
      *(&v34[0] + 1) = 0x8000000225D1B740;
      MEMORY[0x22AA6CE70](v12, v13);

      v15 = v34[0];
      *&v33 = 0x8000000225D1B770;
      v16 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v18 = v17;
      v19 = sub_225CCE954();
      v20 = *(v19 - 8);
      (*(v20 + 56))(v8, 1, 1, v19);
      LODWORD(v19) = (*(v20 + 48))(v8, 1, v19);
      sub_2259DB318(v8);
      if (v19)
      {
        v21 = 1050;
      }

      else
      {
        v21 = 23;
      }

      v22 = MEMORY[0x277D84F90];
      v23 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v34[0] = v23;
      sub_225B2C4A0(v16, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

      v25 = *&v34[0];
      v26 = sub_225B29AA0(0, 1, 1, v22);
      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_225B29AA0((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[56 * v28];
      *(v29 + 2) = v15;
      v30 = v33;
      *(v29 + 6) = 0xD00000000000003ELL;
      *(v29 + 7) = v30;
      *(v29 + 8) = 0x6F72662874696E69;
      *(v29 + 9) = 0xEB00000000293A6DLL;
      *(v29 + 10) = 38;
      *v18 = v21;
      *(v18 + 8) = v26;
      *(v18 + 16) = v15;
      *(v18 + 32) = v25;
      *(v18 + 40) = 0;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0(v35);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ISO18013RequestForwardingEncryptedResponse.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2259CB710(v3, v4);
  sub_2259CB710(v5, v6);
  sub_225CCFCC4();
  __swift_mutable_project_boxed_opaque_existential_0(v8, v9);
  sub_225CCF8B4();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_0(v8, v9);
    sub_225AC1044();
    sub_225CCF8C4();
  }

  sub_2259BEF00(v3, v4);
  sub_2259BEF00(v5, v6);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t ISO18013RequestForwardingEncryptedResponse.DCAPIEncryptedResponse.enc.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t ISO18013RequestForwardingEncryptedResponse.DCAPIEncryptedResponse.cipherText.getter()
{
  v1 = *(v0 + 16);
  sub_2259CB710(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_225AC0A38()
{
  if (*v0)
  {
    return 0x6554726568706963;
  }

  else
  {
    return 6516325;
  }
}

uint64_t sub_225AC0A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6516325 && a2 == 0xE300000000000000;
  if (v5 || (sub_225CCF934() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6554726568706963 && a2 == 0xEA00000000007478)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_225CCF934();

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

uint64_t sub_225AC0B54(uint64_t a1)
{
  v2 = sub_225AC1098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AC0B90(uint64_t a1)
{
  v2 = sub_225AC1098();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013RequestForwardingEncryptedResponse.DCAPIEncryptedResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CA88);
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v13 = v1[3];
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2259CB710(v8, v9);
  sub_225AC1098();
  sub_225CCFCE4();
  v16 = v8;
  v17 = v9;
  v18 = 0;
  sub_2259D9454();
  sub_225CCF7E4();
  sub_2259BEF00(v16, v17);
  if (!v2)
  {
    v16 = v14;
    v17 = v13;
    v18 = 1;
    sub_2259CB710(v14, v13);
    sub_225CCF7E4();
    sub_2259BEF00(v16, v17);
  }

  return (*(v15 + 8))(v7, v4);
}

uint64_t ISO18013RequestForwardingEncryptedResponse.DCAPIEncryptedResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CA98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AC1098();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  sub_2259D94A8();
  sub_225CCF6E4();
  v10 = v17;
  v16 = v18;
  v19 = 1;
  sub_225CCF6E4();
  (*(v6 + 8))(v9, v5);
  v11 = v17;
  v12 = v18;
  v13 = v16;
  *a2 = v10;
  a2[1] = v13;
  a2[2] = v11;
  a2[3] = v12;
  sub_2259CB710(v10, v13);
  sub_2259CB710(v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_2259BEF00(v10, v13);
  return sub_2259BEF00(v11, v12);
}

unint64_t sub_225AC0FF0()
{
  result = qword_27D73CA78;
  if (!qword_27D73CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CA78);
  }

  return result;
}

unint64_t sub_225AC1044()
{
  result = qword_27D73CA80;
  if (!qword_27D73CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CA80);
  }

  return result;
}

unint64_t sub_225AC1098()
{
  result = qword_27D73CA90;
  if (!qword_27D73CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CA90);
  }

  return result;
}

uint64_t sub_225AC110C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_225AC1160(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_225AC11D4()
{
  result = qword_27D73CAA0;
  if (!qword_27D73CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CAA0);
  }

  return result;
}

unint64_t sub_225AC122C()
{
  result = qword_27D73CAA8;
  if (!qword_27D73CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CAA8);
  }

  return result;
}

unint64_t sub_225AC1284()
{
  result = qword_27D73CAB0;
  if (!qword_27D73CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CAB0);
  }

  return result;
}

uint64_t ISO18013RequestForwardingEncryptionInformation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v39 - v6;
  v8 = type metadata accessor for ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ISO18013RequestForwardingEncryptionInformation(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC74();
  if (v2)
  {
    goto LABEL_13;
  }

  v41 = v11;
  v42 = v15;
  v40 = v7;
  __swift_mutable_project_boxed_opaque_existential_0(v44, v45);
  if (sub_225CCF874() != 0x6970616364 || v16 != 0xE500000000000000)
  {
    v20 = sub_225CCF934();

    v17 = a1;
    v19 = v41;
    v18 = v42;
    if (v20)
    {
      goto LABEL_6;
    }

    v43 = 0x8000000225D1B7E0;
    v22 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v24 = v23;
    v25 = sub_225CCE954();
    v26 = *(v25 - 8);
    v27 = v40;
    (*(v26 + 56))(v40, 1, 1, v25);
    LODWORD(v25) = (*(v26 + 48))(v27, 1, v25);
    sub_2259DB318(v27);
    if (v25)
    {
      v28 = 1050;
    }

    else
    {
      v28 = 23;
    }

    v29 = MEMORY[0x277D84F90];
    v30 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v30;
    sub_225B2C4A0(v22, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v46);

    v32 = v46;
    v33 = sub_225B29AA0(0, 1, 1, v29);
    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = sub_225B29AA0((v34 > 1), v35 + 1, 1, v33);
    }

    *(v33 + 2) = v35 + 1;
    v36 = &v33[56 * v35];
    *(v36 + 4) = 0xD00000000000002BLL;
    *(v36 + 5) = 0x8000000225D1B7B0;
    v37 = v43;
    *(v36 + 6) = 0xD000000000000042;
    *(v36 + 7) = v37;
    *(v36 + 8) = 0x6F72662874696E69;
    *(v36 + 9) = 0xEB00000000293A6DLL;
    *(v36 + 10) = 38;
    *v24 = v28;
    *(v24 + 8) = v33;
    *(v24 + 16) = 0xD00000000000002BLL;
    *(v24 + 24) = 0x8000000225D1B7B0;
    *(v24 + 32) = v32;
    *(v24 + 40) = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v44);
LABEL_13:
    v21 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v21);
  }

  v17 = a1;
  v19 = v41;
  v18 = v42;
LABEL_6:
  __swift_mutable_project_boxed_opaque_existential_0(v44, v45);
  sub_225AC2354(&qword_27D73CAB8, type metadata accessor for ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters);
  sub_225CCF884();
  sub_225AC2290(v19, v18, type metadata accessor for ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters);
  __swift_destroy_boxed_opaque_existential_0(v44);
  sub_225AC2290(v18, v43, type metadata accessor for ISO18013RequestForwardingEncryptionInformation);
  v21 = v17;
  return __swift_destroy_boxed_opaque_existential_0(v21);
}

uint64_t ISO18013RequestForwardingEncryptionInformation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = type metadata accessor for ISO18013RequestForwardingEncryptionInformation.Parameters(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCC4();
  sub_225AC23F0(v3, v12, type metadata accessor for ISO18013RequestForwardingEncryptionInformation.Parameters);
  sub_225AC2290(v12, v8, type metadata accessor for ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters);
  __swift_mutable_project_boxed_opaque_existential_0(v15, v16);
  sub_225CCF8B4();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_0(v15, v16);
    sub_225AC2354(&qword_27D73CAC0, type metadata accessor for ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters);
    sub_225CCF8C4();
  }

  sub_225AC22F8(v8);
  return __swift_destroy_boxed_opaque_existential_0(v15);
}

uint64_t ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters.nonce.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters.recipientPublicKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters(0) + 20);
  v4 = sub_225CCD494();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters.init(nonce:recipientPublicKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters(0) + 20);
  v7 = sub_225CCD494();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_225AC1BAC()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x65636E6F6ELL;
  }
}

uint64_t sub_225AC1BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636E6F6ELL && a2 == 0xE500000000000000;
  if (v6 || (sub_225CCF934() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000225D1B830 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_225CCF934();

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

uint64_t sub_225AC1CC8(uint64_t a1)
{
  v2 = sub_225AC239C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AC1D04(uint64_t a1)
{
  v2 = sub_225AC239C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CAC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AC239C();
  sub_225CCFCE4();
  v10 = v3[1];
  v13 = *v3;
  v14 = v10;
  v12[15] = 0;
  sub_2259CB710(v13, v10);
  sub_2259D9454();
  sub_225CCF7E4();
  sub_2259BEF00(v13, v14);
  if (!v2)
  {
    type metadata accessor for ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters(0);
    LOBYTE(v13) = 1;
    sub_225CCD494();
    sub_225AC2354(&qword_27D73BBB8, MEMORY[0x277CF39A8]);
    sub_225CCF7E4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v26 = sub_225CCD494();
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CAD8);
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AC239C();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v10;
  v15 = v25;
  v14 = v26;
  v16 = v13;
  v29 = 0;
  sub_2259D94A8();
  v17 = v27;
  sub_225CCF6E4();
  v21 = v16;
  *v16 = v28;
  LOBYTE(v28) = 1;
  sub_225AC2354(&qword_27D73BBD8, MEMORY[0x277CF39A8]);
  sub_225CCF6E4();
  (*(v15 + 8))(v9, v17);
  v18 = v21;
  (*(v23 + 32))(&v21[*(v22 + 20)], v6, v14);
  sub_225AC23F0(v18, v24, type metadata accessor for ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_225AC22F8(v18);
}

uint64_t sub_225AC2290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_225AC22F8(uint64_t a1)
{
  v2 = type metadata accessor for ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_225AC2354(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_225AC239C()
{
  result = qword_27D73CAD0;
  if (!qword_27D73CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CAD0);
  }

  return result;
}

uint64_t sub_225AC23F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_225AC2480()
{
  result = type metadata accessor for ISO18013RequestForwardingEncryptionInformation.Parameters(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225AC24EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_8Tm);
}

uint64_t sub_225AC2544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_9Tm);
}

uint64_t sub_225AC25AC(uint64_t a1)
{
  result = type metadata accessor for ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_225CCD494();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_9Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_225CCD494();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_225AC27DC()
{
  result = sub_225CCD494();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_225AC286C()
{
  result = qword_27D73CB10;
  if (!qword_27D73CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CB10);
  }

  return result;
}

unint64_t sub_225AC28C4()
{
  result = qword_27D73CB18;
  if (!qword_27D73CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CB18);
  }

  return result;
}

unint64_t sub_225AC291C()
{
  result = qword_27D73CB20;
  if (!qword_27D73CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CB20);
  }

  return result;
}

uint64_t sub_225AC2970()
{
  if (*v0)
  {
    return 0x6974707972636E65;
  }

  else
  {
    return 0x6552656369766564;
  }
}

uint64_t sub_225AC29C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6552656369766564 && a2 == 0xED00007473657571;
  if (v6 || (sub_225CCF934() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974707972636E65 && a2 == 0xEE006F666E496E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_225CCF934();

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

uint64_t sub_225AC2AB0(uint64_t a1)
{
  v2 = sub_225AC40F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AC2AEC(uint64_t a1)
{
  v2 = sub_225AC40F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013RequestForwardingRequest.deviceRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 96);
  v12 = *(v1 + 80);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 112);
  v5 = v14;
  v6 = *(v1 + 16);
  v11[0] = *v1;
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_225A0DE54(v11, v10, &qword_27D73CB28);
}

uint64_t type metadata accessor for ISO18013RequestForwardingRequest()
{
  result = qword_27D73CB78;
  if (!qword_27D73CB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ISO18013RequestForwardingRequest.init(deviceRequest:encryptionInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for ISO18013RequestForwardingEncryptionInformation(0);
  MEMORY[0x28223BE20](v7, v8);
  v51 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CB30);
  MEMORY[0x28223BE20](v10, v11);
  v40 = (&v37 - v12);
  v13 = *(a1 + 80);
  v49[4] = *(a1 + 64);
  v49[5] = v13;
  v50 = *(a1 + 96);
  v14 = *(a1 + 16);
  v49[0] = *a1;
  v49[1] = v14;
  v15 = *(a1 + 48);
  v49[2] = *(a1 + 32);
  v49[3] = v15;
  sub_225CCD424();
  swift_allocObject();
  sub_225CCD414();
  sub_225AC30A8(v49, v47);
  if (v3)
  {
    return sub_225AC41AC(a2, type metadata accessor for ISO18013RequestForwardingEncryptionInformation);
  }

  v17 = v47[5];
  *(a3 + 64) = v47[4];
  *(a3 + 80) = v17;
  *(a3 + 96) = v47[6];
  *(a3 + 112) = v48;
  v18 = v47[1];
  *a3 = v47[0];
  *(a3 + 16) = v18;
  v19 = v47[3];
  *(a3 + 32) = v47[2];
  *(a3 + 48) = v19;
  v39 = a2;
  v20 = v51;
  sub_225AC4144(a2, v51, type metadata accessor for ISO18013RequestForwardingEncryptionInformation);
  swift_allocObject();
  sub_225CCD414();
  sub_225AC4144(v20, v40 + *(v10 + 44), type metadata accessor for ISO18013RequestForwardingEncryptionInformation);
  sub_225AC4478(&qword_27D73CB38);
  v21 = sub_225CCD3F4();
  v37 = v22;
  v38 = v21;
  v45 = sub_225CCCF84();
  v46 = v23;
  v43 = 43;
  v44 = 0xE100000000000000;
  v41 = 45;
  v42 = 0xE100000000000000;
  sub_2259D8654();
  v24 = sub_225CCF064();
  v26 = v25;

  v45 = v24;
  v46 = v26;
  v43 = 47;
  v44 = 0xE100000000000000;
  v41 = 95;
  v42 = 0xE100000000000000;
  v27 = sub_225CCF064();
  v29 = v28;

  v45 = v27;
  v46 = v29;
  v43 = 61;
  v44 = 0xE100000000000000;
  v41 = 0;
  v42 = 0xE000000000000000;
  v30 = sub_225CCF064();
  v32 = v31;

  sub_2259BEF00(v38, v37);
  sub_225AC41AC(v51, type metadata accessor for ISO18013RequestForwardingEncryptionInformation);

  v33 = v39;
  v34 = v40;
  *v40 = v30;
  v34[1] = v32;
  v35 = v34;
  sub_225AC41AC(v33, type metadata accessor for ISO18013RequestForwardingEncryptionInformation);
  v36 = type metadata accessor for ISO18013RequestForwardingRequest();
  return sub_225AC4080(v35, a3 + *(v36 + 20));
}

__n128 sub_225AC30A8@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v37 = *a1;
  v38 = v5;
  v6 = a1[3];
  v39 = a1[2];
  v40 = v6;
  v44[0] = v37;
  v44[1] = v5;
  v44[2] = v39;
  v44[3] = v6;
  v7 = a1[5];
  v41 = a1[4];
  v42 = v7;
  v43 = *(a1 + 12);
  v44[4] = v41;
  v44[5] = v7;
  v45 = v43;
  v30 = v37;
  v31 = v5;
  v36 = *(a1 + 12);
  v8 = a1[5];
  v34 = v41;
  v35 = v8;
  v32 = v39;
  v33 = v6;
  sub_225AA802C(v44, &v23);
  sub_225AC4374();
  v9 = sub_225CCD3F4();
  if (v2)
  {
    v21[4] = v41;
    v21[5] = v42;
    v22 = v43;
    v21[0] = v37;
    v21[1] = v38;
    v21[2] = v39;
    v21[3] = v40;
    sub_225AA8088(v21);

    v11 = a1[5];
    v27 = a1[4];
    v28 = v11;
    v29 = *(a1 + 12);
    v12 = a1[1];
    v23 = *a1;
    v24 = v12;
    v13 = a1[3];
    v25 = a1[2];
    v26 = v13;
    sub_225AA8088(&v23);
  }

  else
  {
    v27 = v41;
    v28 = v42;
    v29 = v43;
    v23 = v37;
    v24 = v38;
    v25 = v39;
    v26 = v40;
    v46 = v9;
    v20 = v10;
    sub_225AA8088(&v23);
    sub_225CCCF84();
    sub_2259D8654();
    sub_225CCF064();

    sub_225CCF064();

    v15 = sub_225CCF064();
    v17 = v16;

    sub_2259BEF00(v46, v20);

    *a2 = v15;
    *(a2 + 8) = v17;
    v18 = v35;
    *(a2 + 80) = v34;
    *(a2 + 96) = v18;
    *(a2 + 112) = v36;
    v19 = v31;
    *(a2 + 16) = v30;
    *(a2 + 32) = v19;
    result = v33;
    *(a2 + 48) = v32;
    *(a2 + 64) = result;
  }

  return result;
}

uint64_t ISO18013RequestForwardingRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_225CCD954();
  v37 = *(v3 - 8);
  v38 = v3;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v33 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v35 = &v28 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CB30);
  MEMORY[0x28223BE20](v34, v9);
  v11 = &v28 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CB40);
  v36 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for ISO18013RequestForwardingRequest();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AC40F0();
  v19 = v50;
  sub_225CCFCA4();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v29 = v15;
  v30 = v11;
  v31 = v18;
  v50 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CB28);
  v41 = 0;
  sub_2259D8B24(&qword_27D73CB50, &qword_27D73CB28);
  v20 = v39;
  v21 = v14;
  sub_225CCF6E4();
  v22 = v47;
  v23 = v31;
  *(v31 + 4) = v46;
  *(v23 + 80) = v22;
  *(v23 + 96) = v48;
  *(v23 + 112) = v49;
  v24 = v43;
  *v23 = v42;
  *(v23 + 16) = v24;
  v25 = v45;
  *(v23 + 32) = v44;
  *(v23 + 48) = v25;
  v40 = 1;
  sub_2259D8B24(&qword_27D73CB58, &qword_27D73CB30);
  v26 = v30;
  sub_225CCF6E4();
  (*(v36 + 8))(v21, v20);
  sub_225AC4080(v26, v23 + *(v29 + 20));
  sub_225AC4144(v23, v32, type metadata accessor for ISO18013RequestForwardingRequest);
  __swift_destroy_boxed_opaque_existential_0(v50);
  return sub_225AC41AC(v23, type metadata accessor for ISO18013RequestForwardingRequest);
}

uint64_t ISO18013RequestForwardingRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CB60);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v17[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AC40F0();
  sub_225CCFCE4();
  v9 = v3[5];
  v10 = v3[3];
  v32 = v3[4];
  v33 = v9;
  v11 = v3[5];
  v34 = v3[6];
  v12 = v3[1];
  v29[0] = *v3;
  v29[1] = v12;
  v13 = v3[3];
  v15 = *v3;
  v14 = v3[1];
  v30 = v3[2];
  v31 = v13;
  v25 = v32;
  v26 = v11;
  v27 = v3[6];
  v21 = v15;
  v22 = v14;
  v35 = *(v3 + 14);
  v28 = *(v3 + 14);
  v23 = v30;
  v24 = v10;
  v20 = 0;
  sub_225A0DE54(v29, v18, &qword_27D73CB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CB28);
  sub_2259D8B24(&qword_27D73CB68, &qword_27D73CB28);
  sub_225CCF7E4();
  v18[4] = v25;
  v18[5] = v26;
  v18[6] = v27;
  v19 = v28;
  v18[0] = v21;
  v18[1] = v22;
  v18[2] = v23;
  v18[3] = v24;
  sub_225AC4018(v18);
  if (!v2)
  {
    type metadata accessor for ISO18013RequestForwardingRequest();
    v17[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CB30);
    sub_2259D8B24(&qword_27D73CB70, &qword_27D73CB30);
    sub_225CCF7E4();
  }

  return (*(v36 + 8))(v8, v5);
}

uint64_t sub_225AC4018(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CB28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_225AC4080(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CB30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_225AC40F0()
{
  result = qword_27D73CB48;
  if (!qword_27D73CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CB48);
  }

  return result;
}

uint64_t sub_225AC4144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_225AC41AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_225AC4234()
{
  sub_225AC42B8();
  if (v0 <= 0x3F)
  {
    sub_225AC43C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_225AC42B8()
{
  if (!qword_27D73CB88)
  {
    sub_225AC4320();
    sub_225AC4374();
    v0 = type metadata accessor for Base64URLEncodedCBOR();
    if (!v1)
    {
      atomic_store(v0, &qword_27D73CB88);
    }
  }
}

unint64_t sub_225AC4320()
{
  result = qword_27D73CB90;
  if (!qword_27D73CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CB90);
  }

  return result;
}

unint64_t sub_225AC4374()
{
  result = qword_27D73CB98;
  if (!qword_27D73CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CB98);
  }

  return result;
}

void sub_225AC43C8()
{
  if (!qword_27D73CBA0)
  {
    type metadata accessor for ISO18013RequestForwardingEncryptionInformation(255);
    sub_225AC4478(&qword_27D73CBA8);
    sub_225AC4478(&qword_27D73CB38);
    v0 = type metadata accessor for Base64URLEncodedCBOR();
    if (!v1)
    {
      atomic_store(v0, &qword_27D73CBA0);
    }
  }
}

uint64_t sub_225AC4478(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ISO18013RequestForwardingEncryptionInformation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225AC44D0()
{
  result = qword_27D73CBB0;
  if (!qword_27D73CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CBB0);
  }

  return result;
}

unint64_t sub_225AC4528()
{
  result = qword_27D73CBB8;
  if (!qword_27D73CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CBB8);
  }

  return result;
}

unint64_t sub_225AC4580()
{
  result = qword_27D73CBC0;
  if (!qword_27D73CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CBC0);
  }

  return result;
}

uint64_t ISO18013Response.IssuerSigned.init(namespaces:issuerAuth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for ISO18013Response.IssuerSigned(0) + 20);
  v6 = sub_225CCD354();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t ISO18013Response.Document.init(docType:issuerSigned:deviceSigned:errors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for ISO18013Response.Document(0);
  v13 = v12[6];
  v14 = type metadata accessor for ISO18013Response.DeviceSigned(0);
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  v15 = v12[7];
  *a6 = a1;
  *(a6 + 1) = a2;
  sub_225AC8BA0(a3, &a6[v12[5]], type metadata accessor for ISO18013Response.IssuerSigned);
  result = sub_225A82A74(a4, &a6[v13]);
  *&a6[v15] = a5;
  return result;
}

__n128 ISO18013Response.init(version:documents:documentErrors:status:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unsigned __int8 *a4@<X3>, __n128 *a5@<X8>)
{
  v5 = *a4;
  result = *a1;
  *a5 = *a1;
  a5[1].n128_u64[0] = a2;
  a5[1].n128_u64[1] = a3;
  a5[2].n128_u8[0] = v5;
  return result;
}

unint64_t sub_225AC47B0()
{
  v0._countAndFlagsBits = 3157553;
  v0._object = 0xE300000000000000;
  result = ISO18013Version.init(_:)(v0);
  if (v4)
  {
    v2 = 0uLL;
  }

  else
  {
    v2 = v3;
  }

  xmmword_27D73CBC8 = v2;
  return result;
}

double static ISO18013Response.supportedVersion.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27D739F60 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_27D73CBC8;
  *a1 = xmmword_27D73CBC8;
  return result;
}

__n128 ISO18013Response.version.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_225AC489C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AC496C()
{
  sub_225CCE5B4();
}

uint64_t sub_225AC4A28()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AC4AF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225ACAE98();
  *a1 = result;
  return result;
}

void sub_225AC4B24(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E6F6973726576;
  v4 = 0xEE0073726F727245;
  v5 = 0x746E656D75636F64;
  if (*v1 != 2)
  {
    v5 = 0x737574617473;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x746E656D75636F64;
    v2 = 0xE900000000000073;
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

uint64_t sub_225AC4BB0()
{
  v1 = 0x6E6F6973726576;
  v2 = 0x746E656D75636F64;
  if (*v0 != 2)
  {
    v2 = 0x737574617473;
  }

  if (*v0)
  {
    v1 = 0x746E656D75636F64;
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

uint64_t sub_225AC4C38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225ACAE98();
  *a1 = result;
  return result;
}

uint64_t sub_225AC4C60(uint64_t a1)
{
  v2 = sub_225AC4EF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AC4C9C(uint64_t a1)
{
  v2 = sub_225AC4EF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225AC4CD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225ACAEE4();
  *a1 = result;
  return result;
}

uint64_t sub_225AC4D08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225ACAEE4();
  *a1 = result;
  return result;
}

uint64_t sub_225AC4D30(uint64_t a1)
{
  v2 = sub_225AC4EA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AC4D6C(uint64_t a1)
{
  v2 = sub_225AC4EA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013Response.explicitOrderingKeys(cborEncoder:)()
{
  CBOREncoder.codingKeyFormat.getter(&v5);
  v0 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CBD8);
  if (v0)
  {
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_225CD73B0;
    *(v1 + 56) = &type metadata for ISO18013Response.ACWGCodingKeys;
    v2 = sub_225AC4EA0();
    *(v1 + 64) = v2;
    *(v1 + 32) = 0;
    *(v1 + 96) = &type metadata for ISO18013Response.ACWGCodingKeys;
    *(v1 + 104) = v2;
    *(v1 + 72) = 1;
    *(v1 + 136) = &type metadata for ISO18013Response.ACWGCodingKeys;
    *(v1 + 144) = v2;
    *(v1 + 112) = 2;
  }

  else
  {
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_225CD73A0;
    *(v1 + 56) = &type metadata for ISO18013Response.CodingKeys;
    v3 = sub_225AC4EF4();
    *(v1 + 64) = v3;
    *(v1 + 32) = 0;
    *(v1 + 96) = &type metadata for ISO18013Response.CodingKeys;
    *(v1 + 104) = v3;
    *(v1 + 72) = 1;
    *(v1 + 136) = &type metadata for ISO18013Response.CodingKeys;
    *(v1 + 144) = v3;
    *(v1 + 112) = 2;
    *(v1 + 176) = &type metadata for ISO18013Response.CodingKeys;
    *(v1 + 184) = v3;
    *(v1 + 152) = 3;
  }

  return v1;
}

unint64_t sub_225AC4EA0()
{
  result = qword_27D73CBE0;
  if (!qword_27D73CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CBE0);
  }

  return result;
}

unint64_t sub_225AC4EF4()
{
  result = qword_27D73CBE8;
  if (!qword_27D73CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CBE8);
  }

  return result;
}

uint64_t ISO18013Response.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CBF0);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CBF8);
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v23 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Decoder.codingKeyFormat.getter(&v30);
  v12 = v30;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((v12 & 1) == 0)
  {
    sub_225AC4EF4();
    sub_225CCFCA4();
    if (!v2)
    {
      v29 = 0;
      sub_225A94CA8();
      v16 = v8;
      sub_225CCF6E4();
      v17 = v27;
      v14 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CC00);
      v29 = 1;
      sub_225AC5A3C(&qword_27D73CC08, &qword_27D73CC10);
      sub_225CCF674();
      v19 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CC20);
      v29 = 2;
      sub_225AC5520();
      sub_225CCF674();
      v25 = v17;
      v20 = v27;
      v29 = 3;
      sub_225AC54CC();
      sub_225CCF6E4();
      (*(v26 + 8))(v11, v16);
      goto LABEL_7;
    }

    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  sub_225AC4EA0();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v29 = 0;
  sub_225A94CA8();
  v13 = v25;
  sub_225CCF6E4();
  v15 = v27;
  v14 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CC00);
  v29 = 1;
  sub_225AC5A3C(&qword_27D73CC08, &qword_27D73CC10);
  sub_225CCF674();
  v19 = v27;
  v29 = 2;
  sub_225AC54CC();
  sub_225CCF6E4();
  (*(v24 + 8))(v7, v13);
  v25 = v15;
  v20 = 0;
LABEL_7:
  v21 = v27;
  v22 = v23;
  *v23 = v25;
  v22[1] = v14;
  v22[2] = v19;
  v22[3] = v20;
  *(v22 + 32) = v21;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_225AC54CC()
{
  result = qword_27D73CC18;
  if (!qword_27D73CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CC18);
  }

  return result;
}

unint64_t sub_225AC5520()
{
  result = qword_27D73CC28;
  if (!qword_27D73CC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73CC20);
    sub_225AC5C24(&qword_27D73CC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CC28);
  }

  return result;
}

uint64_t ISO18013Response.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CC38);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CC40);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v20 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[2];
  v21 = v1[3];
  v22 = v13;
  v30 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Encoder.codingKeyFormat.getter(&v32);
  v14 = v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v14)
  {
    sub_225AC4EA0();
    sub_225CCFCE4();
    v28 = v12;
    v29 = v11;
    v31 = 0;
    sub_225A945D8();
    v15 = v24;
    v16 = v27;
    sub_225CCF7E4();
    if (!v16)
    {
      v28 = v22;
      v31 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CC00);
      sub_225AC5A3C(&qword_27D73CC48, &qword_27D73CC50);
      sub_225CCF774();
      LOBYTE(v28) = v30;
      v31 = 2;
      sub_225AC5B20();
      sub_225CCF7E4();
    }

    return (*(v23 + 8))(v6, v15);
  }

  else
  {
    sub_225AC4EF4();
    sub_225CCFCE4();
    v28 = v12;
    v29 = v11;
    v31 = 0;
    sub_225A945D8();
    v19 = v26;
    v18 = v27;
    sub_225CCF7E4();
    if (!v18)
    {
      v28 = v22;
      v31 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CC00);
      sub_225AC5A3C(&qword_27D73CC48, &qword_27D73CC50);
      sub_225CCF774();
      v28 = v21;
      v31 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CC20);
      sub_225AC5B74();
      sub_225CCF774();
      LOBYTE(v28) = v30;
      v31 = 3;
      sub_225AC5B20();
      sub_225CCF7E4();
    }

    return (*(v25 + 8))(v10, v19);
  }
}

uint64_t sub_225AC5A3C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73CC00);
    sub_225AC5AD8(a2, type metadata accessor for ISO18013Response.Document);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_225AC5AD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_225AC5B20()
{
  result = qword_27D73CC58;
  if (!qword_27D73CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CC58);
  }

  return result;
}

unint64_t sub_225AC5B74()
{
  result = qword_27D73CC60;
  if (!qword_27D73CC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73CC20);
    sub_225AC5C24(&qword_27D73CC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CC60);
  }

  return result;
}

uint64_t sub_225AC5C24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73FA90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

CoreIDVShared::ISO18013Response::Status_optional __swiftcall ISO18013Response.Status.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue > 10)
  {
    if (rawValue == 12)
    {
      *v1 = 3;
      return rawValue;
    }

    if (rawValue == 11)
    {
      *v1 = 2;
      return rawValue;
    }

LABEL_8:
    *v1 = 4;
    return rawValue;
  }

  if (!rawValue)
  {
    *v1 = 0;
    return rawValue;
  }

  if (rawValue != 10)
  {
    goto LABEL_8;
  }

  *v1 = 1;
  return rawValue;
}

uint64_t sub_225AC5D70()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](qword_225CE35F8[v1]);
  return sub_225CCFC24();
}

uint64_t sub_225AC5DF8()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](qword_225CE35F8[v1]);
  return sub_225CCFC24();
}

uint64_t ISO18013Response.Document.docType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ISO18013Response.Document.docType.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ISO18013Response.Document.deviceSigned.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ISO18013Response.Document(0) + 24);

  return sub_225AC6080(v3, a1);
}

uint64_t sub_225AC6080(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ISO18013Response.Document.deviceSigned.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ISO18013Response.Document(0) + 24);

  return sub_225A82A74(a1, v3);
}

uint64_t ISO18013Response.Document.errors.getter()
{
  type metadata accessor for ISO18013Response.Document(0);
}

uint64_t ISO18013Response.Document.errors.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ISO18013Response.Document(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_225AC6244()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AC6314()
{
  sub_225CCE5B4();
}

uint64_t sub_225AC63D0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AC649C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225ACAF30();
  *a1 = result;
  return result;
}

void sub_225AC64CC(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x65707954636F64;
  v4 = 0x6953656369766564;
  v5 = 0xEC00000064656E67;
  if (*v1 != 2)
  {
    v4 = 0x73726F727265;
    v5 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6953726575737369;
    v2 = 0xEC00000064656E67;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_225AC6558()
{
  v1 = 0x65707954636F64;
  v2 = 0x6953656369766564;
  if (*v0 != 2)
  {
    v2 = 0x73726F727265;
  }

  if (*v0)
  {
    v1 = 0x6953726575737369;
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

uint64_t sub_225AC65E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225ACAF30();
  *a1 = result;
  return result;
}

uint64_t sub_225AC6608(uint64_t a1)
{
  v2 = sub_225AC6850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AC6644(uint64_t a1)
{
  v2 = sub_225AC6850();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225AC6698(uint64_t a1)
{
  v2 = sub_225AC67FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AC66D4(uint64_t a1)
{
  v2 = sub_225AC67FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013Response.Document.explicitOrderingKeys(cborEncoder:)()
{
  CBOREncoder.codingKeyFormat.getter(&v5);
  v0 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CBD8);
  if (v0)
  {
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_225CD4890;
    *(v1 + 56) = &type metadata for ISO18013Response.Document.ACWGCodingKeys;
    v2 = sub_225AC67FC();
    *(v1 + 64) = v2;
    *(v1 + 32) = 0;
    *(v1 + 96) = &type metadata for ISO18013Response.Document.ACWGCodingKeys;
    *(v1 + 104) = v2;
    *(v1 + 72) = 1;
  }

  else
  {
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_225CD73A0;
    *(v1 + 56) = &type metadata for ISO18013Response.Document.CodingKeys;
    v3 = sub_225AC6850();
    *(v1 + 64) = v3;
    *(v1 + 32) = 0;
    *(v1 + 96) = &type metadata for ISO18013Response.Document.CodingKeys;
    *(v1 + 104) = v3;
    *(v1 + 72) = 1;
    *(v1 + 136) = &type metadata for ISO18013Response.Document.CodingKeys;
    *(v1 + 144) = v3;
    *(v1 + 112) = 2;
    *(v1 + 176) = &type metadata for ISO18013Response.Document.CodingKeys;
    *(v1 + 184) = v3;
    *(v1 + 152) = 3;
  }

  return v1;
}

unint64_t sub_225AC67FC()
{
  result = qword_27D73CC70;
  if (!qword_27D73CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CC70);
  }

  return result;
}

unint64_t sub_225AC6850()
{
  result = qword_27D73CC78;
  if (!qword_27D73CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CC78);
  }

  return result;
}

uint64_t ISO18013Response.Document.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CC80);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC78);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v46 = &v45 - v9;
  v53 = type metadata accessor for ISO18013Response.IssuerSigned(0);
  v11 = MEMORY[0x28223BE20](v53, v10);
  v51 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v50 = &v45 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CC88);
  v56 = *(v15 - 8);
  v57 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v45 - v17;
  v19 = type metadata accessor for ISO18013Response.Document(0);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = (&v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v21 + 24);
  v25 = type metadata accessor for ISO18013Response.DeviceSigned(0);
  v26 = *(*(v25 - 8) + 56);
  v27 = v23;
  v59 = v24;
  v49 = v25;
  v45 = v26;
  (v26)(v23 + v24, 1, 1);
  v52 = v19;
  v47 = *(v19 + 28);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Decoder.codingKeyFormat.getter(&v67);
  v28 = v67;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v28)
  {
    sub_225AC67FC();
    v29 = v58;
    sub_225CCFCA4();
    if (v29)
    {
      __swift_destroy_boxed_opaque_existential_0(a1);
      v30 = v23;
      v31 = v59;
      return sub_2259CB640(v30 + v31, &qword_27D73BC78);
    }

    v66 = 0;
    v33 = v55;
    v34 = v23;
    *v23 = sub_225CCF684();
    v23[1] = v39;
    v65 = 1;
    sub_225AC5AD8(&qword_27D73CC90, type metadata accessor for ISO18013Response.IssuerSigned);
    v40 = v51;
    sub_225CCF6E4();
    (*(v54 + 8))(v6, v33);
    sub_225AC8BA0(v40, v23 + *(v52 + 20), type metadata accessor for ISO18013Response.IssuerSigned);
    v43 = v59;
    sub_2259CB640(v27 + v59, &qword_27D73BC78);
    v45(v27 + v43, 1, 1, v49);
    *(v27 + v47) = 0;
  }

  else
  {
    sub_225AC6850();
    v32 = v58;
    sub_225CCFCA4();
    if (v32)
    {
      v30 = v23;
      v31 = v59;
      __swift_destroy_boxed_opaque_existential_0(a1);
      return sub_2259CB640(v30 + v31, &qword_27D73BC78);
    }

    v64 = 0;
    v35 = v57;
    v36 = sub_225CCF684();
    v34 = v23;
    v37 = v59;
    *v23 = v36;
    v23[1] = v41;
    v63 = 1;
    sub_225AC5AD8(&qword_27D73CC90, type metadata accessor for ISO18013Response.IssuerSigned);
    v42 = v50;
    sub_225CCF6E4();
    sub_225AC8BA0(v42, v23 + *(v52 + 20), type metadata accessor for ISO18013Response.IssuerSigned);
    v62 = 2;
    sub_225AC5AD8(&qword_27D73CC98, type metadata accessor for ISO18013Response.DeviceSigned);
    v44 = v46;
    sub_225CCF674();
    sub_225A82A74(v44, v23 + v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CCA0);
    v61 = 3;
    sub_225AC7130();
    sub_225CCF674();
    (*(v56 + 8))(v18, v35);
    *(v23 + v47) = v60;
  }

  sub_225AC7068(v34, v48, type metadata accessor for ISO18013Response.Document);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_225AC70D0(v34, type metadata accessor for ISO18013Response.Document);
}

uint64_t sub_225AC7068(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_225AC70D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_225AC7130()
{
  result = qword_27D73CCA8;
  if (!qword_27D73CCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73CCA0);
    sub_225AC5C24(&qword_27D73CC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CCA8);
  }

  return result;
}

uint64_t ISO18013Response.Document.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CCB0);
  v17 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CCB8);
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Encoder.codingKeyFormat.getter(&v28);
  v10 = v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v10)
  {
    sub_225AC67FC();
    sub_225CCFCE4();
    v11 = v19;
    v27 = 0;
    sub_225CCF784();
    if (!v11)
    {
      type metadata accessor for ISO18013Response.Document(0);
      v26 = 1;
      type metadata accessor for ISO18013Response.IssuerSigned(0);
      sub_225AC5AD8(&qword_27D73CCC0, type metadata accessor for ISO18013Response.IssuerSigned);
      sub_225CCF7E4();
    }

    return (*(v17 + 8))(v5, v2);
  }

  else
  {
    sub_225AC6850();
    sub_225CCFCE4();
    v13 = v19;
    v14 = v20;
    v25 = 0;
    sub_225CCF784();
    if (!v13)
    {
      v15 = type metadata accessor for ISO18013Response.Document(0);
      v24 = 1;
      type metadata accessor for ISO18013Response.IssuerSigned(0);
      sub_225AC5AD8(&qword_27D73CCC0, type metadata accessor for ISO18013Response.IssuerSigned);
      sub_225CCF7E4();
      v23 = 2;
      type metadata accessor for ISO18013Response.DeviceSigned(0);
      sub_225AC5AD8(&qword_27D73CCC8, type metadata accessor for ISO18013Response.DeviceSigned);
      sub_225CCF774();
      v21 = *(v14 + *(v15 + 28));
      v22 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CCA0);
      sub_225AC75F4();
      sub_225CCF774();
    }

    return (*(v18 + 8))(v9, v6);
  }
}

unint64_t sub_225AC75F4()
{
  result = qword_27D73CCD0;
  if (!qword_27D73CCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73CCA0);
    sub_225AC5C24(&qword_27D73CC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CCD0);
  }

  return result;
}

uint64_t ISO18013Response.IssuerSigned.issuerAuth.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ISO18013Response.IssuerSigned(0) + 20);
  v4 = sub_225CCD354();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_225AC7788(uint64_t a1)
{
  v2 = sub_225AC7988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AC77C4(uint64_t a1)
{
  v2 = sub_225AC7988();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225AC7818(uint64_t a1)
{
  v2 = sub_225AC7934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AC7854(uint64_t a1)
{
  v2 = sub_225AC7934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013Response.IssuerSigned.explicitOrderingKeys(cborEncoder:)()
{
  CBOREncoder.codingKeyFormat.getter(&v6);
  v0 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CBD8);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_225CD4890;
  if (v0)
  {
    v3 = &type metadata for ISO18013Response.IssuerSigned.ACWGCodingKeys;
    *(v1 + 56) = &type metadata for ISO18013Response.IssuerSigned.ACWGCodingKeys;
    v4 = sub_225AC7934();
  }

  else
  {
    v3 = &type metadata for ISO18013Response.IssuerSigned.CodingKeys;
    *(v1 + 56) = &type metadata for ISO18013Response.IssuerSigned.CodingKeys;
    v4 = sub_225AC7988();
  }

  *(v2 + 64) = v4;
  *(v2 + 32) = 0;
  *(v2 + 96) = v3;
  *(v2 + 104) = v4;
  *(v2 + 72) = 1;
  return v2;
}

unint64_t sub_225AC7934()
{
  result = qword_27D73CCD8;
  if (!qword_27D73CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CCD8);
  }

  return result;
}

unint64_t sub_225AC7988()
{
  result = qword_27D73CCE0;
  if (!qword_27D73CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CCE0);
  }

  return result;
}

uint64_t ISO18013Response.IssuerSigned.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CCE8);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v25 - v6;
  v32 = sub_225CCD354();
  v27 = *(v32 - 8);
  v9 = MEMORY[0x28223BE20](v32, v8);
  v29 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v30 = &v25 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CCF0);
  v33 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v25 - v15;
  v26 = type metadata accessor for ISO18013Response.IssuerSigned(0);
  MEMORY[0x28223BE20](v26, v17);
  v31 = (&v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Decoder.codingKeyFormat.getter(&v38);
  v19 = v38;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((v19 & 1) == 0)
  {
    sub_225AC7988();
    sub_225CCFCA4();
    if (!v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CCF8);
      v37 = 0;
      sub_225AC7F74();
      sub_225CCF674();
      v22 = v31;
      *v31 = v36;
      LOBYTE(v36) = 1;
      sub_225AC5AD8(&qword_27D73AC50, MEMORY[0x277CF3948]);
      v23 = v30;
      v24 = v32;
      sub_225CCF6E4();
      (*(v33 + 8))(v16, v13);
      goto LABEL_7;
    }

    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  sub_225AC7934();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CCF8);
  v37 = 0;
  sub_225AC7F74();
  v20 = v35;
  sub_225CCF674();
  v22 = v31;
  *v31 = v36;
  LOBYTE(v36) = 1;
  sub_225AC5AD8(&qword_27D73AC50, MEMORY[0x277CF3948]);
  v23 = v29;
  v24 = v32;
  sub_225CCF6E4();
  (*(v34 + 8))(v7, v20);
LABEL_7:
  (*(v27 + 32))(v22 + *(v26 + 20), v23, v24);
  sub_225AC7068(v22, v28, type metadata accessor for ISO18013Response.IssuerSigned);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_225AC70D0(v22, type metadata accessor for ISO18013Response.IssuerSigned);
}

unint64_t sub_225AC7F74()
{
  result = qword_27D73CD00;
  if (!qword_27D73CD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73CCF8);
    sub_225AC8038(&qword_27D73CD08, &qword_27D73C5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CD00);
  }

  return result;
}

uint64_t sub_225AC8038(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73CD10);
    sub_2259D8B24(a2, &qword_27D73B3D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ISO18013Response.IssuerSigned.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CD18);
  v16 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CD20);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Encoder.codingKeyFormat.getter(&v21);
  v10 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v10)
  {
    sub_225AC7934();
    sub_225CCFCE4();
    v19 = *v18;
    v20 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CCF8);
    sub_225AC8474();
    v11 = v17;
    sub_225CCF774();
    if (!v11)
    {
      type metadata accessor for ISO18013Response.IssuerSigned(0);
      LOBYTE(v19) = 1;
      sub_225CCD354();
      sub_225AC5AD8(&qword_27D73AC68, MEMORY[0x277CF3948]);
      sub_225CCF7E4();
    }

    return (*(v16 + 8))(v5, v2);
  }

  else
  {
    sub_225AC7988();
    sub_225CCFCE4();
    v19 = *v18;
    v20 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CCF8);
    sub_225AC8474();
    v13 = v17;
    sub_225CCF774();
    if (!v13)
    {
      type metadata accessor for ISO18013Response.IssuerSigned(0);
      LOBYTE(v19) = 1;
      sub_225CCD354();
      sub_225AC5AD8(&qword_27D73AC68, MEMORY[0x277CF3948]);
      sub_225CCF7E4();
    }

    return (*(v15 + 8))(v9, v6);
  }
}

unint64_t sub_225AC8474()
{
  result = qword_27D73CD28;
  if (!qword_27D73CD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73CCF8);
    sub_225AC8038(&qword_27D73CD30, &qword_27D73C5D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CD28);
  }

  return result;
}

uint64_t ISO18013Response.DeviceSigned.namespaces.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  sub_2259CB710(v2, v3);
}

__n128 ISO18013Response.DeviceSigned.namespaces.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  sub_2259BEF00(v1->n128_i64[1], v1[1].n128_u64[0]);

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t sub_225AC8750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_225AC8800(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7541656369766564;
  }

  else
  {
    v3 = 0x63617053656D616ELL;
  }

  if (v2)
  {
    v4 = 0xEA00000000007365;
  }

  else
  {
    v4 = 0xEA00000000006874;
  }

  if (*a2)
  {
    v5 = 0x7541656369766564;
  }

  else
  {
    v5 = 0x63617053656D616ELL;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006874;
  }

  else
  {
    v6 = 0xEA00000000007365;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225AC88AC()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AC8934()
{
  sub_225CCE5B4();
}

uint64_t sub_225AC89A8()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225AC8A38(uint64_t *a1@<X8>)
{
  v2 = 0x63617053656D616ELL;
  if (*v1)
  {
    v2 = 0x7541656369766564;
  }

  v3 = 0xEA00000000006874;
  if (!*v1)
  {
    v3 = 0xEA00000000007365;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_225AC8A7C()
{
  if (*v0)
  {
    return 0x7541656369766564;
  }

  else
  {
    return 0x63617053656D616ELL;
  }
}

uint64_t sub_225AC8AC8(uint64_t a1)
{
  v2 = sub_225AC8F94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AC8B04(uint64_t a1)
{
  v2 = sub_225AC8F94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013Response.DeviceSigned.init(namespaces:deviceAuth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  v7 = type metadata accessor for ISO18013Response.DeviceSigned(0);
  return sub_225AC8BA0(a2, a3 + *(v7 + 20), type metadata accessor for ISO18013Response.DeviceAuth);
}

uint64_t sub_225AC8BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ISO18013Response.DeviceSigned.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for ISO18013Response.DeviceAuth(0);
  MEMORY[0x28223BE20](v4, v5);
  v25 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CD38);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = v21 - v9;
  v11 = type metadata accessor for ISO18013Response.DeviceSigned(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AC8F94();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v15 = v14;
  v16 = v23;
  LOBYTE(v26) = 1;
  sub_225AC5AD8(&qword_27D73CD48, type metadata accessor for ISO18013Response.DeviceAuth);
  v17 = v24;
  sub_225CCF6E4();
  v21[1] = v11;
  sub_225AC8BA0(v25, v15 + *(v11 + 20), type metadata accessor for ISO18013Response.DeviceAuth);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C080);
  v29 = 0;
  sub_2259D8B24(&qword_27D73C088, &qword_27D73C080);
  sub_225CCF6E4();
  (*(v16 + 8))(v10, v17);
  v18 = v27;
  v19 = v28;
  *v15 = v26;
  *(v15 + 16) = v18;
  *(v15 + 24) = v19;
  sub_225AC7068(v15, v22, type metadata accessor for ISO18013Response.DeviceSigned);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_225AC70D0(v15, type metadata accessor for ISO18013Response.DeviceSigned);
}

unint64_t sub_225AC8F94()
{
  result = qword_27D73CD40;
  if (!qword_27D73CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CD40);
  }

  return result;
}

uint64_t ISO18013Response.DeviceSigned.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CD50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AC8F94();
  sub_225CCFCE4();
  type metadata accessor for ISO18013Response.DeviceSigned(0);
  LOBYTE(v15) = 1;
  type metadata accessor for ISO18013Response.DeviceAuth(0);
  sub_225AC5AD8(&qword_27D73CD58, type metadata accessor for ISO18013Response.DeviceAuth);
  sub_225CCF7E4();
  if (!v2)
  {
    v10 = v3[1];
    v11 = v3[2];
    v12 = v3[3];
    v15 = *v3;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v14[15] = 0;
    sub_2259CB710(v10, v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C080);
    sub_2259D8B24(&qword_27D73C090, &qword_27D73C080);
    sub_225CCF7E4();
    sub_2259BEF00(v16, v17);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_225AC9250(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6953656369766564;
  }

  else
  {
    v3 = 0x614D656369766564;
  }

  if (v2)
  {
    v4 = 0xE900000000000063;
  }

  else
  {
    v4 = 0xEF65727574616E67;
  }

  if (*a2)
  {
    v5 = 0x6953656369766564;
  }

  else
  {
    v5 = 0x614D656369766564;
  }

  if (*a2)
  {
    v6 = 0xEF65727574616E67;
  }

  else
  {
    v6 = 0xE900000000000063;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225AC9308()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AC939C()
{
  sub_225CCE5B4();
}

uint64_t sub_225AC941C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225AC94B8(uint64_t *a1@<X8>)
{
  v2 = 0x614D656369766564;
  if (*v1)
  {
    v2 = 0x6953656369766564;
  }

  v3 = 0xE900000000000063;
  if (*v1)
  {
    v3 = 0xEF65727574616E67;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_225AC9508()
{
  if (*v0)
  {
    return 0x6953656369766564;
  }

  else
  {
    return 0x614D656369766564;
  }
}

uint64_t sub_225AC9560(uint64_t a1)
{
  v2 = sub_225AC9D04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AC959C(uint64_t a1)
{
  v2 = sub_225AC9D04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013Response.DeviceAuth.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC30);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v52 = &v44 - v5;
  v6 = sub_225CCD354();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v46 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CD60);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v51 = &v44 - v11;
  v12 = sub_225CCD4C4();
  v50 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CD68);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v16);
  v18 = &v44 - v17;
  v19 = type metadata accessor for ISO18013Response.DeviceAuth(0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AC9D04();
  v23 = v54;
  sub_225CCFCA4();
  if (!v23)
  {
    v44 = v15;
    v45 = v22;
    v24 = v12;
    v25 = v50;
    v26 = v51;
    v54 = v19;
    v27 = v52;
    v61 = 0;
    if (sub_225CCF704() & 1) != 0 && (v57 = 1, (sub_225CCF704()))
    {
      v56 = 1;
      sub_225CCF2D4();
      swift_allocError();
      sub_2259D8B24(&qword_27D73CD80, &qword_27D73CD68);
      v28 = v55;
      sub_225CCF284();
      swift_willThrow();
      (*(v53 + 8))(v18, v28);
    }

    else
    {
      v60 = 0;
      sub_225AC5AD8(&qword_27D73CD78, MEMORY[0x277CF39C0]);
      v29 = v26;
      sub_225CCF674();
      v30 = v18;
      if ((*(v25 + 48))(v29, 1, v24) == 1)
      {
        sub_2259CB640(v29, &qword_27D73CD60);
        v59 = 1;
        sub_225AC5AD8(&qword_27D73AC50, MEMORY[0x277CF3948]);
        v32 = v27;
        v33 = v48;
        sub_225CCF674();
        v38 = v47;
        v39 = (*(v47 + 48))(v32, 1, v33);
        v37 = v49;
        v40 = v53;
        if (v39 == 1)
        {
          sub_2259CB640(v32, &qword_27D73AC30);
          v58 = 1;
          sub_225CCF2D4();
          swift_allocError();
          sub_2259D8B24(&qword_27D73CD80, &qword_27D73CD68);
          v41 = v55;
          sub_225CCF284();
          swift_willThrow();
          (*(v40 + 8))(v30, v41);
          return __swift_destroy_boxed_opaque_existential_0(a1);
        }

        (*(v53 + 8))(v30, v55);
        v42 = *(v38 + 32);
        v43 = v46;
        v42(v46, v32, v33);
        v36 = v45;
        v42(v45, v43, v33);
      }

      else
      {
        (*(v53 + 8))(v18, v55);
        v34 = *(v25 + 32);
        v35 = v44;
        v34(v44, v29, v24);
        v36 = v45;
        v34(v45, v35, v24);
        v37 = v49;
      }

      swift_storeEnumTagMultiPayload();
      sub_225AC8BA0(v36, v37, type metadata accessor for ISO18013Response.DeviceAuth);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_225AC9D04()
{
  result = qword_27D73CD70;
  if (!qword_27D73CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CD70);
  }

  return result;
}

uint64_t ISO18013Response.DeviceAuth.encode(to:)(void *a1)
{
  v2 = sub_225CCD354();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_225CCD4C4();
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ISO18013Response.DeviceAuth(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CD88);
  v28 = *(v14 - 8);
  v29 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v23 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AC9D04();
  sub_225CCFCE4();
  sub_225AC7068(v27, v13, type metadata accessor for ISO18013Response.DeviceAuth);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v25;
    v18 = v26;
    (*(v25 + 32))(v5, v13, v26);
    v31 = 1;
    sub_225AC5AD8(&qword_27D73AC68, MEMORY[0x277CF3948]);
    v20 = v29;
    sub_225CCF7E4();
    (*(v19 + 8))(v5, v18);
  }

  else
  {
    v21 = v24;
    (*(v24 + 32))(v9, v13, v6);
    v30 = 0;
    sub_225AC5AD8(&qword_27D73CD90, MEMORY[0x277CF39C0]);
    v20 = v29;
    sub_225CCF7E4();
    (*(v21 + 8))(v9, v6);
  }

  return (*(v28 + 8))(v17, v20);
}

unint64_t sub_225ACA128()
{
  result = qword_27D73CD98;
  if (!qword_27D73CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CD98);
  }

  return result;
}

void sub_225ACA284()
{
  type metadata accessor for ISO18013Response.IssuerSigned(319);
  if (v0 <= 0x3F)
  {
    sub_225ACA348();
    if (v1 <= 0x3F)
    {
      sub_225ACA464(319, &qword_27D73CDB8, &qword_27D73CCA0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_225ACA348()
{
  if (!qword_27D73CDB0)
  {
    type metadata accessor for ISO18013Response.DeviceSigned(255);
    v0 = sub_225CCEFC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D73CDB0);
    }
  }
}

void sub_225ACA3C8()
{
  sub_225ACA464(319, &qword_27D73CDD0, &qword_27D73CCF8);
  if (v0 <= 0x3F)
  {
    sub_225CCD354();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_225ACA464(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_225CCEFC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_225ACA4E0()
{
  sub_225A9C7E4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ISO18013Response.DeviceAuth(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_225ACA564()
{
  result = sub_225CCD4C4();
  if (v1 <= 0x3F)
  {
    result = sub_225CCD354();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_225ACA65C()
{
  result = qword_27D73CDF8;
  if (!qword_27D73CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CDF8);
  }

  return result;
}

unint64_t sub_225ACA6B4()
{
  result = qword_27D73CE00;
  if (!qword_27D73CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CE00);
  }

  return result;
}

unint64_t sub_225ACA70C()
{
  result = qword_27D73CE08;
  if (!qword_27D73CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CE08);
  }

  return result;
}

unint64_t sub_225ACA764()
{
  result = qword_27D73CE10;
  if (!qword_27D73CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CE10);
  }

  return result;
}

unint64_t sub_225ACA7BC()
{
  result = qword_27D73CE18;
  if (!qword_27D73CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CE18);
  }

  return result;
}

unint64_t sub_225ACA814()
{
  result = qword_27D73CE20;
  if (!qword_27D73CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CE20);
  }

  return result;
}

unint64_t sub_225ACA86C()
{
  result = qword_27D73CE28;
  if (!qword_27D73CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CE28);
  }

  return result;
}

unint64_t sub_225ACA8C4()
{
  result = qword_27D73CE30;
  if (!qword_27D73CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CE30);
  }

  return result;
}

unint64_t sub_225ACA91C()
{
  result = qword_27D73CE38;
  if (!qword_27D73CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CE38);
  }

  return result;
}

unint64_t sub_225ACA974()
{
  result = qword_27D73CE40;
  if (!qword_27D73CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CE40);
  }

  return result;
}

unint64_t sub_225ACA9CC()
{
  result = qword_27D73CE48;
  if (!qword_27D73CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CE48);
  }

  return result;
}

unint64_t sub_225ACAA24()
{
  result = qword_27D73CE50;
  if (!qword_27D73CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CE50);
  }

  return result;
}

unint64_t sub_225ACAA7C()
{
  result = qword_27D73CE58;
  if (!qword_27D73CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CE58);
  }

  return result;
}

unint64_t sub_225ACAAD4()
{
  result = qword_27D73CE60;
  if (!qword_27D73CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CE60);
  }

  return result;
}

unint64_t sub_225ACAB2C()
{
  result = qword_27D73CE68;
  if (!qword_27D73CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CE68);
  }

  return result;
}

unint64_t sub_225ACAB84()
{
  result = qword_27D73CE70;
  if (!qword_27D73CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CE70);
  }

  return result;
}

unint64_t sub_225ACABDC()
{
  result = qword_27D73CE78;
  if (!qword_27D73CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CE78);
  }

  return result;
}

unint64_t sub_225ACAC34()
{
  result = qword_27D73CE80;
  if (!qword_27D73CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CE80);
  }

  return result;
}

unint64_t sub_225ACAC8C()
{
  result = qword_27D73CE88;
  if (!qword_27D73CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CE88);
  }

  return result;
}

unint64_t sub_225ACACE4()
{
  result = qword_27D73CE90;
  if (!qword_27D73CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CE90);
  }

  return result;
}

unint64_t sub_225ACAD3C()
{
  result = qword_27D73CE98;
  if (!qword_27D73CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CE98);
  }

  return result;
}

unint64_t sub_225ACAD94()
{
  result = qword_27D73CEA0;
  if (!qword_27D73CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CEA0);
  }

  return result;
}

unint64_t sub_225ACADEC()
{
  result = qword_27D73CEA8;
  if (!qword_27D73CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CEA8);
  }

  return result;
}

unint64_t sub_225ACAE44()
{
  result = qword_27D73CEB0;
  if (!qword_27D73CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CEB0);
  }

  return result;
}

uint64_t sub_225ACAE98()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_225ACAEE4()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_225ACAF30()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_225ACAF7C()
{
  result = qword_27D73CEB8;
  if (!qword_27D73CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CEB8);
  }

  return result;
}

uint64_t sub_225ACAFF4()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](qword_225CE3AF0[v1]);
  return sub_225CCFC24();
}

uint64_t sub_225ACB07C()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](qword_225CE3AF0[v1]);
  return sub_225CCFC24();
}

uint64_t sub_225ACB0C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_225ACDF44(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_225ACB124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225ACDFAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225ACB164@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_225ACE15C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_225ACB18C(uint64_t a1)
{
  v2 = sub_225ACB860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225ACB1C8(uint64_t a1)
{
  v2 = sub_225ACB860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013RevocationStatus.uri.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ISO18013RevocationStatus.issuanceDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ISO18013RevocationStatus() + 20);
  v4 = sub_225CCD0B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ISO18013RevocationStatus()
{
  result = qword_27D73CF30;
  if (!qword_27D73CF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ISO18013RevocationStatus.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ISO18013RevocationStatus() + 24);
  v4 = sub_225CCD0B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ISO18013RevocationStatus.identifierList.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for ISO18013RevocationStatus() + 32));
}

uint64_t ISO18013RevocationStatus.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CEC0);
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = v27 - v6;
  v8 = type metadata accessor for ISO18013RevocationStatus();
  MEMORY[0x28223BE20](v8, v9);
  v11 = (v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ACB860();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v28 = v11;
  v12 = v30;
  v36 = 1;
  v13 = v7;
  sub_225CCF6A4();
  v14 = v4;
  v35 = 2;
  sub_225CCF6A4();
  v34 = 0;
  v15 = sub_225CCF684();
  v16 = v28;
  *v28 = v15;
  v16[1] = v17;
  v27[2] = v8[6];
  v27[3] = v17;
  sub_225CCD064();
  v27[1] = v8[5];
  sub_225CCD064();
  v33 = 4;
  v18 = sub_225CCF644();
  v19 = a1;
  v20 = v8;
  v21 = v28;
  v22 = v28 + v8[7];
  *v22 = v18;
  v22[8] = v23 & 1;
  v32 = 3;
  sub_225ACB8B4();
  v24 = v13;
  sub_225CCF6E4();
  v25 = v29;
  (*(v12 + 8))(v24, v14);
  *(v21 + v20[8]) = v31;
  sub_225ACB908(v21, v25);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return sub_225ACB96C(v21);
}

unint64_t sub_225ACB860()
{
  result = qword_27D73CEC8;
  if (!qword_27D73CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CEC8);
  }

  return result;
}

unint64_t sub_225ACB8B4()
{
  result = qword_27D73CED0;
  if (!qword_27D73CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CED0);
  }

  return result;
}

uint64_t sub_225ACB908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013RevocationStatus();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_225ACB96C(uint64_t a1)
{
  v2 = type metadata accessor for ISO18013RevocationStatus();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ISO18013RevocationStatus.init(uri:issuanceDate:expirationDate:ttl:identifierList:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t *a7@<X6>, char *a8@<X8>)
{
  v12 = *a7;
  *a8 = a1;
  *(a8 + 1) = a2;
  v13 = type metadata accessor for ISO18013RevocationStatus();
  v14 = v13[5];
  v15 = sub_225CCD0B4();
  v16 = *(*(v15 - 8) + 32);
  v16(&a8[v14], a3, v15);
  result = (v16)(&a8[v13[6]], a4, v15);
  v18 = &a8[v13[7]];
  *v18 = a5;
  v18[8] = a6 & 1;
  *&a8[v13[8]] = v12;
  return result;
}

uint64_t ISO18013RevocationStatus.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CED8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ACB860();
  sub_225CCFCE4();
  LOBYTE(v16) = 0;
  sub_225CCF784();
  if (!v2)
  {
    v10 = type metadata accessor for ISO18013RevocationStatus();
    sub_225CCD074();
    LOBYTE(v16) = 1;
    sub_225CCF7A4();
    sub_225CCD074();
    LOBYTE(v16) = 2;
    sub_225CCF7A4();
    v11 = (v3 + *(v10 + 28));
    v12 = *v11;
    LOBYTE(v11) = *(v11 + 8);
    v16 = v12;
    v17 = v11;
    v15 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CEE0);
    sub_225ACBD18();
    sub_225CCF7E4();
    v16 = *(v3 + *(v10 + 32));
    v15 = 3;
    sub_225ACBD94();

    sub_225CCF7E4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_225ACBD18()
{
  result = qword_27D73CEE8;
  if (!qword_27D73CEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73CEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CEE8);
  }

  return result;
}

unint64_t sub_225ACBD94()
{
  result = qword_27D73CEF0;
  if (!qword_27D73CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CEF0);
  }

  return result;
}

uint64_t sub_225ACBE28(uint64_t a1)
{
  v2 = sub_225ACBFB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225ACBE64(uint64_t a1)
{
  v2 = sub_225ACBFB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013RevocationStatus.IdentifierInfo.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CEF8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ACBFB4();
  sub_225CCFCE4();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_225ACBFB4()
{
  result = qword_27D73CF00;
  if (!qword_27D73CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CF00);
  }

  return result;
}

uint64_t sub_225ACC058(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CEF8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ACBFB4();
  sub_225CCFCE4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_225ACC18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEB00000000737265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_225CCF934();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_225ACC218(uint64_t a1)
{
  v2 = sub_225ACCA18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225ACC254(uint64_t a1)
{
  v2 = sub_225ACCA18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013RevocationStatus.IdentifierList.init(from:)@<X0>(void *a1@<X0>, unint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v57 - v5;
  v7 = sub_225CCD454();
  v65 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CF08);
  v66 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v57 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ACCA18();
  v15 = v67;
  sub_225CCFCA4();
  if (v15)
  {
    goto LABEL_3;
  }

  v67 = v6;
  sub_225ACDA58(&qword_27D73CF18);
  sub_225CCF6E4();
  v18 = v7;
  v19 = sub_225CCD444();
  v20 = [v19 dictionary];

  v62 = v18;
  v63 = v11;
  v60 = v10;
  v61 = v14;
  if (!v20)
  {
    v64 = 0x8000000225D1B900;
    v59 = 0x8000000225D1B940;
    v25 = MEMORY[0x277D84F90];
    v26 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v28 = v27;
    v29 = sub_225CCE954();
    v30 = *(v29 - 8);
    v31 = v67;
    (*(v30 + 56))(v67, 1, 1, v29);
    LODWORD(v29) = (*(v30 + 48))(v31, 1, v29);
    sub_2259DB318(v31);
    if (v29)
    {
      LOWORD(v23) = 1033;
    }

    else
    {
      LOWORD(v23) = 23;
    }

    v32 = sub_225B2C374(v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69[0] = v32;
    sub_225B2C4A0(v26, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v69);

    v34 = v69[0];
    v35 = sub_225B29AA0(0, 1, 1, v25);
    i = *(v35 + 2);
    v36 = *(v35 + 3);
    v38 = i + 1;
    if (i >= v36 >> 1)
    {
      goto LABEL_33;
    }

    goto LABEL_12;
  }

  v21 = sub_2259D8718(0, &qword_27D73AC58);
  sub_2259D86A8();
  v59 = v21;
  v22 = sub_225CCE2D4();

  v70 = sub_225B2DDA8(MEMORY[0x277D84F90]);
  v58 = a1;
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = 0;
    v24 = 0;
    a1 = 0;
    v67 = sub_225CCF474() | 0x8000000000000000;
  }

  else
  {
    v44 = -1 << *(v22 + 32);
    v24 = ~v44;
    v23 = v22 + 64;
    v45 = -v44;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    a1 = (v46 & *(v22 + 64));
    v67 = v22;
  }

  v28 = v65;
  v57[2] = v22;

  v47 = 0;
  v57[1] = v24;
  for (i = v66; ; i = v66)
  {
    v34 = v64;
    if ((v67 & 0x8000000000000000) == 0)
    {
      break;
    }

    v54 = sub_225CCF504();
    if (!v54)
    {
      goto LABEL_30;
    }

    v56 = v55;
    v68 = v54;
    swift_dynamicCast();
    v52 = v69[0];
    v68 = v56;
    swift_dynamicCast();
    v53 = v69[0];
    v38 = v47;
    v49 = a1;
    if (!v52)
    {
LABEL_29:
      i = v66;
LABEL_30:
      v34 = v64;
      v28 = v65;
LABEL_31:
      sub_2259D8710();
      (*(v28 + 8))(v60, v62);
      (*(i + 8))(v61, v63);

      *v34 = v70;
      v16 = v58;
      return __swift_destroy_boxed_opaque_existential_0(v16);
    }

LABEL_27:
    v69[0] = v52;
    v69[1] = v53;
    sub_225ACCA6C(&v70, v69);

    v47 = v38;
    a1 = v49;
    v28 = v65;
  }

  v36 = v47;
  v48 = a1;
  v38 = v47;
  if (a1)
  {
LABEL_23:
    v49 = (v48 - 1) & v48;
    v50 = (v38 << 9) | (8 * __clz(__rbit64(v48)));
    v51 = *(*(v67 + 56) + v50);
    v52 = *(*(v67 + 48) + v50);
    v53 = v51;
    if (!v52)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= ((v24 + 64) >> 6))
    {
      goto LABEL_31;
    }

    v48 = *(v23 + 8 * v38);
    ++v36;
    if (v48)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_33:
  v35 = sub_225B29AA0((v36 > 1), v38, 1, v35);
LABEL_12:
  v40 = v62;
  v39 = v63;
  *(v35 + 2) = v38;
  v41 = &v35[56 * i];
  v42 = v64;
  *(v41 + 4) = 0xD000000000000033;
  *(v41 + 5) = v42;
  v43 = v59;
  *(v41 + 6) = 0xD00000000000002CLL;
  *(v41 + 7) = v43;
  *(v41 + 8) = 0x6F72662874696E69;
  *(v41 + 9) = 0xEB00000000293A6DLL;
  *(v41 + 10) = 113;
  *v28 = v23;
  *(v28 + 8) = v35;
  *(v28 + 16) = 0xD000000000000033;
  *(v28 + 24) = v42;
  *(v28 + 32) = v34;
  *(v28 + 40) = 0;
  swift_willThrow();
  (*(v65 + 8))(v60, v40);
  (*(v66 + 8))(v61, v39);
LABEL_3:
  v16 = a1;
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

unint64_t sub_225ACCA18()
{
  result = qword_27D73CF10;
  if (!qword_27D73CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CF10);
  }

  return result;
}

void sub_225ACCA6C(uint64_t *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v40 - v7;
  v9 = *(a2 + 8);
  v10 = *a2;
  v11 = v9;
  v12 = [v10 data];
  if (v12)
  {
    v43 = a1;
    v13 = v12;
    v14 = sub_225CCCFA4();
    v16 = v15;

    v17 = v11;
    v18 = sub_225CCCED4();
    if (v19 >> 60 != 15)
    {
      v36 = v18;
      v37 = v19;
      sub_225CCD3A4();
      swift_allocObject();
      sub_225CCD394();
      sub_225ACE1C4();
      sub_225CCD364();
      if (v2)
      {

        sub_2259BEF00(v14, v16);
        sub_2259B97A8(v36, v37);
      }

      else
      {

        v38 = v43;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = *v38;
        sub_225A04590(v14, v16, isUniquelyReferenced_nonNull_native);
        sub_2259B97A8(v36, v37);

        sub_2259BEF00(v14, v16);
        *v38 = v44;
      }

      return;
    }

    sub_2259BEF00(v14, v16);
  }

  v43 = v10;
  v41 = 0x8000000225D1B940;
  v20 = MEMORY[0x277D84F90];
  v21 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v42 = swift_allocError();
  v23 = v22;
  v24 = sub_225CCE954();
  v25 = *(v24 - 8);
  (*(v25 + 56))(v8, 1, 1, v24);
  LODWORD(v24) = (*(v25 + 48))(v8, 1, v24);
  sub_2259DB318(v8);
  if (v24)
  {
    v26 = 1034;
  }

  else
  {
    v26 = 23;
  }

  v27 = sub_225B2C374(v20);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v27;
  sub_225B2C4A0(v21, sub_225B2AC40, 0, v28, &v44);

  v29 = v44;
  v30 = sub_225B29AA0(0, 1, 1, v20);
  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  if (v32 >= v31 >> 1)
  {
    v30 = sub_225B29AA0((v31 > 1), v32 + 1, 1, v30);
  }

  v33 = v43;
  *(v30 + 2) = v32 + 1;
  v34 = &v30[56 * v32];
  *(v34 + 4) = 0xD000000000000035;
  *(v34 + 5) = 0x8000000225D1B970;
  v35 = v41;
  *(v34 + 6) = 0xD00000000000002CLL;
  *(v34 + 7) = v35;
  *(v34 + 8) = 0x6F72662874696E69;
  *(v34 + 9) = 0xEB00000000293A6DLL;
  *(v34 + 10) = 119;
  *v23 = v26;
  *(v23 + 8) = v30;
  *(v23 + 16) = 0xD000000000000035;
  *(v23 + 24) = 0x8000000225D1B970;
  *(v23 + 32) = v29;
  *(v23 + 40) = 0;
  swift_willThrow();
}

uint64_t ISO18013RevocationStatus.IdentifierList.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = sub_225CCD454();
  v75 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v61 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v61 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CF20);
  v63 = *(v12 - 8);
  v64 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v61 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ACCA18();
  v62 = v15;
  sub_225CCFCE4();
  v17 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 64);
  v21 = (v18 + 63) >> 6;
  v68 = (v75 + 8);
  v69 = v16;

  v22 = 0;
  v23 = MEMORY[0x277D84F98];
  v66 = v16 + 64;
  v67 = v5;
  v65 = v21;
  v76 = v11;
  while (v20)
  {
    v26 = v22;
LABEL_11:
    v27 = (*(v69 + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v20)))));
    v29 = *v27;
    v28 = v27[1];
    sub_225CCD424();
    swift_allocObject();
    sub_2259CB710(v29, v28);
    sub_2259CB710(v29, v28);
    sub_225CCD414();
    sub_225ACDA04();
    v30 = sub_225CCD3F4();
    if (v3)
    {
      (*(v63 + 8))(v62, v64);

      sub_2259BEF00(v29, v28);
      sub_2259BEF00(v29, v28);
    }

    v74 = v28;
    v75 = v23;
    v32 = v30;
    v33 = v31;

    sub_225CCD3A4();
    swift_allocObject();
    sub_225CCD394();
    sub_225ACDA58(&qword_27D73CF18);
    v72 = v32;
    v73 = v33;
    sub_225CCD364();

    v34 = v74;
    sub_2259CB710(v29, v74);
    v35 = sub_225CCCF74();
    v36 = [objc_opt_self() cborWithData_];

    sub_2259BEF00(v29, v34);
    v37 = sub_225CCD444();
    v38 = v75;
    v70 = 0;
    v71 = v37;
    if ((v75 & 0xC000000000000001) != 0)
    {
      if (v75 < 0)
      {
        v39 = v75;
      }

      else
      {
        v39 = v75 & 0xFFFFFFFFFFFFFF8;
      }

      v40 = sub_225CCF144();
      if (__OFADD__(v40, 1))
      {
        goto LABEL_32;
      }

      v38 = sub_225ACD58C(v39, v40 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v38;
    v43 = sub_2259F1A58(v36);
    v44 = *(v38 + 16);
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_31;
    }

    v47 = v42;
    if (*(v38 + 24) < v46)
    {
      sub_225A41C78(v46, isUniquelyReferenced_nonNull_native);
      v48 = sub_2259F1A58(v36);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_34;
      }

      v43 = v48;
LABEL_23:
      v50 = v36;
      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v50 = v36;
    sub_225A44D2C();
LABEL_24:
    v20 &= v20 - 1;
    v23 = v77;
    if (v47)
    {
      v24 = v77[7];
      v25 = *(v24 + 8 * v43);
      *(v24 + 8 * v43) = v71;

      sub_2259BEF00(v72, v73);
      sub_2259BEF00(v29, v34);
      sub_2259BEF00(v29, v34);
      v5 = v67;
      (*v68)(v76, v67);
    }

    else
    {
      v77[(v43 >> 6) + 8] |= 1 << v43;
      *(v23[6] + 8 * v43) = v50;
      v51 = v72;
      *(v23[7] + 8 * v43) = v71;
      sub_2259BEF00(v51, v73);
      sub_2259BEF00(v29, v34);
      sub_2259BEF00(v29, v34);
      v5 = v67;
      (*v68)(v76, v67);
      v52 = v23[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_33;
      }

      v23[2] = v54;
    }

    v22 = v26;
    v3 = v70;
    v21 = v65;
    v17 = v66;
  }

  while (1)
  {
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v26 >= v21)
    {

      sub_2259D8718(0, &qword_27D73AC58);
      sub_2259D86A8();
      v55 = sub_225CCE2B4();

      v56 = [objc_opt_self() cborWithDictionary_];

      v57 = v61;
      sub_225CCD434();
      sub_225ACDA58(&qword_27D73C230);
      v58 = v64;
      v59 = v62;
      sub_225CCF7E4();
      (*v68)(v57, v5);
      return (*(v63 + 8))(v59, v58);
    }

    v20 = *(v17 + 8 * v26);
    ++v22;
    if (v20)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_2259D8718(0, &qword_27D73AC58);
  result = sub_225CCFAC4();
  __break(1u);
  return result;
}

uint64_t sub_225ACD58C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3A0);
    v2 = sub_225CCF574();
    v19 = v2;
    sub_225CCF474();
    v3 = sub_225CCF504();
    if (v3)
    {
      v4 = v3;
      sub_2259D8718(0, &qword_27D73AC58);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_225A41C78(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_225CCEF54();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_225CCF504();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_225ACD7B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B398);
    v2 = sub_225CCF574();
    v19 = v2;
    sub_225CCF474();
    v3 = sub_225CCF504();
    if (v3)
    {
      v4 = v3;
      sub_2259D8718(0, &qword_281059A70);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_2259D8718(0, &qword_281059A68);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_225A41C8C(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_225CCEF54();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_225CCF504();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

unint64_t sub_225ACDA04()
{
  result = qword_27D73CF28;
  if (!qword_27D73CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CF28);
  }

  return result;
}

uint64_t sub_225ACDA58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_225CCD454();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_225ACDAC4()
{
  sub_225CCD0B4();
  if (v0 <= 0x3F)
  {
    sub_225ACDB60();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_225ACDB60()
{
  if (!qword_27D73CF40)
  {
    v0 = sub_225CCEFC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D73CF40);
    }
  }
}

uint64_t sub_225ACDBC0(uint64_t *a1, int a2)
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

uint64_t sub_225ACDC08(uint64_t result, int a2, int a3)
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

unint64_t sub_225ACDC88()
{
  result = qword_27D73CF48;
  if (!qword_27D73CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CF48);
  }

  return result;
}

unint64_t sub_225ACDCE0()
{
  result = qword_27D73CF50;
  if (!qword_27D73CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CF50);
  }

  return result;
}

unint64_t sub_225ACDD38()
{
  result = qword_27D73CF58;
  if (!qword_27D73CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CF58);
  }

  return result;
}

unint64_t sub_225ACDD90()
{
  result = qword_27D73CF60;
  if (!qword_27D73CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CF60);
  }

  return result;
}

unint64_t sub_225ACDDE8()
{
  result = qword_27D73CF68;
  if (!qword_27D73CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CF68);
  }

  return result;
}

unint64_t sub_225ACDE40()
{
  result = qword_27D73CF70;
  if (!qword_27D73CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CF70);
  }

  return result;
}

unint64_t sub_225ACDE98()
{
  result = qword_27D73CF78;
  if (!qword_27D73CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CF78);
  }

  return result;
}

unint64_t sub_225ACDEF0()
{
  result = qword_27D73CF80;
  if (!qword_27D73CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CF80);
  }

  return result;
}

uint64_t sub_225ACDF44(uint64_t a1)
{
  if (a1 <= 5)
  {
    if (a1 == 2)
    {
      return 0;
    }

    if (a1 == 4)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 65534:
        return 4;
      case 65530:
        return 3;
      case 6:
        return 2;
    }
  }

  return 5;
}

uint64_t sub_225ACDFAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6910581 && a2 == 0xE300000000000000;
  if (v3 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7370853 && a2 == 0xE300000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7627113 && a2 == 0xE300000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7759218 && a2 == 0xE300000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7107700 && a2 == 0xE300000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_225CCF934();

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

uint64_t sub_225ACE15C(uint64_t a1)
{
  if (a1 <= 5)
  {
    if (a1 == 2)
    {
      return 0;
    }

    if (a1 == 4)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 6:
        return 2;
      case 65530:
        return 3;
      case 65534:
        return 4;
    }
  }

  return 5;
}

unint64_t sub_225ACE1C4()
{
  result = qword_27D73CF88;
  if (!qword_27D73CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CF88);
  }

  return result;
}

CoreIDVShared::ISO18013SessionData::Status_optional __swiftcall ISO18013SessionData.Status.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue == 20)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 11)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (rawValue == 10)
  {
    v3 = 0;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t sub_225ACE27C()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](qword_225CE3E70[v1]);
  return sub_225CCFC24();
}

uint64_t sub_225ACE304()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](qword_225CE3E70[v1]);
  return sub_225CCFC24();
}

uint64_t ISO18013SessionData.data.getter()
{
  v1 = *v0;
  sub_2259CB6FC(*v0, *(v0 + 8));
  return v1;
}

uint64_t ISO18013SessionData.init(data:status:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t sub_225ACE470()
{
  if (*v0)
  {
    return 0x737574617473;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_225ACE4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_225CCF934() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_225CCF934();

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

uint64_t sub_225ACE578(uint64_t a1)
{
  v2 = sub_225ACE7A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225ACE5B4(uint64_t a1)
{
  v2 = sub_225ACE7A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013SessionData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CF90);
  v12 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v15 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2259CB6FC(v8, v9);
  sub_225ACE7A8();
  sub_225CCFCE4();
  v13 = v8;
  v14 = v9;
  v16 = 0;
  sub_2259D9454();
  sub_225CCF774();
  sub_2259B97A8(v13, v14);
  if (!v2)
  {
    LOBYTE(v13) = v15;
    v16 = 1;
    sub_225ACE7FC();
    sub_225CCF774();
  }

  return (*(v12 + 8))(v7, v4);
}

unint64_t sub_225ACE7A8()
{
  result = qword_27D73CF98;
  if (!qword_27D73CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CF98);
  }

  return result;
}

unint64_t sub_225ACE7FC()
{
  result = qword_27D73CFA0;
  if (!qword_27D73CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CFA0);
  }

  return result;
}

uint64_t ISO18013SessionData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CFA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ACE7A8();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v15 = 0;
  sub_2259D94A8();
  sub_225CCF674();
  v11 = v14[0];
  v10 = v14[1];
  v15 = 1;
  sub_225ACEA48();
  sub_225CCF674();
  (*(v6 + 8))(v9, v5);
  v12 = v14[0];
  *a2 = v11;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  sub_2259CB6FC(v11, v10);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2259B97A8(v11, v10);
}

unint64_t sub_225ACEA48()
{
  result = qword_27D73CFB0;
  if (!qword_27D73CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CFB0);
  }

  return result;
}

unint64_t sub_225ACEAA0()
{
  result = qword_27D73CFB8;
  if (!qword_27D73CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CFB8);
  }

  return result;
}

uint64_t sub_225ACEB24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_225ACEB78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_225ACEBF0()
{
  result = qword_27D73CFC0;
  if (!qword_27D73CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CFC0);
  }

  return result;
}

unint64_t sub_225ACEC48()
{
  result = qword_27D73CFC8;
  if (!qword_27D73CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CFC8);
  }

  return result;
}

unint64_t sub_225ACECA0()
{
  result = qword_27D73CFD0;
  if (!qword_27D73CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CFD0);
  }

  return result;
}

unint64_t sub_225ACECF4()
{
  result = qword_27D73CFD8;
  if (!qword_27D73CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CFD8);
  }

  return result;
}

uint64_t sub_225ACED54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ISO18013SessionEstablishment.data.getter()
{
  v1 = v0 + *(type metadata accessor for ISO18013SessionEstablishment() + 20);
  v2 = *v1;
  sub_2259CB710(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for ISO18013SessionEstablishment()
{
  result = qword_27D73D018;
  if (!qword_27D73D018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_225ACEE54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1635017060;
  }

  else
  {
    v3 = 0x4B72656461655265;
  }

  if (v2)
  {
    v4 = 0xEA00000000007965;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1635017060;
  }

  else
  {
    v5 = 0x4B72656461655265;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xEA00000000007965;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225ACEEF8()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225ACEF78()
{
  sub_225CCE5B4();
}

uint64_t sub_225ACEFE4()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225ACF060@<X0>(char *a1@<X8>)
{
  v2 = sub_225CCF5D4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_225ACF0C0(uint64_t *a1@<X8>)
{
  v2 = 1635017060;
  if (!*v1)
  {
    v2 = 0x4B72656461655265;
  }

  v3 = 0xEA00000000007965;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_225ACF0FC()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 0x4B72656461655265;
  }
}

uint64_t sub_225ACF134@<X0>(char *a1@<X8>)
{
  v2 = sub_225CCF5D4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_225ACF198(uint64_t a1)
{
  v2 = sub_225ACF5AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225ACF1D4(uint64_t a1)
{
  v2 = sub_225ACF5AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013SessionEstablishment.init(readerKey:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_225ACF25C(a1, a4);
  result = type metadata accessor for ISO18013SessionEstablishment();
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t sub_225ACF25C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CFE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ISO18013SessionEstablishment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CFE0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CFE8);
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v20 - v10;
  v12 = type metadata accessor for ISO18013SessionEstablishment();
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ACF5AC();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v15;
  v17 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CFF8);
  LOBYTE(v24) = 0;
  sub_225ACF900(&qword_27D73D000);
  v18 = v23;
  sub_225CCF674();
  sub_225ACF25C(v7, v16);
  v25 = 1;
  sub_2259D94A8();
  sub_225CCF6E4();
  (*(v17 + 8))(v11, v18);
  *(v16 + *(v12 + 20)) = v24;
  sub_225ACF668(v16, v21);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_225ACF6CC(v16);
}

unint64_t sub_225ACF5AC()
{
  result = qword_27D73CFF0;
  if (!qword_27D73CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CFF0);
  }

  return result;
}

uint64_t sub_225ACF600(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_225ACF668(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013SessionEstablishment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_225ACF6CC(uint64_t a1)
{
  v2 = type metadata accessor for ISO18013SessionEstablishment();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ISO18013SessionEstablishment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D008);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ACF5AC();
  sub_225CCFCE4();
  LOBYTE(v14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CFF8);
  sub_225ACF900(&qword_27D73D010);
  sub_225CCF774();
  if (!v2)
  {
    v10 = (v3 + *(type metadata accessor for ISO18013SessionEstablishment() + 20));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 1;
    sub_2259CB710(v14, v11);
    sub_2259D9454();
    sub_225CCF7E4();
    sub_2259BEF00(v14, v15);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_225ACF900(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73CFF8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_225ACF9A8()
{
  sub_225ACFA1C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_225ACFA1C()
{
  if (!qword_27D73D028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73CFF8);
    v0 = sub_225CCEFC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D73D028);
    }
  }
}

unint64_t sub_225ACFA94()
{
  result = qword_27D73D030;
  if (!qword_27D73D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D030);
  }

  return result;
}

unint64_t sub_225ACFAEC()
{
  result = qword_27D73D038;
  if (!qword_27D73D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D038);
  }

  return result;
}

unint64_t sub_225ACFB44()
{
  result = qword_27D73D040;
  if (!qword_27D73D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D040);
  }

  return result;
}

double ISO18013DCAPISessionTranscript.init(encryptionInfoString:origin:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  ISO18013DCAPIHandover.init(encryptionInfoString:origin:)(a1, a2, a3, a4, &v8);
  if (!v5)
  {
    result = *&v8;
    *a5 = v8;
  }

  return result;
}

uint64_t ISO18013SessionTranscript.init(from:)@<X0>(void *a1@<X0>, unint64_t a2@<X8>)
{
  v133 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v131 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v134 = &v124 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v130 = &v124 - v11;
  v132 = type metadata accessor for ISO18013SessionTranscript(0);
  v13 = MEMORY[0x28223BE20](v132, v12);
  v15 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v124 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v124 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v124 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = v135;
  sub_225CCFC84();
  if (v27)
  {
LABEL_59:
    v63 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v63);
  }

  v126 = v19;
  v127 = v23;
  v125 = v15;
  v128 = v26;
  v129 = a1;
  v135 = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Decoder.presentmentType.getter(v142);
  v28 = LOBYTE(v142[0]);
  __swift_project_boxed_opaque_existential_1(v143, v143[3]);
  if (v28)
  {
    if (v28 == 1)
    {
      sub_225AD4660();
      v29 = v135;
      sub_225CCF9B4();
      v30 = v29;
      v31 = v133;
      v32 = v134;
      if (!v29)
      {
        v33 = v137;
        v34 = v126;
        *v126 = v136;
        v34[1] = v33;
        v35 = v139;
        v34[2] = v138;
        v34[3] = v35;
LABEL_20:
        swift_storeEnumTagMultiPayload();
        v62 = v34;
        v61 = v128;
        sub_225AD480C(v62, v128, type metadata accessor for ISO18013SessionTranscript);
        goto LABEL_21;
      }
    }

    else
    {
      sub_225AD2DE4();
      v39 = v135;
      sub_225CCF9B4();
      v30 = v39;
      v31 = v133;
      v32 = v134;
      if (!v39)
      {
        v34 = v125;
        *v125 = v136;
        goto LABEL_20;
      }
    }

    v38 = v30;
    goto LABEL_10;
  }

  type metadata accessor for ISO18013PhysicalSessionTranscript(0);
  sub_225AD4874(&qword_27D73D058, type metadata accessor for ISO18013PhysicalSessionTranscript);
  v36 = v127;
  v37 = v135;
  sub_225CCF9B4();
  if (v37)
  {
    v38 = v37;
    v32 = v134;
LABEL_10:
    __swift_project_boxed_opaque_existential_1(v129, v129[3]);
    Decoder.presentmentType.getter(&v144);
    v40 = v144;
    v134 = 0x8000000225D1B9F0;
    v41 = v38;
    v133 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v135 = swift_allocError();
    v43 = v42;
    v44 = v131;
    if (v40)
    {
      if (v40 == 1)
      {
        v132 = 0x8000000225D1BA20;
        swift_getErrorValue();
        v45 = v141;
        v46 = v38;
        sub_225B21FAC(v45, &v136);

        v47 = *(&v136 + 1);
        if (*(&v136 + 1))
        {
          v48 = *(&v137 + 1);
          v130 = v137;
          v131 = v136;
          v50 = *(&v138 + 1);
          v49 = v138;
        }

        else
        {
          *&v136 = v38;
          v64 = v38;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
          sub_2259E4540();
          if (swift_dynamicCast())
          {
            v65 = v142[0];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_225CD30F0;
            *(inited + 32) = 20;
            v67 = [v65 code];
            v68 = MEMORY[0x277D83BF8];
            *(inited + 64) = MEMORY[0x277D83B88];
            *(inited + 72) = v68;
            *(inited + 40) = v67;
            v49 = sub_225B2C374(inited);
            swift_setDeallocating();
            sub_2259CB640(inited + 32, &qword_27D73B060);

            v69 = v38;
            v48 = 0;
            v130 = 0;
            v47 = MEMORY[0x277D84F90];
            v131 = 455;
            v50 = v38;
          }

          else
          {
            *&v136 = v38;
            v82 = v38;
            v83 = sub_225CCE954();
            v84 = swift_dynamicCast();
            v85 = *(v83 - 8);
            (*(v85 + 56))(v32, v84 ^ 1u, 1, v83);
            LODWORD(v85) = (*(v85 + 48))(v32, 1, v83);
            sub_2259CB640(v32, &unk_27D73B050);
            if (v85)
            {
              v86 = 455;
            }

            else
            {
              v86 = 23;
            }

            v131 = v86;
            v47 = MEMORY[0x277D84F90];
            v49 = sub_225B2C374(MEMORY[0x277D84F90]);
            v87 = v38;
            v130 = 0xD000000000000029;
            v50 = v38;
            v48 = v132;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v136 = v49;
        sub_225B2C4A0(v133, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v136);

        v89 = v136;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_225B29AA0(0, *(v47 + 2) + 1, 1, v47);
        }

        v91 = *(v47 + 2);
        v90 = *(v47 + 3);
        if (v91 >= v90 >> 1)
        {
          v47 = sub_225B29AA0((v90 > 1), v91 + 1, 1, v47);
        }

        *(v47 + 2) = v91 + 1;
        v92 = &v47[56 * v91];
        v93 = v132;
        *(v92 + 4) = 0xD000000000000029;
        *(v92 + 5) = v93;
        v94 = v134;
        *(v92 + 6) = 0xD00000000000002DLL;
        *(v92 + 7) = v94;
        *(v92 + 8) = 0x6F72662874696E69;
        *(v92 + 9) = 0xEB00000000293A6DLL;
        v95 = 44;
      }

      else
      {
        v132 = 0x8000000225D1B9B0;
        swift_getErrorValue();
        v57 = v142[2];
        v58 = v38;
        sub_225B21FAC(v57, &v136);

        v47 = *(&v136 + 1);
        if (*(&v136 + 1))
        {
          v48 = *(&v137 + 1);
          v130 = v137;
          v131 = v136;
          v50 = *(&v138 + 1);
          v59 = v138;
        }

        else
        {
          *&v136 = v38;
          v76 = v38;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
          sub_2259E4540();
          if (swift_dynamicCast())
          {
            v77 = v142[0];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
            v78 = swift_initStackObject();
            *(v78 + 16) = xmmword_225CD30F0;
            *(v78 + 32) = 20;
            v79 = [v77 code];
            v80 = MEMORY[0x277D83BF8];
            *(v78 + 64) = MEMORY[0x277D83B88];
            *(v78 + 72) = v80;
            *(v78 + 40) = v79;
            v59 = sub_225B2C374(v78);
            swift_setDeallocating();
            sub_2259CB640(v78 + 32, &qword_27D73B060);

            v81 = v38;
            v130 = 0;
            v48 = 0;
            v47 = MEMORY[0x277D84F90];
            v131 = 462;
          }

          else
          {
            *&v136 = v38;
            v111 = v38;
            v112 = sub_225CCE954();
            v113 = swift_dynamicCast();
            v114 = *(v112 - 8);
            (*(v114 + 56))(v44, v113 ^ 1u, 1, v112);
            LODWORD(v114) = (*(v114 + 48))(v44, 1, v112);
            sub_2259CB640(v44, &unk_27D73B050);
            if (v114)
            {
              v115 = 462;
            }

            else
            {
              v115 = 23;
            }

            v131 = v115;
            v47 = MEMORY[0x277D84F90];
            v59 = sub_225B2C374(MEMORY[0x277D84F90]);
            v116 = v38;
            v130 = 0xD00000000000003ALL;
            v48 = v132;
          }

          v50 = v38;
        }

        v117 = swift_isUniquelyReferenced_nonNull_native();
        *&v136 = v59;
        sub_225B2C4A0(v133, sub_225B2AC40, 0, v117, &v136);

        v89 = v136;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_225B29AA0(0, *(v47 + 2) + 1, 1, v47);
        }

        v119 = *(v47 + 2);
        v118 = *(v47 + 3);
        if (v119 >= v118 >> 1)
        {
          v47 = sub_225B29AA0((v118 > 1), v119 + 1, 1, v47);
        }

        *(v47 + 2) = v119 + 1;
        v92 = &v47[56 * v119];
        v120 = v132;
        *(v92 + 4) = 0xD00000000000003ALL;
        *(v92 + 5) = v120;
        v121 = v134;
        *(v92 + 6) = 0xD00000000000002DLL;
        *(v92 + 7) = v121;
        *(v92 + 8) = 0x6F72662874696E69;
        *(v92 + 9) = 0xEB00000000293A6DLL;
        v95 = 50;
      }

      *(v92 + 10) = v95;
      v122 = v130;
      *v43 = v131;
      *(v43 + 8) = v47;
      *(v43 + 16) = v122;
      *(v43 + 24) = v48;
      *(v43 + 32) = v89;
      *(v43 + 40) = v50;
    }

    else
    {
      v51 = 0x8000000225D1BA50;
      swift_getErrorValue();
      v52 = v140;
      v53 = v38;
      sub_225B21FAC(v52, &v136);

      v54 = *(&v136 + 1);
      v132 = 0x8000000225D1BA50;
      if (*(&v136 + 1))
      {
        v51 = *(&v137 + 1);
        v130 = v137;
        v131 = v136;
        v56 = *(&v138 + 1);
        v55 = v138;
      }

      else
      {
        *&v136 = v38;
        v70 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v71 = v142[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          v72 = swift_initStackObject();
          *(v72 + 16) = xmmword_225CD30F0;
          *(v72 + 32) = 20;
          v73 = [v71 code];
          v74 = MEMORY[0x277D83BF8];
          *(v72 + 64) = MEMORY[0x277D83B88];
          *(v72 + 72) = v74;
          *(v72 + 40) = v73;
          v55 = sub_225B2C374(v72);
          swift_setDeallocating();
          sub_2259CB640(v72 + 32, &qword_27D73B060);

          v75 = v38;
          v51 = 0;
          v130 = 0;
          v54 = MEMORY[0x277D84F90];
          v131 = 459;
        }

        else
        {
          *&v136 = v38;
          v96 = v38;
          v97 = sub_225CCE954();
          v98 = v130;
          v99 = swift_dynamicCast();
          v100 = *(v97 - 8);
          (*(v100 + 56))(v98, v99 ^ 1u, 1, v97);
          LODWORD(v100) = (*(v100 + 48))(v98, 1, v97);
          sub_2259CB640(v98, &unk_27D73B050);
          if (v100)
          {
            v101 = 459;
          }

          else
          {
            v101 = 23;
          }

          v131 = v101;
          v54 = MEMORY[0x277D84F90];
          v55 = sub_225B2C374(MEMORY[0x277D84F90]);
          v102 = v38;
          v130 = 0xD000000000000038;
        }

        v56 = v38;
      }

      v103 = swift_isUniquelyReferenced_nonNull_native();
      *&v136 = v55;
      sub_225B2C4A0(v133, sub_225B2AC40, 0, v103, &v136);

      v104 = v136;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_225B29AA0(0, *(v54 + 2) + 1, 1, v54);
      }

      v106 = *(v54 + 2);
      v105 = *(v54 + 3);
      if (v106 >= v105 >> 1)
      {
        v54 = sub_225B29AA0((v105 > 1), v106 + 1, 1, v54);
      }

      *(v54 + 2) = v106 + 1;
      v107 = &v54[56 * v106];
      v108 = v132;
      *(v107 + 4) = 0xD000000000000038;
      *(v107 + 5) = v108;
      v109 = v134;
      *(v107 + 6) = 0xD00000000000002DLL;
      *(v107 + 7) = v109;
      *(v107 + 8) = 0x6F72662874696E69;
      *(v107 + 9) = 0xEB00000000293A6DLL;
      *(v107 + 10) = 38;
      v110 = v130;
      *v43 = v131;
      *(v43 + 8) = v54;
      *(v43 + 16) = v110;
      *(v43 + 24) = v51;
      *(v43 + 32) = v104;
      *(v43 + 40) = v56;
    }

    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0(v143);
    a1 = v129;
    goto LABEL_59;
  }

  swift_storeEnumTagMultiPayload();
  v60 = v36;
  v61 = v128;
  sub_225AD480C(v60, v128, type metadata accessor for ISO18013SessionTranscript);
  v31 = v133;
LABEL_21:
  __swift_destroy_boxed_opaque_existential_0(v143);
  sub_225AD480C(v61, v31, type metadata accessor for ISO18013SessionTranscript);
  v63 = v129;
  return __swift_destroy_boxed_opaque_existential_0(v63);
}

uint64_t ISO18013SessionTranscript.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v96 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v101 = &v96 - v7;
  v100 = type metadata accessor for ISO18013PhysicalSessionTranscript(0);
  MEMORY[0x28223BE20](v100, v8);
  v99 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ISO18013SessionTranscript(0);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v98 = (&v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = (&v96 - v16);
  MEMORY[0x28223BE20](v15, v18);
  v97 = &v96 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D060);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v96 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCD4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Encoder.presentmentType.getter(&v112);
  v25 = v112;
  v26 = *(v21 + 56);
  sub_225AD4960(v102, v24, type metadata accessor for ISO18013SessionTranscript);
  v24[v26] = v25;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v34 = v99;
    v35 = v97;
    sub_225AD4960(v24, v97, type metadata accessor for ISO18013SessionTranscript);
    if (!v25)
    {
      sub_225AD480C(v35, v34, type metadata accessor for ISO18013PhysicalSessionTranscript);
      __swift_mutable_project_boxed_opaque_existential_0(v110, v111);
      sub_225AD4874(&qword_27D73D078, type metadata accessor for ISO18013PhysicalSessionTranscript);
      v65 = v103;
      sub_225CCFA34();
      v33 = v65;
      if (v65)
      {
        sub_225AD47AC(v34, type metadata accessor for ISO18013PhysicalSessionTranscript);
        goto LABEL_36;
      }

      sub_225AD47AC(v34, type metadata accessor for ISO18013PhysicalSessionTranscript);
LABEL_55:
      sub_225AD47AC(v24, type metadata accessor for ISO18013SessionTranscript);
      return __swift_destroy_boxed_opaque_existential_0(v110);
    }

    v102 = v24;
    sub_225AD47AC(v35, type metadata accessor for ISO18013PhysicalSessionTranscript);
LABEL_13:
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    Encoder.presentmentType.getter(v104);
    v41 = LOBYTE(v104[0]);
    v42 = MEMORY[0x277D84F90];
    v43 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v100 = swift_allocError();
    v45 = v44;
    v46 = sub_225CCE954();
    v47 = *(v46 - 8);
    v48 = v101;
    (*(v47 + 56))(v101, 1, 1, v46);
    v49 = (*(v47 + 48))(v48, 1, v46);
    sub_2259CB640(v48, &unk_27D73B050);
    v50 = sub_225B2C374(v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v41)
    {
      if (v41 == 1)
      {
        v52 = 0x8000000225D1BAE0;
        if (v49)
        {
          v53 = 455;
        }

        else
        {
          v53 = 23;
        }

        *&v105 = v50;
        sub_225B2C4A0(v43, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v105);

        v54 = v105;
        v55 = sub_225B29AA0(0, 1, 1, MEMORY[0x277D84F90]);
        v57 = *(v55 + 2);
        v56 = *(v55 + 3);
        if (v57 >= v56 >> 1)
        {
          v55 = sub_225B29AA0((v56 > 1), v57 + 1, 1, v55);
        }

        *(v55 + 2) = v57 + 1;
        v58 = &v55[56 * v57];
        v59 = 0xD000000000000034;
        *(v58 + 4) = 0xD000000000000034;
        *(v58 + 5) = 0x8000000225D1BAE0;
        *(v58 + 6) = 0xD00000000000002DLL;
        *(v58 + 7) = 0x8000000225D1B9F0;
        *(v58 + 8) = 0x742865646F636E65;
        *(v58 + 9) = 0xEB00000000293A6FLL;
        v60 = 77;
      }

      else
      {
        v52 = 0x8000000225D1BA90;
        if (v49)
        {
          v53 = 462;
        }

        else
        {
          v53 = 23;
        }

        *&v105 = v50;
        sub_225B2C4A0(v43, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v105);

        v54 = v105;
        v55 = sub_225B29AA0(0, 1, 1, MEMORY[0x277D84F90]);
        v64 = *(v55 + 2);
        v63 = *(v55 + 3);
        if (v64 >= v63 >> 1)
        {
          v55 = sub_225B29AA0((v63 > 1), v64 + 1, 1, v55);
        }

        *(v55 + 2) = v64 + 1;
        v58 = &v55[56 * v64];
        v59 = 0xD000000000000045;
        *(v58 + 4) = 0xD000000000000045;
        *(v58 + 5) = 0x8000000225D1BA90;
        *(v58 + 6) = 0xD00000000000002DLL;
        *(v58 + 7) = 0x8000000225D1B9F0;
        *(v58 + 8) = 0x742865646F636E65;
        *(v58 + 9) = 0xEB00000000293A6FLL;
        v60 = 82;
      }
    }

    else
    {
      v52 = 0x8000000225D1BB20;
      if (v49)
      {
        v53 = 459;
      }

      else
      {
        v53 = 23;
      }

      *&v105 = v50;
      sub_225B2C4A0(v43, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v105);

      v54 = v105;
      v55 = sub_225B29AA0(0, 1, 1, MEMORY[0x277D84F90]);
      v62 = *(v55 + 2);
      v61 = *(v55 + 3);
      if (v62 >= v61 >> 1)
      {
        v55 = sub_225B29AA0((v61 > 1), v62 + 1, 1, v55);
      }

      *(v55 + 2) = v62 + 1;
      v58 = &v55[56 * v62];
      v59 = 0xD000000000000043;
      *(v58 + 4) = 0xD000000000000043;
      *(v58 + 5) = 0x8000000225D1BB20;
      *(v58 + 6) = 0xD00000000000002DLL;
      *(v58 + 7) = 0x8000000225D1B9F0;
      *(v58 + 8) = 0x742865646F636E65;
      *(v58 + 9) = 0xEB00000000293A6FLL;
      v60 = 72;
    }

    *(v58 + 10) = v60;
    *v45 = v53;
    *(v45 + 8) = v55;
    *(v45 + 16) = v59;
    *(v45 + 24) = v52;
    *(v45 + 32) = v54;
    *(v45 + 40) = 0;
    v40 = v100;
    swift_willThrow();
    sub_2259CB640(v102, &qword_27D73D060);
    v99 = 0;
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_225AD4960(v24, v17, type metadata accessor for ISO18013SessionTranscript);
    v28 = v17[1];
    v105 = *v17;
    v106 = v28;
    v29 = v17[3];
    v107 = v17[2];
    v108 = v29;
    if (v25 == 1)
    {
      v30 = v17[1];
      v104[0] = *v17;
      v104[1] = v30;
      v31 = v17[3];
      v104[2] = v17[2];
      v104[3] = v31;
      __swift_mutable_project_boxed_opaque_existential_0(v110, v111);
      sub_225AD4758();
      v32 = v103;
      sub_225CCFA34();
      v33 = v32;
      if (v32)
      {
        sub_225AD4728(&v105);
LABEL_36:
        sub_225AD47AC(v24, type metadata accessor for ISO18013SessionTranscript);
        v99 = 0;
        v40 = v33;
        goto LABEL_37;
      }

      sub_225AD4728(&v105);
      goto LABEL_55;
    }

    v102 = v24;
    sub_225AD4728(&v105);
    goto LABEL_13;
  }

  v36 = v98;
  sub_225AD4960(v24, v98, type metadata accessor for ISO18013SessionTranscript);
  v38 = *v36;
  v37 = v36[1];
  if (v25 != 2)
  {
    v102 = v24;
    sub_2259BEF00(v38, v37);
    goto LABEL_13;
  }

  *&v105 = v38;
  *(&v105 + 1) = v37;
  __swift_mutable_project_boxed_opaque_existential_0(v110, v111);
  sub_225AD46D4();
  v39 = v103;
  sub_225CCFA34();
  if (!v39)
  {
    sub_2259BEF00(v38, v37);
    goto LABEL_55;
  }

  sub_2259BEF00(v38, v37);
  sub_225AD47AC(v24, type metadata accessor for ISO18013SessionTranscript);
  v99 = 0;
  v40 = v39;
LABEL_37:
  v66 = v40;
  v67 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v103 = swift_allocError();
  v69 = v68;
  swift_getErrorValue();
  v70 = v109;
  v71 = v40;
  sub_225B21FAC(v70, &v105);

  v72 = *(&v105 + 1);
  if (*(&v105 + 1))
  {
    v101 = v106;
    v102 = v105;
    v100 = *(&v106 + 1);
    v74 = *(&v107 + 1);
    v73 = v107;
  }

  else
  {
    *&v105 = v40;
    v75 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v76 = *&v104[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v78 = [v76 code];
      v79 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v79;
      *(inited + 40) = v78;
      v73 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v80 = v40;
      v101 = 0;
      v102 = 0;
      v100 = 0;
      v72 = MEMORY[0x277D84F90];
    }

    else
    {
      *&v105 = v40;
      v81 = v40;
      v82 = sub_225CCE954();
      v83 = v96;
      v84 = swift_dynamicCast();
      v85 = *(v82 - 8);
      (*(v85 + 56))(v83, v84 ^ 1u, 1, v82);
      LODWORD(v85) = (*(v85 + 48))(v83, 1, v82);
      sub_2259CB640(v83, &unk_27D73B050);
      if (v85)
      {
        v86 = 0;
      }

      else
      {
        v86 = 23;
      }

      v102 = v86;
      v72 = MEMORY[0x277D84F90];
      v73 = sub_225B2C374(MEMORY[0x277D84F90]);
      v87 = v40;
      v100 = 0;
      v101 = 0;
    }

    v74 = v40;
  }

  v88 = swift_isUniquelyReferenced_nonNull_native();
  *&v105 = v73;
  sub_225B2C4A0(v67, sub_225B2AC40, 0, v88, &v105);

  v89 = v105;
  v90 = v40;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v72 = sub_225B29AA0(0, *(v72 + 2) + 1, 1, v72);
  }

  v92 = *(v72 + 2);
  v91 = *(v72 + 3);
  if (v92 >= v91 >> 1)
  {
    v72 = sub_225B29AA0((v91 > 1), v92 + 1, 1, v72);
  }

  *(v72 + 2) = v92 + 1;
  v93 = &v72[56 * v92];
  *(v93 + 4) = 0;
  *(v93 + 5) = 0;
  *(v93 + 6) = 0xD00000000000002DLL;
  *(v93 + 7) = 0x8000000225D1B9F0;
  *(v93 + 8) = 0x742865646F636E65;
  *(v93 + 9) = 0xEB00000000293A6FLL;
  *(v93 + 10) = 89;
  v94 = v101;
  *v69 = v102;
  *(v69 + 8) = v72;
  *(v69 + 16) = v94;
  *(v69 + 24) = v100;
  *(v69 + 32) = v89;
  *(v69 + 40) = v74;
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_0(v110);
}

uint64_t ISO18013PhysicalSessionTranscript.deviceEngagementBytes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 50);
  *a1 = *v1;
  *(a1 + 8) = v2;
  v7 = *(v1 + 16);
  *(a1 + 16) = v7;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 50) = v6;
  *(a1 + 48) = v5;
  sub_2259CB710(v2, v7);
}

uint64_t ISO18013PhysicalSessionTranscript.readerKeyBytes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ISO18013PhysicalSessionTranscript(0) + 20);

  return sub_225ACED54(v3, a1);
}

uint64_t ISO18013PhysicalSessionTranscript.handover.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ISO18013PhysicalSessionTranscript(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_225AD48BC(v4, v5, v6, v7);
}

__n128 ISO18013PhysicalSessionTranscript.init(deviceEngagementBytes:readerKeyBytes:handover:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 50);
  v9 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v9;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 50) = v8;
  *(a4 + 48) = v7;
  v10 = type metadata accessor for ISO18013PhysicalSessionTranscript(0);
  sub_2259D88EC(a2, a4 + *(v10 + 20), &qword_27D73CFE0);
  v11 = (a4 + *(v10 + 24));
  result = *a3;
  v13 = *(a3 + 16);
  *v11 = *a3;
  v11[1] = v13;
  return result;
}

uint64_t ISO18013PhysicalSessionTranscript.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CFE0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for ISO18013PhysicalSessionTranscript(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v39 = v9;
  v31 = a2;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v13 = sub_225CCF864();
  if ((v14 & 1) != 0 || v13 != 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D080);
    __swift_mutable_project_boxed_opaque_existential_0(v37, v38);
    sub_2259D8B24(&qword_27D73D088, &qword_27D73D080);
    sub_225CCF884();
    v22 = v35;
    v23 = v36;
    v24 = v33;
    *v12 = v32;
    *(v12 + 1) = v24;
    *(v12 + 2) = v34;
    v12[50] = v23;
    *(v12 + 24) = v22;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CFF8);
    __swift_mutable_project_boxed_opaque_existential_0(v37, v38);
    sub_2259D8B24(&qword_27D73D000, &qword_27D73CFF8);
    sub_225CCF884();
    (*(*(v25 - 8) + 56))(v8, 0, 1, v25);
    v26 = v39;
    sub_2259D88EC(v8, &v12[*(v39 + 20)], &qword_27D73CFE0);
    __swift_mutable_project_boxed_opaque_existential_0(v37, v38);
    sub_225AD490C();
    sub_225CCF854();
    v27 = *(v26 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D080);
    __swift_mutable_project_boxed_opaque_existential_0(v37, v38);
    sub_2259D8B24(&qword_27D73D088, &qword_27D73D080);
    sub_225CCF884();
    v15 = v35;
    v16 = v36;
    v17 = v33;
    *v12 = v32;
    *(v12 + 1) = v17;
    *(v12 + 2) = v34;
    v12[50] = v16;
    *(v12 + 24) = v15;
    v18 = v39;
    v19 = *(v39 + 20);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CFF8);
    (*(*(v20 - 8) + 56))(&v12[v19], 1, 1, v20);
    __swift_mutable_project_boxed_opaque_existential_0(v37, v38);
    sub_225AD490C();
    sub_225CCF884();
    v27 = *(v18 + 24);
  }

  v28 = &v12[v27];
  v29 = v33;
  *v28 = v32;
  *(v28 + 1) = v29;
  __swift_destroy_boxed_opaque_existential_0(v37);
  sub_225AD4960(v12, v31, type metadata accessor for ISO18013PhysicalSessionTranscript);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_225AD47AC(v12, type metadata accessor for ISO18013PhysicalSessionTranscript);
}

uint64_t ISO18013PhysicalSessionTranscript.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CFE0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v22 = &v21 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CFF8);
  v21 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCC4();
  v11 = v3[1];
  v12 = v3[4];
  v13 = v3[5];
  v14 = *(v3 + 24);
  v15 = *(v3 + 50);
  v24 = *v3;
  v25 = v11;
  v23 = *(v3 + 1);
  v26 = v23;
  v27 = v12;
  v28 = v13;
  v30 = v15;
  v29 = v14;
  __swift_mutable_project_boxed_opaque_existential_0(v31, v32);
  sub_2259CB710(v11, v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D080);
  sub_2259D8B24(&qword_27D73D098, &qword_27D73D080);
  sub_225CCF8C4();
  sub_2259BEF00(v25, v26);

  if (!v2)
  {
    v16 = type metadata accessor for ISO18013PhysicalSessionTranscript(0);
    v17 = v22;
    sub_225ACED54(v3 + *(v16 + 20), v22);
    if ((*(v21 + 48))(v17, 1, v33) == 1)
    {
      sub_2259CB640(v17, &qword_27D73CFE0);
    }

    else
    {
      sub_2259D88EC(v17, v10, &qword_27D73CFF8);
      __swift_mutable_project_boxed_opaque_existential_0(v31, v32);
      sub_2259D8B24(&qword_27D73D010, &qword_27D73CFF8);
      sub_225CCF8C4();
      sub_2259CB640(v10, &qword_27D73CFF8);
    }

    v18 = (v3 + *(v16 + 24));
    v19 = v18[1];
    if (v19 >> 60 == 15)
    {
      __swift_mutable_project_boxed_opaque_existential_0(v31, v32);
      sub_225CCF8D4();
    }

    else
    {
      v24 = *v18;
      v25 = v19;
      v26 = *(v18 + 1);
      __swift_mutable_project_boxed_opaque_existential_0(v31, v32);
      sub_225AD49C8();
      sub_225CCF8C4();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v31);
}

uint64_t ISO18013AppleSessionTranscript.handover.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_225AD4A1C(v7, &v6);
}

uint64_t ISO18013AppleSessionTranscript.init(nonce:merchantID:teamID:encryptionKeyHash:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
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

uint64_t ISO18013AppleHandover.init(nonce:merchantID:teamID:encryptionKeyHash:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
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

__n128 ISO18013AppleSessionTranscript.init(handover:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t ISO18013AppleSessionTranscript.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v40 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC74();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_0(v45, v46);
    if (sub_225CCF8A4())
    {
      __swift_mutable_project_boxed_opaque_existential_0(v45, v46);
      if (sub_225CCF8A4())
      {
        __swift_mutable_project_boxed_opaque_existential_0(v45, v46);
        sub_225AD4A54();
        sub_225CCF884();
        v40 = v44[0];
        v41 = v44[1];
        v42 = v44[2];
        v43 = v44[3];
        __swift_destroy_boxed_opaque_existential_0(v45);
        v9 = v41;
        *a2 = v40;
        a2[1] = v9;
        v10 = v43;
        a2[2] = v42;
        a2[3] = v10;
        return __swift_destroy_boxed_opaque_existential_0(a1);
      }

      v11 = 0x8000000225D1BBA0;
      v47 = 0x8000000225D1B9F0;
      v27 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v14 = v28;
      v29 = sub_225CCE954();
      v30 = *(v29 - 8);
      (*(v30 + 56))(v8, 1, 1, v29);
      LODWORD(v29) = (*(v30 + 48))(v8, 1, v29);
      sub_2259CB640(v8, &unk_27D73B050);
      if (v29)
      {
        v31 = 455;
      }

      else
      {
        v31 = 23;
      }

      v32 = MEMORY[0x277D84F90];
      v33 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v44[0] = v33;
      sub_225B2C4A0(v27, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v44);

      v21 = *&v44[0];
      v35 = sub_225B29AA0(0, 1, 1, v32);
      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_225B29AA0((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[56 * v37];
      *(v38 + 4) = 0xD00000000000002DLL;
      *(v38 + 5) = 0x8000000225D1BBA0;
      v39 = v47;
      *(v38 + 6) = 0xD00000000000002DLL;
      *(v38 + 7) = v39;
      *(v38 + 8) = 0x6F72662874696E69;
      *(v38 + 9) = 0xEB00000000293A6DLL;
      *(v38 + 10) = 170;
      *v14 = v31;
      *(v14 + 8) = v35;
      *(v14 + 16) = 0xD00000000000002DLL;
    }

    else
    {
      v11 = 0x8000000225D1BB70;
      v47 = 0x8000000225D1B9F0;
      v12 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v14 = v13;
      v15 = sub_225CCE954();
      v16 = *(v15 - 8);
      (*(v16 + 56))(v8, 1, 1, v15);
      LODWORD(v15) = (*(v16 + 48))(v8, 1, v15);
      sub_2259CB640(v8, &unk_27D73B050);
      if (v15)
      {
        v17 = 455;
      }

      else
      {
        v17 = 23;
      }

      v18 = MEMORY[0x277D84F90];
      v19 = sub_225B2C374(MEMORY[0x277D84F90]);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      *&v44[0] = v19;
      sub_225B2C4A0(v12, sub_225B2AC40, 0, v20, v44);

      v21 = *&v44[0];
      v22 = sub_225B29AA0(0, 1, 1, v18);
      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_225B29AA0((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[56 * v24];
      *(v25 + 4) = 0xD00000000000002CLL;
      *(v25 + 5) = 0x8000000225D1BB70;
      *(v25 + 6) = 0xD00000000000002DLL;
      *(v25 + 7) = v47;
      *(v25 + 8) = 0x6F72662874696E69;
      *(v25 + 9) = 0xEB00000000293A6DLL;
      *(v25 + 10) = 167;
      *v14 = v17;
      *(v14 + 8) = v22;
      *(v14 + 16) = 0xD00000000000002CLL;
    }

    *(v14 + 24) = v11;
    *(v14 + 32) = v21;
    *(v14 + 40) = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v45);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ISO18013AppleSessionTranscript.encode(to:)(void *a1)
{
  v3 = v1[1];
  v13 = *v1;
  v14 = v3;
  v4 = v1[3];
  v15 = v1[2];
  v16 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCC4();
  __swift_mutable_project_boxed_opaque_existential_0(v11, v12);
  sub_225CCF8D4();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_0(v11, v12);
    sub_225CCF8D4();
    v7 = v13;
    v8 = v14;
    v9 = v15;
    v10 = v16;
    __swift_mutable_project_boxed_opaque_existential_0(v11, v12);
    sub_225AD4A1C(&v13, v6);
    sub_225AD4AA8();
    sub_225CCF8C4();
    v6[0] = v7;
    v6[1] = v8;
    v6[2] = v9;
    v6[3] = v10;
    sub_225AD4AFC(v6);
  }

  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t ISO18013DCAPISessionTranscript.handover.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2259CB710(v2, v3);
}

uint64_t ISO18013DCAPIHandover.init(encryptionInfoString:origin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v36 = a5;
  v9 = sub_225CCE164();
  v33 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_225CCDBA4();
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD424();
  swift_allocObject();
  v17 = sub_225CCD414();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD08);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_225CD4890;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(v18 + 48) = a3;
  *(v18 + 56) = a4;
  v38 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_225AD4B2C();
  v19 = v37;
  v20 = sub_225CCD3F4();
  v22 = v21;

  if (v19)
  {
  }

  sub_225AD4874(&qword_27D73AE10, MEMORY[0x277CC5540]);
  v37 = v17;
  sub_225CCDB94();
  sub_2259CB710(v20, v22);
  sub_2259DB138(v20, v22);
  sub_2259BEF00(v20, v22);
  sub_225CCDB84();
  (*(v33 + 8))(v12, v9);
  sub_225AD4874(&qword_27D73AE58, MEMORY[0x277CC5290]);
  v24 = v35;
  v25 = sub_225CCE154();
  v27 = sub_2259D732C(v25, v26);

  v28 = sub_2259D8490(v27);
  v30 = v29;

  sub_2259BEF00(v20, v22);
  result = (*(v34 + 8))(v16, v24);
  v31 = v36;
  *v36 = v28;
  v31[1] = v30;
  return result;
}

__n128 ISO18013DCAPISessionTranscript.init(handover:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_225AD2DE4()
{
  result = qword_27D73D048;
  if (!qword_27D73D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D048);
  }

  return result;
}

uint64_t ISO18013DCAPISessionTranscript.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v40[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC74();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_0(v41, v42);
    if (sub_225CCF8A4())
    {
      __swift_mutable_project_boxed_opaque_existential_0(v41, v42);
      if (sub_225CCF8A4())
      {
        __swift_mutable_project_boxed_opaque_existential_0(v41, v42);
        sub_225AD4BA8();
        sub_225CCF884();
        v9 = v40[0];
        v10 = v40[1];
        __swift_destroy_boxed_opaque_existential_0(v41);
        *a2 = v9;
        a2[1] = v10;
        return __swift_destroy_boxed_opaque_existential_0(a1);
      }

      v11 = 0x8000000225D1BC10;
      v43 = 0x8000000225D1B9F0;
      v27 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v14 = v28;
      v29 = sub_225CCE954();
      v30 = *(v29 - 8);
      (*(v30 + 56))(v8, 1, 1, v29);
      LODWORD(v29) = (*(v30 + 48))(v8, 1, v29);
      sub_2259CB640(v8, &unk_27D73B050);
      if (v29)
      {
        v31 = 462;
      }

      else
      {
        v31 = 23;
      }

      v32 = MEMORY[0x277D84F90];
      v33 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40[0] = v33;
      sub_225B2C4A0(v27, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v40);

      v21 = v40[0];
      v35 = sub_225B29AA0(0, 1, 1, v32);
      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_225B29AA0((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[56 * v37];
      *(v38 + 4) = 0xD000000000000040;
      *(v38 + 5) = 0x8000000225D1BC10;
      *(v38 + 6) = 0xD00000000000002DLL;
      *(v38 + 7) = v43;
      *(v38 + 8) = 0x6F72662874696E69;
      *(v38 + 9) = 0xEB00000000293A6DLL;
      *(v38 + 10) = 216;
      *v14 = v31;
      *(v14 + 8) = v35;
      *(v14 + 16) = 0xD000000000000040;
    }

    else
    {
      v11 = 0x8000000225D1BBD0;
      v43 = 0x8000000225D1B9F0;
      v12 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v14 = v13;
      v15 = sub_225CCE954();
      v16 = *(v15 - 8);
      (*(v16 + 56))(v8, 1, 1, v15);
      LODWORD(v15) = (*(v16 + 48))(v8, 1, v15);
      sub_2259CB640(v8, &unk_27D73B050);
      if (v15)
      {
        v17 = 462;
      }

      else
      {
        v17 = 23;
      }

      v18 = MEMORY[0x277D84F90];
      v19 = sub_225B2C374(MEMORY[0x277D84F90]);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v40[0] = v19;
      sub_225B2C4A0(v12, sub_225B2AC40, 0, v20, v40);

      v21 = v40[0];
      v22 = sub_225B29AA0(0, 1, 1, v18);
      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_225B29AA0((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[56 * v24];
      *(v25 + 4) = 0xD00000000000003FLL;
      *(v25 + 5) = 0x8000000225D1BBD0;
      *(v25 + 6) = 0xD00000000000002DLL;
      *(v25 + 7) = v43;
      *(v25 + 8) = 0x6F72662874696E69;
      *(v25 + 9) = 0xEB00000000293A6DLL;
      *(v25 + 10) = 213;
      *v14 = v17;
      *(v14 + 8) = v22;
      *(v14 + 16) = 0xD00000000000003FLL;
    }

    *(v14 + 24) = v11;
    *(v14 + 32) = v21;
    *(v14 + 40) = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ISO18013DCAPISessionTranscript.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCC4();
  __swift_mutable_project_boxed_opaque_existential_0(v6, v7);
  sub_225CCF8D4();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_0(v6, v7);
    sub_225CCF8D4();
    __swift_mutable_project_boxed_opaque_existential_0(v6, v7);
    sub_2259CB710(v3, v4);
    sub_225AD4BFC();
    sub_225CCF8C4();
    sub_2259BEF00(v3, v4);
  }

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t ISO18013NFCHandover.handoverSelectMessage.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t ISO18013NFCHandover.handoverRequestMessage.getter()
{
  v1 = *(v0 + 16);
  sub_2259CB6FC(v1, *(v0 + 24));
  return v1;
}

uint64_t ISO18013NFCHandover.init(handoverSelectMessage:handoverRequestMessage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ISO18013NFCHandover.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_mutable_project_boxed_opaque_existential_0(v8, v9);
  sub_2259D94A8();
  sub_225CCF884();
  __swift_mutable_project_boxed_opaque_existential_0(v8, v9);
  sub_225CCF854();
  __swift_destroy_boxed_opaque_existential_0(v8);
  *a2 = v6;
  a2[1] = v7;
  a2[2] = v6;
  a2[3] = v7;
  sub_2259CB710(v6, v7);
  sub_2259CB6FC(v6, v7);
  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_2259BEF00(v6, v7);
  return sub_2259B97A8(v6, v7);
}

uint64_t ISO18013NFCHandover.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2259CB710(v3, v4);
  sub_225CCFCC4();
  __swift_mutable_project_boxed_opaque_existential_0(v7, v8);
  sub_2259D9454();
  sub_225CCF8C4();
  sub_2259BEF00(v3, v4);
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_0(v7, v8);
    if (v5 >> 60 == 15)
    {
      sub_225CCF8D4();
    }

    else
    {
      sub_225CCF8C4();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t ISO18013AppleHandover.nonce.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t ISO18013AppleHandover.merchantID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ISO18013AppleHandover.teamID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ISO18013AppleHandover.encryptionKeyHash.getter()
{
  v1 = *(v0 + 48);
  sub_2259CB710(v1, *(v0 + 56));
  return v1;
}

uint64_t ISO18013AppleHandover.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v42 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC74();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_0(v59, v60);
    v9 = sub_225CCF874();
    v11 = v9 == 0xD00000000000001CLL && 0x8000000225D1BC60 == v10;
    if (v11 || (v12 = v9, v13 = v10, (sub_225CCF934() & 1) != 0))
    {

      __swift_mutable_project_boxed_opaque_existential_0(v59, v60);
      sub_2259D94A8();
      sub_225CCF884();
      v15 = v49;
      v14 = v50;
      __swift_mutable_project_boxed_opaque_existential_0(v59, v60);
      v43 = sub_225CCF874();
      v62 = v33;
      __swift_mutable_project_boxed_opaque_existential_0(v59, v60);
      v42[0] = sub_225CCF874();
      v44 = v34;
      v42[1] = v61;
      __swift_mutable_project_boxed_opaque_existential_0(v59, v60);
      sub_225CCF884();
      v35 = v57;
      v36 = v58;
      __swift_destroy_boxed_opaque_existential_0(v59);
      *&v45 = v15;
      *(&v45 + 1) = v14;
      v37 = v62;
      *&v46 = v43;
      *(&v46 + 1) = v62;
      v38 = v44;
      *&v47 = v42[0];
      *(&v47 + 1) = v44;
      *&v48 = v35;
      *(&v48 + 1) = v36;
      v39 = v46;
      *a2 = v45;
      a2[1] = v39;
      v40 = v48;
      a2[2] = v47;
      a2[3] = v40;
      sub_225AD4A1C(&v45, &v49);
      __swift_destroy_boxed_opaque_existential_0(a1);
      v49 = v15;
      v50 = v14;
      v51 = v43;
      v52 = v37;
      v53 = v42[0];
      v54 = v38;
      v55 = v35;
      v56 = v36;
      return sub_225AD4AFC(&v49);
    }

    v49 = 0;
    v50 = 0xE000000000000000;
    sub_225CCF204();

    v49 = 0xD00000000000001ELL;
    v50 = 0x8000000225D1BC80;
    MEMORY[0x22AA6CE70](v12, v13);

    v16 = v50;
    v62 = v49;
    v44 = 0x8000000225D1B9F0;
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v19 = v18;
    v20 = sub_225CCE954();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v8, 1, 1, v20);
    LODWORD(v20) = (*(v21 + 48))(v8, 1, v20);
    sub_2259CB640(v8, &unk_27D73B050);
    if (v20)
    {
      v22 = 455;
    }

    else
    {
      v22 = 23;
    }

    v23 = MEMORY[0x277D84F90];
    v24 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v49);

    v26 = v49;
    v27 = sub_225B29AA0(0, 1, 1, v23);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    v30 = &v27[56 * v29];
    v31 = v62;
    *(v30 + 4) = v62;
    *(v30 + 5) = v16;
    v32 = v44;
    *(v30 + 6) = 0xD00000000000002DLL;
    *(v30 + 7) = v32;
    *(v30 + 8) = 0x6F72662874696E69;
    *(v30 + 9) = 0xEB00000000293A6DLL;
    *(v30 + 10) = 286;
    *v19 = v22;
    *(v19 + 8) = v27;
    *(v19 + 16) = v31;
    *(v19 + 24) = v16;
    *(v19 + 32) = v26;
    *(v19 + 40) = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v59);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ISO18013AppleHandover.encode(to:)(void *a1)
{
  v3 = *v1;
  v11 = v1[1];
  v4 = v1[6];
  v5 = v1[7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCC4();
  __swift_mutable_project_boxed_opaque_existential_0(v9, v10);
  sub_225CCF8B4();
  if (!v2)
  {
    v6 = v11;
    v8 = v11;
    __swift_mutable_project_boxed_opaque_existential_0(v9, v10);
    sub_2259CB710(v3, v6);
    sub_2259D9454();
    sub_225CCF8C4();
    sub_2259BEF00(v3, v8);
    __swift_mutable_project_boxed_opaque_existential_0(v9, v10);
    sub_225CCF8B4();
    __swift_mutable_project_boxed_opaque_existential_0(v9, v10);
    sub_225CCF8B4();
    __swift_mutable_project_boxed_opaque_existential_0(v9, v10);
    sub_2259CB710(v4, v5);
    sub_225CCF8C4();
    sub_2259BEF00(v4, v5);
  }

  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t ISO18013DCAPIHandover.infoHash.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t ISO18013DCAPIHandover.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v34 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC74();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_0(v37, v38);
    v9 = sub_225CCF874();
    v11 = v9 == 0x6970616364 && v10 == 0xE500000000000000;
    if (v11 || (v12 = v9, v13 = v10, (sub_225CCF934() & 1) != 0))
    {

      __swift_mutable_project_boxed_opaque_existential_0(v37, v38);
      sub_2259D94A8();
      sub_225CCF884();
      v14 = v35;
      v15 = v36;
      __swift_destroy_boxed_opaque_existential_0(v37);
      *a2 = v14;
      a2[1] = v15;
    }

    else
    {
      v34 = 0;
      v35 = 0;
      v36 = 0xE000000000000000;
      sub_225CCF204();

      v35 = 0xD000000000000026;
      v36 = 0x8000000225D1BCA0;
      MEMORY[0x22AA6CE70](v12, v13);

      v17 = v35;
      v16 = v36;
      v39 = 0x8000000225D1B9F0;
      v18 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v20 = v19;
      v21 = sub_225CCE954();
      v22 = *(v21 - 8);
      (*(v22 + 56))(v8, 1, 1, v21);
      LODWORD(v21) = (*(v22 + 48))(v8, 1, v21);
      sub_2259CB640(v8, &unk_27D73B050);
      if (v21)
      {
        v23 = 462;
      }

      else
      {
        v23 = 23;
      }

      v24 = MEMORY[0x277D84F90];
      v25 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v25;
      sub_225B2C4A0(v18, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v35);

      v27 = v35;
      v28 = sub_225B29AA0(0, 1, 1, v24);
      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_225B29AA0((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[56 * v30];
      *(v31 + 4) = v17;
      *(v31 + 5) = v16;
      v32 = v39;
      *(v31 + 6) = 0xD00000000000002DLL;
      *(v31 + 7) = v32;
      *(v31 + 8) = 0x6F72662874696E69;
      *(v31 + 9) = 0xEB00000000293A6DLL;
      *(v31 + 10) = 331;
      *v20 = v23;
      *(v20 + 8) = v28;
      *(v20 + 16) = v17;
      *(v20 + 24) = v16;
      *(v20 + 32) = v27;
      *(v20 + 40) = 0;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0(v37);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ISO18013DCAPIHandover.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCC4();
  __swift_mutable_project_boxed_opaque_existential_0(v6, v7);
  sub_225CCF8B4();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_0(v6, v7);
    sub_2259CB710(v3, v4);
    sub_2259D9454();
    sub_225CCF8C4();
    sub_2259BEF00(v3, v4);
  }

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

unint64_t sub_225AD4660()
{
  result = qword_27D73D050;
  if (!qword_27D73D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D050);
  }

  return result;
}

unint64_t sub_225AD46D4()
{
  result = qword_27D73D068;
  if (!qword_27D73D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D068);
  }

  return result;
}

unint64_t sub_225AD4758()
{
  result = qword_27D73D070;
  if (!qword_27D73D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D070);
  }

  return result;
}

uint64_t sub_225AD47AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_225AD480C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_225AD4874(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_225AD48BC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_2259CB710(result, a2);

    return sub_2259CB6FC(a3, a4);
  }

  return result;
}

unint64_t sub_225AD490C()
{
  result = qword_27D73D090;
  if (!qword_27D73D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D090);
  }

  return result;
}

uint64_t sub_225AD4960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_225AD49C8()
{
  result = qword_27D73D0A0;
  if (!qword_27D73D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D0A0);
  }

  return result;
}

unint64_t sub_225AD4A54()
{
  result = qword_27D73D0A8;
  if (!qword_27D73D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D0A8);
  }

  return result;
}

unint64_t sub_225AD4AA8()
{
  result = qword_27D73D0B0;
  if (!qword_27D73D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D0B0);
  }

  return result;
}

unint64_t sub_225AD4B2C()
{
  result = qword_281059B28;
  if (!qword_281059B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73DCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059B28);
  }

  return result;
}

unint64_t sub_225AD4BA8()
{
  result = qword_27D73D0B8;
  if (!qword_27D73D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D0B8);
  }

  return result;
}

unint64_t sub_225AD4BFC()
{
  result = qword_27D73D0C0;
  if (!qword_27D73D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D0C0);
  }

  return result;
}

uint64_t sub_225AD4C50()
{
  result = type metadata accessor for ISO18013PhysicalSessionTranscript(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_225AD4CEC()
{
  sub_225AD4D88();
  if (v0 <= 0x3F)
  {
    sub_225ACFA1C();
    if (v1 <= 0x3F)
    {
      sub_225AD4E98();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_225AD4D88()
{
  if (!qword_27D73D0E8)
  {
    sub_225AD4DF0();
    sub_225AD4E44();
    v0 = type metadata accessor for CBOREncodedCBOR();
    if (!v1)
    {
      atomic_store(v0, &qword_27D73D0E8);
    }
  }
}

unint64_t sub_225AD4DF0()
{
  result = qword_27D73D0F0;
  if (!qword_27D73D0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D0F0);
  }

  return result;
}

unint64_t sub_225AD4E44()
{
  result = qword_27D73D0F8;
  if (!qword_27D73D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D0F8);
  }

  return result;
}

void sub_225AD4E98()
{
  if (!qword_27D73D100)
  {
    v0 = sub_225CCEFC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D73D100);
    }
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_225AD4F2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225AD4F74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_225AD5024(char *a1, uint64_t (*a2)(_BYTE *))
{
  v4 = sub_225CCF454();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  if (qword_27D739F68 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_27D73D108);
  (*(v5 + 16))(v8, v10, v4);
  v15 = &type metadata for ISO18013PresentmentType;
  v14[0] = v9;
  v11 = a2(v13);
  sub_225A0528C(v14, v8);
  return v11(v13, 0);
}

uint64_t sub_225AD51C8@<X0>(uint64_t (*a1)(void)@<X2>, _BYTE *a2@<X8>)
{
  v3 = a1();
  if (qword_27D739F70 != -1)
  {
    swift_once();
  }

  v4 = sub_225CCF454();
  v5 = __swift_project_value_buffer(v4, qword_27D73D120);
  if (!*(v3 + 16) || (v6 = sub_2259F1C5C(v5), (v7 & 1) == 0))
  {

    goto LABEL_8;
  }

  sub_2259CB810(*(v3 + 56) + 32 * v6, v11);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v9 = v10;
LABEL_9:
  *a2 = v9;
  return result;
}

uint64_t sub_225AD52F0@<X0>(uint64_t (*a1)(void)@<X2>, _BYTE *a2@<X8>)
{
  v3 = a1();
  if (qword_27D739F68 != -1)
  {
    swift_once();
  }

  v4 = sub_225CCF454();
  v5 = __swift_project_value_buffer(v4, qword_27D73D108);
  if (!*(v3 + 16) || (v6 = sub_2259F1C5C(v5), (v7 & 1) == 0))
  {

    goto LABEL_8;
  }

  sub_2259CB810(*(v3 + 56) + 32 * v6, v11);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v9 = v10;
LABEL_9:
  *a2 = v9;
  return result;
}

uint64_t sub_225AD53D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D158);
  MEMORY[0x28223BE20]();
  v1 = &v6 - v0;
  v2 = sub_225CCF454();
  __swift_allocate_value_buffer(v2, qword_27D73D108);
  v3 = __swift_project_value_buffer(v2, qword_27D73D108);
  sub_225CCF444();
  v4 = *(v2 - 8);
  result = (*(v4 + 48))(v1, 1, v2);
  if (result != 1)
  {
    return (*(v4 + 32))(v3, v1, v2);
  }

  __break(1u);
  return result;
}

uint64_t sub_225AD5524()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D158);
  MEMORY[0x28223BE20]();
  v1 = &v6 - v0;
  v2 = sub_225CCF454();
  __swift_allocate_value_buffer(v2, qword_27D73D120);
  v3 = __swift_project_value_buffer(v2, qword_27D73D120);
  sub_225CCF444();
  v4 = *(v2 - 8);
  result = (*(v4 + 48))(v1, 1, v2);
  if (result != 1)
  {
    return (*(v4 + 32))(v3, v1, v2);
  }

  __break(1u);
  return result;
}

uint64_t sub_225AD5678@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_225CCF454();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

CoreIDVShared::ISO18013PresentmentType_optional __swiftcall ISO18013PresentmentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ISO18013PresentmentType.rawValue.getter()
{
  v1 = 0x6C617469676964;
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
    return 0x6C61636973796870;
  }
}

uint64_t sub_225AD57CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6C617469676964;
  v5 = 0x8000000225D0B870;
  if (v2 != 1)
  {
    v4 = 0xD000000000000014;
    v3 = 0x8000000225D0B870;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6C61636973796870;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x6C617469676964;
  if (*a2 == 1)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xD000000000000014;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C61636973796870;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225AD58C8()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AD5970()
{
  sub_225CCE5B4();
}

uint64_t sub_225AD5A04()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225AD5AB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6C617469676964;
  if (v2 != 1)
  {
    v5 = 0xD000000000000014;
    v4 = 0x8000000225D0B870;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C61636973796870;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ISO18013CodingKeyFormat.rawValue.getter()
{
  if (*v0)
  {
    return 1196901185;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_225AD5B58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1196901185;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1196901185;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225AD5BF8()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AD5C74()
{
  sub_225CCE5B4();
}

uint64_t sub_225AD5CDC()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}