uint64_t MentionEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9065D8, &qword_2146F4438);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EC650();
  sub_2146DAA28();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v20) = 0;
  sub_2146DA328();
  if (!v2)
  {
    v13 = v3[3];
    v14 = v3[4];
    v15 = v3[5];
    v16 = v3[6];
    v20 = v3[2];
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v24 = v16;
    v19[7] = 1;
    sub_2142EC784(v20, v13, v14, v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9065C8, &qword_2146F4430);
    sub_2142EC7E0();
    sub_2146DA388();
    sub_2142EC728(v20, v21, v22, v23, v24);
    v17 = *(type metadata accessor for MentionEvent(0) + 24);
    LOBYTE(v20) = 2;
    sub_2146D8958();
    sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260]);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_214113F88(uint64_t a1)
{
  v2 = sub_2142EC864();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214113FC4(uint64_t a1)
{
  v2 = sub_2142EC864();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214114000@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v21 = a2;
  v4 = sub_2146D8958();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9065E8, &qword_2146F4440);
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v22);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EC864();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v4;
    v15 = v21;
    v25 = 0;
    sub_2142EC8B8();
    v16 = v22;
    sub_2146DA1C8();
    v23 = v26;
    v24 = 1;
    sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260]);
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v16);
    v17 = type metadata accessor for MembershipEvent(0);
    (*(v20 + 32))(&v15[*(v17 + 20)], v7, v14);
    *v15 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141142B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906600, &qword_2146F4448);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EC864();
  sub_2146DAA28();
  v13[15] = *v3;
  v13[14] = 0;
  sub_2142EC90C();
  sub_2146DA388();
  if (!v2)
  {
    v11 = *(type metadata accessor for MembershipEvent(0) + 20);
    v13[13] = 1;
    sub_2146D8958();
    sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260]);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2141144E4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  v6 = *(a3(0) + 20);
  v7 = sub_2146D8958();
  return (*(*(v7 - 8) + 32))(&a4[v6], a2, v7);
}

uint64_t sub_21411456C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6867696C68676968 && a2 == 0xEC0000004C525574)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_21411464C(uint64_t a1)
{
  v2 = sub_2142EC960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214114688(uint64_t a1)
{
  v2 = sub_2142EC960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141146C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v21 = a2;
  v4 = sub_2146D8958();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906610, &qword_2146F4450);
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v22);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EC960();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v4;
    v15 = v21;
    v25 = 0;
    sub_2142EC9B4();
    v16 = v22;
    sub_2146DA1C8();
    v23 = v26;
    v24 = 1;
    sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260]);
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v16);
    v17 = type metadata accessor for PersistenceEvent(0);
    (*(v20 + 32))(&v15[*(v17 + 20)], v7, v14);
    *v15 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21411497C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906628, &qword_2146F4458);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EC960();
  sub_2146DAA28();
  v13[15] = *v3;
  v13[14] = 0;
  sub_2142ECA08();
  sub_2146DA388();
  if (!v2)
  {
    v11 = *(type metadata accessor for PersistenceEvent(0) + 20);
    v13[13] = 1;
    sub_2146D8958();
    sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260]);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_214114B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  v9 = type metadata accessor for CollaborationNotice(0);
  sub_214328704(a4, &a6[*(v9 + 24)], type metadata accessor for CollaborationHighlightEvent);
  v10 = *(v9 + 28);
  v11 = sub_2146D8B08();
  return (*(*(v11 - 8) + 32))(&a6[v10], a5, v11);
}

uint64_t sub_214114C34()
{
  v1 = 0x6E6F6973726576;
  v2 = 0x6867696C68676968;
  if (*v0 != 2)
  {
    v2 = 0x6144656369746F6ELL;
  }

  if (*v0)
  {
    v1 = 0x6972745364697567;
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

uint64_t sub_214114CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214363C04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214114CE8(uint64_t a1)
{
  v2 = sub_2142ECA5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214114D24(uint64_t a1)
{
  v2 = sub_2142ECA5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214114D60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  v30 = sub_2146D8B08();
  v28 = *(v30 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CollaborationHighlightEvent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906638, &qword_2146F4460);
  v29 = *(v31 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = &v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECA5C();
  v14 = v32;
  sub_2146DAA08();
  if (v14)
  {
    v24 = a1;
  }

  else
  {
    v32 = a1;
    v15 = v29;
    v16 = v30;
    v36 = 0;
    v17 = sub_2146DA1A8();
    v35 = 1;
    v25 = sub_2146DA168();
    v26 = v19;
    v34 = 2;
    sub_214328930(&qword_27C906648, type metadata accessor for CollaborationHighlightEvent);
    sub_2146DA1C8();
    v33 = 3;
    sub_214328930(&qword_280B34D28, MEMORY[0x277CC9578]);
    sub_2146DA1C8();
    (*(v15 + 8))(v12, v31);
    v20 = type metadata accessor for CollaborationNotice(0);
    v21 = v27;
    sub_214328704(v9, v27 + *(v20 + 24), type metadata accessor for CollaborationHighlightEvent);
    (*(v28 + 32))(v21 + *(v20 + 28), v5, v16);
    v23 = v25;
    v22 = v26;
    *v21 = v17;
    v21[1] = v23;
    v21[2] = v22;
    v24 = v32;
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_214115160(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906650, &qword_2146F4468);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECA5C();
  sub_2146DAA28();
  v11 = *v3;
  v18[15] = 0;
  sub_2146DA368();
  if (!v2)
  {
    v13 = v3[1];
    v14 = v3[2];
    v18[14] = 1;
    sub_2146DA328();
    v15 = type metadata accessor for CollaborationNotice(0);
    v16 = *(v15 + 24);
    v18[13] = 2;
    type metadata accessor for CollaborationHighlightEvent(0);
    sub_214328930(&qword_27C906658, type metadata accessor for CollaborationHighlightEvent);
    sub_2146DA388();
    v17 = *(v15 + 28);
    v18[12] = 3;
    sub_2146D8B08();
    sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578]);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

_BYTE *sub_214115424@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_214115434()
{
  if (*v0)
  {
    result = 0x6972745364697567;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_214115470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6972745364697567 && a2 == 0xEB0000000073676ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_214115550(uint64_t a1)
{
  v2 = sub_2142ECAB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411558C(uint64_t a1)
{
  v2 = sub_2142ECAB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141155C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906660, &qword_2146F4470);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECAB0();
  sub_2146DAA08();
  if (!v2)
  {
    v16 = 0;
    sub_2142ECB04();
    sub_2146DA1C8();
    v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    v15 = 1;
    sub_2142E15CC();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12 = v14[1];
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141157B4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906678, &qword_2146F4478);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[0] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECAB0();
  sub_2146DAA28();
  v15 = v9;
  v14 = 0;
  sub_2142ECB58();
  sub_2146DA388();
  if (!v2)
  {
    v12[1] = v12[0];
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_214115998(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

uint64_t sub_2141159A4()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
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

uint64_t sub_214115A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214363D7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214115A2C(uint64_t a1)
{
  v2 = sub_2142ECBAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214115A68(uint64_t a1)
{
  v2 = sub_2142ECBAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214115AA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906688, &qword_2146F4480);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECBAC();
  sub_2146DAA08();
  if (!v2)
  {
    v24 = 0;
    sub_2146DA188();
    v12 = v11;
    v23 = 1;
    sub_2146DA188();
    v14 = v13;
    v22 = 2;
    sub_2146DA188();
    v17 = v16;
    v21 = 3;
    sub_2146DA188();
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v17;
    a2[3] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214115C98(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906698, &qword_2146F4488);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-v7];
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECBAC();
  sub_2146DAA28();
  v15[15] = 0;
  sub_2146DA348();
  if (!v2)
  {
    v15[14] = 1;
    sub_2146DA348();
    v15[13] = 2;
    sub_2146DA348();
    v15[12] = 3;
    sub_2146DA348();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_214115E9C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *a1;
  v5 = type metadata accessor for CombinedPluginAttachment();
  return sub_214328704(a2, a3 + *(v5 + 20), type metadata accessor for BalloonPlugin.Payload);
}

uint64_t sub_214115F04()
{
  if (*v0)
  {
    result = 0x64616F6C796170;
  }

  else
  {
    result = 0x656D686361747461;
  }

  *v0;
  return result;
}

uint64_t sub_214115F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D686361747461 && a2 == 0xEB0000000073746ELL;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_214116028(uint64_t a1)
{
  v2 = sub_2142ECC00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214116064(uint64_t a1)
{
  v2 = sub_2142ECC00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141160A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for BalloonPlugin.Payload(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9066A0, &qword_2146F4490);
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v20);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECC00();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v22 = 0;
    sub_2142E514C();
    v14 = v20;
    sub_2146DA1C8();
    v18 = v23;
    v21 = 1;
    sub_214328930(&qword_27C904778, type metadata accessor for BalloonPlugin.Payload);
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v14);
    v15 = type metadata accessor for CombinedPluginAttachment();
    v16 = v19;
    sub_214328704(v7, v19 + *(v15 + 20), type metadata accessor for BalloonPlugin.Payload);
    *v16 = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214116334(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9066B0, &qword_2146F4498);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECC00();
  sub_2146DAA28();
  v14 = *v3;
  v13[7] = 0;
  sub_2142E5450();

  sub_2146DA388();

  if (!v2)
  {
    v11 = *(type metadata accessor for CombinedPluginAttachment() + 20);
    v13[6] = 1;
    type metadata accessor for BalloonPlugin.Payload(0);
    sub_214328930(&qword_27C904780, type metadata accessor for BalloonPlugin.Payload);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_214116548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t a1, char *a2)@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void, void)@<X7>, uint64_t (**a9)(uint64_t a1, char *a2)@<X8>)
{
  v58 = a8;
  v56 = a6;
  v57 = a7;
  v60 = a5;
  v55 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v52 - v15);
  sub_21469CFCC(a9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2140676DC;
  *(v18 + 24) = 0;
  *(inited + 32) = v18;
  sub_214042B80(inited, &v62);
  v19 = v63;
  v20 = v64;
  v21 = v65;
  v22 = type metadata accessor for CombinedPluginAttachmentInfo();
  v23 = (a9 + v22[5]);
  *v23 = a2;
  v23[1] = a3;
  v24 = a9 + v22[6];
  *v24 = v62;
  *(v24 + 2) = v19;
  *(v24 + 3) = v20;
  v24[32] = v21;
  v25 = v57;
  *(a9 + v22[7]) = v56;
  v26 = (a9 + v22[8]);
  v27 = v58;
  *v26 = v25;
  v26[1] = v27;
  sub_213FB2E54(a9, v16, &unk_27C9131D0, &qword_2146EAA70);
  v28 = *v16;
  v29 = v16[1];
  LOBYTE(v61[0]) = *(v16 + *(v13 + 32));
  *&v62 = 0xD00000000000002ALL;
  *(&v62 + 1) = 0x800000021478DCC0;
  v63 = 0xD00000000000001CLL;
  v64 = 0x800000021478A360;
  v30 = v59;
  v31 = v28(a1, v61, &v62);
  if (v30)
  {

    v32 = sub_2146D8958();
    (*(*(v32 - 8) + 8))(a1, v32);

LABEL_6:
    sub_21402EDB8(v16, a9, &unk_27C9131D0, &qword_2146EAA70);
    return sub_21432887C(a9, type metadata accessor for CombinedPluginAttachmentInfo);
  }

  if ((v31 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD00000000000002ALL;
    v42[1] = 0x800000021478DCC0;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();
    v43 = sub_2146D8958();
    (*(*(v43 - 8) + 8))(a1, v43);
    goto LABEL_6;
  }

  v33 = *(v13 + 28);
  sub_213FB2DF4(v16 + v33, &unk_27C9131A0, &unk_2146E9D10);
  v34 = sub_2146D8958();
  v35 = *(v34 - 8);
  v36 = *(v35 + 16);
  v59 = a1;
  v36(v16 + v33, a1, v34);
  v37 = *(v35 + 56);
  v57 = v34;
  v37(v16 + v33, 0, 1, v34);
  sub_21402EDB8(v16, a9, &unk_27C9131D0, &qword_2146EAA70);
  v39 = *v24;
  v38 = *(v24 + 1);
  v40 = *(v24 + 3);
  v53 = *(v24 + 2);
  v54 = v40;
  v41 = v24[32];
  v61[0] = v55;
  v61[1] = v60;
  LODWORD(v56) = v41;
  v66 = v41;
  *&v62 = 0xD000000000000024;
  *(&v62 + 1) = 0x800000021478DCF0;
  v63 = 0xD00000000000001CLL;
  v64 = 0x800000021478A360;

  v58 = v39;
  if ((v39(v61, &v66, &v62) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v48 = 0xD000000000000024;
    v48[1] = 0x800000021478DCF0;
    v48[2] = 0xD00000000000001CLL;
    v48[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v35 + 8))(v59, v57);
    v49 = *(v24 + 1);
    v50 = *(v24 + 3);

    *v24 = v58;
    *(v24 + 1) = v38;
    v51 = v54;
    *(v24 + 2) = v53;
    *(v24 + 3) = v51;
    v24[32] = v56;
    return sub_21432887C(a9, type metadata accessor for CombinedPluginAttachmentInfo);
  }

  (*(v35 + 8))(v59, v57);
  v45 = *(v24 + 1);
  v46 = *(v24 + 3);

  *v24 = v58;
  *(v24 + 1) = v38;
  v47 = v60;
  *(v24 + 2) = v55;
  *(v24 + 3) = v47;
  v24[32] = v56;
  return result;
}

uint64_t sub_214116AA4(uint64_t a1)
{
  v2 = sub_2142ECC54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214116AE0(uint64_t a1)
{
  v2 = sub_2142ECC54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214116B1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v3 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v76 = (&v65 - v4);
  v5 = sub_2146D8958();
  v77 = *(v5 - 8);
  v6 = *(v77 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9066B8, &qword_2146F44A0);
  v78 = *(v9 - 8);
  v10 = *(v78 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v65 - v11;
  v13 = type metadata accessor for CombinedPluginAttachmentInfo();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v17 = a1[4];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2142ECC54();
  v19 = v79;
  sub_2146DAA08();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v80);
  }

  v79 = v13;
  v73 = v16;
  v20 = v78;
  LOBYTE(v82) = 0;
  sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260]);
  sub_2146DA1C8();
  v21 = v12;
  LOBYTE(v81[0]) = 1;
  v22 = sub_21406116C();
  sub_2146DA1C8();
  v71 = v22;
  v72 = v8;
  v23 = v82;
  LOBYTE(v82) = 2;
  v24 = sub_2146DA168();
  v69 = v23;
  v68 = v24;
  v70 = v26;
  LOBYTE(v82) = 3;
  v27 = sub_2146DA1B8();
  LOBYTE(v81[0]) = 4;
  sub_2146DA1C8();
  v28 = v69;
  v71 = v5;
  v66 = *(&v82 + 1);
  v67 = v82;
  v29 = v73;
  sub_21469CFCC(v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_2140676DC;
  *(v31 + 24) = 0;
  *(inited + 32) = v31;
  sub_214042B80(inited, &v82);
  v32 = v84;
  v33 = v79;
  v34 = (v29 + *(v79 + 20));
  v35 = *(&v69 + 1);
  *v34 = v28;
  v34[1] = v35;
  v36 = v29 + v33[6];
  v37 = v83;
  *v36 = v82;
  *(v36 + 1) = v37;
  v36[32] = v32;
  *(v29 + v33[7]) = v27;
  v38 = (v29 + v33[8]);
  v39 = v66;
  *v38 = v67;
  v38[1] = v39;
  v40 = v29;
  v41 = v76;
  sub_213FB2E54(v40, v76, &unk_27C9131D0, &qword_2146EAA70);
  v42 = *v41;
  v43 = *(v41 + 8);
  LOBYTE(v81[0]) = *(v41 + *(v75 + 32));
  *&v82 = 0xD00000000000002ALL;
  *(&v82 + 1) = 0x800000021478DCC0;
  *&v83 = 0xD00000000000001CLL;
  *(&v83 + 1) = 0x800000021478A360;
  v44 = v42(v72, v81, &v82);
  v79 = v36;
  if (v44)
  {

    v45 = v76;
    v46 = *(v75 + 28);
    sub_213FB2DF4(v76 + v46, &unk_27C9131A0, &unk_2146E9D10);
    v47 = v77;
    v48 = v71;
    (*(v77 + 16))(v45 + v46, v72, v71);
    (*(v47 + 56))(v45 + v46, 0, 1, v48);
    v49 = v73;
    sub_21402EDB8(v45, v73, &unk_27C9131D0, &qword_2146EAA70);
    v51 = *v79;
    v50 = *(v79 + 8);
    v52 = *(v79 + 24);
    *&v69 = *(v79 + 16);
    v53 = *(v79 + 32);
    v81[0] = v68;
    v81[1] = v70;
    LODWORD(v75) = v53;
    v85 = v53;
    *&v82 = 0xD000000000000024;
    *(&v82 + 1) = 0x800000021478DCF0;
    *&v83 = 0xD00000000000001CLL;
    *(&v83 + 1) = 0x800000021478A360;
    *(&v69 + 1) = v52;

    v76 = v51;
    v54 = (v51)(v81, &v85, &v82);
    if (v54)
    {

      (*(v77 + 8))(v72, v71);
      (*(v78 + 8))(v21, v9);
      v56 = v79;
      v57 = *(v79 + 8);
      v58 = *(v79 + 24);

      *v56 = v76;
      *(v56 + 8) = v50;
      v59 = v70;
      *(v56 + 16) = v68;
      *(v56 + 24) = v59;
      *(v56 + 32) = v75;
      sub_214328704(v49, v74, type metadata accessor for CombinedPluginAttachmentInfo);
      return __swift_destroy_boxed_opaque_existential_1(v80);
    }

    sub_214031C4C();
    swift_allocError();
    *v60 = 0xD000000000000024;
    v60[1] = 0x800000021478DCF0;
    v60[2] = 0xD00000000000001CLL;
    v60[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v77 + 8))(v72, v71);
    (*(v78 + 8))(v21, v9);
    v61 = v79;
    v62 = *(v79 + 8);
    v63 = *(v79 + 24);

    *v61 = v76;
    *(v61 + 8) = v50;
    v64 = *(&v69 + 1);
    *(v61 + 16) = v69;
    *(v61 + 24) = v64;
    *(v61 + 32) = v75;
  }

  else
  {

    sub_214031C4C();
    swift_allocError();
    *v55 = 0xD00000000000002ALL;
    v55[1] = 0x800000021478DCC0;
    v55[2] = 0xD00000000000001CLL;
    v55[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v77 + 8))(v72, v71);
    (*(v20 + 8))(v21, v9);
    v49 = v73;
    sub_21402EDB8(v76, v73, &unk_27C9131D0, &qword_2146EAA70);
  }

  __swift_destroy_boxed_opaque_existential_1(v80);
  return sub_21432887C(v49, type metadata accessor for CombinedPluginAttachmentInfo);
}

uint64_t sub_214117504(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - v4;
  v6 = sub_2146D8958();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9066C8, &qword_2146F44A8);
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECC54();
  sub_2146DAA28();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v17 = v29;
  sub_213FB2E54(v29 + *(v16 + 28), v5, &unk_27C9131A0, &unk_2146E9D10);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_213FB2DF4(v5, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    LOBYTE(v32) = 0;
    sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260]);
    v18 = v30;
    sub_2146DA388();
    if (v18)
    {
      (*(v7 + 8))(v10, v6);
      return (*(v31 + 8))(v14, v11);
    }

    (*(v7 + 8))(v10, v6);
    v20 = type metadata accessor for CombinedPluginAttachmentInfo();
    v21 = (v17 + v20[5]);
    v22 = v21[1];
    v32 = *v21;
    v33 = v22;
    v34 = 1;
    sub_21402D9F8(v32, v22);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v32, v33);
    v23 = v17 + v20[6];
    if (*(v23 + 24))
    {
      v24 = *(v23 + 16);
      LOBYTE(v32) = 2;

      sub_2146DA328();

      v25 = *(v17 + v20[7]);
      LOBYTE(v32) = 3;
      sub_2146DA378();
      v26 = (v17 + v20[8]);
      v27 = v26[1];
      v32 = *v26;
      v33 = v27;
      v34 = 4;
      sub_21402D9F8(v32, v27);
      sub_2146DA388();
      sub_213FB54FC(v32, v33);
      return (*(v31 + 8))(v14, v11);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214117A0C(uint64_t a1)
{
  v2 = sub_2142ECCA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214117A48(uint64_t a1)
{
  v2 = sub_2142ECCA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214117A84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9066D0, &qword_2146F44B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECCA8();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21407D890();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214117BF0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9066E0, &qword_2146F44B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECCA8();
  sub_2146DAA28();
  v12 = v8;
  sub_21407D8E4();
  sub_2146DA388();
  return (*(v4 + 8))(v7, v3);
}

__n128 sub_214117D6C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_214117DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x49746361746E6F63 && a2 == 0xEB000000006F666ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_214117E3C(uint64_t a1)
{
  v2 = sub_2142ECCFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214117E78(uint64_t a1)
{
  v2 = sub_2142ECCFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214117EB4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9066E8, &qword_2146F44C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECCFC();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2142ECD50();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v11 = v15[5];
    a2[4] = v15[4];
    a2[5] = v11;
    a2[6] = v15[6];
    v12 = v15[1];
    *a2 = v15[0];
    a2[1] = v12;
    v13 = v15[3];
    a2[2] = v15[2];
    a2[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21411803C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906700, &qword_2146F44C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = v1[5];
  v25 = v1[4];
  v26 = v8;
  v27 = v1[6];
  v9 = v1[1];
  v21 = *v1;
  v22 = v9;
  v10 = v1[3];
  v23 = v1[2];
  v24 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECDA4(&v21, &v14);
  sub_2142ECCFC();
  sub_2146DAA28();
  v18 = v25;
  v19 = v26;
  v20 = v27;
  v14 = v21;
  v15 = v22;
  v16 = v23;
  v17 = v24;
  sub_2142ECE00();
  sub_2146DA388();
  v13[4] = v18;
  v13[5] = v19;
  v13[6] = v20;
  v13[0] = v14;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = v17;
  sub_2142ECE54(v13);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_214118230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_214328704(a1, a3, type metadata accessor for Metadata);
  v5 = *(type metadata accessor for CrossServiceAssociationMessage() + 20);
  v6 = sub_2146D8B88();
  return (*(*(v6 - 8) + 32))(a3 + v5, a2, v6);
}

uint64_t sub_2141182C8()
{
  if (*v0)
  {
    result = 0x6D6563616C706572;
  }

  else
  {
    result = 0x617461646174656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_214118310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6563616C706572 && a2 == 0xEF44495547746E65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2141183F4(uint64_t a1)
{
  v2 = sub_2142ECEA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214118430(uint64_t a1)
{
  v2 = sub_2142ECEA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21411846C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v25 = sub_2146D8B88();
  v23 = *(v25 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Metadata();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906710, &qword_2146F44D0);
  v24 = *(v26 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v13 = &v21 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECEA8();
  sub_2146DAA08();
  if (v2)
  {
    v20 = a1;
  }

  else
  {
    v21 = a1;
    v15 = v24;
    v16 = v25;
    v28 = 0;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata);
    sub_2146DA1C8();
    v27 = 1;
    sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0]);
    sub_2146DA1C8();
    (*(v15 + 8))(v13, v26);
    v18 = v22;
    sub_214328704(v10, v22, type metadata accessor for Metadata);
    v19 = type metadata accessor for CrossServiceAssociationMessage();
    (*(v23 + 32))(v18 + *(v19 + 20), v6, v16);
    v20 = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_2141187D0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906720, &qword_2146F44D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECEA8();
  sub_2146DAA28();
  v11[15] = 0;
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  if (!v1)
  {
    v9 = *(type metadata accessor for CrossServiceAssociationMessage() + 20);
    v11[14] = 1;
    sub_2146D8B88();
    sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
    sub_2146DA388();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_214118A00@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 *a15)
{
  v18 = *a1;
  v36 = *a15;
  v37 = *(a15 + 2);
  v19 = type metadata accessor for CustomAcknowledgement();
  sub_2143287C0(a13, a9 + v19[11], type metadata accessor for BalloonPlugin.Payload);
  sub_2146D6DB4(&v44);
  *(a9 + 56) = v44;
  v20 = *a10;
  *(a9 + 104) = a10[1];
  v21 = a10[3];
  *(a9 + 120) = a10[2];
  *(a9 + 136) = v21;
  *(a9 + 152) = a10[4];
  v22 = v45;
  v23 = v46;
  *a9 = v18;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 72) = v22;
  *(a9 + 80) = v23;
  *(a9 + 88) = v20;
  *(a9 + 168) = a11;
  *(a9 + 176) = a12;
  *(a9 + v19[12]) = a14;
  v24 = a9 + v19[13];
  *v24 = v36;
  *(v24 + 16) = v37;
  v26 = *(a9 + 56);
  v25 = *(a9 + 64);
  v27 = *(a9 + 72);
  v28 = *(a9 + 80);
  v48 = a8;
  v47[0] = v28;
  *&v44 = 0xD000000000000037;
  *(&v44 + 1) = 0x800000021478DD20;
  v45 = 0xD00000000000001CLL;
  v46 = 0x800000021478A360;

  v29 = v26(&v48, v47, &v44);
  if (v43)
  {
  }

  else
  {
    if (v29)
    {

      sub_21432887C(a13, type metadata accessor for BalloonPlugin.Payload);
      v30 = *(a9 + 64);
      v31 = *(a9 + 72);

      *(a9 + 56) = v26;
      *(a9 + 64) = v25;
      *(a9 + 72) = a8;
      *(a9 + 80) = v28;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD000000000000037;
    v33[1] = 0x800000021478DD20;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_21432887C(a13, type metadata accessor for BalloonPlugin.Payload);
  v34 = *(a9 + 64);
  v35 = *(a9 + 72);

  *(a9 + 56) = v26;
  *(a9 + 64) = v25;
  *(a9 + 72) = v27;
  *(a9 + 80) = v28;
  return sub_21432887C(a9, type metadata accessor for CustomAcknowledgement);
}

unint64_t sub_214118CBC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v3 = 0x7865546E69616C70;
    v4 = 0x64616F6C796170;
    v5 = 0x7475626972747461;
    if (a1 != 8)
    {
      v5 = 0x746E65746E6F63;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    if (a1 == 5)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 <= 6u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (a1 == 3)
    {
      v1 = 0xD000000000000016;
    }

    else
    {
      v1 = 0xD000000000000021;
    }

    if (a1 == 2)
    {
      v1 = 0xD00000000000001DLL;
    }

    if (a1 <= 1u)
    {
      return 0xD000000000000015;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_214118E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214363ED8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214118E54(uint64_t a1)
{
  v2 = sub_2142ECEFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214118E90(uint64_t a1)
{
  v2 = sub_2142ECEFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214118ECC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for BalloonPlugin.Payload(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906728, &unk_2146F44E0);
  v66 = *(v7 - 8);
  v8 = *(v66 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - v9;
  v11 = type metadata accessor for CustomAcknowledgement();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2142ECEFC();
  v17 = v67;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v68);
  }

  v64 = v11;
  v67 = v14;
  v18 = v66;
  LOBYTE(v73) = 0;
  sub_2142ECF50();
  sub_2146DA1C8();
  v19 = v10;
  v20 = v78;
  LOBYTE(v78) = 1;
  v62 = sub_2146DA168();
  v63 = v21;
  v83 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v73) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v22 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  LOBYTE(v73) = 3;
  sub_2142E50D0();
  sub_2146DA1C8();
  v61 = v22;
  v24 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v73) = 4;
  sub_2142E15CC();
  sub_2146DA1C8();
  v59 = *(&v24 + 1);
  v60 = v24;
  v25 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FD8, &qword_2146F0C50);
  v84[1] = 5;
  sub_2142ECFA4();
  sub_2146DA1C8();
  v75 = v80;
  v76 = v81;
  v77 = v82;
  v73 = v78;
  v74 = v79;
  LOBYTE(v69) = 6;
  v26 = sub_2146DA168();
  v28 = v27;
  v57 = v26;
  v58 = v25;
  LOBYTE(v69) = 7;
  sub_214328930(&qword_27C904778, type metadata accessor for BalloonPlugin.Payload);
  sub_2146DA1C8();
  v29 = v28;
  v30 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905928, &qword_2146F3EC0);
  LOBYTE(v72) = 8;
  sub_2142E4E9C();
  sub_2146DA1C8();
  v54 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
  LOBYTE(v72) = 9;
  sub_2142E4F74();
  v56 = v7;
  v55 = v19;
  sub_2146DA1C8();
  v53 = v69;
  v31 = v70;
  v32 = v64;
  v33 = v67;
  sub_2143287C0(v6, &v67[*(v64 + 44)], type metadata accessor for BalloonPlugin.Payload);
  sub_2146D6DB4(&v69);
  *(v33 + 56) = v69;
  v34 = v73;
  *(v33 + 104) = v74;
  v35 = v76;
  *(v33 + 120) = v75;
  *(v33 + 136) = v35;
  *(v33 + 152) = v77;
  v36 = v70;
  v37 = v71;
  *v33 = v83;
  v38 = v63;
  *(v33 + 1) = v62;
  *(v33 + 2) = v38;
  v39 = *(&v61 + 1);
  *(v33 + 3) = v30;
  *(v33 + 4) = v39;
  v40 = v59;
  *(v33 + 5) = v60;
  *(v33 + 6) = v40;
  *(v33 + 9) = v36;
  v33[80] = v37;
  *(v33 + 88) = v34;
  *(v33 + 21) = v57;
  *(v33 + 22) = v29;
  *&v33[*(v32 + 48)] = v54;
  v41 = &v33[*(v32 + 52)];
  *v41 = v53;
  *(v41 + 2) = v31;
  v43 = *(v33 + 7);
  v42 = *(v33 + 8);
  v44 = *(v33 + 9);
  v45 = v33[80];
  v72 = v58;
  v84[0] = v45;
  *&v69 = 0xD000000000000037;
  *(&v69 + 1) = 0x800000021478DD20;
  v70 = 0xD00000000000001CLL;
  v71 = 0x800000021478A360;
  v64 = v44;

  if (v43(&v72, v84, &v69))
  {

    sub_21432887C(v6, type metadata accessor for BalloonPlugin.Payload);
    (*(v18 + 8))(v55, v56);
    v46 = v67;
    v47 = *(v67 + 8);
    v48 = *(v67 + 9);

    *(v46 + 56) = v43;
    *(v46 + 64) = v42;
    *(v46 + 72) = v58;
    *(v46 + 80) = v45;
    sub_214328704(v46, v65, type metadata accessor for CustomAcknowledgement);
    return __swift_destroy_boxed_opaque_existential_1(v68);
  }

  sub_214031C4C();
  swift_allocError();
  *v49 = 0xD000000000000037;
  v49[1] = 0x800000021478DD20;
  v49[2] = 0xD00000000000001CLL;
  v49[3] = 0x800000021478A360;
  swift_willThrow();

  sub_21432887C(v6, type metadata accessor for BalloonPlugin.Payload);
  (*(v18 + 8))(v55, v56);
  v50 = v67;
  v51 = *(v67 + 8);
  v52 = *(v67 + 9);

  *(v50 + 56) = v43;
  *(v50 + 64) = v42;
  *(v50 + 72) = v64;
  *(v50 + 80) = v45;
  __swift_destroy_boxed_opaque_existential_1(v68);
  return sub_21432887C(v50, type metadata accessor for CustomAcknowledgement);
}

uint64_t sub_2141199C8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906750, &qword_2146F44F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECEFC();
  sub_2146DAA28();
  LOBYTE(v34[0]) = *v3;
  LOBYTE(v29) = 0;
  sub_2142ED07C();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  LOBYTE(v34[0]) = 1;
  sub_2146DA328();
  v34[0] = *(v3 + 24);
  LOBYTE(v29) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  v34[0] = *(v3 + 40);
  LOBYTE(v29) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  sub_2146DA388();
  if (*(v3 + 72))
  {
    v36 = *(v3 + 72);
    v35 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    v13 = *(v3 + 104);
    v14 = *(v3 + 136);
    v34[2] = *(v3 + 120);
    v34[3] = v14;
    v34[4] = *(v3 + 152);
    v34[0] = *(v3 + 88);
    v34[1] = v13;
    v15 = *(v3 + 104);
    v16 = *(v3 + 136);
    v31 = *(v3 + 120);
    v32 = v16;
    v33 = *(v3 + 152);
    v29 = *(v3 + 88);
    v30 = v15;
    v28 = 5;
    sub_213FB2E54(v34, v27, &qword_27C904FD8, &qword_2146F0C50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FD8, &qword_2146F0C50);
    sub_2142ED0D0();
    sub_2146DA388();
    v27[2] = v31;
    v27[3] = v32;
    v27[4] = v33;
    v27[0] = v29;
    v27[1] = v30;
    sub_213FB2DF4(v27, &qword_27C904FD8, &qword_2146F0C50);
    v17 = *(v3 + 168);
    v18 = *(v3 + 176);
    LOBYTE(v25[0]) = 6;
    sub_2146DA328();
    v19 = type metadata accessor for CustomAcknowledgement();
    v20 = v19[11];
    LOBYTE(v25[0]) = 7;
    type metadata accessor for BalloonPlugin.Payload(0);
    sub_214328930(&qword_27C904780, type metadata accessor for BalloonPlugin.Payload);
    sub_2146DA388();
    v25[0] = *(v3 + v19[12]);
    v26 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905928, &qword_2146F3EC0);
    sub_2142E51A0();
    sub_2146DA388();
    v21 = (v3 + v19[13]);
    v22 = v21[1];
    v23 = v21[2];
    v25[0] = *v21;
    v25[1] = v22;
    v25[2] = v23;
    v26 = 9;
    sub_214031CA0(v25[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
    sub_2142E5278();
    sub_2146DA388();
    sub_214031CE0(v25[0]);
    return (*(v6 + 8))(v9, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214119F44(uint64_t a1)
{
  v2 = sub_2142ED1A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214119F80(uint64_t a1)
{
  v2 = sub_2142ED1A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214119FBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for Metadata();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906770, &qword_2146F44F8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED1A8();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v17;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata);
    v14 = v18;
    sub_2146DA1C8();
    (*(v8 + 8))(v11, v7);
    sub_214328704(v14, v13, type metadata accessor for Metadata);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21411A1C8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906780, &qword_2146F4500);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED1A8();
  sub_2146DAA28();
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21411A358(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906780, &qword_2146F4500);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED1A8();
  sub_2146DAA28();
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21411A4D0(uint64_t a1)
{
  v2 = sub_2142ED1FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411A50C(uint64_t a1)
{
  v2 = sub_2142ED1FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21411A548@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for Metadata();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906788, &qword_2146F4508);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED1FC();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v17;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata);
    v14 = v18;
    sub_2146DA1C8();
    (*(v8 + 8))(v11, v7);
    sub_214328704(v14, v13, type metadata accessor for Metadata);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21411A754(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906790, &qword_2146F4510);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED1FC();
  sub_2146DAA28();
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21411A8E4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906790, &qword_2146F4510);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED1FC();
  sub_2146DAA28();
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21411AAB0(uint64_t a1)
{
  v2 = sub_2142ED250();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411AAEC(uint64_t a1)
{
  v2 = sub_2142ED250();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21411AB28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for DigitalTouchMessage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DigitalTouchHeader(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906798, &qword_2146F4518);
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED250();
  v16 = v24;
  sub_2146DAA08();
  if (!v16)
  {
    v17 = v22;
    v26 = 0;
    sub_214328930(&qword_27C9067A8, type metadata accessor for DigitalTouchHeader);
    sub_2146DA1C8();
    v25 = 1;
    sub_214328930(&qword_27C9067B0, type metadata accessor for DigitalTouchMessage);
    sub_2146DA1C8();
    (*(v17 + 8))(v14, v23);
    v19 = v21;
    sub_214328704(v10, v21, type metadata accessor for DigitalTouchHeader);
    v20 = type metadata accessor for DigitalTouchBalloon(0);
    sub_214328704(v6, v19 + *(v20 + 20), type metadata accessor for DigitalTouchMessage);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21411AE50(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9067B8, &qword_2146F4520);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED250();
  sub_2146DAA28();
  v11[15] = 0;
  type metadata accessor for DigitalTouchHeader(0);
  sub_214328930(&qword_27C9067C0, type metadata accessor for DigitalTouchHeader);
  sub_2146DA388();
  if (!v1)
  {
    v9 = *(type metadata accessor for DigitalTouchBalloon(0) + 20);
    v11[14] = 1;
    type metadata accessor for DigitalTouchMessage(0);
    sub_214328930(&qword_27C9067C8, type metadata accessor for DigitalTouchMessage);
    sub_2146DA388();
  }

  return (*(v4 + 8))(v7, v3);
}

int *sub_21411B080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = sub_2146D8B88();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  result = type metadata accessor for DigitalTouchHeader(0);
  v14 = a5 + result[5];
  *v14 = a2;
  *(v14 + 4) = BYTE4(a2) & 1;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a6;
  *(a5 + result[8]) = a4;
  return result;
}

uint64_t sub_21411B144()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x65746144646E6573;
  v4 = 0x6C65447472617473;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F6C6F4365736162;
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

uint64_t sub_21411B1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214364218(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21411B214(uint64_t a1)
{
  v2 = sub_2142ED2A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411B250(uint64_t a1)
{
  v2 = sub_2142ED2A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21411B28C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_2146D8B88();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9067D0, &qword_2146F4528);
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v36);
  v11 = &v28 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED2A4();
  sub_2146DAA08();
  if (v2)
  {
    v27 = a1;
  }

  else
  {
    v33 = a1;
    v13 = v35;
    v14 = v8;
    v43 = 0;
    sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0]);
    v15 = v36;
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    v40 = 1;
    sub_2142E6128();
    sub_2146DA1C8();
    v32 = v7;
    v17 = v41;
    v18 = v42;
    v39 = 2;
    v19 = sub_2146DA1E8();
    v29 = v18;
    v30 = v17;
    v31 = v19;
    v38 = 3;
    sub_2146DA188();
    v21 = v20;
    v37 = 4;
    v22 = sub_2146DA178();
    (*(v14 + 8))(v11, v15);
    v23 = v34;
    (*(v13 + 32))(v34, v32, v4);
    v24 = type metadata accessor for DigitalTouchHeader(0);
    v25 = v23 + v24[5];
    v26 = v29;
    *v25 = v30;
    *(v25 + 4) = v26;
    *(v23 + v24[6]) = v31;
    *(v23 + v24[7]) = v21;
    *(v23 + v24[8]) = v22 & 1;
    v27 = v33;
  }

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_21411B664(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9067E0, &qword_2146F4530);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED2A4();
  sub_2146DAA28();
  v21 = 0;
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
  sub_2146DA388();
  if (!v2)
  {
    v11 = type metadata accessor for DigitalTouchHeader(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 4);
    v19 = v13;
    v20 = v12;
    v18[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    sub_2142E62D8();
    sub_2146DA388();
    v14 = *(v3 + v11[6]);
    v18[6] = 2;
    sub_2146DA3A8();
    v15 = *(v3 + v11[7]);
    v18[5] = 3;
    sub_2146DA348();
    v16 = *(v3 + v11[8]);
    v18[4] = 4;
    sub_2146DA338();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t TapMessage.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2143C50F4(&v11);
  v5 = v11;
  v4 = v12;
  v6 = v14;
  v16 = a1;
  v15 = v14;
  v11 = 0x617373654D706154;
  v12 = 0xEF737061742E6567;
  v13 = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  v7 = v5(&v16, &v15, &v11);
  if (v2)
  {
  }

  else
  {
    if (v7)
    {

      result = swift_bridgeObjectRelease_n();
      *a2 = v5;
      *(a2 + 8) = v4;
      *(a2 + 16) = a1;
      *(a2 + 24) = v6;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v9 = 0x617373654D706154;
    v9[1] = 0xEF737061742E6567;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21411BAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1936744820 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21411BB4C(uint64_t a1)
{
  v2 = sub_2142ED2F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411BB88(uint64_t a1)
{
  v2 = sub_2142ED2F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TapMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t *, char *, uint64_t *)@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9067E8, &qword_2146F4538);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED2F8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9067F8, &qword_2146F4540);
  sub_2142ED34C();
  sub_2146DA1C8();
  v22 = a2;
  v12 = v26;
  sub_2143C50F4(&v26);
  v14 = v26;
  v13 = v27;
  v15 = v28;
  v31 = v12;
  v23 = v29;
  v30 = v29;
  v26 = 0x617373654D706154;
  v27 = 0xEF737061742E6567;
  v28 = 0xD00000000000001CLL;
  v29 = 0x800000021478A360;
  v25 = v15;

  v24 = v13;
  v16 = v14(&v31, &v30, &v26);
  v21 = v12;
  if (v16)
  {

    (*(v6 + 8))(v9, v5);

    v17 = v24;

    v18 = v21;
    v19 = v22;
    *v22 = v14;
    v19[1] = v17;
    v19[2] = v18;
    *(v19 + 24) = v23;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v20 = 0x617373654D706154;
  v20[1] = 0xEF737061742E6567;
  v20[2] = 0xD00000000000001CLL;
  v20[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TapMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906810, &qword_2146F4548);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED2F8();
  sub_2146DAA28();
  if (v8)
  {
    v11[1] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9067F8, &qword_2146F4540);
    sub_2142ED424();
    sub_2146DA388();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21411C100@<X0>(int a1@<W0>, __int16 a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v21 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904168, &qword_2146F4550);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = 720896000;
  *(v9 + 16) = sub_2142ED650;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  sub_214045404(inited, v18);
  v12 = v18[0];
  v11 = v18[1];
  v13 = BYTE3(v19);
  v23 = a2;
  v22 = BYTE3(v19);
  strcpy(v18, "SingleTap.time");
  HIBYTE(v18[1]) = -18;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  v14 = v12(&v23, &v22, v18);
  if (v4)
  {
  }

  else
  {
    v15 = v21;
    if (v14)
    {

      *a4 = a1;
      *(a4 + 8) = v12;
      *(a4 + 16) = v11;
      *(a4 + 24) = a2;
      *(a4 + 26) = 0;
      *(a4 + 27) = v13;
      *(a4 + 28) = v15;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    strcpy(v17, "SingleTap.time");
    v17[15] = -18;
    *(v17 + 2) = 0xD00000000000001CLL;
    *(v17 + 3) = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21411C328()
{
  v1 = 1701669236;
  if (*v0 != 1)
  {
    v1 = 0x726F6C6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E696F70;
  }
}

uint64_t sub_21411C374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143643E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21411C39C(uint64_t a1)
{
  v2 = sub_2142ED674();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411C3D8(uint64_t a1)
{
  v2 = sub_2142ED674();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21411C414@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906828, &qword_2146F4558);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED674();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v24[0]) = 0;
  v27 = sub_2146DA218();
  LOBYTE(v24[0]) = 1;
  v23 = sub_2146DA208();
  LOBYTE(v24[0]) = 2;
  v21 = sub_2146DA218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904168, &qword_2146F4550);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 720896000;
  *(v13 + 16) = sub_21438F46C;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_214045404(inited, v24);
  v15 = v24[1];
  v22 = v24[0];
  v16 = BYTE3(v25);
  v29 = v23;
  v28 = BYTE3(v25);
  strcpy(v24, "SingleTap.time");
  HIBYTE(v24[1]) = -18;
  v25 = 0xD00000000000001CLL;
  v26 = 0x800000021478A360;

  v17 = v22(&v29, &v28, v24);
  v20 = v16;
  if (v17)
  {

    (*(v6 + 8))(v9, v5);

    *a2 = v27;
    *(a2 + 8) = v22;
    *(a2 + 16) = v15;
    *(a2 + 24) = v23;
    *(a2 + 26) = 0;
    v18 = v21;
    *(a2 + 27) = v20;
    *(a2 + 28) = v18;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    strcpy(v19, "SingleTap.time");
    v19[15] = -18;
    *(v19 + 2) = 0xD00000000000001CLL;
    *(v19 + 3) = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21411C80C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906838, &qword_2146F4560);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v15 = *(v1 + 12);
  v10 = *(v1 + 26);
  v13[2] = v1[7];
  v14 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED674();
  sub_2146DAA28();
  v18 = 0;
  sub_2146DA3D8();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  if (v14)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v17 = 1;
    sub_2146DA3C8();
    v16 = 2;
    sub_2146DA3D8();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t DoodleMessage.init(with:hasDeltas:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_2143C5338(&v13);
  v6 = v13;
  v5 = v14;
  v7 = v16;
  v18 = a1;
  v17 = v16;
  v13 = 0xD000000000000015;
  v14 = 0x800000021478DD60;
  v15 = 0xD00000000000001CLL;
  v16 = 0x800000021478A360;

  v8 = v6(&v18, &v17, &v13);
  if (v3)
  {
  }

  else
  {
    if (v8)
    {

      *a3 = v6;
      *(a3 + 8) = v5;
      *(a3 + 16) = a1;
      *(a3 + 24) = v7;
      *(a3 + 25) = a2 & 1;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v10 = 0xD000000000000015;
    v10[1] = 0x800000021478DD60;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_21411CBE0()
{
  if (*v0)
  {
    result = 0x61746C6544736168;
  }

  else
  {
    result = 0x73656B6F727473;
  }

  *v0;
  return result;
}

uint64_t sub_21411CC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656B6F727473 && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61746C6544736168 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_21411CD04(uint64_t a1)
{
  v2 = sub_2142ED6C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411CD40(uint64_t a1)
{
  v2 = sub_2142ED6C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DoodleMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906840, &qword_2146F4568);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED6C8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906850, &qword_2146F4570);
  LOBYTE(v33) = 0;
  sub_2142ED71C();
  sub_2146DA1C8();
  v11 = v28;
  LOBYTE(v28) = 1;
  v22 = sub_2146DA178();
  sub_2143C5338(&v28);
  v14 = v28;
  v13 = v29;
  v26 = v11;
  v27 = v30;
  v33 = v11;
  v23 = v31;
  v32 = v31;
  v28 = 0xD000000000000015;
  v29 = 0x800000021478DD60;
  v24 = 0x800000021478DD60;
  v30 = 0xD00000000000001CLL;
  v31 = 0x800000021478A360;

  v25 = v13;
  v15 = v14(&v33, &v32, &v28);
  v21 = v14;
  v16 = v24;
  if (v15)
  {
    v22 &= 1u;

    (*(v6 + 8))(v9, v5);

    v17 = v25;

    *a2 = v21;
    *(a2 + 8) = v17;
    *(a2 + 16) = v26;
    v18 = v22;
    *(a2 + 24) = v23;
    *(a2 + 25) = v18;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v19 = 0xD000000000000015;
    v19[1] = v16;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DoodleMessage.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906868, &qword_2146F4578);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *(v1 + 16);
  v12[2] = *(v1 + 25);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED6C8();
  sub_2146DAA28();
  if (v9)
  {
    v15 = v9;
    v14 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906850, &qword_2146F4570);
    sub_2142ED7F4();
    sub_2146DA388();
    if (!v2)
    {
      v13 = 1;
      sub_2146DA338();
    }

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t SingleStroke.init(with:color:delta:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904158, &qword_2146F4580);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  v8[2] = sub_2143C945C;
  v8[3] = 0;
  v8[4] = 1;
  v8[5] = sub_21403C354;
  v8[6] = 0;
  *(v7 + 16) = sub_21438F51C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214043D88(inited, &v18);
  v10 = v18;
  v9 = v19;
  v11 = v21;
  v23 = a1;
  v22 = v21;
  v18 = 0xD000000000000013;
  v19 = 0x800000021478DD80;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v12 = v10(&v23, &v22, &v18);
  if (v4)
  {
  }

  else
  {
    if (v12)
    {

      *a4 = v10;
      *(a4 + 8) = v9;
      *(a4 + 16) = a1;
      *(a4 + 24) = v11;
      *(a4 + 28) = a2;
      *(a4 + 32) = a3;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v14 = 0xD000000000000013;
    v14[1] = 0x800000021478DD80;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_21411D598()
{
  v1 = 0x726F6C6F63;
  if (*v0 != 1)
  {
    v1 = 0x61746C6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656B6F727473;
  }
}

uint64_t sub_21411D5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143644F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21411D610(uint64_t a1)
{
  v2 = sub_2142ED8CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411D64C(uint64_t a1)
{
  v2 = sub_2142ED8CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SingleStroke.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906880, &qword_2146F4588);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED8CC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906890, &qword_2146F4590);
  LOBYTE(v36) = 0;
  sub_2142ED920();
  sub_2146DA1C8();
  v11 = v31;
  LOBYTE(v31) = 1;
  v30 = sub_2146DA218();
  LOBYTE(v31) = 2;
  v26 = sub_2146DA208();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904158, &qword_2146F4580);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  v15[2] = sub_2143C945C;
  v15[3] = 0;
  v15[4] = 1;
  v15[5] = sub_21403C354;
  v15[6] = 0;
  *(v14 + 16) = sub_21438F51C;
  *(v14 + 24) = v15;
  *(inited + 32) = v14;
  sub_214043D88(inited, &v31);
  v17 = v31;
  v16 = v32;
  v18 = v33;
  v36 = v11;
  v24 = v34;
  v35 = v34;
  v31 = 0xD000000000000013;
  v32 = 0x800000021478DD80;
  v27 = 0x800000021478A360;
  v28 = 0x800000021478DD80;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;
  v29 = v18;

  v25 = v17;
  v19 = v17(&v36, &v35, &v31);
  v20 = v27;
  if (v19)
  {

    (*(v6 + 8))(v9, v5);

    *a2 = v25;
    *(a2 + 8) = v16;
    *(a2 + 16) = v11;
    *(a2 + 24) = v24;
    *(a2 + 28) = v30;
    *(a2 + 32) = v26;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v21 = v28;
    *v22 = 0xD000000000000013;
    v22[1] = v21;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = v20;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SingleStroke.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068A8, &qword_2146F4598);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *(v1 + 16);
  v10 = *(v1 + 28);
  v13[1] = *(v1 + 32);
  v13[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED8CC();
  sub_2146DAA28();
  if (v9)
  {
    v17 = v9;
    v16 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906890, &qword_2146F4590);
    sub_2142ED9F8();
    sub_2146DA388();
    if (v2)
    {
      return (*(v5 + 8))(v8, v4);
    }

    else
    {
      v15 = 1;
      sub_2146DA3D8();
      v14 = 2;
      sub_2146DA3C8();
      return (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t StrokePoint.init(with:delta:)@<X0>(uint64_t result@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 4) = a2;
  return result;
}

uint64_t sub_21411DD58()
{
  if (*v0)
  {
    result = 0x61746C6564;
  }

  else
  {
    result = 0x6E6F697469736F70;
  }

  *v0;
  return result;
}

uint64_t sub_21411DD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61746C6564 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_21411DE68(uint64_t a1)
{
  v2 = sub_2142EDAD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411DEA4(uint64_t a1)
{
  v2 = sub_2142EDAD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21411DF98@<X0>(int a1@<W0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>, float a7@<S4>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904150, &unk_2146EAAB0);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = 0x4396000000000000;
  *(v14 + 16) = sub_2142EDB24;
  *(v14 + 24) = v15;
  *(inited + 32) = v14;
  sub_214043AE0(inited, &v51);
  v17 = v51;
  v16 = v52;
  v18 = *&v53;
  v19 = BYTE4(v53);
  v20 = BYTE5(v53);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904148, qword_21476AE20);
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  *(v23 + 16) = 0xB00000000;
  *(v22 + 16) = sub_2142EDB3C;
  *(v22 + 24) = v23;
  *(v21 + 32) = v22;
  sub_2140446C8(v21, v71);
  v47 = v71[0];
  v49 = v71[1];
  v42 = v72;
  v24 = v73;
  v48 = v74;
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_2146E9BF0;
  v26 = swift_allocObject();
  v27 = swift_allocObject();
  *(v27 + 16) = 0x4121999A00000000;
  *(v26 + 16) = sub_21438F540;
  *(v26 + 24) = v27;
  *(v25 + 32) = v26;
  sub_214043AE0(v25, v67);
  v45 = v67[0];
  v50 = v67[1];
  v43 = v68;
  v28 = v69;
  v46 = v70;
  v77 = v19;
  v76 = v24;
  v75 = v69;
  v79 = v24;
  v78 = v69;
  *v71 = a3;
  LOBYTE(v67[0]) = v20;
  v51 = 0xD00000000000001FLL;
  v52 = 0x800000021478DDA0;
  v53 = 0xD00000000000001CLL;
  v54 = 0x800000021478A360;

  v44 = v17;
  v29 = v17(v71, v67, &v51);
  if (v7)
  {

LABEL_6:
    v32 = v47;

LABEL_7:
    v30 = v42;
LABEL_8:
    v51 = v44;
    v52 = v16;
    *&v53 = v18;
    BYTE4(v53) = v77;
    BYTE5(v53) = v20;
    v54 = v32;
    v55 = v49;
    v56 = v30;
    v57 = v24;
    v58 = v48;
    v59 = a4;
    v60 = a5;
    v61 = a6;
    v62 = v45;
    v63 = v50;
    v64 = v43;
    v65 = v28;
    v66 = v46;
    return sub_2142EDB54(&v51);
  }

  v30 = a1;
  if ((v29 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD00000000000001FLL;
    v33[1] = 0x800000021478DDA0;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  v77 = 0;
  LODWORD(v71[0]) = a1;
  LOBYTE(v67[0]) = v48;
  v51 = 0xD000000000000019;
  v52 = 0x800000021478DDC0;
  v53 = 0xD00000000000001CLL;
  v54 = 0x800000021478A360;

  v31 = v47(v71, v67, &v51);
  v32 = v47;
  if ((v31 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD000000000000019;
    v36[1] = 0x800000021478DDC0;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    swift_willThrow();

    v18 = a3;
    goto LABEL_7;
  }

  v79 = 0;
  *v71 = a7;
  LOBYTE(v67[0]) = v46;
  v51 = 0xD00000000000001FLL;
  v52 = 0x800000021478DDE0;
  v53 = 0xD00000000000001CLL;
  v54 = 0x800000021478A360;

  v35 = v45(v71, v67, &v51);
  v32 = v47;
  if ((v35 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD00000000000001FLL;
    v39[1] = 0x800000021478DDE0;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();

    v24 = v79;
    v18 = a3;
    goto LABEL_8;
  }

  v78 = 0;
  v37 = v77;
  v38 = v79;
  *a2 = v44;
  *(a2 + 8) = v16;
  *(a2 + 16) = a3;
  *(a2 + 20) = v37;
  *(a2 + 21) = v20;
  *(a2 + 24) = v47;
  *(a2 + 32) = v49;
  *(a2 + 40) = a1;
  *(a2 + 44) = v38;
  *(a2 + 45) = v48;
  *(a2 + 48) = a4;
  *(a2 + 52) = a5;
  *(a2 + 56) = a6;
  *(a2 + 64) = v45;
  *(a2 + 72) = v50;
  *(a2 + 80) = a7;
  *(a2 + 84) = 0;
  *(a2 + 85) = v46;
  return result;
}

unint64_t sub_21411E58C()
{
  v1 = *v0;
  v2 = 0x7265507374616562;
  v3 = 0xD000000000000011;
  v4 = 0x6E6F697461746F72;
  if (v1 != 4)
  {
    v4 = 0x6572627472616568;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F697461727564;
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

uint64_t sub_21411E668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214364600(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21411E690(uint64_t a1)
{
  v2 = sub_2142EDBA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411E6CC(uint64_t a1)
{
  v2 = sub_2142EDBA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21411E708@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068D8, &qword_2146F45B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v58 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EDBA8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v74 = a1;
  v10 = v5;
  v11 = v75;
  LOBYTE(v80) = 0;
  sub_2146DA198();
  v13 = v12;
  LOBYTE(v80) = 1;
  v73 = sub_2146DA218();
  LOBYTE(v80) = 2;
  sub_2146DA198();
  v15 = v14;
  LOBYTE(v80) = 3;
  sub_2146DA198();
  v17 = v16;
  LOBYTE(v80) = 4;
  sub_2146DA198();
  v20 = v19;
  v104 = 5;
  sub_2146DA198();
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v69 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904150, &unk_2146EAAB0);
  v24 = swift_allocObject();
  v25 = swift_allocObject();
  *(v25 + 16) = 0x4396000000000000;
  *(v24 + 16) = sub_21438F540;
  *(v24 + 24) = v25;
  *(inited + 32) = v24;
  sub_214043AE0(inited, &v80);
  v70 = v80;
  v72 = v81;
  v26 = v82;
  v64 = BYTE4(v82);
  v71 = BYTE5(v82);
  v27 = swift_initStackObject();
  *(v27 + 16) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904148, qword_21476AE20);
  v28 = swift_allocObject();
  v29 = swift_allocObject();
  *(v29 + 16) = 0xB00000000;
  *(v28 + 16) = sub_21438F470;
  *(v28 + 24) = v29;
  *(v27 + 32) = v28;
  sub_2140446C8(v27, &v76);
  v68 = v76;
  v61 = *v77;
  LODWORD(v27) = v77[4];
  v67 = v77[5];
  v30 = swift_initStackObject();
  *(v30 + 16) = v69;
  v31 = swift_allocObject();
  v32 = swift_allocObject();
  *(v32 + 16) = 0x4121999A00000000;
  *(v31 + 16) = sub_21438F540;
  *(v31 + 24) = v32;
  *(v30 + 32) = v31;
  sub_214043AE0(v30, v95);
  v65 = v95[0];
  *&v69 = v95[1];
  v62 = v27;
  v63 = v96;
  LODWORD(v66) = v98;
  v101 = v64;
  v100 = v27;
  v99 = v97;
  v103 = v27;
  v64 = v97;
  v102 = v97;
  LODWORD(v76) = v13;
  LOBYTE(v95[0]) = v71;
  v80 = 0xD00000000000001FLL;
  v81 = 0x800000021478DDA0;
  v82 = 0xD00000000000001CLL;
  *&v83 = 0x800000021478A360;

  v33 = v70(&v76, v95, &v80);
  v60 = 0x800000021478A360;
  if (v33)
  {
    v34 = v60;

    v101 = 0;
    LODWORD(v76) = v73;
    LOBYTE(v95[0]) = v67;
    v59 = 0xD000000000000019;
    v80 = 0xD000000000000019;
    v81 = 0x800000021478DDC0;
    v82 = 0xD00000000000001CLL;
    *&v83 = v34;

    v35 = (v68)(&v76, v95, &v80);
    v42 = v70;
    if (v35)
    {
      v43 = v60;

      v103 = 0;
      LODWORD(v95[0]) = v22;
      LOBYTE(v76) = v66;
      v80 = 0xD00000000000001FLL;
      v81 = 0x800000021478DDE0;
      v82 = 0xD00000000000001CLL;
      *&v83 = v43;

      v44 = v65(v95, &v76, &v80);
      if (v44)
      {

        (*(v10 + 8))(v8, v4);
        v46 = v69;

        v102 = 0;
        *&v76 = v42;
        *(&v76 + 1) = v72;
        *v77 = v13;
        v64 = v101;
        v77[4] = v101;
        v77[5] = v71;
        v47 = *(&v68 + 1);
        *&v77[8] = v68;
        v48 = v73;
        *&v77[24] = v73;
        v63 = v103;
        v77[28] = v103;
        v49 = v67;
        v77[29] = v67;
        *&v78 = __PAIR64__(v17, v15);
        DWORD2(v78) = v20;
        v50 = v65;
        *v79 = v65;
        *&v79[8] = v46;
        *&v79[16] = v22;
        v79[20] = 0;
        v51 = v66;
        v79[21] = v66;
        v52 = *v77;
        *v11 = v76;
        *(v11 + 16) = v52;
        v53 = *&v77[16];
        v54 = v78;
        v55 = *v79;
        *(v11 + 78) = *&v79[14];
        *(v11 + 48) = v54;
        *(v11 + 64) = v55;
        *(v11 + 32) = v53;
        sub_2142EDBFC(&v76, &v80);
        __swift_destroy_boxed_opaque_existential_1(v74);
        v80 = v70;
        v81 = v72;
        LODWORD(v82) = v13;
        BYTE4(v82) = v64;
        BYTE5(v82) = v71;
        *&v83 = v68;
        *(&v83 + 1) = v47;
        v84 = v48;
        v85 = v63;
        v86 = v49;
        v87 = v15;
        v88 = v17;
        v89 = v20;
        v90 = v50;
        v91 = v46;
        v92 = v22;
        v93 = 0;
        v94 = v51;
        return sub_2142EDB54(&v80);
      }

      sub_214031C4C();
      swift_allocError();
      *v56 = 0xD00000000000001FLL;
      v56[1] = 0x800000021478DDE0;
      v57 = v60;
      v56[2] = 0xD00000000000001CLL;
      v56[3] = v57;
      swift_willThrow();
      (*(v10 + 8))(v8, v4);

      v40 = v103;
      v26 = v13;
      v41 = v73;
      v38 = v74;
      v39 = v72;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v45 = v59;
      v45[1] = 0x800000021478DDC0;
      v45[2] = 0xD00000000000001CLL;
      v45[3] = v60;
      swift_willThrow();
      (*(v10 + 8))(v8, v4);
      v38 = v74;

      v26 = v13;
      v39 = v72;
      v41 = v61;
      v40 = v62;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD00000000000001FLL;
    v36[1] = 0x800000021478DDA0;
    v37 = v60;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = v37;
    swift_willThrow();
    (*(v10 + 8))(v8, v4);
    v38 = v74;
    v39 = v72;

    v41 = v61;
    v40 = v62;
    v42 = v70;
  }

  __swift_destroy_boxed_opaque_existential_1(v38);
  v80 = v42;
  v81 = v39;
  LODWORD(v82) = v26;
  BYTE4(v82) = v101;
  BYTE5(v82) = v71;
  v83 = v68;
  v84 = v41;
  v85 = v40;
  v86 = v67;
  v87 = v15;
  v88 = v17;
  v89 = v20;
  v90 = v65;
  v91 = v69;
  v92 = v63;
  v93 = v64;
  v94 = v66;
  return sub_2142EDB54(&v80);
}

uint64_t sub_21411F084(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068E8, &qword_2146F45B8);
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = *(v1 + 16);
  v9 = *(v1 + 20);
  v10 = *(v1 + 40);
  v11 = *(v1 + 44);
  v13 = *(v1 + 48);
  v12 = *(v1 + 52);
  v14 = *(v1 + 56);
  v15 = *(v1 + 80);
  v19 = *(v1 + 84);
  v20 = v10;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EDBA8();
  sub_2146DAA28();
  if (v9)
  {
    goto LABEL_8;
  }

  v27 = 0;
  sub_2146DA358();
  if (v2)
  {
    return (*(v21 + 8))(v7, v4);
  }

  if (v11)
  {
    goto LABEL_8;
  }

  v26 = 1;
  sub_2146DA3D8();
  v25 = 2;
  sub_2146DA358();
  v24 = 3;
  sub_2146DA358();
  v23 = 4;
  sub_2146DA358();
  if (v19)
  {
LABEL_8:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v22 = 5;
    sub_2146DA358();
    return (*(v21 + 8))(v7, v4);
  }

  return result;
}

uint64_t VideoMessage.init(with:intro:playingMessages:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = *a1;
  v9 = type metadata accessor for VideoMessage(0);
  v25 = a2;
  sub_213FB2E54(a2, &a4[*(v9 + 20)], &qword_27C9068F0, &unk_2146F45C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904140, &unk_2146EAAA0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v12[2] = sub_214059908;
  v12[3] = 0;
  v12[4] = 75;
  v12[5] = sub_21403C354;
  v12[6] = 0;
  *(v11 + 16) = sub_21438F51C;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  sub_214043ED8(inited, &v26);
  v14 = v26;
  v13 = v27;
  v15 = v28;
  v16 = v29;
  *a4 = v8;
  v17 = &a4[*(v9 + 24)];
  *v17 = v14;
  *(v17 + 1) = v13;
  *(v17 + 2) = v15;
  v17[24] = v16;
  v31 = a3;
  v30 = v16;
  v26 = 0xD00000000000001CLL;
  v27 = 0x800000021478DE00;
  v28 = 0xD00000000000001CLL;
  v29 = 0x800000021478A360;

  v18 = v14(&v31, &v30, &v26);
  if (v4)
  {
  }

  else
  {
    if (v18)
    {

      sub_213FB2DF4(v25, &qword_27C9068F0, &unk_2146F45C0);
      v19 = *(v17 + 1);
      v20 = *(v17 + 2);

      *v17 = v14;
      *(v17 + 1) = v13;
      *(v17 + 2) = a3;
      v17[24] = v16;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD00000000000001CLL;
    v22[1] = 0x800000021478DE00;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB2DF4(v25, &qword_27C9068F0, &unk_2146F45C0);
  v23 = *(v17 + 1);
  v24 = *(v17 + 2);

  *v17 = v14;
  *(v17 + 1) = v13;
  *(v17 + 2) = v15;
  v17[24] = v16;
  return sub_21432887C(a4, type metadata accessor for VideoMessage);
}

uint64_t sub_21411F620()
{
  v1 = 0x6F72746E69;
  if (*v0 != 1)
  {
    v1 = 0x4D676E6979616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x707954616964656DLL;
  }
}

uint64_t sub_21411F688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436481C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21411F6B0(uint64_t a1)
{
  v2 = sub_2142EDC58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411F6EC(uint64_t a1)
{
  v2 = sub_2142EDC58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068F0, &unk_2146F45C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068F8, &unk_2146F45D0);
  v45 = *(v7 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = type metadata accessor for VideoMessage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2142EDC58();
  v17 = v46;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v46 = v14;
  v18 = v45;
  LOBYTE(v53) = 0;
  sub_2142EDCAC();
  sub_2146DA1C8();
  v19 = v10;
  v20 = v48;
  LOBYTE(v48) = 1;
  sub_2142EDD00();
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906920, &qword_214738410);
  LOBYTE(v53) = 2;
  sub_2142EDDB4();
  sub_2146DA1C8();
  v42 = v19;
  v43 = v48;
  v22 = *(v11 + 20);
  LODWORD(v41) = v20;
  v23 = v46;
  sub_213FB2E54(v6, &v46[v22], &qword_27C9068F0, &unk_2146F45C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904140, &unk_2146EAAA0);
  v25 = swift_allocObject();
  v26 = swift_allocObject();
  v26[2] = sub_214059908;
  v26[3] = 0;
  v26[4] = 75;
  v26[5] = sub_21403C354;
  v26[6] = 0;
  *(v25 + 16) = sub_21438F51C;
  *(v25 + 24) = v26;
  *(inited + 32) = v25;
  sub_214043ED8(inited, &v48);
  v28 = v48;
  v27 = v49;
  v29 = v50;
  v30 = v51;
  *v23 = v41;
  v31 = &v23[*(v11 + 24)];
  *v31 = v28;
  *(v31 + 1) = v27;
  *(v31 + 2) = v29;
  v31[24] = v30;
  v53 = v43;
  v40 = v30;
  v52 = v30;
  v48 = 0xD00000000000001CLL;
  v49 = 0x800000021478DE00;
  v50 = 0xD00000000000001CLL;
  v51 = 0x800000021478A360;
  v39 = v29;

  v41 = v28;
  if (v28(&v53, &v52, &v48))
  {

    sub_213FB2DF4(v6, &qword_27C9068F0, &unk_2146F45C0);
    (*(v18 + 8))(v42, v7);
    v32 = *(v31 + 1);
    v33 = *(v31 + 2);

    *v31 = v41;
    *(v31 + 1) = v27;
    v34 = v44;
    *(v31 + 2) = v43;
    v31[24] = v40;
    sub_214328704(v46, v34, type metadata accessor for VideoMessage);
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  sub_214031C4C();
  swift_allocError();
  *v35 = 0xD00000000000001CLL;
  v35[1] = 0x800000021478DE00;
  v35[2] = 0xD00000000000001CLL;
  v35[3] = 0x800000021478A360;
  swift_willThrow();

  sub_213FB2DF4(v6, &qword_27C9068F0, &unk_2146F45C0);
  (*(v18 + 8))(v42, v7);
  v36 = *(v31 + 1);
  v37 = *(v31 + 2);

  *v31 = v41;
  *(v31 + 1) = v27;
  *(v31 + 2) = v39;
  v31[24] = v40;
  __swift_destroy_boxed_opaque_existential_1(v47);
  return sub_21432887C(v46, type metadata accessor for VideoMessage);
}

uint64_t VideoMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906938, &qword_2146F45E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EDC58();
  sub_2146DAA28();
  v18 = *v3;
  v17 = 0;
  sub_2142EDE68();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = type metadata accessor for VideoMessage(0);
  v12 = *(v11 + 20);
  v16 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068F0, &unk_2146F45C0);
  sub_2142EDEBC();
  sub_2146DA388();
  if (*&v3[*(v11 + 24) + 16])
  {
    v15 = *&v3[*(v11 + 24) + 16];
    v14[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906920, &qword_214738410);
    sub_2142EDF70();
    sub_2146DA388();
    return (*(v6 + 8))(v9, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

__n128 IntroBalloon.init(with:content:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1].n128_u64[0];
  v6 = a2[1].n128_u8[8];
  v7 = a2[1].n128_u8[9];
  sub_214328704(a1, a3, type metadata accessor for DigitalTouchHeader);
  v8 = (a3 + *(type metadata accessor for IntroBalloon(0) + 20));
  result = *a2;
  *v8 = *a2;
  v8[1].n128_u64[0] = v5;
  v8[1].n128_u8[8] = v6;
  v8[1].n128_u8[9] = v7;
  return result;
}

uint64_t sub_21411FFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726564616568 && a2 == 0xE600000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2141200C4(uint64_t a1)
{
  v2 = sub_2142EE024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214120100(uint64_t a1)
{
  v2 = sub_2142EE024();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntroBalloon.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for DigitalTouchHeader(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906968, &qword_2146F45E8);
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v22);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EE024();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v21;
    LOBYTE(v23) = 0;
    sub_214328930(&qword_27C9067A8, type metadata accessor for DigitalTouchHeader);
    sub_2146DA1C8();
    v15 = v7;
    v27 = 1;
    sub_2142EE078();
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v22);
    v17 = v24;
    LOBYTE(v13) = v25;
    v18 = v26;
    v22 = v23;
    sub_214328704(v15, v14, type metadata accessor for DigitalTouchHeader);
    v19 = v14 + *(type metadata accessor for IntroBalloon(0) + 20);
    *v19 = v22;
    *(v19 + 16) = v17;
    *(v19 + 24) = v13;
    *(v19 + 25) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t IntroBalloon.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906980, &qword_2146F45F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EE024();
  sub_2146DAA28();
  LOBYTE(v18) = 0;
  type metadata accessor for DigitalTouchHeader(0);
  sub_214328930(&qword_27C9067C0, type metadata accessor for DigitalTouchHeader);
  sub_2146DA388();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for IntroBalloon(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = *(v11 + 24);
    LOBYTE(v11) = *(v11 + 25);
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = v11;
    v17[15] = 1;
    sub_2142EE0CC();

    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t KissMessage.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2143C5AC0(&v11);
  v5 = v11;
  v4 = v12;
  v6 = v14;
  v16 = a1;
  v15 = v14;
  v11 = 0xD000000000000012;
  v12 = 0x800000021478DE20;
  v13 = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  v7 = v5(&v16, &v15, &v11);
  if (v2)
  {
  }

  else
  {
    if (v7)
    {

      result = swift_bridgeObjectRelease_n();
      *a2 = v5;
      *(a2 + 8) = v4;
      *(a2 + 16) = a1;
      *(a2 + 24) = v6;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v9 = 0xD000000000000012;
    v9[1] = 0x800000021478DE20;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2141207E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73657373696BLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_214120864(uint64_t a1)
{
  v2 = sub_2142EE120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141208A0(uint64_t a1)
{
  v2 = sub_2142EE120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KissMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(unint64_t *, char *, unint64_t *)@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906990, &qword_2146F45F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EE120();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9069A0, &qword_2146F4600);
  sub_2142EE174();
  sub_2146DA1C8();
  v21 = a2;
  v12 = v26;
  sub_2143C5AC0(&v26);
  v14 = v26;
  v13 = v27;
  v24 = v12;
  v25 = v28;
  v31 = v12;
  v22 = v29;
  v30 = v29;
  v26 = 0xD000000000000012;
  v27 = 0x800000021478DE20;
  v28 = 0xD00000000000001CLL;
  v29 = 0x800000021478A360;

  v23 = v13;
  v15 = v14(&v31, &v30, &v26);
  v20 = v14;
  if (v15)
  {

    (*(v6 + 8))(v9, v5);

    v16 = v23;

    v17 = v21;
    *v21 = v20;
    v17[1] = v16;
    v17[2] = v24;
    *(v17 + 24) = v22;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v18 = 0xD000000000000012;
  v18[1] = 0x800000021478DE20;
  v18[2] = 0xD00000000000001CLL;
  v18[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t KissMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9069B8, &qword_2146F4608);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EE120();
  sub_2146DAA28();
  if (v8)
  {
    v11[1] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9069A0, &qword_2146F4600);
    sub_2142EE24C();
    sub_2146DA388();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t SingleKiss.init(with:angle:delay:)@<X0>(uint64_t result@<X0>, __int16 a2@<W1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 4) = a2;
  *(a4 + 6) = a3;
  return result;
}

uint64_t sub_214120E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214364940(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214120E28(uint64_t a1)
{
  v2 = sub_2142EE324();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214120E64(uint64_t a1)
{
  v2 = sub_2142EE324();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SingleKiss.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9069D0, &qword_2146F4610);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EE324();
  sub_2146DAA08();
  if (!v2)
  {
    v18 = 0;
    v11 = sub_2146DA218();
    v17 = 1;
    v15 = sub_2146DA208();
    v16 = 2;
    v13 = sub_2146DA208();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 4) = v15;
    *(a2 + 6) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SingleKiss.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9069E0, &qword_2146F4618);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[6] = *(v1 + 2);
  v12[3] = *(v1 + 3);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EE324();
  sub_2146DAA28();
  v15 = 0;
  sub_2146DA3D8();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = 1;
  sub_2146DA3C8();
  v13 = 2;
  sub_2146DA3C8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t AngerMessage.init(with:normalizedCenterX:normalizedCenterY:movements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, unsigned int a4@<S1>, unsigned int a5@<S2>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904150, &unk_2146EAAB0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = 0x4130000000000000;
  *(v11 + 16) = sub_21438F540;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  sub_214043AE0(inited, &v22);
  v14 = v22;
  v13 = v23;
  v15 = v24;
  v16 = BYTE4(v24);
  v17 = BYTE5(v24);
  v28 = a3;
  v27 = BYTE5(v24);
  v22 = 0xD000000000000015;
  v23 = 0x800000021478DE40;
  v24 = 0xD00000000000001CLL;
  v25 = 0x800000021478A360;

  v18 = v14(&v28, &v27, &v22);
  if (v5)
  {
  }

  else
  {
    if (v18)
    {

      v29 = 0;
      *a2 = v14;
      *(a2 + 8) = v13;
      *(a2 + 16) = a3;
      *(a2 + 20) = 0;
      *(a2 + 21) = v17;
      *(a2 + 24) = a4;
      *(a2 + 28) = a5;
      *(a2 + 32) = a1;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000015;
    v20[1] = 0x800000021478DE40;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();
  }

  v22 = v14;
  v23 = v13;
  LODWORD(v24) = v15;
  BYTE4(v24) = v16;
  BYTE5(v24) = v17;
  v25 = __PAIR64__(a5, a4);
  v26 = a1;
  return sub_2142EE378(&v22);
}

unint64_t sub_21412148C()
{
  v1 = 0x6E6F697461727564;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x746E656D65766F6DLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_214121514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214364A4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21412153C(uint64_t a1)
{
  v2 = sub_2142EE3CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214121578(uint64_t a1)
{
  v2 = sub_2142EE3CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AngerMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9069E8, &qword_2146F4620);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EE3CC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v40) = 0;
  sub_2146DA198();
  v12 = v11;
  LOBYTE(v40) = 1;
  sub_2146DA198();
  v15 = v14;
  LOBYTE(v40) = 2;
  sub_2146DA198();
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9069F8, &qword_2146F4628);
  v46 = 3;
  sub_2142EE420();
  sub_2146DA1C8();
  v36 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904150, &unk_2146EAAB0);
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = 0x4130000000000000;
  *(v19 + 16) = sub_21438F540;
  *(v19 + 24) = v20;
  *(inited + 32) = v19;
  sub_214043AE0(inited, &v40);
  v22 = v40;
  v21 = v41;
  v32 = v42;
  v31 = BYTE4(v42);
  v45 = v12;
  v35 = BYTE5(v42);
  LOBYTE(v37) = BYTE5(v42);
  v40 = 0xD000000000000015;
  v41 = 0x800000021478DE40;
  v33 = 0x800000021478DE40;
  v42 = 0xD00000000000001CLL;
  v43 = 0x800000021478A360;

  v34 = v22;
  v23 = v22(&v45, &v37, &v40);
  v24 = v33;
  if (v23)
  {

    (*(v6 + 8))(v9, v5);

    v48 = 0;
    v25 = v34;
    *&v37 = v34;
    *(&v37 + 1) = v21;
    LODWORD(v38) = v12;
    BYTE4(v38) = 0;
    v26 = v35;
    BYTE5(v38) = v35;
    *(&v38 + 1) = __PAIR64__(v17, v15);
    v27 = v36;
    v39 = v36;
    *(a2 + 32) = v36;
    v28 = v38;
    *a2 = v37;
    *(a2 + 16) = v28;
    sub_2142EE4F8(&v37, &v40);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40 = v25;
    v41 = v21;
    LODWORD(v42) = v12;
    BYTE4(v42) = 0;
    BYTE5(v42) = v26;
    v43 = __PAIR64__(v17, v15);
    v44 = v27;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD000000000000015;
    v29[1] = v24;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);

    __swift_destroy_boxed_opaque_existential_1(a1);
    v40 = v34;
    v41 = v21;
    LODWORD(v42) = v32;
    BYTE4(v42) = v31;
    BYTE5(v42) = v35;
    v43 = __PAIR64__(v17, v15);
    v44 = v36;
  }

  return sub_2142EE378(&v40);
}

uint64_t AngerMessage.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906A10, &qword_2146F4630);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *(v1 + 16);
  v10 = *(v1 + 20);
  v12 = *(v1 + 24);
  v11 = *(v1 + 28);
  v15 = *(v1 + 32);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EE3CC();
  sub_2146DAA28();
  if (v10)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v20 = 0;
    sub_2146DA358();
    if (!v2)
    {
      v19 = 1;
      sub_2146DA358();
      v18 = 2;
      sub_2146DA358();
      v17 = v15;
      v16 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9069F8, &qword_2146F4628);
      sub_2142EE554();
      sub_2146DA388();
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_214121D38()
{
  if (*v0)
  {
    return 0x79616C6564;
  }

  else
  {
    return 0x746E696F70;
  }
}

uint64_t sub_214121D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E696F70 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79616C6564 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_214121E38(uint64_t a1)
{
  v2 = sub_2142EE62C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214121E74(uint64_t a1)
{
  v2 = sub_2142EE62C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214121EF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v19 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v5)
  {
    v14 = v18;
    v13 = v19;
    v21 = 0;
    v15 = sub_2146DA218();
    v20 = 1;
    v16 = sub_2146DA208();
    (*(v14 + 8))(v11, v8);
    *v13 = v15;
    *(v13 + 4) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141220E4(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v15[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v11 = *v4;
  v16 = *(v4 + 2);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (v15[0])();
  sub_2146DAA28();
  v18 = 0;
  v13 = v15[1];
  sub_2146DA3D8();
  if (!v13)
  {
    v17 = 1;
    sub_2146DA3C8();
  }

  return (*(v7 + 8))(v10, v6);
}

__n128 sub_2141222A4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *a4;
  v28 = *(a7 + 32);
  v17 = *(a7 + 48);
  v31 = *(a10 + 32);
  v30 = *(a10 + 48);
  v33 = *(a11 + 32);
  v32 = *(a11 + 48);
  sub_214328704(a1, a9, type metadata accessor for Metadata);
  v18 = type metadata accessor for EditMessageCommand();
  v19 = (a9 + v18[5]);
  *v19 = a2;
  v19[1] = a3;
  *(a9 + v18[6]) = v16;
  v20 = a9 + v18[7];
  *v20 = a5;
  *(v20 + 8) = a6 & 1;
  v21 = a9 + v18[8];
  v22 = *(a7 + 16);
  *v21 = *a7;
  *(v21 + 16) = v22;
  *(v21 + 32) = v28;
  *(v21 + 48) = v17;
  *(a9 + v18[9]) = a8;
  v23 = a9 + v18[10];
  v24 = *(a10 + 16);
  *v23 = *a10;
  *(v23 + 16) = v24;
  *(v23 + 32) = v31;
  *(v23 + 48) = v30;
  v25 = a9 + v18[11];
  v26 = *(a11 + 16);
  *v25 = *a11;
  *(v25 + 16) = v26;
  result = v33;
  *(v25 + 32) = v33;
  *(v25 + 48) = v32;
  return result;
}

unint64_t sub_2141223F8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD00000000000001CLL;
    if (v1 != 6)
    {
      v5 = 0x436567617373656DLL;
    }

    v6 = 0xD000000000000014;
    if (v1 == 4)
    {
      v6 = 0xD000000000000015;
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
    v2 = 0x617461646174656DLL;
    v3 = 0x6570795474696465;
    if (v1 != 2)
    {
      v3 = 0xD000000000000016;
    }

    if (*v0)
    {
      v2 = 0xD000000000000011;
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

uint64_t sub_214122514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214364BC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21412253C(uint64_t a1)
{
  v2 = sub_2142EE680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214122578(uint64_t a1)
{
  v2 = sub_2142EE680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141225B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v4 = type metadata accessor for Metadata();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906A40, &qword_2146F4648);
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v58);
  v11 = &v42 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2142EE680();
  sub_2146DAA08();
  if (!v2)
  {
    v14 = v8;
    LOBYTE(v60) = 0;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata);
    v15 = v58;
    v16 = v11;
    sub_2146DA1C8();
    LOBYTE(v60) = 1;
    v17 = sub_2146DA168();
    v19 = v18;
    v56 = v17;
    v65 = 2;
    sub_2142EE6D4();
    sub_2146DA1C8();
    v20 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v65 = 3;
    sub_2142E11FC();
    sub_2146DA1C8();
    v64 = v20;
    v55 = v60;
    v22 = BYTE8(v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906A58, &qword_2146F4650);
    v65 = 4;
    v23 = sub_2142EE728();
    sub_2146DA1C8();
    v50 = v23;
    v49 = v22;
    v53 = v60;
    v24 = v61;
    v54 = v62;
    v51 = *(&v61 + 1);
    v52 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v65 = 5;
    sub_2142E1378();
    sub_2146DA1C8();
    v25 = v51;
    v48 = v24;
    LODWORD(v24) = v60;
    v65 = 6;
    sub_2146DA1C8();
    v44 = v24;
    v45 = v60;
    v46 = v61;
    v47 = v62;
    v50 = v63;
    v65 = 7;
    sub_21405E3AC();
    sub_2146DA1C8();
    v26 = v52;
    v27 = v25;
    (*(v14 + 8))(v16, v15);
    v58 = v62;
    v28 = v63;
    v43 = v60;
    v42 = v61;
    v29 = v57;
    sub_214328704(v7, v57, type metadata accessor for Metadata);
    v30 = type metadata accessor for EditMessageCommand();
    v31 = (v29 + v30[5]);
    *v31 = v56;
    v31[1] = v19;
    *(v29 + v30[6]) = v64;
    v32 = v29 + v30[7];
    *v32 = v55;
    *(v32 + 8) = v49;
    v33 = (v29 + v30[8]);
    v34 = *(&v53 + 1);
    *v33 = v53;
    v33[1] = v34;
    v33[2] = v48;
    v33[3] = v27;
    v35 = *(&v54 + 1);
    v33[4] = v54;
    v33[5] = v35;
    v33[6] = v26;
    *(v29 + v30[9]) = v44;
    v36 = (v29 + v30[10]);
    v37 = *(&v45 + 1);
    *v36 = v45;
    v36[1] = v37;
    v38 = *(&v46 + 1);
    v36[2] = v46;
    v36[3] = v38;
    v39 = *(&v47 + 1);
    v36[4] = v47;
    v36[5] = v39;
    v36[6] = v50;
    v40 = v29 + v30[11];
    v41 = v42;
    *v40 = v43;
    *(v40 + 16) = v41;
    *(v40 + 32) = v58;
    *(v40 + 48) = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_214122C50(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906A68, &qword_2146F4658);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EE680();
  sub_2146DAA28();
  LOBYTE(v39) = 0;
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  if (!v2)
  {
    v11 = type metadata accessor for EditMessageCommand();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v39) = 1;
    sub_2146DA328();
    LOBYTE(v39) = *(v3 + v11[6]);
    v45 = 2;
    sub_2142EE818();
    sub_2146DA388();
    v15 = v3 + v11[7];
    v16 = *v15;
    LOBYTE(v15) = *(v15 + 8);
    v39 = v16;
    LOBYTE(v40) = v15;
    v45 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    v17 = (v3 + v11[8]);
    v18 = v17[1];
    v19 = v17[2];
    v20 = v17[3];
    v21 = v17[4];
    v22 = v17[5];
    v23 = v17[6];
    v39 = *v17;
    *&v40 = v18;
    *(&v40 + 1) = v19;
    v41 = v20;
    v42 = v21;
    v43 = v22;
    v44 = v23;
    v45 = 4;
    sub_2142EE86C(v39, v18, v19, v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906A58, &qword_2146F4650);
    sub_2142EE8D8();
    sub_2146DA388();
    sub_2142EE7AC(v39, v40, *(&v40 + 1), v41, v42);
    LOBYTE(v39) = *(v3 + v11[9]);
    v45 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    sub_2142E1D30();
    sub_2146DA388();
    v24 = (v3 + v11[10]);
    v25 = v24[1];
    v26 = v24[2];
    v27 = v24[3];
    v28 = v24[4];
    v29 = v24[5];
    v30 = v24[6];
    v39 = *v24;
    *&v40 = v25;
    *(&v40 + 1) = v26;
    v41 = v27;
    v42 = v28;
    v43 = v29;
    v44 = v30;
    v45 = 6;
    sub_2142EE86C(v39, v25, v26, v27, v28);
    sub_2146DA388();
    sub_2142EE7AC(v39, v40, *(&v40 + 1), v41, v42);
    v31 = v3 + v11[11];
    v32 = *(v31 + 24);
    v33 = *(v31 + 32);
    v34 = *(v31 + 40);
    v35 = *(v31 + 48);
    v39 = *v31;
    v40 = *(v31 + 8);
    v41 = v32;
    v42 = v33;
    v43 = v34;
    v44 = v35;
    v45 = 7;

    sub_214031CA0(v33);
    sub_21405E400();
    sub_2146DA388();
    v36 = v42;

    sub_214031CE0(v36);
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 EmojiTapBack.init(with:associatedMessageType:associatedMessageGUID:associatedMessageFallbackHash:associatedMessageRange:associatedMessageEmoji:participantDestinationIdentifiers:messageSummaryInfo:plainTextBody:)@<Q0>(char *a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, unint64_t a11, uint64_t a12, __int128 *a13, uint64_t a14, uint64_t a15)
{
  v86 = a11;
  v38 = *a1;
  v47 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = 1;
  *(v16 + 16) = sub_21438F758;
  *(v16 + 24) = v17;
  *(v15 + 32) = v16;
  sub_214042B80(v15, &v54);
  v18 = v54;
  v19 = v55;
  v20 = v57;
  v39 = v56;
  v21 = v58;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2146E9BF0;
  *(v22 + 32) = sub_2142E0AD0();
  sub_2140433DC(v22, &v79);
  v23 = *a13;
  *&v83[23] = a13[1];
  v24 = a13[3];
  *&v83[39] = a13[2];
  *&v83[55] = v24;
  *&v83[71] = a13[4];
  v42 = v79;
  v44 = v81;
  v45 = v80;
  v43 = v82;
  *&v83[7] = v23;
  v79 = a10;
  v80 = v86;
  v46 = v21;
  v78 = v21;
  v54 = 0xD000000000000023;
  v55 = 0x800000021478DE60;
  v56 = 0xD00000000000001CLL;
  v57 = 0x800000021478A360;

  v25 = v18(&v79, &v78, &v54);
  if (v41)
  {

    v26 = v42;
  }

  else
  {
    if (v25)
    {
      v40 = v18;

      v54 = v42;
      v55 = v45;
      v56 = v44;
      LOBYTE(v57) = v43;

      sub_2140325F8(a12, v38, 0xD00000000000002ELL, 0x800000021478DE90, 0xD00000000000001CLL, 0x800000021478A360);

      v28 = v54;
      v27 = v55;
      v29 = v56;
      v30 = v57;

      *a9 = v47;
      *(a9 + 8) = a3;
      *(a9 + 16) = a4;
      *(a9 + 24) = a5;
      *(a9 + 32) = a6;
      *(a9 + 40) = a7;
      *(a9 + 48) = a8;
      *(a9 + 56) = v40;
      *(a9 + 64) = v19;
      v32 = v86;
      *(a9 + 72) = a10;
      *(a9 + 80) = v32;
      *(a9 + 88) = v46;
      *(a9 + 96) = v28;
      *(a9 + 104) = v27;
      *(a9 + 112) = v29;
      *(a9 + 120) = v30;
      v33 = *v83;
      *(a9 + 137) = *&v83[16];
      *(a9 + 121) = v33;
      result = *&v83[32];
      v35 = *&v83[48];
      v36 = *&v83[64];
      *(a9 + 200) = *&v83[79];
      *(a9 + 185) = v36;
      *(a9 + 169) = v35;
      *(a9 + 153) = result;
      *(a9 + 208) = a14;
      *(a9 + 216) = a15;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000023;
    v31[1] = 0x800000021478DE60;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();

    v26 = v42;
  }

  *&v75[15] = *&v83[79];
  v72 = *&v83[16];
  v71 = *v83;
  *v75 = *&v83[64];
  v74 = *&v83[48];
  LOBYTE(v54) = v47;
  *(&v54 + 1) = v85[0];
  HIDWORD(v54) = *(v85 + 3);
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v58 = a6;
  v59 = a7;
  v60 = a8;
  v61 = v18;
  v62 = v19;
  v63 = v39;
  v64 = v20;
  v65 = v21;
  *&v66[3] = *&v84[3];
  *v66 = *v84;
  v67 = v26;
  v68 = v45;
  v69 = v44;
  v70 = v43;
  v73 = *&v83[32];
  v76 = a14;
  v77 = a15;
  sub_2142EE95C(&v54);
  return result;
}

unint64_t sub_2141235E8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 == 2)
    {
      v4 = 0xD00000000000001DLL;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (a1 <= 1u)
    {
      return 0xD000000000000015;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x7865546E69616C70;
    if (a1 == 7)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000032;
    }

    if (a1 == 4)
    {
      v2 = 0xD000000000000016;
    }

    else
    {
      v2 = 0xD000000000000021;
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

uint64_t sub_214123728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214364E64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214123750(uint64_t a1)
{
  v2 = sub_2142EE9B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21412378C(uint64_t a1)
{
  v2 = sub_2142EE9B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmojiTapBack.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v130 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906A80, &qword_2146F4660);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v58 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EE9B0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v80 = v8;
  v81 = v4;
  v82 = v5;
  v10 = v130;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_2146DA9F8();
  if (qword_27C903238 != -1)
  {
    swift_once();
  }

  v13 = sub_2146DA008();
  v14 = __swift_project_value_buffer(v13, qword_27CA19EC8);
  if (*(v12 + 16) && (v15 = sub_21408C508(v14), (v16 & 1) != 0))
  {
    sub_2140537E4(*(v12 + 56) + 32 * v15, &v94);

    if (swift_dynamicCast())
    {
      v17 = v83;
    }

    else
    {
      v17 = 2;
    }
  }

  else
  {

    v17 = 2;
  }

  LOBYTE(v83) = 0;
  sub_2142EEA04();
  sub_2146DA1C8();
  v79 = v17;
  v18 = v94;
  LOBYTE(v94) = 1;
  v19 = sub_2146DA168();
  v21 = v20;
  v77 = v18;
  v78 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v83) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v76 = v21;
  v23 = v94;
  v22 = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  LOBYTE(v83) = 3;
  sub_2142E50D0();
  sub_2146DA1C8();
  v74 = v23;
  v75 = v22;
  v26 = v94;
  v25 = v95;
  LOBYTE(v94) = 4;
  *&v73 = sub_2146DA168();
  *(&v73 + 1) = v27;
  v71 = v26;
  v72 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v83) = 5;
  sub_2142E15CC();
  sub_2146DA1C8();
  v28 = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FD8, &qword_2146F0C50);
  v122 = 7;
  sub_2142ECFA4();
  sub_2146DA1C8();
  v119 = v125;
  v120 = v126;
  v121 = v127;
  v117 = v123;
  v118 = v124;
  v116 = 8;
  v29 = sub_2146DA168();
  *(&v62 + 1) = v30;
  v63 = v28;
  *&v62 = v29;
  *&v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v31 = swift_allocObject();
  v66 = xmmword_2146E9BF0;
  *(v31 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v32 = swift_allocObject();
  v33 = swift_allocObject();
  *(v33 + 16) = 1;
  *(v32 + 16) = sub_21438F758;
  *(v32 + 24) = v33;
  *(v31 + 32) = v32;
  sub_213FB2E54(&v117, &v94, &qword_27C904FD8, &qword_2146F0C50);
  sub_214042B80(v31, &v94);
  v70 = v95;
  v60 = v96;
  v67 = v97;
  v68 = v94;
  v69 = v98;
  v34 = swift_allocObject();
  *(v34 + 16) = v66;
  *(v34 + 32) = sub_2142E0AD0();
  sub_2140433DC(v34, &v83);
  *&v115[23] = v118;
  *&v115[39] = v119;
  *&v115[55] = v120;
  *&v115[71] = v121;
  v65 = v83;
  *&v66 = v84;
  v64 = BYTE8(v84);
  *&v115[7] = v117;
  v83 = v73;
  LOBYTE(v91) = v69;
  v94 = 0xD000000000000023;
  v95 = 0x800000021478DE60;
  v61 = 0x800000021478DE60;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;

  v35 = v68(&v83, &v91, &v94);
  v36 = v61;
  v59 = a1;
  if (v35)
  {

    v91 = v65;
    v92 = v66;
    v93 = v64;

    sub_2140325F8(v63, v79, 0xD00000000000002ELL, 0x800000021478DE90, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB2DF4(&v117, &qword_27C904FD8, &qword_2146F0C50);
    (*(v82 + 8))(v80, v81);
    v47 = v91;
    v81 = *(&v91 + 1);
    v82 = v91;
    v48 = v92;
    v80 = v92;
    v49 = v93;

    LOBYTE(v83) = v77;
    *(&v83 + 1) = v129[0];
    DWORD1(v83) = *(v129 + 3);
    *(&v83 + 1) = v78;
    *&v84 = v76;
    *(&v84 + 1) = v74;
    *&v85 = v75;
    *(&v85 + 1) = v71;
    *&v86 = v72;
    *(&v86 + 1) = v68;
    *v87 = v70;
    *&v87[8] = v73;
    v87[24] = v69;
    *&v87[28] = *&v128[3];
    *&v87[25] = *v128;
    v88 = v47;
    *&v89[0] = v48;
    BYTE8(v89[0]) = v49;
    *(&v89[2] + 9) = *&v115[32];
    *(&v89[3] + 9) = *&v115[48];
    *(&v89[4] + 9) = *&v115[64];
    *(v89 + 9) = *v115;
    *(&v89[1] + 9) = *&v115[16];
    v50 = v62;
    *(&v89[5] + 1) = *&v115[79];
    v90 = v62;
    v51 = v89[2];
    v10[8] = v89[1];
    v10[9] = v51;
    v52 = v84;
    *v10 = v83;
    v10[1] = v52;
    v53 = *&v87[16];
    v10[4] = *v87;
    v10[5] = v53;
    v54 = v86;
    v10[2] = v85;
    v10[3] = v54;
    v55 = v89[4];
    v10[10] = v89[3];
    v10[11] = v55;
    v56 = v89[0];
    v10[6] = v88;
    v10[7] = v56;
    v57 = v90;
    v10[12] = v89[5];
    v10[13] = v57;
    sub_2142EEA58(&v83, &v94);
    __swift_destroy_boxed_opaque_existential_1(v59);
    v111 = *&v115[32];
    v112 = *&v115[48];
    *v113 = *&v115[64];
    v109 = *v115;
    LOBYTE(v94) = v77;
    *(&v94 + 1) = v129[0];
    HIDWORD(v94) = *(v129 + 3);
    v95 = v78;
    v96 = v76;
    v97 = v74;
    v98 = v75;
    v99 = v71;
    v100 = v72;
    v101 = v68;
    v102 = v70;
    v103 = v73;
    v104 = v69;
    *&v105[3] = *&v128[3];
    *v105 = *v128;
    *&v106 = v82;
    *(&v106 + 1) = v81;
    v107 = v80;
    v108 = v49;
    v110 = *&v115[16];
    *&v113[15] = *&v115[79];
    v114 = v50;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD000000000000023;
    v37[1] = v36;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = 0x800000021478A360;
    swift_willThrow();

    v38 = v76;
    v40 = v80;
    v39 = v81;
    v41 = v59;
    sub_213FB2DF4(&v117, &qword_27C904FD8, &qword_2146F0C50);
    (*(v82 + 8))(v40, v39);
    v42 = v67;

    v43 = v70;

    v44 = v60;
    v45 = v75;
    v46 = v77;
    __swift_destroy_boxed_opaque_existential_1(v41);
    *&v113[15] = *&v115[79];
    v106 = v65;
    v110 = *&v115[16];
    v109 = *v115;
    *v113 = *&v115[64];
    v112 = *&v115[48];
    LOBYTE(v94) = v46;
    *(&v94 + 1) = v129[0];
    HIDWORD(v94) = *(v129 + 3);
    v95 = v78;
    v96 = v38;
    v97 = v74;
    v98 = v45;
    v99 = v71;
    v100 = v72;
    v101 = v68;
    v102 = v43;
    *&v103 = v44;
    *(&v103 + 1) = v42;
    v104 = v69;
    *&v105[3] = *&v128[3];
    *v105 = *v128;
    v107 = v66;
    v108 = v64;
    v111 = *&v115[32];
    v114 = v62;
  }

  return sub_2142EE95C(&v94);
}

uint64_t EmojiTapBack.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906A98, &qword_2146F4668);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v33 = *(v1 + 2);
  v34 = v9;
  v10 = *(v1 + 3);
  v31 = *(v1 + 4);
  v32 = v10;
  v11 = *(v1 + 6);
  *&v29 = *(v1 + 5);
  *(&v29 + 1) = v11;
  v12 = *(v1 + 9);
  v27 = *(v1 + 10);
  v28 = v12;
  v26 = *(v1 + 14);
  v13 = *(v1 + 11);
  v45 = *(v1 + 10);
  v46 = v13;
  v47 = *(v1 + 12);
  v14 = *(v1 + 9);
  v43 = *(v1 + 8);
  v44 = v14;
  v15 = *(v1 + 27);
  v30 = *(v1 + 26);
  v17 = a1[3];
  v16 = a1[4];
  v18 = a1;
  v20 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_2142EE9B0();
  sub_2146DAA28();
  LOBYTE(v38) = v8;
  LOBYTE(v36[0]) = 0;
  sub_2142EEAB4();
  v21 = v48;
  sub_2146DA388();
  if (v21)
  {
    return (*(v4 + 8))(v7, v20);
  }

  v23 = v31;
  v22 = v32;
  v48 = v15;
  LOBYTE(v38) = 1;
  sub_2146DA328();
  *&v38 = v22;
  *(&v38 + 1) = v23;
  LOBYTE(v36[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  v38 = v29;
  LOBYTE(v36[0]) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  sub_2146DA388();
  if (v27 && (LOBYTE(v38) = 4, , sub_2146DA328(), , v26))
  {
    *&v38 = v26;
    LOBYTE(v36[0]) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    v40 = v45;
    v41 = v46;
    v42 = v47;
    v38 = v43;
    v39 = v44;
    v37 = 7;
    sub_213FB2E54(&v43, v36, &qword_27C904FD8, &qword_2146F0C50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FD8, &qword_2146F0C50);
    sub_2142ED0D0();
    sub_2146DA388();
    v36[2] = v40;
    v36[3] = v41;
    v36[4] = v42;
    v36[0] = v38;
    v36[1] = v39;
    sub_213FB2DF4(v36, &qword_27C904FD8, &qword_2146F0C50);
    v35 = 8;
    sub_2146DA328();
    return (*(v4 + 8))(v7, v20);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21412490C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_214328704(a1, a4, type metadata accessor for EncodedAppData.EncodedContent);
  result = type metadata accessor for EncodedAppData(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t sub_214124974()
{
  if (*v0)
  {
    result = 0x6F69736E65747865;
  }

  else
  {
    result = 0x6D65686353707061;
  }

  *v0;
  return result;
}

uint64_t sub_2141249BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D65686353707061 && a2 == 0xE900000000000061;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69736E65747865 && a2 == 0xEB0000000064496ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_214124AA4(uint64_t a1)
{
  v2 = sub_2142EEB08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214124AE0(uint64_t a1)
{
  v2 = sub_2142EEB08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214124B1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for EncodedAppData.EncodedContent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906AA8, &qword_2146F4670);
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v22);
  v11 = &v21 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EEB08();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v21;
    v24 = 0;
    sub_214328930(&qword_27C906AB8, type metadata accessor for EncodedAppData.EncodedContent);
    v15 = v22;
    sub_2146DA1C8();
    v23 = 1;
    v17 = sub_2146DA168();
    v19 = v18;
    (*(v13 + 8))(v11, v15);
    sub_214328704(v7, v14, type metadata accessor for EncodedAppData.EncodedContent);
    v20 = (v14 + *(type metadata accessor for EncodedAppData(0) + 20));
    *v20 = v17;
    v20[1] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214124DA8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906AC0, &qword_2146F4678);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EEB08();
  sub_2146DAA28();
  v15[15] = 0;
  type metadata accessor for EncodedAppData.EncodedContent(0);
  sub_214328930(&qword_27C906AC8, type metadata accessor for EncodedAppData.EncodedContent);
  sub_2146DA388();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for EncodedAppData(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_2146DA328();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_214124FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_214125034(uint64_t a1)
{
  v2 = sub_2142EEB5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214125070(uint64_t a1)
{
  v2 = sub_2142EEB5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141250AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906AD0, &qword_2146F4680);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EEB5C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906AE0, &qword_2146F4688);
    sub_2142EEBB0();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21412522C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906AF8, &qword_2146F4690);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EEB5C();

  sub_2146DAA28();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906AE0, &qword_2146F4688);
  sub_2142EEC88();
  sub_2146DA388();

  return (*(v4 + 8))(v7, v3);
}

uint64_t ErrorMessage.init(with:type:additionalInfo:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  sub_214328704(a1, a5, type metadata accessor for Metadata);
  result = type metadata accessor for ErrorMessage();
  *(a5 + *(result + 20)) = v8;
  v10 = (a5 + *(result + 24));
  *v10 = a3;
  v10[1] = a4;
  return result;
}

uint64_t sub_21412544C()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697469646461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_2141254AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436514C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141254D4(uint64_t a1)
{
  v2 = sub_2142EED60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214125510(uint64_t a1)
{
  v2 = sub_2142EED60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ErrorMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for Metadata();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906B10, &qword_2146F4698);
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v23);
  v11 = &v22 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EED60();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v22;
    LOBYTE(v24) = 0;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata);
    sub_2146DA1C8();
    v15 = v7;
    v26 = 1;
    sub_2142EEDB4();
    sub_2146DA1C8();
    v16 = v13;
    LOBYTE(v13) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v26 = 2;
    sub_2142E12FC();
    sub_2146DA1C8();
    (*(v16 + 8))(v11, v23);
    v18 = v24;
    v19 = v25;
    sub_214328704(v15, v14, type metadata accessor for Metadata);
    v20 = type metadata accessor for ErrorMessage();
    *(v14 + *(v20 + 20)) = v13;
    v21 = (v14 + *(v20 + 24));
    *v21 = v18;
    v21[1] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ErrorMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906B28, &qword_2146F46A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EED60();
  sub_2146DAA28();
  LOBYTE(v13) = 0;
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  if (!v2)
  {
    v11 = type metadata accessor for ErrorMessage();
    LOBYTE(v13) = *(v3 + *(v11 + 20));
    v14 = 1;
    sub_2142EEE08();
    sub_2146DA388();
    v13 = *(v3 + *(v11 + 24));
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_214125AC4@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_214059900;
  *(v9 + 24) = 0;
  *(inited + 32) = v9;
  sub_214042B80(inited, &v38);
  v11 = v38;
  v10 = v39;
  v12 = v41;
  v28 = v40;
  v13 = v42;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_2146E9BF0;
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = 0xD000000000000017;
  *(v16 + 24) = 0x800000021478DEC0;
  *(v15 + 16) = sub_2142EEE5C;
  *(v15 + 24) = v16;
  *(v14 + 32) = v15;
  sub_214042B80(v14, &v53);
  v36 = v53;
  v37 = v54;
  v27 = v55;
  v60 = v56;
  v31 = v57;
  v32 = v13;
  v53 = a1;
  v54 = a2;
  v52 = v13;
  v38 = 0xD000000000000016;
  v39 = 0x800000021478DEE0;
  v40 = 0xD00000000000001CLL;
  v41 = 0x800000021478A360;

  v17 = v11(&v53, &v52, &v38);
  if (v33)
  {

    v18 = v28;
    v19 = v31;
    v20 = v10;
  }

  else if (v17)
  {

    v53 = a3;
    v54 = a4;
    v19 = v31;
    v52 = v31;
    v38 = 0xD000000000000016;
    v39 = 0x800000021478DF00;
    v40 = 0xD00000000000001CLL;
    v41 = 0x800000021478A360;

    v21 = v36(&v53, &v52, &v38);
    if (v21)
    {

      result = swift_bridgeObjectRelease_n();
      *a7 = v11;
      *(a7 + 8) = v10;
      *(a7 + 16) = a1;
      *(a7 + 24) = a2;
      *(a7 + 32) = v13;
      *(a7 + 40) = v36;
      *(a7 + 48) = v37;
      *(a7 + 56) = a3;
      *(a7 + 64) = a4;
      *(a7 + 72) = v31;
      *(a7 + 80) = a5;
      *(a7 + 88) = a6;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000016;
    v24[1] = 0x800000021478DF00;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();

    v12 = a2;
    v18 = a1;
    v20 = v10;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000016;
    v22[1] = 0x800000021478DEE0;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();

    v20 = v10;
    v18 = v28;
    v19 = v31;
  }

  v38 = v11;
  v39 = v20;
  v40 = v18;
  v41 = v12;
  v42 = v32;
  *v43 = v59[0];
  *&v43[3] = *(v59 + 3);
  v44 = v36;
  v45 = v37;
  v46 = v27;
  v47 = v60;
  v48 = v19;
  *v49 = v58[0];
  *&v49[3] = *(v58 + 3);
  v50 = a5;
  v51 = a6;
  return sub_2142EEE64(&v38);
}

uint64_t sub_214125F54()
{
  v1 = 0x64616F6C796170;
  if (*v0 != 1)
  {
    v1 = 0x614E64726F636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965636E6566;
  }
}

uint64_t sub_214125FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436526C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214125FDC(uint64_t a1)
{
  v2 = sub_2142EEEB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214126018(uint64_t a1)
{
  v2 = sub_2142EEEB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214126054@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906B38, &qword_2146F46A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142EEEB8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v82);
  }

  v12 = v6;
  v59 = a2;
  LOBYTE(v67) = 0;
  v13 = sub_2146DA168();
  v15 = v14;
  v16 = v13;
  LOBYTE(v67) = 1;
  v17 = sub_2146DA168();
  v58 = v18;
  v79 = 2;
  v19 = sub_2146DA168();
  v45 = v17;
  *&v49 = v19;
  *(&v49 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v54 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_214059900;
  *(v23 + 24) = 0;
  *(inited + 32) = v23;
  sub_214042B80(inited, &v67);
  v57 = v67;
  v46 = v68;
  v55 = v69;
  v56 = v70;
  v24 = swift_initStackObject();
  *(v24 + 16) = v54;
  v25 = swift_allocObject();
  v50 = v16;
  v26 = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = 0xD000000000000017;
  *(v27 + 24) = 0x800000021478DEC0;
  *(v26 + 16) = sub_21438F520;
  *(v26 + 24) = v27;
  *(v24 + 32) = v26;
  sub_214042B80(v24, &v60);
  v51 = v60;
  v53 = *(&v61 + 1);
  v47 = v61;
  *&v54 = *(&v60 + 1);
  v52 = v62;
  *&v60 = v50;
  *(&v60 + 1) = v15;
  LOBYTE(v66[0]) = v56;
  *&v67 = 0xD000000000000016;
  *(&v67 + 1) = 0x800000021478DEE0;
  v68 = 0xD00000000000001CLL;
  v69 = 0x800000021478A360;

  v28 = (v57)(&v60, v66, &v67);
  v48 = v5;
  v29 = v55;
  if (v28)
  {
    v46 = 0;

    v66[0] = v45;
    v66[1] = v58;
    LOBYTE(v60) = v52;
    *&v67 = 0xD000000000000016;
    *(&v67 + 1) = 0x800000021478DF00;
    v68 = 0xD00000000000001CLL;
    v69 = 0x800000021478A360;

    v30 = v46;
    v31 = v51(v66, &v60, &v67);
    if (v30)
    {
    }

    else
    {
      if (v31)
      {

        (*(v12 + 8))(v9, v5);

        v35 = v54;

        v36 = v57;
        v60 = v57;
        v37 = v50;
        *&v61 = v50;
        *(&v61 + 1) = v15;
        v38 = v56;
        LOBYTE(v62) = v56;
        *(&v62 + 1) = v51;
        *&v63 = v35;
        v39 = v58;
        *(&v63 + 1) = v45;
        *&v64 = v58;
        BYTE8(v64) = v52;
        v65 = v49;
        v40 = v63;
        v41 = v59;
        v59[2] = v62;
        v41[3] = v40;
        v42 = v65;
        v41[4] = v64;
        v41[5] = v42;
        v43 = v61;
        *v41 = v60;
        v41[1] = v43;
        sub_2142EEF0C(&v60, &v67);
        __swift_destroy_boxed_opaque_existential_1(v82);
        v67 = v36;
        v68 = v37;
        v69 = v15;
        v70 = v38;
        *v71 = v81[0];
        *&v71[3] = *(v81 + 3);
        v72 = v51;
        v73 = v35;
        v74 = v45;
        v75 = v39;
        goto LABEL_9;
      }

      sub_214031C4C();
      swift_allocError();
      *v44 = 0xD000000000000016;
      v44[1] = 0x800000021478DF00;
      v44[2] = 0xD00000000000001CLL;
      v44[3] = 0x800000021478A360;
      swift_willThrow();
    }

    v34 = v50;
    v33 = *(&v57 + 1);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD000000000000016;
    v32[1] = 0x800000021478DEE0;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();

    v15 = v29;
    v33 = *(&v57 + 1);
    v34 = v46;
  }

  (*(v12 + 8))(v9, v48);

  __swift_destroy_boxed_opaque_existential_1(v82);
  *&v67 = v57;
  *(&v67 + 1) = v33;
  v68 = v34;
  v69 = v15;
  v70 = v56;
  *v71 = v81[0];
  *&v71[3] = *(v81 + 3);
  v72 = v51;
  v73 = v54;
  v74 = v47;
  v75 = v53;
LABEL_9:
  v76 = v52;
  *v77 = *v80;
  *&v77[3] = *&v80[3];
  v78 = v49;
  return sub_2142EEE64(&v67);
}

uint64_t sub_214126748(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906B48, &qword_2146F46B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[8];
  v15[3] = v1[7];
  v16 = v10;
  v11 = v1[10];
  v15[1] = v1[11];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EEEB8();
  sub_2146DAA28();
  if (!v9)
  {
    goto LABEL_6;
  }

  v20 = 0;

  v13 = v17;
  sub_2146DA328();
  if (v13)
  {
    (*(v4 + 8))(v7, v3);
  }

  if (v16)
  {
    v19 = 1;

    sub_2146DA328();

    v18 = 2;
    sub_2146DA328();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2141269DC@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, unint64_t a4@<X3>, char *a5@<X4>, uint64_t (*a6)(void, void, void)@<X5>, unint64_t a7@<X6>, uint64_t (*a8)(void, void, void)@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, unint64_t a13)
{
  v59 = *a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_214059900;
  *(v19 + 24) = 0;
  *(v18 + 32) = v19;
  sub_214042B80(v18, &v74);
  v20 = v75;
  v51 = v76;
  v72 = v77;
  v73 = v74;
  v21 = v78;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2146E9BF0;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_214059900;
  *(v23 + 24) = 0;
  *(v22 + 32) = v23;
  sub_214042B80(v22, &v107);
  v67 = v107;
  v71 = v108;
  v52 = v109;
  v69 = v110;
  v70 = v111;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2146E9BF0;
  v25 = swift_allocObject();
  v26 = swift_allocObject();
  strcpy((v26 + 16), "fenceTrigger");
  *(v26 + 29) = 0;
  *(v26 + 30) = -5120;
  *(v25 + 16) = sub_21438F520;
  *(v25 + 24) = v26;
  *(v24 + 32) = v25;
  sub_214042B80(v24, v105);
  v62 = v105[0];
  v68 = v105[1];
  v53 = v105[2];
  v66 = v105[3];
  v56 = v106;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2146E9BF0;
  v28 = swift_allocObject();
  v29 = swift_allocObject();
  *(v29 + 16) = 49;
  *(v29 + 24) = 0xE100000000000000;
  *(v28 + 16) = sub_21438F520;
  *(v28 + 24) = v29;
  *(v27 + 32) = v28;
  sub_214042B80(v27, v103);
  v60 = v103[0];
  v54 = v103[2];
  v63 = v103[3];
  v64 = v103[1];
  v61 = v104;
  v107 = a1;
  v108 = a2;
  v57 = v21;
  LOBYTE(v105[0]) = v21;
  v74 = 0xD000000000000017;
  v75 = 0x800000021478DF20;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v30 = v73(&v107, v105, &v74);
  if (v55)
  {

    v31 = v67;
    v32 = v56;
LABEL_7:
    a2 = v72;

    v37 = v51;
    v38 = v52;
    v34 = v62;
    v39 = v66;
    v40 = v53;
    v33 = v69;
LABEL_8:
    v74 = v73;
    v75 = v20;
    v76 = v37;
    v77 = a2;
    v78 = v57;
    *v79 = v116[0];
    *&v79[3] = *(v116 + 3);
    v80 = v31;
    v81 = v71;
    v82 = v38;
    v83 = v33;
    v84 = v70;
    *v85 = v115[0];
    *&v85[3] = *(v115 + 3);
    v86 = a10;
    v87 = v59;
    *&v88[3] = *(v114 + 3);
    *v88 = v114[0];
    v89 = v34;
    v90 = v68;
    v91 = v40;
    v92 = v39;
    v93 = v32;
    *&v94[3] = *&v113[3];
    *v94 = *v113;
    v95 = v60;
    v96 = v64;
    v97 = v54;
    v98 = v63;
    v99 = v61;
    *&v100[3] = *(v112 + 3);
    *v100 = v112[0];
    v101 = a11;
    v102 = a12;
    return sub_2142EEF68(&v74);
  }

  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD000000000000017;
    v36[1] = 0x800000021478DF20;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    swift_willThrow();

    v31 = v67;
    v32 = v56;
    goto LABEL_7;
  }

  v33 = a4;
  v107 = a3;
  v108 = a4;
  LOBYTE(v105[0]) = v70;
  v74 = 0xD000000000000019;
  v75 = 0x800000021478DF40;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v31 = v67;
  if ((v67(&v107, v105, &v74) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000019;
    v42[1] = 0x800000021478DF40;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();

    v33 = v69;

    v37 = a1;
    v32 = v56;
    v34 = v62;
    v39 = v66;
    v38 = v52;
    v40 = v53;
    goto LABEL_8;
  }

  v107 = a6;
  v108 = a7;
  v32 = v56;
  LOBYTE(v105[0]) = v56;
  v74 = 0xD000000000000017;
  v75 = 0x800000021478DF60;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v34 = v62;
  v35 = v62(&v107, v105, &v74);
  if ((v35 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v44 = 0xD000000000000017;
    v44[1] = 0x800000021478DF60;
    v44[2] = 0xD00000000000001CLL;
    v44[3] = 0x800000021478A360;
    swift_willThrow();

    v39 = v66;
    v31 = v67;

    v38 = a3;
    v37 = a1;
    v40 = v53;
    goto LABEL_8;
  }

  v107 = a8;
  v108 = a13;
  LOBYTE(v105[0]) = v61;
  v74 = 0xD000000000000017;
  v75 = 0x800000021478DF80;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v43 = v60(&v107, v105, &v74);
  v31 = v67;
  if ((v43 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v46 = 0xD000000000000017;
    v46[1] = 0x800000021478DF80;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = 0x800000021478A360;
    swift_willThrow();

    v40 = a6;
    v38 = a3;
    v39 = a7;
    v37 = a1;
    v34 = v62;
    goto LABEL_8;
  }

  result = swift_bridgeObjectRelease_n();
  *a9 = v73;
  *(a9 + 8) = v20;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = v57;
  *(a9 + 33) = v116[0];
  *(a9 + 36) = *(v116 + 3);
  *(a9 + 40) = v67;
  *(a9 + 48) = v71;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = v70;
  *(a9 + 73) = v115[0];
  *(a9 + 76) = *(v115 + 3);
  *(a9 + 80) = a10;
  *(a9 + 88) = v59;
  *(a9 + 92) = *(v114 + 3);
  *(a9 + 89) = v114[0];
  *(a9 + 96) = v62;
  *(a9 + 104) = v68;
  *(a9 + 112) = a6;
  *(a9 + 120) = a7;
  *(a9 + 128) = v56;
  *(a9 + 132) = *&v113[3];
  *(a9 + 129) = *v113;
  *(a9 + 136) = v60;
  *(a9 + 144) = v64;
  *(a9 + 152) = a8;
  *(a9 + 160) = a13;
  *(a9 + 168) = v61;
  v45 = v112[0];
  *(a9 + 172) = *(v112 + 3);
  *(a9 + 169) = v45;
  *(a9 + 176) = a11;
  *(a9 + 184) = a12;
  return result;
}

uint64_t sub_2141273A8()
{
  v1 = *v0;
  v2 = 0x444965636E6566;
  v3 = 0x647574697474616CLL;
  if (v1 != 6)
  {
    v3 = 0x64757469676E6F6CLL;
  }

  v4 = 0x65636976726573;
  if (v1 != 4)
  {
    v4 = 0x6E6F6973726576;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1702125924;
  if (v1 != 2)
  {
    v5 = 0x5372656767697274;
  }

  if (*v0)
  {
    v2 = 0x4972656767697274;
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

uint64_t sub_2141274B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436538C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141274D8(uint64_t a1)
{
  v2 = sub_2142EEFBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214127514(uint64_t a1)
{
  v2 = sub_2142EEFBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214127550@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906B50, &qword_2146F46B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v64 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142EEFBC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v96);
  }

  v12 = v6;
  LOBYTE(v109) = 0;
  v13 = sub_2146DA168();
  v15 = v14;
  v95 = v13;
  LOBYTE(v109) = 1;
  v16 = sub_2146DA168();
  v18 = v17;
  v94 = v16;
  LOBYTE(v109) = 2;
  sub_2146DA188();
  v20 = v19;
  LOBYTE(v97) = 3;
  sub_2142EF010();
  sub_2146DA1C8();
  v21 = v109;
  LOBYTE(v109) = 4;
  *&v93 = sub_2146DA168();
  *(&v93 + 1) = v23;
  LOBYTE(v109) = 5;
  v91 = sub_2146DA168();
  v92 = v24;
  LOBYTE(v109) = 6;
  sub_2146DA188();
  v89 = v21;
  v26 = v25;
  v144 = 7;
  sub_2146DA188();
  v70 = v9;
  v71 = v27;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v28 = swift_allocObject();
  v90 = xmmword_2146E9BF0;
  *(v28 + 16) = xmmword_2146E9BF0;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_214059900;
  *(v29 + 24) = 0;
  *(v28 + 32) = v29;
  sub_214042B80(v28, &v109);
  v88 = v110;
  v67 = v111;
  v85 = v112;
  v86 = v109;
  v87 = v113;
  v30 = swift_allocObject();
  *(v30 + 16) = v90;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_214059900;
  *(v31 + 24) = 0;
  *(v30 + 32) = v31;
  sub_214042B80(v30, &v97);
  v82 = *(&v97 + 1);
  v79 = *(&v98 + 1);
  v74 = v98;
  v80 = v97;
  v81 = v99;
  v78 = swift_allocObject();
  *(v78 + 16) = v90;
  v32 = swift_allocObject();
  v33 = swift_allocObject();
  strcpy((v33 + 16), "fenceTrigger");
  *(v33 + 29) = 0;
  *(v33 + 30) = -5120;
  *(v32 + 16) = sub_21438F520;
  *(v32 + 24) = v33;
  v34 = v78;
  *(v78 + 32) = v32;
  sub_214042B80(v34, &v139);
  v75 = v139;
  v68 = v141;
  v77 = v140;
  v78 = v142;
  v76 = v143;
  v35 = swift_allocObject();
  *(v35 + 16) = v90;
  v36 = swift_allocObject();
  v37 = swift_allocObject();
  *(v37 + 16) = 49;
  *(v37 + 24) = 0xE100000000000000;
  *(v36 + 16) = sub_21438F520;
  *(v36 + 24) = v37;
  *(v35 + 32) = v36;
  sub_214042B80(v35, v137);
  v73 = v137[0];
  v69 = v137[2];
  v83 = v137[3];
  v84 = v137[1];
  v72 = v138;
  *&v97 = v95;
  *(&v97 + 1) = v15;
  LOBYTE(v139) = v87;
  v66 = 0xD000000000000017;
  v109 = 0xD000000000000017;
  v110 = 0x800000021478DF20;
  v111 = 0xD00000000000001CLL;
  v112 = 0x800000021478A360;
  *&v90 = 0x800000021478A360;

  v38 = v86(&v97, &v139, &v109);
  v64 = v5;
  v65 = v18;
  if ((v38 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v40 = v66;
    v40[1] = 0x800000021478DF20;
    v41 = v90;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = v41;
    swift_willThrow();

    v42 = v64;

    v43 = v85;
    v44 = v88;
    v92 = v88;
    v45 = v68;
    v95 = v67;
    v46 = v79;
    goto LABEL_7;
  }

  v39 = v90;

  *&v97 = v94;
  *(&v97 + 1) = v65;
  LOBYTE(v139) = v81;
  v109 = 0xD000000000000019;
  v110 = 0x800000021478DF40;
  v111 = 0xD00000000000001CLL;
  v112 = v39;

  if ((v80(&v97, &v139, &v109) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v48 = 0xD000000000000019;
    v48[1] = 0x800000021478DF40;
    v48[2] = 0xD00000000000001CLL;
    v48[3] = v90;
    swift_willThrow();

    v46 = v79;
    v92 = v82;
    v43 = v15;
LABEL_12:
    v44 = v88;
    v42 = v64;
    v45 = v68;
    goto LABEL_7;
  }

  v47 = v90;

  v97 = v93;
  LOBYTE(v139) = v76;
  v109 = v66;
  v110 = 0x800000021478DF60;
  v111 = 0xD00000000000001CLL;
  v112 = v47;

  if ((v75(&v97, &v139, &v109) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v50 = v66;
    v50[1] = 0x800000021478DF60;
    v50[2] = 0xD00000000000001CLL;
    v50[3] = v90;
    swift_willThrow();

    v92 = v77;
    v43 = v15;
    v74 = v94;
    v46 = v65;
    goto LABEL_12;
  }

  v49 = v90;

  v139 = v91;
  v140 = v92;
  LOBYTE(v97) = v72;
  v109 = v66;
  v110 = 0x800000021478DF80;
  v111 = 0xD00000000000001CLL;
  v112 = v49;

  if (v73(&v139, &v97, &v109))
  {

    (*(v12 + 8))(v70, v64);

    v51 = v84;

    *&v97 = v86;
    *(&v97 + 1) = v88;
    v52 = v95;
    *&v98 = v95;
    *(&v98 + 1) = v15;
    LOBYTE(v99) = v87;
    *(&v99 + 1) = v149[0];
    DWORD1(v99) = *(v149 + 3);
    *(&v99 + 1) = v80;
    *&v100 = v82;
    v53 = v65;
    *(&v100 + 1) = v94;
    *&v101 = v65;
    BYTE8(v101) = v81;
    *(&v101 + 9) = *v148;
    HIDWORD(v101) = *&v148[3];
    *&v102 = v20;
    v54 = v89;
    BYTE8(v102) = v89;
    *(&v102 + 9) = *v147;
    HIDWORD(v102) = *&v147[3];
    *&v103 = v75;
    *(&v103 + 1) = v77;
    v104 = v93;
    LOBYTE(v105) = v76;
    *(&v105 + 1) = *v146;
    DWORD1(v105) = *&v146[3];
    *(&v105 + 1) = v73;
    *&v106 = v51;
    *(&v106 + 1) = v91;
    *&v107 = v92;
    LOBYTE(v51) = v72;
    BYTE8(v107) = v72;
    HIDWORD(v107) = *&v145[3];
    *(&v107 + 9) = *v145;
    v55 = v71;
    *&v108 = v26;
    *(&v108 + 1) = v71;
    v56 = v100;
    a2[2] = v99;
    a2[3] = v56;
    v57 = v98;
    *a2 = v97;
    a2[1] = v57;
    v58 = v104;
    a2[6] = v103;
    a2[7] = v58;
    v59 = v102;
    a2[4] = v101;
    a2[5] = v59;
    v60 = v105;
    v61 = v106;
    v62 = v108;
    a2[10] = v107;
    a2[11] = v62;
    a2[8] = v60;
    a2[9] = v61;
    sub_2142EF064(&v97, &v109);
    __swift_destroy_boxed_opaque_existential_1(v96);
    v109 = v86;
    v110 = v88;
    v111 = v52;
    v112 = v15;
    v113 = v87;
    *v114 = v149[0];
    *&v114[3] = *(v149 + 3);
    v115 = v80;
    v116 = v82;
    v117 = v94;
    v118 = v53;
    v119 = v81;
    *v120 = *v148;
    *&v120[3] = *&v148[3];
    v121 = v20;
    v122 = v54;
    *v123 = *v147;
    *&v123[3] = *&v147[3];
    v124 = v75;
    v125 = v77;
    v126 = v93;
    v127 = v76;
    *v128 = *v146;
    *&v128[3] = *&v146[3];
    v129 = v73;
    v130 = v84;
    v131 = v91;
    v132 = v92;
    v133 = v51;
    *&v134[3] = *&v145[3];
    *v134 = *v145;
    v135 = v26;
    v136 = v55;
    return sub_2142EEF68(&v109);
  }

  sub_214031C4C();
  swift_allocError();
  *v63 = v66;
  v63[1] = 0x800000021478DF80;
  v63[2] = 0xD00000000000001CLL;
  v63[3] = v90;
  swift_willThrow();

  v92 = v84;
  v43 = v15;
  v74 = v94;
  v42 = v64;
  v46 = v65;
  v78 = *(&v93 + 1);
  v45 = v93;
  v44 = v88;
LABEL_7:
  (*(v12 + 8))(v70, v42);

  __swift_destroy_boxed_opaque_existential_1(v96);
  v109 = v86;
  v110 = v44;
  v111 = v95;
  v112 = v43;
  v113 = v87;
  *v114 = v149[0];
  *&v114[3] = *(v149 + 3);
  v115 = v80;
  v116 = v82;
  v117 = v74;
  v118 = v46;
  v119 = v81;
  *v120 = *v148;
  *&v120[3] = *&v148[3];
  v121 = v20;
  v122 = v89;
  *&v123[3] = *&v147[3];
  *v123 = *v147;
  v124 = v75;
  v125 = v77;
  *&v126 = v45;
  *(&v126 + 1) = v78;
  v127 = v76;
  *&v128[3] = *&v146[3];
  *v128 = *v146;
  v129 = v73;
  v130 = v84;
  v131 = v69;
  v132 = v83;
  v133 = v72;
  *&v134[3] = *&v145[3];
  *v134 = *v145;
  v135 = v26;
  v136 = v71;
  return sub_2142EEF68(&v109);
}

uint64_t sub_214128374(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906B68, &qword_2146F46C0);
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - v5;
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + 64);
  v24 = *(v1 + 56);
  v10 = *(v1 + 80);
  v23 = *(v1 + 88);
  v11 = *(v1 + 120);
  v20[1] = *(v1 + 112);
  v21 = v11;
  v12 = *(v1 + 160);
  v20[0] = *(v1 + 152);
  v22 = v12;
  v14 = *(v1 + 176);
  v13 = *(v1 + 184);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EEFBC();
  sub_2146DAA28();
  if (!v7)
  {
    goto LABEL_8;
  }

  v35 = 0;

  v16 = v25;
  sub_2146DA328();
  v17 = v3;
  if (v16)
  {
    (*(v26 + 8))(v6, v3);
  }

  if (!v9)
  {
    goto LABEL_8;
  }

  v34 = 1;

  sub_2146DA328();

  v33 = 2;
  sub_2146DA348();
  v32 = v23;
  v31 = 3;
  sub_2142EF0C0();
  sub_2146DA388();
  if (!v21)
  {
    goto LABEL_8;
  }

  v30 = 4;

  sub_2146DA328();
  v19 = v22;

  if (v19)
  {
    v29 = 5;

    sub_2146DA328();

    v28 = 6;
    sub_2146DA348();
    v27 = 7;
    sub_2146DA348();
    return (*(v26 + 8))(v6, v17);
  }

  else
  {
LABEL_8:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214128784@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, unint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  strcpy((v10 + 16), "mappingPacket");
  *(v10 + 30) = -4864;
  *(v9 + 16) = sub_21438F520;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  sub_214042B80(inited, &v37);
  v11 = v37;
  v12 = v38;
  v13 = v40;
  v27 = v39;
  v14 = v41;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_2146E9BF0;
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = 49;
  *(v17 + 24) = 0xE100000000000000;
  *(v16 + 16) = sub_21438F520;
  *(v16 + 24) = v17;
  *(v15 + 32) = v16;
  sub_214042B80(v15, &v51);
  v34 = v51;
  v36 = v52;
  v26 = v53;
  v57 = v54;
  v35 = v55;
  v51 = a3;
  v52 = a4;
  v30 = v14;
  v50 = v14;
  v37 = 0xD00000000000001FLL;
  v38 = 0x800000021478DFA0;
  v39 = 0xD00000000000001CLL;
  v40 = 0x800000021478A360;

  v18 = v11(&v51, &v50, &v37);
  if (v31)
  {

    v19 = v27;
  }

  else
  {
    v19 = v27;
    if (v18)
    {

      v51 = a5;
      v52 = a6;
      v50 = v35;
      v37 = 0xD000000000000018;
      v38 = 0x800000021478DFC0;
      v39 = 0xD00000000000001CLL;
      v40 = 0x800000021478A360;

      v20 = v34(&v51, &v50, &v37);
      if (v20)
      {

        result = swift_bridgeObjectRelease_n();
        *a7 = a1;
        *(a7 + 8) = a2;
        *(a7 + 16) = v11;
        *(a7 + 24) = v12;
        *(a7 + 32) = a3;
        *(a7 + 40) = a4;
        *(a7 + 48) = v30;
        *(a7 + 56) = v34;
        *(a7 + 64) = v36;
        *(a7 + 72) = a5;
        *(a7 + 80) = a6;
        *(a7 + 88) = v35;
        return result;
      }

      sub_214031C4C();
      swift_allocError();
      *v23 = 0xD000000000000018;
      v23[1] = 0x800000021478DFC0;
      v23[2] = 0xD00000000000001CLL;
      v23[3] = 0x800000021478A360;
      swift_willThrow();

      v13 = a4;
      v19 = a3;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v21 = 0xD00000000000001FLL;
      v21[1] = 0x800000021478DFA0;
      v21[2] = 0xD00000000000001CLL;
      v21[3] = 0x800000021478A360;
      swift_willThrow();
    }
  }

  v37 = a1;
  v38 = a2;
  v39 = v11;
  v40 = v12;
  v41 = v19;
  v42 = v13;
  v43 = v30;
  *v44 = v56[0];
  *&v44[3] = *(v56 + 3);
  v45 = v34;
  v46 = v36;
  v47 = v26;
  v48 = v57;
  v49 = v35;
  return sub_2142EF114(&v37);
}

uint64_t sub_214128C34()
{
  v1 = 0x5065636976726573;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x50676E697070616DLL;
  }
}

uint64_t sub_214128CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214365634(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214128CD0(uint64_t a1)
{
  v2 = sub_2142EF168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214128D0C(uint64_t a1)
{
  v2 = sub_2142EF168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214128D48@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906B78, &qword_2146F46C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v53 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142EF168();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v90);
  }

  v12 = v6;
  LOBYTE(v76) = 0;
  v13 = sub_2146DA168();
  v15 = v14;
  v69 = v13;
  LOBYTE(v76) = 1;
  v16 = sub_2146DA168();
  v18 = v17;
  v68 = v16;
  v88 = 2;
  v54 = sub_2146DA168();
  v60 = v5;
  v61 = v20;
  v59 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v65 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v22 = swift_allocObject();
  v66 = v18;
  v23 = v22;
  v24 = swift_allocObject();
  strcpy((v24 + 16), "mappingPacket");
  *(v24 + 30) = -4864;
  *(v23 + 16) = sub_21438F520;
  *(v23 + 24) = v24;
  *(inited + 32) = v23;
  sub_214042B80(inited, &v76);
  v67 = v76;
  v55 = v77;
  v57 = v78;
  v25 = v79;
  v26 = swift_initStackObject();
  *(v26 + 16) = v65;
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  *(v28 + 16) = 49;
  *(v28 + 24) = 0xE100000000000000;
  *(v27 + 16) = sub_21438F520;
  *(v27 + 24) = v28;
  *(v26 + 32) = v27;
  sub_214042B80(v26, &v70);
  v62 = v70;
  v64 = *(&v71 + 1);
  v56 = v71;
  *&v65 = *(&v70 + 1);
  v63 = v72;
  *&v70 = v68;
  *(&v70 + 1) = v66;
  v58 = v25;
  LOBYTE(v75[0]) = v25;
  v29 = v57;
  *&v76 = 0xD00000000000001FLL;
  *(&v76 + 1) = 0x800000021478DFA0;
  v77 = 0xD00000000000001CLL;
  v78 = 0x800000021478A360;

  v30 = (v67)(&v70, v75, &v76);
  v53 = 0x800000021478A360;
  v31 = v29;
  v32 = v61;
  if (v30)
  {
    v33 = v53;
    v55 = 0;

    v75[0] = v54;
    v75[1] = v32;
    LOBYTE(v70) = v63;
    *&v76 = 0xD000000000000018;
    *(&v76 + 1) = 0x800000021478DFC0;
    v77 = 0xD00000000000001CLL;
    v78 = v33;

    v34 = v55;
    v35 = v62(v75, &v70, &v76);
    if (v34)
    {
    }

    else
    {
      if (v35)
      {

        (*(v12 + 8))(v59, v60);

        v42 = v65;

        v44 = v68;
        v43 = v69;
        *&v70 = v69;
        *(&v70 + 1) = v15;
        v45 = v32;
        v46 = *(&v67 + 1);
        v71 = v67;
        v64 = v15;
        v47 = v66;
        *&v72 = v68;
        *(&v72 + 1) = v66;
        v48 = v58;
        LOBYTE(v73) = v58;
        *(&v73 + 1) = v62;
        *&v74[0] = v42;
        *(&v74[0] + 1) = v54;
        *&v74[1] = v45;
        BYTE8(v74[1]) = v63;
        v49 = v73;
        a2[2] = v72;
        a2[3] = v49;
        a2[4] = v74[0];
        *(a2 + 73) = *(v74 + 9);
        v50 = v71;
        *a2 = v70;
        a2[1] = v50;
        sub_2142EF1BC(&v70, &v76);
        __swift_destroy_boxed_opaque_existential_1(v90);
        *&v76 = v43;
        *(&v76 + 1) = v64;
        v77 = v67;
        v78 = v46;
        v79 = v44;
        v80 = v47;
        v81 = v48;
        *v82 = v89[0];
        *&v82[3] = *(v89 + 3);
        v83 = v62;
        v84 = v42;
        v85 = v54;
        v41 = v61;
        goto LABEL_9;
      }

      sub_214031C4C();
      swift_allocError();
      *v51 = 0xD000000000000018;
      v51[1] = 0x800000021478DFC0;
      v52 = v53;
      v51[2] = 0xD00000000000001CLL;
      v51[3] = v52;
      swift_willThrow();
    }

    v38 = v66;
    v39 = *(&v67 + 1);
    v40 = v68;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD00000000000001FLL;
    v36[1] = 0x800000021478DFA0;
    v37 = v53;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = v37;
    swift_willThrow();

    v38 = v31;
    v39 = *(&v67 + 1);
    v40 = v55;
  }

  (*(v12 + 8))(v59, v60);

  __swift_destroy_boxed_opaque_existential_1(v90);
  *&v76 = v69;
  *(&v76 + 1) = v15;
  v77 = v67;
  v78 = v39;
  v79 = v40;
  v80 = v38;
  v81 = v58;
  *v82 = v89[0];
  *&v82[3] = *(v89 + 3);
  v83 = v62;
  v84 = v65;
  v85 = v56;
  v41 = v64;
LABEL_9:
  v86 = v41;
  v87 = v63;
  return sub_2142EF114(&v76);
}

uint64_t sub_214129470(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906B88, &qword_2146F46D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[5];
  v19 = v1[4];
  v20 = v10;
  v11 = v1[9];
  v17 = v1[10];
  v18 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF168();
  sub_2146DAA28();
  v24 = 0;
  v13 = v21;
  sub_2146DA328();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v15 = v17;
  if (v20 && (v23 = 1, , sub_2146DA328(), , v15))
  {
    v22 = 2;

    sub_2146DA328();
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214129710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v108 = a8;
  v99 = a7;
  v109 = a6;
  v100 = a5;
  v110 = a4;
  v101 = a3;
  v111 = a2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v11 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v13 = (&v98 - v12);
  v107 = a1;
  sub_2143287C0(a1, a9, type metadata accessor for CloudKitSharingToken);
  v14 = type metadata accessor for FMFShareInvitation();
  v123 = v14[5];
  sub_21463A71C((a9 + v123));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v112 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = 0xD000000000000024;
  *(v17 + 24) = 0x800000021478AAF0;
  *(v16 + 16) = sub_21438F520;
  *(v16 + 24) = v17;
  *(inited + 32) = v16;
  sub_214042B80(inited, &v119);
  v106 = v120;
  v103 = v121;
  LODWORD(v102) = v122;
  v18 = swift_initStackObject();
  *(v18 + 16) = v112;
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = 49;
  *(v20 + 24) = 0xE100000000000000;
  *(v19 + 16) = sub_21438F520;
  *(v19 + 24) = v20;
  *(v18 + 32) = v19;
  sub_214042B80(v18, &v115);
  v22 = v116;
  v21 = v117;
  LOBYTE(a1) = v118;
  v23 = swift_initStackObject();
  *(v23 + 16) = v112;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_214059900;
  *(v24 + 24) = 0;
  *(v23 + 32) = v24;
  sub_214042B80(v23, v113);
  v25 = v114;
  v26 = a9 + v14[6];
  *v26 = v119;
  v27 = v103;
  *(v26 + 16) = v106;
  *(v26 + 24) = v27;
  *(v26 + 32) = v102;
  v28 = a9 + v14[7];
  *v28 = v115;
  *(v28 + 16) = v22;
  *(v28 + 24) = v21;
  v29 = a9;
  v30 = v111;
  *(v28 + 32) = a1;
  v31 = v29 + v14[8];
  v32 = v113[1];
  *v31 = v113[0];
  *(v31 + 16) = v32;
  *(v31 + 32) = v25;
  *&v112 = v29;
  sub_213FB2E54(v29 + v123, v13, &unk_27C9131D0, &qword_2146EAA70);
  v33 = *v13;
  v34 = v13[1];
  v35 = v104;
  v36 = *(v104 + 32);
  v106 = v13;
  LOBYTE(v115) = *(v13 + v36);
  *&v119 = 0xD000000000000016;
  *(&v119 + 1) = 0x800000021478DFE0;
  v120 = 0xD00000000000001CLL;
  v121 = 0x800000021478A360;
  v37 = v105;
  v38 = v33(v30, &v115, &v119);
  if (v37)
  {

    v39 = sub_2146D8958();
    (*(*(v39 - 8) + 8))(v30, v39);
    sub_21432887C(v107, type metadata accessor for CloudKitSharingToken);

LABEL_6:
    v47 = v112;
    sub_21402EDB8(v106, v112 + v123, &unk_27C9131D0, &qword_2146EAA70);
    return sub_21432887C(v47, type metadata accessor for FMFShareInvitation);
  }

  v103 = v28;
  v102 = v31;
  v105 = 0x800000021478A360;
  if ((v38 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v55 = 0xD000000000000016;
    v55[1] = 0x800000021478DFE0;
    v56 = v105;
    v55[2] = 0xD00000000000001CLL;
    v55[3] = v56;
    swift_willThrow();
    v57 = sub_2146D8958();
    (*(*(v57 - 8) + 8))(v111, v57);
    sub_21432887C(v107, type metadata accessor for CloudKitSharingToken);
    goto LABEL_6;
  }

  v40 = v35;
  v41 = v105;

  v42 = *(v40 + 28);
  v43 = v106;
  sub_213FB2DF4(v106 + v42, &unk_27C9131A0, &unk_2146E9D10);
  v44 = sub_2146D8958();
  v45 = *(v44 - 8);
  (*(v45 + 16))(v43 + v42, v111, v44);
  v98 = v45;
  v46 = *(v45 + 56);
  v104 = v44;
  v46(v43 + v42, 0, 1, v44);
  v47 = v112;
  sub_21402EDB8(v43, v112 + v123, &unk_27C9131D0, &qword_2146EAA70);
  v48 = *v26;
  v49 = *(v26 + 8);
  v50 = *(v26 + 24);
  v106 = *(v26 + 16);
  v51 = *(v26 + 32);
  v52 = v101;
  *&v115 = v101;
  *(&v115 + 1) = v110;
  LOBYTE(v113[0]) = v51;
  *&v119 = 0xD000000000000021;
  *(&v119 + 1) = 0x800000021478E000;
  v120 = 0xD00000000000001CLL;
  v121 = v41;
  v53 = v48;

  v54 = v53(&v115, v113, &v119);
  v123 = 0;
  if ((v54 & 1) == 0)
  {
    sub_214031C4C();
    v70 = swift_allocError();
    *v71 = 0xD000000000000021;
    v71[1] = 0x800000021478E000;
    v72 = v105;
    v71[2] = 0xD00000000000001CLL;
    v71[3] = v72;
    v123 = v70;
    swift_willThrow();

    (*(v98 + 8))(v111, v104);
    sub_21432887C(v107, type metadata accessor for CloudKitSharingToken);
    v73 = *(v26 + 8);
    v74 = *(v26 + 24);

    *v26 = v53;
    *(v26 + 8) = v49;
    *(v26 + 16) = v106;
    *(v26 + 24) = v50;
    *(v26 + 32) = v51;
    return sub_21432887C(v47, type metadata accessor for FMFShareInvitation);
  }

  v59 = v105;

  v60 = *(v26 + 8);
  v61 = *(v26 + 24);

  *v26 = v53;
  *(v26 + 8) = v49;
  v62 = v110;
  *(v26 + 16) = v52;
  *(v26 + 24) = v62;
  *(v26 + 32) = v51;
  v63 = v103;
  v65 = *v103;
  v64 = *(v103 + 8);
  v66 = *(v103 + 24);
  v106 = *(v103 + 16);
  v67 = *(v103 + 32);
  *&v115 = v100;
  *(&v115 + 1) = v109;
  LODWORD(v110) = v67;
  LOBYTE(v113[0]) = v67;
  *&v119 = 0xD00000000000001ALL;
  *(&v119 + 1) = 0x800000021478E030;
  v120 = 0xD00000000000001CLL;
  v121 = v59;

  v68 = v123;
  v69 = v65(&v115, v113, &v119);
  v123 = v68;
  if (v68)
  {

LABEL_16:

    (*(v98 + 8))(v111, v104);
    sub_21432887C(v107, type metadata accessor for CloudKitSharingToken);
    v89 = *(v63 + 8);
    v90 = *(v63 + 24);

    *v63 = v65;
    *(v63 + 8) = v64;
    *(v63 + 16) = v106;
    *(v63 + 24) = v66;
    *(v63 + 32) = v110;
    v47 = v112;
    return sub_21432887C(v47, type metadata accessor for FMFShareInvitation);
  }

  if ((v69 & 1) == 0)
  {
    sub_214031C4C();
    v87 = swift_allocError();
    *v88 = 0xD00000000000001ALL;
    v88[1] = 0x800000021478E030;
    v88[2] = 0xD00000000000001CLL;
    v88[3] = v105;
    v123 = v87;
    swift_willThrow();

    goto LABEL_16;
  }

  v75 = v105;

  v76 = *(v63 + 8);
  v77 = *(v63 + 24);

  *v63 = v65;
  *(v63 + 8) = v64;
  v78 = v109;
  *(v63 + 16) = v100;
  *(v63 + 24) = v78;
  *(v63 + 32) = v110;
  v79 = v102;
  v81 = *v102;
  v80 = *(v102 + 8);
  v82 = *(v102 + 24);
  v110 = *(v102 + 16);
  v83 = *(v102 + 32);
  *&v115 = v99;
  *(&v115 + 1) = v108;
  LOBYTE(v113[0]) = v83;
  *&v119 = 0xD00000000000001FLL;
  *(&v119 + 1) = 0x800000021478E050;
  v120 = 0xD00000000000001CLL;
  v121 = v75;

  v84 = v123;
  v85 = v81(&v115, v113, &v119);
  if (v84)
  {

    v47 = v112;
    v86 = v107;
LABEL_20:
    (*(v98 + 8))(v111, v104);
    sub_21432887C(v86, type metadata accessor for CloudKitSharingToken);
    v96 = *(v79 + 8);
    v97 = *(v79 + 24);

    *v79 = v81;
    *(v79 + 8) = v80;
    *(v79 + 16) = v110;
    *(v79 + 24) = v82;
    *(v79 + 32) = v83;
    return sub_21432887C(v47, type metadata accessor for FMFShareInvitation);
  }

  v47 = v112;
  v86 = v107;
  if ((v85 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v94 = 0xD00000000000001FLL;
    v94[1] = 0x800000021478E050;
    v95 = v105;
    v94[2] = 0xD00000000000001CLL;
    v94[3] = v95;
    swift_willThrow();

    goto LABEL_20;
  }

  (*(v98 + 8))(v111, v104);
  sub_21432887C(v86, type metadata accessor for CloudKitSharingToken);
  v91 = *(v79 + 8);
  v92 = *(v79 + 24);

  *v79 = v81;
  *(v79 + 8) = v80;
  v93 = v108;
  *(v79 + 16) = v99;
  *(v79 + 24) = v93;
  *(v79 + 32) = v83;
  return result;
}

uint64_t sub_21412A3A0()
{
  v1 = *v0;
  v2 = 0x6E656B6F74;
  v3 = 0x5065636976726573;
  v4 = 0x6E6F6973726576;
  if (v1 != 3)
  {
    v4 = 0x64726F6365526B63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7107189;
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

uint64_t sub_21412A444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436575C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21412A46C(uint64_t a1)
{
  v2 = sub_2142EF218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21412A4A8(uint64_t a1)
{
  v2 = sub_2142EF218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21412A4E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v3 = *(*(v125 - 8) + 64);
  MEMORY[0x28223BE20](v125);
  v126 = &v110 - v4;
  v128 = sub_2146D8958();
  v127 = *(v128 - 8);
  v5 = *(v127 + 64);
  MEMORY[0x28223BE20](v128);
  v7 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for CloudKitSharingToken();
  v8 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v131 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906B90, &qword_2146F46D8);
  v130 = *(v10 - 8);
  v11 = *(v130 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v110 - v12;
  v14 = type metadata accessor for FMFShareInvitation();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF218();
  v19 = v142;
  sub_2146DAA08();
  if (v19)
  {
    v20 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  v123 = v7;
  v122 = v17;
  v142 = a1;
  LOBYTE(v138) = 0;
  sub_214328930(&qword_27C9057A0, type metadata accessor for CloudKitSharingToken);
  v21 = v131;
  sub_2146DA1C8();
  LOBYTE(v138) = 1;
  sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260]);
  sub_2146DA1C8();
  LOBYTE(v138) = 2;
  v121 = sub_2146DA168();
  v129 = v22;
  LOBYTE(v138) = 3;
  v117 = sub_2146DA168();
  v120 = v23;
  LOBYTE(v138) = 4;
  v110 = sub_2146DA168();
  v115 = v25;
  v116 = v10;
  v26 = v122;
  sub_2143287C0(v21, v122, type metadata accessor for CloudKitSharingToken);
  v114 = v14;
  v119 = *(v14 + 20);
  sub_21463A71C(&v119[v26]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v118 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v28 = swift_allocObject();
  v29 = swift_allocObject();
  *(v29 + 16) = 0xD000000000000024;
  *(v29 + 24) = 0x800000021478AAF0;
  *(v28 + 16) = sub_21438F520;
  *(v28 + 24) = v29;
  *(inited + 32) = v28;
  sub_214042B80(inited, &v138);
  v30 = v139;
  v113 = v140;
  LODWORD(v112) = v141;
  v31 = swift_initStackObject();
  *(v31 + 16) = v118;
  v32 = swift_allocObject();
  v33 = swift_allocObject();
  *(v33 + 16) = 49;
  *(v33 + 24) = 0xE100000000000000;
  *(v32 + 16) = sub_21438F520;
  *(v32 + 24) = v33;
  *(v31 + 32) = v32;
  sub_214042B80(v31, &v134);
  v35 = v135;
  v34 = v136;
  v111 = v137;
  v36 = swift_initStackObject();
  *(v36 + 16) = v118;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_214059900;
  *(v37 + 24) = 0;
  *(v36 + 32) = v37;
  sub_214042B80(v36, v132);
  v38 = v133;
  v39 = v114;
  v40 = v122;
  v41 = v122 + *(v114 + 24);
  *v41 = v138;
  v42 = v113;
  *(v41 + 16) = v30;
  *(v41 + 24) = v42;
  *(v41 + 32) = v112;
  v43 = v40 + *(v39 + 28);
  *v43 = v134;
  *(v43 + 16) = v35;
  *(v43 + 24) = v34;
  *(v43 + 32) = v111;
  v44 = v40 + *(v39 + 32);
  v45 = v132[1];
  *v44 = v132[0];
  *(v44 + 16) = v45;
  *(v44 + 32) = v38;
  *&v118 = 0x800000021478A360;
  v46 = v126;
  sub_213FB2E54(&v119[v40], v126, &unk_27C9131D0, &qword_2146EAA70);
  v47 = *v46;
  v48 = *(v46 + 8);
  LOBYTE(v134) = *(v46 + *(v125 + 32));
  *&v138 = 0xD000000000000016;
  *(&v138 + 1) = 0x800000021478DFE0;
  v114 = 0x800000021478DFE0;
  v139 = 0xD00000000000001CLL;
  v140 = v118;
  v49 = v47(v123, &v134, &v138);
  v50 = v114;
  v113 = v43;
  v112 = v44;
  v51 = v116;
  if (v49)
  {
    v52 = v118;

    v53 = *(v125 + 28);
    v54 = v126;
    sub_213FB2DF4(v126 + v53, &unk_27C9131A0, &unk_2146E9D10);
    v55 = v127;
    v56 = v128;
    (*(v127 + 16))(v54 + v53, v123, v128);
    (*(v55 + 56))(v54 + v53, 0, 1, v56);
    sub_21402EDB8(v54, &v119[v122], &unk_27C9131D0, &qword_2146EAA70);
    v57 = *v41;
    v58 = *(v41 + 8);
    v59 = *(v41 + 24);
    v119 = *(v41 + 16);
    v126 = v41;
    v60 = *(v41 + 32);
    *&v134 = v121;
    *(&v134 + 1) = v129;
    LODWORD(v125) = v60;
    LOBYTE(v132[0]) = v60;
    *&v138 = 0xD000000000000021;
    *(&v138 + 1) = 0x800000021478E000;
    v139 = 0xD00000000000001CLL;
    v140 = v52;
    v61 = v57;

    v62 = v61(&v134, v132, &v138);
    if (v62)
    {
      v119 = v13;
      v67 = v118;

      v68 = v126;
      v69 = *(v126 + 8);
      v70 = *(v126 + 24);

      *v68 = v61;
      *(v68 + 8) = v58;
      v71 = v129;
      *(v68 + 16) = v121;
      *(v68 + 24) = v71;
      *(v68 + 32) = v125;
      v73 = *v113;
      v72 = *(v113 + 8);
      v74 = *(v113 + 24);
      v126 = *(v113 + 16);
      v75 = *(v113 + 32);
      *&v134 = v117;
      *(&v134 + 1) = v120;
      LODWORD(v129) = v75;
      LOBYTE(v132[0]) = v75;
      *&v138 = 0xD00000000000001ALL;
      *(&v138 + 1) = 0x800000021478E030;
      v139 = 0xD00000000000001CLL;
      v140 = v67;

      v76 = v73(&v134, v132, &v138);
      if (v76)
      {
        v86 = v118;

        v87 = v113;
        v88 = *(v113 + 8);
        v89 = *(v113 + 24);

        *v87 = v73;
        *(v87 + 8) = v72;
        v90 = v120;
        *(v87 + 16) = v117;
        *(v87 + 24) = v90;
        *(v87 + 32) = v129;
        v92 = *v112;
        v91 = *(v112 + 8);
        v94 = *(v112 + 16);
        v93 = *(v112 + 24);
        v95 = *(v112 + 32);
        *&v134 = v110;
        *(&v134 + 1) = v115;
        LOBYTE(v132[0]) = v95;
        *&v138 = 0xD00000000000001FLL;
        *(&v138 + 1) = 0x800000021478E050;
        v139 = 0xD00000000000001CLL;
        v140 = v86;

        v96 = v92(&v134, v132, &v138);
        if (v96)
        {

          (*(v127 + 8))(v123, v128);
          sub_21432887C(v131, type metadata accessor for CloudKitSharingToken);
          (*(v130 + 8))(v119, v116);
          v101 = v112;
          v102 = *(v112 + 8);
          v103 = *(v112 + 24);

          *v101 = v92;
          *(v101 + 8) = v91;
          v104 = v115;
          *(v101 + 16) = v110;
          *(v101 + 24) = v104;
          *(v101 + 32) = v95;
          sub_214328704(v122, v124, type metadata accessor for FMFShareInvitation);
          v20 = v142;
          return __swift_destroy_boxed_opaque_existential_1(v20);
        }

        sub_214031C4C();
        swift_allocError();
        *v105 = 0xD00000000000001FLL;
        v105[1] = 0x800000021478E050;
        v106 = v118;
        v105[2] = 0xD00000000000001CLL;
        v105[3] = v106;
        swift_willThrow();

        (*(v127 + 8))(v123, v128);
        sub_21432887C(v131, type metadata accessor for CloudKitSharingToken);
        (*(v130 + 8))(v119, v116);
        v107 = v112;
        v108 = *(v112 + 8);
        v109 = *(v112 + 24);

        *v107 = v92;
        *(v107 + 8) = v91;
        *(v107 + 16) = v94;
        *(v107 + 24) = v93;
        *(v107 + 32) = v95;
        goto LABEL_13;
      }

      sub_214031C4C();
      swift_allocError();
      *v97 = 0xD00000000000001ALL;
      v97[1] = 0x800000021478E030;
      v98 = v118;
      v97[2] = 0xD00000000000001CLL;
      v97[3] = v98;
      swift_willThrow();

      (*(v127 + 8))(v123, v128);
      sub_21432887C(v131, type metadata accessor for CloudKitSharingToken);
      (*(v130 + 8))(v119, v116);
      v82 = v113;
      v99 = *(v113 + 8);
      v100 = *(v113 + 24);

      *v82 = v73;
      *(v82 + 8) = v72;
      *(v82 + 16) = v126;
      *(v82 + 24) = v74;
      v85 = &v141;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v77 = 0xD000000000000021;
      v77[1] = 0x800000021478E000;
      v78 = v61;
      v79 = v118;
      v77[2] = 0xD00000000000001CLL;
      v77[3] = v79;
      swift_willThrow();

      v80 = v78;

      v81 = v130;

      (*(v55 + 8))(v123, v128);
      sub_21432887C(v131, type metadata accessor for CloudKitSharingToken);
      (*(v81 + 8))(v13, v116);
      v82 = v126;
      v83 = *(v126 + 8);
      v84 = *(v126 + 24);

      *v82 = v80;
      *(v82 + 8) = v58;
      *(v82 + 16) = v119;
      *(v82 + 24) = v59;
      v85 = &v138;
    }

    *(v82 + 32) = *(v85 - 64);
LABEL_13:
    v65 = v142;
    v66 = v122;
    goto LABEL_8;
  }

  sub_214031C4C();
  swift_allocError();
  *v63 = 0xD000000000000016;
  v63[1] = v50;
  v64 = v118;
  v63[2] = 0xD00000000000001CLL;
  v63[3] = v64;
  swift_willThrow();
  (*(v127 + 8))(v123, v128);
  sub_21432887C(v131, type metadata accessor for CloudKitSharingToken);
  (*(v130 + 8))(v13, v51);
  v65 = v142;
  v66 = v122;
  sub_21402EDB8(v126, &v119[v122], &unk_27C9131D0, &qword_2146EAA70);
LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v65);
  return sub_21432887C(v66, type metadata accessor for FMFShareInvitation);
}

uint64_t sub_21412B6B4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = &v34 - v6;
  v37 = sub_2146D8958();
  v39 = *(v37 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906BA0, &qword_2146F46E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF218();
  sub_2146DAA28();
  v44 = 0;
  type metadata accessor for CloudKitSharingToken();
  sub_214328930(&qword_27C9057C0, type metadata accessor for CloudKitSharingToken);
  v16 = v2;
  v17 = v38;
  sub_2146DA388();
  if (v17)
  {
    return (*(v11 + 8))(v14, v10);
  }

  v19 = v9;
  v38 = v11;
  v34 = type metadata accessor for FMFShareInvitation();
  v35 = v16;
  v20 = v16 + *(v34 + 20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v22 = v36;
  sub_213FB2E54(v20 + *(v21 + 28), v36, &unk_27C9131A0, &unk_2146E9D10);
  v23 = v37;
  if ((*(v39 + 48))(v22, 1, v37) == 1)
  {
    sub_213FB2DF4(v22, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    (*(v39 + 32))(v19, v22, v23);
    v43 = 1;
    sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260]);
    v24 = v10;
    sub_2146DA388();
    (*(v39 + 8))(v19, v23);
    v25 = v34;
    v26 = v35;
    v27 = v35 + *(v34 + 24);
    if (*(v27 + 24))
    {
      v28 = *(v27 + 16);
      v42 = 2;

      sub_2146DA328();
      v29 = v38;

      v30 = v26 + *(v25 + 28);
      if (*(v30 + 24))
      {
        v31 = *(v30 + 16);
        v41 = 3;

        sub_2146DA328();

        v32 = v26 + *(v25 + 32);
        if (*(v32 + 24))
        {
          v33 = *(v32 + 16);
          v40 = 4;

          sub_2146DA328();
          (*(v29 + 8))(v14, v24);
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21412BC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2146D8B08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v35 = a1;
  v10(a4, a1, v8);
  v11 = type metadata accessor for Alignment();
  v34 = a2;
  v10(a4 + *(v11 + 20), a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2146ED240;
  *(v13 + 16) = sub_21438F468;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_21404328C(inited, &v36);
  v16 = v36;
  v15 = v37;
  v17 = v38;
  v18 = v39;
  v19 = BYTE1(v39);
  v20 = a4 + *(v11 + 24);
  *v20 = v36;
  *(v20 + 8) = v15;
  v31 = v17;
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  *(v20 + 25) = v19;
  v41 = v18;
  v39 = 0x800000021478A360;
  v40 = a3;
  v33 = v19;
  v42 = v19;
  v36 = 0xD00000000000001BLL;
  v37 = 0x800000021478E070;
  v38 = 0xD00000000000001CLL;

  v21 = v16(&v40, &v42, &v36);
  if (v32)
  {
    v30 = a4;
    v22 = *(v9 + 8);
    v22(v34, v8);
    v22(v35, v8);
  }

  else
  {
    if (v21)
    {

      v23 = *(v9 + 8);
      v23(v34, v8);
      v23(v35, v8);
      v24 = *(v20 + 8);

      *v20 = v16;
      *(v20 + 8) = v15;
      *(v20 + 16) = a3;
      *(v20 + 24) = 0;
      *(v20 + 25) = v33;
      return result;
    }

    v30 = a4;
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD00000000000001BLL;
    v26[1] = 0x800000021478E070;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();
    v27 = *(v9 + 8);
    v27(v34, v8);
    v27(v35, v8);
  }

  v28 = v41;
  v29 = *(v20 + 8);

  *v20 = v16;
  *(v20 + 8) = v15;
  *(v20 + 16) = v31;
  *(v20 + 24) = v28;
  *(v20 + 25) = v33;
  return sub_21432887C(v30, type metadata accessor for Alignment);
}

uint64_t sub_21412BFB0()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574614465736162;
  }
}

uint64_t sub_21412C010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214365914(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21412C038(uint64_t a1)
{
  v2 = sub_2142EF26C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21412C074(uint64_t a1)
{
  v2 = sub_2142EF26C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21412C0B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = sub_2146D8B08();
  v66 = *(v3 - 8);
  v67 = v3;
  v4 = v66[8];
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906BA8, &qword_2146F46E8);
  v68 = *(v10 - 8);
  v11 = *(v68 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - v12;
  v14 = type metadata accessor for Alignment();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v18 = a1[4];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_2142EF26C();
  v20 = v69;
  sub_2146DAA08();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  v63 = v17;
  v64 = v7;
  LOBYTE(v71) = 0;
  sub_214328930(&qword_280B34D28, MEMORY[0x277CC9578]);
  v21 = v67;
  sub_2146DA1C8();
  v22 = v13;
  LOBYTE(v71) = 1;
  v23 = v64;
  sub_2146DA1C8();
  v69 = v9;
  LOBYTE(v71) = 2;
  v25 = sub_2146DA1A8();
  v26 = v66;
  v62 = 0;
  v27 = v66[2];
  v28 = v63;
  v59 = v25;
  v27(v63, v69, v21);
  v27(&v28[*(v14 + 20)], v23, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v30 = swift_allocObject();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2146ED240;
  *(v30 + 16) = sub_21438F468;
  *(v30 + 24) = v31;
  *(inited + 32) = v30;
  sub_21404328C(inited, &v71);
  v33 = v71;
  v32 = v72;
  v34 = v73;
  v35 = v74;
  v36 = BYTE1(v74);
  v37 = *(v14 + 24);
  v38 = v59;
  v39 = &v63[v37];
  *v39 = v71;
  *(v39 + 1) = v32;
  v57 = v34;
  *(v39 + 2) = v34;
  v39[24] = v35;
  v39[25] = v36;
  v76 = v35;
  v74 = 0x800000021478A360;
  v75 = v38;
  v61 = v36;
  v77 = v36;
  v71 = 0xD00000000000001BLL;
  v72 = 0x800000021478E070;
  v58 = 0x800000021478E070;
  v73 = 0xD00000000000001CLL;

  v60 = v32;
  v40 = v62;
  v62 = v33;
  v41 = v33(&v75, &v77, &v71);
  if (!v40)
  {
    v45 = v58;
    if ((v41 & 1) == 0)
    {
      sub_214031C4C();
      swift_allocError();
      *v50 = 0xD00000000000001BLL;
      v50[1] = v45;
      v50[2] = 0xD00000000000001CLL;
      v50[3] = 0x800000021478A360;
      swift_willThrow();
      v51 = v66[1];
      v51(v64, v21);
      v51(v69, v21);
      (*(v68 + 8))(v22, v10);
      goto LABEL_9;
    }

    v46 = v66[1];
    v46(v64, v21);
    v46(v69, v21);
    (*(v68 + 8))(v22, v10);
    v47 = *(v39 + 1);

    v48 = v63;
    v49 = v60;
    *v39 = v62;
    *(v39 + 1) = v49;
    *(v39 + 2) = v38;
    v39[24] = 0;
    v39[25] = v61;
    sub_214328704(v48, v65, type metadata accessor for Alignment);
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  v42 = v10;
  v43 = v68;
  v44 = v26[1];
  v44(v64, v21);
  v44(v69, v21);
  (*(v43 + 8))(v22, v42);

LABEL_9:
  v52 = v63;
  v53 = v76;
  v54 = *(v39 + 1);

  v55 = v60;
  *v39 = v62;
  *(v39 + 1) = v55;
  *(v39 + 2) = v57;
  v39[24] = v53;
  v39[25] = v61;
  __swift_destroy_boxed_opaque_existential_1(v70);
  return sub_21432887C(v52, type metadata accessor for Alignment);
}

uint64_t sub_21412C7A8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906BB8, &qword_2146F46F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF26C();
  sub_2146DAA28();
  v19 = 0;
  sub_2146D8B08();
  sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578]);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = type metadata accessor for Alignment();
  v12 = *(v11 + 20);
  v18 = 1;
  sub_2146DA388();
  v13 = v3 + *(v11 + 24);
  if ((*(v13 + 24) & 1) == 0)
  {
    v14 = *(v13 + 16);
    v17 = 2;
    sub_2146DA368();
    return (*(v6 + 8))(v9, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21412CA20@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[1] = vdupq_n_s64(1uLL);
  *(v8 + 16) = sub_21438F468;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_21404328C(inited, &v18);
  v10 = v18;
  v11 = v19;
  v12 = BYTE1(v21);
  v23 = a3;
  v22 = BYTE1(v21);
  v18 = 0xD00000000000001DLL;
  v19 = 0x800000021478E090;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v13 = v10(&v23, &v22, &v18);
  if (v4)
  {
  }

  else
  {
    if (v13)
    {

      *a4 = a1;
      *(a4 + 8) = v16;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = a3;
      *(a4 + 40) = 0;
      *(a4 + 41) = v12;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD00000000000001DLL;
    v15[1] = 0x800000021478E090;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21412CC24(uint64_t a1)
{
  v2 = sub_2142EF2C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21412CC60(uint64_t a1)
{
  v2 = sub_2142EF2C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21412CC9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906BC0, &qword_2146F46F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF2C0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906BD0, &qword_2146F4700);
  LOBYTE(v36) = 0;
  sub_2142EF314();
  sub_2146DA1C8();
  v11 = v31;
  LOBYTE(v36) = 1;
  sub_2142EF3C8();
  sub_2146DA1C8();
  v12 = v31;
  LOBYTE(v31) = 2;
  v13 = sub_2146DA1A8();
  v28 = v11;
  v27 = v12;
  v30 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  v17[1] = vdupq_n_s64(1uLL);
  *(v16 + 16) = sub_21438F468;
  *(v16 + 24) = v17;
  *(inited + 32) = v16;
  sub_21404328C(inited, &v31);
  v19 = v31;
  v18 = v32;
  v36 = v30;
  v26 = BYTE1(v34);
  v35 = BYTE1(v34);
  v31 = 0xD00000000000001DLL;
  v32 = 0x800000021478E090;
  v29 = 0x800000021478E090;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v25 = v19;
  v20 = v19(&v36, &v35, &v31);
  v21 = v28;
  if (v20)
  {

    (*(v6 + 8))(v9, v5);

    *a2 = v21;
    *(a2 + 8) = v27;
    *(a2 + 16) = v25;
    *(a2 + 24) = v18;
    *(a2 + 32) = v30;
    *(a2 + 40) = 0;
    *(a2 + 41) = v26;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v22 = v29;
    *v23 = 0xD00000000000001DLL;
    v23[1] = v22;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21412D0E8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906BF0, &qword_2146F4708);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v16 = *(v1 + 8);
  v15 = v1[4];
  v14 = *(v1 + 40);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF2C0();
  sub_2146DAA28();
  v21 = v9;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906BD0, &qword_2146F4700);
  sub_2142EF41C();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v11 = v14;
  v19 = v16;
  v18 = 1;
  sub_2142EF4D0();
  sub_2146DA388();
  if ((v11 & 1) == 0)
  {
    v17 = 2;
    sub_2146DA368();
    return (*(v5 + 8))(v8, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21412D378(uint64_t a1)
{
  v2 = sub_2142EF524();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21412D3B4(uint64_t a1)
{
  v2 = sub_2142EF524();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21412D434(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C20, &qword_2146F4718);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF524();
  sub_2146DAA28();
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21412D5C4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C20, &qword_2146F4718);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF524();
  sub_2146DAA28();
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21412D73C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[1] = vdupq_n_s64(1uLL);
  *(v8 + 16) = sub_21438F468;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_21404328C(inited, &v18);
  v10 = v18;
  v11 = v19;
  v12 = BYTE1(v21);
  v23 = a3;
  v22 = BYTE1(v21);
  v18 = 0xD00000000000001ALL;
  v19 = 0x800000021478E0B0;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v13 = v10(&v23, &v22, &v18);
  if (v4)
  {
  }

  else
  {
    if (v13)
    {

      *a4 = a1;
      *(a4 + 8) = v16;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = a3;
      *(a4 + 40) = 0;
      *(a4 + 41) = v12;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD00000000000001ALL;
    v15[1] = 0x800000021478E0B0;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21412D940(uint64_t a1)
{
  v2 = sub_2142EF578();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21412D97C(uint64_t a1)
{
  v2 = sub_2142EF578();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21412D9B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C28, &unk_2146F4720);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF578();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C38, &qword_21476B570);
  LOBYTE(v36) = 0;
  sub_2142EF5CC();
  sub_2146DA1C8();
  v11 = v31;
  LOBYTE(v36) = 1;
  sub_2142EF3C8();
  sub_2146DA1C8();
  v12 = v31;
  LOBYTE(v31) = 2;
  v13 = sub_2146DA1A8();
  v28 = v11;
  v27 = v12;
  v30 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  v17[1] = vdupq_n_s64(1uLL);
  *(v16 + 16) = sub_21438F468;
  *(v16 + 24) = v17;
  *(inited + 32) = v16;
  sub_21404328C(inited, &v31);
  v19 = v31;
  v18 = v32;
  v36 = v30;
  v26 = BYTE1(v34);
  v35 = BYTE1(v34);
  v31 = 0xD00000000000001ALL;
  v32 = 0x800000021478E0B0;
  v29 = 0x800000021478E0B0;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v25 = v19;
  v20 = v19(&v36, &v35, &v31);
  v21 = v28;
  if (v20)
  {

    (*(v6 + 8))(v9, v5);

    *a2 = v21;
    *(a2 + 8) = v27;
    *(a2 + 16) = v25;
    *(a2 + 24) = v18;
    *(a2 + 32) = v30;
    *(a2 + 40) = 0;
    *(a2 + 41) = v26;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v22 = v29;
    *v23 = 0xD00000000000001ALL;
    v23[1] = v22;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21412DE04(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C50, &qword_2146F4730);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v16 = *(v1 + 8);
  v15 = v1[4];
  v14 = *(v1 + 40);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF578();
  sub_2146DAA28();
  v21 = v9;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C38, &qword_21476B570);
  sub_2142EF680();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v11 = v14;
  v19 = v16;
  v18 = 1;
  sub_2142EF4D0();
  sub_2146DA388();
  if ((v11 & 1) == 0)
  {
    v17 = 2;
    sub_2146DA368();
    return (*(v5 + 8))(v8, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21412E070(uint64_t a1)
{
  v2 = sub_2142EF734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21412E0AC(uint64_t a1)
{
  v2 = sub_2142EF734();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21412E12C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v23 = a5;
  v26 = sub_2146D8B88();
  v22 = *(v26 - 8);
  v10 = *(v22 + 64);
  MEMORY[0x28223BE20](v26);
  v25 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v24 = *(v12 - 8);
  v13 = *(v24 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v5)
  {
    v18 = v22;
    v17 = v23;
    sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0]);
    v19 = v25;
    v20 = v26;
    sub_2146DA1C8();
    (*(v24 + 8))(v15, v12);
    (*(v18 + 32))(v17, v19, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21412E370(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C78, &qword_2146F4740);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF734();
  sub_2146DAA28();
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21412E500(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C78, &qword_2146F4740);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF734();
  sub_2146DAA28();
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21412E678@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[1] = vdupq_n_s64(1uLL);
  *(v8 + 16) = sub_21438F468;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_21404328C(inited, &v18);
  v10 = v18;
  v11 = v19;
  v12 = BYTE1(v21);
  v23 = a3;
  v22 = BYTE1(v21);
  v18 = 0xD00000000000001ELL;
  v19 = 0x800000021478E0D0;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v13 = v10(&v23, &v22, &v18);
  if (v4)
  {
  }

  else
  {
    if (v13)
    {

      *a4 = a1;
      *(a4 + 8) = v16;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = a3;
      *(a4 + 40) = 0;
      *(a4 + 41) = v12;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD00000000000001ELL;
    v15[1] = 0x800000021478E0D0;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21412E87C(uint64_t a1)
{
  v2 = sub_2142EF788();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21412E8B8(uint64_t a1)
{
  v2 = sub_2142EF788();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21412E8F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C80, &qword_2146F4748);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF788();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C90, &qword_2146F4750);
  LOBYTE(v36) = 0;
  sub_2142EF7DC();
  sub_2146DA1C8();
  v11 = v31;
  LOBYTE(v36) = 1;
  sub_2142EF3C8();
  sub_2146DA1C8();
  v12 = v31;
  LOBYTE(v31) = 2;
  v13 = sub_2146DA1A8();
  v28 = v11;
  v27 = v12;
  v30 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  v17[1] = vdupq_n_s64(1uLL);
  *(v16 + 16) = sub_21438F468;
  *(v16 + 24) = v17;
  *(inited + 32) = v16;
  sub_21404328C(inited, &v31);
  v19 = v31;
  v18 = v32;
  v36 = v30;
  v26 = BYTE1(v34);
  v35 = BYTE1(v34);
  v31 = 0xD00000000000001ELL;
  v32 = 0x800000021478E0D0;
  v29 = 0x800000021478E0D0;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v25 = v19;
  v20 = v19(&v36, &v35, &v31);
  v21 = v28;
  if (v20)
  {

    (*(v6 + 8))(v9, v5);

    *a2 = v21;
    *(a2 + 8) = v27;
    *(a2 + 16) = v25;
    *(a2 + 24) = v18;
    *(a2 + 32) = v30;
    *(a2 + 40) = 0;
    *(a2 + 41) = v26;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v22 = v29;
    *v23 = 0xD00000000000001ELL;
    v23[1] = v22;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21412ED40(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906CA8, &qword_2146F4758);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v16 = *(v1 + 8);
  v15 = v1[4];
  v14 = *(v1 + 40);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF788();
  sub_2146DAA28();
  v21 = v9;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C90, &qword_2146F4750);
  sub_2142EF890();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v11 = v14;
  v19 = v16;
  v18 = 1;
  sub_2142EF4D0();
  sub_2146DA388();
  if ((v11 & 1) == 0)
  {
    v17 = 2;
    sub_2146DA368();
    return (*(v5 + 8))(v8, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21412EFAC(uint64_t a1)
{
  v2 = sub_2142EF944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21412EFE8(uint64_t a1)
{
  v2 = sub_2142EF944();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21412F068(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906CD0, &qword_2146F4768);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF944();
  sub_2146DAA28();
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21412F1F8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906CD0, &qword_2146F4768);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF944();
  sub_2146DAA28();
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21412F370@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[1] = vdupq_n_s64(1uLL);
  *(v8 + 16) = sub_21438F468;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_21404328C(inited, &v18);
  v10 = v18;
  v11 = v19;
  v12 = BYTE1(v21);
  v23 = a3;
  v22 = BYTE1(v21);
  v18 = 0xD000000000000017;
  v19 = 0x800000021478E0F0;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v13 = v10(&v23, &v22, &v18);
  if (v4)
  {
  }

  else
  {
    if (v13)
    {

      *a4 = a1;
      *(a4 + 8) = v16;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = a3;
      *(a4 + 40) = 0;
      *(a4 + 41) = v12;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD000000000000017;
    v15[1] = 0x800000021478E0F0;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21412F574(uint64_t a1)
{
  v2 = sub_2142EF998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21412F5B0(uint64_t a1)
{
  v2 = sub_2142EF998();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21412F5EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906CD8, &unk_2146F4770);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF998();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906CE8, &unk_21476B7A0);
  LOBYTE(v36) = 0;
  sub_2142EF9EC();
  sub_2146DA1C8();
  v11 = v31;
  LOBYTE(v36) = 1;
  sub_2142EF3C8();
  sub_2146DA1C8();
  v12 = v31;
  LOBYTE(v31) = 2;
  v13 = sub_2146DA1A8();
  v28 = v11;
  v27 = v12;
  v30 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  v17[1] = vdupq_n_s64(1uLL);
  *(v16 + 16) = sub_21438F468;
  *(v16 + 24) = v17;
  *(inited + 32) = v16;
  sub_21404328C(inited, &v31);
  v19 = v31;
  v18 = v32;
  v36 = v30;
  v26 = BYTE1(v34);
  v35 = BYTE1(v34);
  v31 = 0xD000000000000017;
  v32 = 0x800000021478E0F0;
  v29 = 0x800000021478E0F0;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v25 = v19;
  v20 = v19(&v36, &v35, &v31);
  v21 = v28;
  if (v20)
  {

    (*(v6 + 8))(v9, v5);

    *a2 = v21;
    *(a2 + 8) = v27;
    *(a2 + 16) = v25;
    *(a2 + 24) = v18;
    *(a2 + 32) = v30;
    *(a2 + 40) = 0;
    *(a2 + 41) = v26;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v22 = v29;
    *v23 = 0xD000000000000017;
    v23[1] = v22;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21412FA38(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906D00, &unk_2146F4780);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v16 = *(v1 + 8);
  v15 = v1[4];
  v14 = *(v1 + 40);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF998();
  sub_2146DAA28();
  v21 = v9;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906CE8, &unk_21476B7A0);
  sub_2142EFAA0();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v11 = v14;
  v19 = v16;
  v18 = 1;
  sub_2142EF4D0();
  sub_2146DA388();
  if ((v11 & 1) == 0)
  {
    v17 = 2;
    sub_2146DA368();
    return (*(v5 + 8))(v8, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}