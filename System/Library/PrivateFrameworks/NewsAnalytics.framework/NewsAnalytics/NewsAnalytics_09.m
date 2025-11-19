unint64_t sub_217B44FA8()
{
  result = qword_27CB9FF20;
  if (!qword_27CB9FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FF20);
  }

  return result;
}

unint64_t sub_217B45000()
{
  result = qword_27CB9FF28;
  if (!qword_27CB9FF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FF28);
  }

  return result;
}

unint64_t sub_217B45058()
{
  result = qword_27CB9FF30;
  if (!qword_27CB9FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FF30);
  }

  return result;
}

uint64_t sub_217B450AC(uint64_t a1, uint64_t a2)
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

uint64_t sub_217B454C8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9FF68);
  __swift_project_value_buffer(v0, qword_27CB9FF68);
  return sub_217D8866C();
}

uint64_t FavoriteTagEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FavoriteTagEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FavoriteTagEvent(0) + 20);
  sub_217B45A2C(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FavoriteTagEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FavoriteTagEvent(0) + 20);
  sub_217B45A2C(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FavoriteTagEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FavoriteTagEvent(0) + 24);
  sub_217B45A2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FavoriteTagEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FavoriteTagEvent(0) + 24);
  sub_217B45A2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FavoriteTagEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FavoriteTagEvent(0) + 28);
  sub_217B45A2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B45A2C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t FavoriteTagEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FavoriteTagEvent(0) + 28);
  sub_217B45A2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FavoriteTagEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FavoriteTagEvent(0);
  v5 = v4[5];
  sub_217B45A2C(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B45A2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B45A2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t FavoriteTagEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FavoriteTagEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t FavoriteTagEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FavoriteTagEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t FavoriteTagEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FavoriteTagEvent.Model(0) + 28));
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

__n128 FavoriteTagEvent.Model.init(eventData:tagData:viewData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *a3;
  v11 = a3[1];
  v12 = *(a3 + 8);
  v13 = sub_217D8899C();
  (*(*(v13 - 8) + 32))(a5, a1, v13);
  v14 = type metadata accessor for FavoriteTagEvent.Model(0);
  v15 = (a5 + v14[5]);
  *v15 = v8;
  v15[1] = v9;
  v16 = a5 + v14[6];
  *v16 = v10;
  *(v16 + 8) = v11;
  *(v16 + 16) = v12;
  v17 = a5 + v14[7];
  v18 = *(a4 + 16);
  *v17 = *a4;
  *(v17 + 16) = v18;
  result = *(a4 + 32);
  *(v17 + 32) = result;
  *(v17 + 48) = *(a4 + 48);
  return result;
}

unint64_t sub_217B45F98()
{
  v1 = 0x746144746E657665;
  v2 = 0x6174614477656976;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000021;
  }

  if (*v0)
  {
    v1 = 0x61746144676174;
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

uint64_t sub_217B4601C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B46FD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B46044(uint64_t a1)
{
  v2 = sub_217B463D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B46080(uint64_t a1)
{
  v2 = sub_217B463D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FavoriteTagEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B468A4(0, &qword_27CB9FF80, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B463D0();
  sub_217D89E7C();
  LOBYTE(v29[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for FavoriteTagEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[1];
    *&v29[0] = *v13;
    *(&v29[0] + 1) = v14;
    LOBYTE(v25) = 1;
    sub_217AF6B14();

    sub_217D89CAC();

    v15 = (v3 + v12[6]);
    v16 = *v15;
    v17 = v15[1];
    LOWORD(v15) = *(v15 + 8);
    v31 = v16;
    v32 = v17;
    v33 = v15;
    v35 = 2;
    sub_217A5E790();

    sub_217D89CAC();

    v18 = (v3 + v12[7]);
    v19 = v18[1];
    v29[0] = *v18;
    v29[1] = v19;
    v21 = *v18;
    v20 = v18[1];
    v29[2] = v18[2];
    v30 = *(v18 + 48);
    v25 = v21;
    v26 = v20;
    v27 = v18[2];
    v28 = *(v18 + 48);
    v34 = 3;
    sub_217ACC004(v29, v23);
    sub_217A55B98();
    sub_217D89CAC();
    v23[0] = v25;
    v23[1] = v26;
    v23[2] = v27;
    v24 = v28;
    sub_217ACC69C(v23);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B463D0()
{
  result = qword_27CB9FF88;
  if (!qword_27CB9FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FF88);
  }

  return result;
}

uint64_t FavoriteTagEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_217D8899C();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B468A4(0, &qword_27CB9FF90, MEMORY[0x277D844C8]);
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for FavoriteTagEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B463D0();
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
  v37 = 1;
  sub_217AF6AC0();
  sub_217D89BCC();
  v18 = *(&v33 + 1);
  v19 = &v14[v11[5]];
  *v19 = v33;
  *(v19 + 1) = v18;
  v37 = 2;
  sub_217A5E738();
  sub_217D89BCC();
  v20 = *(&v33 + 1);
  v21 = v34;
  v22 = &v14[v11[6]];
  *v22 = v33;
  *(v22 + 1) = v20;
  *(v22 + 8) = v21;
  v37 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v30 + 8))(v32, v31);
  v23 = &v14[v11[7]];
  v24 = v34;
  *v23 = v33;
  *(v23 + 1) = v24;
  *(v23 + 2) = v35;
  v23[48] = v36;
  sub_217B46908(v14, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B4696C(v14);
}

void sub_217B468A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B463D0();
    v7 = a3(a1, &type metadata for FavoriteTagEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B46908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoriteTagEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B4696C(uint64_t a1)
{
  v2 = type metadata accessor for FavoriteTagEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B46AA0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217B45A2C(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B45A2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B45A2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217B46CB0()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217B45A2C(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
    if (v1 <= 0x3F)
    {
      sub_217B45A2C(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
      if (v2 <= 0x3F)
      {
        sub_217B45A2C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217B46E34()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217B46ED0()
{
  result = qword_27CB9FFB8;
  if (!qword_27CB9FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FFB8);
  }

  return result;
}

unint64_t sub_217B46F28()
{
  result = qword_27CB9FFC0;
  if (!qword_27CB9FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FFC0);
  }

  return result;
}

unint64_t sub_217B46F80()
{
  result = qword_27CB9FFC8;
  if (!qword_27CB9FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FFC8);
  }

  return result;
}

uint64_t sub_217B46FD4(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
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

uint64_t sub_217B471AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
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

uint64_t sub_217B47234(uint64_t a1)
{
  v2 = sub_217B47408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B47270(uint64_t a1)
{
  v2 = sub_217B47408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetLocationData.encode(to:)(void *a1)
{
  sub_217B47648(0, &qword_2811BC6A0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B47408();
  sub_217D89E7C();
  v13 = v9;
  sub_217B4745C();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B47408()
{
  result = qword_2811C2DB8;
  if (!qword_2811C2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2DB8);
  }

  return result;
}

unint64_t sub_217B4745C()
{
  result = qword_2811C69C8[0];
  if (!qword_2811C69C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C69C8);
  }

  return result;
}

uint64_t WidgetLocationData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B47648(0, &qword_2811BCA10, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B47408();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B476AC();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B47648(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B47408();
    v7 = a3(a1, &type metadata for WidgetLocationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B476AC()
{
  result = qword_2811C69B8;
  if (!qword_2811C69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C69B8);
  }

  return result;
}

unint64_t sub_217B4775C()
{
  result = qword_27CB9FFD0;
  if (!qword_27CB9FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FFD0);
  }

  return result;
}

unint64_t sub_217B477B4()
{
  result = qword_2811C2DA8;
  if (!qword_2811C2DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2DA8);
  }

  return result;
}

unint64_t sub_217B4780C()
{
  result = qword_2811C2DB0;
  if (!qword_2811C2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2DB0);
  }

  return result;
}

uint64_t sub_217B478C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4364656863746566 && a2 == 0xEC000000746E756FLL)
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

uint64_t sub_217B4794C(uint64_t a1)
{
  v2 = sub_217B47B0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B47988(uint64_t a1)
{
  v2 = sub_217B47B0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsFetchFavoritesSyncData.encode(to:)(void *a1)
{
  sub_217B47CE0(0, &qword_2811BC558, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B47B0C();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B47B0C()
{
  result = qword_2811BE8F0[0];
  if (!qword_2811BE8F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BE8F0);
  }

  return result;
}

uint64_t SportsFetchFavoritesSyncData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217B47CE0(0, &qword_27CB9FFD8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B47B0C();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89BDC();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B47CE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B47B0C();
    v7 = a3(a1, &type metadata for SportsFetchFavoritesSyncData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B47D48()
{
  result = qword_2811BE8D0;
  if (!qword_2811BE8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE8D0);
  }

  return result;
}

unint64_t sub_217B47DA0()
{
  result = qword_2811BE8D8;
  if (!qword_2811BE8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE8D8);
  }

  return result;
}

uint64_t sub_217B47E0C(void *a1)
{
  sub_217B47CE0(0, &qword_2811BC558, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B47B0C();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B47F78()
{
  result = qword_27CB9FFE0;
  if (!qword_27CB9FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FFE0);
  }

  return result;
}

unint64_t sub_217B47FD0()
{
  result = qword_2811BE8E0;
  if (!qword_2811BE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE8E0);
  }

  return result;
}

unint64_t sub_217B48028()
{
  result = qword_2811BE8E8;
  if (!qword_2811BE8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE8E8);
  }

  return result;
}

uint64_t sub_217B48144()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0018);
  __swift_project_value_buffer(v0, qword_27CBA0018);
  return sub_217D8866C();
}

uint64_t NotificationUnsubscribeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NotificationUnsubscribeEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 20);
  sub_217B38300(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationUnsubscribeEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 20);
  sub_217B38300(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationUnsubscribeEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 24);
  sub_217B38300(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationUnsubscribeEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 24);
  sub_217B38300(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationUnsubscribeEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 28);
  sub_217B38300(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationUnsubscribeEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 28);
  sub_217B38300(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationUnsubscribeEvent.notificationSubscribedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 32);
  sub_217B38300(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationUnsubscribeEvent.notificationSubscribedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 32);
  sub_217B38300(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationUnsubscribeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 36);
  sub_217B38300(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationUnsubscribeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 36);
  sub_217B38300(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationUnsubscribeEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 40);
  sub_217B38300(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationUnsubscribeEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 40);
  sub_217B38300(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationUnsubscribeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NotificationUnsubscribeEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217B38300(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217B38300(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217B38300(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_217B38300(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217B38300(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217B38300(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v6, v17);
}

uint64_t NotificationUnsubscribeEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationUnsubscribeEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t NotificationUnsubscribeEvent.Model.channelData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationUnsubscribeEvent.Model(0) + 24));
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

uint64_t NotificationUnsubscribeEvent.Model.campaignData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationUnsubscribeEvent.Model(0) + 28));
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

uint64_t NotificationUnsubscribeEvent.Model.notificationSubscribedData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for NotificationUnsubscribeEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t NotificationUnsubscribeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationUnsubscribeEvent.Model(0) + 36));
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

uint64_t NotificationUnsubscribeEvent.Model.userChannelContextData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for NotificationUnsubscribeEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

__n128 NotificationUnsubscribeEvent.Model.init(eventData:tagData:channelData:campaignData:notificationSubscribedData:userBundleSubscriptionContextData:userChannelContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int16 *a5@<X4>, uint64_t a6@<X5>, int *a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a2;
  v14 = a2[1];
  v15 = *(a3 + 4);
  v16 = *(a4 + 4);
  v17 = *(a4 + 5);
  v30 = *a5;
  v31 = *a7;
  v18 = sub_217D8899C();
  v28 = a4[1];
  v29 = *a4;
  v26 = a3[1];
  v27 = *a3;
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for NotificationUnsubscribeEvent.Model(0);
  v20 = (a8 + v19[5]);
  *v20 = v13;
  v20[1] = v14;
  v21 = a8 + v19[6];
  *v21 = v27;
  *(v21 + 16) = v26;
  *(v21 + 32) = v15;
  v22 = a8 + v19[7];
  *v22 = v29;
  *(v22 + 16) = v28;
  *(v22 + 32) = v16;
  *(v22 + 40) = v17;
  *(a8 + v19[8]) = v30;
  v23 = a8 + v19[9];
  v24 = *(a6 + 16);
  *v23 = *a6;
  *(v23 + 16) = v24;
  result = *(a6 + 32);
  *(v23 + 32) = result;
  *(v23 + 48) = *(a6 + 48);
  *(a8 + v19[10]) = v31;
  return result;
}

uint64_t sub_217B49350(uint64_t a1)
{
  v2 = sub_217B49820();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B4938C(uint64_t a1)
{
  v2 = sub_217B49820();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationUnsubscribeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B49E84(0, &qword_27CBA0030, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v31[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B49820();
  sub_217D89E7C();
  LOBYTE(v40) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for NotificationUnsubscribeEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[1];
    *&v40 = *v13;
    *(&v40 + 1) = v14;
    LOBYTE(v36) = 1;
    sub_217AF6B14();

    sub_217D89C3C();

    v15 = (v3 + v12[6]);
    v16 = v15[1];
    v17 = v15[2];
    v18 = v15[3];
    v19 = v15[4];
    *&v40 = *v15;
    *(&v40 + 1) = v16;
    *&v41 = v17;
    *(&v41 + 1) = v18;
    *&v42 = v19;
    LOBYTE(v36) = 2;
    sub_217AD86BC(v40, v16);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v40, *(&v40 + 1));
    v20 = (v3 + v12[7]);
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    v24 = v20[4];
    v25 = v20[5];
    *&v40 = *v20;
    *(&v40 + 1) = v21;
    *&v41 = v22;
    *(&v41 + 1) = v23;
    *&v42 = v24;
    *(&v42 + 1) = v25;
    LOBYTE(v36) = 3;
    sub_217B1563C(v40, v21);
    sub_217A66ADC();
    sub_217D89C3C();
    sub_217B15D30(v40, *(&v40 + 1));
    v45 = *(v3 + v12[8]);
    v44 = 4;
    sub_217B37F4C();
    sub_217D89CAC();
    v26 = (v3 + v12[9]);
    v27 = v26[1];
    v40 = *v26;
    v41 = v27;
    v29 = *v26;
    v28 = v26[1];
    v42 = v26[2];
    v43 = *(v26 + 48);
    v36 = v29;
    v37 = v28;
    v38 = v26[2];
    v39 = *(v26 + 48);
    v35 = 5;
    sub_217ACC004(&v40, v33);
    sub_217A55B98();
    sub_217D89CAC();
    v33[0] = v36;
    v33[1] = v37;
    v33[2] = v38;
    v34 = v39;
    sub_217ACC69C(v33);
    v32 = *(v3 + v12[10]);
    v31[11] = 6;
    sub_217ACFB8C();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B49820()
{
  result = qword_27CBA0038;
  if (!qword_27CBA0038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0038);
  }

  return result;
}

uint64_t NotificationUnsubscribeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_217D8899C();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](v4);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B49E84(0, &qword_27CBA0040, MEMORY[0x277D844C8]);
  v30 = v7;
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for NotificationUnsubscribeEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B49820();
  v31 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v28;
  LOBYTE(v32) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v29;
  sub_217D89BCC();
  (*(v27 + 32))(v14, v17, v4);
  LOBYTE(v36) = 1;
  sub_217AF6AC0();
  sub_217D89B5C();
  v29 = 0;
  *&v14[v11[5]] = v32;
  LOBYTE(v36) = 2;
  sub_217AD07F8();
  sub_217D89B5C();
  v18 = v34;
  v19 = &v14[v11[6]];
  v20 = v33;
  *v19 = v32;
  *(v19 + 1) = v20;
  *(v19 + 4) = v18;
  LOBYTE(v36) = 3;
  sub_217A66A84();
  sub_217D89B5C();
  v21 = &v14[v11[7]];
  v22 = v33;
  *v21 = v32;
  *(v21 + 1) = v22;
  *(v21 + 2) = v34;
  LOBYTE(v36) = 4;
  sub_217B37EF8();
  sub_217D89BCC();
  *&v14[v11[8]] = v32;
  v38 = 5;
  sub_217A54D08();
  sub_217D89BCC();
  v23 = &v14[v11[9]];
  v24 = v33;
  *v23 = v32;
  *(v23 + 1) = v24;
  *(v23 + 2) = v34;
  v23[48] = v35;
  v37 = 6;
  sub_217ACFB38();
  sub_217D89B5C();
  (*(v16 + 8))(v31, v30);
  *&v14[v11[10]] = v36;
  sub_217B49EE8(v14, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B49F4C(v14);
}

void sub_217B49E84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B49820();
    v7 = a3(a1, &type metadata for NotificationUnsubscribeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B49EE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationUnsubscribeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B49F4C(uint64_t a1)
{
  v2 = type metadata accessor for NotificationUnsubscribeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217B4A0E4()
{
  result = qword_27CBA0048;
  if (!qword_27CBA0048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0048);
  }

  return result;
}

unint64_t sub_217B4A13C()
{
  result = qword_27CBA0050;
  if (!qword_27CBA0050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0050);
  }

  return result;
}

unint64_t sub_217B4A194()
{
  result = qword_27CBA0058;
  if (!qword_27CBA0058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0058);
  }

  return result;
}

id Assembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Assembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_217B4A360()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0098);
  __swift_project_value_buffer(v0, qword_27CBA0098);
  return sub_217D8866C();
}

uint64_t ArticleLoadFailureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleLoadFailureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLoadFailureEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLoadFailureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLoadFailureEvent(0) + 24);
  sub_217A60458(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLoadFailureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLoadFailureEvent(0) + 24);
  sub_217A60458(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLoadFailureEvent.articleLoadData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLoadFailureEvent(0) + 28);
  sub_217A60458(0, &qword_2811C8708, sub_217AD4FC0, sub_217AD5014);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLoadFailureEvent.articleLoadData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLoadFailureEvent(0) + 28);
  sub_217A60458(0, &qword_2811C8708, sub_217AD4FC0, sub_217AD5014);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLoadFailureEvent.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLoadFailureEvent(0) + 32);
  sub_217A60458(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLoadFailureEvent.errorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLoadFailureEvent(0) + 32);
  sub_217A60458(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLoadFailureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  FailureEvent = type metadata accessor for ArticleLoadFailureEvent(0);
  v5 = FailureEvent[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = FailureEvent[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217A60458(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = FailureEvent[7];
  sub_217A60458(0, &qword_2811C8708, sub_217AD4FC0, sub_217AD5014);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = FailureEvent[8];
  sub_217A60458(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t sub_217B4AD38@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ArticleLoadFailureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLoadFailureEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ArticleLoadFailureEvent.Model.articleLoadData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLoadFailureEvent.Model(0) + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ArticleLoadFailureEvent.Model.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleLoadFailureEvent.Model(0) + 32);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
}

__n128 ArticleLoadFailureEvent.Model.init(eventData:timedData:feedData:articleLoadData:errorData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a3 + 2);
  v10 = *a4;
  v11 = a4[1];
  v23 = *a5;
  v21 = *a3;
  v22 = a5[1];
  v12 = *(a5 + 4);
  v13 = sub_217D8899C();
  (*(*(v13 - 8) + 32))(a6, a1, v13);
  Failure = type metadata accessor for ArticleLoadFailureEvent.Model(0);
  v15 = Failure[5];
  v16 = sub_217D889CC();
  (*(*(v16 - 8) + 32))(a6 + v15, a2, v16);
  v17 = a6 + Failure[6];
  *v17 = v21;
  *(v17 + 16) = v9;
  v18 = (a6 + Failure[7]);
  *v18 = v10;
  v18[1] = v11;
  v19 = a6 + Failure[8];
  result = v22;
  *v19 = v23;
  *(v19 + 16) = v22;
  *(v19 + 32) = v12;
  return result;
}

uint64_t sub_217B4B008()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6174614464656566;
  v4 = 0x4C656C6369747261;
  if (v1 != 3)
  {
    v4 = 0x746144726F727265;
  }

  if (v1 != 2)
  {
    v3 = v4;
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

uint64_t sub_217B4B0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B4C2DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B4B0D4(uint64_t a1)
{
  v2 = sub_217B4B4C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B4B110(uint64_t a1)
{
  v2 = sub_217B4B4C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleLoadFailureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B4BB14(0, &qword_27CBA00B0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4B4C8();
  sub_217D89E7C();
  LOBYTE(v23) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    Failure = type metadata accessor for ArticleLoadFailureEvent.Model(0);
    v13 = Failure[5];
    LOBYTE(v23) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = (v3 + Failure[6]);
    v15 = v14[1];
    v16 = v14[2];
    v23 = *v14;
    *&v24 = v15;
    *(&v24 + 1) = v16;
    v27 = 2;
    sub_217AD1A68(v23, v15, v16);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v23, v24, *(&v24 + 1));
    v17 = (v3 + Failure[7]);
    v18 = v17[1];
    v23 = *v17;
    *&v24 = v18;
    v27 = 3;
    sub_217AD5014();

    sub_217D89CAC();

    v19 = v3 + Failure[8];
    v20 = *(v19 + 24);
    v21 = *(v19 + 32);
    v23 = *v19;
    v24 = *(v19 + 8);
    v25 = v20;
    v26 = v21;
    v27 = 4;
    sub_217A60BE4();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B4B4C8()
{
  result = qword_27CBA00B8;
  if (!qword_27CBA00B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA00B8);
  }

  return result;
}

uint64_t ArticleLoadFailureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v35 = sub_217D889CC();
  v33 = *(v35 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v36 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B4BB14(0, &qword_27CBA00C0, MEMORY[0x277D844C8]);
  v38 = v9;
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  Failure = type metadata accessor for ArticleLoadFailureEvent.Model(0);
  v14 = *(*(Failure - 1) + 64);
  MEMORY[0x28223BE20](Failure);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4B4C8();
  v37 = v12;
  v18 = v39;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v5;
  v20 = v33;
  v21 = v35;
  LOBYTE(v40) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  sub_217D89BCC();
  (*(v32 + 32))(v16, v36, v6);
  LOBYTE(v40) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  sub_217D89BCC();
  (*(v20 + 32))(&v16[Failure[5]], v19, v21);
  v43 = 2;
  sub_217A5B978();
  sub_217D89B5C();
  v39 = a1;
  v22 = v41;
  v23 = &v16[Failure[6]];
  *v23 = v40;
  *(v23 + 2) = v22;
  v43 = 3;
  sub_217AD4FC0();
  sub_217D89BCC();
  v24 = *(&v40 + 1);
  v25 = &v16[Failure[7]];
  *v25 = v40;
  *(v25 + 1) = v24;
  v43 = 4;
  sub_217A60B90();
  sub_217D89BCC();
  (*(v34 + 8))(v37, v38);
  v26 = v42;
  v27 = &v16[Failure[8]];
  v28 = v41;
  *v27 = v40;
  *(v27 + 1) = v28;
  *(v27 + 4) = v26;
  sub_217B4BB78(v16, v31);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_217B4BBDC(v16);
}

void sub_217B4BB14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B4B4C8();
    v7 = a3(a1, &type metadata for ArticleLoadFailureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B4BB78(uint64_t a1, uint64_t a2)
{
  Failure = type metadata accessor for ArticleLoadFailureEvent.Model(0);
  (*(*(Failure - 8) + 16))(a2, a1, Failure);
  return a2;
}

uint64_t sub_217B4BBDC(uint64_t a1)
{
  Failure = type metadata accessor for ArticleLoadFailureEvent.Model(0);
  (*(*(Failure - 8) + 8))(a1, Failure);
  return a1;
}

uint64_t sub_217B4BD10@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217A60458(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217A60458(0, &qword_2811C8708, sub_217AD4FC0, sub_217AD5014);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217A60458(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

void sub_217B4BF74()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217A60458(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
      if (v2 <= 0x3F)
      {
        sub_217A60458(319, &qword_2811C8708, sub_217AD4FC0, sub_217AD5014);
        if (v3 <= 0x3F)
        {
          sub_217A60458(319, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_217B4C110()
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

unint64_t sub_217B4C1D8()
{
  result = qword_27CBA00D8;
  if (!qword_27CBA00D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA00D8);
  }

  return result;
}

unint64_t sub_217B4C230()
{
  result = qword_27CBA00E0;
  if (!qword_27CBA00E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA00E0);
  }

  return result;
}

unint64_t sub_217B4C288()
{
  result = qword_27CBA00E8;
  if (!qword_27CBA00E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA00E8);
  }

  return result;
}

uint64_t sub_217B4C2DC(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x4C656C6369747261 && a2 == 0xEF6174614464616FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746144726F727265 && a2 == 0xE900000000000061)
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

uint64_t sub_217B4C530()
{
  if (*v0)
  {
    result = 0x6E6F69746361;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_217B4C560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
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

uint64_t sub_217B4C638(uint64_t a1)
{
  v2 = sub_217B4C85C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B4C674(uint64_t a1)
{
  v2 = sub_217B4C85C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationSubscribedData.encode(to:)(void *a1)
{
  sub_217B4CB3C(0, &qword_27CBA00F0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4C85C();
  sub_217D89E7C();
  v18 = v10;
  v17 = 0;
  sub_217B4C8B0();
  sub_217D89CAC();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_217B4C904();
    sub_217D89CAC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217B4C85C()
{
  result = qword_27CBA00F8;
  if (!qword_27CBA00F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA00F8);
  }

  return result;
}

unint64_t sub_217B4C8B0()
{
  result = qword_27CBA0100;
  if (!qword_27CBA0100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0100);
  }

  return result;
}

unint64_t sub_217B4C904()
{
  result = qword_27CBA0108;
  if (!qword_27CBA0108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0108);
  }

  return result;
}

uint64_t NotificationSubscribedData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B4CB3C(0, &qword_27CBA0110, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4C85C();
  sub_217D89E5C();
  if (!v2)
  {
    v18 = 0;
    sub_217B4CBA0();
    sub_217D89BCC();
    v12 = v19;
    v16 = 1;
    sub_217B4CBF4();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    v14 = v17;
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B4CB3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B4C85C();
    v7 = a3(a1, &type metadata for NotificationSubscribedData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B4CBA0()
{
  result = qword_27CBA0118;
  if (!qword_27CBA0118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0118);
  }

  return result;
}

unint64_t sub_217B4CBF4()
{
  result = qword_27CBA0120;
  if (!qword_27CBA0120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0120);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationSubscribedData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
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

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationSubscribedData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
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
    *(result + 1) = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217B4CDE8()
{
  result = qword_27CBA0128;
  if (!qword_27CBA0128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0128);
  }

  return result;
}

unint64_t sub_217B4CE40()
{
  result = qword_27CBA0130;
  if (!qword_27CBA0130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0130);
  }

  return result;
}

unint64_t sub_217B4CE98()
{
  result = qword_27CBA0138;
  if (!qword_27CBA0138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0138);
  }

  return result;
}

uint64_t sub_217B4CEEC()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_2811C0D90);
  v1 = __swift_project_value_buffer(v0, qword_2811C0D90);
  *v1 = 0x726F70732E6D6F63;
  *(v1 + 8) = 0xEA00000000007374;
  *(v1 + 16) = 6;
  *(v1 + 24) = 0;
  v2 = *MEMORY[0x277CEACB0];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_217B4CFDC()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_2811C0D68);
  v1 = __swift_project_value_buffer(v0, qword_2811C0D68);
  v2 = *MEMORY[0x277CEADB0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217B4D09C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C0D40);
  __swift_project_value_buffer(v0, qword_2811C0D40);
  return sub_217D8866C();
}

uint64_t SportsSessionEndEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SportsSessionEndEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsSessionEndEvent(0) + 20);
  sub_217A62888(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SportsSessionEndEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsSessionEndEvent(0) + 20);
  sub_217A62888(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsSessionEndEvent.sportsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsSessionEndEvent(0) + 24);
  sub_217A62888(0, &qword_2811C8808, sub_217A6120C, sub_217A61284);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SportsSessionEndEvent.sportsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsSessionEndEvent(0) + 24);
  sub_217A62888(0, &qword_2811C8808, sub_217A6120C, sub_217A61284);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsSessionEndEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SportsSessionEndEvent(0);
  v5 = *(v4 + 20);
  sub_217A62888(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_217A62888(0, &qword_2811C8808, sub_217A6120C, sub_217A61284);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t SportsSessionEndEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SportsSessionEndEvent.Model(0) + 20));
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

uint64_t SportsSessionEndEvent.Model.sportsData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for SportsSessionEndEvent.Model(0) + 24));
}

__n128 SportsSessionEndEvent.Model.init(eventData:userBundleSubscriptionContextData:sportsData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_217D8899C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for SportsSessionEndEvent.Model(0);
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

uint64_t sub_217B4D828(uint64_t a1)
{
  v2 = sub_217B4DB64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B4D864(uint64_t a1)
{
  v2 = sub_217B4DB64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsSessionEndEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B4DFB8(0, &qword_27CBA0140, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4DB64();
  sub_217D89E7C();
  v31 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for SportsSessionEndEvent.Model(0);
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
    v19 = *(v3 + *(v12 + 24));
    v18[7] = 2;
    sub_217A61284();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B4DB64()
{
  result = qword_27CBA0148;
  if (!qword_27CBA0148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0148);
  }

  return result;
}

uint64_t SportsSessionEndEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_217D8899C();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v29 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B4DFB8(0, &qword_27CBA0150, MEMORY[0x277D844C8]);
  v30 = v7;
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for SportsSessionEndEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4DB64();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v27;
  v16 = v28;
  v24 = v11;
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
  sub_217B4E01C(v22, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B4E080(v22);
}

void sub_217B4DFB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B4DB64();
    v7 = a3(a1, &type metadata for SportsSessionEndEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B4E01C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsSessionEndEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B4E080(uint64_t a1)
{
  v2 = type metadata accessor for SportsSessionEndEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217B4E218()
{
  result = qword_27CBA0158;
  if (!qword_27CBA0158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0158);
  }

  return result;
}

unint64_t sub_217B4E270()
{
  result = qword_27CBA0160;
  if (!qword_27CBA0160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0160);
  }

  return result;
}

unint64_t sub_217B4E2C8()
{
  result = qword_27CBA0168;
  if (!qword_27CBA0168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0168);
  }

  return result;
}

void __swiftcall FeedLayoutFailure.errorData()(NewsAnalytics::ErrorData *__return_ptr retstr)
{
  v2 = sub_217D8907C();
  swift_getErrorValue();
  Error.errorData()(retstr);
}

NewsAnalytics::FeedGroupLayoutFailureDiagnosticsData __swiftcall FeedLayoutFailure.diagnosticsData()()
{
  v1 = v0;
  v2 = sub_217D8906C();
  *v1 = v2;
  v1[1] = v3;
  result.message._object = v3;
  result.message._countAndFlagsBits = v2;
  return result;
}

uint64_t AdUserData.userID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AdUserData.userID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217B4E44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x444972657375 && a2 == 0xE600000000000000)
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

uint64_t sub_217B4E4D0(uint64_t a1)
{
  v2 = sub_217B4E694();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B4E50C(uint64_t a1)
{
  v2 = sub_217B4E694();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdUserData.encode(to:)(void *a1)
{
  sub_217B4E86C(0, &qword_2811BC8A8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4E694();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B4E694()
{
  result = qword_2811C7FF0;
  if (!qword_2811C7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7FF0);
  }

  return result;
}

uint64_t AdUserData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217B4E86C(0, &qword_27CBA0170, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4E694();
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

void sub_217B4E86C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B4E694();
    v7 = a3(a1, &type metadata for AdUserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B4E8E8(void *a1)
{
  sub_217B4E86C(0, &qword_2811BC8A8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4E694();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B4EA58()
{
  result = qword_27CBA0178;
  if (!qword_27CBA0178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0178);
  }

  return result;
}

unint64_t sub_217B4EAB0()
{
  result = qword_2811C7FE0;
  if (!qword_2811C7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7FE0);
  }

  return result;
}

unint64_t sub_217B4EB08()
{
  result = qword_2811C7FE8;
  if (!qword_2811C7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7FE8);
  }

  return result;
}

NewsAnalytics::ScienceExperimentData __swiftcall ScienceExperimentData.init(engagementCohortsExpField:conversionCohortsExpField:)(Swift::String_optional engagementCohortsExpField, Swift::String_optional conversionCohortsExpField)
{
  *v2 = engagementCohortsExpField;
  v2[1] = conversionCohortsExpField;
  result.conversionCohortsExpField = conversionCohortsExpField;
  result.engagementCohortsExpField = engagementCohortsExpField;
  return result;
}

uint64_t ScienceExperimentData.engagementCohortsExpField.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ScienceExperimentData.engagementCohortsExpField.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ScienceExperimentData.conversionCohortsExpField.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ScienceExperimentData.conversionCohortsExpField.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_217B4ECB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x8000000217DCDE20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000217DCDE40 == a2)
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

uint64_t sub_217B4ED98(uint64_t a1)
{
  v2 = sub_217A67694();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B4EDD4(uint64_t a1)
{
  v2 = sub_217A67694();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScienceExperimentData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217A67618(0, &qword_27CBA0180, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A67694();
  sub_217D89E5C();
  if (!v2)
  {
    v22 = 0;
    v12 = sub_217D89B2C();
    v14 = v13;
    v20 = v12;
    v21 = 1;
    v16 = sub_217D89B2C();
    v18 = v17;
    (*(v7 + 8))(v10, v6);
    *a2 = v20;
    a2[1] = v14;
    a2[2] = v16;
    a2[3] = v18;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217B4F038(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_217B4F094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_217B4F10C()
{
  result = qword_27CBA0188;
  if (!qword_27CBA0188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0188);
  }

  return result;
}

NewsAnalytics::SelectedResultType_optional __swiftcall SelectedResultType.init(rawValue:)(Swift::String rawValue)
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

uint64_t SelectedResultType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 6775156;
  if (*v0 != 2)
  {
    v2 = 0x657069636572;
  }

  if (*v0)
  {
    v1 = 0x656C6369747261;
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

unint64_t sub_217B4F23C()
{
  result = qword_27CBA0190;
  if (!qword_27CBA0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0190);
  }

  return result;
}

uint64_t sub_217B4F290()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B4F348()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217B4F3EC()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B4F4AC(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE300000000000000;
  v5 = 6775156;
  if (*v1 != 2)
  {
    v5 = 0x657069636572;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C6369747261;
    v2 = 0xE700000000000000;
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

unint64_t sub_217B4F5E0()
{
  result = qword_27CBA0198;
  if (!qword_27CBA0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0198);
  }

  return result;
}

uint64_t sub_217B4F6FC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811BFF78);
  __swift_project_value_buffer(v0, qword_2811BFF78);
  return sub_217D8866C();
}

uint64_t CustomItemExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CustomItemExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 24);
  sub_217B50710(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CustomItemExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 24);
  sub_217B50710(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.customItemData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 28);
  sub_217B50710(0, &qword_2811C8738, sub_217B4FBA0, sub_217B4FBF4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B4FBA0()
{
  result = qword_2811C70D8;
  if (!qword_2811C70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C70D8);
  }

  return result;
}

unint64_t sub_217B4FBF4()
{
  result = qword_2811C70E0;
  if (!qword_2811C70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C70E0);
  }

  return result;
}

uint64_t CustomItemExposureEvent.customItemData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 28);
  sub_217B50710(0, &qword_2811C8738, sub_217B4FBA0, sub_217B4FBF4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 32);
  sub_217B50710(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CustomItemExposureEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 32);
  sub_217B50710(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 36);
  sub_217B50710(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B4FFA8()
{
  result = qword_2811C29E0;
  if (!qword_2811C29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C29E0);
  }

  return result;
}

unint64_t sub_217B4FFFC()
{
  result = qword_2811C29E8;
  if (!qword_2811C29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C29E8);
  }

  return result;
}

uint64_t CustomItemExposureEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 36);
  sub_217B50710(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 40);
  sub_217B50710(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CustomItemExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 40);
  sub_217B50710(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 44);
  sub_217B50710(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CustomItemExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 44);
  sub_217B50710(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 48);
  sub_217B50710(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CustomItemExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 48);
  sub_217B50710(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 52);
  sub_217B50710(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B50710(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t CustomItemExposureEvent.dismissalData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 52);
  sub_217B50710(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for CustomItemExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B50710(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B50710(0, &qword_2811C8738, sub_217B4FBA0, sub_217B4FBF4);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217B50710(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_217B50710(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  sub_217B50710(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217B50710(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v19 - 8) + 104))(a1 + v18, v14, v19);
  v20 = v4[12];
  sub_217B50710(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217B50710(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v14, v23);
}

uint64_t sub_217B50D68@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t CustomItemExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t CustomItemExposureEvent.Model.customItemData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 28));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

uint64_t CustomItemExposureEvent.Model.feedPositionData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for CustomItemExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t CustomItemExposureEvent.Model.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for CustomItemExposureEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t CustomItemExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 40);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t CustomItemExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 44));
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

uint64_t CustomItemExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 48);
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

uint64_t CustomItemExposureEvent.Model.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 CustomItemExposureEvent.Model.init(eventData:timedData:viewData:customItemData:feedPositionData:inGroupPositionData:feedData:groupData:userBundleSubscriptionContextData:dismissalData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, int *a5@<X4>, int *a6@<X5>, char *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11)
{
  v15 = *a3;
  v16 = a3[1];
  v17 = *(a3 + 8);
  v37 = *a4;
  v18 = *(a4 + 3);
  v36 = *(a4 + 2);
  v40 = *a6;
  v38 = *a5;
  v39 = *(a6 + 4);
  v41 = *(a7 + 2);
  v42 = *(a7 + 1);
  v45 = a11[1];
  v46 = *a11;
  v43 = *a7;
  v44 = *(a11 + 16);
  v19 = sub_217D8899C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for CustomItemExposureEvent.Model(0);
  v21 = v20[5];
  v22 = sub_217D889CC();
  (*(*(v22 - 8) + 32))(a9 + v21, a2, v22);
  v23 = a9 + v20[6];
  *v23 = v15;
  *(v23 + 8) = v16;
  *(v23 + 16) = v17;
  v24 = a9 + v20[7];
  *v24 = v37;
  *(v24 + 16) = v36;
  *(v24 + 24) = v18;
  *(a9 + v20[8]) = v38;
  v25 = a9 + v20[9];
  *v25 = v40;
  *(v25 + 4) = v39;
  v26 = a9 + v20[10];
  *v26 = v43;
  *(v26 + 8) = v42;
  *(v26 + 16) = v41;
  v27 = (a9 + v20[11]);
  v28 = a8[3];
  v27[2] = a8[2];
  v27[3] = v28;
  v29 = a8[1];
  *v27 = *a8;
  v27[1] = v29;
  v30 = a8[8];
  v27[7] = a8[7];
  v27[8] = v30;
  v31 = a8[6];
  v27[5] = a8[5];
  v27[6] = v31;
  v27[4] = a8[4];
  v32 = a9 + v20[12];
  v33 = *(a10 + 16);
  *v32 = *a10;
  *(v32 + 16) = v33;
  result = *(a10 + 32);
  *(v32 + 32) = result;
  *(v32 + 48) = *(a10 + 48);
  v35 = a9 + v20[13];
  *v35 = v46;
  *(v35 + 8) = v45;
  *(v35 + 16) = v44;
  return result;
}

unint64_t sub_217B512BC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x74614470756F7267;
    v6 = 0xD000000000000021;
    if (a1 != 8)
    {
      v6 = 0x617373696D736964;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000013;
    if (a1 != 5)
    {
      v7 = 0x6174614464656566;
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
    v2 = 0x6174614477656976;
    v3 = 0x74496D6F74737563;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
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

uint64_t sub_217B51420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B53210(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B51448(uint64_t a1)
{
  v2 = sub_217B51B0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B51484(uint64_t a1)
{
  v2 = sub_217B51B0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CustomItemExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B525EC(0, &qword_27CBA01A0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v44[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B51B0C();
  sub_217D89E7C();
  LOBYTE(v68) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for CustomItemExposureEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v68) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = (v3 + v12[6]);
    v15 = *v14;
    v16 = v14[1];
    LOWORD(v14) = *(v14 + 8);
    *&v68 = v15;
    *(&v68 + 1) = v16;
    LOWORD(v69) = v14;
    LOBYTE(v59) = 2;
    sub_217A5E790();

    sub_217D89CAC();

    v17 = (v3 + v12[7]);
    v18 = v17[1];
    v19 = v17[2];
    v20 = v17[3];
    *&v68 = *v17;
    *(&v68 + 1) = v18;
    *&v69 = v19;
    *(&v69 + 1) = v20;
    LOBYTE(v59) = 3;
    sub_217B4FBF4();

    sub_217D89CAC();

    LODWORD(v68) = *(v3 + v12[8]);
    LOBYTE(v59) = 4;
    sub_217AD7710();
    sub_217D89CAC();
    v22 = (v3 + v12[9]);
    v23 = *v22;
    LOBYTE(v22) = *(v22 + 4);
    LODWORD(v68) = v23;
    BYTE4(v68) = v22;
    LOBYTE(v59) = 5;
    sub_217B4FFFC();
    sub_217D89C3C();
    v24 = (v3 + v12[10]);
    v25 = *(v24 + 1);
    v26 = *(v24 + 2);
    v78 = *v24;
    v79 = v25;
    v80 = v26;
    v77 = 6;
    sub_217A5BA2C();

    sub_217D89CAC();

    v27 = (v3 + v12[11]);
    v28 = v27[6];
    v29 = v27[4];
    v73 = v27[5];
    v74 = v28;
    v30 = v27[6];
    v31 = v27[8];
    v75 = v27[7];
    v76 = v31;
    v32 = v27[2];
    v33 = *v27;
    v69 = v27[1];
    v70 = v32;
    v34 = v27[2];
    v35 = v27[4];
    v71 = v27[3];
    v72 = v35;
    v36 = *v27;
    v65 = v30;
    v66 = v75;
    v67 = v27[8];
    v68 = v36;
    v61 = v34;
    v62 = v71;
    v63 = v29;
    v64 = v73;
    v59 = v33;
    v60 = v69;
    v58 = 7;
    sub_217AD87FC(&v68, v57);
    sub_217A5D3B4();
    sub_217D89C3C();
    v57[6] = v65;
    v57[7] = v66;
    v57[8] = v67;
    v57[2] = v61;
    v57[3] = v62;
    v57[4] = v63;
    v57[5] = v64;
    v57[0] = v59;
    v57[1] = v60;
    sub_217AD96E8(v57);
    v37 = (v3 + v12[12]);
    v38 = v37[1];
    v55[0] = *v37;
    v55[1] = v38;
    v40 = *v37;
    v39 = v37[1];
    v55[2] = v37[2];
    v56 = *(v37 + 48);
    v51 = v40;
    v52 = v39;
    v53 = v37[2];
    v54 = *(v37 + 48);
    v50 = 8;
    sub_217ACC004(v55, v48);
    sub_217A55B98();
    sub_217D89CAC();
    v48[0] = v51;
    v48[1] = v52;
    v48[2] = v53;
    v49 = v54;
    sub_217ACC69C(v48);
    v41 = (v3 + v12[13]);
    v42 = *v41;
    v43 = v41[1];
    LOBYTE(v41) = *(v41 + 16);
    v45 = v42;
    v46 = v43;
    v47 = v41;
    v44[7] = 9;
    sub_217AD7DEC();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B51B0C()
{
  result = qword_27CBA01A8;
  if (!qword_27CBA01A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA01A8);
  }

  return result;
}

uint64_t CustomItemExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_217D889CC();
  v55 = *(v3 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217D8899C();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v7);
  v58 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B525EC(0, &qword_27CBA01B0, MEMORY[0x277D844C8]);
  v59 = v10;
  v57 = *(v10 - 8);
  v11 = *(v57 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  v14 = type metadata accessor for CustomItemExposureEvent.Model(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_217B51B0C();
  v60 = v13;
  v20 = v79;
  sub_217D89E5C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v21 = v6;
  v22 = v57;
  v53 = v3;
  v52 = v14;
  v79 = v17;
  v71[0] = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v23 = v58;
  sub_217D89BCC();
  v24 = *(v56 + 32);
  v25 = v79;
  v58 = v7;
  v24(v79, v23);
  v71[0] = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v26 = v21;
  v27 = v53;
  sub_217D89BCC();
  v51 = 0;
  v28 = v26;
  v29 = v52;
  (*(v55 + 32))(&v25[v52[5]], v28, v27);
  LOBYTE(v66) = 2;
  sub_217A5E738();
  sub_217D89BCC();
  v30 = *&v71[8];
  v31 = *&v71[16];
  v32 = &v25[v29[6]];
  *v32 = *v71;
  *(v32 + 1) = v30;
  *(v32 + 8) = v31;
  LOBYTE(v66) = 3;
  sub_217B4FBA0();
  sub_217D89BCC();
  v33 = *&v71[16];
  v34 = &v25[v29[7]];
  *v34 = *v71;
  *(v34 + 1) = v33;
  LOBYTE(v66) = 4;
  sub_217AD76BC();
  sub_217D89BCC();
  *&v25[v29[8]] = *v71;
  LOBYTE(v66) = 5;
  sub_217B4FFA8();
  sub_217D89B5C();
  v35 = v71[4];
  v36 = &v25[v29[9]];
  *v36 = *v71;
  v36[4] = v35;
  LOBYTE(v66) = 6;
  sub_217A5B978();
  sub_217D89BCC();
  v37 = &v25[v29[10]];
  *v37 = v71[0];
  *(v37 + 8) = *&v71[8];
  v70 = 7;
  sub_217A5D308();
  sub_217D89B5C();
  v38 = &v79[v29[11]];
  v39 = v75;
  v40 = v77;
  v41 = v78;
  *(v38 + 6) = v76;
  *(v38 + 7) = v40;
  *(v38 + 8) = v41;
  v42 = v73;
  v43 = v74;
  *(v38 + 2) = v72;
  *(v38 + 3) = v42;
  *(v38 + 4) = v43;
  *(v38 + 5) = v39;
  v44 = *&v71[16];
  *v38 = *v71;
  *(v38 + 1) = v44;
  v65 = 8;
  sub_217A54D08();
  sub_217D89BCC();
  v45 = &v79[v29[12]];
  v46 = v67;
  *v45 = v66;
  *(v45 + 1) = v46;
  *(v45 + 2) = v68;
  v45[48] = v69;
  v62 = 9;
  sub_217AD7D98();
  sub_217D89B5C();
  (*(v22 + 8))(v60, v59);
  v47 = v64;
  v48 = v79;
  v49 = &v79[v52[13]];
  *v49 = v63;
  v49[16] = v47;
  sub_217B52650(v48, v54);
  __swift_destroy_boxed_opaque_existential_1(v61);
  return sub_217B526B4(v48);
}

void sub_217B525EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B51B0C();
    v7 = a3(a1, &type metadata for CustomItemExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B52650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomItemExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B526B4(uint64_t a1)
{
  v2 = type metadata accessor for CustomItemExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B527E8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B50710(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B50710(0, &qword_2811C8738, sub_217B4FBA0, sub_217B4FBF4);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217B50710(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_217B50710(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  sub_217B50710(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217B50710(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v20 - 8) + 104))(a2 + v19, v15, v20);
  v21 = a1[12];
  sub_217B50710(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217B50710(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v15, v24);
}

void sub_217B52CA4()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217B50710(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
      if (v2 <= 0x3F)
      {
        sub_217B50710(319, &qword_2811C8738, sub_217B4FBA0, sub_217B4FBF4);
        if (v3 <= 0x3F)
        {
          sub_217B50710(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
          if (v4 <= 0x3F)
          {
            sub_217B50710(319, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
            if (v5 <= 0x3F)
            {
              sub_217B50710(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
              if (v6 <= 0x3F)
              {
                sub_217B50710(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
                if (v7 <= 0x3F)
                {
                  sub_217B50710(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                  if (v8 <= 0x3F)
                  {
                    sub_217B50710(319, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC);
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

void sub_217B52FD0()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217D889CC();
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C29D8);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD178);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C7628);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217B5310C()
{
  result = qword_27CBA01C8;
  if (!qword_27CBA01C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA01C8);
  }

  return result;
}

unint64_t sub_217B53164()
{
  result = qword_27CBA01D0;
  if (!qword_27CBA01D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA01D0);
  }

  return result;
}

unint64_t sub_217B531BC()
{
  result = qword_27CBA01D8;
  if (!qword_27CBA01D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA01D8);
  }

  return result;
}

uint64_t sub_217B53210(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x74496D6F74737563 && a2 == 0xEE00617461446D65 || (sub_217D89D4C() & 1) != 0)
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

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x617373696D736964 && a2 == 0xED0000617461446CLL)
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

uint64_t sub_217B5355C()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_27CBA01E0);
  v1 = __swift_project_value_buffer(v0, qword_27CBA01E0);
  *v1 = 0x726F70732E6D6F63;
  *(v1 + 8) = 0xEA00000000007374;
  *(v1 + 16) = 6;
  *(v1 + 24) = 0;
  v2 = *MEMORY[0x277CEACB0];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_217B5364C()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_27CBA01F8);
  v1 = __swift_project_value_buffer(v0, qword_27CBA01F8);
  v2 = *MEMORY[0x277CEADB0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217B5370C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0210);
  __swift_project_value_buffer(v0, qword_27CBA0210);
  return sub_217D8866C();
}

uint64_t UnfollowSportsTagEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UnfollowSportsTagEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfollowSportsTagEvent(0) + 20);
  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfollowSportsTagEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfollowSportsTagEvent(0) + 20);
  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfollowSportsTagEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfollowSportsTagEvent(0) + 24);
  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfollowSportsTagEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfollowSportsTagEvent(0) + 24);
  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfollowSportsTagEvent.sportsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfollowSportsTagEvent(0) + 28);
  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfollowSportsTagEvent.sportsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfollowSportsTagEvent(0) + 28);
  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfollowSportsTagEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfollowSportsTagEvent(0) + 32);
  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfollowSportsTagEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfollowSportsTagEvent(0) + 32);
  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfollowSportsTagEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for UnfollowSportsTagEvent(0);
  v5 = v4[5];
  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t UnfollowSportsTagEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnfollowSportsTagEvent.Model(0) + 20));
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

uint64_t UnfollowSportsTagEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnfollowSportsTagEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t UnfollowSportsTagEvent.Model.sportsData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for UnfollowSportsTagEvent.Model(0) + 28));
}

uint64_t UnfollowSportsTagEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnfollowSportsTagEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 UnfollowSportsTagEvent.Model.init(eventData:userBundleSubscriptionContextData:tagData:sportsData:viewData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = *a4;
  v12 = *a5;
  v13 = a5[1];
  v14 = *(a5 + 8);
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = type metadata accessor for UnfollowSportsTagEvent.Model(0);
  v17 = a6 + v16[5];
  v18 = *(a2 + 16);
  *v17 = *a2;
  *(v17 + 16) = v18;
  result = *(a2 + 32);
  *(v17 + 32) = result;
  *(v17 + 48) = *(a2 + 48);
  v20 = (a6 + v16[6]);
  *v20 = v9;
  v20[1] = v10;
  *(a6 + v16[7]) = v11;
  v21 = a6 + v16[8];
  *v21 = v12;
  *(v21 + 8) = v13;
  *(v21 + 16) = v14;
  return result;
}

unint64_t sub_217B543E0()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x61746144676174;
  v4 = 0x61447374726F7073;
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
    v2 = 0xD000000000000021;
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

uint64_t sub_217B54488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B55648(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B544B0(uint64_t a1)
{
  v2 = sub_217B548E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B544EC(uint64_t a1)
{
  v2 = sub_217B548E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UnfollowSportsTagEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B54E40(0, &qword_27CBA0228, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B548E0();
  sub_217D89E7C();
  v39 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for UnfollowSportsTagEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[2];
    v15 = *v13;
    v16 = *v13;
    v36 = v13[1];
    v37 = v14;
    v35 = v15;
    v38 = *(v13 + 48);
    v31 = v16;
    v32 = v36;
    v33 = v13[2];
    v34 = *(v13 + 48);
    v30 = 1;
    sub_217ACC004(&v35, v28);
    sub_217A55B98();
    sub_217D89CAC();
    v28[0] = v31;
    v28[1] = v32;
    v28[2] = v33;
    v29 = v34;
    sub_217ACC69C(v28);
    v17 = (v3 + v12[6]);
    v18 = v17[1];
    v24 = *v17;
    v25 = v18;
    v27 = 2;
    sub_217AF6B14();

    sub_217D89CAC();

    v24 = *(v3 + v12[7]);
    v27 = 3;
    sub_217A61284();

    sub_217D89CAC();

    v20 = (v3 + v12[8]);
    v21 = *v20;
    v22 = v20[1];
    LOWORD(v20) = *(v20 + 8);
    v24 = v21;
    v25 = v22;
    v26 = v20;
    v27 = 4;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B548E0()
{
  result = qword_27CBA0230;
  if (!qword_27CBA0230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0230);
  }

  return result;
}

uint64_t UnfollowSportsTagEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_217D8899C();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B54E40(0, &qword_27CBA0238, MEMORY[0x277D844C8]);
  v33 = v7;
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for UnfollowSportsTagEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B548E0();
  v32 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v29;
  LOBYTE(v37) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v30;
  sub_217D89BCC();
  (*(v16 + 32))(v14, v17, v4);
  v42 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v18 = &v14[v11[5]];
  v19 = v38;
  *v18 = v37;
  *(v18 + 1) = v19;
  *(v18 + 2) = v39;
  v18[48] = v40;
  v41 = 2;
  sub_217AF6AC0();
  v30 = 0;
  sub_217D89BCC();
  v20 = v31;
  v21 = v35;
  v22 = &v14[v11[6]];
  *v22 = v34;
  *(v22 + 1) = v21;
  v41 = 3;
  sub_217A6120C();
  sub_217D89BCC();
  *&v14[v11[7]] = v34;
  v41 = 4;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v20 + 8))(v32, v33);
  v23 = v35;
  v24 = v36;
  v25 = &v14[v11[8]];
  *v25 = v34;
  *(v25 + 1) = v23;
  *(v25 + 8) = v24;
  sub_217B54EA4(v14, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B54F08(v14);
}

void sub_217B54E40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B548E0();
    v7 = a3(a1, &type metadata for UnfollowSportsTagEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B54EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnfollowSportsTagEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B54F08(uint64_t a1)
{
  v2 = type metadata accessor for UnfollowSportsTagEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B5503C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v14 = *(*(v13 - 8) + 104);

  return v14(a2 + v12, v4, v13);
}

void sub_217B552C4()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A62980(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
    if (v1 <= 0x3F)
    {
      sub_217A62980(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
      if (v2 <= 0x3F)
      {
        sub_217A62980(319, &qword_2811C8808, sub_217A6120C, sub_217A61284);
        if (v3 <= 0x3F)
        {
          sub_217A62980(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_217B55498()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217B55544()
{
  result = qword_27CBA0260;
  if (!qword_27CBA0260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0260);
  }

  return result;
}

unint64_t sub_217B5559C()
{
  result = qword_27CBA0268;
  if (!qword_27CBA0268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0268);
  }

  return result;
}

unint64_t sub_217B555F4()
{
  result = qword_27CBA0270;
  if (!qword_27CBA0270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0270);
  }

  return result;
}

uint64_t sub_217B55648(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61447374726F7073 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
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

NewsAnalytics::FeedJournalGroupResultOutput_optional __swiftcall FeedJournalGroupResultOutput.init(rawValue:)(Swift::String rawValue)
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

uint64_t FeedJournalGroupResultOutput.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 1885956979;
  if (v1 != 5)
  {
    v3 = 1701736302;
  }

  v4 = 1819242352;
  if (v1 != 3)
  {
    v4 = 0x646570706F7264;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1954047342;
  if (v1 != 1)
  {
    v5 = 1953718636;
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

unint64_t sub_217B5592C()
{
  result = qword_27CBA0278;
  if (!qword_27CBA0278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0278);
  }

  return result;
}

uint64_t sub_217B5598C()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

void sub_217B55A84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE400000000000000;
  v6 = 1885956979;
  v7 = 0xE400000000000000;
  if (v2 != 5)
  {
    v6 = 1701736302;
    v5 = 0xE400000000000000;
  }

  v8 = 1819242352;
  if (v2 != 3)
  {
    v8 = 0x646570706F7264;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 1954047342;
  if (v2 != 1)
  {
    v9 = 1953718636;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_217B55BF8()
{
  result = qword_2811BEB50;
  if (!qword_2811BEB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEB50);
  }

  return result;
}

__n128 sub_217B55C4C@<Q0>(uint64_t a1@<X8>)
{
  v3 = 0x6E776F6E6B6E75;
  v4 = [v1 widgetContentId];
  if (v4)
  {
    v5 = v4;
    v60 = sub_217D8954C();
    v61 = v6;
  }

  else
  {
    v60 = 0x6E776F6E6B6E75;
    v61 = 0xE700000000000000;
  }

  v7 = [v1 widgetEngagementType] - 1;
  if (v7 > 9)
  {
    v57 = 0;
  }

  else
  {
    v57 = byte_217D992EC[v7];
  }

  v8 = [v1 webEmbedId];
  if (v8)
  {
    v9 = v8;
    v10 = sub_217D8954C();
    v58 = v11;
    v59 = v10;
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  sub_217B55FF8(v63);
  sub_217B560B0(v65);
  v12 = [v1 sourceChannelId];
  if (v12)
  {
    v13 = v12;
    v55 = sub_217D8954C();
    v56 = v14;
  }

  else
  {
    v55 = 0x6E776F6E6B6E75;
    v56 = 0xE700000000000000;
  }

  v54 = [v1 contentFetchDate];
  v15 = [v1 widgetDisplayMode];
  v16 = [v1 contentId];
  if (v16)
  {
    v17 = v16;
    v18 = sub_217D8954C();
    v52 = v19;
    v53 = v18;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v20 = [v1 widgetUserId];
  if (v20)
  {
    v21 = v20;
    v50 = sub_217D8954C();
    v51 = v22;
  }

  else
  {
    v50 = 0x6E776F6E6B6E75;
    v51 = 0xE700000000000000;
  }

  v23 = [v1 engagementTargetUrl];
  if (v23)
  {
    v24 = v23;
    v3 = sub_217D8954C();
    v48 = v25;
  }

  else
  {
    v48 = 0xE700000000000000;
  }

  v62 = v3;
  v26 = [v1 widgetType];
  v27 = [v1 widgetExposureStackLocation];
  v28 = [v1 storyType];
  if (v28)
  {
    v29 = v28;
    v30 = sub_217D8954C();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v33 = [v1 entryId];
  if (v33)
  {
    v34 = v33;
    v35 = sub_217D8954C();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  if (v27 >= 6)
  {
    v38 = 0;
  }

  else
  {
    v38 = v27;
  }

  if (v26 >= 4)
  {
    LOBYTE(v26) = 0;
  }

  if (v15 >= 8)
  {
    v39 = 0;
  }

  else
  {
    v39 = 0x504030201000000uLL >> (8 * v15);
  }

  *a1 = v60;
  *(a1 + 8) = v61;
  *(a1 + 16) = v57;

  v40 = v63[4];
  *(a1 + 120) = v63[5];
  v41 = *v64;
  *(a1 + 136) = v63[6];
  *(a1 + 152) = v41;
  v42 = v63[0];
  *(a1 + 56) = v63[1];
  v43 = v63[3];
  *(a1 + 72) = v63[2];
  *(a1 + 88) = v43;
  *(a1 + 24) = v59;
  *(a1 + 32) = v58;
  *(a1 + 167) = *&v64[15];
  *(a1 + 104) = v40;
  *(a1 + 40) = v42;
  v44 = v65[7];
  *(a1 + 272) = v65[6];
  *(a1 + 288) = v44;
  *(a1 + 304) = v65[8];
  v45 = v65[3];
  *(a1 + 208) = v65[2];
  *(a1 + 224) = v45;
  v46 = v65[5];
  *(a1 + 240) = v65[4];
  *(a1 + 256) = v46;
  result = v65[1];
  *(a1 + 176) = v65[0];
  *(a1 + 192) = result;
  *(a1 + 320) = v55;
  *(a1 + 328) = v56;
  *(a1 + 336) = v54;
  *(a1 + 344) = v39;
  *(a1 + 352) = v53;
  *(a1 + 360) = v52;
  *(a1 + 368) = v50;
  *(a1 + 376) = v51;
  *(a1 + 384) = v62;
  *(a1 + 392) = v49;
  *(a1 + 400) = v26;
  *(a1 + 401) = v38;
  *(a1 + 408) = v30;
  *(a1 + 416) = v32;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0xE000000000000000;
  *(a1 + 440) = v35;
  *(a1 + 448) = v37;
  return result;
}

void sub_217B55FF8(uint64_t a1@<X8>)
{
  v3 = [v1 articleId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_217D8954C();
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 1;
  *(a1 + 120) = MEMORY[0x277D84F90];
  *(a1 + 131) = 0;
  *(a1 + 128) = 0;
}

uint64_t sub_217B560B0@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 widgetSectionId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_217D8954C();
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  v8 = [v1 widgetArticleCountInSection];
  v9 = [v1 widgetSectionDisplayRank];
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 28) = v9;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 5;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 1;

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_217B561F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x8000000217DCDE80 == a2)
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

uint64_t sub_217B56288(uint64_t a1)
{
  v2 = sub_217B5645C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B562C4(uint64_t a1)
{
  v2 = sub_217B5645C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppConfigPaywallData.encode(to:)(void *a1)
{
  sub_217B5669C(0, &qword_27CBA0280, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B5645C();
  sub_217D89E7C();
  v13 = v9;
  sub_217B564B0();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B5645C()
{
  result = qword_27CBA0288;
  if (!qword_27CBA0288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0288);
  }

  return result;
}

unint64_t sub_217B564B0()
{
  result = qword_27CBA0290;
  if (!qword_27CBA0290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0290);
  }

  return result;
}

uint64_t AppConfigPaywallData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B5669C(0, &qword_27CBA0298, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B5645C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B56700();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B5669C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B5645C();
    v7 = a3(a1, &type metadata for AppConfigPaywallData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B56700()
{
  result = qword_27CBA02A0;
  if (!qword_27CBA02A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA02A0);
  }

  return result;
}

unint64_t sub_217B56758()
{
  result = qword_27CBA02A8;
  if (!qword_27CBA02A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA02A8);
  }

  return result;
}

unint64_t sub_217B567B0()
{
  result = qword_27CBA02B0;
  if (!qword_27CBA02B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA02B0);
  }

  return result;
}

unint64_t sub_217B56858()
{
  result = qword_27CBA02B8;
  if (!qword_27CBA02B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA02B8);
  }

  return result;
}

unint64_t sub_217B568B0()
{
  result = qword_27CBA02C0;
  if (!qword_27CBA02C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA02C0);
  }

  return result;
}

unint64_t sub_217B56908()
{
  result = qword_27CBA02C8;
  if (!qword_27CBA02C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA02C8);
  }

  return result;
}

double static TabiData.unknown.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x6E776F6E6B6E75;
  *(a1 + 8) = 0xE700000000000000;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = v2;
  *(a1 + 32) = 0;
  memset(v4, 0, sizeof(v4));
  sub_217B569E0(v4);
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0x6E776F6E6B6E75;
  *(a1 + 112) = 0xE700000000000000;
  return result;
}

uint64_t sub_217B569E0(uint64_t a1)
{
  sub_217B56A3C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_217B56A3C()
{
  if (!qword_2811C2DE0)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C2DE0);
    }
  }
}

uint64_t sub_217B56B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F73616552646E65 && a2 == 0xE90000000000006ELL)
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

uint64_t sub_217B56B98(uint64_t a1)
{
  v2 = sub_217B56D6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B56BD4(uint64_t a1)
{
  v2 = sub_217B56D6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ViewEndData.encode(to:)(void *a1)
{
  sub_217B56FAC(0, &qword_2811BC828, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B56D6C();
  sub_217D89E7C();
  v13 = v9;
  sub_217B56DC0();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B56D6C()
{
  result = qword_2811C7B78;
  if (!qword_2811C7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7B78);
  }

  return result;
}

unint64_t sub_217B56DC0()
{
  result = qword_2811BD1C8;
  if (!qword_2811BD1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD1C8);
  }

  return result;
}

uint64_t ViewEndData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B56FAC(0, &qword_2811BCB20, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B56D6C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B57010();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B56FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B56D6C();
    v7 = a3(a1, &type metadata for ViewEndData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B57010()
{
  result = qword_2811BD1B8;
  if (!qword_2811BD1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD1B8);
  }

  return result;
}

unint64_t sub_217B57068()
{
  result = qword_2811C7B50;
  if (!qword_2811C7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7B50);
  }

  return result;
}

unint64_t sub_217B570C0()
{
  result = qword_2811C7B58;
  if (!qword_2811C7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7B58);
  }

  return result;
}

unint64_t sub_217B57168()
{
  result = qword_27CBA02D0;
  if (!qword_27CBA02D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA02D0);
  }

  return result;
}

unint64_t sub_217B571C0()
{
  result = qword_2811C7B68;
  if (!qword_2811C7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7B68);
  }

  return result;
}

unint64_t sub_217B57218()
{
  result = qword_2811C7B70;
  if (!qword_2811C7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7B70);
  }

  return result;
}

uint64_t AdGroupData.init(groupData:)@<X0>(_OWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[7];
  v8[6] = a1[6];
  v8[7] = v3;
  v8[8] = a1[8];
  v4 = a1[3];
  v8[2] = a1[2];
  v8[3] = v4;
  v5 = a1[5];
  v8[4] = a1[4];
  v8[5] = v5;
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  result = sub_217AF8104(v8);
  *a2 = BYTE1(v8[0]);
  return result;
}

uint64_t FeedJournalEntry.analyticsData.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_217D8917C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = (v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v65 = v48 - v9;
  v64 = sub_217D8915C();
  v10 = *(v64 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v64);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_217D8904C();
  v14 = *(v70 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v70);
  v69 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_217D8901C();
  v18 = *(v17 + 16);
  if (v18)
  {
    v48[1] = v1;
    v49 = a1;
    v75 = MEMORY[0x277D84F90];
    v19 = v17;
    sub_217B2C764(0, v18, 0);
    v71 = v75;
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v63 = v21;
    v22 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v48[0] = v19;
    v23 = v19 + v22;
    v58 = *(v20 + 56);
    v66 = (v4 + 8);
    v62 = (v4 + 88);
    v61 = *MEMORY[0x277D32AE8];
    v54 = *MEMORY[0x277D32AE0];
    v53 = *MEMORY[0x277D32AF8];
    v52 = *MEMORY[0x277D32B08];
    v51 = *MEMORY[0x277D32B00];
    v55 = (v4 + 96);
    v57 = (v10 + 8);
    v56 = (v20 - 8);
    v50 = *MEMORY[0x277D32AF0];
    v59 = v20;
    v60 = v3;
    while (1)
    {
      v63(v69, v23, v70);
      sub_217D8903C();
      v24 = v65;
      sub_217D8913C();
      v25 = sub_217D8916C();
      v67 = v26;
      v68 = v25;
      v27 = *v66;
      (*v66)(v24, v3);
      sub_217D8914C();
      v28 = v73;
      if (v73)
      {
        v29 = v74;
        __swift_project_boxed_opaque_existential_1(v72, v73);
        v30 = *(v29 + 8);
        v28 = sub_217D8900C();
        v32 = v31;
        __swift_destroy_boxed_opaque_existential_1(v72);
      }

      else
      {
        sub_217B57E68(v72);
        v32 = 0;
      }

      sub_217D8913C();
      v33 = (*v62)(v8, v3);
      if (v33 == v61)
      {
        (*v55)(v8, v3);
        __swift_destroy_boxed_opaque_existential_1(v8);
        v34 = 1;
      }

      else if (v33 == v54)
      {
        (*v55)(v8, v3);
        __swift_destroy_boxed_opaque_existential_1(v8);
        v34 = 2;
      }

      else if (v33 == v53)
      {
        (*v55)(v8, v3);
        __swift_destroy_boxed_opaque_existential_1(v8);
        v34 = 3;
      }

      else if (v33 == v52)
      {
        (*v55)(v8, v3);
        v35 = v8[7];

        __swift_destroy_boxed_opaque_existential_1(v8);
        v34 = 4;
      }

      else if (v33 == v51)
      {
        v27(v8, v3);
        v34 = 5;
      }

      else
      {
        v36 = v33;
        v27(v8, v3);
        v34 = v36 == v50 ? 6 : 0;
      }

      result = sub_217D8912C();
      v39 = v38;
      if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v38 <= -9.22337204e18)
      {
        goto LABEL_32;
      }

      if (v38 >= 9.22337204e18)
      {
        goto LABEL_33;
      }

      v40 = v32;
      v41 = v28;
      (*v57)(v13, v64);
      (*v56)(v69, v70);
      v42 = v71;
      v75 = v71;
      v44 = *(v71 + 16);
      v43 = *(v71 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_217B2C764((v43 > 1), v44 + 1, 1);
        v42 = v75;
      }

      *(v42 + 16) = v44 + 1;
      v71 = v42;
      v45 = v42 + 48 * v44;
      v46 = v67;
      *(v45 + 32) = v68;
      *(v45 + 40) = v46;
      *(v45 + 48) = v41;
      *(v45 + 56) = v40;
      *(v45 + 64) = v34;
      *(v45 + 72) = v39;
      v23 += v58;
      --v18;
      v3 = v60;
      if (!v18)
      {

        a1 = v49;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v71 = MEMORY[0x277D84F90];
LABEL_27:
  result = sub_217D8902C();
  if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v47 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v47 < 9.22337204e18)
  {
    *a1 = v71;
    a1[1] = v47;
    return result;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t FeedJournalGroup.analyticsData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_217D8915C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D8903C();
  FeedJournalGroupResult.analyticsData.getter(a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t FeedJournalGroupResult.analyticsData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_217D8917C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D8913C();
  v7 = sub_217D8916C();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  sub_217D8914C();
  v10 = v20;
  if (v20)
  {
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v12 = *(v11 + 8);
    v10 = sub_217D8900C();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    sub_217B57E68(v19);
    v14 = 0;
  }

  sub_217B57C24(v19);
  v15 = v19[0];
  result = sub_217D8912C();
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v17 < 9.22337204e18)
  {
    *a1 = v7;
    *(a1 + 8) = v9;
    *(a1 + 16) = v10;
    *(a1 + 24) = v14;
    *(a1 + 32) = v15;
    *(a1 + 40) = v17;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_217B57C24@<X0>(char *a1@<X8>)
{
  v2 = sub_217D8917C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217D8913C();
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D32AE8])
  {
    (*(v3 + 96))(v6, v2);
    v8 = 1;
LABEL_9:
    *a1 = v8;
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  if (v7 == *MEMORY[0x277D32AE0])
  {
    (*(v3 + 96))(v6, v2);
    v8 = 2;
    goto LABEL_9;
  }

  if (v7 == *MEMORY[0x277D32AF8])
  {
    (*(v3 + 96))(v6, v2);
    v8 = 3;
    goto LABEL_9;
  }

  if (v7 == *MEMORY[0x277D32B08])
  {
    (*(v3 + 96))(v6, v2);
    v9 = v6[7];

    v8 = 4;
    goto LABEL_9;
  }

  if (v7 == *MEMORY[0x277D32B00])
  {
    result = (*(v3 + 8))(v6, v2);
    *a1 = 5;
  }

  else if (v7 == *MEMORY[0x277D32AF0])
  {
    result = (*(v3 + 8))(v6, v2);
    *a1 = 6;
  }

  else
  {
    *a1 = 0;
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_217B57E68(uint64_t a1)
{
  sub_217B57EC4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_217B57EC4()
{
  if (!qword_2811BCEF0)
  {
    sub_217B57F1C();
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCEF0);
    }
  }
}

unint64_t sub_217B57F1C()
{
  result = qword_2811BCEF8;
  if (!qword_2811BCEF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2811BCEF8);
  }

  return result;
}

uint64_t sub_217B58048()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811BF098);
  __swift_project_value_buffer(v0, qword_2811BF098);
  return sub_217D8866C();
}

uint64_t JourneyMessageFailureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t JourneyMessageFailureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageFailureEvent(0) + 20);
  sub_217A629FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageFailureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageFailureEvent(0) + 20);
  sub_217A629FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageFailureEvent.dialogStyleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageFailureEvent(0) + 24);
  sub_217A629FC(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageFailureEvent.dialogStyleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageFailureEvent(0) + 24);
  sub_217A629FC(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageFailureEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageFailureEvent(0) + 28);
  sub_217A629FC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageFailureEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageFailureEvent(0) + 28);
  sub_217A629FC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageFailureEvent.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageFailureEvent(0) + 32);
  sub_217A629FC(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageFailureEvent.placementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageFailureEvent(0) + 32);
  sub_217A629FC(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageFailureEvent.journeyMessageFailureReasonData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageFailureEvent(0) + 36);
  sub_217A629FC(0, &qword_2811C8518, sub_217B5890C, sub_217B58960);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B5890C()
{
  result = qword_2811BDF50;
  if (!qword_2811BDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDF50);
  }

  return result;
}

unint64_t sub_217B58960()
{
  result = qword_2811BDF58;
  if (!qword_2811BDF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDF58);
  }

  return result;
}

uint64_t JourneyMessageFailureEvent.journeyMessageFailureReasonData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageFailureEvent(0) + 36);
  sub_217A629FC(0, &qword_2811C8518, sub_217B5890C, sub_217B58960);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageFailureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for JourneyMessageFailureEvent(0);
  v5 = v4[5];
  sub_217A629FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A629FC(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217A629FC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217A629FC(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217A629FC(0, &qword_2811C8518, sub_217B5890C, sub_217B58960);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t JourneyMessageFailureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageFailureEvent.Model(0) + 20));
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

uint64_t JourneyMessageFailureEvent.Model.dialogStyleData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JourneyMessageFailureEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t JourneyMessageFailureEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageFailureEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t JourneyMessageFailureEvent.Model.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JourneyMessageFailureEvent.Model(0) + 32);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v6;
}

uint64_t JourneyMessageFailureEvent.Model.journeyMessageFailureReasonData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JourneyMessageFailureEvent.Model(0) + 36);
  v4 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v4;
}

__n128 JourneyMessageFailureEvent.Model.init(eventData:userBundleSubscriptionContextData:dialogStyleData:purchaseData:placementData:journeyMessageFailureReasonData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a3;
  v12 = *a4;
  v13 = a4[1];
  v14 = *(a4 + 16);
  v15 = *a5;
  v16 = a5[1];
  v28 = *a6;
  v27 = *(a6 + 1);
  v17 = sub_217D8899C();
  v25 = *(a5 + 2);
  v26 = *(a5 + 1);
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for JourneyMessageFailureEvent.Model(0);
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
  *(v21 + 16) = v14;
  v22 = a7 + v18[8];
  *v22 = v15;
  *(v22 + 8) = v16;
  result = v26;
  *(v22 + 16) = v26;
  *(v22 + 32) = v25;
  v24 = a7 + v18[9];
  *v24 = v28;
  *(v24 + 8) = v27;
  return result;
}

uint64_t sub_217B590B0()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6573616863727570;
  v4 = 0x6E656D6563616C70;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001FLL;
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

uint64_t sub_217B59194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B5A62C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B591BC(uint64_t a1)
{
  v2 = sub_217B596D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B591F8(uint64_t a1)
{
  v2 = sub_217B596D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JourneyMessageFailureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B59CDC(0, &qword_27CBA02D8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v28 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B596D4();
  sub_217D89E7C();
  v46 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for JourneyMessageFailureEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[2];
    v15 = *v13;
    v16 = *v13;
    v43 = v13[1];
    v44 = v14;
    v42 = v15;
    v45 = *(v13 + 48);
    v38 = v16;
    v17 = v13[2];
    v39 = v43;
    v40 = v17;
    v41 = *(v13 + 48);
    v37 = 1;
    sub_217ACC004(&v42, v35);
    sub_217A55B98();
    sub_217D89CAC();
    v35[0] = v38;
    v35[1] = v39;
    v35[2] = v40;
    v36 = v41;
    sub_217ACC69C(v35);
    LOBYTE(v29) = *(v3 + v12[6]);
    v34 = 2;
    sub_217AFEA44();
    sub_217D89CAC();
    v18 = (v3 + v12[7]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v18) = *(v18 + 16);
    v29 = v19;
    v30 = v20;
    LOBYTE(v31) = v18;
    v34 = 3;
    sub_217AFF378();

    sub_217D89C3C();

    v21 = (v3 + v12[8]);
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[5];
    v29 = *v21;
    v30 = v22;
    v31 = v23;
    v32 = *(v21 + 3);
    v33 = v24;
    v34 = 4;
    sub_217AFEC9C();

    sub_217D89CAC();

    v26 = v3 + v12[9];
    v27 = *(v26 + 8);
    LOBYTE(v29) = *v26;
    v30 = v27;
    v34 = 5;
    sub_217B58960();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B596D4()
{
  result = qword_27CBA02E0;
  if (!qword_27CBA02E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA02E0);
  }

  return result;
}

uint64_t JourneyMessageFailureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_217D8899C();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B59CDC(0, &qword_27CBA02E8, MEMORY[0x277D844C8]);
  v9 = *(v8 - 8);
  v34 = v8;
  v35 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for JourneyMessageFailureEvent.Model(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_217B596D4();
  v36 = v12;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v19 = v33;
  LOBYTE(v41) = 0;
  sub_217A602A0(&qword_2811C8408);
  v20 = v34;
  sub_217D89BCC();
  (*(v19 + 32))(v16, v7, v4);
  v46 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v21 = &v16[v13[5]];
  v22 = v42;
  *v21 = v41;
  *(v21 + 1) = v22;
  *(v21 + 2) = v43;
  v21[48] = v44;
  v45 = 2;
  sub_217AFE9F0();
  sub_217D89BCC();
  v23 = v35;
  v16[v13[6]] = v38;
  v45 = 3;
  sub_217AFF324();
  sub_217D89B5C();
  v24 = v39;
  v25 = &v16[v13[7]];
  *v25 = v38;
  v25[16] = v24;
  v45 = 4;
  sub_217AFEC48();
  sub_217D89BCC();
  v26 = *(&v38 + 1);
  v27 = &v16[v13[8]];
  *v27 = v38;
  *(v27 + 1) = v26;
  v28 = v40;
  *(v27 + 1) = v39;
  *(v27 + 2) = v28;
  v45 = 5;
  sub_217B5890C();
  sub_217D89BCC();
  (*(v23 + 8))(v36, v20);
  v29 = *(&v38 + 1);
  v30 = &v16[v13[9]];
  *v30 = v38;
  *(v30 + 1) = v29;
  sub_217B59D40(v16, v32);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return sub_217B59DA4(v16);
}

void sub_217B59CDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B596D4();
    v7 = a3(a1, &type metadata for JourneyMessageFailureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B59D40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JourneyMessageFailureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B59DA4(uint64_t a1)
{
  v2 = type metadata accessor for JourneyMessageFailureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B59ED8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A629FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A629FC(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217A629FC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217A629FC(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217A629FC(0, &qword_2811C8518, sub_217B5890C, sub_217B58960);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

void sub_217B5A1EC()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A629FC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
    if (v1 <= 0x3F)
    {
      sub_217A629FC(319, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
      if (v2 <= 0x3F)
      {
        sub_217A629FC(319, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
        if (v3 <= 0x3F)
        {
          sub_217A629FC(319, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
          if (v4 <= 0x3F)
          {
            sub_217A629FC(319, &qword_2811C8518, sub_217B5890C, sub_217B58960);
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

void sub_217B5A410()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217B5A4C4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_217B5A4C4()
{
  if (!qword_27CB9F108)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB9F108);
    }
  }
}

unint64_t sub_217B5A528()
{
  result = qword_27CBA0300;
  if (!qword_27CBA0300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0300);
  }

  return result;
}

unint64_t sub_217B5A580()
{
  result = qword_27CBA0308;
  if (!qword_27CBA0308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0308);
  }

  return result;
}

unint64_t sub_217B5A5D8()
{
  result = qword_27CBA0310;
  if (!qword_27CBA0310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0310);
  }

  return result;
}

uint64_t sub_217B5A62C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xED00006174614474 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000217DCDEA0 == a2)
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

uint64_t sub_217B5A878()
{
  v1 = *v0;
  if (qword_27CB9DB70 != -1)
  {
    swift_once();
  }

  v2 = [v0[2] possiblyUnfetchedAppConfiguration];
  if ([v2 respondsToSelector_])
  {
    v3 = [v2 sportsPrivacyConfiguration];
    swift_unknownObjectRelease();
    [v3 isHeadlineExposureTrackingDisabled];
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_217A635A8();

  return sub_217D87DEC();
}

void sub_217B5A9A4()
{
  v1 = *v0;
  if (qword_2811C8C10 != -1)
  {
    swift_once();
  }

  sub_217A635A8();
  sub_217D87DCC();
  if (v4 <= 1u && !v4)
  {
    v2 = [v0[2] possiblyUnfetchedAppConfiguration];
    if ([v2 respondsToSelector_])
    {
      v3 = [v2 sportsPrivacyConfiguration];
      swift_unknownObjectRelease();
      [v3 headlineExposureNoiseRate];
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_217B5AB04()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

char *sub_217B5AC1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_217B2D054(0, &qword_27CBA0338);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_217B5AD14(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_217B2D054(0, &qword_2811BC428);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217B5AE24(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_217B2D054(0, &qword_27CBA0318);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_217B5AF48(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_217B5B6C4(0, &qword_2811BC468, sub_217B5B080);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_217B5B080();
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_217B5B080()
{
  result = qword_2811C8460;
  if (!qword_2811C8460)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2811C8460);
  }

  return result;
}

char *sub_217B5B0E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_217B2D054(0, &qword_27CBA0330);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_217B5B224(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_217B5B6C4(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_217B5B404(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_217B2D054(0, &qword_27CBA0340);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217B5B528(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_217B5B6C4(0, &qword_27CBA0320, sub_217B5B718);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_217B5B63C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_217B2D054(0, &qword_2811BC428);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void sub_217B5B6C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_217D89D0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_217B5B718()
{
  if (!qword_27CBA0328)
  {
    v0 = sub_217D897AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA0328);
    }
  }
}

uint64_t MobileData.carrier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobileData.carrier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MobileData.countryCode.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MobileData.countryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MobileData.networkCode.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MobileData.networkCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall MobileData.init(carrier:countryCode:networkCode:)(NewsAnalytics::MobileData *__return_ptr retstr, Swift::String carrier, Swift::String countryCode, Swift::String networkCode)
{
  retstr->carrier = carrier;
  retstr->countryCode = countryCode;
  retstr->networkCode = networkCode;
}

uint64_t sub_217B5B920()
{
  v1 = 0x437972746E756F63;
  if (*v0 != 1)
  {
    v1 = 0x436B726F7774656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656972726163;
  }
}

uint64_t sub_217B5B98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B5C124(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B5B9B4(uint64_t a1)
{
  v2 = sub_217B5BBDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B5B9F0(uint64_t a1)
{
  v2 = sub_217B5BBDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileData.encode(to:)(void *a1)
{
  sub_217B5BEB8(0, &qword_2811BC898, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16[3] = v1[3];
  v16[4] = v11;
  v12 = v1[4];
  v16[1] = v1[5];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B5BBDC();
  sub_217D89E7C();
  v19 = 0;
  v14 = v16[5];
  sub_217D89C6C();
  if (!v14)
  {
    v18 = 1;
    sub_217D89C6C();
    v17 = 2;
    sub_217D89C6C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B5BBDC()
{
  result = qword_2811C7F70;
  if (!qword_2811C7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F70);
  }

  return result;
}

uint64_t MobileData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217B5BEB8(0, &qword_27CBA0348, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B5BBDC();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v25 = v12;
  v27 = 1;
  v23 = sub_217D89B8C();
  v24 = v15;
  v26 = 2;
  v16 = sub_217D89B8C();
  v18 = v17;
  v19 = v16;
  (*(v7 + 8))(v10, v6);
  v20 = v24;
  *a2 = v25;
  a2[1] = v14;
  a2[2] = v23;
  a2[3] = v20;
  a2[4] = v19;
  a2[5] = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B5BEB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B5BBDC();
    v7 = a3(a1, &type metadata for MobileData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B5BF20()
{
  result = qword_2811C7F50;
  if (!qword_2811C7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F50);
  }

  return result;
}

unint64_t sub_217B5BF78()
{
  result = qword_2811C7F58;
  if (!qword_2811C7F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F58);
  }

  return result;
}

unint64_t sub_217B5C020()
{
  result = qword_27CBA0350;
  if (!qword_27CBA0350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0350);
  }

  return result;
}

unint64_t sub_217B5C078()
{
  result = qword_2811C7F60;
  if (!qword_2811C7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F60);
  }

  return result;
}

unint64_t sub_217B5C0D0()
{
  result = qword_2811C7F68;
  if (!qword_2811C7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F68);
  }

  return result;
}

uint64_t sub_217B5C124(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656972726163 && a2 == 0xE700000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x436B726F7774656ELL && a2 == 0xEB0000000065646FLL)
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

uint64_t sub_217B5C310()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C1FD0);
  __swift_project_value_buffer(v0, qword_2811C1FD0);
  return sub_217D8866C();
}

uint64_t HeadlineScoringEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HeadlineScoringEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HeadlineScoringEvent.scoringData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineScoringEvent(0) + 20);
  sub_217B5C52C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B5C52C()
{
  if (!qword_2811C8610)
  {
    sub_217B5C594();
    sub_217B5C5E8();
    v0 = sub_217D8829C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8610);
    }
  }
}

unint64_t sub_217B5C594()
{
  result = qword_2811C2A08;
  if (!qword_2811C2A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A08);
  }

  return result;
}

unint64_t sub_217B5C5E8()
{
  result = qword_2811C2A10;
  if (!qword_2811C2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A10);
  }

  return result;
}

uint64_t HeadlineScoringEvent.scoringData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineScoringEvent(0) + 20);
  sub_217B5C52C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineScoringEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineScoringEvent(0) + 24);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineScoringEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF0];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for HeadlineScoringEvent(0);
  v5 = *(v4 + 20);
  v6 = *MEMORY[0x277CEACF8];
  sub_217B5C52C();
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = *(v4 + 24);
  sub_217A608E0();
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v8, v6, v9);
}

void sub_217B5C938()
{
  if (!qword_2811C8400)
  {
    sub_217D8899C();
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8400);
    }
  }
}

void *HeadlineScoringEvent.Model.scoringData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for HeadlineScoringEvent.Model(0) + 20));

  return memcpy(a1, v3, 0x190uLL);
}

uint64_t sub_217B5CA24@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t HeadlineScoringEvent.Model.init(eventData:scoringData:timedData:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_217B5CB54(a1, a4);
  v7 = type metadata accessor for HeadlineScoringEvent.Model(0);
  memcpy((a4 + *(v7 + 20)), a2, 0x190uLL);
  v8 = *(v7 + 24);
  v9 = sub_217D889CC();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4 + v8, a3, v9);
}

uint64_t sub_217B5CB54(uint64_t a1, uint64_t a2)
{
  sub_217B5C938();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B5CBB8()
{
  v1 = 0x44676E69726F6373;
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

uint64_t sub_217B5CC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B5D964(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B5CC44(uint64_t a1)
{
  v2 = sub_217B5CF28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B5CC80(uint64_t a1)
{
  v2 = sub_217B5CF28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HeadlineScoringEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B5D3C4(0, &qword_27CBA0358, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16[-v9 - 8];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B5CF28();
  sub_217D89E7C();
  v16[423] = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89C3C();
  if (!v2)
  {
    v12 = type metadata accessor for HeadlineScoringEvent.Model(0);
    memcpy(v16, (v3 + *(v12 + 20)), 0x190uLL);
    v16[422] = 1;
    sub_217B5C5E8();
    sub_217D89CAC();
    v13 = *(v12 + 24);
    v16[0] = 2;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B5CF28()
{
  result = qword_27CBA0360;
  if (!qword_27CBA0360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0360);
  }

  return result;
}

uint64_t HeadlineScoringEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = sub_217D889CC();
  v26 = *(v28 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B5C938();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v30 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B5D3C4(0, &qword_27CBA0368, MEMORY[0x277D844C8]);
  v32 = v9;
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = type metadata accessor for HeadlineScoringEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B5CF28();
  v31 = v12;
  v18 = v33;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v29;
  v20 = v16;
  v21 = v5;
  sub_217D8899C();
  v34[0] = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v22 = v30;
  sub_217D89B5C();
  sub_217B5CB54(v22, v20);
  v34[423] = 1;
  sub_217B5C594();
  sub_217D89BCC();
  memcpy((v20 + *(v13 + 20)), v34, 0x190uLL);
  v34[422] = 2;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v33 = v21;
  v23 = v28;
  sub_217D89BCC();
  (*(v19 + 8))(v31, v32);
  (*(v26 + 32))(v20 + *(v13 + 24), v33, v23);
  sub_217B5D428(v20, v27, type metadata accessor for HeadlineScoringEvent.Model);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B5D490(v20, type metadata accessor for HeadlineScoringEvent.Model);
}

void sub_217B5D3C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B5CF28();
    v7 = a3(a1, &type metadata for HeadlineScoringEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B5D428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_217B5D490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217B5D5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF0];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = *MEMORY[0x277CEACF8];
  sub_217B5C52C();
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = *(a1 + 24);
  sub_217A608E0();
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v9, v7, v10);
}

void sub_217B5D6FC()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217B5C52C();
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

void sub_217B5D7C0()
{
  sub_217B5C938();
  if (v0 <= 0x3F)
  {
    sub_217D889CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_217B5D860()
{
  result = qword_27CBA0380;
  if (!qword_27CBA0380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0380);
  }

  return result;
}

unint64_t sub_217B5D8B8()
{
  result = qword_27CBA0388;
  if (!qword_27CBA0388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0388);
  }

  return result;
}

unint64_t sub_217B5D910()
{
  result = qword_27CBA0390;
  if (!qword_27CBA0390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0390);
  }

  return result;
}

uint64_t sub_217B5D964(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44676E69726F6373 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
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

uint64_t PuzzleRevealData.revealType.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

NewsAnalytics::PuzzleRevealData __swiftcall PuzzleRevealData.init(revealType:)(Swift::OpaquePointer_optional revealType)
{
  rawValue = revealType.value._rawValue;
  v3 = v1;

  *v3 = rawValue;
  result.revealType.value._rawValue = v4;
  result.revealType.is_nil = v5;
  return result;
}

uint64_t sub_217B5DB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x79546C6165766572 && a2 == 0xEA00000000006570)
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

uint64_t sub_217B5DBC8(uint64_t a1)
{
  v2 = sub_217B5DDE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B5DC04(uint64_t a1)
{
  v2 = sub_217B5DDE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PuzzleRevealData.encode(to:)(void *a1)
{
  sub_217B5E0B0(0, &qword_27CBA0398, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B5DDE8();

  sub_217D89E7C();
  v12[1] = v9;
  sub_217B5DE3C();
  sub_217B5E114(&qword_27CBA03B0, sub_217B5DE8C);
  sub_217D89C3C();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B5DDE8()
{
  result = qword_27CBA03A0;
  if (!qword_27CBA03A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA03A0);
  }

  return result;
}

void sub_217B5DE3C()
{
  if (!qword_27CBA03A8)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA03A8);
    }
  }
}

unint64_t sub_217B5DE8C()
{
  result = qword_27CBA03B8;
  if (!qword_27CBA03B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA03B8);
  }

  return result;
}

uint64_t PuzzleRevealData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217B5E0B0(0, &qword_27CBA03C0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B5DDE8();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B5DE3C();
    sub_217B5E114(&qword_27CBA03C8, sub_217B5E180);
    sub_217D89B5C();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B5E0B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B5DDE8();
    v7 = a3(a1, &type metadata for PuzzleRevealData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B5E114(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_217B5DE3C();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217B5E180()
{
  result = qword_27CBA03D0;
  if (!qword_27CBA03D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA03D0);
  }

  return result;
}

unint64_t sub_217B5E1D8()
{
  result = qword_2811C4D68;
  if (!qword_2811C4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4D68);
  }

  return result;
}

unint64_t sub_217B5E230()
{
  result = qword_2811C4D70;
  if (!qword_2811C4D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4D70);
  }

  return result;
}

uint64_t sub_217B5E2B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_217B5E310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_217B5E384()
{
  result = qword_27CBA03D8;
  if (!qword_27CBA03D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA03D8);
  }

  return result;
}

unint64_t sub_217B5E3DC()
{
  result = qword_27CBA03E0;
  if (!qword_27CBA03E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA03E0);
  }

  return result;
}

unint64_t sub_217B5E434()
{
  result = qword_27CBA03E8;
  if (!qword_27CBA03E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA03E8);
  }

  return result;
}

uint64_t FeedGroupLayoutFailureDiagnosticsData.message.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FeedGroupLayoutFailureDiagnosticsData.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217B5E538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
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

uint64_t sub_217B5E5C0(uint64_t a1)
{
  v2 = sub_217B5E784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B5E5FC(uint64_t a1)
{
  v2 = sub_217B5E784();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedGroupLayoutFailureDiagnosticsData.encode(to:)(void *a1)
{
  sub_217B5E95C(0, &qword_27CBA03F0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B5E784();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B5E784()
{
  result = qword_27CBA03F8;
  if (!qword_27CBA03F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA03F8);
  }

  return result;
}

uint64_t FeedGroupLayoutFailureDiagnosticsData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217B5E95C(0, &qword_27CBA0400, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B5E784();
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

void sub_217B5E95C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B5E784();
    v7 = a3(a1, &type metadata for FeedGroupLayoutFailureDiagnosticsData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B5E9C4()
{
  result = qword_27CBA0408;
  if (!qword_27CBA0408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0408);
  }

  return result;
}

unint64_t sub_217B5EA1C()
{
  result = qword_27CBA0410;
  if (!qword_27CBA0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0410);
  }

  return result;
}

uint64_t sub_217B5EA88(void *a1)
{
  sub_217B5E95C(0, &qword_27CBA03F0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B5E784();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B5EBF8()
{
  result = qword_27CBA0418;
  if (!qword_27CBA0418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0418);
  }

  return result;
}

unint64_t sub_217B5EC50()
{
  result = qword_27CBA0420;
  if (!qword_27CBA0420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0420);
  }

  return result;
}

unint64_t sub_217B5ECA8()
{
  result = qword_27CBA0428;
  if (!qword_27CBA0428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0428);
  }

  return result;
}

uint64_t sub_217B5EDC4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0460);
  __swift_project_value_buffer(v0, qword_27CBA0460);
  return sub_217D8866C();
}

uint64_t PuzzleViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PuzzleViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 20);
  sub_217B60198(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 20);
  sub_217B60198(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.puzzleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 24);
  sub_217B60198(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleViewEvent.puzzleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 24);
  sub_217B60198(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 28);
  sub_217B60198(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleViewEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 28);
  sub_217B60198(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 32);
  sub_217B60198(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 32);
  sub_217B60198(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 36);
  sub_217B60198(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleViewEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 36);
  sub_217B60198(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 40);
  sub_217B60198(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleViewEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 40);
  sub_217B60198(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 44);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 48);
  sub_217B60198(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleViewEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 48);
  sub_217B60198(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 52);
  sub_217B60198(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 52);
  sub_217B60198(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 56);
  sub_217B60198(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleViewEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 56);
  sub_217B60198(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.puzzleRevealData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 60);
  sub_217B60198(0, &qword_2811C86A8, sub_217B5E1D8, sub_217B5E230);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleViewEvent.puzzleRevealData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 60);
  sub_217B60198(0, &qword_2811C86A8, sub_217B5E1D8, sub_217B5E230);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.puzzleStatsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 64);
  sub_217B60198(0, &qword_2811C86E0, sub_217B2D930, sub_217B2D988);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B60198(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t PuzzleViewEvent.puzzleStatsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 64);
  sub_217B60198(0, &qword_2811C86E0, sub_217B2D930, sub_217B2D988);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PuzzleViewEvent(0);
  v5 = v4[5];
  sub_217B60198(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B60198(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217B60198(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217B60198(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217B60198(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_217B60198(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v17 - 8) + 104))(a1 + v16, v10, v17);
  v18 = v4[11];
  sub_217A608E0();
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217B60198(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_217B60198(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217B60198(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  (*(*(v25 - 8) + 104))(a1 + v24, v10, v25);
  v26 = v4[15];
  sub_217B60198(0, &qword_2811C86A8, sub_217B5E1D8, sub_217B5E230);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_217B60198(0, &qword_2811C86E0, sub_217B2D930, sub_217B2D988);
  v30 = *(*(v29 - 8) + 104);

  return v30(a1 + v28, v10, v29);
}

uint64_t PuzzleViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleViewEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t PuzzleViewEvent.Model.puzzleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleViewEvent.Model(0) + 24));
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

uint64_t PuzzleViewEvent.Model.channelData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleViewEvent.Model(0) + 28));
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

uint64_t PuzzleViewEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleViewEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t PuzzleViewEvent.Model.userChannelContextData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for PuzzleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t PuzzleViewEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleViewEvent.Model(0) + 40));
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

uint64_t sub_217B60B80@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 44);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t PuzzleViewEvent.Model.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for PuzzleViewEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t PuzzleViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PuzzleViewEvent.Model(0) + 52);
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

uint64_t PuzzleViewEvent.Model.paywallData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for PuzzleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t PuzzleViewEvent.Model.puzzleRevealData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for PuzzleViewEvent.Model(0) + 60));
}

uint64_t PuzzleViewEvent.Model.puzzleStatsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PuzzleViewEvent.Model(0) + 64);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(v3 + 48);

  return sub_217B60D8C(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_217B60D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
  }

  return result;
}

__n128 PuzzleViewEvent.Model.init(eventData:viewData:puzzleData:channelData:feedData:userChannelContextData:groupData:timedData:feedPositionData:userBundleSubscriptionContextData:paywallData:puzzleRevealData:puzzleStatsData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, int *a6@<X5>, _OWORD *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int *a10, uint64_t a11, __int16 *a12, uint64_t *a13, uint64_t a14)
{
  v19 = *a2;
  v20 = a2[1];
  v21 = *(a2 + 8);
  v44 = *(a4 + 4);
  v46 = *a5;
  v45 = *(a5 + 2);
  v47 = *a6;
  v49 = *(a10 + 4);
  v50 = *a10;
  v52 = *a12;
  v53 = *a13;
  v56 = *(a14 + 40);
  v57 = *(a14 + 32);
  v55 = *(a14 + 48);
  v22 = sub_217D8899C();
  v51 = *a14;
  v48 = *(a14 + 16);
  v42 = a4[1];
  v43 = *a4;
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = type metadata accessor for PuzzleViewEvent.Model(0);
  v24 = a9 + v23[5];
  *v24 = v19;
  *(v24 + 8) = v20;
  *(v24 + 16) = v21;
  v25 = (a9 + v23[6]);
  v26 = a3[3];
  v25[2] = a3[2];
  v25[3] = v26;
  v25[4] = a3[4];
  v27 = a3[1];
  *v25 = *a3;
  v25[1] = v27;
  v28 = a9 + v23[7];
  *v28 = v43;
  *(v28 + 16) = v42;
  *(v28 + 32) = v44;
  v29 = a9 + v23[8];
  *v29 = v46;
  *(v29 + 16) = v45;
  *(a9 + v23[9]) = v47;
  v30 = (a9 + v23[10]);
  v31 = a7[7];
  v30[6] = a7[6];
  v30[7] = v31;
  v30[8] = a7[8];
  v32 = a7[3];
  v30[2] = a7[2];
  v30[3] = v32;
  v33 = a7[5];
  v30[4] = a7[4];
  v30[5] = v33;
  v34 = a7[1];
  *v30 = *a7;
  v30[1] = v34;
  v35 = v23[11];
  v36 = sub_217D889CC();
  (*(*(v36 - 8) + 32))(a9 + v35, a8, v36);
  v37 = a9 + v23[12];
  *v37 = v50;
  *(v37 + 4) = v49;
  v38 = a9 + v23[13];
  v39 = *(a11 + 16);
  *v38 = *a11;
  *(v38 + 16) = v39;
  *(v38 + 32) = *(a11 + 32);
  *(v38 + 48) = *(a11 + 48);
  *(a9 + v23[14]) = v52;
  *(a9 + v23[15]) = v53;
  v40 = a9 + v23[16];
  result = v51;
  *v40 = v51;
  *(v40 + 16) = v48;
  *(v40 + 32) = v57;
  *(v40 + 40) = v56;
  *(v40 + 48) = v55;
  return result;
}

uint64_t sub_217B61000(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      v3 = 2003134838;
      return v3 | 0x6174614400000000;
    case 2:
      return 0x6144656C7A7A7570;
    case 3:
      v4 = 0x656E6E616863;
      goto LABEL_14;
    case 4:
      v3 = 1684366694;
      return v3 | 0x6174614400000000;
    case 5:
      return 0xD000000000000016;
    case 6:
      return 0x74614470756F7267;
    case 7:
      return 0x74614464656D6974;
    case 8:
      return 0xD000000000000010;
    case 9:
      return 0xD000000000000021;
    case 10:
      v4 = 0x6C6177796170;
LABEL_14:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x7453656C7A7A7570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217B61178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B63300(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B611A0(uint64_t a1)
{
  v2 = sub_217B619F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B611DC(uint64_t a1)
{
  v2 = sub_217B619F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PuzzleViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B625AC(0, &qword_27CBA0478, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v55 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B619F4();
  sub_217D89E7C();
  LOBYTE(v87) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for PuzzleViewEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = *v13;
    v15 = v13[1];
    LOWORD(v13) = *(v13 + 8);
    v111 = v14;
    v112 = v15;
    v113 = v13;
    v110 = 1;
    sub_217A5E790();

    sub_217D89CAC();

    v16 = (v3 + v12[6]);
    v17 = v16[2];
    v18 = *v16;
    v106 = v16[1];
    v107 = v17;
    v19 = v16[2];
    v20 = v16[4];
    v108 = v16[3];
    v109 = v20;
    v21 = *v16;
    v102 = v19;
    v103 = v108;
    v104 = v16[4];
    v105 = v21;
    v100 = v18;
    v101 = v106;
    v99 = 2;
    sub_217AD85B8(&v105, &v87);
    sub_217AD6D08();
    sub_217D89CAC();
    v98[2] = v102;
    v98[3] = v103;
    v98[4] = v104;
    v98[0] = v100;
    v98[1] = v101;
    sub_217AD9650(v98);
    v22 = (v3 + v12[7]);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    v26 = v22[4];
    *&v87 = *v22;
    *(&v87 + 1) = v23;
    *&v88 = v24;
    *(&v88 + 1) = v25;
    *&v89 = v26;
    LOBYTE(v78) = 3;
    sub_217AD86BC(v87, v23);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v87, *(&v87 + 1));
    v27 = (v3 + v12[8]);
    v28 = v27[1];
    v29 = v27[2];
    *&v87 = *v27;
    *(&v87 + 1) = v28;
    *&v88 = v29;
    LOBYTE(v78) = 4;
    sub_217AD1A68(v87, v28, v29);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v87, *(&v87 + 1), v88);
    v97 = *(v3 + v12[9]);
    v96 = 5;
    sub_217ACFB8C();
    sub_217D89C3C();
    v30 = (v3 + v12[10]);
    v31 = v30[6];
    v32 = v30[4];
    v92 = v30[5];
    v93 = v31;
    v33 = v30[6];
    v34 = v30[8];
    v94 = v30[7];
    v95 = v34;
    v35 = v30[2];
    v36 = *v30;
    v88 = v30[1];
    v89 = v35;
    v37 = v30[2];
    v38 = v30[4];
    v90 = v30[3];
    v91 = v38;
    v39 = *v30;
    v84 = v33;
    v85 = v94;
    v86 = v30[8];
    v87 = v39;
    v80 = v37;
    v81 = v90;
    v82 = v32;
    v83 = v92;
    v78 = v36;
    v79 = v88;
    v77 = 6;
    sub_217AD87FC(&v87, v76);
    sub_217A5D3B4();
    sub_217D89C3C();
    v76[6] = v84;
    v76[7] = v85;
    v76[8] = v86;
    v76[2] = v80;
    v76[3] = v81;
    v76[4] = v82;
    v76[5] = v83;
    v76[0] = v78;
    v76[1] = v79;
    sub_217AD96E8(v76);
    v114 = v12[11];
    LOBYTE(v71[0]) = 7;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v40 = (v3 + v12[12]);
    v41 = *v40;
    LOBYTE(v40) = *(v40 + 4);
    v74 = v41;
    v75 = v40;
    v73 = 8;
    sub_217AD7710();
    sub_217D89C3C();
    v42 = (v3 + v12[13]);
    v43 = v42[1];
    v71[0] = *v42;
    v71[1] = v43;
    v45 = *v42;
    v44 = v42[1];
    v71[2] = v42[2];
    v72 = *(v42 + 48);
    v67 = v45;
    v46 = v42[2];
    v68 = v44;
    v69 = v46;
    v70 = *(v42 + 48);
    v66 = 9;
    sub_217ACC004(v71, v64);
    sub_217A55B98();
    sub_217D89CAC();
    v64[0] = v67;
    v64[1] = v68;
    v64[2] = v69;
    v65 = v70;
    sub_217ACC69C(v64);
    LOWORD(v56) = *(v3 + v12[14]);
    v63 = 10;
    sub_217B1DEE8();
    sub_217D89C3C();
    v56 = *(v3 + v12[15]);
    v63 = 11;
    sub_217B5E230();

    sub_217D89CAC();

    v47 = v3 + v12[16];
    v48 = *(v47 + 8);
    v49 = *(v47 + 16);
    v50 = *(v47 + 24);
    v51 = *(v47 + 32);
    v52 = *(v47 + 40);
    v53 = *(v47 + 48);
    v56 = *v47;
    v57 = v48;
    v58 = v49;
    v59 = v50;
    v60 = v51;
    v61 = v52;
    v62 = v53;
    v63 = 12;
    sub_217B60D8C(v56, v48, v49, v50, v51, v52);
    sub_217B2D988();
    sub_217D89C3C();
    sub_217B61A48(v56, v57, v58, v59, v60, v61);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B619F4()
{
  result = qword_27CBA0480;
  if (!qword_27CBA0480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0480);
  }

  return result;
}

uint64_t sub_217B61A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
  }

  return result;
}

uint64_t PuzzleViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_217D889CC();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v56 = *(v6 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B625AC(0, &qword_27CBA0488, MEMORY[0x277D844C8]);
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = *(v58 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - v11;
  v13 = type metadata accessor for PuzzleViewEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B619F4();
  v60 = v12;
  v18 = v61;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v61 = v13;
  v51 = v16;
  LOBYTE(v75) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v19 = v57;
  sub_217D89BCC();
  v20 = *(v56 + 32);
  v21 = v51;
  v57 = v6;
  v20(v51, v19, v6);
  LOBYTE(v70) = 1;
  sub_217A5E738();
  sub_217D89BCC();
  v50 = 0;
  v22 = *(&v75 + 1);
  v23 = v76;
  v24 = v61;
  v25 = &v21[v61[5]];
  *v25 = v75;
  *(v25 + 1) = v22;
  *(v25 + 8) = v23;
  v87 = 2;
  sub_217AD6CB4();
  sub_217D89BCC();
  v26 = &v21[v24[6]];
  v27 = v73;
  *(v26 + 2) = v72;
  *(v26 + 3) = v27;
  *(v26 + 4) = v74;
  v28 = v71;
  *v26 = v70;
  *(v26 + 1) = v28;
  LOBYTE(v66) = 3;
  sub_217AD07F8();
  sub_217D89B5C();
  v29 = v77;
  v30 = &v21[v24[7]];
  v31 = v76;
  *v30 = v75;
  *(v30 + 1) = v31;
  *(v30 + 4) = v29;
  LOBYTE(v66) = 4;
  sub_217A5B978();
  sub_217D89B5C();
  v32 = v76;
  v33 = &v21[v24[8]];
  *v33 = v75;
  *(v33 + 2) = v32;
  LOBYTE(v66) = 5;
  sub_217ACFB38();
  sub_217D89B5C();
  *&v21[v24[9]] = v75;
  v86 = 6;
  sub_217A5D308();
  sub_217D89B5C();
  v34 = &v21[v24[10]];
  v35 = v82;
  *(v34 + 6) = v81;
  *(v34 + 7) = v35;
  *(v34 + 8) = v83;
  v36 = v78;
  *(v34 + 2) = v77;
  *(v34 + 3) = v36;
  v37 = v80;
  *(v34 + 4) = v79;
  *(v34 + 5) = v37;
  v38 = v76;
  *v34 = v75;
  *(v34 + 1) = v38;
  LOBYTE(v66) = 7;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v39 = v55;
  sub_217D89BCC();
  (*(v54 + 32))(&v21[v24[11]], v53, v39);
  LOBYTE(v62) = 8;
  sub_217AD76BC();
  sub_217D89B5C();
  v40 = BYTE4(v66);
  v41 = &v21[v61[12]];
  *v41 = v66;
  v41[4] = v40;
  v85 = 9;
  sub_217A54D08();
  sub_217D89BCC();
  v42 = &v51[v61[13]];
  v43 = v67;
  *v42 = v66;
  *(v42 + 1) = v43;
  *(v42 + 2) = v68;
  v42[48] = v69;
  v84 = 10;
  sub_217B1DE94();
  sub_217D89B5C();
  *&v51[v61[14]] = v62;
  v84 = 11;
  sub_217B5E1D8();
  sub_217D89BCC();
  *&v51[v61[15]] = v62;
  v84 = 12;
  sub_217B2D930();
  sub_217D89B5C();
  (*(v58 + 8))(v60, v59);
  v44 = v65;
  v46 = v51;
  v45 = v52;
  v47 = &v51[v61[16]];
  v48 = v63;
  *v47 = v62;
  *(v47 + 1) = v48;
  *(v47 + 2) = v64;
  v47[48] = v44;
  sub_217B62610(v46, v45);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B62674(v46);
}