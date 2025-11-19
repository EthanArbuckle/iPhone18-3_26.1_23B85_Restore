uint64_t sub_24B0B630C@<X0>(double (**a1)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *(type metadata accessor for Annotation() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ShareReceivedMessageView(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_24B0B4C04(v1 + v4, v7, a1);
}

uint64_t sub_24B0B63E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B0B6440@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareReceivedMessageView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24B0B4324(v4, a1);
}

uint64_t objectdestroy_48Tm()
{
  v1 = type metadata accessor for Annotation();
  v2 = *(v1 - 1);
  v41 = *(v2 + 80);
  v3 = (v41 + 16) & ~v41;
  v4 = *(v2 + 64);
  v5 = type metadata accessor for ShareReceivedMessageView(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = v4 + v6;
  v42 = *(*(v5 - 8) + 64);
  v43 = v0;
  v8 = v0 + v3;

  v9 = v1[7];
  v10 = sub_24B2D24A4();
  v39 = *(v10 - 8);
  v37 = *(v39 + 48);
  if (!v37(v8 + v9, 1, v10))
  {
    (*(v39 + 8))(v8 + v9, v10);
  }

  v11 = v3 + v7;
  v12 = v8 + v1[9];
  type metadata accessor for PlatterWithIcon.Icon(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v38 = v10;
  switch(EnumCaseMultiPayload)
  {
    case 2:
      if (*(v12 + 8))
      {
      }

      break;
    case 1:

      break;
    case 0:
      v14 = sub_24B2D1494();
      v15 = *(v14 - 8);
      if (!(*(v15 + 48))(v12, 1, v14))
      {
        (*(v15 + 8))(v12, v14);
      }

      break;
  }

  v16 = v11 & ~v6;
  v17 = v1[10];
  v18 = sub_24B2D1BB4();
  v19 = *(v18 - 8);
  v36 = *(v19 + 48);
  if (!v36(v8 + v17, 1, v18))
  {
    (*(v19 + 8))(v8 + v17, v18);
  }

  v35 = v19;
  v40 = v16;
  v20 = v43 + v16;

  v21 = type metadata accessor for Friend();
  v22 = *(v21 + 20);
  v23 = sub_24B2D1704();
  (*(*(v23 - 8) + 8))(v20 + v22, v23);

  v24 = v20 + *(v5 + 20);
  v25 = type metadata accessor for ShareReceivedMessageView.State.Active(0);
  if (!(*(*(v25 - 8) + 48))(v24, 3, v25))
  {
    if (!(*(v2 + 48))(v24, 2, v1))
    {

      v26 = v1[7];
      if (!v37(v24 + v26, 1, v38))
      {
        (*(v39 + 8))(v24 + v26, v38);
      }

      v27 = v24 + v1[9];
      v28 = swift_getEnumCaseMultiPayload();
      switch(v28)
      {
        case 2:
          if (*(v27 + 8))
          {
          }

          break;
        case 1:

          break;
        case 0:
          v29 = sub_24B2D1494();
          v30 = *(v29 - 8);
          if (!(*(v30 + 48))(v27, 1, v29))
          {
            (*(v30 + 8))(v27, v29);
          }

          break;
      }

      v31 = v1[10];
      if (!v36(v24 + v31, 1, v18))
      {
        (*(v35 + 8))(v24 + v31, v18);
      }
    }

    v32 = v24 + *(v25 + 20);
    v33 = type metadata accessor for DirectionsState();
    if (!(*(*(v33 - 8) + 48))(v32, 2, v33))
    {
      (*(v39 + 8))(v32 + *(v33 + 24), v38);
    }
  }

  return MEMORY[0x2821FE8E8](v43, v40 + v42, v41 | v6 | 7);
}

double sub_24B0B6B70@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Annotation() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ShareReceivedMessageView(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_24B0B4DFC(v1 + v4, v7, a1);
}

unint64_t sub_24B0B6C6C()
{
  result = qword_27EFCA468;
  if (!qword_27EFCA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA468);
  }

  return result;
}

uint64_t sub_24B0B6CC0()
{
  v1 = type metadata accessor for ShareReceivedMessageView(0);
  v2 = *(v1 - 8);
  return (*(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + *(v1 + 24) + 16))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
}

uint64_t sub_24B0B6D48(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ShareReceivedMessageView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24B0B6DBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA498);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B0B6E2C()
{
  result = qword_27EFCA4A8;
  if (!qword_27EFCA4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA3D0);
    sub_24B0B6EB8();
    sub_24AFF1B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA4A8);
  }

  return result;
}

unint64_t sub_24B0B6EB8()
{
  result = qword_27EFCA4B0;
  if (!qword_27EFCA4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA4B8);
    sub_24B0B5A0C();
    sub_24B0B5C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA4B0);
  }

  return result;
}

uint64_t sub_24B0B6F4C@<X0>(void *a1@<X8>)
{
  v54 = a1;
  v2 = sub_24B2D50F4();
  v3 = *(v2 - 8);
  v55 = v2;
  v56 = v3;
  MEMORY[0x28223BE20](v2);
  v57 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_24B2D4A54();
  v5 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0x4020000000000000;
  v8 = type metadata accessor for ShareReceivedMessageViewActionsModule.Style(0);
  v9 = *(v8 + 20);
  v10 = v8;
  v45 = v8;
  v11 = (a1 + v9);
  v12 = sub_24B2D4B04();
  v13 = MEMORY[0x277CE0F78];
  v14 = MEMORY[0x277CE0F60];
  v11[3] = MEMORY[0x277CE0F78];
  v11[4] = v14;
  v15 = v13;
  v16 = v14;
  *v11 = v12;
  sub_24B2D4394();
  sub_24B2D43D4();
  v47 = sub_24B2D4424();

  v48 = *MEMORY[0x277CE0EE0];
  v17 = *(v5 + 104);
  v49 = v5 + 104;
  v51 = v17;
  v17(v7);
  v18 = sub_24B2D4B74();
  v62 = v15;
  v63 = v16;
  v61[0] = v18;
  v19 = type metadata accessor for CustomControlStyle(0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8D48);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9390);
  v53 = v20;
  sub_24B2D1AA4();
  v21 = v19[8];
  v60 = xmmword_24B2E4560;
  *(v11 + v21) = xmmword_24B2E4560;
  v52 = type metadata accessor for CustomControlStyle.BackgroundSize(0);
  swift_storeEnumTagMultiPayload();
  v22 = v19[6];
  v59 = *MEMORY[0x277CE13D8];
  v46 = *(v3 + 104);
  v23 = v55;
  v46(v11 + v22);
  v11[5] = v47;
  *(v11 + v19[9]) = 2;
  *(v11 + v19[10]) = 1;
  v24 = v11 + v19[11];
  *v24 = 0x4059000000000000;
  v24[8] = 0;
  v25 = *(v10 + 24);
  v26 = v54;
  v27 = (v54 + v25);
  v28 = sub_24B2D4B04();
  v27[3] = MEMORY[0x277CE0F78];
  v27[4] = MEMORY[0x277CE0F60];
  *v27 = v28;
  sub_24B2D4394();
  sub_24B2D43D4();
  v29 = sub_24B2D4424();

  v51(v7, v48, v50);
  v30 = sub_24B2D4B74();
  v31 = MEMORY[0x277CE0F60];
  v63 = MEMORY[0x277CE0F60];
  v32 = MEMORY[0x277CE0F78];
  v62 = MEMORY[0x277CE0F78];
  v61[0] = v30;
  sub_24B2D1AA4();
  *(v27 + v19[8]) = v60;
  swift_storeEnumTagMultiPayload();
  v33 = v46;
  (v46)(v27 + v19[6], v59, v23);
  v27[5] = v29;
  *(v27 + v19[9]) = 2;
  *(v27 + v19[10]) = 1;
  v34 = v27 + v19[11];
  *v34 = 0x4059000000000000;
  v34[8] = 0;
  v35 = (v26 + *(v45 + 28));
  v36 = sub_24B2D4B04();
  v35[3] = v32;
  v35[4] = v31;
  *v35 = v36;
  sub_24B2D4394();
  sub_24B2D43D4();
  v54 = sub_24B2D4424();

  sub_24B2D4A94();
  v37 = sub_24B2D4B44();

  v38 = v57;
  (v33)(v57, *MEMORY[0x277CE13B0], v23);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9908);
  v62 = v39;
  v63 = sub_24B039184(&qword_27EFC9910, &qword_27EFC9908);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v61);
  v41 = v56;
  (*(v56 + 16))(boxed_opaque_existential_0 + *(v39 + 36), v38, v23);
  *boxed_opaque_existential_0 = v37;
  (*(v41 + 8))(v38, v23);
  sub_24B2D1AA4();
  *(v35 + v19[8]) = v60;
  swift_storeEnumTagMultiPayload();
  result = (v33)(v35 + v19[6], v59, v23);
  v35[5] = v54;
  *(v35 + v19[9]) = 2;
  *(v35 + v19[10]) = 1;
  v43 = v35 + v19[11];
  *v43 = 0x4059000000000000;
  v43[8] = 0;
  return result;
}

unint64_t sub_24B0B75BC()
{
  result = type metadata accessor for LocateAction();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ShareReceivedMessageViewActionsModule.Style(319);
    if (v2 <= 0x3F)
    {
      result = sub_24B07A804();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24B0B768C@<X0>(uint64_t a1@<X8>)
{
  v103 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA4F8);
  MEMORY[0x28223BE20](v97);
  v102 = &v84 - v2;
  v98 = type metadata accessor for CustomMenuStyle(0);
  MEMORY[0x28223BE20](v98);
  v88 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for ShareReceivedMessageViewActionsModule(0);
  v85 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v86 = v4;
  v87 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA500);
  v90 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v89 = &v84 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA508);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v101 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v100 = &v84 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9A48);
  v10 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &v84 - v11;
  v12 = type metadata accessor for DirectionsState();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA510);
  MEMORY[0x28223BE20](v91);
  v17 = &v84 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA518);
  MEMORY[0x28223BE20](v18);
  v20 = &v84 - v19;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA520);
  MEMORY[0x28223BE20](v92);
  v22 = &v84 - v21;
  Action = type metadata accessor for LocateAction();
  MEMORY[0x28223BE20](Action - 8);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA528);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v96 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v104 = &v84 - v29;
  sub_24B0B9314(v1, v25, type metadata accessor for LocateAction);
  v30 = (*(v13 + 48))(v25, 2, v12);
  if (v30)
  {
    if (v30 == 1)
    {
      swift_storeEnumTagMultiPayload();
      v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94D8);
      v32 = type metadata accessor for CustomButtonStyle(255);
      v33 = sub_24B039184(&qword_27EFC94D0, &qword_27EFC94D8);
      v34 = sub_24B0B92CC(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
      v105 = v31;
      v106 = v32;
      v107 = v33;
      v108 = v34;
      swift_getOpaqueTypeConformance2();
      sub_24B2D3ED4();
      sub_24B008890(v22, v17, &qword_27EFCA520);
      swift_storeEnumTagMultiPayload();
      sub_24B0B9180();
      sub_24B2D3ED4();
      sub_24AFF8258(v22, &qword_27EFCA520);
    }

    else
    {
      v43 = v93;
      sub_24B0B88DC();
      v44 = *(v10 + 16);
      v45 = v10;
      v46 = v94;
      v44(v17, v43, v94);
      swift_storeEnumTagMultiPayload();
      sub_24B0B9180();
      v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94D8);
      v48 = type metadata accessor for CustomButtonStyle(255);
      v49 = sub_24B039184(&qword_27EFC94D0, &qword_27EFC94D8);
      v50 = sub_24B0B92CC(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
      v105 = v47;
      v106 = v48;
      v107 = v49;
      v108 = v50;
      swift_getOpaqueTypeConformance2();
      sub_24B2D3ED4();
      (*(v45 + 8))(v43, v46);
    }
  }

  else
  {
    sub_24B0B9454(v25, v15, type metadata accessor for DirectionsState);
    v35 = v93;
    v84 = v1;
    sub_24B0B84F4(v15, v93);
    v36 = *(v10 + 16);
    v37 = v10;
    v38 = v94;
    v36(v20, v35, v94);
    swift_storeEnumTagMultiPayload();
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94D8);
    v40 = type metadata accessor for CustomButtonStyle(255);
    v41 = sub_24B039184(&qword_27EFC94D0, &qword_27EFC94D8);
    v42 = sub_24B0B92CC(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
    v105 = v39;
    v106 = v40;
    v107 = v41;
    v108 = v42;
    swift_getOpaqueTypeConformance2();
    sub_24B2D3ED4();
    sub_24B008890(v22, v17, &qword_27EFCA520);
    swift_storeEnumTagMultiPayload();
    sub_24B0B9180();
    sub_24B2D3ED4();
    sub_24AFF8258(v22, &qword_27EFCA520);
    (*(v37 + 8))(v93, v38);
    v1 = v84;
    sub_24B0B9568(v15, type metadata accessor for DirectionsState);
  }

  v51 = v103;
  v52 = v101;
  v53 = v95;
  if (*(v1 + *(v95 + 20)) == 1)
  {
    v54 = v87;
    sub_24B0B9314(v1, v87, type metadata accessor for ShareReceivedMessageViewActionsModule);
    v55 = (*(v85 + 80) + 16) & ~*(v85 + 80);
    v56 = swift_allocObject();
    sub_24B0B9454(v54, v56 + v55, type metadata accessor for ShareReceivedMessageViewActionsModule);
    v57 = sub_24B2D3D74();
    v59 = v58;
    v101 = v58;
    v61 = v60;
    v63 = v62;
    v64 = v1 + *(v53 + 24);
    v65 = *(type metadata accessor for ShareReceivedMessageViewActionsModule.Style(0) + 28);
    v105 = &unk_24B2E46A0;
    v106 = v56;
    v107 = v57;
    v108 = v59;
    v109 = v61 & 1;
    v110 = v63;
    v66 = v88;
    sub_24B0B9314(v64 + v65, v88, type metadata accessor for CustomControlStyle);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA538);
    v68 = sub_24B039184(&qword_27EFCA540, &qword_27EFCA538);
    v69 = sub_24B0B92CC(&qword_27EFCA000, type metadata accessor for CustomMenuStyle);
    v70 = v89;
    v71 = v52;
    v72 = v98;
    sub_24B2D4A34();
    v73 = v66;
    v51 = v103;
    sub_24B0B9568(v73, type metadata accessor for CustomMenuStyle);

    v74 = v90;
    v75 = v99;
    (*(v90 + 16))(v102, v70, v99);
    swift_storeEnumTagMultiPayload();
    v105 = v67;
    v106 = v72;
    v52 = v71;
    v107 = v68;
    v108 = v69;
    swift_getOpaqueTypeConformance2();
    v76 = v100;
    sub_24B2D3ED4();
    (*(v74 + 8))(v70, v75);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA538);
    v78 = sub_24B039184(&qword_27EFCA540, &qword_27EFCA538);
    v79 = sub_24B0B92CC(&qword_27EFCA000, type metadata accessor for CustomMenuStyle);
    v105 = v77;
    v106 = v98;
    v107 = v78;
    v108 = v79;
    swift_getOpaqueTypeConformance2();
    v76 = v100;
    sub_24B2D3ED4();
  }

  v80 = v104;
  v81 = v96;
  sub_24B008890(v104, v96, &qword_27EFCA528);
  sub_24B008890(v76, v52, &qword_27EFCA508);
  sub_24B008890(v81, v51, &qword_27EFCA528);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA548);
  sub_24B008890(v52, v51 + *(v82 + 48), &qword_27EFCA508);
  sub_24AFF8258(v76, &qword_27EFCA508);
  sub_24AFF8258(v80, &qword_27EFCA528);
  sub_24AFF8258(v52, &qword_27EFCA508);
  return sub_24AFF8258(v81, &qword_27EFCA528);
}

uint64_t sub_24B0B84F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v33 = a2;
  v32 = type metadata accessor for CustomButtonStyle(0);
  MEMORY[0x28223BE20](v32);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DirectionsState();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94D8);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = sub_24B2D32E4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = type metadata accessor for ShareReceivedMessageViewActionsModule(0);
  v13 = (v2 + *(v12 + 28));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  sub_24B0B9314(v30, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DirectionsState);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_24B0B9454(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for DirectionsState);
  v19 = &v10[v8[12]];
  v34 = 0;

  sub_24B2D4CC4();
  v20 = v36;
  *v19 = v35;
  *(v19 + 1) = v20;
  v21 = &v10[v8[13]];
  v34 = 0;
  sub_24B2D4CC4();
  v22 = v36;
  *v21 = v35;
  *(v21 + 1) = v22;
  v23 = &v10[v8[9]];
  *v23 = &unk_24B2E46B0;
  *(v23 + 1) = v16;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_24B09AB84;
  *(v24 + 24) = v18;
  v25 = &v10[v8[10]];
  *v25 = sub_24B088C54;
  v25[1] = v24;
  v10[v8[11]] = 1;
  v26 = v31 + *(v12 + 24);
  v27 = type metadata accessor for ShareReceivedMessageViewActionsModule.Style(0);
  sub_24B0B9314(v26 + *(v27 + 20), v4, type metadata accessor for CustomControlStyle);
  sub_24B039184(&qword_27EFC94D0, &qword_27EFC94D8);
  sub_24B0B92CC(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
  sub_24B2D46D4();
  sub_24B0B9568(v4, type metadata accessor for CustomButtonStyle);
  return sub_24B0B95C8(v10);
}

uint64_t sub_24B0B88DC()
{
  v1 = type metadata accessor for CustomButtonStyle(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v22[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94D8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22[-v5];
  v7 = sub_24B2D32E4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = type metadata accessor for ShareReceivedMessageViewActionsModule(0);
  v9 = (v0 + *(v8 + 32));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  v13 = &v6[v4[12]];
  v23 = 0;

  sub_24B2D4CC4();
  v14 = v25;
  *v13 = v24;
  *(v13 + 1) = v14;
  v15 = &v6[v4[13]];
  v23 = 0;
  sub_24B2D4CC4();
  v16 = v25;
  *v15 = v24;
  *(v15 + 1) = v16;
  v17 = &v6[v4[9]];
  *v17 = &unk_24B2E46B8;
  v17[1] = v12;
  v18 = &v6[v4[10]];
  *v18 = sub_24B0F724C;
  v18[1] = 0;
  v6[v4[11]] = 1;
  v19 = v0 + *(v8 + 24);
  v20 = type metadata accessor for ShareReceivedMessageViewActionsModule.Style(0);
  sub_24B0B9314(v19 + *(v20 + 24), v3, type metadata accessor for CustomControlStyle);
  sub_24B039184(&qword_27EFC94D0, &qword_27EFC94D8);
  sub_24B0B92CC(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
  sub_24B2D46D4();
  sub_24B0B9568(v3, type metadata accessor for CustomButtonStyle);
  return sub_24B0B95C8(v6);
}

uint64_t sub_24B0B8BC4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_24B2D5694();
  v2[4] = sub_24B2D5684();
  v4 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B0B8C5C, v4, v3);
}

uint64_t sub_24B0B8C5C()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24B0B8CC8@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3D74();
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_24B2D45E4();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_24B0B8E18@<X0>(uint64_t *a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_24B2D4BE4();

  *a1 = v2;
  return result;
}

uint64_t sub_24B0B8EBC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_24B2D5694();
  v2[4] = sub_24B2D5684();
  v4 = sub_24B2D5604();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_24B0B8F54, v4, v3);
}

uint64_t sub_24B0B8F54()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for ShareReceivedMessageViewActionsModule(0) + 36);
  v6 = (*(v2 + 80) + **(v2 + 80));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_24B088010;
  v4 = v0[2];

  return v6(v4, 0);
}

uint64_t sub_24B0B905C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24B2D3DF4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA4E0);
  sub_24B0B768C(a1 + *(v2 + 44));

  KeyPath = swift_getKeyPath();
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA4E8) + 36);
  *v4 = KeyPath;
  *(v4 + 8) = 2;
  *(v4 + 16) = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA4F0);
  *(a1 + *(result + 36)) = 256;
  return result;
}

unint64_t sub_24B0B9180()
{
  result = qword_27EFCA530;
  if (!qword_27EFCA530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA520);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94D8);
    type metadata accessor for CustomButtonStyle(255);
    sub_24B039184(&qword_27EFC94D0, &qword_27EFC94D8);
    sub_24B0B92CC(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA530);
  }

  return result;
}

uint64_t sub_24B0B92CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B0B9314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B0B937C(uint64_t a1)
{
  v4 = *(type metadata accessor for ShareReceivedMessageViewActionsModule(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AFFD370;

  return sub_24B0B8EBC(a1, v1 + v5);
}

uint64_t sub_24B0B9454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B0B94BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AFFDE44;

  return sub_24B0B8BC4(v2, v3);
}

uint64_t sub_24B0B9568(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B0B95C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B0B9630()
{
  result = qword_27EFCA550;
  if (!qword_27EFCA550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA4F0);
    sub_24B0B96BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA550);
  }

  return result;
}

unint64_t sub_24B0B96BC()
{
  result = qword_27EFCA558;
  if (!qword_27EFCA558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA4E8);
    sub_24B039184(&qword_27EFCA560, &qword_27EFCA568);
    sub_24B039184(&qword_27EFC8C30, &unk_27EFC93C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA558);
  }

  return result;
}

uint64_t sub_24B0B97A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_24B0B97FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24B0B9878@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v25 = a3;
  v23 = a1;
  v3 = sub_24B2D2E24();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22[-v5];
  v7 = sub_24B2D2DE4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA570);
  MEMORY[0x28223BE20](v12);
  v14 = &v22[-v13];
  sub_24B2D2DD4();
  sub_24B2D2D54();
  (*(v8 + 8))(v11, v7);
  sub_24B2D2D34();
  v15 = sub_24B2D2D44();
  (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
  v28 = MEMORY[0x277D84F90];
  sub_24B0BA008(&qword_27EFC9818, MEMORY[0x277CE42D0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9820);
  sub_24B039184(&qword_27EFC9828, &qword_27EFC9820);
  sub_24B2D5B44();
  v26 = v23;
  v27 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC98A0);
  sub_24B0B9E70();
  sub_24B2D2C84();
  sub_24B2D42F4();
  sub_24B2D32F4();
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = 0;
  sub_24B2D4084();
  sub_24B0B9F20();
  v20 = v25;
  sub_24B2D4634();
  sub_24B0BA050(v14);
  *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA5A0) + 36)) = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA5A8);
  *(v20 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24B0B9C7C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9898);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC98A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    sub_24B2D3034();
    (*(v5 + 32))(v10, v7, v4);
    (*(v5 + 56))(v10, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v10, 1, 1, v4);
  }

  sub_24B0BA0B8(v10, a2);
}

unint64_t sub_24B0B9E70()
{
  result = qword_27EFCA578;
  if (!qword_27EFCA578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC98A0);
    sub_24B039184(&qword_27EFCA580, &qword_27EFC9898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA578);
  }

  return result;
}

unint64_t sub_24B0B9F20()
{
  result = qword_27EFCA588;
  if (!qword_27EFCA588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA570);
    sub_24B039184(&qword_27EFCA590, &qword_27EFCA598);
    sub_24B0BA008(&qword_27EFCA320, MEMORY[0x277CE0660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA588);
  }

  return result;
}

uint64_t sub_24B0BA008(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B0BA050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B0BA0B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC98A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B0BA128()
{
  result = qword_27EFCA5B0;
  if (!qword_27EFCA5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA5A8);
    sub_24B0BA1E0();
    sub_24B039184(&qword_27EFC9868, &qword_27EFC9870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA5B0);
  }

  return result;
}

unint64_t sub_24B0BA1E0()
{
  result = qword_27EFCA5B8;
  if (!qword_27EFCA5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA5A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA570);
    sub_24B0B9F20();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA5B8);
  }

  return result;
}

void sub_24B0BA2C8()
{
  sub_24B0BA33C();
  if (v0 <= 0x3F)
  {
    sub_24B0BA3C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24B0BA33C()
{
  if (!qword_27EFCA5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8450);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC83B8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EFCA5D0);
    }
  }
}

void sub_24B0BA3C8()
{
  if (!qword_27EFCA5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC83B8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EFCA5D8);
    }
  }
}

void sub_24B0BA488()
{
  type metadata accessor for ShareSentMessageView.ShareState(319);
  if (v0 <= 0x3F)
  {
    sub_24B0BA54C();
    if (v1 <= 0x3F)
    {
      sub_24B07A804();
      if (v2 <= 0x3F)
      {
        sub_24B0BA5A4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B0BA54C()
{
  if (!qword_27EFC7B80)
  {
    sub_24AFF3C1C();
    v0 = sub_24B2D5A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC7B80);
    }
  }
}

void sub_24B0BA5A4()
{
  if (!qword_27EFC98D8)
  {
    v0 = sub_24B2D4D04();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC98D8);
    }
  }
}

uint64_t sub_24B0BA5F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24B0BA648(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24B0BA6B8(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_24B2D54A4();
  }

  __break(1u);
  return result;
}

uint64_t sub_24B0BA704@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA5F0);
  MEMORY[0x28223BE20](v60);
  v4 = &v57 - v3;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA5F8);
  MEMORY[0x28223BE20](v70);
  v62 = &v57 - v5;
  v6 = type metadata accessor for ShareSentMessageView(0);
  v57 = *(v6 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA600);
  MEMORY[0x28223BE20](v65);
  v9 = &v57 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA608);
  v64 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v63 = &v57 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA610);
  MEMORY[0x28223BE20](v66);
  v68 = &v57 - v11;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA618);
  MEMORY[0x28223BE20](v58);
  v13 = &v57 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA620);
  MEMORY[0x28223BE20](v67);
  v61 = &v57 - v14;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA628);
  MEMORY[0x28223BE20](v59);
  v16 = &v57 - v15;
  v17 = type metadata accessor for ShareSentMessageView.ShareState(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B0BE7E8(v2, v19, type metadata accessor for ShareSentMessageView.ShareState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v34 = v59;
      v35 = *(v59 + 60);
      *&v16[v35] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8C38);
      swift_storeEnumTagMultiPayload();
      v36 = &v16[*(v34 + 64)];
      *v36 = swift_getKeyPath();
      v36[8] = 0;
      *v16 = nullsub_1;
      *(v16 + 1) = 0;
      *(v16 + 2) = nullsub_1;
      *(v16 + 3) = 0;
      v16[32] = 64;
      sub_24B008890(v16, v13, &qword_27EFCA628);
      swift_storeEnumTagMultiPayload();
      sub_24B039184(&qword_27EFCA678, &qword_27EFCA628);
      v37 = sub_24B0BE370();
      v38 = sub_24B0BE5A0();
      *&v76 = v65;
      *(&v76 + 1) = &type metadata for StopSharingView;
      *&v77 = v37;
      *(&v77 + 1) = v38;
      swift_getOpaqueTypeConformance2();
      v39 = v61;
      sub_24B2D3ED4();
      sub_24B008890(v39, v68, &qword_27EFCA620);
      swift_storeEnumTagMultiPayload();
      sub_24B0BE5F4();
      sub_24B0BE704();
      sub_24B2D3ED4();
      sub_24AFF8258(v39, &qword_27EFCA620);
      return sub_24AFF8258(v16, &qword_27EFCA628);
    }

    else
    {
      sub_24B0BB414(&v76);
      v51 = v77;
      *v4 = v76;
      *(v4 + 1) = v51;
      *(v4 + 2) = v78;
      *(v4 + 12) = v79;
      swift_storeEnumTagMultiPayload();
      sub_24B008890(&v76, &v72, &qword_27EFC9660);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9660);
      v52 = sub_24B0BE370();
      v53 = sub_24B0BE5A0();
      v72 = v65;
      v73 = &type metadata for StopSharingView;
      v74 = v52;
      v75 = v53;
      swift_getOpaqueTypeConformance2();
      sub_24B090970();
      v54 = v62;
      sub_24B2D3ED4();
      sub_24B008890(v54, v68, &qword_27EFCA5F8);
      swift_storeEnumTagMultiPayload();
      sub_24B0BE5F4();
      sub_24B0BE704();
      sub_24B2D3ED4();
      sub_24AFF8258(&v76, &qword_27EFC9660);
      return sub_24AFF8258(v54, &qword_27EFCA5F8);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v40 = *(v19 + 1);
    v61 = *(v19 + 2);
    sub_24B0BB804(v40, v61, *(v19 + 12), v2, 1, v9);
    v41 = v2 + *(v6 + 36);
    v42 = *v41;
    v43 = *(v41 + 8);
    LOBYTE(v72) = v42;
    v73 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
    sub_24B2D4CF4();
    sub_24B0BE7E8(v2, &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareSentMessageView);
    v44 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v45 = swift_allocObject();
    sub_24B0BE850(&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v44);
    *&v55 = sub_24B0BE370();
    *(&v55 + 1) = sub_24B0BE5A0();
    v46 = v63;
    v47 = v65;
    sub_24B2D4934();

    sub_24AFF8258(v9, &qword_27EFCA600);

    v48 = v64;
    v49 = v69;
    (*(v64 + 16))(v4, v46, v69);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9660);
    *&v76 = v47;
    *(&v76 + 1) = &type metadata for StopSharingView;
    v77 = v55;
    swift_getOpaqueTypeConformance2();
    sub_24B090970();
    v50 = v62;
    sub_24B2D3ED4();
    sub_24B008890(v50, v68, &qword_27EFCA5F8);
    swift_storeEnumTagMultiPayload();
    sub_24B0BE5F4();
    sub_24B0BE704();
    sub_24B2D3ED4();
    sub_24AFF8258(v50, &qword_27EFCA5F8);
    return (*(v48 + 8))(v46, v49);
  }

  else
  {
    v21 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A38) + 48)];
    v22 = *v21;
    v62 = *(v21 + 1);
    sub_24B0BB804(v22, v62, *(v21 + 8), v2, 0, v9);
    v23 = v2 + *(v6 + 36);
    v24 = *v23;
    v25 = *(v23 + 8);
    LOBYTE(v72) = v24;
    v73 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
    sub_24B2D4CF4();
    sub_24B0BE7E8(v2, &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareSentMessageView);
    v26 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v27 = swift_allocObject();
    sub_24B0BE850(&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
    v60 = sub_24B0BE370();
    v56 = sub_24B0BE5A0();
    v28 = v63;
    v29 = v65;
    sub_24B2D4934();

    sub_24AFF8258(v9, &qword_27EFCA600);

    v30 = v64;
    v31 = v69;
    (*(v64 + 16))(v13, v28, v69);
    swift_storeEnumTagMultiPayload();
    sub_24B039184(&qword_27EFCA678, &qword_27EFCA628);
    *&v76 = v29;
    *(&v76 + 1) = &type metadata for StopSharingView;
    *&v77 = v60;
    *(&v77 + 1) = v56;
    swift_getOpaqueTypeConformance2();
    v32 = v61;
    sub_24B2D3ED4();
    sub_24B008890(v32, v68, &qword_27EFCA620);
    swift_storeEnumTagMultiPayload();
    sub_24B0BE5F4();
    sub_24B0BE704();
    sub_24B2D3ED4();
    sub_24AFF8258(v32, &qword_27EFCA620);
    (*(v30 + 8))(v28, v31);
    return sub_24AFF8258(v19, &qword_27EFC8450);
  }
}

double sub_24B0BB414@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8848);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - v4;
  if (*(v1 + *(type metadata accessor for ShareSentMessageView(0) + 32)) == 1)
  {
    type metadata accessor for FindMyUICore();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    v8 = sub_24B2D5374();
    v9 = [v7 localizedStringForKey:v8 value:0 table:0];

    v10 = sub_24B2D5394();
    v12 = v11;

    *&v48 = v10;
    *(&v48 + 1) = v12;
    v40 = 10;
    v41 = 0xE100000000000000;
    v13 = sub_24B2D2534();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    sub_24AFFE0A4();
    sub_24B2D5AF4();
    v15 = v14;
    v17 = v16;
    sub_24AFF8258(v5, &qword_27EFC8848);
    if (v17)
    {
      v18 = 0;
      v19 = 0;
    }

    else
    {
      v28 = sub_24B2D54A4();
      v18 = MEMORY[0x24C23BBC0](v28);
      v19 = v29;

      v30 = sub_24B0BA6B8(v15, v10, v12);
      v32 = v31;
      v34 = v33;
      v36 = v35;

      v10 = MEMORY[0x24C23BBC0](v30, v32, v34, v36);
      v12 = v37;
    }

    v47 = 0;
    v40 = v18;
    v41 = v19;
    v42 = v10;
    v43 = v12;
    v44 = sub_24AFFAA8C;
    v45 = 0;
    v27 = 4259841;
  }

  else
  {
    type metadata accessor for FindMyUICore();
    v20 = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    v22 = sub_24B2D5374();
    v23 = [v21 localizedStringForKey:v22 value:0 table:0];

    v24 = sub_24B2D5394();
    v26 = v25;

    v47 = 1;
    v40 = 0;
    v41 = 0;
    v42 = v24;
    v43 = v26;
    v44 = sub_24AFFAA8C;
    v45 = 0;
    v27 = 21037057;
  }

  v46 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9670);
  sub_24B039184(&qword_27EFC9668, &qword_27EFC9670);
  sub_24B2D3ED4();
  v38 = v49;
  *a1 = v48;
  *(a1 + 16) = v38;
  result = *&v50;
  *(a1 + 32) = v50;
  *(a1 + 48) = v51;
  return result;
}

uint64_t sub_24B0BB804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v53 = a5;
  v59 = a4;
  v52 = a1;
  v66 = a6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA660);
  MEMORY[0x28223BE20](v65);
  v9 = &v52 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA688);
  MEMORY[0x28223BE20](v62);
  v64 = &v52 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA690);
  MEMORY[0x28223BE20](v54);
  v12 = &v52 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA650);
  MEMORY[0x28223BE20](v63);
  v57 = &v52 - v13;
  v14 = type metadata accessor for ShareSentMessageView(0);
  v58 = *(v14 - 8);
  v15 = *(v58 + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA698);
  v56 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v55 = &v52 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA640);
  MEMORY[0x28223BE20](v22 - 8);
  v61 = &v52 - v23;
  sub_24B2D5694();
  v60 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    if (a3 & 0x100) != 0 || (a3)
    {
      v43 = v59;
      sub_24B0BE7E8(v59, v19, type metadata accessor for ShareSentMessageView);
      v44 = (*(v58 + 80) + 16) & ~*(v58 + 80);
      v45 = swift_allocObject();
      sub_24B0BE850(v19, v45 + v44);
      sub_24B0BE7E8(v43, v17, type metadata accessor for ShareSentMessageView);
      v46 = swift_allocObject();
      sub_24B0BE850(v17, v46 + v44);
      KeyPath = swift_getKeyPath();
      *v9 = sub_24B0BED78;
      *(v9 + 1) = v45;
      *(v9 + 2) = sub_24B0BED90;
      *(v9 + 3) = v46;
      v9[32] = 64;
      v48 = v65;
      v49 = *(v65 + 60);
      *&v9[v49] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8C38);
      swift_storeEnumTagMultiPayload();
      v50 = &v9[*(v48 + 64)];
      *v50 = KeyPath;
      v50[8] = 0;
      sub_24B008890(v9, v64, &qword_27EFCA660);
      swift_storeEnumTagMultiPayload();
      sub_24B0BE4AC();
      sub_24B039184(&qword_27EFCA658, &qword_27EFCA660);
      v42 = v61;
      sub_24B2D3ED4();
      sub_24AFF8258(v9, &qword_27EFCA660);
      goto LABEL_10;
    }

    v24 = sub_24B0BC234(v53 & 1, v52, a2);
    v67 = 0uLL;
    *&v68 = v24;
    *(&v68 + 1) = v25;
    *v69 = sub_24AFFAA8C;
    *&v69[8] = 0;
    *&v69[16] = 0;
    v69[18] = 64;
    sub_24B0BE7E8(v59, v19, type metadata accessor for ShareSentMessageView);
    v26 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v27 = swift_allocObject();
    sub_24B0BE850(v19, v27 + v26);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9670);
    v29 = sub_24B039184(&qword_27EFC9668, &qword_27EFC9670);
    v30 = v55;
    sub_24B2D4704();

    v70 = v67;
    v71 = v68;
    v72[0] = *v69;
    *(v72 + 15) = *&v69[15];
    sub_24AFF8258(&v70, &qword_27EFC9670);
    v31 = v56;
    (*(v56 + 16))(v12, v30, v20);
  }

  else
  {
    type metadata accessor for FindMyUICore();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = [objc_opt_self() bundleForClass_];
    v34 = sub_24B2D5374();
    v35 = [v33 localizedStringForKey:v34 value:0 table:0];

    v36 = sub_24B2D5394();
    v38 = v37;

    v67 = 0uLL;
    *&v68 = v36;
    *(&v68 + 1) = v38;
    *v69 = sub_24AFFAA8C;
    *&v69[8] = 0;
    *&v69[16] = 0;
    v69[18] = 64;
    sub_24B0BE7E8(v59, v19, type metadata accessor for ShareSentMessageView);
    v39 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v40 = swift_allocObject();
    sub_24B0BE850(v19, v40 + v39);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9670);
    v29 = sub_24B039184(&qword_27EFC9668, &qword_27EFC9670);
    v30 = v55;
    sub_24B2D4704();

    v70 = v67;
    v71 = v68;
    v72[0] = *v69;
    *(v72 + 15) = *&v69[15];
    sub_24AFF8258(&v70, &qword_27EFC9670);
    v31 = v56;
    (*(v56 + 16))(v12, v30, v20);
  }

  swift_storeEnumTagMultiPayload();
  *&v67 = v28;
  *(&v67 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  v41 = v57;
  sub_24B2D3ED4();
  sub_24B008890(v41, v64, &qword_27EFCA650);
  swift_storeEnumTagMultiPayload();
  sub_24B0BE4AC();
  sub_24B039184(&qword_27EFCA658, &qword_27EFCA660);
  v42 = v61;
  sub_24B2D3ED4();
  sub_24AFF8258(v41, &qword_27EFCA650);
  (*(v31 + 8))(v30, v20);
LABEL_10:
  sub_24B0391CC(v42, v66, &qword_27EFCA640);
}

uint64_t sub_24B0BC234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A78);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24B2DE430;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_24B075024();
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();

  v8 = [v7 bundleForClass_];
  v9 = sub_24B2D5374();
  v10 = [v8 localizedStringForKey:v9 value:0 table:0];

  sub_24B2D5394();
  v11 = sub_24B2D53A4();

  return v11;
}

uint64_t sub_24B0BC398(uint64_t a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for ShareSentMessageView(0);
  (*(a1 + *(v2 + 28)))();
}

uint64_t sub_24B0BC458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = *(a1 + *(type metadata accessor for ShareSentMessageView(0) + 32) + 16);
  *a2 = sub_24B2D3DF4();
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA6A8);
  sub_24B0BC528(v2, a2 + *(v5 + 44));
  LOBYTE(v2) = sub_24B2D42F4();
  sub_24B2D32F4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA6B0);
  v15 = a2 + *(result + 36);
  *v15 = v2;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_24B0BC528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v117 = a1;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA1D0);
  v2 = MEMORY[0x28223BE20](v100);
  v96 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v95 = &v94 - v4;
  v5 = sub_24B2D3764();
  v107 = *(v5 - 8);
  v108 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v106 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v105 = &v94 - v8;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA190);
  MEMORY[0x28223BE20](v97);
  v109 = &v94 - v9;
  v10 = sub_24B2D4494();
  v103 = *(v10 - 8);
  v104 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ShareSentMessageView.ExpirationDatePill(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA6B8);
  v101 = *(v16 - 8);
  v102 = v16;
  MEMORY[0x28223BE20](v16);
  v98 = &v94 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA6C0);
  v111 = *(v18 - 8);
  v112 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v99 = &v94 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA6C8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v94 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA6D0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v110 = &v94 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA6D8);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v115 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v113 = &v94 - v32;
  sub_24B2D5694();
  v114 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = v117;
  sub_24B0BD2B0(v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_24AFF8258(v25, &qword_27EFCA6C8);
    v34 = 1;
    v35 = v112;
    v36 = v113;
  }

  else
  {
    v94 = v21;
    v37 = v25;
    v38 = v110;
    sub_24B0391CC(v37, v110, &qword_27EFCA6D0);
    sub_24B008890(v38, v15, &qword_27EFCA6D0);
    *&v140 = 0x401A000000000000;
    v39 = *MEMORY[0x277CE0AB0];
    v40 = v104;
    v41 = *(v103 + 104);
    v41(v12, v39, v104);
    sub_24B083C54();
    sub_24B2D33F4();
    v103 = v13;
    *&v140 = 0x4018000000000000;
    v41(v12, v39, v40);
    sub_24B2D33F4();
    v42 = v107;
    v43 = v108;
    v44 = *(v107 + 104);
    v45 = v105;
    v44(v105, *MEMORY[0x277CDF9E8], v108);
    v46 = v106;
    v44(v106, *MEMORY[0x277CDF988], v43);
    sub_24B0BEF48(&qword_27EFCA200, MEMORY[0x277CDFA28]);
    result = sub_24B2D5294();
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v104 = v15;
    v48 = v45;
    v49 = *(v42 + 32);
    v50 = v95;
    v49(v95, v48, v43);
    v51 = v100;
    v49((v50 + *(v100 + 48)), v46, v43);
    v52 = v96;
    sub_24B008890(v50, v96, &qword_27EFCA1D0);
    v53 = *(v51 + 48);
    v49(v109, v52, v43);
    v54 = *(v42 + 8);
    v54(v52 + v53, v43);
    sub_24B0391CC(v50, v52, &qword_27EFCA1D0);
    v55 = v109;
    v49(&v109[*(v97 + 36)], (v52 + *(v51 + 48)), v43);
    v54(v52, v43);
    sub_24B0BEF48(&qword_27EFCA6F0, type metadata accessor for ShareSentMessageView.ExpirationDatePill);
    sub_24B039184(&qword_27EFCA1A8, &qword_27EFCA190);
    v56 = v98;
    v57 = v104;
    sub_24B2D4774();
    sub_24AFF8258(v55, &qword_27EFCA190);
    sub_24B0BEF90(v57, type metadata accessor for ShareSentMessageView.ExpirationDatePill);
    v58 = type metadata accessor for ShareSentMessageView(0);
    v33 = v117;
    if (*(v117 + *(v58 + 32)) == 1)
    {
      sub_24B2D5044();
    }

    else
    {
      sub_24B2D5024();
    }

    v35 = v112;
    v36 = v113;
    v59 = v94;
    sub_24B2D3904();
    sub_24AFF8258(v110, &qword_27EFCA6D0);
    (*(v101 + 32))(v59, v56, v102);
    v60 = (v59 + *(v35 + 36));
    v61 = v158;
    v60[4] = v157;
    v60[5] = v61;
    v60[6] = v159;
    v62 = v154;
    *v60 = v153;
    v60[1] = v62;
    v63 = v156;
    v60[2] = v155;
    v60[3] = v63;
    v64 = v59;
    v65 = v99;
    sub_24B0391CC(v64, v99, &qword_27EFCA6C0);
    sub_24B0391CC(v65, v36, &qword_27EFCA6C0);
    v34 = 0;
  }

  (*(v111 + 56))(v36, v34, 1, v35);
  if (*(v33 + *(type metadata accessor for ShareSentMessageView(0) + 32)))
  {
    sub_24B0BEF0C(&v140);
  }

  else
  {
    LOBYTE(v133) = 0;
    sub_24B2D4CC4();
    v66 = v140;
    v67 = *(&v140 + 1);
    v68 = sub_24B2D42E4();
    sub_24B2D32F4();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    LOBYTE(v131[0]) = 0;
    LOBYTE(v118) = 0;
    sub_24B2D5044();
    sub_24B2D3904();
    *&v139[55] = v163;
    *&v139[71] = v164;
    *&v139[87] = v165;
    *&v139[103] = v166;
    *&v139[7] = v160;
    *&v139[23] = v161;
    *&v139[39] = v162;
    *&v133 = sub_24B08402C;
    *(&v133 + 1) = 0;
    LOBYTE(v134) = 0;
    BYTE8(v134) = v66;
    *&v135 = v67;
    BYTE8(v135) = v68;
    *&v136 = v70;
    *(&v136 + 1) = v72;
    *&v137 = v74;
    *(&v137 + 1) = v76;
    v138[0] = 0;
    *&v138[65] = *&v139[64];
    *&v138[81] = *&v139[80];
    *&v138[97] = *&v139[96];
    *&v138[112] = *(&v166 + 1);
    *&v138[1] = *v139;
    *&v138[17] = *&v139[16];
    *&v138[33] = *&v139[32];
    *&v138[49] = *&v139[48];
    nullsub_1(&v133);
    v150 = *&v138[80];
    v151 = *&v138[96];
    v152 = *&v138[112];
    v147 = *&v138[32];
    v149 = *&v138[64];
    v148 = *&v138[48];
    v142 = v135;
    v143 = v136;
    v145 = *v138;
    v146 = *&v138[16];
    v144 = v137;
    v140 = v133;
    v141 = v134;
  }

  v77 = v115;
  sub_24B008890(v36, v115, &qword_27EFCA6D8);
  v128 = v150;
  v129 = v151;
  v130 = v152;
  v124 = v146;
  v125 = v147;
  v126 = v148;
  v127 = v149;
  v120 = v142;
  v121 = v143;
  v122 = v144;
  v123 = v145;
  v118 = v140;
  v119 = v141;
  v78 = v116;
  sub_24B008890(v77, v116, &qword_27EFCA6D8);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA6E0);
  v80 = *(v79 + 48);
  v81 = v129;
  v131[10] = v128;
  v131[11] = v129;
  v82 = v124;
  v83 = v125;
  v131[6] = v124;
  v131[7] = v125;
  v85 = v126;
  v84 = v127;
  v131[8] = v126;
  v131[9] = v127;
  v87 = v122;
  v86 = v123;
  v131[4] = v122;
  v131[5] = v123;
  v88 = v120;
  v89 = v121;
  v131[2] = v120;
  v131[3] = v121;
  v91 = v118;
  v90 = v119;
  v131[0] = v118;
  v131[1] = v119;
  v92 = v78 + v80;
  *(v92 + 160) = v128;
  *(v92 + 176) = v81;
  *(v92 + 96) = v82;
  *(v92 + 112) = v83;
  *(v92 + 128) = v85;
  *(v92 + 144) = v84;
  *(v92 + 32) = v88;
  *(v92 + 48) = v89;
  *(v92 + 64) = v87;
  *(v92 + 80) = v86;
  v132 = v130;
  *(v92 + 192) = v130;
  *v92 = v91;
  *(v92 + 16) = v90;
  v93 = v78 + *(v79 + 64);
  *v93 = 0;
  *(v93 + 8) = 1;
  sub_24B008890(v131, &v133, &qword_27EFCA6E8);
  sub_24AFF8258(v36, &qword_27EFCA6D8);
  *&v138[80] = v128;
  *&v138[96] = v129;
  *&v138[112] = v130;
  *&v138[16] = v124;
  *&v138[32] = v125;
  *&v138[48] = v126;
  *&v138[64] = v127;
  v135 = v120;
  v136 = v121;
  v137 = v122;
  *v138 = v123;
  v133 = v118;
  v134 = v119;
  sub_24AFF8258(&v133, &qword_27EFCA6E8);
  sub_24AFF8258(v77, &qword_27EFCA6D8);
}

uint64_t sub_24B0BD2B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24B2D24A4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v28 - v15;
  v17 = type metadata accessor for ShareSentMessageView.ShareState(0);
  MEMORY[0x28223BE20](v17);
  v19 = (v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24B0BE7E8(v2, v19, type metadata accessor for ShareSentMessageView.ShareState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v21 = *v19;

    v22 = sub_24B00CB2C(v21);
    if (!v23)
    {
      goto LABEL_8;
    }

    v28[0] = v22;
    v28[1] = v23;
    sub_24B2D1AA4();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA6D0);
      (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
      return sub_24B0BEF90(v19, type metadata accessor for ShareSentMessageView.ShareState);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A38);

    sub_24B0391CC(v19, v16, &qword_27EFC8450);
    sub_24B008890(v16, v14, &qword_27EFC8450);
    if ((*(v5 + 48))(v14, 1, v4) == 1)
    {
      sub_24AFF8258(v16, &qword_27EFC8450);
LABEL_8:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA6D0);
      return (*(*(v26 - 8) + 56))(a1, 1, 1, v26);
    }

    (*(v5 + 32))(v10, v14, v4);
    (*(v5 + 16))(v8, v10, v4);
    sub_24B2D1A94();
    (*(v5 + 8))(v10, v4);
    sub_24AFF8258(v16, &qword_27EFC8450);
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA6D0);
  return (*(*(v27 - 8) + 56))(a1, 0, 1, v27);
}

uint64_t sub_24B0BD6E0(uint64_t a1)
{
  v2 = type metadata accessor for ShareSentMessageView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = *(a1 + *(MEMORY[0x28223BE20](v2 - 8) + 28));
  v10[0] = 1;
  v11 = v5;
  sub_24B0BE7E8(a1, &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ShareSentMessageView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_24B0BE850(&v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6);
  sub_24B0BEE98();
  v8 = v5;
  sub_24B2D4704();
}

uint64_t sub_24B0BD840@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a1 + *(type metadata accessor for ShareSentMessageView(0) + 24));
  v6 = *v4;
  v5 = v4[1];

  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t sub_24B0BD8F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48[1] = a1;
  v49 = sub_24B2D4134();
  v3 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA720);
  MEMORY[0x28223BE20](v6);
  v8 = v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA728);
  MEMORY[0x28223BE20](v9);
  v11 = v48 - v10;
  *v8 = sub_24B2D3CA4();
  *(v8 + 1) = 0x4000000000000000;
  v8[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA730);
  sub_24B0BDD64(v2, &v8[*(v12 + 44)]);
  sub_24B039184(&qword_27EFCA738, &qword_27EFCA720);
  sub_24B2D4784();
  sub_24AFF8258(v8, &qword_27EFCA720);
  sub_24B2D4474();
  sub_24B2D43D4();
  v13 = sub_24B2D4424();

  KeyPath = swift_getKeyPath();
  v15 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA740) + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  v16 = sub_24B2D4B04();
  v17 = swift_getKeyPath();
  v18 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA748) + 36)];
  *v18 = v17;
  v18[1] = v16;
  LOBYTE(v17) = sub_24B2D4354();
  type metadata accessor for ShareSentMessageView.ExpirationDatePill(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFC9170);
  sub_24B2D3404();
  sub_24B2D32F4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA750) + 36)];
  *v27 = v17;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  LOBYTE(v17) = sub_24B2D42E4();
  sub_24B2D3404();
  sub_24B2D32F4();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA758) + 36)];
  *v36 = v17;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = &v11[*(v9 + 36)];
  v38 = *MEMORY[0x277CE0118];
  v39 = sub_24B2D3DC4();
  (*(*(v39 - 8) + 104))(v37, v38, v39);
  v40 = sub_24B2D4B24();
  v41 = swift_getKeyPath();
  v42 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA760) + 36)];
  *v42 = v41;
  v42[1] = v40;
  v43 = sub_24B2D5064();
  v45 = v44;
  v46 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA768) + 36)];
  *v46 = v43;
  v46[1] = v45;
  sub_24B2D4124();
  sub_24B0BF340();
  sub_24B2D4814();
  (*(v3 + 8))(v5, v49);
  return sub_24AFF8258(v11, &qword_27EFCA728);
}

uint64_t sub_24B0BDD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v43 = a2;
  v42 = type metadata accessor for CountDownTimerText(0);
  MEMORY[0x28223BE20](v42);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24B2D24A4();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA7A0);
  MEMORY[0x28223BE20](v40);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA6D0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v36 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA7A8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA7B0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - v21;
  sub_24B2D5694();
  v41 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v44 = sub_24B2D4BE4();
  sub_24B2D47F4();

  sub_24B008890(v39, v10, &qword_27EFCA6D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v36;
    v23 = v37;
    v25 = v10;
    v26 = v38;
    (*(v37 + 32))(v36, v25, v38);
    (*(v23 + 16))(v3, v24, v26);
    v27 = v42;
    v3[*(v42 + 20)] = 0;
    v28 = &v3[*(v27 + 24)];
    *v28 = 0;
    *(v28 + 1) = 0;
    sub_24B0BE7E8(v3, v7, type metadata accessor for CountDownTimerText);
    swift_storeEnumTagMultiPayload();
    sub_24B0BEF48(&qword_27EFCA7B8, type metadata accessor for CountDownTimerText);
    sub_24B2D3ED4();
    sub_24B0BEF90(v3, type metadata accessor for CountDownTimerText);
    (*(v23 + 8))(v24, v26);
  }

  else
  {
    v29 = v10[1];
    v44 = *v10;
    v45 = v29;
    sub_24AFFE0A4();
    *v7 = sub_24B2D4604();
    *(v7 + 1) = v30;
    v7[16] = v31 & 1;
    *(v7 + 3) = v32;
    swift_storeEnumTagMultiPayload();
    sub_24B0BEF48(&qword_27EFCA7B8, type metadata accessor for CountDownTimerText);
    sub_24B2D3ED4();
  }

  sub_24B008890(v22, v20, &qword_27EFCA7B0);
  sub_24B008890(v16, v14, &qword_27EFCA7A8);
  v33 = v43;
  sub_24B008890(v20, v43, &qword_27EFCA7B0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA7C0);
  sub_24B008890(v14, v33 + *(v34 + 48), &qword_27EFCA7A8);
  sub_24AFF8258(v16, &qword_27EFCA7A8);
  sub_24AFF8258(v22, &qword_27EFCA7B0);
  sub_24AFF8258(v14, &qword_27EFCA7A8);
  sub_24AFF8258(v20, &qword_27EFCA7B0);
}

unint64_t sub_24B0BE370()
{
  result = qword_27EFCA630;
  if (!qword_27EFCA630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA600);
    sub_24B0BE3F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA630);
  }

  return result;
}

unint64_t sub_24B0BE3F4()
{
  result = qword_27EFCA638;
  if (!qword_27EFCA638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA640);
    sub_24B0BE4AC();
    sub_24B039184(&qword_27EFCA658, &qword_27EFCA660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA638);
  }

  return result;
}

unint64_t sub_24B0BE4AC()
{
  result = qword_27EFCA648;
  if (!qword_27EFCA648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA650);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9670);
    sub_24B039184(&qword_27EFC9668, &qword_27EFC9670);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA648);
  }

  return result;
}

unint64_t sub_24B0BE5A0()
{
  result = qword_27EFCA668;
  if (!qword_27EFCA668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA668);
  }

  return result;
}

unint64_t sub_24B0BE5F4()
{
  result = qword_27EFCA670;
  if (!qword_27EFCA670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA620);
    sub_24B039184(&qword_27EFCA678, &qword_27EFCA628);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA600);
    sub_24B0BE370();
    sub_24B0BE5A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA670);
  }

  return result;
}

unint64_t sub_24B0BE704()
{
  result = qword_27EFCA680;
  if (!qword_27EFCA680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA5F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA600);
    sub_24B0BE370();
    sub_24B0BE5A0();
    swift_getOpaqueTypeConformance2();
    sub_24B090970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA680);
  }

  return result;
}

uint64_t sub_24B0BE7E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B0BE850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareSentMessageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_10()
{
  v1 = type metadata accessor for ShareSentMessageView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  type metadata accessor for ShareSentMessageView.ShareState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_7;
    }

    v6 = sub_24B2D24A4();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A38);
  }

LABEL_7:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B0BEA7C@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ShareSentMessageView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24B0BD840(v4, a1);
}

uint64_t sub_24B0BEAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24B2D32B4();
  v6 = sub_24B2D32E4();
  (*(*(v6 - 8) + 56))(a3, 0, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9D90);
  v9 = a3 + v8[12];

  sub_24B2D4CC4();
  *v9 = v14;
  *(v9 + 8) = v15;
  v10 = a3 + v8[13];
  result = sub_24B2D4CC4();
  *v10 = v14;
  *(v10 + 8) = v15;
  v12 = (a3 + v8[9]);
  *v12 = &unk_24B2E4A68;
  v12[1] = v7;
  v13 = (a3 + v8[10]);
  *v13 = sub_24B0BF268;
  v13[1] = 0;
  *(a3 + v8[11]) = 1;
  return result;
}

uint64_t sub_24B0BEC50(int *a1)
{
  v1[2] = sub_24B2D5694();
  v1[3] = sub_24B2D5684();
  v5 = (a1 + *a1);
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_24B02CD04;

  return v5();
}

uint64_t sub_24B0BEDA8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ShareSentMessageView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_24B0BEE98()
{
  result = qword_27EFCA6A0;
  if (!qword_27EFCA6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA6A0);
  }

  return result;
}

double sub_24B0BEF0C(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  return result;
}

uint64_t sub_24B0BEF48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B0BEF90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_24B0BF028()
{
  sub_24B0BF0AC();
  if (v0 <= 0x3F)
  {
    sub_24B083D54();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B0BF0AC()
{
  if (!qword_27EFCA708)
  {
    sub_24B2D24A4();
    v0 = sub_24B2D1A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCA708);
    }
  }
}

unint64_t sub_24B0BF10C()
{
  result = qword_27EFCA710;
  if (!qword_27EFCA710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA718);
    sub_24B0BE5F4();
    sub_24B0BE704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA710);
  }

  return result;
}

uint64_t sub_24B0BF1D0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AFFD370;

  return sub_24B0BEC50(v2);
}

uint64_t sub_24B0BF268@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D3D74();
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  result = sub_24B2D45E4();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

unint64_t sub_24B0BF340()
{
  result = qword_27EFCA770;
  if (!qword_27EFCA770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA728);
    sub_24B0BF454(&qword_27EFCA778, &qword_27EFCA758, &unk_24B2E4B08, sub_24B0BF424);
    sub_24B039184(&qword_27EFCA798, &qword_27EFCA768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA770);
  }

  return result;
}

uint64_t sub_24B0BF454(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24B0BF4D8()
{
  result = qword_27EFCA788;
  if (!qword_27EFCA788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA748);
    sub_24B0BF590();
    sub_24B039184(&qword_27EFC8EB0, &qword_27EFC8EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA788);
  }

  return result;
}

unint64_t sub_24B0BF590()
{
  result = qword_27EFCA790;
  if (!qword_27EFCA790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA720);
    sub_24B039184(&qword_27EFCA738, &qword_27EFCA720);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8E90, &qword_27EFC8E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA790);
  }

  return result;
}

double sub_24B0BF6BC@<D0>(uint64_t a1@<X8>)
{
  if (qword_27EFC7610 != -1)
  {
    swift_once();
  }

  v3 = qword_27EFCA7C8;
  v39 = 1;
  sub_24B0BF8C8(v1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v41, __src, sizeof(v41));
  sub_24B008890(__dst, v36, &qword_27EFCA7D8);
  sub_24AFF8258(v41, &qword_27EFCA7D8);
  memcpy(&v38[7], __dst, 0x140uLL);
  v4 = v39;
  v5 = sub_24B2D3FB4();
  v6 = sub_24B2D4474();
  KeyPath = swift_getKeyPath();
  v8 = sub_24B2D4354();
  sub_24B2D32F4();
  v34 = v10;
  v35 = v9;
  v32 = v12;
  v33 = v11;
  v36[0] = 0;
  v13 = sub_24B2D4324();
  sub_24B2D32F4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  __src[0] = 0;
  v22 = sub_24B2D4344();
  sub_24B2D32F4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  memcpy((a1 + 17), v38, 0x147uLL);
  *(a1 + 344) = v5;
  *(a1 + 352) = KeyPath;
  *(a1 + 360) = v6;
  *(a1 + 368) = v8;
  *(a1 + 376) = v35;
  *(a1 + 384) = v34;
  result = v32;
  *(a1 + 392) = v33;
  *(a1 + 400) = v32;
  *(a1 + 408) = 0;
  *(a1 + 416) = v13;
  *(a1 + 424) = v15;
  *(a1 + 432) = v17;
  *(a1 + 440) = v19;
  *(a1 + 448) = v21;
  *(a1 + 456) = 0;
  *(a1 + 464) = v22;
  *(a1 + 472) = v24;
  *(a1 + 480) = v26;
  *(a1 + 488) = v28;
  *(a1 + 496) = v30;
  *(a1 + 504) = 0;
  return result;
}

uint64_t sub_24B0BF8C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v34 = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v30 = 0;
    v31 = 0;
    v27 = 0;
    v28 = 0;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    v29 = 1;
  }

  else
  {
    sub_24B0BFD64(&v51);
    v34 = v52;
    v35 = *(&v51 + 1);
    v32 = v53;
    v33 = *(&v52 + 1);
    v31 = *(&v53 + 1);
    v29 = v51;
    v30 = v54;
    v27 = v55;
    v28 = *(&v54 + 1);
    v25 = v56;
    v26 = *(&v55 + 1);
    v24 = *(&v56 + 1);
  }

  v4 = sub_24B2D5044();
  v22 = v5;
  v23 = v4;
  sub_24B0BFF94(a1, &v51);
  v64 = v55;
  v65 = v56;
  v66 = v57;
  v60 = v51;
  v61 = v52;
  v63 = v54;
  v62 = v53;
  v67[1] = v52;
  v67[0] = v51;
  v67[2] = v53;
  v67[3] = v54;
  v67[4] = v55;
  v67[5] = v56;
  v67[6] = v57;
  sub_24B008890(&v60, v43, &qword_27EFCA7E0);
  sub_24AFF8258(v67, &qword_27EFCA7E0);
  v72 = v64;
  v73 = v65;
  v74 = v66;
  v68 = v60;
  v69 = v61;
  v70 = v62;
  v71 = v63;
  if (v3)
  {
    sub_24B0BFD64(&v51);
    v7 = *(&v51 + 1);
    v6 = v51;
    v8 = *(&v52 + 1);
    v9 = v52;
    v10 = *(&v53 + 1);
    v11 = v53;
    v13 = *(&v54 + 1);
    v12 = v54;
    v15 = *(&v55 + 1);
    v14 = v55;
    v17 = *(&v56 + 1);
    v16 = v56;
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v8 = 0;
    v11 = 0;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v6 = 1;
  }

  v19 = v17;
  v20 = v16;
  *&v37 = v29;
  *(&v37 + 1) = v35;
  *&v38 = v34;
  *(&v38 + 1) = v33;
  *&v39 = v32;
  *(&v39 + 1) = v31;
  *&v40 = v30;
  *(&v40 + 1) = v28;
  *&v41 = v27;
  *(&v41 + 1) = v26;
  *&v42 = v25;
  *(&v42 + 1) = v24;
  __src[0] = v37;
  __src[1] = v38;
  __src[4] = v41;
  __src[5] = v42;
  __src[2] = v39;
  __src[3] = v40;
  *&v43[0] = v23;
  *(&v43[0] + 1) = v22;
  v43[1] = v68;
  v43[2] = v69;
  v43[6] = v73;
  v43[7] = v74;
  v43[4] = v71;
  v43[5] = v72;
  v43[3] = v70;
  __src[8] = v69;
  __src[9] = v70;
  __src[6] = v43[0];
  __src[7] = v68;
  __src[12] = v73;
  __src[13] = v74;
  __src[10] = v71;
  __src[11] = v72;
  *&v44 = v6;
  *(&v44 + 1) = v7;
  *&v45 = v9;
  *(&v45 + 1) = v8;
  *&v46 = v11;
  *(&v46 + 1) = v10;
  *&v47 = v12;
  *(&v47 + 1) = v13;
  *&v48 = v14;
  *(&v48 + 1) = v15;
  *&v49 = v16;
  *(&v49 + 1) = v17;
  __src[14] = v44;
  __src[15] = v45;
  __src[18] = v48;
  __src[19] = v49;
  __src[16] = v46;
  __src[17] = v47;
  memcpy(a2, __src, 0x140uLL);
  v50[0] = v6;
  v50[1] = v7;
  v50[2] = v9;
  v50[3] = v8;
  v50[4] = v11;
  v50[5] = v10;
  v50[6] = v12;
  v50[7] = v13;
  v50[8] = v14;
  v50[9] = v15;
  v50[10] = v20;
  v50[11] = v19;
  sub_24B008890(&v37, &v51, &qword_27EFCA7E8);
  sub_24B008890(v43, &v51, &qword_27EFCA7F0);
  sub_24B008890(&v44, &v51, &qword_27EFCA7E8);
  sub_24AFF8258(v50, &qword_27EFCA7E8);
  *&v51 = v23;
  *(&v51 + 1) = v22;
  v56 = v72;
  v57 = v73;
  v58 = v74;
  v52 = v68;
  v53 = v69;
  v54 = v70;
  v55 = v71;
  sub_24AFF8258(&v51, &qword_27EFCA7F0);
  v59[0] = v29;
  v59[1] = v35;
  v59[2] = v34;
  v59[3] = v33;
  v59[4] = v32;
  v59[5] = v31;
  v59[6] = v30;
  v59[7] = v28;
  v59[8] = v27;
  v59[9] = v26;
  v59[10] = v25;
  v59[11] = v24;
  sub_24AFF8258(v59, &qword_27EFCA7E8);
}

void sub_24B0BFD64(uint64_t a1@<X8>)
{
  v3 = sub_24B2D4BD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA800);
  sub_24B2D4CD4();
  if (v18)
  {
    v7 = v18;
    sub_24B2D4BB4();
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v8 = sub_24B2D4C14();

    (*(v4 + 8))(v6, v3);
    sub_24B2D5064();
    sub_24B2D3494();
    LOBYTE(v18) = 1;
    v16 = v20;
    v17 = v19;
    v15 = v21;
    v9 = 1;
    if (qword_27EFC7610 != -1)
    {
      swift_once();
    }

    v10 = qword_27EFCA7C8;

    v11 = sub_24B0C06C4;
    v13 = v16;
    v12 = v17;
    v14 = v15;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v11 = 0;
    v9 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 24) = v12;
  *(a1 + 40) = v13;
  *(a1 + 56) = v14;
  *(a1 + 72) = v10;
  *(a1 + 80) = v11;
  *(a1 + 88) = 0;
}

uint64_t sub_24B0BFF94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3D74();
  v26 = sub_24B2D45E4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  if (qword_27EFC7610 != -1)
  {
    swift_once();
  }

  v11 = qword_27EFCA7C8;
  v25 = qword_27EFCA7C8;
  LOBYTE(v34) = v7 & 1;
  LOBYTE(v29) = 0;
  v12 = *a1;
  v13 = a1[1];
  v34 = v12;
  v35 = v13;
  sub_24AFFE0A4();

  v14 = sub_24B2D4604();
  v16 = v15;
  *&v29 = v26;
  *(&v29 + 1) = v5;
  LOBYTE(v30) = v7 & 1;
  *(&v30 + 1) = v9;
  *&v31 = KeyPath;
  *(&v31 + 1) = 1;
  LOBYTE(v32) = 0;
  *(&v32 + 1) = v11;
  *&v33 = sub_24B0C06C4;
  *(&v33 + 1) = 0;
  v24 = KeyPath;
  v17 = v9;
  v19 = v18 & 1;
  v20 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v20;
  *(a2 + 64) = v33;
  v21 = v30;
  *a2 = v29;
  *(a2 + 16) = v21;
  *(a2 + 80) = v14;
  *(a2 + 88) = v15;
  *(a2 + 96) = v18 & 1;
  *(a2 + 104) = v22;
  sub_24B008890(&v29, &v34, &qword_27EFCA7F8);
  sub_24B083C44(v14, v16, v19);

  sub_24B083C34(v14, v16, v19);

  v34 = v26;
  v35 = v5;
  v36 = v7 & 1;
  *v37 = *v28;
  *&v37[3] = *&v28[3];
  v38 = v17;
  v39 = v24;
  v40 = 1;
  v41 = 0;
  *v42 = *v27;
  *&v42[3] = *&v27[3];
  v43 = v25;
  v44 = sub_24B0C06C4;
  v45 = 0;
  sub_24AFF8258(&v34, &qword_27EFCA7F8);
}

uint64_t sub_24B0C0254@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 3);
  v4 = *(v1 + 4);
  v11 = *v1;
  v12 = v4;
  v13 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = *v1;
  *(v5 + 32) = *(v1 + 2);
  *(v5 + 40) = v3;
  *(v5 + 48) = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA7D0);
  v7 = *(v6 + 60);
  *(a1 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8C38);
  swift_storeEnumTagMultiPayload();
  v8 = a1 + *(v6 + 64);
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  *a1 = sub_24B0C05D8;
  *(a1 + 8) = v5;
  *(a1 + 16) = nullsub_1;
  *(a1 + 24) = 0;
  *(a1 + 32) = -127;
  sub_24B0912CC(&v11, v10);
  sub_24B008890(&v13, v10, &qword_27EFC97D0);
  return sub_24B008890(&v12, v10, &qword_27EFC97D8);
}

uint64_t sub_24B0C03A8()
{
  sub_24B0C05FC();
  result = sub_24B2D3CE4();
  qword_27EFCA7C8 = result;
  return result;
}

void sub_24B0C03D8(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_24B2D5374();
  v11 = [objc_opt_self() imageNamed:v10 inBundle:v9];

  if (v11)
  {
    [v11 _applicationIconImageForFormat_precomposed_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97D0);
    sub_24B2D4CC4();
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = a3 & 1;
    *(a4 + 24) = v12;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24B0C051C(uint64_t a1, int a2)
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

uint64_t sub_24B0C0564(uint64_t result, int a2, int a3)
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

unint64_t sub_24B0C05FC()
{
  result = qword_27EFCA808;
  if (!qword_27EFCA808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA808);
  }

  return result;
}

unint64_t sub_24B0C0660()
{
  result = qword_27EFCA810;
  if (!qword_27EFCA810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA810);
  }

  return result;
}

uint64_t AccessoryOnboardingCoordinator.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AccessoryOnboardingCoordinator.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_24B0C0998;
}

void sub_24B0C0998(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *AccessoryOnboardingCoordinator.__allocating_init(presenter:accessory:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  return AccessoryOnboardingCoordinator.init(presenter:accessory:)(a1, a2);
}

{
  v5 = objc_allocWithZone(v2);
  return AccessoryOnboardingCoordinator.init(presenter:accessory:)(a1, a2);
}

char *AccessoryOnboardingCoordinator.init(presenter:accessory:)(void *a1, void *a2)
{
  v3 = v2;
  v31 = a1;
  v32 = a2;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = &v31 - v5;
  v6 = sub_24B2D3184();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v10 = &v3[OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_viewModel];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v3[OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_state] = 0;
  *&v3[OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_pairingStatusTask] = 0;
  v11 = OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_onboardingSession;
  type metadata accessor for OnboardingSessionLive();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  sub_24B2D3174();
  *&v3[v11] = v12;
  v13 = OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_logger;
  sub_24B2D3174();
  v14 = v31;
  swift_unknownObjectWeakAssign();
  v15 = v32;
  *&v3[OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_accessory] = v32;
  (*(v7 + 16))(v9, &v3[v13], v6);
  v16 = v15;
  v17 = sub_24B2D3164();
  v18 = sub_24B2D5934();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_24AFD2000, v17, v18, "AccessoryOnboardingCoordinator: init", v19, 2u);
    MEMORY[0x24C23D530](v19, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v35.receiver = v3;
  v35.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v35, sel_init);
  v21 = sub_24B2D56D4();
  v22 = v34;
  (*(*(v21 - 8) + 56))(v34, 1, 1, v21);
  sub_24B2D5694();
  v23 = v20;
  v24 = v16;
  v25 = v23;
  v26 = sub_24B2D5684();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v25;
  v27[5] = v24;
  v29 = sub_24B00AE38(0, 0, v22, &unk_24B2E4D80, v27);

  *&v25[OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_pairingStatusTask] = v29;

  return v25;
}

{
  v3 = v2;
  v31 = a1;
  v32 = a2;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = &v31 - v5;
  v6 = sub_24B2D3184();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v10 = &v3[OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_viewModel];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v3[OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_state] = 0;
  *&v3[OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_pairingStatusTask] = 0;
  v11 = OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_onboardingSession;
  type metadata accessor for OnboardingSessionLive();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  sub_24B2D3174();
  *&v3[v11] = v12;
  v13 = OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_logger;
  sub_24B2D3174();
  v14 = v31;
  swift_unknownObjectWeakAssign();
  v15 = v32;
  *&v3[OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_accessory] = v32;
  (*(v7 + 16))(v9, &v3[v13], v6);
  v16 = v15;
  v17 = sub_24B2D3164();
  v18 = sub_24B2D5934();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_24AFD2000, v17, v18, "AccessoryOnboardingCoordinator: init", v19, 2u);
    MEMORY[0x24C23D530](v19, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v35.receiver = v3;
  v35.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v35, sel_init);
  v21 = sub_24B2D56D4();
  v22 = v34;
  (*(*(v21 - 8) + 56))(v34, 1, 1, v21);
  sub_24B2D5694();
  v23 = v20;
  v24 = v16;
  v25 = v23;
  v26 = sub_24B2D5684();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v25;
  v27[5] = v24;
  v29 = sub_24B00AE38(0, 0, v22, &unk_24B2E4D88, v27);

  *&v25[OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_pairingStatusTask] = v29;

  return v25;
}

uint64_t sub_24B0C12C8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(void *, void *))
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a6(a3, a4);

  return v9;
}

Swift::Bool __swiftcall AccessoryOnboardingCoordinator.shouldShowFMOnboardingFlow()()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    ApplePencil = MobileGestalt_get_deviceSupportsFindApplePencil();

    LOBYTE(v0) = ApplePencil;
  }

  else
  {
    __break(1u);
  }

  return v0;
}

Swift::Void __swiftcall AccessoryOnboardingCoordinator.start()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_24B2D3164();
  v6 = sub_24B2D5934();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24AFD2000, v5, v6, "AccessoryOnboardingCoordinator: Started", v7, 2u);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  v8 = sub_24B2D56D4();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_24B2D5694();
  v9 = v1;
  v10 = sub_24B2D5684();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  sub_24B00A9A4(0, 0, v4, &unk_24B2E4D98, v11);
}

uint64_t sub_24B0C1630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[122] = a4;
  v5 = sub_24B2D3184();
  v4[123] = v5;
  v6 = *(v5 - 8);
  v4[124] = v6;
  v4[125] = *(v6 + 64);
  v4[126] = swift_task_alloc();
  v4[127] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA880);
  v4[128] = swift_task_alloc();
  sub_24B2D5694();
  v4[129] = sub_24B2D5684();
  v8 = sub_24B2D5604();
  v4[130] = v8;
  v4[131] = v7;

  return MEMORY[0x2822009F8](sub_24B0C176C, v8, v7);
}

uint64_t sub_24B0C176C()
{
  v1 = *(v0[122] + OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_pairingStatusTask);
  v0[132] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[133] = v2;
    *v2 = v0;
    v2[1] = sub_24B0C1AB8;

    return MEMORY[0x282200460](v0 + 26, v1, &type metadata for DiscoveredAccessoryPairingResult);
  }

  else
  {

    v3 = sub_24B2D3164();
    v4 = sub_24B2D5934();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24AFD2000, v3, v4, "AccessoryOnboardingCoordinator: No pairing status, returning", v5, 2u);
      MEMORY[0x24C23D530](v5, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong didCompleteAccessoryOnboarding:v0[122] pairingSuccessful:0];
      swift_unknownObjectRelease();
    }

    v7 = v0[122] + OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_viewModel;
    swift_beginAccess();
    if (*(v7 + 24))
    {
      v8 = v0[126];
      v9 = v0[124];
      v10 = v0[123];
      v11 = v0[122];
      sub_24B0C43AC(v7, (v0 + 41));
      v12 = v0[44];
      v13 = v0[45];
      __swift_project_boxed_opaque_existential_1(v0 + 41, v12);
      v14 = OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_logger;
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v9 + 16))(v8, v11 + v14, v10);
      v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = v15;
      (*(v9 + 32))(v17 + v16, v8, v10);
      v18 = *(v13 + 88);

      v18(sub_24B0C4480, v17, v12, v13);

      __swift_destroy_boxed_opaque_existential_0((v0 + 41));
    }

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_24B0C1AB8()
{
  v1 = *v0;

  v2 = *(v1 + 1048);
  v3 = *(v1 + 1040);

  return MEMORY[0x2822009F8](sub_24B0C1BFC, v3, v2);
}

uint64_t sub_24B0C1BFC()
{

  v1 = *(v0 + 208);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  if (v1 > 2)
  {
    if (v1 - 3 < 2)
    {
      v6 = sub_24B2D3164();
      v7 = sub_24B2D5934();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_24AFD2000, v6, v7, "AccessoryOnboardingCoordinator: Paired to another account, showing disclaimer", v8, 2u);
        MEMORY[0x24C23D530](v8, -1, -1);
      }

      v9 = *(v0 + 976);

      *(v9 + OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_state) = 4;
      v10 = *(v9 + OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_onboardingSession);
      v11 = *(v9 + OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_accessory);
      *(v0 + 392) = type metadata accessor for OnboardingSessionLive();
      *(v0 + 400) = &off_285E4D480;
      *(v0 + 368) = v10;
      locked = type metadata accessor for AccessoryLockedViewModel();
      v13 = swift_allocObject();
      *(v13 + 16) = 0x8000;
      *(v13 + 18) = 0;
      *(v13 + 104) = 0;
      *(v13 + 112) = 0;

      v14 = v11;
      sub_24B2D25B4();
      sub_24B07F7D0((v0 + 368), v13 + 24);
      *(v13 + 64) = v14;
      *(v13 + 72) = v3;
      *(v13 + 80) = v2;
      *(v13 + 88) = v5;
      *(v13 + 96) = v4;
      *(v0 + 472) = locked;
      *(v0 + 480) = &off_285E4D608;
      *(v0 + 448) = v13;
      sub_24B0C43AC(v0 + 448, v0 + 488);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA888);
      sub_24B2D4CC4();
      v15 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
      v16 = sub_24B2D5374();
      v17 = [v15 initWithBundleIdentifier_];

      *(v0 + 64) = v17;
      v18 = [objc_opt_self() imageDescriptorNamed_];
      *(v0 + 72) = v18;
      [v18 setBackground_];
      __swift_destroy_boxed_opaque_existential_0(v0 + 448);
      v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA890));
      v20 = sub_24B2D3EA4();
      *(v0 + 552) = locked;
      *(v0 + 560) = &off_285E4D608;
      *(v0 + 528) = v13;
      v21 = OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_viewModel;
      swift_beginAccess();

      sub_24B0C4410(v0 + 528, v9 + v21);
      swift_endAccess();
      sub_24B0C28E0(v20, 0);

      goto LABEL_23;
    }

    if (v1 != 5)
    {
      sub_24B0C4364(*(v0 + 216), *(v0 + 224));
      v59 = sub_24B2D3164();
      v60 = sub_24B2D5934();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_24AFD2000, v59, v60, "AccessoryOnboardingCoordinator: Account does not support pairing, Find My off, showing go to settings view", v61, 2u);
        MEMORY[0x24C23D530](v61, -1, -1);
      }

      v62 = *(v0 + 976);

      *(v62 + OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_state) = 5;
      v63 = *(v62 + OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_onboardingSession);
      v64 = *(v62 + OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_accessory);
      *(v0 + 632) = type metadata accessor for OnboardingSessionLive();
      *(v0 + 640) = &off_285E4D480;
      *(v0 + 608) = v63;
      ready = type metadata accessor for AccountNotReadyViewModel();
      v66 = swift_allocObject();
      *(v66 + 16) = 0;
      *(v66 + 24) = 0;
      *(v66 + 32) = 0x8000;
      *(v66 + 34) = 0;
      *(v66 + 88) = 0;
      *(v66 + 96) = 0;

      v67 = v64;
      sub_24B2D25B4();
      sub_24B07F7D0((v0 + 608), v66 + 40);
      *(v66 + 80) = v67;
      *(v0 + 432) = ready;
      *(v0 + 440) = &off_285E4D9A8;
      *(v0 + 408) = v66;
      sub_24B0C43AC(v0 + 408, v0 + 248);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA888);
      sub_24B2D4CC4();
      v68 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
      v69 = sub_24B2D5374();
      v70 = [v68 initWithBundleIdentifier_];

      *(v0 + 192) = v70;
      v71 = [objc_opt_self() imageDescriptorNamed_];
      *(v0 + 200) = v71;
      [v71 setBackground_];
      __swift_destroy_boxed_opaque_existential_0(v0 + 408);
      v72 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA890));
      v36 = sub_24B2D3EA4();
      *(v0 + 312) = ready;
      *(v0 + 320) = &off_285E4D9A8;
      *(v0 + 288) = v66;
      v73 = OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_viewModel;
      swift_beginAccess();

      sub_24B0C4410(v0 + 288, v62 + v73);
      goto LABEL_22;
    }

LABEL_12:
    sub_24B0C4364(*(v0 + 216), *(v0 + 224));
    v38 = sub_24B2D3164();
    v39 = sub_24B2D5934();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_24AFD2000, v38, v39, "AccessoryOnboardingCoordinator: Not paired, showing pairing view", v40, 2u);
      MEMORY[0x24C23D530](v40, -1, -1);
    }

    v41 = *(v0 + 1024);
    v42 = *(v0 + 1016);
    v43 = *(v0 + 976);

    *(v43 + OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_state) = 1;
    v44 = *(v43 + OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_onboardingSession);
    v45 = *(v43 + OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_accessory);
    v46 = type metadata accessor for AccessoryUnpairedViewModel();
    v47 = swift_allocObject();

    v48 = sub_24B0C4484(v44, v45, v47);
    sub_24B0C456C();
    swift_retain_n();
    sub_24B2D4F64();
    v49 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v50 = sub_24B2D5374();
    v51 = [v49 initWithBundleIdentifier_];

    *(v41 + *(v42 + 28)) = v51;
    v52 = [objc_opt_self() imageDescriptorNamed_];
    *(v41 + *(v42 + 32)) = v52;
    [v52 setBackground_];

    v53 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA8A0));
    v36 = sub_24B2D3EA4();
    *(v0 + 792) = v46;
    *(v0 + 800) = &off_285E4D8B8;
    *(v0 + 768) = v48;
    v54 = OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_viewModel;
    swift_beginAccess();

    sub_24B0C4410(v0 + 768, v43 + v54);
LABEL_22:
    swift_endAccess();
    sub_24B0C28E0(v36, 0);

LABEL_23:

    goto LABEL_24;
  }

  if (*(v0 + 208))
  {
    if (v1 != 1)
    {
      sub_24B0C4364(*(v0 + 216), *(v0 + 224));
      v22 = sub_24B2D3164();
      v23 = sub_24B2D5934();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_24AFD2000, v22, v23, "AccessoryOnboardingCoordinator: Already paired to me, showing disclaimer", v24, 2u);
        MEMORY[0x24C23D530](v24, -1, -1);
      }

      v25 = *(v0 + 976);

      *(v25 + OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_state) = 3;
      v26 = *(v25 + OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_onboardingSession);
      v27 = *(v25 + OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_accessory);
      *(v0 + 592) = type metadata accessor for OnboardingSessionLive();
      *(v0 + 600) = &off_285E4D480;
      *(v0 + 568) = v26;
      v28 = type metadata accessor for AccessoryLockedToMeViewModel();
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x8000;
      *(v29 + 34) = 0;
      *(v29 + 88) = 0;
      *(v29 + 96) = 0;

      v30 = v27;
      sub_24B2D25B4();
      sub_24B07F7D0((v0 + 568), v29 + 40);
      *(v29 + 80) = v30;
      *(v0 + 672) = v28;
      *(v0 + 680) = &off_285E4D540;
      *(v0 + 648) = v29;
      sub_24B0C43AC(v0 + 648, v0 + 688);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA888);
      sub_24B2D4CC4();
      v31 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
      v32 = sub_24B2D5374();
      v33 = [v31 initWithBundleIdentifier_];

      *(v0 + 128) = v33;
      v34 = [objc_opt_self() imageDescriptorNamed_];
      *(v0 + 136) = v34;
      [v34 setBackground_];
      __swift_destroy_boxed_opaque_existential_0(v0 + 648);
      v35 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA890));
      v36 = sub_24B2D3EA4();
      *(v0 + 752) = v28;
      *(v0 + 760) = &off_285E4D540;
      *(v0 + 728) = v29;
      v37 = OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_viewModel;
      swift_beginAccess();

      sub_24B0C4410(v0 + 728, v25 + v37);
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  sub_24B0C4364(*(v0 + 216), *(v0 + 224));
  v55 = sub_24B2D3164();
  v56 = sub_24B2D5934();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_24AFD2000, v55, v56, "AccessoryOnboardingCoordinator: Pairing status unknown, returning", v57, 2u);
    MEMORY[0x24C23D530](v57, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didCompleteAccessoryOnboarding:*(v0 + 976) pairingSuccessful:0];
    swift_unknownObjectRelease();
  }

LABEL_24:
  v74 = *(v0 + 976) + OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_viewModel;
  swift_beginAccess();
  if (*(v74 + 24))
  {
    v75 = *(v0 + 1008);
    v76 = *(v0 + 992);
    v77 = *(v0 + 984);
    v78 = *(v0 + 976);
    sub_24B0C43AC(v74, v0 + 328);
    v79 = *(v0 + 352);
    v80 = *(v0 + 360);
    __swift_project_boxed_opaque_existential_1((v0 + 328), v79);
    v81 = OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_logger;
    v82 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v76 + 16))(v75, v78 + v81, v77);
    v83 = (*(v76 + 80) + 24) & ~*(v76 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v82;
    (*(v76 + 32))(v84 + v83, v75, v77);
    v85 = *(v80 + 88);

    v85(sub_24B0C4480, v84, v79, v80);

    __swift_destroy_boxed_opaque_existential_0(v0 + 328);
  }

  v86 = *(v0 + 8);

  return v86();
}

void sub_24B0C28E0(void *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v5 = [a1 navigationItem];
    [v5 setHidesBackButton:a2 & 1 animated:0];

    v6 = sub_24B2D3164();
    v7 = sub_24B2D5934();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24AFD2000, v6, v7, "AccessoryOnboardingCoordinator: Pushing next view", v8, 2u);
      MEMORY[0x24C23D530](v8, -1, -1);
    }

    [v14 pushViewController:a1 animated:1];
  }

  else
  {
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {
      return;
    }

    v10 = v9;
    v11 = sub_24B2D3164();
    v12 = sub_24B2D5934();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24AFD2000, v11, v12, "AccessoryOnboardingCoordinator: Presenting next view", v13, 2u);
      MEMORY[0x24C23D530](v13, -1, -1);
    }

    v14 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    [v14 setModalPresentationStyle_];
    [v14 setModalInPresentation_];
    sub_24B0C493C();
    [swift_getObjCClassFromMetadata() preferredContentSize];
    [v14 setPreferredContentSize_];
    swift_unknownObjectWeakAssign();
    [v10 presentViewController:v14 animated:1 completion:0];
  }
}

uint64_t sub_24B0C2C18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 258) = v15;
  *(v8 + 200) = a7;
  *(v8 + 208) = a8;
  *(v8 + 192) = a6;
  *(v8 + 257) = a5;
  *(v8 + 256) = a4;
  v9 = sub_24B2D3184();
  *(v8 + 216) = v9;
  v10 = *(v9 - 8);
  *(v8 + 224) = v10;
  *(v8 + 232) = *(v10 + 64);
  *(v8 + 240) = swift_task_alloc();
  sub_24B2D5694();
  *(v8 + 248) = sub_24B2D5684();
  v12 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B0C2D2C, v12, v11);
}

uint64_t sub_24B0C2D2C()
{
  v1 = *(v0 + 256);

  if (v1 != 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_10;
    }

    [Strong didCompleteAccessoryOnboarding:*(v0 + 192) pairingSuccessful:*(v0 + 257)];
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  if (*(v0 + 257) != 1)
  {
    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    if (!v30)
    {
      goto LABEL_10;
    }

    [v30 didCompleteAccessoryOnboarding:*(v0 + 192) pairingSuccessful:0];
    goto LABEL_9;
  }

  v2 = *(v0 + 258);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);
  *(v5 + OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_state) = 2;
  v6 = *(v5 + OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_onboardingSession);
  v7 = *(v5 + OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_accessory);
  v8 = type metadata accessor for AccessoryPairedViewModel();
  v9 = swift_allocObject();

  v10 = sub_24B0C4728(v6, v7, v4, v3, v2 & 1, v9);
  v11 = objc_allocWithZone(MEMORY[0x277D1B1A8]);

  v12 = sub_24B2D5374();
  v13 = [v11 initWithBundleIdentifier_];

  v14 = [objc_opt_self() imageDescriptorNamed_];
  [v14 setBackground_];
  *(v0 + 144) = v10;
  *(v0 + 152) = v13;
  *(v0 + 160) = v14;
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA8B8));
  v16 = sub_24B2D3EA4();
  *(v0 + 40) = v8;
  *(v0 + 48) = &off_285E4D760;
  *(v0 + 16) = v10;
  v17 = v5 + OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_viewModel;
  swift_beginAccess();

  sub_24B0C4410(v0 + 16, v17);
  swift_endAccess();
  sub_24B0C28E0(v16, 1);

  if (*(v17 + 24))
  {
    v18 = *(v0 + 240);
    v19 = *(v0 + 216);
    v20 = *(v0 + 224);
    v21 = *(v0 + 192);
    sub_24B0C43AC(v17, v0 + 56);
    v22 = *(v0 + 80);
    v23 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v22);
    v24 = OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_logger;
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v20 + 16))(v18, v21 + v24, v19);
    v26 = (*(v20 + 80) + 24) & ~*(v20 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    (*(v20 + 32))(v27 + v26, v18, v19);
    v28 = *(v23 + 88);

    v28(sub_24B0C49D0, v27, v22, v23);

    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

LABEL_10:

  v31 = *(v0 + 8);

  return v31();
}

void sub_24B0C3128(char a1, int a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  LODWORD(v11) = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v48 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = sub_24B2D3164();
    v19 = sub_24B2D5934();
    v20 = os_log_type_enabled(v18, v19);
    v50 = a7;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v51 = v17;
      v22 = v21;
      v49 = swift_slowAlloc();
      v54[0] = v49;
      *v22 = 136315650;
      LOBYTE(v55[0]) = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA8A8);
      v23 = sub_24B2D53C4();
      LODWORD(v52) = v11;
      v25 = sub_24AFF321C(v23, v24, v54);
      HIDWORD(v48) = v19;
      v26 = a1;
      v27 = v15;
      v28 = a3;
      v29 = a4;
      v30 = a5;
      v31 = v25;

      *(v22 + 4) = v31;
      *(v22 + 12) = 2080;
      LOBYTE(v55[0]) = v52;
      v32 = sub_24B2D53C4();
      v34 = sub_24AFF321C(v32, v33, v54);

      *(v22 + 14) = v34;
      *(v22 + 22) = 2080;
      a5 = v30;
      a4 = v29;
      a3 = v28;
      v15 = v27;
      a1 = v26;
      v55[0] = a3;
      v55[1] = a4;
      v56 = a5 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA8B0);
      v35 = sub_24B2D53C4();
      v11 = sub_24AFF321C(v35, v36, v54);

      *(v22 + 24) = v11;
      LOBYTE(v11) = v52;
      _os_log_impl(&dword_24AFD2000, v18, BYTE4(v48), "AccessoryOnboardingCoordinator: Completing onboarding\npairing skipped? %s\npairing successful? %s\npairingLocation: %s", v22, 0x20u);
      v37 = v49;
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v37, -1, -1);
      v38 = v22;
      v17 = v51;
      MEMORY[0x24C23D530](v38, -1, -1);
    }

    if (a1 != 2 && (a1 & 1) != 0 && v11 != 2 && (v11 & 1) == 0 && (a5 & 1) != 0)
    {
      v45 = OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_viewModel;
      swift_beginAccess();
      sub_24B0C46B8(&v17[v45], v55);
      if (v57)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA888);
        type metadata accessor for AccessoryUnpairedViewModel();
        if (swift_dynamicCast())
        {
          v51 = v17;
          v46 = *(v53 + 56);

          v47 = v46;
          sub_24B0C7578(v47);

          v17 = v51;
        }
      }

      else
      {
        sub_24AFF8258(v55, &qword_27EFCA878);
      }
    }

    v39 = v17[OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_state];
    v40 = sub_24B2D56D4();
    (*(*(v40 - 8) + 56))(v15, 1, 1, v40);
    sub_24B2D5694();
    v41 = v17;
    v42 = sub_24B2D5684();
    v43 = swift_allocObject();
    v44 = MEMORY[0x277D85700];
    *(v43 + 16) = v42;
    *(v43 + 24) = v44;
    *(v43 + 32) = v39;
    *(v43 + 33) = v11 & 1;
    *(v43 + 40) = v41;
    *(v43 + 48) = a3;
    *(v43 + 56) = a4;
    *(v43 + 64) = a5 & 1;
    sub_24B00A9A4(0, 0, v15, &unk_24B2E4ED8, v43);
  }
}

uint64_t sub_24B0C36A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[16] = a1;
  sub_24B2D5694();
  v5[19] = sub_24B2D5684();
  v7 = sub_24B2D5604();
  v5[20] = v7;
  v5[21] = v6;

  return MEMORY[0x2822009F8](sub_24B0C3740, v7, v6);
}

uint64_t sub_24B0C3740()
{
  v0[22] = OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_logger;
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24AFD2000, v1, v2, "AccessoryOnboardingCoordinator: Getting accessory pairing status", v3, 2u);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v4 = v0[17];

  v0[23] = *(v4 + OBJC_IVAR___FMUIAccessoryOnboardingCoordinator_onboardingSession);

  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_24B0C3884;
  v6 = v0[18];

  return sub_24B0C7700((v0 + 2), v6, 1);
}

uint64_t sub_24B0C3884()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_24B0C3B84;
  }

  else
  {

    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_24B0C39A0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B0C39A0()
{
  v20 = v0;

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_24B0C4988(v2, v3);
  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();
  sub_24B0C4364(v2, v3);
  if (os_log_type_enabled(v6, v7))
  {
    buf = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *buf = 136315138;
    *(v0 + 56) = v1;
    *(v0 + 64) = v2;
    *(v0 + 72) = v3;
    *(v0 + 80) = v4;
    *(v0 + 88) = v5;
    sub_24B0C4988(v2, v3);
    v8 = sub_24B2D53C4();
    v10 = v6;
    v11 = v7;
    v12 = v1;
    v13 = sub_24AFF321C(v8, v9, &v19);

    *(buf + 4) = v13;
    v1 = v12;
    _os_log_impl(&dword_24AFD2000, v10, v11, "AccessoryOnboardingCoordinator: Pairing Status: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x24C23D530](v18, -1, -1);
    MEMORY[0x24C23D530](buf, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 128);
  *v14 = v1;
  *(v14 + 8) = v2;
  *(v14 + 16) = v3;
  *(v14 + 24) = v4;
  *(v14 + 32) = v5;
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24B0C3B84()
{
  v19 = v0;
  v1 = v0[25];

  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5934();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = *(v0[13] - 8);
    v9 = swift_task_alloc();
    (*(v8 + 16))(v9);
    v10 = sub_24B2D53C4();
    v12 = v11;

    v13 = sub_24AFF321C(v10, v12, &v18);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_24AFD2000, v3, v4, "AccessoryOnboardingCoordinator: Error getting pairing status: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C23D530](v7, -1, -1);
    MEMORY[0x24C23D530](v6, -1, -1);
  }

  else
  {
    v14 = v0[25];
  }

  v15 = v0[16];
  *v15 = 0;
  *(v15 + 8) = xmmword_24B2E4D60;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  v16 = v0[1];

  return v16();
}

id AccessoryOnboardingCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccessoryOnboardingCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24B0C3FD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFDE44;

  return sub_24B0C36A4(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_11()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24B0C40DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AFFDE44;

  return sub_24B0C1630(a1, v4, v5, v6);
}

uint64_t type metadata accessor for AccessoryOnboardingCoordinator()
{
  result = qword_27EFCA860;
  if (!qword_27EFCA860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B0C41E4()
{
  result = sub_24B2D3184();
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

uint64_t dispatch thunk of AccessoryOnboardingCoordinator.__allocating_init(presenter:accessory:)()
{
  return (*(v0 + 152))();
}

{
  return (*(v0 + 160))();
}

unint64_t sub_24B0C4310()
{
  result = qword_27EFCA870;
  if (!qword_27EFCA870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA870);
  }

  return result;
}

uint64_t sub_24B0C4364(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_24B0C43AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24B0C4410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA878);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_24B0C4484(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = type metadata accessor for OnboardingSessionLive();
  v10 = &off_285E4D480;
  *&v8 = a1;
  a3[8] = 0;
  a3[9] = 0;
  sub_24B2D3174();
  *(a3 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__shouldShowAlert) = 0;
  v6 = (a3 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__subtitle);
  *v6 = 0;
  v6[1] = 0;
  *(a3 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__state) = 2;
  sub_24B2D25B4();
  sub_24B07F7D0(&v8, (a3 + 2));
  a3[7] = a2;
  return a3;
}

unint64_t sub_24B0C456C()
{
  result = qword_27EFCA898;
  if (!qword_27EFCA898)
  {
    type metadata accessor for AccessoryUnpairedViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA898);
  }

  return result;
}

uint64_t sub_24B0C45C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 33);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 32);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFD370;

  return sub_24B0C2C18(a1, v4, v5, v10, v6, v7, v8, v9);
}

uint64_t sub_24B0C46B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA878);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B0C4728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v14 = type metadata accessor for OnboardingSessionLive();
  v15 = &off_285E4D480;
  *&v13 = a1;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  *(a6 + 40) = 0xE000000000000000;
  *(a6 + 48) = 0;
  *(a6 + 56) = 0xE000000000000000;
  *(a6 + 136) = 0;
  *(a6 + 144) = 0;
  *(a6 + 152) = 0;
  sub_24B2D25B4();
  sub_24B07F7D0(&v13, a6 + 64);
  *(a6 + 104) = a2;
  *(a6 + 112) = a3;
  *(a6 + 120) = a4;
  *(a6 + 128) = a5 & 1;
  return a6;
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_24B0C4898(char a1, int a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = *(sub_24B2D3184() - 8);
  v12 = *(v5 + 16);
  v13 = v5 + ((*(v11 + 80) + 24) & ~*(v11 + 80));

  sub_24B0C3128(a1, a2, a3, a4, a5 & 1, v12, v13);
}

unint64_t sub_24B0C493C()
{
  result = qword_27EFCA8C0;
  if (!qword_27EFCA8C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFCA8C0);
  }

  return result;
}

uint64_t sub_24B0C4988(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t DiscoveredAccessoryProductType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_24B0C49E8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t DiscoveredAccessoryPairingStatus.hashValue.getter()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

uint64_t sub_24B0C4A8C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = sub_24B2D2114();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24B2D2074();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7BA8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v17 = v1[1];
  v18 = v1[2];
  v19 = v1[3];
  if (!v17)
  {
    goto LABEL_12;
  }

  v20 = *v1;
  v21 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    sub_24B2D20F4();
    sub_24B2D2044();
    v23 = v40;
    v22 = v41;
    v24 = *(v40 + 48);
    if (!v24(v16, 1, v41))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7BD0);
      v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_24B2DE430;
      (*(v5 + 16))(v26 + v25, v7, v4);
      sub_24B2D2094();
    }

    if (v24(v16, 1, v22))
    {
      (*(v5 + 8))(v7, v4);
      v27 = sub_24B2D22D4();
      (*(*(v27 - 8) + 56))(v42, 1, 1, v27);
    }

    else
    {
      v38 = v39;
      (*(v23 + 16))(v39, v16, v22);
      sub_24B2D20B4();
      (*(v23 + 8))(v38, v22);
      (*(v5 + 8))(v7, v4);
    }

    return sub_24B0C595C(v16);
  }

  else
  {
    if (!v19)
    {
      goto LABEL_15;
    }

LABEL_12:
    v28 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v28 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A78);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_24B2DE430;
      *(v29 + 56) = MEMORY[0x277D837D0];
      *(v29 + 64) = sub_24B075024();
      *(v29 + 32) = v18;
      *(v29 + 40) = v19;

      sub_24B2D53A4();
      sub_24B2D20F4();

      sub_24B0C58EC(v14, v11);
      v31 = v40;
      v30 = v41;
      if ((*(v40 + 48))(v11, 1, v41) == 1)
      {
        sub_24B0C595C(v14);
        sub_24B0C595C(v11);
        v32 = sub_24B2D22D4();
        return (*(*(v32 - 8) + 56))(v42, 1, 1, v32);
      }

      else
      {
        sub_24B2D20B4();
        sub_24B0C595C(v14);
        return (*(v31 + 8))(v11, v30);
      }
    }

    else
    {
LABEL_15:
      v34 = sub_24B2D22D4();
      v35 = *(*(v34 - 8) + 56);
      v36 = v34;
      v37 = v42;

      return v35(v37, 1, 1, v36);
    }
  }
}

id DiscoveredAccessory.__allocating_init(identifier:productType:productImage:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_24B0C5278(a1, a2, a3);

  return v8;
}

id DiscoveredAccessory.init(identifier:productType:productImage:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_24B0C5278(a1, a2, a3);

  return v4;
}

id DiscoveredAccessory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiscoveredAccessory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24B0C5278(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR___FMUIDiscoveredAccessory_identifier;
  v9 = sub_24B2D2504();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v3[v8], a1, v9);
  *&v3[OBJC_IVAR___FMUIDiscoveredAccessory_productType] = a2;
  if (!a3 || ([a3 scale], v12 = v11, v17.width = 60.0, v17.height = 60.0, UIGraphicsBeginImageContextWithOptions(v17, 0, v12), objc_msgSend(a3, sel_drawInRect_, 0.0, 0.0, 60.0, 60.0), v13 = UIGraphicsGetImageFromCurrentImageContext(), UIGraphicsEndImageContext(), !v13))
  {
    v13 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  *&v3[OBJC_IVAR___FMUIDiscoveredAccessory_productImage] = v13;
  v16.receiver = v3;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v10 + 8))(a1, v9);
  return v14;
}

unint64_t sub_24B0C5400()
{
  result = qword_27EFCA8C8;
  if (!qword_27EFCA8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA8C8);
  }

  return result;
}

unint64_t sub_24B0C5458()
{
  result = qword_27EFCA8D0;
  if (!qword_27EFCA8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA8D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiscoveredAccessoryPairingStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DiscoveredAccessoryPairingStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12FindMyUICore31DiscoveredAccessoryLostModeInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_24B0C5630(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_24B0C5698(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24B0C5700(uint64_t a1, unsigned int a2)
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

uint64_t sub_24B0C575C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for DiscoveredAccessory()
{
  result = qword_27EFCA8D8;
  if (!qword_27EFCA8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B0C5814()
{
  result = sub_24B2D2504();
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

uint64_t sub_24B0C58EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7BA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B0C595C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7BA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B0C59D8()
{
  result = qword_27EFCA8E8;
  if (!qword_27EFCA8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA8E8);
  }

  return result;
}

uint64_t sub_24B0C5A2C(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  if (!(a1 >> 6))
  {
    if (qword_27EFC7618 == -1)
    {
LABEL_6:
      v5 = sub_24B2D1454();
      v6 = __swift_project_value_buffer(v5, qword_27EFE44E8);
      v7 = *(v5 - 8);
      (*(v7 + 16))(v4, v6, v5);
      (*(v7 + 56))(v4, 0, 1, v5);
      goto LABEL_14;
    }

LABEL_15:
    swift_once();
    goto LABEL_6;
  }

  if (a1 >> 6 == 1)
  {
    if (qword_27EFC7618 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (a1)
  {
    if (qword_27EFC7618 != -1)
    {
      swift_once();
    }

    v8 = sub_24B2D1454();
    v9 = __swift_project_value_buffer(v8, qword_27EFE44E8);
    v10 = *(v8 - 8);
    (*(v10 + 16))(v4, v9, v8);
    (*(v10 + 56))(v4, 0, 1, v8);
  }

  else
  {
    if (qword_27EFC7620 != -1)
    {
      swift_once();
    }

    v11 = sub_24B2D1454();
    v12 = __swift_project_value_buffer(v11, qword_27EFE4500);
    v13 = *(v11 - 8);
    (*(v13 + 16))(v4, v12, v11);
    (*(v13 + 56))(v4, 0, 1, v11);
  }

LABEL_14:
  v14 = sub_24B2D52D4();
  sub_24B0C6490(v4);
  return v14;
}

uint64_t sub_24B0C5E18(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if (a1)
      {
        if (qword_27EFC7618 == -1)
        {
LABEL_5:
          v5 = sub_24B2D1454();
          v6 = __swift_project_value_buffer(v5, qword_27EFE44E8);
          v7 = *(v5 - 8);
          (*(v7 + 16))(v4, v6, v5);
          (*(v7 + 56))(v4, 0, 1, v5);
          goto LABEL_20;
        }

LABEL_21:
        swift_once();
        goto LABEL_5;
      }

      if (qword_27EFC7620 == -1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (a1)
      {
        if (qword_27EFC7618 == -1)
        {
          goto LABEL_5;
        }

        goto LABEL_21;
      }

      if (qword_27EFC7620 == -1)
      {
LABEL_19:
        v14 = sub_24B2D1454();
        v15 = __swift_project_value_buffer(v14, qword_27EFE4500);
        v16 = *(v14 - 8);
        (*(v16 + 16))(v4, v15, v14);
        (*(v16 + 56))(v4, 0, 1, v14);
        goto LABEL_20;
      }
    }

    swift_once();
    goto LABEL_19;
  }

  if (a1)
  {
    if (qword_27EFC7618 != -1)
    {
      swift_once();
    }

    v8 = sub_24B2D1454();
    v9 = __swift_project_value_buffer(v8, qword_27EFE44E8);
    v10 = *(v8 - 8);
    (*(v10 + 16))(v4, v9, v8);
    (*(v10 + 56))(v4, 0, 1, v8);
  }

  else
  {
    if (qword_27EFC7620 != -1)
    {
      swift_once();
    }

    v11 = sub_24B2D1454();
    v12 = __swift_project_value_buffer(v11, qword_27EFE4500);
    v13 = *(v11 - 8);
    (*(v13 + 16))(v4, v12, v11);
    (*(v13 + 56))(v4, 0, 1, v11);
  }

LABEL_20:
  v17 = sub_24B2D52D4();
  sub_24B0C6490(v4);
  return v17;
}

uint64_t sub_24B0C6394()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1 >> 6);
  MEMORY[0x24C23C8D0](v1 & 1);
  return sub_24B2D6124();
}

uint64_t sub_24B0C63E8()
{
  v1 = *v0;
  MEMORY[0x24C23C8D0](v1 >> 6);
  return MEMORY[0x24C23C8D0](v1 & 1);
}

uint64_t sub_24B0C6428()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1 >> 6);
  MEMORY[0x24C23C8D0](v1 & 1);
  return sub_24B2D6124();
}

uint64_t sub_24B0C6490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for OnboardingBulletPoint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 130 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 130) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 130;
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

      return (*a1 | (v4 << 8)) - 130;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for OnboardingBulletPoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B0C6688()
{
  result = qword_27EFCA8F0;
  if (!qword_27EFCA8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA8F0);
  }

  return result;
}

unint64_t sub_24B0C66E0()
{
  result = qword_27EFCA8F8;
  if (!qword_27EFCA8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA8F8);
  }

  return result;
}

BOOL sub_24B0C6734(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a2 ^ a1;
  v3 = ((a2 ^ a1) & 1) == 0;
  if (a2 >= 0x40u)
  {
    v3 = 0;
  }

  v4 = a2 & 0xC0;
  v5 = (v2 & 1) == 0;
  if (v4 != 64)
  {
    v5 = 0;
  }

  v6 = (v2 & 1) == 0;
  if (v4 != 128)
  {
    v6 = 0;
  }

  if (a1 >> 6 == 1)
  {
    v6 = v5;
  }

  if (a1 >> 6)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for OnboardingErrorMessage(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3FFE)
  {
    goto LABEL_17;
  }

  if (a2 + 49154 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 49154 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 49154;
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

      return (*a1 | (v4 << 16)) - 49154;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 49154;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3E00 | (*a1 >> 14) & 0xFFFFFE03 | (4 * (*a1 >> 1))) ^ 0x3FFF;
  if (v6 >= 0x3FFD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for OnboardingErrorMessage(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49154 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 49154 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3FFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3FFD)
  {
    v6 = ((a2 - 16382) >> 16) + 1;
    *result = a2 - 16382;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    v7 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
    *result = (4 * v7) & 0xFE00 | (2 * (v7 & 0x7F));
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_24B0C690C(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 14;
  v4 = (v1 & 1 | (2 * ((v1 >> 8) & 1))) + 2;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_WORD *sub_24B0C6944(_WORD *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0x101 | (a2 << 14);
  }

  else
  {
    *result = (a2 & 1 | (((a2 >> 1) & 1) << 8)) ^ 0x8100;
  }

  return result;
}

uint64_t sub_24B0C698C(unsigned __int16 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  if (!(a1 >> 14))
  {
    if (a1)
    {
      if (qword_27EFC7618 != -1)
      {
        swift_once();
      }

      v8 = sub_24B2D1454();
      v9 = __swift_project_value_buffer(v8, qword_27EFE44E8);
      v10 = *(v8 - 8);
      (*(v10 + 16))(v4, v9, v8);
      (*(v10 + 56))(v4, 0, 1, v8);
    }

    else
    {
      if (qword_27EFC7620 != -1)
      {
        swift_once();
      }

      v15 = sub_24B2D1454();
      v16 = __swift_project_value_buffer(v15, qword_27EFE4500);
      v17 = *(v15 - 8);
      (*(v17 + 16))(v4, v16, v15);
      (*(v17 + 56))(v4, 0, 1, v15);
    }

    goto LABEL_18;
  }

  if (a1 >> 14 == 1)
  {
    if ((a1 & 0x100) != 0)
    {
      if (qword_27EFC7618 != -1)
      {
        swift_once();
      }

      v12 = sub_24B2D1454();
      v13 = __swift_project_value_buffer(v12, qword_27EFE44E8);
      v14 = *(v12 - 8);
      (*(v14 + 16))(v4, v13, v12);
      (*(v14 + 56))(v4, 0, 1, v12);
    }

    else
    {
      if (qword_27EFC7620 != -1)
      {
        swift_once();
      }

      v5 = sub_24B2D1454();
      v6 = __swift_project_value_buffer(v5, qword_27EFE4500);
      v7 = *(v5 - 8);
      (*(v7 + 16))(v4, v6, v5);
      (*(v7 + 56))(v4, 0, 1, v5);
    }

LABEL_18:
    v11 = sub_24B2D52D4();
    sub_24B0C6490(v4);
    return v11;
  }

  return 0;
}

uint64_t sub_24B0C6D88(unsigned __int16 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  if (!(a1 >> 14))
  {
    if (a1)
    {
      if (qword_27EFC7618 != -1)
      {
        swift_once();
      }

      v5 = sub_24B2D1454();
      v6 = __swift_project_value_buffer(v5, qword_27EFE44E8);
      v7 = *(v5 - 8);
      (*(v7 + 16))(v4, v6, v5);
      (*(v7 + 56))(v4, 0, 1, v5);
      goto LABEL_19;
    }

    if (qword_27EFC7620 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  if (a1 >> 14 == 1)
  {
    if ((a1 & 0x100) != 0)
    {
      if (qword_27EFC7618 != -1)
      {
        swift_once();
      }

      v9 = sub_24B2D1454();
      v10 = __swift_project_value_buffer(v9, qword_27EFE44E8);
      v11 = *(v9 - 8);
      (*(v11 + 16))(v4, v10, v9);
      (*(v11 + 56))(v4, 0, 1, v9);
      goto LABEL_19;
    }

    if (a1)
    {
      if (qword_27EFC7620 == -1)
      {
        goto LABEL_18;
      }
    }

    else if (qword_27EFC7620 == -1)
    {
LABEL_18:
      v12 = sub_24B2D1454();
      v13 = __swift_project_value_buffer(v12, qword_27EFE4500);
      v14 = *(v12 - 8);
      (*(v14 + 16))(v4, v13, v12);
      (*(v14 + 56))(v4, 0, 1, v12);
LABEL_19:
      v8 = sub_24B2D52D4();
      sub_24B0C6490(v4);
      return v8;
    }

LABEL_21:
    swift_once();
    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_24B0C7240()
{
  v1 = *v0;
  sub_24B2D60E4();
  if (v1 >> 14)
  {
    if (v1 >> 14 == 1)
    {
      MEMORY[0x24C23C8D0](2);
      MEMORY[0x24C23C8D0](v1 & 1);
      v2 = (v1 >> 8) & 1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    MEMORY[0x24C23C8D0](1);
    v2 = v1 & 1;
  }

  MEMORY[0x24C23C8D0](v2);
  return sub_24B2D6124();
}

uint64_t sub_24B0C72D0()
{
  v1 = *v0;
  if (v1 >> 14)
  {
    if (v1 >> 14 == 1)
    {
      MEMORY[0x24C23C8D0](2);
      MEMORY[0x24C23C8D0](v1 & 1);
      v2 = (v1 >> 8) & 1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    MEMORY[0x24C23C8D0](1);
    v2 = v1 & 1;
  }

  return MEMORY[0x24C23C8D0](v2);
}

uint64_t sub_24B0C733C()
{
  v1 = *v0;
  sub_24B2D60E4();
  if (v1 >> 14)
  {
    if (v1 >> 14 == 1)
    {
      MEMORY[0x24C23C8D0](2);
      MEMORY[0x24C23C8D0](v1 & 1);
      v2 = (v1 >> 8) & 1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    MEMORY[0x24C23C8D0](1);
    v2 = v1 & 1;
  }

  MEMORY[0x24C23C8D0](v2);
  return sub_24B2D6124();
}

unint64_t sub_24B0C73E4()
{
  result = qword_27EFCA900;
  if (!qword_27EFCA900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA900);
  }

  return result;
}

unint64_t sub_24B0C743C()
{
  result = qword_27EFCA908;
  if (!qword_27EFCA908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA908);
  }

  return result;
}

BOOL sub_24B0C7490(unsigned __int16 a1, unsigned __int16 a2)
{
  if (!(a1 >> 14))
  {
    if (a2 < 0x4000u)
    {
      return ((a2 ^ a1) & 1) == 0;
    }

    return 0;
  }

  if (a1 >> 14 != 1)
  {
    return a2 == 0x8000;
  }

  if ((a2 & 0xC000) != 0x4000)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0x100) == 0;
}

uint64_t OnboardingSessionLive.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_24B2D3174();
  return v0;
}

void sub_24B0C7578(void *a1)
{
  v1 = a1;
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    sub_24B2D2504();
    sub_24B0C995C();
    v6 = sub_24B2D5FA4();
    v8 = sub_24AFF321C(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_24AFD2000, v2, v3, "OnboardingSessionLive: disabling FindMy pairing for identifier: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v9 = sub_24B0C7FA8();
  v10 = sub_24B2D24C4();
  [v9 disableFindMyPairingWithIdentifier_];
}

uint64_t sub_24B0C7700(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 168) = a2;
  *(v4 + 176) = v3;
  *(v4 + 248) = a3;
  *(v4 + 160) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA940);
  *(v4 + 184) = v5;
  *(v4 + 192) = *(v5 - 8);
  *(v4 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B0C77D4, 0, 0);
}

uint64_t sub_24B0C77D4()
{
  v21 = v0;
  v1 = *(v0 + 168);
  *(v0 + 208) = OBJC_IVAR____TtC12FindMyUICore21OnboardingSessionLive_logger;
  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5934();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    sub_24B2D2504();
    sub_24B0C995C();
    v7 = sub_24B2D5FA4();
    v9 = sub_24AFF321C(v7, v8, &v20);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24AFD2000, v3, v4, "OnboardingSessionLive: Getting pairing status for identifier: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C23D530](v6, -1, -1);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  v10 = *(v0 + 192);
  v19 = *(v0 + 200);
  v11 = *(v0 + 184);
  v12 = *(v0 + 248);
  *(v0 + 216) = OBJC_IVAR___FMUIDiscoveredAccessory_identifier;
  v13 = objc_allocWithZone(MEMORY[0x277D495E0]);
  v14 = sub_24B2D24C4();
  v15 = [v13 initWithIdentifier_];
  *(v0 + 224) = v15;

  [v15 setWantsLostModeInfo_];
  v16 = sub_24B0C7FA8();
  *(v0 + 232) = v16;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_24B0C7B18;
  swift_continuation_init();
  *(v0 + 136) = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  sub_24B0C99B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0);
  sub_24B2D5614();
  (*(v10 + 32))(boxed_opaque_existential_0, v19, v11);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24B0C91AC;
  *(v0 + 104) = &block_descriptor_10;
  [v16 pairingStatusWithRequest:v15 completion:?];
  (*(v10 + 8))(boxed_opaque_existential_0, v11);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24B0C7B18()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_24B0C7F1C;
  }

  else
  {
    v2 = sub_24B0C7C28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B0C7C28()
{
  v36 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);

  v3 = v1;
  v4 = v2;
  v5 = sub_24B2D3164();
  v6 = sub_24B2D5934();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35 = v8;
    *v7 = 136315394;
    sub_24B2D2504();
    sub_24B0C995C();
    v9 = sub_24B2D5FA4();
    v11 = sub_24AFF321C(v9, v10, &v35);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v0 + 152) = [v4 pairingStatus];
    type metadata accessor for SPAccessoryPairingStatus(0);
    v12 = sub_24B2D53C4();
    v14 = sub_24AFF321C(v12, v13, &v35);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_24AFD2000, v5, v6, "OnboardingSessionLive: Pairing Status for ID: %s: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v8, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  v15 = [v4 pairingStatus];
  if (v15 >= 7)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  v17 = [v4 lostModeInfo];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 phoneNumber];
    if (v19)
    {
      v20 = v19;
      v21 = sub_24B2D5394();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v26 = [v18 email];
    v27 = *(v0 + 224);
    if (v26)
    {
      v28 = v26;
      v29 = sub_24B2D5394();
      v31 = v30;
    }

    else
    {

      v29 = 0;
      v31 = 0;
    }

    v32 = *(v0 + 160);
    *v32 = v16;
    *(v32 + 8) = v21;
    *(v32 + 16) = v23;
    *(v32 + 24) = v29;
    *(v32 + 32) = v31;
  }

  else
  {
    v24 = *(v0 + 224);
    v25 = *(v0 + 160);

    *v25 = v16;
    *(v25 + 8) = xmmword_24B2E4D60;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0;
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_24B0C7F1C()
{
  v1 = v0[29];
  v2 = v0[28];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

id sub_24B0C7FA8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D495D8]) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_24B0C8014()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    sub_24B2D26E4();
    swift_allocObject();
    v1 = sub_24B2D26D4();
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t OnboardingSessionLive.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_24B2D3174();
  return v0;
}

uint64_t sub_24B0C80E8(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = sub_24B2D24A4();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v4 = sub_24B2D2C04();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA928);
  v2[33] = v5;
  v2[34] = *(v5 - 8);
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B0C8278, 0, 0);
}

uint64_t sub_24B0C8278()
{
  v23 = v0;
  v1 = [objc_opt_self() defaultStore];
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x282200938](v1);
  }

  v2 = v1;
  v3 = [v1 aa_primaryAppleAccount];

  if (v3)
  {
    v4 = sub_24B008E40();

    if (v4 == 4)
    {
      v5 = *(v0 + 192);
      v6 = sub_24B2D3164();
      v7 = sub_24B2D5934();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v22 = v9;
        *v8 = 136315138;
        sub_24B2D2504();
        sub_24B0C995C();
        v10 = sub_24B2D5FA4();
        v12 = sub_24AFF321C(v10, v11, &v22);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_24AFD2000, v6, v7, "OnboardingSessionLive: Starting pairing session for identifier: %s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x24C23D530](v9, -1, -1);
        MEMORY[0x24C23D530](v8, -1, -1);
      }

      v13 = *(v0 + 272);
      v14 = *(v0 + 280);
      v15 = *(v0 + 264);
      v21 = sub_24B0C7FA8();
      *(v0 + 288) = v21;
      v16 = sub_24B2D24C4();
      *(v0 + 296) = v16;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 184;
      *(v0 + 24) = sub_24B0C8660;
      swift_continuation_init();
      *(v0 + 136) = v15;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8388);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0);
      sub_24B2D5614();
      (*(v13 + 32))(boxed_opaque_existential_0, v14, v15);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_24B0C8D80;
      *(v0 + 104) = &block_descriptor_3;
      [v21 initiatePairingAndLocateAccessoryWith:v16 completion:?];
      (*(v13 + 8))(boxed_opaque_existential_0, v15);
      v1 = (v0 + 16);

      return MEMORY[0x282200938](v1);
    }
  }

  sub_24B0C9888();
  swift_allocError();
  *v18 = 0;
  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_24B0C8660()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_24B0C8C44;
  }

  else
  {
    v2 = sub_24B0C8770;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B0C8770()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[23];
  v0[39] = v3;

  if (!v3)
  {
LABEL_5:

    v6 = v0[1];

    return v6(0);
  }

  v0[21] = &type metadata for KoreaFeatureFlag;
  v0[22] = sub_24B0C9908();
  v4 = v3;
  v5 = sub_24B2D2634();
  __swift_destroy_boxed_opaque_existential_0((v0 + 18));
  if (v5 & 1) == 0 && (sub_24B2D1254())
  {

    goto LABEL_5;
  }

  v8 = v0[31];
  v0[40] = sub_24B0C8014();
  sub_24B0C8E28(v4, v8);
  sub_24B2D27E4();
  swift_allocObject();
  v9 = sub_24B2D27D4();
  v0[41] = v9;
  v12 = (*MEMORY[0x277D090A0] + MEMORY[0x277D090A0]);
  v10 = swift_task_alloc();
  v0[42] = v10;
  *v10 = v0;
  v10[1] = sub_24B0C8938;
  v11 = v0[32];

  return v12(v11, v9);
}

uint64_t sub_24B0C8938()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 312);

    v4 = sub_24B0C8CEC;
  }

  else
  {

    v4 = sub_24B0C8A9C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24B0C8A9C()
{
  v1 = v0[39];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];
  sub_24B2D2BD4();
  v9 = v8;
  sub_24B2D2BE4();
  v11 = v10;
  sub_24B2D2BB4();
  v13 = v12;
  sub_24B2D2B84();
  v15 = v14;
  sub_24B2D2B74();
  v17 = v16;
  sub_24B2D2BA4();
  v19 = v18;
  sub_24B2D2BF4();
  sub_24B2D23F4();
  v20 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v21 = sub_24B2D23B4();
  v22 = [v20 initWithCoordinate:v21 altitude:v9 horizontalAccuracy:v11 verticalAccuracy:v13 course:v15 courseAccuracy:v17 speed:0.0 speedAccuracy:0.0 timestamp:{v19, 0}];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);

  v23 = v0[1];

  return v23(v22);
}

uint64_t sub_24B0C8C44()
{
  v1 = v0[37];
  v2 = v0[36];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B0C8CEC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24B0C8D80(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA928);
    sub_24B2D5624();
  }

  else
  {
    v6 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA928);
    sub_24B2D5634();
  }
}

void sub_24B0C8E28(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v18 = sub_24B2D2774();
  v3 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D2684();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8888);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_24B2D24A4();
  MEMORY[0x28223BE20](v13 - 8);
  [a1 coordinate];
  [a1 coordinate];
  [a1 horizontalAccuracy];
  [a1 verticalAccuracy];
  [a1 speed];
  [a1 altitude];
  v14 = [a1 floor];
  if (v14)
  {
    v15 = v14;
    [v14 level];
  }

  v16 = [a1 timestamp];
  sub_24B2D2484();

  v17 = sub_24B2D2C24();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  (*(v7 + 104))(v9, *MEMORY[0x277D09078], v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D090F8], v18);
  sub_24B2D2BC4();
}

void sub_24B0C91AC(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA940);
    sub_24B2D5624();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA940);
    sub_24B2D5634();
  }
}

uint64_t OnboardingSessionLive.deinit()
{

  v1 = OBJC_IVAR____TtC12FindMyUICore21OnboardingSessionLive_logger;
  v2 = sub_24B2D3184();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t OnboardingSessionLive.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12FindMyUICore21OnboardingSessionLive_logger;
  v2 = sub_24B2D3184();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24B0C9370()
{
  v4 = &type metadata for KoreaFeatureFlag;
  v5 = sub_24B0C9908();
  v0 = sub_24B2D2634();
  __swift_destroy_boxed_opaque_existential_0(v3);
  if (v0)
  {
    v1 = 0;
  }

  else
  {
    v1 = sub_24B2D1254();
  }

  return v1 & 1;
}

uint64_t sub_24B0C93D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24B0C9468;

  return sub_24B0C80E8(a1);
}

uint64_t sub_24B0C9468(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t type metadata accessor for OnboardingSessionLive()
{
  result = qword_27EFCA918;
  if (!qword_27EFCA918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B0C95C0()
{
  result = sub_24B2D3184();
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

uint64_t sub_24B0C9688()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC9330);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_24B2D22D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D22B4();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_24B00D684(v2);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = [objc_opt_self() defaultWorkspace];
  if (v8)
  {
    v9 = v8;
    v10 = sub_24B2D2294();
    v11 = sub_24B2D51D4();
    [v9 openSensitiveURL:v10 withOptions:v11];
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B0C9888()
{
  result = qword_27EFCA930;
  if (!qword_27EFCA930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA930);
  }

  return result;
}

unint64_t sub_24B0C9908()
{
  result = qword_27EFCA938;
  if (!qword_27EFCA938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA938);
  }

  return result;
}

unint64_t sub_24B0C995C()
{
  result = qword_27EFC8878;
  if (!qword_27EFC8878)
  {
    sub_24B2D2504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8878);
  }

  return result;
}

unint64_t sub_24B0C99B4()
{
  result = qword_27EFCA948;
  if (!qword_27EFCA948)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFCA948);
  }

  return result;
}

uint64_t sub_24B0C9A38()
{
  v1 = sub_24B2D5D64();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B0C9AF4, 0, 0);
}

uint64_t sub_24B0C9AF4()
{
  sub_24B2D6084();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_24B0C9BC0;

  return sub_24B09A030(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_24B0C9BC0()
{
  v2 = *v1;
  v3 = *v1;

  v4 = v2[4];
  v5 = v2[3];
  v6 = v2[2];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);

    return MEMORY[0x2822009F8](sub_24B0C9D8C, 0, 0);
  }

  else
  {
    (*(v5 + 8))(v4, v6);

    v7 = v3[1];

    return v7(0);
  }
}

uint64_t sub_24B0C9D8C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_24B0C9E68()
{
  v0 = sub_24B2D1454();
  __swift_allocate_value_buffer(v0, qword_27EFE44E8);
  __swift_project_value_buffer(v0, qword_27EFE44E8);
  type metadata accessor for AccessoryOnboardingModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  return sub_24B2D1434();
}

uint64_t sub_24B0C9F10()
{
  v0 = sub_24B2D1454();
  __swift_allocate_value_buffer(v0, qword_27EFE4500);
  __swift_project_value_buffer(v0, qword_27EFE4500);
  type metadata accessor for AccessoryOnboardingModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  return sub_24B2D1434();
}

uint64_t sub_24B0C9FB8()
{
  swift_getKeyPath();
  sub_24B0CAFBC();
  sub_24B2D2584();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24B0CA038@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B0CAFBC();
  sub_24B2D2584();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_24B0CA0B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 16) == a1 && v5 == a2;
      if (v6 || (sub_24B2D6004() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B0CAFBC();
    sub_24B2D2574();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_24B0CA1F4()
{
  swift_getKeyPath();
  sub_24B0CAFBC();
  sub_24B2D2584();

  v1 = *(v0 + 88);
  sub_24AFD5880(v1);
  return v1;
}

uint64_t sub_24B0CA278@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B0CAFBC();
  sub_24B2D2584();

  v4 = *(v3 + 88);
  v5 = *(v3 + 96);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24B0CB07C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24AFD5880(v4);
}

uint64_t sub_24B0CA374(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24B0CB02C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AFD5880(v1);
  sub_24B0CAFBC();
  sub_24B2D2574();
  sub_24AFD5890(v4);
}

uint64_t sub_24B0CA4A0(char a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(char *, char *, void *))
{
  v10 = a1;
  v9 = a2;
  v7[0] = a3;
  v7[1] = a4;
  v8 = a5 & 1;
  return a6(&v10, &v9, v7);
}

uint64_t sub_24B0CA4F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v4 = *(*(v0 + 80) + OBJC_IVAR___FMUIDiscoveredAccessory_productType);
  if (v4 >= 2)
  {
    if (v4 != 2)
    {
      v13[1] = *(*(v0 + 80) + OBJC_IVAR___FMUIDiscoveredAccessory_productType);
      result = sub_24B2D6024();
      __break(1u);
      return result;
    }

    if (qword_27EFC7620 != -1)
    {
      swift_once();
    }

    v8 = sub_24B2D1454();
    v9 = __swift_project_value_buffer(v8, qword_27EFE4500);
    v10 = *(v8 - 8);
    (*(v10 + 16))(v3, v9, v8);
    (*(v10 + 56))(v3, 0, 1, v8);
  }

  else
  {
    if (qword_27EFC7618 != -1)
    {
      swift_once();
    }

    v5 = sub_24B2D1454();
    v6 = __swift_project_value_buffer(v5, qword_27EFE44E8);
    v7 = *(v5 - 8);
    (*(v7 + 16))(v3, v6, v5);
    (*(v7 + 56))(v3, 0, 1, v5);
  }

  v11 = sub_24B2D52D4();
  sub_24B0C6490(v3);
  return v11;
}

uint64_t sub_24B0CA774()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v4 = *(*(v0 + 80) + OBJC_IVAR___FMUIDiscoveredAccessory_productType);
  if (v4 >= 2)
  {
    if (v4 != 2)
    {
      v13[1] = *(*(v0 + 80) + OBJC_IVAR___FMUIDiscoveredAccessory_productType);
      result = sub_24B2D6024();
      __break(1u);
      return result;
    }

    if (qword_27EFC7620 != -1)
    {
      swift_once();
    }

    v8 = sub_24B2D1454();
    v9 = __swift_project_value_buffer(v8, qword_27EFE4500);
    v10 = *(v8 - 8);
    (*(v10 + 16))(v3, v9, v8);
    (*(v10 + 56))(v3, 0, 1, v8);
  }

  else
  {
    if (qword_27EFC7618 != -1)
    {
      swift_once();
    }

    v5 = sub_24B2D1454();
    v6 = __swift_project_value_buffer(v5, qword_27EFE44E8);
    v7 = *(v5 - 8);
    (*(v7 + 16))(v3, v6, v5);
    (*(v7 + 56))(v3, 0, 1, v5);
  }

  v11 = sub_24B2D52D4();
  sub_24B0C6490(v3);
  return v11;
}

uint64_t sub_24B0CA9F8()
{
  swift_getKeyPath();
  sub_24B0CAFBC();
  sub_24B2D2584();

  v2 = *(v0 + 88);
  if (v2)
  {

    v2(2, 2, 0, 0, 1);
    return sub_24AFD5890(v2);
  }

  return result;
}

uint64_t sub_24B0CAAA0()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 40);

  sub_24AFD5890(*(v0 + 88));
  v1 = OBJC_IVAR____TtC12FindMyUICore28AccessoryLockedToMeViewModel___observationRegistrar;
  v2 = sub_24B2D25C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryLockedToMeViewModel()
{
  result = qword_27EFCA958;
  if (!qword_27EFCA958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B0CABB0()
{
  result = sub_24B2D25C4();
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

uint64_t sub_24B0CAC9C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_24B0CAFBC();
  sub_24B2D2584();

  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_24B0CAD58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  if (qword_27EFC7618 != -1)
  {
    swift_once();
  }

  v3 = sub_24B2D1454();
  v4 = __swift_project_value_buffer(v3, qword_27EFE44E8);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v2, v4, v3);
  (*(v5 + 56))(v2, 0, 1, v3);
  v6 = sub_24B2D52D4();
  sub_24B0C6490(v2);
  return v6;
}

uint64_t sub_24B0CAEBC()
{
  v2 = &type metadata for SolariumFeatureFlag;
  v3 = sub_24B0096D0();
  sub_24B2D2634();
  __swift_destroy_boxed_opaque_existential_0(v1);
  return 0;
}

uint64_t sub_24B0CAF18()
{
  swift_getKeyPath();
  sub_24B0CAFBC();
  sub_24B2D2574();
}

unint64_t sub_24B0CAFBC()
{
  result = qword_27EFCA968;
  if (!qword_27EFCA968)
  {
    type metadata accessor for AccessoryLockedToMeViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA968);
  }

  return result;
}

uint64_t sub_24B0CB02C(char a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *(v5 + 16);
  v11 = a1;
  v10 = a2;
  v8[0] = a3;
  v8[1] = a4;
  v9 = a5 & 1;
  return v6(&v11, &v10, v8);
}

uint64_t sub_24B0CB0B8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 88);
  *(v2 + 88) = v1;
  *(v2 + 96) = v3;
  sub_24AFD5880(v1);
  return sub_24AFD5890(v4);
}

uint64_t sub_24B0CB104()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_24B0CB160()
{
  swift_getKeyPath();
  sub_24B0CC828();
  sub_24B2D2584();

  v1 = *(v0 + 104);
  sub_24AFD5880(v1);
  return v1;
}

uint64_t sub_24B0CB1E4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B0CC828();
  sub_24B2D2584();

  v4 = *(v3 + 104);
  v5 = *(v3 + 112);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24B0CC8A4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24AFD5880(v4);
}

uint64_t sub_24B0CB2A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24B0CC898;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AFD5880(v1);
  sub_24B0CC828();
  sub_24B2D2574();
  sub_24AFD5890(v4);
}

uint64_t sub_24B0CB3CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v4 = *(*(v0 + 64) + OBJC_IVAR___FMUIDiscoveredAccessory_productType);
  if (v4 >= 2)
  {
    if (v4 != 2)
    {
      v13[1] = *(*(v0 + 64) + OBJC_IVAR___FMUIDiscoveredAccessory_productType);
      result = sub_24B2D6024();
      __break(1u);
      return result;
    }

    if (qword_27EFC7620 != -1)
    {
      swift_once();
    }

    v8 = sub_24B2D1454();
    v9 = __swift_project_value_buffer(v8, qword_27EFE4500);
    v10 = *(v8 - 8);
    (*(v10 + 16))(v3, v9, v8);
    (*(v10 + 56))(v3, 0, 1, v8);
  }

  else
  {
    if (qword_27EFC7618 != -1)
    {
      swift_once();
    }

    v5 = sub_24B2D1454();
    v6 = __swift_project_value_buffer(v5, qword_27EFE44E8);
    v7 = *(v5 - 8);
    (*(v7 + 16))(v3, v6, v5);
    (*(v7 + 56))(v3, 0, 1, v5);
  }

  v11 = sub_24B2D52D4();
  sub_24AFF8258(v3, &qword_27EFC8A68);
  return v11;
}

uint64_t sub_24B0CB65C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[12];
  if (!v4)
  {
    goto LABEL_10;
  }

  if (v4 == 1)
  {
    return 0;
  }

  v7 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v7 = v0[9] & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_10:
    if (v6)
    {
      v8 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v8 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

  v6 = v0[10];
  v5 = v0[9];
LABEL_11:

  if (qword_27EFC7618 != -1)
  {
    swift_once();
  }

  v9 = sub_24B2D1454();
  v10 = __swift_project_value_buffer(v9, qword_27EFE44E8);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v3, v10, v9);
  (*(v11 + 56))(v3, 0, 1, v9);
  sub_24B2D52D4();
  sub_24AFF8258(v3, &qword_27EFC8A68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A78);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24B2DE430;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_24B075024();
  *(v12 + 32) = v5;
  *(v12 + 40) = v6;
  v13 = sub_24B2D5384();

  return v13;
}

uint64_t sub_24B0CB8A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16[-1] - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC9330);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-1] - v5;
  v7 = *(v0 + 80);
  if (v7 == 1)
  {
    v8 = sub_24B2D22D4();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
LABEL_4:
    sub_24AFF8258(v6, &unk_27EFC9330);
    *(&v17 + 1) = &type metadata for SolariumFeatureFlag;
    v18 = sub_24B0096D0();
    sub_24B2D2634();
    __swift_destroy_boxed_opaque_existential_0(v16);
    return 0;
  }

  v16[0] = *(v0 + 72);
  v16[1] = v7;
  v17 = *(v0 + 88);
  sub_24B0C4A8C(v6);
  v9 = sub_24B2D22D4();
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    goto LABEL_4;
  }

  sub_24AFF8258(v6, &unk_27EFC9330);
  if (qword_27EFC7618 != -1)
  {
    swift_once();
  }

  v11 = sub_24B2D1454();
  v12 = __swift_project_value_buffer(v11, qword_27EFE44E8);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v3, v12, v11);
  (*(v13 + 56))(v3, 0, 1, v11);
  v14 = sub_24B2D52D4();
  sub_24AFF8258(v3, &qword_27EFC8A68);
  return v14;
}

uint64_t sub_24B0CBB8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15[-1] - v2;
  v15[3] = &type metadata for SolariumFeatureFlag;
  v15[4] = sub_24B0096D0();
  v4 = sub_24B2D2634();
  __swift_destroy_boxed_opaque_existential_0(v15);
  v5 = *(*(v0 + 64) + OBJC_IVAR___FMUIDiscoveredAccessory_productType);
  if (v4)
  {
    if (v5 < 2)
    {
      if (qword_27EFC7618 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

    if (v5 == 2)
    {
      if (qword_27EFC7620 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }
  }

  else
  {
    if (v5 < 2)
    {
      if (qword_27EFC7618 == -1)
      {
LABEL_7:
        v6 = sub_24B2D1454();
        v7 = __swift_project_value_buffer(v6, qword_27EFE44E8);
        v8 = *(v6 - 8);
        (*(v8 + 16))(v3, v7, v6);
        (*(v8 + 56))(v3, 0, 1, v6);
LABEL_14:
        v12 = sub_24B2D52D4();
        sub_24AFF8258(v3, &qword_27EFC8A68);
        return v12;
      }

LABEL_15:
      swift_once();
      goto LABEL_7;
    }

    if (v5 == 2)
    {
      if (qword_27EFC7620 == -1)
      {
LABEL_13:
        v9 = sub_24B2D1454();
        v10 = __swift_project_value_buffer(v9, qword_27EFE4500);
        v11 = *(v9 - 8);
        (*(v11 + 16))(v3, v10, v9);
        (*(v11 + 56))(v3, 0, 1, v9);
        goto LABEL_14;
      }

LABEL_16:
      swift_once();
      goto LABEL_13;
    }
  }

  v15[0] = *(*(v0 + 64) + OBJC_IVAR___FMUIDiscoveredAccessory_productType);
  result = sub_24B2D6024();
  __break(1u);
  return result;
}

uint64_t sub_24B0CBFEC()
{
  swift_getKeyPath();
  sub_24B0CC828();
  sub_24B2D2584();

  v2 = *(v0 + 104);
  if (v2)
  {

    v2(2, 2, 0, 0, 1);
    return sub_24AFD5890(v2);
  }

  return result;
}

uint64_t sub_24B0CC094()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC9330);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v15 - v2;
  v4 = sub_24B2D22D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 80);
  if (v8 == 1)
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    return sub_24AFF8258(v3, &unk_27EFC9330);
  }

  v15[0] = *(v0 + 72);
  v15[1] = v8;
  v16 = *(v0 + 88);
  sub_24B0C4A8C(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_24AFF8258(v3, &unk_27EFC9330);
  }

  (*(v5 + 32))(v7, v3, v4);
  swift_getKeyPath();
  v15[0] = v0;
  sub_24B0CC828();
  sub_24B2D2584();

  v10 = *(v0 + 104);
  if (v10)
  {

    v10(2, 2, 0, 0, 1);
    sub_24AFD5890(v10);
  }

  v11 = [objc_opt_self() defaultWorkspace];
  if (v11)
  {
    v12 = v11;
    v13 = sub_24B2D2294();
    v14 = sub_24B2D51D4();
    [v12 openSensitiveURL:v13 withOptions:v14];
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24B0CC354()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  sub_24B0C4364(*(v0 + 72), *(v0 + 80));
  sub_24AFD5890(*(v0 + 104));
  v1 = OBJC_IVAR____TtC12FindMyUICore24AccessoryLockedViewModel___observationRegistrar;
  v2 = sub_24B2D25C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryLockedViewModel()
{
  result = qword_27EFCA978;
  if (!qword_27EFCA978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B0CC468()
{
  result = sub_24B2D25C4();
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

uint64_t sub_24B0CC5A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  if (qword_27EFC7618 != -1)
  {
    swift_once();
  }

  v3 = sub_24B2D1454();
  v4 = __swift_project_value_buffer(v3, qword_27EFE44E8);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v2, v4, v3);
  (*(v5 + 56))(v2, 0, 1, v3);
  v6 = sub_24B2D52D4();
  sub_24AFF8258(v2, &qword_27EFC8A68);
  return v6;
}

uint64_t sub_24B0CC73C()
{
  swift_getKeyPath();
  sub_24B0CC828();
  sub_24B2D2574();
}

unint64_t sub_24B0CC828()
{
  result = qword_27EFCA988;
  if (!qword_27EFCA988)
  {
    type metadata accessor for AccessoryLockedViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA988);
  }

  return result;
}

uint64_t sub_24B0CC8AC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 104);
  *(v2 + 104) = v1;
  *(v2 + 112) = v3;
  sub_24AFD5880(v1);
  return sub_24AFD5890(v4);
}

uint64_t getEnumTagSinglePayload for OnboardingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 5)
  {
    return v8 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OnboardingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24B0CCA68(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24B0CCA7C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_24B0CCA9C()
{
  swift_getKeyPath();
  sub_24B0CE11C();
  sub_24B2D2584();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24B0CCB1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B0CE11C();
  sub_24B2D2584();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_24B0CCB98(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 16) == a1 && v5 == a2;
      if (v6 || (sub_24B2D6004() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B0CE11C();
    sub_24B2D2574();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_24B0CCCD8()
{
  swift_getKeyPath();
  sub_24B0CE11C();
  sub_24B2D2584();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_24B0CCD58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B0CE11C();
  sub_24B2D2584();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_24B0CCDD4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_24B2D6004() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B0CE11C();
    sub_24B2D2574();
  }
}

uint64_t sub_24B0CCF04()
{
  swift_getKeyPath();
  sub_24B0CE11C();
  sub_24B2D2584();

  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_24B0CCF84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B0CE11C();
  sub_24B2D2584();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_24B0CD000(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (sub_24B2D6004() & 1) != 0)
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B0CE11C();
    sub_24B2D2574();
  }
}

uint64_t sub_24B0CD130()
{
  swift_getKeyPath();
  sub_24B0CE11C();
  sub_24B2D2584();

  v1 = *(v0 + 136);
  sub_24AFD5880(v1);
  return v1;
}

uint64_t sub_24B0CD1B4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B0CE11C();
  sub_24B2D2584();

  v4 = *(v3 + 136);
  v5 = *(v3 + 144);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24B0CC8A4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24AFD5880(v4);
}

uint64_t sub_24B0CD270(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24B0CC898;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AFD5880(v1);
  sub_24B0CE11C();
  sub_24B2D2574();
  sub_24AFD5890(v4);
}

char *sub_24B0CD39C()
{
  v1 = *(v0[13] + OBJC_IVAR___FMUIDiscoveredAccessory_productType);
  if (v1 >= 2)
  {
    if (v1 != 2)
    {
      v11 = *(v0[13] + OBJC_IVAR___FMUIDiscoveredAccessory_productType);
      result = sub_24B2D6024();
      __break(1u);
      return result;
    }

    v7 = v0[11];
    v8 = v0[12];
    __swift_project_boxed_opaque_existential_1(v0 + 8, v7);
    v4 = (*(v8 + 16))(v7, v8);
    v5 = &unk_285E48588;
    v6 = &unk_285E485B0;
  }

  else
  {
    v2 = v0[11];
    v3 = v0[12];
    __swift_project_boxed_opaque_existential_1(v0 + 8, v2);
    v4 = (*(v3 + 16))(v2, v3);
    v5 = &unk_285E48538;
    v6 = &unk_285E48560;
  }

  if (v4)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  v11 = v9;

  sub_24B0CE308(&v11);

  return v11;
}

uint64_t sub_24B0CD4D4()
{
  swift_getKeyPath();
  sub_24B0CE11C();
  sub_24B2D2584();

  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = *(v0 + 112);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);

    v2(1, 1, v3, v4, v5);
    return sub_24AFD5890(v2);
  }

  return result;
}

uint64_t sub_24B0CD5C8()
{
  v1 = v0;
  v2 = sub_24B2D22D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D2504();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, *(v1 + 104) + OBJC_IVAR___FMUIDiscoveredAccessory_identifier, v6);
  v10 = sub_24B2D24B4();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  sub_24B00CDE8(v10, v12, 2, v5);

  v13 = [objc_opt_self() defaultWorkspace];
  if (v13)
  {
    v14 = v13;
    v15 = sub_24B2D2294();
    v16 = sub_24B2D51D4();
    [v14 openSensitiveURL:v15 withOptions:v16];
  }

  (*(v3 + 8))(v5, v2);
  swift_getKeyPath();
  v22[1] = v1;
  sub_24B0CE11C();
  sub_24B2D2584();

  v18 = *(v1 + 136);
  if (v18)
  {
    v19 = *(v1 + 112);
    v20 = *(v1 + 120);
    v21 = *(v1 + 128);

    v18(1, 1, v19, v20, v21);
    return sub_24AFD5890(v18);
  }

  return result;
}

uint64_t sub_24B0CD93C()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 64);

  sub_24AFD5890(*(v0 + 136));
  v1 = OBJC_IVAR____TtC12FindMyUICore24AccessoryPairedViewModel___observationRegistrar;
  v2 = sub_24B2D25C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryPairedViewModel()
{
  result = qword_27EFCA998;
  if (!qword_27EFCA998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B0CDA5C()
{
  result = sub_24B2D25C4();
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

uint64_t sub_24B0CDB30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  if (qword_27EFC7618 != -1)
  {
    swift_once();
  }

  v3 = sub_24B2D1454();
  v4 = __swift_project_value_buffer(v3, qword_27EFE44E8);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v2, v4, v3);
  (*(v5 + 56))(v2, 0, 1, v3);
  v6 = sub_24B2D52D4();
  sub_24B0C6490(v2);
  return v6;
}

uint64_t sub_24B0CDC90()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_24B0CE11C();
  sub_24B2D2584();

  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_24B0CDD10()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_24B0CE11C();
  sub_24B2D2584();

  v2 = *(v1 + 32);

  return v2;
}

uint64_t sub_24B0CDD90()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_24B0CE11C();
  sub_24B2D2584();

  v2 = *(v1 + 48);

  return v2;
}

uint64_t sub_24B0CDE54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  if (qword_27EFC7618 != -1)
  {
    swift_once();
  }

  v3 = sub_24B2D1454();
  v4 = __swift_project_value_buffer(v3, qword_27EFE44E8);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v2, v4, v3);
  (*(v5 + 56))(v2, 0, 1, v3);
  v6 = sub_24B2D52D4();
  sub_24B0C6490(v2);
  return v6;
}

uint64_t sub_24B0CDFB4()
{
  swift_getKeyPath();
  sub_24B0CE11C();
  sub_24B2D2574();
}

uint64_t sub_24B0CE07C()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B0CD5C8();
}

unint64_t sub_24B0CE11C()
{
  result = qword_27EFCA9A8;
  if (!qword_27EFCA9A8)
  {
    type metadata accessor for AccessoryPairedViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA9A8);
  }

  return result;
}

uint64_t sub_24B0CE18C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 136);
  *(v2 + 136) = v1;
  *(v2 + 144) = v3;
  sub_24AFD5880(v1);
  return sub_24AFD5890(v4);
}

uint64_t sub_24B0CE1D8()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

uint64_t keypath_set_14Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_24B0CE260()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

unint64_t sub_24B0CE2B4()
{
  result = qword_27EFCA9B0;
  if (!qword_27EFCA9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA9B0);
  }

  return result;
}

uint64_t sub_24B0CE308(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24B2153EC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_24B2D5F34();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >> 6 >= v14 >> 6)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_24B2D5594();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_24B0CE444(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_24B0CE444(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_89:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_24B2152D8(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_24B0CE984((*a3 + *v79), (*a3 + *v81), *a3 + v82, v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_113;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_114;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_115;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = v11 >> 6;
      v13 = *(*a3 + v10) >> 6;
      v14 = v10 + 2;
      if (v6 <= v10 + 2)
      {
        v8 = v10 + 2;
      }

      else
      {
        v8 = v6;
      }

      while (v8 != v14)
      {
        v15 = *(*a3 + v14);
        v16 = (v12 < v13) ^ (v15 >> 6 >= v11 >> 6);
        ++v14;
        v11 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v14 - 1;
          break;
        }
      }

      if (v12 < v13)
      {
        if (v8 < v10)
        {
          goto LABEL_118;
        }

        if (v10 < v8)
        {
          v17 = v8 - 1;
          v18 = v10;
          do
          {
            if (v18 != v17)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v19 = *(v21 + v18);
              *(v21 + v18) = *(v21 + v17);
              *(v21 + v17) = v19;
            }
          }

          while (++v18 < v17--);
          v6 = a3[1];
        }
      }
    }

    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_117;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_119;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v8 < v10)
    {
      goto LABEL_116;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24B0069D4(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_24B0069D4((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_126;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_58:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_107;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_72:
        if (v57)
        {
          goto LABEL_106;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_79:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_24B0CE984((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), *a3 + v75, v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24B2152D8(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_101;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_24B21524C(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_108;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_112;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_89;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_31:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >> 6 >= v28 >> 6)
    {
LABEL_30:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_31;
      }

      v8 = v6;
      goto LABEL_38;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  return result;
}

uint64_t sub_24B0CE984(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 >> 6 < v19 >> 6)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >> 6 >= *v4 >> 6)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_24B0CEB90()
{
  swift_getKeyPath();
  sub_24B0C456C();
  sub_24B2D2584();

  v1 = *(v0 + 64);
  sub_24AFD5880(v1);
  return v1;
}

uint64_t sub_24B0CEC14@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B0C456C();
  sub_24B2D2584();

  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24B0CC8A4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24AFD5880(v4);
}

uint64_t sub_24B0CECD0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24B0CC898;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AFD5880(v1);
  sub_24B0C456C();
  sub_24B2D2574();
  sub_24AFD5890(v4);
}

uint64_t sub_24B0CEDFC()
{
  swift_getKeyPath();
  sub_24B0C456C();
  sub_24B2D2584();

  return *(v0 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__shouldShowAlert);
}

uint64_t sub_24B0CEE74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B0C456C();
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__shouldShowAlert);
  return result;
}

uint64_t sub_24B0CEF1C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__shouldShowAlert) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__shouldShowAlert) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B0C456C();
    sub_24B2D2574();
  }

  return result;
}

uint64_t sub_24B0CF004()
{
  swift_getKeyPath();
  sub_24B0C456C();
  sub_24B2D2584();

  v1 = *(v0 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__subtitle);

  return v1;
}

uint64_t sub_24B0CF090@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B0C456C();
  sub_24B2D2584();

  v4 = *(v3 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__subtitle + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__subtitle);
  a2[1] = v4;
}

uint64_t sub_24B0CF118(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__subtitle);
  v6 = *(v2 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__subtitle + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_24B2D6004() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B0C456C();
    sub_24B2D2574();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_24B0CF264()
{
  swift_getKeyPath();
  sub_24B0C456C();
  sub_24B2D2584();

  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__state) - 2 > 3)
  {
    if (*(v0 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__shouldShowAlert))
    {
      *(v0 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__shouldShowAlert) = 1;
      return result;
    }
  }

  else if ((*(v0 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__shouldShowAlert) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__shouldShowAlert) = 0;
    return result;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24B2D2574();
}

uint64_t sub_24B0CF400()
{
  swift_getKeyPath();
  sub_24B0C456C();
  sub_24B2D2584();

  return *(v0 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__state);
}

uint64_t sub_24B0CF478@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B0C456C();
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__state);
  return result;
}

uint64_t sub_24B0CF4F8()
{
  swift_getKeyPath();
  sub_24B0C456C();
  sub_24B2D2574();
}

uint64_t sub_24B0CF598()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v4 = *(*(v0 + 56) + OBJC_IVAR___FMUIDiscoveredAccessory_productType);
  if (v4 >= 2)
  {
    if (v4 != 2)
    {
      v13[1] = *(*(v0 + 56) + OBJC_IVAR___FMUIDiscoveredAccessory_productType);
      result = sub_24B2D6024();
      __break(1u);
      return result;
    }

    if (qword_27EFC7620 != -1)
    {
      swift_once();
    }

    v8 = sub_24B2D1454();
    v9 = __swift_project_value_buffer(v8, qword_27EFE4500);
    v10 = *(v8 - 8);
    (*(v10 + 16))(v3, v9, v8);
    (*(v10 + 56))(v3, 0, 1, v8);
  }

  else
  {
    if (qword_27EFC7618 != -1)
    {
      swift_once();
    }

    v5 = sub_24B2D1454();
    v6 = __swift_project_value_buffer(v5, qword_27EFE44E8);
    v7 = *(v5 - 8);
    (*(v7 + 16))(v3, v6, v5);
    (*(v7 + 56))(v3, 0, 1, v5);
  }

  v11 = sub_24B2D52D4();
  sub_24AFF8258(v3, &qword_27EFC8A68);
  return v11;
}

uint64_t sub_24B0CF82C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v15 - v2;
  v4 = *(v0[7] + OBJC_IVAR___FMUIDiscoveredAccessory_productType);
  if (v4 < 2)
  {
    if (qword_27EFC7618 != -1)
    {
      swift_once();
    }

    v5 = sub_24B2D1454();
    v6 = __swift_project_value_buffer(v5, qword_27EFE44E8);
    v7 = *(v5 - 8);
    (*(v7 + 16))(v3, v6, v5);
    (*(v7 + 56))(v3, 0, 1, v5);
    goto LABEL_12;
  }

  if (v4 != 2)
  {
    v15[1] = *(v0[7] + OBJC_IVAR___FMUIDiscoveredAccessory_productType);
    result = sub_24B2D6024();
    __break(1u);
    return result;
  }

  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  if ((*(v9 + 16))(v8, v9))
  {
    if (qword_27EFC7620 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (qword_27EFC7620 != -1)
  {
LABEL_13:
    swift_once();
  }

LABEL_11:
  v10 = sub_24B2D1454();
  v11 = __swift_project_value_buffer(v10, qword_27EFE4500);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v3, v11, v10);
  (*(v12 + 56))(v3, 0, 1, v10);
LABEL_12:
  v13 = sub_24B2D52D4();
  sub_24AFF8258(v3, &qword_27EFC8A68);
  return v13;
}

uint64_t sub_24B0CFBB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  swift_getKeyPath();
  v12 = v0;
  sub_24B0C456C();
  sub_24B2D2584();

  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__state) == 5)
  {
    swift_getKeyPath();
    v12 = v0;
    sub_24B2D2584();

    v6 = *(v0 + 64);
    if (v6)
    {

      v6(1, 1, 0, 0, 1);
      return sub_24AFD5890(v6);
    }
  }

  else
  {
    v7 = sub_24B2D56D4();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    sub_24B2D5694();

    v8 = sub_24B2D5684();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v1;
    sub_24B00A9A4(0, 0, v4, &unk_24B2E5AE0, v9);
  }

  return result;
}

uint64_t sub_24B0CFDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  sub_24B2D5694();
  v4[10] = sub_24B2D5684();
  v6 = sub_24B2D5604();
  v4[11] = v6;
  v4[12] = v5;

  return MEMORY[0x2822009F8](sub_24B0CFE40, v6, v5);
}

uint64_t sub_24B0CFE40()
{
  v1 = v0[9];
  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = 3;
  v0[13] = OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel___observationRegistrar;
  v0[2] = v1;
  v0[14] = sub_24B0C456C();
  sub_24B2D2574();

  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = v1[7];
  v8 = (*(v4 + 40) + **(v4 + 40));
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_24B0D0008;

  return v8(v5, v3, v4);
}

uint64_t sub_24B0D0008(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 128) = a1;
  *(v4 + 136) = v1;

  v5 = *(v3 + 96);
  v6 = *(v3 + 88);
  if (v1)
  {
    v7 = sub_24B0D03F4;
  }

  else
  {
    v7 = sub_24B0D014C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24B0D014C()
{
  v23 = v0;
  v1 = v0[16];

  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5934();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    v0[8] = v5;
    v8 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8388);
    v9 = sub_24B2D53C4();
    v11 = sub_24AFF321C(v9, v10, &v22);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_24AFD2000, v3, v4, "AccessoryOnboarding: Pairing completed successfully, location? %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C23D530](v7, -1, -1);
    MEMORY[0x24C23D530](v6, -1, -1);
  }

  v12 = v0[9];
  swift_getKeyPath();
  v13 = swift_task_alloc();
  *(v13 + 16) = v12;
  *(v13 + 24) = 5;
  v0[6] = v12;
  sub_24B2D2574();

  swift_getKeyPath();
  v0[7] = v12;
  sub_24B2D2584();

  v14 = *(v12 + 64);
  if (v14)
  {
    v15 = v0[16];

    if (v15)
    {
      [v2 coordinate];
      v17 = v16;
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v14(1, 1, v17, v19, v15 == 0);

    sub_24AFD5890(v14);
  }

  else
  {
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_24B0D03F4()
{
  v1 = *(v0 + 136);

  *(v0 + 24) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 136);
  if (v3)
  {

    v5 = *(v0 + 144);
    v6 = sub_24B2D3164();
    v7 = sub_24B2D5934();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      sub_24B0C9888();
      swift_allocError();
      *v10 = v5;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_24AFD2000, v6, v7, "AccessoryOnboarding: Error pairing: %@", v8, 0xCu);
      sub_24AFF8258(v9, &qword_27EFC7BB8);
      MEMORY[0x24C23D530](v9, -1, -1);
      MEMORY[0x24C23D530](v8, -1, -1);
    }

    v12 = *(v0 + 72);
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = v5;
    *(v0 + 40) = v12;
    sub_24B2D2574();
  }

  else
  {

    v14 = v4;
    v15 = sub_24B2D3164();
    v16 = sub_24B2D5934();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 136);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v17;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_24AFD2000, v15, v16, "AccessoryOnboarding: Error pairing: %@", v18, 0xCu);
      sub_24AFF8258(v19, &qword_27EFC7BB8);
      MEMORY[0x24C23D530](v19, -1, -1);
      MEMORY[0x24C23D530](v18, -1, -1);
    }

    v22 = *(v0 + 136);
    v23 = *(v0 + 72);

    swift_getKeyPath();
    v24 = swift_task_alloc();
    *(v24 + 16) = v23;
    *(v24 + 24) = 1;
    *(v0 + 32) = v23;
    sub_24B2D2574();
  }

  v25 = *(v0 + 8);

  return v25();
}