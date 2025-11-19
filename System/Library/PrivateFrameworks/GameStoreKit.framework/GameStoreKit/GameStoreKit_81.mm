uint64_t sub_24EE46654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a2;
  v88 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231860);
  v86 = *(v4 - 8);
  v87 = v4;
  MEMORY[0x28223BE20](v4);
  v75 = &v70 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231868);
  MEMORY[0x28223BE20](v6 - 8);
  v83 = &v70 - v7;
  v8 = type metadata accessor for InviteFriendsCardComponent(0);
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x28223BE20](v8);
  v74 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231870);
  MEMORY[0x28223BE20](v10 - 8);
  v85 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v70 - v13;
  v14 = type metadata accessor for InviteFriendsPageView.InviteFriendsRowView(0);
  v77 = *(v14 - 8);
  v78 = v14;
  MEMORY[0x28223BE20](v14);
  v72 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for ActivityFriendSuggestion(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FriendSuggestion(0);
  MEMORY[0x28223BE20](v22);
  v24 = (&v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231878);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v70 - v26;
  v28 = type metadata accessor for InviteFriendsRow(0);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231880);
  MEMORY[0x28223BE20](v32 - 8);
  v79 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v70 - v35;
  v82 = a1;
  sub_24E615E00(a1, &KeyPath);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  v37 = swift_dynamicCast();
  v38 = *(v29 + 56);
  if ((v37 & 1) == 0)
  {
    v46 = 1;
    v38(v27, 1, 1, v28);
    sub_24E601704(v27, &qword_27F231878);
    v47 = v84;
    v48 = v81;
LABEL_8:
    v50 = v78;
    goto LABEL_10;
  }

  v38(v27, 0, 1, v28);
  sub_24EE4C4A4(v27, v31, type metadata accessor for InviteFriendsRow);
  v39 = (v73 + *(type metadata accessor for InviteFriendsPageView.ShelfListView(0) + 20));
  v41 = *v39;
  v40 = v39[1];
  v42 = v39[2];
  KeyPath = v41;
  v92 = v40;
  v73 = v40;
  v71 = v42;
  v93 = v42;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231898);
  MEMORY[0x25304CAF0](&v89);
  v43 = v89;
  sub_24EE4A97C(&v31[*(v28 + 20)], v24, type metadata accessor for FriendSuggestion);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24EE4C4A4(v24, v21, type metadata accessor for ActivityFriendSuggestion);
    sub_24EE4A97C(v21, v18, type metadata accessor for Player);
    sub_24EE4E98C(v21, type metadata accessor for ActivityFriendSuggestion);
    v45 = *v18;
    v44 = v18[1];

    sub_24EE4E98C(v18, type metadata accessor for Player);
  }

  else
  {
    v45 = *v24;
    v44 = v24[1];
  }

  v47 = v84;
  v48 = v81;
  v49 = sub_24F4D36F8(v45, v44, v43);

  if (v49)
  {
    sub_24EE4E98C(v31, type metadata accessor for InviteFriendsRow);
    v46 = 1;
    goto LABEL_8;
  }

  v51 = v72;
  sub_24EE4A97C(v31, v72, type metadata accessor for InviteFriendsRow);
  KeyPath = v41;
  v92 = v73;
  v93 = v71;
  sub_24F927198();
  sub_24EE4E98C(v31, type metadata accessor for InviteFriendsRow);
  v52 = v90;
  v53 = v78;
  v54 = v51 + *(v78 + 20);
  *v54 = v89;
  *(v54 + 8) = v52;
  v55 = v51 + *(v53 + 24);
  *v55 = swift_getKeyPath();
  *(v55 + 40) = 0;
  v56 = *(v53 + 28);
  *(v51 + v56) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  swift_storeEnumTagMultiPayload();
  sub_24EE4C4A4(v51, v36, type metadata accessor for InviteFriendsPageView.InviteFriendsRowView);
  v50 = v53;
  v46 = 0;
LABEL_10:
  (*(v77 + 56))(v36, v46, 1, v50);
  sub_24E615E00(v82, &KeyPath);
  v57 = v83;
  v58 = swift_dynamicCast();
  v59 = *(v80 + 56);
  v60 = v86;
  if (v58)
  {
    v59(v57, 0, 1, v48);
    v61 = v74;
    sub_24EE4C4A4(v57, v74, type metadata accessor for InviteFriendsCardComponent);
    KeyPath = swift_getKeyPath();
    LOBYTE(v92) = 0;
    sub_24EE50BFC();
    v62 = v75;
    sub_24F921D38();

    sub_24EE4E98C(v61, type metadata accessor for InviteFriendsCardComponent);
    v63 = v87;
    (*(v60 + 32))(v47, v62, v87);
    v64 = 0;
  }

  else
  {
    v64 = 1;
    v59(v57, 1, 1, v48);
    sub_24E601704(v57, &qword_27F231868);
    v63 = v87;
  }

  (*(v60 + 56))(v47, v64, 1, v63);
  v65 = v79;
  sub_24E60169C(v36, v79, &qword_27F231880);
  v66 = v85;
  sub_24E60169C(v47, v85, &qword_27F231870);
  v67 = v88;
  sub_24E60169C(v65, v88, &qword_27F231880);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231888);
  sub_24E60169C(v66, v67 + *(v68 + 48), &qword_27F231870);
  sub_24E601704(v47, &qword_27F231870);
  sub_24E601704(v36, &qword_27F231880);
  sub_24E601704(v66, &qword_27F231870);
  return sub_24E601704(v65, &qword_27F231880);
}

uint64_t sub_24EE470DC@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v31 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231990);
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = type metadata accessor for GSKShelf();
  sub_24E60169C(v1 + *(v8 + 24), v4, &qword_27F223138);
  v9 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  if ((*(*(v9 - 8) + 48))(v4, 1, v9) == 1)
  {
    sub_24E601704(v4, &qword_27F223138);
    if (qword_27F211668 != -1)
    {
      swift_once();
    }

    v10 = qword_27F39ED98;
    v11 = unk_27F39EDA0;
  }

  else
  {
    v10 = *v4;
    v11 = v4[1];

    sub_24EE4E98C(v4, type metadata accessor for HeaderPresentation.HeaderLabel);
  }

  v34 = v10;
  v35 = v11;
  sub_24E600AEC();
  v12 = sub_24F925E18();
  v14 = v13;
  v16 = v15;
  v17 = sub_24F925C88();
  v19 = v18;
  v21 = v20;
  sub_24E600B40(v12, v14, v16 & 1);

  sub_24F925988();
  v22 = sub_24F925C98();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_24E600B40(v17, v19, v21 & 1);

  v29 = sub_24F927158();
  v34 = v22;
  v35 = v24;
  v26 &= 1u;
  v36 = v26;
  v37 = v28;
  v38 = v29;
  sub_24F923838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231998);
  sub_24EE51BF8();
  sub_24F9264B8();
  sub_24E600B40(v22, v24, v26);

  return (*(v31 + 32))(v33, v7, v32);
}

uint64_t sub_24EE47430@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v28 = sub_24F924938();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v23 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for InviteFriendsRowComponent(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A60);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A68);
  v11 = *(v10 - 8);
  v24 = v10;
  v25 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v31 = 0x402E000000000000;
  sub_24E66ED98();
  sub_24F9237C8();
  *(v5 + v3[6]) = 0x4020000000000000;
  *(v5 + v3[7]) = 0x4050000000000000;
  v14 = v3[8];
  *(v5 + v14) = sub_24F9258D8();
  v15 = v3[9];
  *(v5 + v15) = sub_24F925A18();
  v16 = sub_24EE4A2A0(&qword_27F231A70, type metadata accessor for InviteFriendsRowComponent);
  sub_24F921D38();
  sub_24EE4E98C(v5, type metadata accessor for InviteFriendsRowComponent);
  v30 = v1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A78);
  v31 = v3;
  v32 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_24EE523FC(&qword_27F231A80, &qword_27F231A78, &unk_24F9A6E68, sub_24EE52478);
  sub_24F926198();
  (*(v7 + 8))(v9, v6);
  v20 = v23;
  sub_24F924928();
  v29 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A98);
  v31 = v6;
  v32 = v17;
  v33 = OpaqueTypeConformance2;
  v34 = v19;
  swift_getOpaqueTypeConformance2();
  sub_24EE523FC(&qword_27F231AA0, &qword_27F231A98, &unk_24F9A6E78, sub_24EE52564);
  v21 = v24;
  sub_24F9262C8();
  (*(v26 + 8))(v20, v28);
  return (*(v25 + 8))(v13, v21);
}

uint64_t sub_24EE47900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InviteFriendsPageView.InviteFriendsRowView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A90);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v11 = type metadata accessor for InviteFriendsRow(0);
  sub_24E60169C(a1 + *(v11 + 52), &v17, &qword_27F213EA8);
  if (v18)
  {
    sub_24E612C80(&v17, v19);
    sub_24EE4A97C(a1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InviteFriendsPageView.InviteFriendsRowView);
    sub_24E615E00(v19, &v17);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    sub_24EE4C4A4(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for InviteFriendsPageView.InviteFriendsRowView);
    sub_24E612C80(&v17, v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58);
    sub_24E602068(&qword_27F212910, &qword_27F211B58);
    sub_24F926F88();
    __swift_destroy_boxed_opaque_existential_1(v19);
    KeyPath = swift_getKeyPath();
    v15 = &v10[*(v7 + 36)];
    *v15 = KeyPath;
    v15[1] = 0;
    sub_24E6009C8(v10, a2, &qword_27F231A90);
    return (*(v8 + 56))(a2, 0, 1, v7);
  }

  else
  {
    sub_24E601704(&v17, qword_27F21B590);
    return (*(v8 + 56))(a2, 1, 1, v7);
  }
}

uint64_t sub_24EE47C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InviteFriendsPageView.InviteFriendsRowView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231AB0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v11 = type metadata accessor for InviteFriendsRow(0);
  sub_24E60169C(a1 + *(v11 + 52), &v17, &qword_27F213EA8);
  if (v18)
  {
    sub_24E612C80(&v17, v19);
    sub_24EE4A97C(a1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InviteFriendsPageView.InviteFriendsRowView);
    sub_24E615E00(v19, &v17);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    sub_24EE4C4A4(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for InviteFriendsPageView.InviteFriendsRowView);
    sub_24E612C80(&v17, v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
    sub_24F926F88();
    __swift_destroy_boxed_opaque_existential_1(v19);
    KeyPath = swift_getKeyPath();
    v15 = &v10[*(v7 + 36)];
    *v15 = KeyPath;
    v15[1] = 0;
    sub_24E6009C8(v10, a2, &qword_27F231AB0);
    return (*(v8 + 56))(a2, 0, 1, v7);
  }

  else
  {
    sub_24E601704(&v17, qword_27F21B590);
    return (*(v8 + 56))(a2, 1, 1, v7);
  }
}

uint64_t sub_24EE47EC8(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v30 = sub_24F921B58();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v27 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ActivityFriendSuggestion(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for FriendSuggestion(0);
  MEMORY[0x28223BE20](v7);
  v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for InviteFriendsRow(0);
  sub_24EE4A97C(a1 + *(v10 + 20), v9, type metadata accessor for FriendSuggestion);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24EE4C4A4(v9, v6, type metadata accessor for ActivityFriendSuggestion);
    v11 = *v6;
    v12 = v6[1];
    v13 = (a1 + *(type metadata accessor for InviteFriendsPageView.InviteFriendsRowView(0) + 20));
    v15 = v13[1];
    v16 = v13[2];
    v31 = *v13;
    v14 = v31;
    v32 = v15;
    v33 = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231898);
    MEMORY[0x25304CAF0](&v39);
    sub_24ED7C5F0(&v40, v11, v12);

    v36 = v14;
    v37 = v15;
    v38 = v16;
    v35 = v39;
    sub_24F927178();
    sub_24EE4E98C(v6, type metadata accessor for ActivityFriendSuggestion);
  }

  else
  {
    v18 = *v9;
    v17 = v9[1];
    v19 = v9[5];
    v26[1] = v9[7];
    v26[2] = v19;
    v26[0] = v9[9];
    v20 = (a1 + *(type metadata accessor for InviteFriendsPageView.InviteFriendsRowView(0) + 20));
    v22 = v20[1];
    v23 = v20[2];
    v31 = *v20;
    v21 = v31;
    v32 = v22;
    v33 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231898);
    MEMORY[0x25304CAF0](&v39);
    sub_24ED7C5F0(&v40, v18, v17);

    v36 = v21;
    v37 = v22;
    v38 = v23;
    v35 = v39;
    sub_24F927178();
  }

  type metadata accessor for InviteFriendsPageView.InviteFriendsRowView(0);
  sub_24F7695C8(&v31);
  if (!v34)
  {
    return sub_24E601704(&v31, &unk_27F212740);
  }

  __swift_project_boxed_opaque_existential_1(&v31, v34);
  v24 = v27;
  sub_24F76973C(v27);
  sub_24F9218A8();
  (*(v28 + 8))(v24, v30);
  return __swift_destroy_boxed_opaque_existential_1(&v31);
}

uint64_t sub_24EE48300()
{
  v0._object = 0x800000024FA5FB50;
  v0._countAndFlagsBits = 0xD00000000000002CLL;
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  localizedString(_:comment:)(v0, v1);
  sub_24E600AEC();
  return sub_24F926EB8();
}

uint64_t sub_24EE48390(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_24EE4A814(v5, v7) & 1;
}

uint64_t sub_24EE483DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter);
  sub_24F91FD88();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = *(v3 + 48);
  *(a2 + 32) = v8;
  return sub_24EE4E888(v4, v5, v6, v7, v8);
}

uint64_t sub_24EE48498(int8x16_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  if (!*(v1 + 48))
  {
    if (a1[2].i8[0])
    {
      goto LABEL_28;
    }

    if (v3 == a1->i64[0] && v4 == a1->i64[1])
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  if (v7 == 1)
  {
    if (a1[2].i8[0] != 1)
    {
      goto LABEL_28;
    }

    v9 = a1[1].i64[0];
    v8 = a1[1].i64[1];
    v10 = v3 == a1->i64[0] && v4 == a1->i64[1];
    if (!v10 && (sub_24F92CE08() & 1) == 0)
    {
      goto LABEL_28;
    }

    if (v6)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      if (v5 != v9 || v6 != v8)
      {
LABEL_19:
        if (sub_24F92CE08())
        {
          goto LABEL_30;
        }

LABEL_28:
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter);
        sub_24F91FD78();
        sub_24EE4E820(a1);
      }
    }

    else if (v8)
    {
      goto LABEL_28;
    }
  }

  else if (v5 | v4 | v3 | v6)
  {
    if (a1[2].i8[0] != 2 || a1->i64[0] != 1 || a1[1].i64[0] | a1[1].i64[1] | a1->i64[1])
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (a1[2].i8[0] != 2)
    {
      goto LABEL_28;
    }

    v12 = vorrq_s8(*a1, a1[1]);
    if (vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)))
    {
      goto LABEL_28;
    }
  }

LABEL_30:
  v15 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v15;
  *(v1 + 48) = a1[2].i8[0];

  return sub_24EE4E740(v3, v4, v5, v6, v7);
}

uint64_t sub_24EE48710(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v6;
  v7 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 32);
  sub_24EE4E850(a2, v9);
  return sub_24EE4E740(v2, v3, v4, v5, v7);
}

uint64_t sub_24EE48790@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter);
  sub_24F91FD88();

  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_24EE48838(uint64_t result)
{
  if (*(v1 + 49) == (result & 1))
  {
    *(v1 + 49) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24EE48948()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231690);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EC40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8E8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 2;
  *(v0 + 50) = 0;
  sub_24F91FDB8();
  (*(v2 + 104))(v4, *MEMORY[0x277D85778], v1);
  sub_24F92B868();
  (*(v2 + 8))(v4, v1);
  (*(v10 + 32))(v0 + OBJC_IVAR____TtC12GameStoreKitP33_7A10BEAB54B6DC2FC53A714895EAB37132InviteFriendsSearchPagePresenter_searchTermStream, v12, v9);
  (*(v6 + 32))(v0 + OBJC_IVAR____TtC12GameStoreKitP33_7A10BEAB54B6DC2FC53A714895EAB37132InviteFriendsSearchPagePresenter_searchTermStreamContinuation, v8, v5);
  return v0;
}

uint64_t sub_24EE48BD4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EC40);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC12GameStoreKitP33_7A10BEAB54B6DC2FC53A714895EAB37132InviteFriendsSearchPagePresenter_searchTermStreamContinuation;
  (*(v3 + 16))(&v14 - v5, v1 + OBJC_IVAR____TtC12GameStoreKitP33_7A10BEAB54B6DC2FC53A714895EAB37132InviteFriendsSearchPagePresenter_searchTermStreamContinuation, v2, v4);
  sub_24F92B8D8();
  v8 = *(v3 + 8);
  v8(v6, v2);
  sub_24EE4E740(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  v9 = OBJC_IVAR____TtC12GameStoreKitP33_7A10BEAB54B6DC2FC53A714895EAB37132InviteFriendsSearchPagePresenter_searchTermStream;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8E8);
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  v8((v1 + v7), v2);
  v11 = OBJC_IVAR____TtC12GameStoreKitP33_7A10BEAB54B6DC2FC53A714895EAB37132InviteFriendsSearchPagePresenter___observationRegistrar;
  v12 = sub_24F91FDC8();
  (*(*(v12 - 8) + 8))(v1 + v11, v12);
  return swift_deallocClassInstance();
}

uint64_t sub_24EE48DB4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231660);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - v8;
  swift_getKeyPath();
  v21.i64[0] = v2;
  sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter);
  sub_24F91FD88();

  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  if (*(v3 + 48))
  {
    if (*(v3 + 48) != 1)
    {
      goto LABEL_11;
    }

    if (*(v3 + 40))
    {
      v11 = *(v3 + 32);
      v10 = *(v3 + 40);
    }

    else
    {
    }
  }

  if (v11 == a1 && v10 == a2)
  {
  }

  v13 = sub_24F92CE08();

  if ((v13 & 1) == 0)
  {
LABEL_11:
    swift_getKeyPath();
    v21.i64[0] = v3;
    sub_24F91FD88();

    if (*(v3 + 48))
    {
      if (*(v3 + 48) == 1)
      {
        v14 = HIBYTE(a2) & 0xF;
        if ((a2 & 0x2000000000000000) == 0)
        {
          v14 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (!v14)
        {
LABEL_20:
          v21 = 1uLL;
          v22 = 0;
          v23 = 0;
          v24 = 2;
          KeyPath = swift_getKeyPath();
          v18[1] = v18;
          MEMORY[0x28223BE20](KeyPath);
          v18[-2] = v3;
          v18[-1] = &v21;
          v19 = v3;
          sub_24F91FD78();

LABEL_26:
          v19 = a1;
          v20 = a2;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EC40);
          sub_24F92B8C8();
          return (*(v7 + 8))(v9, v6);
        }
      }

      else
      {
        if (!(*(v3 + 32) | *(v3 + 40) | *(v3 + 16) | *(v3 + 24)))
        {
          goto LABEL_26;
        }

        v17 = HIBYTE(a2) & 0xF;
        if ((a2 & 0x2000000000000000) == 0)
        {
          v17 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (!v17)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v15 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v15 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (!v15)
      {
        goto LABEL_20;
      }
    }

    v21.i64[0] = a1;
    v21.i64[1] = a2;
    v22 = 0;
    v23 = 0;
    v24 = 0;

    sub_24EE48498(&v21);
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_24EE49198@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_6;
  }

  v3 = result;
  swift_getKeyPath();
  sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter);
  sub_24F91FD88();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  sub_24EE4E888(v4, v5, v6, v7, *(v3 + 48));

  if (!v8)
  {
    goto LABEL_7;
  }

  if (v8 != 1)
  {
LABEL_6:
    v4 = 0;
    v5 = 0xE000000000000000;
    goto LABEL_7;
  }

  if (v7)
  {
    result = sub_24EE4E740(v4, v5, v6, v7, 1);
    v4 = v6;
    v5 = v7;
  }

  else
  {
    result = sub_24EE4E740(v4, v5, v6, 0, 1);
  }

LABEL_7:
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_24EE49314(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24EE48DB4(v1, v2);
  }

  return result;
}

uint64_t sub_24EE49394()
{
  v1 = *(type metadata accessor for InviteFriendsPageView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24EE43350(v2);
}

uint64_t objectdestroy_10Tm_1()
{
  v1 = type metadata accessor for InviteFriendsPageView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(type metadata accessor for InviteFriendsPageIntent() + 24);
  v4 = type metadata accessor for Page.Background(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v11 = sub_24F9289E8();
          (*(*(v11 - 8) + 8))(v3, v11);
          v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8) + 48);
          v13 = sub_24F922348();
          v14 = *(v13 - 8);
          if (!(*(v14 + 48))(v3 + v12, 1, v13))
          {
            (*(v14 + 8))(v3 + v12, v13);
          }
        }
      }

      else
      {
        v24 = sub_24F9289E8();
        (*(*(v24 - 8) + 8))(v3, v24);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v15 = sub_24F9289E8();
      v16 = *(v15 - 8);
      if (!(*(v16 + 48))(v3, 1, v15))
      {
        (*(v16 + 8))(v3, v15);
      }

      v17 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v18 = type metadata accessor for GSKVideo();
      if (!(*(*(v18 - 1) + 48))(v17, 1, v18))
      {
        v19 = sub_24F91F4A8();
        (*(*(v19 - 8) + 8))(v17, v19);
        (*(v16 + 8))(v17 + v18[5], v15);
        v20 = v18[9];
        v21 = sub_24F928698();
        v25 = v20;
        v27 = *(v21 - 8);
        v22 = v17 + v20;
        v23 = v21;
        v28 = *(v27 + 48);
        if (!v28(v22, 1, v21))
        {
          (*(v27 + 8))(v17 + v25, v23);
        }

        v26 = v18[10];
        if (!v28(v17 + v26, 1, v23))
        {
          (*(v27 + 8))(v17 + v26, v23);
        }
      }
    }

    else if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
    {
      v10 = sub_24F928388();
      (*(*(v10 - 8) + 8))(v3, v10);
    }
  }

  sub_24E62A5EC(*(v2 + *(v1 + 32)), *(v2 + *(v1 + 32) + 8));
  v5 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F9219D8();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EE49A2C()
{
  type metadata accessor for InviteFriendsPageView(0);

  return sub_24EE434FC();
}

uint64_t sub_24EE49ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InviteFriendsPageIntent();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231530);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EE49C20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InviteFriendsPageIntent();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231530);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24EE49D50()
{
  type metadata accessor for InviteFriendsPageIntent();
  if (v0 <= 0x3F)
  {
    sub_24F928FD8();
    if (v1 <= 0x3F)
    {
      sub_24EE4A730(319, &qword_27F231548, type metadata accessor for InviteFriendsSearchPagePresenter, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_24E65E73C();
        if (v3 <= 0x3F)
        {
          sub_24EE4A034(319, &qword_27F2362D0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_24EE4EC40(319, &qword_27F231550, &qword_27F21C330, &unk_24F9DAB90, MEMORY[0x277CDF468]);
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

void sub_24EE49ED0()
{
  sub_24EE4A034(319, &qword_27F231578, MEMORY[0x277D837D0], MEMORY[0x277D857B8]);
  if (v0 <= 0x3F)
  {
    sub_24EE4A034(319, &qword_27F231580, MEMORY[0x277D837D0], MEMORY[0x277D85788]);
    if (v1 <= 0x3F)
    {
      sub_24F91FDC8();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24EE4A034(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_24EE4A088()
{
  result = qword_27F231588;
  if (!qword_27F231588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231528);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2314E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2314D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2314D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2314C8);
    sub_24E602068(&qword_27F231508, &qword_27F2314C8);
    sub_24E600AEC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24EE4A2A0(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231588);
  }

  return result;
}

uint64_t sub_24EE4A2A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_12GameStoreKit32InviteFriendsSearchPagePresenter33_7A10BEAB54B6DC2FC53A714895EAB371LLC0F5StateO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_24EE4A328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Page(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EE4A46C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Page(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24EE4A5BC()
{
  type metadata accessor for Page(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for InviteFriendsSearchPagePresenter(319);
    if (v1 <= 0x3F)
    {
      sub_24F928FD8();
      if (v2 <= 0x3F)
      {
        sub_24EE4EC40(319, &qword_27F2315A0, &unk_27F21E480, &unk_24F944D20, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_24EE4EC40(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_24EE4A730(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
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

void sub_24EE4A730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24EE4A7B4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;

  return MEMORY[0x2821E7C78](a1, a2, a3);
}

uint64_t sub_24EE4A814(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*(a1 + 32))
  {
    v6 = a1[2];
    v5 = a1[3];
    if (*(a1 + 32) != 1)
    {
      if (v6 | v4 | v3 | v5)
      {
        if (a2[2].i8[0] == 2 && a2->i64[0] == 1 && !(a2[1].i64[0] | a2[1].i64[1] | a2->i64[1]))
        {
          return 1;
        }
      }

      else if (a2[2].i8[0] == 2)
      {
        v13 = vorrq_s8(*a2, a2[1]);
        if (!*&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)))
        {
          return 1;
        }
      }

      return 0;
    }

    if (a2[2].i8[0] != 1)
    {
      return 0;
    }

    v8 = a2[1].i64[0];
    v7 = a2[1].i64[1];
    v9 = v3 == a2->i64[0] && v4 == a2->i64[1];
    if (v9 || (v10 = sub_24F92CE08(), result = 0, (v10 & 1) != 0))
    {
      if (v5)
      {
        return v7 && (v6 == v8 && v5 == v7 || (sub_24F92CE08() & 1) != 0);
      }

      return !v7;
    }
  }

  else
  {
    if (a2[2].i8[0])
    {
      return 0;
    }

    if (v3 == a2->i64[0] && v4 == a2->i64[1])
    {
      return 1;
    }

    return sub_24F92CE08();
  }

  return result;
}

uint64_t sub_24EE4A97C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE4A9E4()
{
  v1 = type metadata accessor for InviteFriendsPageView.PageContent(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  v4 = sub_24F92A708();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = type metadata accessor for Page(0);

  v6 = v5[6];
  v7 = sub_24F928818();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  v8 = v3 + v5[20];
  v9 = type metadata accessor for HeaderPresentation(0);
  if ((*(*(v9 - 1) + 48))(v8, 1, v9))
  {
    goto LABEL_55;
  }

  v10 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v11 = (*(v10 - 1) + 48);
  v109 = *v11;
  if (!(*v11)(v8, 1, v10))
  {

    v12 = v8 + v10[5];
    v13 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      goto LABEL_4;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v89 = sub_24F9289E8();
          (*(*(v89 - 8) + 8))(v12, v89);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_4:
          v14 = v8 + v10[7];
          v15 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v17 = sub_24F928388();
              (*(*(v17 - 8) + 8))(v14, v17);
            }
          }

          v18 = v8 + v10[10];
          if (*(v18 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v18);
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v77 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v78 = type metadata accessor for JSColor();
        if (!(*(*(v78 - 8) + 48))(v77, 1, v78))
        {
          v79 = sub_24F928388();
          (*(*(v79 - 8) + 8))(v77, v79);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v86 = sub_24F9289E8();
        v87 = *(v86 - 8);
        if (!(*(v87 + 48))(v12, 1, v86))
        {
          (*(v87 + 8))(v12, v86);
        }

        if (*(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_4;
  }

LABEL_15:
  v19 = v8 + v9[5];
  if (v109(v19, 1, v10))
  {
    goto LABEL_32;
  }

  v20 = v19 + v10[5];
  v21 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    goto LABEL_17;
  }

  v24 = swift_getEnumCaseMultiPayload();
  if (v24 <= 2)
  {
    if (!v24)
    {

      v80 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v81 = type metadata accessor for JSColor();
      if (!(*(*(v81 - 8) + 48))(v80, 1, v81))
      {
        v82 = sub_24F928388();
        (*(*(v82 - 8) + 8))(v80, v82);
      }

      goto LABEL_17;
    }

    if (v24 == 1)
    {
      v88 = sub_24F9289E8();
      v108 = *(v88 - 8);
      if (!(*(v108 + 48))(v20, 1, v88))
      {
        (*(v108 + 8))(v20, v88);
      }

      if (*(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_17;
    }

    if (v24 != 2)
    {
      goto LABEL_17;
    }

LABEL_45:

    goto LABEL_17;
  }

  switch(v24)
  {
    case 3:
      goto LABEL_45;
    case 4:
      v91 = sub_24F9289E8();
      (*(*(v91 - 8) + 8))(v20, v91);
      break;
    case 5:
      goto LABEL_45;
  }

LABEL_17:
  v22 = v19 + v10[7];
  v23 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v25 = sub_24F928388();
      (*(*(v25 - 8) + 8))(v22, v25);
    }
  }

  v26 = v19 + v10[10];
  if (*(v26 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

LABEL_32:
  v27 = v8 + v9[6];
  if (v109(v27, 1, v10))
  {
    goto LABEL_49;
  }

  v28 = v27 + v10[5];
  v29 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    goto LABEL_34;
  }

  v32 = swift_getEnumCaseMultiPayload();
  if (v32 <= 2)
  {
    if (!v32)
    {

      v83 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v84 = type metadata accessor for JSColor();
      if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
      {
        v85 = sub_24F928388();
        (*(*(v85 - 8) + 8))(v83, v85);
      }

      goto LABEL_34;
    }

    if (v32 == 1)
    {
      v90 = sub_24F9289E8();
      v110 = *(v90 - 8);
      if (!(*(v110 + 48))(v28, 1, v90))
      {
        (*(v110 + 8))(v28, v90);
      }

      if (*(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_34;
    }

    if (v32 != 2)
    {
      goto LABEL_34;
    }

LABEL_110:

    goto LABEL_34;
  }

  switch(v32)
  {
    case 3:
      goto LABEL_110;
    case 4:
      v92 = sub_24F9289E8();
      (*(*(v92 - 8) + 8))(v28, v92);
      break;
    case 5:
      goto LABEL_110;
  }

LABEL_34:
  v30 = v27 + v10[7];
  v31 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v33 = sub_24F928388();
      (*(*(v33 - 8) + 8))(v30, v33);
    }
  }

  v34 = v27 + v10[10];
  if (*(v34 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

LABEL_49:
  v35 = v8 + v9[7];
  if (*(v35 + 56) == 1)
  {
  }

  else if (!*(v35 + 56))
  {

    if (*(v35 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v35 + 16);
    }
  }

  v36 = v8 + v9[8];
  v37 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
  {
    v54 = swift_getEnumCaseMultiPayload();
    if (v54 == 2)
    {
      goto LABEL_156;
    }

    if (v54 != 1)
    {
      if (v54)
      {
        goto LABEL_55;
      }

      v55 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v55 - 8) + 48))(v36, 1, v55))
      {
        goto LABEL_55;
      }

      v56 = swift_getEnumCaseMultiPayload();
      if (v56 > 2)
      {
        if (v56 != 3)
        {
          if (v56 == 4)
          {
            v107 = sub_24F9289E8();
            (*(*(v107 - 8) + 8))(v36, v107);
            goto LABEL_55;
          }

          if (v56 != 5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_156;
      }

      if (v56)
      {
        if (v56 == 1)
        {
          v105 = sub_24F9289E8();
          v106 = *(v105 - 8);
          if (!(*(v106 + 48))(v36, 1, v105))
          {
            (*(v106 + 8))(v36, v105);
          }

          if (!*(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_55;
          }
        }

        else if (v56 != 2)
        {
          goto LABEL_55;
        }

LABEL_156:

        goto LABEL_55;
      }

      v72 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v73 = type metadata accessor for JSColor();
      if ((*(*(v73 - 8) + 48))(v72, 1, v73))
      {
        goto LABEL_55;
      }

LABEL_106:
      v74 = sub_24F928388();
      (*(*(v74 - 8) + 8))(v72, v74);

      goto LABEL_55;
    }

    v68 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v69 = *(*(v68 - 8) + 48);
    if (v69(v36, 1, v68))
    {
LABEL_104:
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v71 = v36 + *(v70 + 48);
      if (v69(v71, 1, v68))
      {
        goto LABEL_105;
      }

      v76 = swift_getEnumCaseMultiPayload();
      if (v76 <= 2)
      {
        if (v76)
        {
          if (v76 != 1)
          {
            if (v76 != 2)
            {
              goto LABEL_105;
            }

LABEL_152:

            goto LABEL_105;
          }

          v101 = sub_24F9289E8();
          v102 = *(v101 - 8);
          if (!(*(v102 + 48))(v71, 1, v101))
          {
            (*(v102 + 8))(v71, v101);
          }

          if (*(v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
          }
        }

        else
        {

          v96 = v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
          v97 = type metadata accessor for JSColor();
          if (!(*(*(v97 - 8) + 48))(v96, 1, v97))
          {
            v98 = sub_24F928388();
            (*(*(v98 - 8) + 8))(v96, v98);
          }
        }

LABEL_105:
        v72 = v36 + *(v70 + 80);
        v73 = type metadata accessor for JSColor();
        if ((*(*(v73 - 8) + 48))(v72, 1, v73))
        {
          goto LABEL_55;
        }

        goto LABEL_106;
      }

      if (v76 != 3)
      {
        if (v76 == 4)
        {
          v104 = sub_24F9289E8();
          (*(*(v104 - 8) + 8))(v71, v104);
          goto LABEL_105;
        }

        if (v76 != 5)
        {
          goto LABEL_105;
        }
      }

      goto LABEL_152;
    }

    v75 = swift_getEnumCaseMultiPayload();
    if (v75 > 2)
    {
      if (v75 != 3)
      {
        if (v75 == 4)
        {
          v103 = sub_24F9289E8();
          (*(*(v103 - 8) + 8))(v36, v103);
          goto LABEL_104;
        }

        if (v75 != 5)
        {
          goto LABEL_104;
        }
      }
    }

    else
    {
      if (!v75)
      {

        v93 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v94 = type metadata accessor for JSColor();
        if (!(*(*(v94 - 8) + 48))(v93, 1, v94))
        {
          v95 = sub_24F928388();
          (*(*(v95 - 8) + 8))(v93, v95);
        }

        goto LABEL_104;
      }

      if (v75 == 1)
      {
        v99 = sub_24F9289E8();
        v100 = *(v99 - 8);
        if (!(*(v100 + 48))(v36, 1, v99))
        {
          (*(v100 + 8))(v36, v99);
        }

        if (*(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_104;
      }

      if (v75 != 2)
      {
        goto LABEL_104;
      }
    }

    goto LABEL_104;
  }

LABEL_55:
  if (*(v3 + v5[23]))
  {
  }

  v38 = v3 + v5[24];
  v39 = type metadata accessor for Page.Background(0);
  if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
  {
    v48 = swift_getEnumCaseMultiPayload();
    if (v48 <= 1)
    {
      if (v48)
      {
        if (v48 == 1)
        {
          v50 = sub_24F9289E8();
          (*(*(v50 - 8) + 8))(v38, v50);
          v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8) + 48);
          v52 = sub_24F922348();
          v53 = *(v52 - 8);
          if (!(*(v53 + 48))(v38 + v51, 1, v52))
          {
            (*(v53 + 8))(v38 + v51, v52);
          }
        }
      }

      else
      {
        v67 = sub_24F9289E8();
        (*(*(v67 - 8) + 8))(v38, v67);
      }
    }

    else if (v48 == 2)
    {
      v57 = sub_24F9289E8();
      v58 = *(v57 - 8);
      if (!(*(v58 + 48))(v38, 1, v57))
      {
        (*(v58 + 8))(v38, v57);
      }

      v59 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v60 = type metadata accessor for GSKVideo();
      if (!(*(*(v60 - 1) + 48))(v59, 1, v60))
      {
        v61 = sub_24F91F4A8();
        (*(*(v61 - 8) + 8))(v59, v61);
        (*(v58 + 8))(v59 + v60[5], v57);
        v62 = v60[9];
        v63 = sub_24F928698();
        v64 = *(v63 - 8);
        v65 = *(v64 + 48);
        if (!v65(v59 + v62, 1, v63))
        {
          (*(v64 + 8))(v59 + v62, v63);
        }

        v66 = v60[10];
        if (!v65(v59 + v66, 1, v63))
        {
          (*(v64 + 8))(v59 + v66, v63);
        }
      }
    }

    else if (v48 == 3 || v48 == 4)
    {
      v49 = sub_24F928388();
      (*(*(v49 - 8) + 8))(v38, v49);
    }
  }

  v40 = v3 + v5[27];
  if (*(v40 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v41 = v3 + v5[28];
  if (*(v41 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = v3 + v5[29];
  if (*(v42 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v43 = v3 + v5[30];
  if (*(v43 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v44 = v3 + *(v1 + 40);
  if (*(v44 + 40))
  {
    if (*(v44 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v44);
    }
  }

  else
  {
  }

  v45 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = sub_24F921B58();
    (*(*(v46 - 8) + 8))(v3 + v45, v46);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EE4C4A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE4C50C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InviteFriendsPageView.PageContent(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EE43650(a1, v6, a2);
}

uint64_t sub_24EE4C594()
{

  return swift_deallocObject();
}

uint64_t sub_24EE4C5CC()
{
  v1 = type metadata accessor for InviteFriendsPageView.PageContent(0);
  v2 = *(*(v1 - 8) + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v3 = v0 + ((v2 + 56) & ~v2);
  v4 = sub_24F92A708();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = type metadata accessor for Page(0);

  v6 = v5[6];
  v7 = sub_24F928818();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  v8 = v3 + v5[20];
  v9 = type metadata accessor for HeaderPresentation(0);
  if ((*(*(v9 - 1) + 48))(v8, 1, v9))
  {
    goto LABEL_55;
  }

  v10 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v11 = (*(v10 - 1) + 48);
  v109 = *v11;
  if (!(*v11)(v8, 1, v10))
  {

    v12 = v8 + v10[5];
    v13 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      goto LABEL_4;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v89 = sub_24F9289E8();
          (*(*(v89 - 8) + 8))(v12, v89);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_4:
          v14 = v8 + v10[7];
          v15 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v17 = sub_24F928388();
              (*(*(v17 - 8) + 8))(v14, v17);
            }
          }

          v18 = v8 + v10[10];
          if (*(v18 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v18);
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v77 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v78 = type metadata accessor for JSColor();
        if (!(*(*(v78 - 8) + 48))(v77, 1, v78))
        {
          v79 = sub_24F928388();
          (*(*(v79 - 8) + 8))(v77, v79);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v86 = sub_24F9289E8();
        v87 = *(v86 - 8);
        if (!(*(v87 + 48))(v12, 1, v86))
        {
          (*(v87 + 8))(v12, v86);
        }

        if (*(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_4;
  }

LABEL_15:
  v19 = v8 + v9[5];
  if (v109(v19, 1, v10))
  {
    goto LABEL_32;
  }

  v20 = v19 + v10[5];
  v21 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    goto LABEL_17;
  }

  v24 = swift_getEnumCaseMultiPayload();
  if (v24 <= 2)
  {
    if (!v24)
    {

      v80 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v81 = type metadata accessor for JSColor();
      if (!(*(*(v81 - 8) + 48))(v80, 1, v81))
      {
        v82 = sub_24F928388();
        (*(*(v82 - 8) + 8))(v80, v82);
      }

      goto LABEL_17;
    }

    if (v24 == 1)
    {
      v88 = sub_24F9289E8();
      v108 = *(v88 - 8);
      if (!(*(v108 + 48))(v20, 1, v88))
      {
        (*(v108 + 8))(v20, v88);
      }

      if (*(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_17;
    }

    if (v24 != 2)
    {
      goto LABEL_17;
    }

LABEL_45:

    goto LABEL_17;
  }

  switch(v24)
  {
    case 3:
      goto LABEL_45;
    case 4:
      v91 = sub_24F9289E8();
      (*(*(v91 - 8) + 8))(v20, v91);
      break;
    case 5:
      goto LABEL_45;
  }

LABEL_17:
  v22 = v19 + v10[7];
  v23 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v25 = sub_24F928388();
      (*(*(v25 - 8) + 8))(v22, v25);
    }
  }

  v26 = v19 + v10[10];
  if (*(v26 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

LABEL_32:
  v27 = v8 + v9[6];
  if (v109(v27, 1, v10))
  {
    goto LABEL_49;
  }

  v28 = v27 + v10[5];
  v29 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    goto LABEL_34;
  }

  v32 = swift_getEnumCaseMultiPayload();
  if (v32 <= 2)
  {
    if (!v32)
    {

      v83 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v84 = type metadata accessor for JSColor();
      if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
      {
        v85 = sub_24F928388();
        (*(*(v85 - 8) + 8))(v83, v85);
      }

      goto LABEL_34;
    }

    if (v32 == 1)
    {
      v90 = sub_24F9289E8();
      v110 = *(v90 - 8);
      if (!(*(v110 + 48))(v28, 1, v90))
      {
        (*(v110 + 8))(v28, v90);
      }

      if (*(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_34;
    }

    if (v32 != 2)
    {
      goto LABEL_34;
    }

LABEL_110:

    goto LABEL_34;
  }

  switch(v32)
  {
    case 3:
      goto LABEL_110;
    case 4:
      v92 = sub_24F9289E8();
      (*(*(v92 - 8) + 8))(v28, v92);
      break;
    case 5:
      goto LABEL_110;
  }

LABEL_34:
  v30 = v27 + v10[7];
  v31 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v33 = sub_24F928388();
      (*(*(v33 - 8) + 8))(v30, v33);
    }
  }

  v34 = v27 + v10[10];
  if (*(v34 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

LABEL_49:
  v35 = v8 + v9[7];
  if (*(v35 + 56) == 1)
  {
  }

  else if (!*(v35 + 56))
  {

    if (*(v35 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v35 + 16);
    }
  }

  v36 = v8 + v9[8];
  v37 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
  {
    v54 = swift_getEnumCaseMultiPayload();
    if (v54 == 2)
    {
      goto LABEL_156;
    }

    if (v54 != 1)
    {
      if (v54)
      {
        goto LABEL_55;
      }

      v55 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v55 - 8) + 48))(v36, 1, v55))
      {
        goto LABEL_55;
      }

      v56 = swift_getEnumCaseMultiPayload();
      if (v56 > 2)
      {
        if (v56 != 3)
        {
          if (v56 == 4)
          {
            v107 = sub_24F9289E8();
            (*(*(v107 - 8) + 8))(v36, v107);
            goto LABEL_55;
          }

          if (v56 != 5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_156;
      }

      if (v56)
      {
        if (v56 == 1)
        {
          v105 = sub_24F9289E8();
          v106 = *(v105 - 8);
          if (!(*(v106 + 48))(v36, 1, v105))
          {
            (*(v106 + 8))(v36, v105);
          }

          if (!*(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_55;
          }
        }

        else if (v56 != 2)
        {
          goto LABEL_55;
        }

LABEL_156:

        goto LABEL_55;
      }

      v72 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v73 = type metadata accessor for JSColor();
      if ((*(*(v73 - 8) + 48))(v72, 1, v73))
      {
        goto LABEL_55;
      }

LABEL_106:
      v74 = sub_24F928388();
      (*(*(v74 - 8) + 8))(v72, v74);

      goto LABEL_55;
    }

    v68 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v69 = *(*(v68 - 8) + 48);
    if (v69(v36, 1, v68))
    {
LABEL_104:
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v71 = v36 + *(v70 + 48);
      if (v69(v71, 1, v68))
      {
        goto LABEL_105;
      }

      v76 = swift_getEnumCaseMultiPayload();
      if (v76 <= 2)
      {
        if (v76)
        {
          if (v76 != 1)
          {
            if (v76 != 2)
            {
              goto LABEL_105;
            }

LABEL_152:

            goto LABEL_105;
          }

          v101 = sub_24F9289E8();
          v102 = *(v101 - 8);
          if (!(*(v102 + 48))(v71, 1, v101))
          {
            (*(v102 + 8))(v71, v101);
          }

          if (*(v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
          }
        }

        else
        {

          v96 = v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
          v97 = type metadata accessor for JSColor();
          if (!(*(*(v97 - 8) + 48))(v96, 1, v97))
          {
            v98 = sub_24F928388();
            (*(*(v98 - 8) + 8))(v96, v98);
          }
        }

LABEL_105:
        v72 = v36 + *(v70 + 80);
        v73 = type metadata accessor for JSColor();
        if ((*(*(v73 - 8) + 48))(v72, 1, v73))
        {
          goto LABEL_55;
        }

        goto LABEL_106;
      }

      if (v76 != 3)
      {
        if (v76 == 4)
        {
          v104 = sub_24F9289E8();
          (*(*(v104 - 8) + 8))(v71, v104);
          goto LABEL_105;
        }

        if (v76 != 5)
        {
          goto LABEL_105;
        }
      }

      goto LABEL_152;
    }

    v75 = swift_getEnumCaseMultiPayload();
    if (v75 > 2)
    {
      if (v75 != 3)
      {
        if (v75 == 4)
        {
          v103 = sub_24F9289E8();
          (*(*(v103 - 8) + 8))(v36, v103);
          goto LABEL_104;
        }

        if (v75 != 5)
        {
          goto LABEL_104;
        }
      }
    }

    else
    {
      if (!v75)
      {

        v93 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v94 = type metadata accessor for JSColor();
        if (!(*(*(v94 - 8) + 48))(v93, 1, v94))
        {
          v95 = sub_24F928388();
          (*(*(v95 - 8) + 8))(v93, v95);
        }

        goto LABEL_104;
      }

      if (v75 == 1)
      {
        v99 = sub_24F9289E8();
        v100 = *(v99 - 8);
        if (!(*(v100 + 48))(v36, 1, v99))
        {
          (*(v100 + 8))(v36, v99);
        }

        if (*(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_104;
      }

      if (v75 != 2)
      {
        goto LABEL_104;
      }
    }

    goto LABEL_104;
  }

LABEL_55:
  if (*(v3 + v5[23]))
  {
  }

  v38 = v3 + v5[24];
  v39 = type metadata accessor for Page.Background(0);
  if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
  {
    v48 = swift_getEnumCaseMultiPayload();
    if (v48 <= 1)
    {
      if (v48)
      {
        if (v48 == 1)
        {
          v50 = sub_24F9289E8();
          (*(*(v50 - 8) + 8))(v38, v50);
          v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8) + 48);
          v52 = sub_24F922348();
          v53 = *(v52 - 8);
          if (!(*(v53 + 48))(v38 + v51, 1, v52))
          {
            (*(v53 + 8))(v38 + v51, v52);
          }
        }
      }

      else
      {
        v67 = sub_24F9289E8();
        (*(*(v67 - 8) + 8))(v38, v67);
      }
    }

    else if (v48 == 2)
    {
      v57 = sub_24F9289E8();
      v58 = *(v57 - 8);
      if (!(*(v58 + 48))(v38, 1, v57))
      {
        (*(v58 + 8))(v38, v57);
      }

      v59 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v60 = type metadata accessor for GSKVideo();
      if (!(*(*(v60 - 1) + 48))(v59, 1, v60))
      {
        v61 = sub_24F91F4A8();
        (*(*(v61 - 8) + 8))(v59, v61);
        (*(v58 + 8))(v59 + v60[5], v57);
        v62 = v60[9];
        v63 = sub_24F928698();
        v64 = *(v63 - 8);
        v65 = *(v64 + 48);
        if (!v65(v59 + v62, 1, v63))
        {
          (*(v64 + 8))(v59 + v62, v63);
        }

        v66 = v60[10];
        if (!v65(v59 + v66, 1, v63))
        {
          (*(v64 + 8))(v59 + v66, v63);
        }
      }
    }

    else if (v48 == 3 || v48 == 4)
    {
      v49 = sub_24F928388();
      (*(*(v49 - 8) + 8))(v38, v49);
    }
  }

  v40 = v3 + v5[27];
  if (*(v40 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v41 = v3 + v5[28];
  if (*(v41 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = v3 + v5[29];
  if (*(v42 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v43 = v3 + v5[30];
  if (*(v43 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v44 = v3 + *(v1 + 40);
  if (*(v44 + 40))
  {
    if (*(v44 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v44);
    }
  }

  else
  {
  }

  v45 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = sub_24F921B58();
    (*(*(v46 - 8) + 8))(v3 + v45, v46);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EE4E094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InviteFriendsPageView.PageContent(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_24EE43ABC(a1, v2 + 16, v6, a2);
}

unint64_t sub_24EE4E118()
{
  result = qword_27F2315E0;
  if (!qword_27F2315E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2315C0);
    sub_24EE4E2C8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2315F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2315F8);
    type metadata accessor for InviteFriendsPageView.ShelfListView(255);
    sub_24EE4A2A0(&qword_27F231600, type metadata accessor for InviteFriendsPageView.ShelfListView);
    swift_getOpaqueTypeConformance2();
    sub_24E8F20E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231608);
    sub_24EE4E33C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2315E0);
  }

  return result;
}

unint64_t sub_24EE4E2C8()
{
  result = qword_27F2315E8;
  if (!qword_27F2315E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2315E8);
  }

  return result;
}

unint64_t sub_24EE4E33C()
{
  result = qword_27F231610;
  if (!qword_27F231610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231608);
    type metadata accessor for InviteFriendsPageView.ShelfListView(255);
    sub_24EE4A2A0(&qword_27F231600, type metadata accessor for InviteFriendsPageView.ShelfListView);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231610);
  }

  return result;
}

unint64_t sub_24EE4E504()
{
  result = qword_27F255170;
  if (!qword_27F255170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231648);
    sub_24EE4E590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F255170);
  }

  return result;
}

unint64_t sub_24EE4E590()
{
  result = qword_27F231650;
  if (!qword_27F231650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F2550B0);
    sub_24EE4A2A0(&qword_27F254FD0, type metadata accessor for PlayerPickerContinueButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231650);
  }

  return result;
}

unint64_t sub_24EE4E64C()
{
  result = qword_27F231658;
  if (!qword_27F231658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F255190);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231648);
    sub_24EE4E504();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231658);
  }

  return result;
}

uint64_t sub_24EE4E740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_24EE4E7B8(int8x16_t *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v5 = a1[2].i8[0];
  sub_24EE4E850(v4, v3);
  return sub_24EE48498(v4);
}

uint64_t sub_24EE4E888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_24EE4E8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InviteFriendsPageView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EE429F8(a1, v6, a2);
}

uint64_t sub_24EE4E98C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EE4EA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GSKShelf();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EE4EAD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GSKShelf();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24EE4EB90()
{
  type metadata accessor for GSKShelf();
  if (v0 <= 0x3F)
  {
    sub_24EE4EC40(319, &qword_27F2316A8, &unk_27F21E480, &unk_24F944D20, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EE4EC40(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_24EE4ECB8()
{
  result = qword_27F2316B0;
  if (!qword_27F2316B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2316B8);
    sub_24E602068(&qword_27F2315B0, &qword_27F2315A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2316B0);
  }

  return result;
}

unint64_t sub_24EE4EDDC()
{
  result = qword_27F2316F0;
  if (!qword_27F2316F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2316E0);
    sub_24E602068(&qword_27F212910, &qword_27F211B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2316F0);
  }

  return result;
}

unint64_t sub_24EE4EE94()
{
  result = qword_27F2316F8;
  if (!qword_27F2316F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2316E8);
    sub_24EE53A44(&qword_27F231700, &qword_27F231708, &unk_24F9A6AA0, sub_24EE4EF44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2316F8);
  }

  return result;
}

unint64_t sub_24EE4EF44()
{
  result = qword_27F231710;
  if (!qword_27F231710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231718);
    sub_24E602068(&qword_27F231720, &qword_27F231728);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231710);
  }

  return result;
}

unint64_t sub_24EE4EFFC()
{
  result = qword_27F231738;
  if (!qword_27F231738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2316C8);
    sub_24E602068(&qword_27F231740, &qword_27F231748);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231738);
  }

  return result;
}

unint64_t sub_24EE4F0E0()
{
  result = qword_27F231750;
  if (!qword_27F231750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2316D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2316C8);
    sub_24EE4EFFC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231750);
  }

  return result;
}

unint64_t sub_24EE4F1A8()
{
  result = qword_27F231768;
  if (!qword_27F231768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2316D8);
    sub_24EE4F0E0();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231768);
  }

  return result;
}

uint64_t sub_24EE4F2C0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocObject();
}

unint64_t sub_24EE4F314()
{
  result = qword_27F2317A8;
  if (!qword_27F2317A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231770);
    sub_24F924C38();
    sub_24E602068(&qword_27F2317A0, &qword_27F231770);
    sub_24EE4A2A0(&qword_27F21A8C0, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F21B728, &unk_27F2552C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2317A8);
  }

  return result;
}

uint64_t sub_24EE4F494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231708);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EE4F530()
{
  v1 = *(*(type metadata accessor for InviteFriendsPageView.ShelfListView(0) - 8) + 80);
  v2 = v0 + ((v1 + 16) & ~v1);
  v3 = sub_24F92AA48();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = type metadata accessor for GSKShelf();
  v5 = v4[5];
  v6 = sub_24F929608();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  v8 = v2 + v4[6];
  v9 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v10 = *(*(v9 - 1) + 48);
  if (!v10(v8, 1, v9))
  {

    v11 = v8 + v9[5];
    v12 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      goto LABEL_5;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v63 = sub_24F9289E8();
          (*(*(v63 - 8) + 8))(v11, v63);
          goto LABEL_5;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_5:
          v13 = v8 + v9[7];
          v14 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v16 = sub_24F928388();
              (*(*(v16 - 8) + 8))(v13, v16);
            }
          }

          v17 = v8 + v9[10];
          if (*(v17 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v17);
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v51 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v52 = type metadata accessor for JSColor();
        if (!(*(*(v52 - 8) + 48))(v51, 1, v52))
        {
          v53 = sub_24F928388();
          (*(*(v53 - 8) + 8))(v51, v53);
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v60 = sub_24F9289E8();
        v61 = *(v60 - 8);
        if (!(*(v61 + 48))(v11, 1, v60))
        {
          (*(v61 + 8))(v11, v60);
        }

        if (*(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_5;
  }

LABEL_16:
  v18 = type metadata accessor for HeaderPresentation(0);
  v19 = v8 + v18[5];
  if (v10(v19, 1, v9))
  {
    goto LABEL_33;
  }

  v20 = v19 + v9[5];
  v21 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    goto LABEL_18;
  }

  v24 = swift_getEnumCaseMultiPayload();
  if (v24 <= 2)
  {
    if (!v24)
    {

      v54 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v55 = type metadata accessor for JSColor();
      if (!(*(*(v55 - 8) + 48))(v54, 1, v55))
      {
        v56 = sub_24F928388();
        (*(*(v56 - 8) + 8))(v54, v56);
      }

      goto LABEL_18;
    }

    if (v24 == 1)
    {
      v62 = sub_24F9289E8();
      v86 = *(v62 - 8);
      if (!(*(v86 + 48))(v20, 1, v62))
      {
        (*(v86 + 8))(v20, v62);
      }

      if (*(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_18;
    }

    if (v24 != 2)
    {
      goto LABEL_18;
    }

LABEL_46:

    goto LABEL_18;
  }

  switch(v24)
  {
    case 3:
      goto LABEL_46;
    case 4:
      v65 = sub_24F9289E8();
      (*(*(v65 - 8) + 8))(v20, v65);
      break;
    case 5:
      goto LABEL_46;
  }

LABEL_18:
  v22 = v19 + v9[7];
  v23 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v25 = sub_24F928388();
      (*(*(v25 - 8) + 8))(v22, v25);
    }
  }

  v26 = v19 + v9[10];
  if (*(v26 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

LABEL_33:
  v27 = v8 + v18[6];
  if (v10(v27, 1, v9))
  {
    goto LABEL_50;
  }

  v28 = v27 + v9[5];
  v29 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    goto LABEL_35;
  }

  v32 = swift_getEnumCaseMultiPayload();
  if (v32 <= 2)
  {
    if (!v32)
    {

      v57 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v58 = type metadata accessor for JSColor();
      if (!(*(*(v58 - 8) + 48))(v57, 1, v58))
      {
        v59 = sub_24F928388();
        (*(*(v59 - 8) + 8))(v57, v59);
      }

      goto LABEL_35;
    }

    if (v32 == 1)
    {
      v64 = sub_24F9289E8();
      v87 = *(v64 - 8);
      if (!(*(v87 + 48))(v28, 1, v64))
      {
        (*(v87 + 8))(v28, v64);
      }

      if (*(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_35;
    }

    if (v32 != 2)
    {
      goto LABEL_35;
    }

LABEL_84:

    goto LABEL_35;
  }

  switch(v32)
  {
    case 3:
      goto LABEL_84;
    case 4:
      v66 = sub_24F9289E8();
      (*(*(v66 - 8) + 8))(v28, v66);
      break;
    case 5:
      goto LABEL_84;
  }

LABEL_35:
  v30 = v27 + v9[7];
  v31 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v33 = sub_24F928388();
      (*(*(v33 - 8) + 8))(v30, v33);
    }
  }

  v34 = v27 + v9[10];
  if (*(v34 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

LABEL_50:
  v35 = v8 + v18[7];
  if (*(v35 + 56) == 1)
  {
  }

  else if (!*(v35 + 56))
  {

    if (*(v35 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v35 + 16);
    }
  }

  v36 = v8 + v18[8];
  v37 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
  {
    v42 = swift_getEnumCaseMultiPayload();
    if (v42 == 2)
    {
      goto LABEL_125;
    }

    if (v42 != 1)
    {
      if (v42)
      {
        goto LABEL_56;
      }

      v43 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v43 - 8) + 48))(v36, 1, v43))
      {
        goto LABEL_56;
      }

      v44 = swift_getEnumCaseMultiPayload();
      if (v44 > 2)
      {
        if (v44 != 3)
        {
          if (v44 == 4)
          {
            v85 = sub_24F9289E8();
            (*(*(v85 - 8) + 8))(v36, v85);
            goto LABEL_56;
          }

          if (v44 != 5)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_125;
      }

      if (v44)
      {
        if (v44 == 1)
        {
          v83 = sub_24F9289E8();
          v84 = *(v83 - 8);
          if (!(*(v84 + 48))(v36, 1, v83))
          {
            (*(v84 + 8))(v36, v83);
          }

          if (!*(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_56;
          }
        }

        else if (v44 != 2)
        {
          goto LABEL_56;
        }

LABEL_125:

        goto LABEL_56;
      }

      v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
LABEL_144:
      v79 = v36 + v73;
      v80 = type metadata accessor for JSColor();
      if (!(*(*(v80 - 8) + 48))(v79, 1, v80))
      {
        v81 = sub_24F928388();
        (*(*(v81 - 8) + 8))(v79, v81);
      }

      goto LABEL_56;
    }

    v45 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v46 = *(*(v45 - 8) + 48);
    if (v46(v36, 1, v45))
    {
LABEL_75:
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v48 = v36 + *(v47 + 48);
      if (!v46(v48, 1, v45))
      {
        v49 = swift_getEnumCaseMultiPayload();
        if (v49 <= 2)
        {
          switch(v49)
          {
            case 0:

              v67 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
              v68 = type metadata accessor for JSColor();
              if (!(*(*(v68 - 8) + 48))(v67, 1, v68))
              {
                v69 = sub_24F928388();
                (*(*(v69 - 8) + 8))(v67, v69);
              }

              goto LABEL_143;
            case 1:
              v74 = sub_24F9289E8();
              v75 = *(v74 - 8);
              if (!(*(v75 + 48))(v48, 1, v74))
              {
                (*(v75 + 8))(v48, v74);
              }

              if (!*(v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
              {
                goto LABEL_143;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_143;
          }

LABEL_137:

          goto LABEL_143;
        }

        switch(v49)
        {
          case 3:
            goto LABEL_137;
          case 4:
            v78 = sub_24F9289E8();
            (*(*(v78 - 8) + 8))(v48, v78);
            break;
          case 5:
            goto LABEL_137;
        }
      }

LABEL_143:
      v73 = *(v47 + 80);
      goto LABEL_144;
    }

    v50 = swift_getEnumCaseMultiPayload();
    if (v50 > 2)
    {
      if (v50 != 3)
      {
        if (v50 == 4)
        {
          v82 = sub_24F9289E8();
          (*(*(v82 - 8) + 8))(v36, v82);
          goto LABEL_75;
        }

        if (v50 != 5)
        {
          goto LABEL_75;
        }
      }
    }

    else
    {
      if (!v50)
      {

        v70 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v71 = type metadata accessor for JSColor();
        if (!(*(*(v71 - 8) + 48))(v70, 1, v71))
        {
          v72 = sub_24F928388();
          (*(*(v72 - 8) + 8))(v70, v72);
        }

        goto LABEL_75;
      }

      if (v50 == 1)
      {
        v76 = sub_24F9289E8();
        v77 = *(v76 - 8);
        if (!(*(v77 + 48))(v36, 1, v76))
        {
          (*(v77 + 8))(v36, v76);
        }

        if (*(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_75;
      }

      if (v50 != 2)
      {
        goto LABEL_75;
      }
    }

    goto LABEL_75;
  }

LABEL_56:
  v38 = v2 + v4[13];
  if (*(v38 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v39 = v2 + v4[14];
  if (*(v39 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v40 = v2 + v4[16];
  if (*(v40 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  return swift_deallocObject();
}

uint64_t sub_24EE509EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InviteFriendsPageView.ShelfListView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EE46654(a1, v6, a2);
}

unint64_t sub_24EE50A6C()
{
  result = qword_27F231830;
  if (!qword_27F231830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231800);
    sub_24EE50B24();
    sub_24E602068(&qword_27F231848, &qword_27F231850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231830);
  }

  return result;
}

unint64_t sub_24EE50B24()
{
  result = qword_27F231838;
  if (!qword_27F231838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231840);
    sub_24E602068(&qword_27F231828, &qword_27F231820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231838);
  }

  return result;
}

unint64_t sub_24EE50BFC()
{
  result = qword_27F231890;
  if (!qword_27F231890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231890);
  }

  return result;
}

unint64_t sub_24EE50CBC()
{
  result = qword_27F2318B8;
  if (!qword_27F2318B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318B0);
    sub_24EE50D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2318B8);
  }

  return result;
}

unint64_t sub_24EE50D48()
{
  result = qword_27F2318C0;
  if (!qword_27F2318C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318C8);
    sub_24E602068(&qword_27F2318D0, &qword_27F2318D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2318C0);
  }

  return result;
}

unint64_t sub_24EE50E00()
{
  result = qword_27F2318E0;
  if (!qword_27F2318E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318B0);
    sub_24EE50CBC();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2318E0);
  }

  return result;
}

unint64_t sub_24EE50F18()
{
  result = qword_27F231900;
  if (!qword_27F231900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318F8);
    sub_24EE50FD4();
    sub_24EE4A2A0(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231900);
  }

  return result;
}

unint64_t sub_24EE50FD4()
{
  result = qword_27F231908;
  if (!qword_27F231908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231910);
    sub_24EE5108C();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231908);
  }

  return result;
}

unint64_t sub_24EE5108C()
{
  result = qword_27F231918;
  if (!qword_27F231918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231920);
    sub_24EE51118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231918);
  }

  return result;
}

unint64_t sub_24EE51118()
{
  result = qword_27F231928;
  if (!qword_27F231928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231930);
    sub_24EE511A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231928);
  }

  return result;
}

unint64_t sub_24EE511A4()
{
  result = qword_27F231938;
  if (!qword_27F231938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231940);
    sub_24E602068(&qword_27F231948, &qword_27F231950);
    sub_24E602068(&qword_27F231958, &qword_27F231960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231938);
  }

  return result;
}

unint64_t sub_24EE51288()
{
  result = qword_27F231968;
  if (!qword_27F231968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318F8);
    sub_24EE50F18();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231968);
  }

  return result;
}

uint64_t sub_24EE51390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InviteFriendsRow(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EE514D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InviteFriendsRow(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24EE5160C()
{
  type metadata accessor for InviteFriendsRow(319);
  if (v0 <= 0x3F)
  {
    sub_24EE4EC40(319, &qword_27F2316A8, &unk_27F21E480, &unk_24F944D20, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_24EE4EC40(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_24EE4A730(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24EE5175C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKShelf();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EE517DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKShelf();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24EE5184C()
{
  result = type metadata accessor for GSKShelf();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EE518B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2316C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231758);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2316D8);
  sub_24EE4F0E0();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231760);
  sub_24EE4F1A8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24EE519D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2317E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2317D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2317D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2317C8);
  sub_24F924118();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2317C0);
  sub_24F923C68();
  sub_24E602068(&qword_27F2317F8, &qword_27F2317C0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24EE51BF8()
{
  result = qword_27F2319A0;
  if (!qword_27F2319A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231998);
    sub_24E602068(&qword_27F231848, &qword_27F231850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2319A0);
  }

  return result;
}

unint64_t sub_24EE51CD4()
{
  result = qword_27F2319C0;
  if (!qword_27F2319C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2319B8);
    sub_24E602068(&qword_27F2319C8, &qword_27F2319D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2319C0);
  }

  return result;
}

unint64_t sub_24EE51D8C()
{
  result = qword_27F2319D8;
  if (!qword_27F2319D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2319B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2319B8);
    sub_24EE51CD4();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2319D8);
  }

  return result;
}

unint64_t sub_24EE51EA4()
{
  result = qword_27F2319F0;
  if (!qword_27F2319F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2319F0);
  }

  return result;
}

unint64_t sub_24EE51EF8()
{
  result = qword_27F2319F8;
  if (!qword_27F2319F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2319E8);
    sub_24EE51EA4();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2319F8);
  }

  return result;
}

unint64_t sub_24EE52000()
{
  result = qword_27F231A18;
  if (!qword_27F231A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A08);
    type metadata accessor for OverlayGameControllerControls(255);
    sub_24EE4A2A0(&qword_27F231A10, type metadata accessor for OverlayGameControllerControls);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231A18);
  }

  return result;
}

unint64_t sub_24EE5213C()
{
  result = qword_27F231A30;
  if (!qword_27F231A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231A30);
  }

  return result;
}

unint64_t sub_24EE52190()
{
  result = qword_27F231A38;
  if (!qword_27F231A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A28);
    sub_24EE5213C();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231A38);
  }

  return result;
}

unint64_t sub_24EE52298()
{
  result = qword_27F231A50;
  if (!qword_27F231A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231A50);
  }

  return result;
}

unint64_t sub_24EE522EC()
{
  result = qword_27F231A58;
  if (!qword_27F231A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A48);
    sub_24EE52298();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231A58);
  }

  return result;
}

uint64_t sub_24EE523FC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EE52478()
{
  result = qword_27F231A88;
  if (!qword_27F231A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A90);
    sub_24E602068(&qword_27F212820, &qword_27F212828);
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231A88);
  }

  return result;
}

unint64_t sub_24EE52564()
{
  result = qword_27F231AA8;
  if (!qword_27F231AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231AB0);
    sub_24E602068(&qword_27F218C88, &qword_27F218C80);
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231AA8);
  }

  return result;
}

uint64_t objectdestroy_164Tm()
{
  v1 = v0;
  v67 = type metadata accessor for InviteFriendsPageView.InviteFriendsRowView(0);
  v2 = *(*(v67 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v67 - 8) + 64);
  v5 = v0 + v3;
  __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  v6 = type metadata accessor for InviteFriendsRow(0);
  v7 = v0 + v3 + v6[5];
  type metadata accessor for FriendSuggestion(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v62 = v4;
    v63 = (v2 + 16) & ~v2;
    v9 = type metadata accessor for Player(0);
    v10 = v9[6];
    v11 = sub_24F9289E8();
    v12 = (*(v11 - 8) + 8);
    v65 = *v12;
    v66 = *(v11 - 8);
    (*v12)(v7 + v10, v11);

    if (*(v7 + v9[9] + 8) != 1)
    {
    }

    v13 = v7 + v9[13];
    v14 = type metadata accessor for CallProviderConversationHandleSet();
    v64 = v1;
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {
      v15 = type metadata accessor for CallProviderConversationHandle();
      v16 = *(*(v15 - 8) + 48);
      if (!v16(v13, 1, v15))
      {

        v17 = *(type metadata accessor for CallProvider() + 24);
        if (!(*(v66 + 48))(v13 + v17, 1, v11))
        {
          v65(v13 + v17, v11);
        }
      }

      v18 = v13 + *(v14 + 20);
      if (!v16(v18, 1, v15))
      {

        v19 = *(type metadata accessor for CallProvider() + 24);
        if (!(*(v66 + 48))(v18 + v19, 1, v11))
        {
          v65(v18 + v19, v11);
        }
      }
    }

    if (*(v7 + v9[15] + 8))
    {
    }

    v20 = v7 + v9[16];
    PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
    if (!(*(*(PlayedTogetherInfo - 8) + 48))(v20, 1, PlayedTogetherInfo))
    {

      v22 = type metadata accessor for Game();
      v65(v20 + v22[18], v11);
      v23 = v22[19];
      if (!(*(v66 + 48))(v20 + v23, 1, v11))
      {
        v65(v20 + v23, v11);
      }

      v24 = v22[21];
      v25 = sub_24F920818();
      v26 = *(v25 - 8);
      if (!(*(v26 + 48))(v20 + v24, 1, v25))
      {
        (*(v26 + 8))(v20 + v24, v25);
      }
    }

    v27 = v7 + v9[17];
    ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
    if (!(*(*(ChallengeInfo - 8) + 48))(v27, 1, ChallengeInfo))
    {

      v29 = type metadata accessor for Game();
      v65(v27 + v29[18], v11);
      v30 = v29[19];
      if (!(*(v66 + 48))(v27 + v30, 1, v11))
      {
        v65(v27 + v30, v11);
      }

      v31 = v29[21];
      v32 = sub_24F920818();
      v33 = *(v32 - 8);
      if (!(*(v33 + 48))(v27 + v31, 1, v32))
      {
        (*(v33 + 8))(v27 + v31, v32);
      }
    }

    v34 = type metadata accessor for ActivityFriendSuggestion(0);
    v35 = v7 + *(v34 + 24);

    v36 = type metadata accessor for Game();
    v65(v35 + v36[18], v11);
    v37 = v36[19];
    if (!(*(v66 + 48))(v35 + v37, 1, v11))
    {
      v65(v35 + v37, v11);
    }

    v38 = v36[21];
    v39 = sub_24F920818();
    v40 = *(v39 - 8);
    if (!(*(v40 + 48))(v35 + v38, 1, v39))
    {
      (*(v40 + 8))(v35 + v38, v39);
    }

    v41 = *(v34 + 28);
    v42 = sub_24F91F648();
    (*(*(v42 - 8) + 8))(v7 + v41, v42);
    v3 = v63;
    v4 = v62;
    v1 = v64;
  }

  else
  {
  }

  v43 = v5 + v6[7];

  v44 = type metadata accessor for PlayerAvatar(0);
  v45 = *(v44 + 20);
  v46 = type metadata accessor for PlayerAvatar.Overlay(0);
  if (!(*(*(v46 - 8) + 48))(v43 + v45, 1, v46) && !swift_getEnumCaseMultiPayload())
  {
    v47 = sub_24F9289E8();
    (*(*(v47 - 8) + 8))(v43 + v45, v47);
  }

  v48 = v43 + *(v44 + 24);
  if (*(v48 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  v49 = v6[9];
  v50 = sub_24F9289E8();
  v51 = *(v50 - 8);
  if (!(*(v51 + 48))(v5 + v49, 1, v50))
  {
    (*(v51 + 8))(v5 + v49, v50);
  }

  v52 = v5 + v6[11];
  if (*(v52 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v53 = v5 + v6[13];
  if (*(v53 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v53);
  }

  v54 = v6[14];
  v55 = sub_24F929608();
  v56 = *(v55 - 8);
  if (!(*(v56 + 48))(v5 + v54, 1, v55))
  {
    (*(v56 + 8))(v5 + v54, v55);
  }

  v57 = v5 + v6[15];
  if (*(v57 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v58 = v5 + *(v67 + 24);
  if (*(v58 + 40))
  {
    if (*(v58 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v58);
    }
  }

  else
  {
  }

  v59 = *(v67 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = sub_24F921B58();
    (*(*(v60 - 8) + 8))(v5 + v59, v60);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v1 + ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_24EE53198()
{
  v1 = *(type metadata accessor for InviteFriendsPageView.InviteFriendsRowView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_24EE47EC8(v0 + v2, v3);
}

unint64_t sub_24EE53228()
{
  result = qword_27F231AB8;
  if (!qword_27F231AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231AC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231998);
    sub_24EE51BF8();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231AB8);
  }

  return result;
}

uint64_t sub_24EE5331C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A78);
  type metadata accessor for InviteFriendsRowComponent(255);
  sub_24EE4A2A0(&qword_27F231A70, type metadata accessor for InviteFriendsRowComponent);
  swift_getOpaqueTypeConformance2();
  sub_24EE523FC(&qword_27F231A80, &qword_27F231A78, &unk_24F9A6E68, sub_24EE52478);
  swift_getOpaqueTypeConformance2();
  sub_24EE523FC(&qword_27F231AA0, &qword_27F231A98, &unk_24F9A6E78, sub_24EE52564);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24EE53500()
{
  result = qword_27F231AE0;
  if (!qword_27F231AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231AD8);
    sub_24E602068(&qword_27F231AE8, &qword_27F231AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231AE0);
  }

  return result;
}

unint64_t sub_24EE535B8()
{
  result = qword_27F231AF8;
  if (!qword_27F231AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231AD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231AD8);
    sub_24EE53500();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231AF8);
  }

  return result;
}

unint64_t sub_24EE536D0()
{
  result = qword_27F231B18;
  if (!qword_27F231B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B10);
    sub_24EE5375C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231B18);
  }

  return result;
}

unint64_t sub_24EE5375C()
{
  result = qword_27F231B20;
  if (!qword_27F231B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B28);
    sub_24EE537E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231B20);
  }

  return result;
}

unint64_t sub_24EE537E8()
{
  result = qword_27F231B30;
  if (!qword_27F231B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B38);
    sub_24EE53874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231B30);
  }

  return result;
}

unint64_t sub_24EE53874()
{
  result = qword_27F231B40;
  if (!qword_27F231B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B48);
    sub_24E602068(&qword_27F231B50, &qword_27F231B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231B40);
  }

  return result;
}

unint64_t sub_24EE5392C()
{
  result = qword_27F231B60;
  if (!qword_27F231B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B10);
    sub_24EE536D0();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231B60);
  }

  return result;
}

uint64_t sub_24EE53A44(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

GameStoreKit::BadgeValueViewAlignment_optional __swiftcall BadgeValueViewAlignment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t static BadgeCaptionCappingType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    v5 = *&v3 == 0;
    if (v3 == 0.0)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v4 = 0;
    }

    if (v2 == 0.0)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    return (v4 & 1) == 0 && v2 == v3;
  }
}

uint64_t sub_24EE53BF4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    v5 = *&v3 == 0;
    if (v3 == 0.0)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v4 = 0;
    }

    if (v2 == 0.0)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    return (v4 & 1) == 0 && v2 == v3;
  }
}

uint64_t BadgeViewLayout.Metrics.captionBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t BadgeViewLayout.Metrics.badgeValueStandardCompactSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t BadgeViewLayout.Metrics.badgeValueStandardRegularSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_24E612C80(a1, v1 + 80);
}

void BadgeViewLayout.Metrics.spacingType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
}

uint64_t BadgeViewLayout.Metrics.spacingType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 128) = *result;
  *(v1 + 136) = v2;
  return result;
}

void BadgeViewLayout.Metrics.captionCappingType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  *a1 = *(v1 + 144);
  *(a1 + 8) = v2;
}

uint64_t BadgeViewLayout.Metrics.captionCappingType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 144) = *result;
  *(v1 + 152) = v2;
  return result;
}

uint64_t BadgeViewLayout.Metrics.init(captionBottomSpace:badgeValueStandardCompactSpace:badgeValueStandardRegularSpace:valueBufferSpace:spacingType:captionCappingType:badgeType:isLabelLeading:valueViewAlignment:alignment:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, char a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v15 = *a4;
  v16 = *(a4 + 8);
  v17 = *a5;
  v18 = *(a5 + 8);
  v19 = *a6;
  v20 = *a8;
  sub_24E612C80(a1, a9);
  sub_24E612C80(a2, a9 + 40);
  result = sub_24E612C80(a3, a9 + 80);
  *(a9 + 120) = a10;
  *(a9 + 128) = v15;
  *(a9 + 136) = v16;
  *(a9 + 144) = v17;
  *(a9 + 152) = v18;
  *(a9 + 153) = v19;
  *(a9 + 154) = a7;
  *(a9 + 155) = v20;
  *(a9 + 160) = a11;
  return result;
}

uint64_t BadgeViewLayout.Metrics.badgeValueSpace(with:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92BF68();
  v4 = 80;
  if (v3)
  {
    v4 = 40;
  }

  return sub_24E615E00(v1 + v4, a1);
}

__n128 BadgeViewLayout.init(metrics:captionLabel:valueLabel:valueView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 144);
  *(a5 + 128) = *(a1 + 128);
  *(a5 + 144) = v8;
  *(a5 + 160) = *(a1 + 160);
  v9 = *(a1 + 80);
  *(a5 + 64) = *(a1 + 64);
  *(a5 + 80) = v9;
  v10 = *(a1 + 112);
  *(a5 + 96) = *(a1 + 96);
  *(a5 + 112) = v10;
  v11 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v11;
  v12 = *(a1 + 48);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = v12;
  sub_24E612C80(a2, a5 + 168);
  v13 = *(a3 + 16);
  *(a5 + 208) = *a3;
  *(a5 + 224) = v13;
  *(a5 + 240) = *(a3 + 32);
  result = *a4;
  v15 = *(a4 + 16);
  *(a5 + 248) = *a4;
  *(a5 + 264) = v15;
  *(a5 + 280) = *(a4 + 32);
  return result;
}

uint64_t BadgeViewLayout.measurements(fitting:in:)(void *a1)
{
  v2 = v1;
  v4 = sub_24F92CDB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(v1 + 208, v22, &unk_27F22B200);
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(v22, v23);
    sub_24F922298();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    sub_24E601704(v22, &unk_27F22B200);
    v9 = 0.0;
  }

  sub_24E60169C(v1 + 248, v22, &qword_27F229780);
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(v22, v23);
    sub_24F922298();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    sub_24E601704(v22, &qword_27F229780);
    v11 = 0.0;
  }

  __swift_project_boxed_opaque_existential_1((v1 + 168), *(v1 + 192));
  sub_24F922298();
  v13 = 0.0;
  if (v9 != 0.0 && v11 != 0.0)
  {
    v14 = 128;
    if (*(v1 + 136))
    {
      v14 = 120;
    }

    v13 = *(v1 + v14);
  }

  v15 = v9 + v11 + v13;
  if (v15 > v12)
  {
    v12 = v15;
  }

  if (*(v1 + 144))
  {
    v12 = v15;
  }

  v16 = [a1 traitCollection];
  v17 = sub_24F92BF68();

  v18 = 10;
  if (v17)
  {
    v18 = 5;
  }

  sub_24E615E00(&v2[v18], v22);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v19 = *(v5 + 8);
  v19(v7, v4);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v19(v7, v4);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t static BadgeViewLayout.measurements(valueLabelWidth:viewSize:captionLabelWidth:fitting:using:in:)(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = sub_24F92CDB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0.0;
  if (a3 != 0.0 && a4 != 0.0)
  {
    v16 = 128;
    if (*(a1 + 136))
    {
      v16 = 120;
    }

    v15 = *(a1 + v16);
  }

  v17 = a3 + a4 + v15;
  if (v17 > a6)
  {
    v18 = v17;
  }

  else
  {
    v18 = a6;
  }

  if (!*(a1 + 144))
  {
    v17 = v18;
  }

  v19 = [a2 traitCollection];
  v20 = sub_24F92BF68();

  v21 = 80;
  if (v20)
  {
    v21 = 40;
  }

  sub_24E615E00(a1 + v21, v25);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v22 = *(v12 + 8);
  v22(v14, v11);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v22(v14, v11);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

id BadgeViewLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v104 = a3;
  v101 = a2;
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v6 + 168), *(v6 + 192));
  sub_24F922288();
  v128.origin.x = a3;
  v128.origin.y = a4;
  v128.size.width = a5;
  v128.size.height = a6;
  MinX = CGRectGetMinX(v128);
  v17 = [a1 traitCollection];
  v18 = sub_24F92BF68();

  v19 = 80;
  if (v18)
  {
    v19 = 40;
  }

  sub_24E615E00(v7 + v19, &v111);
  __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v20 = *(v14 + 8);
  v20(v16, v13);
  __swift_project_boxed_opaque_existential_1(v7, *(v7 + 24));
  sub_24F9223C8();
  v21 = v104;
  __swift_destroy_boxed_opaque_existential_1(&v111);
  v129.origin.x = v21;
  v129.origin.y = a4;
  v129.size.width = a5;
  v105 = a6;
  v129.size.height = a6;
  CGRectGetWidth(v129);
  __swift_project_boxed_opaque_existential_1((v7 + 168), *(v7 + 192));
  sub_24F922228();
  sub_24E60169C(v7 + 208, &v111, &unk_27F22B200);
  v22 = *(&v112 + 1);
  sub_24E601704(&v111, &unk_27F22B200);
  if (v22 && *(v7 + 154) == 1)
  {
    sub_24E60169C(v7 + 208, &v125, &unk_27F22B200);
    v23 = *(&v126 + 1);
    if (*(&v126 + 1))
    {
      v24 = v127;
      v25 = __swift_project_boxed_opaque_existential_1(&v125, *(&v126 + 1));
      *(&v112 + 1) = v23;
      v113 = *(v24 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v111);
      (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, v25, v23);
      __swift_destroy_boxed_opaque_existential_1(&v125);
    }

    else
    {
      sub_24E601704(&v125, &unk_27F22B200);
      v111 = 0u;
      v112 = 0u;
      v113 = 0;
    }

    v125 = v111;
    v126 = v112;
    v127 = v113;
    sub_24E60169C(v7 + 248, &v122, &qword_27F229780);
  }

  else
  {
    sub_24E60169C(v7 + 248, &v125, &qword_27F229780);
    sub_24E60169C(v7 + 208, &v122, &unk_27F22B200);
    v27 = *(&v123 + 1);
    if (*(&v123 + 1))
    {
      v28 = v124;
      v29 = __swift_project_boxed_opaque_existential_1(&v122, *(&v123 + 1));
      *(&v112 + 1) = v27;
      v113 = *(v28 + 8);
      v30 = __swift_allocate_boxed_opaque_existential_1(&v111);
      (*(*(v27 - 8) + 16))(v30, v29, v27);
      __swift_destroy_boxed_opaque_existential_1(&v122);
    }

    else
    {
      sub_24E601704(&v122, &unk_27F22B200);
      v111 = 0u;
      v112 = 0u;
      v113 = 0;
    }

    v122 = v111;
    v123 = v112;
    v124 = v113;
  }

  v31 = [a1 traitCollection];
  v32 = sub_24F92BF88();

  if (v32)
  {
    v33 = v118;
  }

  else
  {
    v33 = v120;
  }

  if (v32)
  {
    v34 = v120;
  }

  else
  {
    v34 = v118;
  }

  sub_24E60169C(&v125, v33, &qword_27F229780);
  sub_24E60169C(&v122, v34, &qword_27F229780);
  sub_24E60169C(v120, &v111, &qword_27F229780);
  v35 = *(&v112 + 1);
  sub_24E601704(&v111, &qword_27F229780);
  if (!v35)
  {
    sub_24E60169C(v118, &v111, &qword_27F229780);
    v36 = *(&v112 + 1);
    sub_24E601704(&v111, &qword_27F229780);
    if (!v36)
    {
      goto LABEL_73;
    }
  }

  sub_24E60169C(v120, &v111, &qword_27F229780);
  v37 = *(&v112 + 1);
  sub_24E601704(&v111, &qword_27F229780);
  v38 = 0.0;
  if (v37)
  {
    sub_24E60169C(v118, &v111, &qword_27F229780);
    v39 = *(&v112 + 1);
    sub_24E601704(&v111, &qword_27F229780);
    if (v39)
    {
      v40 = 128;
      if (*(v7 + 136))
      {
        v40 = 120;
      }

      v38 = *(v7 + v40);
    }
  }

  sub_24E60169C(v120, &v116, &qword_27F229780);
  if (v117)
  {
    sub_24E612C80(&v116, &v111);
    __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
    v41 = v105;
    sub_24F922298();
    v43 = v42;
    MinX = v44;
    v130.origin.x = v21;
    v130.origin.y = a4;
    v130.size.width = a5;
    v130.size.height = v41;
    Width = CGRectGetWidth(v130);
    if (Width >= v43)
    {
      v46 = v43;
    }

    else
    {
      v46 = Width;
    }

    __swift_destroy_boxed_opaque_existential_1(&v111);
  }

  else
  {
    sub_24E601704(&v116, &qword_27F229780);
    MinX = 0.0;
    v46 = 0.0;
  }

  sub_24E60169C(v118, &v116, &qword_27F229780);
  if (v117)
  {
    sub_24E612C80(&v116, &v111);
    __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
    v47 = v105;
    sub_24F922298();
    v49 = v48;
    v100 = v50;
    v131.origin.x = v21;
    v131.origin.y = a4;
    v131.size.width = a5;
    v131.size.height = v47;
    v51 = CGRectGetWidth(v131) - (v38 + v46);
    if (v51 >= v49)
    {
      v51 = v49;
    }

    if (v51 > 0.0)
    {
      v52 = v51;
    }

    else
    {
      v52 = 0.0;
    }

    __swift_destroy_boxed_opaque_existential_1(&v111);
  }

  else
  {
    sub_24E601704(&v116, &qword_27F229780);
    v100 = 0;
    v52 = 0.0;
  }

  v53 = *(v7 + 160);
  *&v99[1] = v52;
  v54 = v21;
  v55 = a4;
  v56 = a5;
  v57 = v105;
  if (v53 == 4)
  {
    v58 = CGRectGetMinX(*&v54);
  }

  else
  {
    v58 = CGRectGetMidX(*&v54) + (v38 + v46 + v52) * -0.5;
  }

  sub_24E60169C(v120, &v116, &qword_27F229780);
  v102 = a4;
  if (v117)
  {
    sub_24E612C80(&v116, &v111);
    __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
    v59 = v105;
    sub_24F922288();
    v61 = v60;
    v132.origin.x = v21;
    v132.origin.y = a4;
    v132.size.width = a5;
    v132.size.height = v59;
    MinY = CGRectGetMinY(v132);
    v63 = [a1 traitCollection];
    v64 = sub_24F92BF68();

    v65 = 80;
    if (v64)
    {
      v65 = 40;
    }

    sub_24E615E00(v7 + v65, &v116);
    __swift_project_boxed_opaque_existential_1(&v116, v117);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v67 = v66;
    v20(v16, v13);
    __swift_destroy_boxed_opaque_existential_1(&v116);
    v68 = MinY + v67 - (MinX - v61);
    __swift_destroy_boxed_opaque_existential_1(&v111);
    v69 = v58;
  }

  else
  {
    sub_24E601704(&v116, &qword_27F229780);
    v69 = 0.0;
    v68 = 0.0;
    v46 = 0.0;
    MinX = 0.0;
  }

  sub_24E60169C(v118, &v116, &qword_27F229780);
  if (v117)
  {
    sub_24E612C80(&v116, &v111);
    __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
    sub_24F922288();
    sub_24E60169C(v120, &v116, &qword_27F229780);
    v70 = v117;
    sub_24E601704(&v116, &qword_27F229780);
    if (v70)
    {
      v133.origin.x = v69;
      v133.origin.y = v68;
      v133.size.width = v46;
      v133.size.height = MinX;
      CGRectGetMaxX(v133);
    }

    v134.origin.x = v104;
    v134.size.height = v105;
    v134.origin.y = v102;
    v134.size.width = a5;
    CGRectGetMinY(v134);
    v71 = [a1 traitCollection];
    v72 = sub_24F92BF68();

    v73 = 80;
    if (v72)
    {
      v73 = 40;
    }

    sub_24E615E00(v7 + v73, &v116);
    __swift_project_boxed_opaque_existential_1(&v116, v117);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v20(v16, v13);
    __swift_destroy_boxed_opaque_existential_1(&v116);
    __swift_destroy_boxed_opaque_existential_1(&v111);
    v74 = v121;
    if (v121)
    {
      goto LABEL_54;
    }
  }

  else
  {
    sub_24E601704(&v116, &qword_27F229780);
    v74 = v121;
    if (v121)
    {
LABEL_54:
      v75 = __swift_project_boxed_opaque_existential_1(v120, v74);
      v76 = *(v74 - 8);
      v77 = MEMORY[0x28223BE20](v75);
      v79 = v99 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v76 + 16))(v79, v77);
      sub_24F922228();
      (*(v76 + 8))(v79, v74);
    }
  }

  v80 = v119;
  if (v119)
  {
    v81 = __swift_project_boxed_opaque_existential_1(v118, v119);
    v82 = *(v80 - 8);
    v83 = MEMORY[0x28223BE20](v81);
    v85 = v99 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v82 + 16))(v85, v83);
    sub_24F922228();
    (*(v82 + 8))(v85, v80);
  }

  LOBYTE(v111) = *(v7 + 155);
  sub_24E60169C(v7 + 248, &v111 + 8, &qword_27F229780);
  sub_24E60169C(v7 + 208, &v114, &unk_27F22B200);
  if (v111 == 2)
  {
    if (v113)
    {
      sub_24E612C80((&v111 + 8), &v116);
      __swift_project_boxed_opaque_existential_1(&v116, v117);
      v97 = sub_24F922208();
      *(v98 + 8) = 0;
      v97(v110, 0);
      __swift_destroy_boxed_opaque_existential_1(&v116);
      v95 = &unk_27F22B200;
      v96 = &v114;
      goto LABEL_72;
    }

LABEL_71:
    v95 = &unk_27F231B68;
    v96 = &v111;
    goto LABEL_72;
  }

  if (v111 != 1 || !v113)
  {
    goto LABEL_71;
  }

  sub_24E60169C(&v111 + 8, &v116, &qword_27F229780);
  if (!v115)
  {
    __swift_destroy_boxed_opaque_existential_1(&v116);
    goto LABEL_71;
  }

  sub_24E612C80(&v116, v110);
  sub_24E612C80(&v114, v108);
  __swift_project_boxed_opaque_existential_1(v110, v110[3]);
  __swift_project_boxed_opaque_existential_1(v108, v109);
  sub_24F922218();
  v87 = v86;
  v88 = sub_24F922208();
  *(v89 + 8) = v87;
  v88(v107, 0);
  sub_24E615E00(v110, v107);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235730);
  sub_24EE557CC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_65:
    __swift_destroy_boxed_opaque_existential_1(v108);
    __swift_destroy_boxed_opaque_existential_1(v110);
    v95 = &qword_27F229780;
    v96 = (&v111 + 8);
LABEL_72:
    sub_24E601704(v96, v95);
LABEL_73:
    sub_24F922128();
    sub_24E601704(&v122, &qword_27F229780);
    sub_24E601704(&v125, &qword_27F229780);
    sub_24E601704(v118, &qword_27F229780);
    return sub_24E601704(v120, &qword_27F229780);
  }

  v90 = v106;
  __swift_project_boxed_opaque_existential_1(v108, v109);
  result = sub_24F922498();
  if (result)
  {
    v92 = result;
    result = [v90 font];
    if (result)
    {
      v93 = result;
      v94 = v90;
      [v92 ascender];
      [v92 capHeight];
      [v93 ascender];
      [v93 capHeight];
      [v94 frame];
      [v94 setFrame_];

      goto LABEL_65;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24EE557CC()
{
  result = qword_27F231B70;
  if (!qword_27F231B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F231B70);
  }

  return result;
}

unint64_t sub_24EE5581C()
{
  result = qword_27F231B78;
  if (!qword_27F231B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231B78);
  }

  return result;
}

uint64_t sub_24EE558A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
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

uint64_t sub_24EE558F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EE5598C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_24EE559D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EE55A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Challenge(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24EE55B80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Challenge(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for CompletedChallengeSummary()
{
  result = qword_27F231B80;
  if (!qword_27F231B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EE55CD4()
{
  type metadata accessor for Challenge(319);
  if (v0 <= 0x3F)
  {
    sub_24EE55D58();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EE55D58()
{
  if (!qword_27F21B7B0)
  {
    type metadata accessor for ChallengeDefinitionDetail(255);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21B7B0);
    }
  }
}

uint64_t sub_24EE55DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001FLL && 0x800000024FA5FB80 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24F92CE08();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24EE55E60(uint64_t a1)
{
  v2 = sub_24EE56D24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE55E9C(uint64_t a1)
{
  v2 = sub_24EE56D24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EE55EF8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231BB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE56D24();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_24F92CC48();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v10;
  return result;
}

unint64_t sub_24EE56060@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 32) = 0x61746144627568;
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = &type metadata for ChallengesHubData;
  *(inited + 80) = sub_24EE56F34();
  v10 = swift_allocObject();
  *(inited + 48) = v10;
  v10[2] = v2;
  v10[3] = v3;
  v10[4] = v5;
  v10[5] = v4;
  v10[6] = v7;
  *(inited + 88) = 0xD000000000000013;
  *(inited + 96) = 0x800000024FA465A0;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231BE8);
  v11 = sub_24EE56FD0();
  *(inited + 104) = v6;
  *(inited + 136) = v11;
  *(inited + 144) = 0xD00000000000001BLL;
  *(inited + 152) = 0x800000024FA5FBA0;
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231BF8);
  *(inited + 192) = sub_24EE57084();
  *(inited + 160) = v8;

  v12 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v13 = sub_24E80FFAC(v12);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v13;
  return result;
}

uint64_t sub_24EE56274@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v20 = type metadata accessor for Challenge(0);
  MEMORY[0x28223BE20](v20);
  v21 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231B90);
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for CompletedChallengeSummary();
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE56A0C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = a1;
  v14 = v13;
  v25 = 0;
  sub_24EE57138(&qword_27F21AF10, type metadata accessor for Challenge);
  v15 = v21;
  v16 = v23;
  sub_24F92CC68();
  sub_24EE56A60(v15, v14);
  type metadata accessor for ChallengeDefinitionDetail(0);
  v24 = 1;
  sub_24EE57138(&qword_27F21B790, type metadata accessor for ChallengeDefinitionDetail);
  sub_24F92CC18();
  (*(v22 + 8))(v10, v16);
  sub_24EE56AC4(v6, v14 + *(v11 + 20));
  sub_24EE56B34(v14, v19, type metadata accessor for CompletedChallengeSummary);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_24EE56B9C(v14, type metadata accessor for CompletedChallengeSummary);
}

uint64_t sub_24EE56614()
{
  if (*v0)
  {
    return 0x6974696E69666564;
  }

  else
  {
    return 0x676E656C6C616863;
  }
}

uint64_t sub_24EE56658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E656C6C616863 && a2 == 0xE900000000000065;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24EE56744(uint64_t a1)
{
  v2 = sub_24EE56A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE56780(uint64_t a1)
{
  v2 = sub_24EE56A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EE567D4@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x676E656C6C616863;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 72) = type metadata accessor for Challenge(0);
  *(inited + 80) = sub_24EE57138(&qword_27F21AEF0, type metadata accessor for Challenge);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24EE56B34(v4, boxed_opaque_existential_1, type metadata accessor for Challenge);
  *(inited + 88) = 0x6974696E69666564;
  *(inited + 96) = 0xEA00000000006E6FLL;
  v8 = *(a1 + 20);
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08);
  *(inited + 136) = sub_24E759444();
  v9 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24EE5699C(v4 + v8, v9);
  v10 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v11 = sub_24E80FFAC(v10);

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v11;
  return result;
}

uint64_t sub_24EE5699C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EE56A0C()
{
  result = qword_27F231B98;
  if (!qword_27F231B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231B98);
  }

  return result;
}

uint64_t sub_24EE56A60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Challenge(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EE56AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EE56B34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE56B9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EE56C20()
{
  result = qword_27F231BA0;
  if (!qword_27F231BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231BA0);
  }

  return result;
}

unint64_t sub_24EE56C78()
{
  result = qword_27F231BA8;
  if (!qword_27F231BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231BA8);
  }

  return result;
}

unint64_t sub_24EE56CD0()
{
  result = qword_27F231BB0;
  if (!qword_27F231BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231BB0);
  }

  return result;
}

unint64_t sub_24EE56D24()
{
  result = qword_27F231BC0;
  if (!qword_27F231BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231BC0);
  }

  return result;
}

uint64_t sub_24EE56D88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24EE56DD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EE56E30()
{
  result = qword_27F231BC8;
  if (!qword_27F231BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231BC8);
  }

  return result;
}

unint64_t sub_24EE56E88()
{
  result = qword_27F231BD0;
  if (!qword_27F231BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231BD0);
  }

  return result;
}

unint64_t sub_24EE56EE0()
{
  result = qword_27F231BD8;
  if (!qword_27F231BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231BD8);
  }

  return result;
}

unint64_t sub_24EE56F34()
{
  result = qword_27F231BE0;
  if (!qword_27F231BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231BE0);
  }

  return result;
}

uint64_t sub_24EE56F88()
{

  return swift_deallocObject();
}

unint64_t sub_24EE56FD0()
{
  result = qword_27F231BF0;
  if (!qword_27F231BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231BE8);
    sub_24EE57138(&qword_27F21DD30, type metadata accessor for ChallengeDetail);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231BF0);
  }

  return result;
}

unint64_t sub_24EE57084()
{
  result = qword_27F231C00;
  if (!qword_27F231C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231BF8);
    sub_24EE57138(&qword_27F231C08, type metadata accessor for CompletedChallengeSummary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231C00);
  }

  return result;
}

uint64_t sub_24EE57138(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t pickPerformanceTunedValue<A>(poor:fair:good:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a4 != 2)
  {
    a3 = a2;
  }

  if (a4)
  {
    a1 = a3;
  }

  return (*(*(a5 - 8) + 16))(a6, a1, a5);
}

uint64_t MetricsLogger.log(contentsOf:)(void *a1)
{
  v55 = sub_24F929078();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F7C8);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v49 - v6;
  v7 = sub_24F928468();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v49 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  sub_24F9283A8();
  v18 = sub_24E61970C(0, 1, 1, MEMORY[0x277D84F90]);
  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = sub_24E61970C(v19 > 1, v20 + 1, 1, v18);
  }

  *(v18 + 2) = v20 + 1;
  v23 = *(v8 + 32);
  v22 = v8 + 32;
  v21 = v23;
  v24 = (*(v22 + 48) + 32) & ~*(v22 + 48);
  v25 = *(v22 + 40);
  v23(&v18[v24 + v25 * v20], v17, v7);
  swift_getErrorValue();
  DynamicType = swift_getDynamicType();
  MetatypeMetadata = swift_getMetatypeMetadata();
  v60[0] = DynamicType;
  sub_24F928438();
  sub_24E601704(v60, &qword_27F2129B0);
  v28 = *(v18 + 2);
  v27 = *(v18 + 3);
  if (v28 >= v27 >> 1)
  {
    v18 = sub_24E61970C(v27 > 1, v28 + 1, 1, v18);
  }

  *(v18 + 2) = v28 + 1;
  v21(&v18[v24 + v28 * v25], v14, v7);
  v59 = a1;
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231C0);
  if (swift_dynamicCast())
  {
    sub_24E612E28(&v56, v60);
    v30 = MetatypeMetadata;
    v31 = v62;
    __swift_project_boxed_opaque_existential_1(v60, MetatypeMetadata);
    v32 = (*(v31 + 16))(v30, v31);
    *(&v57 + 1) = MEMORY[0x277D837D0];
    *&v56 = v32;
    *(&v56 + 1) = v33;
    v34 = v49;
    sub_24F928438();
    sub_24E601704(&v56, &qword_27F2129B0);
    v35 = v51;
    v21(v51, v34, v7);
    *&v56 = v18;
    v36 = *(v18 + 2);
    if (v36 >= *(v18 + 3) >> 1)
    {
      v18 = sub_24E61970C(1uLL, v36 + 1, 1, v18);
      *&v56 = v18;
    }

    sub_24EDAAD44(0, 0, 1, v35);
    *&v56 = v18;
    v37 = v62;
    v38 = __swift_project_boxed_opaque_existential_1(v60, MetatypeMetadata);
    v39 = MEMORY[0x28223BE20](v38);
    *(&v49 - 2) = &v56;
    (*(v37 + 24))(sub_24EE57E9C, v39);
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  else
  {
    v58 = 0;
    v56 = 0u;
    v57 = 0u;
    sub_24E601704(&v56, &qword_27F2231C8);
    swift_getErrorValue();
    v40 = sub_24F92CFE8();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v60[0] = v40;
    v60[1] = v41;
    v42 = v50;
    sub_24F928438();
    sub_24E601704(v60, &qword_27F2129B0);
    v43 = v52;
    v21(v52, v42, v7);
    *&v56 = v18;
    v44 = *(v18 + 2);
    if (v44 >= *(v18 + 3) >> 1)
    {
      v18 = sub_24E61970C(1uLL, v44 + 1, 1, v18);
      *&v56 = v18;
    }

    sub_24EDAAD44(0, 0, 1, v43);
    *&v56 = v18;
  }

  v45 = v54;
  v46 = v53;
  v47 = v55;
  (*(v54 + 104))(v53, *MEMORY[0x277D21DE8], v55);
  sub_24F928BD8();
  (*(v45 + 8))(v46, v47);
}

uint64_t sub_24EE57848(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = sub_24F928468();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v30 - v13;
  v30[3] = MEMORY[0x277D837D0];
  v30[0] = a1;
  v30[1] = a2;

  sub_24F928438();
  sub_24E601704(v30, &qword_27F2129B0);
  v15 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_24E61970C(0, v15[2] + 1, 1, v15);
    *a4 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_24E61970C(v17 > 1, v18 + 1, 1, v15);
    *a4 = v15;
  }

  v15[2] = v18 + 1;
  v21 = *(v9 + 32);
  v20 = v9 + 32;
  v19 = v21;
  v22 = (*(v20 + 48) + 32) & ~*(v20 + 48);
  v23 = v15 + v22;
  v24 = *(v20 + 40);
  v21(&v23[v24 * v18], v14, v8);
  sub_24E643A9C(a3, v30);
  sub_24F928438();
  sub_24E601704(v30, &qword_27F2129B0);
  v25 = *a4;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v25;
  if ((v26 & 1) == 0)
  {
    v25 = sub_24E61970C(0, v25[2] + 1, 1, v25);
    *a4 = v25;
  }

  v28 = v25[2];
  v27 = v25[3];
  if (v28 >= v27 >> 1)
  {
    v25 = sub_24E61970C(v27 > 1, v28 + 1, 1, v25);
    *a4 = v25;
  }

  v25[2] = v28 + 1;
  return v19(v25 + v22 + v28 * v24, v11, v8);
}

uint64_t MetricsLogger.Configuration.init(asPartOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_24F9288E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  v11 = sub_24F92A498();
  v17 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928FD8();
  sub_24F92A758();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222260);
  v19 = a1;
  sub_24F92A758();
  if (qword_27F2108D0 != -1)
  {
    swift_once();
  }

  sub_24F92A438();
  sub_24F92A408();
  v14 = *(v8 + 8);
  v14(v10, v7);
  if (qword_27F2108D8 != -1)
  {
    swift_once();
  }

  (*(v4 + 104))(v6, *MEMORY[0x277D21C38], v3);
  sub_24F92A368();
  (*(v4 + 8))(v6, v3);
  sub_24F92A408();
  v14(v10, v7);
  sub_24E615E00(v21, v20);
  sub_24F928BA8();

  __swift_destroy_boxed_opaque_existential_1(v21);
  return (*(v17 + 8))(v13, v11);
}

uint64_t sub_24EE57EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EE57FFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for RefreshableGameHighlightsShelfConstructionIntent()
{
  result = qword_27F231C10;
  if (!qword_27F231C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EE58178()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24EE5820C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EE5820C()
{
  if (!qword_27F231C20)
  {
    sub_24F928388();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F231C20);
    }
  }
}

unint64_t sub_24EE58264@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v7;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x44496D616461;
  *(inited + 96) = 0xE600000000000000;
  v8 = v1[2];
  v9 = v1[3];
  *(inited + 128) = v6;
  *(inited + 136) = v7;
  *(inited + 104) = v8;
  *(inited + 112) = v9;
  *(inited + 144) = 0x726579616C70;
  *(inited + 152) = 0xE600000000000000;
  v10 = type metadata accessor for RefreshableGameHighlightsShelfConstructionIntent();
  v11 = *(v10 + 24);
  *(inited + 184) = type metadata accessor for Player(0);
  *(inited + 192) = sub_24EE58F64(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24EE58E48(v1 + v11, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 200) = 0xD000000000000013;
  *(inited + 208) = 0x800000024FA5FBE0;
  v13 = *(v10 + 28);
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48);
  *(inited + 248) = sub_24EE58EB0();
  v14 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24EE58FAC(v1 + v13, v14);

  v15 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v16 = sub_24E80FFAC(v15);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v16;
  return result;
}

uint64_t sub_24EE58494(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231C38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE58D24();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    type metadata accessor for RefreshableGameHighlightsShelfConstructionIntent();
    v8[13] = 2;
    type metadata accessor for Player(0);
    sub_24EE58F64(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
    v8[12] = 3;
    sub_24F928388();
    sub_24EE58F64(&qword_27F231C40, MEMORY[0x277D21B10]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24EE58728@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48);
  MEMORY[0x28223BE20](v3 - 8);
  v23 = v21 - v4;
  v5 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231C28);
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  v11 = type metadata accessor for RefreshableGameHighlightsShelfConstructionIntent();
  MEMORY[0x28223BE20](v11);
  v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE58D24();
  v26 = v10;
  v14 = v27;
  sub_24F92D108();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v24;
  v16 = v25;
  v31 = 0;
  *v13 = sub_24F92CC28();
  v13[1] = v17;
  v27 = v17;
  v30 = 1;
  v13[2] = sub_24F92CC28();
  v13[3] = v18;
  v29 = 2;
  sub_24EE58F64(&qword_27F213E38, type metadata accessor for Player);
  v21[1] = 0;
  sub_24F92CC68();
  sub_24E61C0A8(v7, v13 + *(v11 + 24));
  sub_24F928388();
  v28 = 3;
  sub_24EE58F64(&qword_27F21E7D0, MEMORY[0x277D21B10]);
  v19 = v23;
  sub_24F92CC18();
  (*(v15 + 8))(v26, v16);
  sub_24EE58D78(v19, v13 + *(v11 + 28));
  sub_24EE58E48(v13, v22, type metadata accessor for RefreshableGameHighlightsShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EE58DE8(v13, type metadata accessor for RefreshableGameHighlightsShelfConstructionIntent);
}

unint64_t sub_24EE58BA8()
{
  v1 = 0x444965676170;
  v2 = 0x726579616C70;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x44496D616461;
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

uint64_t sub_24EE58C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EE59134(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EE58C44(uint64_t a1)
{
  v2 = sub_24EE58D24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE58C80(uint64_t a1)
{
  v2 = sub_24EE58D24();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EE58D24()
{
  result = qword_27F231C30;
  if (!qword_27F231C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231C30);
  }

  return result;
}

uint64_t sub_24EE58D78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EE58DE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EE58E48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EE58EB0()
{
  result = qword_27F231C48;
  if (!qword_27F231C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212F48);
    sub_24EE58F64(&qword_27F231C50, MEMORY[0x277D21B10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231C48);
  }

  return result;
}

uint64_t sub_24EE58F64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EE58FAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EE59030()
{
  result = qword_27F231C58;
  if (!qword_27F231C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231C58);
  }

  return result;
}

unint64_t sub_24EE59088()
{
  result = qword_27F231C60;
  if (!qword_27F231C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231C60);
  }

  return result;
}

unint64_t sub_24EE590E0()
{
  result = qword_27F231C68;
  if (!qword_27F231C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231C68);
  }

  return result;
}

uint64_t sub_24EE59134(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496D616461 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA5FBE0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24EE59294(uint64_t a1)
{
  v37 = a1;
  v1 = sub_24F91F8A8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F91F7C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F91ED78();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F91F648();
  v38 = *(v12 - 8);
  v39 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F638();
  sub_24F91F758();
  sub_24F91F7B8();
  (*(v6 + 8))(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E080);
  v15 = sub_24F91F898();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v36 = xmmword_24F93DE60;
  *(v18 + 16) = xmmword_24F93DE60;
  (*(v16 + 104))(v18 + v17, *MEMORY[0x277CC9968], v15);
  sub_24E8026A0(v18);
  swift_setDeallocating();
  (*(v16 + 8))(v18 + v17, v15);
  swift_deallocClassInstance();
  sub_24F91F808();

  (*(v2 + 8))(v4, v1);
  v19 = sub_24F91ECA8();
  countAndFlagsBits = 0;
  if ((v21 & 1) == 0)
  {
    if ((v19 - 2) < 2)
    {
      v24._object = 0x800000024FA5FC00;
      v25 = v19;
      v24._countAndFlagsBits = 0xD000000000000010;
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      localizedString(_:comment:)(v24, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
      v27 = swift_allocObject();
      *(v27 + 16) = v36;
      v42 = v25;
      v28 = sub_24F92CD88();
      v30 = v29;
      *(v27 + 56) = MEMORY[0x277D837D0];
      *(v27 + 64) = sub_24E90A06C();
      *(v27 + 32) = v28;
      *(v27 + 40) = v30;
      countAndFlagsBits = sub_24F92B118();
    }

    else
    {
      if (v19 == 1)
      {
        v22 = 0xD000000000000011;
        v23 = 0x800000024FA5FC20;
      }

      else
      {
        if (v19)
        {
          v32 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          [v32 setDateStyle_];
          [v32 setTimeStyle_];
          v33 = sub_24F91F578();
          v34 = [v32 stringFromDate_];

          countAndFlagsBits = sub_24F92B0D8();
          goto LABEL_10;
        }

        v22 = 0x5F5350554B434F4CLL;
        v23 = 0xED00005941444F54;
      }

      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      countAndFlagsBits = localizedString(_:comment:)(*&v22, v31)._countAndFlagsBits;
    }
  }

LABEL_10:
  (*(v40 + 8))(v11, v41);
  (*(v38 + 8))(v14, v39);
  return countAndFlagsBits;
}

GameStoreKit::SheetActionStyle_optional __swiftcall SheetActionStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SheetActionStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x5474756F68746977;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_24EE598D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x5474756F68746977;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEC000000656C7469;
  }

  if (*a2)
  {
    v5 = 0x5474756F68746977;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0xEC000000656C7469;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24EE59984()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EE59A10()
{
  sub_24F92B218();
}

uint64_t sub_24EE59A88()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EE59B10@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

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

void sub_24EE59B70(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x5474756F68746977;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEC000000656C7469;
  }

  *a1 = v2;
  a1[1] = v3;
}

void *SheetAction.__allocating_init(actions:title:actionMetrics:message:isCancelable:cancelTitle:checkedIndex:destructiveActionIndex:isCustom:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, unsigned __int8 a13, unsigned __int8 a14, _BYTE *a15)
{
  v50 = a2;
  v51 = a3;
  v48 = a13;
  v49 = a14;
  v46 = a4;
  v47 = a15;
  v20 = sub_24F91F6B8();
  v44 = *(v20 - 8);
  v45 = v20;
  MEMORY[0x28223BE20](v20);
  v43 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_actions) = a1;
  v23 = (v22 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_message);
  *v23 = a5;
  v23[1] = a6;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_isCancelable) = a7;
  v24 = (v22 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_cancelTitle);
  *v24 = a8;
  v24[1] = a9;
  v25 = v22 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_checkedIndex;
  *v25 = a10;
  v25[8] = a11 & 1;
  v26 = v22 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_destructiveActionIndex;
  *v26 = a12;
  v26[8] = v48 & 1;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_isCustom) = v49;
  v27 = v46;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_style) = *v47;
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v28 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v29 = sub_24F928AD8();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v22 + v28, v27, v29);
  v31 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v32 = sub_24F929608();
  (*(*(v32 - 8) + 56))(v22 + v31, 1, 1, v32);
  v33 = (v22 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v33 = 0u;
  v33[1] = 0u;
  v34 = v22 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v57, &v54);
  if (*(&v55 + 1))
  {
    v35 = v55;
    *v34 = v54;
    *(v34 + 1) = v35;
    *(v34 + 4) = v56;
  }

  else
  {
    v36 = v43;
    sub_24F91F6A8();
    v37 = sub_24F91F668();
    v39 = v38;
    (*(v44 + 8))(v36, v45);
    v52 = v37;
    v53 = v39;
    sub_24F92C7F8();
    sub_24E601704(&v54, &qword_27F235830);
  }

  (*(v30 + 8))(v27, v29);
  sub_24E601704(v57, &qword_27F235830);
  v40 = v51;
  v22[2] = v50;
  v22[3] = v40;
  v22[4] = 0;
  v22[5] = 0;
  return v22;
}

void *SheetAction.init(actions:title:actionMetrics:message:isCancelable:cancelTitle:checkedIndex:destructiveActionIndex:isCustom:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, unsigned __int8 a13, unsigned __int8 a14, _BYTE *a15)
{
  v16 = v15;
  v49 = a8;
  v48 = a7;
  v45 = a6;
  v54 = a2;
  v55 = a3;
  v52 = a13;
  v53 = a14;
  v50 = a12;
  v47 = a11;
  v46 = a10;
  v51 = a15;
  v44 = sub_24F91F6B8();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v43 - v23;
  v25 = sub_24F928AD8();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_actions) = a1;
  v29 = (v16 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_message);
  v30 = v45;
  *v29 = a5;
  v29[1] = v30;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_isCancelable) = v48;
  v31 = (v16 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_cancelTitle);
  *v31 = v49;
  v31[1] = a9;
  v32 = v16 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_checkedIndex;
  *v32 = v46;
  v32[8] = v47 & 1;
  v33 = v16 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_destructiveActionIndex;
  *v33 = v50;
  v33[8] = v52 & 1;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_isCustom) = v53;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_style) = *v51;
  v65 = 0;
  memset(v64, 0, sizeof(v64));
  (*(v26 + 16))(v28, a4, v25);
  v34 = sub_24F929608();
  (*(*(v34 - 8) + 56))(v24, 1, 1, v34);
  v35 = (v16 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v35 = 0u;
  v35[1] = 0u;
  sub_24E65E064(v64, &v58);
  if (*(&v59 + 1))
  {
    v61 = v58;
    v62 = v59;
    v63 = v60;
  }

  else
  {
    sub_24F91F6A8();
    v36 = sub_24F91F668();
    v38 = v37;
    (*(v43 + 8))(v21, v44);
    v56 = v36;
    v57 = v38;
    sub_24F92C7F8();
    sub_24E601704(&v58, &qword_27F235830);
  }

  (*(v26 + 8))(a4, v25);
  sub_24E601704(v64, &qword_27F235830);
  v39 = v16 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v39 + 4) = v63;
  v40 = v62;
  *v39 = v61;
  *(v39 + 1) = v40;
  sub_24E65E0D4(v24, v16 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v41 = v55;
  v16[2] = v54;
  v16[3] = v41;
  v16[4] = 0;
  v16[5] = 0;
  (*(v26 + 32))(v16 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v28, v25);
  return v16;
}

char *SheetAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v70 = a2;
  v3 = sub_24F9285B8();
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x28223BE20](v3);
  v66 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v58 - v6;
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v65 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v63 = &v58 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v58 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v60 = &v58 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - v19;
  v21 = sub_24F92AC28();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v61 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v64 = v9;
  v24 = *(v9 + 8);
  v24(v20, v8);
  if ((*(v22 + 48))(v7, 1, v21) == 1)
  {
    sub_24E601704(v7, &qword_27F2213B0);
    v25 = v71;
    *(v71 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_actions) = MEMORY[0x277D84F90];
    *(v25 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_isCancelable) = 1;
    v26 = v62;
  }

  else
  {
    v27 = *(v22 + 32);
    v59 = v21;
    v27();
    v28 = type metadata accessor for Action();
    v29 = MEMORY[0x28223BE20](v28);
    v31 = v69;
    v30 = v70;
    *(&v58 - 2) = v29;
    *(&v58 - 1) = v30;
    v32 = sub_24F92ABB8();
    v69 = v31;
    *(v71 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_actions) = v32;
    v33 = v60;
    v26 = v62;
    sub_24F928398();
    v34 = sub_24F928278();
    v24(v33, v8);
    (*(v22 + 8))(v61, v59);
    *(v71 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_isCancelable) = (v34 == 2) | v34 & 1;
  }

  sub_24F928398();
  v35 = sub_24F928348();
  v37 = v36;
  v24(v16, v8);
  v38 = v71;
  v39 = (v71 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_message);
  *v39 = v35;
  v39[1] = v37;
  sub_24F928398();
  v40 = sub_24F928258();
  LOBYTE(v37) = v41;
  v24(v16, v8);
  v42 = v38 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_checkedIndex;
  *v42 = v40;
  *(v42 + 8) = v37 & 1;
  sub_24F928398();
  v43 = sub_24F928258();
  LOBYTE(v37) = v44;
  v24(v16, v8);
  v45 = v38 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_destructiveActionIndex;
  *v45 = v43;
  *(v45 + 8) = v37 & 1;
  v46 = v63;
  sub_24F928398();
  LOBYTE(v43) = sub_24F928278();
  v24(v46, v8);
  *(v38 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_isCustom) = v43 & 1;
  sub_24F928398();
  sub_24EE5ADF0();
  sub_24F928208();
  v24(v16, v8);
  *(v38 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_style) = v72;
  sub_24F928398();
  v47 = sub_24F928348();
  v49 = v48;
  v24(v16, v8);
  v50 = (v38 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_cancelTitle);
  *v50 = v47;
  v50[1] = v49;
  v51 = v65;
  (*(v64 + 16))(v65, v26, v8);
  v52 = v26;
  v53 = v66;
  v54 = v67;
  v55 = v68;
  (*(v67 + 16))(v66, v70, v68);
  v56 = Action.init(deserializing:using:)(v51, v53);
  v24(v52, v8);
  (*(v54 + 8))(v70, v55);
  return v56;
}

uint64_t SheetAction.cancelTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_cancelTitle);

  return v1;
}

uint64_t SheetAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_message);

  return v1;
}

uint64_t sub_24EE5AC38()
{
}

uint64_t SheetAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t SheetAction.__deallocating_deinit()
{
  SheetAction.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24EE5ADF0()
{
  result = qword_27F231C70;
  if (!qword_27F231C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231C70);
  }

  return result;
}

unint64_t sub_24EE5AE48()
{
  result = qword_27F231C78;
  if (!qword_27F231C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231C78);
  }

  return result;
}

uint64_t type metadata accessor for SheetAction()
{
  result = qword_27F231C80;
  if (!qword_27F231C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Unimpressable<>.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F929608();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_24EE5B05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_24F928328())
  {
    v37 = v6;
    v38 = a1;
    v10 = v7;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 3;
LABEL_3:
    v17 = sub_24F9285B8();
    (*(*(v17 - 8) + 8))(v39, v17);
    result = (*(v10 + 8))(v38, v37);
    *a3 = v11;
    *(a3 + 8) = v12;
    *(a3 + 16) = v13;
    *(a3 + 24) = v14;
    *(a3 + 32) = v15;
    *(a3 + 40) = v16;
    return result;
  }

  v35 = v3;
  sub_24F928398();
  sub_24EE5C1C0();
  sub_24F928208();
  v19 = *(v7 + 8);
  v19(v9, v6);
  v20 = v41;
  sub_24F928398();
  sub_24EE5C214();
  sub_24F928248();
  v19(v9, v6);
  if (v40 == 2)
  {
    v34 = 0;
    v36 = 0;
  }

  else
  {
    v34 = sub_24F92B0D8();
    v36 = v21;
  }

  sub_24F928398();
  v22 = JSONObject.appStoreColor.getter();
  v19(v9, v6);
  if (v20 > 1)
  {
    if (v20 != 2)
    {
      v37 = v6;
      v38 = a1;
      v10 = v7;

      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 3;
      goto LABEL_3;
    }

    v33 = v22;
    v25 = v35;
    v26 = sub_24EE5C268(0xD000000000000012, 0x800000024FA5FCA0);
    if (!v25)
    {
      v27 = a1;
      v11 = v26;
      v38 = v27;
      v12 = sub_24EE5C268(0xD000000000000010, 0x800000024FA5FCE0);
      v37 = v6;
      v10 = v7;
      v16 = 2;
      v15 = v36;
      v13 = v33;
      v14 = v34;
      goto LABEL_3;
    }
  }

  else
  {
    v33 = v22;
    v13 = v34;
    if (v20)
    {
      v28 = v35;
      v29 = sub_24EE5C268(0xD000000000000012, 0x800000024FA5FCA0);
      if (!v28)
      {
        v30 = a1;
        v11 = v29;
        v38 = v30;
        v12 = sub_24EE5C268(0xD000000000000010, 0x800000024FA5FCE0);
        v37 = v6;
        v10 = v7;
        v16 = 1;
        v15 = v36;
        v14 = v13;
        v13 = v33;
        goto LABEL_3;
      }
    }

    else
    {
      v23 = v35;
      v24 = sub_24EE5C268(0x726F6C6F63, 0xE500000000000000);
      if (!v23)
      {
        v37 = v6;
        v38 = a1;
        v10 = v7;
        v16 = 0;
        v14 = v36;
        v12 = v33;
        v15 = 0;
        v11 = v24;
        goto LABEL_3;
      }
    }
  }

  v31 = sub_24F9285B8();
  (*(*(v31 - 8) + 8))(v39, v31);
  return (v19)(a1, v6);
}

uint64_t sub_24EE5B58C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EE5B650()
{
  sub_24F92B218();
}

uint64_t sub_24EE5B700()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EE5B7C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24EE5C570();
  *a1 = result;
  return result;
}

void sub_24EE5B7F0(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x726F6C6F63;
  v4 = 0x800000024FA41D90;
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000024FA41D70;
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

uint64_t TitleEffectFilterType.compositingFilter.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F92B0D8();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

GameStoreKit::TitleEffectFilterType_optional __swiftcall TitleEffectFilterType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t TitleEffectFilterType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6B72614473756C70;
  }

  else
  {
    return 0x6867694C73756C70;
  }
}

uint64_t sub_24EE5B968(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6B72614473756C70;
  }

  else
  {
    v3 = 0x6867694C73756C70;
  }

  if (v2)
  {
    v4 = 0xE900000000000074;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6B72614473756C70;
  }

  else
  {
    v5 = 0x6867694C73756C70;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE900000000000074;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24EE5BA14()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EE5BA9C()
{
  sub_24F92B218();
}

uint64_t sub_24EE5BB10()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EE5BB94@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

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

void sub_24EE5BBF4(uint64_t *a1@<X8>)
{
  v2 = 0x6867694C73756C70;
  if (*v1)
  {
    v2 = 0x6B72614473756C70;
  }

  v3 = 0xE900000000000074;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t _s12GameStoreKit11TitleEffectO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v36[0] = *a1;
  v36[1] = v3;
  v36[2] = v5;
  v36[3] = v4;
  v36[4] = v6;
  v37 = v7;
  v38 = v9;
  v39 = v8;
  v40 = v11;
  v41 = v10;
  v42 = v12;
  v43 = v13;
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v13 == 3 && !(v8 | v9 | v11 | v10 | v12))
      {
        goto LABEL_44;
      }

      goto LABEL_26;
    }

    if (v13 != 2)
    {
LABEL_26:
      sub_24ED21BB0(v9, v8, v11, v10, v12, v13);
      sub_24ED21BB0(v2, v3, v5, v4, v6, v7);
      goto LABEL_27;
    }

    v34 = v6;
    v18 = v10;
    sub_24E69A5C4(0, &qword_27F21BCB0);
    v33 = v18;
    v19 = v18;
    v20 = v34;
    sub_24ED21BB0(v9, v8, v11, v19, v12, 2);
    v31 = v4;
    sub_24ED21BB0(v2, v3, v5, v4, v34, 2);
    if ((sub_24F92C408() & 1) == 0 || (sub_24F92C408() & 1) == 0)
    {
      goto LABEL_27;
    }

    if (v5)
    {
      if (!v11)
      {
        goto LABEL_27;
      }

      sub_24E69A5C4(0, &qword_27F2394A0);
      v21 = v11;
      v22 = v5;
      v23 = sub_24F92C408();

      if ((v23 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v11)
    {
      goto LABEL_27;
    }

    if (v34)
    {
LABEL_41:
      if (v12)
      {
        if (v31 != v33 || v20 != v12)
        {
          goto LABEL_47;
        }

LABEL_44:
        sub_24EE5C4A0(v36);
        return 1;
      }

      goto LABEL_27;
    }

LABEL_37:

    sub_24EE5C4A0(v36);
    if (!v12)
    {
      return 1;
    }

LABEL_38:

    return 0;
  }

  if (v7)
  {
    if (v13 != 1)
    {
      goto LABEL_26;
    }

    v35 = v6;
    v24 = v10;
    sub_24E69A5C4(0, &qword_27F21BCB0);
    v33 = v24;
    v25 = v24;
    v20 = v35;
    sub_24ED21BB0(v9, v8, v11, v25, v12, 1);
    v31 = v4;
    sub_24ED21BB0(v2, v3, v5, v4, v35, 1);
    if ((sub_24F92C408() & 1) == 0 || (sub_24F92C408() & 1) == 0)
    {
      goto LABEL_27;
    }

    if (v5)
    {
      if (!v11)
      {
        goto LABEL_27;
      }

      sub_24E69A5C4(0, &qword_27F2394A0);
      v26 = v11;
      v27 = v5;
      v28 = sub_24F92C408();

      if ((v28 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v11)
    {
      goto LABEL_27;
    }

    if (v35)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  if (v13)
  {
    goto LABEL_26;
  }

  v32 = v10;
  sub_24E69A5C4(0, &qword_27F21BCB0);
  sub_24ED21BB0(v9, v8, v11, v32, v12, 0);
  v14 = v4;
  sub_24ED21BB0(v2, v3, v5, v4, v6, 0);
  if ((sub_24F92C408() & 1) == 0)
  {
    goto LABEL_27;
  }

  if (!v3)
  {
    if (!v8)
    {
      goto LABEL_30;
    }

LABEL_27:
    sub_24EE5C4A0(v36);
    return 0;
  }

  if (!v8)
  {
    goto LABEL_27;
  }

  sub_24E69A5C4(0, &qword_27F2394A0);
  v15 = v8;
  v16 = v3;
  v17 = sub_24F92C408();

  if ((v17 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_30:
  if (!v14)
  {

    sub_24EE5C4A0(v36);
    if (!v32)
    {
      return 1;
    }

    goto LABEL_38;
  }

  if (!v32)
  {
    goto LABEL_27;
  }

  if (v5 == v11 && v14 == v32)
  {
    goto LABEL_44;
  }

LABEL_47:
  v30 = sub_24F92CE08();
  sub_24EE5C4A0(v36);
  return v30 & 1;
}

unint64_t sub_24EE5C090()
{
  result = qword_27F231C90;
  if (!qword_27F231C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231C90);
  }

  return result;
}

uint64_t sub_24EE5C0E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24EE5C12C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_24EE5C17C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_24EE5C1C0()
{
  result = qword_27F231C98;
  if (!qword_27F231C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231C98);
  }

  return result;
}

unint64_t sub_24EE5C214()
{
  result = qword_27F231CA0;
  if (!qword_27F231CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231CA0);
  }

  return result;
}

uint64_t sub_24EE5C268(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = sub_24F928388();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  sub_24F928398();
  v10 = sub_24F9282C8();
  v11 = *(v4 + 8);
  v12 = v9;
  v13 = v22;
  v11(v12, v3);
  sub_24F928398();
  v14 = JSONObject.appStoreColor.getter();
  v11(v7, v3);
  if (v14)
  {
    v15 = *&v10;
    if ((v10 & 0x100000000) != 0)
    {
      v15 = 1.0;
    }

    v16 = [v14 colorWithAlphaComponent_];

    return v16;
  }

  else
  {
    v18 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v19 = MEMORY[0x277D84F90];
    *v20 = a1;
    v20[1] = v13;
    v20[2] = &type metadata for TitleEffect;
    v20[3] = v19;
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D22540], v18);
    swift_willThrow();
  }
}

uint64_t sub_24EE5C4A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231CA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EE5C51C()
{
  result = qword_27F231CB0;
  if (!qword_27F231CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231CB0);
  }

  return result;
}

uint64_t sub_24EE5C570()
{
  v0 = sub_24F92CB88();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

void *ArcadeDiffablePageContentPresenter.__allocating_init(objectGraph:subscriptionManager:subscriptionState:stateTimeOut:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  swift_allocObject();
  v16 = sub_24EE5DFD4(a1, a2, a3, a4, a5, a6, a7, a8);

  return v16;
}

void *ArcadeDiffablePageContentPresenter.init(objectGraph:subscriptionManager:subscriptionState:stateTimeOut:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = sub_24EE5DFD4(a1, a2, a3, a4, a5, a6, a7, a8);

  return v9;
}

uint64_t sub_24EE5C6EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74 = a8;
  v87 = a6;
  v88 = a7;
  v83 = a5;
  LODWORD(v89) = a4;
  v86 = a3;
  v84 = type metadata accessor for ArcadePageIntent();
  MEMORY[0x28223BE20](v84);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F927D88();
  v81 = *(v11 - 8);
  v82 = v11;
  MEMORY[0x28223BE20](v11);
  v79 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_24F927DC8();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_24F927DE8();
  v76 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v75 = &v67 - v17;
  v73 = sub_24F92AAE8();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v67 - v21;
  v23 = sub_24F91F4A8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v71 = &v67 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v67 - v29;
  v32 = v31;
  v34 = v33;
  sub_24E60169C(a2, v22, &qword_27F228530);
  if ((*(v32 + 48))(v22, 1, v34) == 1)
  {
    sub_24E601704(v22, &qword_27F228530);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229660);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231CD0);
    sub_24E602068(&qword_27F231CD8, &qword_27F231CD0);
    swift_allocError();
    *v35 = 0;
    return sub_24F92A978();
  }

  else
  {
    v37 = v89;
    v38 = *(v32 + 32);
    v89 = (v32 + 32);
    v70 = v38;
    v38(v30, v22, v34);
    v39 = v34;
    v40 = v37 >> 6;
    if (v37 >> 6 == 3)
    {
      v68 = v30;
      v69 = v32;
      v84 = v39;
      v41 = v86;
      if (v86)
      {
        sub_24F234048();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F9479A0;
        sub_24F9283A8();
        v93 = &type metadata for ArcadeState;
        aBlock = v41;
        LOBYTE(v91) = v37;
        sub_24F928438();
        sub_24E601704(&aBlock, &qword_27F2129B0);
        sub_24F9283A8();
        v42 = v73;
        sub_24F92A5A8();

        (*(v72 + 8))(v19, v42);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229660);
        v43 = sub_24F92A9E8();
        LOBYTE(aBlock) = -63;
        swift_retain_n();
        v86 = ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(&aBlock);
        v44 = v69;
        v45 = v71;
        v46 = v68;
        v47 = v84;
        (*(v69 + 16))(v71, v68, v84);
        v48 = (*(v44 + 80) + 16) & ~*(v44 + 80);
        v49 = (v24 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
        v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
        v51 = swift_allocObject();
        v70(v51 + v48, v45, v47);
        *(v51 + v49) = v87;
        *(v51 + v50) = v88;
        *(v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8)) = v43;
        v52 = sub_24E74EC40();

        v53 = sub_24F92BEF8();
        v93 = v52;
        v94 = MEMORY[0x277D225C0];
        aBlock = v53;
        sub_24F92A958();

        (*(v44 + 8))(v46, v47);
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        return v43;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229660);
        v57 = sub_24F92A9E8();
        sub_24E74EC40();

        v88 = sub_24F92BEF8();
        sub_24F927DD8();
        v58 = v75;
        sub_24F927E58();
        v89 = *(v76 + 8);
        v89(v15, v85);
        v94 = sub_24EE5F2E4;
        v95 = v57;
        aBlock = MEMORY[0x277D85DD0];
        v91 = 1107296256;
        v92 = sub_24EAF8248;
        v93 = &block_descriptor_82;
        v59 = _Block_copy(&aBlock);

        v60 = v77;
        sub_24F927DA8();
        aBlock = MEMORY[0x277D84F90];
        sub_24E858250();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
        sub_24E602068(&qword_27F222940, &qword_27F222310);
        v61 = v79;
        v62 = v82;
        sub_24F92C6A8();
        v63 = v88;
        MEMORY[0x253051820](v58, v60, v61, v59);
        _Block_release(v59);

        (*(v81 + 8))(v61, v62);
        (*(v78 + 8))(v60, v80);
        v89(v58, v85);
        (*(v69 + 8))(v68, v84);
        return v57;
      }
    }

    else
    {
      v54 = v39;
      (*(v32 + 16))(v25, v30);
      if (v37 > 0x3F)
      {
        if (v40 == 2)
        {
          v56 = 0;
          v55 = (v37 & 0x3F) == 1;
        }

        else
        {
          v55 = 0;
          v56 = 0;
        }
      }

      else
      {
        v55 = 0;
        v56 = v86 == 1;
      }

      v70(v10, v25, v54);
      v64 = v84;
      v10[*(v84 + 20)] = v40 == 2;
      v10[*(v64 + 24)] = v56;
      v10[*(v64 + 28)] = v55;
      type metadata accessor for JSIntentDispatcher();
      sub_24F928FD8();
      sub_24F92A758();
      sub_24F929C28();

      sub_24F928FE8();
      sub_24F929BF8();

      v65 = sub_24F929C08();

      v66 = sub_24EB4700C(v10, v65, "GameStoreKit/ArcadeDiffablePageContentPresenter.swift", 53, 2);

      sub_24EE5F288(v10);
      (*(v32 + 8))(v30, v54);
      return v66;
    }
  }
}

uint64_t sub_24EE5D2B0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[1] = a4;
  v25[2] = a5;
  v7 = sub_24F91F4A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ArcadePageIntent();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[8];
  (*(v8 + 16))(v10, a2, v7, v12);
  v17 = v16 >> 6;
  if (v16 > 0x3F)
  {
    if (v17 == 2)
    {
      v19 = 0;
      v18 = (v16 & 0x3F) == 1;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }
  }

  else
  {
    v18 = 0;
    v19 = v15 == 1;
  }

  v20 = v17 == 2;
  (*(v8 + 32))(v14, v10, v7);
  v14[v11[5]] = v20;
  v14[v11[6]] = v19;
  v14[v11[7]] = v18;
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  sub_24F929C28();

  sub_24F928FE8();
  sub_24F929BF8();

  v21 = sub_24F929C08();

  sub_24EB4700C(v14, v21, "GameStoreKit/ArcadeDiffablePageContentPresenter.swift", 53, 2);
  v22 = sub_24E74EC40();
  swift_retain_n();
  v23 = sub_24F92BEF8();
  v26[3] = v22;
  v26[4] = MEMORY[0x277D225C0];
  v26[0] = v23;
  sub_24F92A958();

  sub_24EE5F288(v14);
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

void sub_24EE5D5A8()
{
  sub_24EE5F4A8();
  v0 = swift_allocError();
  sub_24F92A9A8();
}

uint64_t sub_24EE5D600(uint64_t a1)
{
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  sub_24F929C28();

  sub_24F928FE8();
  sub_24F929BF8();

  v2 = sub_24F929C18();

  v3 = sub_24EB46264(a1, v2, "GameStoreKit/ArcadeDiffablePageContentPresenter.swift", 53, 2);

  return v3;
}

uint64_t sub_24EE5D6F0(uint64_t a1, uint64_t a2)
{
  sub_24E615E00(a1, v6);
  sub_24E615E00(a2, &v7);
  sub_24E60169C(v6, v4, &qword_27F222A30);
  sub_24EE5D790(v4, v5);
  sub_24E601704(v6, &qword_27F222A30);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_24EE5D790(uint64_t a1, uint64_t a2)
{
  sub_24E615E00(a1, v9);
  sub_24E615E00(a2, &v10);
  v8 = MEMORY[0x277D84F90];
  v7 = 0;
  v4[2] = v9;
  v4[3] = &v7;
  v4[4] = &v8;
  sub_24E962AA4(1, sub_24EE5F27C, v4);
  v5 = v8;
  v6 = 17;

  sub_24F92AD88();
  sub_24E96513C(v5, v6);

  return sub_24E601704(v9, &qword_27F222A30);
}

uint64_t (*sub_24EE5D874(uint64_t a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EE5F274;
  *(v2 + 24) = a1;

  return sub_24E965698;
}

void *sub_24EE5D8EC(void *a1, void *a2, _BYTE *a3, void *a4)
{
  v8 = OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F928D68();
  v9 = MEMORY[0x253052150](a1 + v8, v17);
  v10 = sub_24E6585F8(v17);
  if (v9)
  {
    v11 = a1[3];
    MEMORY[0x28223BE20](v10);
    v16[2] = a2;

    v12 = sub_24ED75C20(sub_24E965334, v16, v11);
    if (*(a1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
    {
      v13 = 1;
    }

    else if (*(v11 + 16))
    {
      v13 = *(v12 + 16) == 0;
    }

    else
    {
      v13 = 0;
    }

    *a3 = v13;
    v17[0] = 104;
    a1 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v12, v17, 1, v13);

    MEMORY[0x253050F00](v14);
    if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    sub_24F92B638();
  }

  else
  {
  }

  return a1;
}

uint64_t ArcadeDiffablePageContentPresenter.deinit()
{
  v0 = _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();

  return v0;
}

uint64_t ArcadeDiffablePageContentPresenter.__deallocating_deinit()
{
  _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_24EE5DB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_24E824448(a10);
  sub_24E824448(a6);
  sub_24E824448(a4);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_24EE5DC04(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2133F0);
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = v39 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C8);
  result = sub_24F92CB28();
  v8 = result;
  v9 = 0;
  v47 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v44 = qword_27F231CB8;
  v16 = (v13 + 63) >> 6;
  v39[3] = v3 + 16;
  v39[2] = v3 + 32;
  v41 = v3;
  v39[1] = v3 + 8;
  v46 = result + 64;
  if ((v14 & v10) != 0)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = v47;
      sub_24E65864C(*(v47 + 48) + 40 * v20, v51);
      v22 = *(*(v21 + 56) + 8 * v20);
      v48 = v51[0];
      v49 = v51[1];
      v50 = v52;
      if (*(v22 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel))
      {
        break;
      }

LABEL_18:
      *(v46 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v34 = v8[6] + 40 * v20;
      v35 = v49;
      *v34 = v48;
      *(v34 + 16) = v35;
      *(v34 + 32) = v50;
      *(v8[7] + 8 * v20) = v22;
      v36 = v8[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_23;
      }

      v8[2] = v38;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v53 = v15;
    v24 = v44;
    v23 = v45;
    swift_beginAccess();
    v25 = *(v23 + v24);
    if (*(v25 + 16))
    {
      v26 = OBJC_IVAR____TtC12GameStoreKit5Shelf_id;

      v27 = sub_24E76D934(v22 + v26);
      if (v28)
      {
        v29 = *(v25 + 56);
        v39[0] = v8;
        v30 = v41;
        v31 = v40;
        v32 = v42;
        (*(v41 + 16))(v40, v29 + *(v41 + 72) * v27, v42);
        (*(v30 + 32))(v43, v31, v32);
        swift_endAccess();
        sub_24F9280B8();

        v33 = *(v30 + 8);
        v8 = v39[0];
        result = v33(v43, v32);
LABEL_17:
        v15 = v53;
        goto LABEL_18;
      }
    }

    else
    {
    }

    swift_endAccess();

    goto LABEL_17;
  }

LABEL_5:
  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {

      return v8;
    }

    v19 = *(v11 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void *sub_24EE5DFD4(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = v8;
  v88 = a5;
  v97 = a2;
  v98 = a1;
  v96 = *v9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v91 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8);
  v95 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v87 - v18;
  v89 = &v87 - v18;
  v93 = *a3;
  v92 = *(a3 + 8);
  v20 = qword_27F231CB8;
  v21 = MEMORY[0x277D84F90];
  *(v9 + v20) = sub_24E60A498(MEMORY[0x277D84F90]);
  v100 = a4;
  sub_24E60169C(a4, v19, &qword_27F228530);
  *(v9 + qword_27F22F198) = 0;
  *(v9 + qword_27F22F1A0) = v21;
  v22 = qword_27F39C780;
  v99 = a7;

  v94 = a6;

  *(v9 + v22) = sub_24E60986C(v21);
  v23 = (v9 + qword_27F22F1A8);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v9 + qword_27F22F1B0);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v9 + qword_27F22F1B8);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v9 + qword_27F22F1C0);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v9 + qword_27F22F1C8);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v9 + qword_27F39C788);
  *v28 = 0u;
  v28[1] = 0u;
  *(v28 + 25) = 0u;
  *(v9 + qword_27F39C790) = 0;
  *(v9 + qword_27F22F1D0) = 0;
  *(v9 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v9 + qword_27F39C798) = 0;
  v29 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD28);
  swift_allocObject();
  *(v9 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v9 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD40);
  swift_allocObject();
  *(v9 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7B8;
  swift_allocObject();
  *(v9 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v9 + v33) = sub_24F92ADA8();
  v34 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  *(v9 + v34) = sub_24F92ADA8();
  v35 = qword_27F22F1E0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v37 = *(*(v36 - 8) + 56);
  v37(v9 + v35, 1, 1, v36);
  v38 = v36;
  v39 = v88;
  v37(v9 + qword_27F22F1E8, 1, 1, v38);
  v9[2] = v98;
  sub_24E911D90(v89, v9 + qword_27F39C7D0);
  v40 = *v23;
  *v23 = 0;
  v23[1] = 0;
  sub_24E824448(v40);
  v41 = *v25;
  *v25 = 0;
  v25[1] = 0;
  sub_24E824448(v41);
  if (v39)
  {
    v42 = swift_allocObject();
    *(v42 + 16) = v39;
    v43 = sub_24E965688;
  }

  else
  {
    v43 = 0;
    v42 = 0;
  }

  v44 = *v24;
  *v24 = v43;
  v24[1] = v42;
  sub_24E824448(v44);
  v45 = *v26;
  *v26 = 0;
  v26[1] = 0;
  sub_24E824448(v45);
  v46 = *v27;
  *v27 = 0;
  v27[1] = 0;
  sub_24E824448(v46);
  v47 = v95;
  *(v9 + qword_27F22F1F0) = v94;
  v48 = v100;
  *(v9 + qword_27F39C7D8) = v99;
  sub_24E60169C(v48, v47, &qword_27F228530);
  v49 = (*(v91 + 80) + 16) & ~*(v91 + 80);
  v50 = (v49 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v49 + v90 + 23) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  sub_24E911D90(v47, v55 + v49);
  v56 = v55 + v50;
  *v56 = v93;
  *(v56 + 8) = v92;
  v57 = v96;
  v58 = v97;
  *(v55 + v51) = v97;
  v59 = v98;
  *(v55 + v52) = v98;
  v60 = v99;
  *(v55 + v53) = v99;
  *(v55 + v54) = a8;
  *(v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8)) = v57;
  v61 = swift_allocObject();
  *(v61 + 16) = v59;
  *(v61 + 24) = v60;
  v62 = swift_allocObject();
  swift_weakInit();
  v63 = swift_allocObject();
  *(v63 + 16) = sub_24EE5EA9C;
  *(v63 + 24) = v55;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_24E94DEE8;
  *(v64 + 24) = v63;
  v65 = (v9 + qword_27F22F1A8);
  v66 = *(v9 + qword_27F22F1A8);
  *v65 = sub_24E965630;
  v65[1] = v64;
  swift_retain_n();
  swift_retain_n();

  v67 = v58;

  sub_24E824448(v66);
  v68 = (v9 + qword_27F22F1B0);
  v69 = *(v9 + qword_27F22F1B0);
  v70 = *(v9 + qword_27F22F1B0 + 8);
  if (v69)
  {
    v71 = swift_allocObject();
    *(v71 + 16) = v69;
    *(v71 + 24) = v70;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_24E94DF50;
    *(v72 + 24) = v71;
    v73 = sub_24E965648;
  }

  else
  {
    v73 = 0;
    v72 = *(v9 + qword_27F22F1B0 + 8);
  }

  *v68 = v73;
  v68[1] = v72;
  sub_24E5FCA4C(v69);
  sub_24E824448(v69);
  v74 = swift_allocObject();
  *(v74 + 16) = sub_24EE5EC08;
  *(v74 + 24) = v62;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_24E94DFB8;
  *(v75 + 24) = v74;
  v76 = (v9 + qword_27F22F1B8);
  v77 = *(v9 + qword_27F22F1B8);
  *v76 = sub_24E965640;
  v76[1] = v75;

  sub_24E824448(v77);
  v78 = (v9 + qword_27F22F1C0);
  v79 = *(v9 + qword_27F22F1C0);
  *v78 = sub_24EE5EBC8;
  v78[1] = v61;

  sub_24E824448(v79);
  v80 = (v9 + qword_27F22F1C8);
  v81 = *(v9 + qword_27F22F1C8);
  v82 = *(v9 + qword_27F22F1C8 + 8);
  if (v81)
  {
    v83 = swift_allocObject();
    *(v83 + 16) = v81;
    *(v83 + 24) = v82;
    v84 = swift_allocObject();
    *(v84 + 16) = sub_24E94DEE8;
    *(v84 + 24) = v83;
    v85 = sub_24E965630;
  }

  else
  {
    v85 = 0;
    v84 = *(v9 + qword_27F22F1C8 + 8);
  }

  *v80 = v85;
  v80[1] = v84;
  sub_24E5FCA4C(v81);
  sub_24E824448(v81);

  sub_24E601704(v100, &qword_27F228530);
  return v9;
}

uint64_t type metadata accessor for ArcadeDiffablePageContentPresenter()
{
  result = qword_27F231CC0;
  if (!qword_27F231CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE5E928()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_24F91F4A8();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  sub_24EB6CE70(*(v0 + ((v2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8));

  return swift_deallocObject();
}

uint64_t sub_24EE5EA9C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1 + v6;
  v11 = *v10;
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + v9);
  v15 = *(v1 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = *(v10 + 8);

  return sub_24EE5C6EC(a1, v1 + v4, v11, v16, v12, v13, v14, v15);
}

uint64_t sub_24EE5EB88()
{

  return swift_deallocObject();
}

uint64_t sub_24EE5EBD0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EE5EC08(uint64_t a1)
{
  sub_24EE5ECA4(a1);
}

uint64_t sub_24EE5EC34()
{

  return swift_deallocObject();
}

uint64_t sub_24EE5EC6C()
{

  return swift_deallocObject();
}

uint64_t sub_24EE5ECA4(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2133F0);
  v43 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = v38 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a1;
  }

  v8 = Strong;
  v9 = qword_27F39C780;
  swift_beginAccess();

  v11 = sub_24EE5DC04(v10, v8);

  *(v8 + v9) = v11;

  v12 = sub_24E60A498(MEMORY[0x277D84F90]);
  v13 = qword_27F231CB8;
  swift_beginAccess();
  v48 = v13;
  *(v8 + v13) = v12;

  v14 = sub_24EC40820();
  v15 = v14;
  v38[0] = a1;
  if (v14 >> 62)
  {
LABEL_30:
    v16 = sub_24F92C738();
    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_31;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_31:

    return v38[0];
  }

LABEL_4:
  v17 = v4;
  v18 = 0;
  v45 = v15 & 0xC000000000000001;
  v39 = v15 & 0xFFFFFFFFFFFFFF8;
  v44 = (v43 + 32);
  v38[1] = v43 + 40;
  v41 = v15;
  v40 = v16;
  while (1)
  {
    if (v45)
    {
      v19 = MEMORY[0x253052270](v18, v15);
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v18 >= *(v39 + 16))
      {
        goto LABEL_28;
      }

      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    if (*(v19 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel))
    {
      break;
    }

LABEL_6:
    ++v18;
    if (v20 == v16)
    {
      goto LABEL_31;
    }
  }

  v47 = v20;
  v46 = v19;
  sub_24E65864C(v19 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A50);
  sub_24E602068(&qword_27F222A58, &qword_27F222A50);

  sub_24F9288B8();
  type metadata accessor for ArcadeDiffablePageContentPresenter();
  v21 = v42;
  sub_24F9288C8();
  __swift_destroy_boxed_opaque_existential_1(v50);
  v4 = v48;
  swift_beginAccess();
  v22 = v8;
  v8 = *v44;
  v23 = v21;
  v24 = isUniquelyReferenced_nonNull_native;
  (*v44)(v17, v23, isUniquelyReferenced_nonNull_native);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *&v4[v22];
  v25 = v49;
  v15 = v22;
  *&v4[v22] = 0x8000000000000000;
  v27 = sub_24E76D934(v51);
  v28 = v25[2];
  v29 = (v26 & 1) == 0;
  v30 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
    goto LABEL_27;
  }

  v4 = v26;
  if (v25[3] >= v30)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v33 = v49;
      if (v26)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_24E8B07F0();
      v33 = v49;
      if (v4)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    v33[(v27 >> 6) + 8] |= 1 << v27;
    sub_24E65864C(v51, v33[6] + 40 * v27);
    isUniquelyReferenced_nonNull_native = v24;
    v8(v33[7] + *(v43 + 72) * v27, v17, v24);
    sub_24E6585F8(v51);
    v34 = v33[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_29;
    }

    v33[2] = v36;
    goto LABEL_25;
  }

  sub_24E89DAE8(v30, isUniquelyReferenced_nonNull_native);
  v31 = sub_24E76D934(v51);
  if ((v4 & 1) == (v32 & 1))
  {
    v27 = v31;
    v33 = v49;
    if ((v4 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_21:
    isUniquelyReferenced_nonNull_native = v24;
    (*(v43 + 40))(v33[7] + *(v43 + 72) * v27, v17, v24);
    sub_24E6585F8(v51);
LABEL_25:
    v8 = v15;
    *&v48[v15] = v33;

    swift_endAccess();

    v15 = v41;
    v16 = v40;
    v20 = v47;
    goto LABEL_6;
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24EE5F288(uint64_t a1)
{
  v2 = type metadata accessor for ArcadePageIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_82(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EE5F304()
{
  v1 = sub_24F91F4A8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24EE5F3C8(unsigned __int8 *a1)
{
  v3 = *(sub_24F91F4A8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EE5D2B0(a1, v1 + v4, v7, v8, v9);
}

unint64_t sub_24EE5F4A8()
{
  result = qword_27F231CE0;
  if (!qword_27F231CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231CE0);
  }

  return result;
}

uint64_t UpdatesLockup.version.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_version);

  return v1;
}

uint64_t UpdatesLockup.__allocating_init(adamId:bundleId:icon:heading:title:subtitle:ordinal:rating:whatsNew:version:size:buttonAction:offerDisplayProperties:clickAction:tertiaryTitle:contextMenuData:impressionMetrics:externalVersionId:releaseDate:installDate:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unsigned __int8 a27, uint64_t a28, uint64_t a29)
{
  v75 = a8;
  v73 = a7;
  v72 = a6;
  v71 = a5;
  v70 = a4;
  v69 = a3;
  v68 = a2;
  v58 = a29;
  v59 = a28;
  v80 = a22;
  v81 = a23;
  v79 = a21;
  v78 = a20;
  v76 = a24;
  v77 = a19;
  v74 = a13;
  v65 = a12;
  v64 = a11;
  v67 = a10;
  v66 = a9;
  LODWORD(v63) = a27;
  v57 = a26;
  v56 = sub_24F91F6B8();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v31 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v55 - v33;
  v35 = swift_allocObject();
  v36 = a1[1];
  v61 = *a1;
  v60 = v36;
  v62 = a14;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_whatsNew) = a14;
  v37 = (v35 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_version);
  *v37 = a15;
  v37[1] = a16;
  v38 = v35 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_size;
  *v38 = a17;
  v39 = v58;
  *(v38 + 8) = a18 & 1;
  v40 = v35 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_externalVersionId;
  *v40 = v57;
  v41 = v59;
  *(v40 + 8) = v63 & 1;
  sub_24E60169C(v41, v35 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_releaseDate, &unk_27F22EC30);
  sub_24E60169C(v39, v35 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_installDate, &unk_27F22EC30);
  v88 = 0;
  memset(v87, 0, sizeof(v87));
  v63 = a25;
  sub_24E60169C(a25, v34, &qword_27F213E68);
  *(v35 + 424) = 4;
  sub_24E60169C(v87, &v84, &qword_27F235830);
  if (*(&v85 + 1))
  {
    v42 = v85;
    *(v35 + 448) = v84;
    *(v35 + 464) = v42;
    *(v35 + 480) = v86;
  }

  else
  {

    sub_24F91F6A8();
    v43 = sub_24F91F668();
    v45 = v44;
    (*(v55 + 8))(v31, v56);
    v82 = v43;
    v83 = v45;
    sub_24F92C7F8();
    sub_24E601704(&v84, &qword_27F235830);
  }

  sub_24E60169C(v34, v35 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68);

  v46 = v60;
  *(v35 + 16) = v61;
  *(v35 + 24) = v46;
  v47 = v69;
  *(v35 + 32) = v68;
  *(v35 + 40) = v47;
  *(v35 + 48) = v70;
  *(v35 + 56) = 0;
  v48 = v65;
  *(v35 + 64) = v64;
  *(v35 + 72) = v48;
  v49 = v72;
  *(v35 + 80) = v71;
  *(v35 + 88) = v49;
  v50 = v75;
  *(v35 + 96) = v73;
  *(v35 + 104) = v50;
  v51 = v67;
  *(v35 + 112) = v66;
  *(v35 + 120) = v51;
  *(v35 + 128) = 0;
  *(v35 + 136) = 2;
  *(v35 + 144) = 0;
  *(v35 + 152) = 0;
  *(v35 + 184) = 0u;
  *(v35 + 200) = 0u;
  *(v35 + 216) = 0u;
  *(v35 + 376) = 0u;
  *(v35 + 392) = 0u;
  *(v35 + 408) = 0x8000;
  *(v35 + 360) = v76;
  *(v35 + 416) = 0;
  *(v35 + 432) = MEMORY[0x277D84FA0];
  *(v35 + 160) = v74;
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;
  *(v35 + 248) = 0;
  *(v35 + 256) = 0;
  v52 = v78;
  *(v35 + 232) = v77;
  *(v35 + 240) = v52;
  v53 = v80;
  *(v35 + 264) = v79;
  *(v35 + 272) = 0u;
  *(v35 + 288) = 0u;
  *(v35 + 304) = 0;
  *(v35 + 312) = v53;
  *(v35 + 328) = 0;
  *(v35 + 336) = 0;
  *(v35 + 320) = v81;
  sub_24E601704(v39, &unk_27F22EC30);
  sub_24E601704(v41, &unk_27F22EC30);
  sub_24E601704(v63, &qword_27F213E68);
  sub_24E601704(v34, &qword_27F213E68);
  sub_24E601704(v87, &qword_27F235830);
  *(v35 + 344) = MEMORY[0x277D84F90];
  *(v35 + 352) = 0;
  *(v35 + 440) = 0;
  *(v35 + 368) = 0;
  return v35;
}

uint64_t UpdatesLockup.init(adamId:bundleId:icon:heading:title:subtitle:ordinal:rating:whatsNew:version:size:buttonAction:offerDisplayProperties:clickAction:tertiaryTitle:contextMenuData:impressionMetrics:externalVersionId:releaseDate:installDate:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29)
{
  v30 = v29;
  v77 = a8;
  v75 = a7;
  v74 = a6;
  v73 = a5;
  v72 = a4;
  v71 = a3;
  v70 = a2;
  v61 = a29;
  v62 = a28;
  v78 = a24;
  v84 = a23;
  v82 = a22;
  v81 = a21;
  v80 = a20;
  v79 = a19;
  v76 = a13;
  v67 = a12;
  v66 = a11;
  v69 = a10;
  v68 = a9;
  v63 = a25;
  v60 = sub_24F91F6B8();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v33 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v58 - v35;
  v37 = a1[1];
  v65 = *a1;
  v64 = v37;
  v83 = a14;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_whatsNew) = a14;
  v38 = v36;
  v39 = (v30 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_version);
  *v39 = a15;
  v39[1] = a16;
  v40 = v30 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_size;
  *v40 = a17;
  v41 = v61;
  *(v40 + 8) = a18 & 1;
  v42 = v30 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_externalVersionId;
  *v42 = a26;
  v43 = v62;
  *(v42 + 8) = a27 & 1;
  sub_24E60169C(v43, v30 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_releaseDate, &unk_27F22EC30);
  v44 = v63;
  sub_24E60169C(v41, v30 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_installDate, &unk_27F22EC30);
  v94 = 0;
  memset(v93, 0, sizeof(v93));
  sub_24E60169C(v44, v38, &qword_27F213E68);
  *(v30 + 424) = 4;
  sub_24E60169C(v93, &v87, &qword_27F235830);
  if (*(&v88 + 1))
  {
    v90 = v87;
    v91 = v88;
    v92 = v89;
  }

  else
  {

    sub_24F91F6A8();
    v45 = sub_24F91F668();
    v47 = v46;
    (*(v59 + 8))(v33, v60);
    v85 = v45;
    v86 = v47;
    sub_24F92C7F8();
    sub_24E601704(&v87, &qword_27F235830);
  }

  v48 = v91;
  *(v30 + 448) = v90;
  *(v30 + 464) = v48;
  *(v30 + 480) = v92;
  sub_24E60169C(v38, v30 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68);
  v49 = v64;
  *(v30 + 16) = v65;
  *(v30 + 24) = v49;
  v50 = v71;
  *(v30 + 32) = v70;
  *(v30 + 40) = v50;
  *(v30 + 48) = v72;
  *(v30 + 56) = 0;
  v51 = v67;
  *(v30 + 64) = v66;
  *(v30 + 72) = v51;
  v52 = v74;
  *(v30 + 80) = v73;
  *(v30 + 88) = v52;
  v53 = v77;
  *(v30 + 96) = v75;
  *(v30 + 104) = v53;
  v54 = v69;
  *(v30 + 112) = v68;
  *(v30 + 120) = v54;
  *(v30 + 128) = 0;
  *(v30 + 136) = 2;
  *(v30 + 144) = 0;
  *(v30 + 152) = 0;
  *(v30 + 216) = 0u;
  *(v30 + 200) = 0u;
  *(v30 + 184) = 0u;
  *(v30 + 376) = 0u;
  *(v30 + 392) = 0u;
  *(v30 + 408) = 0x8000;
  *(v30 + 360) = v78;
  *(v30 + 416) = 0;
  *(v30 + 432) = MEMORY[0x277D84FA0];
  *(v30 + 160) = v76;
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;
  *(v30 + 248) = 0;
  *(v30 + 256) = 0;
  v55 = v80;
  *(v30 + 232) = v79;
  *(v30 + 240) = v55;
  *(v30 + 264) = v81;
  *(v30 + 272) = 0u;
  *(v30 + 288) = 0u;
  v56 = v82;
  *(v30 + 304) = 0;
  *(v30 + 312) = v56;
  *(v30 + 328) = 0;
  *(v30 + 336) = 0;
  *(v30 + 320) = v84;

  sub_24E601704(v41, &unk_27F22EC30);
  sub_24E601704(v43, &unk_27F22EC30);
  sub_24E601704(v44, &qword_27F213E68);
  sub_24E601704(v38, &qword_27F213E68);
  sub_24E601704(v93, &qword_27F235830);
  *(v30 + 344) = MEMORY[0x277D84F90];
  *(v30 + 352) = 0;
  *(v30 + 440) = 0;
  *(v30 + 368) = 0;
  return v30;
}

uint64_t UpdatesLockup.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v38 - v4;
  v5 = sub_24F9285B8();
  v41 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v46 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = sub_24F928388();
  v39 = *(v11 - 8);
  v12 = v39;
  MEMORY[0x28223BE20](v11);
  v44 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  type metadata accessor for Paragraph();
  sub_24F928398();
  v47 = v6;
  v17 = *(v6 + 16);
  v42 = v6 + 16;
  v43 = v17;
  (v17)(v10, v48, v5);
  sub_24EE60684();
  sub_24F929548();
  v18 = v40;
  *(v40 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_whatsNew) = v49;
  sub_24F928398();
  v19 = sub_24F928348();
  v21 = v20;
  v22 = *(v12 + 8);
  v22(v16, v11);
  v23 = (v18 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_version);
  v24 = v18;
  *v23 = v19;
  v23[1] = v21;
  sub_24F928398();
  v25 = sub_24F9282D8();
  LOBYTE(v21) = v26;
  v22(v16, v11);
  v27 = v18 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_size;
  *v27 = v25;
  *(v27 + 8) = v21 & 1;
  sub_24F928398();
  v28 = sub_24F9282D8();
  LOBYTE(v21) = v29;
  v22(v16, v11);
  v30 = v18 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_externalVersionId;
  *v30 = v28;
  *(v30 + 8) = v21 & 1;
  sub_24F928398();
  v31 = v45;
  sub_24F928288();
  v22(v16, v11);
  sub_24E6C4F90(v31, v24 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_releaseDate);
  v32 = v48;
  sub_24F928398();
  sub_24F928288();
  v22(v16, v11);
  sub_24E6C4F90(v31, v24 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_installDate);
  v33 = v44;
  (*(v39 + 16))(v44, a1, v11);
  v34 = v46;
  v35 = v41;
  v43(v46, v32);
  v36 = Lockup.init(deserializing:using:)(v33, v34);
  (*(v47 + 8))(v32, v35);
  v22(a1, v11);
  return v36;
}

unint64_t sub_24EE60684()
{
  result = qword_27F214718;
  if (!qword_27F214718)
  {
    type metadata accessor for Paragraph();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214718);
  }

  return result;
}

uint64_t sub_24EE60710()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_releaseDate, &unk_27F22EC30);
  return sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_installDate, &unk_27F22EC30);
}

uint64_t UpdatesLockup.deinit()
{
  v0 = Lockup.deinit();

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_releaseDate, &unk_27F22EC30);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_installDate, &unk_27F22EC30);
  return v0;
}

uint64_t UpdatesLockup.__deallocating_deinit()
{
  v0 = Lockup.deinit();

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_releaseDate, &unk_27F22EC30);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_installDate, &unk_27F22EC30);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UpdatesLockup()
{
  result = qword_27F231CE8;
  if (!qword_27F231CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EE60960()
{
  sub_24E728940();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_24EE60B4C(uint64_t a1)
{
  v2 = objc_opt_self();
  result = [v2 valueWithNewObjectInContext_];
  if (result)
  {
    v4 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8);
    v5 = [v2 valueWithObject:sub_24F92CF68() inContext:a1];
    result = swift_unknownObjectRelease();
    if (v5)
    {
      sub_24F92C328();
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}