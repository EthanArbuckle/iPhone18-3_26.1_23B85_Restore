uint64_t sub_24B9BFE30(uint64_t a1)
{
  LocationTriggerView = type metadata accessor for CreateLocationTriggerView(0);
  v3 = *(LocationTriggerView - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](LocationTriggerView - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v17 = v13;
  sub_24B9C9478(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CreateLocationTriggerView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_24B9CA18C(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for CreateLocationTriggerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0644A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067530);
  sub_24B8F384C(&qword_27F067538, &qword_27F0644A0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067518);
  v8 = sub_24BAA8DEC();
  v9 = sub_24B8F384C(&qword_27F067520, &qword_27F067518);
  v10 = sub_24B9BE0E8(&qword_27F0667F8, MEMORY[0x277CDE0B8]);
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  swift_getOpaqueTypeConformance2();
  sub_24B9CA618(&qword_27F067540, &qword_27F064518);
  return sub_24BAA9C0C();
}

uint64_t sub_24B9C0138@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v5 = sub_24BAA8DEC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationTriggerView = type metadata accessor for CreateLocationTriggerView(0);
  v10 = *(LocationTriggerView - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](LocationTriggerView - 8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067518);
  MEMORY[0x28223BE20](v13);
  v15 = (v21 - v14);
  v16 = *a1;
  sub_24B9C9478(a2, v12, type metadata accessor for CreateLocationTriggerView);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_24B9CA18C(v12, v19 + v17, type metadata accessor for CreateLocationTriggerView);
  *(v19 + v18) = v16;
  *(v15 + *(v13 + 40)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067548);
  swift_storeEnumTagMultiPayload();
  *v15 = sub_24B9CA65C;
  v15[1] = v19;
  sub_24B9C04E4(v16, v15 + *(v13 + 36));
  sub_24BAA8DDC();
  sub_24B8F384C(&qword_27F067520, &qword_27F067518);
  sub_24B9BE0E8(&qword_27F0667F8, MEMORY[0x277CDE0B8]);
  sub_24BAA944C();
  (*(v6 + 8))(v8, v5);
  return sub_24B8F35E4(v15, &qword_27F067518);
}

uint64_t sub_24B9C0458(uint64_t a1, void *a2)
{
  v3 = *(a1 + *(type metadata accessor for CreateLocationTriggerView(0) + 28) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = a2;
  return sub_24BAA81CC();
}

uint64_t sub_24B9C04E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = sub_24BAA8FBC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24BAA978C();
  v8 = [a1 title];
  v9 = sub_24BAAA01C();
  v11 = v10;

  v12 = [a1 subtitle];
  v13 = sub_24BAAA01C();
  v15 = v14;

  *&v18 = 0xD000000000000012;
  *(&v18 + 1) = 0x800000024BAC2D70;
  *&v19 = v7;
  *(&v19 + 1) = v9;
  *v20 = v11;
  *&v20[8] = v13;
  *&v20[16] = v15;
  v20[24] = 0;
  sub_24BAA8F9C();
  sub_24B9CA698();
  sub_24BAA95FC();
  (*(v4 + 8))(v6, v3);
  v21[0] = v18;
  v21[1] = v19;
  v22[0] = *v20;
  *(v22 + 9) = *&v20[9];
  return sub_24B9CA6EC(v21);
}

uint64_t sub_24B9C0694(uint64_t a1)
{
  v2 = sub_24BAA8DCC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064058);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24BAA8DBC();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064078);
  sub_24B90A7A8();
  sub_24BAA833C();
  v7 = sub_24B8F384C(&qword_27F064060, &qword_27F064058);
  MEMORY[0x24C24EEC0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24B9C084C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LocationTriggerView = type metadata accessor for CreateLocationTriggerView(0);
  v5 = *(LocationTriggerView - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](LocationTriggerView);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25[-v9];
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v27 = sub_24BAA7C2C();
  v28 = v11;
  sub_24B9C9478(a1, &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for CreateLocationTriggerView);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_24B9CA18C(&v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12, type metadata accessor for CreateLocationTriggerView);
  sub_24B8F5E3C();
  sub_24BAA9A7C();
  v14 = a1 + *(LocationTriggerView + 36);
  v15 = *v14;
  v16 = *(v14 + 8);
  LOBYTE(v27) = v15;
  v28 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA99FC();
  if (v26 == 1)
  {
    v17 = a1 + *(LocationTriggerView + 40);
    v18 = *v17;
    v19 = *(v17 + 8);
    LOBYTE(v27) = v18;
    v28 = v19;
    sub_24BAA99FC();
    v20 = v26;
  }

  else
  {
    v20 = 1;
  }

  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  (*(v8 + 32))(a2, v10, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064078);
  v24 = (a2 + *(result + 36));
  *v24 = KeyPath;
  v24[1] = sub_24B9027F8;
  v24[2] = v22;
  return result;
}

uint64_t sub_24B9C0B88(uint64_t a1)
{
  LocationTriggerView = type metadata accessor for CreateLocationTriggerView(0);
  v3 = (a1 + LocationTriggerView[9]);
  v4 = *v3;
  v5 = *(v3 + 1);
  LOBYTE(v13[0]) = v4;
  *(&v13[0] + 1) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  result = sub_24BAA99FC();
  if (LOBYTE(v17[0]) == 1)
  {
    v7 = (a1 + LocationTriggerView[10]);
    v8 = *v7;
    v9 = *(v7 + 1);
    LOBYTE(v13[0]) = *v7;
    *(&v13[0] + 1) = v9;
    result = sub_24BAA99FC();
    if ((v17[0] & 1) == 0)
    {
      LOBYTE(v13[0]) = v8;
      *(&v13[0] + 1) = v9;
      LOBYTE(v17[0]) = 1;
      sub_24BAA9A0C();
      v10 = *(a1 + LocationTriggerView[5]);
      v11 = a1 + LocationTriggerView[8];
      v12 = *(v11 + 48);
      v14 = *(v11 + 32);
      v15 = v12;
      v16 = *(v11 + 64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0673F8);
      sub_24BAA99FC();
      v13[0] = v17[0];
      v13[1] = v17[1];
      v14 = v17[2];
      v15 = v17[3];
      v10(v13);
      return sub_24B9142B0(v17);
    }
  }

  return result;
}

uint64_t sub_24B9C0CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = sub_24BAA8DEC();
  v6 = *(v5 - 8);
  v29 = v5;
  v30 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocationSuggestions.PointOfInterest(0);
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationTriggerView = type metadata accessor for CreateLocationTriggerView(0);
  v13 = *(LocationTriggerView - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](LocationTriggerView - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067628);
  v16 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v18 = &v26 - v17;
  sub_24B9C9478(a2, v15, type metadata accessor for CreateLocationTriggerView);
  sub_24B9C9478(a1, v11, type metadata accessor for LocationSuggestions.PointOfInterest);
  v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v20 = (v14 + *(v27 + 80) + v19) & ~*(v27 + 80);
  v21 = swift_allocObject();
  sub_24B9CA18C(v15, v21 + v19, type metadata accessor for CreateLocationTriggerView);
  sub_24B9CA18C(v11, v21 + v20, type metadata accessor for LocationSuggestions.PointOfInterest);
  v32 = a1;
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067640);
  v22 = sub_24B9CA698();
  v34 = &type metadata for CreateLocationTriggerView.Cell;
  v35 = v22;
  swift_getOpaqueTypeConformance2();
  sub_24BAA9A5C();
  sub_24BAA8DDC();
  sub_24B8F384C(&qword_27F067630, &qword_27F067628);
  sub_24B9BE0E8(&qword_27F0667F8, MEMORY[0x277CDE0B8]);
  v23 = v28;
  v24 = v29;
  sub_24BAA944C();
  (*(v30 + 8))(v8, v24);
  return (*(v16 + 8))(v18, v23);
}

uint64_t sub_24B9C110C(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v3 = sub_24BAA7E4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v51 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F067F90);
  MEMORY[0x28223BE20](v66);
  v7 = &v49[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v53 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v57 = &v49[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v58 = &v49[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v49[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v49[-v18];
  LocationSelection = type metadata accessor for CreateLocationSelection();
  v21 = MEMORY[0x28223BE20](LocationSelection);
  v52 = &v49[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v64 = &v49[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v56 = &v49[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v49[-v28];
  MEMORY[0x28223BE20](v27);
  v31 = &v49[-v30];
  v32 = [objc_opt_self() sharedApplication];
  [v32 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];

  v33 = *(type metadata accessor for CreateLocationTriggerView(0) + 44);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067498);
  v65 = a1;
  v61 = v34;
  v62 = v33;
  sub_24BAA99FC();
  sub_24B9CA18C(v31, v29, type metadata accessor for CreateLocationSelection);
  v63 = LocationSelection;
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24B9C9520(v29, type metadata accessor for CreateLocationSelection);
    v35 = 1;
  }

  else
  {
    (*(v4 + 32))(v19, v29, v3);
    v35 = 0;
  }

  v36 = *(v4 + 56);
  v36(v19, v35, 1, v3);
  v37 = type metadata accessor for LocationSuggestions.PointOfInterest(0);
  v38 = v4;
  v39 = *(v4 + 16);
  v54 = *(v37 + 32);
  v55 = v39;
  v39(v17, v67 + v54, v3);
  v60 = v36;
  v36(v17, 0, 1, v3);
  v40 = *(v66 + 48);
  sub_24B8F3208(v19, v7, &qword_27F0669D0);
  sub_24B8F3208(v17, &v7[v40], &qword_27F0669D0);
  v66 = v38;
  v41 = *(v38 + 48);
  v42 = v41(v7, 1, v3);
  v59 = v41;
  if (v42 != 1)
  {
    v43 = v58;
    sub_24B8F3208(v7, v58, &qword_27F0669D0);
    if (v41(&v7[v40], 1, v3) != 1)
    {
      v46 = v51;
      (*(v66 + 32))(v51, &v7[v40], v3);
      sub_24B9BE0E8(&qword_27F067648, MEMORY[0x277CC95F0]);
      v50 = sub_24BAA9F5C();
      v47 = *(v66 + 8);
      v47(v46, v3);
      sub_24B8F35E4(v17, &qword_27F0669D0);
      sub_24B8F35E4(v19, &qword_27F0669D0);
      v47(v58, v3);
      sub_24B8F35E4(v7, &qword_27F0669D0);
      if (v50)
      {
        goto LABEL_12;
      }

LABEL_10:
      v44 = v57;
      v55(v57, v67 + v54, v3);
      v60(v44, 0, 1, v3);
      v45 = v56;
      goto LABEL_13;
    }

    sub_24B8F35E4(v17, &qword_27F0669D0);
    sub_24B8F35E4(v19, &qword_27F0669D0);
    (*(v66 + 8))(v43, v3);
LABEL_9:
    sub_24B8F35E4(v7, &unk_27F067F90);
    goto LABEL_10;
  }

  sub_24B8F35E4(v17, &qword_27F0669D0);
  sub_24B8F35E4(v19, &qword_27F0669D0);
  if (v41(&v7[v40], 1, v3) != 1)
  {
    goto LABEL_9;
  }

  sub_24B8F35E4(v7, &qword_27F0669D0);
LABEL_12:
  v44 = v53;
  v60(v53, 1, 1, v3);
  v45 = v52;
LABEL_13:
  sub_24BAA99FC();
  sub_24B9C9520(v45, type metadata accessor for CreateLocationSelection);
  if (v59(v44, 1, v3) == 1)
  {
    sub_24B8F35E4(v44, &qword_27F0669D0);
  }

  else
  {
    (*(v66 + 32))(v45, v44, v3);
  }

  swift_storeEnumTagMultiPayload();
  sub_24B9C9478(v45, v64, type metadata accessor for CreateLocationSelection);
  sub_24BAA9A0C();
  sub_24B9BE14C();
  return sub_24B9C9520(v45, type metadata accessor for CreateLocationSelection);
}

uint64_t sub_24B9C193C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v61 = a3;
  v4 = sub_24BAA8FBC();
  v60 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v59 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24BAA7E4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v47 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F067F90);
  MEMORY[0x28223BE20](v50);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v48 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  LocationSelection = type metadata accessor for CreateLocationSelection();
  v20 = MEMORY[0x28223BE20](LocationSelection);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v46 - v23;
  v25 = *(a1 + 32);
  v62 = v4;
  v55 = v7;
  v53 = v18;
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      *(&v58 + 1) = 0x800000024BAC2D90;
      v57 = sub_24BAA979C();
      v28 = 0xD000000000000015;
    }

    else
    {
      if (v25 == 3)
      {
        *(&v58 + 1) = 0xEB000000006B7365;
        v26 = 0x64746E6564757473;
        goto LABEL_7;
      }

      *(&v58 + 1) = 0x800000024BAC2D70;
      v57 = sub_24BAA978C();
      v28 = 0xD000000000000012;
    }

    *&v58 = v28;
    goto LABEL_13;
  }

  if (v25)
  {
    *&v58 = 0xD000000000000011;
    *(&v58 + 1) = 0x800000024BAC2DB0;
    v27 = sub_24BAA984C();
    goto LABEL_12;
  }

  *(&v58 + 1) = 0xED00006C6C69662ELL;
  v26 = 0x6E6F697461636F6CLL;
LABEL_7:
  *&v58 = v26;
  v27 = sub_24BAA979C();
LABEL_12:
  v57 = v27;
LABEL_13:
  v29 = a1[1];
  v52 = *a1;
  v30 = a1[3];
  v51 = a1[2];
  type metadata accessor for CreateLocationTriggerView(0);
  v56 = v29;

  v54 = v30;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067498);
  sub_24BAA99FC();
  sub_24B9CA18C(v24, v22, type metadata accessor for CreateLocationSelection);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24B9C9520(v22, type metadata accessor for CreateLocationSelection);
    v31 = 1;
    v32 = v55;
    v33 = v53;
  }

  else
  {
    v32 = v55;
    v33 = v53;
    (*(v55 + 32))(v53, v22, v6);
    v31 = 0;
  }

  v34 = *(v32 + 56);
  v34(v33, v31, 1, v6);
  v35 = type metadata accessor for LocationSuggestions.PointOfInterest(0);
  (*(v32 + 16))(v16, a1 + *(v35 + 32), v6);
  v34(v16, 0, 1, v6);
  v36 = *(v50 + 48);
  sub_24B8F3208(v33, v10, &qword_27F0669D0);
  sub_24B8F3208(v16, &v10[v36], &qword_27F0669D0);
  v37 = *(v32 + 48);
  if (v37(v10, 1, v6) != 1)
  {
    v39 = v48;
    sub_24B8F3208(v10, v48, &qword_27F0669D0);
    if (v37(&v10[v36], 1, v6) != 1)
    {
      v40 = &v10[v36];
      v41 = v47;
      (*(v32 + 32))(v47, v40, v6);
      sub_24B9BE0E8(&qword_27F067648, MEMORY[0x277CC95F0]);
      v42 = v39;
      v38 = sub_24BAA9F5C();
      v43 = *(v32 + 8);
      v43(v41, v6);
      sub_24B8F35E4(v16, &qword_27F0669D0);
      sub_24B8F35E4(v33, &qword_27F0669D0);
      v43(v42, v6);
      sub_24B8F35E4(v10, &qword_27F0669D0);
      goto LABEL_23;
    }

    sub_24B8F35E4(v16, &qword_27F0669D0);
    sub_24B8F35E4(v33, &qword_27F0669D0);
    (*(v32 + 8))(v39, v6);
    goto LABEL_21;
  }

  sub_24B8F35E4(v16, &qword_27F0669D0);
  sub_24B8F35E4(v33, &qword_27F0669D0);
  if (v37(&v10[v36], 1, v6) != 1)
  {
LABEL_21:
    sub_24B8F35E4(v10, &unk_27F067F90);
    v38 = 0;
    goto LABEL_23;
  }

  sub_24B8F35E4(v10, &qword_27F0669D0);
  v38 = 1;
LABEL_23:
  v63 = v58;
  *&v64 = v57;
  *(&v64 + 1) = v52;
  *v65 = v56;
  *&v65[8] = v51;
  *&v65[16] = v54;
  v65[24] = v38 & 1;
  v44 = v59;
  sub_24BAA8F9C();
  sub_24B9CA698();
  sub_24BAA95FC();
  (*(v60 + 8))(v44, v62);
  v66[0] = v63;
  v66[1] = v64;
  *v67 = *v65;
  *&v67[9] = *&v65[9];
  return sub_24B9CA6EC(v66);
}

uint64_t sub_24B9C21A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067658);
  MEMORY[0x28223BE20](v18);
  v4 = v14 - v3;
  LocationTriggerView = type metadata accessor for CreateLocationTriggerView(0);
  v17 = *(LocationTriggerView - 8);
  v6 = *(v17 + 64);
  MEMORY[0x28223BE20](LocationTriggerView);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067660);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  if (v22 == 2)
  {
    v15 = v21;
    v16 = v20;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v14[1] = swift_getKeyPath();
    sub_24B9C9478(a1, v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CreateLocationTriggerView);
    v11 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v12 = swift_allocObject();
    sub_24B9CA18C(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for CreateLocationTriggerView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067678);
    sub_24B8F384C(&qword_27F067690, &qword_27F064490);
    sub_24B9CA618(qword_27F067698, &qword_27F0644E8);
    sub_24B9CAEF8();
    sub_24BAA9BFC();
    (*(v8 + 16))(v4, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_24B9CAE74();
    sub_24BAA8D0C();
    sub_24B913EEC(v16, v15, 2u);
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_24B913EEC(v20, v21, v22);
    swift_storeEnumTagMultiPayload();
    sub_24B9CAE74();
    return sub_24BAA8D0C();
  }
}

id sub_24B9C25F4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a2;
  v89 = sub_24BAA8DEC();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_24BAA8FBC();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationSelection = type metadata accessor for CreateLocationSelection();
  v7 = MEMORY[0x28223BE20](LocationSelection);
  v9 = (&v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v77 = &v69 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067640);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v69 - v11;
  LocationTriggerView = type metadata accessor for CreateLocationTriggerView(0);
  v13 = *(LocationTriggerView - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](LocationTriggerView);
  v86 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v69 - v16;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067518);
  MEMORY[0x28223BE20](v90);
  v19 = (&v69 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067688);
  v93 = *(v20 - 8);
  v94 = v20;
  MEMORY[0x28223BE20](v20);
  v83 = &v69 - v21;
  v91 = *a1;
  v22 = [v91 placemark];
  v23 = [v22 name];
  if (v23)
  {
    v24 = v23;
    v75 = sub_24BAAA01C();
    v26 = v25;

    v27 = [v22 postalAddress];
    if (v27)
    {
      v74 = a3;
      sub_24B9C9478(v92, v17, type metadata accessor for CreateLocationTriggerView);
      v28 = *(v13 + 80);
      v76 = v27;
      v29 = (v28 + 16) & ~v28;
      v73 = v14 + 7;
      v30 = (v14 + 7 + v29) & 0xFFFFFFFFFFFFFFF8;
      v31 = swift_allocObject();
      sub_24B9CA18C(v17, v31 + v29, type metadata accessor for CreateLocationTriggerView);
      *(v31 + v30) = v22;
      *(v19 + *(v90 + 40)) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067548);
      swift_storeEnumTagMultiPayload();
      *v19 = sub_24B9CB518;
      v19[1] = v31;
      v32 = v22;
      v33 = sub_24BAA978C();
      v34 = [objc_opt_self() singleLineStringFromPostalAddress:v76 addCountryName:0];
      if (v34)
      {
        v35 = v34;
        v70 = sub_24BAAA01C();
        v69 = v36;
      }

      else
      {
        v70 = 0;
        v69 = 0xE000000000000000;
      }

      v40 = v26;
      v71 = ~v28;
      v41 = v92;
      v42 = (v92 + *(LocationTriggerView + 36));
      v43 = *v42;
      v44 = *(v42 + 1);
      LOBYTE(v98[0]) = v43;
      *(&v98[0] + 1) = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
      sub_24BAA99FC();
      v45 = v74;
      v72 = v32;
      if (v95 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067498);
        v46 = v77;
        sub_24BAA99FC();
        sub_24B9CA18C(v46, v9, type metadata accessor for CreateLocationSelection);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v47 = *v9;
          [v32 coordinate];
          v49 = v48;
          [v47 coordinate];
          if (vabdd_f64(v49, v50) < 2.22044605e-16)
          {
            [v32 coordinate];
            v52 = v51;
            [v47 coordinate];
            v54 = v53;

            v55 = vabdd_f64(v52, v54) < 2.22044605e-16;
LABEL_18:
            v56 = *(v90 + 36);
            *&v95 = 0xD000000000000012;
            *(&v95 + 1) = 0x800000024BAC2D70;
            *&v96 = v33;
            *(&v96 + 1) = v75;
            *v97 = v40;
            *&v97[8] = v70;
            *&v97[16] = v69;
            v97[24] = v55;
            v57 = v82;
            sub_24BAA8F9C();
            sub_24B9CA698();
            v58 = v79;
            sub_24BAA95FC();
            (*(v84 + 8))(v57, v85);
            v98[0] = v95;
            v98[1] = v96;
            *v99 = *v97;
            *&v99[9] = *&v97[9];
            sub_24B9CA6EC(v98);
            (*(v80 + 32))(v19 + v56, v58, v81);
            v59 = v87;
            sub_24BAA8DDC();
            sub_24B8F384C(&qword_27F067520, &qword_27F067518);
            sub_24B9BE0E8(&qword_27F0667F8, MEMORY[0x277CDE0B8]);
            v60 = v83;
            v61 = v89;
            sub_24BAA944C();

            (*(v88 + 8))(v59, v61);
            sub_24B8F35E4(v19, &qword_27F067518);
            v62 = v86;
            sub_24B9C9478(v41, v86, type metadata accessor for CreateLocationTriggerView);
            v63 = (v28 + 24) & v71;
            v64 = (v73 + v63) & 0xFFFFFFFFFFFFFFF8;
            v65 = swift_allocObject();
            *(v65 + 16) = v91;
            sub_24B9CA18C(v62, v65 + v63, type metadata accessor for CreateLocationTriggerView);
            *(v65 + v64) = v72;
            v66 = v94;
            v67 = (v60 + *(v94 + 36));
            *v67 = sub_24B9CB978;
            v67[1] = v65;
            v67[2] = 0;
            v67[3] = 0;
            sub_24B9CBA08(v60, v45);
            (*(v93 + 56))(v45, 0, 1, v66);
            v68 = v91;

            return v68;
          }
        }

        else
        {
          sub_24B9C9520(v9, type metadata accessor for CreateLocationSelection);
        }
      }

      v55 = 0;
      goto LABEL_18;
    }
  }

  else
  {
  }

  v37 = v94;
  v38 = *(v93 + 56);

  return v38(a3, 1, 1, v37);
}

uint64_t sub_24B9C306C(uint64_t a1, void *a2)
{
  LocationSelection = type metadata accessor for CreateLocationSelection();
  v4 = MEMORY[0x28223BE20](LocationSelection);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = (&v12 - v7);
  v9 = sub_24B9C3220(a2);
  type metadata accessor for CreateLocationTriggerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067498);
  sub_24BAA99FC();
  sub_24B9C9520(v8, type metadata accessor for CreateLocationSelection);
  if (v9)
  {
    swift_storeEnumTagMultiPayload();
    sub_24B9C9478(v8, v6, type metadata accessor for CreateLocationSelection);
  }

  else
  {
    *v8 = a2;
    swift_storeEnumTagMultiPayload();
    sub_24B9C9478(v8, v6, type metadata accessor for CreateLocationSelection);
    v10 = a2;
  }

  sub_24BAA9A0C();
  sub_24B9BE14C();
  return sub_24B9C9520(v8, type metadata accessor for CreateLocationSelection);
}

BOOL sub_24B9C3220(void *a1)
{
  LocationSelection = type metadata accessor for CreateLocationSelection();
  v3 = MEMORY[0x28223BE20](LocationSelection);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  type metadata accessor for CreateLocationTriggerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067498);
  sub_24BAA99FC();
  sub_24B9CA18C(v7, v5, type metadata accessor for CreateLocationSelection);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v5;
    [a1 coordinate];
    v10 = v9;
    [v8 coordinate];
    if (vabdd_f64(v10, v11) < 2.22044605e-16)
    {
      [a1 coordinate];
      v13 = v12;
      [v8 coordinate];
      v15 = v14;

      return vabdd_f64(v13, v15) < 2.22044605e-16;
    }
  }

  else
  {
    sub_24B9C9520(v5, type metadata accessor for CreateLocationSelection);
  }

  return 0;
}

void sub_24B9C33C4(void *a1, uint64_t a2, void *a3)
{
  LocationSelection = type metadata accessor for CreateLocationSelection();
  v6 = MEMORY[0x28223BE20](LocationSelection);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v17 - v9);
  type metadata accessor for CreateLocationTriggerView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v11 = v18;
  if (v18 >> 62)
  {
    if (sub_24BAAA52C())
    {
      goto LABEL_3;
    }

LABEL_9:

    return;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x24C2506E0](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;

  sub_24B8F37E8(0, &qword_27F0644E8);
  v14 = a1;
  v15 = sub_24BAAA3CC();

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067498);
    sub_24BAA99FC();
    sub_24B9C9520(v10, type metadata accessor for CreateLocationSelection);
    *v10 = a3;
    swift_storeEnumTagMultiPayload();
    sub_24B9C9478(v10, v8, type metadata accessor for CreateLocationSelection);
    v16 = a3;
    sub_24BAA9A0C();
    sub_24B9BE14C();
    sub_24B9C9520(v10, type metadata accessor for CreateLocationSelection);
  }
}

uint64_t sub_24B9C3634@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067600) - 8;
  v1 = MEMORY[0x28223BE20](v57);
  v59 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v54 - v4;
  MEMORY[0x28223BE20](v3);
  v58 = &v54 - v6;
  *&v65 = sub_24B9C3A48();
  *(&v65 + 1) = v7;
  sub_24B8F5E3C();
  v8 = sub_24BAA93CC();
  v10 = v9;
  v12 = v11;
  sub_24BAA927C();
  v13 = sub_24BAA939C();
  v15 = v14;
  v17 = v16;
  v54 = v18;

  sub_24B900910(v8, v10, v12 & 1);

  sub_24BAA989C();
  v19 = sub_24BAA933C();
  v55 = v20;
  v56 = v19;
  v22 = v21;
  v24 = v23;

  sub_24B900910(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  sub_24BAA9D1C();
  sub_24BAA86BC();
  *&v61[55] = v68;
  *&v61[71] = v69;
  *&v61[87] = v70;
  *&v61[103] = v71;
  *&v61[7] = v65;
  *&v61[23] = v66;
  v26 = v24 & 1;
  v62 = v24 & 1;
  *&v61[39] = v67;
  v27 = sub_24BAA911C();
  sub_24BAA828C();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v63 = 0;
  LOBYTE(v8) = sub_24BAA90AC();
  sub_24BAA828C();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v64 = 0;
  v44 = &v5[*(v57 + 44)];
  sub_24BAA9CAC();
  LOBYTE(v15) = sub_24BAA90BC();
  v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065490) + 36)] = v15;
  v45 = *&v61[32];
  *(v5 + 89) = *&v61[48];
  *(v5 + 73) = v45;
  v46 = *v61;
  *(v5 + 57) = *&v61[16];
  *(v5 + 41) = v46;
  *(v5 + 19) = *&v61[111];
  *(v5 + 137) = *&v61[96];
  v47 = *&v61[64];
  *(v5 + 121) = *&v61[80];
  v48 = v55;
  *v5 = v56;
  *(v5 + 1) = v22;
  v5[16] = v26;
  *(v5 + 3) = v48;
  *(v5 + 4) = KeyPath;
  v5[40] = 1;
  *(v5 + 105) = v47;
  v5[160] = v27;
  *(v5 + 21) = v29;
  *(v5 + 22) = v31;
  *(v5 + 23) = v33;
  *(v5 + 24) = v35;
  v5[200] = 0;
  v5[208] = v8;
  *(v5 + 27) = v37;
  *(v5 + 28) = v39;
  *(v5 + 29) = v41;
  *(v5 + 30) = v43;
  v5[248] = 0;
  v49 = v58;
  sub_24B90294C(v5, v58, &qword_27F067600);
  v50 = v59;
  sub_24B8F3208(v49, v59, &qword_27F067600);
  v51 = v60;
  sub_24B8F3208(v50, v60, &qword_27F067600);
  v52 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067608) + 48);
  *v52 = 0;
  *(v52 + 8) = 1;
  sub_24B8F35E4(v49, &qword_27F067600);
  return sub_24B8F35E4(v50, &qword_27F067600);
}

uint64_t sub_24B9C3A48()
{
  if (!*(v0 + *(type metadata accessor for CreateLocationTriggerView(0) + 48)))
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9BE0E8(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  sub_24B984444();
  v1 = sub_24B8D7188();

  if (v1)
  {
    v2 = [v1 mode];

    v3 = [v2 semanticType];

    if (v3 > 3)
    {
      if (v3 <= 5)
      {
        if (v3 == 4)
        {
          if (qword_27F063110 == -1)
          {
            return sub_24BAA7C2C();
          }
        }

        else if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

        goto LABEL_34;
      }

      if (v3 != 6)
      {
        if (v3 != 7)
        {
          if (v3 == 8)
          {
            if (qword_27F063110 == -1)
            {
              return sub_24BAA7C2C();
            }

            goto LABEL_34;
          }

          goto LABEL_11;
        }

        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

LABEL_34:
        swift_once();
        return sub_24BAA7C2C();
      }

LABEL_28:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_34;
    }

    if (v3 > 1)
    {
      goto LABEL_28;
    }

    if (!v3)
    {
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_34;
    }

    if (v3 == 1)
    {
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_34;
    }
  }

  else
  {
  }

LABEL_11:
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24BAAD5B0;

  sub_24B984444();
  v5 = sub_24B8D7188();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 mode];

    v8 = [v7 name];
    v9 = sub_24BAAA01C();
    v11 = v10;
  }

  else
  {

    v9 = 0;
    v11 = 0xE000000000000000;
  }

  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_24B8F6A20();
  *(v4 + 32) = v9;
  *(v4 + 40) = v11;
  v12 = sub_24BAA9FEC();

  return v12;
}

uint64_t sub_24B9C4000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0675C0);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0675C8);
  MEMORY[0x28223BE20](v6);
  v8 = v28 - v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0675D0);
  MEMORY[0x28223BE20](v29);
  v10 = v28 - v9;
  v11 = (a1 + *(type metadata accessor for CreateLocationTriggerView(0) + 32));
  v12 = v11[3];
  v40 = v11[2];
  v41 = v12;
  *&v42 = *(v11 + 8);
  v13 = v11[1];
  v38 = *v11;
  v39 = v13;
  v28[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0673F8);
  sub_24BAA9A1C();
  swift_getKeyPath();
  v40 = v43[2];
  v41 = v43[3];
  v42 = v43[4];
  v38 = v43[0];
  v39 = v43[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067458);
  sub_24BAA9B7C();

  sub_24B8F35E4(v43, &qword_27F067458);
  v33 = v44;
  *&v34 = v45;
  v37 = xmmword_24BAB62E0;
  sub_24B9CA794();
  sub_24BAA9AEC();
  v14 = sub_24BAA90BC();
  v15 = &v8[*(v6 + 36)];
  *v15 = v14;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  v15[40] = 1;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  *&v38 = sub_24BAA7C2C();
  *(&v38 + 1) = v16;
  sub_24B9CA7E8();
  sub_24B8F5E3C();
  sub_24BAA959C();

  sub_24B8F35E4(v8, &qword_27F0675C8);
  if (qword_27F0630B0 != -1)
  {
    swift_once();
  }

  v17 = qword_27F0673A0;
  v18 = v11[3];
  v40 = v11[2];
  v41 = v18;
  *&v42 = *(v11 + 8);
  v19 = v11[1];
  v38 = *v11;
  v39 = v19;
  sub_24BAA99FC();
  v44 = v33;
  v45 = v34;
  v46 = v35;
  v47 = v36;
  sub_24B9142B0(&v44);
  v20 = [objc_opt_self() meters];
  sub_24B8F37E8(0, &qword_27F0675F8);
  sub_24BAA7B1C();
  v21 = v31;
  v22 = sub_24BAA7B0C();
  (*(v30 + 8))(v5, v21);
  v23 = [v17 stringFromMeasurement_];

  v24 = sub_24BAAA01C();
  v26 = v25;

  *&v38 = v24;
  *(&v38 + 1) = v26;
  sub_24BAA85AC();

  return sub_24B8F35E4(v10, &qword_27F0675D0);
}

uint64_t sub_24B9C44F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0677B0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v44 = &v36 - v6;
  v7 = sub_24BAA8FBC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0677B8);
  v40 = *(v11 - 8);
  v41 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v47 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;

  v46 = sub_24BAA994C();
  v45 = sub_24BAA914C();
  KeyPath = swift_getKeyPath();
  v38 = *(a1 + 16);

  v16 = sub_24BAA8BDC();
  v51 = 1;
  sub_24B9C4B04(&v59);
  v54 = v61;
  v55 = v62;
  v56[0] = *v63;
  *(v56 + 9) = *&v63[9];
  v52 = v59;
  v53 = v60;
  *(v58 + 9) = *&v63[9];
  v57[2] = v61;
  v57[3] = v62;
  v58[0] = *v63;
  v57[0] = v59;
  v57[1] = v60;
  sub_24B8F3208(&v52, &v48, &qword_27F0677C0);
  sub_24B8F35E4(v57, &qword_27F0677C0);
  *(&v50[2] + 7) = v54;
  *(&v50[3] + 7) = v55;
  *(&v50[4] + 7) = v56[0];
  v50[5] = *(v56 + 9);
  *(v50 + 7) = v52;
  *(&v50[1] + 7) = v53;
  *&v49[33] = v50[2];
  *&v49[49] = v50[3];
  *&v49[65] = v50[4];
  *&v49[81] = *(v56 + 9);
  v48 = v16;
  v49[0] = v51;
  *&v49[17] = v50[1];
  *&v49[1] = v50[0];
  sub_24BAA8F9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0677C8);
  sub_24B8F384C(&qword_27F0677D0, &qword_27F0677C8);
  sub_24BAA95FC();
  (*(v8 + 8))(v10, v7);
  *v63 = *&v49[48];
  *&v63[16] = *&v49[64];
  v64 = *&v49[80];
  v65 = v49[96];
  v59 = v48;
  v60 = *v49;
  v61 = *&v49[16];
  v62 = *&v49[32];
  sub_24B8F35E4(&v59, &qword_27F0677C8);
  v17 = sub_24BAA991C();
  sub_24BAA916C();
  v18 = sub_24BAA917C();

  v19 = swift_getKeyPath();
  if (*(a1 + 56))
  {
    v20 = sub_24BAA974C();
  }

  else
  {
    v20 = sub_24BAA980C();
  }

  v21 = v20;
  v22 = swift_getKeyPath();
  *&v48 = v17;
  *(&v48 + 1) = v19;
  *v49 = v18;
  *&v49[8] = v22;
  *&v49[16] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0677D8);
  sub_24B9CCBB4();
  v23 = v44;
  sub_24BAA95EC();

  v24 = v40;
  v25 = v41;
  v26 = *(v40 + 16);
  v27 = v47;
  v26(v47, v15, v41);
  v28 = v42;
  sub_24B8F3208(v23, v42, &qword_27F0677B0);
  v37 = v15;
  v30 = v38;
  v29 = v39;
  v31 = KeyPath;
  *v39 = v46;
  v29[1] = v31;
  v29[2] = v45;
  v29[3] = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0677F8);
  v26(v29 + v32[12], v27, v25);
  v33 = v29 + v32[16];
  *v33 = 0x4030000000000000;
  v33[8] = 0;
  sub_24B8F3208(v28, v29 + v32[20], &qword_27F0677B0);

  sub_24B8F35E4(v44, &qword_27F0677B0);
  v34 = *(v24 + 8);
  v34(v37, v25);
  sub_24B8F35E4(v28, &qword_27F0677B0);
  v34(v47, v25);
}

uint64_t sub_24B9C4B04@<X0>(uint64_t a1@<X8>)
{
  sub_24B8F5E3C();

  v2 = sub_24BAA93CC();
  v4 = v3;
  v6 = v5;
  sub_24BAA928C();
  v7 = sub_24BAA939C();
  v9 = v8;
  v11 = v10;

  sub_24B900910(v2, v4, v6 & 1);

  sub_24BAA988C();
  v12 = sub_24BAA933C();
  v35 = v13;
  v36 = v12;
  v34 = v14;
  v37 = v15;

  sub_24B900910(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();

  v16 = sub_24BAA93CC();
  v18 = v17;
  LOBYTE(v9) = v19;
  sub_24BAA927C();
  v20 = sub_24BAA939C();
  v22 = v21;
  v24 = v23;

  sub_24B900910(v16, v18, v9 & 1);

  sub_24BAA989C();
  v25 = sub_24BAA933C();
  v27 = v26;
  LOBYTE(v7) = v28;
  v30 = v29;

  sub_24B900910(v20, v22, v24 & 1);

  v31 = swift_getKeyPath();
  *a1 = v36;
  *(a1 + 8) = v35;
  *(a1 + 16) = v34 & 1;
  *(a1 + 24) = v37;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = v25;
  *(a1 + 56) = v27;
  *(a1 + 64) = v7 & 1;
  *(a1 + 72) = v30;
  *(a1 + 80) = v31;
  *(a1 + 88) = 0;
  sub_24B8F319C(v36, v35, v34 & 1);

  sub_24B8F319C(v25, v27, v7 & 1);

  sub_24B900910(v25, v27, v7 & 1);

  sub_24B900910(v36, v35, v34 & 1);
}

uint64_t sub_24B9C4DD4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 9) = *(v1 + 41);
  *a1 = sub_24BAA8AAC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0677A8);
  return sub_24B9C44F4(v6, (a1 + *(v4 + 44)));
}

uint64_t sub_24B9C4E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_24BAA852C();
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v28 = a1;
  v29 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v26 = *(a1 + 24);
  v27 = v5;
  swift_getTupleTypeMetadata2();
  v6 = sub_24BAA9DBC();
  WitnessTable = swift_getWitnessTable();
  v37 = MEMORY[0x277D84A98];
  v38 = v6;
  v39 = MEMORY[0x277D84AA8];
  v40 = WitnessTable;
  v7 = sub_24BAA92DC();
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = swift_getWitnessTable();
  v37 = v7;
  v38 = v3;
  v11 = MEMORY[0x277CDD980];
  v39 = v10;
  v40 = MEMORY[0x277CDD980];
  v23 = MEMORY[0x277CDEF88];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  v33 = v27;
  v34 = v26;
  v35 = *(v28 + 32);
  v36 = v30;
  sub_24BAA92CC();
  v19 = v29;
  sub_24BAA851C();
  sub_24BAA96FC();
  (*(v31 + 8))(v19, v3);
  (*(v24 + 8))(v9, v7);
  v37 = v7;
  v38 = v3;
  v39 = v10;
  v40 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24BA0EEC4(v16, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v21 = *(v13 + 8);
  v21(v16, OpaqueTypeMetadata2);
  sub_24BA0EEC4(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v21)(v18, OpaqueTypeMetadata2);
}

uint64_t sub_24B9C51E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a6;
  v36 = *(a3 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v38 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  v42 = v23;
  v43 = v24;
  v44 = v25;
  v45 = v26;
  LocationTrigger = type metadata accessor for CreateLocationTriggerView.ResultsView();
  sub_24BA0EEC4(a1 + *(LocationTrigger + 60), a2, a4);
  v28 = a1 + *(LocationTrigger + 64);
  v29 = a5;
  sub_24BA0EEC4(v28, a3, a5);
  (*(v17 + 16))(v20, v22, a2);
  v42 = v20;
  v30 = v36;
  v31 = v38;
  (*(v36 + 16))(v38, v15, a3);
  v43 = v31;
  v41[0] = a2;
  v41[1] = a3;
  v39 = a4;
  v40 = v29;
  sub_24BA2D4C8(&v42, 2uLL, v41);
  v32 = *(v30 + 8);
  v32(v15, a3);
  v33 = *(v17 + 8);
  v33(v22, a2);
  v32(v38, a3);
  return (v33)(v20, a2);
}

uint64_t sub_24B9C5478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24BAA89FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067548);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_24B8F3208(v2 + *(a1 + 40), &v15 - v10, &qword_27F067548);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24BAA8BBC();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_24BAAA2BC();
    v14 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_24B9C5680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  v10 = sub_24BAA9A8C();
  v22 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v21 - v14;
  (*(v5 + 16))(v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  *(v17 + 24) = v9;
  (*(v5 + 32))(v17 + v16, v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v24 = v8;
  v25 = v9;
  v26 = v21[1];
  sub_24BAA9A5C();
  WitnessTable = swift_getWitnessTable();
  sub_24BA0EEC4(v13, v10, WitnessTable);
  v19 = *(v22 + 8);
  v19(v13, v10);
  sub_24BA0EEC4(v15, v10, WitnessTable);
  return (v19)(v15, v10);
}

uint64_t sub_24B9C590C(uint64_t (**a1)(uint64_t))
{
  v2 = sub_24BAA8BBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedApplication];
  [v6 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];

  LocationTrigger = type metadata accessor for CreateLocationTriggerView.SearchCellView();
  sub_24B9C5478(LocationTrigger, v5);
  sub_24BAA8BAC();
  v8 = (*(v3 + 8))(v5, v2);
  return (*a1)(v8);
}

uint64_t sub_24B9C5A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationTrigger = type metadata accessor for CreateLocationTriggerView.SearchCellView();
  sub_24BA0EEC4(a1 + *(LocationTrigger + 36), a2, a3);
  sub_24BA0EEC4(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_24B9C5B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  LocationSelection = type metadata accessor for CreateLocationSelection();
  v7 = MEMORY[0x28223BE20](LocationSelection);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v35[-v10];
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067478);
  swift_storeEnumTagMultiPayload();
  LocationTriggerView = type metadata accessor for CreateLocationTriggerView(0);
  v13 = (a3 + LocationTriggerView[5]);
  *v13 = a1;
  v13[1] = a2;
  v14 = LocationTriggerView[6];
  if (qword_27F063108 != -1)
  {
    swift_once();
  }

  v15 = (a3 + v14);
  type metadata accessor for LocationSuggestions(0);
  sub_24B9BE0E8(&qword_27F065EC0, type metadata accessor for LocationSuggestions);

  *v15 = sub_24BAA84DC();
  v15[1] = v16;
  v17 = (a3 + LocationTriggerView[7]);
  [objc_allocWithZone(type metadata accessor for LocationService(0)) init];
  sub_24B9BE0E8(&qword_27F067480, type metadata accessor for LocationService);
  *v17 = sub_24BAA84DC();
  v17[1] = v18;
  v19 = a3 + LocationTriggerView[8];
  v20 = objc_allocWithZone(MEMORY[0x277CBFBC8]);
  v21 = sub_24BAA9FDC();
  v22 = [v20 initWithCenter:v21 radius:0.0 identifier:{0.0, 0.0}];

  [v22 setGeoReferenceFrame_];
  sub_24B92E638([objc_allocWithZone(MEMORY[0x277D059B0]) initWithRegion:v22 detail:0 enabledSetting:2], v37);

  sub_24BAA99EC();
  v23 = v42;
  *(v19 + 2) = v41;
  *(v19 + 3) = v23;
  *(v19 + 8) = v43;
  v24 = v40;
  *v19 = v39;
  *(v19 + 1) = v24;
  v25 = a3 + LocationTriggerView[9];
  v36 = 0;
  sub_24BAA99EC();
  v26 = v38;
  *v25 = v37[0];
  *(v25 + 1) = v26;
  v27 = a3 + LocationTriggerView[10];
  v36 = 0;
  sub_24BAA99EC();
  v28 = v38;
  *v27 = v37[0];
  *(v27 + 1) = v28;
  swift_storeEnumTagMultiPayload();
  sub_24B9C9478(v11, v9, type metadata accessor for CreateLocationSelection);
  sub_24BAA99EC();
  sub_24B9C9520(v11, type metadata accessor for CreateLocationSelection);
  v29 = (a3 + LocationTriggerView[12]);
  type metadata accessor for ActivityConfigViewModel();
  sub_24B9BE0E8(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *v29 = sub_24BAA86FC();
  v29[1] = v30;
  v31 = LocationTriggerView[13];
  *(a3 + v31) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  swift_storeEnumTagMultiPayload();
  v32 = LocationTriggerView[14];
  *(a3 + v32) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067488);
  swift_storeEnumTagMultiPayload();
  v33 = a3 + LocationTriggerView[15];
  result = swift_getKeyPath();
  *v33 = result;
  v33[8] = 0;
  return result;
}

uint64_t sub_24B9C5FD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v36 = sub_24BAA862C();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0673D0);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v31 = v30 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0673D8);
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v32 = v30 - v5;
  v6 = type metadata accessor for EditExistingLocationTriggerView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_24B9C9478(v1, v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditExistingLocationTriggerView);
  sub_24BAAA1BC();
  v9 = sub_24BAAA1AC();
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v9;
  *(v11 + 24) = v12;
  sub_24B9CA18C(v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for EditExistingLocationTriggerView);
  sub_24B9C9478(v1, v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditExistingLocationTriggerView);
  v13 = sub_24BAAA1AC();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  sub_24B9CA18C(v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v10, type metadata accessor for EditExistingLocationTriggerView);
  sub_24BAA9B9C();
  v30[1] = v46;
  v41 = v46;
  v42 = v47;
  v43 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0673E0);
  sub_24B8F384C(&qword_27F0673E8, &qword_27F0673E0);
  v15 = v31;
  sub_24BAA92BC();
  v16 = v33;
  sub_24BAA9D7C();
  v17 = sub_24B8F384C(&qword_27F0673F0, &qword_27F0673D0);
  v18 = sub_24B9BE0E8(&qword_27F064860, MEMORY[0x277CDDAB8]);
  v19 = v32;
  v20 = v34;
  v21 = v36;
  sub_24BAA96EC();
  v22 = v16;
  v23 = v21;
  (*(v37 + 8))(v22, v21);
  (*(v35 + 8))(v15, v20);
  v24 = *(v2 + 80);
  v48 = *(v2 + 64);
  v49 = v24;
  v50 = *(v2 + 96);
  v25 = *(v2 + 48);
  v46 = *(v2 + 32);
  v47 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0673F8);
  sub_24BAA99FC();
  v26 = v52;
  v27 = v53;

  sub_24B9142B0(v51);
  v44 = v26;
  v45 = v27;
  *&v46 = v20;
  *(&v46 + 1) = v23;
  *&v47 = v17;
  *(&v47 + 1) = v18;
  swift_getOpaqueTypeConformance2();
  sub_24B8F5E3C();
  v28 = v38;
  sub_24BAA952C();

  return (*(v39 + 8))(v19, v28);
}

uint64_t sub_24B9C65D4@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0673F8);
  sub_24BAA99FC();
  v7[0] = v3;
  v7[1] = v4;
  v7[2] = v5;
  v8 = v6;
  result = sub_24B9142B0(v7);
  *a1 = v8;
  return result;
}

uint64_t sub_24B9C6654(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a4 + 48);
  v10 = *(a4 + 80);
  v36 = *(a4 + 64);
  v37 = v10;
  v11 = *(a4 + 48);
  v34 = *(a4 + 32);
  v35 = v11;
  v12 = *(a4 + 80);
  v27 = v36;
  v28 = v12;
  v13 = *a1;
  v38 = *(a4 + 96);
  v29 = *(a4 + 96);
  v25 = v34;
  v26 = v9;
  sub_24B8F3208(&v34, v39, &qword_27F0673F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0673F8);
  sub_24BAA99FC();
  LOBYTE(v33) = v13;
  v19[0] = v30;
  v19[1] = v31;
  v19[2] = v32;
  v19[3] = v33;
  v22 = v36;
  v23 = v37;
  v24 = v38;
  v20 = v34;
  v21 = v35;
  sub_24BAA9A0C();
  v39[2] = v22;
  v39[3] = v23;
  v40 = v24;
  v39[0] = v20;
  v39[1] = v21;
  sub_24B8F35E4(v39, &qword_27F0673F8);
  if (*(a4 + 104))
  {
    v14 = *(a4 + 80);
    v27 = *(a4 + 64);
    v28 = v14;
    v29 = *(a4 + 96);
    v15 = *(a4 + 48);
    v25 = *(a4 + 32);
    v26 = v15;

    sub_24BAA99FC();
    v16 = v21;
    *v8 = v20;
    v8[1] = v16;
    v17 = v23;
    v8[2] = v22;
    v8[3] = v17;
    swift_storeEnumTagMultiPayload();
    sub_24B991000(v8);

    return sub_24B9C9520(v8, type metadata accessor for Trigger);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9BE0E8(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9C68B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v66 = a4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064868);
  v62 = *(v65 - 8);
  v7 = MEMORY[0x28223BE20](v65);
  v67 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = &v59 - v9;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067400);
  v64 = *(v73 - 8);
  v10 = MEMORY[0x28223BE20](v73);
  v74 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v68 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067408);
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v69 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - v16;
  v75 = a1;
  v76 = a2;
  v77 = a3;
  sub_24BAA8B0C();
  v82 = sub_24BAA93BC();
  v83 = v18;
  v84 = v19 & 1;
  v85 = v20;
  v21 = sub_24B9C8448();
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_24BAAD820;
    v26 = sub_24B9C8678();
    v28 = v27;
    v29 = MEMORY[0x277D837D0];
    *(v25 + 56) = MEMORY[0x277D837D0];
    v30 = sub_24B8F6A20();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    *(v25 + 96) = v29;
    *(v25 + 104) = v30;
    *(v25 + 64) = v30;
    *(v25 + 72) = v23;
    *(v25 + 80) = v24;
    v31 = sub_24BAAA02C();
    v33 = v32;
  }

  else
  {
    v31 = sub_24B9C8678();
    v33 = v34;
  }

  v78 = v31;
  v79 = v33;
  sub_24B8F5E3C();
  v78 = sub_24BAA93CC();
  v79 = v35;
  v80 = v36 & 1;
  v81 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639B8);
  sub_24B8F68B8();
  v63 = v17;
  v38 = sub_24BAA9C2C();
  MEMORY[0x28223BE20](v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067410);
  sub_24B9C90E0();
  v39 = v68;
  v40 = sub_24BAA9C3C();
  MEMORY[0x28223BE20](v40);
  sub_24B91F38C();
  v41 = v72;
  sub_24BAA9C3C();
  v42 = v69;
  v43 = *(v70 + 16);
  v44 = v17;
  v45 = v71;
  v43(v69, v44, v71);
  v46 = v64;
  v61 = *(v64 + 16);
  v61(v74, v39, v73);
  v47 = v62;
  v60 = *(v62 + 16);
  v48 = v41;
  v49 = v65;
  v60(v67, v48, v65);
  v50 = v66;
  v43(v66, v42, v45);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067440);
  v52 = v73;
  v61(&v50[*(v51 + 48)], v74, v73);
  v53 = v67;
  v60(&v50[*(v51 + 64)], v67, v49);
  v54 = *(v47 + 8);
  v54(v72, v49);
  v55 = *(v46 + 8);
  v55(v68, v52);
  v56 = v71;
  v57 = *(v70 + 8);
  v57(v63, v71);
  v54(v53, v49);
  v55(v74, v52);
  return (v57)(v69, v56);
}

uint64_t sub_24B9C6F28@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  sub_24B8F5E3C();

  sub_24BAA9AFC();
  v2 = sub_24BAA988C();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639B8);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v2;
  return result;
}

double sub_24B9C7054@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24BAA8BCC();
  v10 = 0;
  sub_24B9C7138(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_24B8F3208(__dst, &v7, &qword_27F067448);
  sub_24B8F35E4(v12, &qword_27F067448);
  memcpy(&v9[7], __dst, 0x138uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  memcpy((a2 + 17), v9, 0x13FuLL);
  result = 0.0;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 368) = 0;
  return result;
}

uint64_t sub_24B9C7138@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24 = sub_24BAA8AAC();
  LOBYTE(v52) = 1;
  sub_24B9C7664(&v61);
  v37 = *&v62[80];
  v38 = *&v62[96];
  v33 = *&v62[16];
  v34 = *&v62[32];
  v35 = *&v62[48];
  v36 = *&v62[64];
  v31 = v61;
  v32 = *v62;
  v40[6] = *&v62[80];
  v40[7] = *&v62[96];
  v40[2] = *&v62[16];
  v40[3] = *&v62[32];
  v40[4] = *&v62[48];
  v40[5] = *&v62[64];
  v39 = v62[112];
  v41 = v62[112];
  v40[0] = v61;
  v40[1] = *v62;
  sub_24B8F3208(&v31, &v44, &qword_27F067450);
  sub_24B8F35E4(v40, &qword_27F067450);
  *&v30[87] = v36;
  *&v30[103] = v37;
  *&v30[119] = v38;
  *&v30[23] = v32;
  *&v30[39] = v33;
  *&v30[55] = v34;
  *&v30[71] = v35;
  v30[135] = v39;
  *&v30[7] = v31;
  v22 = v52;
  v23 = sub_24BAA90BC();
  sub_24BAA828C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + 80);
  *&v62[16] = *(a1 + 64);
  *&v62[32] = v11;
  *&v62[48] = *(a1 + 96);
  v12 = *(a1 + 32);
  *v62 = *(a1 + 48);
  v61 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0673F8);
  sub_24BAA9A1C();
  swift_getKeyPath();
  *&v62[16] = v42[2];
  *&v62[32] = v42[3];
  *&v62[48] = v42[4];
  *v62 = v42[1];
  v61 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067458);
  sub_24BAA9B7C();

  sub_24B8F35E4(v42, &qword_27F067458);
  v13 = v52;
  v14 = v53;
  v15 = v54;
  v16 = v55;
  v17 = *(a1 + 64);
  *&v45[32] = *(a1 + 80);
  *&v45[48] = *(a1 + 96);
  v18 = *(a1 + 32);
  *v45 = *(a1 + 48);
  *&v45[16] = v17;
  v44 = v18;
  sub_24BAA9A1C();
  swift_getKeyPath();
  *&v45[32] = v43[3];
  *&v45[48] = v43[4];
  *v45 = v43[1];
  *&v45[16] = v43[2];
  v44 = v43[0];
  sub_24BAA9B7C();

  sub_24B8F35E4(v43, &qword_27F067458);
  v19 = v48;
  v20 = v49;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  *&v45[97] = *&v30[96];
  *&v45[81] = *&v30[80];
  *&v45[33] = *&v30[32];
  *&v45[17] = *&v30[16];
  v44 = v24;
  v45[0] = v22;
  *&v45[113] = *&v30[112];
  *&v45[129] = *&v30[128];
  *&v45[49] = *&v30[48];
  *&v45[65] = *&v30[64];
  *&v45[1] = *v30;
  LOBYTE(v46) = v23;
  *(&v46 + 1) = v4;
  *v47 = v6;
  *&v47[8] = v8;
  *&v47[16] = v10;
  v47[24] = 0;
  __src[6] = *&v45[80];
  __src[7] = *&v45[96];
  __src[8] = *&v45[112];
  __src[9] = *&v45[128];
  __src[2] = *&v45[16];
  __src[3] = *&v45[32];
  __src[4] = *&v45[48];
  __src[5] = *&v45[64];
  __src[0] = v24;
  __src[1] = *v45;
  __src[10] = v46;
  __src[11] = *v47;
  *(&__src[11] + 9) = *&v47[9];
  *&v48 = v13;
  *(&v48 + 1) = v14;
  *&v49 = v15;
  *(&v49 + 1) = v16;
  v50 = v19;
  *v51 = v20;
  *&v51[8] = v27;
  *&v51[24] = v28;
  *&v51[40] = v29;
  __src[13] = v48;
  __src[14] = v49;
  *&__src[19] = *(&v29 + 1);
  __src[17] = *&v51[16];
  __src[18] = *&v51[32];
  __src[15] = v19;
  __src[16] = *v51;
  memcpy(a2, __src, 0x138uLL);
  v52 = v13;
  v53 = v14;
  v54 = v15;
  v55 = v16;
  v56 = v19;
  v57 = v20;
  v58 = v27;
  v59 = v28;
  v60 = v29;
  sub_24B8F3208(&v44, &v61, &qword_27F067460);
  sub_24B8F3208(&v48, &v61, &qword_27F067468);
  sub_24B8F35E4(&v52, &qword_27F067468);
  *&v62[81] = *&v30[80];
  *&v62[97] = *&v30[96];
  v63 = *&v30[112];
  *&v62[17] = *&v30[16];
  *&v62[33] = *&v30[32];
  *&v62[49] = *&v30[48];
  *&v62[65] = *&v30[64];
  v61 = v24;
  v62[0] = v22;
  v64 = *&v30[128];
  *&v62[1] = *v30;
  v65 = v23;
  v66 = v4;
  v67 = v6;
  v68 = v8;
  v69 = v10;
  v70 = 0;
  return sub_24B8F35E4(&v61, &qword_27F067460);
}

uint64_t sub_24B9C7664@<X0>(uint64_t a1@<X8>)
{
  sub_24B9C7824();
  v2 = sub_24BAA991C();
  v3 = sub_24BAA914C();
  KeyPath = swift_getKeyPath();
  v5 = sub_24BAA974C();
  v6 = sub_24BAA8BDC();
  LOBYTE(v22[0]) = 1;
  sub_24B9C7978(v18);
  *&v17[55] = v19;
  *&v17[39] = v18[2];
  *&v17[23] = v18[1];
  *&v17[7] = v18[0];
  v7 = v22[0];
  v20[0] = v6;
  v20[1] = 0;
  v21[0] = v22[0];
  v8 = *&v17[16];
  *&v21[1] = *v17;
  *&v21[64] = *(&v19 + 1);
  *&v21[49] = *&v17[48];
  v10 = *&v17[32];
  v9 = *&v17[48];
  *&v21[33] = *&v17[32];
  v11 = *v17;
  *&v21[17] = *&v17[16];
  v12 = *v21;
  *(a1 + 32) = v6;
  *(a1 + 48) = v12;
  v13 = *&v21[16];
  v14 = *&v21[48];
  *(a1 + 80) = *&v21[32];
  *(a1 + 96) = v14;
  *(a1 + 64) = v13;
  v24 = v11;
  v16[88] = 1;
  *a1 = v2;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 112) = *&v21[64];
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  v22[0] = v6;
  v22[1] = 0;
  v23 = v7;
  *&v27[15] = *&v17[63];
  *v27 = v9;
  v26 = v10;
  v25 = v8;

  sub_24B8F3208(v20, v16, &qword_27F067470);
  sub_24B8F35E4(v22, &qword_27F067470);
}

uint64_t sub_24B9C7824()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0673F8);
  sub_24BAA99FC();
  v7[0] = v3;
  v7[1] = v4;
  v7[2] = v5;
  v7[3] = v6;
  sub_24B9142B0(v7);
  v0 = sub_24BA5A50C(*v7, *(v7 + 1));
  if (v0 > 2)
  {
    if (v0 == 4)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = 0xD000000000000014;
    }

    if (v0 == 3)
    {
      return 0x64746E6564757473;
    }

    else
    {
      return v2;
    }
  }

  else if (v0)
  {
    if (v0 == 1)
    {
      return 0xD000000000000011;
    }

    else
    {
      return 0xD000000000000015;
    }
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_24B9C7978@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0673F8);
  sub_24BAA99FC();

  sub_24B9142B0(v36);
  sub_24B8F5E3C();
  v1 = sub_24BAA93CC();
  v3 = v2;
  v5 = v4;
  sub_24BAA928C();
  v6 = sub_24BAA939C();
  v8 = v7;
  v10 = v9;

  sub_24B900910(v1, v3, v5 & 1);

  sub_24BAA988C();
  v11 = sub_24BAA933C();
  v33 = v12;
  v34 = v11;
  v14 = v13;
  v32 = v15;

  sub_24B900910(v6, v8, v10 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v16 = sub_24BAA93CC();
  v18 = v17;
  v20 = v19;
  sub_24BAA927C();
  v21 = sub_24BAA939C();
  v23 = v22;
  LOBYTE(v1) = v24;

  sub_24B900910(v16, v18, v20 & 1);

  sub_24BAA989C();
  v25 = sub_24BAA933C();
  v27 = v26;
  LOBYTE(v8) = v28;
  v30 = v29;

  sub_24B900910(v21, v23, v1 & 1);

  v36[64] = v8 & 1;
  *a1 = v34;
  *(a1 + 8) = v14;
  *(a1 + 16) = v32 & 1;
  *(a1 + 24) = v33;
  *(a1 + 32) = v25;
  *(a1 + 40) = v27;
  *(a1 + 48) = v8 & 1;
  *(a1 + 56) = v30;
  sub_24B8F319C(v34, v14, v32 & 1);

  sub_24B8F319C(v25, v27, v8 & 1);

  sub_24B900910(v25, v27, v8 & 1);

  sub_24B900910(v34, v14, v32 & 1);
}

uint64_t sub_24B9C7C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EditExistingLocationTriggerView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_24B9C9478(a1, &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for EditExistingLocationTriggerView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_24B9CA18C(&v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for EditExistingLocationTriggerView);
  v11[15] = 0;
  result = sub_24BAA99EC();
  v10 = v12;
  *a2 = v11[16];
  *(a2 + 8) = v10;
  *(a2 + 16) = sub_24B9C9334;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_24B9C7DC0()
{
  v1 = v0;
  v2 = sub_24BAA868C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - v6;
  v55 = type metadata accessor for Trigger(0);
  v54 = *(v55 - 8);
  v8 = MEMORY[0x28223BE20](v55);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v52 = &v45 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v45 - v13);
  MEMORY[0x28223BE20](v12);
  v53 = &v45 - v15;
  v16 = *(v0 + 104);
  if (!v16)
  {
    goto LABEL_39;
  }

  v49 = &v45;
  MEMORY[0x28223BE20](v16);
  *(&v45 - 2) = v0;

  sub_24B984444();
  v17 = sub_24B8DF718();

  v18 = sub_24B991438(sub_24B9C9390, (&v45 - 4), v17);
  if ((v19 & 1) == 0)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      type metadata accessor for ActivityConfigViewModel();
      sub_24B9BE0E8(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
      result = sub_24BAA86DC();
      __break(1u);
      return result;
    }

    v57 = v18;
    v46 = v7;
    v47 = v5;
    v48 = v4;
    while (1)
    {
      v23 = v17 + 2;
      v22 = v17[2];
      if (v20 == v22)
      {
        break;
      }

      if (v20 >= v22)
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v24 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v58 = v17;
      v56 = v24;
      v25 = v17 + v24;
      v26 = *(v54 + 72);
      v27 = v26 * v20;
      v28 = v53;
      sub_24B9C9478(&v25[v26 * v20], v53, type metadata accessor for Trigger);
      v29 = *(v1 + 80);
      v61 = *(v1 + 64);
      v62 = v29;
      v63 = *(v1 + 96);
      v30 = *(v1 + 48);
      v59 = *(v1 + 32);
      v60 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0673F8);
      sub_24BAA99FC();
      v31 = v65;
      *v14 = v64;
      v14[1] = v31;
      v32 = v67;
      v14[2] = v66;
      v14[3] = v32;
      swift_storeEnumTagMultiPayload();
      v33 = sub_24B92823C(v28);
      sub_24B9C9520(v14, type metadata accessor for Trigger);
      sub_24B9C9520(v28, type metadata accessor for Trigger);
      if (v33)
      {
        v17 = v58;
        ++v20;
      }

      else
      {
        v34 = v57;
        if (v20 == v57)
        {
          v17 = v58;
        }

        else
        {
          if (v57 < 0)
          {
            goto LABEL_31;
          }

          v35 = *v23;
          if (v57 >= *v23)
          {
            goto LABEL_32;
          }

          v36 = v26 * v57;
          sub_24B9C9478(&v25[v36], v52, type metadata accessor for Trigger);
          if (v20 >= v35)
          {
            goto LABEL_33;
          }

          v37 = v51;
          sub_24B9C9478(&v25[v27], v51, type metadata accessor for Trigger);
          v17 = v58;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_24B9AEC30(v17);
          }

          v38 = v17 + v56;
          sub_24B91F684(v37, v17 + v56 + v36);
          if (v20 >= v17[2])
          {
            goto LABEL_34;
          }

          sub_24B91F684(v52, &v38[v27]);
          v34 = v57;
        }

        v57 = v34 + 1;
        ++v20;
      }
    }

    v21 = v57;
    if (v20 < v57)
    {
      goto LABEL_35;
    }

    v5 = v47;
    v7 = v46;
    if ((v57 & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v20 = v17[2];
  v21 = v20;
LABEL_22:
  v39 = v21;
  v40 = v21 - v20;
  v41 = v20 + v40;
  if (__OFADD__(v20, v40))
  {
    goto LABEL_37;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v59 = v17;
  if (!isUniquelyReferenced_nonNull_native || v41 > v17[3] >> 1)
  {
    if (v20 <= v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = v20;
    }

    v17 = sub_24B99A4A0(isUniquelyReferenced_nonNull_native, v43, 1, v17);
    *&v59 = v17;
  }

  sub_24B9AF37C(v39, v20, 0);
  type metadata accessor for ActivityConfigViewModel();
  sub_24B9BE0E8(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA814C();
  sub_24BAA816C();

  sub_24B984444();
  sub_24B8DFC94(v17);

  type metadata accessor for EditExistingLocationTriggerView(0);
  sub_24BA8DA5C(v7);
  MEMORY[0x24C24FC10](v5);
  sub_24BAA867C();
  sub_24BAA9B6C();
  return sub_24B8F35E4(v7, &qword_27F063940);
}

uint64_t sub_24B9C8448()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    v2 = (v1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_meDevice);
    v3 = v2[1];
    if (v3)
    {
      v4 = qword_27F063110;
      if (v2[2])
      {
        if (qword_27F063110 != -1)
        {
          swift_once();
        }

        return sub_24BAA7C2C();
      }

      else
      {
        v6 = *v2;

        if (v4 != -1)
        {
          swift_once();
        }

        sub_24BAA7C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_24BAAD5B0;
        *(v7 + 56) = MEMORY[0x277D837D0];
        *(v7 + 64) = sub_24B8F6A20();
        *(v7 + 32) = v6;
        *(v7 + 40) = v3;
        v8 = sub_24BAA9FEC();

        return v8;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9BE0E8(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9C8678()
{
  if (*(v0 + 104))
  {

    sub_24B984444();
    v1 = sub_24B8D7188();

    if (!v1)
    {

      goto LABEL_11;
    }

    v2 = [v1 mode];

    v3 = [v2 semanticType];

    if (v3 <= 3)
    {
      if (v3 <= 1)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            goto LABEL_11;
          }

          if (qword_27F063110 == -1)
          {
            goto LABEL_33;
          }
        }

        else if (qword_27F063110 == -1)
        {
          goto LABEL_33;
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (v3 <= 5)
      {
        if (v3 == 4)
        {
          if (qword_27F063110 == -1)
          {
            goto LABEL_33;
          }
        }

        else if (qword_27F063110 == -1)
        {
          goto LABEL_33;
        }

        goto LABEL_35;
      }

      if (v3 != 6)
      {
        if (v3 != 7)
        {
          if (v3 == 8)
          {
            if (qword_27F063110 == -1)
            {
              goto LABEL_33;
            }

            goto LABEL_35;
          }

LABEL_11:
          if (qword_27F063110 != -1)
          {
            swift_once();
          }

          sub_24BAA7C2C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
          v4 = swift_allocObject();
          *(v4 + 16) = xmmword_24BAAD820;

          sub_24B984444();
          v5 = sub_24B8D7188();
          if (v5)
          {
            v6 = v5;
            v7 = [v5 mode];

            v8 = [v7 name];
            v9 = sub_24BAAA01C();
            v11 = v10;
          }

          else
          {

            v9 = 0;
            v11 = 0xE000000000000000;
          }

          v12 = MEMORY[0x277D837D0];
          *(v4 + 56) = MEMORY[0x277D837D0];
          v13 = sub_24B8F6A20();
          *(v4 + 64) = v13;
          *(v4 + 32) = v9;
          *(v4 + 40) = v11;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0673F8);
          sub_24BAA99FC();
          v15 = v22;
          v14 = v23;

          sub_24B9142B0(v21);
          *(v4 + 96) = v12;
          *(v4 + 104) = v13;
          *(v4 + 72) = v15;
          *(v4 + 80) = v14;
          v16 = sub_24BAA9FEC();

          goto LABEL_34;
        }

        if (qword_27F063110 == -1)
        {
LABEL_33:
          sub_24BAA7C2C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_24BAAD5B0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0673F8);
          sub_24BAA99FC();
          v19 = v22;
          v18 = v23;

          sub_24B9142B0(v21);
          *(v17 + 56) = MEMORY[0x277D837D0];
          *(v17 + 64) = sub_24B8F6A20();
          *(v17 + 32) = v19;
          *(v17 + 40) = v18;
          v16 = sub_24BAA9FEC();

LABEL_34:

          return v16;
        }

LABEL_35:
        swift_once();
        goto LABEL_33;
      }
    }

    if (qword_27F063110 == -1)
    {
      goto LABEL_33;
    }

    goto LABEL_35;
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24B9BE0E8(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24B9C8D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v4);
  v6 = (v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a2 + 80);
  v12[2] = *(a2 + 64);
  v12[3] = v7;
  v13 = *(a2 + 96);
  v8 = *(a2 + 48);
  v12[0] = *(a2 + 32);
  v12[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0673F8);
  sub_24BAA99FC();
  v9 = v15;
  *v6 = v14;
  v6[1] = v9;
  v10 = v17;
  v6[2] = v16;
  v6[3] = v10;
  swift_storeEnumTagMultiPayload();
  LOBYTE(a2) = sub_24B92823C(a1);
  sub_24B9C9520(v6, type metadata accessor for Trigger);
  return a2 & 1;
}

uint64_t sub_24B9C8E64@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for EditExistingLocationTriggerView(0);

  return sub_24B9C65D4(a1);
}

uint64_t objectdestroyTm_10()
{
  v1 = (type metadata accessor for EditExistingLocationTriggerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v8 = sub_24BAA868C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B9C9048(char *a1)
{
  v3 = *(type metadata accessor for EditExistingLocationTriggerView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_24B9C6654(a1, v4, v5, v6);
}

unint64_t sub_24B9C90E0()
{
  result = qword_27F067418;
  if (!qword_27F067418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067410);
    sub_24B8F384C(&qword_27F067420, &qword_27F067428);
    sub_24B8F384C(&qword_27F067430, &qword_27F067438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067418);
  }

  return result;
}

uint64_t sub_24B9C91CC()
{
  v1 = (type metadata accessor for EditExistingLocationTriggerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v8 = sub_24BAA868C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B9C93B0(uint64_t a1)
{
  v2 = sub_24BAA7E8C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24BAA895C();
}

uint64_t sub_24B9C9478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B9C9520(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B9C95AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24BAA877C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24B9C95F0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067490);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067498);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[11];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[13];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0674A0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[14];

  return v18(v19, a2, v17);
}

uint64_t sub_24B9C97F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067490);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067498);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[11];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[13];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0674A0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[14];

  return v18(v19, a2, a2, v17);
}

void sub_24B9C99DC()
{
  sub_24B9C9C34(319, &qword_27F0674B8, &qword_27F0674C0);
  if (v0 <= 0x3F)
  {
    sub_24B8F45F4();
    if (v1 <= 0x3F)
    {
      sub_24B9BDFC0();
      if (v2 <= 0x3F)
      {
        sub_24B9C9C88();
        if (v3 <= 0x3F)
        {
          sub_24B9C9D1C(319, &qword_27F0673C8, &type metadata for Trigger.Location, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_24B9C9D1C(319, &qword_27F063A40, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_24B9CC0B8(319, &qword_27F0674D0, type metadata accessor for CreateLocationSelection, MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_24B8F47B4();
                if (v7 <= 0x3F)
                {
                  sub_24B9C9C34(319, &qword_27F063938, &qword_27F063940);
                  if (v8 <= 0x3F)
                  {
                    sub_24B9CC0B8(319, &qword_27F0674D8, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
                    if (v9 <= 0x3F)
                    {
                      sub_24B9C9D1C(319, &qword_27F063A38, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
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

void sub_24B9C9C34(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_24BAA82EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24B9C9C88()
{
  if (!qword_27F0674C8)
  {
    type metadata accessor for LocationService(255);
    sub_24B9BE0E8(&qword_27F067480, type metadata accessor for LocationService);
    v0 = sub_24BAA850C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F0674C8);
    }
  }
}

void sub_24B9C9D1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24B9C9D6C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0673D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0673D0);
  sub_24BAA862C();
  sub_24B8F384C(&qword_27F0673F0, &qword_27F0673D0);
  sub_24B9BE0E8(&qword_27F064860, MEMORY[0x277CDDAB8]);
  swift_getOpaqueTypeConformance2();
  sub_24B8F5E3C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24B9C9ED0()
{
  result = qword_27F067510;
  if (!qword_27F067510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067500);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067518);
    sub_24BAA8DEC();
    sub_24B8F384C(&qword_27F067520, &qword_27F067518);
    sub_24B9BE0E8(&qword_27F0667F8, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067510);
  }

  return result;
}

unint64_t sub_24B9CA014()
{
  result = qword_27F067528;
  if (!qword_27F067528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0674E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0674E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067500);
    sub_24B8F384C(&qword_27F067508, &qword_27F0674E0);
    sub_24B9C9ED0();
    sub_24B8F5E3C();
    swift_getOpaqueTypeConformance2();
    sub_24B8F384C(&unk_27F069050, &qword_27F064F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067528);
  }

  return result;
}

uint64_t sub_24B9CA18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B9CA1F4()
{
  v1 = *(type metadata accessor for CreateLocationTriggerView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24B9C0B88(v2);
}

uint64_t objectdestroy_56Tm()
{
  LocationTriggerView = type metadata accessor for CreateLocationTriggerView(0);
  v2 = *(*(LocationTriggerView - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(LocationTriggerView - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067478);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24BAA8E5C();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
  }

  v8 = v5 + LocationTriggerView[8];

  v9 = (v5 + LocationTriggerView[11]);
  type metadata accessor for CreateLocationSelection();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v11 = sub_24BAA7E4C();
    (*(*(v11 - 8) + 8))(v9, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067498);

  v12 = v5 + LocationTriggerView[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  v13 = swift_getEnumCaseMultiPayload();

  if (v13 == 1)
  {

    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v15 = sub_24BAA868C();
    (*(*(v15 - 8) + 8))(v12 + v14, v15);
  }

  v16 = LocationTriggerView[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067488);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_24BAA7E8C();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
  }

  sub_24B8FFD5C(*(v5 + LocationTriggerView[15]), *(v5 + LocationTriggerView[15] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B9CA618(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_24B8F37E8(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B9CA698()
{
  result = qword_27F067550;
  if (!qword_27F067550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067550);
  }

  return result;
}

uint64_t sub_24B9CA724(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B9CA794()
{
  result = qword_27F0675D8;
  if (!qword_27F0675D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0675D8);
  }

  return result;
}

unint64_t sub_24B9CA7E8()
{
  result = qword_27F0675E0;
  if (!qword_27F0675E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0675C8);
    sub_24B8F384C(&qword_27F0675E8, &qword_27F0675F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0675E0);
  }

  return result;
}

uint64_t sub_24B9CA8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CreateLocationTriggerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24B9C0CD8(a1, v6, a2);
}

uint64_t sub_24B9CA93C()
{
  LocationTriggerView = type metadata accessor for CreateLocationTriggerView(0);
  v2 = *(*(LocationTriggerView - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(LocationTriggerView - 1) + 64);
  v5 = type metadata accessor for LocationSuggestions.PointOfInterest(0);
  v6 = *(*(v5 - 8) + 80);
  v24 = *(*(v5 - 8) + 64);
  v7 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067478);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24BAA8E5C();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v0 + v3, 1, v8))
    {
      (*(v9 + 8))(v0 + v3, v8);
    }
  }

  else
  {
  }

  v10 = v7 + LocationTriggerView[8];

  v11 = (v7 + LocationTriggerView[11]);
  type metadata accessor for CreateLocationSelection();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v13 = sub_24BAA7E4C();
    (*(*(v13 - 8) + 8))(v11, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067498);

  v14 = v7 + LocationTriggerView[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  v15 = swift_getEnumCaseMultiPayload();

  if (v15 == 1)
  {

    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v17 = sub_24BAA868C();
    (*(*(v17 - 8) + 8))(v14 + v16, v17);
  }

  v18 = LocationTriggerView[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067488);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_24BAA7E8C();
    (*(*(v19 - 8) + 8))(v7 + v18, v19);
  }

  else
  {
  }

  v20 = (v3 + v4 + v6) & ~v6;
  sub_24B8FFD5C(*(v7 + LocationTriggerView[15]), *(v7 + LocationTriggerView[15] + 8));

  v21 = *(v5 + 32);
  v22 = sub_24BAA7E4C();
  (*(*(v22 - 8) + 8))(v0 + v20 + v21, v22);

  return MEMORY[0x2821FE8E8](v0, v20 + v24, v2 | v6 | 7);
}

uint64_t sub_24B9CAD98()
{
  v1 = *(type metadata accessor for CreateLocationTriggerView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for LocationSuggestions.PointOfInterest(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_24B9C110C(v0 + v2, v5);
}

unint64_t sub_24B9CAE74()
{
  result = qword_27F067668;
  if (!qword_27F067668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067660);
    sub_24B9CAEF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067668);
  }

  return result;
}

unint64_t sub_24B9CAEF8()
{
  result = qword_27F067670;
  if (!qword_27F067670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067678);
    sub_24B9CAF7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067670);
  }

  return result;
}

unint64_t sub_24B9CAF7C()
{
  result = qword_27F067680;
  if (!qword_27F067680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067688);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067518);
    sub_24BAA8DEC();
    sub_24B8F384C(&qword_27F067520, &qword_27F067518);
    sub_24B9BE0E8(&qword_27F0667F8, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067680);
  }

  return result;
}

uint64_t sub_24B9CB0E0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CreateLocationTriggerView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroy_75Tm()
{
  LocationTriggerView = type metadata accessor for CreateLocationTriggerView(0);
  v2 = *(*(LocationTriggerView - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(LocationTriggerView - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067478);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24BAA8E5C();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
  }

  v8 = v5 + LocationTriggerView[8];

  v9 = (v5 + LocationTriggerView[11]);
  type metadata accessor for CreateLocationSelection();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v11 = sub_24BAA7E4C();
    (*(*(v11 - 8) + 8))(v9, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067498);

  v12 = v5 + LocationTriggerView[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  v13 = swift_getEnumCaseMultiPayload();

  if (v13 == 1)
  {

    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v15 = sub_24BAA868C();
    (*(*(v15 - 8) + 8))(v12 + v14, v15);
  }

  v16 = LocationTriggerView[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067488);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_24BAA7E8C();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
  }

  v18 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_24B8FFD5C(*(v5 + LocationTriggerView[15]), *(v5 + LocationTriggerView[15] + 8));

  return MEMORY[0x2821FE8E8](v0, v18 + 8, v2 | 7);
}

uint64_t sub_24B9CB530(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for CreateLocationTriggerView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_24B9CB5D0()
{
  LocationTriggerView = type metadata accessor for CreateLocationTriggerView(0);
  v2 = *(*(LocationTriggerView - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(LocationTriggerView - 1) + 64);

  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067478);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24BAA8E5C();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
  }

  v8 = v5 + LocationTriggerView[8];

  v9 = (v5 + LocationTriggerView[11]);
  type metadata accessor for CreateLocationSelection();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v11 = sub_24BAA7E4C();
    (*(*(v11 - 8) + 8))(v9, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067498);

  v12 = v5 + LocationTriggerView[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  v13 = swift_getEnumCaseMultiPayload();

  if (v13 == 1)
  {

    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v15 = sub_24BAA868C();
    (*(*(v15 - 8) + 8))(v12 + v14, v15);
  }

  v16 = LocationTriggerView[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067488);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_24BAA7E8C();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
  }

  v18 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_24B8FFD5C(*(v5 + LocationTriggerView[15]), *(v5 + LocationTriggerView[15] + 8));

  return MEMORY[0x2821FE8E8](v0, v18 + 8, v2 | 7);
}

void sub_24B9CB978()
{
  v1 = *(type metadata accessor for CreateLocationTriggerView(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24B9C33C4(v3, v0 + v2, v4);
}

uint64_t sub_24B9CBA08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067688);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24B9CBA80()
{
  sub_24B8F45F4();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_24B9CC0B8(319, qword_27F067720, MEMORY[0x277CDDEE8], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24B9CBB50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_24BAA8BBC() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((((v11 + 16) & ~v11) + *(v6 + 64) + v12) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      if ((v7 & 0x80000000) != 0)
      {
        v20 = *(v6 + 48);

        return v20((a1 + v11 + 16) & ~v11, v7, v5);
      }

      else
      {
        v19 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_24B9CBDB4(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v23 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_24BAA8BBC() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((((v13 + 16) & ~v13) + *(v8 + 64) + v14) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_48:
              if (v16 == 2)
              {
                *(a1 + v15) = v18;
              }

              else
              {
                *(a1 + v15) = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v21;
        *(a1 + 2) = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v16)
    {
      *(a1 + v15) = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *(a1 + v15) = 0;
  }

  else if (v16)
  {
    *(a1 + v15) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if ((v9 & 0x80000000) != 0)
  {
    v22 = *(v23 + 56);

    v22((a1 + v13 + 16) & ~v13, a2, v9, v7);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = (a2 - 1);
  }
}

void sub_24B9CC0B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24B9CC138(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_24B9CC180(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B9CC1E8()
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

uint64_t sub_24B9CC28C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 3) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *&a1[v15];
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v12 > 0xFE)
      {
        v26 = &a1[v9 + 3] & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v26);
        }

        else
        {
          return (*(v7 + 48))((v26 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *a1;
        v24 = v23 >= 2;
        v25 = (v23 + 2147483646) & 0x7FFFFFFF;
        if (v24)
        {
          return (v25 + 1);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = a1[v15];
  if (!a1[v15])
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (a1[2] << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_24B9CC4B8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 3) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_51:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v13 > 0xFE)
  {
    v24 = &a1[v10 + 3] & ~v10;
    if (v8 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t sub_24B9CC7D0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0674F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064050);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0674E8);
  sub_24B9CA014();
  sub_24B8F5E3C();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064058);
  sub_24B8F384C(&qword_27F064060, &qword_27F064058);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B9CC9C4()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for CreateLocationTriggerView.SearchCellView() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*v2 + 64);

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[11], v1);
  v6 = v2[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067548);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24BAA8BBC();
    (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24B9CCB24()
{
  v1 = *(type metadata accessor for CreateLocationTriggerView.SearchCellView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return sub_24B9C590C(v2);
}

unint64_t sub_24B9CCBB4()
{
  result = qword_27F0677E0;
  if (!qword_27F0677E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0677D8);
    sub_24B9CCC6C();
    sub_24B8F384C(&qword_27F0639C8, &qword_27F0639D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0677E0);
  }

  return result;
}

unint64_t sub_24B9CCC6C()
{
  result = qword_27F0677E8;
  if (!qword_27F0677E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0677F0);
    sub_24B8F384C(&unk_27F069050, &qword_27F064F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0677E8);
  }

  return result;
}

uint64_t sub_24B9CCD64()
{
  sub_24BAA9A8C();

  return swift_getWitnessTable();
}

uint64_t sub_24B9CCDF0()
{
  swift_getTupleTypeMetadata2();
  sub_24BAA9DBC();
  swift_getWitnessTable();
  sub_24BAA92DC();
  sub_24BAA852C();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B9CCEE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24BAA89FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24B8F3208(v2, &v14 - v9, &qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24BAA8B9C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24BAAA2BC();
    v13 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t CompatibilityNoticePlatterView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067810);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - v6;
  v8 = type metadata accessor for CompatibilityNoticePlatterView();
  v9 = (v1 + *(v8 + 20));
  v10 = *v9;
  v11 = v9[1];
  LOBYTE(v9) = *(v9 + 16);
  v40 = v10;
  v41 = v11;
  v42 = v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  v13 = MEMORY[0x24C24FC10](&v39, v12);
  if (v39 != 1)
  {
    return (*(v5 + 56))(a1, 1, 1, v4);
  }

  v38 = a1;
  MEMORY[0x28223BE20](v13);
  *(&v37 - 2) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067818);
  sub_24B8F384C(&qword_27F067820, &qword_27F067818);
  sub_24BAA9C3C();
  v14 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067828) + 36)];
  v15 = *(sub_24BAA869C() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_24BAA8B2C();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #16.0 }

  *v14 = _Q0;
  v23 = [objc_opt_self() systemGray5Color];
  v24 = sub_24BAA973C();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8);
  *&v14[*(v25 + 52)] = v24;
  *&v14[*(v25 + 56)] = 256;
  v26 = sub_24BAA9D1C();
  v28 = v27;
  v29 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CC0) + 36)];
  *v29 = v26;
  v29[1] = v28;
  KeyPath = swift_getKeyPath();
  v31 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067830) + 36)];
  *v31 = KeyPath;
  v31[8] = 0;
  v32 = *(v2 + *(v8 + 24));
  v33 = swift_getKeyPath();
  v34 = &v7[*(v4 + 36)];
  *v34 = v33;
  v34[1] = v32;
  v35 = v38;
  sub_24B9CE5CC(v7, v38);
  (*(v5 + 56))(v35, 0, 1, v4);
}

uint64_t type metadata accessor for CompatibilityNoticePlatterView()
{
  result = qword_27F067838;
  if (!qword_27F067838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B9CD494@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_24BAA9CDC();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067888);
  return sub_24B9CD4EC(a1, a2 + *(v5 + 44));
}

uint64_t sub_24B9CD4EC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for CompatibilityNoticePlatterView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067890);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  sub_24B9CEB80(a1, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_24B9CED24(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067898);
  sub_24B9CEDE8();
  v25 = v12;
  sub_24BAA9A5C();
  v26 = sub_24BAA8AAC();
  v30 = 1;
  sub_24B9CDB54(a1, v34);
  memcpy(v31, v34, 0x141uLL);
  memcpy(v32, v34, 0x141uLL);
  sub_24B8F3208(v31, v33, &qword_27F0678C8);
  sub_24B8F35E4(v32, &qword_27F0678C8);
  memcpy(&v29[7], v31, 0x141uLL);
  v15 = v30;
  LOBYTE(a1) = sub_24BAA90BC();
  v16 = *(v7 + 16);
  v17 = v10;
  v27 = v10;
  v18 = v12;
  v19 = v6;
  v16(v10, v18, v6);
  v20 = v28;
  v16(v28, v17, v6);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0678D0) + 48);
  v22 = v26;
  v33[0] = v26;
  v33[1] = 0;
  LOBYTE(v33[2]) = v15;
  memcpy(&v33[2] + 1, v29, 0x148uLL);
  LOBYTE(v33[44]) = a1;
  memset(&v33[45], 0, 32);
  LOBYTE(v33[49]) = 1;
  memcpy(&v20[v21], v33, 0x189uLL);
  sub_24B8F3208(v33, v34, &qword_27F0678D8);
  v23 = *(v7 + 8);
  v23(v25, v19);
  v34[0] = v22;
  v34[1] = 0;
  LOBYTE(v34[2]) = v15;
  memcpy(&v34[2] + 1, v29, 0x148uLL);
  v35 = a1;
  v36 = 0u;
  v37 = 0u;
  v38 = 1;
  sub_24B8F35E4(v34, &qword_27F0678D8);
  return (v23)(v27, v19);
}

uint64_t sub_24B9CD8C0()
{
  sub_24BAA9D6C();
  sub_24BAA842C();
}

uint64_t sub_24B9CD93C()
{
  type metadata accessor for CompatibilityNoticePlatterView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  return sub_24BAA9B6C();
}

double sub_24B9CD9B4@<D0>(uint64_t a1@<X8>)
{
  sub_24BAA994C();
  sub_24BAA927C();
  sub_24BAA91AC();
  sub_24BAA921C();

  swift_getKeyPath();
  sub_24BAA8B0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0677F0);
  sub_24B9CCC6C();
  sub_24BAA957C();

  v2 = sub_24BAA989C();
  KeyPath = swift_getKeyPath();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0678B0) + 36));
  *v4 = KeyPath;
  v4[1] = v2;
  LOBYTE(v2) = sub_24BAA90BC();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067898) + 36);
  *v5 = v2;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_24B9CDB54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_24BAA8BCC();
  LOBYTE(v45[0]) = 1;
  sub_24B9CDF5C(a1, &v56);
  v25 = *&v57[48];
  v26 = *&v57[64];
  v27 = v57[80];
  v21 = v56;
  v22 = *v57;
  v23 = *&v57[16];
  v24 = *&v57[32];
  v28[0] = v56;
  v28[1] = *v57;
  v28[2] = *&v57[16];
  v28[3] = *&v57[32];
  v28[4] = *&v57[48];
  v28[5] = *&v57[64];
  v29 = v57[80];
  sub_24B8F3208(&v21, &v36, &qword_27F066798);
  sub_24B8F35E4(v28, &qword_27F066798);
  *&v20[55] = v24;
  *&v20[71] = v25;
  *&v20[87] = v26;
  *&v20[7] = v21;
  *&v20[23] = v22;
  v20[103] = v27;
  *&v20[39] = v23;
  v4 = v45[0];
  LOBYTE(a1) = sub_24BAA910C();
  sub_24BAA828C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_24BAA8BDC();
  LOBYTE(v45[0]) = 1;
  sub_24B9CE294(&v56);
  v32 = *&v57[16];
  v33 = *&v57[32];
  v30 = v56;
  v31 = *v57;
  v35[2] = *&v57[16];
  v35[3] = *&v57[32];
  v35[4] = *&v57[48];
  v35[1] = *v57;
  v34 = *&v57[48];
  v35[0] = v56;
  sub_24B8F3208(&v30, &v36, &qword_27F0678E0);
  sub_24B8F35E4(v35, &qword_27F0678E0);
  *&v19[23] = v31;
  *&v19[39] = v32;
  *&v19[55] = v33;
  *&v19[71] = v34;
  *&v19[7] = v30;
  v14 = v45[0];
  v15 = sub_24BAA910C();
  v36 = v3;
  v37[0] = v4;
  *&v37[49] = *&v20[48];
  *&v37[65] = *&v20[64];
  *&v37[81] = *&v20[80];
  *&v37[97] = *&v20[96];
  *&v37[1] = *v20;
  *&v37[17] = *&v20[16];
  *&v37[33] = *&v20[32];
  LOBYTE(v38) = a1;
  *(&v38 + 1) = v6;
  *v39 = v8;
  *&v39[8] = v10;
  *&v39[16] = v12;
  v39[24] = 0;
  __src[0] = v3;
  __src[1] = *v37;
  __src[4] = *&v37[48];
  __src[5] = *&v37[64];
  __src[6] = *&v37[80];
  __src[7] = *&v37[96];
  __src[2] = *&v37[16];
  __src[3] = *&v37[32];
  *(&__src[9] + 9) = *&v39[9];
  __src[8] = v38;
  __src[9] = *v39;
  v40 = v13;
  v41[0] = v14;
  *&v41[80] = *&v19[79];
  *&v41[65] = *&v19[64];
  *&v41[33] = *&v19[32];
  *&v41[49] = *&v19[48];
  *&v41[1] = *v19;
  *&v41[17] = *&v19[16];
  v41[88] = v15;
  v42 = 0u;
  v43 = 0u;
  v44 = 1;
  LOBYTE(__src[20]) = 1;
  memset(&__src[18], 0, 32);
  __src[13] = *&v41[16];
  __src[14] = *&v41[32];
  __src[15] = *&v41[48];
  __src[16] = *&v41[64];
  __src[17] = *&v41[80];
  __src[11] = v13;
  __src[12] = *v41;
  memcpy(a2, __src, 0x141uLL);
  v49 = *&v19[32];
  v50 = *&v19[48];
  *v51 = *&v19[64];
  v47 = *v19;
  v45[0] = v13;
  v45[1] = 0;
  v46 = v14;
  *&v51[15] = *&v19[79];
  v48 = *&v19[16];
  v52 = v15;
  v53 = 0u;
  v54 = 0u;
  v55 = 1;
  sub_24B8F3208(&v36, &v56, &qword_27F0678E8);
  sub_24B8F3208(&v40, &v56, &qword_27F0678F0);
  sub_24B8F35E4(v45, &qword_27F0678F0);
  *&v57[49] = *&v20[48];
  *&v57[65] = *&v20[64];
  v58 = *&v20[80];
  *&v57[1] = *v20;
  *&v57[17] = *&v20[16];
  v56 = v3;
  v57[0] = v4;
  v59 = *&v20[96];
  *&v57[33] = *&v20[32];
  v60 = a1;
  v61 = v6;
  v62 = v8;
  v63 = v10;
  v64 = v12;
  v65 = 0;
  return sub_24B8F35E4(&v56, &qword_27F0678E8);
}

uint64_t sub_24B9CDF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27[-v5 - 8];
  v7 = sub_24BAA8B9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v26 = sub_24BAA994C();
  sub_24B9CCEE8(v10);
  sub_24BAA8B8C();
  (*(v8 + 8))(v10, v7);
  v11 = sub_24BAA919C();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = sub_24BAA91FC();
  sub_24B8F35E4(v6, &qword_27F063CD8);
  KeyPath = swift_getKeyPath();
  v14 = *(a1 + *(type metadata accessor for CompatibilityNoticePlatterView() + 24));
  v15 = swift_getKeyPath();

  LOBYTE(v6) = sub_24BAA90EC();
  sub_24BAA828C();
  v48 = 0;
  v16 = v26;
  *&v28 = v26;
  *(&v28 + 1) = KeyPath;
  *&v29 = v12;
  *(&v29 + 1) = v15;
  *&v30 = v14;
  BYTE8(v30) = v6;
  HIDWORD(v30) = *(v49 + 3);
  *(&v30 + 9) = v49[0];
  *&v31 = v17;
  *(&v31 + 1) = v18;
  *&v32 = v19;
  *(&v32 + 1) = v20;
  v33 = 0;
  v35 = v29;
  v34 = v28;
  LOBYTE(v39) = 0;
  v38 = v32;
  v37 = v31;
  v36 = v30;
  v27[88] = 1;
  v21 = v29;
  *a2 = v28;
  *(a2 + 16) = v21;
  v22 = v36;
  v23 = v38;
  v24 = v39;
  *(a2 + 48) = v37;
  *(a2 + 64) = v23;
  *(a2 + 32) = v22;
  *(a2 + 80) = v24;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v40[0] = v16;
  v40[1] = KeyPath;
  v40[2] = v12;
  v40[3] = v15;
  v40[4] = v14;
  v41 = v6;
  *&v42[3] = *(v49 + 3);
  *v42 = v49[0];
  v43 = v17;
  v44 = v18;
  v45 = v19;
  v46 = v20;
  v47 = 0;
  sub_24B8F3208(&v28, v27, &qword_27F066810);
  return sub_24B8F35E4(v40, &qword_27F066810);
}

uint64_t sub_24B9CE294@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  sub_24B8F5E3C();
  v2 = sub_24BAA93CC();
  v4 = v3;
  v6 = v5;
  sub_24BAA915C();
  v7 = sub_24BAA939C();
  v9 = v8;
  v11 = v10;

  sub_24B900910(v2, v4, v6 & 1);

  sub_24BAA91AC();
  v12 = sub_24BAA932C();
  v32 = v13;
  v33 = v12;
  v31 = v14;
  v34 = v15;
  sub_24B900910(v7, v9, v11 & 1);

  sub_24BAA7C2C();
  v16 = sub_24BAA93CC();
  v18 = v17;
  LOBYTE(v9) = v19;
  sub_24BAA923C();
  v20 = sub_24BAA939C();
  v22 = v21;
  LOBYTE(v4) = v23;

  sub_24B900910(v16, v18, v9 & 1);

  sub_24BAA989C();
  v24 = sub_24BAA933C();
  v26 = v25;
  LOBYTE(v7) = v27;
  v29 = v28;

  sub_24B900910(v20, v22, v4 & 1);

  *a1 = v33;
  *(a1 + 8) = v32;
  *(a1 + 16) = v31 & 1;
  *(a1 + 24) = v34;
  *(a1 + 32) = 0x4014000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = v24;
  *(a1 + 56) = v26;
  *(a1 + 64) = v7 & 1;
  *(a1 + 72) = v29;
  sub_24B8F319C(v33, v32, v31 & 1);

  sub_24B8F319C(v24, v26, v7 & 1);

  sub_24B900910(v24, v26, v7 & 1);

  sub_24B900910(v33, v32, v31 & 1);
}

uint64_t sub_24B9CE5CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067810);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B9CE66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
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

uint64_t sub_24B9CE74C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
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

void sub_24B9CE814()
{
  sub_24B980E74();
  if (v0 <= 0x3F)
  {
    sub_24B9184E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24B9CE8A4()
{
  result = qword_27F067848;
  if (!qword_27F067848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067850);
    sub_24B9CEEA0(&qword_27F067858, &qword_27F067810, &unk_24BAB6BD0, sub_24B9CE954);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067848);
  }

  return result;
}

unint64_t sub_24B9CE954()
{
  result = qword_27F067860;
  if (!qword_27F067860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067830);
    sub_24B9CEA0C();
    sub_24B8F384C(&unk_27F069060, &qword_27F0658A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067860);
  }

  return result;
}

unint64_t sub_24B9CEA0C()
{
  result = qword_27F067868;
  if (!qword_27F067868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067828);
    sub_24B9CEAC4();
    sub_24B8F384C(&qword_27F067880, &qword_27F063CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067868);
  }

  return result;
}

unint64_t sub_24B9CEAC4()
{
  result = qword_27F067870;
  if (!qword_27F067870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067878);
    sub_24B8F384C(&qword_27F067820, &qword_27F067818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067870);
  }

  return result;
}

uint64_t sub_24B9CEB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompatibilityNoticePlatterView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B9CEBE4()
{
  v1 = *(type metadata accessor for CompatibilityNoticePlatterView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24BAA8B9C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B9CED24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompatibilityNoticePlatterView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B9CED88()
{
  type metadata accessor for CompatibilityNoticePlatterView();

  return sub_24B9CD8C0();
}

unint64_t sub_24B9CEDE8()
{
  result = qword_27F0678A0;
  if (!qword_27F0678A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067898);
    sub_24B9CEEA0(&qword_27F0678A8, &qword_27F0678B0, &unk_24BAB6D20, sub_24B9CEF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0678A0);
  }

  return result;
}

uint64_t sub_24B9CEEA0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_24B8F384C(&qword_27F0639C8, &qword_27F0639D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B9CEF50()
{
  result = qword_27F0678B8;
  if (!qword_27F0678B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0678C0);
    sub_24B9CCC6C();
    sub_24B903D54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0678B8);
  }

  return result;
}

uint64_t sub_24B9CF044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v57 = a3;
  v4 = sub_24BAA8A4C();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24BAA862C();
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0678F8);
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v10 = v46 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067900);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v60 = v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067908);
  v54 = *(v12 - 8);
  v55 = v12;
  MEMORY[0x28223BE20](v12);
  v52 = v46 - v13;
  if (a1)
  {

    sub_24B984444();
    v14 = sub_24B8D6B00();
    v15 = [v14 isCloudSyncActive];

    sub_24BAAA1BC();

    v16 = sub_24BAAA1AC();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v16;
    *(v17 + 24) = v18;
    v19 = v48;
    *(v17 + 32) = a1;
    *(v17 + 40) = v19;
    *(v17 + 48) = v15;

    v20 = sub_24BAAA1AC();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v18;
    v21[4] = a1;
    v21[5] = v19;
    v22 = sub_24BAA9B9C();
    MEMORY[0x28223BE20](v22);
    v46[-6] = a1;
    v46[-5] = v19;
    v48 = v23;
    v46[-4] = v23;
    v46[-3] = v24;
    v46[1] = v24;
    LOBYTE(v45) = v25;
    BYTE1(v45) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067910);
    sub_24B8F384C(&qword_27F067918, &qword_27F067910);
    sub_24BAA92BC();
    sub_24BAA9D7C();
    v26 = sub_24B8F384C(&qword_27F067920, &qword_27F0678F8);
    v27 = sub_24B9D3CE0(&qword_27F064860, MEMORY[0x277CDDAB8]);
    v28 = v47;
    sub_24BAA96EC();
    (*(v50 + 8))(v8, v6);
    (*(v49 + 8))(v10, v28);
    v29 = v28;
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v45 = 0xE000000000000000;
    v61 = sub_24BAA7C2C();
    v62 = v30;
    sub_24B8F5E3C();
    v31 = sub_24BAA93CC();
    v33 = v32;
    v35 = v34;
    v61 = v29;
    v62 = v6;
    v63 = v26;
    v64 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v38 = v52;
    v37 = v53;
    v39 = v60;
    sub_24BAA951C();
    sub_24B900910(v31, v33, v35 & 1);

    (*(v51 + 8))(v39, v37);
    v41 = v58;
    v40 = v59;
    v42 = v56;
    (*(v58 + 104))(v56, *MEMORY[0x277CDDDC0], v59);
    v61 = v37;
    v62 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v43 = v55;
    sub_24BAA964C();

    (*(v41 + 8))(v42, v40);
    return (*(v54 + 8))(v38, v43);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9D3CE0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9CF7C4@<X0>(uint64_t a1@<X2>, char a2@<W4>, _BYTE *a3@<X8>)
{
  if (a1)
  {

    v5 = sub_24B991DAC();

    *a3 = v5 & a2 & 1;
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9D3CE0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9CF878(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *a1;
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9D3CE0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);

    sub_24BAA814C();
    sub_24BAA816C();

    sub_24B984444();
    sub_24B8DB0A8(v4);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9D3CE0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9CF9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v82 = a6;
  v76 = a5;
  v75 = a4;
  v74 = a3;
  v77 = a2;
  v86 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067928);
  v88 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v85 = v73 - v12;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067930);
  MEMORY[0x28223BE20](v80);
  v81 = v73 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067938);
  v14 = MEMORY[0x28223BE20](v79);
  v84 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v78 = v73 - v17;
  MEMORY[0x28223BE20](v16);
  v91 = v73 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F069000);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v73 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067940);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v83 = v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  if (a1)
  {
    v27 = v73 - v26;

    sub_24B984444();
    v28 = sub_24B8D6B00();
    v29 = [v28 isCloudSyncActive];

    v89 = v8;
    v90 = v27;
    v87 = v11;
    if (v29)
    {
      v30 = (*(v20 + 56))(v27, 1, 1, v19);
    }

    else
    {
      sub_24B9D02C4(&v92);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F069010);
      sub_24B9D383C();
      sub_24BAA9C4C();
      (*(v20 + 32))(v27, v22, v19);
      v30 = (*(v20 + 56))(v27, 0, 1, v19);
    }

    v73[1] = v73;
    MEMORY[0x28223BE20](v30);
    v31 = v77;
    v73[-6] = a1;
    v73[-5] = v31;
    v32 = v75;
    v73[-4] = v74;
    v73[-3] = v32;
    LOBYTE(v73[-2]) = v76 & 1;
    v33 = *(a1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_availabilityStatusFooter + 8);
    v92 = *(a1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_availabilityStatusFooter);
    v93 = v33;
    sub_24B8F5E3C();

    v34 = sub_24BAA93CC();
    v36 = v35;
    v38 = v37;
    sub_24BAA927C();
    v39 = sub_24BAA939C();
    v41 = v40;
    v43 = v42;

    sub_24B900910(v34, v36, v38 & 1);

    sub_24BAA989C();
    v44 = sub_24BAA933C();
    v46 = v45;
    v48 = v47;
    v50 = v49;

    sub_24B900910(v39, v41, v43 & 1);

    KeyPath = swift_getKeyPath();
    v92 = v44;
    v93 = v46;
    v94 = v48 & 1;
    v95 = v50;
    v96 = KeyPath;
    v97 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F069070);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065898);
    sub_24B9D3B40();
    sub_24B9546F4();
    v52 = v81;
    sub_24BAA9C4C();
    v53 = swift_getKeyPath();
    v54 = swift_allocObject();
    v55 = v82;
    *(v54 + 16) = (v82 & 1) == 0;
    v56 = (v52 + *(v80 + 36));
    *v56 = v53;
    v56[1] = sub_24B9D3D90;
    v56[2] = v54;
    v57 = v55 & 1;
    if (v55)
    {
      v58 = 1.0;
    }

    else
    {
      v58 = 0.55;
    }

    v59 = v78;
    sub_24B90294C(v52, v78, &qword_27F067930);
    *(v59 + *(v79 + 36)) = v58;
    v60 = v91;
    v61 = sub_24B90294C(v59, v91, &qword_27F067938);
    MEMORY[0x28223BE20](v61);
    LOBYTE(v73[-2]) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067968);
    sub_24B9D3DB0();
    v62 = v85;
    sub_24BAA9C3C();
    v63 = v83;
    sub_24B8F3208(v90, v83, &qword_27F067940);
    v64 = v84;
    sub_24B8F3208(v60, v84, &qword_27F067938);
    v66 = v87;
    v65 = v88;
    v67 = *(v88 + 16);
    v68 = v89;
    v67(v87, v62, v89);
    v69 = v86;
    sub_24B8F3208(v63, v86, &qword_27F067940);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067998);
    sub_24B8F3208(v64, v69 + *(v70 + 48), &qword_27F067938);
    v67((v69 + *(v70 + 64)), v66, v68);
    v71 = *(v65 + 8);
    v71(v62, v68);
    sub_24B8F35E4(v91, &qword_27F067938);
    sub_24B8F35E4(v90, &qword_27F067940);
    v71(v66, v68);
    sub_24B8F35E4(v64, &qword_27F067938);
    return sub_24B8F35E4(v63, &qword_27F067940);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9D3CE0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9D02C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  sub_24B8F5E3C();
  v2 = sub_24BAA93CC();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  KeyPath = swift_getKeyPath();
  v10 = sub_24BAA927C();
  v11 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = v11;
  *(a1 + 64) = v10;
  *(a1 + 72) = result;
  *(a1 + 80) = 1;
  return result;
}

uint64_t sub_24B9D040C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067960);
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  if (a1)
  {
    v10 = *(a1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_allowAvailabilityStatusPrompt + 8);
    v14[2] = *(a1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_allowAvailabilityStatusPrompt);
    v14[3] = v10;
    sub_24B8F5E3C();

    sub_24BAA9AFC();
    KeyPath = swift_getKeyPath();
    (*(v4 + 32))(v9, v6, v3);
    v12 = &v9[*(v7 + 36)];
    *v12 = KeyPath;
    *(v12 + 1) = 2;
    v12[16] = 0;
    sub_24B9D3BFC();
    sub_24BAA94DC();
    return sub_24B8F35E4(v9, &qword_27F067960);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9D3CE0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9D067C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_24BAA911C();
  sub_24BAA828C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  KeyPath = swift_getKeyPath();
  result = swift_allocObject();
  *(result + 16) = a1 ^ 1;
  v15 = 0.55;
  if (a1)
  {
    v15 = 1.0;
  }

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = 0;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = sub_24B9D4724;
  *(a2 + 64) = result;
  *(a2 + 72) = v15;
  return result;
}

uint64_t sub_24B9D0760@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0679A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  *v4 = sub_24BAA8BDC();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0679A8);
  sub_24B9D08D0(&v4[*(v5 + 44)]);
  v6 = sub_24BAA90CC();
  v7 = [objc_opt_self() currentDevice];
  [v7 userInterfaceIdiom];

  sub_24BAA828C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_24B90294C(v4, a1, &qword_27F0679A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0679B0);
  v17 = a1 + *(result + 36);
  *v17 = v6;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

uint64_t sub_24B9D08D0@<X0>(void *a1@<X8>)
{
  v66 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0679B8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v51 - v5;
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v80 = v6;
  v81 = v4;
  if (v8)
  {
    sub_24B9D4034(v121);
  }

  else
  {
    v9 = sub_24BAA8BCC();
    LOBYTE(v107[0]) = 0;
    sub_24B9D13E0(v121);
    v88 = v121[1];
    v89 = v121[2];
    v90 = v121[3];
    v91 = *&v121[4];
    v87 = v121[0];
    v94 = v121[2];
    v95 = v121[3];
    v96 = *&v121[4];
    v92 = v121[0];
    v93 = v121[1];
    sub_24B8F3208(&v87, v114, &qword_27F0679D8);
    sub_24B8F35E4(&v92, &qword_27F0679D8);
    *(&v85[1] + 7) = v88;
    *(&v85[2] + 7) = v89;
    *(&v85[3] + 7) = v90;
    *(&v85[4] + 7) = v91;
    *(v85 + 7) = v87;
    v10 = v107[0];
    v11 = sub_24BAA90AC();
    LOBYTE(v113[0]) = 1;
    sub_24BAA9D1C();
    sub_24BAA86BC();
    *&v86[55] = v114[23];
    *&v86[71] = v114[24];
    *&v86[87] = v114[25];
    *&v86[103] = v114[26];
    *&v86[7] = v114[20];
    *&v86[23] = v114[21];
    *&v86[39] = v114[22];
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v12 = v9;
    *&v82 = v9;
    *(&v82 + 1) = 0x3FF0000000000000;
    LOBYTE(v83[0]) = v10;
    *(v83 + 1) = v85[0];
    v83[4] = *(&v85[3] + 15);
    *(&v83[3] + 1) = v85[3];
    *(&v83[2] + 1) = v85[2];
    *(&v83[1] + 1) = v85[1];
    LOBYTE(v84[0]) = v11;
    *(&v84[1] + 8) = 0u;
    *(v84 + 8) = 0u;
    BYTE8(v84[2]) = 1;
    *(&v84[5] + 9) = *&v86[48];
    *(&v84[4] + 9) = *&v86[32];
    *(&v84[3] + 9) = *&v86[16];
    *(&v84[2] + 9) = *v86;
    *(&v84[9] + 1) = *&v86[111];
    *(&v84[8] + 9) = *&v86[96];
    *(&v84[7] + 9) = *&v86[80];
    *(&v84[6] + 9) = *&v86[64];
    v97[2] = v83[1];
    v97[3] = v83[2];
    v97[0] = v82;
    v97[1] = v83[0];
    v97[6] = v84[0];
    v97[7] = v84[1];
    v97[4] = v83[3];
    v97[5] = v83[4];
    v97[10] = v84[4];
    v97[11] = v84[5];
    v97[8] = v84[2];
    v97[9] = v84[3];
    v97[14] = v84[8];
    v97[15] = v84[9];
    v97[12] = v84[6];
    v97[13] = v84[7];
    *(&v107[2] + 1) = v85[1];
    *(&v107[3] + 1) = v85[2];
    *(&v107[4] + 1) = v85[3];
    v107[5] = *(&v85[3] + 15);
    *(&v107[1] + 1) = v85[0];
    *(&v107[6] + 8) = 0u;
    *(&v107[7] + 8) = 0u;
    *(&v107[11] + 9) = *&v86[48];
    *(&v107[10] + 9) = *&v86[32];
    v13 = v115;
    v14 = v116;
    v15 = v118;
    v78 = v119;
    v79 = v117;
    v77 = v120;
    LOBYTE(v112[0]) = 1;
    LOBYTE(v111[0]) = v116;
    LOBYTE(v110[0]) = v118;
    *&v107[0] = v12;
    *(&v107[0] + 1) = 0x3FF0000000000000;
    LOBYTE(v107[1]) = v10;
    LOBYTE(v107[6]) = v11;
    BYTE8(v107[8]) = 1;
    *(&v107[9] + 9) = *&v86[16];
    *(&v107[8] + 9) = *v86;
    *(&v107[15] + 1) = *&v86[111];
    *(&v107[14] + 9) = *&v86[96];
    *(&v107[13] + 9) = *&v86[80];
    *(&v107[12] + 9) = *&v86[64];
    sub_24B8F3208(&v82, v121, &qword_27F0679E0);
    sub_24B8F35E4(v107, &qword_27F0679E0);
    v114[12] = v97[12];
    v114[13] = v97[13];
    v114[14] = v97[14];
    v114[15] = v97[15];
    v114[8] = v97[8];
    v114[9] = v97[9];
    v114[10] = v97[10];
    v114[11] = v97[11];
    v114[4] = v97[4];
    v114[5] = v97[5];
    v114[6] = v97[6];
    v114[7] = v97[7];
    v114[0] = v97[0];
    v114[1] = v97[1];
    v114[2] = v97[2];
    v114[3] = v97[3];
    *&v114[16] = 0;
    BYTE8(v114[16]) = 1;
    *&v114[17] = v13;
    BYTE8(v114[17]) = v14;
    *&v114[18] = v79;
    BYTE8(v114[18]) = v15;
    v6 = v80;
    v4 = v81;
    *&v114[19] = v78;
    *(&v114[19] + 1) = v77;
    nullsub_1(v114);
    memcpy(v121, v114, 0x140uLL);
  }

  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v16 = sub_24BAA7C2C();
  v79 = v17;
  v18 = sub_24BAA7C2C();
  v77 = v19;
  v78 = v18;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v75 = v88;
  v76 = v87;
  v73 = *(&v89 + 1);
  v74 = v89;
  v100 = 1;
  v99 = BYTE8(v87);
  v98 = BYTE8(v88);
  *v6 = sub_24BAA8AAC();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0679C0);
  sub_24B9D16F4(&v6[*(v20 + 44)]);
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v69 = v92;
  v70 = v93;
  v71 = *(&v94 + 1);
  v72 = v94;
  v103 = 1;
  v102 = BYTE8(v92);
  v101 = BYTE8(v93);
  v21 = sub_24BAA7C2C();
  v67 = v22;
  v68 = v21;
  v65 = sub_24BAA7C2C();
  v62 = v23;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v60 = v82;
  v61 = *&v83[0];
  v63 = *(&v83[1] + 1);
  v64 = *&v83[1];
  v106 = 1;
  v105 = BYTE8(v82);
  v104 = BYTE8(v83[0]);
  v24 = sub_24BAA7C2C();
  v58 = v25;
  v59 = v24;
  v26 = sub_24BAA7C2C();
  v56 = v27;
  v57 = v26;
  memcpy(v97, v121, sizeof(v97));
  v28 = v6;
  v29 = v100;
  v30 = v99;
  v31 = v98;
  sub_24B8F3208(v28, v4, &qword_27F0679B8);
  v32 = v103;
  v33 = v102;
  v52 = v101;
  v53 = v106;
  v54 = v105;
  v55 = v104;
  memcpy(v107, v97, sizeof(v107));
  v34 = v66;
  memcpy(v66, v97, 0x140uLL);
  v34[40] = v16;
  v35 = v78;
  v34[41] = v79;
  v34[42] = v35;
  v36 = v76;
  v34[43] = v77;
  v34[44] = 0;
  *(v34 + 360) = v29;
  v34[46] = v36;
  *(v34 + 376) = v30;
  v37 = v74;
  v34[48] = v75;
  *(v34 + 392) = v31;
  v38 = v73;
  v34[50] = v37;
  v34[51] = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0679C8);
  sub_24B8F3208(v4, v34 + v39[20], &qword_27F0679B8);
  v40 = v34 + v39[24];
  *v40 = 0;
  v40[8] = v32;
  *(v40 + 9) = v110[0];
  *(v40 + 3) = *(v110 + 3);
  *(v40 + 2) = v69;
  v40[24] = v33;
  *(v40 + 25) = *v109;
  *(v40 + 7) = *&v109[3];
  *(v40 + 4) = v70;
  v40[40] = v52;
  *(v40 + 11) = *&v108[3];
  *(v40 + 41) = *v108;
  v41 = v71;
  *(v40 + 6) = v72;
  *(v40 + 7) = v41;
  v42 = (v34 + v39[28]);
  v43 = v67;
  *v42 = v68;
  v42[1] = v43;
  v44 = v62;
  v42[2] = v65;
  v42[3] = v44;
  v45 = v34 + v39[32];
  *v45 = 0;
  v45[8] = v53;
  *(v45 + 9) = v113[0];
  *(v45 + 3) = *(v113 + 3);
  *(v45 + 2) = v60;
  v45[24] = v54;
  *(v45 + 25) = v112[0];
  *(v45 + 7) = *(v112 + 3);
  *(v45 + 4) = v61;
  v45[40] = v55;
  *(v45 + 11) = *(v111 + 3);
  *(v45 + 41) = v111[0];
  v46 = v63;
  *(v45 + 6) = v64;
  *(v45 + 7) = v46;
  v47 = (v34 + v39[36]);
  v48 = v58;
  *v47 = v59;
  v47[1] = v48;
  v49 = v56;
  v47[2] = v57;
  v47[3] = v49;
  sub_24B8F3208(v107, v114, &qword_27F0679D0);

  sub_24B8F35E4(v80, &qword_27F0679B8);

  sub_24B8F35E4(v81, &qword_27F0679B8);

  memcpy(v114, v97, 0x140uLL);
  return sub_24B8F35E4(v114, &qword_27F0679D0);
}

uint64_t sub_24B9D13E0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v28 = sub_24BAA994C();
  v5 = sub_24BAA919C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_24BAA91FC();
  sub_24B8F35E4(v4, &qword_27F063CD8);
  v27 = sub_24BAA917C();

  KeyPath = swift_getKeyPath();
  v25 = sub_24BAA983C();
  v24 = swift_getKeyPath();
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v29 = sub_24BAA7C2C();
  v30 = v6;
  sub_24B8F5E3C();
  v7 = sub_24BAA93CC();
  v9 = v8;
  v11 = v10;
  sub_24BAA914C();
  sub_24BAA917C();

  v12 = sub_24BAA939C();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_24B900910(v7, v9, v11 & 1);

  LOBYTE(v9) = v16 & 1;
  LOBYTE(v29) = v16 & 1;
  v19 = v27;
  v21 = v25;
  v20 = KeyPath;
  *a1 = v28;
  *(a1 + 8) = v20;
  v22 = v24;
  *(a1 + 16) = v19;
  *(a1 + 24) = v22;
  *(a1 + 32) = v21;
  *(a1 + 40) = v12;
  *(a1 + 48) = v14;
  *(a1 + 56) = v9;
  *(a1 + 64) = v18;

  sub_24B8F319C(v12, v14, v9);

  sub_24B900910(v12, v14, v9);
}

uint64_t sub_24B9D16F4@<X0>(void *a1@<X8>)
{
  v47 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0679E8);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v40[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0679F0);
  v6 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v46 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v40[-v10];
  MEMORY[0x28223BE20](v9);
  v45 = &v40[-v12];
  v13 = sub_24BAA9D1C();
  v43 = v14;
  v44 = v13;
  v42 = sub_24BAA8BCC();
  LOBYTE(v54[0]) = 0;
  sub_24B9D1B64(v49);
  memcpy(v51, v49, 0x279uLL);
  memcpy(v52, v49, sizeof(v52));
  sub_24B8F3208(v51, v48, &qword_27F0679F8);
  sub_24B8F35E4(v52, &qword_27F0679F8);
  memcpy(&v50[7], v51, 0x279uLL);
  v15 = v54[0];
  v41 = sub_24BAA90BC();
  v16 = [objc_opt_self() quaternarySystemFillColor];
  v17 = sub_24BAA973C();
  v18 = sub_24BAA90BC();
  v19 = &v4[*(v2 + 44)];
  v20 = *(sub_24BAA869C() + 20);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_24BAA8B2C();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  __asm { FMOV            V0.2D, #12.0 }

  *v19 = _Q0;
  *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8) + 36)] = 256;
  v28 = v43;
  *v4 = v44;
  *(v4 + 1) = v28;
  *(v4 + 2) = v42;
  *(v4 + 3) = 0;
  v4[32] = v15;
  memcpy(v4 + 33, v50, 0x280uLL);
  *(v4 + 673) = v48[0];
  *(v4 + 169) = *(v48 + 3);
  v4[680] = v41;
  *(v4 + 681) = v54[0];
  *(v4 + 171) = *(v54 + 3);
  *(v4 + 43) = 0u;
  *(v4 + 44) = 0u;
  v4[720] = 1;
  *(v4 + 721) = *v53;
  *(v4 + 181) = *&v53[3];
  *(v4 + 91) = v17;
  v4[736] = v18;
  sub_24BAA9D1C();
  sub_24BAA86BC();
  sub_24B90294C(v4, v11, &qword_27F0679E8);
  v29 = &v11[*(v6 + 44)];
  v30 = v49[5];
  v29[4] = v49[4];
  v29[5] = v30;
  v29[6] = v49[6];
  v31 = v49[1];
  *v29 = v49[0];
  v29[1] = v31;
  v32 = v49[3];
  v29[2] = v49[2];
  v29[3] = v32;
  v33 = v45;
  sub_24B90294C(v11, v45, &qword_27F0679F0);
  v34 = v46;
  sub_24B8F3208(v33, v46, &qword_27F0679F0);
  v35 = v47;
  *v47 = 0;
  *(v35 + 8) = 0;
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067A00);
  sub_24B8F3208(v34, v36 + *(v37 + 48), &qword_27F0679F0);
  v38 = v36 + *(v37 + 64);
  *v38 = 0;
  *(v38 + 8) = 0;
  sub_24B8F35E4(v33, &qword_27F0679F0);
  return sub_24B8F35E4(v34, &qword_27F0679F0);
}

uint64_t sub_24B9D1B64@<X0>(void *a1@<X8>)
{
  v53 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v1 - 8);
  v46 = &v45 - v2;
  v63 = sub_24BAA8AAC();
  LOBYTE(v129[0]) = 1;
  sub_24B9D26B8(&v142);
  v72 = *&v143[16];
  v73[0] = *&v143[32];
  *(v73 + 9) = *&v143[41];
  v71 = *v143;
  v70 = v142;
  v74[2] = *&v143[16];
  v75[0] = *&v143[32];
  *(v75 + 9) = *&v143[41];
  v74[1] = *v143;
  v74[0] = v142;
  sub_24B8F3208(&v70, v107, &qword_27F067A08);
  sub_24B8F35E4(v74, &qword_27F067A08);
  *(&v69[1] + 7) = v71;
  *(&v69[2] + 7) = v72;
  *(&v69[3] + 7) = v73[0];
  v69[4] = *(v73 + 9);
  *(v69 + 7) = v70;
  v57 = LOBYTE(v129[0]);
  v62 = sub_24BAA90DC();
  sub_24BAA828C();
  v60 = v4;
  v61 = v3;
  v58 = v6;
  v59 = v5;
  v56 = sub_24BAA8AAC();
  LOBYTE(v129[0]) = 1;
  sub_24B9D285C(&v142);
  v84 = *&v143[80];
  v85 = *&v143[96];
  v86 = *&v143[112];
  v80 = *&v143[16];
  v81 = *&v143[32];
  v83 = *&v143[64];
  v82 = *&v143[48];
  v79 = *v143;
  v78 = v142;
  v87[6] = *&v143[80];
  v87[7] = *&v143[96];
  v87[8] = *&v143[112];
  v87[2] = *&v143[16];
  v87[3] = *&v143[32];
  v87[5] = *&v143[64];
  v87[4] = *&v143[48];
  v87[1] = *v143;
  v87[0] = v142;
  sub_24B8F3208(&v78, v107, &qword_27F067A10);
  sub_24B8F35E4(v87, &qword_27F067A10);
  *(&v68[5] + 7) = v83;
  *(&v68[6] + 7) = v84;
  *(&v68[7] + 7) = v85;
  *(&v68[8] + 7) = v86;
  *(&v68[1] + 7) = v79;
  *(&v68[2] + 7) = v80;
  *(&v68[3] + 7) = v81;
  *(&v68[4] + 7) = v82;
  *(v68 + 7) = v78;
  v54 = LOBYTE(v129[0]);
  v55 = sub_24BAA90DC();
  sub_24BAA828C();
  v51 = v8;
  v52 = v7;
  v49 = v10;
  v50 = v9;
  v48 = sub_24BAA8AAC();
  LOBYTE(v129[0]) = 1;
  sub_24B9D29F0(&v142);
  v97 = *&v143[112];
  v98 = *&v143[128];
  v93 = *&v143[48];
  v94 = *&v143[64];
  v96 = *&v143[96];
  v95 = *&v143[80];
  v89 = v142;
  v90 = *v143;
  v92 = *&v143[32];
  v91 = *&v143[16];
  v100[8] = *&v143[112];
  v100[9] = *&v143[128];
  v100[4] = *&v143[48];
  v100[5] = *&v143[64];
  v100[7] = *&v143[96];
  v100[6] = *&v143[80];
  v100[0] = v142;
  v100[1] = *v143;
  v99 = v143[144];
  v101 = v143[144];
  v100[3] = *&v143[32];
  v100[2] = *&v143[16];
  sub_24B8F3208(&v89, v107, &qword_27F067A18);
  sub_24B8F35E4(v100, &qword_27F067A18);
  *&v67[119] = v96;
  *&v67[135] = v97;
  *&v67[151] = v98;
  *&v67[55] = v92;
  *&v67[71] = v93;
  *&v67[87] = v94;
  *&v67[103] = v95;
  *&v67[7] = v89;
  *&v67[23] = v90;
  v67[167] = v99;
  *&v67[39] = v91;
  v47 = LOBYTE(v129[0]);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  *&v142 = sub_24BAA7C2C();
  *(&v142 + 1) = v11;
  sub_24B8F5E3C();
  v12 = sub_24BAA93CC();
  v14 = v13;
  v16 = v15;
  sub_24BAA974C();
  v17 = sub_24BAA933C();
  v19 = v18;
  v21 = v20;

  sub_24B900910(v12, v14, v16 & 1);

  v22 = sub_24BAA919C();
  v23 = v46;
  (*(*(v22 - 8) + 56))(v46, 1, 1, v22);
  sub_24BAA91FC();
  sub_24B8F35E4(v23, &qword_27F063CD8);
  v24 = sub_24BAA939C();
  v45 = v25;
  v46 = v26;
  LOBYTE(v23) = v27;

  sub_24B900910(v17, v19, v21 & 1);

  v28 = sub_24BAA90CC();
  sub_24BAA828C();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  LOBYTE(v17) = v23 & 1;
  LOBYTE(v142) = v23 & 1;
  v102[0] = v63;
  v102[1] = 0;
  LOBYTE(v103[0]) = v57;
  *(&v103[1] + 1) = v69[1];
  *(&v103[2] + 1) = v69[2];
  *(&v103[3] + 1) = v69[3];
  *(&v103[4] + 1) = v69[4];
  *(v103 + 1) = v69[0];
  DWORD1(v103[5]) = *&v77[3];
  *(&v103[5] + 1) = *v77;
  BYTE8(v103[5]) = v62;
  HIDWORD(v103[5]) = *&v76[3];
  *(&v103[5] + 9) = *v76;
  *&v104 = v61;
  *(&v104 + 1) = v60;
  *&v105 = v59;
  *(&v105 + 1) = v58;
  v106 = 0;
  LOBYTE(v64[9]) = 0;
  v64[7] = v104;
  v64[8] = v105;
  v64[0] = v63;
  v64[1] = v103[0];
  v64[5] = v103[4];
  v64[6] = v103[5];
  v64[3] = v103[2];
  v64[4] = v103[3];
  v64[2] = v103[1];
  v107[0] = v56;
  v107[1] = 0;
  LOBYTE(v108[0]) = v54;
  *(&v108[3] + 1) = v68[3];
  *(&v108[2] + 1) = v68[2];
  *(&v108[6] + 1) = v68[6];
  *(&v108[7] + 1) = v68[7];
  *(&v108[8] + 1) = v68[8];
  *&v108[9] = *(&v68[8] + 15);
  *(&v108[4] + 1) = v68[4];
  *(&v108[5] + 1) = v68[5];
  *(v108 + 1) = v68[0];
  *(&v108[1] + 1) = v68[1];
  BYTE8(v108[9]) = v55;
  *(&v108[9] + 9) = *v88;
  HIDWORD(v108[9]) = *&v88[3];
  v38 = v51;
  v37 = v52;
  *&v109 = v52;
  *(&v109 + 1) = v51;
  v40 = v49;
  v39 = v50;
  *&v110 = v50;
  *(&v110 + 1) = v49;
  v111 = 0;
  *(&v64[16] + 8) = v108[6];
  *(&v64[17] + 8) = v108[7];
  *(&v64[20] + 8) = v109;
  *(&v64[21] + 8) = v110;
  *(&v64[18] + 8) = v108[8];
  *(&v64[19] + 8) = v108[9];
  BYTE8(v64[22]) = 0;
  *(&v64[15] + 8) = v108[5];
  *(&v64[11] + 8) = v108[1];
  *(&v64[12] + 8) = v108[2];
  *(&v64[13] + 8) = v108[3];
  *(&v64[14] + 8) = v108[4];
  *(&v64[9] + 8) = v56;
  *(&v64[10] + 8) = v108[0];
  v41 = v48;
  v112[0] = v48;
  v112[1] = 0;
  LOBYTE(v23) = v47;
  LOBYTE(v113[0]) = v47;
  *(&v113[7] + 1) = *&v67[112];
  *(&v113[8] + 1) = *&v67[128];
  *(&v113[9] + 1) = *&v67[144];
  *(&v113[10] + 1) = *&v67[160];
  *(&v113[3] + 1) = *&v67[48];
  *(&v113[4] + 1) = *&v67[64];
  *(&v113[5] + 1) = *&v67[80];
  *(&v113[6] + 1) = *&v67[96];
  *(v113 + 1) = *v67;
  *(&v113[1] + 1) = *&v67[16];
  *(&v113[2] + 1) = *&v67[32];
  *(&v64[33] + 9) = *(&v113[9] + 9);
  v64[31] = v113[7];
  v64[32] = v113[8];
  v64[27] = v113[3];
  v64[28] = v113[4];
  v64[29] = v113[5];
  v64[30] = v113[6];
  v64[23] = v48;
  v64[24] = v113[0];
  v64[25] = v113[1];
  v64[26] = v113[2];
  *&v114 = v24;
  v43 = v45;
  v42 = v46;
  *(&v114 + 1) = v45;
  LOBYTE(v115) = v17;
  *(&v115 + 1) = *v66;
  DWORD1(v115) = *&v66[3];
  *(&v115 + 1) = v46;
  LOBYTE(v116) = v28;
  *(&v116 + 1) = *v65;
  DWORD1(v116) = *&v65[3];
  *(&v116 + 1) = v29;
  *&v117[0] = v31;
  *(&v117[0] + 1) = v33;
  *&v117[1] = v35;
  BYTE8(v117[1]) = 0;
  *(&v64[38] + 9) = *(v117 + 9);
  v64[33] = v113[9];
  v64[35] = v114;
  v64[36] = v115;
  v64[37] = v116;
  v64[38] = v117[0];
  memcpy(v53, v64, 0x279uLL);
  v118[0] = v24;
  v118[1] = v43;
  v119 = v17;
  *v120 = *v66;
  *&v120[3] = *&v66[3];
  v121 = v42;
  v122 = v28;
  *v123 = *v65;
  *&v123[3] = *&v65[3];
  v124 = v30;
  v125 = v32;
  v126 = v34;
  v127 = v36;
  v128 = 0;
  sub_24B8F3208(v102, &v142, &qword_27F067A20);
  sub_24B8F3208(v107, &v142, &qword_27F067A28);
  sub_24B8F3208(v112, &v142, &qword_27F067A30);
  sub_24B8F3208(&v114, &v142, &qword_27F0654E8);
  sub_24B8F35E4(v118, &qword_27F0654E8);
  v138 = *&v67[112];
  v139 = *&v67[128];
  v140 = *&v67[144];
  v134 = *&v67[48];
  v135 = *&v67[64];
  v136 = *&v67[80];
  v137 = *&v67[96];
  v131 = *v67;
  v132 = *&v67[16];
  v129[0] = v41;
  v129[1] = 0;
  v130 = v23;
  v141 = *&v67[160];
  v133 = *&v67[32];
  sub_24B8F35E4(v129, &qword_27F067A30);
  *&v143[97] = v68[6];
  *&v143[113] = v68[7];
  *&v143[129] = v68[8];
  *&v143[33] = v68[2];
  *&v143[49] = v68[3];
  *&v143[65] = v68[4];
  *&v143[81] = v68[5];
  *&v143[1] = v68[0];
  v142 = v56;
  v143[0] = v54;
  *&v143[144] = *(&v68[8] + 15);
  *&v143[17] = v68[1];
  v144 = v55;
  *v145 = *v88;
  *&v145[3] = *&v88[3];
  v146 = v37;
  v147 = v38;
  v148 = v39;
  v149 = v40;
  v150 = 0;
  sub_24B8F35E4(&v142, &qword_27F067A28);
  v154 = v69[1];
  v155 = v69[2];
  v156 = v69[3];
  v157 = v69[4];
  v151[0] = v63;
  v151[1] = 0;
  v152 = v57;
  v153 = v69[0];
  *v158 = *v77;
  *&v158[3] = *&v77[3];
  v159 = v62;
  *&v160[3] = *&v76[3];
  *v160 = *v76;
  v161 = v61;
  v162 = v60;
  v163 = v59;
  v164 = v58;
  v165 = 0;
  return sub_24B8F35E4(v151, &qword_27F067A20);
}

uint64_t sub_24B9D26B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24BAA975C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 104))(&v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], *MEMORY[0x277CE0EE0]);
  v5 = sub_24BAA98AC();
  KeyPath = swift_getKeyPath();
  sub_24BAA9D1C();
  sub_24BAA83BC();
  *&v18[0] = KeyPath;
  *(&v18[0] + 1) = v5;
  v7 = v15;
  v8 = v15;
  v9 = v16;
  v18[1] = v15;
  v18[2] = v16;
  v10 = v17;
  v18[3] = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = v10;
  v11 = v17;
  *a1 = v18[0];
  *(a1 + 16) = v7;
  v14[64] = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  v19[0] = KeyPath;
  v19[1] = v5;
  v20 = v8;
  v21 = v9;
  v22 = v11;
  sub_24B8F3208(v18, v14, &qword_27F067A40);
  return sub_24B8F35E4(v19, &qword_27F067A40);
}

uint64_t sub_24B9D285C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24BAA979C();
  KeyPath = swift_getKeyPath();
  sub_24BAA9DFC();
  v5 = v4;
  v7 = v6;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  *&v23[0] = KeyPath;
  *(&v23[0] + 1) = v2;
  v23[1] = xmmword_24BAB6DF0;
  v23[2] = 0x3FF0000000000000uLL;
  *&v24 = v5;
  *(&v24 + 1) = v7;
  v8 = v20;
  v9 = v21;
  v25 = xmmword_24BAB6E00;
  v26 = v20;
  v27 = v21;
  v28 = v22;
  *&v18[119] = v22;
  *&v18[87] = v20;
  *&v18[103] = v21;
  *&v18[71] = xmmword_24BAB6E00;
  v10 = v22;
  *&v18[55] = v24;
  *&v18[39] = 0x3FF0000000000000uLL;
  *&v18[23] = xmmword_24BAB6DF0;
  *&v18[7] = v23[0];
  v11 = *&v18[16];
  *(a1 + 9) = *v18;
  v12 = *&v18[80];
  *(a1 + 73) = *&v18[64];
  v13 = *&v18[32];
  *(a1 + 57) = *&v18[48];
  *(a1 + 41) = v13;
  *(a1 + 25) = v11;
  v14 = *&v18[96];
  v15 = *&v18[112];
  *(a1 + 136) = *&v18[127];
  *(a1 + 121) = v15;
  *(a1 + 105) = v14;
  v19 = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 89) = v12;
  v29[0] = KeyPath;
  v29[1] = v2;
  v30 = xmmword_24BAB6DF0;
  v31 = xmmword_24BAB6E10;
  v32 = v5;
  v33 = v7;
  v34 = xmmword_24BAB6E00;
  v35 = v8;
  v36 = v9;
  v37 = v10;
  sub_24B8F3208(v23, &v17, &qword_27F067A38);
  return sub_24B8F35E4(v29, &qword_27F067A38);
}

uint64_t sub_24B9D29F0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v41 - v3;
  v47 = sub_24BAA991C();
  v46 = sub_24BAA983C();
  KeyPath = swift_getKeyPath();
  v44 = sub_24BAA919C();
  v5 = *(v44 - 8);
  v43 = *(v5 + 56);
  v45 = v5 + 56;
  v43(v4, 1, 1, v44);
  v50 = sub_24BAA91FC();
  sub_24B8F35E4(v4, &qword_27F063CD8);
  v49 = swift_getKeyPath();
  v48 = sub_24BAA910C();
  sub_24BAA828C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  LOBYTE(v63) = 0;
  v63 = sub_24B9D406C();
  v64 = v14;
  sub_24B8F5E3C();
  v15 = sub_24BAA93CC();
  v17 = v16;
  v19 = v18;
  sub_24BAA983C();
  v20 = sub_24BAA933C();
  v41 = v22;
  v42 = v21;
  v24 = v23;

  sub_24B900910(v15, v17, v19 & 1);

  v43(v4, 1, 1, v44);
  sub_24BAA91FC();
  sub_24B8F35E4(v4, &qword_27F063CD8);
  v25 = v42;
  v26 = sub_24BAA939C();
  v28 = v27;
  LODWORD(v45) = v29;
  v31 = v30;

  sub_24B900910(v20, v25, v24 & 1);

  v32 = swift_getKeyPath();
  v55 = 1;
  v33 = v46;
  v34 = v47;
  *&v57 = v47;
  *(&v57 + 1) = KeyPath;
  *&v58 = v46;
  *(&v58 + 1) = v49;
  *&v59 = v50;
  BYTE8(v59) = v48;
  HIDWORD(v59) = *&v56[3];
  *(&v59 + 9) = *v56;
  *&v60 = v7;
  *(&v60 + 1) = v9;
  *&v61 = v11;
  *(&v61 + 1) = v13;
  v62 = 0;
  *&v54[23] = v58;
  *&v54[7] = v57;
  v54[87] = 0;
  *&v54[71] = v61;
  *&v54[55] = v60;
  *&v54[39] = v59;
  v35 = v45 & 1;
  v53 = v45 & 1;
  v52 = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  v36 = *v54;
  *(a1 + 25) = *&v54[16];
  *(a1 + 9) = v36;
  v37 = *&v54[32];
  v38 = *&v54[48];
  v39 = *&v54[64];
  *(a1 + 89) = *&v54[80];
  *(a1 + 73) = v39;
  *(a1 + 57) = v38;
  *(a1 + 41) = v37;
  *(a1 + 104) = v26;
  *(a1 + 112) = v28;
  *(a1 + 120) = v35;
  *(a1 + 128) = v31;
  *(a1 + 136) = v32;
  *(a1 + 144) = 1;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  sub_24B8F3208(&v57, &v63, &qword_27F063D08);
  sub_24B8F319C(v26, v28, v35);

  sub_24B900910(v26, v28, v35);

  v63 = v34;
  v64 = KeyPath;
  v65 = v33;
  v66 = v49;
  v67 = v50;
  v68 = v48;
  *v69 = *v56;
  *&v69[3] = *&v56[3];
  v70 = v7;
  v71 = v9;
  v72 = v11;
  v73 = v13;
  v74 = 0;
  return sub_24B8F35E4(&v63, &qword_27F063D08);
}

uint64_t sub_24B9D2E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v47 = a3;
  v9 = sub_24BAA922C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = a1;
  v86 = a2;
  sub_24B8F5E3C();

  v51 = sub_24BAA93CC();
  v52 = v13;
  v44 = v14;
  LOBYTE(a1) = v15;
  v46 = sub_24BAA928C();
  KeyPath = swift_getKeyPath();
  LOBYTE(a2) = a1 & 1;
  LOBYTE(v85) = a1 & 1;
  v49 = a1 & 1;
  v50 = sub_24BAA988C();
  v16 = swift_getKeyPath();
  v48 = v16;
  v85 = v47;
  v86 = a4;

  v17 = sub_24BAA93CC();
  v41 = v18;
  v42 = v17;
  v20 = v19;
  v43 = v21;
  sub_24BAA916C();
  (*(v10 + 104))(v12, *MEMORY[0x277CE0A10], v9);
  v47 = sub_24BAA925C();

  (*(v10 + 8))(v12, v9);
  v22 = swift_getKeyPath();
  LOBYTE(a4) = v20 & 1;
  LOBYTE(v85) = v20 & 1;
  v23 = sub_24BAA989C();
  v24 = swift_getKeyPath();
  v25 = v44;
  *&v64 = v51;
  *(&v64 + 1) = v44;
  LOBYTE(v65) = a2;
  *(&v65 + 1) = *v63;
  DWORD1(v65) = *&v63[3];
  *(&v65 + 1) = v52;
  LOWORD(v66) = 256;
  *(&v66 + 2) = v61;
  WORD3(v66) = v62;
  v27 = KeyPath;
  v26 = v46;
  *(&v66 + 1) = KeyPath;
  *&v67 = v46;
  *(&v67 + 1) = v16;
  v68 = v50;
  *&v57[0] = v50;
  v53 = v64;
  v54 = v65;
  v55 = v66;
  v56 = v67;
  v29 = v41;
  v28 = v42;
  *&v69 = v42;
  *(&v69 + 1) = v41;
  LOBYTE(v70) = a4;
  DWORD1(v70) = *&v60[3];
  *(&v70 + 1) = *v60;
  v30 = v43;
  *(&v70 + 1) = v43;
  LOWORD(v71) = 256;
  WORD3(v71) = v59;
  v31 = v58;
  *(&v71 + 2) = v58;
  v32 = v47;
  *(&v71 + 1) = v22;
  *&v72 = v47;
  *(&v72 + 1) = v24;
  v73 = v23;
  *(&v57[4] + 1) = v23;
  *(&v57[3] + 8) = v72;
  *(&v57[2] + 8) = v71;
  *(&v57[1] + 8) = v70;
  *(v57 + 8) = v69;
  v33 = v64;
  v34 = v65;
  v35 = v67;
  a5[2] = v66;
  a5[3] = v35;
  *a5 = v33;
  a5[1] = v34;
  v36 = v57[0];
  v37 = v57[1];
  v38 = v57[4];
  a5[7] = v57[3];
  a5[8] = v38;
  v39 = v57[2];
  a5[5] = v37;
  a5[6] = v39;
  a5[4] = v36;
  v74[0] = v28;
  v74[1] = v29;
  v75 = a4;
  *v76 = *v60;
  *&v76[3] = *&v60[3];
  v77 = v30;
  v78 = 256;
  v79 = v31;
  v80 = v59;
  v81 = v22;
  v82 = v32;
  v83 = v24;
  v84 = v23;
  sub_24B8F3208(&v64, &v85, &qword_27F067A90);
  sub_24B8F3208(&v69, &v85, &qword_27F067A90);
  sub_24B8F35E4(v74, &qword_27F067A90);
  v85 = v51;
  v86 = v25;
  v87 = v49;
  *v88 = *v63;
  *&v88[3] = *&v63[3];
  v89 = v52;
  v90 = 256;
  v91 = v61;
  v92 = v62;
  v93 = v27;
  v94 = v26;
  v95 = v48;
  v96 = v50;
  return sub_24B8F35E4(&v85, &qword_27F067A90);
}

double sub_24B9D321C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = sub_24BAA8BDC();
  v25 = 0;
  sub_24B9D2E38(v3, v4, v5, v6, &v15);
  v32 = v21;
  v33 = v22;
  v34 = v23;
  v28 = v17;
  v29 = v18;
  v30 = v19;
  v31 = v20;
  v26 = v15;
  v27 = v16;
  v35[6] = v21;
  v35[7] = v22;
  v35[8] = v23;
  v35[2] = v17;
  v35[3] = v18;
  v35[4] = v19;
  v35[5] = v20;
  v35[0] = v15;
  v35[1] = v16;
  sub_24B8F3208(&v26, &v14, &qword_27F067A88);
  sub_24B8F35E4(v35, &qword_27F067A88);
  *&v24[103] = v32;
  *&v24[87] = v31;
  *&v24[39] = v28;
  *&v24[23] = v27;
  *&v24[119] = v33;
  *&v24[135] = v34;
  *&v24[55] = v29;
  *&v24[71] = v30;
  *&v24[7] = v26;
  v8 = *&v24[112];
  *(a1 + 113) = *&v24[96];
  *(a1 + 129) = v8;
  *(a1 + 145) = *&v24[128];
  v9 = *&v24[48];
  *(a1 + 49) = *&v24[32];
  *(a1 + 65) = v9;
  v10 = *&v24[80];
  *(a1 + 81) = *&v24[64];
  *(a1 + 97) = v10;
  result = *v24;
  v12 = *&v24[16];
  *(a1 + 17) = *v24;
  v13 = v25;
  *a1 = v7;
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = v13;
  *(a1 + 160) = *&v24[143];
  *(a1 + 33) = v12;
  return result;
}

uint64_t sub_24B9D3398()
{
  sub_24BAA92EC();
  sub_24BAA92FC();
  sub_24BAA930C();
  sub_24BAA92FC();
  sub_24BAA930C();
  sub_24BAA92FC();
  sub_24BAA930C();
  sub_24BAA92FC();
  sub_24BAA930C();
  sub_24BAA92FC();
  sub_24BAA930C();
  return sub_24BAA930C();
}

double sub_24B9D34E4@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CGRectGetWidth(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetHeight(v14);
  sub_24BAA931C();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

void (*sub_24B9D35A8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24BAA822C();
  return sub_24B9D3630;
}

void sub_24B9D3630(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_24B9D367C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B9D4688();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24B9D36E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B9D4688();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24B9D3744(uint64_t a1)
{
  v2 = sub_24B9D4688();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t objectdestroyTm_11(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t sub_24B9D383C()
{
  result = qword_27F067948;
  if (!qword_27F067948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F069010);
    sub_24B9D38F4();
    sub_24B8F384C(&unk_27F069060, &qword_27F0658A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067948);
  }

  return result;
}

unint64_t sub_24B9D38F4()
{
  result = qword_27F069020;
  if (!qword_27F069020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066828);
    sub_24B9D39AC();
    sub_24B8F384C(&unk_27F069050, &qword_27F064F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069020);
  }

  return result;
}

unint64_t sub_24B9D39AC()
{
  result = qword_27F069030;
  if (!qword_27F069030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067950);
    sub_24B8F384C(&unk_27F069040, &unk_27F063278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069030);
  }

  return result;
}

uint64_t sub_24B9D3A74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24BAA892C();
  *a1 = result;
  return result;
}

uint64_t sub_24B9D3ACC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24BAA89AC();
  *a1 = result & 1;
  return result;
}

unint64_t sub_24B9D3B40()
{
  result = qword_27F067958;
  if (!qword_27F067958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F069070);
    sub_24B9D3BFC();
    sub_24B9D3CE0(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067958);
  }

  return result;
}

unint64_t sub_24B9D3BFC()
{
  result = qword_27F069080;
  if (!qword_27F069080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067960);
    sub_24B8F384C(&unk_27F069090, &qword_27F0639C0);
    sub_24B8F384C(&unk_27F069040, &unk_27F063278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069080);
  }

  return result;
}

uint64_t sub_24B9D3CE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B9D3D28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24BAA89AC();
  *a1 = result & 1;
  return result;
}

unint64_t sub_24B9D3DB0()
{
  result = qword_27F067970;
  if (!qword_27F067970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067968);
    sub_24B9D3E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067970);
  }

  return result;
}

unint64_t sub_24B9D3E3C()
{
  result = qword_27F067978;
  if (!qword_27F067978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067980);
    sub_24B9D3EF4();
    sub_24B8F384C(&qword_27F063F18, &qword_27F063F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067978);
  }

  return result;
}

unint64_t sub_24B9D3EF4()
{
  result = qword_27F069120;
  if (!qword_27F069120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067988);
    sub_24B9D3F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069120);
  }

  return result;
}

unint64_t sub_24B9D3F80()
{
  result = qword_27F067990;
  if (!qword_27F067990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067990);
  }

  return result;
}

uint64_t sub_24B9D3FDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24BAA892C();
  *a1 = result;
  return result;
}

double sub_24B9D4034(_OWORD *a1)
{
  result = 0.0;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_24B9D406C()
{
  if (qword_27F0630D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = xmmword_27F076FF0;

  v1 = v0;
  v2 = *(&v0 + 1);

  v3 = sub_24BA225EC(v2);
  v5 = v4;

  if (v5)
  {
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    sub_24BAA7C2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_24BAAD5B0;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_24B8F6A20();
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;
    v7 = sub_24BAA9FEC();

    return v7;
  }

  else
  {
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    return sub_24BAA7C2C();
  }
}

uint64_t sub_24B9D42FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067908);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067900);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0678F8);
  sub_24BAA862C();
  sub_24B8F384C(&qword_27F067920, &qword_27F0678F8);
  sub_24B9D3CE0(&qword_27F064860, MEMORY[0x277CDDAB8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24B9D4460()
{
  result = qword_27F067A48;
  if (!qword_27F067A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0679B0);
    sub_24B8F384C(&qword_27F067A50, &qword_27F0679A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067A48);
  }

  return result;
}

unint64_t sub_24B9D457C()
{
  result = qword_27F067A68;
  if (!qword_27F067A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067A68);
  }

  return result;
}

unint64_t sub_24B9D45D4()
{
  result = qword_27F067A70;
  if (!qword_27F067A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067A70);
  }

  return result;
}

unint64_t sub_24B9D462C()
{
  result = qword_27F067A78;
  if (!qword_27F067A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067A78);
  }

  return result;
}

unint64_t sub_24B9D4688()
{
  result = qword_27F067A80;
  if (!qword_27F067A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F067A80);
  }

  return result;
}

uint64_t AllowedAppsPickerView.init(modeUUID:appExceptionType:appExceptions:allowsTimeSensitive:isActive:tintColor:isOnboarding:onCommit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for AllowedAppsPickerView(0);
  v22 = v21[5];
  *(a9 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v23 = a9 + v21[6];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = (a9 + v21[7]);
  type metadata accessor for ActivityConfigViewModel();
  sub_24B9E0C70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *v24 = sub_24BAA86FC();
  v24[1] = v25;
  v26 = (a9 + v21[15]);
  v27 = MEMORY[0x277D84F90];
  v61 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063500);
  sub_24BAA99EC();
  *v26 = v59;
  v26[1] = v60;
  if (v27 >> 62 && sub_24BAAA52C())
  {
    v28 = sub_24B8F2E1C(MEMORY[0x277D84F90]);
  }

  else
  {
    v28 = MEMORY[0x277D84FA0];
  }

  v29 = (a9 + v21[16]);
  v61 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065568);
  sub_24BAA99EC();
  *v29 = v59;
  v29[1] = v60;
  if (v27 >> 62 && sub_24BAAA52C())
  {
    v30 = sub_24B8F2E1C(MEMORY[0x277D84F90]);
  }

  else
  {
    v30 = MEMORY[0x277D84FA0];
  }

  v31 = (a9 + v21[17]);
  v61 = v30;
  sub_24BAA99EC();
  *v31 = v59;
  v31[1] = v60;
  v32 = a9 + v21[18];
  LOBYTE(v61) = 0;
  sub_24BAA99EC();
  *v32 = v59;
  *(v32 + 1) = v60;
  v33 = a9 + v21[19];
  LOBYTE(v61) = 0;
  sub_24BAA99EC();
  *v33 = v59;
  *(v33 + 1) = v60;
  v34 = a9 + v21[21];
  LOBYTE(v61) = 0;
  sub_24BAA99EC();
  *v34 = v59;
  *(v34 + 1) = v60;
  v35 = a9 + v21[22];
  LOBYTE(v61) = 0;
  sub_24BAA99EC();
  *v35 = v59;
  *(v35 + 1) = v60;
  v36 = a9 + v21[23];
  LOBYTE(v61) = 0;
  sub_24BAA99EC();
  *v36 = v59;
  *(v36 + 1) = v60;
  v37 = a9 + v21[24];
  *v37 = sub_24B8FC66C;
  *(v37 + 1) = 0;
  v37[16] = 0;
  v38 = a9 + v21[25];
  *v38 = sub_24B91CCE8;
  *(v38 + 1) = 0;
  v38[16] = 0;
  v39 = (a9 + v21[8]);
  *v39 = a2;
  v39[1] = a3;
  v39[2] = a4;
  v40 = (a9 + v21[9]);
  *v40 = a5;
  v40[1] = a6;
  v40[2] = a7;

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120);
  MEMORY[0x24C24FC10](&v61, v41);
  v42 = (a9 + v21[20]);
  *v42 = v61;
  v42[1] = 0;
  v43 = a9 + v21[10];
  *v43 = a8;
  *(v43 + 1) = a10;
  v43[16] = a11 & 1;
  v44 = a9 + v21[11];
  *v44 = a12;
  *(v44 + 1) = a13;
  v44[16] = a14 & 1;
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0) - 8);
  v46 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v47 = (*(v45 + 64) + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  result = sub_24B90294C(a1, v48 + v46, &qword_27F0669D0);
  v50 = (v48 + v47);
  *v50 = a2;
  v50[1] = a3;
  v50[2] = a4;
  v51 = a9 + v21[26];
  *v51 = sub_24B9DFE5C;
  *(v51 + 1) = v48;
  v51[16] = 0;
  *(a9 + v21[12]) = a16 & 1;
  *(a9 + v21[13]) = a15;
  v52 = (a9 + v21[14]);
  *v52 = a17;
  v52[1] = a18;
  return result;
}

uint64_t sub_24B9D4CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  v142 = *(v3 - 8);
  v143 = *(v142 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v121[-v4];
  v6 = type metadata accessor for AllowedAppsPickerView(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v121[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067E28);
  MEMORY[0x28223BE20](v9);
  v11 = &v121[-v10];
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067E30);
  v12 = MEMORY[0x28223BE20](v145);
  v149 = &v121[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v144 = &v121[-v15];
  MEMORY[0x28223BE20](v14);
  v17 = &v121[-v16];
  v158 = type metadata accessor for AppExceptionsView(0);
  v159 = a1;
  v18 = *(a1 + v158[8]);
  v150 = v5;
  v147 = v11;
  v148 = v17;
  v146 = v9;
  v134 = v18;
  if (v18 == 2 || (v18 & 1) == 0)
  {
    sub_24BAA9D1C();
    sub_24BAA83BC();
    LOBYTE(v189[0]) = 1;
    LOBYTE(v165[0]) = v203;
    LOBYTE(v161) = v205;
    LOBYTE(v167) = 1;
    *v173 = 0;
    v173[8] = 1;
    *&v173[16] = v202;
    LOBYTE(v174) = v203;
    v175 = v204;
    v176 = v205;
    v180 = v206;
    LOBYTE(v183) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066628);
    sub_24B97A988();
    sub_24B97A9DC();
    sub_24BAA8D0C();
  }

  else
  {
    v20 = v158;
    v19 = v159;
    v21 = (v159 + v158[5]);
    v22 = *v21;
    v23 = *(v21 + 2);
    *v173 = v22;
    *&v173[16] = v23;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066408);
    MEMORY[0x24C24FC10](&v167, v24);
    if (!*(v19 + v20[9]))
    {
LABEL_24:
      type metadata accessor for ActivityConfigViewModel();
      sub_24B9E0C70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
      result = sub_24BAA86DC();
      __break(1u);
      return result;
    }

    v25 = v167;

    sub_24B984444();
    v26 = sub_24B8D7188();

    if (v26)
    {
      v27 = [v26 mode];

      v28 = [v27 semanticType];
    }

    else
    {
      v28 = 0;
    }

    sub_24BA85174(v25, v28, v26 == 0, v173);
    LOBYTE(v167) = 0;
    LOBYTE(v183) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066628);
    sub_24B97A988();
    sub_24B97A9DC();
    sub_24BAA8D0C();
    v5 = v150;
  }

  v30 = v158;
  v29 = v159;
  v31 = (v159 + v158[5]);
  v32 = *v31;
  v33 = v31[1];
  v34 = v31[2];
  v132 = v33;
  v133 = v32;
  *v173 = v32;
  *&v173[8] = v33;
  v131 = v34;
  *&v173[16] = v34;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066408);
  sub_24BAA9B8C();
  v156 = *(&v167 + 1);
  v157 = v167;
  v155 = v168;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B9E0C70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  v35 = sub_24BAA86FC();
  v140 = v36;
  v141 = v35;
  *&v167 = 0;
  type metadata accessor for DNDConfigurationType(0);
  sub_24BAA99EC();
  v153 = *&v173[8];
  v154 = *v173;
  v152 = sub_24BAA90AC();
  v199 = 1;
  v37 = (v29 + v30[9]);
  v38 = *v37;
  if (!*v37)
  {
    sub_24BAA86DC();
    __break(1u);
    goto LABEL_24;
  }

  v126 = v37[1];

  v151 = sub_24BAA813C();
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v137 = v209;
  v138 = v207;
  v135 = v212;
  v136 = v211;
  v196 = 1;
  v195 = v208;
  v194 = v210;

  v160 = v38;
  sub_24B984444();
  v39 = sub_24B8D7188();
  if (v39)
  {
    v40 = v39;
    v41 = [v39 mode];

    v42 = [v41 identifier];
    v5 = v150;
    sub_24BAA7E1C();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = sub_24BAA7E4C();
  (*(*(v44 - 8) + 56))(v5, v43, 1, v44);
  *v173 = v133;
  *&v173[8] = v132;
  *&v173[16] = v131;
  sub_24BAA9B8C();
  v132 = *(&v167 + 1);
  v133 = v167;
  v131 = v168;
  v45 = v158;
  v46 = v159;
  v47 = v159 + v158[6];
  *v173 = *v47;
  *&v173[8] = *(v47 + 8);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120);
  sub_24BAA9B8C();
  v128 = *(&v167 + 1);
  v129 = v167;
  v127 = v168;
  sub_24BAA86CC();
  swift_getKeyPath();
  sub_24BAA86EC();

  v125 = v192;
  v126 = v191;
  v124 = v193;
  v48 = (v46 + v45[7]);
  v49 = *v48;
  v50 = v48[1];
  LOBYTE(v48) = *(v48 + 16);
  *v173 = v49;
  *&v173[8] = v50;
  v173[16] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  sub_24BAA9B8C();
  v123 = *(&v167 + 1);
  v51 = v167;
  v122 = v168;

  v158 = sub_24B991A94();

  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v52 = v6[5];
  *(v8 + v52) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v53 = v8 + v6[6];
  *v53 = swift_getKeyPath();
  v53[8] = 0;
  v54 = (v8 + v6[7]);
  *v54 = sub_24BAA86FC();
  v54[1] = v55;
  v56 = (v8 + v6[15]);
  v57 = MEMORY[0x277D84F90];
  *&v167 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063500);
  sub_24BAA99EC();
  v58 = *&v173[8];
  *v56 = *v173;
  v56[1] = v58;
  v59 = v57 >> 62;
  if (v59 && sub_24BAAA52C())
  {
    v60 = sub_24B8F2E1C(MEMORY[0x277D84F90]);
  }

  else
  {
    v60 = MEMORY[0x277D84FA0];
  }

  v61 = v134;
  v62 = (v8 + v6[16]);
  *&v167 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065568);
  sub_24BAA99EC();
  v63 = *&v173[8];
  *v62 = *v173;
  v62[1] = v63;
  if (v59)
  {
    v66 = sub_24BAAA52C();
    v65 = v147;
    if (v66)
    {
      v64 = sub_24B8F2E1C(MEMORY[0x277D84F90]);
    }

    else
    {
      v64 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v64 = MEMORY[0x277D84FA0];
    v65 = v147;
  }

  LODWORD(v159) = v61 & 1;
  v67 = (v8 + v6[17]);
  *&v167 = v64;
  sub_24BAA99EC();
  v68 = *&v173[8];
  *v67 = *v173;
  v67[1] = v68;
  v69 = v8 + v6[18];
  LOBYTE(v167) = 0;
  sub_24BAA99EC();
  v70 = *&v173[8];
  *v69 = v173[0];
  *(v69 + 1) = v70;
  v71 = v8 + v6[19];
  LOBYTE(v167) = 0;
  sub_24BAA99EC();
  v72 = *&v173[8];
  *v71 = v173[0];
  *(v71 + 1) = v72;
  v73 = v8 + v6[21];
  LOBYTE(v167) = 0;
  sub_24BAA99EC();
  v74 = *&v173[8];
  *v73 = v173[0];
  *(v73 + 1) = v74;
  v75 = v8 + v6[22];
  LOBYTE(v167) = 0;
  sub_24BAA99EC();
  v76 = *&v173[8];
  *v75 = v173[0];
  *(v75 + 1) = v76;
  v77 = v8 + v6[23];
  LOBYTE(v167) = 0;
  sub_24BAA99EC();
  v78 = *&v173[8];
  *v77 = v173[0];
  *(v77 + 1) = v78;
  v79 = v8 + v6[24];
  *v79 = sub_24B8FC66C;
  *(v79 + 1) = 0;
  v79[16] = 0;
  v80 = v8 + v6[25];
  *v80 = sub_24B91CCE8;
  *(v80 + 1) = 0;
  v80[16] = 0;
  v81 = (v8 + v6[8]);
  v83 = v132;
  v82 = v133;
  *v81 = v133;
  v81[1] = v83;
  v84 = v131;
  v81[2] = v131;
  v85 = (v8 + v6[9]);
  v87 = v128;
  v86 = v129;
  *v85 = v129;
  v85[1] = v87;
  v88 = v127;
  v85[2] = v127;
  *v173 = v86;
  *&v173[8] = v87;
  *&v173[16] = v88;

  MEMORY[0x24C24FC10](&v167, v130);
  v89 = (v8 + v6[20]);
  *v89 = v167;
  v89[1] = 0;
  v90 = v8 + v6[10];
  v91 = v125;
  *v90 = v126;
  *(v90 + 1) = v91;
  v90[16] = v124;
  v92 = v8 + v6[11];
  v93 = v123;
  *v92 = v51;
  *(v92 + 1) = v93;
  v92[16] = v122;
  v94 = (*(v142 + 80) + 16) & ~*(v142 + 80);
  v95 = (v143 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
  v96 = swift_allocObject();
  sub_24B90294C(v150, v96 + v94, &qword_27F0669D0);
  v97 = (v96 + v95);
  *v97 = v82;
  v97[1] = v83;
  v97[2] = v84;
  v98 = v8 + v6[26];
  *v98 = sub_24B9E3CC8;
  *(v98 + 1) = v96;
  v98[16] = 0;
  LOBYTE(v83) = v159;
  *(v8 + v6[12]) = v159;
  *(v8 + v6[13]) = v158;
  v99 = (v8 + v6[14]);
  *v99 = nullsub_1;
  v99[1] = 0;
  LOBYTE(v96) = sub_24BAA90AC();
  sub_24B9E2114(v8, v65, type metadata accessor for AllowedAppsPickerView);
  v100 = v65 + *(v146 + 36);
  *v100 = v96;
  *(v100 + 8) = 0u;
  *(v100 + 24) = 0u;
  *(v100 + 40) = 1;
  LOBYTE(v96) = sub_24BAA90DC();
  v101 = v144;
  sub_24B90294C(v65, v144, &qword_27F067E28);
  v102 = &v101[*(v145 + 36)];
  *v102 = v96;
  *(v102 + 8) = 0u;
  *(v102 + 24) = 0u;
  v102[40] = 1;
  v103 = v148;
  sub_24B90294C(v101, v148, &qword_27F067E30);
  v163 = v215;
  v164[0] = v216[0];
  *(v164 + 9) = *(v216 + 9);
  v161 = v213;
  v162 = v214;
  LODWORD(v147) = v196;
  LODWORD(v150) = v195;
  LODWORD(v158) = v194;
  v104 = v149;
  sub_24B8F3208(v103, v149, &qword_27F067E30);
  v105 = v164[0];
  v165[2] = v163;
  v166[0] = v164[0];
  v106 = *(v164 + 9);
  *(v166 + 9) = *(v164 + 9);
  v108 = v161;
  v107 = v162;
  v165[0] = v161;
  v165[1] = v162;
  v109 = v139;
  v110 = v140;
  *(v139 + 32) = v163;
  *(v109 + 48) = v105;
  *(v109 + 57) = v106;
  *v109 = v108;
  *(v109 + 16) = v107;
  v111 = v141;
  *&v167 = v141;
  *(&v167 + 1) = v110;
  *&v168 = v157;
  *(&v168 + 1) = v156;
  *&v169 = v155;
  BYTE8(v169) = 1;
  BYTE9(v169) = v83;
  *(&v169 + 10) = v197;
  HIWORD(v169) = v198;
  *&v170 = v154;
  *(&v170 + 1) = v153;
  LOBYTE(v171[0]) = v152;
  *(v171 + 1) = *v200;
  DWORD1(v171[0]) = *&v200[3];
  *(v171 + 8) = 0u;
  *(&v171[1] + 8) = 0u;
  BYTE8(v171[2]) = 1;
  HIDWORD(v171[2]) = *&v201[3];
  *(&v171[2] + 9) = *v201;
  *&v172 = v151;
  *(&v172 + 1) = v160;
  v112 = v167;
  v113 = v168;
  v114 = v170;
  *(v109 + 112) = v169;
  *(v109 + 128) = v114;
  *(v109 + 80) = v112;
  *(v109 + 96) = v113;
  v115 = v171[0];
  v116 = v171[1];
  v117 = v172;
  *(v109 + 176) = v171[2];
  *(v109 + 192) = v117;
  *(v109 + 144) = v115;
  *(v109 + 160) = v116;
  *(v109 + 208) = 0;
  *(v109 + 216) = v147;
  *(v109 + 224) = v138;
  *(v109 + 232) = v150;
  *(v109 + 240) = v137;
  *(v109 + 248) = v158;
  v118 = v135;
  *(v109 + 256) = v136;
  *(v109 + 264) = v118;
  v119 = v109 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067E38) + 80);
  sub_24B8F3208(v104, v119, &qword_27F067E30);
  sub_24B8F3208(v165, v173, &qword_27F066648);
  sub_24B8F3208(&v167, v173, &qword_27F067E40);
  sub_24B8F35E4(v103, &qword_27F067E30);
  sub_24B8F35E4(v104, &qword_27F067E30);
  *v173 = v111;
  *&v173[8] = v110;
  *&v173[16] = v157;
  v174 = v156;
  v175 = v155;
  v176 = 1;
  v177 = v159;
  v178 = v197;
  v179 = v198;
  *&v180 = v154;
  *(&v180 + 1) = v153;
  v181 = v152;
  *v182 = *v200;
  *&v182[3] = *&v200[3];
  v184 = 0u;
  v183 = 0u;
  v185 = 1;
  *v186 = *v201;
  *&v186[3] = *&v201[3];
  v187 = v151;
  v188 = v160;
  sub_24B8F35E4(v173, &qword_27F067E40);
  v189[2] = v163;
  v190[0] = v164[0];
  *(v190 + 9) = *(v164 + 9);
  v189[0] = v161;
  v189[1] = v162;
  return sub_24B8F35E4(v189, &qword_27F066648);
}

uint64_t sub_24B9D5C8C(char *a1)
{
  v1 = *a1;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B9E0C70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA814C();
  sub_24BAA816C();

  sub_24B984444();
  sub_24B8D9640(v1);
}

uint64_t sub_24B9D5D40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24BAA89FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24B8F3208(v2, &v14 - v9, &unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24BAA82DC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24BAAA2BC();
    v13 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24B9D5F40@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24BAA89FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AllowedAppsPickerView(0);
  sub_24B8F3208(v1 + *(v10 + 20), v9, &qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24BAA8B9C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24BAAA2BC();
    v13 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24B9D6148()
{
  v1 = sub_24BAA89FC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for AllowedAppsPickerView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_24BAAA2BC();
    v7 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();
    sub_24B8FFD5C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_24B9D62A0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24BAA8BDC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067E10);
  sub_24BAA909C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067E18);
  sub_24B8F384C(&qword_27F067E20, &qword_27F067E18);
  return sub_24BAA829C();
}

uint64_t sub_24B9D6384()
{
  v1 = v0 + *(type metadata accessor for AllowedAppsPickerView(0) + 36);
  v8 = *v1;
  v9 = *(v1 + 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120);
  MEMORY[0x24C24FC10](&v7, v2);
  v6 = v0;

  v8 = sub_24B8F03FC(v3);
  sub_24B9DFF5C(sub_24B9E3744, &v5);

  return v8;
}

BOOL sub_24B9D6454()
{
  type metadata accessor for AllowedAppsPickerView(0);
  type metadata accessor for AppNameCache();
  sub_24B9E0C70(&qword_27F064828, type metadata accessor for AppNameCache);
  v0 = sub_24BAA82FC();
  type metadata accessor for InstalledApp();
  v1 = swift_dynamicCastClass();
  if (v1 && ((v2 = v1[5], v3 = v1[6], v1[3] == v2) ? (v4 = v1[4] == v3) : (v4 = 0), v4 || (sub_24BAAA78C() & 1) != 0))
  {
    swift_beginAccess();
    v5 = *(*(v0 + 16) + 16);

    if (v5 && (sub_24BA1575C(v2, v3), (v6 & 1) != 0))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      sub_24BA1301C(v2, v3);
    }
  }

  else
  {
  }

  v7 = sub_24BAA82FC();
  v8 = swift_dynamicCastClass();
  if (v8 && ((v9 = v8[5], v10 = v8[6], v8[3] == v9) ? (v11 = v8[4] == v10) : (v11 = 0), v11 || (sub_24BAAA78C() & 1) != 0))
  {
    swift_beginAccess();
    v12 = *(*(v7 + 16) + 16);

    if (v12 && (sub_24BA1575C(v9, v10), (v13 & 1) != 0))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      sub_24BA1301C(v9, v10);
    }
  }

  else
  {
  }

  sub_24B8F5E3C();
  v14 = sub_24BAAA45C();

  return v14 == -1;
}

uint64_t sub_24B9D6784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v14 - v9;
  sub_24B8F3208(a1, v14 - v9, &qword_27F0669D0);
  v14[1] = a2;
  v14[2] = a3;
  v14[3] = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066408);
  MEMORY[0x24C24FC10](v14, v11);
  v12 = v14[0];
  type metadata accessor for SuggestionsViewModel();
  swift_allocObject();
  return sub_24BA0EEF8(v10, v12);
}

uint64_t AllowedAppsPickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067AA8);
  MEMORY[0x28223BE20](v63);
  v64 = &v48 - v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067AB0);
  v50 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v49 = &v48 - v4;
  v5 = type metadata accessor for AllowedAppsPickerView(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v54 = v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067AB8);
  MEMORY[0x28223BE20](v58);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067AC0);
  v12 = *(v11 - 8);
  v59 = v11;
  v60 = v12;
  MEMORY[0x28223BE20](v11);
  v57 = &v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067AC8);
  v61 = *(v14 - 8);
  v62 = v14;
  MEMORY[0x28223BE20](v14);
  v67 = &v48 - v15;
  *v10 = sub_24BAA8BDC();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067AD0);
  sub_24B9D718C(v1, &v10[*(v16 + 44)]);
  v17 = *(v6 + 52);
  v55 = v6;
  v18 = (v1 + v17);
  v19 = *v18;
  v20 = v18[1];
  LOBYTE(v18) = *(v18 + 16);
  v68 = v19;
  v69 = v20;
  LOBYTE(v70) = v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  MEMORY[0x24C24FC10](&v72, v21);
  LOBYTE(v68) = v72;
  v56 = type metadata accessor for AllowedAppsPickerView;
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B9E217C(v1, v52, type metadata accessor for AllowedAppsPickerView);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = swift_allocObject();
  v53 = type metadata accessor for AllowedAppsPickerView;
  sub_24B9E2114(&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for AllowedAppsPickerView);
  v51 = sub_24B8F384C(&qword_27F067AD8, &qword_27F067AB8);
  v24 = v58;
  sub_24BAA96DC();

  sub_24B8F35E4(v10, &qword_27F067AB8);
  type metadata accessor for SuggestionsViewModel();
  sub_24B9E0C70(&qword_27F066380, type metadata accessor for SuggestionsViewModel);
  sub_24BAA82FC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v72 = v68;
  v25 = v1;
  v26 = v52;
  sub_24B9E217C(v2, v52, v56);
  v27 = swift_allocObject();
  sub_24B9E2114(v26, v27 + v22, v53);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067AE0);
  v68 = v24;
  v69 = MEMORY[0x277D839B0];
  v70 = v51;
  v71 = MEMORY[0x277D839C8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_24B9E0FF4();
  v31 = v59;
  v32 = v57;
  sub_24BAA96DC();

  v33 = (*(v60 + 8))(v32, v31);
  if (*(v25 + *(v55 + 56)) == 1)
  {
    MEMORY[0x28223BE20](v33);
    *(&v48 - 2) = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068AE0);
    v68 = v31;
    v69 = v28;
    v70 = OpaqueTypeConformance2;
    v71 = v30;
    v36 = swift_getOpaqueTypeConformance2();
    v37 = sub_24B8F384C(&qword_27F067AF8, &unk_27F068AE0);
    v38 = v49;
    v39 = v62;
    sub_24BAA96CC();
    v40 = v50;
    v41 = v65;
    (*(v50 + 16))(v64, v38, v65);
    swift_storeEnumTagMultiPayload();
    v68 = v39;
    v69 = v35;
    v70 = v36;
    v71 = v37;
    swift_getOpaqueTypeConformance2();
    sub_24BAA8D0C();
    (*(v40 + 8))(v38, v41);
    v42 = v61;
  }

  else
  {
    v43 = v61;
    v39 = v62;
    (*(v61 + 16))(v64, v67, v62);
    swift_storeEnumTagMultiPayload();
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068AE0);
    v68 = v31;
    v69 = v28;
    v70 = OpaqueTypeConformance2;
    v71 = v30;
    v45 = swift_getOpaqueTypeConformance2();
    v46 = sub_24B8F384C(&qword_27F067AF8, &unk_27F068AE0);
    v68 = v39;
    v69 = v44;
    v70 = v45;
    v71 = v46;
    swift_getOpaqueTypeConformance2();
    sub_24BAA8D0C();
    v42 = v43;
  }

  return (*(v42 + 8))(v67, v39);
}

uint64_t sub_24B9D718C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067B68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v93 = (v77 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067B70);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v95 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v94 = v77 - v9;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066430);
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v88 = v77 - v10;
  v85 = type metadata accessor for CompatibilityNoticePlatterView();
  v11 = MEMORY[0x28223BE20](v85);
  v87 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (v77 - v14);
  MEMORY[0x28223BE20](v13);
  v86 = v77 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066438);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v91 = v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v89 = v77 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067B78);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v98 = v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v77 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067B80);
  v27 = v26 - 8;
  v28 = MEMORY[0x28223BE20](v26);
  v97 = v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = v77 - v30;
  sub_24B9D7C98(v77 - v30);
  v32 = type metadata accessor for AllowedAppsPickerView(0);
  v33 = *(a1 + *(v32 + 48));
  KeyPath = swift_getKeyPath();
  v35 = *(v27 + 44);
  v96 = v31;
  v36 = &v31[v35];
  *&v31[v35] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v36[*(type metadata accessor for exceptionsPlatter(0) + 20)] = v33;
  v37 = sub_24BAA9D1C();
  v39 = v38;
  v40 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065610) + 36)];
  *v40 = v37;
  v40[1] = v39;
  if (v33)
  {
    (*(v4 + 56))(v25, 1, 1, v3);
LABEL_10:
    v71 = v96;
    v72 = v97;
    sub_24B8F3208(v96, v97, &qword_27F067B80);
    v73 = v98;
    sub_24B8F3208(v25, v98, &qword_27F067B78);
    v74 = v99;
    sub_24B8F3208(v72, v99, &qword_27F067B80);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067B90);
    sub_24B8F3208(v73, v74 + *(v75 + 48), &qword_27F067B78);
    sub_24B8F35E4(v25, &qword_27F067B78);
    sub_24B8F35E4(v71, &qword_27F067B80);
    sub_24B8F35E4(v73, &qword_27F067B78);
    return sub_24B8F35E4(v72, &qword_27F067B80);
  }

  v82 = v25;
  v83 = v4;
  v84 = v3;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v41 = v109;
  v42 = v111;
  v43 = v113;
  v108 = 1;
  v107 = v110;
  v106 = v112;
  if (*(a1 + *(v32 + 28)))
  {
    v78 = v114;

    v44 = sub_24B991F14();

    v81 = v41;
    v80 = v42;
    v79 = v43;
    if (v44)
    {
      type metadata accessor for ActivityConfigViewModel();
      sub_24B9E0C70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
      sub_24BAA86CC();
      swift_getKeyPath();
      sub_24BAA86EC();

      v45 = v103;
      v46 = v104;
      v47 = v105;

      v48 = sub_24B991A94();

      v77[1] = a1;
      if (!v48)
      {
        v48 = sub_24BAA974C();
      }

      *v15 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
      swift_storeEnumTagMultiPayload();
      v49 = v85;
      v50 = v15 + *(v85 + 20);
      *v50 = v45;
      *(v50 + 1) = v46;
      v50[16] = v47;
      *(v15 + *(v49 + 24)) = v48;
      v51 = v86;
      sub_24B9E2114(v15, v86, type metadata accessor for CompatibilityNoticePlatterView);
      sub_24BAA9D1C();
      sub_24BAA83BC();
      v52 = v115;
      v85 = v117;
      v53 = v119;
      v54 = v120;
      v102 = 1;
      v101 = v116;
      v100 = v118;
      v55 = v87;
      sub_24B9E217C(v51, v87, type metadata accessor for CompatibilityNoticePlatterView);
      v56 = v102;
      v57 = v101;
      v58 = v100;
      v59 = v88;
      sub_24B9E217C(v55, v88, type metadata accessor for CompatibilityNoticePlatterView);
      v60 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066478) + 48);
      *v60 = 0;
      *(v60 + 8) = v56;
      *(v60 + 16) = v52;
      *(v60 + 24) = v57;
      *(v60 + 32) = v85;
      *(v60 + 40) = v58;
      *(v60 + 48) = v53;
      *(v60 + 56) = v54;
      sub_24B9E21E4(v51);
      sub_24B9E21E4(v55);
      v61 = v89;
      sub_24B90294C(v59, v89, &qword_27F066430);
      (*(v90 + 56))(v61, 0, 1, v92);
    }

    else
    {
      v61 = v89;
      (*(v90 + 56))(v89, 1, 1, v92);
    }

    v62 = v94;
    sub_24B9D86C4(v94);
    v63 = v108;
    v64 = v107;
    v65 = v106;
    v66 = v91;
    sub_24B8F3208(v61, v91, &qword_27F066438);
    v67 = v95;
    sub_24B8F3208(v62, v95, &qword_27F067B70);
    v68 = v93;
    *v93 = 0;
    *(v68 + 8) = v63;
    *(v68 + 16) = v81;
    *(v68 + 24) = v64;
    *(v68 + 32) = v80;
    *(v68 + 40) = v65;
    v69 = v78;
    *(v68 + 48) = v79;
    *(v68 + 56) = v69;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067B88);
    sub_24B8F3208(v66, v68 + *(v70 + 48), &qword_27F066438);
    sub_24B8F3208(v67, v68 + *(v70 + 64), &qword_27F067B70);
    sub_24B8F35E4(v62, &qword_27F067B70);
    sub_24B8F35E4(v61, &qword_27F066438);
    sub_24B8F35E4(v67, &qword_27F067B70);
    sub_24B8F35E4(v66, &qword_27F066438);
    v25 = v82;
    sub_24B90294C(v68, v82, &qword_27F067B68);
    (*(v83 + 56))(v25, 0, 1, v84);
    goto LABEL_10;
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24B9E0C70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24B9D7C98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = type metadata accessor for AllowedAppsPickerView(0);
  v4 = *(v3 - 8);
  v65 = v3 - 8;
  v64 = v4;
  v71 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24BAA8DFC();
  MEMORY[0x28223BE20](v6);
  v63 = (&v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24BAA9C6C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067C00);
  MEMORY[0x28223BE20](v69);
  v13 = &v59 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067C08);
  MEMORY[0x28223BE20](v73);
  v72 = &v59 - v14;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067C10);
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v74 = &v59 - v15;
  v16 = sub_24BAA8B9C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B9D5F40(v19);
  v20 = sub_24BAA8B8C();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    v21 = 128.0;
  }

  else
  {
    v21 = 60.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C08);
  sub_24BAA9C7C();
  *(swift_allocObject() + 16) = xmmword_24BAAD5B0;
  *v11 = v21;
  *(v11 + 1) = 0x7FF0000000000000;
  (*(v9 + 104))(v11, *MEMORY[0x277CDF100], v8);
  sub_24BAA9C8C();
  v75 = v2;
  v76 = v21;
  sub_24BAA8BCC();
  LODWORD(v77) = 0;
  sub_24B9E0C70(&qword_27F065160, MEMORY[0x277CE0428]);
  sub_24BAAA85C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067C18);
  sub_24B8F384C(&qword_27F067C20, &qword_27F067C18);
  sub_24BAA9D8C();
  v22 = sub_24BAA90BC();
  v23 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067C28) + 36)];
  v61 = v13;
  *v23 = v22;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  v23[40] = 1;
  v24 = v2;
  v25 = v2;
  v26 = v70;
  v63 = type metadata accessor for AllowedAppsPickerView;
  sub_24B9E217C(v25, v70, type metadata accessor for AllowedAppsPickerView);
  v27 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v62 = *(v64 + 80);
  v28 = swift_allocObject();
  v29 = v26;
  v64 = type metadata accessor for AllowedAppsPickerView;
  sub_24B9E2114(v26, v28 + v27, type metadata accessor for AllowedAppsPickerView);
  v30 = &v13[*(v69 + 36)];
  *v30 = sub_24B9E22CC;
  v30[1] = v28;
  v30[2] = 0;
  v30[3] = 0;
  v31 = v65;
  v32 = v24 + *(v65 + 40);
  v33 = *v32;
  v34 = *(v32 + 16);
  v77 = v33;
  v78 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066408);
  MEMORY[0x24C24FC10](&v80, v35);
  sub_24B9E217C(v24, v29, type metadata accessor for AllowedAppsPickerView);
  v36 = swift_allocObject();
  sub_24B9E2114(v29, v36 + v27, type metadata accessor for AllowedAppsPickerView);
  type metadata accessor for DNDConfigurationType(0);
  sub_24B9E2390();
  sub_24B9E0C70(&qword_27F067C50, type metadata accessor for DNDConfigurationType);
  v37 = v72;
  v38 = v61;
  sub_24BAA96DC();

  sub_24B8F35E4(v38, &qword_27F067C00);
  type metadata accessor for AppIconCache();
  sub_24B9E0C70(&qword_27F0651D0, type metadata accessor for AppIconCache);
  v39 = sub_24BAA82FC();
  v40 = sub_24BAA813C();
  v41 = &v37[*(v73 + 36)];
  *v41 = v40;
  v41[1] = v39;
  v42 = *(v31 + 92);
  v60 = v24;
  v43 = (v24 + v42);
  v44 = *v43;
  v45 = *(v43 + 1);
  LOBYTE(v80) = v44;
  v81 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA9A1C();
  v46 = v70;
  sub_24B9E217C(v24, v70, v63);
  v47 = swift_allocObject();
  sub_24B9E2114(v46, v47 + v27, v64);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067C58);
  v57 = sub_24B9E2544();
  v58 = sub_24B9E2688();
  v49 = v73;
  v50 = v72;
  sub_24BAA968C();

  sub_24B8F35E4(v50, &qword_27F067C08);
  v51 = v60 + *(v31 + 96);
  v52 = *v51;
  v53 = *(v51 + 8);
  LOBYTE(v80) = v52;
  v81 = v53;
  sub_24BAA9A1C();
  *&v77 = v49;
  *(&v77 + 1) = v48;
  v78 = v57;
  v79 = v58;
  swift_getOpaqueTypeConformance2();
  v54 = v66;
  v55 = v74;
  sub_24BAA967C();

  return (*(v67 + 8))(v55, v54);
}

uint64_t sub_24B9D86C4@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067B98);
  v3 = MEMORY[0x28223BE20](v2);
  v67 = &v57[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v6 = &v57[-v5];
  v7 = type metadata accessor for AllowedAppsPickerView(0);
  v8 = *(v1 + *(v7 + 48));
  if (v8 == 1)
  {
    v9 = (v1 + *(v7 + 40));
    v10 = *v9;
    v11 = v9[1];
    LOBYTE(v9) = *(v9 + 16);
    *&v82 = v10;
    *(&v82 + 1) = v11;
    LOBYTE(v83[0]) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
    sub_24BAA9B8C();
    v13 = *(&v80 + 1);
    v12 = v80;
    v14 = v81[0];
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9E0C70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA86CC();
    swift_getKeyPath();
    sub_24BAA86EC();

    v13 = *(&v82 + 1);
    v12 = v82;
    v14 = v83[0];
  }

  v64 = v12;
  v65 = v13;
  v15 = sub_24BAA8AAC();
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = v13;
  *(v16 + 32) = v14;

  v17 = sub_24BAA8BDC();
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067BA0);
  v19 = v6 + v18[9];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = v6 + v18[10];
  *v20 = 0;
  v20[8] = 1;
  v21 = v6 + v18[11];
  *v21 = 0;
  v21[8] = 1;
  v22 = (v6 + v18[12]);
  *v22 = sub_24B9E22B4;
  v22[1] = v16;
  v23 = v6 + v18[13];
  *v23 = v15;
  v23[8] = 0;
  v24 = v6 + v18[14];
  *v24 = v17;
  v24[8] = 0;
  LOBYTE(v18) = sub_24BAA911C();
  sub_24BAA828C();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067BA8) + 36);
  *v33 = v18;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  LOBYTE(v18) = sub_24BAA90AC();
  v34 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067BB0) + 36);
  *v34 = v18;
  *(v34 + 8) = 0u;
  *(v34 + 24) = 0u;
  v34[40] = 1;
  KeyPath = swift_getKeyPath();
  v36 = (v6 + *(v2 + 36));
  *v36 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  *(v36 + *(type metadata accessor for exceptionsPlatter(0) + 20)) = v8;
  v37 = sub_24BAA9D1C();
  v39 = v38;
  v40 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065610) + 36));
  *v40 = v37;
  v40[1] = v39;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v61 = v85;
  v62 = v83[13];
  v59 = v88;
  v60 = v87;
  v72 = 1;
  v71 = v84;
  v70 = v86;
  v63 = sub_24BAA8AAC();
  v69 = 1;
  sub_24B9DF2E4(&v82);
  v75 = *&v83[2];
  v76 = *&v83[4];
  v77[0] = *&v83[6];
  *(v77 + 9) = *(&v83[7] + 1);
  v73 = v82;
  v74 = *v83;
  *(v79 + 9) = *(&v83[7] + 1);
  v78[2] = *&v83[2];
  v78[3] = *&v83[4];
  v79[0] = *&v83[6];
  v78[0] = v82;
  v78[1] = *v83;
  sub_24B8F3208(&v73, &v80, &qword_27F067BB8);
  sub_24B8F35E4(v78, &qword_27F067BB8);
  *(&v68[2] + 7) = v75;
  *(&v68[3] + 7) = v76;
  *(&v68[4] + 7) = v77[0];
  v68[5] = *(v77 + 9);
  *(v68 + 7) = v73;
  *(&v68[1] + 7) = v74;
  v58 = v69;
  v41 = v67;
  sub_24B8F3208(v6, v67, &qword_27F067B98);
  LOBYTE(v36) = v72;
  LOBYTE(v37) = v71;
  v42 = v70;
  v43 = v41;
  v44 = v66;
  sub_24B8F3208(v43, v66, &qword_27F067B98);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067BC0);
  v46 = v44 + *(v45 + 48);
  *v46 = 0;
  *(v46 + 8) = v36;
  v47 = v61;
  *(v46 + 16) = v62;
  *(v46 + 24) = v37;
  *(v46 + 32) = v47;
  *(v46 + 40) = v42;
  v48 = v59;
  *(v46 + 48) = v60;
  *(v46 + 56) = v48;
  v49 = *(v45 + 64);
  *&v81[17] = v68[1];
  *&v81[1] = v68[0];
  *&v81[33] = v68[2];
  *&v81[49] = v68[3];
  *&v81[65] = v68[4];
  v50 = v44 + v49;
  v51 = v63;
  v80 = v63;
  v52 = v58;
  v81[0] = v58;
  *&v81[81] = v68[5];
  sub_24B8F3208(&v80, &v82, &qword_27F067BC8);

  v53 = *&v81[64];
  *(v50 + 64) = *&v81[48];
  *(v50 + 80) = v53;
  *(v50 + 96) = *&v81[80];
  *(v50 + 112) = v81[96];
  v54 = *v81;
  *v50 = v80;
  *(v50 + 16) = v54;
  v55 = *&v81[32];
  *(v50 + 32) = *&v81[16];
  *(v50 + 48) = v55;
  sub_24B8F35E4(v6, &qword_27F067B98);
  *(&v83[4] + 1) = v68[2];
  *(&v83[6] + 1) = v68[3];
  *(&v83[8] + 1) = v68[4];
  *(&v83[10] + 1) = v68[5];
  *(v83 + 1) = v68[0];
  v82 = v51;
  LOBYTE(v83[0]) = v52;
  *(&v83[2] + 1) = v68[1];
  sub_24B8F35E4(&v82, &qword_27F067BC8);
  return sub_24B8F35E4(v67, &qword_27F067B98);
}

uint64_t sub_24B9D8D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for AllowedAppsPickerView(0);
  if (*(a3 + *(result + 48)) == 1)
  {
    v5 = result;
    v6 = sub_24B9D8DA0();
    return (*(a3 + *(v5 + 56)))(v6);
  }

  return result;
}

uint64_t sub_24B9D8DA0()
{
  if (sub_24B9D9208() == 1 && ((type metadata accessor for AllowedAppsPickerView(0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067B60), sub_24BAA99FC(), (v3 & 0xC000000000000001) == 0) ? (v0 = *(v3 + 16)) : (v0 = sub_24BAAA52C()), , v0) || (result = sub_24B9D9208()) == 0 && ((type metadata accessor for AllowedAppsPickerView(0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067B60), sub_24BAA99FC(), (v3 & 0xC000000000000001) == 0) ? (v2 = *(v3 + 16)) : (v2 = sub_24BAAA52C()), result = , v2))
  {
    sub_24BAA99FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120);
    MEMORY[0x24C24FC10](&v4);
    sub_24B9AE3D0(0, 0, v3);
    sub_24BAA9B6C();
  }

  return result;
}

uint64_t sub_24B9D8F94(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (sub_24B9D9208() == 1)
  {
    type metadata accessor for AllowedAppsPickerView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
    result = sub_24BAA99FC();
    if (v11)
    {
      return result;
    }

    v4 = *(v2 + 16);
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v12 = MEMORY[0x277D84F90];
      result = sub_24BAAA68C();
      v6 = 0;
      v7 = v2 + 48;
      while (v6 < *(v2 + 16))
      {
        ++v6;
        v7 += 32;

        sub_24BAAA66C();
        sub_24BAAA69C();
        sub_24BAAA6AC();
        result = sub_24BAAA67C();
        if (v4 == v6)
        {
          v5 = v12;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    goto LABEL_16;
  }

  result = sub_24B9D9208();
  if (!result)
  {
    type metadata accessor for AllowedAppsPickerView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
    result = sub_24BAA99FC();
    if ((v11 & 1) == 0)
    {
      v8 = *(v2 + 16);
      v5 = MEMORY[0x277D84F90];
      if (v8)
      {
        v13 = MEMORY[0x277D84F90];
        result = sub_24BAAA68C();
        v9 = 0;
        v10 = v2 + 48;
        while (v9 < *(v2 + 16))
        {
          ++v9;
          v10 += 32;

          sub_24BAAA66C();
          sub_24BAAA69C();
          sub_24BAAA6AC();
          result = sub_24BAAA67C();
          if (v8 == v9)
          {
            v5 = v13;
            goto LABEL_16;
          }
        }

        goto LABEL_19;
      }

LABEL_16:
      sub_24B8F154C(v5);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067B60);
      return sub_24BAA9A0C();
    }
  }

  return result;
}

uint64_t sub_24B9D9208()
{
  v1 = type metadata accessor for AllowedAppsPickerView(0);
  v2 = (v0 + *(v1 + 32));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v20 = *v2;
  v21 = v4;
  v22 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066408);
  MEMORY[0x24C24FC10](&v19);
  if (v19 != 2)
  {
    v20 = v3;
    v21 = v4;
    v22 = v5;
    MEMORY[0x24C24FC10](&v19, v6);
    return v19;
  }

  if (!*(v0 + *(v1 + 28)))
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9E0C70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  sub_24B984444();
  v7 = sub_24B8D7188();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 configuration];
    v10 = [v9 senderConfigurationType];

    if (v10 != 2)
    {

      sub_24B984444();
      v11 = sub_24B8D7188();
      if (v11)
      {
        v12 = v11;
        v13 = [v11 configuration];
        v14 = [v13 senderConfigurationType];

        return v14;
      }

      else
      {

        return 2;
      }
    }
  }

  else
  {
  }

  sub_24B984444();
  v16 = sub_24B8D7188();

  if (v16)
  {
    v17 = [v16 mode];

    v18 = [v17 semanticType];

    if (v18 == 5)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_24B9D94A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068AF0);
  MEMORY[0x28223BE20](v17[0]);
  v4 = v17 - v3;
  v5 = sub_24BAA8DCC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068FB0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  sub_24BAA8DAC();
  v17[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  sub_24BAA833C();
  sub_24BAA8DBC();
  v17[4] = a1;
  sub_24BAA833C();
  v13 = *(v17[0] + 48);
  v14 = *(v7 + 16);
  v14(v4, v12, v6);
  v14(&v4[v13], v10, v6);
  sub_24BAA8C2C();
  v15 = *(v7 + 8);
  v15(v10, v6);
  return (v15)(v12, v6);
}

uint64_t sub_24B9D9760(uint64_t a1)
{
  v2 = type metadata accessor for AllowedAppsPickerView(0);
  v3 = (a1 + v2[9]);
  v4 = v3[1];
  v5 = v3[2];
  *&v13 = *v3;
  *(&v13 + 1) = v4;
  v14 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120);
  MEMORY[0x24C24FC10](&v15);

  sub_24BAA9B6C();

  v6 = (a1 + v2[8]);
  v7 = *v6;
  v8 = *(v6 + 2);
  v13 = v7;
  v14 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066408);
  sub_24BAA9B6C();
  v9 = (a1 + v2[11]);
  v10 = *v9;
  v11 = v9[1];
  LOBYTE(v9) = *(v9 + 16);
  *&v13 = v10;
  *(&v13 + 1) = v11;
  LOBYTE(v14) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  sub_24BAA9B6C();
  type metadata accessor for SuggestionsViewModel();
  sub_24B9E0C70(&qword_27F066380, type metadata accessor for SuggestionsViewModel);
  sub_24BAA82FC();
  LOBYTE(v13) = 2;
  sub_24BA10758(&v13);
}

uint64_t sub_24B9D9948(uint64_t a1)
{
  v2 = type metadata accessor for AllowedAppsPickerView(0);
  v3 = (a1 + v2[8]);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v24 = *v3;
  *&v25 = v5;
  *(&v25 + 1) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066408);
  MEMORY[0x24C24FC10](&v23);
  if (v23 != 2)
  {
    goto LABEL_9;
  }

  if (!*(a1 + v2[7]))
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9E0C70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  sub_24B984444();
  v7 = sub_24B8D7188();

  if (!v7)
  {

    goto LABEL_7;
  }

  v8 = [v7 mode];

  v9 = [v8 semanticType];

  if (v9 != 5)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v10 = 1;
LABEL_8:
  v24 = v4;
  *&v25 = v5;
  *(&v25 + 1) = v6;
  v23 = v10;
  sub_24BAA9B6C();
LABEL_9:
  v11 = (a1 + v2[11]);
  v13 = *v11;
  v12 = v11[1];
  v14 = *(v11 + 16);
  if (*(a1 + v2[12]) == 1)
  {
    v24 = v13;
    *&v25 = v12;
    BYTE8(v25) = v14;
    LOBYTE(v23) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
    sub_24BAA9B6C();
    type metadata accessor for SuggestionsViewModel();
    sub_24B9E0C70(&qword_27F066380, type metadata accessor for SuggestionsViewModel);
    sub_24BAA82FC();
    v22 = 2;
    v15 = (a1 + v2[20]);
    v17 = *v15;
    v16 = v15[1];
    v24 = v17;
    *&v25 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648E8);
    sub_24BAA99FC();
    v18 = v23;
    v19 = (a1 + v2[9]);
    v24 = *v19;
    v25 = *(v19 + 1);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120);
    MEMORY[0x24C24FC10](&v23, v20);
    sub_24BA10938(&v22, v18, 0, 0, v23);
  }

  else
  {
    v24 = v13;
    *&v25 = v12;
    BYTE8(v25) = v14;
    LOBYTE(v23) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
    return sub_24BAA9B6C();
  }
}

uint64_t sub_24B9D9C8C(double a1)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  v2 = sub_24BAA9FDC();

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a1 < 9.22337204e18)
  {
    v4 = [v2 variantFittingPresentationWidth_];
    v5 = sub_24BAAA01C();

    return v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_24B9D9DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v102 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067D28);
  v103 = *(v5 - 8);
  v104 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v101 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v100 = v81 - v8;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067D30);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v92 = v81 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067D38);
  v90 = *(v91 - 8);
  v10 = MEMORY[0x28223BE20](v91);
  v89 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v88 = v81 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v87 = v81 - v15;
  MEMORY[0x28223BE20](v14);
  v86 = v81 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067D40);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v99 = v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v110 = v81 - v20;
  v95 = type metadata accessor for AllowedAppsPickerView(0);
  v21 = *(v95 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067D48);
  MEMORY[0x28223BE20](v93);
  v24 = v81 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067D50);
  v26 = *(v25 - 8);
  v107 = v25;
  v108 = v26;
  MEMORY[0x28223BE20](v25);
  v28 = v81 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067D58);
  v30 = v29 - 8;
  v31 = MEMORY[0x28223BE20](v29);
  v98 = v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = (v81 - v33);
  v105 = type metadata accessor for AllowedAppsPickerView;
  v106 = a1;
  v109 = v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B9E217C(a1, v109, type metadata accessor for AllowedAppsPickerView);
  v35 = *(v21 + 80);
  v36 = ((v35 + 16) & ~v35);
  v111 = v36 + v22;
  v37 = swift_allocObject();
  v94 = type metadata accessor for AllowedAppsPickerView;
  sub_24B9E2114(v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v37, type metadata accessor for AllowedAppsPickerView);
  v112 = a1;
  v113 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067D60);
  sub_24B9E2B50();
  sub_24BAA9A5C();
  v38 = sub_24B9E2C98();
  v39 = sub_24B979B48();
  v40 = v93;
  sub_24BAA945C();
  sub_24B8F35E4(v24, &qword_27F067D48);
  v114 = v40;
  v115 = &type metadata for addExceptionButtonStyle;
  v116 = v38;
  v117 = v39;
  v41 = 1;
  swift_getOpaqueTypeConformance2();
  v42 = v107;
  sub_24BAA94DC();
  v43 = v28;
  v44 = v106;
  v108[1](v43, v42);
  v45 = [objc_opt_self() defaultCenter];
  sub_24BAAA37C();

  v46 = v109;
  sub_24B9E217C(v44, v109, v105);
  v107 = v35;
  v47 = swift_allocObject();
  v105 = v36;
  sub_24B9E2114(v46, v36 + v47, v94);
  v48 = v95;
  v49 = *(v30 + 64);
  v108 = v34;
  v50 = (v34 + v49);
  *v50 = sub_24B9E2D50;
  v50[1] = v47;
  if (*(v44 + *(v48 + 48)) == 1)
  {
    v51 = v44 + *(v48 + 104);
    v52 = *(v51 + 8);
    v95 = *v51;
    v94 = v52;
    LODWORD(v93) = *(v51 + 16);
    v85 = type metadata accessor for SuggestionsViewModel();
    v84 = sub_24B9E0C70(&qword_27F066380, type metadata accessor for SuggestionsViewModel);
    sub_24BAA82FC();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v83 = type metadata accessor for AllowedAppsPickerView;
    v53 = v109;
    sub_24B9E217C(v44, v109, type metadata accessor for AllowedAppsPickerView);
    v54 = swift_allocObject();
    v82 = type metadata accessor for AllowedAppsPickerView;
    v55 = v105;
    sub_24B9E2114(v53, v105 + v54, type metadata accessor for AllowedAppsPickerView);
    v81[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067AE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0651C0);
    sub_24B8F384C(&qword_27F067DC8, &qword_27F067AE0);
    sub_24B8F384C(&qword_27F0651B8, &unk_27F0651C0);
    sub_24B9E2F4C();
    v56 = v86;
    sub_24BAA9C0C();
    sub_24BAA82FC();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();
    v44 = v106;

    sub_24B9E217C(v44, v53, v83);
    v57 = swift_allocObject();
    sub_24B9E2114(v53, v55 + v57, v82);
    v58 = v87;
    sub_24BAA9C0C();
    v59 = v90;
    v60 = *(v90 + 16);
    v61 = v88;
    v62 = v91;
    v60(v88, v56, v91);
    v63 = v89;
    v60(v89, v58, v62);
    v64 = v92;
    v60(v92, v61, v62);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067DD8);
    v60((v64 + *(v65 + 48)), v63, v62);
    v66 = *(v59 + 8);
    v66(v58, v62);
    v66(v56, v62);
    v66(v63, v62);
    v66(v61, v62);
    sub_24B90294C(v64, v110, &qword_27F067D30);
    v41 = 0;
  }

  v67 = v110;
  (*(v96 + 56))(v110, v41, 1, v97);
  v114 = sub_24B9D6384();
  swift_getKeyPath();
  v68 = v109;
  sub_24B9E217C(v44, v109, type metadata accessor for AllowedAppsPickerView);
  v69 = swift_allocObject();
  sub_24B9E2114(v68, v105 + v69, type metadata accessor for AllowedAppsPickerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067DA0);
  sub_24B8F384C(&qword_27F065198, &qword_27F063500);
  sub_24B9E0C70(&qword_27F063338, type metadata accessor for EventSource);
  sub_24B9E2E40();
  v70 = v100;
  sub_24BAA9BFC();
  v71 = v98;
  sub_24B8F3208(v108, v98, &qword_27F067D58);
  v72 = v99;
  sub_24B8F3208(v67, v99, &qword_27F067D40);
  v74 = v103;
  v73 = v104;
  v75 = *(v103 + 16);
  v76 = v101;
  v75(v101, v70, v104);
  v77 = v102;
  sub_24B8F3208(v71, v102, &qword_27F067D58);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067DC0);
  sub_24B8F3208(v72, v77 + *(v78 + 48), &qword_27F067D40);
  v75((v77 + *(v78 + 64)), v76, v73);
  v79 = *(v74 + 8);
  v79(v70, v73);
  sub_24B8F35E4(v110, &qword_27F067D40);
  sub_24B8F35E4(v108, &qword_27F067D58);
  v79(v76, v73);
  sub_24B8F35E4(v72, &qword_27F067D40);
  return sub_24B8F35E4(v71, &qword_27F067D58);
}

uint64_t sub_24B9DACBC(uint64_t a1)
{
  v2 = type metadata accessor for AllowedAppsPickerView(0);
  v3 = (a1 + v2[9]);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v23 = *v3;
  v24 = v5;
  v25 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120);
  MEMORY[0x24C24FC10](&v22);
  if (v22 >> 62)
  {
LABEL_24:
    v8 = sub_24BAAA52C();
  }

  else
  {
    v8 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 > 499)
  {
    v12 = v2[22];
    goto LABEL_29;
  }

  type metadata accessor for SuggestionsViewModel();
  sub_24B9E0C70(&qword_27F066380, type metadata accessor for SuggestionsViewModel);
  sub_24BAA82FC();
  v23 = v4;
  v24 = v5;
  v25 = v6;
  MEMORY[0x24C24FC10](&v22, v7);
  v7 = v22;
  v23 = MEMORY[0x277D84F90];
  v5 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 >> 62)
  {
    v9 = sub_24BAAA52C();
    if (v9)
    {
LABEL_6:
      v10 = 0;
      v6 = v7 & 0xC000000000000001;
      do
      {
        v11 = v10;
        while (1)
        {
          if (v6)
          {
            v4 = MEMORY[0x24C2506E0](v11, v7);
            v10 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_22;
            }
          }

          else
          {
            if (v11 >= *(v5 + 16))
            {
              goto LABEL_23;
            }

            v4 = *(v7 + 8 * v11 + 32);

            v10 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
LABEL_22:
              __break(1u);
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }
          }

          type metadata accessor for InstalledApp();
          if (swift_dynamicCastClass())
          {
            break;
          }

          ++v11;
          if (v10 == v9)
          {
            goto LABEL_26;
          }
        }

        MEMORY[0x24C2501C0]();
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v4 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_24BAAA14C();
        }

        sub_24BAAA16C();
      }

      while (v10 != v9);
    }
  }

  else
  {
    v9 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_6;
    }
  }

LABEL_26:

  v13 = sub_24BA105A8();

  if (v13 >> 62)
  {
    type metadata accessor for EventSource();

    v14 = sub_24BAAA6DC();
  }

  else
  {

    sub_24BAAA79C();
    type metadata accessor for EventSource();
    v14 = v13;
  }

  v15 = (a1 + v2[15]);
  v17 = *v15;
  v16 = v15[1];
  v23 = v17;
  v24 = v16;
  v22 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648E8);
  sub_24BAA9A0C();
  v12 = v2[21];
LABEL_29:
  v18 = (a1 + v12);
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v23) = v19;
  v24 = v20;
  LOBYTE(v22) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  return sub_24BAA9A0C();
}

__n128 sub_24B9DB05C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for AllowedAppsPickerView.AddAppButtonContent(0);
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067D78);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v26 - v12;
  v14 = sub_24B9D9C8C(a3);
  v16 = v15;
  v17 = *(a1 + *(type metadata accessor for AllowedAppsPickerView(0) + 52));
  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v18 = (v9 + v7[7]);
  *v18 = v14;
  v18[1] = v16;
  *(v9 + v7[8]) = v17;
  v19 = v9 + v7[9];
  *v19 = 0x404E000000000000;
  v19[8] = 0;
  v20 = v9 + v7[10];
  *v20 = 0x404E000000000000;
  v20[8] = 0;

  if (sub_24B9D6148())
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.55;
  }

  sub_24B9E2114(v9, v13, type metadata accessor for AllowedAppsPickerView.AddAppButtonContent);
  *&v13[*(v11 + 44)] = v21;
  sub_24BAA9D1C();
  sub_24BAA86BC();
  sub_24B90294C(v13, a2, &qword_27F067D78);
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067D60) + 36);
  v23 = v26[5];
  *(v22 + 64) = v26[4];
  *(v22 + 80) = v23;
  *(v22 + 96) = v26[6];
  v24 = v26[1];
  *v22 = v26[0];
  *(v22 + 16) = v24;
  result = v26[3];
  *(v22 + 32) = v26[2];
  *(v22 + 48) = result;
  return result;
}

uint64_t sub_24B9DB2C4()
{
  type metadata accessor for AllowedAppsPickerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  return sub_24BAA9A0C();
}

uint64_t sub_24B9DB334(uint64_t a1, char a2)
{
  if (sub_24B9D9208() == 1 && (type metadata accessor for AllowedAppsPickerView(0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38), sub_24BAA99FC(), v6 == 1) || (v4 = a2 ^ 1, !sub_24B9D9208()) && (type metadata accessor for AllowedAppsPickerView(0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38), sub_24BAA99FC(), v6 == 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067B60);
    sub_24BAA99FC();
    v4 = sub_24B914A68(a1, v6);
  }

  return v4 & 1;
}

uint64_t sub_24B9DB484(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24B9D9208();
  if (a1)
  {
    if (v5 == 1 || (result = sub_24B9D9208()) == 0)
    {
      type metadata accessor for AllowedAppsPickerView(0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067B60);
      sub_24BAA99FC();
      sub_24B8E5810(&v7, a3);

LABEL_12:
      sub_24BAA9A0C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
      return sub_24BAA9A0C();
    }
  }

  else if (v5 == 1 || (result = sub_24B9D9208()) == 0)
  {
    type metadata accessor for AllowedAppsPickerView(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067B60);
    sub_24BAA99FC();
    sub_24B9ACE5C(a3);

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_24B9DB760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v54 = a4;
  v55 = a5;
  v51 = a3;
  v9 = type metadata accessor for AllowedAppsPickerView(0);
  v52 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v53 = v10;
  v11 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  type metadata accessor for AppNameCache();
  sub_24B9E0C70(&qword_27F064828, type metadata accessor for AppNameCache);
  v13 = sub_24BAA82FC();
  v15 = v12[5];
  v14 = v12[6];
  v16 = v12[3] == v15 && v12[4] == v14;
  if (v16 || (sub_24BAAA78C() & 1) != 0)
  {
    swift_beginAccess();
    v17 = *(v13 + 16);
    v18 = *(v17 + 16);
    swift_retain_n();

    if (v18 && (v19 = sub_24BA1575C(v15, v14), (v20 & 1) != 0))
    {
      v21 = (*(v17 + 56) + 16 * v19);
      v15 = *v21;
      v22 = v21[1];
      swift_endAccess();
      v23 = v22;
    }

    else
    {
      swift_endAccess();
      sub_24BA1301C(v15, v14);
      v23 = v14;
    }

    v50 = v23;
  }

  else
  {

    v15 = v12[3];
    v50 = v12[4];
  }

  type metadata accessor for AppIconCache();
  sub_24B9E0C70(&qword_27F0651D0, type metadata accessor for AppIconCache);
  v24 = sub_24BAA86FC();
  v47 = v25;
  v48 = v24;
  KeyPath = swift_getKeyPath();
  v26 = sub_24B9D9208();
  if (sub_24B9D9208() == 1)
  {
    v27 = sub_24BAA983C();
  }

  else
  {
    v27 = sub_24BAA981C();
  }

  v49 = v27;
  if (v26 == 1)
  {
    v28 = 0xEF6C6C69662E6873;
  }

  else
  {
    v28 = 0xE90000000000006BLL;
  }

  if (v26 == 1)
  {
    v29 = 0x616C732E6C6C6562;
  }

  else
  {
    v29 = 0x72616D6B63656863;
  }

  v30 = sub_24B9DB334(v12, v51 & 1);
  sub_24B9E217C(a2, v11, type metadata accessor for AllowedAppsPickerView);
  v31 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v32 = v11;
  v33 = (v53 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  sub_24B9E2114(v32, v34 + v31, type metadata accessor for AllowedAppsPickerView);
  *(v34 + v33) = v12;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0651C0);
  v36 = a6 + v35[9];
  *v36 = v12;
  *(v36 + 1) = 0x404E000000000000;
  v37 = v47;
  *(v36 + 2) = v48;
  *(v36 + 3) = v37;
  *(v36 + 4) = KeyPath;
  v36[40] = 0;
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v38 = (a6 + v35[10]);
  v39 = v49;
  v40 = v50;
  *v38 = v15;
  v38[1] = v40;
  v41 = (a6 + v35[11]);
  *v41 = v29;
  v41[1] = v28;
  *(a6 + v35[12]) = v39;
  v42 = a6 + v35[13];
  v58 = v30 & 1;

  result = sub_24BAA99EC();
  v44 = v57;
  *v42 = v56;
  *(v42 + 1) = v44;
  v45 = (a6 + v35[14]);
  *v45 = v55;
  v45[1] = v34;
  return result;
}