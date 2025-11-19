uint64_t sub_24EE2732C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_24F91F6B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = type metadata accessor for InviteFriendsUpsellComponent();
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F6A8();
  (*(v4 + 16))(v6, v9, v3);
  sub_24EE2A1FC(&qword_27F2551B0, MEMORY[0x277CC95F0]);
  sub_24F92C7F8();
  (*(v4 + 8))(v9, v3);
  v14._countAndFlagsBits = 0xD000000000000028;
  v14._object = 0x800000024FA5F2F0;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v16 = localizedString(_:comment:)(v14, v15);
  object = v16._object;
  countAndFlagsBits = v16._countAndFlagsBits;
  v17._countAndFlagsBits = 0xD00000000000002BLL;
  v17._object = 0x800000024FA5F320;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = localizedString(_:comment:)(v17, v18);
  v37 = v19._countAndFlagsBits;
  v20._object = 0x800000024FA5F350;
  v20._countAndFlagsBits = 0xD000000000000015;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = localizedString(_:comment:)(v20, v21);
  v23 = type metadata accessor for PlayerPickerView(0);
  v24 = (a1 + *(v23 + 24));
  v26 = *v24;
  v25 = v24[1];
  v43[0] = v26;
  v43[1] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231018);
  sub_24F926F38();
  v27 = *&v41[0];
  swift_getKeyPath();
  v43[0] = v27;
  sub_24EE2A1FC(&qword_27F254F30, type metadata accessor for GameActivityPlayerPickerDataSource);
  sub_24F91FD88();

  LODWORD(v9) = *(v27 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__hasAnyFriendSuggestions);

  v28 = 36;
  if (v9)
  {
    v28 = 32;
  }

  sub_24E615E00(a1 + *(v23 + v28), v43);
  v29 = *(v11 + 44);
  v30 = sub_24F929608();
  (*(*(v30 - 8) + 56))(&v13[v29], 1, 1, v30);
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v31 = *&v43[7];
  *v13 = *&v43[5];
  *(v13 + 1) = v31;
  v33 = object;
  v32 = countAndFlagsBits;
  *(v13 + 4) = v43[9];
  *(v13 + 5) = v32;
  v34 = v37;
  *(v13 + 6) = v33;
  *(v13 + 7) = v34;
  *(v13 + 8) = v19._object;
  *(v13 + 72) = v22;
  sub_24E612C80(v43, (v13 + 88));
  v35 = &v13[*(v11 + 48)];
  *(v35 + 32) = 0;
  *v35 = 0u;
  *(v35 + 16) = 0u;
  sub_24E7D5870(v41, v35);
  sub_24EA3E4CC();
  sub_24F921D38();
  return sub_24EA3FFC4(v13);
}

uint64_t sub_24EE27700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231130) - 8;
  MEMORY[0x28223BE20](v62);
  v67 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v59 - v5;
  v66 = sub_24F926DF8();
  v65 = sub_24F926C48();
  KeyPath = swift_getKeyPath();
  v63 = sub_24F925838();
  sub_24F923318();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  LOBYTE(v77._countAndFlagsBits) = 0;
  v15._object = 0x800000024FA5F2C0;
  v15._countAndFlagsBits = 0xD00000000000002BLL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v77 = localizedString(_:comment:)(v15, v16);
  sub_24E600AEC();
  v17 = sub_24F925E18();
  v19 = v18;
  v21 = v20;
  v77._countAndFlagsBits = sub_24F926C48();
  v22 = sub_24F925C58();
  v69 = v23;
  v60 = v24;
  v70 = v25;
  sub_24E600B40(v17, v19, v21 & 1);

  v26 = (a1 + *(type metadata accessor for PlayerPickerView(0) + 24));
  v28 = *v26;
  v27 = v26[1];
  *&v72 = v28;
  *(&v72 + 1) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231018);
  sub_24F926F58();
  countAndFlagsBits = v77._countAndFlagsBits;
  object = v77._object;
  v31 = v78;
  swift_getKeyPath();
  *&v72 = countAndFlagsBits;
  *(&v72 + 1) = object;
  *&v73 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F10);
  sub_24F927188();

  LOBYTE(v19) = v60 & 1;
  v61 = v22;
  sub_24E5FD138(v22, v69, v60 & 1);

  sub_24F9277E8();
  LOBYTE(a1) = sub_24F925808();
  sub_24F923318();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231138) + 36)];
  *v40 = a1;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  LOBYTE(a1) = sub_24F925858();
  sub_24F923318();
  v41 = *(v62 + 44);
  v59 = v6;
  v42 = &v6[v41];
  *v42 = a1;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  v47 = v67;
  sub_24E60169C(v6, v67, &qword_27F231130);
  v48 = v66;
  *&v72 = v66;
  v49 = KeyPath;
  *(&v72 + 1) = KeyPath;
  v50 = v65;
  *&v73 = v65;
  LOBYTE(v22) = v63;
  BYTE8(v73) = v63;
  *(&v73 + 9) = *v71;
  HIDWORD(v73) = *&v71[3];
  *&v74 = v8;
  *(&v74 + 1) = v10;
  *&v75 = v12;
  *(&v75 + 1) = v14;
  v76 = 0;
  v51 = v72;
  v52 = v73;
  v53 = v74;
  v54 = v75;
  v55 = v68;
  *(v68 + 64) = 0;
  v55[2] = v53;
  v55[3] = v54;
  *v55 = v51;
  v55[1] = v52;
  v56 = v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231140);
  sub_24E60169C(v47, v56 + *(v57 + 48), &qword_27F231130);
  sub_24E60169C(&v72, &v77, &qword_27F231148);
  sub_24E600B40(v61, v69, v19);

  sub_24E601704(v59, &qword_27F231130);
  sub_24E601704(v47, &qword_27F231130);
  v77._countAndFlagsBits = v48;
  v77._object = v49;
  v78 = v50;
  v79 = v22;
  *v80 = *v71;
  *&v80[3] = *&v71[3];
  v81 = v8;
  v82 = v10;
  v83 = v12;
  v84 = v14;
  v85 = 0;
  return sub_24E601704(&v77, &qword_27F231148);
}

uint64_t sub_24EE27CB4(uint64_t a1)
{
  v1[25] = a1;
  sub_24F92B7F8();
  v1[26] = sub_24F92B7E8();
  v3 = sub_24F92B778();
  v1[27] = v3;
  v1[28] = v2;

  return MEMORY[0x2822009F8](sub_24EE27D4C, v3, v2);
}

uint64_t sub_24EE27D4C()
{
  v1 = *(v0 + 200);
  v2 = type metadata accessor for PlayerPickerView(0);
  *(v0 + 232) = v2;
  v3 = (v1 + *(v2 + 44));
  v4 = *v3;
  *(v0 + 36) = *v3;
  v5 = *(v3 + 1);
  *(v0 + 40) = v4;
  *(v0 + 240) = v5;
  *(v0 + 48) = v5;
  *(v0 + 33) = 1;

  *(v0 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F48();
  v6 = (v1 + *(v2 + 24));
  v7 = *v6;
  *(v0 + 256) = *v6;
  v8 = v6[1];
  *(v0 + 264) = v8;
  *(v0 + 56) = v7;
  *(v0 + 64) = v8;
  *(v0 + 272) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231018);
  sub_24F926F38();
  *(v0 + 280) = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_24EE27E6C, 0, 0);
}

uint64_t sub_24EE27E6C()
{
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_24EE27F38;
  v2 = *(v0 + 280);
  v3 = MEMORY[0x277D84F78] + 8;
  v4 = MEMORY[0x277D84F78] + 8;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200740](v1, v3, v4, 0, 0, &unk_24F9A52D8, v2, v5);
}

void sub_24EE27F38()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_24EE2805C, 0, 0);
  }
}

uint64_t sub_24EE2805C()
{
  sub_24F8F0D1C();

  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return MEMORY[0x2822009F8](sub_24EE280C8, v1, v2);
}

uint64_t sub_24EE280C8()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);

  *(v0 + 72) = v2;
  *(v0 + 80) = v1;
  sub_24F926F38();
  v3 = sub_24F8FD110();

  if (v3 >> 62)
  {
    v4 = sub_24F92C738();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 || (v5 = *(v0 + 264), *(v0 + 104) = *(v0 + 256), *(v0 + 112) = v5, sub_24F926F38(), v6 = *(v0 + 152), swift_getKeyPath(), *(v0 + 160) = v6, sub_24EE2A1FC(&qword_27F254F30, type metadata accessor for GameActivityPlayerPickerDataSource), sub_24F91FD88(), , v7 = *(v6 + 24), swift_getKeyPath(), *(v0 + 168) = v6, , sub_24F91FD88(), , v8 = *(v6 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__searchText), v9 = *(v6 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__searchText + 8), , v10 = sub_24F8E1A64(v8, v9, v7), , , , v11 = *(v10 + 16), , v11))
  {
    v12 = 1;
  }

  else
  {
    v20 = *(v0 + 264);
    *(v0 + 120) = *(v0 + 256);
    *(v0 + 128) = v20;
    sub_24F926F38();
    v21 = *(v0 + 176);
    swift_getKeyPath();
    *(v0 + 184) = v21;
    sub_24F91FD88();

    v22 = *(v21 + 16);
    swift_getKeyPath();
    *(v0 + 192) = v21;

    sub_24F91FD88();

    v24 = *(v21 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__searchText);
    v23 = *(v21 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__searchText + 8);

    v25 = sub_24F8E1544(v24, v23, v22);

    v26 = *(v25 + 16);

    v12 = v26 != 0;
  }

  v13 = *(v0 + 240);
  v14 = (*(v0 + 200) + *(*(v0 + 232) + 48));
  v15 = *v14;
  v16 = v14[1];
  LOBYTE(v14) = *(v14 + 16);
  *(v0 + 16) = v15;
  v17 = *(v0 + 36);
  *(v0 + 24) = v16;
  *(v0 + 32) = v14;
  *(v0 + 34) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
  sub_24F927178();
  *(v0 + 88) = v17;
  *(v0 + 96) = v13;
  *(v0 + 35) = 0;
  sub_24F926F48();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_24EE2842C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924F28();
  v61 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24F925218();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v63 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v10);
  v66 = &v47[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v47[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v15 - 8);
  v62 = &v47[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v64 = &v47[-v18];
  MEMORY[0x28223BE20](v19);
  v65 = &v47[-v20];
  MEMORY[0x28223BE20](v21);
  v67 = &v47[-v22];
  MEMORY[0x28223BE20](v23);
  v25 = &v47[-v24];
  MEMORY[0x28223BE20](v26);
  v28 = &v47[-v27];
  v29 = type metadata accessor for PlayerPickerView.SearchableModifier(0);
  if (*(v2 + *(v29 + 28)) != 1)
  {
    v55 = v29;
    v49 = v6;
    v50 = v4;
    v60 = a1;
    v57 = v2;
    sub_24F769764(v28);
    v31 = v8[13];
    v53 = *MEMORY[0x277CE0560];
    v54 = v8 + 13;
    v52 = v31;
    v31(v25);
    v51 = v8[7];
    v51(v25, 0, 1, v7);
    v56 = v10;
    v32 = *(v10 + 48);
    sub_24E60169C(v28, v14, &qword_27F215598);
    sub_24E60169C(v25, &v14[v32], &qword_27F215598);
    v59 = v8;
    v33 = v8[6];
    v34 = v7;
    if (v33(v14, 1, v7) == 1)
    {
      v58 = v33;
      sub_24E601704(v25, &qword_27F215598);
      sub_24E601704(v28, &qword_27F215598);
      if (v58(&v14[v32], 1, v7) != 1)
      {
LABEL_17:
        sub_24E601704(v14, &unk_27F254F20);
        return sub_24F924F48();
      }

      sub_24E601704(v14, &qword_27F215598);
    }

    else
    {
      v35 = v67;
      sub_24E60169C(v14, v67, &qword_27F215598);
      if (v33(&v14[v32], 1, v34) == 1)
      {
LABEL_15:
        v41 = v59;
        sub_24E601704(v25, &qword_27F215598);
        sub_24E601704(v28, &qword_27F215598);
        (v41[1])(v35, v34);
        goto LABEL_17;
      }

      v58 = v33;
      v36 = v63;
      (v59[4])(v63, &v14[v32], v34);
      sub_24EE2A1FC(&qword_27F215650, MEMORY[0x277CE0570]);
      v48 = sub_24F92AFF8();
      v37 = v59[1];
      v37(v36, v34);
      sub_24E601704(v25, &qword_27F215598);
      sub_24E601704(v28, &qword_27F215598);
      v37(v35, v34);
      sub_24E601704(v14, &qword_27F215598);
      if ((v48 & 1) == 0)
      {
        return sub_24F924F48();
      }
    }

    v28 = v65;
    sub_24F769764(v65);
    v25 = v64;
    v52(v64, v53, v34);
    v51(v25, 0, 1, v34);
    v38 = *(v56 + 48);
    v39 = v66;
    sub_24E60169C(v28, v66, &qword_27F215598);
    sub_24E60169C(v25, &v39[v38], &qword_27F215598);
    v40 = v58;
    if (v58(v39, 1, v34) == 1)
    {
      sub_24E601704(v25, &qword_27F215598);
      sub_24E601704(v28, &qword_27F215598);
      if (v40(&v39[v38], 1, v34) == 1)
      {
        sub_24E601704(v39, &qword_27F215598);
LABEL_21:
        v46 = v49;
        sub_24F924F18();
        sub_24F924F08();
        return (*(v61 + 8))(v46, v50);
      }

      v14 = v39;
      goto LABEL_17;
    }

    v35 = v62;
    sub_24E60169C(v39, v62, &qword_27F215598);
    if (v40(&v39[v38], 1, v34) == 1)
    {
      v14 = v39;
      goto LABEL_15;
    }

    v42 = v59;
    v43 = v63;
    (v59[4])(v63, &v39[v38], v34);
    sub_24EE2A1FC(&qword_27F215650, MEMORY[0x277CE0570]);
    v44 = sub_24F92AFF8();
    v45 = v42[1];
    v45(v43, v34);
    sub_24E601704(v25, &qword_27F215598);
    sub_24E601704(v28, &qword_27F215598);
    v45(v35, v34);
    sub_24E601704(v39, &qword_27F215598);
    if (v44)
    {
      goto LABEL_21;
    }

    return sub_24F924F48();
  }

  return sub_24F924F38();
}

uint64_t sub_24EE28CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v31 = a2;
  v32 = sub_24F925758();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v29 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F924F58();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231190);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = (v2 + *(type metadata accessor for PlayerPickerView.SearchableModifier(0) + 24));
  v12 = *v11;
  countAndFlagsBits = v11[1]._countAndFlagsBits;
  object = v11[1]._object;
  v34 = v12;
  v35 = countAndFlagsBits;
  v36 = object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231198);
  sub_24F927198();
  v23 = v33;
  sub_24EE2842C(v6);
  v15._object = 0x800000024FA5F370;
  v15._countAndFlagsBits = 0xD00000000000002FLL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v34 = localizedString(_:comment:)(v15, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2311A0);
  v21 = sub_24E602068(&qword_27F2311A8, &qword_27F2311A0);
  v22 = sub_24E600AEC();
  sub_24F926148();

  (*(v24 + 8))(v6, v25);
  v18 = v29;
  sub_24F925738();
  v34._countAndFlagsBits = v17;
  v34._object = MEMORY[0x277D837D0];
  v35 = v21;
  v36 = v22;
  swift_getOpaqueTypeConformance2();
  v19 = v26;
  sub_24F926898();
  (*(v30 + 8))(v18, v32);
  return (*(v27 + 8))(v10, v19);
}

uint64_t sub_24EE29080()
{
  v1 = type metadata accessor for PlayerPickerView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = type metadata accessor for Player(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  v35 = *(v6 - 8);
  v36 = *(v35 + 8);
  v36(v3 + v5, v6);

  if (*(v3 + v4[9] + 8) != 1)
  {
  }

  v7 = v3 + v4[13];
  v8 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v34 = v6;
    v9 = type metadata accessor for CallProviderConversationHandle();
    v10 = *(*(v9 - 8) + 48);
    if (!v10(v7, 1, v9))
    {

      v11 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v35 + 48))(v7 + v11, 1, v34))
      {
        v36(v7 + v11, v34);
      }
    }

    v12 = v7 + *(v8 + 20);
    if (!v10(v12, 1, v9))
    {

      v13 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v35 + 48))(v12 + v13, 1, v34))
      {
        v36(v12 + v13, v34);
      }
    }

    v6 = v34;
  }

  if (*(v3 + v4[15] + 8))
  {
  }

  v14 = v3 + v4[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v14, 1, PlayedTogetherInfo))
  {

    v16 = type metadata accessor for Game();
    v36(v14 + v16[18], v6);
    v17 = v16[19];
    if (!(*(v35 + 48))(v14 + v17, 1, v6))
    {
      v36(v14 + v17, v6);
    }

    v18 = v6;

    v19 = v16[21];
    v20 = sub_24F920818();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v14 + v19, 1, v20))
    {
      (*(v21 + 8))(v14 + v19, v20);
    }

    v6 = v18;
  }

  v22 = v3 + v4[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v22, 1, ChallengeInfo))
  {

    v24 = type metadata accessor for Game();
    v36(v22 + v24[18], v6);
    v25 = v24[19];
    if (!(*(v35 + 48))(v22 + v25, 1, v6))
    {
      v36(v22 + v25, v6);
    }

    v26 = v6;

    v27 = v24[21];
    v28 = sub_24F920818();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v22 + v27, 1, v28))
    {
      (*(v29 + 8))(v22 + v27, v28);
    }

    v6 = v26;
  }

  __swift_destroy_boxed_opaque_existential_1(v3 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[9]);
  v30 = v3 + v1[10];

  v31 = type metadata accessor for GameActivityDraftGameInfo(0);
  v36(v30 + *(v31 + 28), v6);

  v32 = v3 + v1[14];
  sub_24E669FC4(*v32, *(v32 + 8), *(v32 + 16), *(v32 + 24), *(v32 + 32));

  return swift_deallocObject();
}

uint64_t sub_24EE297D8()
{
  v2 = *(type metadata accessor for PlayerPickerView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24E614970;

  return sub_24EE27CB4(v0 + v3);
}

uint64_t sub_24EE298BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE29924(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24E614970;

  return sub_24F8F07AC(a1, a2, v2);
}

unint64_t sub_24EE299E0()
{
  result = qword_27F231070;
  if (!qword_27F231070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231050);
    sub_24E602068(&qword_27F231078, &qword_27F231080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231070);
  }

  return result;
}

unint64_t sub_24EE29A98()
{
  result = qword_27F231090;
  if (!qword_27F231090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F255060);
    sub_24EE29B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231090);
  }

  return result;
}

unint64_t sub_24EE29B24()
{
  result = qword_27F255070;
  if (!qword_27F255070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231098);
    sub_24E602068(&qword_27F255080, &qword_27F215FD0);
    sub_24E602068(&qword_27F236280, &qword_27F217118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F255070);
  }

  return result;
}

unint64_t sub_24EE29C08()
{
  result = qword_27F2310A0;
  if (!qword_27F2310A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231058);
    sub_24EE299E0();
    sub_24E602068(&qword_27F231088, &qword_27F231028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2310A0);
  }

  return result;
}

uint64_t sub_24EE29CC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE29D28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F255140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EE29DA0()
{
  result = qword_27F2310E0;
  if (!qword_27F2310E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231030);
    sub_24EE29E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2310E0);
  }

  return result;
}

unint64_t sub_24EE29E2C()
{
  result = qword_27F2310E8;
  if (!qword_27F2310E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2310D8);
    sub_24EE29EB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2310E8);
  }

  return result;
}

unint64_t sub_24EE29EB8()
{
  result = qword_27F2310F0;
  if (!qword_27F2310F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2310D0);
    sub_24EE29F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2310F0);
  }

  return result;
}

unint64_t sub_24EE29F44()
{
  result = qword_27F2310F8;
  if (!qword_27F2310F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2310C8);
    sub_24EE2A000();
    sub_24EE2A1FC(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2310F8);
  }

  return result;
}

unint64_t sub_24EE2A000()
{
  result = qword_27F231100;
  if (!qword_27F231100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2310C0);
    sub_24EE2A08C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231100);
  }

  return result;
}

unint64_t sub_24EE2A08C()
{
  result = qword_27F231108;
  if (!qword_27F231108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231110);
    sub_24EE2A144();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231108);
  }

  return result;
}

unint64_t sub_24EE2A144()
{
  result = qword_27F231118;
  if (!qword_27F231118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2310B8);
    sub_24E602068(&qword_27F231120, &qword_27F231128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231118);
  }

  return result;
}

uint64_t sub_24EE2A1FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EE2A270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EE2A350(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24EE2A418()
{
  sub_24E684120();
  if (v0 <= 0x3F)
  {
    sub_24EE2A4C8(319, &qword_27F231160, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EE2A4C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24EE2A51C()
{
  result = qword_27F231168;
  if (!qword_27F231168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231020);
    sub_24EE2A5D8();
    sub_24EE2A1FC(&qword_27F231188, type metadata accessor for PlayerPickerView.SearchableModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231168);
  }

  return result;
}

unint64_t sub_24EE2A5D8()
{
  result = qword_27F231170;
  if (!qword_27F231170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231008);
    sub_24E602068(&qword_27F231178, &qword_27F231180);
    sub_24EE2A1FC(&qword_27F211A48, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231170);
  }

  return result;
}

uint64_t sub_24EE2A6DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231190);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2311A0);
  sub_24E602068(&qword_27F2311A8, &qword_27F2311A0);
  sub_24E600AEC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t ShelfComponentTypeMappingProvider.componentType(for:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ItemLayoutContext();
  v9 = *(a4 + 8);
  v10 = a1 + *(v8 + 32);

  return v9(v10, a2, a3, a4);
}

uint64_t ShelfComponentTypeMappingProvider.configurableComponentContainerViewType(for:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 16))();
  if (result)
  {
    result = dynamic_cast_existential_2_conditional(result);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

{
  result = (*(a4 + 8))();
  if (result)
  {
    result = dynamic_cast_existential_2_conditional(result);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ShelfComponentTypeMappingProvider.componentType(for:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 8))();
}

{
  return (*(a4 + 16))();
}

__n128 _FrameLayout.init(view:skipLayoutMeasurements:shouldViewFitAvailableWidth:layoutMargins:)@<Q0>(__int128 *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  sub_24E612E28(a1, v18);
  BYTE8(v19) = a2;
  BYTE9(v19) = a3;
  *&v20 = a5;
  *(&v20 + 1) = a6;
  *&v21 = a7;
  *(&v21 + 1) = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229788);
  v15 = swift_allocObject();
  v16 = v20;
  *(v15 + 48) = v19;
  *(v15 + 64) = v16;
  *(v15 + 80) = v21;
  result = v18[1];
  *(v15 + 16) = v18[0];
  *(v15 + 32) = result;
  *a4 = v15;
  return result;
}

uint64_t _FrameLayout.placeChildren(relativeTo:in:)()
{
  v1 = *v0;
  swift_beginAccess();
  sub_24F92C1C8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (*(v1 + 56) == 1)
  {
    sub_24EE2B324(v1 + 16, v11);
    sub_24E612E28(v11, v12);
    __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v12);
    return sub_24F922128();
  }

  else
  {
    sub_24EE2B324(v1 + 16, v11);
    sub_24E612E28(v11, v12);
    __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_24F922288();
    __swift_destroy_boxed_opaque_existential_1(v12);
    if (*(v1 + 57))
    {
      v14.origin.x = v3;
      v14.origin.y = v5;
      v14.size.width = v7;
      v14.size.height = v9;
      CGRectGetWidth(v14);
    }

    v15.origin.x = v3;
    v15.origin.y = v5;
    v15.size.width = v7;
    v15.size.height = v9;
    CGRectGetMinX(v15);
    v16.origin.x = v3;
    v16.origin.y = v5;
    v16.size.width = v7;
    v16.size.height = v9;
    CGRectGetMinY(v16);
    sub_24EE2B324(v1 + 16, v11);
    sub_24E612E28(v11, v12);
    __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_24F92C1D8();
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v12);
    sub_24EE2B324(v1 + 16, v11);
    sub_24E612E28(v11, v12);
    __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_24F922218();
    sub_24F922138();
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }
}

uint64_t _FrameLayout.view.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  sub_24EE2B324(v3 + 16, v5);
  return sub_24E612E28(v5, a1);
}

uint64_t sub_24EE2ACD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  sub_24EE2B324(v3 + 16, v5);
  return sub_24E612E28(v5, a2);
}

uint64_t _FrameLayout.view.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_24EE2B324(v3 + 16, v9);
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_24E612E28(a1, v9);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_24EE2B35C(v9, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229788);
    v6 = swift_allocObject();
    v7 = v9[3];
    v6[3] = v9[2];
    v6[4] = v7;
    v6[5] = v9[4];
    v8 = v9[1];
    v6[1] = v9[0];
    v6[2] = v8;

    *v1 = v6;
  }

  return result;
}

void (*_FrameLayout.view.modify(uint64_t *a1))(__int128 **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x98uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 144) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_24EE2B324(v5 + 16, v4);
  sub_24E612E28(v4, (v4 + 5));
  return sub_24EE2AEB4;
}

void sub_24EE2AEB4(__int128 **a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 5;
  if (a2)
  {
    sub_24E615E00(v3, v2);
    _FrameLayout.view.setter(v2);
    __swift_destroy_boxed_opaque_existential_1((v2 + 5));
  }

  else
  {
    _FrameLayout.view.setter(v3);
  }

  free(v2);
}

uint64_t _FrameLayout.skipLayoutMeasurements.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 56);
}

uint64_t _FrameLayout.skipLayoutMeasurements.setter(char a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_24EE2B324(v3 + 16, v9);
  BYTE8(v10) = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_24EE2B35C(v9, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229788);
    v6 = swift_allocObject();
    v7 = v11;
    v6[3] = v10;
    v6[4] = v7;
    v6[5] = v12;
    v8 = v9[1];
    v6[1] = v9[0];
    v6[2] = v8;

    *v1 = v6;
  }

  return result;
}

void (*_FrameLayout.skipLayoutMeasurements.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 32) = *(v5 + 56);
  return sub_24EE2B0C0;
}

uint64_t _FrameLayout.shouldViewFitAvailableWidth.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 57);
}

uint64_t _FrameLayout.shouldViewFitAvailableWidth.setter(char a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_24EE2B324(v3 + 16, v9);
  BYTE9(v10) = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_24EE2B35C(v9, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229788);
    v6 = swift_allocObject();
    v7 = v11;
    v6[3] = v10;
    v6[4] = v7;
    v6[5] = v12;
    v8 = v9[1];
    v6[1] = v9[0];
    v6[2] = v8;

    *v1 = v6;
  }

  return result;
}

void (*_FrameLayout.shouldViewFitAvailableWidth.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 32) = *(v5 + 57);
  return sub_24EE2B284;
}

void sub_24EE2B29C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  a3(*(*a1 + 32));

  free(v3);
}

double _FrameLayout.layoutMargins.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 64);
}

uint64_t _FrameLayout.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  swift_beginAccess();
  sub_24EE2B324(v9 + 16, v15);
  *&v16 = a1;
  *(&v16 + 1) = a2;
  *&v17 = a3;
  *(&v17 + 1) = a4;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v10 = *v4;
    swift_beginAccess();
    sub_24EE2B35C(v15, v10 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229788);
    v12 = swift_allocObject();
    v13 = v16;
    v12[3] = v15[2];
    v12[4] = v13;
    v12[5] = v17;
    v14 = v15[1];
    v12[1] = v15[0];
    v12[2] = v14;

    *v4 = v12;
  }

  return result;
}

void (*_FrameLayout.layoutMargins.modify(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = *(v5 + 80);
  *v4 = *(v5 + 64);
  v4[1] = v6;
  return sub_24EE2B518;
}

void sub_24EE2B518(double **a1)
{
  v1 = *a1;
  _FrameLayout.layoutMargins.setter(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

double _FrameLayout.measurements(fitting:in:)()
{
  v1 = *v0;
  swift_beginAccess();
  sub_24F92C228();
  sub_24EE2B324(v1 + 16, v5);
  sub_24E612E28(v5, v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_24F922288();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3;
}

double sub_24EE2B648()
{
  v1 = *v0;
  swift_beginAccess();
  sub_24F92C228();
  sub_24EE2B324(v1 + 16, v5);
  sub_24E612E28(v5, v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_24F922288();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3;
}

uint64_t sub_24EE2B76C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_24EE2B7DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 57);
  return result;
}

__n128 sub_24EE2B84C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 64);
  v5 = *(v3 + 80);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t FastImpressionFlushGate.__allocating_init(delayToFlush:)(double a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 16) = a1;
  return v2;
}

uint64_t FastImpressionFlushGate.init(delayToFlush:)(double a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_24EE2B96C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24E972460;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24E5FCA4C(v4);
}

uint64_t sub_24EE2BA00(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24E9A0188;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_24E5FCA4C(v3);
  return sub_24E824448(v8);
}

uint64_t sub_24EE2BABC()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_24E5FCA4C(v1);
  return v1;
}

uint64_t sub_24EE2BB0C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_24E824448(v5);
}

void sub_24EE2BB60()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = swift_allocObject();
    swift_weakInit();
    v8[4] = sub_24ECB2170;
    v8[5] = v3;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_24ECAEFC8;
    v8[3] = &block_descriptor_80;
    v4 = _Block_copy(v8);
    v5 = objc_opt_self();

    v6 = [v5 timerWithTimeInterval:0 repeats:v4 block:v2];
    _Block_release(v4);

    v7 = [objc_opt_self() mainRunLoop];
    [v7 addTimer:v6 forMode:*MEMORY[0x277CBE738]];

    swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_24EE2BD04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_24EE2BD3C(void *a1)
{
  result = [a1 isValid];
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      swift_beginAccess();
      v4 = *(v3 + 32);
      sub_24E5FCA4C(v4);

      if (v4)
      {
        v4(v5);
        sub_24E824448(v4);
      }
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EE2BE34()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong invalidate];

  return swift_unknownObjectWeakAssign();
}

uint64_t FastImpressionFlushGate.deinit()
{
  MEMORY[0x2530543E0](v0 + 24);
  sub_24E824448(*(v0 + 32));
  return v0;
}

uint64_t FastImpressionFlushGate.__deallocating_deinit()
{
  MEMORY[0x2530543E0](v0 + 24);
  sub_24E824448(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_24EE2BFF8()
{

  return swift_deallocObject();
}

uint64_t ShelfBasedCollectionViewControllerDependencies.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A6C0);
  swift_allocObject();
  *a1 = sub_24F929978();
  a1[9] = &type metadata for EmptyLayoutSectionProvider;
  a1[10] = &protocol witness table for EmptyLayoutSectionProvider;
  a1[14] = &type metadata for EmptyPageGridProvider;
  a1[15] = &protocol witness table for EmptyPageGridProvider;
  v2 = type metadata accessor for EmptyShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  a1[4] = v2;
  a1[5] = &protocol witness table for EmptyShelfComponentTypeMappingProvider;
  a1[1] = v3;
  a1[19] = &type metadata for EmptyShelfLayoutSpacingProvider;
  a1[20] = &protocol witness table for EmptyShelfLayoutSpacingProvider;
  type metadata accessor for EmptyShelfSupplementaryProvider();
  a1[21] = swift_allocObject();
  a1[22] = &protocol witness table for EmptyShelfSupplementaryProvider;
  type metadata accessor for EmptyItemSupplementaryProvider();
  a1[23] = swift_allocObject();
  a1[24] = &protocol witness table for EmptyItemSupplementaryProvider;
  type metadata accessor for EmptyCollectionElementsObserver();
  result = swift_allocObject();
  a1[25] = result;
  a1[26] = &protocol witness table for EmptyCollectionElementsObserver;
  return result;
}

uint64_t sub_24EE2C148(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_24EE2C190(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Trailers.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Trailers.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t Trailers.__allocating_init(id:videos:mediaPlatform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_24E65E064(a1, &v17);
  if (*(&v18 + 1))
  {
    sub_24E9BBAA8(a1);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v11 = sub_24F91F668();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v16[1] = v11;
    v16[2] = v13;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v17);
  }

  v14 = v21;
  *(v10 + 32) = v20;
  *(v10 + 48) = v14;
  *(v10 + 64) = v22;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  return v10;
}

uint64_t Trailers.init(id:videos:mediaPlatform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v18);
  if (*(&v19 + 1))
  {
    sub_24E9BBAA8(a1);
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_24F91F6A8();
    v12 = sub_24F91F668();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v17[1] = v12;
    v17[2] = v14;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v18);
  }

  v15 = v22;
  *(v4 + 32) = v21;
  *(v4 + 48) = v15;
  *(v4 + 64) = v23;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  return v4;
}

uint64_t Trailers.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v42 = a2;
  v41 = sub_24F9285B8();
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v35 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = v34 - v6;
  v7 = sub_24F91F6B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v34[1] = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = v34 - v16;
  v43 = a1;
  sub_24F928398();
  v18 = sub_24F928348();
  v39 = v12;
  v40 = v11;
  if (v19)
  {
    v44 = v18;
    v45 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v21 = v8;
    v22 = v3;
    v24 = v23;
    (*(v21 + 8))(v10, v7);
    v44 = v20;
    v45 = v24;
    v3 = v22;
  }

  sub_24F92C7F8();
  v36 = *(v12 + 8);
  v36(v17, v11);
  v25 = v47;
  v26 = v49;
  *(v49 + 32) = v46;
  *(v26 + 48) = v25;
  *(v26 + 64) = v48;
  v27 = v43;
  sub_24F928398();
  v28 = *(v3 + 16);
  v30 = v41;
  v29 = v42;
  v28(v37, v42, v41);
  type metadata accessor for Video();
  sub_24EE2CB50(&qword_27F221590, 255, type metadata accessor for Video);
  v31 = v38;
  v32 = sub_24F92B678();
  if (v31)
  {
    (*(v3 + 8))(v29, v30);
    v36(v27, v40);
    sub_24E6585F8(v49 + 32);
    type metadata accessor for Trailers();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v49 + 16) = v32;
    v38 = type metadata accessor for MediaPlatform();
    sub_24F928398();
    v28(v35, v29, v30);
    sub_24EE2CB50(&qword_27F225270, 255, type metadata accessor for MediaPlatform);
    sub_24F929548();
    (*(v3 + 8))(v29, v30);
    v36(v27, v40);
    *(v49 + 24) = v46;
  }

  return v49;
}

uint64_t Trailers.deinit()
{

  sub_24E6585F8(v0 + 32);
  return v0;
}

uint64_t Trailers.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_24EE2CB50(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24EE2CBA8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Trailers();
  v7 = swift_allocObject();
  result = Trailers.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EE2CCA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2311B8);
  MEMORY[0x28223BE20](v38);
  v7 = &v37 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2311C0);
  MEMORY[0x28223BE20](v42);
  v39 = &v37 - v8;
  v9 = type metadata accessor for GroupedPlayerAvatarTrioView(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GroupedPlayerAvatarDuoView(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2311C8);
  MEMORY[0x28223BE20](v40);
  v41 = &v37 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2311D0);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2311D8);
  MEMORY[0x28223BE20](v19);
  v22 = &v37 - v21;
  v23 = *(a1 + 16);
  if (v23 == 2)
  {
    v27 = v12[10];
    v39 = v20;
    v37 = type metadata accessor for PlayerAvatarView(0);
    v38 = a2;
    v28 = *(v37 - 8);
    v29 = a1 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    sub_24EE2D7F8(v29, &v14[v27], type metadata accessor for PlayerAvatarView);
    sub_24EE2D7F8(v29 + *(v28 + 72), &v14[v12[11]], type metadata accessor for PlayerAvatarView);
    *v14 = xmmword_24F9A5830;
    *(v14 + 1) = xmmword_24F9A5840;
    *(v14 + 2) = vdupq_n_s64(0x3FF599999999999AuLL);
    *&v14[v12[12]] = a3 * 0.5;
    sub_24EE2D7F8(v14, v18, type metadata accessor for GroupedPlayerAvatarDuoView);
    swift_storeEnumTagMultiPayload();
    sub_24EE2D6F4(&qword_27F214AD0, type metadata accessor for PlayerAvatarView);
    sub_24EE2D6F4(&qword_27F2311F0, type metadata accessor for GroupedPlayerAvatarDuoView);
    sub_24F924E28();
    sub_24E60169C(v22, v41, &qword_27F2311D8);
    swift_storeEnumTagMultiPayload();
    sub_24EE2D608();
    sub_24EE2D73C();
    sub_24F924E28();
    sub_24E601704(v22, &qword_27F2311D8);
    return sub_24EE2D860(v14, type metadata accessor for GroupedPlayerAvatarDuoView);
  }

  if (v23 == 1)
  {
    v24 = *(type metadata accessor for PlayerAvatarView(0) - 8);
    sub_24EE2D7F8(a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v18, type metadata accessor for PlayerAvatarView);
    swift_storeEnumTagMultiPayload();
    sub_24EE2D6F4(&qword_27F214AD0, type metadata accessor for PlayerAvatarView);
    sub_24EE2D6F4(&qword_27F2311F0, type metadata accessor for GroupedPlayerAvatarDuoView);
    sub_24F924E28();
    v25 = &qword_27F2311D8;
    sub_24E60169C(v22, v41, &qword_27F2311D8);
    swift_storeEnumTagMultiPayload();
    sub_24EE2D608();
    sub_24EE2D73C();
    sub_24F924E28();
    v26 = v22;
  }

  else
  {
    if (v23 >= 3)
    {
      v31 = v9[13];
      v32 = *(type metadata accessor for PlayerAvatarView(0) - 8);
      v33 = a1 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
      sub_24EE2D7F8(v33, &v11[v31], type metadata accessor for PlayerAvatarView);
      v34 = *(v32 + 72);
      sub_24EE2D7F8(v33 + v34, &v11[v9[14]], type metadata accessor for PlayerAvatarView);
      sub_24EE2D7F8(v33 + 2 * v34, &v11[v9[15]], type metadata accessor for PlayerAvatarView);
      *v11 = xmmword_24F9A5830;
      *(v11 + 1) = xmmword_24F9A5850;
      *(v11 + 2) = xmmword_24F9A5860;
      *(v11 + 3) = xmmword_24F9A5870;
      *(v11 + 8) = 0x3FF8CCCCCCCCCCCDLL;
      *&v11[v9[16]] = a3 * 0.5;
      sub_24EE2D7F8(v11, v7, type metadata accessor for GroupedPlayerAvatarTrioView);
      swift_storeEnumTagMultiPayload();
      sub_24EE2D6F4(&qword_27F2311E0, type metadata accessor for GroupedPlayerAvatarTrioView);
      v35 = v39;
      sub_24F924E28();
      sub_24E60169C(v35, v41, &qword_27F2311C0);
      swift_storeEnumTagMultiPayload();
      sub_24EE2D608();
      sub_24EE2D73C();
      sub_24F924E28();
      sub_24E601704(v35, &qword_27F2311C0);
      return sub_24EE2D860(v11, type metadata accessor for GroupedPlayerAvatarTrioView);
    }

    swift_storeEnumTagMultiPayload();
    sub_24EE2D6F4(&qword_27F2311E0, type metadata accessor for GroupedPlayerAvatarTrioView);
    v36 = v39;
    sub_24F924E28();
    v25 = &qword_27F2311C0;
    sub_24E60169C(v36, v41, &qword_27F2311C0);
    swift_storeEnumTagMultiPayload();
    sub_24EE2D608();
    sub_24EE2D73C();
    sub_24F924E28();
    v26 = v36;
  }

  return sub_24E601704(v26, v25);
}

unint64_t sub_24EE2D608()
{
  result = qword_27F2311E8;
  if (!qword_27F2311E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2311D8);
    sub_24EE2D6F4(&qword_27F214AD0, type metadata accessor for PlayerAvatarView);
    sub_24EE2D6F4(&qword_27F2311F0, type metadata accessor for GroupedPlayerAvatarDuoView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2311E8);
  }

  return result;
}

uint64_t sub_24EE2D6F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24EE2D73C()
{
  result = qword_27F2311F8;
  if (!qword_27F2311F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2311C0);
    sub_24EE2D6F4(&qword_27F2311E0, type metadata accessor for GroupedPlayerAvatarTrioView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2311F8);
  }

  return result;
}

uint64_t sub_24EE2D7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE2D860(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EE2D8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlayerAvatarView(0);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 52);

  return v7(v8, a2, v6);
}

uint64_t sub_24EE2D964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PlayerAvatarView(0);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 52);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_24EE2D9E4()
{
  result = type metadata accessor for PlayerAvatarView(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EE2DA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlayerAvatarView(0);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 40);

  return v7(v8, a2, v6);
}

uint64_t sub_24EE2DB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PlayerAvatarView(0);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 40);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_24EE2DBA8()
{
  result = type metadata accessor for PlayerAvatarView(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24EE2DC44()
{
  result = qword_27F231220;
  if (!qword_27F231220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231228);
    sub_24EE2D608();
    sub_24EE2D73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231220);
  }

  return result;
}

uint64_t sub_24EE2DCEC@<X0>(float64x2_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231240);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v16 = type metadata accessor for GroupedPlayerAvatarDuoView(0);
  v17 = v16[10];
  *&v18 = *(a1->f64 + v16[12]);
  v30 = v18;
  sub_24F927618();
  sub_24F9238C8();
  sub_24EE2D7F8(a1 + v17, v15, type metadata accessor for PlayerAvatarView);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0);
  v20 = &v15[*(v19 + 36)];
  v21 = v32;
  *v20 = v31;
  *(v20 + 1) = v21;
  *(v20 + 2) = v33;
  *&v15[*(v4 + 44)] = vmulq_n_f64(a1[1], *&v30);
  v22 = v16[11];
  sub_24F927618();
  sub_24F9238C8();
  sub_24EE2D7F8(a1 + v22, v12, type metadata accessor for PlayerAvatarView);
  v23 = &v12[*(v19 + 36)];
  v24 = v35;
  *v23 = v34;
  *(v23 + 1) = v24;
  *(v23 + 2) = v36;
  *&v12[*(v4 + 44)] = vmulq_n_f64(a1[2], *&v30);
  sub_24E60169C(v15, v9, &qword_27F231240);
  sub_24E60169C(v12, v6, &qword_27F231240);
  v25 = v29;
  sub_24E60169C(v9, v29, &qword_27F231240);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231260);
  sub_24E60169C(v6, v25 + *(v26 + 48), &qword_27F231240);
  sub_24E601704(v12, &qword_27F231240);
  sub_24E601704(v15, &qword_27F231240);
  sub_24E601704(v6, &qword_27F231240);
  return sub_24E601704(v9, &qword_27F231240);
}

uint64_t sub_24EE2DFE8@<X0>(uint64_t a1@<X8>)
{
  v9 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  sub_24F927618();
  sub_24F9238C8();
  v3 = sub_24F927618();
  v5 = v4;
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231250) + 36);
  sub_24EE2DCEC(v1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231258);
  v8 = (v6 + *(result + 36));
  *v8 = v3;
  v8[1] = v5;
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  return result;
}

uint64_t sub_24EE2E114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231240);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v37 - v7;
  MEMORY[0x28223BE20](v8);
  v37 = &v37 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = type metadata accessor for GroupedPlayerAvatarTrioView(0);
  v20 = v19[13];
  *&v21 = *(a1 + v19[16]);
  *v41 = v21;
  sub_24F927618();
  sub_24F9238C8();
  sub_24EE2D7F8(a1 + v20, v18, type metadata accessor for PlayerAvatarView);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0);
  v23 = &v18[*(v22 + 36)];
  v24 = v43;
  *v23 = v42;
  *(v23 + 1) = v24;
  *(v23 + 2) = v44;
  *&v18[*(v4 + 44)] = vmulq_n_f64(*(a1 + 24), v41[0]);
  v25 = v19[14];
  sub_24F927618();
  sub_24F9238C8();
  sub_24EE2D7F8(a1 + v25, v15, type metadata accessor for PlayerAvatarView);
  v26 = &v15[*(v22 + 36)];
  v27 = v46;
  *v26 = v45;
  *(v26 + 1) = v27;
  *(v26 + 2) = v47;
  *&v15[*(v4 + 44)] = vmulq_n_f64(*(a1 + 40), v41[0]);
  v28 = v19[15];
  sub_24F927618();
  sub_24F9238C8();
  sub_24EE2D7F8(a1 + v28, v12, type metadata accessor for PlayerAvatarView);
  v29 = &v12[*(v22 + 36)];
  v30 = v49;
  *v29 = v48;
  *(v29 + 1) = v30;
  *(v29 + 2) = v50;
  *&v12[*(v4 + 44)] = vmulq_n_f64(*(a1 + 56), v41[0]);
  v31 = v37;
  sub_24E60169C(v18, v37, &qword_27F231240);
  v32 = v38;
  sub_24E60169C(v15, v38, &qword_27F231240);
  v33 = v39;
  sub_24E60169C(v12, v39, &qword_27F231240);
  v34 = v40;
  sub_24E60169C(v31, v40, &qword_27F231240);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231248);
  sub_24E60169C(v32, v34 + *(v35 + 48), &qword_27F231240);
  sub_24E60169C(v33, v34 + *(v35 + 64), &qword_27F231240);
  sub_24E601704(v12, &qword_27F231240);
  sub_24E601704(v15, &qword_27F231240);
  sub_24E601704(v18, &qword_27F231240);
  sub_24E601704(v33, &qword_27F231240);
  sub_24E601704(v32, &qword_27F231240);
  return sub_24E601704(v31, &qword_27F231240);
}

uint64_t sub_24EE2E56C@<X0>(uint64_t a1@<X8>)
{
  v9 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  sub_24F927618();
  sub_24F9238C8();
  v3 = sub_24F927618();
  v5 = v4;
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231230) + 36);
  sub_24EE2E114(v1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231238);
  v8 = (v6 + *(result + 36));
  *v8 = v3;
  v8[1] = v5;
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  return result;
}

unint64_t sub_24EE2E690()
{
  result = qword_27F231268;
  if (!qword_27F231268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231230);
    sub_24EE2E748();
    sub_24E602068(&qword_27F231288, &qword_27F231238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231268);
  }

  return result;
}

unint64_t sub_24EE2E748()
{
  result = qword_27F231270;
  if (!qword_27F231270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231278);
    sub_24EE2E7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231270);
  }

  return result;
}

unint64_t sub_24EE2E7D4()
{
  result = qword_27F231280;
  if (!qword_27F231280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231280);
  }

  return result;
}

unint64_t sub_24EE2E82C()
{
  result = qword_27F231290;
  if (!qword_27F231290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231250);
    sub_24EE2E748();
    sub_24E602068(&qword_27F231298, &qword_27F231258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231290);
  }

  return result;
}

uint64_t sub_24EE2E900@<X0>(uint64_t a1@<X8>)
{
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v2 = sub_24F926D08();

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2312A0) + 36);
  v4 = *MEMORY[0x277CE13B8];
  v5 = sub_24F927748();
  result = (*(*(v5 - 8) + 104))(a1 + v3, v4, v5);
  *a1 = v2;
  *(a1 + 8) = 256;
  return result;
}

unint64_t sub_24EE2E9B8()
{
  result = qword_27F2312A8;
  if (!qword_27F2312A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2312A0);
    sub_24E602068(&qword_27F2312B0, &qword_27F2312B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2312A8);
  }

  return result;
}

uint64_t PrivacyDefinition.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PrivacyDefinition.definition.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PrivacyDefinition.__allocating_init(id:title:definition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  sub_24E65E064(a1, &v25);
  if (*(&v26 + 1))
  {
    sub_24E9BBAA8(a1);
    v28 = v25;
    v29 = v26;
    v30 = v27;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v24[0] = a2;
    v16 = a3;
    v17 = a4;
    v18 = a5;
    v19 = v15;
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    v24[1] = v19;
    v24[2] = v21;
    a5 = v18;
    a4 = v17;
    a3 = v16;
    a2 = v24[0];
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v25);
  }

  v22 = v29;
  *(v14 + 48) = v28;
  *(v14 + 64) = v22;
  *(v14 + 80) = v30;
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  return v14;
}

uint64_t PrivacyDefinition.init(id:title:definition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v26);
  if (*(&v27 + 1))
  {
    sub_24E9BBAA8(a1);
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v25[0] = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = v16;
    v22 = v21;
    (*(v13 + 8))(v15, v12);
    v25[1] = v20;
    v25[2] = v22;
    a5 = v19;
    a4 = v18;
    a3 = v17;
    a2 = v25[0];
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v26);
  }

  v23 = v30;
  *(v6 + 48) = v29;
  *(v6 + 64) = v23;
  *(v6 + 80) = v31;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  return v6;
}

uint64_t PrivacyDefinition.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = 0x656C746974;
  v4 = sub_24F91F6B8();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  sub_24F928398();
  v44 = sub_24F928348();
  v17 = v16;
  v18 = *(v7 + 8);
  v18(v15, v6);
  v45 = v18;
  if (!v17)
  {
    v27 = 0xE500000000000000;
LABEL_7:
    v28 = sub_24F92AC38();
    sub_24EE2F37C(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v29 = v3;
    v29[1] = v27;
    v29[2] = v46;
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D22530], v28);
    swift_willThrow();
    v30 = sub_24F9285B8();
    (*(*(v30 - 8) + 8))(v50, v30);
    v45(a1, v6);
    return v17;
  }

  v43 = v17;
  v3 = 0x6974696E69666564;
  sub_24F928398();
  v17 = sub_24F928348();
  v20 = v19;
  v18(v12, v6);
  v21 = v6;
  if (!v20)
  {
    v27 = 0xEA00000000006E6FLL;

    goto LABEL_7;
  }

  v22 = v17;
  sub_24F928398();
  v23 = sub_24F928348();
  if (v24)
  {
    v47 = v23;
    v48 = v24;
    sub_24F92C7F8();
    v25 = v9;
    v26 = v6;
  }

  else
  {
    v31 = v40;
    sub_24F91F6A8();
    v32 = v21;
    v33 = sub_24F91F668();
    v35 = v34;
    (*(v41 + 8))(v31, v42);
    v47 = v33;
    v48 = v35;
    v21 = v32;
    sub_24F92C7F8();
    v25 = v9;
    v26 = v32;
  }

  v36 = v45;
  v45(v25, v26);
  v17 = swift_allocObject();
  PrivacyDefinition.init(id:title:definition:)(v49, v44, v43, v22, v20);
  v37 = sub_24F9285B8();
  (*(*(v37 - 8) + 8))(v50, v37);
  v36(a1, v21);
  return v17;
}

uint64_t PrivacyDefinition.deinit()
{

  sub_24E6585F8(v0 + 48);
  return v0;
}

uint64_t PrivacyDefinition.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_24EE2F37C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24EE2F3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PrivacyDefinition.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t ImpressionsCollectionElementsObserver.__allocating_init(componentTypeMappingProvider:impressionsCalculator:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 56) = 0;
  sub_24E612C80(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t ImpressionsCollectionElementsObserver.init(componentTypeMappingProvider:impressionsCalculator:)(__int128 *a1, uint64_t a2)
{
  *(v2 + 56) = 0;
  sub_24E612C80(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t ImpressionsCollectionElementsObserver.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t ImpressionsCollectionElementsObserver.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_24EE2F568(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v80 = a1;
  v11 = sub_24F929598();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v67 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v65 = &v59 - v15;
  MEMORY[0x28223BE20](v16);
  v66 = &v59 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v59 - v28;
  v30 = sub_24F929608();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v77 = &v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v81 = a2;
  if (a2)
  {
    v82 = &v59 - v34;
    v76 = v26;
    sub_24E615E00(v80, v85);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2312C8);
    if (swift_dynamicCast())
    {
      v79 = v23;
      v75 = v20;
      sub_24E612C80(v83, &v86);
      v35 = v87;
      v36 = v88;
      __swift_project_boxed_opaque_existential_1(&v86, v87);
      v37 = (*(v36 + 16))(v35, v36);
      if (v37)
      {
        v59 = v37;
        v38 = *(v37 + 16);
        if (v38)
        {
          v39 = v59 + 32;
          v40 = v31;
          v41 = (v31 + 48);
          v72 = (v40 + 32);
          v78 = (v40 + 8);
          v71 = (v12 + 56);
          v70 = (v12 + 48);
          v61 = (v12 + 8);
          v68 = (v40 + 16);
          v60 = (v12 + 16);
          v74 = v29;
          v73 = v41;
          v69 = v30;
          do
          {
            sub_24E615E00(v39, v85);
            __swift_project_boxed_opaque_existential_1(v85, v85[3]);
            sub_24F92ADC8();
            __swift_destroy_boxed_opaque_existential_1(v85);
            v42 = *v41;
            if ((*v41)(v29, 1, v30) == 1)
            {
              sub_24E601704(v29, &qword_27F213E68);
            }

            else
            {
              (*v72)(v82, v29, v30);
              __swift_project_boxed_opaque_existential_1(v80, v80[3]);
              v43 = v76;
              sub_24F92ADC8();
              if (v42(v43, 1, v30) == 1)
              {
                sub_24E601704(v43, &qword_27F213E68);
                v44 = 1;
                v45 = v75;
                v46 = v79;
              }

              else
              {
                v46 = v79;
                sub_24F9295B8();
                (*v78)(v43, v30);
                v44 = 0;
                v45 = v75;
              }

              (*v71)(v46, v44, 1, v11);
              sub_24EE32C14(v46, v45);
              if ((*v70)(v45, 1, v11) == 1)
              {
                sub_24E601704(v45, &qword_27F228618);
                v47 = v77;
                v48 = v82;
                (*v68)(v77, v82, v30);
              }

              else
              {
                v64 = sub_24F929588();
                v49 = *v61;
                (*v61)(v45, v11);
                v50 = v65;
                v48 = v82;
                sub_24F9295B8();
                v63 = sub_24F929588();
                v62 = v51;
                v49(v50, v11);
                v52 = v67;
                sub_24F9295B8();
                sub_24F929558();
                v53 = v52;
                v54 = v50;
                v49(v53, v11);

                v55 = v66;
                sub_24F929568();
                v56 = v77;
                (*v68)(v77, v48, v69);
                (*v60)(v54, v55, v11);
                sub_24F9295C8();
                v46 = v79;

                v57 = v55;
                v47 = v56;
                v49(v57, v11);
                v30 = v69;
              }

              v29 = v74;
              ImpressionsCalculator.addElement(_:at:)(v47, a3, a4, a5, a6);
              v58 = *v78;
              (*v78)(v47, v30);
              sub_24E601704(v46, &qword_27F228618);
              v58(v48, v30);
              v41 = v73;
            }

            v39 += 40;
            --v38;
          }

          while (v38);
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v86);
    }

    else
    {

      v84 = 0;
      memset(v83, 0, sizeof(v83));
      sub_24E601704(v83, qword_27F2312D0);
    }
  }
}

uint64_t sub_24EE2FDD0(void *a1, uint64_t a2, uint64_t a3)
{
  v107 = a3;
  v110 = a1;
  v115 = sub_24F929598();
  v112 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v100 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v101 = &v95 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618);
  MEMORY[0x28223BE20](v7 - 8);
  v99 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v106 = &v95 - v10;
  MEMORY[0x28223BE20](v11);
  v114 = &v95 - v12;
  MEMORY[0x28223BE20](v13);
  v102 = &v95 - v14;
  MEMORY[0x28223BE20](v15);
  v104 = &v95 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v17 - 8);
  v113 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v105 = &v95 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v95 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v95 - v25;
  v27 = sub_24F929608();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v98 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v103 = &v95 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v95 - v33;
  v35 = type metadata accessor for ItemLayoutContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  v36 = a2;
  sub_24F928A58();
  __swift_project_boxed_opaque_existential_1(v116, v117);
  sub_24F92ADC8();
  v37 = *(v28 + 48);
  v38 = v37(v26, 1, v27);
  v111 = v28;
  v108 = v35;
  v109 = v37;
  if (v38 == 1)
  {
    sub_24E601704(v26, &qword_27F213E68);
    v39 = v114;
    v40 = v110;
  }

  else
  {
    v41 = *(v28 + 32);
    v96 = v34;
    v41(v34, v26, v27);
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
    v97 = v36;
    sub_24F928A48();

    if (v37(v23, 1, v27) == 1)
    {
      v42 = v27;
      sub_24E601704(v23, &qword_27F213E68);
      v43 = 1;
      v44 = v104;
    }

    else
    {
      v44 = v104;
      sub_24F9295B8();
      v42 = v27;
      (*(v28 + 8))(v23, v27);
      v43 = 0;
    }

    v45 = v102;
    v46 = v112;
    v47 = v115;
    (*(v112 + 56))(v44, v43, 1, v115);
    sub_24EE32C14(v44, v45);
    v48 = (*(v46 + 48))(v45, 1, v47);
    v49 = v96;
    if (v48 == 1)
    {
      sub_24E601704(v45, &qword_27F228618);
      v50 = 0;
      v51 = 0;
    }

    else
    {
      v52 = sub_24F929588();
      v51 = v53;
      (*(v46 + 8))(v45, v47);
      v50 = v52;
    }

    v39 = v114;
    v54 = v103;
    ImpressionMetrics.withParentId(_:)(v50, v51, v103);

    v40 = v110;
    [v110 frame];
    v55 = v107;
    ImpressionsCalculator.addElement(_:at:)(v54, v56, v57, v58, v59);
    [v40 frame];
    sub_24EE2F568(v116, v55, v60, v61, v62, v63);
    v64 = *(v111 + 8);
    v27 = v42;
    v64(v54, v42);
    sub_24E601704(v44, &qword_27F228618);
    v64(v49, v42);
  }

  swift_getObjectType();
  v65 = swift_conformsToProtocol2();
  v66 = v115;
  v67 = v113;
  v68 = v109;
  if (v65 && v40)
  {
    v104 = v65;
    swift_getKeyPath();
    v110 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
    v69 = v105;
    sub_24F928A48();

    if (v68(v69, 1, v27) == 1)
    {
      sub_24E601704(v69, &qword_27F213E68);
      v70 = 1;
    }

    else
    {
      sub_24F9295B8();
      (*(v111 + 8))(v69, v27);
      v70 = 0;
    }

    v71 = v112;
    v108 = *(v112 + 56);
    v108(v39, v70, 1, v66);
    __swift_project_boxed_opaque_existential_1(v116, v117);
    sub_24F92ADC8();
    if (v68(v67, 1, v27) == 1)
    {
      sub_24E601704(v67, &qword_27F213E68);
      v72 = v106;
      sub_24EE32C14(v39, v106);
      v73 = (*(v71 + 48))(v72, 1, v66);
    }

    else
    {
      v74 = v99;
      sub_24EE32C14(v39, v99);
      v109 = *(v71 + 48);
      if (v109(v74, 1, v66) == 1)
      {
        sub_24E601704(v74, &qword_27F228618);
        v75 = 0;
        v76 = 0;
      }

      else
      {
        v77 = v74;
        v78 = sub_24F929588();
        v76 = v79;
        v80 = v77;
        v67 = v113;
        (*(v71 + 8))(v80, v66);
        v75 = v78;
      }

      v81 = v98;
      ImpressionMetrics.withParentId(_:)(v75, v76, v98);

      v82 = *(v111 + 8);
      v82(v67, v27);
      v83 = v100;
      sub_24F9295B8();
      v82(v81, v27);
      v72 = v106;
      (*(v71 + 32))(v106, v83, v66);
      v108(v72, 0, 1, v66);
      v73 = v109(v72, 1, v66);
    }

    v84 = v110;
    if (v73 == 1)
    {
      sub_24E601704(v114, &qword_27F228618);
    }

    else
    {
      v85 = v101;
      (*(v71 + 32))(v101, v72, v66);
      [v84 bounds];
      *&v118 = v86;
      *(&v118 + 1) = v87;
      v119 = v88;
      v120 = v89;
      v121 = 0;
      v90 = ImpressionsCalculator.childCalculator(for:viewBounds:)(v85, &v118);
      v91 = v114;
      if (v90)
      {
        v92 = v90;
        ObjectType = swift_getObjectType();
        (*(v104 + 8))(v116, v92, ObjectType);
      }

      else
      {
      }

      (*(v71 + 8))(v85, v66);
      v72 = v91;
    }

    sub_24E601704(v72, &qword_27F228618);
  }

  return __swift_destroy_boxed_opaque_existential_1(v116);
}

uint64_t sub_24EE30850(void *a1, uint64_t *a2, void *a3)
{
  v105 = a3;
  v107 = a2;
  v103 = a1;
  v94 = sub_24F929598();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v95 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_24F91F968();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F91FA78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v10 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v12 = &v86 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v99 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v86 - v16;
  v18 = sub_24F929608();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v23 = *(v3 + 56);
  if (v23)
  {
    v91 = v22;
    v104 = &v86 - v21;
    v100 = v12;
    v101 = v9;
    v102 = v10;
    v92 = v7;
    v24 = type metadata accessor for ItemLayoutContext();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
    sub_24F928A58();
    __swift_project_boxed_opaque_existential_1(v108, v109);
    sub_24F92ADC8();
    v25 = *(v19 + 48);
    if (v25(v17, 1, v18) == 1)
    {

      sub_24E601704(v17, &qword_27F213E68);
    }

    else
    {
      v90 = v23;
      v89 = v6;
      v88 = v19;
      v87 = *(v19 + 32);
      v87(v104, v17, v18);
      v28 = v107;
      v29 = v107 + *(v24 + 32);
      v30 = v106;
      (*(v102 + 16))(v100, v29, v106);
      v31 = *v28;
      v32 = type metadata accessor for ShelfLayoutContext();
      MEMORY[0x253045380](v31, *&v29[*(v32 + 20)]);
      v33 = [v105 collectionViewLayout];
      objc_opt_self();
      v34 = swift_dynamicCastObjCClass();
      if (v34)
      {
        v35 = v34;
        v105 = v33;
        swift_getKeyPath();
        v36 = v99;
        sub_24F928A48();

        if (v25(v36, 1, v18) == 1)
        {
          v37 = v107;

          sub_24E601704(v36, &qword_27F213E68);
          v38 = v89;
          v39 = v101;
          v40 = v88;
        }

        else
        {
          v41 = v91;
          v87(v91, v36, v18);
          v42 = [v35 _orthogonalScrollingSections];
          v43 = v96;
          sub_24F91F8D8();

          v39 = v101;
          sub_24F91FA18();
          LOBYTE(v42) = sub_24F91F918();
          (*(v97 + 8))(v43, v98);
          if (v42)
          {
            v107 = v18;
            [v35 _layoutFrameForSection_];
            v45 = v44;
            v47 = v46;
            v49 = v48;
            v51 = v50;
            [v35 _offsetForOrthogonalScrollingSection_];
            v53 = v52;
            ImpressionsCalculator.addElement(_:at:)(v41, v45, v47, v49, v51);
            v54 = v95;
            sub_24F9295B8();
            v114 = v53;
            v115 = v49;
            v116 = v51;
            v117 = 0;
            v55 = ImpressionsCalculator.childCalculator(for:viewBounds:)(v54, &v114);
            v56 = *(v93 + 8);
            v57 = v94;
            v56(v54, v94);
            v58 = v89;
            if (v55)
            {
              v59 = v103;
              [v103 frame];
              v61 = v60;
              v63 = v62;
              v65 = v64;
              v67 = v66;
              v118.origin.x = v45;
              v118.origin.y = v47;
              v118.size.width = v49;
              v118.size.height = v51;
              v68 = -CGRectGetMinY(v118);
              v119.origin.x = v61;
              v119.origin.y = v63;
              v119.size.width = v65;
              v119.size.height = v67;
              v120 = CGRectOffset(v119, 0.0, v68);
              x = v120.origin.x;
              y = v120.origin.y;
              width = v120.size.width;
              height = v120.size.height;
              ImpressionsCalculator.addElement(_:at:)(v104, v120.origin.x, v120.origin.y, v120.size.width, v120.size.height);

              sub_24EE2F568(v108, v55, x, y, width, height);

              swift_getObjectType();
              v73 = swift_conformsToProtocol2();
              if (v73 && v59)
              {
                v74 = v73;
                v75 = v59;
                v76 = v95;
                sub_24F9295B8();
                [v75 bounds];
                *&v110 = v77;
                *(&v110 + 1) = v78;
                v111 = v79;
                v112 = v80;
                v113 = 0;
                v81 = ImpressionsCalculator.childCalculator(for:viewBounds:)(v76, &v110);
                v56(v76, v57);
                if (v81)
                {
                  ObjectType = swift_getObjectType();
                  (*(v74 + 64))(v108, v81, ObjectType, v74);
                }

                else
                {
                }

                v58 = v89;
              }

              else
              {
              }
            }

            else
            {
              if (qword_27F210580 != -1)
              {
                swift_once();
              }

              v83 = sub_24F92AAE8();
              __swift_project_value_buffer(v83, qword_27F39C3E0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
              sub_24F928468();
              *(swift_allocObject() + 16) = xmmword_24F93DE60;
              v112 = MEMORY[0x277D837D0];
              *&v110 = 0xD000000000000066;
              *(&v110 + 1) = 0x800000024FA5F580;
              sub_24F928438();
              sub_24E601704(&v110, &qword_27F2129B0);
              sub_24F92A5B8();
            }

            v84 = *(v88 + 8);
            v85 = v107;
            v84(v91, v107);
            (*(v92 + 8))(v39, v58);
            (*(v102 + 8))(v100, v106);
            v84(v104, v85);
            return __swift_destroy_boxed_opaque_existential_1(v108);
          }

          v37 = v107;
          v40 = v88;
          (*(v88 + 8))(v41, v18);

          v38 = v89;
        }

        v30 = v106;
      }

      else
      {
        v37 = v28;

        v38 = v89;
        v39 = v101;
        v40 = v88;
      }

      sub_24EE2FDD0(v103, v37, v90);

      (*(v92 + 8))(v39, v38);
      (*(v102 + 8))(v100, v30);
      (*(v40 + 8))(v104, v18);
    }

    return __swift_destroy_boxed_opaque_existential_1(v108);
  }

  if (qword_27F210580 != -1)
  {
    swift_once();
  }

  v26 = sub_24F92AAE8();
  __swift_project_value_buffer(v26, qword_27F39C3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v109 = MEMORY[0x277D837D0];
  v108[0] = 0xD00000000000005CLL;
  v108[1] = 0x800000024FA5F520;
  sub_24F928438();
  sub_24E601704(v108, &qword_27F2129B0);
  sub_24F92A5B8();
}

void sub_24EE315D0(void *a1, uint64_t *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_24F929608();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    v25 = v11;
    v26 = a3;
    type metadata accessor for ItemLayoutContext();
    swift_getKeyPath();
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
    sub_24F928A48();

    if (LOBYTE(v27[0]) == 1)
    {
      sub_24EE30850(v14, a2, v26);
    }

    else
    {
      v15 = *(v3 + 56);
      if (v15)
      {
        swift_getKeyPath();

        sub_24F928A48();

        v16 = v25;
        if ((*(v25 + 48))(v9, 1, v10) == 1)
        {
          sub_24E601704(v9, &qword_27F213E68);
        }

        else
        {
          (*(v16 + 32))(v13, v9, v10);
          v18 = [v14 frame];
          v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
          *(&v24 - 8) = v13;
          *(&v24 - 7) = v15;
          *(&v24 - 6) = v19;
          *(&v24 - 5) = v20;
          *(&v24 - 4) = v21;
          *(&v24 - 3) = v22;
          *(&v24 - 16) = 1;
          sub_24EB0B828(sub_24EB0E840, (&v24 - 10), v23);
          (*(v16 + 8))(v13, v10);
        }

        sub_24EE2FDD0(v14, a2, v15);
      }

      else
      {
        if (qword_27F210580 != -1)
        {
          swift_once();
        }

        v17 = sub_24F92AAE8();
        __swift_project_value_buffer(v17, qword_27F39C3E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93DE60;
        v27[3] = MEMORY[0x277D837D0];
        v27[0] = 0xD00000000000005ELL;
        v27[1] = 0x800000024FA5F4C0;
        sub_24F928438();
        sub_24E601704(v27, &qword_27F2129B0);
        sub_24F92A5B8();
      }
    }
  }
}

void sub_24EE31A1C(void *a1)
{
  v72 = a1;
  v2 = sub_24F929598();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = &v49 - v6;
  MEMORY[0x28223BE20](v7);
  v58 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v74 = &v49 - v19;
  v20 = sub_24F929608();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v69 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = *(v1 + 56);
  if (v25)
  {
    v73 = &v49 - v24;
    sub_24E615E00(v72, v77);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2312C8);
    if (swift_dynamicCast())
    {
      v68 = v25;
      v66 = v17;
      v71 = v14;
      v67 = v11;
      sub_24E612C80(v75, &v78);
      v26 = v79;
      v27 = v80;
      __swift_project_boxed_opaque_existential_1(&v78, v79);
      v28 = (*(v27 + 16))(v26, v27);
      if (v28)
      {
        v50 = v28;
        v29 = *(v28 + 16);
        if (v29)
        {
          v30 = v50 + 32;
          v31 = (v21 + 48);
          v64 = (v21 + 32);
          v70 = (v21 + 8);
          v63 = (v3 + 56);
          v62 = (v3 + 48);
          v61 = (v3 + 8);
          v60 = (v21 + 16);
          v51 = (v3 + 16);
          v65 = (v21 + 48);
          do
          {
            sub_24E615E00(v30, v77);
            __swift_project_boxed_opaque_existential_1(v77, v77[3]);
            v32 = v74;
            sub_24F92ADC8();
            v33 = v32;
            __swift_destroy_boxed_opaque_existential_1(v77);
            v34 = *v31;
            if ((*v31)(v33, 1, v20) == 1)
            {
              sub_24E601704(v33, &qword_27F213E68);
            }

            else
            {
              (*v64)(v73, v33, v20);
              __swift_project_boxed_opaque_existential_1(v72, v72[3]);
              v35 = v66;
              sub_24F92ADC8();
              if (v34(v35, 1, v20) == 1)
              {
                sub_24E601704(v35, &qword_27F213E68);
                v36 = 1;
                v37 = v67;
                v38 = v71;
              }

              else
              {
                v38 = v71;
                sub_24F9295B8();
                (*v70)(v35, v20);
                v36 = 0;
                v37 = v67;
              }

              (*v63)(v38, v36, 1, v2);
              sub_24EE32C14(v38, v37);
              if ((*v62)(v37, 1, v2) == 1)
              {
                sub_24E601704(v37, &qword_27F228618);
                v39 = v69;
                v40 = v73;
                (*v60)(v69, v73, v20);
              }

              else
              {
                v56 = sub_24F929588();
                v54 = v41;
                v42 = *v61;
                (*v61)(v37, v2);
                v43 = v57;
                v40 = v73;
                sub_24F9295B8();
                v53 = sub_24F929588();
                v52 = v44;
                v42(v43, v2);
                v55 = v42;
                v45 = v59;
                sub_24F9295B8();
                sub_24F929558();
                v46 = v45;
                v47 = v58;
                v42(v46, v2);

                sub_24F929568();
                v39 = v69;
                (*v60)(v69, v40, v20);
                (*v51)(v43, v47, v2);
                sub_24F9295C8();
                v38 = v71;

                v55(v47, v2);
              }

              ImpressionsCalculator.removeElement(_:)(v39);
              v48 = *v70;
              (*v70)(v39, v20);
              sub_24E601704(v38, &qword_27F228618);
              v48(v40, v20);
              v31 = v65;
            }

            v30 += 40;
            --v29;
          }

          while (v29);
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v78);
    }

    else
    {

      v76 = 0;
      memset(v75, 0, sizeof(v75));
      sub_24E601704(v75, qword_27F2312D0);
    }
  }
}

void sub_24EE32234(void *a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v82 = a2;
  v80 = sub_24F929598();
  v77 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v74 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618);
  MEMORY[0x28223BE20](v6 - 8);
  v76 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v69 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v11 - 8);
  v75 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v69 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v69 - v17;
  v19 = sub_24F929608();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v78 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v79 = v69 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = v69 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v84 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = v69 - v28;
  if (v3[7])
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      if (a1)
      {
        v71 = v15;
        v72 = v20;
        v69[0] = v10;
        v70 = type metadata accessor for ItemLayoutContext();
        v30 = v82;
        (*(v84 + 16))(v29, v82 + *(v70 + 32), v27);
        v31 = v19;
        v32 = v3[5];
        v33 = v3[6];
        v69[1] = v3;
        __swift_project_boxed_opaque_existential_1(v3 + 2, v32);
        v73 = a1;

        v34 = v30;
        v35 = v27;
        v36 = v31;
        if (ShelfComponentTypeMappingProvider.configurableComponentContainerViewType(for:asPartOf:)(v34, v81, v32, v33))
        {
          swift_getKeyPath();
          sub_24F928A48();

          v37 = v72;
          if ((*(v72 + 48))(v18, 1, v31) != 1)
          {
            (*(v37 + 32))(v26, v18, v31);
            ImpressionsCalculator.removeElement(_:)(v26);

            (*(v37 + 8))(v26, v31);
            (*(v84 + 8))(v29, v35);
            return;
          }

          sub_24E601704(v18, &qword_27F213E68);
        }

        swift_getKeyPath();
        sub_24F928A48();

        if (v85[0])
        {
          (*(v84 + 8))(v29, v35);
        }

        else
        {
          v81 = v35;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
          sub_24F928A58();
          __swift_project_boxed_opaque_existential_1(v85, v85[3]);
          v38 = v71;
          sub_24F92ADC8();
          v39 = v72;
          v40 = *(v72 + 48);
          v41 = v40(v38, 1, v36);
          v42 = v73;
          if (v41 == 1)
          {
            (*(v84 + 8))(v29, v81);

            sub_24E601704(v38, &qword_27F213E68);
          }

          else
          {
            v43 = v79;
            (*(v39 + 32))(v79, v38, v36);
            swift_getKeyPath();
            v44 = v75;
            sub_24F928A48();

            if (v40(v44, 1, v36) == 1)
            {
              sub_24E601704(v44, &qword_27F213E68);
              v45 = 1;
              v46 = v69[0];
            }

            else
            {
              v46 = v69[0];
              sub_24F9295B8();
              (*(v39 + 8))(v44, v36);
              v45 = 0;
            }

            v48 = v77;
            v47 = v78;
            v49 = v76;
            v50 = v80;
            (*(v77 + 56))(v46, v45, 1, v80);
            sub_24EE32C14(v46, v49);
            if ((*(v48 + 48))(v49, 1, v50) == 1)
            {
              sub_24E601704(v49, &qword_27F228618);
              v51 = 0;
              v52 = 0;
            }

            else
            {
              v53 = v49;
              v54 = v43;
              v55 = v46;
              v56 = sub_24F929588();
              v52 = v57;
              (*(v48 + 8))(v53, v50);
              v51 = v56;
              v46 = v55;
              v43 = v54;
              v42 = v73;
            }

            ImpressionMetrics.withParentId(_:)(v51, v52, v47);

            swift_getObjectType();
            v58 = swift_conformsToProtocol2();
            if (v58)
            {
              v59 = v58;
              v60 = v42;
              v61 = v74;
              sub_24F9295B8();
              [v60 bounds];
              *&v86 = v62;
              *(&v86 + 1) = v63;
              v87 = v64;
              v88 = v65;
              v89 = 0;
              v66 = ImpressionsCalculator.childCalculator(for:viewBounds:)(v61, &v86);
              (*(v48 + 8))(v61, v80);
              if (v66)
              {
                ObjectType = swift_getObjectType();
                (*(v59 + 72))(v66, ObjectType, v59);
              }

              else
              {
              }

              v47 = v78;
              v43 = v79;
              v42 = v73;
            }

            ImpressionsCalculator.removeElement(_:)(v47);

            sub_24EE31A1C(v85);

            v68 = *(v72 + 8);
            v68(v47, v36);
            sub_24E601704(v46, &qword_27F228618);
            v68(v43, v36);
            (*(v84 + 8))(v29, v81);
          }

          __swift_destroy_boxed_opaque_existential_1(v85);
        }
      }
    }
  }
}

uint64_t sub_24EE32C14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id InlineUnifiedMessagePresenter.__allocating_init(objectGraph:)()
{
  v3.receiver = objc_allocWithZone(v0);
  v3.super_class = v0;
  v1 = objc_msgSendSuper2(&v3, sel_init);

  return v1;
}

id InlineUnifiedMessagePresenter.init(objectGraph:)()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, sel_init);

  return v1;
}

id InlineUnifiedMessagePresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InlineUnifiedMessagePresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24EE32E48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92B098();
  v4 = [v1 objectForKey_];

  if (v4)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_24E601704(v11, &qword_27F2129B0);
    goto LABEL_8;
  }

  sub_24E9421D0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 1;
    goto LABEL_9;
  }

  [v8 doubleValue];
  sub_24F91F508();

  v5 = 0;
LABEL_9:
  v6 = sub_24F91F648();
  return (*(*(v6 - 8) + 56))(a1, v5, 1, v6);
}

uint64_t sub_24EE32FA0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E728A00(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(v6, &unk_27F22EC30);
    v11 = sub_24F92B098();
    [v2 removeObjectForKey_];

    return sub_24E601704(a1, &unk_27F22EC30);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_24F91F518();
    v14 = v13;
    v15 = sub_24F92B098();
    [v2 setDouble:v15 forKey:v14];

    sub_24E601704(a1, &unk_27F22EC30);
    return (*(v8 + 8))(v10, v7);
  }
}

id sub_24EE331D8()
{
  v1 = sub_24F92B098();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_24E9421D0();
    if (swift_dynamicCast())
    {
      v3 = [v5 BOOLValue];

      return v3;
    }
  }

  else
  {
    sub_24E601704(v8, &qword_27F2129B0);
  }

  return 0;
}

uint64_t ObjectGraphPair.init(value:objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for ObjectGraphPair();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t ObjectGraphPairable.pairedWith<A>(objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v3, a2, v8);
  (*(v7 + 32))(a3, v10, a2);
  *(a3 + *(type metadata accessor for ObjectGraphPair() + 36)) = a1;
}

uint64_t sub_24EE334CC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24EE33558(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_24EE33694(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t ShareSheetAppEventMetadata.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ShareSheetAppEventMetadata.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ShareSheetAppEventMetadata.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ShareSheetAppEventMetadata.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *ShareSheetAppEventMetadata.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v31 = *v3;
  v33 = sub_24F9285B8();
  v5 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v35 = a1;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v17 = *(v8 + 8);
  v17(v13, v7);
  if (v16)
  {
    v3[2] = v14;
    v3[3] = v16;
    v18 = v35;
    sub_24F928398();
    v19 = sub_24F928348();
    v21 = v20;
    v30 = v17;
    v17(v11, v7);
    v3[4] = v19;
    v3[5] = v21;
    type metadata accessor for Artwork();
    sub_24F928398();
    v22 = *(v5 + 16);
    v31 = v7;
    v24 = v33;
    v23 = v34;
    v22(v32, v34, v33);
    sub_24EA864C0(&qword_27F219660, type metadata accessor for Artwork);
    sub_24F929548();
    (*(v5 + 8))(v23, v24);
    v30(v18, v31);
    v3[6] = v36;
  }

  else
  {
    v25 = sub_24F92AC38();
    sub_24EA864C0(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v26 = 1954047348;
    v27 = v31;
    v26[1] = 0xE400000000000000;
    v26[2] = v27;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D22530], v25);
    swift_willThrow();
    (*(v5 + 8))(v34, v33);
    v17(v35, v7);
    type metadata accessor for ShareSheetAppEventMetadata();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

void *ShareSheetAppEventMetadata.__allocating_init(text:subtitle:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *ShareSheetAppEventMetadata.init(text:subtitle:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t ShareSheetAppEventMetadata.deinit()
{

  return v0;
}

uint64_t ShareSheetAppEventMetadata.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_24EE33E20@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ShareSheetAppEventMetadata();
  v7 = swift_allocObject();
  result = ShareSheetAppEventMetadata.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EE33EE4()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ImageLockupViewModel()
{
  result = qword_27F231358;
  if (!qword_27F231358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EE33FD4()
{
  result = qword_27F231368;
  if (!qword_27F231368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231368);
  }

  return result;
}

void Array<A>.identifiersOfShelves<A>(using:)(uint64_t a1, unint64_t a2)
{
  v13 = MEMORY[0x277D84FA0];
  if (a2 >> 62)
  {
    goto LABEL_15;
  }

  v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v3; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x253052270](i, a2);
      }

      else
      {
        v5 = *(a2 + 8 * i + 32);
      }

      sub_24EA90A64();

      v6 = sub_24F92BAB8();

      if (v6)
      {
      }

      else
      {
        sub_24E65864C(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v11);
        sub_24ED7EDA8(&v12, v11);

        sub_24E772780(&v12);
      }
    }

    v7 = v13;
    v8 = *(v13 + 16);
    if (v8)
    {
      while (1)
      {
        v9 = sub_24EAE6938(v8, 0);
        v10 = sub_24EAE88FC(&v12, (v9 + 4), v8, v7);
        sub_24E6586B4();
        if (v10 == v8)
        {
          break;
        }

        __break(1u);
LABEL_15:
        v3 = sub_24F92C738();
        if (v3)
        {
          goto LABEL_3;
        }

LABEL_16:
        v7 = MEMORY[0x277D84FA0];
        v8 = *(MEMORY[0x277D84FA0] + 16);
        if (!v8)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
    }
  }
}

__int128 *Array<A>.personalizedShelves(with:)(__int128 *result, unint64_t a2)
{
  v8 = result[1];
  v9 = *result;
  v11 = MEMORY[0x277D84F90];
  if (!(a2 >> 62))
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_24F92C738();
  v3 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v3; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x253052270](i, a2);
      }

      else
      {
        v6 = *(a2 + 8 * i + 32);
      }

      if (*(*(v6 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles) + 16))
      {
        v10[0] = v9;
        v10[1] = v8;
        Shelf.makePersonalizedShelf(with:)(v10);

        MEMORY[0x253050F00](v5);
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        sub_24F92B638();
      }

      else
      {

        MEMORY[0x253050F00](v7);
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        sub_24F92B638();
      }
    }

    return v11;
  }

  return result;
}

id Shelf.makePersonalizedShelf(with:)(__int128 *a1)
{
  v2 = v1;
  v115 = *v2;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226820);
  v93 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v89 - v4;
  v5 = sub_24F91F6B8();
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x28223BE20](v5);
  v90 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v7 - 8);
  v111 = &v89 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v9 - 8);
  v109 = &v89 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v108 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v110 = &v89 - v14;
  v15 = v2[3];
  v16 = *(v15 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v18 = v15 + 32;
    v19 = a1[1];
    v116 = *a1;
    v117 = v19;
    while (1)
    {
      sub_24E615E00(v18, v139);
      sub_24E615E00(v139, &v133);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226840);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_24E612C80(&v130, &v136);
      v20 = *(&v137 + 1);
      v21 = v138;
      __swift_project_boxed_opaque_existential_1(&v136, *(&v137 + 1));
      if ((PersonalizableModel.needsClientPersonalization.getter(v20, v21) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v136);
        goto LABEL_14;
      }

      v22 = *(&v137 + 1);
      v23 = v138;
      __swift_project_boxed_opaque_existential_1(&v136, *(&v137 + 1));
      PersonalizableModel.unpersonalized.getter(v22, v23, &v133);
      v24 = *(&v134 + 1);
      v25 = v135;
      __swift_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
      v126 = v116;
      v127 = v117;
      PersonalizableModel.personalized(with:)(&v126, v24, v25, &v130);
      sub_24E615E00(&v130, &v126);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_24E61710C(0, v17[2] + 1, 1, v17);
      }

      v27 = v17[2];
      v26 = v17[3];
      if (v27 >= v26 >> 1)
      {
        v17 = sub_24E61710C((v26 > 1), v27 + 1, 1, v17);
      }

      __swift_destroy_boxed_opaque_existential_1(&v130);
      __swift_destroy_boxed_opaque_existential_1(v139);
      v17[2] = v27 + 1;
      sub_24E612C80(&v126, &v17[5 * v27 + 4]);
      __swift_destroy_boxed_opaque_existential_1(&v133);
      __swift_destroy_boxed_opaque_existential_1(&v136);
LABEL_4:
      v18 += 40;
      if (!--v16)
      {
        goto LABEL_18;
      }
    }

    v132 = 0;
    v130 = 0u;
    v131 = 0u;
    sub_24E601704(&v130, &qword_27F222730);
LABEL_14:
    sub_24E615E00(v139, &v136);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_24E61710C(0, v17[2] + 1, 1, v17);
    }

    v29 = v17[2];
    v28 = v17[3];
    if (v29 >= v28 >> 1)
    {
      v17 = sub_24E61710C((v28 > 1), v29 + 1, 1, v17);
    }

    __swift_destroy_boxed_opaque_existential_1(v139);
    v17[2] = v29 + 1;
    sub_24E612C80(&v136, &v17[5 * v29 + 4]);
    goto LABEL_4;
  }

LABEL_18:
  v140 = 0;
  memset(v139, 0, sizeof(v139));
  LODWORD(v116) = *(v2 + 16);
  v102 = *(v2 + 17);
  *&v112 = v2[5];
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, v110, &qword_27F228530);
  LODWORD(v105) = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched);
  v30 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup + 8);
  v104 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  v106 = v30;
  v95 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction);
  *&v117 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle);
  v103 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden);
  v98 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal);
  v31 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle + 8);
  v94 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  v99 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn);
  v32 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background);
  v33 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 8);
  v35 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 16);
  v34 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 24);
  v36 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 32);
  v97 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints);
  v37 = sub_24F91F648();
  (*(*(v37 - 8) + 56))(v109, 1, 1, v37);
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, v111, &qword_27F213E68);
  v38 = sub_24F91F4A8();
  (*(*(v38 - 8) + 56))(v108, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A50);
  swift_allocObject();
  v96 = v31;

  sub_24ED8F454(v117);
  v39 = v32;
  v40 = v32;
  v41 = v33;
  v42 = v33;
  v43 = v35;
  v101 = v34;
  v100 = v36;
  sub_24E951F10(v40, v42, v35, v34, v36);
  v107 = sub_24F9280D8();
  v44 = swift_allocObject();
  sub_24E60169C(v139, &v133, &qword_27F235830);
  if (*(&v134 + 1))
  {
    v136 = v133;
    v137 = v134;
    v138 = v135;
  }

  else
  {
    v45 = v90;
    sub_24F91F6A8();
    v46 = v41;
    v47 = v39;
    v48 = sub_24F91F668();
    v50 = v49;
    (*(v91 + 8))(v45, v92);
    *&v130 = v48;
    v39 = v47;
    v41 = v46;
    v43 = v35;
    *(&v130 + 1) = v50;
    sub_24F92C7F8();
    sub_24E601704(&v133, &qword_27F235830);
  }

  v51 = v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  v52 = v137;
  *v51 = v136;
  *(v51 + 16) = v52;
  *(v51 + 32) = v138;
  sub_24E60169C(v111, v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, &qword_27F213E68);
  v53 = v116;
  *(v44 + 16) = v116;
  *(v44 + 17) = v102;
  *(v44 + 18) = 1;
  *(v44 + 24) = v17;
  LOBYTE(v136) = v53;

  *(v44 + 32) = sub_24F2EBA74(v54, &v136);
  sub_24E60169C(v110, v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, &qword_27F228530);
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched) = v105;
  v55 = (v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  v56 = v106;
  *v55 = v104;
  v55[1] = v56;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) = 0;
  *(v44 + 40) = v112;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) = v103;
  v57 = v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata;
  *v57 = 0u;
  *(v57 + 16) = 0u;
  *(v57 + 32) = 0u;
  *(v57 + 56) = 0;
  *(v57 + 64) = 0;
  *(v57 + 48) = 3221225472;
  if (v117 < 2)
  {

LABEL_25:
    v63 = (v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
    v64 = v95;
    v65 = v96;
    *v63 = v94;
    v63[1] = v65;
    *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = v64;
    *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = v117;

    goto LABEL_27;
  }

  v105 = v43;
  v58 = objc_opt_self();

  result = [v58 defaultWorkspace];
  if (!result)
  {
LABEL_69:
    __break(1u);
    return result;
  }

  v60 = result;

  v61 = sub_24F92B098();
  v62 = [v60 applicationIsInstalled_];

  v43 = v105;
  if (v62)
  {
    goto LABEL_25;
  }

  sub_24ED8F464(v117);

  v66 = (v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  *v66 = 0;
  v66[1] = 0;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = 0;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = 1;
LABEL_27:
  v67 = MEMORY[0x277D84F90];
  sub_24E60169C(v109, v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_27F22EC30);
  sub_24E60169C(v108, v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, &qword_27F228530);
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics) = 0;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints) = v97;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal) = v98;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior) = 0;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized) = 1;
  v68 = v99;
  if (!v99)
  {
    LOBYTE(v136) = v116;
    v68 = sub_24F2EBC94();
  }

  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn) = v68;
  v69 = v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
  *v69 = v39;
  *(v69 + 8) = v41;
  v70 = v101;
  *(v69 + 16) = v43;
  *(v69 + 24) = v70;
  *(v69 + 32) = v100;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel) = v107;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents) = v67;
  *&v116 = v44;
  v71 = *(v44 + 24);
  v72 = sub_24EA90A64();

  v73 = 0;
  v129 = MEMORY[0x253051460](0, &type metadata for PersonalizationStyle, v72);
  v74 = v71 + 32;
  v75 = 0uLL;
  v112 = xmmword_24F950E90;
  *&v117 = v71 + 32;
  while (2)
  {
    v76 = *(v71 + 16);
    if (v73 == v76)
    {
LABEL_33:
      v124 = 0;
      v73 = v76;
      v122 = v75;
      v123 = v75;
      goto LABEL_37;
    }

    while (1)
    {
      if ((v73 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        v84 = sub_24F92C738();
        if (!v84)
        {
          goto LABEL_65;
        }

LABEL_55:
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160);
        if (v84 >= 1)
        {
          *&v117 = v72 & 0xC000000000000001;
          v85 = (v93 + 8);

          v86 = 0;
          v87 = v72;
          do
          {
            if (v117)
            {
              MEMORY[0x253052270](v86, v72);
            }

            else
            {
            }

            ++v86;
            sub_24EA90AB8();
            sub_24F9288B8();
            v88 = v113;
            sub_24F9288C8();

            __swift_destroy_boxed_opaque_existential_1(&v136);
            (*v85)(v88, v114);
            v72 = v87;
          }

          while (v84 != v86);

          v73 = v116;
          goto LABEL_66;
        }

        __break(1u);
        goto LABEL_68;
      }

      if (v73 >= *(v71 + 16))
      {
        goto LABEL_63;
      }

      sub_24E615E00(v74 + 40 * v73++, &v122);
LABEL_37:
      v120[0] = v122;
      v120[1] = v123;
      v121 = v124;
      if (!*(&v123 + 1))
      {
        memset(v125, 0, 24);
        *(&v125[1] + 8) = v112;
LABEL_45:
        sub_24E601704(v125, &qword_27F226830);
        v132 = 0;
        v130 = 0u;
        v131 = 0u;
        goto LABEL_46;
      }

      sub_24E612C80(v120, v119);
      sub_24E615E00(v119, &v118);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226840);
      if ((swift_dynamicCast() & 1) == 0)
      {
        memset(v125, 0, 40);
      }

      __swift_destroy_boxed_opaque_existential_1(v119);
      if (*(&v125[1] + 1) == 1)
      {
        goto LABEL_45;
      }

      v126 = v125[0];
      v127 = v125[1];
      v128 = *&v125[2];
      if (*(&v125[1] + 1))
      {
        break;
      }

      sub_24E601704(&v126, &qword_27F222730);
      v75 = 0uLL;
      if (v73 == v76)
      {
        goto LABEL_33;
      }
    }

    *(&v127 + 1) = *(&v125[1] + 1);
    result = sub_24E60169C(&v126, v125, &qword_27F222730);
    if (!*(&v125[1] + 1))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    sub_24E612C80(v125, &v130);
    sub_24E601704(&v126, &qword_27F222730);
    if (!*(&v131 + 1))
    {
LABEL_46:
      sub_24E601704(&v130, &qword_27F222730);
      v136 = 0u;
      v137 = 0u;
      v138 = 0;
      goto LABEL_47;
    }

    sub_24E612C80(&v130, &v133);
    v79 = *(&v134 + 1);
    v80 = v135;
    v81 = __swift_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
    v82 = v79;
    v72 = v81;
    if ((PersonalizableModel.needsClientPersonalization.getter(v82, v80) & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v133);
LABEL_31:
      v74 = v117;
      v75 = 0uLL;
      continue;
    }

    break;
  }

  sub_24E612C80(&v133, &v136);
LABEL_47:
  v133 = v136;
  v134 = v137;
  v135 = v138;
  if (*(&v137 + 1))
  {
    sub_24E612C80(&v133, &v130);
    v77 = *(&v131 + 1);
    v78 = v132;
    __swift_project_boxed_opaque_existential_1(&v130, *(&v131 + 1));
    (*(v78 + 16))(&v126, v77, v78);
    LOBYTE(v78) = v126;
    __swift_destroy_boxed_opaque_existential_1(&v130);
    v72 = &v129;
    sub_24ED7CC74(&v136, v78);
    goto LABEL_31;
  }

  v73 = v116;
  *(v116 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles) = v129;
  v83 = (v73 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata);
  *v83 = 0u;
  v83[1] = 0u;
  v72 = *(v73 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents);
  if (v72 >> 62)
  {
    goto LABEL_64;
  }

  v84 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v84)
  {
    goto LABEL_55;
  }

LABEL_65:

LABEL_66:
  sub_24E601704(v108, &qword_27F228530);
  sub_24E601704(v111, &qword_27F213E68);
  sub_24E601704(v109, &unk_27F22EC30);
  sub_24E601704(v110, &qword_27F228530);
  sub_24E601704(v139, &qword_27F235830);
  return v73;
}

uint64_t Array<A>.indicesOfShelves<A>(using:)(uint64_t a1, unint64_t a2)
{
  result = sub_24F91F958();
  if (a2 >> 62)
  {
    goto LABEL_14;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      while ((a2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x253052270](v5, a2);
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }

LABEL_8:
        sub_24EA90A64();

        v7 = sub_24F92BAB8();

        if ((v7 & 1) == 0)
        {
          sub_24F91F8F8();
        }

        ++v5;
        if (v6 == v4)
        {
          return result;
        }
      }

      if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v6 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_24F92C738();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_24EE356B4@<X0>(uint64_t (*a1)(void)@<X4>, void *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

double sub_24EE356E4(char *a1, uint64_t a2)
{
  v26 = a2;
  v4 = 0x6874646977;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = 0xE500000000000000;
  sub_24F928398();
  v25 = sub_24F928308();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v11, v5);
  if (v14 & 1) != 0 || (v4 = 0x746867696568, v12 = 0xE600000000000000, sub_24F928398(), sub_24F928308(), v17 = v16, v15(v8, v5), (v17))
  {
    v18 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v20 = v19;
    type metadata accessor for CGSize(0);
    *v20 = v4;
    v20[1] = v12;
    v20[2] = v21;
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D22530], v18);
    swift_willThrow();
    v22 = sub_24F9285B8();
    (*(*(v22 - 8) + 8))(v26, v22);
    v15(a1, v5);
  }

  else
  {
    v2 = *&v25;
    v23 = sub_24F9285B8();
    (*(*(v23 - 8) + 8))(v26, v23);
    v15(a1, v5);
  }

  return v2;
}

double sub_24EE359A4(char *a1, uint64_t a2)
{
  v26 = a2;
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = 120;
  sub_24F928398();
  v12 = sub_24F928308();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v10, v4);
  if (v14 & 1) != 0 || (v11 = 121, sub_24F928398(), sub_24F928308(), v17 = v16, v15(v7, v4), (v17))
  {
    v18 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v20 = v19;
    type metadata accessor for CGPoint(0);
    *v20 = v11;
    v20[1] = 0xE100000000000000;
    v20[2] = v21;
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D22530], v18);
    swift_willThrow();
    v22 = sub_24F9285B8();
    (*(*(v22 - 8) + 8))(v26, v22);
    v15(a1, v4);
  }

  else
  {
    v2 = *&v12;
    v23 = sub_24F9285B8();
    (*(*(v23 - 8) + 8))(v26, v23);
    v15(a1, v4);
  }

  return v2;
}

void *ExternalUrlAction.__allocating_init(title:urlString:isSensitive:allowFromLockscreen:timeoutSeconds:artwork:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v55 = a8;
  v54 = a7;
  v53 = a6;
  v51 = a5;
  v57 = a3;
  v58 = a2;
  v56 = a1;
  v59 = a9;
  v60 = a11;
  v50 = sub_24F91F6B8();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v12 - 8);
  v52 = &v46 - v13;
  v14 = sub_24F928AD8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v46 - v19;
  v21 = sub_24F91F4A8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  sub_24F91F488();

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    (*(v15 + 8))(v60, v14);

    sub_24E601704(v20, &qword_27F228530);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v47 = a10;
    (*(v22 + 32))(v24, v20, v21);
    (*(v22 + 16))(v25 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_url, v24, v21);
    *(v25 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_isSensitive) = v51 & 1;
    *(v25 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_allowFromLockscreen) = v53 & 1;
    v26 = v25 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_timeoutSeconds;
    *v26 = v54;
    v26[8] = v55 & 1;
    v70 = 0;
    memset(v69, 0, sizeof(v69));
    v27 = *(v15 + 16);
    v57 = v17;
    v28 = v60;
    v27(v17, v60, v14);
    v29 = sub_24F929608();
    v30 = v52;
    (*(*(v29 - 8) + 56))(v52, 1, 1, v29);
    v31 = (v25 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v31 = 0u;
    v31[1] = 0u;
    sub_24E65E064(v69, &v63);
    v32 = v14;
    if (*(&v64 + 1))
    {
      v33 = v28;
      v66 = v63;
      v67 = v64;
      v68 = v65;
    }

    else
    {
      v34 = v48;
      sub_24F91F6A8();
      v35 = sub_24F91F668();
      v36 = v30;
      v37 = v32;
      v39 = v38;
      (*(v49 + 8))(v34, v50);
      v61 = v35;
      v62 = v39;
      v32 = v37;
      v30 = v36;
      sub_24F92C7F8();
      sub_24E601704(&v63, &qword_27F235830);
      v33 = v60;
    }

    v41 = v58;
    v40 = v59;
    (*(v15 + 8))(v33, v32);
    sub_24E601704(v69, &qword_27F235830);
    (*(v22 + 8))(v24, v21);
    v42 = v25 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    v43 = v67;
    *v42 = v66;
    *(v42 + 1) = v43;
    *(v42 + 4) = v68;
    sub_24E65E0D4(v30, v25 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
    v25[2] = v56;
    v25[3] = v41;
    v44 = v47;
    v25[4] = v40;
    v25[5] = v44;
    (*(v15 + 32))(v25 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v57, v32);
  }

  return v25;
}

void *ExternalUrlAction.init(title:urlString:isSensitive:allowFromLockscreen:timeoutSeconds:artwork:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  LODWORD(v52) = a8;
  v51 = a7;
  v50 = a6;
  v49 = a5;
  v54 = a3;
  v57 = a2;
  v53 = a1;
  v55 = a11;
  v56 = a9;
  v48 = *v11;
  v47 = sub_24F91F6B8();
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_24F928AD8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v44 - v22;
  v24 = sub_24F91F4A8();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F488();

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    (*(v18 + 8))(v55, v17);

    sub_24E601704(v23, &qword_27F228530);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v48 = a10;
    (*(v25 + 32))(v27, v23, v24);
    (*(v25 + 16))(v12 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_url, v27, v24);
    *(v12 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_isSensitive) = v49 & 1;
    *(v12 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_allowFromLockscreen) = v50 & 1;
    v28 = v12 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_timeoutSeconds;
    *v28 = v51;
    v28[8] = v52 & 1;
    v67 = 0;
    memset(v66, 0, sizeof(v66));
    v29 = *(v18 + 16);
    v54 = v20;
    v30 = v55;
    v29(v20, v55, v17);
    v31 = sub_24F929608();
    (*(*(v31 - 8) + 56))(v16, 1, 1, v31);
    v32 = (v12 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v32 = 0u;
    v32[1] = 0u;
    sub_24E65E064(v66, &v60);
    v33 = v16;
    if (*(&v61 + 1))
    {
      v63 = v60;
      v64 = v61;
      v65 = v62;
    }

    else
    {
      v34 = v45;
      sub_24F91F6A8();
      v35 = sub_24F91F668();
      v52 = v33;
      v37 = v36;
      (*(v46 + 8))(v34, v47);
      v58 = v35;
      v59 = v37;
      v33 = v52;
      sub_24F92C7F8();
      sub_24E601704(&v60, &qword_27F235830);
    }

    v39 = v56;
    v38 = v57;
    (*(v18 + 8))(v30, v17);
    sub_24E601704(v66, &qword_27F235830);
    (*(v25 + 8))(v27, v24);
    v40 = v12 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    *(v40 + 4) = v65;
    v41 = v64;
    *v40 = v63;
    *(v40 + 1) = v41;
    sub_24E65E0D4(v33, v12 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
    v12[2] = v53;
    v12[3] = v38;
    v42 = v48;
    v12[4] = v39;
    v12[5] = v42;
    (*(v18 + 32))(v12 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v54, v17);
  }

  return v12;
}

uint64_t ExternalUrlAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v68 = a2;
  v72 = v3;
  v61 = *v3;
  v5 = sub_24F9285B8();
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x28223BE20](v5);
  v63 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24F9288E8();
  v7 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v56 - v10;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v59 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v57 = &v56 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v56 = &v56 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v56 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v56 - v23;
  v25 = sub_24F91F4A8();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v65 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  sub_24F928398();
  sub_24F928268();
  v58 = v13;
  v28 = *(v13 + 8);
  v74 = v12;
  v73 = v28;
  v28(v24, v12);
  v66 = v26;
  v67 = v25;
  if ((*(v26 + 48))(v11, 1, v25) == 1)
  {
    sub_24E601704(v11, &qword_27F228530);
    v29 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v30 = 7107189;
    v31 = v61;
    v30[1] = 0xE300000000000000;
    v30[2] = v31;
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D22530], v29);
    swift_willThrow();
    (*(v70 + 8))(v68, v71);
    v73(v69, v74);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = v65;
    v32 = v66;
    v34 = v67;
    (*(v66 + 32))(v65, v11, v67);
    v35 = v72;
    (*(v32 + 16))(v72 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_url, v33, v34);
    v36 = v69;
    sub_24F928398();
    LOBYTE(v34) = sub_24F928278();
    v37 = v22;
    v38 = v60;
    v39 = v73;
    v73(v37, v74);
    v40 = v39;
    v41 = v35;
    *(v35 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_isSensitive) = v34 & 1;
    v42 = v56;
    sub_24F928398();
    LOBYTE(v34) = sub_24F928278();
    v40(v42, v74);
    *(v41 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_allowFromLockscreen) = v34 & 1;
    v43 = v57;
    sub_24F928398();
    v44 = v62;
    (*(v7 + 104))(v38, *MEMORY[0x277D21C40], v62);
    v45 = sub_24F928228();
    LOBYTE(v40) = v46;
    (*(v7 + 8))(v38, v44);
    v47 = v36;
    v73(v43, v74);
    v48 = v74;
    v29 = v72;
    v49 = v72 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_timeoutSeconds;
    *v49 = v45;
    v49[8] = v40 & 1;
    v50 = v59;
    (*(v58 + 16))(v59, v47, v48);
    v51 = v63;
    v52 = v68;
    (*(v70 + 16))(v63, v68, v71);
    v53 = v64;
    v54 = Action.init(deserializing:using:)(v50, v51);
    if (!v53)
    {
      v29 = v54;
    }

    (*(v70 + 8))(v52, v71);
    v73(v47, v48);
    (*(v66 + 8))(v65, v67);
  }

  return v29;
}

uint64_t ExternalUrlAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_url;
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24EE371B4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_url;
  v2 = sub_24F91F4A8();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t ExternalUrlAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  v3 = OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_url;
  v4 = sub_24F91F4A8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ExternalUrlAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  v3 = OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_url;
  v4 = sub_24F91F4A8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExternalUrlAction()
{
  result = qword_27F231370;
  if (!qword_27F231370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE374CC()
{
  result = sub_24F91F4A8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CondensedAdLockupWithIconBackground.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CondensedAdLockupWithIconBackground.init(deserializing:using:)(a1, a2);
  return v4;
}

void *CondensedAdLockupWithIconBackground.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v53 = v3;
  v45 = v6;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = &v43 - v11;
  MEMORY[0x28223BE20](v12);
  v55 = &v43 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v17 = sub_24F928388();
  v51 = *(v17 - 8);
  v52 = v17;
  MEMORY[0x28223BE20](v17);
  v43 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v46 = &v43 - v20;
  MEMORY[0x28223BE20](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v43 - v23;
  sub_24F929608();
  sub_24F928398();
  v50 = v8;
  v25 = *(v8 + 16);
  v25(v16, a2, v7);
  v48 = v24;
  v26 = a1;
  sub_24F929548();
  v27 = v55;
  v25(v55, a2, v7);
  v28 = v46;
  sub_24F928398();
  v29 = v47;
  v54 = v7;
  v25(v47, v27, v7);
  type metadata accessor for Lockup();
  swift_allocObject();
  v30 = v49;
  v31 = Lockup.init(deserializing:using:)(v28, v29);
  if (v30)
  {
    v32 = *(v50 + 8);
    v33 = v54;
    v32(a2, v54);
    (*(v51 + 8))(v26, v52);
    v32(v55, v33);
    sub_24EB05BC8(v48);
    v34 = v53;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v49 = a2;
    v35 = v50;
    v36 = v53;
    v53[2] = v31;
    type metadata accessor for Artwork();
    v37 = v43;
    sub_24F928398();
    v38 = v44;
    v25(v44, v55, v54);
    v34 = v36;
    v40 = Artwork.__allocating_init(deserializing:using:)(v37, v38);
    v41 = *(v35 + 8);
    v42 = v54;
    v41(v49, v54);
    (*(v51 + 8))(v26, v52);
    v41(v55, v42);
    v34[3] = v40;
    sub_24E65E0D4(v48, v34 + OBJC_IVAR____TtC12GameStoreKit35CondensedAdLockupWithIconBackground_impressionMetrics);
  }

  return v34;
}

uint64_t CondensedAdLockupWithIconBackground.__allocating_init(lockup:backgroundArtwork:clickAction:searchAd:clickSender:decorations:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v10 = swift_allocObject();

  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_24E65E0D4(a7, v10 + OBJC_IVAR____TtC12GameStoreKit35CondensedAdLockupWithIconBackground_impressionMetrics);
  return v10;
}

uint64_t CondensedAdLockupWithIconBackground.init(lockup:backgroundArtwork:clickAction:searchAd:clickSender:decorations:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_24E65E0D4(a7, v7 + OBJC_IVAR____TtC12GameStoreKit35CondensedAdLockupWithIconBackground_impressionMetrics);
  return v7;
}

uint64_t CondensedAdLockupWithIconBackground.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 24);
  *a1 = *(v2 + 16);
  a1[1] = v3;
}

uint64_t CondensedAdLockupWithIconBackground.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t CondensedAdLockupWithIconBackground.debugDescription.getter()
{
  sub_24F92C888();
  v1 = sub_24F92D1E8();

  v15 = v1;
  MEMORY[0x253050C20](539828256, 0xE400000000000000);
  v2 = *(v0 + 16);
  v3 = v2[2];
  v4 = v2[3];

  MEMORY[0x253050C20](v3, v4);
  MEMORY[0x253050C20](93, 0xE100000000000000);

  MEMORY[0x253050C20](0x5B2064496D616441, 0xE800000000000000);

  MEMORY[0x253050C20](0x6964616548202D20, 0xEC000000203A676ELL);
  v5 = v2[11];
  if (v5)
  {
    v6 = v2[10];
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v2[11];
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  MEMORY[0x253050C20](v6, v7);

  MEMORY[0x253050C20](0x3A656C746974202CLL, 0xE900000000000020);
  v8 = v2[13];
  if (v8)
  {
    v9 = v2[12];
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v2[13];
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x253050C20](v9, v10);

  MEMORY[0x253050C20](0x746974627573202CLL, 0xEB000000003A656CLL);
  v11 = v2[15];
  if (v11)
  {
    v12 = v2[14];
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v2[15];
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x253050C20](v12, v13);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return v15;
}

uint64_t CondensedAdLockupWithIconBackground.deinit()
{

  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit35CondensedAdLockupWithIconBackground_impressionMetrics);
  return v0;
}

uint64_t CondensedAdLockupWithIconBackground.__deallocating_deinit()
{

  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit35CondensedAdLockupWithIconBackground_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t sub_24EE3801C@<X0>(void *a1@<X8>)
{
  v3 = *(*(*v1 + 16) + 264);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_24EE38380(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

void *sub_24EE380C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = CondensedAdLockupWithIconBackground.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EE38148@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  v3 = *(v2 + 24);
  *a1 = *(v2 + 16);
  a1[1] = v3;
}

uint64_t type metadata accessor for CondensedAdLockupWithIconBackground()
{
  result = qword_27F231388;
  if (!qword_27F231388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EE3828C()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EE38380(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EE383C8()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39CA50);
  __swift_project_value_buffer(v4, qword_27F39CA50);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

double Bootstrap.init(bagProfile:bagOfflinePolicy:appStateControllerFactory:targetType:objectGraphName:tokenServiceClient:processTreatmentNamespace:prerequisites:jetpackURL:languageSource:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v63 = a7;
  v64 = a8;
  v66 = a5;
  v67 = a6;
  v69 = a3;
  v57 = a15;
  v68 = a14;
  v61 = a12;
  v62 = a13;
  v58 = a11;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v52 - v20;
  v22 = sub_24F92A468();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2[1];
  v56 = *a2;
  v55 = v26;
  v54 = *(a2 + 16);
  v53 = *a4;
  v27 = type metadata accessor for Bootstrap();
  v28 = *(v27 + 24);
  type metadata accessor for RenderPipelineDiagnostics.Recorder();
  swift_allocObject();
  *(a9 + v28) = RenderPipelineDiagnostics.Recorder.init()();
  v29 = *(v23 + 16);
  v59 = a1;
  v29(v25, a1, v22);
  sub_24E615E00(v69, v72);
  v60 = v21;
  v30 = v21;
  v31 = v57;
  sub_24E60169C(v68, v30, &qword_27F228530);
  sub_24E60169C(v31, v70, &unk_27F22EC00);
  v32 = *(v27 + 20);
  v65 = a9;
  v33 = a9 + v32;
  v34 = type metadata accessor for ASKBootstrapV2(0);
  v35 = &v33[v34[8]];
  *(v35 + 4) = 0;
  *v35 = 0u;
  *(v35 + 1) = 0u;
  v36 = &v33[v34[9]];
  *v36 = 0;
  v36[1] = 0;
  v29(&v33[v34[5]], v25, v22);
  v37 = v58;
  v38 = &v33[v34[6]];
  v39 = v55;
  *v38 = v56;
  *(v38 + 1) = v39;
  v38[16] = v54;
  *v33 = v53;
  sub_24E615E00(v72, &v33[v34[7]]);
  v40 = [objc_opt_self() currentProcess];
  if (v37)
  {
    v41 = sub_24F92B098();
    [v40 setTreatmentNamespace_];
  }

  sub_24E601704(v31, &unk_27F22EC00);
  sub_24E601704(v68, &qword_27F228530);
  __swift_destroy_boxed_opaque_existential_1(v69);
  v42 = *(v23 + 8);
  v42(v59, v22);
  __swift_destroy_boxed_opaque_existential_1(v72);
  v42(v25, v22);
  *&v33[v34[10]] = v40;
  v43 = &v33[v34[11]];
  v44 = v62;
  *v43 = v61;
  v43[1] = v44;
  v45 = &v33[v34[12]];
  v46 = v64;
  *v45 = v63;
  v45[1] = v46;
  sub_24E6009C8(v60, &v33[v34[13]], &qword_27F228530);
  v47 = &v33[v34[14]];
  result = *v70;
  v49 = v70[1];
  *v47 = v70[0];
  *(v47 + 1) = v49;
  *(v47 + 4) = v71;
  v50 = v65;
  v51 = v67;
  *v65 = v66;
  v50[1] = v51;
  return result;
}

uint64_t type metadata accessor for Bootstrap()
{
  result = qword_27F231398;
  if (!qword_27F231398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Bootstrap.run(rootViewController:)(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_24F91F648();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  sub_24F92B7F8();
  v3[19] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v3[20] = v6;
  v3[21] = v5;

  return MEMORY[0x2822009F8](sub_24EE38A4C, v6, v5);
}

uint64_t sub_24EE38A4C()
{
  if (qword_27F210790 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  *(v0 + 176) = v1;
  *(v0 + 184) = __swift_project_value_buffer(v1, qword_27F39CA50);
  *(v0 + 192) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  v2 = *(sub_24F928468() - 8);
  *(v0 + 200) = *(v2 + 72);
  *(v0 + 232) = *(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *v3 = v0;
  v3[1] = sub_24EE38C18;
  v4 = *(v0 + 112);

  return sub_24EE39048(v4);
}

uint64_t sub_24EE38C18(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_24EE38DD4;
  }

  else
  {
    v4[28] = a1;
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_24EE38D40;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24EE38D40()
{
  v1 = v0[28];
  v2 = v0[13];

  sub_24EE396C4(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24EE38DD4()
{

  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v1 = v0[6];
  v2 = v0[7];
  v0[5] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v1, v2);
  sub_24F928438();
  sub_24E601704((v0 + 2), &qword_27F2129B0);
  sub_24F92A5A8();

  if (qword_27F210618 != -1)
  {
    swift_once();
  }

  v4 = qword_27F22D9A8;
  [qword_27F22D9A8 lock];
  if (qword_27F210610 != -1)
  {
    swift_once();
  }

  v5 = off_27F22D9A0;
  if (off_27F22D9A0)
  {
    v7 = v0[17];
    v6 = v0[18];
    v8 = v0[16];

    sub_24F91F638();
    sub_24F91F5E8();
    v10 = v9;
    (*(v7 + 8))(v6, v8);
    swift_beginAccess();
    v5[20] = v10;
    *(v5 + 168) = 0;
  }

  [v4 unlock];
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_24EE39048(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v2[10] = v3;
  v2[11] = *(v3 + 64);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EE3910C, 0, 0);
}

uint64_t sub_24EE3910C()
{
  v1 = v0[9];
  v2 = *(type metadata accessor for Bootstrap() + 20);
  if (qword_27F210570 != -1)
  {
    swift_once();
  }

  v3 = sub_24F92AAE8();
  __swift_project_value_buffer(v3, qword_27F39C3B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  if (qword_27F210010 != -1)
  {
    swift_once();
  }

  v4 = v0[12];
  v5 = v0[10];
  UserEngagementManager.startDefaultTabRequest()();
  sub_24EE3D064(v1 + v2, v4, type metadata accessor for ASKBootstrapV2);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = swift_allocObject();
  sub_24ED352E4(v4, v7 + v6);
  v0[13] = sub_24ED33C1C(sub_24ED34F20, 0, sub_24EE3D004, v7);

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB50);
  v9 = sub_24E602068(&qword_27F2313B0, &unk_27F22EB50);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_24EE3940C;

  return MEMORY[0x282180360](v0 + 7, v8, v9);
}

uint64_t sub_24EE3940C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    *(v2 + 128) = *(v2 + 56);

    return MEMORY[0x2822009F8](sub_24EE39578, 0, 0);
  }
}

uint64_t sub_24EE39578()
{
  v1 = v0[15];

  sub_24F928F58();
  v2 = sub_24EE3B4EC();
  sub_24EE39E84(v0 + 2);
  if (v1)
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[8];
    v6 = sub_24EE3B60C(v0[16], (v0 + 2), v2, v5);
    sub_24EE3C484(v5);

    __swift_destroy_boxed_opaque_existential_1((v0 + 2));

    v7 = v0[1];

    return v7(v6);
  }
}

uint64_t sub_24EE396C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  v3 = sub_24F92A498();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9290F8();
  v55 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v58 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F929F48();
  v8 = *(v7 - 8);
  v53 = v7;
  v54 = v8;
  MEMORY[0x28223BE20](v7);
  v48 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v57 = sub_24F929158();
  v51 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_24EE3C6C0();
  if (qword_27F210790 != -1)
  {
    swift_once();
  }

  v16 = sub_24F92AAE8();
  __swift_project_value_buffer(v16, qword_27F39CA50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  v17 = swift_allocObject();
  v45 = xmmword_24F93DE60;
  *(v17 + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  type metadata accessor for DiagnosticsReporter();
  sub_24F928F28();
  v18 = type metadata accessor for Bootstrap();
  DiagnosticsReporter.flushRecorder(_:)(*&v46[*(v18 + 24)]);

  sub_24EE3CA8C();
  type metadata accessor for ASKBagContract();
  sub_24F928FD8();
  sub_24F92A758();
  v19 = v59;
  sub_24F92A758();
  if (qword_27F2108A8 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A408();
  (*(v11 + 8))(v13, v10);
  static PendingAppLaunch.didFinishLaunch(postEventUsing:topic:)(v15, v59, v60);

  v20 = v48;
  v21 = v53;
  sub_24F928F28();
  sub_24F929E08();
  sub_24F928F28();
  v42 = v61;
  v46 = v15;
  v43 = v19;
  v44 = a1;
  sub_24F928F28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2313A8);
  v22 = swift_allocObject();
  *(v22 + 16) = v45;
  v23 = v47;
  v24 = v50;
  sub_24F928F28();
  v25 = swift_allocObject();
  (*(v49 + 32))(v25 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag, v23, v24);
  *(v25 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_isOfflineBag) = 0;
  v26 = v25 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy;
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_24ED447C8;
  *(v27 + 24) = v25;
  *(v22 + 32) = sub_24E94DFB8;
  *(v22 + 40) = v27;
  type metadata accessor for MetricsPipelineTransformer(0);
  v28 = swift_allocObject();
  *(v28 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms) = MEMORY[0x277D84F90];
  *(v28 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_isResolvedPipeline) = 0;
  v29 = v28 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_originalState;
  v30 = v54;
  v31 = v20;
  v32 = v20;
  v33 = v21;
  (*(v54 + 16))(v28 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_originalState, v32, v21);
  v34 = type metadata accessor for MetricsPipelineTransformer.State(0);
  v35 = v55;
  v36 = v58;
  (*(v55 + 16))(v29 + v34[6], v58, v5);
  *(v29 + v34[5]) = v42;
  *(v29 + v34[7]) = MEMORY[0x277D84F90];
  *(v29 + v34[8]) = v22;

  (*(v35 + 8))(v36, v5);
  (*(v30 + 8))(v31, v33);
  (*(v51 + 8))(v46, v57);
  v37 = OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  *(v28 + v37) = MEMORY[0x277D84F90];

  v38 = v56;
  v39 = v52;
  *v56 = v44;
  v38[1] = v39;
  v38[2] = v28;
}

uint64_t sub_24EE39E84@<X0>(uint64_t *a1@<X8>)
{
  v48 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2313D0);
  v46 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v37 - v3;
  v5 = sub_24F929DA8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v50 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = v37 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = v37 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v37 - v14;
  MEMORY[0x28223BE20](v16);
  v51 = v37 - v17;
  v18 = type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  v47 = v18;
  sub_24F92A758();
  v55 = v54[0];
  type metadata accessor for DeepLinkWithReferrerIntent();
  sub_24EE3D180(&qword_27F2313D8, type metadata accessor for DeepLinkWithReferrerIntent);
  sub_24F92A258();
  if (v1)
  {
  }

  sub_24F929D98();
  sub_24E602068(&qword_27F2313E0, &qword_27F2313D0);
  v44 = 0;
  sub_24F929D58();
  v20 = v12;
  v39 = v12;
  v21 = *(v6 + 8);
  v21(v20, v5);
  v22 = v6 + 8;
  (*(v46 + 8))(v4, v2);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2313E8);
  v42 = *(v6 + 72);
  v41 = *(v6 + 80);
  v23 = (v41 + 32) & ~v41;
  v24 = swift_allocObject();
  v25 = *(v6 + 16);
  v45 = v25;
  v25((v24 + v23), v15, v5);
  v46 = v6 + 16;
  v38 = v15;
  sub_24F929D98();
  v26 = v39;
  v25(v39, v24 + v23, v5);
  swift_setDeallocating();
  v21((v24 + v23), v5);
  swift_deallocClassInstance();
  sub_24F929D88();
  v27 = v26;
  v21(v26, v5);
  v21(v38, v5);
  v37[1] = v22;
  v28 = v50;
  sub_24F929D98();
  sub_24EE3D12C();
  v29 = v49;
  sub_24F929D58();
  v21(v28, v5);
  v30 = swift_allocObject();
  v31 = v45;
  v45((v30 + v23), v29, v5);
  sub_24F929D98();
  v31(v28, v30 + v23, v5);
  swift_setDeallocating();
  v21((v30 + v23), v5);
  swift_deallocClassInstance();
  sub_24F929D88();
  v40 = v21;
  v21(v28, v5);
  v21(v29, v5);
  v53[3] = v47;
  v53[4] = sub_24EE3D180(&qword_27F2313F8, type metadata accessor for JSIntentDispatcher);
  v53[0] = v55;
  v54[3] = v5;
  v54[4] = MEMORY[0x277D22188];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
  v33 = v45;
  v45(boxed_opaque_existential_1, v27, v5);
  sub_24E60169C(v53, v52, &qword_27F231400);

  sub_24F929D68();
  v34 = v40;
  v40(v27, v5);
  sub_24E601704(v53, &qword_27F231400);
  v35 = v48;
  v48[3] = v5;
  v35[4] = MEMORY[0x277D22188];
  __swift_allocate_boxed_opaque_existential_1(v35);
  v36 = v51;
  v33();
  sub_24E60169C(v54, v53, &qword_27F231400);
  sub_24F929D68();

  v34(v36, v5);
  return sub_24E601704(v54, &qword_27F231400);
}

uint64_t sub_24EE3A554()
{
  v1 = v0;
  v2 = sub_24F928B68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928B58();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231408);
    v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_24F93DE60;
    (*(v3 + 32))(v1 + v6, v5, v2);
  }

  return v1;
}

uint64_t sub_24EE3A6D8(uint64_t a1, uint64_t a2)
{
  v2[35] = a1;
  v2[36] = a2;
  v3 = sub_24F91F6B8();
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v2[40] = swift_task_alloc();
  v4 = sub_24F928AD8();
  v2[41] = v4;
  v2[42] = *(v4 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v2[45] = swift_task_alloc();
  v5 = sub_24F9291A8();
  v2[46] = v5;
  v2[47] = *(v5 - 8);
  v2[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EE3A8CC, 0, 0);
}

uint64_t sub_24EE3A8CC()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 368);
  sub_24F928CA8();
  v4 = sub_24F9291B8();
  v6 = v5;
  result = (*(v2 + 8))(v1, v3);
  if (v6)
  {
    *(v0 + 248) = v4;
    v8 = *(v0 + 352);
    v9 = *(v0 + 360);
    v10 = *(v0 + 336);
    v11 = *(v0 + 328);
    v39 = *(v0 + 344);
    v40 = *(v0 + 320);
    *(v0 + 256) = v6;
    sub_24F92C7F8();
    v12 = sub_24F91F4A8();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    *(v0 + 232) = 0u;
    *(v0 + 216) = 0u;
    sub_24F928A98();
    v13 = sub_24F929D28();
    v15 = v14;
    v16 = type metadata accessor for FlowAction();
    v17 = swift_allocObject();
    *(v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
    v18 = v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
    *v18 = 0u;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0;
    v19 = (v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
    *v19 = 0;
    v19[1] = 0;
    *(v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 8;
    sub_24E60169C(v9, v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
    v20 = (v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
    *v20 = 0;
    v20[1] = 0;
    v21 = v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
    *v21 = xmmword_24F9406F0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 16) = 0;
    *(v21 + 40) = 0;
    *(v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
    *(v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
    *(v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
    v22 = (v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
    *v22 = v13;
    v22[1] = v15;
    sub_24E60169C(v0 + 56, v0 + 96, &qword_27F235830);
    (*(v10 + 16))(v39, v8, v11);
    v23 = sub_24F929608();
    (*(*(v23 - 8) + 56))(v40, 1, 1, v23);
    v24 = (v17 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v24 = 0u;
    v24[1] = 0u;
    sub_24E60169C(v0 + 96, v0 + 136, &qword_27F235830);
    if (*(v0 + 160))
    {
      v41 = *(v0 + 136);
      v42 = *(v0 + 152);
      v43 = *(v0 + 168);
    }

    else
    {
      v26 = *(v0 + 304);
      v25 = *(v0 + 312);
      v27 = *(v0 + 296);
      sub_24F91F6A8();
      v28 = sub_24F91F668();
      v30 = v29;
      (*(v26 + 8))(v25, v27);
      *(v0 + 264) = v28;
      *(v0 + 272) = v30;
      sub_24F92C7F8();
      sub_24E601704(v0 + 136, &qword_27F235830);
    }

    v31 = *(v0 + 352);
    v32 = *(v0 + 360);
    v33 = *(v0 + 336);
    v34 = *(v0 + 344);
    v35 = *(v0 + 320);
    v36 = *(v0 + 328);
    sub_24E601704(v0 + 96, &qword_27F235830);
    v37 = v17 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    *v37 = v41;
    *(v37 + 16) = v42;
    *(v37 + 32) = v43;
    sub_24E6009C8(v35, v17 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    (*(v33 + 32))(v17 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v34, v36);

    FlowAction.setPageData(_:)(v0 + 216);

    (*(v33 + 8))(v31, v36);
    sub_24E601704(v0 + 216, &qword_27F2129B0);
    sub_24E601704(v32, &qword_27F228530);
    sub_24E601704(v0 + 56, &qword_27F235830);
    *(v0 + 40) = v16;
    *(v0 + 48) = sub_24EE3D180(&qword_27F216400, type metadata accessor for FlowAction);
    *(v0 + 16) = v17;
    sub_24E615E00(v0 + 16, v0 + 176);
    sub_24F92A6C8();
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EE3AE4C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ASKBootstrapV2(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EE3AF0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ASKBootstrapV2(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24EE3AFB0()
{
  result = type metadata accessor for ASKBootstrapV2(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RenderPipelineDiagnostics.Recorder();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_24EE3B044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v35 = a3;
  v37 = a1;
  v38 = a2;
  ObjectType = swift_getObjectType();
  v36 = sub_24F929078();
  v7 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F92AAB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F92AAE8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[3] = sub_24E69A5C4(0, &qword_27F231410);
  v42[4] = &protocol witness table for ASDSubscriptionEntitlements;
  v42[0] = v35;
  v41[3] = sub_24E69A5C4(0, &qword_27F221568);
  v41[4] = &protocol witness table for ACAccountStore;
  v41[0] = a4;
  *&a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentQueue] = 0;
  *&a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_dialogHandler] = 0;
  v18 = OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_observers;
  *&a5[v18] = sub_24E60F260(MEMORY[0x277D84F90]);
  v19 = OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock;
  *&a5[v19] = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  *&a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentCallbacks] = MEMORY[0x277D84F98];
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v10, qword_27F39C380);
  (*(v11 + 16))(v13, v20, v10);
  sub_24F92AAD8();
  v21 = v36;
  (*(v7 + 104))(v9, *MEMORY[0x277D21DD8], v36);
  v22 = sub_24F92A578();
  (*(v7 + 8))(v9, v21);
  (*(v15 + 8))(v17, v14);
  v23 = &a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger];
  v24 = sub_24F928EB8();
  v25 = MEMORY[0x277D21D78];
  v23[3] = v24;
  v23[4] = v25;
  *v23 = v22;
  v26 = &a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId];
  v27 = v38;
  *v26 = v37;
  *(v26 + 1) = v27;
  sub_24E615E00(v42, &a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements]);
  v28 = &a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
  *v28 = 0;
  v28[8] = -64;
  sub_24E615E00(v41, &a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_activeStoreAccountProvider]);
  v40.receiver = a5;
  v40.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v40, sel_init);
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 defaultCenter];
  [v32 addObserver:v31 selector:sel_entitlementsDidChange name:*MEMORY[0x277CEC318] object:0];

  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return v31;
}

id sub_24EE3B4EC()
{
  type metadata accessor for ASKBagContract();
  sub_24F928FD8();
  sub_24F92A758();
  v0 = ASKBagContract.arcadeProductFamilyId.getter();
  v2 = v1;
  v3 = [objc_opt_self() sharedInstance];
  sub_24E69A5C4(0, &qword_27F221568);
  sub_24F92A758();
  v4 = objc_allocWithZone(type metadata accessor for ArcadeSubscriptionManager());
  v5 = sub_24EE3B044(v0, v2, v3, v7, v4);
  LOBYTE(v7) = 1;
  ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(&v7);

  return v5;
}

uint64_t sub_24EE3B60C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v102 = a4;
  v87 = a3;
  v97 = a2;
  v104 = sub_24F928188();
  v110 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_24F928BC8();
  MEMORY[0x28223BE20](v98);
  v99 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F9290F8();
  v93 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v91 = (&v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v90 = &v86 - v10;
  MEMORY[0x28223BE20](v11);
  v92 = &v86 - v12;
  v88 = type metadata accessor for ArcadeSubscriptionStatusFieldsProvider();
  MEMORY[0x28223BE20](v88);
  v105 = (&v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for ArcadeSubscriptionFieldsProvider();
  MEMORY[0x28223BE20](v14);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F929F48();
  v108 = *(v17 - 8);
  v109 = v17;
  MEMORY[0x28223BE20](v17);
  v95 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v86 - v20;
  v22 = sub_24F929158();
  v94 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v111 = &v86 - v26;
  v27 = sub_24F92A498();
  v100 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v96 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v86 - v30;
  sub_24F928FD8();
  v106 = v31;
  v101 = v27;
  sub_24F92A758();
  v112 = a1;
  v107 = v22;
  sub_24F92A758();
  v113 = v21;
  sub_24F929098();
  v89 = v24;
  sub_24F929148();
  v32 = *(v14 + 20);
  v33 = *MEMORY[0x277D22340];
  v34 = sub_24F92A2D8();
  v35 = *(*(v34 - 8) + 104);
  v35(&v16[v32], v33, v34);
  v36 = v87;
  *v16 = v87;
  v118 = v14;
  v119 = sub_24EE3D180(&qword_27F2313B8, type metadata accessor for ArcadeSubscriptionFieldsProvider);
  v37 = __swift_allocate_boxed_opaque_existential_1(&v117);
  v38 = v16;
  sub_24EE3D064(v16, v37, type metadata accessor for ArcadeSubscriptionFieldsProvider);
  v39 = qword_27F210330;
  v40 = v36;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_24F92A278();
  __swift_project_value_buffer(v41, qword_27F229DE8);
  sub_24F929F08();
  __swift_destroy_boxed_opaque_existential_1(&v117);
  v42 = v88;
  v43 = v105;
  v35(v105 + *(v88 + 20), v33, v34);
  *v43 = v40;
  v118 = v42;
  v119 = sub_24EE3D180(&qword_27F2313C0, type metadata accessor for ArcadeSubscriptionStatusFieldsProvider);
  v44 = __swift_allocate_boxed_opaque_existential_1(&v117);
  sub_24EE3D064(v43, v44, type metadata accessor for ArcadeSubscriptionStatusFieldsProvider);
  v45 = qword_27F210338;
  v46 = v40;
  if (v45 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v41, qword_27F229E00);
  sub_24F929F08();
  __swift_destroy_boxed_opaque_existential_1(&v117);
  v47 = v91;
  sub_24F928F28();
  v48 = v90;
  sub_24F9290C8();
  v49 = v93;
  v50 = v93[1];
  v50(v47, v7);
  v51 = v92;
  sub_24F9290B8();
  v50(v48, v7);
  (v49[2])(v48, v51, v7);
  sub_24F929118();
  v50(v51, v7);
  sub_24EE3D0CC(v105, type metadata accessor for ArcadeSubscriptionStatusFieldsProvider);
  sub_24EE3D0CC(v38, type metadata accessor for ArcadeSubscriptionFieldsProvider);
  __swift_destroy_boxed_opaque_existential_1(&v120);
  v52 = v94;
  v53 = *(v94 + 8);
  v54 = v89;
  v55 = v107;
  v105 = (v94 + 8);
  v93 = v53;
  (v53)(v89, v107);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF8);
  v56 = *(v110 + 72);
  v57 = (*(v110 + 80) + 32) & ~*(v110 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_24F979FB0;
  v92 = v57;
  v91 = v58;
  type metadata accessor for ArcadeSubscriptionManager();
  v120 = v46;
  v59 = v46;
  sub_24F928168();
  type metadata accessor for ArtworkLoader();
  type metadata accessor for ArtworkLoaderURLSession();
  sub_24F928F28();
  v60 = v120;
  v61 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v62 = sub_24F92B098();
  [v61 setName_];

  swift_allocObject();
  v63 = sub_24EAFE4EC(v61, 0, 0, v60);

  v120 = v63;
  sub_24F928168();
  type metadata accessor for UpdateStore();
  if (qword_27F210388 != -1)
  {
    swift_once();
  }

  v120 = qword_27F22A800;
  v64 = qword_27F22A800;
  sub_24F928168();
  v65 = type metadata accessor for URLProtocolDelegate();
  v66 = objc_allocWithZone(v65);
  v67 = OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle;
  *&v66[OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle] = 1;
  swift_beginAccess();
  v68 = *&v66[v67];
  *&v66[v67] = 1;
  sub_24ED8F464(v68);
  v116.receiver = v66;
  v116.super_class = v65;
  v120 = objc_msgSendSuper2(&v116, sel_init);
  sub_24F928168();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  sub_24E615E00(v97, &v120);
  sub_24F928168();
  (*(v52 + 16))(v54, v111, v55);
  sub_24F928168();
  (*(v108 + 16))(v95, v113, v109);
  sub_24F928168();
  type metadata accessor for DiagnosticsReporter();
  sub_24EE3D180(&qword_27F2313C8, MEMORY[0x277D21CE0]);
  v69 = v99;
  sub_24F928F08();
  swift_allocObject();
  v120 = sub_24EF9D774(v69, 0, 0, 0, 0);
  sub_24F928168();
  v70 = v100;
  v71 = *(v100 + 16);
  v72 = v96;
  v73 = v101;
  v71(v96, v106, v101);
  v74 = type metadata accessor for CommerceDialogHandler();
  v75 = objc_allocWithZone(v74);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v76 = OBJC_IVAR____TtC12GameStoreKit21CommerceDialogHandler_bag;
  v71(&v75[OBJC_IVAR____TtC12GameStoreKit21CommerceDialogHandler_bag], v72, v73);
  (*(v70 + 56))(&v75[v76], 0, 1, v73);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v115.receiver = v75;
  v115.super_class = v74;
  v77 = objc_msgSendSuper2(&v115, sel_init);
  v78 = *(v70 + 8);
  v78(v72, v73);
  v114 = v77;
  v79 = v77;
  v80 = v103;
  sub_24F928168();
  v81 = v91;
  v83 = v91[2];
  v82 = v91[3];
  if (v83 >= v82 >> 1)
  {
    v81 = sub_24E6196E4(v82 > 1, v83 + 1, 1, v91);
  }

  *(v81 + 16) = v83 + 1;
  (*(v110 + 32))(&v92[v81 + v83 * v56], v80, v104);
  v114 = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F750);
  sub_24E602068(&qword_27F22F758, &qword_27F22F750);
  v84 = sub_24F928F98();

  (*(v108 + 8))(v113, v109);
  (v93)(v111, v107);
  v78(v106, v73);
  return v84;
}

void sub_24EE3C484(void *a1)
{
  if (a1)
  {
    sub_24E69A5C4(0, &qword_27F222D10);
    sub_24F928FD8();
    v2 = a1;
    sub_24F92A758();
    type metadata accessor for URLProtocolDelegate();
    sub_24F92A758();
    v3 = OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle;
    swift_beginAccess();
    v4 = *&v7[v3];
    *&v7[v3] = a1;
    v5 = v2;
    sub_24ED8F464(v4);
    [v7 setDelegate_];
  }

  else
  {
    if (qword_27F210790 != -1)
    {
      swift_once();
    }

    v6 = sub_24F92AAE8();
    __swift_project_value_buffer(v6, qword_27F39CA50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();
  }
}

uint64_t sub_24EE3C6C0()
{
  v0 = sub_24F928C38();
  v31 = *(v0 - 8);
  v32 = v0;
  MEMORY[0x28223BE20](v0);
  v30 = &v26[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = sub_24F92A498();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v26[-v7];
  MEMORY[0x28223BE20](v9);
  v11 = &v26[-v10];
  sub_24F928FD8();
  sub_24F92A758();
  type metadata accessor for ASKBagContract();
  sub_24F92A758();
  v12 = v35[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB90);
  sub_24F92A758();
  v13 = *(v3 + 16);
  v13(v8, v11, v2);
  v14 = *(v12 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_isOfflineBag);
  v15 = *(v12 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy);
  v28 = *(v12 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy + 8);
  v29 = v15;
  v27 = *(v12 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy + 16);
  sub_24E615E00(v35, v34);
  sub_24E69A5C4(0, &qword_27F2222A8);
  sub_24F928EF8();
  v16 = v33[5];
  v13(v5, v8, v2);
  type metadata accessor for JSFreshnessWatchdog.BagContract(0);
  v17 = swift_allocObject();
  (*(v3 + 32))(v17 + OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_bag, v5, v2);
  *(v17 + OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_isOfflineBag) = v14;
  v18 = v17 + OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy;
  v19 = v28;
  *v18 = v29;
  *(v18 + 8) = v19;
  *(v18 + 16) = v27;
  sub_24E615E00(v34, v33);
  type metadata accessor for JSFreshnessWatchdog(0);
  v20 = swift_allocObject();
  v21 = sub_24EA03B10(v17, v33, v16, v20);
  __swift_destroy_boxed_opaque_existential_1(v34);
  v22 = *(v3 + 8);
  v22(v8, v2);
  v23 = v30;
  sub_24F928C28();

  __swift_destroy_boxed_opaque_existential_1(v35);
  v22(v11, v2);
  v24 = OBJC_IVAR____TtC12GameStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  swift_beginAccess();
  (*(v31 + 40))(v21 + v24, v23, v32);
  swift_endAccess();
  return v21;
}

void sub_24EE3CA8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224128);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v19 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - v8;
  type metadata accessor for ASKBagContract();
  sub_24F928FD8();
  sub_24F92A758();
  if (qword_27F2110D0 != -1)
  {
    swift_once();
  }

  v10 = qword_27F23E380;
  if (qword_27F210930 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A3F8();
  (*(v7 + 8))(v9, v6);
  v11 = v19[1];
  v12 = v19[2];
  v13 = (v10 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_defaultAutoPlayVideoSetting);
  swift_beginAccess();
  *v13 = v11;
  v13[1] = v12;

  sub_24F2DBA44();
  v14 = objc_opt_self();
  v15 = [v14 standardUserDefaults];
  sub_24F91F638();
  v16 = sub_24F91F648();
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
  sub_24ED0F7FC(v5);

  v17 = [v14 standardUserDefaults];
  sub_24F91F9A8();
  v18 = sub_24F91F9B8();
  (*(*(v18 - 8) + 56))(v2, 0, 1, v18);
  sub_24ED0FA4C(v2);
}

uint64_t sub_24EE3CDEC()
{

  return swift_deallocObject();
}

uint64_t sub_24EE3CE24()
{
  v1 = type metadata accessor for ASKBootstrapV2(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v1[5];
  v4 = sub_24F92A468();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[7]);
  v5 = v2 + v1[8];
  if (*(v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  if (*(v2 + v1[9]))
  {
  }

  v6 = v1[13];
  v7 = sub_24F91F4A8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v9 = v2 + v1[14];
  if (*(v9 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return swift_deallocObject();
}

uint64_t sub_24EE3D004()
{
  v1 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24ED350D0(v2);
}

uint64_t sub_24EE3D064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE3D0CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EE3D12C()
{
  result = qword_27F2313F0;
  if (!qword_27F2313F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2313F0);
  }

  return result;
}

uint64_t sub_24EE3D180(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_24EE3D1D8()
{
  if (*v0)
  {
    return sub_24EE3D504();
  }

  else
  {
    return sub_24EE3D7C8();
  }
}

void sub_24EE3D1E8(void *a1)
{
  if (*v1 == 1)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      sub_24E77ACC8();
      v5 = qword_27F211278;
      v6 = a1;
      if (v5 != -1)
      {
        swift_once();
      }

      v7 = sub_24F92C3B8();
      [v4 setCustomTintColor_];
    }
  }
}

id sub_24EE3D2EC(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  result = [a5 viewIfLoaded];
  v11 = result;
  if (result)
  {
    if (a4)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = *&a3;
    }

    v13 = *&a1;
    if (a2)
    {
      v13 = 0.0;
    }

    LODWORD(v10) = 1132068864;
    [result systemLayoutSizeFittingSize:v13 withHorizontalFittingPriority:v12 verticalFittingPriority:{COERCE_DOUBLE(1144750080), v10}];
    v15 = v14;

    return v15;
  }

  return result;
}

uint64_t sub_24EE3D3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EE3DA94();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24EE3D420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EE3DA94();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24EE3D484()
{
  sub_24EE3DA94();
  sub_24F925628();
  __break(1u);
}

unint64_t sub_24EE3D4B0()
{
  result = qword_27F231418;
  if (!qword_27F231418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231418);
  }

  return result;
}

id sub_24EE3D504()
{
  v0 = sub_24F929888();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = sub_24F92B588();
  v6 = [v4 linkWithBundleIdentifiers_];

  if (v6)
  {
    v7 = [objc_opt_self() _gkPreferredSystemLanguage];
    [v6 setDisplayLanguage_];

    v8 = v6;
    result = [v8 view];
    if (result)
    {
      v10 = result;
      memset(v17, 0, sizeof(v17));
      memset(v16, 0, sizeof(v16));
      sub_24F9297A8();
      sub_24E857CC8(v16);
      sub_24E857CC8(v17);
      MEMORY[0x253051C20](v3);

      (*(v1 + 8))(v3, v0);
      return v8;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v11 = sub_24F9220D8();
    __swift_project_value_buffer(v11, qword_27F39E8E0);
    v12 = sub_24F9220B8();
    v13 = sub_24F92BDB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24E5DD000, v12, v13, "Failed to create OBPrivacyLinkController.", v14, 2u);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    v15 = objc_allocWithZone(MEMORY[0x277D75D28]);

    return [v15 init];
  }

  return result;
}

id sub_24EE3D7C8()
{
  v0 = sub_24F929888();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = sub_24F92B098();
  v6 = [v4 linkWithBundleIdentifier_];

  if (v6)
  {
    v7 = [objc_opt_self() _gkPreferredSystemLanguage];
    [v6 setDisplayLanguage_];

    v8 = v6;
    result = [v8 view];
    if (result)
    {
      v10 = result;
      memset(v17, 0, sizeof(v17));
      memset(v16, 0, sizeof(v16));
      sub_24F9297A8();
      sub_24E857CC8(v16);
      sub_24E857CC8(v17);
      MEMORY[0x253051C20](v3);

      (*(v1 + 8))(v3, v0);
      return v8;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v11 = sub_24F9220D8();
    __swift_project_value_buffer(v11, qword_27F39E8E0);
    v12 = sub_24F9220B8();
    v13 = sub_24F92BDB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24E5DD000, v12, v13, "Failed to create OBPrivacyLinkController.", v14, 2u);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    v15 = objc_allocWithZone(MEMORY[0x277D75D28]);

    return [v15 init];
  }

  return result;
}

unint64_t sub_24EE3DA94()
{
  result = qword_27F231420;
  if (!qword_27F231420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231420);
  }

  return result;
}

unint64_t sub_24EE3DAFC()
{
  result = qword_27F231428[0];
  if (!qword_27F231428[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F231428);
  }

  return result;
}

uint64_t NonconcurrentBox.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  return v2;
}

uint64_t NonconcurrentBox.read<A>(with:)(void (*a1)(char *))
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - v5;
  v8 = *(v7 + 88);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v8, v3);
  a1(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t NonconcurrentBox.write(with:)(void (*a1)(uint64_t))
{
  v3 = *(*v1 + 88);
  swift_beginAccess();
  a1(v1 + v3);
  return swift_endAccess();
}

uint64_t NonconcurrentBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_24EE3DFC4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v3 = *(v1 + 40);
    type metadata accessor for GamesThreeDimensionalRealityRenderer();
    v2 = swift_allocObject();
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314B0);
    v4 = swift_allocObject();
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0;
    *(v2 + 64) = v4;
    *(v2 + 72) = v3;
    *(v1 + 16) = v2;
  }

  v6 = *(v0 + 8);

  return v6(v2);
}

uint64_t sub_24EE3E0BC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24EE3E14C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F96E2B0;
  v6 = objc_opt_self();
  v7 = [v6 defaultCenter];
  v8 = *MEMORY[0x277CB8DB8];
  v9 = *(v2 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v28 = sub_24E9727BC;
  v29 = v10;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_24EEFA694;
  v27 = &block_descriptor_13_1;
  v11 = _Block_copy(&v24);

  v12 = [v7 addObserverForName:v8 object:v9 queue:0 usingBlock:v11];
  _Block_release(v11);

  *(v5 + 32) = v12;
  v13 = [v6 defaultCenter];
  v14 = *MEMORY[0x277D25CA0];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v28 = sub_24E97225C;
  v29 = v15;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_24EEFA694;
  v27 = &block_descriptor_19_1;
  v16 = _Block_copy(&v24);

  v17 = [v13 addObserverForName:v14 object:0 queue:0 usingBlock:v16];
  _Block_release(v16);

  *(v5 + 40) = v17;
  v18 = [v6 defaultCenter];
  v19 = *MEMORY[0x277D76758];
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v28 = sub_24E9727BC;
  v29 = v20;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_24EEFA694;
  v27 = &block_descriptor_25_2;
  v21 = _Block_copy(&v24);

  v22 = [v18 addObserverForName:v19 object:0 queue:0 usingBlock:v21];
  _Block_release(v21);

  *(v5 + 48) = v22;
  return v5;
}

uint64_t sub_24EE3E4A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314B8);
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v22 - v7;
  v9 = [*(a2 + 16) ams_activeiTunesAccount];
  if (v9 && (v10 = v9, v11 = [v9 ams_DSID], v10, v11))
  {
    v27 = [objc_opt_self() exceptionConnection];
    [v27 activate];
    v25 = *(v5 + 16);
    v25(v8, a1, v4);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    v26 = v11;
    v14 = v4;
    v15 = v13;
    v24 = *(v5 + 32);
    v24(v13 + v12, v8, v14);
    v32 = sub_24EE3F18C;
    v33 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_24E955CC4;
    v31 = &block_descriptor_81;
    v16 = _Block_copy(&aBlock);

    v23 = [v27 asynchronousExceptionServiceWithErrorHandler_];
    _Block_release(v16);
    v25(v8, a1, v14);
    v17 = swift_allocObject();
    v24(v17 + v12, v8, v14);
    v32 = sub_24EE3F2B4;
    v33 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_24EE3F0D0;
    v31 = &block_descriptor_7;
    v18 = _Block_copy(&aBlock);

    v19 = v26;
    [v23 fetchAllAppExceptionsForRequesterDSID:v26 completionHandler:v18];
    _Block_release(v18);

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27F2105B0 != -1)
    {
      swift_once();
    }

    v21 = sub_24F92AAE8();
    __swift_project_value_buffer(v21, qword_27F39C470);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();

    aBlock = sub_24E60B368(MEMORY[0x277D84F90]);
    return sub_24F92B798();
  }
}

uint64_t sub_24EE3E914()
{
  v0 = sub_24F928418();
  MEMORY[0x28223BE20](v0 - 8);
  if (qword_27F2105B0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  swift_getErrorValue();
  v5[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F9283D8();
  sub_24E857CC8(v5);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A5A8();

  v5[0] = sub_24E60B368(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314B8);
  return sub_24F92B798();
}

uint64_t sub_24EE3EB6C(unint64_t a1, void *a2, uint64_t a3)
{
  v40 = a3;
  v5 = sub_24F928418();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F92AAE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  if (!a1 || a2)
  {
    if (qword_27F2105B0 != -1)
    {
      goto LABEL_40;
    }

    goto LABEL_4;
  }

  v14 = sub_24E60B368(MEMORY[0x277D84F90]);
  v7 = v42 & 0xFFFFFFFFFFFFFF8;
  if (v42 >> 62)
  {
    v15 = sub_24F92C738();
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_42:
    *&v45 = v14;
    goto LABEL_43;
  }

  v15 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_42;
  }

LABEL_10:
  v39 = v7;
  v9 = 0;
  v41 = v42 & 0xC000000000000001;
  while (1)
  {
    if (v41)
    {
      v17 = MEMORY[0x253052270](v9, v42);
    }

    else
    {
      if (v9 >= *(v39 + 16))
      {
        goto LABEL_39;
      }

      v17 = *(v42 + 8 * v9 + 32);
    }

    a2 = v17;
    v7 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v18 = [v17 bundleIdentifier];
    v19 = sub_24F92B0D8();
    v21 = v20;

    if (v14[2] && (v22 = sub_24E76D644(v19, v21), (v23 & 1) != 0))
    {
      v6 = *(v14[7] + 8 * v22);
    }

    else
    {
      v6 = 0;
    }

    v24 = [a2 ratingValue];
    if (v24 < 0)
    {
      goto LABEL_36;
    }

    if (v24 > v6)
    {
      v6 = v24;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v45 = v14;
    v26 = sub_24E76D644(v19, v21);
    v28 = v14[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_37;
    }

    v32 = v27;
    if (v14[3] < v31)
    {
      sub_24E89DE90(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_24E76D644(v19, v21);
      if ((v32 & 1) != (v33 & 1))
      {
        result = sub_24F92CF88();
        __break(1u);
        return result;
      }

LABEL_30:
      if (v32)
      {
        goto LABEL_11;
      }

      goto LABEL_31;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_30;
    }

    v37 = v26;
    sub_24E8B0A94();
    v26 = v37;
    if (v32)
    {
LABEL_11:
      v16 = v26;

      v14 = v45;
      *(*(v45 + 56) + 8 * v16) = v6;

      goto LABEL_12;
    }

LABEL_31:
    v14 = v45;
    *(v45 + 8 * (v26 >> 6) + 64) |= 1 << v26;
    v34 = (v14[6] + 16 * v26);
    *v34 = v19;
    v34[1] = v21;
    *(v14[7] + 8 * v26) = v6;

    v35 = v14[2];
    v30 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v30)
    {
      goto LABEL_38;
    }

    v14[2] = v36;
LABEL_12:
    ++v9;
    if (v7 == v15)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  swift_once();
LABEL_4:
  v10 = __swift_project_value_buffer(v6, qword_27F39C470);
  (*(v7 + 16))(v9, v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  if (a2)
  {
    swift_getErrorValue();
    v11 = v43;
    v12 = v44;
    *(&v46 + 1) = v44;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v45);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v11, v12);
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  sub_24F9283D8();
  sub_24E857CC8(&v45);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A5A8();

  (*(v7 + 8))(v9, v6);
  *&v45 = sub_24E60B368(MEMORY[0x277D84F90]);
LABEL_43:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314B8);
  return sub_24F92B798();
}

uint64_t sub_24EE3F0D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24EE3F340();
    v4 = sub_24F92B5A8();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_24EE3F18C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314B8);

  return sub_24EE3E914();
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314B8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24EE3F2B4(unint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314B8) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EE3EB6C(a1, a2, v6);
}

unint64_t sub_24EE3F340()
{
  result = qword_27F2314C0;
  if (!qword_27F2314C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F2314C0);
  }

  return result;
}

uint64_t sub_24EE3F38C()
{

  return swift_deallocObject();
}

uint64_t sub_24EE3F3F0()
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221290);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2212A0);
  sub_24E8F1F9C();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24E8F2138();
  sub_24F926B08();
}

uint64_t sub_24EE3F534()
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2223D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222458);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2223E8);
  sub_24E9410C4();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24E941238();
  sub_24F926B08();
}

uint64_t sub_24EE3F678()
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222490);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222408);
  sub_24E94137C();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24E94154C();
  sub_24F926B08();
}

uint64_t sub_24EE3F7BC()
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228EE8);
  type metadata accessor for SearchResultsPageView.ToolbarView(255);
  sub_24EE4A2A0(&qword_27F228EE0, type metadata accessor for SearchResultsPageView.ToolbarView);
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EB38750();
  sub_24F926B08();
}

uint64_t sub_24EE3F924()
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C368);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C348);
  sub_24E602068(&qword_27F22C358, &qword_27F22C348);
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EC5EF9C();
  sub_24F926B08();
}

uint64_t sub_24EE3FA94()
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C730);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C6E0);
  sub_24E602068(&qword_27F22C720, &qword_27F22C6E0);
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EC6FE14();
  sub_24F926B08();
}

uint64_t sub_24EE3FC04()
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2315F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231608);
  type metadata accessor for InviteFriendsPageView.ShelfListView(255);
  sub_24EE4A2A0(&qword_27F231600, type metadata accessor for InviteFriendsPageView.ShelfListView);
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE4E33C();
  sub_24F926B08();
}

uint64_t sub_24EE3FD6C()
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2316C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231760);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2316D8);
  sub_24EE4F0E0();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE4F1A8();
  sub_24F926B08();
}

uint64_t sub_24EE3FEB0()
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2319E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2319E8);
  sub_24EE51EA4();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE51EF8();
  sub_24F926B08();
}

uint64_t sub_24EE3FFE4()
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A08);
  type metadata accessor for OverlayGameControllerControls(255);
  sub_24EE4A2A0(&qword_27F231A10, type metadata accessor for OverlayGameControllerControls);
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE52000();
  sub_24F926B08();
}

uint64_t sub_24EE4014C()
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A48);
  sub_24EE52298();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE522EC();
  sub_24F926B08();
}

uint64_t sub_24EE40280()
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A28);
  sub_24EE5213C();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE52190();
  sub_24F926B08();
}

uint64_t sub_24EE403B4()
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221380);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221308);
  sub_24E8F2424();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24E8F2824();
  sub_24F926B08();
}

uint64_t sub_24EE404F8()
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2318A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2318A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318B0);
  sub_24EE50CBC();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE50E00();
  sub_24F926B08();
}

uint64_t sub_24EE4063C()
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231B08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B10);
  sub_24EE536D0();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE5392C();
  sub_24F926B08();
}

uint64_t sub_24EE40780()
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231AC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231AD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231AD8);
  sub_24EE53500();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE535B8();
  sub_24F926B08();
}

uint64_t sub_24EE408C4()
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2319A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2319B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2319B8);
  sub_24EE51CD4();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE51D8C();
  sub_24F926B08();
}

uint64_t sub_24EE40A08()
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255190);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231648);
  sub_24EE4E504();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE4E64C();
  sub_24F926B08();
}

uint64_t sub_24EE40B4C()
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2318E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2318F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318F8);
  sub_24EE50F18();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE51288();
  sub_24F926B08();
}

uint64_t sub_24EE40C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>, uint64_t *a9)
{
  v15 = sub_24F927618();
  v17 = v16;
  *&v33 = a2;
  *(&v33 + 1) = a3;
  *&v34 = a4;
  *(&v34 + 1) = a5;
  v35 = 0u;
  v36 = 0u;
  *&v37 = a6;
  *(&v37 + 1) = 0x4024000000000000;
  v38 = 0;
  LOBYTE(v32) = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = v37;
  v27 = v33;
  v28 = v34;
  v39 = v33;
  v40 = v34;
  v42 = 0u;
  v43 = v37;
  v41 = 0u;
  *&v44 = v32;
  *(&v44 + 1) = v15;
  v45 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a7);
  (*(*(v18 - 8) + 16))(a8, a1, v18);
  v19 = a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a9) + 36);
  v20 = v44;
  *(v19 + 64) = v37;
  *(v19 + 80) = v20;
  *(v19 + 96) = v45;
  v21 = v40;
  *v19 = v39;
  *(v19 + 16) = v21;
  v22 = v42;
  *(v19 + 32) = v41;
  *(v19 + 48) = v22;
  v46[0] = v27;
  v46[1] = v28;
  v46[3] = v30;
  v46[4] = v31;
  v46[2] = v29;
  v47 = v32;
  v48 = v15;
  v49 = v17;
  sub_24EB1FB58(&v33, &v26);
  sub_24E60169C(&v39, &v26, &qword_27F215A98);
  return sub_24E601704(v46, &qword_27F215A98);
}

uint64_t InviteFriendsPageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v91 = a1;
  v3 = type metadata accessor for InviteFriendsPageView(0);
  v4 = v3 - 8;
  v84 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v92 = v5;
  v90 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F923D08();
  v88 = *(v6 - 8);
  v89 = v6;
  MEMORY[0x28223BE20](v6);
  v87 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_24F925758();
  v77 = *(v78 - 1);
  MEMORY[0x28223BE20](v78);
  v76 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_24F924F28();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_24F924F58();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v64 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314C8);
  MEMORY[0x28223BE20](v67);
  v12 = &v56 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314D0);
  v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v66 = &v56 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314D8);
  v75 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v73 = &v56 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314E0);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v56 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314E8);
  v85 = *(v16 - 8);
  v86 = v16;
  MEMORY[0x28223BE20](v16);
  v83 = &v56 - v17;
  v18 = (v2 + *(v4 + 32));
  v20 = v18[1];
  v99 = *v18;
  v19 = v99;
  v100 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314F0);
  sub_24F926F38();
  sub_24EE41BF0(0, 0);

  *v12 = sub_24F924C88();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314F8) + 44);
  v63 = v12;
  sub_24EE41EE8(v2, &v12[v22]);
  v99 = v19;
  v100 = v20;
  sub_24F926F38();
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v23;
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v25;
  sub_24F9271A8();

  v62 = v99;
  v61 = v101;
  v69 = v19;
  v96 = v19;
  v97 = v20;
  v68 = v20;
  v65 = v21;
  sub_24F926F58();
  v27 = v99;
  v28 = v100;
  v29 = v101;
  swift_getKeyPath();
  v99 = v27;
  v100 = v28;
  v101 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231500);
  sub_24F927188();

  v60 = v97;
  v59 = v98;

  v93 = v2;
  if (*(v2 + 16) == 1)
  {
    v30 = v56;
    sub_24F924F18();
    v31 = v64;
    sub_24F924F08();
    (*(v57 + 8))(v30, v58);
  }

  else
  {
    v31 = v64;
    sub_24F924F38();
  }

  if (qword_27F211670 != -1)
  {
    swift_once();
  }

  v94 = qword_27F39EDA8;
  v95 = unk_27F39EDB0;
  v58 = sub_24E602068(&qword_27F231508, &qword_27F2314C8);
  v64 = sub_24E600AEC();

  v32 = v67;
  v33 = v66;
  v34 = v63;
  sub_24F926128();

  (*(v70 + 8))(v31, v72);
  sub_24E601704(v34, &qword_27F2314C8);
  v35 = v76;
  sub_24F925738();
  v99 = v32;
  v100 = MEMORY[0x277D837D0];
  v101 = v58;
  v102 = v64;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v73;
  v38 = v74;
  sub_24F926898();
  (*(v77 + 8))(v35, v78);
  (*(v71 + 8))(v33, v38);
  v39 = v87;
  sub_24F923CF8();
  v78 = type metadata accessor for InviteFriendsPageView;
  v40 = v90;
  sub_24EE4A97C(v93, v90, type metadata accessor for InviteFriendsPageView);
  v41 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v42 = swift_allocObject();
  v84 = type metadata accessor for InviteFriendsPageView;
  sub_24EE4C4A4(v40, v42 + v41, type metadata accessor for InviteFriendsPageView);
  v99 = v38;
  v100 = OpaqueTypeConformance2;
  v77 = swift_getOpaqueTypeConformance2();
  v43 = v80;
  v44 = v79;
  sub_24F926AD8();

  (*(v88 + 8))(v39, v89);
  (*(v75 + 8))(v37, v44);
  v99 = v69;
  v100 = v68;
  sub_24F926F38();
  v45 = v96;
  swift_getKeyPath();
  v99 = v45;
  sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter);
  sub_24F91FD88();

  LOBYTE(v34) = *(v45 + 49);

  LOBYTE(v96) = v34;
  v46 = v93;
  sub_24EE4A97C(v93, v40, v78);
  v47 = swift_allocObject();
  sub_24EE4C4A4(v40, v47 + v41, v84);
  v99 = v44;
  v100 = v77;
  swift_getOpaqueTypeConformance2();
  v48 = v82;
  v49 = v83;
  sub_24F926AB8();

  (*(v81 + 8))(v43, v48);
  v50 = *(type metadata accessor for InviteFriendsPageIntent() + 24);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231528);
  v52 = v91;
  v53 = v91 + *(v51 + 36);
  sub_24E60169C(v46 + v50, v53, &qword_27F21D8F8);
  v54 = type metadata accessor for PageBackgroundViewModifier(0);
  *(v53 + *(v54 + 20)) = 3;
  *(v53 + *(v54 + 24)) = 0;
  return (*(v85 + 32))(v52, v49, v86);
}

uint64_t sub_24EE41BF0(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  v10.i64[0] = v2;
  sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter);
  sub_24F91FD88();

  if (v2[3].i8[0] == 2)
  {
    v6 = vorrq_s8(v2[1], v2[2]);
    if (!*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)))
    {
      if (!a2)
      {
        goto LABEL_9;
      }

      v7 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v7 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        swift_beginAccess();
        v2[3].i8[2] = 1;
        v10.i64[0] = a1;
        v10.i64[1] = a2;
        v11 = 0;
        v12 = 0;
        v13 = 1;

        result = sub_24EE48498(&v10);
        if (v2[3].i8[1])
        {
LABEL_8:
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          sub_24F91FD78();
        }
      }

      else
      {
LABEL_9:
        v10 = 1uLL;
        v11 = 0;
        v12 = 0;
        v13 = 2;
        v9 = swift_getKeyPath();
        MEMORY[0x28223BE20](v9);
        sub_24F91FD78();

        result = swift_beginAccess();
        v2[3].i8[2] = 0;
        if (v2[3].i8[1])
        {
          goto LABEL_8;
        }
      }

      v2[3].i8[1] = 0;
    }
  }

  return result;
}

uint64_t sub_24EE41EE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48);
  MEMORY[0x28223BE20](v53);
  v52 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = &v44 - v6;
  v46 = sub_24F92A498();
  v48 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for InviteFriendsPageView(0);
  v15 = v14 - 8;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_24EE426BC(v57);
  v18 = *(a1 + *(v15 + 28));
  v47 = *(a1 + *(v15 + 48));
  sub_24EE4A97C(a1, &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InviteFriendsPageView);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = swift_allocObject();
  sub_24EE4C4A4(&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for InviteFriendsPageView);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231668);
  v22 = v21[13];
  *(a2 + v22) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v23 = a2 + v21[14];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = a2 + v21[15];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = v21[16];
  *(a2 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  sub_24F91F618();
  (*(v9 + 16))(v44, v13, v8);
  sub_24F926F28();
  v26 = v13;
  v27 = v46;
  (*(v9 + 8))(v26, v8);
  v28 = v45;
  v29 = a2 + v21[18];
  LOBYTE(v54) = 1;
  sub_24F926F28();
  v30 = v56;
  *v29 = v55;
  *(v29 + 1) = v30;
  v31 = (a2 + v21[30]);
  sub_24F929EB8();
  v54 = sub_24F929EA8();
  sub_24F926F28();
  v32 = v56;
  *v31 = v55;
  v31[1] = v32;
  sub_24E615E00(v57, a2 + v21[19]);
  sub_24F928F28();
  if (qword_27F2108A8 != -1)
  {
    swift_once();
  }

  v33 = v49;
  sub_24F92A448();
  v34 = v51;
  sub_24F92A408();
  (*(v50 + 8))(v33, v34);
  (*(v48 + 8))(v28, v27);
  v35 = v56;
  v36 = (a2 + v21[23]);
  *v36 = v55;
  v36[1] = v35;
  sub_24F929158();
  sub_24F928F28();
  type metadata accessor for LocalPlayerProvider();
  sub_24F928EF8();
  *(a2 + v21[25]) = v55;
  v37 = (a2 + v21[27]);
  *v37 = CGSizeMake;
  v37[1] = 0;
  v38 = (a2 + v21[28]);
  *v38 = sub_24EE4E8DC;
  v38[1] = v20;
  *(a2 + v21[20]) = v18;
  *(a2 + v21[22]) = v47;
  *(a2 + v21[21]) = 2;
  type metadata accessor for FeedRefreshNotifier();

  sub_24F928F28();
  *(a2 + v21[26]) = v55;
  type metadata accessor for NetworkConnectionMonitor();
  sub_24F928F28();
  *(a2 + v21[31]) = v55;
  v39 = __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  v40 = MEMORY[0x28223BE20](v39);
  (*(v42 + 16))(&v44 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v40);
  type metadata accessor for Page(0);
  sub_24F9217D8();
  sub_24F926F28();

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_24EE42684()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EE426BC@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8E8);
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - v3;
  v4 = *(type metadata accessor for InviteFriendsPageView(0) + 24);
  v21 = v1;
  v5 = (v1 + v4);
  v7 = *v5;
  v6 = v5[1];
  v26 = *v5;
  v27 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314F0);
  sub_24F926F38();
  v8 = v25;
  swift_getKeyPath();
  v26 = v8;
  sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter);
  sub_24F91FD88();

  v10 = *(v8 + 16);
  v9 = *(v8 + 24);
  v12 = *(v8 + 32);
  v11 = *(v8 + 40);
  v13 = *(v8 + 48);
  sub_24EE4E888(v10, v9, v12, v11, *(v8 + 48));

  if (!v13)
  {
    sub_24EE4E740(v10, v9, v12, v11, 0);
    goto LABEL_5;
  }

  if (v13 == 1)
  {

LABEL_5:
    v26 = v7;
    v27 = v6;
    sub_24F926F38();
    (*(v2 + 16))(v22, v25 + OBJC_IVAR____TtC12GameStoreKitP33_7A10BEAB54B6DC2FC53A714895EAB37132InviteFriendsSearchPagePresenter_searchTermStream, v23);

    v14 = type metadata accessor for InviteFriendsSearchPageIntent();
    v15 = v24;
    v24[3] = v14;
    v15[4] = sub_24EE4A2A0(&qword_27F21D358, type metadata accessor for InviteFriendsSearchPageIntent);
    __swift_allocate_boxed_opaque_existential_1(v15);
    sub_24E602068(&qword_27F231688, &qword_27F21D8E8);
    return sub_24F9280F8();
  }

  v17 = type metadata accessor for InviteFriendsPageIntent();
  v18 = v24;
  v24[3] = v17;
  v18[4] = sub_24EE4A2A0(&qword_27F21D350, type metadata accessor for InviteFriendsPageIntent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  return sub_24EE4A97C(v21, boxed_opaque_existential_1, type metadata accessor for InviteFriendsPageIntent);
}

uint64_t sub_24EE429F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a1;
  v76 = a3;
  v77 = sub_24F9248F8();
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v74 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138);
  MEMORY[0x28223BE20](v7 - 8);
  v63 = (&v62 - v8);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v10 = &v62 - v9;
  v11 = sub_24F92A498();
  v64 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231670);
  MEMORY[0x28223BE20](v68);
  v15 = &v62 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231678);
  v72 = *(v16 - 8);
  v73 = v16;
  MEMORY[0x28223BE20](v16);
  v71 = &v62 - v17;
  v18 = type metadata accessor for InviteFriendsPageView(0);
  v19 = (a2 + *(v18 + 24));
  v20 = *v19;
  v21 = v19[1];
  v82 = *v19;
  v83 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314F0);
  sub_24F926F38();
  v67 = v81[0];
  v22 = *(a2 + *(v18 + 20));
  sub_24F928F28();
  if (qword_27F211860 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  v23 = v66;
  sub_24F92A408();
  (*(v65 + 8))(v10, v23);
  (*(v64 + 8))(v13, v11);
  v24 = v82;
  v25 = v83;
  v82 = v20;
  v83 = v21;

  sub_24F926F38();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v26;
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v28;
  sub_24F9271A8();

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231198);
  MEMORY[0x25304CAF0](v81, v30);
  v31 = v81[0];
  v32 = v81[1];

  v33 = v70;
  sub_24EE4A97C(v70, v15, type metadata accessor for Page);
  v34 = type metadata accessor for InviteFriendsPageView.PageContent(0);
  *&v15[v34[5]] = v67;
  v35 = &v15[v34[6]];
  *v35 = v24;
  *(v35 + 1) = v25;
  *&v15[v34[7]] = v22;
  v36 = &v15[v34[8]];
  *v36 = v31;
  *(v36 + 1) = v32;
  v37 = &v15[v34[9]];
  v78 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E480);
  sub_24F926F28();
  v38 = v80;
  *v37 = v79;
  *(v37 + 1) = v38;
  v39 = &v15[v34[10]];
  *v39 = swift_getKeyPath();
  v39[40] = 0;
  v40 = v34[11];
  *&v15[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  swift_storeEnumTagMultiPayload();
  v41 = v68;
  v42 = *(v68 + 52);
  v43 = sub_24F92A708();
  (*(*(v43 - 8) + 16))(&v15[v42], v33, v43);
  v44 = type metadata accessor for Page(0);
  v45 = v69;
  sub_24E60169C(v33 + *(v44 + 80), v69, qword_27F220E38);
  v46 = type metadata accessor for HeaderPresentation(0);
  if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
  {
    v47 = qword_27F220E38;
    v48 = v45;
  }

  else
  {
    v49 = v63;
    sub_24E60169C(v45, v63, &qword_27F223138);
    sub_24EE4E98C(v45, type metadata accessor for HeaderPresentation);
    v50 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
    if ((*(*(v50 - 8) + 48))(v49, 1, v50) != 1)
    {
      v52 = *v49;
      v51 = v49[1];

      sub_24EE4E98C(v49, type metadata accessor for HeaderPresentation.HeaderLabel);
      goto LABEL_9;
    }

    v47 = &qword_27F223138;
    v48 = v49;
  }

  sub_24E601704(v48, v47);
  v51 = 0xE400000000000000;
  v52 = 1701736302;
LABEL_9:
  v82 = v52;
  v83 = v51;
  v53 = sub_24E602068(&qword_27F231680, &qword_27F231670);
  v54 = sub_24E600AEC();
  v55 = v71;
  v56 = MEMORY[0x277D837D0];
  sub_24F926458();

  sub_24E601704(v15, &qword_27F231670);
  v58 = v74;
  v57 = v75;
  v59 = v77;
  (*(v75 + 104))(v74, *MEMORY[0x277CDDDB0], v77);
  v82 = v41;
  v83 = v56;
  v84 = v53;
  v85 = v54;
  swift_getOpaqueTypeConformance2();
  v60 = v73;
  sub_24F926868();
  (*(v57 + 8))(v58, v59);
  return (*(v72 + 8))(v55, v60);
}

uint64_t sub_24EE43350(uint64_t a1)
{
  v4.i64[1] = *(a1 + *(type metadata accessor for InviteFriendsPageView(0) + 24) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314F0);
  sub_24F926F38();
  swift_getKeyPath();
  v4.i64[0] = v3;
  sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter);
  sub_24F91FD88();

  if (!*(v3 + 48))
  {
    v1 = *(v3 + 24);
    v4.i64[0] = *(v3 + 16);
    v4.i64[1] = v1;
    v5 = 0;
    v6 = 0;
    v7 = 1;

    sub_24EE48498(&v4);
  }
}

uint64_t sub_24EE4345C()
{
  swift_getKeyPath();
  sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter);
  sub_24F91FD88();

  return *(v0 + 49);
}

uint64_t sub_24EE434FC()
{
  type metadata accessor for InviteFriendsPageView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670);
  return sub_24F923338();
}

uint64_t sub_24EE43578@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v9 = v1;
  sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter);
  sub_24F91FD88();

  v3 = *(v1 + 16);
  v4 = *(v9 + 24);
  v5 = *(v9 + 32);
  v6 = *(v9 + 40);
  v7 = *(v9 + 48);
  result = sub_24EE4E888(v3, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_24EE43650@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2315B8);
  v24 = *(v5 - 8);
  v6 = v24;
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for InviteFriendsPageView.PageContent(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E615E00(a1, v26);
  sub_24EE4A97C(a2, v15, type metadata accessor for InviteFriendsPageView.PageContent);
  v16 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v17 = swift_allocObject();
  sub_24E612C80(v26, v17 + 16);
  sub_24EE4C4A4(v15, v17 + v16, type metadata accessor for InviteFriendsPageView.PageContent);
  v18 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = MEMORY[0x28223BE20](v18);
  (*(v21 + 16))(&v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  sub_24F928D38();
  (*(v6 + 16))(v8, v11, v5);
  sub_24F921C98();
  sub_24F921C78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2315C0);
  sub_24E602068(&qword_27F2315C8, &qword_27F2315B8);
  sub_24EE4A2A0(&qword_27F2315D0, MEMORY[0x277D7ECA0]);
  sub_24EE4A2A0(&qword_27F2315D8, MEMORY[0x277D7EC90]);
  sub_24EE4E118();
  sub_24E602068(&qword_27F21EDE0, &qword_27F213768);
  sub_24F9216F8();
  return (*(v24 + 8))(v11, v5);
}

uint64_t sub_24EE43ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2315F0);
  v54 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v48 - v8;
  v10 = type metadata accessor for InviteFriendsPageView.ShelfListView(0);
  MEMORY[0x28223BE20](v10);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231618);
  v53 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v48 - v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231620);
  MEMORY[0x28223BE20](v55);
  v17 = v48 - v16;
  if (!*(*(a1 + *(type metadata accessor for GSKShelf() + 60)) + 16))
  {
    sub_24E615E00(a2, &v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213818);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231630);
    if (swift_dynamicCast())
    {
      sub_24E612C80(&v57, v67);
      sub_24E615E00(v67, &v61);
      v18 = (a3 + *(type metadata accessor for InviteFriendsPageView.PageContent(0) + 32));
      v19 = v18[1];
      v65 = *v18;
      v66 = v19;
      sub_24EE4E454(&v61, v17);
      swift_storeEnumTagMultiPayload();
      sub_24EE4E2C8();

      v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2315F8);
      v21 = sub_24EE4A2A0(&qword_27F231600, type metadata accessor for InviteFriendsPageView.ShelfListView);
      *&v57 = v10;
      *(&v57 + 1) = v21;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v23 = sub_24E8F20E4();
      v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231608);
      v25 = sub_24EE4E33C();
      *&v57 = v7;
      *(&v57 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
      *&v58 = v24;
      *(&v58 + 1) = OpaqueTypeConformance2;
      v59 = v23;
      v60 = v25;
      v26 = swift_getOpaqueTypeConformance2();
      *&v57 = v7;
      *(&v57 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
      *&v58 = v20;
      *(&v58 + 1) = OpaqueTypeConformance2;
      v59 = v23;
      v60 = v26;
      swift_getOpaqueTypeConformance2();
      sub_24F924E28();
      sub_24EE4E48C(&v61);
      return __swift_destroy_boxed_opaque_existential_1(v67);
    }

    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    sub_24E601704(&v57, &qword_27F231638);
  }

  sub_24EE4A97C(a1, v12, type metadata accessor for GSKShelf);
  v28 = (a3 + *(type metadata accessor for InviteFriendsPageView.PageContent(0) + 36));
  v30 = *v28;
  v29 = v28[1];
  *&v57 = v30;
  *(&v57 + 1) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231628);
  sub_24F926F58();
  v31 = v62;
  v32 = &v12[*(v10 + 20)];
  *v32 = v61;
  *(v32 + 8) = v31;
  v33 = sub_24EE4A2A0(&qword_27F231600, type metadata accessor for InviteFriendsPageView.ShelfListView);
  v50 = v15;
  v52 = v13;
  v34 = v33;
  v51 = v9;
  sub_24F9262E8();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2315F8);
  v61 = v10;
  *&v62 = v34;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = sub_24E8F20E4();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231608);
  v38 = sub_24EE4E33C();
  v61 = v7;
  *&v62 = &type metadata for IsDebugFocusOverlayEnabled;
  *(&v62 + 1) = v37;
  v63 = v35;
  v48[0] = v35;
  v64 = v36;
  v65 = v38;
  v48[1] = MEMORY[0x277CE0E68];
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v53;
  v41 = v12;
  v42 = v54;
  v43 = v39;
  v44 = v50;
  v45 = v49;
  v46 = v51;
  sub_24F926B08();
  (*(v42 + 8))(v46, v7);
  sub_24EE4E98C(v41, type metadata accessor for InviteFriendsPageView.ShelfListView);
  v47 = v52;
  (*(v40 + 16))(v17, v44, v52);
  swift_storeEnumTagMultiPayload();
  sub_24EE4E2C8();
  v61 = v7;
  *&v62 = &type metadata for IsDebugFocusOverlayEnabled;
  *(&v62 + 1) = v45;
  v63 = v48[0];
  v64 = v36;
  v65 = v43;
  swift_getOpaqueTypeConformance2();
  sub_24F924E28();
  return (*(v40 + 8))(v44, v47);
}

uint64_t sub_24EE4419C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED68);
  MEMORY[0x28223BE20](v4);
  v9[1] = *(v1 + *(type metadata accessor for Page(0) + 48));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED70);
  sub_24E602068(&qword_27F21ED78, &qword_27F21ED70);
  sub_24F921BA8();
  swift_getKeyPath();
  sub_24EE4A97C(v1, v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InviteFriendsPageView.PageContent);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_24EE4C4A4(v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for InviteFriendsPageView.PageContent);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_24EE4C50C;
  *(v7 + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2315A8);
  sub_24E602068(&qword_27F21ED88, &qword_27F21ED68);
  sub_24E602068(&qword_27F2315B0, &qword_27F2315A8);
  return sub_24F927228();
}

uint64_t sub_24EE44478@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2316C0);
  v29 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v3 = &v25 - v2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2316C8);
  MEMORY[0x28223BE20](v26);
  v5 = &v25 - v4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2316D0);
  v6 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2316D8);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v33 = v1;
  v32 = v1;
  v31 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2316E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2316E8);
  sub_24EE4EDDC();
  sub_24EE4EE94();
  sub_24F925138();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v13 = sub_24F9257B8();
  *(inited + 32) = v13;
  v14 = sub_24F9257D8();
  *(inited + 33) = v14;
  sub_24F9257C8();
  sub_24F9257C8();
  if (sub_24F9257C8() != v13)
  {
    sub_24F9257C8();
  }

  sub_24F9257C8();
  if (sub_24F9257C8() != v14)
  {
    sub_24F9257C8();
  }

  sub_24F927618();
  sub_24EE4EFFC();
  sub_24F9266F8();
  sub_24E601704(v5, &qword_27F2316C8);
  v15 = sub_24F924068();
  v16 = sub_24F9257F8();
  (*(v6 + 32))(v11, v8, v27);
  v17 = &v11[*(v9 + 36)];
  *v17 = v15;
  v17[8] = v16;
  v18 = sub_24EE4F0E0();
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231758);
  v34 = v9;
  v35 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_24E8F20E4();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231760);
  v22 = sub_24EE4F1A8();
  v23 = v30;
  v34 = v30;
  v35 = &type metadata for IsDebugFocusOverlayEnabled;
  v36 = v21;
  v37 = OpaqueTypeConformance2;
  v38 = v20;
  v39 = v22;
  swift_getOpaqueTypeConformance2();
  sub_24F926B08();
  (*(v29 + 8))(v3, v23);
  return sub_24E601704(v11, &qword_27F2316D8);
}

uint64_t sub_24EE449A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2317B8);
  MEMORY[0x28223BE20](v25);
  v9 = &v24 - v8;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 8))(v10, v11);
  if (v12)
  {
    v24 = a2;
    v13 = v4;
    v15 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    v26 = (*(v14 + 16))(v15, v14);
    v27 = v16;
    sub_24E600AEC();
    sub_24F926EB8();
    (*(v5 + 16))(v9, v7, v13);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F212910, &qword_27F211B58);
    sub_24F924E28();
    return (*(v5 + 8))(v7, v13);
  }

  else
  {
    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    v26 = (*(v19 + 16))(v18, v19);
    v27 = v20;
    sub_24E600AEC();
    *v9 = sub_24F925E18();
    *(v9 + 1) = v21;
    v9[16] = v22 & 1;
    *(v9 + 3) = v23;
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F212910, &qword_27F211B58);
    return sub_24F924E28();
  }
}

uint64_t sub_24EE44CBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 24))(a1[5], a1[6], v4, v5);
  sub_24E600AEC();
  result = sub_24F925E18();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_24EE44D54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = sub_24F924C38();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v59 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231770);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v10 = &v59 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231778);
  MEMORY[0x28223BE20](v63);
  v12 = &v59 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231780);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231708);
  v69 = *(v14 - 8);
  v70 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(v18 + 40))(&v73, v17, v18);
  if (!*(&v74 + 1))
  {
    sub_24E601704(&v73, qword_27F21B590);
    return (*(v69 + 56))(a2, 1, 1, v70);
  }

  sub_24E612C80(&v73, v78);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = (*(v20 + 32))(v19, v20);
  if (!v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v78);
    return (*(v69 + 56))(a2, 1, 1, v70);
  }

  v23 = v21;
  v24 = v22;
  v60 = a2;
  v25 = sub_24F9232F8();
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  sub_24E615E00(v78, v77);
  sub_24EE4E454(a1, &v73);
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = v24;
  v27 = v74;
  *(v26 + 32) = v73;
  *(v26 + 48) = v27;
  *(v26 + 64) = v75;
  *(v26 + 80) = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231788);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231790);
  v29 = sub_24E602068(&qword_27F231798, &qword_27F231790);
  v71 = v28;
  v72 = v29;
  swift_getOpaqueTypeConformance2();
  sub_24F921788();
  sub_24F924C28();
  sub_24E602068(&qword_27F2317A0, &qword_27F231770);
  sub_24EE4A2A0(&qword_27F21A8C0, MEMORY[0x277CDDEE0]);
  v30 = v62;
  v31 = v65;
  sub_24F926178();
  (*(v64 + 8))(v5, v31);
  (*(v61 + 8))(v10, v30);
  v32 = &v12[*(v63 + 36)];
  v33 = *MEMORY[0x277CE0118];
  v34 = sub_24F924B38();
  v35 = *(*(v34 - 8) + 104);
  v35(v32, v33, v34);
  *&v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2552C0) + 36)] = 256;
  sub_24EE4F314();
  v36 = v66;
  sub_24F9268B8();
  sub_24E601704(v12, &qword_27F231778);
  *(&v74 + 1) = sub_24F9271D8();
  *&v75 = sub_24EE4A2A0(&qword_27F214E38, MEMORY[0x277CE1260]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v73);
  v35(boxed_opaque_existential_1, v33, v34);
  sub_24E60169C(&v73, v16, &qword_27F2317B0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231728);
  v39 = v67;
  v40 = v68;
  (*(v67 + 16))(&v16[v38[9]], v36, v68);
  v41 = &v16[v38[10]];
  *v41 = sub_24F923398() & 1;
  *(v41 + 1) = v42;
  v41[16] = v43 & 1;
  v44 = &v16[v38[11]];
  *v44 = swift_getKeyPath();
  v44[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v45 = qword_27F24E488;
  v46 = sub_24F923398();
  v48 = v47;
  v50 = v49;
  v51 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231718) + 36)];
  *v51 = v45;
  v51[8] = v46 & 1;
  *(v51 + 2) = v48;
  v51[24] = v50 & 1;
  LOBYTE(v45) = sub_24F923398();
  v53 = v52;
  LOBYTE(v48) = v54;
  sub_24E601704(&v73, &qword_27F2317B0);
  (*(v39 + 8))(v36, v40);
  __swift_destroy_boxed_opaque_existential_1(v78);
  v55 = v70;
  v56 = &v16[*(v70 + 36)];
  *v56 = v45 & 1;
  *(v56 + 1) = v53;
  v56[16] = v48 & 1;
  v57 = v60;
  sub_24EE4F494(v16, v60);
  return (*(v69 + 56))(v57, 0, 1, v55);
}

uint64_t sub_24EE45620@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v13 = a2;
  v14 = sub_24F9248C8();
  v3 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F9249A8();
  sub_24EE457D8(a1, &v15);
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v11 = v18;
  v10 = v19;
  v24 = 1;
  v23 = v17;
  sub_24F9248B8();
  v15 = v6;
  v16 = 0;
  v17 = 1;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v11;
  v22 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231790);
  sub_24E602068(&qword_27F231798, &qword_27F231790);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v14);
  sub_24E600B40(v7, v8, v9);
}

uint64_t sub_24EE457D8@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  sub_24E600AEC();

  v4 = sub_24F925E18();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 48))(v11, v12);
  if (v13)
  {
    v14 = sub_24F926E48();
  }

  else
  {
    v14 = 0;
  }

  v15 = v8 & 1;
  sub_24E5FD138(v4, v6, v15);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v15;
  *(a2 + 24) = v10;
  *(a2 + 32) = v14;

  sub_24E600B40(v4, v6, v15);
}

uint64_t sub_24EE458EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v57 = sub_24F925128();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F924118();
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  MEMORY[0x28223BE20](v4);
  v50 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_24F923C68();
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2317C0);
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2317C8);
  v46 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2317D0);
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2317D8);
  v18 = *(v17 - 8);
  v47 = v17;
  v48 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - v19;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2317E0);
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v40 = &v40 - v21;
  v58 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2317E8);
  sub_24E602068(&qword_27F2317F0, &qword_27F2317E8);
  sub_24F925A98();
  sub_24F923C58();
  v22 = sub_24E602068(&qword_27F2317F8, &qword_27F2317C0);
  v23 = MEMORY[0x277CDD980];
  v24 = v42;
  sub_24F926B98();
  (*(v44 + 8))(v8, v24);
  (*(v41 + 8))(v11, v9);
  v25 = v50;
  sub_24F924108();
  v59 = v9;
  v60 = v24;
  v61 = v22;
  v62 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = MEMORY[0x277CDDAC8];
  v28 = v52;
  sub_24F926B98();
  (*(v53 + 8))(v25, v28);
  (*(v46 + 8))(v14, v12);
  v59 = v12;
  v60 = v28;
  v61 = OpaqueTypeConformance2;
  v62 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v43;
  sub_24F926688();
  (*(v45 + 8))(v16, v30);
  v59 = v30;
  v60 = v29;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v40;
  v33 = v47;
  sub_24F926778();
  v34 = v33;
  (*(v48 + 8))(v20, v33);
  v35 = sub_24F925818();
  v36 = v54;
  sub_24F925118();
  v59 = v34;
  v60 = v31;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v49;
  MEMORY[0x25304BCF0](v35, 0, 0, v36, v49, v37);
  (*(v55 + 8))(v36, v57);
  return (*(v51 + 8))(v32, v38);
}

uint64_t sub_24EE46048@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for InviteFriendsPageView.ShelfListView(0);
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231800);
  MEMORY[0x28223BE20](v5);
  v7 = v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231808);
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v39 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v44 = v35 - v11;
  v12 = type metadata accessor for InviteFriendsPageView.ShelfHeaderView(0);
  MEMORY[0x28223BE20](v12);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231810);
  v43 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v35 - v17;
  sub_24EE4A97C(a1, v14, type metadata accessor for GSKShelf);
  sub_24F923838();
  sub_24EE4A2A0(&qword_27F231818, type metadata accessor for InviteFriendsPageView.ShelfHeaderView);
  v35[0] = v18;
  sub_24F9264B8();
  sub_24EE4E98C(v14, type metadata accessor for InviteFriendsPageView.ShelfHeaderView);
  v45 = *(a1 + *(type metadata accessor for GSKShelf() + 60));
  v35[1] = swift_getKeyPath();
  sub_24EE4A97C(a1, v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InviteFriendsPageView.ShelfListView);
  v19 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v20 = swift_allocObject();
  sub_24EE4C4A4(v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for InviteFriendsPageView.ShelfListView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231820);
  sub_24E602068(&qword_27F22FB78, &qword_27F22FB80);
  sub_24E602068(&qword_27F231828, &qword_27F231820);
  sub_24F927228();
  *&v7[*(v5 + 36)] = sub_24F927158();
  sub_24F923838();
  sub_24EE50A6C();
  v21 = v44;
  sub_24F9264B8();
  sub_24E601704(v7, &qword_27F231800);
  v22 = *(v43 + 16);
  v23 = v37;
  v24 = v18;
  v25 = v38;
  v22(v37, v24, v38);
  v26 = v39;
  v27 = v40;
  v28 = *(v40 + 16);
  v29 = v41;
  v28(v39, v21, v41);
  v30 = v42;
  v22(v42, v23, v25);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231858);
  v28(&v30[*(v31 + 48)], v26, v29);
  v32 = *(v27 + 8);
  v32(v44, v29);
  v33 = *(v43 + 8);
  v33(v35[0], v25);
  v32(v26, v29);
  return v33(v23, v25);
}