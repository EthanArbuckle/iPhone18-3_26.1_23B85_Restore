uint64_t sub_21429E5E4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v25 = &v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C2B0, &qword_2146F6BB8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431BC58();
  sub_2146DAA28();
  v26 = v2;
  v29 = *v2;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C288, &qword_2146F6BA8);
  sub_21431BE08();
  v17 = v27;
  sub_2146DA388();
  if (v17)
  {
    return (*(v12 + 8))(v15, v11);
  }

  v27 = v10;
  v19 = v25;
  v29 = v26[1];
  v28 = 1;
  sub_2146DA388();
  v20 = v26 + *(type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout(0) + 24);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(&v20[*(v21 + 28)], v19, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v24 + 48))(v19, 1, v7) == 1)
  {
    sub_213FB2DF4(v19, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v22 = v27;
    sub_21408AC04(v19, v27, &unk_27C9131A0, &unk_2146E9D10);
    LOBYTE(v29) = 2;
    sub_2142E2910();
    sub_2146DA388();
    sub_213FB2DF4(v22, &unk_27C9131A0, &unk_2146E9D10);
    return (*(v12 + 8))(v15, v11);
  }

  return result;
}

uint64_t sub_21429EA18@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v23 - v12);
  LOBYTE(a1) = *a1;
  v14 = *(type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout(0) + 28);
  sub_2145C5D08((a5 + v14));
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v24 = v14;
  sub_213FB2E54(a5 + v14, v13, &qword_27C903F38, &unk_2146E9D40);
  v15 = *v13;
  v16 = v13[1];
  v26 = *(v13 + *(v10 + 32));
  v25[0] = 0xD000000000000042;
  v25[1] = 0x8000000214793550;
  v25[2] = 0xD00000000000001CLL;
  v25[3] = 0x800000021478A360;
  v17 = v23;
  v18 = v15(a4, &v26, v25);
  if (v17)
  {
    sub_213FB2DF4(a4, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    if (v18)
    {

      v19 = *(v10 + 28);
      sub_213FB2DF4(v13 + v19, &qword_27C903F40, &unk_2146F1C50);
      sub_21408AC04(a4, v13 + v19, &unk_27C9131A0, &unk_2146E9D10);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
      (*(*(v20 - 8) + 56))(v13 + v19, 0, 1, v20);
      return sub_21402EDB8(v13, a5 + v24, &qword_27C903F38, &unk_2146E9D40);
    }

    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000042;
    v22[1] = 0x8000000214793550;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(a4, &unk_27C9131A0, &unk_2146E9D10);
  }

  sub_21402EDB8(v13, a5 + v24, &qword_27C903F38, &unk_2146E9D40);
  return sub_21432887C(a5, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout);
}

unint64_t sub_21429ECE0()
{
  v1 = 0x696C416567616D69;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x4C5255656C797473;
  }

  if (*v0)
  {
    v1 = 0x6E6F46656C746974;
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

uint64_t sub_21429ED78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438552C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21429EDA0(uint64_t a1)
{
  v2 = sub_21431BF64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21429EDDC(uint64_t a1)
{
  v2 = sub_21431BF64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21429EE18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v3 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v41 = (&v34 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C2D0, &qword_2146F6BC0);
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v13 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_21431BF64();
  v19 = v44;
  sub_2146DAA08();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v44 = v5;
  v37 = v16;
  v38 = v8;
  v20 = v43;
  v47 = 0;
  sub_21431BFB8();
  sub_2146DA1C8();
  v21 = LOBYTE(v46[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C288, &qword_2146F6BA8);
  v47 = 1;
  sub_21431BCAC();
  sub_2146DA1C8();
  LODWORD(v36) = v21;
  v23 = v46[0];
  v47 = 2;
  sub_2146DA1C8();
  v35 = v46[0];
  LOBYTE(v46[0]) = 3;
  sub_2142E27A8();
  v24 = v38;
  sub_2146DA1C8();
  v34 = v9;
  v25 = *(v13 + 28);
  v26 = v23;
  v27 = v37;
  sub_2145C5D08(&v37[v25]);
  *v27 = v36;
  v28 = v35;
  *(v27 + 8) = v26;
  *(v27 + 16) = v28;
  v36 = v25;
  v29 = v41;
  sub_213FB2E54(v27 + v25, v41, &qword_27C903F38, &unk_2146E9D40);
  v30 = *v29;
  v31 = v29[1];
  v47 = *(v29 + *(v42 + 32));
  v46[0] = 0xD000000000000042;
  v46[1] = 0x8000000214793550;
  v46[2] = 0xD00000000000001CLL;
  v46[3] = 0x800000021478A360;
  if (v30(v24, &v47, v46))
  {

    (*(v20 + 8))(v12, v34);
    v32 = *(v42 + 28);
    sub_213FB2DF4(v29 + v32, &qword_27C903F40, &unk_2146F1C50);
    sub_21408AC04(v24, v29 + v32, &unk_27C9131A0, &unk_2146E9D10);
    (*(v39 + 56))(v29 + v32, 0, 1, v44);
    sub_21402EDB8(v29, v27 + v36, &qword_27C903F38, &unk_2146E9D40);
    sub_214328704(v27, v40, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout);
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  sub_214031C4C();
  swift_allocError();
  *v33 = 0xD000000000000042;
  v33[1] = 0x8000000214793550;
  v33[2] = 0xD00000000000001CLL;
  v33[3] = 0x800000021478A360;
  swift_willThrow();
  sub_213FB2DF4(v24, &unk_27C9131A0, &unk_2146E9D10);
  (*(v20 + 8))(v12, v34);
  sub_21402EDB8(v29, v27 + v36, &qword_27C903F38, &unk_2146E9D40);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_21432887C(v27, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout);
}

uint64_t sub_21429F45C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v29 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C2E8, &qword_2146F6BC8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431BF64();
  sub_2146DAA28();
  v30 = v2;
  LOBYTE(v32) = *v2;
  v33 = 0;
  sub_21431C00C();
  v17 = v31;
  sub_2146DA388();
  if (v17)
  {
    return (*(v12 + 8))(v15, v11);
  }

  v31 = v10;
  v18 = v29;
  v32 = *(v30 + 1);
  v33 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C288, &qword_2146F6BA8);
  sub_21431BE08();
  sub_2146DA388();
  v32 = *(v30 + 2);
  v33 = 2;
  sub_2146DA388();
  v20 = v11;
  v21 = v12;
  v22 = v20;
  v23 = &v30[*(type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout(0) + 28)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(&v23[*(v24 + 28)], v18, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v28 + 48))(v18, 1, v7) == 1)
  {
    sub_213FB2DF4(v18, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v25 = v18;
    v26 = v31;
    sub_21408AC04(v25, v31, &unk_27C9131A0, &unk_2146E9D10);
    LOBYTE(v32) = 3;
    sub_2142E2910();
    sub_2146DA388();
    sub_213FB2DF4(v26, &unk_27C9131A0, &unk_2146E9D10);
    return (*(v21 + 8))(v15, v22);
  }

  return result;
}

uint64_t sub_21429F8F4(uint64_t a1)
{
  v2 = sub_21431C060();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21429F930(uint64_t a1)
{
  v2 = sub_21431C060();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21429F96C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C2F8, &qword_2146F6BD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C300, &qword_2146F6BD8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_21431C060();
  sub_2146DAA08();
  if (!v2)
  {
    v15 = v38;
    v16 = v9;
    LOBYTE(v40) = 0;
    sub_21431C0B4();
    v17 = v8;
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C320, &qword_2146F6BE0);
    v46 = 1;
    sub_21431C168();
    sub_2146DA1C8();
    v18 = v41;
    v36 = v40;
    v37 = v7;
    v20 = v42;
    v19 = v43;
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C338, &qword_2146F6BE8);
    v46 = 2;
    sub_21431C240();
    sub_2146DA1C8();
    v33 = v18;
    v34 = v20;
    v35 = v19;
    v31 = v40;
    v32 = v41;
    v22 = v42;
    v21 = v43;
    LOBYTE(v18) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C350, &qword_2146F6BF0);
    v46 = 3;
    sub_21431C318();
    sub_2146DA1C8();
    (*(v16 + 8))(v12, v17);
    v24 = v40;
    sub_21408AC04(v37, v15, &qword_27C90C2F8, &qword_2146F6BD0);
    v25 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Content(0);
    v26 = v15 + v25[5];
    v28 = v33;
    v27 = v34;
    *v26 = v36;
    *(v26 + 8) = v28;
    *(v26 + 16) = v27;
    *(v26 + 24) = v35;
    *(v26 + 32) = v45;
    v29 = v15 + v25[6];
    v30 = v32;
    *v29 = v31;
    *(v29 + 8) = v30;
    *(v29 + 16) = v22;
    *(v29 + 24) = v21;
    *(v29 + 32) = v18;
    *(v15 + v25[7]) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t sub_21429FD50(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C378, &qword_2146F6C00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431C060();
  sub_2146DAA28();
  LOBYTE(v24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C2F8, &qword_2146F6BD0);
  sub_21431C450();
  sub_2146DA388();
  if (!v2)
  {
    v11 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Content(0);
    v12 = v3 + v11[5];
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    v16 = *(v12 + 32);
    v24 = *v12;
    v25 = v13;
    v26 = v14;
    v27 = v15;
    v28 = v16;
    HIBYTE(v23) = 1;
    sub_21431C5DC(v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C320, &qword_2146F6BE0);
    sub_21431C504();
    sub_2146DA388();
    sub_21431E10C(v24);
    v17 = v3 + v11[6];
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    v20 = *(v17 + 24);
    v21 = *(v17 + 32);
    v24 = *v17;
    v25 = v18;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    HIBYTE(v23) = 2;
    sub_21431C5DC(v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C338, &qword_2146F6BE8);
    sub_21431C620();
    sub_2146DA388();
    sub_21431E10C(v24);
    v24 = *(v3 + v11[7]);
    HIBYTE(v23) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C350, &qword_2146F6BF0);
    sub_21431C6F8();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2142A0044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_214328704(a1, a3, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout);
  result = type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_2142A00A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
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

uint64_t sub_2142A017C(uint64_t a1)
{
  v2 = sub_21431C830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A01B8(uint64_t a1)
{
  v2 = sub_21431C830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A01F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C3C8, &qword_2146F6C08);
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v20);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431C830();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v19;
    v23 = 0;
    sub_214328930(&qword_27C90C3D8, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout);
    v15 = v20;
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C3E0, &qword_2146F6C10);
    v22 = 1;
    sub_21431C884();
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v15);
    v17 = v21;
    sub_214328704(v7, v14, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout);
    *(v14 + *(type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage(0) + 20)) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142A04A4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C3F8, &qword_2146F6C18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431C830();
  sub_2146DAA28();
  v14 = 0;
  type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout(0);
  sub_214328930(&qword_27C90C400, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout);
  sub_2146DA388();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage(0) + 20));
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C3E0, &qword_2146F6C10);
    sub_21431C938();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2142A06B8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v23 - v12);
  LOBYTE(a1) = *a1;
  v14 = *(type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout(0) + 28);
  sub_2145C6114((a5 + v14));
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v24 = v14;
  sub_213FB2E54(a5 + v14, v13, &qword_27C903F38, &unk_2146E9D40);
  v15 = *v13;
  v16 = v13[1];
  v26 = *(v13 + *(v10 + 32));
  v25[0] = 0xD000000000000039;
  v25[1] = 0x80000002147935A0;
  v25[2] = 0xD00000000000001CLL;
  v25[3] = 0x800000021478A360;
  v17 = v23;
  v18 = v15(a4, &v26, v25);
  if (v17)
  {
    sub_213FB2DF4(a4, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    if (v18)
    {

      v19 = *(v10 + 28);
      sub_213FB2DF4(v13 + v19, &qword_27C903F40, &unk_2146F1C50);
      sub_21408AC04(a4, v13 + v19, &unk_27C9131A0, &unk_2146E9D10);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
      (*(*(v20 - 8) + 56))(v13 + v19, 0, 1, v20);
      return sub_21402EDB8(v13, a5 + v24, &qword_27C903F38, &unk_2146E9D40);
    }

    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000039;
    v22[1] = 0x80000002147935A0;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(a4, &unk_27C9131A0, &unk_2146E9D10);
  }

  sub_21402EDB8(v13, a5 + v24, &qword_27C903F38, &unk_2146E9D40);
  return sub_21432887C(a5, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout);
}

unint64_t sub_2142A0980()
{
  v1 = 0x6874646977;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x4C5255656C797473;
  }

  if (*v0)
  {
    v1 = 0x6E6F46656C746974;
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

uint64_t sub_2142A0A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143856A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142A0A30(uint64_t a1)
{
  v2 = sub_21431C9EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A0A6C(uint64_t a1)
{
  v2 = sub_21431C9EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A0AA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v3 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v41 = (&v34 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C418, &qword_2146F6C20);
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v13 = type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_21431C9EC();
  v19 = v44;
  sub_2146DAA08();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v44 = v5;
  v37 = v16;
  v38 = v8;
  v20 = v43;
  v47 = 0;
  sub_21431CA40();
  sub_2146DA1C8();
  v21 = LOBYTE(v46[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C288, &qword_2146F6BA8);
  v47 = 1;
  sub_21431BCAC();
  sub_2146DA1C8();
  LODWORD(v36) = v21;
  v23 = v46[0];
  v47 = 2;
  sub_2146DA1C8();
  v35 = v46[0];
  LOBYTE(v46[0]) = 3;
  sub_2142E27A8();
  v24 = v38;
  sub_2146DA1C8();
  v34 = v9;
  v25 = *(v13 + 28);
  v26 = v23;
  v27 = v37;
  sub_2145C6114(&v37[v25]);
  *v27 = v36;
  v28 = v35;
  *(v27 + 8) = v26;
  *(v27 + 16) = v28;
  v36 = v25;
  v29 = v41;
  sub_213FB2E54(v27 + v25, v41, &qword_27C903F38, &unk_2146E9D40);
  v30 = *v29;
  v31 = v29[1];
  v47 = *(v29 + *(v42 + 32));
  v46[0] = 0xD000000000000039;
  v46[1] = 0x80000002147935A0;
  v46[2] = 0xD00000000000001CLL;
  v46[3] = 0x800000021478A360;
  if (v30(v24, &v47, v46))
  {

    (*(v20 + 8))(v12, v34);
    v32 = *(v42 + 28);
    sub_213FB2DF4(v29 + v32, &qword_27C903F40, &unk_2146F1C50);
    sub_21408AC04(v24, v29 + v32, &unk_27C9131A0, &unk_2146E9D10);
    (*(v39 + 56))(v29 + v32, 0, 1, v44);
    sub_21402EDB8(v29, v27 + v36, &qword_27C903F38, &unk_2146E9D40);
    sub_214328704(v27, v40, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout);
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  sub_214031C4C();
  swift_allocError();
  *v33 = 0xD000000000000039;
  v33[1] = 0x80000002147935A0;
  v33[2] = 0xD00000000000001CLL;
  v33[3] = 0x800000021478A360;
  swift_willThrow();
  sub_213FB2DF4(v24, &unk_27C9131A0, &unk_2146E9D10);
  (*(v20 + 8))(v12, v34);
  sub_21402EDB8(v29, v27 + v36, &qword_27C903F38, &unk_2146E9D40);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_21432887C(v27, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout);
}

uint64_t sub_2142A10EC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v29 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C430, &qword_2146F6C28);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431C9EC();
  sub_2146DAA28();
  v30 = v2;
  LOBYTE(v32) = *v2;
  v33 = 0;
  sub_21431CA94();
  v17 = v31;
  sub_2146DA388();
  if (v17)
  {
    return (*(v12 + 8))(v15, v11);
  }

  v31 = v10;
  v18 = v29;
  v32 = *(v30 + 1);
  v33 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C288, &qword_2146F6BA8);
  sub_21431BE08();
  sub_2146DA388();
  v32 = *(v30 + 2);
  v33 = 2;
  sub_2146DA388();
  v20 = v11;
  v21 = v12;
  v22 = v20;
  v23 = &v30[*(type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout(0) + 28)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(&v23[*(v24 + 28)], v18, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v28 + 48))(v18, 1, v7) == 1)
  {
    sub_213FB2DF4(v18, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v25 = v18;
    v26 = v31;
    sub_21408AC04(v25, v31, &unk_27C9131A0, &unk_2146E9D10);
    LOBYTE(v32) = 3;
    sub_2142E2910();
    sub_2146DA388();
    sub_213FB2DF4(v26, &unk_27C9131A0, &unk_2146E9D10);
    return (*(v21 + 8))(v15, v22);
  }

  return result;
}

__n128 sub_2142A1584@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a2 + 32);
  v12 = *(a3 + 32);
  sub_21408AC04(a1, a6, &qword_27C90C2F8, &qword_2146F6BD0);
  v13 = a5(0);
  v14 = a6 + v13[5];
  v15 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = v15;
  *(v14 + 32) = v11;
  v16 = a6 + v13[6];
  result = *a3;
  v18 = *(a3 + 16);
  *v16 = *a3;
  *(v16 + 16) = v18;
  *(v16 + 32) = v12;
  *(a6 + v13[7]) = a4;
  return result;
}

uint64_t sub_2142A1630(uint64_t a1)
{
  v2 = sub_21431CAE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A166C(uint64_t a1)
{
  v2 = sub_21431CAE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A16A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C2F8, &qword_2146F6BD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C440, &qword_2146F6C30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_21431CAE8();
  sub_2146DAA08();
  if (!v2)
  {
    v15 = v38;
    v16 = v9;
    LOBYTE(v40) = 0;
    sub_21431C0B4();
    v17 = v8;
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C320, &qword_2146F6BE0);
    v46 = 1;
    sub_21431C168();
    sub_2146DA1C8();
    v18 = v41;
    v36 = v40;
    v37 = v7;
    v20 = v42;
    v19 = v43;
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C338, &qword_2146F6BE8);
    v46 = 2;
    sub_21431C240();
    sub_2146DA1C8();
    v33 = v18;
    v34 = v20;
    v35 = v19;
    v31 = v40;
    v32 = v41;
    v22 = v42;
    v21 = v43;
    LOBYTE(v18) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C350, &qword_2146F6BF0);
    v46 = 3;
    sub_21431C318();
    sub_2146DA1C8();
    (*(v16 + 8))(v12, v17);
    v24 = v40;
    sub_21408AC04(v37, v15, &qword_27C90C2F8, &qword_2146F6BD0);
    v25 = type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Content(0);
    v26 = v15 + v25[5];
    v28 = v33;
    v27 = v34;
    *v26 = v36;
    *(v26 + 8) = v28;
    *(v26 + 16) = v27;
    *(v26 + 24) = v35;
    *(v26 + 32) = v45;
    v29 = v15 + v25[6];
    v30 = v32;
    *v29 = v31;
    *(v29 + 8) = v30;
    *(v29 + 16) = v22;
    *(v29 + 24) = v21;
    *(v29 + 32) = v18;
    *(v15 + v25[7]) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t sub_2142A1A8C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C450, &qword_2146F6C38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431CAE8();
  sub_2146DAA28();
  LOBYTE(v24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C2F8, &qword_2146F6BD0);
  sub_21431C450();
  sub_2146DA388();
  if (!v2)
  {
    v11 = type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Content(0);
    v12 = v3 + v11[5];
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    v16 = *(v12 + 32);
    v24 = *v12;
    v25 = v13;
    v26 = v14;
    v27 = v15;
    v28 = v16;
    HIBYTE(v23) = 1;
    sub_21431C5DC(v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C320, &qword_2146F6BE0);
    sub_21431C504();
    sub_2146DA388();
    sub_21431E10C(v24);
    v17 = v3 + v11[6];
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    v20 = *(v17 + 24);
    v21 = *(v17 + 32);
    v24 = *v17;
    v25 = v18;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    HIBYTE(v23) = 2;
    sub_21431C5DC(v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C338, &qword_2146F6BE8);
    sub_21431C620();
    sub_2146DA388();
    sub_21431E10C(v24);
    v24 = *(v3 + v11[7]);
    HIBYTE(v23) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C350, &qword_2146F6BF0);
    sub_21431C6F8();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2142A1D50(char a1)
{
  result = 0x727474416B6E696CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      return result;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD00000000000001DLL;
      break;
  }

  return result;
}

uint64_t sub_2142A1F84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21438597C();
  *a2 = result;
  return result;
}

unint64_t sub_2142A1FB4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2142A1D50(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2142A2090()
{
  if (*v0)
  {
    result = 0x6F69746365726964;
  }

  else
  {
    result = 0x65676E6172;
  }

  *v0;
  return result;
}

uint64_t sub_2142A20CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL)
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

uint64_t sub_2142A21AC(uint64_t a1)
{
  v2 = sub_21431CB3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A21E8(uint64_t a1)
{
  v2 = sub_21431CB3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A2224@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C458, &qword_2146F6C40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431CB3C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
    v16 = 0;
    sub_2142E50D0();
    sub_2146DA1C8();
    v11 = v15[0];
    v12 = v15[1];
    v16 = 1;
    sub_21431CB90();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v13 = v15[0];
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142A2410(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C460, &qword_2146F6C48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v16 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431CB3C();
  sub_2146DAA28();
  v14 = v9;
  v15 = v8;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  v11 = v13[1];
  sub_2146DA388();
  if (!v11)
  {
    LOBYTE(v14) = v16;
    v17 = 1;
    sub_21431CBE4();
    sub_2146DA388();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2142A25F4()
{
  if (*v0)
  {
    result = 0x626D754E74726170;
  }

  else
  {
    result = 0x65676E6172;
  }

  *v0;
  return result;
}

uint64_t sub_2142A2630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x626D754E74726170 && a2 == 0xEA00000000007265)
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

uint64_t sub_2142A2710(uint64_t a1)
{
  v2 = sub_21431CC38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A274C(uint64_t a1)
{
  v2 = sub_21431CC38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A2840@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_2142A284C()
{
  if (*v0)
  {
    result = 0x6C466E6F6974706FLL;
  }

  else
  {
    result = 0x65676E6172;
  }

  *v0;
  return result;
}

uint64_t sub_2142A288C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C466E6F6974706FLL && a2 == 0xEB00000000736761)
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

uint64_t sub_2142A2968(uint64_t a1)
{
  v2 = sub_21431CC8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A29A4(uint64_t a1)
{
  v2 = sub_21431CC8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A2A24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, void *a5@<X8>)
{
  v20 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v8 - 8);
  v9 = *(v19 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v5)
  {
    v14 = v19;
    v13 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
    v23 = 0;
    sub_2142E50D0();
    sub_2146DA1C8();
    v15 = v21;
    v16 = v22;
    LOBYTE(v21) = 1;
    v17 = sub_2146DA1B8();
    (*(v14 + 8))(v11, v8);
    *v13 = v15;
    v13[1] = v16;
    v13[2] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142A2C40(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v16 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v6 - 8);
  v7 = *(v18 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v11 = *v4;
  v10 = v4[1];
  v15 = v4[2];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16();
  sub_2146DAA28();
  v19 = v11;
  v20 = v10;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  v13 = v17;
  sub_2146DA388();
  if (!v13)
  {
    LOBYTE(v19) = 1;
    sub_2146DA378();
  }

  return (*(v18 + 8))(v9, v6);
}

uint64_t sub_2142A2E30()
{
  if (*v0)
  {
    result = 0x7572636461657262;
  }

  else
  {
    result = 0x65676E6172;
  }

  *v0;
  return result;
}

uint64_t sub_2142A2E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7572636461657262 && a2 == 0xEE0074786554626DLL)
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

uint64_t sub_2142A2F54(uint64_t a1)
{
  v2 = sub_21431CCE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A2F90(uint64_t a1)
{
  v2 = sub_21431CCE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A3084()
{
  if (*v0)
  {
    result = 6910581;
  }

  else
  {
    result = 0x65676E6172;
  }

  *v0;
  return result;
}

uint64_t sub_2142A30B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6910581 && a2 == 0xE300000000000000)
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

uint64_t sub_2142A318C(uint64_t a1)
{
  v2 = sub_21431CD34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A31C8(uint64_t a1)
{
  v2 = sub_21431CD34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A3248@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, void *a5@<X8>)
{
  v21 = a5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v22);
  v11 = &v21 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v5)
  {
    v13 = v8;
    v14 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
    v25 = 0;
    sub_2142E50D0();
    sub_2146DA1C8();
    v15 = v23;
    v16 = v24;
    LOBYTE(v23) = 1;
    v18 = sub_2146DA168();
    v20 = v19;
    (*(v13 + 8))(v11, v22);
    *v14 = v15;
    v14[1] = v16;
    v14[2] = v18;
    v14[3] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142A3480(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v17 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  v11 = *v4;
  v10 = v4[1];
  v12 = v4[2];
  v16[1] = v4[3];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  sub_2146DAA28();
  v20 = v11;
  v21 = v10;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  v14 = v18;
  sub_2146DA388();
  if (!v14)
  {
    LOBYTE(v20) = 1;
    sub_2146DA328();
  }

  return (*(v19 + 8))(v9, v6);
}

uint64_t sub_2142A3670@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_2142A367C()
{
  if (*v0)
  {
    result = 1701869940;
  }

  else
  {
    result = 0x65676E6172;
  }

  *v0;
  return result;
}

uint64_t sub_2142A36AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_2142A3784(uint64_t a1)
{
  v2 = sub_21431CD88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A37C0(uint64_t a1)
{
  v2 = sub_21431CD88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A37FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C4C0, &qword_2146F6C90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431CD88();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
    v16 = 0;
    sub_2142E50D0();
    sub_2146DA1C8();
    v11 = v15[0];
    v12 = v15[1];
    v16 = 1;
    sub_21431CDDC();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v13 = v15[0];
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142A39E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C4D8, &qword_2146F6C98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v16 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431CD88();
  sub_2146DAA28();
  v14 = v9;
  v15 = v8;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  v11 = v13[1];
  sub_2146DA388();
  if (!v11)
  {
    LOBYTE(v14) = v16;
    v17 = 1;
    sub_21431CE30();
    sub_2146DA388();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2142A3BCC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t sub_2142A3BF0(uint64_t a1)
{
  v2 = sub_21431CE84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A3C2C(uint64_t a1)
{
  v2 = sub_21431CE84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A3D20@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_2142A3D28(uint64_t a1)
{
  v2 = sub_21431CED8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A3D64(uint64_t a1)
{
  v2 = sub_21431CED8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A3DE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, _OWORD *a5@<X8>)
{
  v16 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v5)
  {
    v13 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
    sub_2142E50D0();
    sub_2146DA1C8();
    (*(v18 + 8))(v11, v8);
    *v13 = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142A3FB4(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v15 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = *v4;
  v14 = v4[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_2146DAA28();
  v16 = v11;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  sub_2146DA388();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2142A4154(uint64_t a1)
{
  v2 = sub_21431CF2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A4190(uint64_t a1)
{
  v2 = sub_21431CF2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A4284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
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

uint64_t sub_2142A4308(uint64_t a1)
{
  v2 = sub_21431CF80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A4344(uint64_t a1)
{
  v2 = sub_21431CF80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A4438()
{
  if (*v0)
  {
    result = 1802398060;
  }

  else
  {
    result = 0x65676E6172;
  }

  *v0;
  return result;
}

uint64_t sub_2142A4468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000)
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

uint64_t sub_2142A4540(uint64_t a1)
{
  v2 = sub_21431CFD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A457C(uint64_t a1)
{
  v2 = sub_21431CFD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LinkAttribute.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v24 = a2;
  v4 = sub_2146D8958();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C548, &qword_2146F6CE0);
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v25);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431CFD4();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v4;
    v15 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
    v28 = 0;
    sub_2142E50D0();
    v16 = v25;
    sub_2146DA1C8();
    v21 = v27;
    v22 = v26;
    LOBYTE(v26) = 1;
    sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260]);
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v16);
    v17 = type metadata accessor for LinkAttribute(0);
    (*(v23 + 32))(&v15[*(v17 + 20)], v7, v14);
    v18 = v21;
    *v15 = v22;
    *(v15 + 1) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t LinkAttribute.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C558, &qword_2146F6CE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431CFD4();
  sub_2146DAA28();
  v14 = *v3;
  v13[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  sub_2146DA388();
  if (!v2)
  {
    v11 = *(type metadata accessor for LinkAttribute(0) + 20);
    LOBYTE(v14) = 1;
    sub_2146D8958();
    sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260]);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2142A4AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v9 = *(a4(0) + 20);
  v10 = a5(0);
  return (*(*(v10 - 8) + 32))(&a6[v9], a3, v10);
}

uint64_t sub_2142A4B6C()
{
  if (*v0)
  {
    result = 0x694C686369527369;
  }

  else
  {
    result = 0x65676E6172;
  }

  *v0;
  return result;
}

uint64_t sub_2142A4BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x694C686369527369 && a2 == 0xEA00000000006B6ELL)
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

uint64_t sub_2142A4C88(uint64_t a1)
{
  v2 = sub_21431D028();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A4CC4(uint64_t a1)
{
  v2 = sub_21431D028();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LinkIsRichLinkAttribute.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C560, &qword_2146F6CF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431D028();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
    v16 = 0;
    sub_2142E50D0();
    sub_2146DA1C8();
    v11 = v15[0];
    v12 = v15[1];
    LOBYTE(v15[0]) = 1;
    v13 = sub_2146DA178();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t LinkIsRichLinkAttribute.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C570, &qword_2146F6CF8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v16 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431D028();
  sub_2146DAA28();
  v14 = v9;
  v15 = v8;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  v11 = v13[1];
  sub_2146DA388();
  if (!v11)
  {
    LOBYTE(v14) = 1;
    sub_2146DA338();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t LinkIsRichLinkAttribute.init(with:isRichLink:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_2142A50CC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x65676E6172;
    v6 = 0x666E496567616D69;
    if (a1 != 2)
    {
      v6 = 0x657A697361746164;
    }

    if (a1)
    {
      v5 = 0x656D686361747461;
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
    v1 = 0x6E4179636167656CLL;
    v2 = 0xD000000000000011;
    if (a1 != 7)
    {
      v2 = 1701667182;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x65707954697475;
    if (a1 != 4)
    {
      v3 = 0x65707954656D696DLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2142A5200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143859C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142A5228(uint64_t a1)
{
  v2 = sub_21431D07C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A5264(uint64_t a1)
{
  v2 = sub_21431D07C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A52A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C578, &qword_2146F6D00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21431D07C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v106);
  }

  v71 = a2;
  v72 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  LOBYTE(v73[0]) = 0;
  sub_2142E50D0();
  sub_2146DA1C8();
  v12 = v75;
  v13 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C580, &qword_2146F6D08);
  LOBYTE(v73[0]) = 1;
  sub_21431D0D0();
  sub_2146DA1C8();
  v70 = v12;
  v14 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C588, &qword_2146F6D10);
  LOBYTE(v73[0]) = 2;
  sub_21431D184();
  sub_2146DA1C8();
  v68 = v75;
  v69 = v76;
  v15 = v77;
  LOBYTE(v75) = 3;
  v16 = sub_2146DA1B8();
  v65 = v13;
  v66 = v16;
  v67 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v73[0]) = 4;
  sub_2142E12FC();
  sub_2146DA1C8();
  LODWORD(v63) = v15;
  v64 = v75;
  v18 = v76;
  LOBYTE(v73[0]) = 5;
  sub_2146DA1C8();
  v19 = v18;
  v20 = v75;
  v21 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v73[0]) = 6;
  sub_2142E11FC();
  sub_2146DA1C8();
  v62 = v21;
  v60 = v20;
  v61 = v75;
  LOBYTE(v20) = v76;
  v101[319] = 7;
  sub_21431D25C();
  sub_2146DA1C8();
  memcpy(v101, v102, 0x139uLL);
  v100[327] = 8;
  v58 = sub_2146DA168();
  v59 = v22;
  v49 = v5;
  sub_21431D304(v101, &v75);
  sub_214473580(&v75);
  v50 = v75;
  v23 = v76;
  v46 = v78;
  v47 = v77;
  v24 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_2140676DC;
  *(v26 + 24) = 0;
  *(v25 + 32) = v26;
  sub_214042B80(v25, v73);
  v54 = v73[0];
  v45 = v73[2];
  v56 = v73[3];
  v57 = v73[1];
  v55 = LOBYTE(v73[4]);
  v100[320] = v20;
  memcpy(&v100[7], v101, 0x139uLL);
  v51 = v63;
  v52 = v24;
  v48 = v20;
  v73[0] = v64;
  v73[1] = v19;
  LOBYTE(v74[0]) = v24;
  v75 = 0xD00000000000001DLL;
  v76 = 0x80000002147935E0;
  v77 = 0xD00000000000001CLL;
  v53 = 0x800000021478A360;
  v78 = 0x800000021478A360;

  v27 = v47;
  v28 = v46;
  sub_213FDC9D0(v47, v46);
  v63 = v23;
  v29 = v50;
  v30 = v50(v73, v74, &v75);
  if (v30)
  {
    sub_213FDC6D0(v27, v28);
    v31 = v53;

    sub_213FDC6D0(v27, v28);
    v74[0] = v58;
    v74[1] = v59;
    LOBYTE(v73[0]) = v55;
    v75 = 0xD00000000000001ALL;
    v76 = 0x8000000214793600;
    v77 = 0xD00000000000001CLL;
    v78 = v31;

    v32 = v54(v74, v73, &v75);
    if (v32)
    {

      sub_21431D2B0(v101);
      (*(v72 + 8))(v9, v49);

      v35 = v57;

      v73[0] = v70;
      v73[1] = v65;
      v73[2] = v67;
      v73[3] = v68;
      v73[4] = v69;
      LOBYTE(v73[5]) = v51;
      *(&v73[5] + 1) = v105[0];
      HIDWORD(v73[5]) = *(v105 + 3);
      v73[6] = v66;
      v73[7] = v29;
      v36 = v63;
      v73[8] = v63;
      v73[9] = v64;
      v44 = v19;
      v73[10] = v19;
      LOBYTE(v73[11]) = v52;
      *(&v73[11] + 1) = *v104;
      HIDWORD(v73[11]) = *&v104[3];
      v73[12] = v60;
      v73[13] = v62;
      v73[14] = v61;
      v37 = v48;
      LOBYTE(v73[15]) = v48;
      memcpy(&v73[15] + 1, v100, 0x140uLL);
      *(&v73[55] + 1) = *v103;
      HIDWORD(v73[55]) = *&v103[3];
      v38 = v54;
      v73[56] = v54;
      v73[57] = v35;
      v39 = v58;
      v40 = v59;
      v73[58] = v58;
      v73[59] = v59;
      v41 = v55;
      LOBYTE(v73[60]) = v55;
      memcpy(v71, v73, 0x1E1uLL);
      sub_21431D360(v73, &v75);
      __swift_destroy_boxed_opaque_existential_1(v106);
      v75 = v70;
      v76 = v65;
      v77 = v67;
      v78 = v68;
      v79 = v69;
      v80 = v51;
      *v81 = v105[0];
      *&v81[3] = *(v105 + 3);
      v82 = v66;
      v83 = v50;
      v84 = v36;
      v85 = v64;
      v86 = v44;
      v87 = v52;
      *v88 = *v104;
      *&v88[3] = *&v104[3];
      v89 = v60;
      v90 = v62;
      v91 = v61;
      v92 = v37;
      memcpy(v93, v100, sizeof(v93));
      *v94 = *v103;
      *&v94[3] = *&v103[3];
      v95 = v38;
      v96 = v57;
      v97 = v39;
      v98 = v40;
      v99 = v41;
      return sub_2142E44CC(&v75);
    }

    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD00000000000001ALL;
    v42[1] = 0x8000000214793600;
    v43 = v53;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = v43;
    swift_willThrow();

    sub_21431D2B0(v101);
    (*(v72 + 8))(v9, v49);

    v27 = v64;
    v28 = v19;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD00000000000001DLL;
    v33[1] = 0x80000002147935E0;
    v34 = v53;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = v34;
    swift_willThrow();

    sub_21431D2B0(v101);
    (*(v72 + 8))(v9, v49);

    sub_213FDC6D0(v27, v28);
  }

  __swift_destroy_boxed_opaque_existential_1(v106);
  v75 = v70;
  v76 = v65;
  v77 = v67;
  v78 = v68;
  v79 = v69;
  v80 = v51;
  *v81 = v105[0];
  *&v81[3] = *(v105 + 3);
  v82 = v66;
  v83 = v29;
  v84 = v63;
  v85 = v27;
  v86 = v28;
  v87 = v52;
  *v88 = *v104;
  *&v88[3] = *&v104[3];
  v89 = v60;
  v90 = v62;
  v91 = v61;
  v92 = v48;
  memcpy(v93, v100, sizeof(v93));
  *v94 = *v103;
  *&v94[3] = *&v103[3];
  v95 = v54;
  v96 = v57;
  v97 = v45;
  v98 = v56;
  v99 = v55;
  return sub_2142E44CC(&v75);
}

uint64_t sub_2142A5E40(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C590, &qword_2146F6D18);
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v31 = v1[3];
  v32 = v9;
  v30 = v1[4];
  v29 = *(v1 + 40);
  v10 = v1[6];
  v11 = v1[10];
  v27 = v1[9];
  v28 = v10;
  v12 = v1[13];
  v24 = v1[12];
  v25 = v12;
  v26 = v11;
  v22 = v1[14];
  v23 = *(v1 + 120);
  memcpy(v37, v1 + 16, 0x139uLL);
  v13 = v1[58];
  v21[0] = v1[59];
  v21[1] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431D07C();
  sub_2146DAA28();
  v36[0] = v8;
  v36[1] = v7;
  v35[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  v15 = v33;
  sub_2146DA388();
  if (v15)
  {
    return (*(v38 + 8))(v6, v3);
  }

  v17 = v29;
  v18 = v30;
  v19 = v31;
  v36[0] = v32;
  v35[0] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C580, &qword_2146F6D08);
  sub_21431D3BC();
  sub_2146DA388();
  v36[0] = v19;
  v36[1] = v18;
  LOBYTE(v36[2]) = v17;
  v35[0] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C588, &qword_2146F6D10);
  sub_21431D470();
  sub_2146DA388();
  v20 = v38;
  LOBYTE(v36[0]) = 3;
  sub_2146DA378();
  if (v26 == 1)
  {
    goto LABEL_6;
  }

  v36[0] = v27;
  v36[1] = v26;
  v35[0] = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  v36[0] = v24;
  v36[1] = v25;
  v35[0] = 5;
  sub_2146DA388();
  v36[0] = v22;
  LOBYTE(v36[1]) = v23;
  v35[0] = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  sub_2142E1C30();
  sub_2146DA388();
  memcpy(v36, v37, 0x139uLL);
  v35[319] = 7;
  sub_21431D304(v37, v35);
  sub_21431D548();
  sub_2146DA388();
  memcpy(v35, v36, 0x139uLL);
  sub_21431D2B0(v35);
  if (!v21[0])
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v34 = 8;

    sub_2146DA328();
    (*(v20 + 8))(v6, v3);
  }

  return result;
}

void *sub_2142A6370@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, const void *a13, uint64_t (*a14)(void, void, void), uint64_t a15)
{
  v39 = *a4;
  v40 = *(a4 + 8);
  v17 = *(a4 + 16);
  sub_214473580(&v49);
  v18 = v50;
  v47 = v49;
  v19 = v51;
  v35 = v52;
  v20 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2140676DC;
  *(v22 + 24) = 0;
  *(v21 + 32) = v22;
  sub_214042B80(v21, &v74);
  v48 = v74;
  v46 = v75;
  v34 = v76;
  v84 = v77;
  v38 = v78;
  v80[0] = v17;
  __src[320] = a12 & 1;
  memcpy(&__src[7], a13, 0x139uLL);
  v23 = a6;
  v74 = a6;
  v75 = a7;
  v80[0] = v20;
  v49 = 0xD00000000000001DLL;
  v50 = 0x80000002147935E0;
  v51 = 0xD00000000000001CLL;
  v52 = 0x800000021478A360;

  v36 = v19;
  v24 = v19;
  v25 = v35;
  sub_213FDC9D0(v24, v35);
  v26 = v47(&v74, v80, &v49);
  v27 = v47;
  if (v37)
  {

LABEL_6:

    v23 = v36;
    sub_213FDC6D0(v36, v35);
    v28 = v38;
LABEL_7:
    v49 = a1;
    v50 = a2;
    v51 = a3;
    v52 = v39;
    v53 = v40;
    v54 = v17;
    *v55 = v83[0];
    *&v55[3] = *(v83 + 3);
    v56 = a5;
    v57 = v27;
    v58 = v18;
    v59 = v23;
    v60 = v25;
    v61 = v20;
    *&v62[3] = *(v82 + 3);
    *v62 = v82[0];
    v63 = a8;
    v64 = a10;
    v65 = a11;
    v66 = a12 & 1;
    memcpy(v67, __src, sizeof(v67));
    *v68 = v81[0];
    *&v68[3] = *(v81 + 3);
    v69 = v48;
    v70 = v46;
    v71 = v34;
    v72 = v84;
    v73 = v28;
    return sub_2142E44CC(&v49);
  }

  if ((v26 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD00000000000001DLL;
    v30[1] = 0x80000002147935E0;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v36, v35);

  sub_213FDC6D0(v36, v35);
  v74 = a14;
  v75 = a15;
  v28 = v38;
  v80[0] = v38;
  v49 = 0xD00000000000001ALL;
  v50 = 0x8000000214793600;
  v51 = 0xD00000000000001CLL;
  v52 = 0x800000021478A360;

  v29 = v48(&v74, v80, &v49);
  v27 = v47;
  if ((v29 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD00000000000001ALL;
    v32[1] = 0x8000000214793600;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();

    v25 = a7;
    goto LABEL_7;
  }

  swift_bridgeObjectRelease_n();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = v39;
  *(a9 + 32) = v40;
  *(a9 + 40) = v17;
  *(a9 + 48) = a5;
  *(a9 + 56) = v47;
  *(a9 + 64) = v18;
  *(a9 + 72) = v23;
  *(a9 + 80) = a7;
  *(a9 + 88) = v20;
  *(a9 + 96) = a8;
  *(a9 + 104) = a10;
  *(a9 + 112) = a11;
  *(a9 + 120) = a12 & 1;
  result = memcpy((a9 + 121), __src, 0x140uLL);
  *(a9 + 448) = v48;
  *(a9 + 456) = v46;
  *(a9 + 464) = a14;
  *(a9 + 472) = a15;
  *(a9 + 480) = v38;
  return result;
}

uint64_t sub_2142A68D8()
{
  v1 = 0x61565F796C706572;
  if (*v0 != 1)
  {
    v1 = 0x565F6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x437069684344426DLL;
  }
}

uint64_t sub_2142A6950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214385CC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142A6978(uint64_t a1)
{
  v2 = sub_21431D59C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A69B4(uint64_t a1)
{
  v2 = sub_21431D59C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A69F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x796C706572;
  if (v2 != 1)
  {
    v4 = 0x6E6F69746361;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64696C61766E69;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x796C706572;
  if (*a2 != 1)
  {
    v8 = 0x6E6F69746361;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64696C61766E69;
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
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2142A6AE4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142A6B80()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142A6C08()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142A6CA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214385E3C();
  *a2 = result;
  return result;
}

void sub_2142A6CD0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x796C706572;
  if (v2 != 1)
  {
    v5 = 0x6E6F69746361;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64696C61766E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2142A6DD8(void *a1)
{
  v2 = v1;
  v26 = type metadata accessor for MBDChipAction();
  v4 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MBDChipContent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C598, &qword_2146F6D20);
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431D59C();
  sub_2146DAA28();
  sub_2143287C0(v2, v10, type metadata accessor for MBDChipContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_214328704(v10, v6, type metadata accessor for MBDChipAction);
      LOBYTE(v29) = 2;
      v35 = 0;
      sub_21431D5F0();
      v17 = v27;
      sub_2146DA388();
      if (!v17)
      {
        LOBYTE(v29) = 2;
        sub_214328930(&qword_27C90C5B0, type metadata accessor for MBDChipAction);
        sub_2146DA388();
      }

      sub_21432887C(v6, type metadata accessor for MBDChipAction);
    }

    else
    {
      LOBYTE(v29) = 0;
      v35 = 0;
      sub_21431D5F0();
      sub_2146DA388();
    }

    return (*(v28 + 8))(v14, v11);
  }

  else
  {
    v19 = *v10;
    v18 = v10[1];
    v20 = v10[3];
    v26 = v10[2];
    v21 = v10[4];
    v22 = v10[5];
    LOBYTE(v29) = 1;
    v35 = 0;
    sub_21431D5F0();
    v23 = v27;
    sub_2146DA388();
    if (!v23)
    {
      v29 = v19;
      v30 = v18;
      v31 = v26;
      v32 = v20;
      v33 = v21;
      v34 = v22;
      v35 = 1;
      sub_21431D644();
      sub_2146DA388();
    }

    (*(v28 + 8))(v14, v11);
  }
}

uint64_t sub_2142A71A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for MBDChipAction();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C5C0, &qword_2146F6D28);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for MBDChipContent();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_21431D59C();
  v17 = v30;
  sub_2146DAA08();
  if (!v17)
  {
    v27 = v14;
    v30 = v11;
    v18 = v28;
    v19 = v29;
    v36 = 0;
    sub_21431D698();
    sub_2146DA1C8();
    if (v32)
    {
      if (v32 == 1)
      {
        v36 = 1;
        sub_21431D6EC();
        sub_2146DA1C8();
        (*(v18 + 8))(v10, v7);
        v20 = v19;
        v21 = v33;
        v22 = v34;
        v23 = v35;
        v24 = v27;
        *v27 = v32;
        v24[1] = v21;
        *(v24 + 1) = v22;
        *(v24 + 2) = v23;
      }

      else
      {
        LOBYTE(v32) = 2;
        sub_214328930(&qword_27C90C5D0, type metadata accessor for MBDChipAction);
        sub_2146DA1C8();
        (*(v18 + 8))(v10, v7);
        v24 = v27;
        sub_214328704(v6, v27, type metadata accessor for MBDChipAction);
        v20 = v19;
      }
    }

    else
    {
      (*(v18 + 8))(v10, v7);
      v20 = v19;
      v24 = v27;
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v24, v20, type metadata accessor for MBDChipContent);
  }

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

unint64_t sub_2142A754C(char a1)
{
  result = 0x5F6265576E65706FLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x5F7070416E65706FLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x7261646E656C6163;
      break;
    case 9:
      result = 0x656469566C616964;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x6E6F68506C616964;
      break;
    case 12:
      result = 0x565F656369766564;
      break;
    case 13:
      result = 0x73676E6974746573;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_2142A7708(char a1)
{
  result = 0x64696C61766E69;
  switch(a1)
  {
    case 1:
      result = 0x6265576E65706FLL;
      break;
    case 2:
      result = 0x7070416E65706FLL;
      break;
    case 3:
      result = 0x5465736F706D6F63;
      break;
    case 4:
      result = 0x4165736F706D6F63;
      break;
    case 5:
      result = 0x5665736F706D6F63;
      break;
    case 6:
      result = 0x61636F4C776F6873;
      break;
    case 7:
      result = 0x4C74736575716572;
      break;
    case 8:
      result = 0x7261646E656C6163;
      break;
    case 9:
      result = 0x656469566C616964;
      break;
    case 10:
      result = 0x69726E456C616964;
      break;
    case 11:
      result = 0x6E6F68506C616964;
      break;
    case 12:
      result = 0x656369766564;
      break;
    case 13:
      result = 0x73676E6974746573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2142A78EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214385E88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142A7914(uint64_t a1)
{
  v2 = sub_21431D740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A7950(uint64_t a1)
{
  v2 = sub_21431D740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A79EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214386370();
  *a2 = result;
  return result;
}

uint64_t sub_2142A7A1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2142A7708(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2142A7AF8(void *a1)
{
  v2 = v1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C5E0, &qword_2146F6D30);
  v4 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v6 = &v81 - v5;
  v7 = type metadata accessor for MBDActionContent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C5E8, &qword_2146F6D38);
  v108 = *(v84 - 8);
  v11 = *(v108 + 64);
  MEMORY[0x28223BE20](v84);
  v13 = &v81 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431D740();
  v83 = v13;
  sub_2146DAA28();
  sub_2143287C0(v2, v10, type metadata accessor for MBDActionContent);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v26 = *v10;
      v54 = *(v10 + 1);
      v56 = *(v10 + 2);
      v55 = *(v10 + 3);
      v57 = v10[32];
      LOBYTE(v96) = 2;
      LOBYTE(v85) = 0;
      sub_21431D794();
      v30 = v83;
      v31 = v84;
      v58 = v82;
      sub_2146DA388();
      if (v58)
      {
        goto LABEL_41;
      }

      *&v96 = v26;
      *(&v96 + 1) = v54;
      *&v97 = v56;
      *(&v97 + 1) = v55;
      v81 = v55;
      LOBYTE(v98) = v57;
      LOBYTE(v85) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C700, &unk_2146F6D90);
      sub_21431E150();
      goto LABEL_40;
    case 2u:
      v41 = *(v10 + 3);
      v98 = *(v10 + 2);
      v99[0] = v41;
      *(v99 + 9) = *(v10 + 57);
      v42 = *(v10 + 1);
      v96 = *v10;
      v97 = v42;
      LOBYTE(v85) = 3;
      v107 = 0;
      sub_21431D794();
      v43 = v83;
      v44 = v84;
      v45 = v82;
      sub_2146DA388();
      if (!v45)
      {
        v87 = v98;
        v88[0] = v99[0];
        *(v88 + 9) = *(v99 + 9);
        v85 = v96;
        v86 = v97;
        v107 = 3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6E8, &qword_2146F6D88);
        sub_21431E034();
        sub_2146DA388();
      }

      (*(v108 + 8))(v43, v44);
      v20 = &qword_27C90C6E8;
      v21 = &qword_2146F6D88;
      goto LABEL_37;
    case 3u:
      v26 = *v10;
      v46 = *(v10 + 1);
      v47 = *(v10 + 2);
      v81 = *(v10 + 3);
      v48 = v10[32];
      LOBYTE(v96) = 4;
      LOBYTE(v85) = 0;
      sub_21431D794();
      v30 = v83;
      v31 = v84;
      v49 = v82;
      sub_2146DA388();
      if (v49)
      {
        goto LABEL_41;
      }

      *&v96 = v26;
      *(&v96 + 1) = v46;
      *&v97 = v47;
      *(&v97 + 1) = v81;
      LOBYTE(v98) = v48;
      LOBYTE(v85) = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6D0, &qword_2146F6D80);
      sub_21431DF5C();
      goto LABEL_40;
    case 4u:
      v26 = *v10;
      v27 = *(v10 + 1);
      v28 = *(v10 + 2);
      v81 = *(v10 + 3);
      v29 = v10[32];
      LOBYTE(v96) = 5;
      LOBYTE(v85) = 0;
      sub_21431D794();
      v30 = v83;
      v31 = v84;
      v32 = v82;
      sub_2146DA388();
      if (v32)
      {
        goto LABEL_41;
      }

      *&v96 = v26;
      *(&v96 + 1) = v27;
      *&v97 = v28;
      *(&v97 + 1) = v81;
      LOBYTE(v98) = v29;
      LOBYTE(v85) = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6B8, &qword_214747AE0);
      sub_21431DE84();
LABEL_40:
      sub_2146DA388();
LABEL_41:
      (*(v108 + 8))(v30, v31);
      return sub_21431E10C(v26);
    case 5u:
      v59 = *(v10 + 9);
      v103 = *(v10 + 8);
      v104 = v59;
      v105 = *(v10 + 10);
      v106 = v10[176];
      v60 = *(v10 + 5);
      v99[1] = *(v10 + 4);
      v100 = v60;
      v61 = *(v10 + 7);
      v101 = *(v10 + 6);
      v102 = v61;
      v62 = *(v10 + 1);
      v96 = *v10;
      v97 = v62;
      v63 = *(v10 + 3);
      v98 = *(v10 + 2);
      v99[0] = v63;
      LOBYTE(v85) = 6;
      v107 = 0;
      sub_21431D794();
      v64 = v83;
      v65 = v84;
      v66 = v82;
      sub_2146DA388();
      if (!v66)
      {
        v92 = v103;
        v93 = v104;
        v94 = v105;
        v95 = v106;
        v88[1] = v99[1];
        v89 = v100;
        v90 = v101;
        v91 = v102;
        v85 = v96;
        v86 = v97;
        v87 = v98;
        v88[0] = v99[0];
        v107 = 6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6A0, &unk_2146F6D70);
        sub_21431DDAC();
        sub_2146DA388();
      }

      (*(v108 + 8))(v64, v65);
      v20 = &qword_27C90C6A0;
      v21 = &unk_2146F6D70;
      goto LABEL_37;
    case 6u:
      v69 = *v10;
      LOBYTE(v96) = 7;
      LOBYTE(v85) = 0;
      sub_21431D794();
      v23 = v83;
      v24 = v84;
      v70 = v82;
      sub_2146DA388();
      if (v70)
      {
        goto LABEL_30;
      }

      LOBYTE(v96) = v69;
      LOBYTE(v85) = 7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C688, &qword_2146F6D68);
      sub_21431DCD4();
      goto LABEL_29;
    case 7u:
      sub_21408AC04(v10, v6, &qword_27C90C5E0, &qword_2146F6D30);
      LOBYTE(v96) = 8;
      LOBYTE(v85) = 0;
      sub_21431D794();
      v50 = v83;
      v51 = v84;
      v52 = v82;
      sub_2146DA388();
      if (!v52)
      {
        LOBYTE(v96) = 8;
        sub_21431DC20();
        sub_2146DA388();
      }

      sub_213FB2DF4(v6, &qword_27C90C5E0, &qword_2146F6D30);
      return (*(v108 + 8))(v50, v51);
    case 8u:
      v76 = *(v10 + 3);
      v98 = *(v10 + 2);
      v99[0] = v76;
      *(v99 + 9) = *(v10 + 57);
      v77 = *(v10 + 1);
      v96 = *v10;
      v97 = v77;
      LOBYTE(v85) = 9;
      v107 = 0;
      sub_21431D794();
      v78 = v83;
      v79 = v84;
      v80 = v82;
      sub_2146DA388();
      if (!v80)
      {
        v87 = v98;
        v88[0] = v99[0];
        *(v88 + 9) = *(v99 + 9);
        v85 = v96;
        v86 = v97;
        v107 = 9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C660, &qword_2146F6D60);
        sub_21431DB48();
        sub_2146DA388();
      }

      (*(v108 + 8))(v78, v79);
      v20 = &qword_27C90C660;
      v21 = &qword_2146F6D60;
      goto LABEL_37;
    case 9u:
      v35 = *(v10 + 5);
      v99[1] = *(v10 + 4);
      v100 = v35;
      v101 = *(v10 + 6);
      LOBYTE(v102) = v10[112];
      v36 = *(v10 + 1);
      v96 = *v10;
      v97 = v36;
      v37 = *(v10 + 3);
      v98 = *(v10 + 2);
      v99[0] = v37;
      LOBYTE(v85) = 10;
      v107 = 0;
      sub_21431D794();
      v38 = v83;
      v39 = v84;
      v40 = v82;
      sub_2146DA388();
      if (!v40)
      {
        v88[1] = v99[1];
        v89 = v100;
        v90 = v101;
        LOBYTE(v91) = v102;
        v85 = v96;
        v86 = v97;
        v87 = v98;
        v88[0] = v99[0];
        v107 = 10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C648, &unk_214747AA0);
        sub_21431DA70();
        sub_2146DA388();
      }

      (*(v108 + 8))(v38, v39);
      v20 = &qword_27C90C648;
      v21 = &unk_214747AA0;
      goto LABEL_37;
    case 0xAu:
      v71 = *(v10 + 3);
      v98 = *(v10 + 2);
      v99[0] = v71;
      *(v99 + 9) = *(v10 + 57);
      v72 = *(v10 + 1);
      v96 = *v10;
      v97 = v72;
      LOBYTE(v85) = 11;
      v107 = 0;
      sub_21431D794();
      v73 = v83;
      v74 = v84;
      v75 = v82;
      sub_2146DA388();
      if (!v75)
      {
        v87 = v98;
        v88[0] = v99[0];
        *(v88 + 9) = *(v99 + 9);
        v85 = v96;
        v86 = v97;
        v107 = 11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C630, &unk_2146F6D50);
        sub_21431D998();
        sub_2146DA388();
      }

      (*(v108 + 8))(v73, v74);
      v20 = &qword_27C90C630;
      v21 = &unk_2146F6D50;
      goto LABEL_37;
    case 0xBu:
      v22 = *v10;
      LOBYTE(v96) = 12;
      LOBYTE(v85) = 0;
      sub_21431D794();
      v23 = v83;
      v24 = v84;
      v25 = v82;
      sub_2146DA388();
      if (v25)
      {
        goto LABEL_30;
      }

      LOBYTE(v96) = v22;
      LOBYTE(v85) = 12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C618, &unk_214747AD0);
      sub_21431D8C0();
      goto LABEL_29;
    case 0xCu:
      v33 = *v10;
      LOBYTE(v96) = 13;
      LOBYTE(v85) = 0;
      sub_21431D794();
      v23 = v83;
      v24 = v84;
      v34 = v82;
      sub_2146DA388();
      if (v34)
      {
        goto LABEL_30;
      }

      LOBYTE(v96) = v33;
      LOBYTE(v85) = 13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C600, &unk_2146F6D40);
      sub_21431D7E8();
LABEL_29:
      sub_2146DA388();
LABEL_30:
      result = (*(v108 + 8))(v23, v24);
      break;
    case 0xDu:
      LOBYTE(v96) = 0;
      LOBYTE(v85) = 0;
      sub_21431D794();
      v67 = v83;
      v68 = v84;
      sub_2146DA388();
      return (*(v108 + 8))(v67, v68);
    default:
      v15 = *(v10 + 3);
      v98 = *(v10 + 2);
      v99[0] = v15;
      v99[1] = *(v10 + 4);
      LOBYTE(v100) = v10[80];
      v16 = *(v10 + 1);
      v96 = *v10;
      v97 = v16;
      LOBYTE(v85) = 1;
      v107 = 0;
      sub_21431D794();
      v17 = v83;
      v18 = v84;
      v19 = v82;
      sub_2146DA388();
      if (v19)
      {
        (*(v108 + 8))(v17, v18);
        v20 = &qword_27C90C718;
        v21 = &qword_214747AB0;
LABEL_37:
        result = sub_213FB2DF4(&v96, v20, v21);
      }

      else
      {
        v87 = v98;
        v88[0] = v99[0];
        v88[1] = v99[1];
        LOBYTE(v89) = v100;
        v85 = v96;
        v86 = v97;
        v107 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C718, &qword_214747AB0);
        sub_21431E228();
        sub_2146DA388();
        (*(v108 + 8))(v17, v18);
        result = sub_213FB2DF4(&v96, &qword_27C90C718, &qword_214747AB0);
      }

      break;
  }

  return result;
}

uint64_t sub_2142A8760@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C5E0, &qword_2146F6D30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C730, &qword_2146F6DA0);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - v9;
  v11 = type metadata accessor for MBDActionContent();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_21431D740();
  v17 = v49;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  v18 = v47;
  v49 = v11;
  v46 = v14;
  v19 = v48;
  v62 = 0;
  sub_21431E300();
  sub_2146DA1C8();
  switch(v51)
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C718, &qword_214747AB0);
      v62 = 1;
      sub_21431ED50();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v32 = *v54;
      v21 = v46;
      v46[2] = v53;
      v21[3] = v32;
      v21[4] = *&v54[16];
      *(v21 + 80) = v55;
      v33 = v52;
      *v21 = v51;
      v21[1] = v33;
      break;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C700, &unk_2146F6D90);
      v62 = 2;
      sub_21431EC78();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v28 = v53;
      v29 = v52;
      v21 = v46;
      *v46 = v51;
      v21[1] = v29;
      *(v21 + 32) = v28;
      break;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6E8, &qword_2146F6D88);
      v62 = 3;
      sub_21431EBA0();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v30 = *v54;
      v21 = v46;
      v46[2] = v53;
      v21[3] = v30;
      *(v21 + 57) = *&v54[9];
      v31 = v52;
      *v21 = v51;
      v21[1] = v31;
      break;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6D0, &qword_2146F6D80);
      v62 = 4;
      sub_21431EAC8();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v24 = v53;
      v25 = v52;
      v21 = v46;
      *v46 = v51;
      v21[1] = v25;
      *(v21 + 32) = v24;
      break;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6B8, &qword_214747AE0);
      v62 = 5;
      sub_21431E9F0();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v34 = v53;
      v35 = v52;
      v21 = v46;
      *v46 = v51;
      v21[1] = v35;
      *(v21 + 32) = v34;
      break;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6A0, &unk_2146F6D70);
      v62 = 6;
      sub_21431E918();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v36 = v59;
      v21 = v46;
      v46[8] = v58;
      v21[9] = v36;
      v21[10] = v60;
      *(v21 + 176) = v61;
      v37 = v55;
      v21[4] = *&v54[16];
      v21[5] = v37;
      v38 = v57;
      v21[6] = v56;
      v21[7] = v38;
      v39 = v52;
      *v21 = v51;
      v21[1] = v39;
      v40 = *v54;
      v21[2] = v53;
      v21[3] = v40;
      break;
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C688, &qword_2146F6D68);
      v62 = 7;
      sub_21431E840();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v21 = v46;
      *v46 = v51;
      break;
    case 8:
      LOBYTE(v51) = 8;
      sub_21431E78C();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v21 = v46;
      sub_21408AC04(v6, v46, &qword_27C90C5E0, &qword_2146F6D30);
      break;
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C660, &qword_2146F6D60);
      v62 = 9;
      sub_21431E6B4();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v26 = *v54;
      v21 = v46;
      v46[2] = v53;
      v21[3] = v26;
      *(v21 + 57) = *&v54[9];
      v27 = v52;
      *v21 = v51;
      v21[1] = v27;
      break;
    case 10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C648, &unk_214747AA0);
      v62 = 10;
      sub_21431E5DC();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v41 = v55;
      v21 = v46;
      v46[4] = *&v54[16];
      v21[5] = v41;
      v21[6] = v56;
      *(v21 + 112) = v57;
      v42 = v52;
      *v21 = v51;
      v21[1] = v42;
      v43 = *v54;
      v21[2] = v53;
      v21[3] = v43;
      break;
    case 11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C630, &unk_2146F6D50);
      v62 = 11;
      sub_21431E504();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v22 = *v54;
      v21 = v46;
      v46[2] = v53;
      v21[3] = v22;
      *(v21 + 57) = *&v54[9];
      v23 = v52;
      *v21 = v51;
      v21[1] = v23;
      break;
    case 12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C618, &unk_214747AD0);
      v62 = 12;
      sub_21431E42C();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v21 = v46;
      *v46 = v51;
      break;
    case 13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C600, &unk_2146F6D40);
      v62 = 13;
      sub_21431E354();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v21 = v46;
      *v46 = v51;
      break;
    default:
      (*(v18 + 8))(v10, v7);
      v21 = v46;
      break;
  }

  swift_storeEnumTagMultiPayload();
  v44 = v50;
  sub_214328704(v21, v19, type metadata accessor for MBDActionContent);
  return __swift_destroy_boxed_opaque_existential_1(v44);
}

unint64_t sub_2142A9300()
{
  v1 = *v0;
  v2 = 0x565F65676E616863;
  v3 = 0x5F6E6F69746E656DLL;
  v4 = 0xD000000000000011;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001BLL;
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

uint64_t sub_2142A93B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143863BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142A93E0(uint64_t a1)
{
  v2 = sub_21431EE28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A941C(uint64_t a1)
{
  v2 = sub_21431EE28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A9464()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142A9550()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142A9628()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142A9710@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2143865E0();
  *a2 = result;
  return result;
}

void sub_2142A9740(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64696C61766E69;
  v5 = 0xE700000000000000;
  v6 = 0x6E6F69746E656DLL;
  v7 = 0xEA00000000007069;
  v8 = 0x68737265626D656DLL;
  if (v2 != 3)
  {
    v8 = 0x6574736973726570;
    v7 = 0xEB0000000065636ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65676E616863;
    v3 = 0xE600000000000000;
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

uint64_t sub_2142A9898(void *a1)
{
  v42 = type metadata accessor for PersistenceEvent(0);
  v2 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v44 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for MembershipEvent(0);
  v4 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for MentionEvent(0);
  v6 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ChangeEvent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CollaborationHighlightEvent(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C810, &qword_2146F6DA8);
  v18 = *(v17 - 8);
  v49 = v17;
  v50 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431EE28();
  v48 = v21;
  sub_2146DAA28();
  sub_2143287C0(v46, v16, type metadata accessor for CollaborationHighlightEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_214328704(v16, v8, type metadata accessor for MentionEvent);
      v56 = 2;
      v55 = 0;
      sub_21431EE7C();
      v26 = v48;
      v27 = v49;
      v39 = v47;
      sub_2146DA388();
      if (!v39)
      {
        v54 = 2;
        sub_214328930(&qword_27C90C838, type metadata accessor for MentionEvent);
        sub_2146DA388();
      }

      v34 = type metadata accessor for MentionEvent;
      v35 = v8;
      goto LABEL_19;
    }

    v30 = v16;
    v25 = v12;
    sub_214328704(v30, v12, type metadata accessor for ChangeEvent);
    v53 = 1;
    v52 = 0;
    sub_21431EE7C();
    v26 = v48;
    v27 = v49;
    v31 = v47;
    sub_2146DA388();
    if (!v31)
    {
      v51 = 1;
      sub_214328930(&qword_27C90C840, type metadata accessor for ChangeEvent);
      sub_2146DA388();
    }

    v29 = type metadata accessor for ChangeEvent;
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v32 = v16;
    v25 = v43;
    sub_214328704(v32, v43, type metadata accessor for MembershipEvent);
    v59 = 3;
    v58 = 0;
    sub_21431EE7C();
    v26 = v48;
    v27 = v49;
    v33 = v47;
    sub_2146DA388();
    if (!v33)
    {
      v57 = 3;
      sub_214328930(&qword_27C90C830, type metadata accessor for MembershipEvent);
      sub_2146DA388();
    }

    v29 = type metadata accessor for MembershipEvent;
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      v63 = 0;
      sub_21431EE7C();
      v37 = v48;
      v36 = v49;
      sub_2146DA388();
      return (*(v50 + 8))(v37, v36);
    }

    v24 = v16;
    v25 = v44;
    sub_214328704(v24, v44, type metadata accessor for PersistenceEvent);
    v62 = 4;
    v61 = 0;
    sub_21431EE7C();
    v26 = v48;
    v27 = v49;
    v28 = v47;
    sub_2146DA388();
    if (!v28)
    {
      v60 = 4;
      sub_214328930(&qword_27C90C828, type metadata accessor for PersistenceEvent);
      sub_2146DA388();
    }

    v29 = type metadata accessor for PersistenceEvent;
  }

  v34 = v29;
  v35 = v25;
LABEL_19:
  sub_21432887C(v35, v34);
  return (*(v50 + 8))(v26, v27);
}

uint64_t sub_2142A9F0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v38 = type metadata accessor for PersistenceEvent(0);
  v3 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for MembershipEvent(0);
  v5 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for MentionEvent(0);
  v7 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v40 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ChangeEvent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C848, &qword_2146F6DB0);
  v39 = *(v13 - 8);
  v14 = *(v39 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v17 = type metadata accessor for CollaborationHighlightEvent(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v21 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_21431EE28();
  v23 = v42;
  sub_2146DAA08();
  if (!v23)
  {
    v32 = v9;
    v33 = v20;
    v25 = v39;
    v24 = v40;
    v42 = v17;
    v26 = v41;
    v48 = 0;
    sub_21431EED0();
    sub_2146DA1C8();
    if (v49 <= 1u)
    {
      if (v49)
      {
        v44 = 1;
        sub_214328930(&qword_27C90C870, type metadata accessor for ChangeEvent);
        sub_2146DA1C8();
        (*(v25 + 8))(v16, v13);
        v29 = v33;
        sub_214328704(v12, v33, type metadata accessor for ChangeEvent);
      }

      else
      {
        (*(v25 + 8))(v16, v13);
        v29 = v33;
      }
    }

    else if (v49 == 2)
    {
      v45 = 2;
      sub_214328930(&qword_27C90C868, type metadata accessor for MentionEvent);
      sub_2146DA1C8();
      (*(v25 + 8))(v16, v13);
      v29 = v33;
      sub_214328704(v24, v33, type metadata accessor for MentionEvent);
    }

    else
    {
      v27 = v13;
      if (v49 == 3)
      {
        v46 = 3;
        sub_214328930(&qword_27C90C860, type metadata accessor for MembershipEvent);
        v28 = v35;
        sub_2146DA1C8();
        (*(v25 + 8))(v16, v27);
        v29 = v33;
        sub_214328704(v28, v33, type metadata accessor for MembershipEvent);
      }

      else
      {
        v47 = 4;
        sub_214328930(&qword_27C90C858, type metadata accessor for PersistenceEvent);
        v30 = v37;
        sub_2146DA1C8();
        (*(v25 + 8))(v16, v27);
        v29 = v33;
        sub_214328704(v30, v33, type metadata accessor for PersistenceEvent);
      }
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v29, v26, type metadata accessor for CollaborationHighlightEvent);
  }

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

unint64_t sub_2142AA574()
{
  v1 = *v0;
  v2 = 0x756C61565F706174;
  v3 = 0x6C61565F7373696BLL;
  if (v1 != 6)
  {
    v3 = 0x61565F7265676E61;
  }

  v4 = 0x7061746B63697571;
  if (v1 != 4)
  {
    v4 = 0x61565F6F65646976;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x565F656C646F6F64;
  if (v1 != 2)
  {
    v5 = 0x6165627472616568;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_2142AA6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438662C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142AA6D4(uint64_t a1)
{
  v2 = sub_21431EF24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142AA710(uint64_t a1)
{
  v2 = sub_21431EF24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142AA774@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214386950();
  *a2 = result;
  return result;
}

void sub_2142AA7A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7364980;
  v5 = 0xE400000000000000;
  v6 = 1936943467;
  if (v2 != 6)
  {
    v6 = 0x7265676E61;
    v5 = 0xE500000000000000;
  }

  v7 = 0xEB00000000747069;
  v8 = 0x6563657264616572;
  if (v2 != 4)
  {
    v8 = 0x6F65646976;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000074;
  v10 = 0x6165627472616568;
  if (v2 != 2)
  {
    v10 = 0x7061746B63697571;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x656C646F6F64;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
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

uint64_t sub_2142AA944(void *a1)
{
  v2 = v1;
  v49 = type metadata accessor for VideoMessage(0);
  v4 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DigitalTouchMessage(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C878, &qword_2146F6DB8);
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431EF24();
  sub_2146DAA28();
  sub_2143287C0(v2, v9, type metadata accessor for DigitalTouchMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v30 = *(v9 + 1);
        v57 = *v9;
        v58 = v30;
        *&v59 = *(v9 + 4);
        LOBYTE(v52) = 7;
        v62 = 0;
        sub_21431EF78();
        v31 = v51;
        sub_2146DA388();
        if (!v31)
        {
          v52 = v57;
          v53 = v58;
          *&v54 = v59;
          v62 = 7;
          sub_21431EFCC();
          sub_2146DA388();
        }

        (*(v63 + 8))(v13, v10);
        return sub_2142EE378(&v57);
      }

      else
      {
        LOBYTE(v57) = 4;
        LOBYTE(v52) = 0;
        sub_21431EF78();
        sub_2146DA388();
        return (*(v63 + 8))(v13, v10);
      }
    }

    else
    {
      v16 = v10;
      v17 = v13;
      if (EnumCaseMultiPayload != 4)
      {
        v38 = *v9;
        v39 = *(v9 + 1);
        v40 = *(v9 + 2);
        v41 = v9[24];
        LOBYTE(v57) = 6;
        LOBYTE(v52) = 0;
        sub_21431EF78();
        v42 = v51;
        sub_2146DA388();
        if (!v42)
        {
          *&v57 = v38;
          *(&v57 + 1) = v39;
          *&v58 = v40;
          BYTE8(v58) = v41;
          LOBYTE(v52) = 6;
          sub_21431F020();
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      v23 = v50;
      sub_214328704(v9, v50, type metadata accessor for VideoMessage);
      LOBYTE(v57) = 5;
      LOBYTE(v52) = 0;
      sub_21431EF78();
      v24 = v51;
      sub_2146DA388();
      if (!v24)
      {
        LOBYTE(v57) = 5;
        sub_214328930(&qword_27C90C8A0, type metadata accessor for VideoMessage);
        sub_2146DA388();
      }

      sub_21432887C(v23, type metadata accessor for VideoMessage);
      return (*(v63 + 8))(v13, v10);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v16 = v10;
      v17 = v13;
      if (EnumCaseMultiPayload)
      {
        v32 = *v9;
        v33 = *(v9 + 1);
        v34 = *(v9 + 2);
        v35 = v9[24];
        v36 = v9[25];
        LOBYTE(v57) = 1;
        LOBYTE(v52) = 0;
        sub_21431EF78();
        v37 = v51;
        sub_2146DA388();
        if (!v37)
        {
          *&v57 = v32;
          *(&v57 + 1) = v33;
          *&v58 = v34;
          BYTE8(v58) = v35;
          BYTE9(v58) = v36;
          LOBYTE(v52) = 2;
          sub_2142EE0CC();
          goto LABEL_23;
        }
      }

      else
      {
        v18 = *v9;
        v19 = *(v9 + 1);
        v20 = *(v9 + 2);
        v21 = v9[24];
        LOBYTE(v57) = 0;
        LOBYTE(v52) = 0;
        sub_21431EF78();
        v22 = v51;
        sub_2146DA388();
        if (!v22)
        {
          *&v57 = v18;
          *(&v57 + 1) = v19;
          *&v58 = v20;
          BYTE8(v58) = v21;
          LOBYTE(v52) = 1;
          sub_21431F074();
LABEL_23:
          sub_2146DA388();
        }
      }

LABEL_24:
      (*(v63 + 8))(v17, v16);
LABEL_28:
    }

    v26 = v13;
    if (EnumCaseMultiPayload != 2)
    {
      v43 = *v9;
      v44 = *(v9 + 1);
      v45 = *(v9 + 2);
      v46 = v9[24];
      LOBYTE(v57) = 3;
      LOBYTE(v52) = 0;
      sub_21431EF78();
      v47 = v51;
      sub_2146DA388();
      if (!v47)
      {
        *&v57 = v43;
        *(&v57 + 1) = v44;
        *&v58 = v45;
        BYTE8(v58) = v46;
        LOBYTE(v52) = 4;
        sub_21431F074();
        sub_2146DA388();
      }

      (*(v63 + 8))(v26, v10);
      goto LABEL_28;
    }

    v27 = *(v9 + 3);
    v59 = *(v9 + 2);
    v60 = v27;
    *v61 = *(v9 + 4);
    *&v61[14] = *(v9 + 78);
    v28 = *(v9 + 1);
    v57 = *v9;
    v58 = v28;
    LOBYTE(v52) = 2;
    v62 = 0;
    sub_21431EF78();
    v29 = v51;
    sub_2146DA388();
    if (!v29)
    {
      v54 = v59;
      v55 = v60;
      v56[0] = *v61;
      *(v56 + 14) = *&v61[14];
      v52 = v57;
      v53 = v58;
      v62 = 3;
      sub_21431F0C8();
      sub_2146DA388();
    }

    (*(v63 + 8))(v13, v10);
    return sub_2142EDB54(&v57);
  }
}

uint64_t sub_2142AB0B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for VideoMessage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C8B8, &qword_2146F6DC0);
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v11 = type metadata accessor for DigitalTouchMessage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_21431EF24();
  v17 = v38;
  sub_2146DAA08();
  if (!v17)
  {
    v38 = v11;
    v35 = v14;
    v18 = v36;
    v19 = v37;
    v45 = 0;
    sub_21431F11C();
    sub_2146DA1C8();
    if (v40 > 3u)
    {
      if (v40 > 5u)
      {
        if (v40 == 6)
        {
          v45 = 6;
          sub_21431F1C4();
          sub_2146DA1C8();
          (*(v18 + 8))(v10, v7);
          v25 = v41;
          v26 = BYTE8(v41);
          v22 = v35;
          *v35 = v40;
          *(v22 + 2) = v25;
          *(v22 + 24) = v26;
        }

        else
        {
          v45 = 7;
          sub_21431F170();
          sub_2146DA1C8();
          (*(v18 + 8))(v10, v7);
          v32 = v41;
          v22 = v35;
          *v35 = v40;
          v22[1] = v32;
          *(v22 + 4) = v42;
        }
      }

      else if (v40 == 4)
      {
        (*(v18 + 8))(v10, v7);
        v22 = v35;
      }

      else
      {
        LOBYTE(v40) = 5;
        sub_214328930(&qword_27C90C8D8, type metadata accessor for VideoMessage);
        sub_2146DA1C8();
        (*(v18 + 8))(v10, v7);
        v22 = v35;
        sub_214328704(v6, v35, type metadata accessor for VideoMessage);
      }
    }

    else if (v40 > 1u)
    {
      if (v40 == 2)
      {
        v45 = 3;
        sub_21431F26C();
        sub_2146DA1C8();
        (*(v18 + 8))(v10, v7);
        v23 = v43;
        v22 = v35;
        v35[2] = v42;
        v22[3] = v23;
        v22[4] = v44[0];
        *(v22 + 78) = *(v44 + 14);
        v24 = v41;
        *v22 = v40;
        v22[1] = v24;
      }

      else
      {
        v45 = 4;
        sub_21431F218();
        sub_2146DA1C8();
        (*(v18 + 8))(v10, v7);
        v30 = v41;
        v31 = BYTE8(v41);
        v22 = v35;
        *v35 = v40;
        *(v22 + 2) = v30;
        *(v22 + 24) = v31;
      }
    }

    else if (v40)
    {
      v45 = 2;
      sub_2142EE078();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v27 = v41;
      v28 = BYTE8(v41);
      v29 = BYTE9(v41);
      v22 = v35;
      *v35 = v40;
      *(v22 + 2) = v27;
      *(v22 + 24) = v28;
      *(v22 + 25) = v29;
    }

    else
    {
      v45 = 1;
      sub_21431F218();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v20 = v41;
      v21 = BYTE8(v41);
      v22 = v35;
      *v35 = v40;
      *(v22 + 2) = v20;
      *(v22 + 24) = v21;
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v22, v19, type metadata accessor for DigitalTouchMessage);
  }

  return __swift_destroy_boxed_opaque_existential_1(v39);
}

unint64_t sub_2142AB734(char a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000023;
      break;
    case 2:
    case 5:
    case 21:
    case 24:
      result = 0xD00000000000001ALL;
      break;
    case 3:
    case 33:
      result = 0xD000000000000019;
      break;
    case 4:
    case 22:
      result = 0xD00000000000001ELL;
      break;
    case 6:
    case 23:
    case 28:
      result = 0xD000000000000014;
      break;
    case 7:
    case 12:
      result = 0xD000000000000015;
      break;
    case 8:
    case 10:
    case 17:
    case 31:
      result = 0xD000000000000016;
      break;
    case 9:
    case 13:
    case 14:
    case 16:
      result = 0xD000000000000018;
      break;
    case 11:
    case 29:
    case 30:
      result = 0xD000000000000017;
      break;
    case 15:
    case 26:
    case 27:
    case 32:
      result = 0xD000000000000013;
      break;
    case 18:
    case 19:
      result = 0xD00000000000001BLL;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2142AB9A0(char a1)
{
  result = 0x74656C6544666D66;
  switch(a1)
  {
    case 1:
    case 4:
    case 20:
    case 23:
      result = 0xD000000000000014;
      break;
    case 2:
    case 32:
      result = 0xD000000000000013;
      break;
    case 3:
    case 21:
      result = 0xD000000000000018;
      break;
    case 5:
      return result;
    case 6:
      result = 0x65636E6546666D66;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
    case 12:
    case 13:
    case 15:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
    case 28:
    case 29:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x73655370756F7267;
      break;
    case 14:
      result = 0x416563694E736469;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
    case 18:
      v3 = 5;
      goto LABEL_15;
    case 19:
      result = 0x50646E41656D616ELL;
      break;
    case 22:
      result = 0x4D74726F70706172;
      break;
    case 24:
      result = 0xD000000000000017;
      break;
    case 25:
      result = 0x416E6F6973736573;
      break;
    case 26:
      result = 0x436E6F6973736573;
      break;
    case 27:
      result = 0x446E6F6973736573;
      break;
    case 30:
      result = 0xD000000000000010;
      break;
    case 31:
      result = 0x5445646572616873;
      break;
    default:
      v3 = 13;
LABEL_15:
      result = v3 | 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_2142ABD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438699C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142ABD60(uint64_t a1)
{
  v2 = sub_21431F2C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142ABD9C(uint64_t a1)
{
  v2 = sub_21431F2C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142ABE38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21438742C();
  *a2 = result;
  return result;
}

unint64_t sub_2142ABE68@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2142AB9A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2142ABF44(uint64_t a1)
{
  v171 = v2;
  v178 = v1;
  v3 = MEMORY[0x28223BE20](a1);
  v165 = type metadata accessor for PhotosSharedAlbumMessage(0);
  v4 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v170 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for IDSNearbySessionMessage(0);
  v6 = *(*(v164 - 8) + 64);
  MEMORY[0x28223BE20](v164);
  v169 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for IDSSampleMessage(0);
  v8 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v168 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for IDSProtobuf(0);
  v10 = *(*(v162 - 8) + 64);
  MEMORY[0x28223BE20](v162);
  v167 = &v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for FMFShareInvitation();
  v12 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v166 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AccountsRepresentativeMessage(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for IDSClientMessageType(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C8F0, &qword_2146F6DC8);
  v23 = *(v22 - 8);
  v173 = v22;
  v174 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v161 - v25;
  v27 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_21431F2C0();
  v172 = v26;
  sub_2146DAA28();
  sub_2143287C0(v178, v21, type metadata accessor for IDSClientMessageType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v80 = *v21;
      v176[0] = 1;
      LOBYTE(v175[0]) = 0;
      sub_21431F314();
      v41 = v172;
      v42 = v173;
      v81 = v171;
      sub_2146DA388();
      if (v81)
      {
        goto LABEL_77;
      }

      v176[0] = v80;
      LOBYTE(v175[0]) = 2;
      sub_21407D9F4();
      goto LABEL_76;
    case 2u:
      memcpy(v176, v21, 0x6F3uLL);
      LOBYTE(v175[0]) = 2;
      v177 = 0;
      sub_21431F314();
      v68 = v172;
      v69 = v173;
      v70 = v171;
      sub_2146DA388();
      if (!v70)
      {
        memcpy(v175, v176, 0x6F3uLL);
        v177 = 3;
        sub_2142E8B6C();
        sub_2146DA388();
      }

      (*(v174 + 8))(v68, v69);
      return sub_2142E77C8(v176);
    case 3u:
      memcpy(v176, v21, 0x1D2uLL);
      LOBYTE(v175[0]) = 3;
      v177 = 0;
      sub_21431F314();
      v72 = v172;
      v73 = v173;
      v74 = v171;
      sub_2146DA388();
      if (!v74)
      {
        memcpy(v175, v176, 0x1D2uLL);
        v177 = 4;
        sub_21431FAF4();
        sub_2146DA388();
      }

      (*(v174 + 8))(v72, v73);
      return sub_2142F0B5C(v176);
    case 4u:
      v47 = *v21;
      v176[0] = 4;
      LOBYTE(v175[0]) = 0;
      sub_21431F314();
      v41 = v172;
      v42 = v173;
      v48 = v171;
      sub_2146DA388();
      if (v48)
      {
        goto LABEL_77;
      }

      *v176 = v47;
      LOBYTE(v175[0]) = 5;
      sub_21431FAA0();
      goto LABEL_76;
    case 5u:
      v93 = *(v21 + 3);
      *&v176[32] = *(v21 + 2);
      *&v176[48] = v93;
      v94 = *(v21 + 5);
      *&v176[64] = *(v21 + 4);
      *&v176[80] = v94;
      v95 = *(v21 + 1);
      *v176 = *v21;
      *&v176[16] = v95;
      LOBYTE(v175[0]) = 5;
      v177 = 0;
      sub_21431F314();
      v96 = v172;
      v97 = v173;
      v98 = v171;
      sub_2146DA388();
      if (!v98)
      {
        v175[2] = *&v176[32];
        v175[3] = *&v176[48];
        v175[4] = *&v176[64];
        v175[5] = *&v176[80];
        v175[0] = *v176;
        v175[1] = *&v176[16];
        v177 = 6;
        sub_21431FA4C();
        sub_2146DA388();
      }

      (*(v174 + 8))(v96, v97);
      return sub_2142EEE64(v176);
    case 6u:
      v107 = *(v21 + 9);
      *&v176[128] = *(v21 + 8);
      *&v176[144] = v107;
      v108 = *(v21 + 11);
      *&v176[160] = *(v21 + 10);
      *&v176[176] = v108;
      v109 = *(v21 + 5);
      *&v176[64] = *(v21 + 4);
      *&v176[80] = v109;
      v110 = *(v21 + 7);
      *&v176[96] = *(v21 + 6);
      *&v176[112] = v110;
      v111 = *(v21 + 1);
      *v176 = *v21;
      *&v176[16] = v111;
      v112 = *(v21 + 3);
      *&v176[32] = *(v21 + 2);
      *&v176[48] = v112;
      LOBYTE(v175[0]) = 6;
      v177 = 0;
      sub_21431F314();
      v113 = v172;
      v114 = v173;
      v115 = v171;
      sub_2146DA388();
      if (!v115)
      {
        v175[8] = *&v176[128];
        v175[9] = *&v176[144];
        v175[10] = *&v176[160];
        v175[11] = *&v176[176];
        v175[4] = *&v176[64];
        v175[5] = *&v176[80];
        v175[6] = *&v176[96];
        v175[7] = *&v176[112];
        v175[0] = *v176;
        v175[1] = *&v176[16];
        v175[2] = *&v176[32];
        v175[3] = *&v176[48];
        v177 = 7;
        sub_21431F9F8();
        sub_2146DA388();
      }

      (*(v174 + 8))(v113, v114);
      return sub_2142EEF68(v176);
    case 7u:
      v75 = *(v21 + 3);
      *&v176[32] = *(v21 + 2);
      *&v176[48] = v75;
      *&v176[64] = *(v21 + 4);
      *&v176[73] = *(v21 + 73);
      v76 = *(v21 + 1);
      *v176 = *v21;
      *&v176[16] = v76;
      LOBYTE(v175[0]) = 7;
      v177 = 0;
      sub_21431F314();
      v77 = v172;
      v78 = v173;
      v79 = v171;
      sub_2146DA388();
      if (!v79)
      {
        v175[2] = *&v176[32];
        v175[3] = *&v176[48];
        v175[4] = *&v176[64];
        *(&v175[4] + 9) = *&v176[73];
        v175[0] = *v176;
        v175[1] = *&v176[16];
        v177 = 8;
        sub_21431F9A4();
        sub_2146DA388();
      }

      (*(v174 + 8))(v77, v78);
      return sub_2142EF114(v176);
    case 8u:
      v17 = v166;
      sub_214328704(v21, v166, type metadata accessor for FMFShareInvitation);
      v176[0] = 8;
      LOBYTE(v175[0]) = 0;
      sub_21431F314();
      v28 = v172;
      v29 = v173;
      v126 = v171;
      sub_2146DA388();
      if (!v126)
      {
        v176[0] = 9;
        sub_214328930(&qword_27C90C9A8, type metadata accessor for FMFShareInvitation);
        sub_2146DA388();
      }

      v31 = type metadata accessor for FMFShareInvitation;
      goto LABEL_73;
    case 9u:
      memcpy(v176, v21, sizeof(v176));
      LOBYTE(v175[0]) = 9;
      v177 = 0;
      sub_21431F314();
      v52 = v172;
      v53 = v173;
      v54 = v171;
      sub_2146DA388();
      if (!v54)
      {
        memcpy(v175, v176, 0xCF3uLL);
        v177 = 10;
        sub_21431F950();
        sub_2146DA388();
      }

      (*(v174 + 8))(v52, v53);
      return sub_2142F2574(v176);
    case 0xAu:
      v118 = *(v21 + 9);
      *&v176[128] = *(v21 + 8);
      *&v176[144] = v118;
      *&v176[155] = *(v21 + 155);
      v119 = *(v21 + 5);
      *&v176[64] = *(v21 + 4);
      *&v176[80] = v119;
      v120 = *(v21 + 6);
      *&v176[112] = *(v21 + 7);
      *&v176[96] = v120;
      v121 = *(v21 + 1);
      *v176 = *v21;
      *&v176[16] = v121;
      v122 = *(v21 + 2);
      *&v176[48] = *(v21 + 3);
      *&v176[32] = v122;
      LOBYTE(v175[0]) = 10;
      v177 = 0;
      sub_21431F314();
      v123 = v172;
      v124 = v173;
      v125 = v171;
      sub_2146DA388();
      if (!v125)
      {
        v175[8] = *&v176[128];
        v175[9] = *&v176[144];
        *(&v175[9] + 11) = *&v176[155];
        v175[4] = *&v176[64];
        v175[5] = *&v176[80];
        v175[6] = *&v176[96];
        v175[7] = *&v176[112];
        v175[0] = *v176;
        v175[1] = *&v176[16];
        v175[2] = *&v176[32];
        v175[3] = *&v176[48];
        v177 = 11;
        sub_21431F8FC();
        sub_2146DA388();
      }

      (*(v174 + 8))(v123, v124);
      return sub_2142F2C90(v176);
    case 0xBu:
      memcpy(v176, v21, 0x19BuLL);
      LOBYTE(v175[0]) = 11;
      v177 = 0;
      sub_21431F314();
      v44 = v172;
      v45 = v173;
      v46 = v171;
      sub_2146DA388();
      if (!v46)
      {
        memcpy(v175, v176, 0x19BuLL);
        v177 = 12;
        sub_21431F8A8();
        sub_2146DA388();
      }

      (*(v174 + 8))(v44, v45);
      return sub_2142F31E8(v176);
    case 0xCu:
      memcpy(v176, v21, 0xC89uLL);
      LOBYTE(v175[0]) = 12;
      v177 = 0;
      sub_21431F314();
      v49 = v172;
      v50 = v173;
      v51 = v171;
      sub_2146DA388();
      if (!v51)
      {
        memcpy(v175, v176, 0xC89uLL);
        v177 = 13;
        sub_21431F854();
        sub_2146DA388();
      }

      (*(v174 + 8))(v49, v50);
      return sub_2142F37B0(v176);
    case 0xDu:
      v100 = *(v21 + 7);
      *&v176[96] = *(v21 + 6);
      *&v176[112] = v100;
      *&v176[128] = *(v21 + 8);
      v176[144] = v21[144];
      v101 = *(v21 + 3);
      *&v176[32] = *(v21 + 2);
      *&v176[48] = v101;
      v102 = *(v21 + 5);
      *&v176[64] = *(v21 + 4);
      *&v176[80] = v102;
      v103 = *(v21 + 1);
      *v176 = *v21;
      *&v176[16] = v103;
      LOBYTE(v175[0]) = 13;
      v177 = 0;
      sub_21431F314();
      v104 = v172;
      v105 = v173;
      v106 = v171;
      sub_2146DA388();
      if (!v106)
      {
        v175[6] = *&v176[96];
        v175[7] = *&v176[112];
        v175[8] = *&v176[128];
        LOBYTE(v175[9]) = v176[144];
        v175[2] = *&v176[32];
        v175[3] = *&v176[48];
        v175[4] = *&v176[64];
        v175[5] = *&v176[80];
        v175[0] = *v176;
        v175[1] = *&v176[16];
        v177 = 14;
        sub_21431F800();
        sub_2146DA388();
      }

      (*(v174 + 8))(v104, v105);
      return sub_2142F36AC(v176);
    case 0xEu:
      v40 = *v21;
      v176[0] = 14;
      LOBYTE(v175[0]) = 0;
      sub_21431F314();
      v41 = v172;
      v42 = v173;
      v43 = v171;
      sub_2146DA388();
      if (!v43)
      {
        v176[0] = 15;
        sub_2146DA368();
      }

      goto LABEL_77;
    case 0xFu:
      v17 = v167;
      sub_214328704(v21, v167, type metadata accessor for IDSProtobuf);
      v176[0] = 15;
      LOBYTE(v175[0]) = 0;
      sub_21431F314();
      v28 = v172;
      v29 = v173;
      v71 = v171;
      sub_2146DA388();
      if (!v71)
      {
        v176[0] = 16;
        sub_214328930(&qword_27C90C978, type metadata accessor for IDSProtobuf);
        sub_2146DA388();
      }

      v31 = type metadata accessor for IDSProtobuf;
      goto LABEL_73;
    case 0x10u:
      v17 = v168;
      sub_214328704(v21, v168, type metadata accessor for IDSSampleMessage);
      v176[0] = 16;
      LOBYTE(v175[0]) = 0;
      sub_21431F314();
      v28 = v172;
      v29 = v173;
      v39 = v171;
      sub_2146DA388();
      if (!v39)
      {
        v176[0] = 17;
        sub_214328930(&qword_27C90C970, type metadata accessor for IDSSampleMessage);
        sub_2146DA388();
      }

      v31 = type metadata accessor for IDSSampleMessage;
      goto LABEL_73;
    case 0x11u:
      memcpy(v176, v21, 0x679uLL);
      LOBYTE(v175[0]) = 17;
      v177 = 0;
      sub_21431F314();
      v89 = v172;
      v90 = v173;
      v91 = v171;
      sub_2146DA388();
      if (!v91)
      {
        memcpy(v175, v176, 0x679uLL);
        v177 = 18;
        sub_21431F7AC();
        sub_2146DA388();
      }

      (*(v174 + 8))(v89, v90);
      return sub_21431F758(v176);
    case 0x12u:
      v116 = *v21;
      v176[0] = 18;
      LOBYTE(v175[0]) = 0;
      sub_21431F314();
      v41 = v172;
      v42 = v173;
      v117 = v171;
      sub_2146DA388();
      if (v117)
      {
        goto LABEL_77;
      }

      v176[0] = v116;
      LOBYTE(v175[0]) = 19;
      sub_214052838();
      goto LABEL_76;
    case 0x13u:
      memcpy(v176, v21, 0x261uLL);
      LOBYTE(v175[0]) = 19;
      v177 = 0;
      sub_21431F314();
      v135 = v172;
      v136 = v173;
      v137 = v171;
      sub_2146DA388();
      if (!v137)
      {
        memcpy(v175, v176, 0x261uLL);
        v177 = 20;
        sub_21431F704();
        sub_2146DA388();
      }

      (*(v174 + 8))(v135, v136);
      return sub_21431F6B0(v176);
    case 0x14u:
      v17 = v169;
      sub_214328704(v21, v169, type metadata accessor for IDSNearbySessionMessage);
      v176[0] = 20;
      LOBYTE(v175[0]) = 0;
      sub_21431F314();
      v28 = v172;
      v29 = v173;
      v92 = v171;
      sub_2146DA388();
      if (!v92)
      {
        v176[0] = 21;
        sub_214328930(&qword_27C90C958, type metadata accessor for IDSNearbySessionMessage);
        sub_2146DA388();
      }

      v31 = type metadata accessor for IDSNearbySessionMessage;
      goto LABEL_73;
    case 0x15u:
      v17 = v170;
      sub_214328704(v21, v170, type metadata accessor for PhotosSharedAlbumMessage);
      v176[0] = 21;
      LOBYTE(v175[0]) = 0;
      sub_21431F314();
      v28 = v172;
      v29 = v173;
      v99 = v171;
      sub_2146DA388();
      if (!v99)
      {
        v176[0] = 22;
        sub_214328930(&qword_27C90C950, type metadata accessor for PhotosSharedAlbumMessage);
        sub_2146DA388();
      }

      v31 = type metadata accessor for PhotosSharedAlbumMessage;
      goto LABEL_73;
    case 0x16u:
      memcpy(v176, v21, 0x179uLL);
      LOBYTE(v175[0]) = 22;
      v177 = 0;
      sub_21431F314();
      v132 = v172;
      v133 = v173;
      v134 = v171;
      sub_2146DA388();
      if (!v134)
      {
        memcpy(v175, v176, 0x179uLL);
        v177 = 23;
        sub_21431F65C();
        sub_2146DA388();
      }

      (*(v174 + 8))(v132, v133);
      return sub_21431F608(v176);
    case 0x17u:
      memcpy(v176, v21, 0x219uLL);
      LOBYTE(v175[0]) = 23;
      v177 = 0;
      sub_21431F314();
      v138 = v172;
      v139 = v173;
      v140 = v171;
      sub_2146DA388();
      if (!v140)
      {
        memcpy(v175, v176, 0x219uLL);
        v177 = 24;
        sub_214058DF4();
        sub_2146DA388();
      }

      (*(v174 + 8))(v138, v139);
      return sub_214300F50(v176);
    case 0x18u:
      memcpy(v176, v21, 0x151uLL);
      LOBYTE(v175[0]) = 24;
      v177 = 0;
      sub_21431F314();
      v65 = v172;
      v66 = v173;
      v67 = v171;
      sub_2146DA388();
      if (!v67)
      {
        memcpy(v175, v176, 0x151uLL);
        v177 = 25;
        sub_21431F5B4();
        sub_2146DA388();
      }

      (*(v174 + 8))(v65, v66);
      return sub_21404C67C(v176);
    case 0x19u:
      v55 = *(v21 + 13);
      *&v176[192] = *(v21 + 12);
      *&v176[208] = v55;
      *&v176[218] = *(v21 + 218);
      v56 = *(v21 + 9);
      *&v176[128] = *(v21 + 8);
      *&v176[144] = v56;
      v57 = *(v21 + 10);
      *&v176[176] = *(v21 + 11);
      *&v176[160] = v57;
      v58 = *(v21 + 5);
      *&v176[64] = *(v21 + 4);
      *&v176[80] = v58;
      v59 = *(v21 + 6);
      *&v176[112] = *(v21 + 7);
      *&v176[96] = v59;
      v60 = *(v21 + 1);
      *v176 = *v21;
      *&v176[16] = v60;
      v61 = *(v21 + 2);
      *&v176[48] = *(v21 + 3);
      *&v176[32] = v61;
      LOBYTE(v175[0]) = 25;
      v177 = 0;
      sub_21431F314();
      v62 = v172;
      v63 = v173;
      v64 = v171;
      sub_2146DA388();
      if (!v64)
      {
        v175[12] = *&v176[192];
        v175[13] = *&v176[208];
        *(&v175[13] + 10) = *&v176[218];
        v175[8] = *&v176[128];
        v175[9] = *&v176[144];
        v175[10] = *&v176[160];
        v175[11] = *&v176[176];
        v175[4] = *&v176[64];
        v175[5] = *&v176[80];
        v175[6] = *&v176[96];
        v175[7] = *&v176[112];
        v175[0] = *v176;
        v175[1] = *&v176[16];
        v175[2] = *&v176[32];
        v175[3] = *&v176[48];
        v177 = 26;
        sub_21431F560();
        sub_2146DA388();
      }

      (*(v174 + 8))(v62, v63);
      return sub_2142F6960(v176);
    case 0x1Au:
      v155 = *(v21 + 5);
      *&v176[64] = *(v21 + 4);
      *&v176[80] = v155;
      *&v176[96] = *(v21 + 12);
      v156 = *(v21 + 1);
      *v176 = *v21;
      *&v176[16] = v156;
      v157 = *(v21 + 2);
      *&v176[48] = *(v21 + 3);
      *&v176[32] = v157;
      LOBYTE(v175[0]) = 26;
      v177 = 0;
      sub_21431F314();
      v158 = v172;
      v159 = v173;
      v160 = v171;
      sub_2146DA388();
      if (!v160)
      {
        v175[4] = *&v176[64];
        v175[5] = *&v176[80];
        *&v175[6] = *&v176[96];
        v175[0] = *v176;
        v175[1] = *&v176[16];
        v175[2] = *&v176[32];
        v175[3] = *&v176[48];
        v177 = 27;
        sub_21431F50C();
        sub_2146DA388();
      }

      (*(v174 + 8))(v158, v159);
      return sub_2142F6A64(v176);
    case 0x1Bu:
      v32 = *(v21 + 5);
      *&v176[64] = *(v21 + 4);
      *&v176[80] = v32;
      *&v176[96] = *(v21 + 12);
      v33 = *(v21 + 1);
      *v176 = *v21;
      *&v176[16] = v33;
      v34 = *(v21 + 2);
      *&v176[48] = *(v21 + 3);
      *&v176[32] = v34;
      LOBYTE(v175[0]) = 27;
      v177 = 0;
      sub_21431F314();
      v35 = v172;
      v36 = v173;
      v37 = v171;
      sub_2146DA388();
      if (!v37)
      {
        v175[4] = *&v176[64];
        v175[5] = *&v176[80];
        *&v175[6] = *&v176[96];
        v175[0] = *v176;
        v175[1] = *&v176[16];
        v175[2] = *&v176[32];
        v175[3] = *&v176[48];
        v177 = 28;
        sub_21431F4B8();
        sub_2146DA388();
      }

      (*(v174 + 8))(v35, v36);
      return sub_2142F6D18(v176);
    case 0x1Cu:
      v141 = *(v21 + 11);
      *&v176[160] = *(v21 + 10);
      *&v176[176] = v141;
      *&v176[191] = *(v21 + 191);
      v142 = *(v21 + 7);
      *&v176[96] = *(v21 + 6);
      *&v176[112] = v142;
      v143 = *(v21 + 8);
      *&v176[144] = *(v21 + 9);
      *&v176[128] = v143;
      v144 = *(v21 + 3);
      *&v176[32] = *(v21 + 2);
      *&v176[48] = v144;
      v145 = *(v21 + 4);
      *&v176[80] = *(v21 + 5);
      *&v176[64] = v145;
      v146 = *v21;
      *&v176[16] = *(v21 + 1);
      *v176 = v146;
      LOBYTE(v175[0]) = 28;
      v177 = 0;
      sub_21431F314();
      v147 = v172;
      v148 = v173;
      v149 = v171;
      sub_2146DA388();
      if (!v149)
      {
        v175[10] = *&v176[160];
        v175[11] = *&v176[176];
        *(&v175[11] + 15) = *&v176[191];
        v175[6] = *&v176[96];
        v175[7] = *&v176[112];
        v175[8] = *&v176[128];
        v175[9] = *&v176[144];
        v175[2] = *&v176[32];
        v175[3] = *&v176[48];
        v175[4] = *&v176[64];
        v175[5] = *&v176[80];
        v175[0] = *v176;
        v175[1] = *&v176[16];
        v177 = 29;
        sub_21431F464();
        sub_2146DA388();
      }

      (*(v174 + 8))(v147, v148);
      return sub_2142F6E1C(v176);
    case 0x1Du:
      v150 = *(v21 + 3);
      *&v176[32] = *(v21 + 2);
      *&v176[48] = v150;
      *&v176[64] = *(v21 + 4);
      *&v176[80] = *(v21 + 40);
      v151 = *(v21 + 1);
      *v176 = *v21;
      *&v176[16] = v151;
      LOBYTE(v175[0]) = 29;
      v177 = 0;
      sub_21431F314();
      v152 = v172;
      v153 = v173;
      v154 = v171;
      sub_2146DA388();
      if (!v154)
      {
        v175[2] = *&v176[32];
        v175[3] = *&v176[48];
        v175[4] = *&v176[64];
        LOWORD(v175[5]) = *&v176[80];
        v175[0] = *v176;
        v175[1] = *&v176[16];
        v177 = 30;
        sub_21406B0F8();
        sub_2146DA388();
      }

      (*(v174 + 8))(v152, v153);
      return sub_2142F6FC8(v176);
    case 0x1Eu:
      v127 = *v21;
      v176[0] = 30;
      LOBYTE(v175[0]) = 0;
      sub_21431F314();
      v41 = v172;
      v42 = v173;
      v128 = v171;
      sub_2146DA388();
      if (v128)
      {
        goto LABEL_77;
      }

      v176[0] = v127;
      LOBYTE(v175[0]) = 31;
      sub_21431F410();
LABEL_76:
      sub_2146DA388();
LABEL_77:
      result = (*(v174 + 8))(v41, v42);
      break;
    case 0x1Fu:
      v82 = *(v21 + 7);
      *&v176[96] = *(v21 + 6);
      *&v176[112] = v82;
      v176[128] = v21[128];
      v83 = *(v21 + 3);
      *&v176[32] = *(v21 + 2);
      *&v176[48] = v83;
      v84 = *(v21 + 4);
      *&v176[80] = *(v21 + 5);
      *&v176[64] = v84;
      v85 = *v21;
      *&v176[16] = *(v21 + 1);
      *v176 = v85;
      LOBYTE(v175[0]) = 31;
      v177 = 0;
      sub_21431F314();
      v86 = v172;
      v87 = v173;
      v88 = v171;
      sub_2146DA388();
      if (!v88)
      {
        v175[6] = *&v176[96];
        v175[7] = *&v176[112];
        LOBYTE(v175[8]) = v176[128];
        v175[2] = *&v176[32];
        v175[3] = *&v176[48];
        v175[4] = *&v176[64];
        v175[5] = *&v176[80];
        v175[0] = *v176;
        v175[1] = *&v176[16];
        v177 = 32;
        sub_21431F3BC();
        sub_2146DA388();
      }

      (*(v174 + 8))(v86, v87);
      return sub_214301940(v176);
    case 0x20u:
      memcpy(v176, v21, 0x1A1uLL);
      LOBYTE(v175[0]) = 32;
      v177 = 0;
      sub_21431F314();
      v129 = v172;
      v130 = v173;
      v131 = v171;
      sub_2146DA388();
      if (!v131)
      {
        memcpy(v175, v176, 0x1A1uLL);
        v177 = 33;
        sub_21431F368();
        sub_2146DA388();
      }

      (*(v174 + 8))(v129, v130);
      return sub_214301A44(v176);
    default:
      sub_214328704(v21, v17, type metadata accessor for AccountsRepresentativeMessage);
      v176[0] = 0;
      LOBYTE(v175[0]) = 0;
      sub_21431F314();
      v28 = v172;
      v29 = v173;
      v30 = v171;
      sub_2146DA388();
      if (!v30)
      {
        v176[0] = 1;
        sub_214328930(&qword_27C9052D0, type metadata accessor for AccountsRepresentativeMessage);
        sub_2146DA388();
      }

      v31 = type metadata accessor for AccountsRepresentativeMessage;
LABEL_73:
      sub_21432887C(v17, v31);
      result = (*(v174 + 8))(v28, v29);
      break;
  }

  return result;
}

uint64_t sub_2142ADD5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v127 = type metadata accessor for PhotosSharedAlbumMessage(0);
  v3 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v130 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for IDSNearbySessionMessage(0);
  v5 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v129 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for IDSSampleMessage(0);
  v7 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v125 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for IDSProtobuf(0);
  v9 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v128 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for FMFShareInvitation();
  v11 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v122 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for AccountsRepresentativeMessage(0);
  v13 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v15 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C9D8, &qword_2146F6DD0);
  v132 = *(v16 - 8);
  v17 = *(v132 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v118 - v18;
  v20 = type metadata accessor for IDSClientMessageType(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = a1[3];
  v24 = a1[4];
  v136 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_21431F2C0();
  v26 = v133;
  sub_2146DAA08();
  if (v26)
  {
    v27 = v136;
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    v119 = v15;
    v28 = v128;
    v29 = v129;
    v133 = v23;
    v31 = v130;
    v30 = v131;
    v135 = 0;
    sub_21431FB48();
    sub_2146DA1C8();
    v118 = 0;
    switch(v134[0])
    {
      case 1:
        v135 = 2;
        sub_21407D9A0();
        v64 = v118;
        sub_2146DA1C8();
        if (v64)
        {
          goto LABEL_42;
        }

        goto LABEL_32;
      case 2:
        v135 = 3;
        sub_2142E8A38();
        v57 = v118;
        sub_2146DA1C8();
        v38 = (v132 + 8);
        if (v57)
        {
          goto LABEL_68;
        }

        v36 = v30;
        (*v38)(v19, v16);
        v34 = v133;
        memcpy(v133, v134, 0x6F3uLL);
        goto LABEL_75;
      case 3:
        v135 = 4;
        sub_21432022C();
        v60 = v118;
        sub_2146DA1C8();
        v38 = (v132 + 8);
        if (v60)
        {
          goto LABEL_68;
        }

        v36 = v30;
        (*v38)(v19, v16);
        v34 = v133;
        memcpy(v133, v134, 0x1D2uLL);
        goto LABEL_75;
      case 4:
        v135 = 5;
        sub_2143201D8();
        v43 = v118;
        sub_2146DA1C8();
        if (v43)
        {
          goto LABEL_42;
        }

        v36 = v30;
        (*(v132 + 8))(v19, v16);
        v34 = v133;
        *v133 = *v134;
        goto LABEL_75;
      case 5:
        v135 = 6;
        sub_214320184();
        v72 = v118;
        sub_2146DA1C8();
        v38 = (v132 + 8);
        if (v72)
        {
          goto LABEL_68;
        }

        v36 = v30;
        (*v38)(v19, v16);
        v73 = *&v134[48];
        v34 = v133;
        *(v133 + 2) = *&v134[32];
        *(v34 + 3) = v73;
        v74 = *&v134[80];
        *(v34 + 4) = *&v134[64];
        *(v34 + 5) = v74;
        v75 = *&v134[16];
        *v34 = *v134;
        *(v34 + 1) = v75;
        goto LABEL_75;
      case 6:
        v135 = 7;
        sub_214320130();
        v82 = v118;
        sub_2146DA1C8();
        v38 = (v132 + 8);
        if (v82)
        {
          goto LABEL_68;
        }

        v36 = v30;
        (*v38)(v19, v16);
        v83 = *&v134[144];
        v34 = v133;
        *(v133 + 8) = *&v134[128];
        *(v34 + 9) = v83;
        v84 = *&v134[176];
        *(v34 + 10) = *&v134[160];
        *(v34 + 11) = v84;
        v85 = *&v134[80];
        *(v34 + 4) = *&v134[64];
        *(v34 + 5) = v85;
        v86 = *&v134[112];
        *(v34 + 6) = *&v134[96];
        *(v34 + 7) = v86;
        v87 = *&v134[16];
        *v34 = *v134;
        *(v34 + 1) = v87;
        v88 = *&v134[48];
        *(v34 + 2) = *&v134[32];
        *(v34 + 3) = v88;
        goto LABEL_75;
      case 7:
        v135 = 8;
        sub_2143200DC();
        v61 = v118;
        sub_2146DA1C8();
        v38 = (v132 + 8);
        if (v61)
        {
          goto LABEL_68;
        }

        v36 = v30;
        (*v38)(v19, v16);
        v62 = *&v134[48];
        v34 = v133;
        *(v133 + 2) = *&v134[32];
        *(v34 + 3) = v62;
        *(v34 + 4) = *&v134[64];
        *(v34 + 73) = *&v134[73];
        v63 = *&v134[16];
        *v34 = *v134;
        *(v34 + 1) = v63;
        goto LABEL_75;
      case 8:
        v134[0] = 9;
        sub_214328930(&qword_27C90CA88, type metadata accessor for FMFShareInvitation);
        v96 = v122;
        v97 = v118;
        sub_2146DA1C8();
        if (v97)
        {
          goto LABEL_42;
        }

        v36 = v30;
        (*(v132 + 8))(v19, v16);
        v34 = v133;
        sub_214328704(v96, v133, type metadata accessor for FMFShareInvitation);
        goto LABEL_75;
      case 9:
        v135 = 10;
        sub_214320088();
        v45 = v118;
        sub_2146DA1C8();
        v38 = (v132 + 8);
        if (v45)
        {
          goto LABEL_68;
        }

        v36 = v30;
        (*v38)(v19, v16);
        v34 = v133;
        memcpy(v133, v134, 0xCF3uLL);
        goto LABEL_75;
      case 0xA:
        v130 = v20;
        v135 = 11;
        sub_214320034();
        v46 = v16;
        v90 = v118;
        sub_2146DA1C8();
        v48 = (v132 + 8);
        if (v90)
        {
          goto LABEL_64;
        }

        v36 = v30;
        (*v48)(v19, v16);
        v91 = *&v134[144];
        v34 = v133;
        *(v133 + 8) = *&v134[128];
        *(v34 + 9) = v91;
        *(v34 + 155) = *&v134[155];
        v92 = *&v134[80];
        *(v34 + 4) = *&v134[64];
        *(v34 + 5) = v92;
        v93 = *&v134[112];
        *(v34 + 6) = *&v134[96];
        *(v34 + 7) = v93;
        v94 = *&v134[16];
        *v34 = *v134;
        *(v34 + 1) = v94;
        v95 = *&v134[48];
        *(v34 + 2) = *&v134[32];
        *(v34 + 3) = v95;
        goto LABEL_75;
      case 0xB:
        v135 = 12;
        sub_21431FFE0();
        v42 = v118;
        sub_2146DA1C8();
        v38 = (v132 + 8);
        if (v42)
        {
          goto LABEL_68;
        }

        v36 = v30;
        (*v38)(v19, v16);
        v34 = v133;
        memcpy(v133, v134, 0x19BuLL);
        goto LABEL_75;
      case 0xC:
        v135 = 13;
        sub_21431FF8C();
        v44 = v118;
        sub_2146DA1C8();
        v38 = (v132 + 8);
        if (v44)
        {
          goto LABEL_68;
        }

        v36 = v30;
        (*v38)(v19, v16);
        v34 = v133;
        memcpy(v133, v134, 0xC89uLL);
        goto LABEL_75;
      case 0xD:
        v135 = 14;
        sub_21431FF38();
        v77 = v118;
        sub_2146DA1C8();
        v38 = (v132 + 8);
        if (v77)
        {
          goto LABEL_68;
        }

        v36 = v30;
        (*v38)(v19, v16);
        v78 = *&v134[112];
        v34 = v133;
        *(v133 + 6) = *&v134[96];
        *(v34 + 7) = v78;
        *(v34 + 8) = *&v134[128];
        *(v34 + 144) = v134[144];
        v79 = *&v134[48];
        *(v34 + 2) = *&v134[32];
        *(v34 + 3) = v79;
        v80 = *&v134[80];
        *(v34 + 4) = *&v134[64];
        *(v34 + 5) = v80;
        v81 = *&v134[16];
        *v34 = *v134;
        *(v34 + 1) = v81;
        goto LABEL_75;
      case 0xE:
        v130 = v20;
        v134[0] = 15;
        v41 = sub_2146DA1A8();
        v36 = v30;
        (*(v132 + 8))(v19, v16);
        v34 = v133;
        *v133 = v41;
        goto LABEL_75;
      case 0xF:
        v134[0] = 16;
        sub_214328930(&qword_27C90CA58, type metadata accessor for IDSProtobuf);
        v58 = v28;
        v59 = v118;
        sub_2146DA1C8();
        if (v59)
        {
          goto LABEL_42;
        }

        v36 = v30;
        (*(v132 + 8))(v19, v16);
        v34 = v133;
        sub_214328704(v58, v133, type metadata accessor for IDSProtobuf);
        goto LABEL_75;
      case 0x10:
        v134[0] = 17;
        sub_214328930(&qword_27C90CA50, type metadata accessor for IDSSampleMessage);
        v39 = v125;
        v40 = v118;
        sub_2146DA1C8();
        if (v40)
        {
          goto LABEL_42;
        }

        v36 = v30;
        (*(v132 + 8))(v19, v16);
        v34 = v133;
        sub_214328704(v39, v133, type metadata accessor for IDSSampleMessage);
        goto LABEL_75;
      case 0x11:
        v135 = 18;
        sub_21431FEE4();
        v70 = v118;
        sub_2146DA1C8();
        v38 = (v132 + 8);
        if (v70)
        {
          goto LABEL_68;
        }

        v36 = v30;
        (*v38)(v19, v16);
        v34 = v133;
        memcpy(v133, v134, 0x679uLL);
        goto LABEL_75;
      case 0x12:
        v135 = 19;
        sub_2140527E4();
        v89 = v118;
        sub_2146DA1C8();
        if (!v89)
        {
          goto LABEL_32;
        }

        goto LABEL_42;
      case 0x13:
        v135 = 20;
        sub_21431FE90();
        v101 = v118;
        sub_2146DA1C8();
        v38 = (v132 + 8);
        if (v101)
        {
          goto LABEL_68;
        }

        v36 = v30;
        (*v38)(v19, v16);
        v34 = v133;
        memcpy(v133, v134, 0x261uLL);
        goto LABEL_75;
      case 0x14:
        v134[0] = 21;
        sub_214328930(&qword_27C90CA38, type metadata accessor for IDSNearbySessionMessage);
        v71 = v118;
        sub_2146DA1C8();
        if (v71)
        {
          goto LABEL_42;
        }

        v36 = v30;
        (*(v132 + 8))(v19, v16);
        v34 = v133;
        sub_214328704(v29, v133, type metadata accessor for IDSNearbySessionMessage);
        goto LABEL_75;
      case 0x15:
        v134[0] = 22;
        sub_214328930(&qword_27C90CA30, type metadata accessor for PhotosSharedAlbumMessage);
        v76 = v118;
        sub_2146DA1C8();
        if (v76)
        {
          goto LABEL_42;
        }

        v36 = v30;
        (*(v132 + 8))(v19, v16);
        v34 = v133;
        sub_214328704(v31, v133, type metadata accessor for PhotosSharedAlbumMessage);
        goto LABEL_75;
      case 0x16:
        v135 = 23;
        sub_21431FE3C();
        v100 = v118;
        sub_2146DA1C8();
        v38 = (v132 + 8);
        if (v100)
        {
          goto LABEL_68;
        }

        v36 = v30;
        (*v38)(v19, v16);
        v34 = v133;
        memcpy(v133, v134, 0x179uLL);
        goto LABEL_75;
      case 0x17:
        v135 = 24;
        sub_214058DA0();
        v102 = v118;
        sub_2146DA1C8();
        v38 = (v132 + 8);
        if (v102)
        {
          goto LABEL_68;
        }

        v36 = v30;
        (*v38)(v19, v16);
        v34 = v133;
        memcpy(v133, v134, 0x219uLL);
        goto LABEL_75;
      case 0x18:
        v135 = 25;
        sub_21431FDE8();
        v56 = v118;
        sub_2146DA1C8();
        v38 = (v132 + 8);
        if (v56)
        {
          goto LABEL_68;
        }

        v36 = v30;
        (*v38)(v19, v16);
        v34 = v133;
        memcpy(v133, v134, 0x151uLL);
        goto LABEL_75;
      case 0x19:
        v130 = v20;
        v135 = 26;
        sub_21431FD94();
        v46 = v16;
        v47 = v118;
        sub_2146DA1C8();
        v48 = (v132 + 8);
        if (v47)
        {
          goto LABEL_64;
        }

        v36 = v30;
        (*v48)(v19, v16);
        v49 = *&v134[208];
        v34 = v133;
        *(v133 + 12) = *&v134[192];
        *(v34 + 13) = v49;
        *(v34 + 218) = *&v134[218];
        v50 = *&v134[144];
        *(v34 + 8) = *&v134[128];
        *(v34 + 9) = v50;
        v51 = *&v134[176];
        *(v34 + 10) = *&v134[160];
        *(v34 + 11) = v51;
        v52 = *&v134[80];
        *(v34 + 4) = *&v134[64];
        *(v34 + 5) = v52;
        v53 = *&v134[112];
        *(v34 + 6) = *&v134[96];
        *(v34 + 7) = v53;
        v54 = *&v134[16];
        *v34 = *v134;
        *(v34 + 1) = v54;
        v55 = *&v134[48];
        *(v34 + 2) = *&v134[32];
        *(v34 + 3) = v55;
        goto LABEL_75;
      case 0x1A:
        v135 = 27;
        sub_21431FD40();
        v107 = v118;
        sub_2146DA1C8();
        v38 = (v132 + 8);
        if (v107)
        {
          goto LABEL_68;
        }

        goto LABEL_74;
      case 0x1B:
        v135 = 28;
        sub_21431FCEC();
        v37 = v118;
        sub_2146DA1C8();
        v38 = (v132 + 8);
        if (v37)
        {
          goto LABEL_68;
        }

LABEL_74:
        v36 = v30;
        (*v38)(v19, v16);
        v115 = *&v134[80];
        v34 = v133;
        *(v133 + 4) = *&v134[64];
        *(v34 + 5) = v115;
        v34[12] = *&v134[96];
        v116 = *&v134[16];
        *v34 = *v134;
        *(v34 + 1) = v116;
        v117 = *&v134[48];
        *(v34 + 2) = *&v134[32];
        *(v34 + 3) = v117;
        goto LABEL_75;
      case 0x1C:
        v130 = v20;
        v135 = 29;
        sub_21431FC98();
        v46 = v16;
        v103 = v118;
        sub_2146DA1C8();
        v48 = (v132 + 8);
        if (v103)
        {
LABEL_64:
          (*v48)(v19, v46);
          goto LABEL_69;
        }

        v36 = v30;
        (*v48)(v19, v16);
        v109 = *&v134[176];
        v34 = v133;
        *(v133 + 10) = *&v134[160];
        *(v34 + 11) = v109;
        *(v34 + 191) = *&v134[191];
        v110 = *&v134[112];
        *(v34 + 6) = *&v134[96];
        *(v34 + 7) = v110;
        v111 = *&v134[144];
        *(v34 + 8) = *&v134[128];
        *(v34 + 9) = v111;
        v112 = *&v134[48];
        *(v34 + 2) = *&v134[32];
        *(v34 + 3) = v112;
        v113 = *&v134[80];
        *(v34 + 4) = *&v134[64];
        *(v34 + 5) = v113;
        v114 = *&v134[16];
        *v34 = *v134;
        *(v34 + 1) = v114;
        goto LABEL_75;
      case 0x1D:
        v135 = 30;
        sub_21406B0A4();
        v104 = v118;
        sub_2146DA1C8();
        v38 = (v132 + 8);
        if (v104)
        {
          goto LABEL_68;
        }

        v36 = v30;
        (*v38)(v19, v16);
        v105 = *&v134[48];
        v34 = v133;
        *(v133 + 2) = *&v134[32];
        *(v34 + 3) = v105;
        *(v34 + 4) = *&v134[64];
        *(v34 + 40) = *&v134[80];
        v106 = *&v134[16];
        *v34 = *v134;
        *(v34 + 1) = v106;
        goto LABEL_75;
      case 0x1E:
        v135 = 31;
        sub_21431FC44();
        v98 = v118;
        sub_2146DA1C8();
        if (v98)
        {
          goto LABEL_42;
        }

LABEL_32:
        v36 = v30;
        (*(v132 + 8))(v19, v16);
        v34 = v133;
        *v133 = v134[0];
        goto LABEL_75;
      case 0x1F:
        v135 = 32;
        sub_21431FBF0();
        v65 = v118;
        sub_2146DA1C8();
        v38 = (v132 + 8);
        if (v65)
        {
          goto LABEL_68;
        }

        v36 = v30;
        (*v38)(v19, v16);
        v66 = *&v134[112];
        v34 = v133;
        *(v133 + 6) = *&v134[96];
        *(v34 + 7) = v66;
        *(v34 + 128) = v134[128];
        v67 = *&v134[48];
        *(v34 + 2) = *&v134[32];
        *(v34 + 3) = v67;
        v68 = *&v134[80];
        *(v34 + 4) = *&v134[64];
        *(v34 + 5) = v68;
        v69 = *&v134[16];
        *v34 = *v134;
        *(v34 + 1) = v69;
        goto LABEL_75;
      case 0x20:
        v135 = 33;
        sub_21431FB9C();
        v99 = v118;
        sub_2146DA1C8();
        v38 = (v132 + 8);
        if (v99)
        {
LABEL_68:
          (*v38)(v19, v16);
          goto LABEL_69;
        }

        v36 = v30;
        (*v38)(v19, v16);
        v34 = v133;
        memcpy(v133, v134, 0x1A1uLL);
LABEL_75:
        swift_storeEnumTagMultiPayload();
        v35 = v136;
        goto LABEL_76;
      default:
        v134[0] = 1;
        sub_214328930(&qword_27C9052C8, type metadata accessor for AccountsRepresentativeMessage);
        v32 = v119;
        v33 = v118;
        sub_2146DA1C8();
        if (v33)
        {
LABEL_42:
          (*(v132 + 8))(v19, v16);
LABEL_69:
          v27 = v136;
          return __swift_destroy_boxed_opaque_existential_1(v27);
        }

        (*(v132 + 8))(v19, v16);
        v34 = v133;
        sub_214328704(v32, v133, type metadata accessor for AccountsRepresentativeMessage);
        swift_storeEnumTagMultiPayload();
        v35 = v136;
        v36 = v30;
LABEL_76:
        sub_214328704(v34, v36, type metadata accessor for IDSClientMessageType);
        result = __swift_destroy_boxed_opaque_existential_1(v35);
        break;
    }
  }

  return result;
}

unint64_t sub_2142AF620()
{
  v1 = 0xD000000000000019;
  v2 = *v0;
  v3 = 0xD000000000000022;
  if (v2 != 5)
  {
    v3 = 0xD000000000000020;
  }

  v4 = 0xD00000000000001CLL;
  if (v2 != 3)
  {
    v4 = 0xD000000000000019;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_2142AF6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214387480(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142AF708(uint64_t a1)
{
  v2 = sub_214320280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142AF744(uint64_t a1)
{
  v2 = sub_214320280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142AF794()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142AF870@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21438776C();
  *a2 = result;
  return result;
}

void sub_2142AF8A0(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000013;
  v3 = *v1;
  v4 = "statusKitInvitation";
  v5 = "idsKCSharingInvitation";
  v6 = "idsHealthInvitation";
  v7 = 0xD00000000000001CLL;
  if (v3 != 4)
  {
    v7 = 0xD00000000000001ALL;
    v6 = "idsActivitySharingInvitation";
  }

  if (v3 == 3)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v5 = v6;
  }

  v8 = "idsSampleInvitation";
  v9 = 0xD000000000000016;
  if (v3 == 1)
  {
    v9 = 0xD000000000000014;
  }

  else
  {
    v8 = "idsHomekitInvitation";
  }

  if (*v1)
  {
    v2 = v9;
    v4 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v2 = v7;
    v10 = v5;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

uint64_t sub_2142AF9F8(void *a1)
{
  v39 = type metadata accessor for IDSActivitySharingInvitation(0);
  v2 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v44 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for IDSHealthInvitation(0);
  v4 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for IDSKCSharingInvitation();
  v6 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v42 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for IDSHomeKitInvitation(0);
  v8 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for IDSSampleInvitation();
  v10 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v40 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IDSDictionaryContext(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CAB8, &qword_2146F6DD8);
  v46 = *(v16 - 8);
  v17 = *(v46 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214320280();
  sub_2146DAA28();
  sub_2143287C0(v47, v15, type metadata accessor for IDSDictionaryContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v27 = v40;
      sub_214328704(v15, v40, type metadata accessor for IDSSampleInvitation);
      v49[0] = 0;
      v48[0] = 0;
      sub_2143202D4();
      v22 = v19;
      v28 = v45;
      sub_2146DA388();
      if (!v28)
      {
        v49[0] = 1;
        sub_214328930(&qword_27C90CAF0, type metadata accessor for IDSSampleInvitation);
        sub_2146DA388();
      }

      v29 = type metadata accessor for IDSSampleInvitation;
      v30 = v27;
      goto LABEL_22;
    }

    v22 = v19;
    if (EnumCaseMultiPayload == 1)
    {
      v23 = v41;
      sub_214328704(v15, v41, type metadata accessor for IDSHomeKitInvitation);
      v49[0] = 1;
      v48[0] = 0;
      sub_2143202D4();
      v24 = v45;
      sub_2146DA388();
      if (!v24)
      {
        v49[0] = 2;
        sub_214328930(&qword_27C90CAE8, type metadata accessor for IDSHomeKitInvitation);
        sub_2146DA388();
      }

      v25 = type metadata accessor for IDSHomeKitInvitation;
    }

    else
    {
      v23 = v42;
      sub_214328704(v15, v42, type metadata accessor for IDSKCSharingInvitation);
      v49[0] = 2;
      v48[0] = 0;
      sub_2143202D4();
      v32 = v45;
      sub_2146DA388();
      if (!v32)
      {
        v49[0] = 3;
        sub_214328930(&qword_27C90CAE0, type metadata accessor for IDSKCSharingInvitation);
        sub_2146DA388();
      }

      v25 = type metadata accessor for IDSKCSharingInvitation;
    }

LABEL_21:
    v29 = v25;
    v30 = v23;
LABEL_22:
    sub_21432887C(v30, v29);
    return (*(v46 + 8))(v22, v16);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v23 = v43;
    sub_214328704(v15, v43, type metadata accessor for IDSHealthInvitation);
    v49[0] = 3;
    v48[0] = 0;
    sub_2143202D4();
    v22 = v19;
    v31 = v45;
    sub_2146DA388();
    if (!v31)
    {
      v49[0] = 4;
      sub_214328930(&qword_27C90CAD8, type metadata accessor for IDSHealthInvitation);
      sub_2146DA388();
    }

    v25 = type metadata accessor for IDSHealthInvitation;
    goto LABEL_21;
  }

  v22 = v19;
  if (EnumCaseMultiPayload == 4)
  {
    v23 = v44;
    sub_214328704(v15, v44, type metadata accessor for IDSActivitySharingInvitation);
    v49[0] = 4;
    v48[0] = 0;
    sub_2143202D4();
    v26 = v45;
    sub_2146DA388();
    if (!v26)
    {
      v49[0] = 5;
      sub_214328930(&qword_27C90CAD0, type metadata accessor for IDSActivitySharingInvitation);
      sub_2146DA388();
    }

    v25 = type metadata accessor for IDSActivitySharingInvitation;
    goto LABEL_21;
  }

  memcpy(v49, v15, 0x151uLL);
  v48[0] = 5;
  v50 = 0;
  sub_2143202D4();
  v34 = v45;
  sub_2146DA388();
  if (!v34)
  {
    memcpy(v48, v49, sizeof(v48));
    v50 = 6;
    sub_21431F5B4();
    sub_2146DA388();
  }

  (*(v46 + 8))(v19, v16);
  return sub_21404C67C(v49);
}

uint64_t sub_2142B021C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v40 = type metadata accessor for IDSActivitySharingInvitation(0);
  v3 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for IDSHealthInvitation(0);
  v5 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for IDSKCSharingInvitation();
  v7 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for IDSHomeKitInvitation(0);
  v9 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for IDSSampleInvitation();
  v11 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CAF8, &qword_2146F6DE0);
  v42 = *(v14 - 8);
  v15 = *(v42 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  v18 = type metadata accessor for IDSDictionaryContext(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v23 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_214320280();
  v24 = v44;
  sub_2146DAA08();
  if (!v24)
  {
    v25 = v41;
    v44 = v18;
    v26 = v43;
    v47 = 0;
    sub_214320328();
    sub_2146DA1C8();
    if (v46[0] <= 2u)
    {
      if (v46[0])
      {
        if (v46[0] == 1)
        {
          v46[0] = 2;
          sub_214328930(&qword_27C90CB20, type metadata accessor for IDSHomeKitInvitation);
          v28 = v36;
          sub_2146DA1C8();
          (*(v42 + 8))(v17, v14);
          sub_214328704(v28, v21, type metadata accessor for IDSHomeKitInvitation);
        }

        else
        {
          v46[0] = 3;
          sub_214328930(&qword_27C90CB18, type metadata accessor for IDSKCSharingInvitation);
          v31 = v34;
          sub_2146DA1C8();
          (*(v42 + 8))(v17, v14);
          sub_214328704(v31, v21, type metadata accessor for IDSKCSharingInvitation);
        }
      }

      else
      {
        v46[0] = 1;
        sub_214328930(&qword_27C90CB28, type metadata accessor for IDSSampleInvitation);
        sub_2146DA1C8();
        (*(v42 + 8))(v17, v14);
        sub_214328704(v13, v21, type metadata accessor for IDSSampleInvitation);
      }

      goto LABEL_16;
    }

    if (v46[0] == 3)
    {
      v46[0] = 4;
      sub_214328930(&qword_27C90CB10, type metadata accessor for IDSHealthInvitation);
      sub_2146DA1C8();
      (*(v42 + 8))(v17, v14);
      sub_214328704(v25, v21, type metadata accessor for IDSHealthInvitation);
    }

    else
    {
      v29 = v42;
      if (v46[0] != 4)
      {
        v47 = 6;
        sub_21431FDE8();
        sub_2146DA1C8();
        (*(v29 + 8))(v17, v14);
        memcpy(v21, v46, 0x151uLL);
LABEL_16:
        swift_storeEnumTagMultiPayload();
        goto LABEL_17;
      }

      v46[0] = 5;
      sub_214328930(&qword_27C90CB08, type metadata accessor for IDSActivitySharingInvitation);
      v30 = v39;
      sub_2146DA1C8();
      (*(v29 + 8))(v17, v14);
      sub_214328704(v30, v21, type metadata accessor for IDSActivitySharingInvitation);
    }

    swift_storeEnumTagMultiPayload();
    v26 = v43;
LABEL_17:
    sub_214328704(v21, v26, type metadata accessor for IDSDictionaryContext);
  }

  return __swift_destroy_boxed_opaque_existential_1(v45);
}

unint64_t sub_2142B0A24()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t sub_2142B0A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000018 && 0x8000000214797EA0 == a2;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000214797EC0 == a2)
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

uint64_t sub_2142B0B44(uint64_t a1)
{
  v2 = sub_21432037C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B0B80(uint64_t a1)
{
  v2 = sub_21432037C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B0CEC(void *a1)
{
  v2 = v1;
  v19[0] = type metadata accessor for IDSDictionaryContext(0);
  v4 = *(*(v19[0] - 8) + 64);
  MEMORY[0x28223BE20](v19[0]);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IDSInvitationContextType(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CB30, &qword_2146F6DE8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432037C();
  sub_2146DAA28();
  sub_2143287C0(v2, v10, type metadata accessor for IDSInvitationContextType);
  sub_214328704(v10, v6, type metadata accessor for IDSDictionaryContext);
  v21 = 0;
  sub_2143203D0();
  v17 = v19[1];
  sub_2146DA388();
  if (!v17)
  {
    v20 = 1;
    sub_214328930(&qword_27C905088, type metadata accessor for IDSDictionaryContext);
    sub_2146DA388();
  }

  sub_21432887C(v6, type metadata accessor for IDSDictionaryContext);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_2142B0F8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for IDSDictionaryContext(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CB48, &qword_2146F6DF0);
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432037C();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v19 = 0;
    sub_214320424();
    v14 = v17;
    sub_2146DA1C8();
    v18 = 1;
    sub_214328930(&qword_27C905080, type metadata accessor for IDSDictionaryContext);
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v14);
    sub_214328704(v7, v16, type metadata accessor for IDSDictionaryContext);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142B11F0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000021;
    v6 = 0xD000000000000032;
    if (a1 == 8)
    {
      v6 = 0xD00000000000002CLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000037;
    if (a1 == 5)
    {
      v7 = 0xD000000000000024;
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
    v1 = 0xD000000000000032;
    v2 = 0xD000000000000033;
    if (a1 != 3)
    {
      v2 = 0xD00000000000002CLL;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001BLL;
    if (!a1)
    {
      v3 = 0xD00000000000001CLL;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_2142B130C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0xD00000000000002DLL;
    if (a1 != 2)
    {
      v5 = 0xD000000000000026;
    }

    v6 = 0xD00000000000002CLL;
    if (!a1)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 <= 1u)
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
    v1 = 0xD00000000000001BLL;
    v2 = 0xD00000000000002CLL;
    if (a1 == 7)
    {
      v2 = 0xD000000000000026;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000031;
    if (a1 == 4)
    {
      v3 = 0xD00000000000001ELL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2142B1444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143877B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142B146C(uint64_t a1)
{
  v2 = sub_214320478();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B14A8(uint64_t a1)
{
  v2 = sub_214320478();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B1528@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214387B2C();
  *a2 = result;
  return result;
}

unint64_t sub_2142B1558@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2142B130C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2142B1634(void *a1)
{
  v66 = type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage();
  v2 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IDSClientProtobufMessageType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CB58, &qword_2146F6DF8);
  v67 = *(v71 - 8);
  v12 = *(v67 + 64);
  MEMORY[0x28223BE20](v71);
  v14 = &v64 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214320478();
  v70 = v14;
  sub_2146DAA28();
  sub_2143287C0(v68, v11, type metadata accessor for IDSClientProtobufMessageType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v24 = v65;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_214328704(v11, v65, type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage);
        LOBYTE(v79) = 2;
        LOBYTE(v72) = 0;
        sub_2143204CC();
        v30 = v70;
        v31 = v71;
        v32 = v69;
        sub_2146DA388();
        if (!v32)
        {
          LOBYTE(v79) = 3;
          sub_214328930(&qword_27C904EE0, type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage);
          sub_2146DA388();
        }

        sub_21432887C(v24, type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage);
        return (*(v67 + 8))(v30, v31);
      }

      else
      {
        v49 = *(v11 + 5);
        v83 = *(v11 + 4);
        v84[0] = v49;
        v84[1] = *(v11 + 6);
        v85 = *(v11 + 14);
        v50 = *(v11 + 1);
        v79 = *v11;
        v80 = v50;
        v51 = *(v11 + 3);
        v81 = *(v11 + 2);
        v82 = v51;
        LOBYTE(v72) = 3;
        v86 = 0;
        sub_2143204CC();
        v52 = v70;
        v53 = v71;
        v54 = v69;
        sub_2146DA388();
        if (!v54)
        {
          v76 = v83;
          v77[0] = v84[0];
          v77[1] = v84[1];
          v78 = v85;
          v72 = v79;
          v73 = v80;
          v74 = v81;
          v75 = v82;
          v86 = 4;
          sub_21432061C();
          sub_2146DA388();
        }

        (*(v67 + 8))(v52, v53);
        return sub_21404B8A0(&v79);
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        sub_214328704(v11, v7, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
        LOBYTE(v79) = 1;
        LOBYTE(v72) = 0;
        sub_2143204CC();
        v46 = v70;
        v47 = v71;
        v48 = v69;
        sub_2146DA388();
        if (!v48)
        {
          LOBYTE(v79) = 2;
          sub_214328930(&qword_27C90CBA0, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
          sub_2146DA388();
        }

        sub_21432887C(v7, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
        return (*(v67 + 8))(v46, v47);
      }

      v26 = *v11;
      v25 = *(v11 + 1);
      LOBYTE(v79) = 0;
      LOBYTE(v72) = 0;
      sub_2143204CC();
      v27 = v70;
      v28 = v71;
      v29 = v69;
      sub_2146DA388();
      if (!v29)
      {
        *&v79 = v26;
        *(&v79 + 1) = v25;
        LOBYTE(v72) = 1;
        sub_21404B9BC();
        sub_2146DA388();
      }

      (*(v67 + 8))(v27, v28);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v17 = *v11;
          v18 = v11[4];
          v19 = v11[5];
          LOBYTE(v79) = 7;
          LOBYTE(v72) = 0;
          sub_2143204CC();
          v20 = v70;
          v21 = v71;
          v22 = v69;
          sub_2146DA388();
          if (!v22)
          {
            LODWORD(v79) = v17;
            BYTE4(v79) = v18;
            BYTE5(v79) = v19;
            LOBYTE(v72) = 8;
            sub_214320574();
            sub_2146DA388();
          }

          return (*(v67 + 8))(v20, v21);
        }

        v55 = *v11;
        v56 = v11[8];
        LOBYTE(v79) = 8;
        LOBYTE(v72) = 0;
        sub_2143204CC();
        v46 = v70;
        v47 = v71;
        v57 = v69;
        sub_2146DA388();
        if (!v57)
        {
          *&v79 = v55;
          BYTE8(v79) = v56;
          LOBYTE(v72) = 9;
          sub_214320520();
          sub_2146DA388();
        }

        return (*(v67 + 8))(v46, v47);
      }

      v38 = *(v11 + 5);
      v83 = *(v11 + 4);
      v84[0] = v38;
      *(v84 + 10) = *(v11 + 90);
      v39 = *(v11 + 1);
      v79 = *v11;
      v80 = v39;
      v40 = *(v11 + 3);
      v81 = *(v11 + 2);
      v82 = v40;
      LOBYTE(v72) = 6;
      v86 = 0;
      sub_2143204CC();
      v41 = v70;
      v42 = v71;
      v43 = v69;
      sub_2146DA388();
      if (!v43)
      {
        v76 = v83;
        v77[0] = v84[0];
        *(v77 + 10) = *(v84 + 10);
        v72 = v79;
        v73 = v80;
        v74 = v81;
        v75 = v82;
        v86 = 7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041F8, &unk_2146F6E00);
        sub_21432076C(&qword_27C90CB80, &qword_27C9041F8, &unk_2146F6E00);
        sub_2146DA388();
      }

      (*(v67 + 8))(v41, v42);
      v44 = &qword_27C9041F8;
      v45 = &unk_2146F6E00;
      return sub_213FB2DF4(&v79, v44, v45);
    }

    if (EnumCaseMultiPayload != 4)
    {
      v58 = *(v11 + 5);
      v83 = *(v11 + 4);
      v84[0] = v58;
      *(v84 + 10) = *(v11 + 90);
      v59 = *(v11 + 1);
      v79 = *v11;
      v80 = v59;
      v60 = *(v11 + 3);
      v81 = *(v11 + 2);
      v82 = v60;
      LOBYTE(v72) = 5;
      v86 = 0;
      sub_2143204CC();
      v61 = v70;
      v62 = v71;
      v63 = v69;
      sub_2146DA388();
      if (!v63)
      {
        v76 = v83;
        v77[0] = v84[0];
        *(v77 + 10) = *(v84 + 10);
        v72 = v79;
        v73 = v80;
        v74 = v81;
        v75 = v82;
        v86 = 6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904200, &qword_2146EAB58);
        sub_21432076C(&qword_27C90CB88, &qword_27C904200, &qword_2146EAB58);
        sub_2146DA388();
      }

      (*(v67 + 8))(v61, v62);
      v44 = &qword_27C904200;
      v45 = &qword_2146EAB58;
      return sub_213FB2DF4(&v79, v44, v45);
    }

    v33 = *(v11 + 3);
    v81 = *(v11 + 2);
    v82 = v33;
    v83 = *(v11 + 4);
    LOBYTE(v84[0]) = v11[80];
    v34 = *(v11 + 1);
    v79 = *v11;
    v80 = v34;
    LOBYTE(v72) = 4;
    v86 = 0;
    sub_2143204CC();
    v35 = v70;
    v36 = v71;
    v37 = v69;
    sub_2146DA388();
    if (!v37)
    {
      v74 = v81;
      v75 = v82;
      v76 = v83;
      LOBYTE(v77[0]) = v84[0];
      v72 = v79;
      v73 = v80;
      v86 = 5;
      sub_2143205C8();
      sub_2146DA388();
    }

    (*(v67 + 8))(v35, v36);
    return sub_21404B84C(&v79);
  }
}

uint64_t sub_2142B2040@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v42 = type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage();
  v3 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v41 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CBA8, &qword_2146F6E10);
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v39 - v11;
  v13 = type metadata accessor for IDSClientProtobufMessageType(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_214320478();
  v19 = v44;
  sub_2146DAA08();
  if (!v19)
  {
    v39[1] = v5;
    v20 = v41;
    v44 = v16;
    v53 = 0;
    sub_214320670();
    sub_2146DA1C8();
    if (v46 <= 3u)
    {
      if (v46 <= 1u)
      {
        if (v46)
        {
          LOBYTE(v46) = 2;
          sub_214328930(&qword_27C90CBE8, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
          sub_2146DA1C8();
          (*(v43 + 8))(v12, v9);
          v23 = v40;
          v25 = v44;
          sub_214328704(v8, v44, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
        }

        else
        {
          v53 = 1;
          sub_21432085C();
          sub_2146DA1C8();
          (*(v43 + 8))(v12, v9);
          v23 = v40;
          v25 = v44;
          *v44 = v46;
        }

        goto LABEL_22;
      }

      if (v46 == 2)
      {
        LOBYTE(v46) = 3;
        sub_214328930(&qword_27C904ED8, type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage);
        sub_2146DA1C8();
        (*(v43 + 8))(v12, v9);
        v25 = v44;
        sub_214328704(v20, v44, type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage);
        goto LABEL_23;
      }

      v53 = 4;
      sub_214320808();
      sub_2146DA1C8();
      (*(v43 + 8))(v12, v9);
      v23 = v40;
      v29 = *v51;
      v25 = v44;
      v44[4] = v50;
      v25[5] = v29;
      v25[6] = *&v51[16];
      *(v25 + 14) = v52;
      v30 = v47;
      *v25 = v46;
      v25[1] = v30;
      v31 = v49;
      v25[2] = v48;
      v25[3] = v31;
    }

    else
    {
      if (v46 > 5u)
      {
        if (v46 != 6)
        {
          if (v46 == 7)
          {
            v53 = 8;
            sub_214320718();
            sub_2146DA1C8();
            v23 = v40;
            (*(v43 + 8))(v12, v9);
            v24 = WORD2(v46);
            v25 = v44;
            *v44 = v46;
            *(v25 + 2) = v24;
          }

          else
          {
            v53 = 9;
            sub_2143206C4();
            sub_2146DA1C8();
            v23 = v40;
            (*(v43 + 8))(v12, v9);
            v32 = BYTE8(v46);
            v25 = v44;
            *v44 = v46;
            *(v25 + 8) = v32;
          }

          goto LABEL_22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041F8, &unk_2146F6E00);
        v53 = 7;
        sub_21432076C(&qword_27C90CBC8, &qword_27C9041F8, &unk_2146F6E00);
        sub_2146DA1C8();
        (*(v43 + 8))(v12, v9);
        v26 = *v51;
        v25 = v44;
        v44[4] = v50;
        v25[5] = v26;
        *(v25 + 90) = *&v51[10];
        v27 = v47;
        *v25 = v46;
        v25[1] = v27;
        v28 = v49;
        v25[2] = v48;
        v25[3] = v28;
LABEL_23:
        swift_storeEnumTagMultiPayload();
        v35 = v45;
        v23 = v40;
        goto LABEL_24;
      }

      if (v46 != 4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904200, &qword_2146EAB58);
        v53 = 6;
        sub_21432076C(&qword_27C90CBD0, &qword_27C904200, &qword_2146EAB58);
        sub_2146DA1C8();
        (*(v43 + 8))(v12, v9);
        v36 = *v51;
        v25 = v44;
        v44[4] = v50;
        v25[5] = v36;
        *(v25 + 90) = *&v51[10];
        v37 = v47;
        *v25 = v46;
        v25[1] = v37;
        v38 = v49;
        v25[2] = v48;
        v25[3] = v38;
        goto LABEL_23;
      }

      v53 = 5;
      sub_2143207B4();
      sub_2146DA1C8();
      v23 = v40;
      (*(v43 + 8))(v12, v9);
      v33 = v49;
      v25 = v44;
      v44[2] = v48;
      v25[3] = v33;
      v25[4] = v50;
      *(v25 + 80) = v51[0];
      v34 = v47;
      *v25 = v46;
      v25[1] = v34;
    }

LABEL_22:
    swift_storeEnumTagMultiPayload();
    v35 = v45;
LABEL_24:
    sub_214328704(v25, v23, type metadata accessor for IDSClientProtobufMessageType);
    v21 = v35;
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v21 = v45;
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

unint64_t sub_2142B2948()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_2142B29A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214387B78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142B29C8(uint64_t a1)
{
  v2 = sub_2143208B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B2A04(uint64_t a1)
{
  v2 = sub_2143208B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B2A40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000017;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  if (v3)
  {
    v5 = "legacyActivitySharing";
  }

  else
  {
    v5 = "strationRequestResultMessage";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (*a2)
  {
    v8 = "strationRequestResultMessage";
  }

  else
  {
    v8 = "legacyActivitySharing";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2146DA6A8();
  }

  return v10 & 1;
}

uint64_t sub_2142B2AEC()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B2B6C()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142B2BD8()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142B2C60(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xD000000000000015;
  }

  if (*v1)
  {
    v3 = "strationRequestResultMessage";
  }

  else
  {
    v3 = "legacyActivitySharing";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_2142B2D50(void *a1)
{
  v2 = v1;
  v22 = type metadata accessor for IDSSampleMessage(0);
  v4 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v23 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IDSSampleMessageType(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CBF8, &qword_2146F6E18);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143208B0();
  sub_2146DAA28();
  sub_2143287C0(v2, v9, type metadata accessor for IDSSampleMessageType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = v23;
    sub_214328704(v9, v23, type metadata accessor for IDSSampleMessage);
    v30 = 1;
    v29 = 0;
    sub_214320904();
    v17 = v24;
    sub_2146DA388();
    if (!v17)
    {
      v28 = 2;
      sub_214328930(&qword_27C90C970, type metadata accessor for IDSSampleMessage);
      sub_2146DA388();
    }

    sub_21432887C(v16, type metadata accessor for IDSSampleMessage);
  }

  else
  {
    v18 = *v9;
    v27 = 0;
    sub_214320904();
    v19 = v24;
    sub_2146DA388();
    if (!v19)
    {
      v26 = v18;
      v25 = 1;
      sub_214052838();
      sub_2146DA388();
    }
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_2142B3094@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for IDSSampleMessage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CC10, &qword_2146F6E20);
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for IDSSampleMessageType(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2143208B0();
  v17 = v27;
  sub_2146DAA08();
  if (!v17)
  {
    v24 = v14;
    v27 = v11;
    v18 = v25;
    v19 = v26;
    v32 = 0;
    sub_214320958();
    sub_2146DA1C8();
    if (v33)
    {
      v31 = 2;
      sub_214328930(&qword_27C90CA50, type metadata accessor for IDSSampleMessage);
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v21 = v24;
      sub_214328704(v6, v24, type metadata accessor for IDSSampleMessage);
      v22 = v19;
    }

    else
    {
      v29 = 1;
      sub_2140527E4();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v22 = v19;
      v21 = v24;
      *v24 = v30;
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v21, v22, type metadata accessor for IDSSampleMessageType);
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

unint64_t sub_2142B3434()
{
  v1 = *v0;
  v2 = 0x565F656C676E6973;
  v3 = 0x5F736E6F6974706FLL;
  if (v1 != 3)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 != 1)
  {
    v2 = 0x5F736E6F6974706FLL;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001ALL;
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

uint64_t sub_2142B3518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214387CF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142B3540(uint64_t a1)
{
  v2 = sub_2143209AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B357C(uint64_t a1)
{
  v2 = sub_2143209AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B35C4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B3684()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142B3730()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B37EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214387F58();
  *a2 = result;
  return result;
}

void sub_2142B381C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xE700000000000000;
  v5 = 0x736E6F6974706FLL;
  if (*v1 != 2)
  {
    v5 = 0x68437972616E6962;
    v4 = 0xEC0000006563696FLL;
  }

  if (*v1)
  {
    v3 = 0x656C676E6973;
    v2 = 0xE600000000000000;
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

uint64_t sub_2142B3948(void *a1)
{
  v2 = v1;
  v40 = type metadata accessor for BIABinaryChoiceButton(0);
  v4 = *(*(v40 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v39 - v7;
  v8 = type metadata accessor for BIAUserAction(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BIAUserInteractionParadigm(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CC20, &qword_2146F6E28);
  v17 = *(v16 - 8);
  v44 = v16;
  v45 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143209AC();
  sub_2146DAA28();
  sub_2143287C0(v2, v15, type metadata accessor for BIAUserInteractionParadigm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CC38, &qword_2146F6E30) + 48);
      v28 = v42;
      sub_214328704(v15, v42, type metadata accessor for BIABinaryChoiceButton);
      v29 = v15 + v27;
      v30 = v41;
      sub_214328704(v29, v41, type metadata accessor for BIABinaryChoiceButton);
      LOBYTE(v46) = 3;
      v47 = 0;
      sub_214320A00();
      v31 = v43;
      v24 = v44;
      sub_2146DA388();
      if (!v31)
      {
        LOBYTE(v46) = 4;
        sub_214328930(&qword_27C90CC40, type metadata accessor for BIABinaryChoiceButton);
        sub_2146DA388();
        LOBYTE(v46) = 5;
        sub_2146DA388();
      }

      sub_21432887C(v30, type metadata accessor for BIABinaryChoiceButton);
      v26 = v28;
      v25 = type metadata accessor for BIABinaryChoiceButton;
      goto LABEL_11;
    }

    LOBYTE(v46) = 0;
    v47 = 0;
    sub_214320A00();
    v38 = v44;
    sub_2146DA388();
    return (*(v45 + 8))(v20, v38);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_214328704(v15, v11, type metadata accessor for BIAUserAction);
      LOBYTE(v46) = 1;
      v47 = 0;
      sub_214320A00();
      v23 = v43;
      v24 = v44;
      sub_2146DA388();
      if (!v23)
      {
        LOBYTE(v46) = 1;
        sub_214328930(&qword_27C907D08, type metadata accessor for BIAUserAction);
        sub_2146DA388();
      }

      v25 = type metadata accessor for BIAUserAction;
      v26 = v11;
LABEL_11:
      sub_21432887C(v26, v25);
      return (*(v45 + 8))(v20, v24);
    }

    v33 = *v15;
    v34 = v15[1];
    v35 = v15[2];
    LOBYTE(v46) = 2;
    v47 = 0;
    sub_214320A00();
    v36 = v43;
    v37 = v44;
    sub_2146DA388();
    if (v36)
    {
      (*(v45 + 8))(v20, v37);
    }

    else
    {
      LOBYTE(v46) = 2;
      sub_2146DA328();

      v46 = v35;
      v47 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D60, &qword_2146F4DF0);
      sub_2142F8978();
      sub_2146DA388();
      (*(v45 + 8))(v20, v37);
    }
  }
}

uint64_t sub_2142B3F3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v38 = type metadata accessor for BIABinaryChoiceButton(0);
  v3 = *(*(v38 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v38);
  v35 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v35 - v6;
  v7 = type metadata accessor for BIAUserAction(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CC48, &qword_2146F6E38);
  v39 = *(v11 - 8);
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v15 = type metadata accessor for BIAUserInteractionParadigm(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[3];
  v20 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_2143209AC();
  v21 = v40;
  sub_2146DAA08();
  if (!v21)
  {
    v40 = v7;
    v22 = v37;
    v48 = 0;
    sub_214320A54();
    sub_2146DA1C8();
    if (v49 > 1u)
    {
      if (v49 == 2)
      {
        v45 = 2;
        v24 = sub_2146DA168();
        v25 = v39;
        v29 = v28;
        v30 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D60, &qword_2146F4DF0);
        v44 = 3;
        sub_2142F8840();
        sub_2146DA1C8();
        (*(v25 + 8))(v14, v11);
        v33 = v42;
        *v18 = v30;
        v18[1] = v29;
        v18[2] = v33;
      }

      else
      {
        v47 = 4;
        sub_214328930(&qword_27C90CC58, type metadata accessor for BIABinaryChoiceButton);
        v26 = v14;
        sub_2146DA1C8();
        v46 = 5;
        v27 = v35;
        sub_2146DA1C8();
        v31 = v27;
        (*(v39 + 8))(v26, v11);
        v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CC38, &qword_2146F6E30) + 48);
        sub_214328704(v22, v18, type metadata accessor for BIABinaryChoiceButton);
        sub_214328704(v31, v18 + v32, type metadata accessor for BIABinaryChoiceButton);
      }
    }

    else if (v49)
    {
      v43 = 1;
      sub_214328930(&qword_27C907CF8, type metadata accessor for BIAUserAction);
      sub_2146DA1C8();
      (*(v39 + 8))(v14, v11);
      sub_214328704(v10, v18, type metadata accessor for BIAUserAction);
    }

    else
    {
      (*(v39 + 8))(v14, v11);
    }

    v34 = v36;
    swift_storeEnumTagMultiPayload();
    sub_214328704(v18, v34, type metadata accessor for BIAUserInteractionParadigm);
  }

  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_2142B4540()
{
  v1 = 0x756C61565F6C7275;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4172657355414962;
  }
}

uint64_t sub_2142B45B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214387FA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142B45D8(uint64_t a1)
{
  v2 = sub_214320AA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B4614(uint64_t a1)
{
  v2 = sub_214320AA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B4650(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 7107189;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0x8000000214786B50;
  }

  if (*a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 7107189;
  }

  if (*a2)
  {
    v7 = 0x8000000214786B50;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142B46F4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B4774()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142B47E0()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142B4868(unint64_t *a1@<X8>)
{
  v2 = 0x8000000214786B50;
  v3 = 7107189;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t BIAUserAction.encode(to:)(void *a1)
{
  v2 = v1;
  v24 = type metadata accessor for BIAURL(0);
  v4 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BIAUserAction(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CC60, &qword_2146F6E40);
  v26 = *(v11 - 8);
  v27 = v11;
  v12 = *(v26 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214320AA8();
  sub_2146DAA28();
  sub_2143287C0(v2, v10, type metadata accessor for BIAUserAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v10 + 5);
    v40 = *(v10 + 4);
    v41 = v16;
    v42 = *(v10 + 6);
    v43 = v10[112];
    v17 = *(v10 + 1);
    v36 = *v10;
    v37 = v17;
    v18 = *(v10 + 3);
    v38 = *(v10 + 2);
    v39 = v18;
    LOBYTE(v28) = 1;
    v44 = 0;
    sub_214320AFC();
    v19 = v27;
    v20 = v25;
    sub_2146DA388();
    if (!v20)
    {
      v32 = v40;
      v33 = v41;
      v34 = v42;
      v35 = v43;
      v28 = v36;
      v29 = v37;
      v30 = v38;
      v31 = v39;
      v44 = 2;
      sub_214320B50();
      sub_2146DA388();
    }

    (*(v26 + 8))(v14, v19);
    return sub_2142F8368(&v36);
  }

  else
  {
    sub_214328704(v10, v6, type metadata accessor for BIAURL);
    LOBYTE(v36) = 0;
    LOBYTE(v28) = 0;
    sub_214320AFC();
    v22 = v27;
    v23 = v25;
    sub_2146DA388();
    if (!v23)
    {
      LOBYTE(v36) = 1;
      sub_214328930(&qword_27C90CC80, type metadata accessor for BIAURL);
      sub_2146DA388();
    }

    sub_21432887C(v6, type metadata accessor for BIAURL);
    return (*(v26 + 8))(v14, v22);
  }
}

uint64_t BIAUserAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for BIAURL(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CC88, &qword_2146F6E48);
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for BIAUserAction(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_214320AA8();
  v17 = v29;
  sub_2146DAA08();
  if (!v17)
  {
    v29 = v3;
    v26 = v14;
    v18 = v27;
    v19 = v28;
    v39 = 0;
    sub_214320BA4();
    sub_2146DA1C8();
    if (v31)
    {
      v39 = 2;
      sub_214320BF8();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v21 = v19;
      v22 = v36;
      v23 = v26;
      *(v26 + 4) = v35;
      *(v23 + 80) = v22;
      *(v23 + 96) = v37;
      *(v23 + 112) = v38;
      v24 = v32;
      *v23 = v31;
      *(v23 + 16) = v24;
      v25 = v34;
      *(v23 + 32) = v33;
      *(v23 + 48) = v25;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      LOBYTE(v31) = 1;
      sub_214328930(&qword_27C90CCA0, type metadata accessor for BIAURL);
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v23 = v26;
      sub_214328704(v6, v26, type metadata accessor for BIAURL);
      swift_storeEnumTagMultiPayload();
      v21 = v19;
    }

    sub_214328704(v23, v21, type metadata accessor for BIAUserAction);
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

unint64_t sub_2142B50E0()
{
  if (*v0)
  {
    result = 0xD000000000000019;
  }

  else
  {
    result = 0xD000000000000016;
  }

  *v0;
  return result;
}

uint64_t sub_2142B511C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000002147981A0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000214798180 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

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

uint64_t sub_2142B5200(uint64_t a1)
{
  v2 = sub_214320C4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B523C(uint64_t a1)
{
  v2 = sub_214320C4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B5278()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_2142B52EC()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_2142B541C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CCA8, &qword_2146F6E50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = *(v1 + 3);
  v19 = *(v1 + 4);
  v20 = v11;
  v32 = v1[40];
  v21 = *(v1 + 3);
  v22 = v10;
  v12 = *(v1 + 8);
  v17 = *(v1 + 9);
  v18 = v12;
  v16 = v1[80];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214320C4C();
  sub_2146DAA28();
  v23 = 0;
  sub_214320CA0();
  sub_2146DA388();
  if (!v2)
  {
    v23 = v9;
    v24 = v22;
    v25 = v20;
    v26 = v19;
    v27 = v32;
    v28 = v21;
    v29 = v18;
    v30 = v17;
    v31 = v16;
    v33 = 1;
    sub_214320CF4();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2142B5600@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CCC8, &qword_2146F6E58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214320C4C();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v15) = 0;
    sub_214320D48();
    sub_2146DA1C8();
    v14 = 1;
    sub_214320D9C();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12[2] = v17;
    v12[3] = v18;
    v12[4] = v19;
    v13 = v20;
    v12[0] = v15;
    v12[1] = v16;
    sub_214320DF0(v12, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142B5830()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0xD000000000000019;
  }

  *v0;
  return result;
}

uint64_t sub_2142B586C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000019 && 0x8000000214799680 == a2;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002147996A0 == a2)
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

uint64_t sub_2142B594C(uint64_t a1)
{
  v2 = sub_21438E93C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B5988(uint64_t a1)
{
  v2 = sub_21438E93C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B59C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x456E776F6E6B6E75;
  v4 = 0xEC000000726F7272;
  if (v2 != 1)
  {
    v3 = 0x56676E697373696DLL;
    v4 = 0xEC00000065756C61;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x546E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB00000000657079;
  }

  v7 = 0x456E776F6E6B6E75;
  v8 = 0xEC000000726F7272;
  if (*a2 != 1)
  {
    v7 = 0x56676E697373696DLL;
    v8 = 0xEC00000065756C61;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x546E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB00000000657079;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2142B5AEC()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B5BA8()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142B5C50()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B5D08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21438817C();
  *a2 = result;
  return result;
}

void sub_2142B5D38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657079;
  v4 = 0xEC000000726F7272;
  v5 = 0x456E776F6E6B6E75;
  if (v2 != 1)
  {
    v5 = 0x56676E697373696DLL;
    v4 = 0xEC00000065756C61;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x546E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2142B5E60(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C48, &unk_214731990);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21438E93C();
  sub_2146DAA28();
  if (!a3)
  {
    v17 = 0;
    sub_21438E9E4();
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v19 = 1;
    v18 = 0;
    sub_21438E9E4();
LABEL_5:
    sub_2146DA388();
    return (*(v7 + 8))(v10, v6);
  }

  v16 = 2;
  v15 = 0;
  sub_21438E9E4();
  sub_2146DA388();
  if (!v3)
  {
    v14 = 1;
    sub_2146DA328();
    return (*(v7 + 8))(v10, v6);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2142B6068@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_214357EA8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_2142B60B0()
{
  v1 = 0x6C61565F70696863;
  if (*v0 != 1)
  {
    v1 = 0x6C61565F756E656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_2142B6110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143881C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142B6138(uint64_t a1)
{
  v2 = sub_214320E4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B6174(uint64_t a1)
{
  v2 = sub_214320E4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B61B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1885956195;
  if (v2 != 1)
  {
    v3 = 1970169197;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x64696C61766E69;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1885956195;
  if (*a2 != 1)
  {
    v6 = 1970169197;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x64696C61766E69;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
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
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142B6294()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B6328()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142B63A8()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B6438@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214388350();
  *a2 = result;
  return result;
}

void sub_2142B6468(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 1885956195;
  if (v2 != 1)
  {
    v4 = 1970169197;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x64696C61766E69;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_2142B6568(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MBDChip();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MBDPersistentMenuItemContent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CCE0, &qword_2146F6E60);
  v28 = *(v26 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v14 = &v25 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214320E4C();
  sub_2146DAA28();
  sub_2143287C0(v2, v11, type metadata accessor for MBDPersistentMenuItemContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = v11[3];
      v36 = v11[2];
      v37 = v17;
      v38 = v11[4];
      v18 = v11[1];
      v34 = *v11;
      v35 = v18;
      LOBYTE(v29) = 2;
      v39 = 0;
      sub_214320EA0();
      v19 = v26;
      v20 = v27;
      sub_2146DA388();
      if (!v20)
      {
        v31 = v36;
        v32 = v37;
        v33 = v38;
        v29 = v34;
        v30 = v35;
        v39 = 2;
        sub_2142FBB00();
        sub_2146DA388();
      }

      (*(v28 + 8))(v14, v19);
      return sub_2142E1100(&v34);
    }

    else
    {
      LOBYTE(v34) = 0;
      LOBYTE(v29) = 0;
      sub_214320EA0();
      v24 = v26;
      sub_2146DA388();
      return (*(v28 + 8))(v14, v24);
    }
  }

  else
  {
    sub_214328704(v11, v7, type metadata accessor for MBDChip);
    LOBYTE(v34) = 1;
    LOBYTE(v29) = 0;
    sub_214320EA0();
    v22 = v26;
    v23 = v27;
    sub_2146DA388();
    if (!v23)
    {
      LOBYTE(v34) = 1;
      sub_214328930(&qword_27C903F50, type metadata accessor for MBDChip);
      sub_2146DA388();
    }

    sub_21432887C(v7, type metadata accessor for MBDChip);
    return (*(v28 + 8))(v14, v22);
  }
}

uint64_t sub_2142B697C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for MBDChip();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CCF8, &qword_2146F6E68);
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - v9;
  v11 = type metadata accessor for MBDPersistentMenuItemContent(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_214320E4C();
  v17 = v27;
  sub_2146DAA08();
  if (!v17)
  {
    v24[1] = v3;
    v27 = v14;
    v18 = v25;
    v19 = v26;
    v34 = 0;
    sub_214320EF4();
    sub_2146DA1C8();
    if (v29)
    {
      if (v29 == 1)
      {
        LOBYTE(v29) = 1;
        sub_214328930(&qword_27C903F48, type metadata accessor for MBDChip);
        sub_2146DA1C8();
        (*(v18 + 8))(v10, v7);
        v20 = v27;
        sub_214328704(v6, v27, type metadata accessor for MBDChip);
      }

      else
      {
        v34 = 2;
        sub_2142FBA28();
        sub_2146DA1C8();
        (*(v18 + 8))(v10, v7);
        v21 = v32;
        v20 = v27;
        v27[2] = v31;
        v20[3] = v21;
        v20[4] = v33;
        v22 = v30;
        *v20 = v29;
        v20[1] = v22;
      }
    }

    else
    {
      (*(v18 + 8))(v10, v7);
      v20 = v27;
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v20, v19, type metadata accessor for MBDPersistentMenuItemContent);
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

unint64_t sub_2142B6D58()
{
  v1 = 0x5F696A6F6D696E61;
  if (*v0 != 1)
  {
    v1 = 0x565F696A6F6D656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2142B6DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438839C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142B6DF4(uint64_t a1)
{
  v2 = sub_214320F48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B6E30(uint64_t a1)
{
  v2 = sub_214320F48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B6E6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x696A6F6D656DLL;
  }

  else
  {
    v4 = 0x696A6F6D696E61;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x696A6F6D656DLL;
  }

  else
  {
    v6 = 0x696A6F6D696E61;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
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
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142B6F10()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B6F90()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142B6FFC()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142B7084(uint64_t *a1@<X8>)
{
  v2 = 0x696A6F6D696E61;
  if (*v1)
  {
    v2 = 0x696A6F6D656DLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2142B7170(uint64_t a1)
{
  v24 = v2;
  v3 = MEMORY[0x28223BE20](a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CD08, &qword_2146F6E70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_214320F48();
  sub_2146DAA28();
  if (v9 < 0)
  {
    memcpy(v23, ((v9 & 0x7FFFFFFFFFFFFFFFLL) + 16), 0x27FAuLL);
    v22 = 1;
    v21[10238] = 0;
    sub_214320F9C(v23, v21);
    sub_214320FF8();
    v17 = v24;
    sub_2146DA388();
    if (!v17)
    {
      memcpy(v21, v23, 0x27FAuLL);
      v22 = 2;
      sub_2143210A0();
      sub_2146DA388();
    }

    (*(v5 + 8))(v8, v4);
    return sub_21432104C(v23);
  }

  else
  {
    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    v13 = *(v9 + 40);
    v19 = *(v9 + 32);
    v20 = v11;
    v14 = *(v9 + 48);
    LOBYTE(v23[0]) = 0;
    v21[0] = 0;
    sub_214320FF8();

    v15 = v24;
    sub_2146DA388();
    if (!v15)
    {
      v23[0] = v20;
      v23[1] = v12;
      v23[2] = v19;
      v23[3] = v13;
      LOBYTE(v23[4]) = v14;
      v21[0] = 1;
      sub_2143210F4();
      sub_2146DA388();
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_2142B7474(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v21 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CD30, &qword_2146F6E78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-v7 - 16];
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_214320F48();
  sub_2146DAA08();
  if (!v1)
  {
    v10 = v21;
    v20 = 0;
    sub_214321148();
    sub_2146DA1C8();
    v12 = (v5 + 8);
    if (v19[0])
    {
      v20 = 2;
      sub_21432119C();
      sub_2146DA1C8();
      (*v12)(v8, v4);
      v13 = swift_allocObject();
      memcpy((v13 + 16), v19, 0x27FAuLL);
      *v10 = v13 | 0x8000000000000000;
    }

    else
    {
      v20 = 1;
      sub_2143211F0();
      sub_2146DA1C8();
      (*v12)(v8, v4);
      v14 = *&v19[16];
      v15 = *&v19[24];
      v16 = v19[32];
      v18 = *v19;
      v17 = swift_allocObject();
      *(v17 + 16) = v18;
      *(v17 + 32) = v14;
      *(v17 + 40) = v15;
      *(v17 + 48) = v16;
      *v10 = v17;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

unint64_t sub_2142B775C()
{
  *v0;
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_2142B77A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214388520(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142B77D0(uint64_t a1)
{
  v2 = sub_214321244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B780C(uint64_t a1)
{
  v2 = sub_214321244();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B7848(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7069636974726170;
  v4 = 0xEB00000000746E61;
  if (v2 != 1)
  {
    v3 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x4E79616C70736964;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB00000000656D61;
  }

  v7 = 0x7069636974726170;
  v8 = 0xEB00000000746E61;
  if (*a2 != 1)
  {
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x4E79616C70736964;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB00000000656D61;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2142B7960()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B7A14()
{
  *v0;
  *v0;
  sub_2146D9698();
}