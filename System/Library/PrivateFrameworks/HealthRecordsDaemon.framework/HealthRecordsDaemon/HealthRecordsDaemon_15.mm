uint64_t sub_251BF2844@<X0>(void *a1@<X8>)
{
  sub_251A8223C(0, &qword_2813E1D20, 0x277D82BB8);
  v3 = *(v1 + 16);
  sub_251A8223C(0, &qword_27F4797C0, 0x277CCD830);
  v4 = *MEMORY[0x277CCC978];
  v5 = v3;
  v6 = MEMORY[0x25308D1E0](v4);
  LOBYTE(v3) = sub_251C71534();

  if ((v3 & 1) != 0 || (v7 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC980]), v8 = sub_251C71534(), v7, (v8)) && (v5, (v5 = [objc_opt_self() correlationTypeForIdentifier_]) == 0))
  {
    result = sub_251C717E4();
    __break(1u);
  }

  else
  {
    *a1 = v5;
    v9 = *MEMORY[0x277D112F0];
    v10 = sub_251C702E4();
    v11 = *(*(v10 - 8) + 104);

    return v11(a1, v9, v10);
  }

  return result;
}

uint64_t sub_251BF2A0C@<X0>(void *a1@<X3>, void *a2@<X8>)
{
  sub_251A8223C(0, &qword_2813E1D20, 0x277D82BB8);
  sub_251A8223C(0, &qword_27F4797C0, 0x277CCD830);
  v4 = *MEMORY[0x277CCC978];
  v5 = a1;
  v6 = MEMORY[0x25308D1E0](v4);
  LOBYTE(a1) = sub_251C71534();

  if ((a1 & 1) != 0 || (v7 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC980]), v8 = sub_251C71534(), v7, (v8)) && (v5, (v5 = [objc_opt_self() correlationTypeForIdentifier_]) == 0))
  {
    result = sub_251C717E4();
    __break(1u);
  }

  else
  {
    *a2 = v5;
    v9 = *MEMORY[0x277D112F0];
    v10 = sub_251C702E4();
    v11 = *(*(v10 - 8) + 104);

    return v11(a2, v9, v10);
  }

  return result;
}

uint64_t sub_251BF2C8C()
{
  result = type metadata accessor for ClinicalSharingQueryContext(319);
  if (v1 <= 0x3F)
  {
    result = sub_251C6FAE4();
    if (v2 <= 0x3F)
    {
      result = sub_251A8223C(319, &qword_27F47C170, 0x277CCD3A8);
      if (v3 <= 0x3F)
      {
        result = sub_251A8223C(319, &qword_27F479EA8, 0x277CCDAB0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_251BF2D78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251BF2D98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_251BF2DD4()
{
  v1 = v0;
  v2 = type metadata accessor for ClinicalSharingElectrocardiogramQuery(0);
  v3 = (v2 - 8);
  v43 = *(v2 - 8);
  v42 = *(v43 + 64);
  MEMORY[0x28223BE20](v2);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BF50FC();
  v6 = *(v5 - 8);
  v45 = v5;
  v46 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251C70014();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v0 + v3[9]);
  type metadata accessor for ClinicalSharingElectrocardiogramQuery.State();
  v15 = swift_allocObject();
  v16 = v14[1];
  *(v15 + 16) = *v14;
  *(v15 + 32) = v16;
  v17 = v3[7];
  v39 = *(v1 + v3[10]);
  v40 = v15;
  v18 = objc_opt_self();
  sub_251C6FAB4();
  v19 = sub_251C6FF94();
  v20 = *(v10 + 8);
  v20(v13, v9);
  sub_251C6FA84();
  v21 = sub_251C6FF94();
  v20(v13, v9);
  v22 = [v18 predicateForSamplesWithStartDate:v19 endDate:v21 options:0];

  v23 = objc_allocWithZone(MEMORY[0x277CCD848]);
  v24 = v39;
  v25 = [v23 initWithSampleType:v39 predicate:v22];

  sub_251BEFC0C(0x706D61732D676365, 0xEB0000000073656CLL, v24, 5, 1);
  sub_251A823B4(*v1 + 16, v48);
  __swift_project_boxed_opaque_existential_1(v48, v48[3]);
  sub_251B0E638(0, &qword_27F47BD20, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_251C74560;
  *(v26 + 32) = v25;
  v39 = v25;
  sub_251AFCF70();
  v27 = *(v1 + v3[8]);
  v28 = off_2863FD760();

  v47 = v28;
  v29 = v41;
  sub_251BFB8EC(v1, v41, type metadata accessor for ClinicalSharingElectrocardiogramQuery);
  v30 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v31 = (v42 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  sub_251BFBAA4(v29, v32 + v30, type metadata accessor for ClinicalSharingElectrocardiogramQuery);
  *(v32 + v31) = v40;
  v33 = MEMORY[0x277CBCD88];
  sub_251BF521C(0, &qword_27F478D60, sub_251A821D4, MEMORY[0x277CBCD88]);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  sub_251BF521C(0, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput, v33);
  sub_251BFB314(&qword_27F478D78, &qword_27F478D60, sub_251A821D4);
  sub_251BFB314(&qword_2813E21C8, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput);

  v34 = v44;
  sub_251C70B94();

  __swift_destroy_boxed_opaque_existential_1(v48);
  sub_251BFC204(&qword_27F47C180, sub_251BF50FC);
  v35 = v45;
  v36 = sub_251C70A94();

  (*(v46 + 8))(v34, v35);
  return v36;
}

uint64_t sub_251BF33B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ClinicalSharingElectrocardiogramQuery(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_251BFB07C();
  v44 = v9;
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BFB12C();
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BFB378();
  v19 = *(v18 - 8);
  v49 = v18;
  v50 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BFB40C();
  v23 = *(v22 - 8);
  v51 = v22;
  v52 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v45 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  sub_251A821D4();
  sub_251BFC204(&qword_27F47C190, sub_251A821D4);
  sub_251C710D4();
  v40 = type metadata accessor for ClinicalSharingElectrocardiogramQuery;
  v38 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BFB8EC(v3, v38, type metadata accessor for ClinicalSharingElectrocardiogramQuery);
  v26 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v42 = v26 + v8;
  v27 = swift_allocObject();
  v39 = type metadata accessor for ClinicalSharingElectrocardiogramQuery;
  sub_251BFBAA4(&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for ClinicalSharingElectrocardiogramQuery);
  *(v27 + ((v26 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_251BF521C(0, &qword_27F47C1A0, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData, MEMORY[0x277CBCD88]);
  sub_251BFC204(&qword_27F47C1B0, sub_251BFB07C);
  sub_251BFB314(&qword_27F47C1B8, &qword_27F47C1A0, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);

  v28 = v44;
  sub_251C70BD4();

  (*(v46 + 8))(v12, v28);
  sub_251BFC204(&qword_27F47C1D0, sub_251BFB12C);
  v29 = v43;
  v30 = v47;
  sub_251C70B64();
  (*(v48 + 8))(v17, v30);
  v31 = v38;
  sub_251BFB8EC(v41, v38, v40);
  v32 = swift_allocObject();
  sub_251BFBAA4(v31, v32 + v26, v39);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  sub_251BFC204(&qword_27F47C1E0, sub_251BFB378);
  v33 = v45;
  v34 = v49;
  sub_251C70AA4();

  (*(v50 + 8))(v29, v34);
  sub_251BFC204(&qword_27F47C1E8, sub_251BFB40C);
  v35 = v51;
  v36 = sub_251C70A94();
  (*(v52 + 8))(v33, v35);
  return v36;
}

void sub_251BF39D8(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = sub_251BF4388([v5 classification]);
    v8 = sub_251BF4400(v5, v7);

    *a2 = v8;
  }

  else
  {
    sub_251C716A4();
    v9 = [v3 description];
    sub_251C70F14();

    MEMORY[0x25308CDA0](0xD00000000000001CLL, 0x8000000251C909D0);
    sub_251C717E4();
    __break(1u);
  }
}

uint64_t sub_251BF3B1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v4 = sub_251C70014();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v71 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = &v57 - v8;
  v69 = sub_251C6FAE4();
  v72 = *(v69 - 8);
  v9 = *(v72 + 64);
  MEMORY[0x28223BE20](v69);
  v62 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_251BFB6EC(0, &qword_27F4793C8, type metadata accessor for PBTypedData, MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v57 - v14;
  v16 = type metadata accessor for PBTypedData(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BFB6EC(0, &qword_27F478D90, MEMORY[0x277CC88A8], v11);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v63 = &v57 - v23;
  v24 = type metadata accessor for PBDateRange(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v64 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData(0);
  v27 = *(v61 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v61);
  v30 = (&v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for PBECGMeasurement(0);
  v68 = *(v31 - 8);
  v32 = *(v68 + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v57 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a1;

  sub_251BF92C4(&v74);
  v65 = v17;
  v66 = v16;
  v35 = v74;
  v36 = v74[2];
  if (v36)
  {
    v58 = v20;
    v59 = v15;
    v60 = v2;
    v74 = MEMORY[0x277D84F90];
    sub_251C0BDF4(0, v36, 0);
    v37 = v74;
    v38 = *(v27 + 80);
    v57 = v35;
    v39 = v35 + ((v38 + 32) & ~v38);
    v73 = *(v27 + 72);
    v40 = v39;
    v41 = v36;
    v42 = v61;
    do
    {
      sub_251BFB8EC(v40, v30, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      sub_251BFB8EC(v30 + *(v42 + 20), v34, type metadata accessor for PBECGMeasurement);
      sub_251BFB9C4(v30, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      v74 = v37;
      v44 = v37[2];
      v43 = v37[3];
      if (v44 >= v43 >> 1)
      {
        sub_251C0BDF4(v43 > 1, v44 + 1, 1);
        v42 = v61;
        v37 = v74;
      }

      v37[2] = v44 + 1;
      sub_251BFBAA4(v34, v37 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v44, type metadata accessor for PBECGMeasurement);
      v40 += v73;
      --v41;
    }

    while (v41);
    v74 = MEMORY[0x277D84F90];
    sub_251C0B714(0, v36, 0);
    v45 = v74;
    v46 = v62;
    do
    {
      sub_251BFB8EC(v39, v30, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      v47 = *v30;
      v48 = [*v30 startDate];
      sub_251C6FFE4();

      v49 = [v47 endDate];
      sub_251C6FFE4();

      sub_251C6FA94();
      sub_251BFB9C4(v30, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      v74 = v45;
      v51 = v45[2];
      v50 = v45[3];
      if (v51 >= v50 >> 1)
      {
        sub_251C0B714(v50 > 1, v51 + 1, 1);
        v46 = v62;
        v45 = v74;
      }

      v45[2] = v51 + 1;
      (*(v72 + 32))(v45 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v51, v46, v69);
      v39 += v73;
      --v36;
    }

    while (v36);

    v52 = v67;
    v15 = v59;
    v20 = v58;
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
    v37 = MEMORY[0x277D84F90];
    v52 = v67;
  }

  v53 = v63;
  sub_251BF1170(v45, v63);
  v54 = v64;
  sub_251BF0320(5, 1, v53, v64);
  sub_251BFB954(v53, &qword_27F478D90, MEMORY[0x277CC88A8]);
  sub_251BF4A08(v37, v54, v15);

  if ((*(v65 + 48))(v15, 1, v66) == 1)
  {
    sub_251BFB9C4(v54, type metadata accessor for PBDateRange);

    sub_251BFB954(v15, &qword_27F4793C8, type metadata accessor for PBTypedData);
    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    return (*(*(Output - 8) + 56))(v52, 1, 1, Output);
  }

  else
  {
    sub_251BFBAA4(v15, v20, type metadata accessor for PBTypedData);
    sub_251BF00E0(v20, v45, type metadata accessor for ClinicalSharingElectrocardiogramQuery, sub_251AD6374, type metadata accessor for ClinicalSharingElectrocardiogramQuery, v52);

    sub_251BFB9C4(v20, type metadata accessor for PBTypedData);
    return sub_251BFB9C4(v54, type metadata accessor for PBDateRange);
  }
}

BOOL sub_251BF4388(uint64_t a1)
{
  v3 = v1[2];
  result = v3 > 0;
  v5 = v3 < 1;
  v6 = v3 - 1;
  if (!v5)
  {
    v1[2] = v6;
  }

  if (a1 == 2)
  {
    v10 = v1[4];
    v8 = v1 + 4;
    v7 = v10;
LABEL_7:
    if (v7 <= 0)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (a1 == 1)
  {
    v9 = v1[3];
    v8 = v1 + 3;
    v7 = v9;
    goto LABEL_7;
  }

  if ((a1 - 3) <= 3)
  {
    v11 = v1[5];
    v8 = v1 + 5;
    v7 = v11;
    if (v11 >= 1)
    {
LABEL_8:
      *v8 = v7 - 1;
      return 1;
    }
  }

  return result;
}

uint64_t sub_251BF4400(void *a1, int a2)
{
  v41 = a2;
  v42 = a1;
  v43 = type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData(0);
  v3 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v5 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251BFB6EC(0, &qword_27F47C210, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData, MEMORY[0x277CBCE78]);
  v7 = v6;
  v40 = *(v6 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  sub_251BF521C(0, &qword_27F47C218, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData, MEMORY[0x277CBCF38]);
  v12 = v11;
  v39 = *(v11 - 8);
  v13 = *(v39 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = type metadata accessor for ClinicalSharingElectrocardiogramQuery(0);
  v38 = *(v16 - 8);
  v17 = *(v38 + 64);
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BFBB90();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v41)
  {
    v25 = v21;
    v26 = v22;
    sub_251A823B4(*v2 + 16, v45);
    __swift_project_boxed_opaque_existential_1(v45, v45[3]);
    v27 = v42;
    v44 = off_2863FD740(v42, 1, *(v2 + *(v16 + 36)));
    sub_251BFB8EC(v2, &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClinicalSharingElectrocardiogramQuery);
    v28 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v29 = (v17 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    sub_251BFBAA4(v18, v30 + v28, type metadata accessor for ClinicalSharingElectrocardiogramQuery);
    *(v30 + v29) = v27;
    sub_251BFBC3C();
    sub_251BFC204(&qword_27F47C230, sub_251BFBC3C);
    v31 = v27;
    sub_251C70AE4();

    __swift_destroy_boxed_opaque_existential_1(v45);
    sub_251BFC204(&qword_27F47C240, sub_251BFBB90);
    v32 = sub_251C70A94();
    (*(v26 + 8))(v24, v25);
  }

  else
  {
    v33 = *(v2 + *(v16 + 36));
    v34 = MEMORY[0x25308DB30](v21);
    v35 = v42;
    sub_251BF4D58(v42, MEMORY[0x277D84F90], v33, v5 + *(v43 + 20));
    *v5 = v35;
    v36 = v35;
    objc_autoreleasePoolPop(v34);
    sub_251C70A24();
    sub_251A82284();
    sub_251C709F4();
    (*(v40 + 8))(v10, v7);
    sub_251BFBCD0();
    v32 = sub_251C70A94();
    (*(v39 + 8))(v15, v12);
  }

  return v32;
}

void sub_251BF4978(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *(a2 + *(type metadata accessor for ClinicalSharingElectrocardiogramQuery(0) + 36));
  v8 = MEMORY[0x25308DB30]();
  v9 = type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData(0);
  sub_251BF4D58(a3, v6, v7, a4 + *(v9 + 20));
  *a4 = a3;
  v10 = a3;

  objc_autoreleasePoolPop(v8);
}

uint64_t sub_251BF4A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_251BFB6EC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for PBECGs(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v26 - v16);
  if (*(a1 + 16))
  {
    v18 = v17 + *(v15 + 20);
    sub_251C703A4();
    *v17 = a1;
    sub_251BFB8EC(a2, v9, type metadata accessor for PBDateRange);
    v19 = type metadata accessor for PBDateRange(0);
    (*(*(v19 - 8) + 56))(v9, 0, 1, v19);

    sub_251BF1814(v9, a3);
    sub_251BFB954(v9, qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251BFB8EC(v17, v14, type metadata accessor for PBECGs);
    v20 = type metadata accessor for PBTypedData(0);
    v21 = *(v20 + 20);
    sub_251BFB954(a3 + v21, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251BFBAA4(v14, a3 + v21, type metadata accessor for PBECGs);
    v22 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v22 - 8) + 56))(a3 + v21, 0, 1, v22);
    (*(*(v20 - 8) + 56))(a3, 0, 1, v20);
    return sub_251BFB9C4(v17, type metadata accessor for PBECGs);
  }

  else
  {
    v24 = type metadata accessor for PBTypedData(0);
    v25 = *(*(v24 - 8) + 56);

    return v25(a3, 1, 1, v24);
  }
}

void sub_251BF4D58(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_251C70014();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0xE000000000000000;
  v14 = MEMORY[0x277D84F90];
  *(a4 + 40) = 0;
  *(a4 + 48) = 0xE000000000000000;
  *(a4 + 96) = v14;
  *(a4 + 104) = 0;
  *(a4 + 112) = 0;
  *(a4 + 120) = 1;
  v15 = a4 + *(type metadata accessor for PBECGMeasurement(0) + 56);
  sub_251C703A4();
  v16 = [a1 startDate];
  sub_251C6FFE4();

  v17 = *(*v4 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v18 = sub_251C6FF94();
  v19 = [v17 stringFromDate_];

  v20 = sub_251C70F14();
  v22 = v21;

  (*(v10 + 8))(v13, v9);
  *a4 = v20;
  *(a4 + 8) = v22;
  v23 = [a1 samplingFrequency];
  if (v23)
  {
    v24 = v23;
    v25 = [objc_opt_self() hertzUnit];
    [v24 doubleValueForUnit_];
    v27 = v26;

    v28 = v27;
    *(a4 + 16) = v28;
  }

  v29 = [a1 device];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 name];

    if (v31)
    {
      v32 = sub_251C70F14();
      v34 = v33;

      *(a4 + 24) = v32;
      *(a4 + 32) = v34;
    }
  }

  v35 = [a1 _localizedSymptoms];
  v36 = sub_251C71154();

  *(a4 + 88) = v36;
  v37 = sub_251BF50B8([a1 classification]);
  if ((v38 & 0x100) == 0)
  {
    *(a4 + 112) = v37;
    *(a4 + 120) = v38 & 1;
  }

  v39 = [a1 averageHeartRate];
  if (v39)
  {
    v40 = v39;
    [v39 _beatsPerMinute];
    v42 = v41;

    v43 = v42;
    *(a4 + 104) = v43;
  }

  *(a4 + 56) = 73;
  *(a4 + 64) = 0xE100000000000000;
  v44 = [a3 unitString];
  v45 = sub_251C70F14();
  v47 = v46;

  *(a4 + 72) = v45;
  *(a4 + 80) = v47;
  if (*(a2 + 16))
  {
    *(a4 + 96) = a2;
  }
}

unint64_t sub_251BF50B8(unint64_t result)
{
  v1 = 7;
  if (result != 100)
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

void sub_251BF50FC()
{
  if (!qword_27F47C178)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_251BF521C(255, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput, MEMORY[0x277CBCD88]);
    sub_251BF521C(255, &qword_27F478D60, sub_251A821D4, v0);
    sub_251BFB314(&qword_2813E21C8, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput);
    sub_251BFB314(&qword_27F478D78, &qword_27F478D60, sub_251A821D4);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C178);
    }
  }
}

void sub_251BF521C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_251A82284();
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_251BF5298(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_251C70074();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_251BFC204(&qword_2813E74E0, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_251C70E84();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_251BFC204(&qword_27F4796A0, MEMORY[0x277CC95F0]);
      v23 = sub_251C70ED4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_251BF70C4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_251BF5578(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_251C702E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_251BFC204(&qword_2813E74C0, MEMORY[0x277D11300]);
  v36 = a2;
  v13 = sub_251C70E84();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_251BFC204(&qword_27F4797C8, MEMORY[0x277D11300]);
      v23 = sub_251C70ED4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_251BF7390(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_251BF5858(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_251C71AA4();
  sub_251C70FB4();
  v9 = sub_251C71AD4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_251C719D4() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_251BF765C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_251BF59A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v64 = *MEMORY[0x277D85DE8];
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_251C71AA4();
  sub_251C70FB4();
  sub_251C6FEF4();
  v12 = sub_251C71AD4();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    v19 = a2;
LABEL_68:
    v42 = *v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v63 = *v52;

    sub_251A858C4(a4, a5);
    sub_251BF77DC(v19, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v52 = *v63;
    *a1 = v19;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    result = 1;
    goto LABEL_70;
  }

  v61 = ~v13;
  if (a4)
  {
    v15 = 0;
  }

  else
  {
    v15 = a5 == 0xC000000000000000;
  }

  v16 = !v15;
  v60 = v16;
  v17 = a5 >> 62;
  v18 = __OFSUB__(HIDWORD(a4), a4);
  v58 = v18;
  v57 = HIDWORD(a4) - a4;
  v59 = BYTE6(a5);
  v54 = a4;
  v55 = a5;
  v53 = a3;
  v19 = a2;
  while (1)
  {
    v20 = (*(v10 + 48) + 32 * v14);
    v21 = v20[2];
    v22 = v20[3];
    if (*v20 != v19 || v20[1] != a3)
    {
      v24 = v20[1];
      if ((sub_251C719D4() & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v25 = v22 >> 62;
    if (v22 >> 62 == 3)
    {
      if (v21)
      {
        v26 = 0;
      }

      else
      {
        v26 = v22 == 0xC000000000000000;
      }

      v28 = !v26 || v17 < 3;
      if (((v28 | v60) & 1) == 0)
      {

        v45 = 0;
        v46 = 0xC000000000000000;
        goto LABEL_69;
      }

LABEL_41:
      v29 = 0;
      if (v17 <= 1)
      {
        goto LABEL_38;
      }

      goto LABEL_42;
    }

    if (v25 > 1)
    {
      if (v25 != 2)
      {
        goto LABEL_41;
      }

      v31 = *(v21 + 16);
      v30 = *(v21 + 24);
      v32 = __OFSUB__(v30, v31);
      v29 = v30 - v31;
      if (v32)
      {
        goto LABEL_74;
      }

      if (v17 <= 1)
      {
        goto LABEL_38;
      }
    }

    else if (v25)
    {
      LODWORD(v29) = HIDWORD(v21) - v21;
      if (__OFSUB__(HIDWORD(v21), v21))
      {
        goto LABEL_73;
      }

      v29 = v29;
      if (v17 <= 1)
      {
LABEL_38:
        v33 = v59;
        if (v17)
        {
          v33 = v57;
          if (v58)
          {
            goto LABEL_72;
          }
        }

        goto LABEL_44;
      }
    }

    else
    {
      v29 = BYTE6(v22);
      if (v17 <= 1)
      {
        goto LABEL_38;
      }
    }

LABEL_42:
    if (v17 != 2)
    {
      if (!v29)
      {
        goto LABEL_66;
      }

      goto LABEL_13;
    }

    v35 = *(a4 + 16);
    v34 = *(a4 + 24);
    v32 = __OFSUB__(v34, v35);
    v33 = v34 - v35;
    if (v32)
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
    }

LABEL_44:
    if (v29 != v33)
    {
      goto LABEL_13;
    }

    if (v29 < 1)
    {
      goto LABEL_66;
    }

    if (v25 <= 1)
    {
      if (!v25)
      {
        *v63 = v21;
        *&v63[8] = v22;
        v63[10] = BYTE2(v22);
        v63[11] = BYTE3(v22);
        v63[12] = BYTE4(v22);
        v63[13] = BYTE5(v22);

        sub_251A858C4(v21, v22);
        v19 = a2;
        goto LABEL_65;
      }

      if (v21 >> 32 < v21)
      {
        goto LABEL_75;
      }

      sub_251A858C4(v21, v22);
      v38 = sub_251C6FB74();
      if (v38)
      {
        v40 = sub_251C6FBA4();
        if (__OFSUB__(v21, v40))
        {
          goto LABEL_78;
        }

        v38 += v21 - v40;
      }

      goto LABEL_62;
    }

    if (v25 != 2)
    {
      break;
    }

    v37 = *(v21 + 16);
    v36 = *(v21 + 24);

    sub_251A858C4(v21, v22);
    v38 = sub_251C6FB74();
    if (v38)
    {
      v39 = sub_251C6FBA4();
      if (__OFSUB__(v37, v39))
      {
        goto LABEL_77;
      }

      v38 += v37 - v39;
    }

    if (__OFSUB__(v36, v37))
    {
      goto LABEL_76;
    }

LABEL_62:
    sub_251C6FB94();
    v41 = v38;
    a4 = v54;
    a5 = v55;
    sub_251A9CD78(v41, v54, v55, v63);

    sub_251A83028(v21, v22);
    a3 = v53;
    v19 = a2;
    if (v63[0])
    {
      goto LABEL_66;
    }

LABEL_13:
    v14 = (v14 + 1) & v61;
    if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  *&v63[6] = 0;
  *v63 = 0;

  sub_251A858C4(v21, v22);
LABEL_65:
  sub_251A9CD78(v63, a4, a5, &v62);

  sub_251A83028(v21, v22);
  if (!v62)
  {
    goto LABEL_13;
  }

LABEL_66:

  v45 = a4;
  v46 = a5;
LABEL_69:
  sub_251A83028(v45, v46);
  v47 = (*(v10 + 48) + 32 * v14);
  v48 = v47[1];
  v49 = v47[2];
  v50 = v47[3];
  *a1 = *v47;
  a1[1] = v48;
  a1[2] = v49;
  a1[3] = v50;

  sub_251A858C4(v49, v50);
  result = 0;
LABEL_70:
  v51 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_251BF5EFC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_251C701C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_251BFC204(&qword_27F47A048, MEMORY[0x277CC99D0]);
  v36 = a2;
  v13 = sub_251C70E84();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_251BFC204(&qword_27F47A050, MEMORY[0x277CC99D0]);
      v23 = sub_251C70ED4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_251BF7CF8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_251BF61DC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_251C70074();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_251BFB750();
  result = sub_251C71664();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_251BFC204(&qword_2813E74E0, MEMORY[0x277CC95F0]);
      result = sub_251C70E84();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_251BF652C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_251C702E4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_251AD642C();
  result = sub_251C71664();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_251BFC204(&qword_2813E74C0, MEMORY[0x277D11300]);
      result = sub_251C70E84();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_251BF687C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_251BFBF64(0, &qword_27F47C248, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  result = sub_251C71664();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_251C71AA4();
      sub_251C70FB4();
      result = sub_251C71AD4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_251BF6AFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_251BFC00C();
  result = sub_251C71664();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_251C71AA4();
      sub_251C70FB4();
      sub_251C6FEF4();
      result = sub_251C71AD4();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_251BF6D74(uint64_t a1)
{
  v2 = v1;
  v41 = sub_251C701C4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_251B1D700();
  result = sub_251C71664();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_251BFC204(&qword_27F47A048, MEMORY[0x277CC99D0]);
      result = sub_251C70E84();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_251BF70C4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_251C70074();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_251BF61DC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_251BF82AC(MEMORY[0x277CC95F0], sub_251BFB750);
      goto LABEL_12;
    }

    sub_251BF84E0(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_251BFC204(&qword_2813E74E0, MEMORY[0x277CC95F0]);
  v15 = sub_251C70E84();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_251BFC204(&qword_27F4796A0, MEMORY[0x277CC95F0]);
      v23 = sub_251C70ED4();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_251C71A04();
  __break(1u);
  return result;
}

uint64_t sub_251BF7390(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_251C702E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_251BF652C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_251BF82AC(MEMORY[0x277D11300], sub_251AD642C);
      goto LABEL_12;
    }

    sub_251BF87F0(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_251BFC204(&qword_2813E74C0, MEMORY[0x277D11300]);
  v15 = sub_251C70E84();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_251BFC204(&qword_27F4797C8, MEMORY[0x277D11300]);
      v23 = sub_251C70ED4();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_251C71A04();
  __break(1u);
  return result;
}

uint64_t sub_251BF765C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_251BF687C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_251BF7FC4();
      goto LABEL_16;
    }

    sub_251BF8B00(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_251C71AA4();
  sub_251C70FB4();
  result = sub_251C71AD4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_251C719D4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_251C71A04();
  __break(1u);
  return result;
}

uint64_t sub_251BF77DC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v62 = *MEMORY[0x277D85DE8];
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 <= v12 || (a6 & 1) == 0)
  {
    v54 = result;
    if (a6)
    {
      sub_251BF6AFC(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        result = sub_251BF8140();
        goto LABEL_74;
      }

      sub_251BF8D58(v12 + 1);
    }

    v14 = *v6;
    v15 = *(*v6 + 40);
    sub_251C71AA4();
    sub_251C70FB4();
    sub_251C6FEF4();
    result = sub_251C71AD4();
    v55 = v14;
    v16 = -1 << *(v14 + 32);
    a5 = result & ~v16;
    v59 = v14 + 56;
    if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
    {
      v58 = ~v16;
      if (a3)
      {
        v17 = 0;
      }

      else
      {
        v17 = a4 == 0xC000000000000000;
      }

      v18 = !v17;
      v57 = v18;
      v19 = a4 >> 62;
      v20 = __OFSUB__(HIDWORD(a3), a3);
      v51 = v20;
      v49 = a3;
      v50 = HIDWORD(a3) - a3;
      v56 = BYTE6(a4);
      v52 = a2;
      v21 = a4;
      v11 = v54;
      a4 = v55;
      while (1)
      {
        v22 = (*(a4 + 48) + 32 * a5);
        result = *v22;
        v24 = v22[2];
        v23 = v22[3];
        if (*v22 != v11 || v22[1] != a2)
        {
          v26 = v22[1];
          result = sub_251C719D4();
          if ((result & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v27 = v23 >> 62;
        if (v23 >> 62 == 3)
        {
          break;
        }

        if (v27 > 1)
        {
          if (v27 != 2)
          {
            goto LABEL_37;
          }

          v37 = *(v24 + 16);
          v36 = *(v24 + 24);
          v35 = __OFSUB__(v36, v37);
          v31 = v36 - v37;
          if (v35)
          {
            goto LABEL_82;
          }
        }

        else if (v27)
        {
          LODWORD(v31) = HIDWORD(v24) - v24;
          if (__OFSUB__(HIDWORD(v24), v24))
          {
            goto LABEL_81;
          }

          v31 = v31;
        }

        else
        {
          v31 = BYTE6(v23);
        }

LABEL_38:
        if (v19 > 1)
        {
          if (v19 != 2)
          {
            if (!v31)
            {
              goto LABEL_73;
            }

            goto LABEL_20;
          }

          v34 = *(a3 + 16);
          v33 = *(a3 + 24);
          v35 = __OFSUB__(v33, v34);
          v32 = v33 - v34;
          if (v35)
          {
            __break(1u);
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }
        }

        else
        {
          v32 = v56;
          if (v19)
          {
            v32 = v50;
            if (v51)
            {
              goto LABEL_79;
            }
          }
        }

        if (v31 == v32)
        {
          if (v31 < 1)
          {
            goto LABEL_73;
          }

          if (v27 > 1)
          {
            if (v27 == 2)
            {
              v38 = v21;
              v39 = *(v24 + 16);
              v40 = *(v24 + 24);

              sub_251A858C4(v24, v23);
              v41 = sub_251C6FB74();
              if (v41)
              {
                v42 = sub_251C6FBA4();
                if (__OFSUB__(v39, v42))
                {
                  goto LABEL_85;
                }

                v41 += v39 - v42;
              }

              if (__OFSUB__(v40, v39))
              {
                goto LABEL_84;
              }

              goto LABEL_69;
            }

            *&v61[6] = 0;
            *v61 = 0;

            sub_251A858C4(v24, v23);
          }

          else
          {
            if (v27)
            {
              if (v24 >> 32 < v24)
              {
                goto LABEL_83;
              }

              v38 = v21;

              sub_251A858C4(v24, v23);
              v41 = sub_251C6FB74();
              if (v41)
              {
                v43 = sub_251C6FBA4();
                if (__OFSUB__(v24, v43))
                {
                  goto LABEL_86;
                }

                v41 += v24 - v43;
              }

LABEL_69:
              sub_251C6FB94();
              a3 = v49;
              v21 = v38;
              sub_251A9CD78(v41, v49, v38, v61);

              result = sub_251A83028(v24, v23);
              a2 = v52;
              v11 = v54;
              a4 = v55;
              if (v61[0])
              {
                goto LABEL_73;
              }

              goto LABEL_20;
            }

            *v61 = v24;
            *&v61[8] = v23;
            v61[10] = BYTE2(v23);
            v61[11] = BYTE3(v23);
            v61[12] = BYTE4(v23);
            v61[13] = BYTE5(v23);

            sub_251A858C4(v24, v23);
            a2 = v52;
          }

          sub_251A9CD78(v61, a3, v21, &v60);

          result = sub_251A83028(v24, v23);
          a4 = v55;
          if (v60)
          {
            goto LABEL_73;
          }
        }

LABEL_20:
        a5 = (a5 + 1) & v58;
        if (((*(v59 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      if (v24)
      {
        v28 = 0;
      }

      else
      {
        v28 = v23 == 0xC000000000000000;
      }

      v30 = !v28 || v19 < 3;
      if (((v30 | v57) & 1) == 0)
      {
LABEL_73:
        result = sub_251C71A04();
        __break(1u);
        goto LABEL_74;
      }

LABEL_37:
      v31 = 0;
      goto LABEL_38;
    }

LABEL_74:
    v11 = v54;
  }

  v21 = a4;
LABEL_76:
  v44 = *v53;
  *(*v53 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v45 = (*(v44 + 48) + 32 * a5);
  *v45 = v11;
  v45[1] = a2;
  v45[2] = a3;
  v45[3] = v21;
  v46 = *(v44 + 16);
  v35 = __OFADD__(v46, 1);
  v47 = v46 + 1;
  if (v35)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
  }

  *(v44 + 16) = v47;
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_251BF7CF8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_251C701C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_251BF6D74(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_251BF82AC(MEMORY[0x277CC99D0], sub_251B1D700);
      goto LABEL_12;
    }

    sub_251BF8FB4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_251BFC204(&qword_27F47A048, MEMORY[0x277CC99D0]);
  v15 = sub_251C70E84();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_251BFC204(&qword_27F47A050, MEMORY[0x277CC99D0]);
      v23 = sub_251C70ED4();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_251C71A04();
  __break(1u);
  return result;
}

void *sub_251BF7FC4()
{
  v1 = v0;
  sub_251BFBF64(0, &qword_27F47C248, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_251C71654();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_251BF8140()
{
  v1 = v0;
  sub_251BFC00C();
  v2 = *v0;
  v3 = sub_251C71654();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;

        result = sub_251A858C4(v20, v21);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_251BF82AC(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  a2(0);
  v10 = *v2;
  v11 = sub_251C71654();
  v12 = v11;
  if (*(v10 + 16))
  {
    v26 = v4;
    result = (v11 + 56);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 56 + 8 * v14)
    {
      result = memmove(result, (v10 + 56), 8 * v14);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v10 + 56);
    v20 = (v17 + 63) >> 6;
    v27 = v6 + 32;
    for (i = v6 + 16; v19; result = (*(v6 + 32))(*(v12 + 48) + v24, v9, v5))
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v24 = *(v6 + 72) * (v21 | (v16 << 6));
      (*(v6 + 16))(v9, *(v10 + 48) + v24, v5);
    }

    v22 = v16;
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v16 >= v20)
      {

        v4 = v26;
        goto LABEL_21;
      }

      v23 = *(v10 + 56 + 8 * v16);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v12;
  }

  return result;
}

uint64_t sub_251BF84E0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_251C70074();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_251BFB750();
  v10 = sub_251C71664();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_251BFC204(&qword_2813E74E0, MEMORY[0x277CC95F0]);
      result = sub_251C70E84();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_251BF87F0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_251C702E4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_251AD642C();
  v10 = sub_251C71664();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_251BFC204(&qword_2813E74C0, MEMORY[0x277D11300]);
      result = sub_251C70E84();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_251BF8B00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_251BFBF64(0, &qword_27F47C248, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  result = sub_251C71664();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_251C71AA4();

      sub_251C70FB4();
      result = sub_251C71AD4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_251BF8D58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_251BFC00C();
  result = sub_251C71664();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_251C71AA4();

      sub_251A858C4(v22, v23);
      sub_251C70FB4();
      sub_251C6FEF4();
      result = sub_251C71AD4();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_251BF8FB4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_251C701C4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_251B1D700();
  v10 = sub_251C71664();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_251BFC204(&qword_27F47A048, MEMORY[0x277CC99D0]);
      result = sub_251C70E84();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_251BF92C4(void **a1)
{
  v2 = *(type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_251BFAE2C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_251BF936C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_251BF936C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_251C71994();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData(0);
        v6 = sub_251C71184();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_251BF9840(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_251BF9498(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_251BF9498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v53 = sub_251C70014();
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v53);
  v52 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v37 - v12;
  v47 = type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData(0);
  v13 = *(*(v47 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v47);
  v46 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v50 = (&v37 - v17);
  result = MEMORY[0x28223BE20](v16);
  v49 = (&v37 - v20);
  v39 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v19 + 72);
    v48 = (v8 + 8);
    v23 = v21 + v22 * (a3 - 1);
    v44 = -v22;
    v45 = v21;
    v24 = a1 - a3;
    v38 = v22;
    v25 = v21 + v22 * a3;
    v26 = v51;
LABEL_5:
    v42 = v23;
    v43 = a3;
    v40 = v25;
    v41 = v24;
    v54 = v24;
    while (1)
    {
      v27 = v49;
      sub_251BFB8EC(v25, v49, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      v28 = v50;
      sub_251BFB8EC(v23, v50, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      v29 = [*v27 endDate];
      sub_251C6FFE4();

      v30 = [*v28 endDate];
      v31 = v52;
      sub_251C6FFE4();

      LOBYTE(v30) = sub_251C6FFB4();
      v32 = *v48;
      v33 = v31;
      v34 = v53;
      (*v48)(v33, v53);
      v32(v26, v34);
      sub_251BFB9C4(v28, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      result = sub_251BFB9C4(v27, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      if ((v30 & 1) == 0)
      {
LABEL_4:
        a3 = v43 + 1;
        v23 = v42 + v38;
        v24 = v41 - 1;
        v25 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v35 = v46;
      sub_251BFBAA4(v25, v46, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_251BFBAA4(v35, v23, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      v23 += v44;
      v25 += v44;
      if (__CFADD__(v54++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_251BF9840(uint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v131 = a1;
  v150 = sub_251C70014();
  v8 = *(v150 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v150);
  v149 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v148 = &v127 - v12;
  v144 = type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData(0);
  v13 = *(v144 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v144);
  v17 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v143 = &v127 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v147 = (&v127 - v21);
  result = MEMORY[0x28223BE20](v20);
  v146 = (&v127 - v23);
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_96:
    v8 = *v131;
    if (!*v131)
    {
      goto LABEL_136;
    }

    a4 = v26;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_251BFABE4(a4);
    }

    v152 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v123 = v13;
      while (*a3)
      {
        v13 = *(result + 16 * a4);
        v124 = result;
        v125 = *(result + 16 * (a4 - 1) + 40);
        sub_251BFA434(*a3 + *(v123 + 72) * v13, *a3 + *(v123 + 72) * *(result + 16 * (a4 - 1) + 32), *a3 + *(v123 + 72) * v125, v8);
        if (v5)
        {
        }

        if (v125 < v13)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v124 = sub_251BFABE4(v124);
        }

        if (a4 - 2 >= *(v124 + 2))
        {
          goto LABEL_124;
        }

        v126 = &v124[16 * a4];
        *v126 = v13;
        *(v126 + 1) = v125;
        v152 = v124;
        sub_251BFAB58(a4 - 1);
        result = v152;
        a4 = *(v152 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v25 = 0;
  v145 = (v8 + 8);
  v26 = MEMORY[0x277D84F90];
  v130 = a4;
  v132 = a3;
  v128 = v13;
  v127 = v17;
  while (1)
  {
    v135 = v26;
    v133 = v25;
    if (v25 + 1 >= v24)
    {
      v49 = v13;
      v13 = v25 + 1;
    }

    else
    {
      v140 = v24;
      v129 = v5;
      v27 = *(v13 + 72);
      v8 = *a3 + v27 * (v25 + 1);
      v151 = *a3;
      v28 = v151;
      v29 = v25;
      v30 = v146;
      sub_251BFB8EC(v8, v146, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      v31 = v147;
      sub_251BFB8EC(v28 + v27 * v29, v147, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      v32 = [*v30 endDate];
      v33 = v148;
      sub_251C6FFE4();

      v34 = [*v31 endDate];
      v35 = v149;
      sub_251C6FFE4();

      LODWORD(v141) = sub_251C6FFB4();
      v36 = *v145;
      v37 = v150;
      (*v145)(v35, v150);
      v139 = v36;
      v36(v33, v37);
      sub_251BFB9C4(v31, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      result = sub_251BFB9C4(v30, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      v38 = v133 + 2;
      v142 = v27;
      v39 = v151 + v27 * (v133 + 2);
      while (1)
      {
        v13 = v140;
        if (v140 == v38)
        {
          break;
        }

        v40 = v146;
        sub_251BFB8EC(v39, v146, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
        v41 = v147;
        sub_251BFB8EC(v8, v147, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
        v42 = [*v40 endDate];
        v43 = v148;
        sub_251C6FFE4();

        v44 = [*v41 endDate];
        v45 = v149;
        sub_251C6FFE4();

        LOBYTE(v151) = sub_251C6FFB4() & 1;
        LODWORD(v151) = v151;
        v46 = v150;
        v47 = v8;
        v48 = v139;
        v139(v45, v150);
        v48(v43, v46);
        sub_251BFB9C4(v41, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
        result = sub_251BFB9C4(v40, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
        ++v38;
        v39 += v142;
        v8 = v47 + v142;
        if ((v141 & 1) != v151)
        {
          v13 = v38 - 1;
          break;
        }
      }

      a3 = v132;
      v25 = v133;
      v49 = v128;
      a4 = v130;
      v5 = v129;
      v50 = v127;
      if (v141)
      {
        if (v13 < v133)
        {
          goto LABEL_127;
        }

        if (v133 < v13)
        {
          v51 = v142 * (v13 - 1);
          v52 = v13 * v142;
          v53 = v13;
          v54 = v133 * v142;
          do
          {
            if (v25 != --v53)
            {
              v55 = *v132;
              if (!*v132)
              {
                goto LABEL_133;
              }

              v8 = v55 + v54;
              sub_251BFBAA4(v55 + v54, v50, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
              if (v54 < v51 || v8 >= (v55 + v52))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v51)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_251BFBAA4(v50, v55 + v51, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
            }

            ++v25;
            v51 -= v142;
            v52 -= v142;
            v54 += v142;
          }

          while (v25 < v53);
          v5 = v129;
          a3 = v132;
          v25 = v133;
          v49 = v128;
          a4 = v130;
        }
      }
    }

    v56 = a3[1];
    if (v13 < v56)
    {
      if (__OFSUB__(v13, v25))
      {
        goto LABEL_126;
      }

      if (v13 - v25 < a4)
      {
        if (__OFADD__(v25, a4))
        {
          goto LABEL_128;
        }

        if ((v25 + a4) >= v56)
        {
          v8 = a3[1];
        }

        else
        {
          v8 = v25 + a4;
        }

        if (v8 < v25)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v13 != v8)
        {
          break;
        }
      }
    }

    v8 = v13;
    v13 = v49;
    if (v8 < v25)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    v136 = v8;
    if (result)
    {
      v26 = v135;
    }

    else
    {
      result = sub_251C38DF0(0, *(v135 + 2) + 1, 1, v135);
      v26 = result;
    }

    v8 = *(v26 + 2);
    v57 = *(v26 + 3);
    v58 = v8 + 1;
    if (v8 >= v57 >> 1)
    {
      result = sub_251C38DF0((v57 > 1), v8 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v58;
    v59 = &v26[16 * v8];
    v60 = v136;
    *(v59 + 4) = v133;
    *(v59 + 5) = v60;
    if (!*v131)
    {
      goto LABEL_135;
    }

    if (v8)
    {
      v61 = *v131;
      while (1)
      {
        v8 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v62 = *(v26 + 4);
          v63 = *(v26 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_53:
          if (v65)
          {
            goto LABEL_114;
          }

          v78 = &v26[16 * v58];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_117;
          }

          v84 = &v26[16 * v8 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_121;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v8 = v58 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v88 = &v26[16 * v58];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_67:
        if (v83)
        {
          goto LABEL_116;
        }

        v91 = &v26[16 * v8];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_119;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_74:
        a4 = v8 - 1;
        if (v8 - 1 >= v58)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v99 = v26;
        v100 = *&v26[16 * a4 + 32];
        v101 = *&v26[16 * v8 + 40];
        sub_251BFA434(*a3 + *(v13 + 72) * v100, *a3 + *(v13 + 72) * *&v26[16 * v8 + 32], *a3 + *(v13 + 72) * v101, v61);
        if (v5)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = sub_251BFABE4(v99);
        }

        if (a4 >= *(v99 + 2))
        {
          goto LABEL_111;
        }

        v102 = &v99[16 * a4];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        v152 = v99;
        a4 = &v152;
        result = sub_251BFAB58(v8);
        v26 = v152;
        v58 = *(v152 + 16);
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v26[16 * v58 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_112;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_113;
      }

      v73 = &v26[16 * v58];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_115;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_118;
      }

      if (v77 >= v69)
      {
        v95 = &v26[16 * v8 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_122;
        }

        if (v64 < v98)
        {
          v8 = v58 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v24 = a3[1];
    v25 = v136;
    a4 = v130;
    if (v136 >= v24)
    {
      goto LABEL_96;
    }
  }

  v129 = v5;
  v103 = v49;
  v104 = *a3;
  v105 = *(v103 + 72);
  v106 = *a3 + v105 * (v13 - 1);
  v141 = -v105;
  v142 = v104;
  v107 = v25 - v13;
  v134 = v105;
  v108 = v104 + v13 * v105;
  v136 = v8;
LABEL_86:
  v139 = v106;
  v140 = v13;
  v137 = v108;
  v138 = v107;
  v109 = v108;
  v110 = v107;
  while (1)
  {
    v151 = v110;
    v111 = v146;
    sub_251BFB8EC(v109, v146, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
    v112 = v147;
    sub_251BFB8EC(v106, v147, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
    v113 = [*v111 endDate];
    v114 = v148;
    sub_251C6FFE4();

    v115 = [*v112 endDate];
    v116 = v149;
    sub_251C6FFE4();

    a4 = sub_251C6FFB4();
    v117 = *v145;
    v118 = v116;
    v119 = v150;
    (*v145)(v118, v150);
    v117(v114, v119);
    sub_251BFB9C4(v112, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
    result = sub_251BFB9C4(v111, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
    if ((a4 & 1) == 0)
    {
LABEL_85:
      v13 = v140 + 1;
      v106 = v139 + v134;
      v107 = v138 - 1;
      v108 = v137 + v134;
      v8 = v136;
      if (v140 + 1 != v136)
      {
        goto LABEL_86;
      }

      v5 = v129;
      a3 = v132;
      v13 = v128;
      if (v136 < v133)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    v120 = v151;
    if (!v142)
    {
      break;
    }

    a4 = type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData;
    v121 = v143;
    sub_251BFBAA4(v109, v143, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
    swift_arrayInitWithTakeFrontToBack();
    sub_251BFBAA4(v121, v106, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
    v106 += v141;
    v109 += v141;
    v122 = __CFADD__(v120, 1);
    v110 = v120 + 1;
    if (v122)
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_251BFA434(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v67 = a4;
  v64 = sub_251C70014();
  v7 = *(v64 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v64);
  v63 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v53 - v11;
  v60 = type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData(0);
  v12 = *(*(v60 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v60);
  v61 = (&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v13);
  v66 = (&v53 - v16);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_61;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_62;
  }

  v20 = (a2 - a1) / v18;
  v70 = a1;
  v69 = v67;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (v67 < a2 || a2 + v22 <= v67)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v67 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = v67 + v22;
    if (v22 >= 1)
    {
      v37 = -v18;
      v55 = (v7 + 8);
      v56 = a1;
      v38 = v67 + v22;
      v57 = v37;
      do
      {
        v53 = v36;
        v39 = a2;
        v40 = a2 + v37;
        v58 = v39;
        v59 = v40;
        while (1)
        {
          if (v39 <= a1)
          {
            v70 = v39;
            v68 = v53;
            goto LABEL_59;
          }

          v42 = a3;
          v54 = v36;
          v65 = a3 + v37;
          v43 = v38 + v37;
          v44 = v66;
          sub_251BFB8EC(v43, v66, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
          v45 = v61;
          sub_251BFB8EC(v40, v61, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
          v46 = [*v44 endDate];
          v47 = v62;
          sub_251C6FFE4();

          v48 = [*v45 endDate];
          v49 = v63;
          sub_251C6FFE4();

          LOBYTE(v48) = sub_251C6FFB4();
          v50 = *v55;
          v51 = v49;
          v52 = v64;
          (*v55)(v51, v64);
          v50(v47, v52);
          sub_251BFB9C4(v45, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
          sub_251BFB9C4(v66, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
          if (v48)
          {
            break;
          }

          v36 = v43;
          a3 = v65;
          if (v42 < v38 || v65 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
            v40 = v59;
            a1 = v56;
          }

          else
          {
            v40 = v59;
            a1 = v56;
            if (v42 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v38 = v43;
          v41 = v43 > v67;
          v37 = v57;
          v39 = v58;
          if (!v41)
          {
            a2 = v58;
            goto LABEL_58;
          }
        }

        a3 = v65;
        if (v42 < v58 || v65 >= v58)
        {
          a2 = v59;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v56;
          v37 = v57;
          v36 = v54;
        }

        else
        {
          a2 = v59;
          a1 = v56;
          v37 = v57;
          v36 = v54;
          if (v42 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v38 > v67);
    }

LABEL_58:
    v70 = a2;
    v68 = v36;
  }

  else
  {
    v21 = v20 * v18;
    if (v67 < a1 || a1 + v21 <= v67)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v67 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v59 = v67 + v21;
    v68 = v67 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      v57 = v18;
      v58 = (v7 + 8);
      v65 = a3;
      do
      {
        v24 = v66;
        sub_251BFB8EC(a2, v66, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
        v25 = v61;
        sub_251BFB8EC(v67, v61, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
        v26 = [*v24 endDate];
        v27 = v62;
        sub_251C6FFE4();

        v28 = [*v25 endDate];
        v29 = v63;
        sub_251C6FFE4();

        LOBYTE(v28) = sub_251C6FFB4();
        v30 = *v58;
        v31 = v29;
        v32 = v64;
        (*v58)(v31, v64);
        v30(v27, v32);
        sub_251BFB9C4(v25, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
        sub_251BFB9C4(v24, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
        if (v28)
        {
          v33 = v57;
          if (a1 < a2 || a1 >= a2 + v57)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v33;
            v34 = v65;
          }

          else
          {
            v34 = v65;
            if (a1 == a2)
            {
              a2 += v57;
            }

            else
            {
              swift_arrayInitWithTakeBackToFront();
              a2 += v33;
            }
          }
        }

        else
        {
          v33 = v57;
          v35 = v67 + v57;
          if (a1 < v67 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v65;
          }

          else
          {
            v34 = v65;
            if (a1 != v67)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v69 = v35;
          v67 = v35;
        }

        a1 += v33;
        v70 = a1;
      }

      while (v67 < v59 && a2 < v34);
    }
  }

LABEL_59:
  sub_251BFAC10(&v70, &v69, &v68, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
  return 1;
}

uint64_t sub_251BFAB58(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_251BFABE4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_251BFAC10(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_251BFACF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_251BFBB0C();
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

uint64_t sub_251BFAE40(uint64_t a1)
{
  v2 = sub_251C70074();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_251BFC204(&qword_2813E74E0, MEMORY[0x277CC95F0]);
  result = MEMORY[0x25308D030](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_251BF5298(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_251BFAFDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingElectrocardiogramQuery(0) - 8);
  result = sub_251BF33B0(*a1, *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)));
  *a2 = result;
  return result;
}

void sub_251BFB07C()
{
  if (!qword_27F47C188)
  {
    sub_251A821D4();
    sub_251BFC204(&qword_27F47C190, sub_251A821D4);
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C188);
    }
  }
}

void sub_251BFB12C()
{
  if (!qword_27F47C198)
  {
    sub_251BF521C(255, &qword_27F47C1A0, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData, MEMORY[0x277CBCD88]);
    sub_251BFB258();
    sub_251BFB314(&qword_27F47C1B8, &qword_27F47C1A0, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
    sub_251BFC204(&qword_27F47C1C0, sub_251BFB258);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C198);
    }
  }
}

void sub_251BFB258()
{
  if (!qword_27F47C1A8)
  {
    sub_251BFB07C();
    sub_251A82284();
    sub_251BFC204(&qword_27F47C1B0, sub_251BFB07C);
    v0 = sub_251C707E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C1A8);
    }
  }
}

uint64_t sub_251BFB314(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_251BF521C(255, a2, a3, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251BFB378()
{
  if (!qword_27F47C1C8)
  {
    sub_251BFB12C();
    sub_251BFC204(&qword_27F47C1D0, sub_251BFB12C);
    v0 = sub_251C708C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C1C8);
    }
  }
}

void sub_251BFB40C()
{
  if (!qword_27F47C1D8)
  {
    sub_251BFB378();
    type metadata accessor for ClinicalSharingQueryOutput(255);
    sub_251BFC204(&qword_27F47C1E0, sub_251BFB378);
    v0 = sub_251C70784();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C1D8);
    }
  }
}

uint64_t objectdestroyTm_8()
{
  v1 = (type metadata accessor for ClinicalSharingElectrocardiogramQuery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[7];
  v8 = sub_251C6FAE4();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

void sub_251BFB5CC(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingElectrocardiogramQuery(0) - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_251BF39D8(a1, a2);
}

uint64_t sub_251BFB678@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingElectrocardiogramQuery(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_251BF3B1C(*a1, a2);
}

void sub_251BFB6EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251BFB750()
{
  if (!qword_27F47C1F0)
  {
    sub_251C70074();
    sub_251BFC204(&qword_2813E74E0, MEMORY[0x277CC95F0]);
    v0 = sub_251C71684();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C1F0);
    }
  }
}

void sub_251BFB7E4()
{
  if (!qword_27F47C1F8)
  {
    sub_251C70074();
    sub_251BFB858();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47C1F8);
    }
  }
}

void sub_251BFB858()
{
  if (!qword_2813E1DF0)
  {
    sub_251C702E4();
    sub_251BFC204(&qword_2813E74C0, MEMORY[0x277D11300]);
    v0 = sub_251C71294();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1DF0);
    }
  }
}

uint64_t sub_251BFB8EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BFB954(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251BFB6EC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251BFB9C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251BFBA24(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251BFB6EC(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251BFBAA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_251BFBB0C()
{
  if (!qword_27F47C200)
  {
    sub_251BFBF64(255, &qword_27F47C208, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    v0 = sub_251C719B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C200);
    }
  }
}

void sub_251BFBB90()
{
  if (!qword_27F47C220)
  {
    sub_251BFBC3C();
    type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData(255);
    sub_251BFC204(&qword_27F47C230, sub_251BFBC3C);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C220);
    }
  }
}

void sub_251BFBC3C()
{
  if (!qword_27F47C228)
  {
    sub_251B0E638(255, &qword_2813E1E38, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
    sub_251A82284();
    v0 = sub_251C70974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C228);
    }
  }
}

unint64_t sub_251BFBCD0()
{
  result = qword_27F47C238;
  if (!qword_27F47C238)
  {
    sub_251BF521C(255, &qword_27F47C218, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C238);
  }

  return result;
}

void sub_251BFBD58(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingElectrocardiogramQuery(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_251BF4978(a1, v2 + v6, v7, a2);
}

uint64_t sub_251BFBE04(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_251BFBFB8();
  result = MEMORY[0x25308D030](v2, &type metadata for ClinicalSharingNodeMetadata, v3);
  v13 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      sub_251A858C4(v7, v6);
      sub_251BF59A8(v12, v9, v8, v7, v6);
      v10 = v12[2];
      v11 = v12[3];

      sub_251A83028(v10, v11);
      v5 += 4;
      --v2;
    }

    while (v2);
    return v13;
  }

  return result;
}

uint64_t sub_251BFBECC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25308D030](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_251BF5858(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_251BFBF64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_251BFBFB8()
{
  result = qword_2813E37C0;
  if (!qword_2813E37C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E37C0);
  }

  return result;
}

void sub_251BFC00C()
{
  if (!qword_27F47C250)
  {
    sub_251BFBFB8();
    v0 = sub_251C71684();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C250);
    }
  }
}

uint64_t sub_251BFC068(uint64_t a1)
{
  v2 = sub_251C701C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_251BFC204(&qword_27F47A048, MEMORY[0x277CC99D0]);
  result = MEMORY[0x25308D030](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_251BF5EFC(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_251BFC204(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *__swift_store_extra_inhabitant_indexTm_1(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_251BFC3CC()
{
  result = sub_251A8223C(319, &qword_27F47C268, 0x277CCD378);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PBECGMeasurement(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_251BFC488(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, unint64_t a6, uint64_t a7, unint64_t a8, char *a9, char *a10)
{
  v228 = a8;
  v226 = a7;
  v231 = a6;
  v227 = a5;
  v234 = a3;
  v235 = a4;
  v192 = a2;
  v191 = a1;
  sub_251BFDF78(0, &qword_27F47C270, MEMORY[0x277CC5408]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v195 = &v188 - v12;
  v190 = sub_251C70D84();
  v189 = *(v190 - 8);
  v13 = *(v189 + 64);
  MEMORY[0x28223BE20](v190);
  v196 = &v188 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_251C70D54();
  v221 = *(v222 - 8);
  v15 = *(v221 + 64);
  v16 = MEMORY[0x28223BE20](v222);
  v198 = &v188 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v220 = &v188 - v18;
  v19 = sub_251C70D14();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v219 = &v188 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_251C70C94();
  v206 = *(v207 - 8);
  v22 = *(v206 + 64);
  MEMORY[0x28223BE20](v207);
  v229 = &v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_251C70DC4();
  v217 = *(v218 - 8);
  v24 = *(v217 + 64);
  MEMORY[0x28223BE20](v218);
  v216 = &v188 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for PBAssociatedData(0);
  v237 = *(v232 - 8);
  v26 = *(v237 + 64);
  v27 = MEMORY[0x28223BE20](v232);
  v215 = &v188 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v230 = &v188 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v188 - v32;
  MEMORY[0x28223BE20](v31);
  v212 = &v188 - v34;
  v210 = type metadata accessor for PBNode(0);
  v35 = *(*(v210 - 8) + 64);
  MEMORY[0x28223BE20](v210);
  v233 = &v188 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_251C70DA4();
  v193 = *(v194 - 8);
  v37 = *(v193 + 64);
  MEMORY[0x28223BE20](v194);
  v197 = &v188 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for PBPlainText;
  sub_251BFDF78(0, &qword_27F47C278, type metadata accessor for PBPlainText);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v200 = &v188 - v41;
  v225 = MEMORY[0x277CC53B0];
  sub_251BFDF78(0, &qword_27F47C280, MEMORY[0x277CC53B0]);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v213 = &v188 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v214 = &v188 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v209 = &v188 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v211 = &v188 - v51;
  MEMORY[0x28223BE20](v50);
  v53 = &v188 - v52;
  v54 = sub_251C70CF4();
  v238 = *(v54 - 8);
  v55 = *(v238 + 64);
  v56 = MEMORY[0x28223BE20](v54);
  v202 = &v188 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v201 = &v188 - v59;
  MEMORY[0x28223BE20](v58);
  v204 = &v188 - v60;
  v61 = type metadata accessor for PBPlainText(0);
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  v64 = MEMORY[0x28223BE20](v61);
  v199 = &v188 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v67 = &v188 - v66;
  v68 = type metadata accessor for PBPayload();
  v69 = *(*(v68 - 8) + 64);
  v70 = MEMORY[0x28223BE20](v68);
  v72 = (&v188 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  v236 = xmmword_251C745D0;
  *v72 = xmmword_251C745D0;
  v73 = v72 + *(v70 + 20);
  sub_251C703A4();
  v208 = v68;
  v74 = *(v68 + 24);
  v203 = v62;
  v75 = *(v62 + 56);
  v75(v72 + v74, 1, 1, v61);
  sub_251BFE1B8(v234, v67, type metadata accessor for PBPlainText);
  sub_251BFDEB4(v72 + v74, &qword_27F47C278, v224);
  v76 = v67;
  v77 = v54;
  v78 = v238;
  sub_251BFDF10(v76, v72 + v74, type metadata accessor for PBPlainText);
  v234 = v72;
  v79 = v72 + v74;
  v80 = v61;
  v75(v79, 0, 1, v61);
  sub_251BFDE48(v231, v53, &qword_27F47C280, v225);
  v81 = *(v78 + 48);
  v225 = (v78 + 48);
  v224 = v81;
  if ((v81)(v53, 1, v77) == 1)
  {
    sub_251BFDEB4(v53, &qword_27F47C280, MEMORY[0x277CC53B0]);
LABEL_10:
    v93 = v233;
    v94 = v77;
    goto LABEL_11;
  }

  v82 = v204;
  (*(v78 + 32))(v204, v53, v77);
  if (v235 != 1)
  {
    (*(v78 + 8))(v82, v77);
    goto LABEL_10;
  }

  v83 = v200;
  sub_251BFDE48(v234 + v74, v200, &qword_27F47C278, type metadata accessor for PBPlainText);
  v84 = v203 + 48;
  v85 = *(v203 + 48);
  v86 = v80;
  v87 = v85(v83, 1, v80);
  v88 = v233;
  if (v87 == 1)
  {
    v203 = v84;
    v89 = v77;
    v90 = v199;
    sub_251C703A4();
    v91 = *(v86 + 20);
    if (qword_27F478468 != -1)
    {
      swift_once();
    }

    *(v90 + v91) = qword_27F4794E0;
    v92 = v85(v83, 1, v86);

    v77 = v89;
    v78 = v238;
    v88 = v233;
    if (v92 != 1)
    {
      sub_251BFDEB4(v83, &qword_27F47C278, type metadata accessor for PBPlainText);
    }
  }

  else
  {
    v90 = v199;
    sub_251BFDF10(v83, v199, type metadata accessor for PBPlainText);
  }

  sub_251BFE220(&qword_27F479530, type metadata accessor for PBPlainText);
  v159 = v223;
  v161 = sub_251C70594();
  if (v159)
  {
    sub_251BFDFCC(v90, type metadata accessor for PBPlainText);
    (*(v78 + 8))(v82, v77);
    goto LABEL_24;
  }

  v166 = v160;
  v205 = v77;
  sub_251BFDFCC(v90, type metadata accessor for PBPlainText);
  v241 = v161;
  v242 = v166;
  sub_251BFE02C();
  v167 = v197;
  sub_251C70CE4();
  v223 = 0;
  v172 = sub_251C70D94();
  v173 = v167;
  v175 = v174;
  sub_251A83028(v161, v166);
  (*(v193 + 8))(v173, v194);
  v93 = v88;
  v94 = v205;
  (*(v78 + 8))(v204, v205);
  v176 = v234;
  sub_251A83028(*v234, v234[1]);
  *v176 = v172;
  v176[1] = v175;
LABEL_11:
  v95 = v215;
  v215 = a9;
  v96 = v236;
  *v93 = v236;
  *(v93 + 1) = v96;
  *(v93 + 4) = 0;
  v93[40] = 1;
  *(v93 + 6) = 0;
  v93[56] = 1;
  *(v93 + 8) = 0;
  *(v93 + 9) = 0xE000000000000000;
  v97 = v210;
  v98 = &v93[*(v210 + 36)];
  sub_251C703A4();
  v99 = *(v97 + 40);
  v100 = *(v237 + 56);
  v101 = v232;
  v237 += 56;
  v210 = v100;
  v100(&v93[v99], 1, 1, v232);
  v102 = v211;
  (*(v238 + 56))(v211, 1, 1, v94);
  v103 = v236;
  *(v33 + 1) = v236;
  *(v33 + 2) = v103;
  *(v33 + 8) = 0;
  v33[72] = 1;
  v104 = &v33[*(v101 + 36)];
  sub_251C703A4();
  v105 = v215;
  if (a10)
  {
    v106 = a10;
  }

  else
  {
    v105 = 0;
    v106 = 0xE000000000000000;
  }

  v204 = v105;
  *v33 = v105;
  *(v33 + 1) = v106;
  v203 = v106;
  v107 = *(v33 + 2);
  v108 = *(v33 + 3);
  v215 = a10;

  v109 = v226;
  v110 = v228;
  sub_251A858C4(v226, v228);
  sub_251A83028(v107, v108);
  *(v33 + 2) = v109;
  *(v33 + 3) = v110;
  v111 = v102;
  *(v33 + 6) = v235;
  v33[56] = v227 & 1;
  v112 = v209;
  sub_251BFDE48(v102, v209, &qword_27F47C280, MEMORY[0x277CC53B0]);
  v113 = (v224)(v112, 1, v94);
  v205 = v94;
  if (v113 == 1)
  {
    v114 = MEMORY[0x277CC53B0];
    sub_251BFDEB4(v102, &qword_27F47C280, MEMORY[0x277CC53B0]);
    sub_251BFDEB4(v112, &qword_27F47C280, v114);
  }

  else
  {
    v115 = v238;
    v116 = v201;
    (*(v238 + 32))(v201, v112, v94);
    v117 = v216;
    v118 = sub_251C70CA4();
    v209 = MEMORY[0x25308CB60](v118);
    v120 = v119;
    (*(v217 + 8))(v117, v218);
    (*(v115 + 8))(v116, v94);
    sub_251BFDEB4(v111, &qword_27F47C280, MEMORY[0x277CC53B0]);
    sub_251A83028(*(v33 + 4), *(v33 + 5));
    *(v33 + 4) = v209;
    *(v33 + 5) = v120;
  }

  v121 = v212;
  sub_251BFDF10(v33, v212, type metadata accessor for PBAssociatedData);
  v122 = v233;
  sub_251BFDEB4(&v233[v99], &qword_27F47B9A8, type metadata accessor for PBAssociatedData);
  sub_251BFDF10(v121, v122 + v99, type metadata accessor for PBAssociatedData);
  v123 = v122 + v99;
  v124 = v232;
  (v210)(v123, 0, 1, v232);
  v125 = MEMORY[0x277CC53B0];
  v126 = v214;
  sub_251BFDE48(v231, v214, &qword_27F47C280, MEMORY[0x277CC53B0]);
  v127 = v236;
  *(v95 + 16) = v236;
  *(v95 + 32) = v127;
  *(v95 + 64) = 0;
  *(v95 + 72) = 1;
  v128 = v95 + *(v124 + 36);
  sub_251C703A4();
  v129 = v203;
  *v95 = v204;
  *(v95 + 8) = v129;
  v130 = *(v95 + 16);
  v131 = *(v95 + 24);

  v132 = v226;
  v133 = v228;
  sub_251A858C4(v226, v228);
  sub_251A83028(v130, v131);
  *(v95 + 16) = v132;
  *(v95 + 24) = v133;
  *(v95 + 48) = v235;
  *(v95 + 56) = v227 & 1;
  v134 = v213;
  sub_251BFDE48(v126, v213, &qword_27F47C280, v125);
  v135 = v205;
  if ((v224)(v134, 1, v205) == 1)
  {
    v136 = MEMORY[0x277CC53B0];
    sub_251BFDEB4(v126, &qword_27F47C280, MEMORY[0x277CC53B0]);
    sub_251BFDEB4(v134, &qword_27F47C280, v136);
  }

  else
  {
    v137 = v238;
    v138 = v202;
    (*(v238 + 32))(v202, v134, v135);
    v139 = v216;
    v140 = sub_251C70CA4();
    v141 = MEMORY[0x25308CB60](v140);
    v143 = v142;
    (*(v217 + 8))(v139, v218);
    (*(v137 + 8))(v138, v135);
    sub_251BFDEB4(v126, &qword_27F47C280, MEMORY[0x277CC53B0]);
    sub_251A83028(*(v95 + 32), *(v95 + 40));
    *(v95 + 32) = v141;
    *(v95 + 40) = v143;
  }

  v144 = v222;
  sub_251BFDF10(v95, v230, type metadata accessor for PBAssociatedData);
  sub_251C70D04();
  sub_251C70C84();
  v145 = v220;
  sub_251C70D44();
  v243 = v144;
  v244 = sub_251BFE220(&qword_27F47C288, MEMORY[0x277CC5408]);
  v146 = __swift_allocate_boxed_opaque_existential_1(&v241);
  v147 = v221;
  v148 = *(v221 + 16);
  v148(v146, v145, v144);
  __swift_project_boxed_opaque_existential_1(&v241, v243);
  v149 = v223;
  sub_251C6FCE4();
  v86 = v149;
  v238 = *(v147 + 8);
  (v238)(v145, v144);
  v150 = v239;
  v151 = v240;
  __swift_destroy_boxed_opaque_existential_1(&v241);
  sub_251A83028(*v122, *(v122 + 8));
  *v122 = v150;
  *(v122 + 8) = v151;
  *(v122 + 48) = 1;
  *(v122 + 56) = 1;
  *(v122 + 32) = 2;
  *(v122 + 40) = 1;
  result = [objc_opt_self() currentOSVersion];
  if (result)
  {
    v153 = result;
    v154 = sub_251C70F14();
    v156 = v155;

    *(v122 + 64) = v154;
    *(v122 + 72) = v156;
    sub_251BFE220(&qword_27F47C290, type metadata accessor for PBPayload);
    v157 = sub_251C70594();
    if (!v149)
    {
      *&v236 = v157;
      v237 = v158;
      sub_251BFE220(&qword_27F47B968, type metadata accessor for PBAssociatedData);
      v162 = sub_251C70594();
      v164 = v163;
      v165 = *(v122 + 8);
      v241 = *v122;
      v242 = v165;
      sub_251A858C4(v241, v165);
      sub_251BFE02C();
      sub_251C70D34();
      v241 = v236;
      v242 = v237;
      v235 = v164;
      v168 = v195;
      v169 = v222;
      v148(v195, v198, v222);
      (*(v221 + 56))(v168, 0, 1, v169);
      v170 = v162;
      v239 = v162;
      v240 = v235;
      v171 = v196;
      sub_251C70D24();
      sub_251BFDEB4(v168, &qword_27F47C270, MEMORY[0x277CC5408]);
      v232 = 0;
      v177 = sub_251C70D64();
      v179 = v178;
      v180 = sub_251C70D74();
      v182 = v181;
      v239 = v177;
      v240 = v179;
      v243 = MEMORY[0x277CC9318];
      v244 = MEMORY[0x277CC9300];
      v241 = v180;
      v242 = v181;
      v183 = __swift_project_boxed_opaque_existential_1(&v241, MEMORY[0x277CC9318]);
      v184 = *v183;
      v231 = v183[1];
      sub_251A858C4(v177, v179);
      sub_251A858C4(v180, v182);
      sub_251BFE080(v184, v231);
      sub_251A83028(v180, v182);
      sub_251A83028(v177, v179);
      sub_251A83028(v170, v235);
      sub_251A83028(v236, v237);
      (*(v189 + 8))(v171, v190);
      (v238)(v198, v222);
      __swift_destroy_boxed_opaque_existential_1(&v241);
      v185 = v239;
      v186 = v240;
      sub_251A83028(*(v122 + 16), *(v122 + 24));
      *(v122 + 16) = v185;
      *(v122 + 24) = v186;
      sub_251BFE1B8(v122, v191, type metadata accessor for PBNode);
      (*(v206 + 32))(v192, v229, v207);
      v187 = v230;
      v86 = *(v230 + 32);
      sub_251A858C4(v86, *(v230 + 40));
      sub_251BFDFCC(v187, type metadata accessor for PBAssociatedData);
      sub_251BFDFCC(v122, type metadata accessor for PBNode);
      sub_251BFDFCC(v234, type metadata accessor for PBPayload);
      return v86;
    }

    (*(v206 + 8))(v229, v207);
    sub_251BFDFCC(v230, type metadata accessor for PBAssociatedData);
    sub_251BFDFCC(v122, type metadata accessor for PBNode);
LABEL_24:
    sub_251BFDFCC(v234, type metadata accessor for PBPayload);
    return v86;
  }

  __break(1u);
  return result;
}

uint64_t sub_251BFDE48(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_251BFDF78(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251BFDEB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251BFDF78(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251BFDF10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_251BFDF78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251BFDFCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_251BFE02C()
{
  result = qword_27F47C298;
  if (!qword_27F47C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C298);
  }

  return result;
}

uint64_t sub_251BFE080(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_251C6FEB4();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_251BFE268(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_251BFE1B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BFE220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251BFE268(uint64_t a1, uint64_t a2)
{
  result = sub_251C6FB74();
  if (!result || (result = sub_251C6FBA4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_251C6FB94();
      return sub_251C6FEB4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_251BFE2FC(uint64_t a1, uint64_t a2)
{
  sub_251C00204();
  v5 = *(v4 - 8);
  v29 = v4;
  v30 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C002B4();
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C0039C();
  v34 = v14;
  v36 = *(v14 - 8);
  v15 = *(v36 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C00488();
  v35 = v18;
  v37 = *(v18 - 8);
  v19 = *(v37 + 64);
  MEMORY[0x28223BE20](v18);
  v31 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_251C5DDD8(*(a1 + 56));
  sub_251BFB858();
  sub_251BFF324(&qword_27F47C330, sub_251BFB858);
  sub_251C710D4();

  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;

  sub_251C70964();
  sub_251BFFCA8();
  sub_251BFF324(&qword_27F47C348, sub_251C00204);
  sub_251BFF324(&qword_27F47C340, sub_251BFFCA8);
  v22 = v29;
  sub_251C70BE4();

  (*(v30 + 8))(v8, v22);
  v38 = sub_251C013B4(a1);
  sub_251BFFD58();
  sub_251BFF324(&qword_27F47C358, sub_251C002B4);
  sub_251BFF324(&qword_27F47C2E0, sub_251BFFD58);
  v23 = v32;
  sub_251C70B34();

  (*(v33 + 8))(v13, v23);
  v38 = sub_251C018DC(a1);
  sub_251BFF324(&qword_27F47C368, sub_251C0039C);
  v24 = v31;
  v25 = v34;
  sub_251C70B34();

  (*(v36 + 8))(v17, v25);
  sub_251BFF324(&qword_27F47C370, sub_251C00488);
  v26 = v35;
  v27 = sub_251C70A94();
  (*(v37 + 8))(v24, v26);
  return v27;
}

uint64_t sub_251BFE854(uint64_t a1, uint64_t a2)
{
  sub_251C01210(a1, a2);
  sub_251BFFD58();
  sub_251BFF324(&qword_27F47C2E0, sub_251BFFD58);
  sub_251C710D4();
}

uint64_t sub_251BFE8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_251BFFCA8();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BFFDC0();
  v25 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BFFF5C();
  v26 = *(v17 - 8);
  v27 = v17;
  v18 = *(v26 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_251C097D4(a1, a2);
  sub_251BFFD58();
  sub_251BFF324(&qword_27F47C2E0, sub_251BFFD58);
  sub_251C710D4();

  sub_251AA10B4();
  sub_251C708F4();
  result = (*(v8 + 8))(v11, v7);
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_251BFF324(&qword_27F47C310, sub_251BFFDC0);
    sub_251BFF324(&qword_2813E21C8, sub_251AA10B4);
    v22 = v25;
    sub_251C70BD4();
    (*(v13 + 8))(v16, v22);
    sub_251BFF324(&qword_27F47C320, sub_251BFFF5C);
    v23 = v27;
    v24 = sub_251C70A94();
    (*(v26 + 8))(v20, v23);
    return v24;
  }

  return result;
}

uint64_t sub_251BFEC98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_251BFECFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  sub_251BFF0F8();
  v5 = *(v4 - 8);
  v32 = v4;
  v33 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BFF18C();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BFF238();
  v16 = *(v15 - 8);
  v30 = v15;
  v31 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_251C4BE0C(MEMORY[0x277D84F90]);
  v34 = a1;
  sub_251AA10B4();
  type metadata accessor for ClinicalSharingQueryOutput(0);
  sub_251BFF324(&qword_2813E21C8, sub_251AA10B4);

  sub_251C70AE4();

  v21 = swift_allocObject();
  v22 = v29;
  v21[2] = v28;
  v21[3] = v22;
  v21[4] = v20;

  sub_251C70A74();
  sub_251BFF324(&qword_27F47C2B8, sub_251BFF18C);
  sub_251BFF324(&qword_27F47C2C0, sub_251BFF0F8);
  v23 = v32;
  sub_251C70B44();
  (*(v33 + 8))(v8, v23);
  (*(v11 + 8))(v14, v10);
  sub_251BFF324(&qword_27F47C2C8, sub_251BFF238);
  v24 = v30;
  v25 = sub_251C70A94();
  (*(v31 + 8))(v19, v24);

  return v25;
}

void sub_251BFF0F8()
{
  if (!qword_27F47C2A0)
  {
    sub_251AA10B4();
    sub_251BFF324(&qword_2813E21C8, sub_251AA10B4);
    v0 = sub_251C70A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C2A0);
    }
  }
}

void sub_251BFF18C()
{
  if (!qword_27F47C2A8)
  {
    sub_251AA10B4();
    type metadata accessor for ClinicalSharingQueryOutput(255);
    sub_251BFF324(&qword_2813E21C8, sub_251AA10B4);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C2A8);
    }
  }
}

void sub_251BFF238()
{
  if (!qword_27F47C2B0)
  {
    sub_251BFF18C();
    sub_251BFF0F8();
    sub_251BFF324(&qword_27F47C2B8, sub_251BFF18C);
    sub_251BFF324(&qword_27F47C2C0, sub_251BFF0F8);
    v0 = sub_251C70794();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C2B0);
    }
  }
}

uint64_t sub_251BFF324(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251BFF36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1 + *(type metadata accessor for ClinicalSharingQueryOutput(0) + 24);
  v8 = *v7;
  if (*v7)
  {
    v9 = *(v7 + 8);
    swift_beginAccess();
    sub_251C00178(v8);
    v10 = v8;
    v11 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    v14 = sub_251AC8CD0(v10);
    v16 = v13[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      __break(1u);
    }

    else
    {
      v3 = v15;
      if (v13[3] < v19)
      {
        sub_251ACC4DC(v19, isUniquelyReferenced_nonNull_native);
        v14 = sub_251AC8CD0(v10);
        if ((v3 & 1) == (v20 & 1))
        {
          goto LABEL_7;
        }

        sub_251C001B8();
        v14 = sub_251C71A14();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_7:
        *(a2 + 16) = v13;
        if (v3)
        {
LABEL_9:
          v23 = v13[7] + 8 * v14;

          sub_251BFF954(v24, sub_251C39860, MEMORY[0x277CC88A8]);
          swift_endAccess();

          v8 = sub_251BFF54C;
          goto LABEL_10;
        }

LABEL_8:
        v21 = v14;
        sub_251ACDA84(v14, v10, MEMORY[0x277D84F90], v13);
        v22 = v10;
        v14 = v21;
        goto LABEL_9;
      }
    }

    v26 = v14;
    sub_251ACF4E4();
    v14 = v26;
    *(a2 + 16) = v13;
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  sub_251C00114(a1, a3);
  return sub_251A7EA4C(v8);
}

uint64_t sub_251BFF55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a3 + 16);

  v10 = sub_251BFE8EC(v9, a1, a2);

  *a4 = v10;
  return result;
}

void *sub_251BFF5D4(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_251C38F4C(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_251AA98B0(0, &qword_27F4791E8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_251BFF6E0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_251C38FD0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_251BFF85C(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_251C717F4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_251C717F4();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_251BFFBF4(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_251BFF954(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_251BFFA98(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v17 = v4 + v2;
  }

  else
  {
    v17 = v4;
  }

  v3 = sub_251C39A68(isUniquelyReferenced_nonNull_native, v17, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  sub_251BFFE70(0, &qword_27F4793C8, type metadata accessor for PBTypedData, MEMORY[0x277D83D88]);
  v11 = *(v10 - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v14 = v3[2];
  v15 = __OFADD__(v14, v2);
  v16 = v14 + v2;
  if (!v15)
  {
    v3[2] = v16;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_251BFFBF4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_251C717F4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_251C716C4();
  *v1 = result;
  return result;
}

void sub_251BFFCA8()
{
  if (!qword_27F47C2D0)
  {
    sub_251BFFD58();
    sub_251BFF324(&qword_27F47C2E0, sub_251BFFD58);
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C2D0);
    }
  }
}

void sub_251BFFD58()
{
  if (!qword_27F47C2D8)
  {
    sub_251AA98B0(255, &qword_27F4791E8);
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C2D8);
    }
  }
}

void sub_251BFFDC0()
{
  if (!qword_27F47C2E8)
  {
    sub_251BFFE70(255, &qword_27F47C2F0, sub_251AA10B4, MEMORY[0x277D83940]);
    sub_251BFFED4();
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C2E8);
    }
  }
}

void sub_251BFFE70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251BFFED4()
{
  result = qword_27F47C2F8;
  if (!qword_27F47C2F8)
  {
    sub_251BFFE70(255, &qword_27F47C2F0, sub_251AA10B4, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C2F8);
  }

  return result;
}

void sub_251BFFF5C()
{
  if (!qword_27F47C300)
  {
    sub_251AA10B4();
    sub_251C00048();
    sub_251BFF324(&qword_2813E21C8, sub_251AA10B4);
    sub_251BFF324(&qword_27F47C318, sub_251C00048);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C300);
    }
  }
}

void sub_251C00048()
{
  if (!qword_27F47C308)
  {
    sub_251BFFDC0();
    sub_251AA98B0(255, &qword_2813E1C30);
    sub_251BFF324(&qword_27F47C310, sub_251BFFDC0);
    v0 = sub_251C707E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C308);
    }
  }
}

uint64_t sub_251C00114(uint64_t a1, uint64_t a2)
{
  Output = type metadata accessor for ClinicalSharingQueryOutput(0);
  (*(*(Output - 8) + 16))(a2, a1, Output);
  return a2;
}

void *sub_251C00178(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

unint64_t sub_251C001B8()
{
  result = qword_27F479680;
  if (!qword_27F479680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479680);
  }

  return result;
}

void sub_251C00204()
{
  if (!qword_27F47C328)
  {
    sub_251BFB858();
    sub_251BFF324(&qword_27F47C330, sub_251BFB858);
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C328);
    }
  }
}

void sub_251C002B4()
{
  if (!qword_27F47C338)
  {
    sub_251BFFCA8();
    sub_251C00204();
    sub_251BFF324(&qword_27F47C340, sub_251BFFCA8);
    sub_251BFF324(&qword_27F47C348, sub_251C00204);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C338);
    }
  }
}

void sub_251C0039C()
{
  if (!qword_27F47C350)
  {
    sub_251C002B4();
    sub_251BFFCA8();
    sub_251BFF324(&qword_27F47C358, sub_251C002B4);
    sub_251BFF324(&qword_27F47C340, sub_251BFFCA8);
    v0 = sub_251C70794();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C350);
    }
  }
}

void sub_251C00488()
{
  if (!qword_27F47C360)
  {
    sub_251C0039C();
    sub_251BFFCA8();
    sub_251BFF324(&qword_27F47C368, sub_251C0039C);
    sub_251BFF324(&qword_27F47C340, sub_251BFFCA8);
    v0 = sub_251C70794();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C360);
    }
  }
}

uint64_t sub_251C00584(uint64_t a1, id a2)
{
  v2 = a2;
  if (a1)
  {

    return a1;
  }

  else if (!a2)
  {
    sub_251AC6624();
    v2 = swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 2;
  }

  return v2;
}

void sub_251C005F8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = sub_251AD96B8;
  v7[4] = v6;
  v8 = objc_allocWithZone(MEMORY[0x277D11968]);
  v12[4] = sub_251C007CC;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_251BBFA94;
  v12[3] = &block_descriptor_18;
  v9 = _Block_copy(v12);

  v10 = a3;
  v11 = [v8 initWithUpdateHandler_];
  _Block_release(v9);

  [v10 executeQuery_];
}

void sub_251C00740(uint64_t a1, void *a2, void *a3, id a4, void (*a5)(void *, void))
{
  [a4 stopQuery_];
  v8 = a2;
  v9 = a3;
  v10 = sub_251C00584(a2, a3);
  a5(v10, v11 & 1);

  sub_251BBFB4C(v10);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_251C007F0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_251C0A950(0, &qword_27F47C380, type metadata accessor for ClinicalSharingCycleTrackingQuery, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ClinicalSharingCycleTrackingQuery();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v32 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v30 = &v26 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = *(sub_251C70074() - 8);
  v27 = v12;
  v19 = (v12 + 48);
  v20 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v31 = *(v18 + 72);
  v21 = MEMORY[0x277D84F90];
  v28 = v11;
  v29 = a2;
  while (1)
  {
    a1(v20);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_251C0A3AC(v10, &qword_27F47C380, type metadata accessor for ClinicalSharingCycleTrackingQuery);
    }

    else
    {
      v22 = v30;
      sub_251C0A9B4(v10, v30, type metadata accessor for ClinicalSharingCycleTrackingQuery);
      sub_251C0A9B4(v22, v32, type metadata accessor for ClinicalSharingCycleTrackingQuery);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_251C38F18(0, v21[2] + 1, 1, v21);
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_251C38F18(v23 > 1, v24 + 1, 1, v21);
      }

      v21[2] = v24 + 1;
      sub_251C0A9B4(v32, v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, type metadata accessor for ClinicalSharingCycleTrackingQuery);
      v11 = v28;
    }

    v20 += v31;
    if (!--v17)
    {
      return v21;
    }
  }

  return v21;
}

char *sub_251C00B3C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  sub_251C0A950(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_251C70014();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v33 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = *(type metadata accessor for PBClinicalRecord(0) - 8);
  v27 = v11;
  v31 = (v11 + 32);
  v32 = (v11 + 48);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = *(v17 + 72);
  v34 = MEMORY[0x277D84F90];
  v28 = v10;
  v29 = a1;
  v26 = v19;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v32)(v9, 1, v10) == 1)
    {
      sub_251C0A3AC(v9, &qword_2813E7500, MEMORY[0x277CC9578]);
    }

    else
    {
      v20 = v30;
      v21 = *v31;
      (*v31)(v30, v9, v10);
      v21(v33, v20, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_251C38F9C(0, *(v34 + 2) + 1, 1, v34);
      }

      v23 = *(v34 + 2);
      v22 = *(v34 + 3);
      if (v23 >= v22 >> 1)
      {
        v34 = sub_251C38F9C(v22 > 1, v23 + 1, 1, v34);
      }

      v24 = v34;
      *(v34 + 2) = v23 + 1;
      v10 = v28;
      v21(&v24[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v33, v28);
      a1 = v29;
      v19 = v26;
    }

    v18 += v19;
    if (!--v16)
    {
      return v34;
    }
  }

  return v34;
}

void *sub_251C00E98(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v33 = a1;
  sub_251C0A950(0, &qword_27F47C390, type metadata accessor for PBTimeSeries.Value, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - v7;
  v32 = type metadata accessor for PBTimeSeries.Value(0);
  v27 = *(v32 - 8);
  v9 = *(v27 + 64);
  v10 = MEMORY[0x28223BE20](v32);
  v31 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v26 = &v24 - v12;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v14 = 0;
    v29 = a3 & 0xFFFFFFFFFFFFFF8;
    v30 = a3 & 0xC000000000000001;
    v15 = (v27 + 48);
    v16 = MEMORY[0x277D84F90];
    v25 = a3;
    v28 = i;
    while (1)
    {
      if (v30)
      {
        v17 = MEMORY[0x25308D460](v14, a3);
      }

      else
      {
        if (v14 >= *(v29 + 16))
        {
          goto LABEL_20;
        }

        v17 = *(a3 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v34 = v17;
      v33(&v34);
      if (v3)
      {

        return v16;
      }

      if ((*v15)(v8, 1, v32) == 1)
      {
        sub_251C0A3AC(v8, &qword_27F47C390, type metadata accessor for PBTimeSeries.Value);
      }

      else
      {
        v20 = v26;
        sub_251C0A9B4(v8, v26, type metadata accessor for PBTimeSeries.Value);
        sub_251C0A9B4(v20, v31, type metadata accessor for PBTimeSeries.Value);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_251C39114(0, v16[2] + 1, 1, v16);
        }

        v22 = v16[2];
        v21 = v16[3];
        if (v22 >= v21 >> 1)
        {
          v16 = sub_251C39114(v21 > 1, v22 + 1, 1, v16);
        }

        v16[2] = v22 + 1;
        sub_251C0A9B4(v31, v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, type metadata accessor for PBTimeSeries.Value);
        a3 = v25;
      }

      ++v14;
      if (v19 == v28)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_251C01210(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C702E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a2 + 56);
  v15 = a1;
  v10 = MEMORY[0x277D84F90];
  v11 = *(sub_251BF1DA0(MEMORY[0x277D84F90], sub_251BFC46C, v14, v9) + 16);

  if (v11)
  {
    (*(v5 + 16))(v8, a1, v4);
    if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D112F0])
    {
      (*(v5 + 96))(v8, v4);
      v12 = *v8;
      v10 = sub_251C01FD8(*v8, a2);
    }

    else
    {
      (*(v5 + 8))(v8, v4);
    }
  }

  return v10;
}

uint64_t sub_251C013B4(uint64_t a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_251C0A950(0, &qword_27F4793D8, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v37 - v5;
  sub_251C0A950(0, &qword_27F4793E0, MEMORY[0x277CC99E8], v2);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - v9;
  v11 = sub_251C6FC94();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_251C6FAE4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_251C701E4();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  v22 = sub_251C70244();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  LOBYTE(v36) = 1;
  v35 = 0;
  v34 = 1;
  v33 = 0;
  sub_251C6FC74();
  sub_251C6FC24();

  sub_251AFB288(v15, 8u, 0, v20);
  result = (*(v12 + 8))(v15, v11);
  v24 = *(a1 + 56);
  v25 = *(v24 + 16);
  if (!v25)
  {
    v26 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v38 = v17;
  v39 = v16;
  v40 = a1;
  v26 = sub_251C39C90(v25, 0);
  v27 = *(sub_251C70074() - 8);
  v28 = sub_251C0A08C(&v41, (v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80))), v25, v24);

  result = sub_251AD20D8();
  if (v28 == v25)
  {
    v16 = v39;
    a1 = v40;
    v17 = v38;
LABEL_5:
    MEMORY[0x28223BE20](result);
    v35 = a1;
    v36 = v20;
    v29 = sub_251C007F0(sub_251C0A330, &v33, v26);

    sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_251C74800;
    *(v30 + 56) = &type metadata for ClinicalSharingPatientMetadataQuery;
    *(v30 + 64) = &off_2863F6F18;
    *(v30 + 32) = a1;
    v31 = sub_251C093BC(v29);

    v41 = v30;
    sub_251BFF5D4(v31);
    v32 = v41;
    (*(v17 + 8))(v20, v16);
    return v32;
  }

  __break(1u);
  return result;
}

uint64_t sub_251C018DC(uint64_t a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_251C0A950(0, &qword_27F4793D8, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v48 - v5;
  sub_251C0A950(0, &qword_27F4793E0, MEMORY[0x277CC99E8], v2);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v48 - v9;
  v11 = sub_251C6FC94();
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_251C6FAE4();
  v53 = *(v15 - 8);
  v54 = v15;
  v16 = *(v53 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for ClinicalSharingMedicationDoseEventQuery();
  v19 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_251C702E4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 56);
  (*(v23 + 104))(v26, *MEMORY[0x277D112F8], v22);
  v57 = v26;
  swift_retain_n();
  v28 = *(sub_251BF1DA0(MEMORY[0x277D84F90], sub_251BFC46C, v56, v27) + 16);

  (*(v23 + 8))(v26, v22);
  if (v28)
  {
    v49 = objc_opt_self();
    v50 = [v49 medicationUserDomainConceptTypeIdentifier];
    v29 = sub_251C701E4();
    (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
    v30 = sub_251C70244();
    (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
    sub_251C6FC74();
    sub_251C6FBE4();
    sub_251AFB288(v14, 8u, 0, v18);
    (*(v51 + 8))(v14, v52);
    sub_251A8223C(0, &qword_27F478D50, 0x277CCD8D8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = [ObjCClassFromMetadata medicationDoseEventType];
    *v21 = a1;
    *(v21 + 1) = v32;
    v33 = v54;
    v34 = v55;
    v35 = v53;
    (*(v53 + 16))(&v21[*(v55 + 28)], v18, v54);
    v36 = &v21[*(v34 + 32)];
    *v36 = 2;
    v36[8] = 1;
    v37 = [v32 code];
    (*(v35 + 8))(v18, v33);
    if (v37 == 144)
    {
      v38 = 10;
    }

    else
    {
      v38 = 300;
    }

    *(v21 + 2) = v38;
    v39 = [v49 medicationUserDomainConceptTypeIdentifier];
    v40 = [ObjCClassFromMetadata medicationDoseEventType];
    v41 = [v40 code];

    if (v41 == 144)
    {
      v42 = 10;
    }

    else
    {
      v42 = 300;
    }

    sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_251C763E0;
    *(v43 + 56) = &type metadata for ClinicalSharingMedicationTrackingQuery;
    *(v43 + 64) = &off_2863FDB48;
    v44 = v50;
    *(v43 + 32) = a1;
    *(v43 + 40) = v44;
    *(v43 + 96) = v34;
    *(v43 + 104) = &off_2863FF488;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v43 + 72));
    sub_251C0A854(v21, boxed_opaque_existential_1, type metadata accessor for ClinicalSharingMedicationDoseEventQuery);
    *(v43 + 136) = &type metadata for ClinicalSharingMedicationScheduleQuery;
    *(v43 + 144) = &off_2863F6FE0;
    v46 = swift_allocObject();
    *(v43 + 112) = v46;
    v46[2] = a1;
    v46[3] = v40;
    v46[4] = v42;
    v46[5] = v39;
    *(v43 + 176) = &type metadata for ClinicalSharingActiveMedicationQuery;
    *(v43 + 184) = &off_2863FC168;
    *(v43 + 152) = a1;
    sub_251C0A34C(v21, type metadata accessor for ClinicalSharingMedicationDoseEventQuery);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v43;
}

uint64_t sub_251C01FD8(void *a1, uint64_t a2)
{
  v4 = sub_251C6FAE4();
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_251C0A950(0, &qword_27F4793D8, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v54 - v11;
  sub_251C0A950(0, &qword_27F4793E0, MEMORY[0x277CC99E8], v8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v54 - v15;
  v17 = sub_251C6FC94();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a1 code];
  if (v22 == 80)
  {
    sub_251A8223C(0, &qword_27F4797C0, 0x277CCD830);
    v46 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC980]);
    v47 = sub_251C02804(v46, a2);

    v48 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC978]);
    v49 = sub_251C02804(v48, a2);

    v55 = v47;
    sub_251BFF5D4(v49);
    return v55;
  }

  else if (v22 == 144)
  {
    sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_251C74800;
    v35 = sub_251C701E4();
    (*(*(v35 - 8) + 56))(v16, 1, 1, v35);
    v36 = sub_251C70244();
    (*(*(v36 - 8) + 56))(v12, 1, 1, v36);

    sub_251C6FC74();
    sub_251C6FC24();
    sub_251AFB288(v21, 8u, 0, v7);
    (*(v18 + 8))(v21, v17);
    v37 = type metadata accessor for ClinicalSharingElectrocardiogramQuery(0);
    *(v34 + 56) = v37;
    *(v34 + 64) = &off_2863FCC40;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v34 + 32));
    v39 = v37[8];
    sub_251A8223C(0, &qword_27F47C170, 0x277CCD3A8);
    v40 = [swift_getObjCClassFromMetadata() electrocardiogramType];
    *(boxed_opaque_existential_1 + v39) = v40;
    v41 = v37[9];
    *(boxed_opaque_existential_1 + v41) = [objc_opt_self() voltUnitWithMetricPrefix_];
    *boxed_opaque_existential_1 = a2;
    v42 = v54;
    (*(v54 + 16))(boxed_opaque_existential_1 + v37[5], v7, v4);
    v43 = [v40 code];
    (*(v42 + 8))(v7, v4);
    result = v34;
    v44 = 300;
    if (v43 == 144)
    {
      v44 = 10;
    }

    *(boxed_opaque_existential_1 + v37[6]) = v44;
    v45 = (boxed_opaque_existential_1 + v37[7]);
    *v45 = xmmword_251C86460;
    v45[1] = vdupq_n_s64(5uLL);
  }

  else if (v22 == 100)
  {
    sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_251C74800;
    v24 = sub_251C701E4();
    (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
    v25 = sub_251C70244();
    (*(*(v25 - 8) + 56))(v12, 1, 1, v25);

    sub_251C6FC74();
    sub_251C6FC24();
    v26 = type metadata accessor for ClinicalSharingActivitySummaryQuery();
    *(v23 + 56) = v26;
    *(v23 + 64) = &off_2863FB488;
    v27 = __swift_allocate_boxed_opaque_existential_1((v23 + 32));
    sub_251AFB288(v21, 8u, 0, v27 + v26[5]);
    (*(v18 + 8))(v21, v17);
    *v27 = a2;
    v28 = v26[6];
    v29 = objc_opt_self();
    *(v27 + v28) = [v29 countUnit];
    v30 = v26[7];
    *(v27 + v30) = [v29 kilocalorieUnit];
    v31 = v26[8];
    v32 = [v29 minuteUnit];
    result = v23;
    *(v27 + v31) = v32;
  }

  else
  {
    objc_opt_self();
    v50 = swift_dynamicCastObjCClass();
    if (v50)
    {
      v51 = v50;
      v52 = a1;
      v53 = sub_251C02804(v51, a2);

      return v53;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_251C02804(void *a1, uint64_t a2)
{
  v541 = a2;
  v538 = sub_251C6FAE4();
  v542 = *(v538 - 8);
  v3 = *(v542 + 64);
  MEMORY[0x28223BE20](v538);
  v535 = &v515 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_251C0A950(0, &qword_27F4793D8, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v515 - v8;
  sub_251C0A950(0, &qword_27F4793E0, MEMORY[0x277CC99E8], v5);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v540 = &v515 - v12;
  v13 = sub_251C6FC94();
  v543 = *(v13 - 1);
  v14 = *(v543 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v532 = &v515 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v531 = &v515 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v515 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v515 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v515 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v515 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v515 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v515 - v35;
  MEMORY[0x28223BE20](v34);
  v536 = &v515 - v37;
  v534 = a1;
  v38 = [a1 code];
  v39 = MEMORY[0x277D84F90];
  switch(v38)
  {
    case 0uLL:
    case 3uLL:
      v173 = MEMORY[0x277D84560];
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v174 = swift_allocObject();
      v539 = v13;
      v533 = v174;
      *(v174 + 16) = xmmword_251C76AF0;
      v531 = sub_251C701E4();
      v175 = *(v531 - 8);
      *&v530 = *(v175 + 56);
      v532 = v175 + 56;
      (v530)(v540, 1, 1, v531);
      v528 = sub_251C70244();
      v176 = *(v528 - 1);
      v527 = *(v176 + 56);
      v529 = (v176 + 56);
      (v527)(v9, 1, 1, v528);
      v177 = v536;
      sub_251C6FC74();
      v537 = v9;
      v178 = v541;
      sub_251C6FC24();
      swift_retain_n();
      v179 = v535;
      sub_251AFB288(v177, 0, 0, v535);
      sub_251C0A950(0, &qword_27F47C388, MEMORY[0x277CC88A8], v173);
      *&v523 = v180;
      v181 = v542;
      v522 = *(v542 + 72);
      v182 = (*(v542 + 80) + 32) & ~*(v542 + 80);
      v183 = swift_allocObject();
      v521 = xmmword_251C74800;
      *(v183 + 16) = xmmword_251C74800;
      v184 = *(v181 + 16);
      *&v525 = v181 + 16;
      v526 = v184;
      v185 = v538;
      v184(v183 + v182, v179, v538);
      v186 = v533;
      *(v533 + 56) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v186 + 64) = &off_2863FD290;
      v187 = v186;
      v188 = swift_allocObject();
      *(v187 + 32) = v188;
      *(v188 + 16) = v178;
      *(v188 + 24) = v183;
      v189 = v534;
      *(v188 + 32) = v534;
      *(v188 + 40) = 3;
      *(v188 + 48) = 257;
      *&v524 = *(v181 + 8);
      v190 = v524;
      v191 = v189;
      v190(v179, v185);
      v542 = *(v543 + 8);
      v543 += 8;
      (v542)(v177, v539);
      v192 = v540;
      (v530)(v540, 1, 1, v531);
      (v527)(v537, 1, 1, v528);
      sub_251C6FC74();
      sub_251C6FC24();
      v193 = v541;
      sub_251AFB288(v177, 8u, 0, v179);
      v194 = swift_allocObject();
      *(v194 + 16) = v521;
      v195 = v194 + v182;
      v196 = v538;
      v526(v195, v179, v538);
      v197 = v533;
      *(v533 + 96) = &type metadata for ClinicalSharingStatisticsQuery;
      v197[13] = &off_2863FD290;
      v198 = swift_allocObject();
      v197[9] = v198;
      *(v198 + 16) = v193;
      *(v198 + 24) = v194;
      *(v198 + 32) = v191;
      *(v198 + 40) = 2;
      *(v198 + 48) = 257;
      v199 = v191;
      (v524)(v179, v196);
      (v542)(v177, v539);
      (v530)(v192, 1, 1, v531);
      (v527)(v537, 1, 1, v528);
      sub_251C6FC74();
      sub_251C6FC24();
      sub_251AFB288(v177, 8u, 0, v179);
      v200 = type metadata accessor for ClinicalSharingSampleQuery();
      v197[17] = v200;
      v197[18] = &off_2863F6418;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v197 + 14);
      *boxed_opaque_existential_1 = v193;
      v526(boxed_opaque_existential_1 + v200[5], v179, v196);
      *(boxed_opaque_existential_1 + v200[6]) = v199;
      *(boxed_opaque_existential_1 + v200[8]) = 0;
      v202 = [v199 code];
      (v524)(v179, v196);
      v203 = 300;
      if (v202 == 144)
      {
        v203 = 10;
      }

      *(boxed_opaque_existential_1 + v200[7]) = v203;
      v204 = boxed_opaque_existential_1 + v200[9];
      *v204 = 0;
      v204[8] = 1;
      v39 = v197;
      (v542)(v177, v539);
      return v39;
    case 5uLL:
      v336 = MEMORY[0x277D84560];
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v337 = swift_allocObject();
      v539 = v13;
      v338 = v337;
      *(v337 + 16) = xmmword_251C76AF0;
      v532 = sub_251C701E4();
      v339 = *(v532 - 8);
      v531 = *(v339 + 56);
      v533 = v339 + 56;
      v340 = v540;
      (v531)(v540, 1, 1, v532);
      v529 = sub_251C70244();
      v341 = *(v529 - 1);
      v528 = *(v341 + 56);
      *&v530 = v341 + 56;
      (v528)(v9, 1, 1, v529);
      v342 = v541;
      v537 = v9;
      v343 = v536;
      sub_251C6FC74();
      sub_251C6FC24();
      swift_retain_n();
      v344 = v535;
      sub_251AFB288(v343, 9u, 0, v535);
      sub_251C0A950(0, &qword_27F47C388, MEMORY[0x277CC88A8], v336);
      v522 = v345;
      v346 = v542;
      v347 = *(v542 + 72);
      v526 = *(v542 + 80);
      v527 = v347;
      v348 = (v526 + 32) & ~v526;
      v349 = swift_allocObject();
      v525 = xmmword_251C74800;
      *(v349 + 16) = xmmword_251C74800;
      v350 = *(v346 + 16);
      *&v523 = v346 + 16;
      *&v524 = v350;
      v351 = v538;
      v350(v349 + v348, v344, v538);
      v338[7] = &type metadata for ClinicalSharingStatisticsQuery;
      v338[8] = &off_2863FD290;
      v352 = swift_allocObject();
      v338[4] = v352;
      *(v352 + 16) = v342;
      *(v352 + 24) = v349;
      v353 = v534;
      *(v352 + 32) = v534;
      *(v352 + 40) = 4;
      *(v352 + 48) = 257;
      v542 = *(v346 + 8);
      v354 = v542;
      *&v521 = v353;
      v354(v344, v351);
      v355 = *(v543 + 8);
      v543 += 8;
      v534 = v355;
      v356 = v539;
      v355(v343, v539);
      (v531)(v340, 1, 1, v532);
      (v528)(v537, 1, 1, v529);
      sub_251C6FC74();
      sub_251C6FC24();
      v357 = v541;
      sub_251AFB288(v343, 0, 0, v344);
      v358 = swift_allocObject();
      *(v358 + 16) = v525;
      v359 = v538;
      (v524)(v358 + v348, v344, v538);
      v338[12] = &type metadata for ClinicalSharingStatisticsQuery;
      v338[13] = &off_2863FD290;
      v360 = swift_allocObject();
      v338[9] = v360;
      *(v360 + 16) = v357;
      *(v360 + 24) = v358;
      v361 = v521;
      *(v360 + 32) = v521;
      *(v360 + 40) = 3;
      *(v360 + 48) = 257;
      *&v521 = v361;
      (v542)(v344, v359);
      (v534)(v343, v356);
      (v531)(v540, 1, 1, v532);
      (v528)(v537, 1, 1, v529);
      v39 = v338;
      sub_251C6FC74();
      sub_251C6FC24();
      sub_251AFB288(v343, 8u, 0, v344);
      v362 = swift_allocObject();
      *(v362 + 16) = v525;
      v363 = v538;
      (v524)(v362 + v348, v344, v538);
      v338[17] = &type metadata for ClinicalSharingStatisticsQuery;
      v338[18] = &off_2863FD290;
      v364 = swift_allocObject();
      v338[14] = v364;
      *(v364 + 16) = v357;
      *(v364 + 24) = v362;
      v365 = v521;
      *(v364 + 32) = v521;
      *(v364 + 40) = 2;
      *(v364 + 48) = 257;
      v366 = v365;
      (v542)(v344, v363);
      (v534)(v343, v539);
      return v39;
    case 7uLL:
    case 0xAuLL:
    case 0x4BuLL:
      v69 = MEMORY[0x277D84560];
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v533 = swift_allocObject();
      *(v533 + 16) = xmmword_251C75800;
      v531 = sub_251C701E4();
      v70 = *(v531 - 8);
      *&v530 = *(v70 + 56);
      v532 = v70 + 56;
      (v530)(v540, 1, 1, v531);
      v528 = sub_251C70244();
      v71 = *(v528 - 1);
      v527 = *(v71 + 56);
      v529 = (v71 + 56);
      (v527)(v9, 1, 1, v528);
      v72 = v536;
      sub_251C6FC74();
      v539 = v13;
      v537 = v9;
      v73 = v541;
      sub_251C6FC24();
      swift_retain_n();
      v74 = v535;
      sub_251AFB288(v72, 0, 0, v535);
      sub_251C0A950(0, &qword_27F47C388, MEMORY[0x277CC88A8], v69);
      *&v525 = v75;
      v76 = v542;
      v526 = *(v542 + 72);
      v522 = ((*(v542 + 80) + 32) & ~*(v542 + 80));
      v77 = v522;
      v78 = swift_allocObject();
      v524 = xmmword_251C74800;
      *(v78 + 16) = xmmword_251C74800;
      *&v523 = *(v76 + 16);
      v79 = v538;
      (v523)(&v77[v78], v74, v538);
      v80 = v533;
      *(v533 + 56) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v80 + 64) = &off_2863FD290;
      v81 = swift_allocObject();
      *(v80 + 32) = v81;
      *(v81 + 16) = v73;
      *(v81 + 24) = v78;
      v82 = v534;
      *(v81 + 32) = v534;
      *(v81 + 40) = 3;
      *(v81 + 48) = 257;
      v542 = *(v76 + 8);
      v83 = v542;
      v534 = v82;
      v83(v74, v79);
      v543 = *(v543 + 8);
      (v543)(v72, v539);
      (v530)(v540, 1, 1, v531);
      (v527)(v537, 1, 1, v528);
      v39 = v80;
      sub_251C6FC74();
      sub_251C6FC24();
      v84 = v541;
      sub_251AFB288(v72, 8u, 0, v74);
      v85 = v522;
      v86 = swift_allocObject();
      *(v86 + 16) = v524;
      v87 = v538;
      (v523)(&v85[v86], v74, v538);
      *(v39 + 96) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v39 + 104) = &off_2863FD290;
      v88 = swift_allocObject();
      *(v39 + 72) = v88;
      *(v88 + 16) = v84;
      *(v88 + 24) = v86;
      v89 = v534;
      *(v88 + 32) = v534;
      *(v88 + 40) = 2;
      *(v88 + 48) = 257;
      v90 = v89;
      (v542)(v74, v87);
      (v543)(v72, v539);
      return v39;
    case 0xFuLL:
      v537 = v9;
      v367 = MEMORY[0x277D84560];
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v368 = swift_allocObject();
      v539 = v13;
      v533 = v368;
      *(v368 + 16) = xmmword_251C84F80;
      *&v530 = sub_251C701E4();
      v369 = *(v530 - 8);
      v370 = *(v369 + 56);
      v528 = (v369 + 56);
      v529 = v370;
      (v370)(v540, 1, 1, v530);
      v527 = sub_251C70244();
      v371 = *(v527 - 1);
      v526 = *(v371 + 56);
      *&v525 = v371 + 56;
      (v526)(v537, 1, 1, v527);
      v372 = v536;
      sub_251C6FC74();
      sub_251C6FC24();
      v373 = v541;
      swift_retain_n();
      v374 = v535;
      v375 = v373;
      sub_251AFB288(v372, 9u, 0, v535);
      sub_251C0A950(0, &qword_27F47C388, MEMORY[0x277CC88A8], v367);
      v518 = v376;
      *&v521 = *(v542 + 72);
      v520 = *(v542 + 80);
      v377 = v542;
      v378 = (v520 + 32) & ~v520;
      v517 = v378;
      v379 = swift_allocObject();
      v519 = xmmword_251C74800;
      *(v379 + 16) = xmmword_251C74800;
      *&v523 = *(v377 + 16);
      *&v524 = v377 + 16;
      v380 = v379 + v378;
      v381 = v538;
      (v523)(v380, v374, v538);
      v382 = v533;
      *(v533 + 56) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v382 + 64) = &off_2863FD290;
      v383 = swift_allocObject();
      *(v382 + 32) = v383;
      *(v383 + 16) = v375;
      *(v383 + 24) = v379;
      v384 = v534;
      *(v383 + 32) = v534;
      *(v383 + 40) = 4;
      *(v383 + 48) = 257;
      v522 = *(v377 + 8);
      v385 = v522;
      v542 = v377 + 8;
      v516 = v384;
      (v385)(v374, v381);
      v386 = *(v543 + 8);
      v543 += 8;
      v534 = v386;
      v387 = v536;
      v386(v536, v539);
      (v529)(v540, 1, 1, v530);
      (v526)(v537, 1, 1, v527);
      sub_251C6FC74();
      sub_251C6FC24();
      v388 = v374;
      v389 = v374;
      v390 = v387;
      v391 = v387;
      v392 = v375;
      sub_251AFB288(v390, 0, 0, v389);
      v393 = v517;
      v394 = swift_allocObject();
      *(v394 + 16) = v519;
      v395 = v394 + v393;
      v396 = v388;
      v397 = v388;
      v398 = v538;
      (v523)(v395, v396, v538);
      v399 = v533;
      *(v533 + 96) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v399 + 104) = &off_2863FD290;
      v400 = swift_allocObject();
      *(v399 + 72) = v400;
      *(v400 + 16) = v392;
      *(v400 + 24) = v394;
      v401 = v516;
      *(v400 + 32) = v516;
      *(v400 + 40) = 3;
      *(v400 + 48) = 257;
      v516 = v401;
      (v522)(v397, v398);
      (v534)(v391, v539);
      (v529)(v540, 1, 1, v530);
      (v526)(v537, 1, 1, v527);
      sub_251C6FC74();
      sub_251C6FBE4();
      v402 = v392;
      sub_251AFB288(v391, 8u, 0, v397);
      v403 = v517;
      v404 = swift_allocObject();
      *(v404 + 16) = v519;
      v405 = v397;
      v406 = v397;
      v407 = v538;
      (v523)(v404 + v403, v406, v538);
      v408 = v533;
      *(v533 + 136) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v408 + 144) = &off_2863FD290;
      v409 = swift_allocObject();
      *(v408 + 112) = v409;
      *(v409 + 16) = v402;
      *(v409 + 24) = v404;
      v410 = v516;
      *(v409 + 32) = v516;
      *(v409 + 40) = 1;
      *(v409 + 48) = 257;
      v516 = v410;
      v411 = v407;
      (v522)(v405, v407);
      (v534)(v391, v539);
      (v529)(v540, 1, 1, v530);
      (v526)(v537, 1, 1, v527);
      sub_251C6FC74();
      sub_251C6FC24();
      v412 = v541;
      sub_251AFB288(v391, 8u, 0, v405);
      v413 = v517;
      v414 = swift_allocObject();
      *(v414 + 16) = v519;
      (v523)(v414 + v413, v405, v411);
      v415 = v533;
      *(v533 + 176) = &type metadata for ClinicalSharingStatisticsQuery;
      v415[23] = &off_2863FD290;
      v416 = swift_allocObject();
      v415[19] = v416;
      *(v416 + 16) = v412;
      *(v416 + 24) = v414;
      v417 = v516;
      *(v416 + 32) = v516;
      *(v416 + 40) = 2;
      *(v416 + 48) = 1;
      v516 = v417;
      (v522)(v405, v411);
      (v534)(v391, v539);
      (v529)(v540, 1, 1, v530);
      (v526)(v537, 1, 1, v527);
      sub_251C6FC74();
      sub_251C6FC24();
      v418 = v541;
      sub_251AFB288(v391, 8u, 1, v405);
      v419 = v517;
      v420 = swift_allocObject();
      *(v420 + 16) = v519;
      v421 = v420 + v419;
      v422 = v538;
      (v523)(v421, v405, v538);
      v415[27] = &type metadata for ClinicalSharingStatisticsQuery;
      v415[28] = &off_2863FD290;
      v423 = swift_allocObject();
      v415[24] = v423;
      *(v423 + 16) = v418;
      *(v423 + 24) = v420;
      v424 = v516;
      *(v423 + 32) = v516;
      *(v423 + 40) = 2;
      *(v423 + 48) = 1;
      v516 = v424;
      (v522)(v405, v422);
      (v534)(v391, v539);
      (v529)(v540, 1, 1, v530);
      (v526)(v537, 1, 1, v527);
      sub_251C6FC74();
      sub_251C6FC24();
      v425 = v391;
      v426 = v418;
      sub_251AFB288(v425, 8u, 2, v405);
      v427 = v517;
      v428 = swift_allocObject();
      *(v428 + 16) = v519;
      v429 = v428 + v427;
      v430 = v538;
      (v523)(v429, v405, v538);
      v415[32] = &type metadata for ClinicalSharingStatisticsQuery;
      v415[33] = &off_2863FD290;
      v431 = swift_allocObject();
      v415[29] = v431;
      *(v431 + 16) = v426;
      *(v431 + 24) = v428;
      v432 = v516;
      *(v431 + 32) = v516;
      *(v431 + 40) = 2;
      *(v431 + 48) = 1;
      v13 = v432;
      (v522)(v405, v430);
      (v534)(v536, v539);
      v433 = v537;
      (v529)(v540, 1, 1, v530);
      (v526)(v433, 1, 1, v527);
      sub_251C6FC74();
      sub_251C6FC24();
      objc_opt_self();
      v434 = swift_dynamicCastObjCClass();
      if (!v434)
      {
        goto LABEL_63;
      }

      v435 = v434;
      *&v521 = v13;
      v436 = sub_251C2D20C();
      if (!v436)
      {
        goto LABEL_70;
      }

      v437 = v436;
      v438 = type metadata accessor for ClinicalSharingHistogramQuery();
      v39 = v533;
      *(v533 + 296) = v438;
      *(v39 + 304) = &off_2863F99F0;
      v439 = __swift_allocate_boxed_opaque_existential_1((v39 + 272));
      v440 = v541;
      sub_251AFB288(v27, 0, 0, v439 + v438[5]);
      *v439 = v440;
      *(v439 + v438[6]) = v435;
      v441 = v439 + v438[7];
      *v441 = 3;
      v441[8] = 1;
      *(v439 + v438[8]) = v437;
      (v534)(v27, v539);
      (v529)(v540, 1, 1, v530);
      (v526)(v433, 1, 1, v527);
      sub_251C6FC74();
      sub_251C6FC24();
      objc_opt_self();
      v13 = v521;
      v442 = swift_dynamicCastObjCClass();
      if (!v442)
      {
        goto LABEL_63;
      }

      v443 = v442;
      *&v521 = v13;
      v444 = sub_251C2D20C();
      if (!v444)
      {
LABEL_70:
        v544 = 0;
        v545 = 0xE000000000000000;
        sub_251C716A4();
        v506 = [v521 description];
        goto LABEL_80;
      }

      v445 = v444;
      *(v39 + 336) = v438;
      *(v39 + 344) = &off_2863F99F0;
      v446 = __swift_allocate_boxed_opaque_existential_1((v39 + 312));
      v447 = v541;
      sub_251AFB288(v24, 9u, 0, v446 + v438[5]);
      *v446 = v447;
      *(v446 + v438[6]) = v443;
      v448 = v446 + v438[7];
      *v448 = 4;
      v448[8] = 1;
      *(v446 + v438[8]) = v445;
      v449 = v539;
      (v534)(v24, v539);
      (v529)(v540, 1, 1, v530);
      (v526)(v433, 1, 1, v527);
      sub_251C6FC74();
      sub_251C6FC24();
      objc_opt_self();
      v320 = v521;
      v450 = swift_dynamicCastObjCClass();
      if (!v450)
      {
        goto LABEL_75;
      }

      v451 = v450;
      v320 = v320;
      v452 = sub_251C2D20C();
      if (!v452)
      {
        goto LABEL_66;
      }

      v453 = v452;
      *(v39 + 376) = v438;
      *(v39 + 384) = &off_2863F99F0;
      v454 = __swift_allocate_boxed_opaque_existential_1((v39 + 352));
      v455 = v541;
      sub_251AFB288(v21, 8u, 0, v454 + v438[5]);
      *v454 = v455;
      *(v454 + v438[6]) = v451;
      v456 = v454 + v438[7];
      *v456 = 2;
      v456[8] = 1;
      *(v454 + v438[8]) = v453;
      (v534)(v21, v449);
      (v529)(v540, 1, 1, v530);
      (v526)(v433, 1, 1, v527);
      v457 = v531;
      sub_251C6FC74();
      sub_251C6FC24();
      objc_opt_self();
      v458 = swift_dynamicCastObjCClass();
      if (!v458)
      {
        goto LABEL_75;
      }

      v459 = v458;
      v460 = v320;
      v461 = sub_251C2D20C();
      if (!v461)
      {
        v544 = 0;
        v545 = 0xE000000000000000;
        sub_251C716A4();
        v506 = [v460 description];
        goto LABEL_80;
      }

      v462 = v461;
      *(v39 + 416) = v438;
      *(v39 + 424) = &off_2863F99F0;
      v463 = __swift_allocate_boxed_opaque_existential_1((v39 + 392));
      v464 = v541;
      sub_251AFB288(v457, 8u, 1, v463 + v438[5]);
      *v463 = v464;
      *(v463 + v438[6]) = v459;
      v465 = v463 + v438[7];
      *v465 = 2;
      v465[8] = 1;
      *(v463 + v438[8]) = v462;
      (v534)(v457, v539);
      (v529)(v540, 1, 1, v530);
      (v526)(v433, 1, 1, v527);
      sub_251C6FC74();
      sub_251C6FC24();
      objc_opt_self();
      v466 = swift_dynamicCastObjCClass();
      if (!v466)
      {
        v544 = 0;
        v545 = 0xE000000000000000;
        sub_251C716A4();

        v505 = [v460 description];
        goto LABEL_78;
      }

      v467 = v466;
      v531 = v460;
      v468 = sub_251C2D20C();
      if (!v468)
      {
        v544 = 0;
        v545 = 0xE000000000000000;
        sub_251C716A4();
        v506 = [v531 description];
        goto LABEL_80;
      }

      v469 = v468;
      *(v39 + 456) = v438;
      *(v39 + 464) = &off_2863F99F0;
      v470 = __swift_allocate_boxed_opaque_existential_1((v39 + 432));
      v471 = v532;
      v472 = v541;
      sub_251AFB288(v532, 8u, 2, v470 + v438[5]);
      *v470 = v472;
      *(v470 + v438[6]) = v467;
      v473 = v470 + v438[7];
      *v473 = 2;
      v473[8] = 1;
      *(v470 + v438[8]) = v469;
      (v534)(v471, v539);
      (v529)(v540, 1, 1, v530);
      (v526)(v433, 1, 1, v527);
      v474 = v536;
      sub_251C6FC74();
      sub_251C6FBE4();
      v475 = v535;
      sub_251AFB288(v474, 8u, 0, v535);
      v476 = type metadata accessor for ClinicalSharingSampleQuery();
      *(v39 + 496) = v476;
      *(v39 + 504) = &off_2863F6418;
      v477 = __swift_allocate_boxed_opaque_existential_1((v39 + 472));
      *v477 = v472;
      v478 = v538;
      (v523)(v477 + v476[5], v475, v538);
      v479 = v531;
      *(v477 + v476[6]) = v531;
      *(v477 + v476[8]) = 1;
      v480 = [v479 code];
      (v522)(v475, v478);
      v481 = 300;
      if (v480 == 144)
      {
        v481 = 10;
      }

      *(v477 + v476[7]) = v481;
      v482 = v477 + v476[9];
      *v482 = 40;
      v482[8] = 0;
      (v534)(v474, v539);
      return v39;
    case 0x10uLL:
    case 0x11uLL:
      v138 = MEMORY[0x277D84560];
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v139 = swift_allocObject();
      v539 = v13;
      v140 = v139;
      *(v139 + 16) = xmmword_251C76AF0;
      v532 = sub_251C701E4();
      v141 = *(v532 - 8);
      v531 = *(v141 + 56);
      *&v525 = v141 + 56;
      (v531)(v540, 1, 1, v532);
      v529 = sub_251C70244();
      v142 = *(v529 - 1);
      v528 = *(v142 + 56);
      *&v530 = v142 + 56;
      (v528)(v9, 1, 1, v529);
      v143 = v536;
      sub_251C6FC74();
      sub_251C6FC24();
      v144 = v541;
      swift_retain_n();
      v537 = v9;
      v145 = v535;
      sub_251AFB288(v143, 0, 0, v535);
      sub_251C0A950(0, &qword_27F47C388, MEMORY[0x277CC88A8], v138);
      *&v523 = v146;
      v147 = v542;
      v522 = *(v542 + 72);
      v148 = *(v542 + 80);
      *&v519 = (v148 + 32) & ~v148;
      v149 = swift_allocObject();
      v521 = xmmword_251C74800;
      *(v149 + 16) = xmmword_251C74800;
      v150 = *(v147 + 16);
      v526 = (v147 + 16);
      v527 = v150;
      v151 = v538;
      (v150)(v149 + ((v148 + 32) & ~v148), v145, v538);
      v152 = v543;
      v140[7] = &type metadata for ClinicalSharingStatisticsQuery;
      v140[8] = &off_2863FD290;
      v533 = v140;
      v153 = swift_allocObject();
      v140[4] = v153;
      *(v153 + 16) = v144;
      *(v153 + 24) = v149;
      v154 = v534;
      *(v153 + 32) = v534;
      *(v153 + 40) = 3;
      *(v153 + 48) = 257;
      *&v524 = *(v147 + 8);
      v155 = v524;
      v520 = v154;
      v155(v145, v151);
      v156 = *(v152 + 8);
      v542 = v147 + 8;
      v543 = v152 + 8;
      v534 = v156;
      v156(v143, v539);
      v157 = v540;
      (v531)(v540, 1, 1, v532);
      (v528)(v537, 1, 1, v529);
      sub_251C6FC74();
      sub_251C6FC24();
      v158 = v145;
      v159 = v145;
      v160 = v541;
      sub_251AFB288(v143, 8u, 0, v159);
      v161 = v519;
      v162 = swift_allocObject();
      *(v162 + 16) = v521;
      v163 = v538;
      (v527)(v162 + v161, v158, v538);
      v164 = v533;
      *(v533 + 96) = &type metadata for ClinicalSharingStatisticsQuery;
      v164[13] = &off_2863FD290;
      v165 = swift_allocObject();
      v164[9] = v165;
      *(v165 + 16) = v160;
      *(v165 + 24) = v162;
      v166 = v520;
      *(v165 + 32) = v520;
      *(v165 + 40) = 2;
      *(v165 + 48) = 257;
      v167 = v166;
      (v524)(v158, v163);
      (v534)(v143, v539);
      (v531)(v157, 1, 1, v532);
      (v528)(v537, 1, 1, v529);
      sub_251C6FC74();
      sub_251C6FC24();
      sub_251AFB288(v143, 8u, 0, v158);
      v168 = type metadata accessor for ClinicalSharingSampleQuery();
      v164[17] = v168;
      v164[18] = &off_2863F6418;
      v169 = __swift_allocate_boxed_opaque_existential_1(v164 + 14);
      *v169 = v160;
      (v527)(v169 + v168[5], v158, v163);
      *(v169 + v168[6]) = v167;
      *(v169 + v168[8]) = 0;
      v170 = [v167 code];
      (v524)(v158, v163);
      v171 = 300;
      if (v170 == 144)
      {
        v171 = 10;
      }

      *(v169 + v168[7]) = v171;
      v172 = v169 + v168[9];
      *v172 = 0;
      v172[8] = 1;
      v39 = v164;
      v137 = v143;
      goto LABEL_11;
    case 0x39uLL:
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_251C74800;
      v483 = sub_251C701E4();
      (*(*(v483 - 8) + 56))(v540, 1, 1, v483);
      v484 = sub_251C70244();
      (*(*(v484 - 8) + 56))(v9, 1, 1, v484);
      v485 = v541;
      v94 = v536;
      sub_251C6FC74();
      sub_251C6FC24();

      v95 = v535;
      sub_251AFB288(v94, 8u, 0, v535);
      v96 = type metadata accessor for ClinicalSharingSampleQuery();
      *(v39 + 56) = v96;
      *(v39 + 64) = &off_2863F6418;
      v97 = __swift_allocate_boxed_opaque_existential_1((v39 + 32));
      *v97 = v485;
      v98 = v542;
      v99 = v538;
      (*(v542 + 16))(v97 + v96[5], v95, v538);
      v100 = v534;
      *(v97 + v96[6]) = v534;
      *(v97 + v96[8]) = 0;
      goto LABEL_46;
    case 0x3FuLL:
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_251C747F0;
      v219 = v541;
      swift_retain_n();
      v220 = sub_251C6FF94();
      v221 = sub_251C70114();
      v222 = [v220 hk:v221 morningIndexWithCalendar:?];

      v13 = v222 - 28;
      if (!__OFSUB__(v222, 28))
      {

        sub_251A8223C(0, &qword_27F479E00, 0x277CCD0C0);
        v223 = *MEMORY[0x277CCBAB8];
        v224 = MEMORY[0x25308D1B0]();
        *(v39 + 56) = &type metadata for ClinicalSharingSleepDaySummaryQuery;
        *(v39 + 64) = &off_2863FE7D8;
        v225 = swift_allocObject();
        *(v39 + 32) = v225;
        v225[2] = v219;
        v225[3] = v13;
        v225[4] = 28;
        v225[5] = v224;
        v226 = type metadata accessor for ClinicalSharingSleepStatisticsQuery(0);
        *(v39 + 96) = v226;
        *(v39 + 104) = &off_2863F8508;
        v227 = __swift_allocate_boxed_opaque_existential_1((v39 + 72));
        sub_251B0A43C(v219, 364, 0, v227);
        *(v39 + 136) = v226;
        *(v39 + 144) = &off_2863F8508;
        v228 = __swift_allocate_boxed_opaque_existential_1((v39 + 112));
        sub_251B0A43C(v219, 156, 1, v228);
        *(v39 + 176) = v226;
        *(v39 + 184) = &off_2863F8508;
        v229 = __swift_allocate_boxed_opaque_existential_1((v39 + 152));
        sub_251B0A43C(v219, 36, 2, v229);
        v230 = MEMORY[0x25308D1B0](v223);
        *(v39 + 216) = &type metadata for ClinicalSharingSleepSummaryQuery;
        *(v39 + 224) = &off_2863FCAD0;
        *(v39 + 192) = v219;
        *(v39 + 200) = v230;
        return v39;
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v544 = 0;
      v545 = 0xE000000000000000;
      sub_251C716A4();

      v505 = [v13 description];
      goto LABEL_78;
    case 0x76uLL:
      v265 = MEMORY[0x277D84560];
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v266 = swift_allocObject();
      v539 = v13;
      v533 = v266;
      *(v266 + 16) = xmmword_251C7C1F0;
      v528 = sub_251C701E4();
      v267 = *(v528 - 1);
      v527 = *(v267 + 56);
      v532 = v267 + 56;
      (v527)(v540, 1, 1, v528);
      v531 = sub_251C70244();
      v268 = *(v531 - 8);
      v269 = *(v268 + 56);
      v529 = (v268 + 56);
      *&v530 = v269;
      v269(v9, 1, 1, v531);
      v270 = v541;
      v537 = v9;
      v271 = v536;
      sub_251C6FC74();
      sub_251C6FC24();
      swift_retain_n();
      v272 = v535;
      v273 = v271;
      v274 = v270;
      sub_251AFB288(v273, 9u, 0, v535);
      sub_251C0A950(0, &qword_27F47C388, MEMORY[0x277CC88A8], v265);
      *&v525 = v275;
      v526 = *(v542 + 72);
      *&v524 = *(v542 + 80);
      v276 = v542;
      v277 = (v524 + 32) & ~v524;
      *&v519 = v277;
      v278 = swift_allocObject();
      v523 = xmmword_251C74800;
      *(v278 + 16) = xmmword_251C74800;
      *&v521 = *(v276 + 16);
      v522 = (v276 + 16);
      v279 = v278 + v277;
      v280 = v538;
      (v521)(v279, v272, v538);
      v281 = v533;
      *(v533 + 56) = &type metadata for ClinicalSharingStatisticsQuery;
      v281[8] = &off_2863FD290;
      v282 = swift_allocObject();
      v281[4] = v282;
      *(v282 + 16) = v274;
      *(v282 + 24) = v278;
      v283 = v534;
      *(v282 + 32) = v534;
      *(v282 + 40) = 4;
      *(v282 + 48) = 257;
      v284 = *(v276 + 8);
      v542 = v276 + 8;
      v520 = v284;
      v518 = v283;
      v284(v272, v280);
      v285 = *(v543 + 8);
      v543 += 8;
      v534 = v285;
      v286 = v536;
      v285(v536, v539);
      (v527)(v540, 1, 1, v528);
      (v530)(v537, 1, 1, v531);
      sub_251C6FC74();
      sub_251C6FC24();
      v287 = v272;
      v288 = v541;
      sub_251AFB288(v286, 0, 0, v272);
      v289 = v519;
      v290 = swift_allocObject();
      *(v290 + 16) = v523;
      v291 = v290 + v289;
      v292 = v538;
      (v521)(v291, v287, v538);
      v281[12] = &type metadata for ClinicalSharingStatisticsQuery;
      v281[13] = &off_2863FD290;
      v293 = swift_allocObject();
      v281[9] = v293;
      *(v293 + 16) = v288;
      *(v293 + 24) = v290;
      v294 = v518;
      *(v293 + 32) = v518;
      *(v293 + 40) = 3;
      *(v293 + 48) = 257;
      v518 = v294;
      v295 = v287;
      (v520)(v287, v292);
      (v534)(v286, v539);
      (v527)(v540, 1, 1, v528);
      (v530)(v537, 1, 1, v531);
      sub_251C6FC74();
      sub_251C6FC24();
      v296 = v541;
      sub_251AFB288(v286, 8u, 0, v287);
      v297 = v519;
      v298 = swift_allocObject();
      *(v298 + 16) = v523;
      v299 = v298 + v297;
      v300 = v295;
      (v521)(v299, v295, v292);
      v301 = v533;
      *(v533 + 136) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v301 + 144) = &off_2863FD290;
      v302 = v301;
      v303 = swift_allocObject();
      *(v302 + 112) = v303;
      *(v303 + 16) = v296;
      *(v303 + 24) = v298;
      v304 = v518;
      *(v303 + 32) = v518;
      *(v303 + 40) = 2;
      *(v303 + 48) = 257;
      v13 = v304;
      (v520)(v300, v292);
      v305 = v537;
      (v534)(v286, v539);
      (v527)(v540, 1, 1, v528);
      (v530)(v305, 1, 1, v531);
      sub_251C6FC74();
      sub_251C6FC24();
      objc_opt_self();
      v306 = swift_dynamicCastObjCClass();
      if (!v306)
      {
        goto LABEL_63;
      }

      v307 = v306;
      v308 = v13;
      v309 = sub_251C2D20C();
      if (!v309)
      {
        goto LABEL_64;
      }

      v310 = v309;
      v311 = type metadata accessor for ClinicalSharingHistogramQuery();
      v312 = v533;
      *(v533 + 176) = v311;
      *(v312 + 184) = &off_2863F99F0;
      v313 = __swift_allocate_boxed_opaque_existential_1((v312 + 152));
      v314 = v541;
      sub_251AFB288(v36, 0, 0, v313 + v311[5]);
      *v313 = v314;
      *(v313 + v311[6]) = v307;
      v315 = v313 + v311[7];
      *v315 = 3;
      v315[8] = 1;
      *(v313 + v311[8]) = v310;
      (v534)(v36, v539);
      v317 = v527;
      v316 = v528;
      (v527)(v540, 1, 1, v528);
      (v530)(v537, 1, 1, v531);
      sub_251C6FC74();
      sub_251C6FC24();
      objc_opt_self();
      v318 = swift_dynamicCastObjCClass();
      if (!v318)
      {
        v544 = 0;
        v545 = 0xE000000000000000;
        sub_251C716A4();

        v505 = [v308 description];
LABEL_78:
        v507 = v505;
        v508 = sub_251C70F14();
        v510 = v509;

        v544 = v508;
        v545 = v510;
        MEMORY[0x25308CDA0](0xD00000000000002BLL, 0x8000000251C90A90);
LABEL_81:
        result = sub_251C717E4();
        __break(1u);
        return result;
      }

      v319 = v318;
      v320 = v308;
      v321 = sub_251C2D20C();
      if (!v321)
      {
LABEL_66:
        v544 = 0;
        v545 = 0xE000000000000000;
        sub_251C716A4();
        v506 = [v320 description];
        goto LABEL_80;
      }

      v322 = v321;
      v323 = v533;
      *(v533 + 216) = v311;
      *(v323 + 224) = &off_2863F99F0;
      v324 = __swift_allocate_boxed_opaque_existential_1((v323 + 192));
      v325 = v541;
      sub_251AFB288(v33, 9u, 0, v324 + v311[5]);
      *v324 = v325;
      *(v324 + v311[6]) = v319;
      v326 = v324 + v311[7];
      *v326 = 4;
      v326[8] = 1;
      *(v324 + v311[8]) = v322;
      (v534)(v33, v539);
      v317(v540, 1, 1, v316);
      (v530)(v537, 1, 1, v531);
      sub_251C6FC74();
      sub_251C6FC34();
      objc_opt_self();
      v327 = swift_dynamicCastObjCClass();
      if (!v327)
      {
LABEL_75:
        v544 = 0;
        v545 = 0xE000000000000000;
        sub_251C716A4();

        v505 = [v320 description];
        goto LABEL_78;
      }

      v328 = v327;
      v308 = v320;
      v329 = sub_251C2D20C();
      if (!v329)
      {
LABEL_64:
        v544 = 0;
        v545 = 0xE000000000000000;
        sub_251C716A4();
        v506 = [v308 description];
LABEL_80:
        v511 = v506;
        v512 = sub_251C70F14();
        v514 = v513;

        MEMORY[0x25308CDA0](v512, v514);

        MEMORY[0x25308CDA0](0xD00000000000003ALL, 0x8000000251C90AC0);
        goto LABEL_81;
      }

      v330 = v329;
      v331 = v533;
      *(v533 + 256) = v311;
      *(v331 + 264) = &off_2863F99F0;
      v332 = __swift_allocate_boxed_opaque_existential_1((v331 + 232));
      v333 = v541;
      sub_251AFB288(v30, 8u, 0, v332 + v311[5]);
      *v332 = v333;
      *(v332 + v311[6]) = v328;
      v334 = v332 + v311[7];
      *v334 = 2;
      v334[8] = 1;
      *(v332 + v311[8]) = v330;
      v39 = v331;
      (v534)(v30, v539);
      return v39;
    case 0x7CuLL:
      v239 = MEMORY[0x277D84560];
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v240 = swift_allocObject();
      v539 = v13;
      v241 = v240;
      *(v240 + 16) = xmmword_251C76AF0;
      v532 = sub_251C701E4();
      v242 = *(v532 - 8);
      v531 = *(v242 + 56);
      v533 = v242 + 56;
      v243 = v540;
      (v531)(v540, 1, 1, v532);
      v529 = sub_251C70244();
      v244 = *(v529 - 1);
      v528 = *(v244 + 56);
      *&v530 = v244 + 56;
      (v528)(v9, 1, 1, v529);
      v245 = v541;
      v537 = v9;
      v45 = v536;
      sub_251C6FC74();
      sub_251C6FC24();
      swift_retain_n();
      v246 = v535;
      sub_251AFB288(v45, 0, 0, v535);
      sub_251C0A950(0, &qword_27F47C388, MEMORY[0x277CC88A8], v239);
      v247 = v542;
      v526 = *(v542 + 72);
      v527 = v248;
      *&v525 = *(v542 + 80);
      v249 = (v525 + 32) & ~v525;
      v250 = swift_allocObject();
      v524 = xmmword_251C74800;
      *(v250 + 16) = xmmword_251C74800;
      v522 = *(v247 + 16);
      *&v523 = v247 + 16;
      v251 = v538;
      (v522)(v250 + v249, v246, v538);
      v241[7] = &type metadata for ClinicalSharingStatisticsQuery;
      v241[8] = &off_2863FD290;
      v252 = swift_allocObject();
      v241[4] = v252;
      *(v252 + 16) = v245;
      *(v252 + 24) = v250;
      v253 = v534;
      *(v252 + 32) = v534;
      *(v252 + 40) = 3;
      *(v252 + 48) = 257;
      v542 = *(v247 + 8);
      v254 = v542;
      *&v521 = v253;
      v254(v246, v251);
      v255 = *(v543 + 8);
      v543 += 8;
      v534 = v255;
      v256 = v539;
      v255(v45, v539);
      (v531)(v243, 1, 1, v532);
      (v528)(v537, 1, 1, v529);
      sub_251C6FC74();
      sub_251C6FC24();
      v257 = v541;
      sub_251AFB288(v45, 9u, 0, v246);
      v258 = swift_allocObject();
      *(v258 + 16) = v524;
      (v522)(v258 + v249, v246, v251);
      v241[12] = &type metadata for ClinicalSharingStatisticsQuery;
      v241[13] = &off_2863FD290;
      v259 = swift_allocObject();
      v241[9] = v259;
      *(v259 + 16) = v257;
      *(v259 + 24) = v258;
      v260 = v521;
      *(v259 + 32) = v521;
      *(v259 + 40) = 4;
      *(v259 + 48) = 257;
      *&v521 = v260;
      (v542)(v246, v251);
      (v534)(v45, v256);
      (v531)(v540, 1, 1, v532);
      (v528)(v537, 1, 1, v529);
      v39 = v241;
      sub_251C6FC74();
      sub_251C6FC24();
      sub_251AFB288(v45, 8u, 0, v246);
      v261 = swift_allocObject();
      *(v261 + 16) = v524;
      (v522)(v261 + v249, v246, v251);
      v241[17] = &type metadata for ClinicalSharingStatisticsQuery;
      v241[18] = &off_2863FD290;
      v262 = swift_allocObject();
      v241[14] = v262;
      *(v262 + 16) = v257;
      *(v262 + 24) = v261;
      v263 = v521;
      *(v262 + 32) = v521;
      *(v262 + 40) = 2;
      *(v262 + 48) = 257;
      v264 = v263;
      (v542)(v246, v251);
      goto LABEL_7;
    case 0x8CuLL:
    case 0x93uLL:
    case 0x9CuLL:
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_251C74800;
      v91 = sub_251C701E4();
      (*(*(v91 - 8) + 56))(v540, 1, 1, v91);
      v92 = sub_251C70244();
      (*(*(v92 - 8) + 56))(v9, 1, 1, v92);
      v93 = v541;
      v94 = v536;
      sub_251C6FC74();
      sub_251C6FC24();

      v95 = v535;
      sub_251AFB288(v94, 8u, 0, v535);
      v96 = type metadata accessor for ClinicalSharingSampleQuery();
      *(v39 + 56) = v96;
      *(v39 + 64) = &off_2863F6418;
      v97 = __swift_allocate_boxed_opaque_existential_1((v39 + 32));
      *v97 = v93;
      v98 = v542;
      v99 = v538;
      (*(v542 + 16))(v97 + v96[5], v95, v538);
      v100 = v534;
      *(v97 + v96[6]) = v534;
      *(v97 + v96[8]) = 1;
LABEL_46:
      v486 = [v100 code];
      (*(v98 + 8))(v95, v99);
      v487 = 300;
      if (v486 == 144)
      {
        v487 = 10;
      }

      *(v97 + v96[7]) = v487;
      v488 = v97 + v96[9];
      *v488 = 0;
      v488[8] = 1;
      (*(v543 + 8))(v94, v13);
      return v39;
    case 0x97uLL:
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_251C74800;
      sub_251A8223C(0, &qword_27F479AB8, 0x277CCD608);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v497 = *MEMORY[0x277CCCE90];
      v13 = v541;

      v498 = [ObjCClassFromMetadata vaccinationRecordTypeForIdentifier_];
      if (!v498)
      {
        goto LABEL_60;
      }

      v499 = v498;
      v493 = type metadata accessor for ClinicalSharingMedicalRecordsQuery();
      *(v39 + 56) = v493;
      *(v39 + 64) = &off_2863F7B00;
      v494 = __swift_allocate_boxed_opaque_existential_1((v39 + 32));
      (*(v542 + 56))(v494 + *(v493 + 28), 1, 1, v538);
      *v494 = v13;
      v494[1] = v499;
      v495 = 6;
      goto LABEL_53;
    case 0x98uLL:
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_251C74800;
      sub_251A8223C(0, &qword_27F479AB8, 0x277CCD608);
      v489 = swift_getObjCClassFromMetadata();
      v490 = *MEMORY[0x277CCBCA8];
      v13 = v541;

      v491 = [v489 diagnosticTestResultTypeForIdentifier_];
      if (!v491)
      {
        goto LABEL_59;
      }

      v492 = v491;
      v493 = type metadata accessor for ClinicalSharingMedicalRecordsQuery();
      *(v39 + 56) = v493;
      *(v39 + 64) = &off_2863F7B00;
      v494 = __swift_allocate_boxed_opaque_existential_1((v39 + 32));
      (*(v542 + 56))(v494 + *(v493 + 28), 1, 1, v538);
      *v494 = v13;
      v494[1] = v492;
      v495 = 2;
LABEL_53:
      v494[2] = v495;
      *(v494 + *(v493 + 32)) = 4;
      return v39;
    case 0x99uLL:
      v205 = v541;
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_251C76AF0;
      sub_251A8223C(0, &qword_27F479AB8, 0x277CCD608);
      v206 = swift_getObjCClassFromMetadata();
      v207 = [v206 medicationOrderTypeForIdentifier_];
      if (!v207)
      {
        goto LABEL_58;
      }

      v208 = v207;
      v209 = type metadata accessor for ClinicalSharingMedicalRecordsQuery();
      *(v39 + 56) = v209;
      *(v39 + 64) = &off_2863F7B00;
      v210 = __swift_allocate_boxed_opaque_existential_1((v39 + 32));
      v13 = *(v542 + 56);
      v211 = v538;
      (v13)(v210 + *(v209 + 28), 1, 1, v538);
      *v210 = v205;
      v210[1] = v208;
      v210[2] = 1;
      *(v210 + *(v209 + 32)) = 4;
      v212 = *MEMORY[0x277CCC410];
      swift_retain_n();
      v213 = [v206 medicationRecordTypeForIdentifier_];
      if (!v213)
      {
        goto LABEL_61;
      }

      v214 = v213;
      *(v39 + 96) = v209;
      *(v39 + 104) = &off_2863F7B00;
      v215 = __swift_allocate_boxed_opaque_existential_1((v39 + 72));
      (v13)(v215 + *(v209 + 28), 1, 1, v211);
      *v215 = v205;
      v215[1] = v214;
      v215[2] = 1;
      *(v215 + *(v209 + 32)) = 4;
      v216 = [v206 medicationDispenseRecordTypeForIdentifier_];
      if (!v216)
      {
        goto LABEL_62;
      }

      v217 = v216;
      *(v39 + 136) = v209;
      *(v39 + 144) = &off_2863F7B00;
      v218 = __swift_allocate_boxed_opaque_existential_1((v39 + 112));
      (v13)(v218 + *(v209 + 28), 1, 1, v211);
      *v218 = v205;
      v218[1] = v217;
      v218[2] = 1;
      *(v218 + *(v209 + 32)) = 4;
      return v39;
    case 0x9BuLL:
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_251C763E0;
      v335 = v541;
      sub_251C08FF4(0, v541, (v39 + 32));
      sub_251C08FF4(1, v335, (v39 + 72));
      sub_251C08FF4(2, v335, (v39 + 112));
      sub_251C08FF4(3, v335, (v39 + 152));
      return v39;
    case 0xB6uLL:
    case 0xBBuLL:
    case 0xBCuLL:
    case 0xC2uLL:
      v40 = MEMORY[0x277D84560];
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_251C763E0;
      v522 = sub_251C701E4();
      v42 = *(v522 - 1);
      v527 = *(v42 + 56);
      *&v525 = v42 + 56;
      (v527)(v540, 1, 1, v522);
      v520 = sub_251C70244();
      v43 = *(v520 - 8);
      v526 = *(v43 + 56);
      *&v521 = v43 + 56;
      (v526)(v9, 1, 1, v520);
      v44 = v541;
      v537 = v9;
      v45 = v536;
      sub_251C6FC74();
      sub_251C6FC24();
      swift_retain_n();
      v46 = v535;
      sub_251AFB288(v45, 9u, 0, v535);
      sub_251C0A950(0, &qword_27F47C388, MEMORY[0x277CC88A8], v40);
      v532 = v47;
      *&v524 = *(v542 + 72);
      v539 = v13;
      v48 = v543;
      v531 = *(v542 + 80);
      v49 = v542;
      v50 = (v531 + 32) & ~v531;
      *&v519 = v50;
      v51 = swift_allocObject();
      v530 = xmmword_251C74800;
      *(v51 + 16) = xmmword_251C74800;
      v52 = *(v49 + 16);
      v528 = (v49 + 16);
      v529 = v52;
      v53 = v51 + v50;
      v54 = v538;
      (v52)(v53, v46, v538);
      *(v41 + 56) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v41 + 64) = &off_2863FD290;
      v533 = v41;
      v55 = swift_allocObject();
      *(v41 + 32) = v55;
      *(v55 + 16) = v44;
      *(v55 + 24) = v51;
      v56 = v534;
      *(v55 + 32) = v534;
      *(v55 + 40) = 4;
      *(v55 + 48) = 257;
      *&v523 = *(v49 + 8);
      v57 = v523;
      v542 = v49 + 8;
      v518 = v56;
      v57(v46, v54);
      v58 = *(v48 + 8);
      v543 = v48 + 8;
      v534 = v58;
      v58(v45, v13);
      v59 = v522;
      (v527)(v540, 1, 1, v522);
      v60 = v520;
      (v526)(v537, 1, 1, v520);
      sub_251C6FC74();
      sub_251C6FC24();
      v61 = v541;
      sub_251AFB288(v45, 0, 0, v46);
      v62 = v519;
      v63 = swift_allocObject();
      *(v63 + 16) = v530;
      (v529)(v63 + v62, v46, v54);
      v64 = v533;
      *(v533 + 96) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v64 + 104) = &off_2863FD290;
      v65 = swift_allocObject();
      *(v64 + 72) = v65;
      *(v65 + 16) = v61;
      *(v65 + 24) = v63;
      v66 = v518;
      *(v65 + 32) = v518;
      *(v65 + 40) = 3;
      *(v65 + 48) = 257;
      v67 = v66;
      (v523)(v46, v54);
      (v534)(v45, v539);
      v68 = v540;
      (v527)(v540, 1, 1, v59);
      (v526)(v537, 1, 1, v60);
      sub_251C6FC74();
      sub_251C6FC24();
      goto LABEL_6;
    case 0xB7uLL:
    case 0xC3uLL:
    case 0xC4uLL:
      v101 = MEMORY[0x277D84560];
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_251C763E0;
      v522 = sub_251C701E4();
      v103 = *(v522 - 1);
      v527 = *(v103 + 56);
      *&v525 = v103 + 56;
      (v527)(v540, 1, 1, v522);
      v520 = sub_251C70244();
      v104 = *(v520 - 8);
      v526 = *(v104 + 56);
      *&v521 = v104 + 56;
      (v526)(v9, 1, 1, v520);
      v105 = v541;
      v537 = v9;
      v45 = v536;
      sub_251C6FC74();
      sub_251C6FC24();
      swift_retain_n();
      v46 = v535;
      sub_251AFB288(v45, 9u, 0, v535);
      sub_251C0A950(0, &qword_27F47C388, MEMORY[0x277CC88A8], v101);
      v532 = v106;
      *&v524 = *(v542 + 72);
      v539 = v13;
      v107 = v543;
      v531 = *(v542 + 80);
      v108 = v542;
      v109 = (v531 + 32) & ~v531;
      *&v519 = v109;
      v110 = swift_allocObject();
      v530 = xmmword_251C74800;
      *(v110 + 16) = xmmword_251C74800;
      v111 = *(v108 + 16);
      v528 = (v108 + 16);
      v529 = v111;
      v112 = v110 + v109;
      v54 = v538;
      (v111)(v112, v46, v538);
      *(v102 + 56) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v102 + 64) = &off_2863FD290;
      v533 = v102;
      v113 = swift_allocObject();
      *(v102 + 32) = v113;
      *(v113 + 16) = v105;
      *(v113 + 24) = v110;
      v114 = v534;
      *(v113 + 32) = v534;
      *(v113 + 40) = 4;
      *(v113 + 48) = 257;
      *&v523 = *(v108 + 8);
      v115 = v523;
      v542 = v108 + 8;
      v518 = v114;
      v115(v46, v54);
      v116 = *(v107 + 8);
      v543 = v107 + 8;
      v534 = v116;
      v116(v45, v13);
      v117 = v522;
      (v527)(v540, 1, 1, v522);
      v118 = v520;
      (v526)(v537, 1, 1, v520);
      sub_251C6FC74();
      sub_251C6FC24();
      v119 = v541;
      sub_251AFB288(v45, 0, 0, v46);
      v120 = v519;
      v121 = swift_allocObject();
      *(v121 + 16) = v530;
      (v529)(v121 + v120, v46, v54);
      v122 = v533;
      *(v533 + 96) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v122 + 104) = &off_2863FD290;
      v123 = swift_allocObject();
      *(v122 + 72) = v123;
      *(v123 + 16) = v119;
      *(v123 + 24) = v121;
      v124 = v518;
      *(v123 + 32) = v518;
      *(v123 + 40) = 3;
      *(v123 + 48) = 257;
      v67 = v124;
      (v523)(v46, v54);
      (v534)(v45, v539);
      v68 = v540;
      (v527)(v540, 1, 1, v117);
      (v526)(v537, 1, 1, v118);
      sub_251C6FC74();
      sub_251C6FC34();
LABEL_6:
      v125 = v541;
      sub_251AFB288(v45, 8u, 0, v46);
      v126 = v519;
      v127 = swift_allocObject();
      *(v127 + 16) = v530;
      v128 = v54;
      (v529)(v127 + v126, v46, v54);
      v39 = v533;
      *(v533 + 136) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v39 + 144) = &off_2863FD290;
      v129 = swift_allocObject();
      *(v39 + 112) = v129;
      *(v129 + 16) = v125;
      *(v129 + 24) = v127;
      *(v129 + 32) = v67;
      *(v129 + 40) = 2;
      *(v129 + 48) = 257;
      v130 = v67;
      v131 = v128;
      v132 = v523;
      (v523)(v46, v131);
      (v534)(v45, v539);
      (v527)(v68, 1, 1, v522);
      (v526)(v537, 1, 1, v520);
      sub_251C6FC74();
      sub_251C6FC34();
      sub_251AFB288(v45, 8u, 0, v46);
      v133 = swift_allocObject();
      *(v133 + 16) = v530;
      v134 = v538;
      (v529)(v133 + v126, v46, v538);
      *(v39 + 176) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v39 + 184) = &off_2863FD290;
      v135 = swift_allocObject();
      *(v39 + 152) = v135;
      *(v135 + 16) = v125;
      *(v135 + 24) = v133;
      *(v135 + 32) = v130;
      *(v135 + 40) = 1;
      *(v135 + 48) = 257;
      v136 = v130;
      v132(v46, v134);
LABEL_7:
      v137 = v45;
LABEL_11:
      (v534)(v137, v539);
      return v39;
    case 0xF9uLL:
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_251C74800;
      v500 = sub_251C701E4();
      (*(*(v500 - 8) + 56))(v540, 1, 1, v500);
      v501 = sub_251C70244();
      (*(*(v501 - 8) + 56))(v9, 1, 1, v501);
      v233 = v541;

      v502 = v536;
      sub_251C6FC74();
      sub_251C6FC24();
      v503 = type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery();
      *(v39 + 56) = v503;
      *(v39 + 64) = &off_2863F5DC8;
      v236 = __swift_allocate_boxed_opaque_existential_1((v39 + 32));
      sub_251AFB288(v502, 8u, 0, v236 + *(v503 + 20));
      (*(v543 + 8))(v502, v13);
      v237 = *(v503 + 24);
      sub_251A8223C(0, &qword_27F4797C0, 0x277CCD830);
      v238 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC948]);
      goto LABEL_55;
    case 0xFAuLL:
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_251C74800;
      v231 = sub_251C701E4();
      (*(*(v231 - 8) + 56))(v540, 1, 1, v231);
      v232 = sub_251C70244();
      (*(*(v232 - 8) + 56))(v9, 1, 1, v232);
      v233 = v541;

      v234 = v536;
      sub_251C6FC74();
      sub_251C6FC24();
      v235 = type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery();
      *(v39 + 56) = v235;
      *(v39 + 64) = &off_2863FA228;
      v236 = __swift_allocate_boxed_opaque_existential_1((v39 + 32));
      sub_251AFB288(v234, 8u, 0, v236 + *(v235 + 20));
      (*(v543 + 8))(v234, v13);
      v237 = *(v235 + 24);
      sub_251A8223C(0, &qword_27F479E00, 0x277CCD0C0);
      v238 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB8E8]);
LABEL_55:
      *(v236 + v237) = v238;
      *v236 = v233;
      return v39;
    default:
      return v39;
  }
}

id sub_251C08FF4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = a1;
  v5 = MEMORY[0x277D83D88];
  sub_251C0A950(0, &qword_27F4793D8, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - v8;
  sub_251C0A950(0, &qword_27F4793E0, MEMORY[0x277CC99E8], v5);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  v14 = sub_251C6FC94();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A8223C(0, &qword_27F479AB8, 0x277CCD608);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = *MEMORY[0x277CCBCA8];
  v30 = a2;

  result = [ObjCClassFromMetadata diagnosticTestResultTypeForIdentifier_];
  if (result)
  {
    v22 = result;
    v23 = type metadata accessor for ClinicalSharingMedicalRecordsQuery();
    a3[3] = v23;
    a3[4] = &off_2863F7B00;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    v25 = *(v23 + 28);
    v26 = sub_251C701E4();
    (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
    v27 = sub_251C70244();
    (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
    sub_251C6FC74();
    sub_251C6FC24();
    v28 = v30;
    sub_251AFB288(v18, 8u, 0, boxed_opaque_existential_1 + v25);
    (*(v15 + 8))(v18, v14);
    v29 = sub_251C6FAE4();
    result = (*(*(v29 - 8) + 56))(boxed_opaque_existential_1 + v25, 0, 1, v29);
    *boxed_opaque_existential_1 = v28;
    boxed_opaque_existential_1[1] = v22;
    boxed_opaque_existential_1[2] = 3;
    *(boxed_opaque_existential_1 + *(v23 + 32)) = v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_251C093BC(uint64_t a1)
{
  v2 = type metadata accessor for ClinicalSharingCycleTrackingQuery();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_251C0B674(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_251C0A854(v9, v6, type metadata accessor for ClinicalSharingCycleTrackingQuery);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_251C0B674((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = &off_2863FCEA0;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_251C0A854(v6, boxed_opaque_existential_1, type metadata accessor for ClinicalSharingCycleTrackingQuery);
      *(v8 + 16) = v12 + 1;
      sub_251A7E8D8(&v15, v8 + 40 * v12 + 32);
      sub_251C0A34C(v6, type metadata accessor for ClinicalSharingCycleTrackingQuery);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_251C0958C(uint64_t a1)
{
  v18 = type metadata accessor for PBTypedData(0);
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C0A950(0, &qword_27F4793C8, type metadata accessor for PBTypedData, MEMORY[0x277D83D88]);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v19 = MEMORY[0x277D84F90];
    sub_251C0BF34(0, v11, 0);
    v12 = v19;
    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_251C0A854(v13, v5, type metadata accessor for PBTypedData);
      swift_dynamicCast();
      v19 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_251C0BF34(v15 > 1, v16 + 1, 1);
        v12 = v19;
      }

      *(v12 + 16) = v16 + 1;
      sub_251C0A8BC(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_251C097D4(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v29 = sub_251C701E4();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251C702E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a2 + 56);
  sub_251A8223C(0, &qword_27F4797C0, 0x277CCD830);
  v13 = *MEMORY[0x277CCCB90];

  v14 = v13;
  *v11 = MEMORY[0x25308D1E0]();
  (*(v8 + 104))(v11, *MEMORY[0x277D112F0], v7);
  v31 = v11;
  v15 = *(sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, v30, v12) + 16);

  (*(v8 + 8))(v11, v7);
  if (v15)
  {
    sub_251A82418();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251C86470;
    *(inited + 32) = [objc_opt_self() electrocardiogramType];
    sub_251A8223C(0, &qword_27F479E00, 0x277CCD0C0);
    *(inited + 40) = MEMORY[0x25308D1B0](*MEMORY[0x277CCB9B8]);
    *(inited + 48) = MEMORY[0x25308D1B0](*MEMORY[0x277CCBA10]);
    *(inited + 56) = MEMORY[0x25308D1B0](*MEMORY[0x277CCB9E0]);
    v17 = v29;
    (*(v3 + 16))(v6, a2 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v29);
    v18 = [objc_allocWithZone(MEMORY[0x277CCD2D8]) init];
    v19 = MEMORY[0x28223BE20](v18);
    *(&v28 - 2) = v28;
    *(&v28 - 1) = v6;
    sub_251BF1F94(v19, sub_251C0A00C, (&v28 - 4), inited);
    v21 = v20;

    v22 = MEMORY[0x25308D1E0](v14);
    sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_251C74800;
    v24 = [v21 mergedIntervals];
    sub_251C6FAE4();
    v25 = sub_251C71154();

    *(v23 + 56) = &type metadata for ClinicalSharingStatisticsQuery;
    *(v23 + 64) = &off_2863FD290;
    v26 = swift_allocObject();
    *(v23 + 32) = v26;
    *(v26 + 16) = a2;
    *(v26 + 24) = v25;
    *(v26 + 32) = v22;
    *(v26 + 40) = 6;
    *(v26 + 48) = 1;

    (*(v3 + 8))(v6, v17);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v23;
}

unint64_t sub_251C09C2C(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v54 = a1;
  v55 = a4;
  v7 = sub_251C70014();
  v59 = *(v7 - 8);
  v8 = *(v59 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v57 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v44 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v58 = v44 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v44 - v16;
  v60 = sub_251C6FAE4();
  v18 = *(v60 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v60);
  v56 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v20);
  v24 = v44 - v23;
  if (*(a3 + 16))
  {
    result = sub_251AC8CD0(*a2);
    if (v25)
    {
      result = *(*(a3 + 56) + 8 * result);
      v26 = *(result + 16);
      if (v26)
      {
        v44[0] = result;
        v44[1] = v4;
        v27 = *v54;
        v29 = *(v18 + 16);
        v28 = v18 + 16;
        v53 = v29;
        v54 = v27;
        v30 = result + ((*(v28 + 64) + 32) & ~*(v28 + 64));
        v31 = *(v28 + 56);
        v51 = v7;
        v52 = v31;
        v46 = (v59 + 8);
        v49 = (v28 - 8);
        v50 = v13;

        v47 = v17;
        v48 = v28;
        v32 = v60;
        v45 = v24;
        do
        {
          v59 = v26;
          v33 = v45;
          v53(v45, v30, v32);
          sub_251C6FAB4();
          v34 = v58;
          sub_251C6FF84();
          v35 = v57;
          sub_251C700C4();
          sub_251C6FF74();
          sub_251C6FF84();
          v36 = *v46;
          v37 = v35;
          v38 = v51;
          (*v46)(v37, v51);
          v39 = v56;
          sub_251C6FAA4();
          v40 = v34;
          v41 = v59;
          v36(v40, v38);
          v36(v17, v38);
          v42 = sub_251C6FA64();
          v43 = *v49;
          (*v49)(v39, v60);
          [v54 insertInterval_];

          v32 = v60;
          v43(v33, v60);
          v30 += v52;
          v26 = v41 - 1;
        }

        while (v26);
      }
    }
  }

  return result;
}

unint64_t sub_251C0A028()
{
  result = qword_27F4791E8;
  if (!qword_27F4791E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F4791E8);
  }

  return result;
}

uint64_t sub_251C0A08C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_251C70074();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}