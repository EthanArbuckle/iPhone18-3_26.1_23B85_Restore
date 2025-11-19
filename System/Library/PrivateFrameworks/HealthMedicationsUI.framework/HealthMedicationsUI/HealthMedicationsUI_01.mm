id sub_228188B28()
{
  v1 = v0;
  v2 = sub_22838F4A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818C294(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v7 = *(sub_22838FEF0() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v44 = xmmword_228397F30;
  *(v10 + 16) = xmmword_228397F30;
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v12 = result;
    v13 = [result isiPad];

    sub_22818C128(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
    v14 = &unk_228397000;
    if (v13)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v44;
      sub_228185074(&v46);
      *(v15 + 56) = &type metadata for MedicationOnboardingHeaderItem;
      *(v15 + 64) = sub_22818C190();
      v16 = swift_allocObject();
      *(v15 + 32) = v16;
      v17 = v49;
      *(v16 + 48) = v48;
      *(v16 + 64) = v17;
      *(v16 + 80) = v50;
      v18 = v47;
      *(v16 + 16) = v46;
      *(v16 + 32) = v18;
      *(v15 + 96) = &type metadata for MedicationSearchFieldItem;
      *(v15 + 104) = sub_22818C238();
      v19 = swift_allocObject();
      *(v15 + 72) = v19;
      v20 = swift_allocObject();
      *&v44 = v10;
      v21 = v20;
      swift_weakInit();

      sub_22838F490();
      v22 = sub_22838F450();
      v24 = v23;
      (*(v3 + 8))(v6, v2);
      v19[2] = v22;
      v19[3] = v24;
      type metadata accessor for MedicationSearchFieldCell();
      sub_22818B6E8(&qword_27D826930, type metadata accessor for MedicationSearchFieldCell);
      v19[4] = 0;
      v19[5] = 0;
      v19[6] = sub_22838FBB0();
      v19[7] = v25;
      v26 = v19[4];
      v27 = v19[5];
      v19[4] = sub_22818C28C;
      v19[5] = v21;
      v14 = &unk_228397000;
      sub_228176EC8(v26);
    }

    else
    {
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_228397F40;
      sub_228185074(&v46);
      *(v28 + 56) = &type metadata for MedicationOnboardingHeaderItem;
      *(v28 + 64) = sub_22818C190();
      v29 = swift_allocObject();
      *(v28 + 32) = v29;
      v30 = v49;
      *(v29 + 48) = v48;
      *(v29 + 64) = v30;
      *(v29 + 80) = v50;
      v31 = v47;
      *(v29 + 16) = v46;
      *(v29 + 32) = v31;
    }

    sub_22838FED0();
    v32 = qword_27D828998;
    swift_beginAccess();
    if (*(*(v1 + v32) + 16))
    {
      sub_22818C128(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
      v33 = swift_allocObject();
      *(v33 + 16) = v14[244];
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      v34 = sub_22838F0C0();
      v36 = v35;
      type metadata accessor for MedicationOnboardingSuggestionsHeaderCell();
      sub_22818B6E8(&qword_27D8239D0, type metadata accessor for MedicationOnboardingSuggestionsHeaderCell);
      v37 = sub_22838FBB0();
      v39 = v38;
      *(v33 + 56) = &type metadata for MedicationOnboardingSuggestionsHeaderItem;
      *(v33 + 64) = sub_22818C1E4();
      v40 = swift_allocObject();
      *(v33 + 32) = v40;
      v40[2] = v34;
      v40[3] = v36;
      v40[4] = v37;
      v40[5] = v39;
      v41 = *(v1 + v32);

      v43 = sub_228194A7C(v42);

      v45 = v33;
      sub_2281D55FC(v43);
    }

    sub_22838FED0();
    sub_22838FF50();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22818914C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_22818DCAC();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  sub_22818DD58();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  v17[1] = sub_2283918F0();
  sub_22818C580(0);
  sub_22818B6E8(&qword_27D823BC8, sub_22818DD58);
  sub_2283919F0();

  sub_22818B6E8(&qword_27D823BD0, sub_22818DCAC);
  v15 = sub_228391990();
  result = (*(v6 + 8))(v9, v5);
  *a2 = v15;
  return result;
}

uint64_t sub_228189374(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = a4;
  v103 = *MEMORY[0x277D85DE8];
  v87 = sub_22838EF60();
  v86 = *(v87 - 8);
  v6 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_22838F6C0();
  v91 = *(v94 - 8);
  v8 = *(v91 + 64);
  MEMORY[0x28223BE20](v94);
  v93 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22838F080();
  v90 = *(v10 - 8);
  v11 = *(v90 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v92 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v72 - v14;
  v16 = sub_22838F440();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v84 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v89 = &v72 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v72 - v23;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  if (Strong)
  {
    v72 = v25;
    v73 = Strong;
    v74 = v17;
    v75 = v16;
    v76 = v10;
    sub_22838F430();
    sub_22838F680();
    sub_22818C294(0, &qword_280DDB8D8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v83 = v27;
    v28 = sub_22838F6A0();
    v29 = *(v28 - 8);
    v30 = v29;
    v95 = v15;
    v31 = *(v29 + 72);
    v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v33 = 2 * v31;
    v77 = v31;
    v34 = v31;
    v82 = 3 * v31;
    v35 = swift_allocObject();
    v81 = xmmword_228398270;
    *(v35 + 16) = xmmword_228398270;
    v96 = v24;
    v80 = *MEMORY[0x277CC9988];
    v36 = *(v30 + 104);
    v36(v35 + v32);
    v79 = *MEMORY[0x277CC9998];
    v36(v35 + v32 + v34);
    v78 = *MEMORY[0x277CC9968];
    v36(v35 + v32 + v33);
    sub_2281EF358(v35);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v37 = v93;
    sub_22838F5C0();

    v91 = *(v91 + 8);
    (v91)(v37, v94);
    sub_22838F680();
    v38 = swift_allocObject();
    *(v38 + 16) = v81;
    (v36)(v38 + v32, v80, v28);
    (v36)(v38 + v32 + v77, v79, v28);
    (v36)(v38 + v32 + v33, v78, v28);
    sub_2281EF358(v38);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v39 = v96;
    sub_22838F5C0();

    (v91)(v37, v94);
    v41 = sub_22838F000();
    if (*(v40 + 8))
    {
      v41(&aBlock, 0);
    }

    else
    {
      if (__OFSUB__(*v40, 3))
      {
        __break(1u);
      }

      *v40 -= 3;
      v41(&aBlock, 0);
    }

    v43 = objc_opt_self();
    v44 = sub_22838EFB0();
    v45 = sub_22838EFB0();
    *&aBlock = 0;
    v46 = [v43 _sortDateIntervalFromStartDateComponents_endDateComponents_error_];

    v47 = aBlock;
    v48 = v75;
    v49 = v74;
    if (v46)
    {
      v50 = v85;
      sub_22838EF10();
      v51 = v47;

      v52 = v84;
      sub_22838EF40();
      (*(v86 + 8))(v50, v87);
      v53 = v89;
      (*(v49 + 32))(v89, v52, v48);
    }

    else
    {
      v54 = aBlock;
      v55 = sub_22838F180();

      swift_willThrow();
      v53 = v89;
      (*(v49 + 16))(v89, v39, v48);
    }

    v56 = v72;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_22818DEBC;
    *(v57 + 24) = v56;
    v58 = objc_allocWithZone(MEMORY[0x277D11528]);
    sub_22817A958(0, &qword_27D823BE0, 0x277CCD1D0);
    v59 = v88;
    v60 = sub_228392190();
    v61 = sub_22838F380();
    v101 = sub_22818DEFC;
    v102 = v57;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v99 = sub_22818CB80;
    v100 = &block_descriptor_65;
    v62 = _Block_copy(&aBlock);
    v63 = [v58 initForCHRImportWithExistingMedications:v60 sinceDate:v61 limit:100 resultsHandler:v62];
    _Block_release(v62);

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    v64 = v63;
    sub_2283931D0();

    strcpy(&aBlock, "CHR import: ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v97 = v59;
    sub_22818DF04(0, &qword_27D823BE8, &qword_27D823BE0, 0x277CCD1D0);

    v65 = sub_228392080();
    MEMORY[0x22AAB5C80](v65);

    MEMORY[0x22AAB5C80](0x203A65636E697320, 0xE800000000000000);
    sub_22818B6E8(&qword_27D8283D0, MEMORY[0x277CC9578]);
    v66 = sub_228393420();
    MEMORY[0x22AAB5C80](v66);

    v67 = sub_228391FC0();

    [v64 setDebugIdentifier_];

    [*(v73 + qword_27D8239B0) executeQuery_];
    v68 = *(v49 + 8);
    v68(v53, v48);
    v69 = *(v90 + 8);
    v70 = v76;
    v69(v92, v76);
    v69(v95, v70);
    v68(v96, v48);
  }

  else
  {

    *&aBlock = MEMORY[0x277D84F90];
    BYTE8(aBlock) = 0;
    result = a1(&aBlock);
  }

  v71 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228189E68(int a1, void *a2, id a3, void (*a4)(id, uint64_t))
{
  if (a3)
  {
    v6 = a3;
    a4(a3, 1);
  }

  else
  {
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    a4(v7, 0);
  }
}

uint64_t sub_228189F14@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v45 = sub_22838F4A0();
  v4 = *(v45 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v45);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MedicationSearchItem(0);
  v44 = *(v8 - 1);
  v9 = *(v44 + 64);
  result = MEMORY[0x28223BE20](v8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  v14 = *a1 >> 62;
  v15 = v13;
  if (v14)
  {
    goto LABEL_21;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = result)
  {
    v17 = MEMORY[0x277D84F90];
    if (!i)
    {
LABEL_18:
      *a2 = v17;
      return result;
    }

    v46 = MEMORY[0x277D84F90];
    result = sub_2281C9F74(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v17 = v46;
    v37 = a2;
    if (v14)
    {
      v38 = v15 & 0xFFFFFFFFFFFFFF8;
      v20 = sub_2283930D0();
      v18 = v15;
      v19 = v20;
    }

    else
    {
      v18 = v15;
      v38 = v15 & 0xFFFFFFFFFFFFFF8;
      v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = v18 & 0xC000000000000001;
    v21 = type metadata accessor for MedicationSearchCell();
    v22 = v15;
    v39 = v21;
    v40 = i;
    v14 = 0;
    v15 = (v4 + 1);
    v43 = v19 & ~(v19 >> 63);
    v41 = v22;
    while (v43 != v14)
    {
      if (v42)
      {
        v23 = MEMORY[0x22AAB6D80](v14);
      }

      else
      {
        if (v14 >= *(v38 + 16))
        {
          goto LABEL_20;
        }

        v23 = v22[v14 + 4];
      }

      v24 = v23;
      sub_22818DE38();
      v26 = *(v25 + 48);
      *v12 = [v24 specificProduct];
      v27 = [v24 routedDoseFormProducts];
      sub_22817A958(0, &qword_27D823BD8, 0x277CCD1B0);
      sub_2283921A0();

      sub_228390C40();
      type metadata accessor for MedicationSearchItem.Source(0);
      swift_storeEnumTagMultiPayload();
      v28 = (v12 + v8[6]);
      sub_22838F490();
      v29 = sub_22838F450();
      v31 = v30;
      (*v15)(v7, v45);
      *v28 = v29;
      v28[1] = v31;
      v4 = (v12 + v8[7]);
      sub_22818B6E8(&qword_27D8239E8, type metadata accessor for MedicationSearchCell);
      v32 = sub_22838FBB0();
      v34 = v33;

      *v4 = v32;
      v4[1] = v34;
      *(v12 + v8[5]) = v14;
      v46 = v17;
      v36 = *(v17 + 16);
      v35 = *(v17 + 24);
      a2 = (v36 + 1);
      if (v36 >= v35 >> 1)
      {
        sub_2281C9F74(v35 > 1, v36 + 1, 1);
        v17 = v46;
      }

      ++v14;
      *(v17 + 16) = a2;
      result = sub_22818CCF8(v12, v17 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v36);
      v22 = v41;
      if (v40 == v14)
      {
        a2 = v37;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_2283930D0();
  }

  __break(1u);
  return result;
}

void *sub_22818A308(unint64_t a1)
{
  v2 = v1;
  v4 = sub_22838FDE0();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v36 = &v34 - v8;
  v9 = sub_2283900D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  type metadata accessor for NewMedicationsOnboardingDataSource();
  v17 = sub_22838FD40();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (*(v17 + 16) <= a1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v34 = v4;
  v18 = v17 + 16 * a1;
  v20 = *(v18 + 32);
  v19 = *(v18 + 40);

  v21 = v20 == 0xD000000000000010 && 0x80000002283A7870 == v19;
  if (!v21 && (sub_228393460() & 1) == 0)
  {
    v24 = v20 == 0xD000000000000019 && 0x80000002283A7890 == v19;
    if (v24 || (sub_228393460() & 1) != 0)
    {

      sub_228390040();
      sub_22838FFE0();
      v25 = *(v10 + 8);
      v25(v14, v9);
      sub_228390080();
      v22 = sub_2283900C0();
      sub_2281832D0();
      [v22 contentInsets];
      [v22 setContentInsets_];
      v26 = *(v2 + qword_27D823950);
      [v22 contentInsets];
      [v22 setContentInsets_];
      v25(v16, v9);
      return v22;
    }

    if (v20 == 0xD00000000000001ELL && 0x80000002283A78B0 == v19 || (sub_228393460() & 1) != 0)
    {

      sub_228390010();
      sub_228390070();
      v22 = sub_2283900C0();
      [v22 contentInsets];
      [v22 setContentInsets_];
      goto LABEL_9;
    }

    if (v20 == 0xD00000000000001ELL && 0x80000002283A78D0 == v19 || (sub_228393460() & 1) != 0 || v20 == 0xD000000000000023 && 0x80000002283A78F0 == v19 || (sub_228393460() & 1) != 0)
    {

      v27 = v35;
      sub_22838FDD0();
      v28 = v36;
      sub_22838FD90();
      v29 = *(v37 + 8);
      v30 = v34;
      v29(v27, v34);
      v31 = [objc_opt_self() fractionalHeightDimension_];
      sub_22838FD70();
LABEL_28:
      v22 = sub_22838FD80();
      v29(v28, v30);
      return v22;
    }

    if (v20 == 0xD00000000000001CLL && 0x80000002283A7920 == v19)
    {

      goto LABEL_35;
    }

LABEL_34:
    v32 = sub_228393460();

    if ((v32 & 1) == 0)
    {
      v33 = v36;
      sub_22838FDB0();
      v28 = v35;
      sub_22838FD90();
      v29 = *(v37 + 8);
      v30 = v34;
      v29(v33, v34);
      goto LABEL_28;
    }

LABEL_35:
    sub_228390040();
    v22 = sub_2283900C0();
    (*(v10 + 8))(v16, v9);
    [v22 contentInsets];
    [v22 setContentInsets_];
    return v22;
  }

  sub_228390040();
  sub_228390070();
  v22 = sub_2283900C0();
LABEL_9:
  (*(v10 + 8))(v16, v9);
  return v22;
}

uint64_t type metadata accessor for NewMedicationsOnboardingDataSource()
{
  result = qword_27D823A08;
  if (!qword_27D823A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22818A928@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_228391610();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_228391620();
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = *MEMORY[0x277D74C98];
  v11 = *(v5 + 104);
  v11(v8, v10, v4);
  sub_228391600();
  v11(v8, v10, v4);
  return sub_2283915F0();
}

uint64_t sub_22818AA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_228391590();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = *MEMORY[0x277D767D8];
  if (sub_228392000() == a1 && v9 == a2)
  {
  }

  else
  {
    v11 = sub_228393460();

    if ((v11 & 1) == 0)
    {
      a3[3] = sub_22838FC00();
      a3[4] = sub_22818B6E8(&qword_27D823958, MEMORY[0x277D10EC8]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_22838FBF0();
    }
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_2283913C0();
  v13 = [objc_opt_self() grayColor];
  v14 = sub_228391450();
  sub_228391420();
  v14(v19, 0);
  v15 = sub_22838FB60();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_22838FB50();
  a3[3] = v15;
  result = sub_22818B6E8(&qword_27D823960, MEMORY[0x277D10E18]);
  a3[4] = result;
  *a3 = v18;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22818AD94()
{
  sub_22818B730(v0 + qword_27D823968);
  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D823970));
  v1 = *(v0 + qword_27D823978);

  v2 = *(v0 + qword_27D823980);

  v3 = *(v0 + qword_27D823988);

  v4 = *(v0 + qword_27D823990);

  v5 = *(v0 + qword_27D823998);

  v6 = *(v0 + qword_27D8239A8);

  v7 = qword_27D823930;
  v8 = MEMORY[0x277CBCED0];
  sub_22818D028(0, &unk_27D8278B0, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  (*(*(v9 - 8) + 8))(v0 + v7, v9);
  v10 = qword_27D823940;
  sub_22818D028(0, &qword_280DDBBD0, MEMORY[0x277D839B0], v8);
  v12 = v11;
  v13 = *(*(v11 - 8) + 8);
  v13(v0 + v10, v11);
  v13(v0 + qword_27D823948, v12);
  v14 = *(v0 + qword_27D8239B8);

  v15 = *(v0 + qword_27D828998);

  v16 = *(v0 + qword_27D8239C0);
}

uint64_t NewMedicationsOnboardingDataSource.deinit()
{
  v0 = sub_22838FFB0();
  sub_22818B730(v0 + qword_27D823968);
  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D823970));
  v1 = *(v0 + qword_27D823978);

  v2 = *(v0 + qword_27D823980);

  v3 = *(v0 + qword_27D823988);

  v4 = *(v0 + qword_27D823990);

  v5 = *(v0 + qword_27D823998);

  v6 = *(v0 + qword_27D8239A8);

  v7 = qword_27D823930;
  v8 = MEMORY[0x277CBCED0];
  sub_22818D028(0, &unk_27D8278B0, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  (*(*(v9 - 8) + 8))(v0 + v7, v9);
  v10 = qword_27D823940;
  sub_22818D028(0, &qword_280DDBBD0, MEMORY[0x277D839B0], v8);
  v12 = v11;
  v13 = *(*(v11 - 8) + 8);
  v13(v0 + v10, v11);
  v13(v0 + qword_27D823948, v12);
  v14 = *(v0 + qword_27D8239B8);

  v15 = *(v0 + qword_27D828998);

  v16 = *(v0 + qword_27D8239C0);

  return v0;
}

uint64_t NewMedicationsOnboardingDataSource.__deallocating_deinit()
{
  v0 = *NewMedicationsOnboardingDataSource.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall NewMedicationsOnboardingDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_228390120();
  sub_2283926B0();
  type metadata accessor for MedicationOnboardingHeaderCell();
  sub_22818B6E8(&qword_27D8239C8, type metadata accessor for MedicationOnboardingHeaderCell);
  sub_2283926B0();
  type metadata accessor for MedicationOnboardingSuggestionsHeaderCell();
  sub_22818B6E8(&qword_27D8239D0, type metadata accessor for MedicationOnboardingSuggestionsHeaderCell);
  sub_2283926B0();
  type metadata accessor for ShardSpinnerDownloadCell();
  sub_22818B6E8(&qword_27D8239D8, type metadata accessor for ShardSpinnerDownloadCell);
  sub_2283926B0();
  sub_2283926D0();
  type metadata accessor for ConnectivityIssueCell();
  sub_22818B6E8(&qword_27D8239E0, type metadata accessor for ConnectivityIssueCell);
  sub_2283926B0();
  type metadata accessor for MedicationSearchFieldCell();
  sub_22818B6E8(&qword_27D826930, type metadata accessor for MedicationSearchFieldCell);
  sub_2283926B0();
  sub_2283904F0();
  sub_2283926B0();
  type metadata accessor for MedicationSearchCell();
  sub_22818B6E8(&qword_27D8239E8, type metadata accessor for MedicationSearchCell);
  sub_2283926B0();
}

uint64_t sub_22818B498()
{
  sub_228390120();
  sub_2283926B0();
  type metadata accessor for MedicationOnboardingHeaderCell();
  sub_22818B6E8(&qword_27D8239C8, type metadata accessor for MedicationOnboardingHeaderCell);
  sub_2283926B0();
  type metadata accessor for MedicationOnboardingSuggestionsHeaderCell();
  sub_22818B6E8(&qword_27D8239D0, type metadata accessor for MedicationOnboardingSuggestionsHeaderCell);
  sub_2283926B0();
  type metadata accessor for ShardSpinnerDownloadCell();
  sub_22818B6E8(&qword_27D8239D8, type metadata accessor for ShardSpinnerDownloadCell);
  sub_2283926B0();
  sub_2283926D0();
  type metadata accessor for ConnectivityIssueCell();
  sub_22818B6E8(&qword_27D8239E0, type metadata accessor for ConnectivityIssueCell);
  sub_2283926B0();
  type metadata accessor for MedicationSearchFieldCell();
  sub_22818B6E8(&qword_27D826930, type metadata accessor for MedicationSearchFieldCell);
  sub_2283926B0();
  sub_2283904F0();
  sub_2283926B0();
  type metadata accessor for MedicationSearchCell();
  sub_22818B6E8(&qword_27D8239E8, type metadata accessor for MedicationSearchCell);
  return sub_2283926B0();
}

uint64_t sub_22818B6E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22818B7A0()
{
  sub_22818D028(319, &unk_27D8278B0, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22818D028(319, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for NewMedicationsOnboardingDataSource.SubtitleState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NewMedicationsOnboardingDataSource.SubtitleState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22818C0D4()
{
  result = qword_27D823A18;
  if (!qword_27D823A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823A18);
  }

  return result;
}

void sub_22818C128(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2281810DC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_22818C190()
{
  result = qword_27D823A20;
  if (!qword_27D823A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823A20);
  }

  return result;
}

unint64_t sub_22818C1E4()
{
  result = qword_27D823A28;
  if (!qword_27D823A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823A28);
  }

  return result;
}

unint64_t sub_22818C238()
{
  result = qword_27D826940;
  if (!qword_27D826940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826940);
  }

  return result;
}

void sub_22818C294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22818C2F8()
{
  if (!qword_27D823A30)
  {
    v0 = MEMORY[0x277D837D0];
    sub_22818D028(255, &qword_27D823938, MEMORY[0x277D837D0], MEMORY[0x277CBCEC0]);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22818C40C(&qword_27D823A38, &qword_27D823938, v0);
    sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78);
    v1 = sub_228391790();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823A30);
    }
  }
}

uint64_t sub_22818C40C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_22818D028(255, a2, a3, MEMORY[0x277CBCEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22818C470(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22817A958(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22818C4B4()
{
  if (!qword_27D823A40)
  {
    sub_22818C2F8();
    sub_22818C560(255);
    sub_22818B6E8(&qword_27D823A58, sub_22818C2F8);
    v0 = sub_228391740();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823A40);
    }
  }
}

void sub_22818C5B4()
{
  if (!qword_27D823A60)
  {
    sub_22818C560(255);
    sub_22818C6A0();
    sub_22818B6E8(&qword_27D823A78, sub_22818C560);
    sub_22818B6E8(&qword_27D823A80, sub_22818C6A0);
    v0 = sub_228391720();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823A60);
    }
  }
}

void sub_22818C6A0()
{
  if (!qword_27D823A68)
  {
    sub_22818C4B4();
    sub_2281810DC(255, &qword_280DDB860);
    sub_22818B6E8(&qword_27D823A70, sub_22818C4B4);
    v0 = sub_228391710();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823A68);
    }
  }
}

void sub_22818C76C()
{
  if (!qword_27D823A88)
  {
    sub_22818C5B4();
    sub_22818B6E8(&qword_27D823A90, sub_22818C5B4);
    v0 = sub_228391700();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823A88);
    }
  }
}

void sub_22818C800()
{
  if (!qword_27D823A98)
  {
    sub_22818C76C();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22818B6E8(&qword_27D823AA0, sub_22818C76C);
    sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78);
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823A98);
    }
  }
}

void sub_22818C910()
{
  if (!qword_27D823AB8)
  {
    sub_22818C9BC();
    sub_22818C580(255);
    sub_22818B6E8(&qword_27D823AD0, sub_22818C9BC);
    v0 = sub_228391740();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823AB8);
    }
  }
}

void sub_22818C9BC()
{
  if (!qword_27D823AC0)
  {
    sub_22818C294(255, &qword_27D823AC8, MEMORY[0x277D11678], MEMORY[0x277D83940]);
    sub_2281810DC(255, &qword_280DDB860);
    v0 = sub_2283917F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823AC0);
    }
  }
}

void sub_22818CA8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_22818C580(255);
    v7 = v6;
    v8 = sub_2281810DC(255, &qword_280DDB860);
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22818CB14()
{
  if (!qword_27D823AF8)
  {
    sub_228390B70();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D823AF8);
    }
  }
}

uint64_t sub_22818CB80(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_22817A958(0, &qword_27D823BC0, 0x277D115B0);
    v5 = sub_2283921A0();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t sub_22818CC38(uint64_t a1, uint64_t a2)
{
  sub_22818CB14();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22818CC9C(uint64_t a1)
{
  sub_22818CB14();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22818CCF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationSearchItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22818CD7C()
{
  if (!qword_27D823B10)
  {
    sub_22818D028(255, &qword_27D823B08, &type metadata for NetworkStateObserver.ConnectionStatus, MEMORY[0x277CBCEC0]);
    sub_22818C40C(&qword_27D823B18, &qword_27D823B08, &type metadata for NetworkStateObserver.ConnectionStatus);
    v0 = sub_228391730();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823B10);
    }
  }
}

void sub_22818CE24()
{
  if (!qword_27D823B20)
  {
    v0 = MEMORY[0x277D839B0];
    sub_22818D028(255, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
    sub_22818CD7C();
    sub_22818C40C(&qword_280DDBBF0, &unk_280DDBBE0, v0);
    sub_22818B6E8(&qword_27D823B28, sub_22818CD7C);
    v1 = sub_228391690();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823B20);
    }
  }
}

void sub_22818CF28()
{
  if (!qword_27D823B30)
  {
    sub_22818CE24();
    sub_22817A958(255, &qword_280DDB928, 0x277CBEB88);
    sub_22818B6E8(&qword_27D823B38, sub_22818CE24);
    sub_22818C470(&qword_280DDB930, &qword_280DDB928, 0x277CBEB88);
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823B30);
    }
  }
}

void sub_22818D028(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_22818D078()
{
  result = qword_27D823B48;
  if (!qword_27D823B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823B48);
  }

  return result;
}

uint64_t sub_22818D0D4(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1 + 2);
}

uint64_t sub_22818D10C(unint64_t a1)
{
  sub_22818C294(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v61 = &v47 - v4;
  v5 = sub_228391DD0();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818D97C();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8);
  v47 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818DA10();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v62 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818DAA4();
  v56 = *(v14 - 8);
  v57 = v14;
  v15 = *(v56 + 64);
  MEMORY[0x28223BE20](v14);
  v55 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818DBA4();
  v59 = *(v17 - 8);
  v60 = v17;
  v18 = *(v59 + 64);
  MEMORY[0x28223BE20](v17);
  v58 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_17:
    v20 = sub_2283930D0();
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  while (v20 != v21)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x22AAB6D80](v21, a1);
    }

    else
    {
      if (v21 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v23 = *(a1 + 8 * v21 + 32);
    }

    v24 = v23;
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v26 = [v23 firstConceptIdentifier];

    ++v21;
    if (v26)
    {
      MEMORY[0x22AAB5D20]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2283921E0();
      }

      sub_228392230();
      v22 = v64;
      v21 = v25;
    }
  }

  v28 = swift_allocObject();
  *(v28 + 16) = v63;
  *(v28 + 24) = v22;
  sub_22818C560(0);
  sub_22818B6E8(&qword_27D823A78, sub_22818C560);

  v29 = v47;
  sub_228391900();
  sub_22818B6E8(&qword_27D823B98, sub_22818D97C);
  v30 = v49;
  v31 = sub_228391990();
  (*(v48 + 8))(v29, v30);
  v64 = v31;
  v65 = MEMORY[0x277D84F90];
  sub_2283919B0();

  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v33 = v50;
  v32 = v51;
  v34 = v52;
  (*(v51 + 104))(v50, *MEMORY[0x277D851C0], v52);
  v35 = sub_2283927C0();
  (*(v32 + 8))(v33, v34);
  v64 = v35;
  v36 = sub_228392730();
  v52 = *(*(v36 - 8) + 56);
  v37 = v61;
  v52(v61, 1, 1, v36);
  sub_22818B6E8(&qword_27D823B80, sub_22818DA10);
  sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78);
  v38 = v54;
  v39 = v55;
  v40 = v62;
  sub_228391A90();
  v41 = MEMORY[0x277D85248];
  sub_22818E198(v37, &qword_280DDBAD0, MEMORY[0x277D85248]);

  (*(v53 + 8))(v40, v38);
  v42 = sub_228392790();
  v64 = v42;
  v52(v37, 1, 1, v36);
  sub_22818B6E8(&qword_27D823B90, sub_22818DAA4);
  v43 = v57;
  v44 = v58;
  sub_228391A70();
  sub_22818E198(v37, &qword_280DDBAD0, v41);

  (*(v56 + 8))(v39, v43);
  swift_getKeyPath();
  v64 = v63;
  sub_22818B6E8(&qword_27D823BA0, sub_22818DBA4);
  v45 = v60;
  sub_228391AD0();

  (*(v59 + 8))(v44, v45);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

void sub_22818D97C()
{
  if (!qword_27D823B68)
  {
    sub_22818C560(255);
    sub_22818B6E8(&qword_27D823A78, sub_22818C560);
    v0 = sub_228391910();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823B68);
    }
  }
}

void sub_22818DA10()
{
  if (!qword_27D823B70)
  {
    sub_22818C560(255);
    sub_22818B6E8(&qword_27D823A78, sub_22818C560);
    v0 = sub_228391700();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823B70);
    }
  }
}

void sub_22818DAA4()
{
  if (!qword_27D823B78)
  {
    sub_22818DA10();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22818B6E8(&qword_27D823B80, sub_22818DA10);
    sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78);
    v0 = sub_2283916F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823B78);
    }
  }
}

void sub_22818DBA4()
{
  if (!qword_27D823B88)
  {
    sub_22818DAA4();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22818B6E8(&qword_27D823B90, sub_22818DAA4);
    sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78);
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823B88);
    }
  }
}

void sub_22818DCAC()
{
  if (!qword_27D823BA8)
  {
    sub_22818DD58();
    sub_22818C580(255);
    sub_22818B6E8(&qword_27D823BC8, sub_22818DD58);
    v0 = sub_228391740();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823BA8);
    }
  }
}

void sub_22818DD58()
{
  if (!qword_27D823BB0)
  {
    sub_22818DF04(255, &qword_27D823BB8, &qword_27D823BC0, 0x277D115B0);
    sub_2281810DC(255, &qword_280DDB860);
    v0 = sub_2283918E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823BB0);
    }
  }
}

uint64_t objectdestroy_49Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_22818DE38()
{
  if (!qword_27D827860)
  {
    sub_22817A958(255, &qword_27D823BD8, 0x277CCD1B0);
    sub_228390C30();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D827860);
    }
  }
}

uint64_t sub_22818DEBC(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

void sub_22818DF04(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_22817A958(255, a3, a4);
    v5 = sub_228392240();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22818DF5C()
{
  if (!qword_27D823BF8)
  {
    v0 = MEMORY[0x277D839B0];
    sub_22818D028(255, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
    sub_22818C40C(&qword_280DDBBF0, &unk_280DDBBE0, v0);
    v1 = sub_228391770();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823BF8);
    }
  }
}

void sub_22818E004()
{
  if (!qword_27D823C00)
  {
    sub_22818DF5C();
    sub_22818B6E8(&qword_27D823C08, sub_22818DF5C);
    v0 = sub_228391730();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823C00);
    }
  }
}

void sub_22818E098()
{
  if (!qword_27D823C10)
  {
    sub_22818E004();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22818B6E8(&qword_27D823C18, sub_22818E004);
    sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78);
    v0 = sub_228391760();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823C10);
    }
  }
}

uint64_t sub_22818E198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22818C294(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_22818E210()
{
  result = qword_280DDBBB0;
  if (!qword_280DDBBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDBBB0);
  }

  return result;
}

unint64_t sub_22818E28C()
{
  sub_2283931D0();

  v1 = *(v0 + *(type metadata accessor for MedicationLogDetailsTimePickerItem() + 20));
  v2 = sub_228300540();
  MEMORY[0x22AAB5C80](v2);

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);
  v3 = sub_22838F450();
  MEMORY[0x22AAB5C80](v3);

  return 0xD000000000000019;
}

uint64_t sub_22818E34C(uint64_t a1)
{
  sub_228393520();
  sub_22838F4A0();
  sub_22818FF88(&unk_27D823CA0, MEMORY[0x277CC95F0]);
  sub_228391F70();
  v3 = *(v1 + *(a1 + 20));
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_22818E40C(uint64_t a1, uint64_t a2)
{
  sub_22838F4A0();
  sub_22818FF88(&unk_27D823CA0, MEMORY[0x277CC95F0]);
  sub_228391F70();
  v4 = *(v2 + *(a2 + 20));
  sub_228300540();
  sub_2283920B0();
}

uint64_t sub_22818E4C0(uint64_t a1, uint64_t a2)
{
  sub_228393520();
  sub_22838F4A0();
  sub_22818FF88(&unk_27D823CA0, MEMORY[0x277CC95F0]);
  sub_228391F70();
  v4 = *(v2 + *(a2 + 20));
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_22818E580(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_22818E5BC(uint64_t a1)
{
  v2 = sub_22818FF88(&qword_27D823C98, type metadata accessor for MedicationLogDetailsTimePickerItem);

  return MEMORY[0x282169440](a1, v2);
}

id sub_22818E638()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell____lazy_storage___pickerView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell____lazy_storage___pickerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell____lazy_storage___pickerView);
  }

  else
  {
    type metadata accessor for MedicationLogDetailsTimePickerView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_22818E6C0()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22838F440();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818FBF4(0, &unk_27D823C68, type metadata accessor for MedicationLogDetailsTimePickerItem);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for MedicationLogDetailsTimePickerItem();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v20], v45);
  if (v46)
  {
    sub_22817A700();
    v21 = swift_dynamicCast();
    (*(v16 + 56))(v14, v21 ^ 1u, 1, v15);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      sub_22818FCA4(v14, v19);
      v22 = sub_22818E638();
      v23 = *&v19[*(v15 + 20)];
      v24 = *&v22[OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView_viewModel];
      *&v22[OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView_viewModel] = v23;
      swift_retain_n();

      v25 = sub_22818F374();
      v26 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      (*(v7 + 16))(v10, v23 + v26, v6);
      v27 = sub_22838F380();
      (*(v7 + 8))(v10, v6);
      [v25 setDate_];

      v28 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell____lazy_storage___pickerView];
      v29 = &v19[*(v15 + 24)];
      swift_unknownObjectWeakLoadStrong();
      v30 = *(v29 + 1);
      v31 = v28;
      sub_22818FD08(v19);
      *&v31[OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView_detailsDelegate + 8] = v30;
      swift_unknownObjectWeakAssign();

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_22818FC48(v45, &qword_280DDCD50, sub_22817A700);
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  sub_22818FC48(v14, &unk_27D823C68, type metadata accessor for MedicationLogDetailsTimePickerItem);
  sub_228391150();
  v33 = v1;
  v34 = sub_2283911A0();
  v35 = sub_2283925C0();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v44 = v37;
    *v36 = 136315138;
    sub_22817E6C8(&v1[v20], v45);
    sub_22818FBF4(0, &qword_280DDCD50, sub_22817A700);
    v38 = sub_228392040();
    v40 = sub_2281C96FC(v38, v39, &v44);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_22816B000, v34, v35, "Incorrect view model for MedicationLogDetailsTimePickerItem: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AAB7B80](v37, -1, -1);
    MEMORY[0x22AAB7B80](v36, -1, -1);
  }

  return (*(v42 + 8))(v5, v43);
}

char *sub_22818EC24(double a1, double a2, double a3, double a4)
{
  v9 = sub_228391590();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v51[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell____lazy_storage___pickerView] = 0;
  v14 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell_item];
  v15 = type metadata accessor for MedicationLogDetailsTimePickerCell();
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  v52.receiver = v4;
  v52.super_class = v15;
  v16 = objc_msgSendSuper2(&v52, sel_initWithFrame_, a1, a2, a3, a4);
  v51[3] = v9;
  v51[4] = MEMORY[0x277D74C30];
  __swift_allocate_boxed_opaque_existential_1(v51);
  v17 = v16;
  sub_228391520();
  MEMORY[0x22AAB6400](v51);
  v18 = [v17 contentView];
  v19 = sub_22818E638();
  [v18 addSubview_];

  v20 = [v17 contentView];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];

  v21 = v17;
  v22 = [v21 contentView];
  v23 = [v22 topAnchor];

  v24 = [v21 topAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  [v25 setActive_];
  v26 = [v21 contentView];
  v27 = [v26 leadingAnchor];

  v28 = [v21 leadingAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  [v29 setActive_];
  v30 = [v21 contentView];
  v31 = [v30 trailingAnchor];

  v32 = [v21 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  [v33 setActive_];
  v34 = [v21 contentView];
  v35 = [v34 bottomAnchor];

  v36 = [v21 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  [v37 setActive_];
  v38 = OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell____lazy_storage___pickerView;
  [*&v21[OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell____lazy_storage___pickerView] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_228391520();
  sub_2283914D0();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  (*(v10 + 8))(v13, v9);
  v47 = *&v21[v38];
  v48 = [v21 contentView];

  [v47 hk:v48 alignConstraintsWithView:v40 insets:{v42, v44, v46}];
  return v21;
}

uint64_t sub_22818F1FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22818F254(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22818E6C0();
  return sub_22818FC48(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_22818F2DC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22818F340;
}

uint64_t sub_22818F340(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_22818E6C0();
  }

  return result;
}

id sub_22818F374()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView____lazy_storage___logTimePicker;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView____lazy_storage___logTimePicker);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView____lazy_storage___logTimePicker);
  }

  else
  {
    v4 = sub_22818F3D8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22818F3D8(uint64_t a1)
{
  v2 = sub_22838F440();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277D753E8]) initWithFrame_];
  [v7 setPreferredDatePickerStyle_];
  [v7 setDatePickerMode_];
  sub_22838F430();
  v8 = sub_22838F380();
  (*(v3 + 8))(v6, v2);
  [v7 setMaximumDate_];

  [v7 addTarget:a1 action:sel_logTimeChanged_ forControlEvents:4096];
  return v7;
}

void sub_22818F670()
{
  sub_228180ED0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228396260;
  *(v1 + 32) = sub_22818F374();
  v2 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22818FDE4();
  v3 = sub_228392190();

  v4 = [v2 initWithArrangedSubviews_];

  [v4 setAxis_];
  [v4 setAlignment_];
  [v4 setDistribution_];
  [v4 setSpacing_];
  v5 = v4;
  [v0 addSubview_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v5 topAnchor];
  v7 = [v0 topAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  [v8 setActive_];
  v9 = [v5 leadingAnchor];

  v10 = [v0 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  [v11 setActive_];
  v12 = [v5 trailingAnchor];

  v13 = [v0 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  [v14 setActive_];
  v15 = [v5 bottomAnchor];

  v16 = [v0 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  [v17 setActive_];
}

id sub_22818FAF0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for MedicationLogDetailsTimePickerItem()
{
  result = qword_27D823C78;
  if (!qword_27D823C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22818FBF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22818FC48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22818FBF4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22818FCA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationLogDetailsTimePickerItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22818FD08(uint64_t a1)
{
  v2 = type metadata accessor for MedicationLogDetailsTimePickerItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22818FD64(uint64_t a1, uint64_t a2)
{
  sub_22818FBF4(0, &qword_280DDCD50, sub_22817A700);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_22818FDE4()
{
  result = qword_280DDB9B0;
  if (!qword_280DDB9B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DDB9B0);
  }

  return result;
}

uint64_t sub_22818FE58()
{
  result = sub_22838F4A0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MedicationsDoseLogViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22818FF88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SpecificationStep.headerImage.getter()
{
  v1 = *v0;
  v2 = v1 >> 5;
  if (v1 >> 5 > 2)
  {
    if (v2 == 3)
    {
      if (v1 == 96)
      {
        if (qword_280DDCED0 != -1)
        {
          swift_once();
        }

        v6 = qword_280DDCED8;
        v7 = sub_228391FC0();
        v5 = [objc_opt_self() imageNamed:v7 inBundle:v6];

        if (v5)
        {
          goto LABEL_19;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else if (v2 != 4)
    {
      if (v1 == 160)
      {
        if (qword_280DDCED0 == -1)
        {
          goto LABEL_24;
        }
      }

      else if (qword_280DDCED0 == -1)
      {
LABEL_24:
        v5 = qword_280DDCED8;
        v9 = sub_228391FC0();
        v10 = [objc_opt_self() imageNamed:v9 inBundle:v5];
        goto LABEL_25;
      }

LABEL_28:
      swift_once();
      goto LABEL_24;
    }

    return 0;
  }

  if (!v2)
  {
    if (qword_280DDCED0 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  if (v2 == 1)
  {
    if (qword_280DDCED0 != -1)
    {
      swift_once();
    }

    v3 = qword_280DDCED8;
    v4 = sub_228391FC0();
    v5 = [objc_opt_self() imageNamed:v4 inBundle:v3];

    if (v5)
    {
LABEL_19:
      v8 = [v5 imageFlippedForRightToLeftLayoutDirection];
LABEL_26:

      return v8;
    }

    __break(1u);
    goto LABEL_30;
  }

  if (v1 != 64)
  {
    sub_228190EB8();
    v5 = sub_228392C30();
    v9 = sub_228391FC0();
    v10 = [objc_opt_self() imageNamed:v9 inBundle:v5];
LABEL_25:
    v8 = v10;

    goto LABEL_26;
  }

LABEL_31:
  result = sub_228393300();
  __break(1u);
  return result;
}

uint64_t SpecificationStep.title.getter()
{
  v1 = *v0;
  v2 = v1 >> 5;
  if (v1 >> 5 > 2)
  {
    if (v2 == 3)
    {
      if (v1 == 96)
      {
        if (qword_280DDCF18 == -1)
        {
          return sub_22838F0C0();
        }
      }

      else if (qword_280DDCF18 == -1)
      {
        return sub_22838F0C0();
      }
    }

    else if (v2 == 4)
    {
      if (v1 != 128)
      {
        return 0;
      }

      if (qword_280DDCF18 == -1)
      {
        return sub_22838F0C0();
      }
    }

    else if (v1 == 160)
    {
      if (qword_280DDCF18 == -1)
      {
        return sub_22838F0C0();
      }
    }

    else if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

LABEL_27:
    swift_once();
    return sub_22838F0C0();
  }

  if (!v2)
  {
LABEL_17:
    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

    goto LABEL_27;
  }

  if (v2 != 1)
  {
    if (v1 == 64)
    {
      result = sub_228393300();
      __break(1u);
      return result;
    }

    goto LABEL_17;
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v3 = sub_22838F0C0();

  return v3;
}

uint64_t SpecificationStep.isSkipable.getter()
{
  v1 = *v0;
  v2 = v1 >> 5;
  if (v1 >> 5 > 2)
  {
    if (v2 == 5)
    {
      v7 = v1 == 160;
    }

    else
    {
      v6 = 0;
      if (v2 == 4)
      {
        return v6 & 1;
      }

      v7 = v1 == 96;
    }

    v6 = !v7;
    return v6 & 1;
  }

  if (v2)
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = *v0;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t SpecificationStep.analyticsStep.getter()
{
  v1 = *v0;
  v2 = v1 >> 5;
  v3 = 5;
  v4 = 6;
  if (v1 != 96)
  {
    v4 = 7;
  }

  v5 = 8;
  if (v1 != 128)
  {
    v5 = 9;
  }

  v6 = 14;
  if (v1 == 160)
  {
    v6 = 10;
  }

  if (v2 != 4)
  {
    v5 = v6;
  }

  if (v2 != 3)
  {
    v4 = v5;
  }

  v7 = 12;
  v8 = 13;
  if (v1 == 64)
  {
    v8 = 0;
  }

  if (v2 != 1)
  {
    v7 = v8;
  }

  if (v2)
  {
    v3 = v7;
  }

  if (v1 >> 5 <= 2)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

BOOL static SpecificationStep.< infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 5;
  v5 = 4;
  if (v2 != 96)
  {
    v5 = 5;
  }

  v6 = 6;
  if (v2 != 128)
  {
    v6 = 7;
  }

  v7 = 8;
  if (v2 != 160)
  {
    v7 = 9;
  }

  if (v4 != 4)
  {
    v6 = v7;
  }

  if (v4 != 3)
  {
    v5 = v6;
  }

  v8 = v2 != 64;
  if (v4 == 1)
  {
    v8 = 3;
  }

  if (!v4)
  {
    v8 = 2;
  }

  if (v4 > 2)
  {
    v8 = v5;
  }

  v9 = v3 >> 5;
  v10 = 4;
  if (v3 != 96)
  {
    v10 = 5;
  }

  v11 = 6;
  if (v3 != 128)
  {
    v11 = 7;
  }

  v12 = 8;
  if (v3 != 160)
  {
    v12 = 9;
  }

  if (v9 != 4)
  {
    v11 = v12;
  }

  if (v9 != 3)
  {
    v10 = v11;
  }

  v13 = v3 != 64;
  if (v9 == 1)
  {
    v13 = 3;
  }

  if (!v9)
  {
    v13 = 2;
  }

  if (v9 > 2)
  {
    v13 = v10;
  }

  return v8 < v13;
}

BOOL sub_2281909D0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 5;
  v5 = 4;
  if (v2 != 96)
  {
    v5 = 5;
  }

  v6 = 6;
  if (v2 != 128)
  {
    v6 = 7;
  }

  v7 = 8;
  if (v2 != 160)
  {
    v7 = 9;
  }

  if (v4 != 4)
  {
    v6 = v7;
  }

  if (v4 != 3)
  {
    v5 = v6;
  }

  v8 = v2 != 64;
  if (v4 == 1)
  {
    v8 = 3;
  }

  if (!v4)
  {
    v8 = 2;
  }

  if (v4 > 2)
  {
    v8 = v5;
  }

  v9 = v3 >> 5;
  v10 = 4;
  if (v3 != 96)
  {
    v10 = 5;
  }

  v11 = 6;
  if (v3 != 128)
  {
    v11 = 7;
  }

  v12 = 8;
  if (v3 != 160)
  {
    v12 = 9;
  }

  if (v9 != 4)
  {
    v11 = v12;
  }

  if (v9 != 3)
  {
    v10 = v11;
  }

  v13 = v3 != 64;
  if (v9 == 1)
  {
    v13 = 3;
  }

  if (!v9)
  {
    v13 = 2;
  }

  if (v9 > 2)
  {
    v13 = v10;
  }

  return v8 < v13;
}

BOOL sub_228190AA4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 >> 5;
  v5 = 4;
  if (v3 != 96)
  {
    v5 = 5;
  }

  v6 = 6;
  if (v3 != 128)
  {
    v6 = 7;
  }

  v7 = 8;
  if (v3 != 160)
  {
    v7 = 9;
  }

  if (v4 != 4)
  {
    v6 = v7;
  }

  if (v4 != 3)
  {
    v5 = v6;
  }

  v8 = v3 != 64;
  if (v4 == 1)
  {
    v8 = 3;
  }

  if (!v4)
  {
    v8 = 2;
  }

  if (v4 > 2)
  {
    v8 = v5;
  }

  v9 = v2 >> 5;
  v10 = 4;
  if (v2 != 96)
  {
    v10 = 5;
  }

  v11 = 6;
  if (v2 != 128)
  {
    v11 = 7;
  }

  v12 = 8;
  if (v2 != 160)
  {
    v12 = 9;
  }

  if (v9 != 4)
  {
    v11 = v12;
  }

  if (v9 != 3)
  {
    v10 = v11;
  }

  v13 = v2 != 64;
  if (v9 == 1)
  {
    v13 = 3;
  }

  if (!v9)
  {
    v13 = 2;
  }

  if (v9 > 2)
  {
    v13 = v10;
  }

  return v8 >= v13;
}

BOOL sub_228190B78(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 5;
  v5 = 4;
  if (v2 != 96)
  {
    v5 = 5;
  }

  v6 = 6;
  if (v2 != 128)
  {
    v6 = 7;
  }

  v7 = 8;
  if (v2 != 160)
  {
    v7 = 9;
  }

  if (v4 != 4)
  {
    v6 = v7;
  }

  if (v4 != 3)
  {
    v5 = v6;
  }

  v8 = v2 != 64;
  if (v4 == 1)
  {
    v8 = 3;
  }

  if (!v4)
  {
    v8 = 2;
  }

  if (v4 > 2)
  {
    v8 = v5;
  }

  v9 = v3 >> 5;
  v10 = 4;
  if (v3 != 96)
  {
    v10 = 5;
  }

  v11 = 6;
  if (v3 != 128)
  {
    v11 = 7;
  }

  v12 = 8;
  if (v3 != 160)
  {
    v12 = 9;
  }

  if (v9 != 4)
  {
    v11 = v12;
  }

  if (v9 != 3)
  {
    v10 = v11;
  }

  v13 = v3 != 64;
  if (v9 == 1)
  {
    v13 = 3;
  }

  if (!v9)
  {
    v13 = 2;
  }

  if (v9 > 2)
  {
    v13 = v10;
  }

  return v8 >= v13;
}

BOOL sub_228190C4C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 >> 5;
  v5 = 4;
  if (v3 != 96)
  {
    v5 = 5;
  }

  v6 = 6;
  if (v3 != 128)
  {
    v6 = 7;
  }

  v7 = 8;
  if (v3 != 160)
  {
    v7 = 9;
  }

  if (v4 != 4)
  {
    v6 = v7;
  }

  if (v4 != 3)
  {
    v5 = v6;
  }

  v8 = v3 != 64;
  if (v4 == 1)
  {
    v8 = 3;
  }

  if (!v4)
  {
    v8 = 2;
  }

  if (v4 > 2)
  {
    v8 = v5;
  }

  v9 = v2 >> 5;
  v10 = 4;
  if (v2 != 96)
  {
    v10 = 5;
  }

  v11 = 6;
  if (v2 != 128)
  {
    v11 = 7;
  }

  v12 = 8;
  if (v2 != 160)
  {
    v12 = 9;
  }

  if (v9 != 4)
  {
    v11 = v12;
  }

  if (v9 != 3)
  {
    v10 = v11;
  }

  v13 = v2 != 64;
  if (v9 == 1)
  {
    v13 = 3;
  }

  if (!v9)
  {
    v13 = 2;
  }

  if (v9 > 2)
  {
    v13 = v10;
  }

  return v8 < v13;
}

uint64_t _s19HealthMedicationsUI17SpecificationStepO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 5;
  if (v2 >> 5 > 2)
  {
    if (v4 == 3)
    {
      if (v2 == 96)
      {
        if (v3 != 96)
        {
          return 0;
        }
      }

      else if (v3 != 97)
      {
        return 0;
      }
    }

    else if (v4 == 4)
    {
      if (v2 == 128)
      {
        if (v3 != 128)
        {
          return 0;
        }
      }

      else if (v3 != 129)
      {
        return 0;
      }
    }

    else if (v2 == 160)
    {
      if (v3 != 160)
      {
        return 0;
      }
    }

    else if (v3 != 161)
    {
      return 0;
    }

    return 1;
  }

  if (!v4)
  {
    if (v3 < 0x20)
    {
      return (v3 ^ v2 ^ 1) & 1;
    }

    return 0;
  }

  if (v4 == 1)
  {
    if ((v3 & 0xE0) != 0x20)
    {
      return 0;
    }

    return (v3 ^ v2 ^ 1) & 1;
  }

  if (v2 != 64)
  {
    return v3 == 65;
  }

  return v3 == 64;
}

uint64_t _s19HealthMedicationsUI17SpecificationStepO10finalSteps16shouldDisplayDDI17skipVisualization0hI23ThirdPartyAuthorizationSayACGSb_S2btFZ_0(char a1, char a2, char a3)
{
  sub_228191128();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228398270;
  *(v6 + 32) = 24928;
  *(v6 + 34) = 0x80;
  v8 = v6;
  if (a2)
  {
    *(v6 + 16) = 2;
  }

  sub_2281D5624(&unk_283B66690);
  if (a1)
  {
    sub_2281D5624(&unk_283B666B8);
  }

  if (a3)
  {
    sub_2281D5624(&unk_283B666E0);
  }

  return v8;
}

unint64_t sub_228190EB8()
{
  result = qword_27D823CB0;
  if (!qword_27D823CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D823CB0);
  }

  return result;
}

unint64_t sub_228190F08()
{
  result = qword_27D823CB8;
  if (!qword_27D823CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823CB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpecificationStep(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7B)
  {
    goto LABEL_17;
  }

  if (a2 + 133 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 133) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 133;
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

      return (*a1 | (v4 << 8)) - 133;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 133;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 0xFFFFFF87 | (8 * ((*a1 >> 1) & 0xF))) ^ 0x7F;
  if (v6 >= 0x7A)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for SpecificationStep(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 133 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 133) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7B)
  {
    v4 = 0;
  }

  if (a2 > 0x7A)
  {
    v5 = ((a2 - 123) >> 8) + 1;
    *result = a2 - 123;
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
    *result = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2281910B8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x3F)
  {
    return v1 >> 5;
  }

  else
  {
    return (v1 | 0xFFFFFFFE) + 2 * (v1 >> 5);
  }
}

_BYTE *sub_2281910E4(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (32 * a2);
  }

  else
  {
    *result = (a2 & 1 | (32 * (a2 >> 1))) + 32;
  }

  return result;
}

void sub_228191128()
{
  if (!qword_27D823CC0)
  {
    v0 = sub_228393430();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823CC0);
    }
  }
}

id sub_228191178()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D11510]) initWithHealthStore_];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

char *sub_2281911EC()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = *MEMORY[0x277CCC5E0];
    v3 = *(v0 + 16);
    sub_228390890();
    v4 = v2;
    v5 = v3;
    v6 = v0;
    sub_228390880();
    sub_228390830();

    sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
    sub_2283925F0();
    v7 = sub_2283907E0();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v10 = sub_228390700();
    v11 = type metadata accessor for OntologyShardStateObserver();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v1 = OntologyShardStateObserver.init(identifier:healthStore:settingsManager:)(v4, v5, v10);
    v14 = *(v6 + 32);
    *(v6 + 32) = v1;
  }

  return v1;
}

uint64_t sub_228191314@<X0>(uint64_t *a1@<X8>)
{
  sub_228192E70();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  result = sub_2283918F0();
  *a1 = result;
  return result;
}

uint64_t sub_22819138C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_228191F54(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2281913B8(void **a1)
{
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_228391150();
  v8 = v7;
  v9 = sub_2283911A0();
  v10 = sub_2283925C0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = v3;
    v12 = v11;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v12 = 136315394;
    v15 = sub_228393600();
    v17 = sub_2281C96FC(v15, v16, &v25);
    v23 = v2;
    v18 = v17;

    *(v12 + 4) = v18;
    *(v12 + 12) = 2112;
    v19 = v7;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v20;
    *v13 = v20;
    _os_log_impl(&dword_22816B000, v9, v10, "%s Lifestyle factor error: %@", v12, 0x16u);
    sub_228193354(v13);
    MEMORY[0x22AAB7B80](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);

    (*(v24 + 8))(v6, v23);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v25 = MEMORY[0x277D84FA0];
  sub_2281930F4();
  return sub_2283918C0();
}

uint64_t sub_228191618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v5 = sub_228391DC0();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_228391DF0();
  v9 = *(v25 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v25);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_228391DD0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  (*(v14 + 104))(v17, *MEMORY[0x277D851B8], v13);

  v19 = sub_2283927C0();
  (*(v14 + 8))(v17, v13);
  v20 = swift_allocObject();
  v20[2] = v24;
  v20[3] = sub_22818DEBC;
  v20[4] = v18;
  aBlock[4] = sub_228193420;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_1;
  v21 = _Block_copy(aBlock);

  sub_228391DE0();
  v27 = MEMORY[0x277D84F90];
  sub_228192C80(&qword_280DDCF10, MEMORY[0x277D85198]);
  v22 = MEMORY[0x277D85198];
  sub_228192F08(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228193444(&qword_280DDCEF0, &qword_280DDCF00, v22);
  sub_228393030();
  MEMORY[0x22AAB6340](0, v12, v8, v21);
  _Block_release(v21);

  (*(v26 + 8))(v8, v5);
  (*(v9 + 8))(v12, v25);
}

uint64_t sub_228191A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_228391DC0();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_228391DF0();
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v26);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_228390770();
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v14 = sub_228198B08(0, 1, 1, MEMORY[0x277D84F90]);
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_228198B08((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    *&v14[8 * v16 + 32] = 1;
    if ((sub_2283907C0() & 1) == 0)
    {
LABEL_3:
      if ((sub_228390790() & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }
  }

  else if ((sub_2283907C0() & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_228198B08(0, *(v14 + 2) + 1, 1, v14);
  }

  v18 = *(v14 + 2);
  v17 = *(v14 + 3);
  if (v18 >= v17 >> 1)
  {
    v14 = sub_228198B08((v17 > 1), v18 + 1, 1, v14);
  }

  *(v14 + 2) = v18 + 1;
  *&v14[8 * v18 + 32] = 2;
  if (sub_228390790())
  {
LABEL_13:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_228198B08(0, *(v14 + 2) + 1, 1, v14);
    }

    v20 = *(v14 + 2);
    v19 = *(v14 + 3);
    if (v20 >= v19 >> 1)
    {
      v14 = sub_228198B08((v19 > 1), v20 + 1, 1, v14);
    }

    *(v14 + 2) = v20 + 1;
    *&v14[8 * v20 + 32] = 3;
  }

LABEL_18:
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v21 = sub_228392790();
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = v14;
  aBlock[4] = sub_2281934A8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_16;
  v23 = _Block_copy(aBlock);

  sub_228391DE0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_228192C80(&qword_280DDCF10, MEMORY[0x277D85198]);
  v24 = MEMORY[0x277D85198];
  sub_228192F08(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228193444(&qword_280DDCEF0, &qword_280DDCF00, v24);
  sub_228393030();
  MEMORY[0x22AAB6340](0, v12, v8, v23);
  _Block_release(v23);

  (*(v27 + 8))(v8, v5);
  return (*(v9 + 8))(v12, v26);
}

uint64_t sub_228191E9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_228191EE0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_228191F54(uint64_t a1)
{
  result = MEMORY[0x277D84FA0];
  v7 = MEMORY[0x277D84FA0];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_2282D5F7C(&v6, [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_]);

      --v3;
    }

    while (v3);
    return v7;
  }

  return result;
}

void *sub_228191FE8(void *a1, uint64_t a2)
{
  v3 = v2;
  v49 = a2;
  v55 = *v3;
  sub_228192918();
  v6 = *(v5 - 8);
  v52 = v5;
  v53 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v51 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228192A04();
  v10 = *(v9 - 8);
  v58 = v9;
  v59 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v50 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228192CC8();
  v61 = v13;
  v64 = *(v13 - 8);
  v14 = *(v64 + 64);
  MEMORY[0x28223BE20](v13);
  v54 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228192F6C();
  v17 = *(v16 - 8);
  v62 = v16;
  v63 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v56 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228193048();
  v65 = v20;
  v67 = *(v20 - 8);
  v21 = *(v67 + 64);
  MEMORY[0x28223BE20](v20);
  v57 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281931D0();
  v24 = *(v23 - 8);
  v68 = v23;
  v69 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v60 = v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = a1;
  v27 = a1;
  v28 = sub_228390710();
  sub_228192F08(0, &qword_27D823D88, sub_2281929AC, MEMORY[0x277D84560]);
  sub_2281929AC();
  v48[1] = v29;
  v30 = *(*(v29 - 8) + 72);
  v31 = (*(*(v29 - 8) + 80) + 32) & ~*(*(v29 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_228398270;
  sub_22817A958(0, &qword_27D823D90, 0x277CCD570);
  sub_228392670();
  sub_228392660();

  sub_228392690();
  sub_228392660();

  sub_228392680();
  sub_228392660();

  sub_228192C80(&qword_27D823CD8, sub_2281929AC);
  v32 = v51;
  sub_2283917C0();
  sub_228192C80(&qword_27D823D10, sub_228192918);
  v33 = v50;
  v34 = v52;
  sub_228391A60();
  (*(v53 + 8))(v32, v34);
  v35 = swift_allocObject();
  v36 = v55;
  *(v35 + 16) = v49;
  *(v35 + 24) = v36;

  sub_2283917E0();
  sub_228192E70();
  sub_228192C80(&qword_27D823D48, sub_228192A04);
  sub_228192C80(&qword_27D823D38, sub_228192E70);
  v37 = v54;
  v38 = v58;
  sub_228391A40();

  (*(v59 + 8))(v33, v38);
  sub_228192F08(0, &qword_27D823D30, type metadata accessor for HKDrugInteractionLifestyleFactor, MEMORY[0x277D83940]);
  sub_228192C80(&qword_27D823D58, sub_228192CC8);
  v39 = v56;
  v40 = v61;
  sub_2283919A0();
  (*(v64 + 8))(v37, v40);
  sub_2281930F4();
  v41 = v57;
  v42 = v62;
  sub_2283916B0();
  (*(v63 + 8))(v39, v42);
  *(swift_allocObject() + 16) = v36;
  sub_228192F08(0, &qword_27D823D70, sub_2281930F4, MEMORY[0x277CBCE78]);
  sub_228192C80(&qword_27D823D78, sub_228193048);
  sub_2281932BC();
  v43 = v60;
  v44 = v65;
  sub_228391A10();

  (*(v67 + 8))(v41, v44);
  sub_228192C80(&qword_27D823D98, sub_2281931D0);
  v45 = v68;
  v46 = sub_228391990();

  (*(v69 + 8))(v43, v45);
  result = v66;
  v66[5] = v46;
  return result;
}

void sub_228192918()
{
  if (!qword_27D823CC8)
  {
    sub_2281929AC();
    sub_228192C80(&qword_27D823CD8, sub_2281929AC);
    v0 = sub_2283917B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823CC8);
    }
  }
}

void sub_2281929AC()
{
  if (!qword_27D823CD0)
  {
    v0 = sub_228392650();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823CD0);
    }
  }
}

void sub_228192A04()
{
  if (!qword_27D823CE0)
  {
    sub_228192AF0();
    sub_228192918();
    sub_228192C80(&qword_27D823D08, sub_228192AF0);
    sub_228192C80(&qword_27D823D10, sub_228192918);
    v0 = sub_2283916E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823CE0);
    }
  }
}

void sub_228192AF0()
{
  if (!qword_27D823CE8)
  {
    sub_228192F08(255, &qword_27D823CF0, sub_228192BCC, MEMORY[0x277D83940]);
    sub_228192C1C();
    sub_228193444(&qword_27D823D00, &qword_27D823CF0, sub_228192BCC);
    v0 = sub_2283917A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823CE8);
    }
  }
}

void sub_228192BCC()
{
  if (!qword_27D823CF8)
  {
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823CF8);
    }
  }
}

unint64_t sub_228192C1C()
{
  result = qword_280DDB860;
  if (!qword_280DDB860)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DDB860);
  }

  return result;
}

uint64_t sub_228192C80(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_228192CC8()
{
  if (!qword_27D823D18)
  {
    sub_228192DB4();
    sub_228192A04();
    sub_228192C80(&qword_27D823D40, sub_228192DB4);
    sub_228192C80(&qword_27D823D48, sub_228192A04);
    v0 = sub_228391780();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823D18);
    }
  }
}

void sub_228192DB4()
{
  if (!qword_27D823D20)
  {
    sub_228192E70();
    sub_228192C1C();
    sub_228192C80(&qword_27D823D38, sub_228192E70);
    v0 = sub_228391710();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823D20);
    }
  }
}

void sub_228192E70()
{
  if (!qword_27D823D28)
  {
    sub_228192F08(255, &qword_27D823D30, type metadata accessor for HKDrugInteractionLifestyleFactor, MEMORY[0x277D83940]);
    v0 = sub_2283918E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823D28);
    }
  }
}

void sub_228192F08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_228192F6C()
{
  if (!qword_27D823D50)
  {
    sub_228192CC8();
    sub_228192F08(255, &qword_27D823D30, type metadata accessor for HKDrugInteractionLifestyleFactor, MEMORY[0x277D83940]);
    sub_228192C80(&qword_27D823D58, sub_228192CC8);
    v0 = sub_2283916D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823D50);
    }
  }
}

void sub_228193048()
{
  if (!qword_27D823D60)
  {
    sub_228192CC8();
    sub_2281930F4();
    sub_228192C80(&qword_27D823D58, sub_228192CC8);
    v0 = sub_2283916D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823D60);
    }
  }
}

void sub_2281930F4()
{
  if (!qword_280DDBB18)
  {
    sub_22817A958(255, &qword_280DDB960, 0x277CCABB0);
    sub_228193168();
    v0 = sub_2283924D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDBB18);
    }
  }
}

unint64_t sub_228193168()
{
  result = qword_280DDB958;
  if (!qword_280DDB958)
  {
    sub_22817A958(255, &qword_280DDB960, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDB958);
  }

  return result;
}

void sub_2281931D0()
{
  if (!qword_27D823D68)
  {
    sub_228193048();
    sub_228192F08(255, &qword_27D823D70, sub_2281930F4, MEMORY[0x277CBCE78]);
    sub_228192C80(&qword_27D823D78, sub_228193048);
    sub_2281932BC();
    v0 = sub_228391750();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823D68);
    }
  }
}

unint64_t sub_2281932BC()
{
  result = qword_27D823D80;
  if (!qword_27D823D80)
  {
    sub_228192F08(255, &qword_27D823D70, sub_2281930F4, MEMORY[0x277CBCE78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823D80);
  }

  return result;
}

uint64_t sub_228193344@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_228191314(a1);
}

uint64_t sub_228193354(uint64_t a1)
{
  sub_2281933B0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2281933B0()
{
  if (!qword_27D823DA0)
  {
    sub_22817A958(255, &qword_27D825620, 0x277D82BB8);
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823DA0);
    }
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_228193444(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_228192F08(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2281934E4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_228193548(uint64_t a1)
{
  v2 = sub_2281946C4();

  return MEMORY[0x282169440](a1, v2);
}

id sub_228193594()
{
  v1 = sub_228392DE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell____lazy_storage___closeButton;
  v10 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell____lazy_storage___closeButton];
  if (v10)
  {
    v11 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell____lazy_storage___closeButton];
  }

  else
  {
    sub_22817A958(0, &qword_27D827890, 0x277D750C8);
    *(swift_allocObject() + 16) = v0;
    v12 = v0;
    v13 = v0;
    v14 = sub_228392C90();
    sub_228392DA0();
    v15 = sub_228391FC0();
    v16 = [objc_opt_self() systemImageNamed_];

    sub_228392D90();
    v17 = [objc_opt_self() preferredFontForTextStyle_];
    v18 = objc_opt_self();
    v19 = [v18 configurationWithFont:v17 scale:3];

    v20 = [objc_opt_self() secondaryLabelColor];
    v21 = [v18 configurationWithHierarchicalColor_];

    v22 = [v19 configurationByApplyingConfiguration_];
    sub_228392CA0();
    sub_22817A958(0, &unk_280DDB940, 0x277D75220);
    (*(v2 + 16))(v6, v8, v1);
    v23 = v14;
    v24 = sub_228392DF0();
    [v24 setTranslatesAutoresizingMaskIntoConstraints_];

    (*(v2 + 8))(v8, v1);
    v25 = *&v13[v9];
    *&v13[v9] = v24;
    v11 = v24;

    v10 = 0;
  }

  v26 = v10;
  return v11;
}

uint64_t sub_2281938F0(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell_item;
  swift_beginAccess();
  sub_22817E6C8(a2 + v3, v7);
  if (!v8)
  {
    return sub_22819482C(v7);
  }

  sub_22817A700();
  result = swift_dynamicCast();
  if (result)
  {

    v6(v5);
  }

  return result;
}

uint64_t sub_2281939AC(uint64_t a1)
{
  v3 = sub_228391590();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v8);
  swift_endAccess();
  sub_22817E6C8(v1 + v8, v24);
  if (v25)
  {
    sub_22817A700();
    if (swift_dynamicCast())
    {
      v16 = v20;
      v17 = v23;
      v18 = v22;
      sub_2283914F0();
      sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
      v9 = *MEMORY[0x277D76918];
      sub_228392AD0();
      v10 = sub_228391450();
      sub_228391410();
      v10(&v19, 0);

      sub_228391540();
      v21 = v3;
      v22 = MEMORY[0x277D74C30];
      v11 = __swift_allocate_boxed_opaque_existential_1(&v19);
      (*(v4 + 16))(v11, v7, v3);
      MEMORY[0x22AAB6400](&v19);
      sub_228193F54();
      v12 = sub_228193594();
      [v12 setHidden_];

      sub_22819482C(a1);
      return (*(v4 + 8))(v7, v3);
    }

    v14 = a1;
  }

  else
  {
    sub_22819482C(a1);
    v14 = v24;
  }

  return sub_22819482C(v14);
}

void (*sub_228193C4C(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xE8uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 192) = v1;
  v6 = sub_228391590();
  v5[25] = v6;
  v7 = *(v6 - 8);
  v5[26] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell_item;
  v5[27] = v8;
  v5[28] = v9;
  swift_beginAccess();
  return sub_228193D3C;
}

void sub_228193D3C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_22817E6C8(*(v3 + 24) + *(v3 + 28), (v3 + 56));
    if (*(v3 + 10))
    {
      sub_22817A700();
      if (swift_dynamicCast())
      {
        v5 = *(v3 + 26);
        v4 = *(v3 + 27);
        v7 = *(v3 + 24);
        v6 = *(v3 + 25);
        v8 = *(v3 + 1);
        v14 = *v3;
        v15 = v3[16];
        v16 = *(v3 + 4);
        v17 = *(v3 + 6);
        sub_2283914F0();
        sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
        v9 = *MEMORY[0x277D76918];
        sub_228392AD0();
        v10 = sub_228391450();
        sub_228391410();
        v10(v3 + 136, 0);

        sub_228391540();
        v11 = MEMORY[0x277D74C30];
        *(v3 + 15) = v6;
        *(v3 + 16) = v11;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3 + 12);
        (*(v5 + 16))(boxed_opaque_existential_1, v4, v6);
        MEMORY[0x22AAB6400](v3 + 96);
        sub_228193F54();
        v13 = sub_228193594();
        [v13 setHidden_];

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      sub_22819482C((v3 + 56));
    }
  }

  free(*(v3 + 27));

  free(v3);
}

void sub_228193F54()
{
  v1 = [v0 subviews];
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v2 = sub_2283921A0();

  v3 = sub_228193594();
  v19 = v3;
  v18[2] = &v19;
  v4 = sub_228309FEC(sub_2281947C4, v18, v2);

  if ((v4 & 1) == 0)
  {
    v5 = [v0 contentView];
    v6 = OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell____lazy_storage___closeButton;
    [v5 addSubview_];

    v7 = objc_opt_self();
    sub_228180ED0();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_228397F20;
    v9 = [*&v0[v6] centerYAnchor];
    v10 = [v0 contentView];
    v11 = [v10 centerYAnchor];

    v12 = [v9 constraintEqualToAnchor_];
    *(v8 + 32) = v12;
    v13 = [*&v0[v6] trailingAnchor];
    v14 = [v0 contentView];
    v15 = [v14 trailingAnchor];

    v16 = [v13 constraintEqualToAnchor_];
    *(v8 + 40) = v16;
    sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
    v17 = sub_228392190();

    [v7 activateConstraints_];
  }
}

id sub_2281942FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2281943BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_228194404(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_228194464()
{
  result = qword_27D823DB8;
  if (!qword_27D823DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823DB8);
  }

  return result;
}

uint64_t sub_2281944B8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t (*sub_228194514(uint64_t **a1))()
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
  v2[4] = sub_228193C4C(v2);
  return sub_228194584;
}

uint64_t sub_228194588@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a1);
}

uint64_t (*sub_228194608(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_228193C4C(v3);
  return sub_228194890;
}

void sub_22819467C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_2281946C4()
{
  result = qword_27D823DC0;
  if (!qword_27D823DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823DC0);
  }

  return result;
}

unint64_t sub_228194718()
{
  result = qword_27D823DC8;
  if (!qword_27D823DC8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D823DC8);
  }

  return result;
}

uint64_t sub_228194760(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  return sub_228392C60() & 1;
}

uint64_t sub_2281947C4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  return sub_228392C60() & 1;
}

uint64_t sub_22819482C(uint64_t a1)
{
  sub_228181D50();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228194894(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2281C9DEC(0, v1, 0);
    v2 = v20;
    v4 = a1 + 32;
    do
    {
      sub_228180FB0(v4, v16);
      sub_22818217C(0, &qword_280DDCD60);
      sub_22818217C(0, &qword_27D827E00);
      swift_dynamicCast();
      v20 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2281C9DEC((v5 > 1), v6 + 1, 1);
      }

      v7 = v18;
      v8 = v19;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      v10 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v9);
      v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v13 + 16))(v12);
      sub_2283334D8(v6, v12, &v20, v7, v8);
      __swift_destroy_boxed_opaque_existential_0(v17);
      v2 = v20;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_228194A7C(uint64_t a1)
{
  v2 = type metadata accessor for MedicationSearchItem(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2281C9DEC(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_22819A488(v9, v6, type metadata accessor for MedicationSearchItem);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2281C9DEC((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_22819A4F0(&qword_27D823E88, type metadata accessor for MedicationSearchItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_22819A488(v6, boxed_opaque_existential_1, type metadata accessor for MedicationSearchItem);
      *(v8 + 16) = v12 + 1;
      sub_22816DFFC(&v15, v8 + 40 * v12 + 32);
      sub_22819A538(v6, type metadata accessor for MedicationSearchItem);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_228194C70(uint64_t a1)
{
  sub_228199F78();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2281C9DEC(0, v8, 0);
    v9 = v19;
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_22819A488(v10, v7, sub_228199F78);
      v19 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2281C9DEC((v12 > 1), v13 + 1, 1);
        v9 = v19;
      }

      v17 = v3;
      v18 = sub_22819A4F0(&qword_27D823E18, sub_228199F78);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
      sub_22819A488(v7, boxed_opaque_existential_1, sub_228199F78);
      *(v9 + 16) = v13 + 1;
      sub_22816DFFC(&v16, v9 + 40 * v13 + 32);
      sub_22819A538(v7, sub_228199F78);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_228194E64(uint64_t a1)
{
  v2 = type metadata accessor for ScheduleIntervalItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2281C9DB4(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_22819A488(v9, v6, type metadata accessor for ScheduleIntervalItem);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2281C9DB4((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_22819A4F0(&qword_27D823E78, type metadata accessor for ScheduleIntervalItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_22819A488(v6, boxed_opaque_existential_1, type metadata accessor for ScheduleIntervalItem);
      *(v8 + 16) = v12 + 1;
      sub_22816DFFC(&v15, v8 + 40 * v12 + 32);
      sub_22819A538(v6, type metadata accessor for ScheduleIntervalItem);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_2281950A0(uint64_t a1)
{
  v2 = type metadata accessor for MedicationSearchItem(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2281C9DB4(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_22819A488(v9, v6, type metadata accessor for MedicationSearchItem);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2281C9DB4((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_22819A4F0(&qword_27D823E90, type metadata accessor for MedicationSearchItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_22819A488(v6, boxed_opaque_existential_1, type metadata accessor for MedicationSearchItem);
      *(v8 + 16) = v12 + 1;
      sub_22816DFFC(&v15, v8 + 40 * v12 + 32);
      sub_22819A538(v6, type metadata accessor for MedicationSearchItem);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t _sSa19HealthMedicationsUIAA12LoggableDoseORszlE9lineItemsSayAA30DayScheduleLineItemDisplayable_pGvg_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v15 = MEMORY[0x277D84F90];
    sub_2281C9FC4(0, v1, 0);
    v2 = v15;
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      sub_22819A598(v5, v6, *v4);
      v15 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2281C9FC4((v8 > 1), v9 + 1, 1);
        v2 = v15;
      }

      v13 = &type metadata for LoggableDose;
      v14 = &protocol witness table for LoggableDose;
      *&v11 = v5;
      *(&v11 + 1) = v6;
      v12 = v7;
      *(v2 + 16) = v9 + 1;
      sub_22816DFFC(&v11, v2 + 40 * v9 + 32);
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2281953A0(uint64_t a1)
{
  v2 = type metadata accessor for MedicationsRecordDoseItem(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2281C9DEC(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_22819A488(v9, v6, type metadata accessor for MedicationsRecordDoseItem);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2281C9DEC((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_22819A4F0(&qword_27D823EF8, type metadata accessor for MedicationsRecordDoseItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_22819A488(v6, boxed_opaque_existential_1, type metadata accessor for MedicationsRecordDoseItem);
      *(v8 + 16) = v12 + 1;
      sub_22816DFFC(&v15, v8 + 40 * v12 + 32);
      sub_22819A538(v6, type metadata accessor for MedicationsRecordDoseItem);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_228195594(uint64_t a1)
{
  v2 = sub_228390170();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v22 = MEMORY[0x277D84F90];
    sub_2281C9DEC(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2281C9DEC((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = sub_22819A4F0(&qword_27D823AB0, MEMORY[0x277D11000]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
      v10(boxed_opaque_existential_1, v6, v2);
      v8 = v22;
      *(v22 + 16) = v14 + 1;
      sub_22816DFFC(&v19, v8 + 40 * v14 + 32);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_22819578C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_2281C9DEC(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_22819A1A8(v4, v11);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2281C9DEC((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for MedicationDoseLogMedicationItem;
      v10 = sub_22819A204();
      *&v8 = swift_allocObject();
      sub_22819A1A8(v11, v8 + 16);
      *(v2 + 16) = v6 + 1;
      sub_22816DFFC(&v8, v2 + 40 * v6 + 32);
      sub_22819A258(v11);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2281958B0(uint64_t a1)
{
  v2 = type metadata accessor for MedicationDoseRecordAllItem(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2281C9DEC(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_22819A488(v9, v6, type metadata accessor for MedicationDoseRecordAllItem);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2281C9DEC((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_22819A4F0(&qword_27D823E40, type metadata accessor for MedicationDoseRecordAllItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_22819A488(v6, boxed_opaque_existential_1, type metadata accessor for MedicationDoseRecordAllItem);
      *(v8 + 16) = v12 + 1;
      sub_22816DFFC(&v15, v8 + 40 * v12 + 32);
      sub_22819A538(v6, type metadata accessor for MedicationDoseRecordAllItem);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_228195AA4(uint64_t a1)
{
  v2 = type metadata accessor for MedicationLogDetailsUnitItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2281C9DEC(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_22819A488(v9, v6, type metadata accessor for MedicationLogDetailsUnitItem);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2281C9DEC((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_22819A4F0(&qword_27D8254B0, type metadata accessor for MedicationLogDetailsUnitItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_22819A488(v6, boxed_opaque_existential_1, type metadata accessor for MedicationLogDetailsUnitItem);
      *(v8 + 16) = v12 + 1;
      sub_22816DFFC(&v15, v8 + 40 * v12 + 32);
      sub_22819A538(v6, type metadata accessor for MedicationLogDetailsUnitItem);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_228195C98(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_2281CA0AC(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v13 = v2;
      v6 = *(v2 + 16);
      v7 = *(v2 + 24);

      if (v6 >= v7 >> 1)
      {
        sub_2281CA0AC((v7 > 1), v6 + 1, 1);
        v2 = v13;
      }

      sub_22819A174(0);
      v11 = v8;
      v12 = &protocol witness table for <A> [A];
      *&v10 = v5;
      *(v2 + 16) = v6 + 1;
      sub_22816DFFC(&v10, v2 + 40 * v6 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_228195DDC(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_2283930D0();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v22 = MEMORY[0x277D84F90];
  result = sub_2281C9DEC(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v22;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = MEMORY[0x22AAB6D80](v11, a1);
        v22 = v9;
        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_2281C9DEC((v13 > 1), v14 + 1, 1);
          v9 = v22;
        }

        ++v11;
        v20 = a2(0);
        v21 = sub_22819A4F0(a3, a4);
        *&v19 = v12;
        *(v9 + 16) = v14 + 1;
        sub_22816DFFC(&v19, v9 + 40 * v14 + 32);
      }

      while (v8 != v11);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v22 = v9;
        v18 = *(v9 + 16);
        v17 = *(v9 + 24);

        if (v18 >= v17 >> 1)
        {
          sub_2281C9DEC((v17 > 1), v18 + 1, 1);
          v9 = v22;
        }

        v20 = a2(0);
        v21 = sub_22819A4F0(a3, a4);
        *&v19 = v16;
        *(v9 + 16) = v18 + 1;
        sub_22816DFFC(&v19, v9 + 40 * v18 + 32);
        ++v15;
        --v8;
      }

      while (v8);
    }

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_228195FC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_2281CA194(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v13 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);

      if (v7 >= v6 >> 1)
      {
        sub_2281CA194((v6 > 1), v7 + 1, 1);
        v2 = v13;
      }

      sub_22819A5DC(0, &qword_27D823EC0, &type metadata for LoggableDose, MEMORY[0x277D83940]);
      v11 = v8;
      v12 = &protocol witness table for <A> [A];
      *&v10 = v5;
      *(v2 + 16) = v7 + 1;
      sub_22816DFFC(&v10, v2 + 40 * v7 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_2281960E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2283930D0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2281CA1CC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x22AAB6D80](i, a1);
        sub_22817A958(0, &unk_280DDBAA0, 0x277CCA898);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2281CA1CC((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_22819A2AC(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_22817A958(0, &unk_280DDBAA0, 0x277CCA898);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2281CA1CC((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_22819A2AC(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2281962E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v24 = MEMORY[0x277D84F90];
    sub_2281C9DEC(0, v1, 0);
    v2 = v24;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[2];
      v6 = v4[4];
      v21 = v4[3];
      v22 = v6;
      v23 = *(v4 + 10);
      v7 = v4[1];
      v18 = *v4;
      v19 = v7;
      v20 = v5;
      sub_22819A0C4(&v18, &v15);
      v24 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2281C9DEC((v8 > 1), v9 + 1, 1);
        v2 = v24;
      }

      v16 = &type metadata for ScheduleTypeOptionItem;
      v17 = sub_22819A120();
      v10 = swift_allocObject();
      *&v15 = v10;
      v11 = v21;
      v12 = v22;
      *(v10 + 48) = v20;
      *(v10 + 64) = v11;
      *(v10 + 80) = v12;
      *(v10 + 96) = v23;
      v13 = v19;
      *(v10 + 16) = v18;
      *(v10 + 32) = v13;
      *(v2 + 16) = v9 + 1;
      sub_22816DFFC(&v15, v2 + 40 * v9 + 32);
      v4 = (v4 + 88);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_22819643C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2283930D0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x277D84F90];
  result = sub_2281C9DB4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x22AAB6D80](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_2281C9DB4((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for InteractionMedicationItem();
        v15 = sub_22819A4F0(&qword_27D823E68, type metadata accessor for InteractionMedicationItem);
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_22816DFFC(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_2281C9DB4((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for InteractionMedicationItem();
        v15 = sub_22819A4F0(&qword_27D823E68, type metadata accessor for InteractionMedicationItem);
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_22816DFFC(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2281966EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_2281CA1CC(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2281CA1CC((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_22819A2AC(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_2281967EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2283930D0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v18 = MEMORY[0x277D84F90];
  result = sub_2281CA2FC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v18;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x22AAB6D80](v5, a1);
        v8 = *(v18 + 16);
        v7 = *(v18 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_2281CA2FC((v7 > 1), v8 + 1, 1);
        }

        ++v5;
        v9 = sub_22819A4F0(&qword_27D823DD8, type metadata accessor for InteractionSeverityDataSource);
        *(v18 + 16) = v8 + 1;
        v10 = v18 + 16 * v8;
        *(v10 + 32) = v6;
        *(v10 + 40) = v9;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      v12 = *(v18 + 16);
      v13 = 16 * v12;
      do
      {
        v14 = *v11;
        v15 = *(v18 + 24);

        if (v12 >= v15 >> 1)
        {
          sub_2281CA2FC((v15 > 1), v12 + 1, 1);
        }

        v16 = sub_22819A4F0(&qword_27D823DD8, type metadata accessor for InteractionSeverityDataSource);
        *(v18 + 16) = v12 + 1;
        v17 = v18 + v13;
        *(v17 + 32) = v14;
        *(v17 + 40) = v16;
        v13 += 16;
        ++v11;
        ++v12;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t LoggableDose.scheduleDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22838F440();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  if (*(v1 + 16))
  {
    v9 = *(v1 + 8);
    v10 = [*v1 scheduledDate];
    if (v10)
    {
      v11 = v10;
      sub_22838F3E0();

      return (*(v4 + 32))(a1, v7, v3);
    }

    else
    {
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_2283931D0();
      v21 = v18;
      v22 = v19;
      MEMORY[0x22AAB5C80](0xD000000000000018, 0x80000002283A81D0);
      v18 = v8;
      v19 = v9;
      v20 = 1;
      v14 = v8;
      v15 = v9;
      v16 = sub_228392040();
      MEMORY[0x22AAB5C80](v16);

      MEMORY[0x22AAB5C80](0xD000000000000036, 0x80000002283A81F0);
      result = sub_228393300();
      __break(1u);
    }
  }

  else
  {
    v13 = *v1;
    return sub_228390920();
  }

  return result;
}

double *LoggableDose.makeLoggingViewModel(index:)(uint64_t a1)
{
  v3 = sub_22838F440();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v41 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v41 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v17 = *v1;
  v16 = *(v1 + 8);
  v18 = *(v1 + 16);
  v19 = v16;
  if (v18)
  {
    v20 = v17;
    sub_22838F3F0();
    v21 = type metadata accessor for MedicationsDoseLogViewModel(0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    v24 = swift_allocObject();
    *(v24 + 2) = v19;
    *(v24 + 3) = v17;
    v24[4] = 0.0;
    v25 = v20;
    *&v26 = COERCE_DOUBLE(sub_2283928B0());
    v41 = a1;
    if ((v27 & 1) == 0 || (*&v26 = COERCE_DOUBLE(sub_2283928A0()), v28 = 1.0, (v29 & 1) == 0))
    {
      v28 = *&v26;
    }

    v24[5] = v28;
    v30 = [v25 logStatus];
    *(v24 + 6) = v30;
    v31 = [v25 logStatus];
    *(v24 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) = v31;
    if (qword_283B66B28 == v30 || qword_283B66B30 == v30)
    {
      v36 = [v25 startDate];
      sub_22838F3E0();
    }

    else
    {
      (*(v4 + 16))(v10, v13, v3);
    }

    v37 = *(v4 + 32);
    v37(v24 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate, v10, v3);
    if (qword_283B66B28 == v30 || qword_283B66B30 == v30)
    {
      v39 = [v25 startDate];

      v38 = v42;
      sub_22838F3E0();

      (*(v4 + 8))(v13, v3);
    }

    else
    {

      v38 = v42;
      v37(v42, v13, v3);
    }

    v37(v24 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate, v38, v3);
    a1 = v41;
  }

  else
  {

    sub_22838F3F0();
    v32 = type metadata accessor for MedicationsDoseLogViewModel(0);
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    v24 = swift_allocObject();
    *(v24 + 2) = v19;
    v24[3] = 0.0;
    *(v24 + 4) = v17;

    sub_2283908F0();
    v28 = v35;

    v24[5] = v28;
    *(v24 + 6) = 1;
    *(v24 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) = 1;
    (*(v4 + 16))(v24 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate, v15, v3);
    (*(v4 + 32))(v24 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate, v15, v3);
  }

  *(v24 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialDoseAmount) = v28;
  *(v24 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_index) = a1;
  return v24;
}

double *LoggableDose.makeLoggingViewModel(logDate:index:)(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v4 = sub_22838F440();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = MEMORY[0x28223BE20](&v42 - v12);
  v15 = &v42 - v14;
  v17 = *v2;
  v16 = *(v2 + 8);
  v18 = *(v5 + 16);
  if (*(v2 + 16))
  {
    v42 = *(v5 + 16);
    v43 = v13;
    v18(v13, a1, v4);
    v19 = type metadata accessor for MedicationsDoseLogViewModel(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    v22 = swift_allocObject();
    *(v22 + 2) = v16;
    *(v22 + 3) = v17;
    v22[4] = 0.0;
    v23 = v17;
    v24 = v16;
    *&v25 = COERCE_DOUBLE(sub_2283928B0());
    if ((v26 & 1) == 0 || (*&v25 = COERCE_DOUBLE(sub_2283928A0()), v27 = 1.0, (v28 & 1) == 0))
    {
      v27 = *&v25;
    }

    v22[5] = v27;
    v29 = [v23 logStatus];
    *(v22 + 6) = v29;
    v30 = [v23 logStatus];
    *(v22 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) = v30;
    if (qword_283B66B88 == v29 || qword_283B66B90 == v29)
    {
      v37 = [v23 startDate];
      sub_22838F3E0();
    }

    else
    {
      v42(v11, v43, v4);
    }

    v38 = *(v5 + 32);
    v38(v22 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate, v11, v4);
    if (qword_283B66B88 == v29 || qword_283B66B90 == v29)
    {
      v40 = [v23 startDate];

      v39 = v44;
      sub_22838F3E0();

      (*(v5 + 8))(v43, v4);
    }

    else
    {

      v39 = v44;
      v38(v44, v43, v4);
    }

    v38(v22 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate, v39, v4);
  }

  else
  {
    v31 = *(v5 + 16);
    v18(&v42 - v14, a1, v4);
    v32 = type metadata accessor for MedicationsDoseLogViewModel(0);
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    v22 = swift_allocObject();
    *(v22 + 2) = v16;
    v22[3] = 0.0;
    *(v22 + 4) = v17;
    swift_retain_n();
    v35 = v16;
    sub_2283908F0();
    v27 = v36;

    v22[5] = v27;
    *(v22 + 6) = 1;
    *(v22 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) = 1;
    v31(v22 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate, v15, v4);
    (*(v5 + 32))(v22 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate, v15, v4);
  }

  *(v22 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialDoseAmount) = v27;
  *(v22 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_index) = v45;
  return v22;
}

uint64_t LoggableDose.name.getter()
{
  v2 = *(v0 + 8);
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  return sub_228390F20();
}

void LoggableDose.medmojiConfiguration.getter()
{
  v1 = *(v0 + 8);
  _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
}

id LoggableDose.isLastScheduledDose.getter()
{
  if (*(v0 + 16))
  {
    return [*v0 isLastScheduledDose];
  }

  v2 = *v0;
  return (sub_228390910() & 1);
}

uint64_t sub_2281974A4()
{
  v2 = *(v0 + 8);
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  return sub_228390F20();
}

void sub_2281974F8()
{
  v1 = *(v0 + 8);
  _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
}

id sub_22819754C()
{
  if (*(v0 + 16))
  {
    return [*v0 isLastScheduledDose];
  }

  v2 = *v0;
  return (sub_228390910() & 1);
}

uint64_t Array<A>.date.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    LoggableDose.scheduleDate.getter(a2);
    v3 = sub_22838F440();
    v4 = *(*(v3 - 8) + 56);
    v5 = v3;
    v6 = a2;
    v7 = 0;
  }

  else
  {
    v8 = sub_22838F440();
    v4 = *(*(v8 - 8) + 56);
    v5 = v8;
    v6 = a2;
    v7 = 1;
  }

  return v4(v6, v7, 1, v5);
}

uint64_t Array<A>.time.getter(uint64_t a1)
{
  v2 = sub_22838F250();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22838F270();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22838F440();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v17 = *(a1 + 48);
  v20 = *(a1 + 32);
  v21 = v17;
  LoggableDose.scheduleDate.getter(v16);
  sub_22838F260();
  sub_22838F240();
  v18 = sub_22838F400();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
  return v18;
}

uint64_t Array<A>.timeText.getter(unint64_t a1)
{
  v19 = sub_22838F250();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22838F270();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22838F440();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Array<A>.logTime.getter(a1, v15);
  sub_22838F260();
  sub_22838F240();
  v16 = sub_22838F400();
  (*(v2 + 8))(v5, v19);
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
  return v16;
}

uint64_t Array<A>.logTime.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22838F440();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228199E08(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  if (a1 >> 62)
  {
    result = sub_2283930D0();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    (*(v5 + 56))(v12, 1, 1, v4);
    sub_22838F430();
    result = (*(v5 + 48))(v12, 1, v4);
    if (result != 1)
    {
      return sub_2281982F0(v12);
    }

    return result;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x22AAB6D80](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(a1 + 32);

LABEL_6:
    v15 = sub_228390A10();

    v16 = [v15 startDate];

    sub_22838F3E0();
    v17 = *(v5 + 32);
    v17(v12, v8, v4);
    (*(v5 + 56))(v12, 0, 1, v4);
    return (v17)(a2, v12, v4);
  }

  __break(1u);
  return result;
}

void *Array<A>.lineItems.getter(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v3 = 0;
    v30 = v1 & 0xFFFFFFFFFFFFFF8;
    v31 = v1 & 0xC000000000000001;
    v4 = MEMORY[0x277D84F90];
    v28 = i;
    v29 = v1;
    while (v31)
    {
      MEMORY[0x22AAB6D80](v3, v1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v7 = sub_228390A20();
      if (v7)
      {
        v8 = v7;
        v37[0] = v7;
        sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
        v9 = sub_228390F20();
        v11 = v10;
        v12 = sub_228390A10();
        v13 = [v12 logStatus];

        v14 = v13 == 5;
        v15 = sub_228390A10();
        LOBYTE(v13) = [v15 isLastScheduledDose];

        v35 = &type metadata for MedicationsDayHistoryLineItem;
        v36 = &off_283B690A8;

        *&v32 = v9;
        *(&v32 + 1) = v11;
        v33 = v14;
        v34 = v13;
        sub_22816DFFC(&v32, v37);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v4 = sub_228198B28(0, v4[2] + 1, 1, v4, &qword_27D823F00, &qword_27D823F08);
          v40 = v4;
        }

        v18 = v4[2];
        v17 = v4[3];
        if (v18 >= v17 >> 1)
        {
          v4 = sub_228198B28((v17 > 1), v18 + 1, 1, v4, &qword_27D823F00, &qword_27D823F08);
          v40 = v4;
        }

        v19 = v38;
        v20 = v39;
        v21 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
        v22 = *(*(v19 - 8) + 64);
        MEMORY[0x28223BE20](v21);
        v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v25 + 16))(v24);
        sub_228199BA4(v18, v24, &v40, v19, v20);
        __swift_destroy_boxed_opaque_existential_0(v37);
        i = v28;
        v1 = v29;
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *(v30 + 16))
    {
      goto LABEL_18;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2281980B0()
{
  v18 = sub_22838F250();
  v1 = *(v18 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22838F270();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22838F440();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Array<A>.logTime.getter(*v0, v14);
  sub_22838F260();
  sub_22838F240();
  v15 = sub_22838F400();
  (*(v1 + 8))(v4, v18);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  return v15;
}

uint64_t sub_2281982F0(uint64_t a1)
{
  sub_228199E08(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_228198390(char *result, int64_t a2, char a3, char *a4)
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
    sub_22819A5DC(0, &qword_280DDB8B8, &type metadata for MedicationCellItem, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_22819851C(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_228199E08(0, a5, a6, MEMORY[0x277D84560]);
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

char *sub_228198748(char *result, int64_t a2, char a3, char *a4)
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
    sub_22819A5DC(0, &qword_27D823EE0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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

char *sub_22819886C(char *result, int64_t a2, char a3, char *a4)
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
    sub_22819A5DC(0, &qword_27D823CC0, &type metadata for SpecificationStep, MEMORY[0x277D84560]);
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

char *sub_228198978(char *result, int64_t a2, char a3, char *a4)
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
    sub_228199E08(0, &qword_27D823E20, sub_22819A00C, MEMORY[0x277D84560]);
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

void *sub_228198B28(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_22819A064(0, a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[5 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22818217C(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_228198C84(void *result, int64_t a2, char a3, void *a4)
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
    sub_22819A064(0, &qword_27D827750, &qword_27D8238E8);
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
    sub_22818217C(0, &qword_27D8238E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_228198DD0(void *result, int64_t a2, char a3, void *a4)
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
    sub_228199E08(0, &qword_280DDB878, type metadata accessor for UIContentSizeCategory, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for UIContentSizeCategory(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228198F1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_22819A5DC(0, &qword_27D823EE8, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_228199094(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, void (*a7)(uint64_t))
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (!v14)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22819A3CC(0, a5, a6, a7);
  sub_22819A424(0, a6, a7);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v18);
  if (!v16)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v17 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_29;
  }

  v18[2] = v13;
  v18[3] = 2 * ((result - v17) / v16);
LABEL_19:
  sub_22819A424(0, a6, a7);
  v21 = *(v20 - 8);
  if (v10)
  {
    if (v18 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v18 + v22 >= a4 + v22 + *(v21 + 72) * v13))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v18 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v18;
}

char *sub_2281992E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_22819A5DC(0, &qword_280DDB888, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_228199404(char *result, int64_t a2, char a3, char *a4)
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
    sub_22819A5DC(0, &qword_27D823E98, &type metadata for ScheduledDoseIdentifier, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22819953C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_22819A5DC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_228199670(void *result, int64_t a2, char a3, void *a4)
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
    sub_228199E08(0, &qword_27D823EA8, sub_22819A174, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22819A174(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2281997DC(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_228199E08(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_2281998F0(void *result, int64_t a2, char a3, void *a4)
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
    sub_22819A2BC();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22819A5DC(0, &qword_27D823EC0, &type metadata for LoggableDose, MEMORY[0x277D83940]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228199A30(char *result, int64_t a2, char a3, char *a4)
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
    sub_22819A5DC(0, &qword_27D823E48, &type metadata for LogDetailsRow, MEMORY[0x277D84560]);
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

uint64_t sub_228199BA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_22816DFFC(&v12, v10 + 40 * a1 + 32);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CyclePhase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CyclePhase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_228199E08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_228199E70()
{
  if (!qword_27D823DF0)
  {
    sub_228390E20();
    sub_228199E08(255, &qword_27D823DF8, sub_228199F10, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D823DF0);
    }
  }
}

void sub_228199F10()
{
  if (!qword_27D823E00)
  {
    sub_22817A958(255, &qword_280DDB990, 0x277D75348);
    v0 = sub_228391E40();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823E00);
    }
  }
}

void sub_228199F78()
{
  if (!qword_27D823E08)
  {
    sub_2283908E0();
    sub_22819A4F0(&qword_27D823E10, MEMORY[0x277D11618]);
    v0 = type metadata accessor for MedmojiConfigItem();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823E08);
    }
  }
}

void sub_22819A00C()
{
  if (!qword_27D823E28)
  {
    v0 = sub_228392550();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823E28);
    }
  }
}

void sub_22819A064(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_22818217C(255, a3);
    v4 = sub_228393430();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22819A120()
{
  result = qword_27D823E70;
  if (!qword_27D823E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823E70);
  }

  return result;
}

unint64_t sub_22819A204()
{
  result = qword_27D823EB8;
  if (!qword_27D823EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823EB8);
  }

  return result;
}

_OWORD *sub_22819A2AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_22819A2BC()
{
  if (!qword_27D823EC8)
  {
    sub_22819A5DC(255, &qword_27D823EC0, &type metadata for LoggableDose, MEMORY[0x277D83940]);
    v0 = sub_228393430();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823EC8);
    }
  }
}

void sub_22819A338()
{
  if (!qword_280DDCDF0)
  {
    sub_22838EF60();
    sub_22819A5DC(255, &unk_280DDBB70, MEMORY[0x277D839F8], MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DDCDF0);
    }
  }
}

void sub_22819A3CC(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_22819A424(255, a3, a4);
    v5 = sub_228393430();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22819A424(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_22819A488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22819A4F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22819A538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_22819A598(void *a1, void *a2, char a3)
{
  if (a3)
  {
    v3 = a1;
  }

  else
  {
  }

  return a2;
}

void sub_22819A5DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_22819A630()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  return v1;
}

id MedicationScheduleObserver.__allocating_init(healthStore:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_22819C7AC(a1);

  return v4;
}

id MedicationScheduleObserver.init(healthStore:)(void *a1)
{
  v2 = sub_22819C7AC(a1);

  return v2;
}

id MedicationScheduleObserver.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_scheduleControl] unregisterObserver_];
  if (*&v0[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_scheduleItemObserverTask])
  {
    sub_228192C1C();

    sub_228392330();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationScheduleObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22819A900(uint64_t a1)
{
  v2 = v1;
  v4 = sub_228391DC0();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_228391DF0();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_queue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = sub_22819D208;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_2;
  v14 = _Block_copy(aBlock);

  sub_228391DE0();
  v20 = MEMORY[0x277D84F90];
  sub_22819D970(&qword_280DDCF10, MEMORY[0x277D85198]);
  v15 = MEMORY[0x277D85198];
  sub_22819CC64(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_22819D9B8(&qword_280DDCEF0, &qword_280DDCF00, v15);
  sub_228393030();
  MEMORY[0x22AAB6340](0, v11, v7, v14);
  _Block_release(v14);
  (*(v19 + 8))(v7, v4);
  (*(v8 + 8))(v11, v18);
}

uint64_t sub_22819AC28()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_228391970();
  }

  return result;
}

uint64_t sub_22819AD28(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  sub_22819CC64(0, &qword_27D823F38, sub_22819CDF8, MEMORY[0x277D85780]);
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  sub_22819CC64(0, &unk_280DDCF40, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22819AE78, 0, 0);
}

uint64_t sub_22819AE78()
{
  v1 = v0[7];
  if (*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_scheduleItemObserverTask))
  {
    sub_228192C1C();

    sub_228392330();

    v1 = v0[7];
  }

  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[5];
  v7 = v0[6];
  v8 = sub_22838EF60();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v2, v7, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_dateInterval;
  swift_beginAccess();
  sub_22819CE60(v2, v1 + v10);
  swift_endAccess();
  v11 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_scheduleControl);
  [v11 unregisterObserver_];
  [v11 registerObserver:v1 queue:*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_queue)];
  *(swift_task_alloc() + 16) = v1;
  sub_22819CDF8();
  (*(v5 + 104))(v3, *MEMORY[0x277D85778], v4);
  sub_228392320();

  v12 = v0[1];

  return v12();
}

uint64_t sub_22819B0B8(uint64_t a1, uint64_t a2)
{
  sub_22819CC64(0, &qword_27D823FE0, sub_22819CDF8, MEMORY[0x277D85788]);
  v33 = v4;
  v38 = *(v4 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v37 = &v31 - v5;
  sub_22819CC64(0, &qword_27D823FE8, sub_22819CDF8, MEMORY[0x277CBCEC0]);
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  sub_22819CC64(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v31 - v13;
  v34 = &v31 - v13;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = a1;
  sub_2283922E0();
  v16 = sub_2283922D0();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = a2;
  swift_beginAccess();
  sub_22819CC64(0, &unk_27D823FD0, sub_22819CDF8, MEMORY[0x277CBCED0]);
  sub_228391930();
  swift_endAccess();
  v17 = v35 + 32;
  v18 = *(v35 + 32);
  v19 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v36;
  v18(v19, v10, v36);
  v22 = v37;
  v21 = v38;
  v23 = v15;
  v24 = v33;
  (*(v38 + 16))(v37, v23, v33);
  v25 = (*(v17 + 48) + 40) & ~*(v17 + 48);
  v26 = (v7 + *(v21 + 80) + v25) & ~*(v21 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 4) = v32;
  v18(&v27[v25], v19, v20);
  (*(v21 + 32))(&v27[v26], v22, v24);
  v28 = sub_22819BCDC(0, 0, v34, &unk_228398C10, v27);
  v29 = *(v31 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_scheduleItemObserverTask);
  *(v31 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_scheduleItemObserverTask) = v28;
}

void sub_22819B4FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_scheduleItemObserverTask);
    v2 = Strong;

    if (v1)
    {
      sub_228192C1C();
      sub_228392330();
    }
  }
}

uint64_t sub_22819B594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  sub_22819CC64(0, &qword_27D823FF0, sub_22819CDF8, MEMORY[0x277D85760]);
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();
  sub_22819D46C(0, &qword_27D823FF8, MEMORY[0x277CBCDD8]);
  v6[14] = v10;
  v11 = *(v10 - 8);
  v6[15] = v11;
  v12 = *(v11 + 64) + 15;
  v6[16] = swift_task_alloc();
  sub_22819D46C(0, &qword_27D824008, MEMORY[0x277CBCDC8]);
  v6[17] = v13;
  v14 = *(v13 - 8);
  v6[18] = v14;
  v15 = *(v14 + 64) + 15;
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22819B778, 0, 0);
}

uint64_t sub_22819B778()
{
  if (sub_228392340())
  {
    v1 = v0[19];
    v2 = v0[16];
    v3 = v0[13];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[8];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      sub_22819BFD0();
    }

    v9 = v0[19];
    v11 = v0[15];
    v10 = v0[16];
    v12 = v0[14];
    v13 = v0[9];
    sub_22819CC64(0, &qword_27D823FE8, sub_22819CDF8, MEMORY[0x277CBCEC0]);
    v15 = v14;
    v16 = sub_22819D3E4();
    MEMORY[0x22AAB5680](v15, v16);
    sub_228391830();
    (*(v11 + 8))(v10, v12);
    v17 = sub_22819D508();
    v18 = *(MEMORY[0x277D856D0] + 4);
    v19 = swift_task_alloc();
    v0[20] = v19;
    *v19 = v0;
    v19[1] = sub_22819B950;
    v20 = v0[19];
    v21 = v0[17];

    return MEMORY[0x282200308](v0 + 5, v21, v17);
  }
}

uint64_t sub_22819B950()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_22819BC5C;
  }

  else
  {
    v3 = sub_22819BA64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22819BA88()
{
  v1 = v0[22];
  if (!v1)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);
    goto LABEL_5;
  }

  if (sub_228392340())
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

LABEL_5:
    v2 = v0[19];
    v3 = v0[16];
    v4 = v0[13];

    v5 = v0[1];

    return v5();
  }

  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v0[7] = v1;
  sub_22819CC64(0, &qword_27D823FE0, sub_22819CDF8, MEMORY[0x277D85788]);
  sub_2283922F0();
  (*(v8 + 8))(v7, v10);
  v11 = sub_22819D508();
  v12 = *(MEMORY[0x277D856D0] + 4);
  v13 = swift_task_alloc();
  v0[20] = v13;
  *v13 = v0;
  v13[1] = sub_22819B950;
  v14 = v0[19];
  v15 = v0[17];

  return MEMORY[0x282200308](v0 + 5, v15, v11);
}

uint64_t sub_22819BC5C()
{
  *(v0 + 48) = *(v0 + 168);
  sub_228192C1C();
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_22819BCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x277D85720];
  sub_22819CC64(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v24 - v11;
  sub_22819D57C(a3, v24 - v11, &qword_27D827C30, v8);
  v13 = sub_2283922D0();
  v14 = *(v13 - 8);
  LODWORD(v8) = (*(v14 + 48))(v12, 1, v13);

  if (v8 == 1)
  {
    sub_22819D5FC(v12, &qword_27D827C30, MEMORY[0x277D85720]);
  }

  else
  {
    sub_2283922C0();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_228392250();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_228392060() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_22819D5FC(a3, &qword_27D827C30, MEMORY[0x277D85720]);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22819D5FC(a3, &qword_27D827C30, MEMORY[0x277D85720]);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_22819BFF0(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_22819CC64(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v30 = &v26 - v6;
  v7 = MEMORY[0x277CC88A8];
  sub_22819CC64(0, &unk_280DDCF40, MEMORY[0x277CC88A8], v3);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = sub_22838EF60();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  v19 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_dateInterval;
  swift_beginAccess();
  sub_22819D57C(v2 + v19, v11, &unk_280DDCF40, v7);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_22819D5FC(v11, &unk_280DDCF40, MEMORY[0x277CC88A8]);
  }

  v27 = *(v13 + 32);
  v27(v18, v11, v12);
  v21 = sub_2283922D0();
  (*(*(v21 - 8) + 56))(v30, 1, 1, v21);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = *(v2 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_scheduleItemDataSource);
  (*(v13 + 16))(v16, v18, v12);
  v24 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = v23;
  v27(&v25[v24], v16, v12);
  *&v25[(v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8] = v22;

  sub_22819BCDC(0, 0, v30, v29, v25);

  return (*(v13 + 8))(v18, v12);
}

uint64_t sub_22819C370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a6;
  v8 = *(MEMORY[0x277D11708] + 4);
  v9 = swift_task_alloc();
  *(v6 + 48) = v9;
  *v9 = v6;
  v9[1] = sub_22819C414;

  return MEMORY[0x28216A9D8](a5);
}

uint64_t sub_22819C414(uint64_t a1)
{
  v3 = *(*v2 + 48);
  v4 = *v2;
  *(v4 + 56) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22819C548, 0, 0);
  }
}

uint64_t sub_22819C548()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_22819A900(v0[7]);
  }

  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

id MedicationScheduleObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_22819C674@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MedicationScheduleObserver();
  result = sub_228391840();
  *a1 = result;
  return result;
}

uint64_t sub_22819C6B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  *a2 = v5;
  return result;
}

uint64_t sub_22819C734(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_228391970();
}

id sub_22819C7AC(void *a1)
{
  v2 = v1;
  v36 = a1;
  sub_22819CC64(0, &unk_27D823FD0, sub_22819CDF8, MEMORY[0x277CBCED0]);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v33 = v30 - v5;
  v32 = sub_228392780();
  v6 = *(v32 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v32);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_228392720();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = sub_228391DF0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v31 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_queue;
  v14 = sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v30[1] = "rverTask";
  v30[2] = v14;
  sub_228391DE0();
  v38 = MEMORY[0x277D84F90];
  sub_22819D970(&qword_27D824020, MEMORY[0x277D85230]);
  v15 = MEMORY[0x277D85230];
  sub_22819CC64(0, &qword_27D824028, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_22819D9B8(&unk_27D824030, &qword_27D824028, v15);
  sub_228393030();
  (*(v6 + 104))(v9, *MEMORY[0x277D85260], v32);
  *&v1[v31] = sub_2283927B0();
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_dateInterval;
  v17 = sub_22838EF60();
  (*(*(v17 - 8) + 56))(&v2[v16], 1, 1, v17);
  *&v2[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_scheduleItemObserverTask] = 0;
  v18 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver__scheduleItems;
  v38 = MEMORY[0x277D84F90];
  sub_22819CDF8();
  v19 = v33;
  sub_228391920();
  (*(v34 + 32))(&v2[v18], v19, v35);
  v20 = v36;
  *&v2[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_healthStore] = v36;
  v21 = objc_allocWithZone(MEMORY[0x277D11578]);
  v22 = v20;
  v23 = [v21 initWithHealthStore_];
  *&v2[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_scheduleControl] = v23;
  v24 = sub_228390E50();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = v22;
  *&v2[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_scheduleItemDataSource] = sub_228390E40();
  v28 = type metadata accessor for MedicationScheduleObserver();
  v37.receiver = v2;
  v37.super_class = v28;
  return objc_msgSendSuper2(&v37, sel_init);
}

uint64_t type metadata accessor for MedicationScheduleObserver()
{
  result = qword_280DDC300;
  if (!qword_280DDC300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22819CC64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22819CCC8(uint64_t a1)
{
  v4 = *(sub_22838EF60() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22819DA1C;

  return sub_22819C370(a1, v6, v7, v8, v1 + v5, v9);
}

void sub_22819CDF8()
{
  if (!qword_27D823F40)
  {
    sub_22817A958(255, &qword_27D823F48, 0x277D11588);
    v0 = sub_228392240();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823F40);
    }
  }
}

uint64_t sub_22819CE60(uint64_t a1, uint64_t a2)
{
  sub_22819CC64(0, &unk_280DDCF40, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22819CF10()
{
  sub_22819CC64(319, &unk_280DDCF40, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22819CC64(319, &unk_27D823FD0, sub_22819CDF8, MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of MedicationScheduleObserver.observeChanges(in:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x100);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22819DA1C;

  return v10(a1, a2);
}

uint64_t sub_22819D208()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22819AC28();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22819D230(uint64_t a1)
{
  v3 = v2;
  sub_22819CC64(0, &qword_27D823FE8, sub_22819CDF8, MEMORY[0x277CBCEC0]);
  v6 = (*(*(v5 - 8) + 80) + 40) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  sub_22819CC64(0, &qword_27D823FE0, sub_22819CDF8, MEMORY[0x277D85788]);
  v9 = (v6 + v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22819DA1C;

  return sub_22819B594(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

unint64_t sub_22819D3E4()
{
  result = qword_27D824000;
  if (!qword_27D824000)
  {
    sub_22819CC64(255, &qword_27D823FE8, sub_22819CDF8, MEMORY[0x277CBCEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824000);
  }

  return result;
}

void sub_22819D46C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_22819CC64(255, &qword_27D823FE8, sub_22819CDF8, MEMORY[0x277CBCEC0]);
    v7 = v6;
    v8 = sub_22819D3E4();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_22819D508()
{
  result = qword_27D824010;
  if (!qword_27D824010)
  {
    sub_22819D46C(255, &qword_27D824008, MEMORY[0x277CBCDC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824010);
  }

  return result;
}

uint64_t sub_22819D57C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22819CC64(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22819D5FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22819CC64(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_2Tm()
{
  v1 = sub_22838EF60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22819D74C(uint64_t a1)
{
  v4 = *(sub_22838EF60() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22819D87C;

  return sub_22819C370(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_22819D87C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22819D970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22819D9B8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_22819CC64(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for ManualNameStepViewController()
{
  result = qword_27D824040;
  if (!qword_27D824040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22819DAAC()
{
  sub_22819DEA8();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(*(v0 + qword_27D824D88) + 24);
  sub_22819DF44();
  sub_22819DFAC(&qword_27D824058, sub_22819DF44);

  sub_2283919A0();

  sub_22819DFAC(&qword_27D824060, sub_22819DEA8);
  v7 = sub_228391990();
  (*(v3 + 8))(v6, v2);
  return v7;
}

BOOL sub_22819DC64(uint64_t a1, uint64_t a2)
{
  v4 = sub_22838EEE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  v14[0] = a1;
  v14[1] = a2;

  sub_22838EED0();
  sub_22819DFF4();
  v9 = sub_228392F70();
  v11 = v10;
  (*(v5 + 8))(v8, v4);

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  return v12 != 0;
}

BOOL sub_22819DD9C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22819DC64(*a1, a1[1]);
  *a2 = result;
  return result;
}

id sub_22819DE68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManualNameStepViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22819DEA8()
{
  if (!qword_27D824050)
  {
    sub_22819DF44();
    sub_22819DFAC(&qword_27D824058, sub_22819DF44);
    v0 = sub_2283916D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824050);
    }
  }
}

void sub_22819DF44()
{
  if (!qword_27D8277D0)
  {
    sub_228182AD4();
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8277D0);
    }
  }
}

uint64_t sub_22819DFAC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22819DFF4()
{
  result = qword_280DDBBC0;
  if (!qword_280DDBBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDBBC0);
  }

  return result;
}

BOOL == infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = [v5 identifier];

  v7 = [v6 rawIdentifier];
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v8);
  v10 = (*(v9 + 8))(v8, v9);
  v11 = [v10 identifier];

  v12 = [v11 rawIdentifier];
  return v7 == v12;
}

uint64_t InteractionResultDetailDataProvider.stackedMedmojiDisplayable.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 8));

  return sub_22816DFFC(a1, v1 + 8);
}

uint64_t InteractionResultDetailDataProvider.firstItemName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t InteractionResultDetailDataProvider.firstItemName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t InteractionResultDetailDataProvider.firstItemDetailsProviding.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 64));

  return sub_22816DFFC(a1, v1 + 64);
}

uint64_t InteractionResultDetailDataProvider.firstItemIngredients.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t InteractionResultDetailDataProvider.secondItemName.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t InteractionResultDetailDataProvider.secondItemName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t InteractionResultDetailDataProvider.secondItemDetailsProviding.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 128));

  return sub_22816DFFC(a1, v1 + 128);
}

uint64_t InteractionResultDetailDataProvider.secondItemIngredients.setter(uint64_t a1)
{
  v3 = *(v1 + 168);

  *(v1 + 168) = a1;
  return result;
}

uint64_t InteractionResultDetailDataProvider.education.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t InteractionResultDetailDataProvider.education.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 184);

  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return result;
}

uint64_t InteractionResultDetailDataProvider.attributions.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return v1;
}

uint64_t InteractionResultDetailDataProvider.attributions.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 200);

  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return result;
}

uint64_t InteractionResultDetailDataProvider.copySortingItemsByName()@<X0>(void *a1@<X8>)
{
  v4 = v1[6];
  v3 = v1[7];
  v6 = v1[14];
  v5 = v1[15];
  v7 = v6 == v4 && v5 == v3;
  if (v7 || (v8 = v1[14], v9 = v1[15], v10 = v1[6], v11 = v1[7], (sub_228393460() & 1) == 0))
  {

    return sub_22819E748(v1, a1);
  }

  else
  {
    v12 = *v1;
    v13 = v1[4];
    v14 = v1[5];
    __swift_project_boxed_opaque_existential_0(v1 + 1, v13);
    v21 = v14[5];
    v22 = v12;
    v15 = v1;
    v21(v13, v14);
    sub_228180FB0((v1 + 16), (a1 + 8));
    sub_228180FB0((v1 + 8), (a1 + 16));
    v16 = v1[22];
    v17 = v1[23];
    v19 = v15[24];
    v18 = v15[25];
    *a1 = v22;
    a1[6] = v6;
    a1[7] = v5;
    a1[13] = 0;
    a1[14] = v4;
    a1[15] = v3;
    a1[21] = 0;
    a1[22] = v16;
    a1[23] = v17;
    a1[24] = v19;
    a1[25] = v18;
  }
}

uint64_t sub_22819E7A0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_22819E7F8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t sub_22819E850()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t sub_22819E880()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return v1;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_22819E9B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_22819E9FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *sub_22819EA80()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  v2 = v0[9];

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  v3 = v0[15];

  v4 = v0[17];

  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  v5 = v0[23];

  return v0;
}

uint64_t sub_22819EAD8()
{
  sub_22819EA80();

  return swift_deallocClassInstance();
}

uint64_t sub_22819EB58()
{
  v1 = sub_22838F4A0();
  v55 = *(v1 - 8);
  v56 = v1;
  v2 = *(v55 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22819A064(0, &qword_27D827750, &qword_27D8238E8);
  v5 = swift_allocObject();
  v54 = xmmword_228397F40;
  v57 = v5;
  *(v5 + 16) = xmmword_228397F40;
  v6 = v0[2];
  sub_228180FB0((v0 + 3), v68);
  v7 = v0[8];
  v8 = v0[9];
  sub_228180FB0((v0 + 10), v67);
  v9 = v0[15];
  v10 = v0[16];
  v11 = v0[17];
  sub_228180FB0((v0 + 18), v66);
  v12 = v0[23];
  v13 = type metadata accessor for InteractionDetailDataSource();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  *(v16 + qword_27D828168) = v6;
  sub_228180FB0(v68, v16 + qword_27D828170);
  v17 = (v16 + qword_27D828178);
  v53 = v7;
  *v17 = v7;
  v17[1] = v8;
  v58 = v8;
  sub_228180FB0(v67, v16 + qword_27D828180);
  *(v16 + qword_27D828188) = v9;
  v18 = (v16 + qword_27D828190);
  *v18 = v10;
  v18[1] = v11;
  sub_228180FB0(v66, v16 + qword_27D828198);
  *(v16 + qword_27D8281A0) = v12;
  swift_beginAccess();
  v19 = *(v6 + 16);
  if (!(v19 >> 62))
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v19 < 0)
  {
    v49 = *(v6 + 16);
  }

  result = sub_2283930D0();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_3:
  v52 = v16;
  if ((v19 & 0xC000000000000001) != 0)
  {
LABEL_18:
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v22 = MEMORY[0x22AAB6D80](0, v19);

LABEL_6:
    v51 = v4;
    v23 = [v22 educationContent];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 primarySection];

      if (v25)
      {
        v26 = [v25 attributions];

        if (v26)
        {
          sub_2283921A0();

          v25 = sub_2283921D0();
          v26 = v27;
        }

        else
        {
          v25 = 0;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = 0;
LABEL_12:
    sub_228180FB0(v68, v63);
    sub_228180FB0(v67, v64);
    sub_228180FB0(v66, v65);
    v28 = sub_22823D160();
    v62 = v22;
    v63[5] = v53;
    v63[6] = v58;
    v64[5] = v9;
    v64[6] = v10;
    v64[7] = v11;
    v65[5] = v12;
    v65[6] = v28;
    v65[7] = v29;
    v65[8] = v25;
    v65[9] = v26;
    v60 = &type metadata for InteractionResultDetailDataProvider;
    v61 = &protocol witness table for InteractionResultDetailDataProvider;
    *&v59 = swift_allocObject();
    sub_22819E748(&v62, v59 + 16);
    sub_22819F29C();
    v31 = v30;
    v32 = *(v30 + 48);
    v33 = *(v30 + 52);
    v34 = swift_allocObject();
    v35 = v22;
    sub_22838F490();
    v36 = (v34 + qword_27D828D58);
    type metadata accessor for InteractionResultDetailCell();
    sub_22819F408(&qword_27D824078, type metadata accessor for InteractionResultDetailCell);
    v37 = sub_22838FBB0();
    v39 = v38;

    sub_22819F35C(&v62);
    *v36 = v37;
    v36[1] = v39;
    sub_22816DFFC(&v59, v34 + *(*v34 + 120));
    v58 = sub_22834AA74(v6);
    sub_22819F3B0();
    v40 = *(sub_22838FEF0() - 8);
    v53 = *(v40 + 72);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_228397F30;
    sub_22819A064(0, &qword_27D823918, &qword_27D827E00);
    v42 = swift_allocObject();
    *(v42 + 16) = v54;
    *(v42 + 56) = v31;
    *(v42 + 64) = sub_22819F408(&qword_27D824080, sub_22819F29C);
    *(v42 + 32) = v34;

    v43 = v51;
    sub_22838F490();
    sub_22838F450();
    v44 = v56;
    v45 = *(v55 + 8);
    v45(v43, v56);
    sub_22838FED0();
    sub_228194894(v58);

    sub_22838F490();
    sub_22838F450();
    v45(v43, v44);
    sub_22838FED0();
    v46 = sub_22838F920();

    __swift_destroy_boxed_opaque_existential_0(v66);
    __swift_destroy_boxed_opaque_existential_0(v67);
    __swift_destroy_boxed_opaque_existential_0(v68);
    v47 = sub_22819F408(&qword_27D824088, type metadata accessor for InteractionDetailDataSource);
    v48 = v57;
    *(v57 + 32) = v46;
    *(v48 + 40) = v47;
    return v48;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v19 + 32);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v22 = v21;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_22819F29C()
{
  if (!qword_27D824068)
  {
    type metadata accessor for InteractionResultDetailCell();
    sub_22818217C(255, &qword_27D824070);
    sub_22819F408(&qword_27D824078, type metadata accessor for InteractionResultDetailCell);
    v0 = type metadata accessor for InteractionResultItem();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824068);
    }
  }
}

void sub_22819F3B0()
{
  if (!qword_27D823910)
  {
    sub_22838FEF0();
    v0 = sub_228393430();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823910);
    }
  }
}

uint64_t sub_22819F408(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t InteractionSeperatorLineDataSource.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return InteractionSeperatorLineDataSource.init()();
}

uint64_t InteractionSeperatorLineDataSource.init()()
{
  v0 = sub_22838F4A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818272C(0, &qword_27D823910, MEMORY[0x277D10F78]);
  v5 = *(sub_22838FEF0() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v17 = xmmword_228397F40;
  *(v8 + 16) = xmmword_228397F40;
  sub_22818272C(0, &qword_27D823918, sub_228182780);
  v9 = swift_allocObject();
  *(v9 + 16) = v17;
  v10 = type metadata accessor for InteractionSeparatorLineItem();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  sub_22838F490();
  v14 = (v13 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier);
  type metadata accessor for InteractionSeparatorLineCell();
  sub_22819FA64(&qword_27D824090, type metadata accessor for InteractionSeparatorLineCell);
  *v14 = sub_22838FBB0();
  v14[1] = v15;
  *(v9 + 56) = v10;
  *(v9 + 64) = sub_22819FA64(&qword_27D824098, type metadata accessor for InteractionSeparatorLineItem);
  *(v9 + 32) = v13;
  sub_22838F490();
  sub_22838F450();
  (*(v1 + 8))(v4, v0);
  sub_22838FED0();
  return sub_22838F920();
}

uint64_t sub_22819F74C()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_228390040();
  v5 = sub_228390090();
  *v6 = 0x4024000000000000;
  v5(v11, 0);
  v7 = sub_228390090();
  *(v8 + 16) = 0;
  v7(v11, 0);
  v9 = sub_2283900C0();
  (*(v1 + 8))(v4, v0);
  return v9;
}

uint64_t InteractionSeperatorLineDataSource.__deallocating_deinit()
{
  _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall InteractionSeperatorLineDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for InteractionSeparatorLineCell();
  sub_22819FA64(&qword_27D824090, type metadata accessor for InteractionSeparatorLineCell);
  sub_2283926B0();
}

uint64_t sub_22819F9AC()
{
  type metadata accessor for InteractionSeparatorLineCell();
  sub_22819FA64(&qword_27D824090, type metadata accessor for InteractionSeparatorLineCell);
  return sub_2283926B0();
}

uint64_t sub_22819FA64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for InteractionSeperatorLineDataSource()
{
  result = qword_27D8240A8;
  if (!qword_27D8240A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MedicationsAsNeededDoseDataSource.__allocating_init(healthStore:listManager:datePublisher:didTapRecordDoseHandler:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_22838F4A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 48);
  v18 = *(v6 + 52);
  v19 = swift_allocObject();
  v20 = qword_27D8240B8;
  *(v19 + qword_27D8240C0) = 0;
  *(v19 + qword_27D8240C8) = a1;
  *(v19 + qword_27D8240D0) = a2;
  v27[1] = a3;
  v28[0] = 0;
  *(v19 + qword_27D8240D8) = a3;
  v21 = (v19 + v20);
  *v21 = a4;
  v21[1] = a5;
  v28[1] = 0xE000000000000000;
  v27[0] = a1;

  sub_228176FA8(a4);
  sub_2283931D0();

  strcpy(v28, "MutableArray<");
  HIWORD(v28[1]) = -4864;
  sub_22838F490();
  v22 = sub_22838F450();
  v24 = v23;
  (*(v13 + 8))(v16, v12);
  MEMORY[0x22AAB5C80](v22, v24);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v25 = sub_22838FF30();

  sub_2281A001C();
  sub_228176EC8(a4);

  return v25;
}

uint64_t MedicationsAsNeededDoseDataSource.init(healthStore:listManager:datePublisher:didTapRecordDoseHandler:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_22838F4A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v6 + qword_27D8240B8);
  *v17 = 0;
  v17[1] = 0;
  *(v6 + qword_27D8240C0) = 0;
  *(v6 + qword_27D8240C8) = a1;
  *(v6 + qword_27D8240D0) = a2;
  v23[1] = a3;
  v24[0] = 0;
  *(v6 + qword_27D8240D8) = a3;
  *v17 = a4;
  v17[1] = a5;
  v24[1] = 0xE000000000000000;
  v23[0] = a1;

  sub_228176FA8(a4);
  sub_2283931D0();

  strcpy(v24, "MutableArray<");
  HIWORD(v24[1]) = -4864;
  sub_22838F490();
  v18 = sub_22838F450();
  v20 = v19;
  (*(v13 + 8))(v16, v12);
  MEMORY[0x22AAB5C80](v18, v20);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v21 = sub_22838FF30();

  sub_2281A001C();
  sub_228176EC8(a4);

  return v21;
}

uint64_t sub_2281A001C()
{
  v1 = v0;
  sub_2281A1888(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = &v35 - v4;
  sub_2281A1160();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281A1280();
  v12 = *(v11 - 8);
  v37 = v11;
  v38 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281A1438();
  v17 = *(v16 - 8);
  v39 = v16;
  v40 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v35 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v0 + qword_27D8240D0);
  v42 = sub_2283906C0();
  v21 = MEMORY[0x277D77BE8];
  sub_2281A1384(0, &qword_27D824108, MEMORY[0x277D77BE8]);
  sub_2281A1218();
  sub_2281A13E8(&qword_27D827D00, &qword_27D824108, v21);
  sub_2283919F0();

  sub_2281A17D0(&qword_27D824110, sub_2281A1160);
  v22 = sub_228391990();
  (*(v7 + 8))(v10, v6);
  v41 = *(v1 + qword_27D8240D8);
  v42 = v22;
  sub_2281A1384(0, &qword_280DDBC60, sub_2281A1218);
  v23 = MEMORY[0x277CC9578];
  sub_2281A1384(0, &qword_280DDBCA0, MEMORY[0x277CC9578]);
  sub_2281A13E8(&qword_280DDBC68, &qword_280DDBC60, sub_2281A1218);
  sub_2281A13E8(&qword_280DDBCA8, &qword_280DDBCA0, v23);
  sub_2283919E0();

  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v24 = sub_228392790();
  v42 = v24;
  v25 = sub_228392730();
  v26 = v36;
  (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
  sub_2281A17D0(&qword_280DDBCC8, sub_2281A1280);
  sub_2281A1504();
  v27 = v35;
  v28 = v37;
  sub_228391A70();
  sub_2281A16F0(v26);

  (*(v38 + 8))(v15, v28);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2281A177C;
  *(v30 + 24) = v29;
  sub_2281A17D0(&qword_280DDBCB8, sub_2281A1438);
  v31 = v39;
  v32 = sub_228391AC0();

  (*(v40 + 8))(v27, v31);
  v33 = *(v1 + qword_27D8240C0);
  *(v1 + qword_27D8240C0) = v32;
}

uint64_t sub_2281A05E8(unint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_22838F6C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22838F440();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v20 = result;
  if (a1 >> 62)
  {
    v24 = sub_2283930D0();
    v42 = v9;
    if (v24)
    {
      goto LABEL_4;
    }

LABEL_6:
    v41 = 0;
    goto LABEL_7;
  }

  v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v42 = v9;
  if (!v21)
  {
    goto LABEL_6;
  }

LABEL_4:
  sub_22838F680();
  sub_22838F430();
  sub_22838F590();
  v22 = *(v9 + 8);
  v22(v13, v8);
  (*(v4 + 8))(v7, v3);
  sub_22838F370();
  v22(v16, v8);
  v23 = sub_22838F390();
  v22(v18, v8);
  v41 = v23 ^ 1;
LABEL_7:
  sub_2281A1888(0, &qword_280DDB8C0, type metadata accessor for MedicationsRecordDoseItem, MEMORY[0x277D84560]);
  v25 = type metadata accessor for MedicationsRecordDoseItem(0);
  v26 = *(*(v25 - 1) + 72);
  v27 = (*(*(v25 - 1) + 80) + 32) & ~*(*(v25 - 1) + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_228397F40;
  v29 = (v28 + v27);
  v30 = qword_280DDCF18;
  v40 = *(v20 + qword_27D8240C8);
  if (v30 != -1)
  {
    swift_once();
  }

  v31 = sub_22838F0C0();
  v33 = v32;
  v34 = *(v20 + qword_27D8240D0);
  (*(v42 + 16))(v29 + v25[8], v43, v8);
  v35 = *(v20 + qword_27D8240B8);
  v36 = *(v20 + qword_27D8240B8 + 8);
  type metadata accessor for MedicationsRecordDoseCollectionViewCell(0);

  sub_228176FA8(v35);
  sub_2281A17D0(&qword_280DDC6D8, type metadata accessor for MedicationsRecordDoseCollectionViewCell);
  *v29 = sub_22838FBB0();
  v29[1] = v37;
  v38 = (v29 + v25[10]);
  v29[4] = v40;
  v29[5] = v34;
  v29[2] = v31;
  v29[3] = v33;
  *(v29 + v25[9]) = v41 & 1;
  *v38 = v35;
  v38[1] = v36;
  sub_2281953A0(v28);
  swift_setDeallocating();
  sub_2281A18EC(v29);
  swift_deallocClassInstance();
  sub_22838FF60();
}