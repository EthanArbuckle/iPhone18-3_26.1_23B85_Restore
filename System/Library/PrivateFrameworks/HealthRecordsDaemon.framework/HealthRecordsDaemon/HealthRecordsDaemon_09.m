void sub_251B40D80(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_251B40DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_251B40E4C(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

void sub_251B40E68(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

void sub_251B40E84()
{
  if (!qword_2813E20B0)
  {
    v0 = sub_251C709C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E20B0);
    }
  }
}

uint64_t sub_251B40EE4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251B40F34()
{
  if (!qword_27F47A520)
  {
    sub_251B40E84();
    sub_251B40EE4(&qword_27F47A518, sub_251B40E84);
    v0 = sub_251C70894();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47A520);
    }
  }
}

unint64_t sub_251B40FD0()
{
  result = qword_27F47A538;
  if (!qword_27F47A538)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F47A538);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251B41060@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v34 = sub_251C70074();
  v6 = *(v34 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v34);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A823B4(a1, a3);
  v10 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask();
  v11 = v10[5];
  v12 = sub_251C70014();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a3 + v11, a2, v12);
  v14 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v16 = v14;
  v17 = sub_251C70EE4();
  v18 = [v15 initWithCategory:3 domainName:v17 healthStore:v16];

  *(a3 + v10[6]) = v18;
  *(a3 + v10[7]) = HKImproveHealthAndActivityAnalyticsAllowed();
  v36 = v10;
  sub_251B46518();
  v36 = sub_251C70F74();
  v37 = v19;
  MEMORY[0x25308CDA0](45, 0xE100000000000000);
  sub_251C70064();
  sub_251C70024();
  (*(v6 + 8))(v9, v34);
  v20 = sub_251AE3EAC(8);
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = MEMORY[0x25308CD40](v20, v22, v24, v26);
  v29 = v28;

  MEMORY[0x25308CDA0](v27, v29);

  MEMORY[0x25308CDA0](58, 0xE100000000000000);
  v30 = v36;
  v31 = v37;
  (*(v13 + 8))(v35, v12);
  v32 = (a3 + v10[8]);
  *v32 = v30;
  v32[1] = v31;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_251B4131C()
{
  v1 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = MEMORY[0x277D839B0];
  sub_251B460B4(0, &qword_2813E2598, &qword_2813E20D0, MEMORY[0x277D839B0], sub_251B41EF8);
  v69 = v5;
  v70 = *(v5 - 8);
  v6 = *(v70 + 64);
  MEMORY[0x28223BE20](v5);
  v68 = v67 - v7;
  sub_251B41F74();
  v72 = v8;
  v73 = *(v8 - 8);
  v9 = *(v73 + 64);
  MEMORY[0x28223BE20](v8);
  v87 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B421D0(0);
  v74 = v11;
  v75 = *(v11 - 8);
  v12 = *(v75 + 64);
  MEMORY[0x28223BE20](v11);
  v88 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B42338(0);
  v77 = v14;
  v78 = *(v14 - 8);
  v15 = *(v78 + 64);
  MEMORY[0x28223BE20](v14);
  v71 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B42374(0);
  v18 = *(v17 - 8);
  v80 = v17;
  v81 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v89 = v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B423B0(0);
  v22 = *(v21 - 8);
  v82 = v21;
  v83 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v76 = v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B423EC();
  v26 = *(v25 - 8);
  v84 = v25;
  v85 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v79 = v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A823B4(v0, v94);
  v29 = swift_allocObject();
  sub_251AE7B64(v94, v29 + 16);
  sub_251B42050(0, &qword_2813E1FF0, v4, MEMORY[0x277CBCEA8]);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  *&v94[0] = sub_251C70A64();
  sub_251B45330();
  v33 = sub_251C70A94();

  *&v94[0] = v33;
  v34 = MEMORY[0x277CBCD88];
  sub_251B42050(0, &qword_2813E20D0, v4, MEMORY[0x277CBCD88]);
  sub_251B41EF8();
  sub_251C70AE4();

  v92 = v0;
  v90 = v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B453AC(v0, v90);
  v91 = *(v2 + 80);
  v35 = (v91 + 16) & ~v91;
  v67[1] = v3;
  v36 = swift_allocObject();
  v93 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask;
  sub_251B45704(v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask);
  sub_251C70964();
  sub_251B42050(0, &qword_2813E21E0, &type metadata for DailyMetricDetailList, v34);
  v86 = v37;
  sub_251B4214C();
  v38 = sub_251B420D0();
  v39 = v69;
  v67[0] = v38;
  v40 = v68;
  sub_251C70B94();

  (*(v70 + 8))(v40, v39);
  v41 = v92;
  v42 = v90;
  sub_251B453AC(v92, v90);
  v43 = swift_allocObject();
  sub_251B45704(v42, v43 + v35, type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask);
  sub_251C70964();
  v44 = MEMORY[0x277CBCCE0];
  sub_251B422F0(&qword_2813E2410, sub_251B41F74);
  v45 = v72;
  v46 = v87;
  sub_251C70B94();

  (*(v73 + 8))(v46, v45);
  sub_251B453AC(v41, v42);
  v47 = swift_allocObject();
  sub_251B45704(v42, v47 + v35, v93);
  sub_251C70964();
  v70 = v44;
  sub_251B422F0(&qword_2813E2400, sub_251B421D0);
  v48 = v71;
  v49 = v74;
  v50 = v88;
  sub_251C70B94();

  (*(v75 + 8))(v50, v49);
  v51 = v92;
  v52 = v90;
  sub_251B453AC(v92, v90);
  v53 = swift_allocObject();
  sub_251B45704(v52, v53 + v35, v93);
  sub_251C70964();
  sub_251B422F0(&qword_2813E23F0, sub_251B42338);
  v54 = v77;
  sub_251C70B94();

  (*(v78 + 8))(v48, v54);
  v55 = v51;
  v56 = v90;
  sub_251B453AC(v55, v90);
  v57 = swift_allocObject();
  sub_251B45704(v56, v57 + v35, v93);
  sub_251C70964();
  sub_251B422F0(&qword_2813E23E0, sub_251B42374);
  v58 = v76;
  v59 = v80;
  v60 = v89;
  sub_251C70B94();

  (*(v81 + 8))(v60, v59);
  sub_251B453AC(v92, v56);
  v61 = swift_allocObject();
  sub_251B45704(v56, v61 + v35, v93);
  sub_251AA98B0(0, qword_2813E46A0);
  sub_251B422F0(&qword_2813E23D0, sub_251B423B0);
  v62 = v79;
  v63 = v82;
  sub_251C70AE4();

  (*(v83 + 8))(v58, v63);
  sub_251B422F0(&qword_2813E2550, sub_251B423EC);
  v64 = v84;
  v65 = sub_251C70A94();
  (*(v85 + 8))(v62, v64);
  return v65;
}

uint64_t type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask()
{
  result = qword_2813E2AB8;
  if (!qword_2813E2AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_251B41EF8()
{
  result = qword_2813E20D8;
  if (!qword_2813E20D8)
  {
    sub_251B42050(255, &qword_2813E20D0, MEMORY[0x277D839B0], MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E20D8);
  }

  return result;
}

void sub_251B41F74()
{
  if (!qword_2813E2408)
  {
    sub_251B42050(255, &qword_2813E21E0, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCD88]);
    sub_251B460B4(255, &qword_2813E2598, &qword_2813E20D0, MEMORY[0x277D839B0], sub_251B41EF8);
    sub_251B420D0();
    sub_251B4214C();
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2408);
    }
  }
}

void sub_251B42050(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_251AA98B0(255, &qword_2813E1C30);
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_251B420D0()
{
  result = qword_2813E21E8;
  if (!qword_2813E21E8)
  {
    sub_251B42050(255, &qword_2813E21E0, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E21E8);
  }

  return result;
}

unint64_t sub_251B4214C()
{
  result = qword_2813E25A0;
  if (!qword_2813E25A0)
  {
    sub_251B460B4(255, &qword_2813E2598, &qword_2813E20D0, MEMORY[0x277D839B0], sub_251B41EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E25A0);
  }

  return result;
}

void sub_251B4220C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_251B42050(255, &qword_2813E21E0, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCD88]);
    a3(255);
    sub_251B420D0();
    sub_251B422F0(a4, a5);
    v9 = sub_251C708D4();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_251B422F0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251B423EC()
{
  if (!qword_2813E2548)
  {
    sub_251B423B0(255);
    sub_251AA98B0(255, qword_2813E46A0);
    sub_251B422F0(&qword_2813E23D0, sub_251B423B0);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2548);
    }
  }
}

double sub_251B424A8@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_251B424D8@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v52 = a3;
  sub_251B46334();
  v50 = v5;
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v5);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B463D0(0);
  v51 = v8;
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v47 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask();
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - v15;
  v17 = a1[1];
  v55 = *a1;
  v56 = v17;
  v18 = a1[3];
  v57 = a1[2];
  v58 = v18;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v19 = sub_251C70764();
  __swift_project_value_buffer(v19, qword_2813E8130);
  sub_251B453AC(a2, v16);
  v20 = sub_251C70744();
  v21 = sub_251C713C4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v53[0] = v23;
    *v22 = 136315138;
    v24 = &v16[*(v11 + 32)];
    v25 = *v24;
    v26 = v24[1];

    sub_251B456A8(v16);
    v27 = sub_251B10780(v25, v26, v53);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_251A6C000, v20, v21, "%s Retrieving HKClinicalAccount list", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x25308E2B0](v23, -1, -1);
    MEMORY[0x25308E2B0](v22, -1, -1);
  }

  else
  {

    sub_251B456A8(v16);
  }

  v28 = __swift_project_boxed_opaque_existential_1(a2, a2[3])[2];
  v54[3] = &type metadata for ClinicalSharingAccountStore;
  v54[4] = &off_2863F67B8;
  v54[0] = v28;
  __swift_project_boxed_opaque_existential_1(v54, &type metadata for ClinicalSharingAccountStore);
  v29 = off_2863F67E8;
  v30 = v28;
  v53[8] = v29();
  v31 = swift_allocObject();
  v32 = v56;
  v31[1] = v55;
  v31[2] = v32;
  v33 = v58;
  v31[3] = v57;
  v31[4] = v33;
  sub_251B45950(&v55, v53);
  sub_251AA8E00();
  sub_251B422F0(&qword_2813E2118, sub_251AA8E00);
  v34 = v46;
  sub_251C70AE4();

  __swift_destroy_boxed_opaque_existential_1(v54);
  sub_251B453AC(a2, v14);
  v35 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v36 = swift_allocObject();
  sub_251B45704(v14, v36 + v35, type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask);
  v37 = (v36 + ((v12 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
  v38 = v56;
  *v37 = v55;
  v37[1] = v38;
  v39 = v58;
  v37[2] = v57;
  v37[3] = v39;
  sub_251B45950(&v55, v53);
  sub_251B42050(0, &qword_2813E21E0, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCD88]);
  sub_251B422F0(&qword_2813E25C0, sub_251B46334);
  sub_251B420D0();
  v40 = v47;
  v41 = v50;
  sub_251C70B04();

  (*(v48 + 8))(v34, v41);
  sub_251B422F0(&qword_2813E24F0, sub_251B463D0);
  v42 = v51;
  v43 = sub_251C70A94();
  result = (*(v49 + 8))(v40, v42);
  *v52 = v43;
  return result;
}

uint64_t sub_251B42B2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  v7 = *(a2 + 48);
  v6 = *(a2 + 56);
  v5 = *(a2 + 40);
  *a3 = *a2;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = *(a2 + 24);
  *(a3 + 40) = v5;
  *(a3 + 48) = v7;
  *(a3 + 56) = v6;
}

size_t sub_251B42BB4@<X0>(__int128 *a1@<X0>, void *a2@<X1>, unint64_t a3@<X8>)
{
  sub_251B460B4(0, &qword_2813E25F8, &qword_2813E2170, &type metadata for ClinicalSharingAuthorizations, sub_251B46144);
  v7 = v6;
  v74 = *(v6 - 1);
  v8 = *(v74 + 64);
  MEMORY[0x28223BE20](v6);
  v72 = &v68 - v9;
  sub_251B461C0();
  v11 = v10;
  v12 = *(v10 - 1);
  v13 = v12[8];
  MEMORY[0x28223BE20](v10);
  v73 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_251C70074();
  v16 = *(v15 - 8);
  v81 = v15;
  v82 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v80 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask();
  v69 = *(v19 - 8);
  v20 = *(v69 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v71 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v68 - v23;
  v25 = a1[1];
  v84 = *a1;
  v85 = v25;
  v26 = a1[3];
  v86 = a1[2];
  v87 = v26;
  if (qword_2813E26F8 != -1)
  {
LABEL_35:
    swift_once();
  }

  v27 = sub_251C70764();
  __swift_project_value_buffer(v27, qword_2813E8130);
  sub_251B453AC(a2, v24);
  v28 = sub_251C70744();
  v29 = sub_251C713C4();
  v30 = os_log_type_enabled(v28, v29);
  v79 = a2;
  v78 = a3;
  v77 = v11;
  v76 = v7;
  v75 = v12;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v83[0] = v7;
    *v31 = 136315138;
    v32 = &v24[*(v19 + 32)];
    v33 = *v32;
    v34 = v32[1];

    sub_251B456A8(v24);
    v35 = sub_251B10780(v33, v34, v83);
    a2 = v79;

    *(v31 + 4) = v35;
    _os_log_impl(&dword_251A6C000, v28, v29, "%s Retrieving ClinicalSharingAuthorizations", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25308E2B0](v7, -1, -1);
    MEMORY[0x25308E2B0](v31, -1, -1);
  }

  else
  {

    sub_251B456A8(v24);
  }

  v19 = *(&v84 + 1);
  v12 = MEMORY[0x277D84F90];
  if (!*(&v84 + 1))
  {
    goto LABEL_39;
  }

  v83[0] = MEMORY[0x277D84F90];
  a2 = (*(&v84 + 1) & 0xFFFFFFFFFFFFFF8);
  if (*(&v84 + 1) >> 62)
  {
    v24 = sub_251C717F4();
  }

  else
  {
    v24 = *((*(&v84 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = MEMORY[0x277D84F90];
  if (v24)
  {
    v37 = 0;
    a3 = v19 & 0xC000000000000001;
    while (1)
    {
      if (a3)
      {
        v38 = MEMORY[0x25308D460](v37, v19);
        v11 = (v37 + 1);
        if (__OFADD__(v37, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v40 = v83[0];
          goto LABEL_22;
        }
      }

      else
      {
        if (v37 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_35;
        }

        v38 = *(v19 + 8 * v37 + 32);
        v11 = (v37 + 1);
        if (__OFADD__(v37, 1))
        {
          goto LABEL_19;
        }
      }

      v12 = v38;
      v39 = sub_251C71474();

      if (v39)
      {
        sub_251C71734();
        v7 = *(v83[0] + 16);
        sub_251C71774();
        sub_251C71784();
        sub_251C71744();
      }

      else
      {
      }

      ++v37;
      if (v11 == v24)
      {
        goto LABEL_20;
      }
    }
  }

  v40 = MEMORY[0x277D84F90];
LABEL_22:
  a2 = v79;
  if ((v40 & 0x8000000000000000) == 0 && (v40 & 0x4000000000000000) == 0)
  {
    v41 = *(v40 + 16);
    if (v41)
    {
      goto LABEL_25;
    }

LABEL_38:

    v12 = MEMORY[0x277D84F90];
LABEL_39:
    v50 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v51 = sub_251C5D708(v12);

    v83[8] = v51;
    v52 = swift_allocObject();
    v53 = v85;
    v52[1] = v84;
    v52[2] = v53;
    v54 = v87;
    v52[3] = v86;
    v52[4] = v54;
    sub_251B45950(&v84, v83);
    v55 = MEMORY[0x277CBCD88];
    sub_251B42050(0, &qword_2813E2170, &type metadata for ClinicalSharingAuthorizations, MEMORY[0x277CBCD88]);
    sub_251B46144();
    v56 = v72;
    sub_251C70AE4();

    v57 = v71;
    sub_251B453AC(a2, v71);
    v58 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v59 = (v70 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    sub_251B45704(v57, v60 + v58, type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask);
    v61 = (v60 + v59);
    v62 = v85;
    *v61 = v84;
    v61[1] = v62;
    v63 = v87;
    v61[2] = v86;
    v61[3] = v63;
    sub_251B45950(&v84, v83);
    sub_251B42050(0, &qword_2813E21E0, &type metadata for DailyMetricDetailList, v55);
    sub_251B4629C();
    sub_251B420D0();
    v64 = v73;
    v65 = v76;
    sub_251C70B04();

    (*(v74 + 8))(v56, v65);
    sub_251B422F0(&qword_2813E2510, sub_251B461C0);
    v66 = v77;
    v67 = sub_251C70A94();
    result = (v75[1])(v64, v66);
    *v78 = v67;
    return result;
  }

  v41 = sub_251C717F4();
  if (!v41)
  {
    goto LABEL_38;
  }

LABEL_25:
  v83[0] = v36;
  result = sub_251C0B5E4(0, v41 & ~(v41 >> 63), 0);
  if ((v41 & 0x8000000000000000) == 0)
  {
    v43 = 0;
    v12 = v83[0];
    v44 = v80;
    do
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x25308D460](v43, v40);
      }

      else
      {
        v45 = *(v40 + 8 * v43 + 32);
      }

      v46 = v45;
      v47 = [v46 identifier];
      sub_251C70054();

      v83[0] = v12;
      v49 = v12[2];
      v48 = v12[3];
      if (v49 >= v48 >> 1)
      {
        sub_251C0B5E4(v48 > 1, v49 + 1, 1);
        v12 = v83[0];
      }

      ++v43;
      v12[2] = v49 + 1;
      (*(v82 + 32))(v12 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v49, v44, v81);
    }

    while (v41 != v43);

    a2 = v79;
    goto LABEL_39;
  }

  __break(1u);
  return result;
}

uint64_t sub_251B434A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  v7 = *(a2 + 48);
  v6 = *(a2 + 56);
  v5 = *(a2 + 40);
  *a3 = *a2;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = *(a2 + 24);
  *(a3 + 40) = v5;
  *(a3 + 48) = v7;
  *(a3 + 56) = v6;
}

uint64_t sub_251B43530@<X0>(void **a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, const char *a4@<X3>, uint64_t *a5@<X8>)
{
  v48 = a4;
  sub_251B45E00(0, &qword_27F47A540, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCE78]);
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  sub_251B42050(0, &qword_27F47A548, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCF38]);
  v49 = *(v13 - 8);
  v50 = v13;
  v14 = *(v49 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - v15;
  v17 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v22 = sub_251C70764();
  __swift_project_value_buffer(v22, qword_2813E8130);
  sub_251B453AC(a2, v20);
  v23 = v21;
  v24 = sub_251C70744();
  v25 = sub_251C713C4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v47 = a5;
    v27 = v26;
    v46 = swift_slowAlloc();
    v53[0] = v46;
    *v27 = 136315394;
    v28 = &v20[*(v17 + 32)];
    v30 = *v28;
    v29 = v28[1];

    sub_251B456A8(v20);
    v31 = sub_251B10780(v30, v29, v53);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    *&v54 = v21;
    v32 = v21;
    sub_251AA98B0(0, &qword_2813E1C30);
    sub_251C719F4();
    v33 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v34 = sub_251C70F74();
    v36 = sub_251B10780(v34, v35, v53);

    *(v27 + 14) = v36;
    _os_log_impl(&dword_251A6C000, v24, v25, v48, v27, 0x16u);
    v37 = v46;
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v37, -1, -1);
    v38 = v27;
    a5 = v47;
    MEMORY[0x25308E2B0](v38, -1, -1);
  }

  else
  {

    sub_251B456A8(v20);
  }

  v39 = a3[1];
  v54 = *a3;
  v55 = v39;
  v40 = a3[3];
  v56 = a3[2];
  v57 = v40;
  sub_251B45950(a3, v53);
  sub_251C70A24();
  sub_251AA98B0(0, &qword_2813E1C30);
  v41 = v52;
  sub_251C709F4();
  (*(v51 + 8))(v12, v41);
  sub_251B45994();
  v42 = v50;
  v43 = sub_251C70A94();
  result = (*(v49 + 8))(v16, v42);
  *a5 = v43;
  return result;
}

uint64_t sub_251B439D0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v63 = a3;
  sub_251B45D34();
  v6 = v5;
  v55 = *(v5 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v5);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B45E50();
  v52 = v9;
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  MEMORY[0x28223BE20](v9);
  v59 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B45F8C(0);
  v54 = v12;
  v62 = *(v12 - 8);
  v13 = *(v62 + 64);
  MEMORY[0x28223BE20](v12);
  v60 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask();
  v56 = *(v15 - 8);
  v16 = *(v56 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v58 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v51 - v19;
  v21 = a1[1];
  v65 = *a1;
  v66 = v21;
  v22 = a1[3];
  v67 = a1[2];
  v68 = v22;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v23 = sub_251C70764();
  __swift_project_value_buffer(v23, qword_2813E8130);
  sub_251B453AC(a2, v20);
  v24 = sub_251C70744();
  v25 = sub_251C713C4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v64[0] = v27;
    *v26 = 136315138;
    v28 = &v20[*(v15 + 32)];
    v51 = a2;
    v30 = *v28;
    v29 = v28[1];

    sub_251B456A8(v20);
    v31 = sub_251B10780(v30, v29, v64);
    a2 = v51;

    *(v26 + 4) = v31;
    _os_log_impl(&dword_251A6C000, v24, v25, "%s Retrieving ClinicalSharingSyncHistory", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x25308E2B0](v27, -1, -1);
    MEMORY[0x25308E2B0](v26, -1, -1);
  }

  else
  {

    sub_251B456A8(v20);
  }

  v32 = *(a2 + *(v15 + 24));
  v64[0] = sub_251C71444();
  sub_251B45EE8(0, &qword_2813E2060, &qword_2813E7518, MEMORY[0x277CC9318], MEMORY[0x277CBCEA8]);
  sub_251B45E00(0, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, MEMORY[0x277D83D88]);
  sub_251AE9E20();
  v33 = v53;
  sub_251C70AE4();

  sub_251B422F0(&qword_2813E2580, sub_251B45D34);
  v34 = sub_251C70A94();
  (*(v55 + 8))(v33, v6);
  v64[8] = v34;
  v35 = swift_allocObject();
  v36 = v66;
  v35[1] = v65;
  v35[2] = v36;
  v37 = v68;
  v35[3] = v67;
  v35[4] = v37;
  sub_251B45950(&v65, v64);
  sub_251B45EE8(0, &qword_2813E21A0, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, MEMORY[0x277CBCD88]);
  sub_251AE5D00();
  v38 = v59;
  sub_251C70AE4();

  v39 = v58;
  sub_251B453AC(a2, v58);
  v40 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v41 = (v57 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  sub_251B45704(v39, v42 + v40, type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask);
  v43 = (v42 + v41);
  v44 = v66;
  *v43 = v65;
  v43[1] = v44;
  v45 = v68;
  v43[2] = v67;
  v43[3] = v45;
  sub_251B45950(&v65, v64);
  sub_251B42050(0, &qword_2813E21E0, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCD88]);
  sub_251B422F0(&qword_2813E2640, sub_251B45E50);
  sub_251B420D0();
  v46 = v60;
  v47 = v52;
  sub_251C70B04();

  (*(v61 + 8))(v38, v47);
  sub_251B422F0(&qword_2813E2520, sub_251B45F8C);
  v48 = v54;
  v49 = sub_251C70A94();
  result = (*(v62 + 8))(v46, v48);
  *v63 = v49;
  return result;
}

uint64_t sub_251B44184@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (!v5)
  {
    v6 = *(a2 + 24);
  }

  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v12 = *(a2 + 48);
  v11 = *(a2 + 56);
  v10 = *(a2 + 40);
  *a3 = *a2;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v5;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  *(a3 + 48) = v12;
  *(a3 + 56) = v11;
}

uint64_t sub_251B4422C@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v58 = a3;
  sub_251B460B4(0, &qword_2813E2588, &qword_2813E20B8, MEMORY[0x277D83B88], sub_251B45A10);
  v53 = v5;
  v57 = *(v5 - 8);
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v5);
  v55 = &v48 - v7;
  sub_251B45A8C();
  v54 = v8;
  v52 = *(v8 - 8);
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v8);
  v56 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask();
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - v15;
  v17 = a1[1];
  v60 = *a1;
  v61 = v17;
  v18 = a1[3];
  v62 = a1[2];
  v63 = v18;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v19 = sub_251C70764();
  __swift_project_value_buffer(v19, qword_2813E8130);
  sub_251B453AC(a2, v16);
  v20 = sub_251C70744();
  v21 = sub_251C713C4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v59[0] = v23;
    *v22 = 136315138;
    v24 = &v16[*(v11 + 32)];
    v49 = v11;
    v25 = *v24;
    v26 = v24[1];
    v50 = v12;

    sub_251B456A8(v16);
    v27 = sub_251B10780(v25, v26, v59);
    v12 = v50;

    *(v22 + 4) = v27;
    v11 = v49;
    _os_log_impl(&dword_251A6C000, v20, v21, "%s Retrieving Age", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x25308E2B0](v23, -1, -1);
    MEMORY[0x25308E2B0](v22, -1, -1);
  }

  else
  {

    sub_251B456A8(v16);
  }

  v28 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v29 = a2;
  v30 = *(v11 + 20);
  v31 = *v28;
  v32 = sub_251B3F5AC(v29 + v30);

  v59[8] = v32;
  v33 = swift_allocObject();
  v34 = v61;
  v33[1] = v60;
  v33[2] = v34;
  v35 = v63;
  v33[3] = v62;
  v33[4] = v35;
  sub_251B45950(&v60, v59);
  v36 = MEMORY[0x277CBCD88];
  sub_251B42050(0, &qword_2813E20B8, MEMORY[0x277D83B88], MEMORY[0x277CBCD88]);
  sub_251B45A10();
  v37 = v55;
  sub_251C70AE4();

  sub_251B453AC(v29, v14);
  v38 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v39 = swift_allocObject();
  sub_251B45704(v14, v39 + v38, type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask);
  v40 = (v39 + ((v12 + v38 + 7) & 0xFFFFFFFFFFFFFFF8));
  v41 = v61;
  *v40 = v60;
  v40[1] = v41;
  v42 = v63;
  v40[2] = v62;
  v40[3] = v42;
  sub_251B45950(&v60, v59);
  sub_251B42050(0, &qword_2813E21E0, &type metadata for DailyMetricDetailList, v36);
  sub_251B45B68();
  sub_251B420D0();
  v43 = v56;
  v44 = v53;
  sub_251C70B04();

  (*(v57 + 8))(v37, v44);
  sub_251B422F0(&qword_2813E24E0, sub_251B45A8C);
  v45 = v54;
  v46 = sub_251C70A94();
  result = (*(v52 + 8))(v43, v45);
  *v58 = v46;
  return result;
}

uint64_t sub_251B44830@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);
  *a3 = *a2;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v3;
  *(a3 + 40) = 0;
  *(a3 + 48) = v8;
  *(a3 + 56) = v7;
}

uint64_t sub_251B448B0@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v54 = a3;
  sub_251B460B4(0, &qword_2813E25E8, &qword_2813E2160, MEMORY[0x277D837D0], sub_251B4576C);
  v6 = v5;
  v56 = *(v5 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v5);
  v53 = &v48 - v8;
  sub_251B457E8();
  v52 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v55 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask();
  v49 = *(v13 - 8);
  v14 = *(v49 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v51 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - v17;
  v19 = a1[1];
  v58 = *a1;
  v59 = v19;
  v20 = a1[3];
  v60 = a1[2];
  v61 = v20;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v21 = sub_251C70764();
  __swift_project_value_buffer(v21, qword_2813E8130);
  sub_251B453AC(a2, v18);
  v22 = sub_251C70744();
  v23 = sub_251C713C4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v57[0] = v25;
    *v24 = 136315138;
    v26 = &v18[*(v13 + 32)];
    v27 = *v26;
    v28 = v26[1];
    v48 = v10;

    sub_251B456A8(v18);
    v29 = sub_251B10780(v27, v28, v57);
    v10 = v48;

    *(v24 + 4) = v29;
    _os_log_impl(&dword_251A6C000, v22, v23, "%s Retrieving Sex", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x25308E2B0](v25, -1, -1);
    MEMORY[0x25308E2B0](v24, -1, -1);
  }

  else
  {

    sub_251B456A8(v18);
  }

  v30 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v31 = sub_251B3F978();

  v57[8] = v31;
  v32 = swift_allocObject();
  v33 = v59;
  v32[1] = v58;
  v32[2] = v33;
  v34 = v61;
  v32[3] = v60;
  v32[4] = v34;
  sub_251B45950(&v58, v57);
  v35 = MEMORY[0x277CBCD88];
  sub_251B42050(0, &qword_2813E2160, MEMORY[0x277D837D0], MEMORY[0x277CBCD88]);
  sub_251B4576C();
  v36 = v53;
  sub_251C70AE4();

  v37 = v51;
  sub_251B453AC(a2, v51);
  v38 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v39 = (v50 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  sub_251B45704(v37, v40 + v38, type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask);
  v41 = (v40 + v39);
  v42 = v59;
  *v41 = v58;
  v41[1] = v42;
  v43 = v61;
  v41[2] = v60;
  v41[3] = v43;
  sub_251B45950(&v58, v57);
  sub_251B42050(0, &qword_2813E21E0, &type metadata for DailyMetricDetailList, v35);
  sub_251B458C4();
  sub_251B420D0();
  v44 = v55;
  sub_251C70B04();

  (*(v56 + 8))(v36, v6);
  sub_251B422F0(&qword_2813E2500, sub_251B457E8);
  v45 = v52;
  v46 = sub_251C70A94();
  result = (*(v10 + 8))(v44, v45);
  *v54 = v46;
  return result;
}

uint64_t sub_251B44EA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 40);
  *a3 = *a2;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = *(a2 + 24);
  *(a3 + 40) = v7;
  *(a3 + 48) = v3;
  *(a3 + 56) = v4;
}

uint64_t sub_251B44F24@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v56 = a2;
  v5 = type metadata accessor for ClinicalSharingDailyMetric();
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251C70014();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v55 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask();
  v13 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *a1;
  v17 = *(a1 + 1);
  v16 = *(a1 + 2);
  v18 = *(a1 + 4);
  v53 = *(a1 + 3);
  v54 = v16;
  v49 = v18;
  v48 = a1[40];
  v19 = *(a1 + 7);
  v47 = *(a1 + 6);
  v52 = v19;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v20 = sub_251C70764();
  __swift_project_value_buffer(v20, qword_2813E8130);
  sub_251B453AC(v56, v15);
  v21 = sub_251C70744();
  v22 = sub_251C713C4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v44 = v17;
    v24 = v23;
    v25 = swift_slowAlloc();
    v46 = v9;
    v26 = v25;
    v57 = v25;
    *v24 = 136315138;
    v27 = v50;
    v28 = &v15[*(v50 + 32)];
    v45 = a3;
    v43 = v10;
    v29 = *v28;
    v30 = v28[1];

    sub_251B456A8(v15);
    v31 = sub_251B10780(v29, v30, &v57);
    v10 = v43;

    *(v24 + 4) = v31;
    a3 = v45;
    _os_log_impl(&dword_251A6C000, v21, v22, "%s Creating ClinicalSharingDailyMetric", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v32 = v26;
    v9 = v46;
    MEMORY[0x25308E2B0](v32, -1, -1);
    v33 = v24;
    v17 = v44;
    MEMORY[0x25308E2B0](v33, -1, -1);
  }

  else
  {

    sub_251B456A8(v15);
    v27 = v50;
  }

  v35 = v55;
  v34 = v56;
  (*(v10 + 16))(v55, v56 + *(v27 + 20), v9);
  v36 = *(v34 + *(v27 + 28));
  a3[3] = v5;
  a3[4] = &off_2863F90E8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v38 = &v8[v5[12]];
  *v38 = 0xD000000000000026;
  *(v38 + 1) = 0x8000000251C8BDD0;
  v39 = v49;
  *(v8 + 1) = v17;
  *(v8 + 2) = v39;
  v8[24] = v48;
  v40 = v52;
  *(v8 + 4) = v47;
  *(v8 + 5) = v40;
  *v8 = v54;
  v8[v5[9]] = v36;
  v8[v5[10]] = v51 & 1;
  (*(v10 + 32))(&v8[v5[8]], v35, v9);
  *&v8[v5[11]] = v53;
  sub_251B45704(v8, boxed_opaque_existential_1, type metadata accessor for ClinicalSharingDailyMetric);
}

unint64_t sub_251B45330()
{
  result = qword_2813E1FF8;
  if (!qword_2813E1FF8)
  {
    sub_251B42050(255, &qword_2813E1FF0, MEMORY[0x277D839B0], MEMORY[0x277CBCEA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E1FF8);
  }

  return result;
}

uint64_t sub_251B453AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_2Tm()
{
  v1 = (type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  v5 = v1[7];
  v6 = sub_251C70014();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  v7 = *(v0 + v3 + v1[10] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251B45594(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_251B45628@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_251B44F24(a1, v6, a2);
}

uint64_t sub_251B456A8(uint64_t a1)
{
  v2 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251B45704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_251B4576C()
{
  result = qword_2813E2168;
  if (!qword_2813E2168)
  {
    sub_251B42050(255, &qword_2813E2160, MEMORY[0x277D837D0], MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2168);
  }

  return result;
}

void sub_251B457E8()
{
  if (!qword_2813E24F8)
  {
    sub_251B460B4(255, &qword_2813E25E8, &qword_2813E2160, MEMORY[0x277D837D0], sub_251B4576C);
    sub_251B42050(255, &qword_2813E21E0, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCD88]);
    sub_251B458C4();
    sub_251B420D0();
    v0 = sub_251C70854();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E24F8);
    }
  }
}

unint64_t sub_251B458C4()
{
  result = qword_2813E25F0;
  if (!qword_2813E25F0)
  {
    sub_251B460B4(255, &qword_2813E25E8, &qword_2813E2160, MEMORY[0x277D837D0], sub_251B4576C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E25F0);
  }

  return result;
}

unint64_t sub_251B45994()
{
  result = qword_27F47A550;
  if (!qword_27F47A550)
  {
    sub_251B42050(255, &qword_27F47A548, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A550);
  }

  return result;
}

unint64_t sub_251B45A10()
{
  result = qword_2813E20C0;
  if (!qword_2813E20C0)
  {
    sub_251B42050(255, &qword_2813E20B8, MEMORY[0x277D83B88], MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E20C0);
  }

  return result;
}

void sub_251B45A8C()
{
  if (!qword_2813E24D8)
  {
    sub_251B460B4(255, &qword_2813E2588, &qword_2813E20B8, MEMORY[0x277D83B88], sub_251B45A10);
    sub_251B42050(255, &qword_2813E21E0, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCD88]);
    sub_251B45B68();
    sub_251B420D0();
    v0 = sub_251C70854();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E24D8);
    }
  }
}

unint64_t sub_251B45B68()
{
  result = qword_2813E2590;
  if (!qword_2813E2590)
  {
    sub_251B460B4(255, &qword_2813E2588, &qword_2813E20B8, MEMORY[0x277D83B88], sub_251B45A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2590);
  }

  return result;
}

uint64_t objectdestroy_23Tm()
{
  v1 = (type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  v6 = v1[7];
  v7 = sub_251C70014();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  v8 = *(v5 + v1[10] + 8);

  v9 = *(v0 + v4 + 8);

  v10 = *(v0 + v4 + 16);

  v11 = *(v0 + v4 + 24);

  v12 = *(v0 + v4 + 56);

  return MEMORY[0x2821FE8E8](v0, v4 + 64, v2 | 7);
}

void sub_251B45D34()
{
  if (!qword_2813E2578)
  {
    sub_251B45EE8(255, &qword_2813E2060, &qword_2813E7518, MEMORY[0x277CC9318], MEMORY[0x277CBCEA8]);
    sub_251B45E00(255, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, MEMORY[0x277D83D88]);
    sub_251AE9E20();
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2578);
    }
  }
}

void sub_251B45E00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_251B45E50()
{
  if (!qword_2813E2638)
  {
    sub_251B45EE8(255, &qword_2813E21A0, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, MEMORY[0x277CBCD88]);
    sub_251AE5D00();
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2638);
    }
  }
}

void sub_251B45EE8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_251B45E00(255, a3, a4, MEMORY[0x277D83D88]);
    v9 = v8;
    v10 = sub_251AA98B0(255, &qword_2813E1C30);
    v11 = a5(a1, v9, v10, MEMORY[0x277D84950]);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_251B45FC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_251B42050(255, &qword_2813E21E0, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCD88]);
    sub_251B422F0(a4, a5);
    sub_251B420D0();
    v8 = sub_251C70854();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_251B460B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    sub_251B42050(255, a3, a4, MEMORY[0x277CBCD88]);
    a5();
    v7 = sub_251C70804();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_251B46144()
{
  result = qword_2813E2178;
  if (!qword_2813E2178)
  {
    sub_251B42050(255, &qword_2813E2170, &type metadata for ClinicalSharingAuthorizations, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2178);
  }

  return result;
}

void sub_251B461C0()
{
  if (!qword_2813E2508)
  {
    sub_251B460B4(255, &qword_2813E25F8, &qword_2813E2170, &type metadata for ClinicalSharingAuthorizations, sub_251B46144);
    sub_251B42050(255, &qword_2813E21E0, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCD88]);
    sub_251B4629C();
    sub_251B420D0();
    v0 = sub_251C70854();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2508);
    }
  }
}

unint64_t sub_251B4629C()
{
  result = qword_2813E2600;
  if (!qword_2813E2600)
  {
    sub_251B460B4(255, &qword_2813E25F8, &qword_2813E2170, &type metadata for ClinicalSharingAuthorizations, sub_251B46144);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2600);
  }

  return result;
}

void sub_251B46334()
{
  if (!qword_2813E25B8)
  {
    sub_251AA8E00();
    sub_251B422F0(&qword_2813E2118, sub_251AA8E00);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E25B8);
    }
  }
}

uint64_t objectdestroy_20Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_251B46470@<X0>(void **a1@<X0>, const char *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  return sub_251B43530(a1, v3 + v8, (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), a2, a3);
}

unint64_t sub_251B46518()
{
  result = qword_2813E2A20[0];
  if (!qword_2813E2A20[0])
  {
    type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2813E2A20);
  }

  return result;
}

uint64_t sub_251B46560(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_251B465BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_251B46658()
{
  result = sub_251AA98B0(319, qword_2813E7418);
  if (v1 <= 0x3F)
  {
    result = sub_251C70014();
    if (v2 <= 0x3F)
    {
      result = sub_251A8223C(319, &qword_2813E1DB0, 0x277CCD570);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_251B4672C()
{
  v1 = type metadata accessor for PBBlobPushResult(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v1 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  while (v9 < *(v7 + 16))
  {
    sub_251B46858(v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v9, v6);
    v10 = *(v6 + 4);
    v11 = v6[40];
    result = sub_251B468BC(v6);
    if (v11 == 1)
    {
      if (v10 == 4)
      {
        return 1;
      }
    }

    else if (v10 == 5)
    {
      return 1;
    }

    if (v8 == ++v9)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251B46858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBBlobPushResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251B468BC(uint64_t a1)
{
  v2 = type metadata accessor for PBBlobPushResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251B46918()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1C10);
  __swift_project_value_buffer(v0, qword_27F4A1C10);
  sub_251ADA5E0();
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "w0";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "L";
  *(v11 + 1) = 1;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B46AC4()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_251C704D4();
    }
  }

  return result;
}

uint64_t sub_251B46B44()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 == v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_251C70624();
  if (v1)
  {
    return result;
  }

LABEL_10:
  v8 = v0[2];
  v9 = v0[3];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_19;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      result = sub_251C70624();
      if (v1)
      {
        return result;
      }

      goto LABEL_19;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 != v12)
  {
    goto LABEL_18;
  }

LABEL_19:
  v13 = v0 + *(type metadata accessor for PBVerificationValuePair(0) + 24);
  return sub_251C70394();
}

uint64_t sub_251B46C58@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_251C745D0;
  a2[1] = xmmword_251C745D0;
  v2 = a2 + *(a1 + 24);
  return sub_251C703A4();
}

uint64_t sub_251B46CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B47A30(&qword_27F47A5F8, type metadata accessor for PBVerificationValuePair);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B46D70(uint64_t a1)
{
  v2 = sub_251B47A30(&qword_27F47A5E0, type metadata accessor for PBVerificationValuePair);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B46DDC()
{
  sub_251B47A30(&qword_27F47A5E0, type metadata accessor for PBVerificationValuePair);

  return sub_251C705C4();
}

uint64_t sub_251B46E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_251A9D1F0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_251A9D1F0(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  sub_251C703B4();
  sub_251B47A30(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B46F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B47A30(&qword_27F47A600, type metadata accessor for PBPA);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B47010(uint64_t a1)
{
  v2 = sub_251B47A30(&qword_27F47A5C0, type metadata accessor for PBPA);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4707C()
{
  sub_251B47A30(&qword_27F47A5C0, type metadata accessor for PBPA);

  return sub_251C705C4();
}

uint64_t sub_251B4710C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2 || *(v6 + 16) == *(v6 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v8)
  {
    if (v6 == v6 >> 32)
    {
      goto LABEL_11;
    }
  }

  else if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  v9 = a4;
  result = sub_251C70624();
  if (v5)
  {
    return result;
  }

  a4 = v9;
LABEL_11:
  v11 = v4 + *(a4(0) + 20);
  return sub_251C70394();
}

uint64_t sub_251B47234(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B47A30(&qword_27F47A608, type metadata accessor for PBPB);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B472D4(uint64_t a1)
{
  v2 = sub_251B47A30(&qword_27F47A5A0, type metadata accessor for PBPB);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B47340()
{
  sub_251B47A30(&qword_27F47A5A0, type metadata accessor for PBPB);

  return sub_251C705C4();
}

uint64_t sub_251B47418(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B47A30(&qword_27F47A610, type metadata accessor for PBConfirmationA);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B474B8(uint64_t a1)
{
  v2 = sub_251B47A30(&qword_27F47A580, type metadata accessor for PBConfirmationA);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B47524()
{
  sub_251B47A30(&qword_27F47A580, type metadata accessor for PBConfirmationA);

  return sub_251C705C4();
}

uint64_t sub_251B475B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_251C706D4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  sub_251ADA5E0();
  sub_251A93770();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 72);
  v9 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_251C74800;
  v11 = v10 + v9 + *(v7 + 56);
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = 1;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v13 = sub_251C706B4();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_251C706C4();
}

uint64_t sub_251B4774C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B47A30(&qword_27F47A618, type metadata accessor for PBConfirmationB);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B477EC(uint64_t a1)
{
  v2 = sub_251B47A30(&qword_27F47A560, type metadata accessor for PBConfirmationB);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B47858()
{
  sub_251B47A30(&qword_27F47A560, type metadata accessor for PBConfirmationB);

  return sub_251C705C4();
}

uint64_t sub_251B478D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_251A9D1F0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_251C703B4();
  sub_251B47A30(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B47A30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251B48030()
{
  result = sub_251C703B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
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
    v8 = sub_251C703B4();
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
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery()
{
  result = qword_27F47A670;
  if (!qword_27F47A670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251B48348()
{
  result = type metadata accessor for ClinicalSharingQueryContext(319);
  if (v1 <= 0x3F)
  {
    result = sub_251C6FAE4();
    if (v2 <= 0x3F)
    {
      result = sub_251A8223C(319, &qword_27F479E00, 0x277CCD0C0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_251B48420()
{
  v1 = type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery();
  v2 = v1 - 8;
  v47 = *(v1 - 8);
  v46 = *(v47 + 64);
  MEMORY[0x28223BE20](v1);
  v45 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A82308(0, &qword_27F478D58, type metadata accessor for PBTypedData);
  v5 = *(v4 - 8);
  v50 = v4;
  v51 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = v41 - v7;
  sub_251A822E8(0);
  v9 = *(v8 - 8);
  v52 = v8;
  v53 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v49 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251C70014();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + 28);
  v18 = *(v0 + *(v2 + 32));
  v19 = objc_opt_self();
  v20 = v0;
  sub_251C6FAB4();
  v21 = sub_251C6FF94();
  v22 = *(v13 + 8);
  v22(v16, v12);
  sub_251C6FA84();
  v23 = sub_251C6FF94();
  v22(v16, v12);
  v24 = [v19 predicateForSamplesWithStartDate:v21 endDate:v23 options:0];

  v25 = [objc_allocWithZone(MEMORY[0x277CCD848]) initWithSampleType:v18 predicate:v24];
  sub_251BFC460(0xD000000000000018, 0x8000000251C8BF00, v18, 5, 1);
  v43 = v20;
  sub_251A823B4(*v20 + 16, v55);
  __swift_project_boxed_opaque_existential_1(v55, v55[3]);
  sub_251A82418();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_251C74560;
  *(v26 + 32) = v25;
  v27 = off_2863FD750;
  v44 = v25;
  v28 = v27();
  v41[1] = v28;

  v54 = v28;
  v42 = type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery;
  v29 = v20;
  v30 = v45;
  sub_251B497E8(v29, v45, type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery);
  v31 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v32 = swift_allocObject();
  sub_251B49850(v30, v32 + v31, type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_251B495E0;
  *(v33 + 24) = v32;
  sub_251A82164();
  type metadata accessor for PBTypedData(0);
  sub_251A8265C(&qword_27F478D78, sub_251A82164);
  v34 = v48;
  sub_251C70AA4();

  __swift_destroy_boxed_opaque_existential_1(v55);
  sub_251B497E8(v43, v30, v42);
  v35 = swift_allocObject();
  sub_251B49850(v30, v35 + v31, type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  v37 = v49;
  v36 = v50;
  sub_251C70774();

  (*(v51 + 8))(v34, v36);
  sub_251A8265C(&qword_27F478D88, sub_251A822E8);
  v38 = v52;
  v39 = sub_251C70A94();

  (*(v53 + 8))(v37, v38);
  return v39;
}

uint64_t sub_251B48A54@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251A826A4(0, &qword_27F478D90, MEMORY[0x277CC88A8]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v53 - v7;
  v9 = type metadata accessor for PBDateRange(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v62 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTypedData(0);
  v63 = *(v13 - 1);
  v14 = *(v63 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PBCategorySeries(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v22 = &v53 - v21;
  if (a1 >> 62)
  {
    v61 = a1;
    v45 = v20;
    v46 = sub_251C717F4();
    v20 = v45;
    a1 = v61;
    if (v46)
    {
LABEL_3:
      v59 = v20;
      v60 = v8;
      v61 = a2;
      v23 = sub_251B14FFC(a1);
      if (v23)
      {
        v24 = v23;
        MEMORY[0x28223BE20](v23);
        v52 = v2;
        sub_251C5608C(sub_251B497C8, (&v53 - 4), v24);
        v26 = v25;

        *v22 = 0;
        *(v22 + 1) = 0xE000000000000000;
        v27 = &v22[*(v17 + 24)];
        sub_251C703A4();
        v28 = *(v10 + 56);
        v28(&v22[*(v17 + 28)], 1, 1, v9);
        v55 = v28;
        *(v22 + 2) = v26;
        *v16 = 0;
        v16[8] = 1;
        v29 = v13[5];
        v30 = type metadata accessor for PBTypedData.OneOf_Raw(0);
        v31 = *(v30 - 8);
        v57 = *(v31 + 56);
        v58 = v31 + 56;
        v57(&v16[v29], 1, 1, v30);
        v32 = &v16[v13[6]];
        sub_251C703A4();
        v33 = v9;
        v54 = v9;
        v34 = v13[7];
        v28(&v16[v34], 1, 1, v33);
        v35 = *(type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery() + 20);
        v36 = sub_251C6FAE4();
        v37 = *(v36 - 8);
        v56 = v13;
        v38 = v37;
        v39 = v2 + v35;
        v40 = v60;
        (*(v37 + 16))(v60, v39, v36);
        (*(v38 + 56))(v40, 0, 1, v36);
        v41 = v62;
        sub_251BFC464(5, 1, v40);
        sub_251A82844(v40, &qword_27F478D90, MEMORY[0x277CC88A8]);
        sub_251A82844(&v16[v34], qword_2813E6EE8, type metadata accessor for PBDateRange);
        sub_251B49850(v41, &v16[v34], type metadata accessor for PBDateRange);
        v55(&v16[v34], 0, 1, v54);
        *v16 = 126;
        v16[8] = 1;
        v42 = v59;
        sub_251B497E8(v22, v59, type metadata accessor for PBCategorySeries);
        sub_251A82844(&v16[v29], qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
        sub_251B49850(v42, &v16[v29], type metadata accessor for PBCategorySeries);
        swift_storeEnumTagMultiPayload();
        v57(&v16[v29], 0, 1, v30);
        v43 = v61;
        sub_251B49850(v16, v61, type metadata accessor for PBTypedData);
        (*(v63 + 56))(v43, 0, 1, v56);
        return sub_251A827E8(v22);
      }

      else
      {
        v64 = 0;
        v65 = 0xE000000000000000;
        sub_251C716A4();

        v64 = 0xD000000000000023;
        v65 = 0x8000000251C89D50;
        v48 = [*(v2 + *(type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery() + 24)) description];
        v49 = sub_251C70F14();
        v51 = v50;

        MEMORY[0x25308CDA0](v49, v51);

        result = sub_251C717E4();
        __break(1u);
      }

      return result;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v47 = *(v63 + 56);

  return v47(a2, 1, 1, v13);
}

uint64_t sub_251B4910C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v48 = MEMORY[0x277CC9578];
  sub_251A826A4(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - v10;
  v12 = type metadata accessor for PBDateRange(0);
  v45 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v47 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0xE000000000000000;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0xE000000000000000;
  v17 = type metadata accessor for PBCategorySeries.Event(0);
  v18 = a3 + v17[7];
  v19 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v40 = v18;
  v41 = v20 + 56;
  v42 = v21;
  v43 = v19;
  (v21)(v18, 1, 1);
  v22 = a3 + v17[8];
  sub_251C703A4();
  v23 = v17[9];
  v24 = *(v13 + 56);
  v44 = v13 + 56;
  v46 = v24;
  v24(a3 + v23, 1, 1, v12);
  v25 = [v16 startDate];
  sub_251C6FFE4();

  v26 = sub_251C70014();
  v27 = *(*(v26 - 8) + 56);
  v27(v11, 0, 1, v26);
  v28 = [v16 endDate];
  sub_251C6FFE4();

  v27(v9, 0, 1, v26);
  v29 = v47;
  sub_251C15BE4(v11, v9);
  v30 = v48;
  sub_251A82844(v9, &qword_2813E7500, v48);
  sub_251A82844(v11, &qword_2813E7500, v30);
  sub_251A82844(a3 + v23, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251B49850(v29, a3 + v23, type metadata accessor for PBDateRange);
  v46(a3 + v23, 0, 1, v45);
  result = [v16 value];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *a3 = result;
    v32 = [v16 value];
    v33 = v32;
    if ((v32 - 1) >= 4)
    {
      v34 = 0;
    }

    else
    {
      v34 = v32;
    }

    v35 = v40;
    sub_251A82844(v40, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    *v35 = v34;
    *(v35 + 8) = 1;
    v36 = v43;
    swift_storeEnumTagMultiPayload();
    result = v42(v35, 0, 1, v36);
    if (v33 > 2)
    {
      if (v33 == 3)
      {
        v37 = 0xE900000000000077;
        v38 = 0x6F4C746165706572;
        goto LABEL_16;
      }

      if (v33 == 4)
      {
        v37 = 0xED0000776F4C7972;
        v38 = 0x6556746165706572;
        goto LABEL_16;
      }
    }

    else
    {
      if (v33 == 1)
      {
        v37 = 0xEA0000000000776FLL;
        v38 = 0x4C6C616974696E69;
        goto LABEL_16;
      }

      if (v33 == 2)
      {
        v37 = 0xEE00776F4C797265;
        v38 = 0x566C616974696E69;
LABEL_16:
        *(a3 + 8) = v38;
        *(a3 + 16) = v37;
        return result;
      }
    }

    v37 = 0xE600000000000000;
    v38 = 0x746553746F6ELL;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_251B495E0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_251B48A54(a1, a2);
}

uint64_t objectdestroyTm_5()
{
  v1 = (type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v1[7];
  v7 = sub_251C6FAE4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251B49750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_251BEFE60(a1, 0, a2);
}

uint64_t sub_251B497E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B49850(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for LinkResolverError()
{
  result = qword_27F47A690;
  if (!qword_27F47A690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_251B4994C()
{
  v1 = v0;
  v2 = sub_251C6FE64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LinkResolverError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251B49C84(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = *v10;
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_251C716A4();
      MEMORY[0x25308CDA0](0xD00000000000001FLL, 0x8000000251C8BF70);
      v22[1] = v14;
      sub_251A82284();
      sub_251C717C4();

      return v23;
    }

    return 0xD000000000000039;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v12 = *v10;
      v13 = v10[1];
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_251C716A4();

      v23 = 0xD00000000000001ALL;
      v24 = 0x8000000251C8BFB0;
      MEMORY[0x25308CDA0](v12, v13);

      return v23;
    }

    sub_251B49CE8();
    v17 = (v10 + *(v16 + 48));
    v18 = *v17;
    v19 = v17[1];
    (*(v3 + 32))(v6, v10, v2);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_251C716A4();

    v23 = 0xD000000000000015;
    v24 = 0x8000000251C8BF90;
    MEMORY[0x25308CDA0](v18, v19);

    MEMORY[0x25308CDA0](10272, 0xE200000000000000);
    sub_251B49D50(&qword_27F478E68, MEMORY[0x277CC9260]);
    v20 = sub_251C719A4();
    MEMORY[0x25308CDA0](v20);

    MEMORY[0x25308CDA0](41, 0xE100000000000000);
    v21 = v23;
    (*(v3 + 8))(v6, v2);
    return v21;
  }
}

uint64_t sub_251B49C84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkResolverError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_251B49CE8()
{
  if (!qword_27F47A688)
  {
    sub_251C6FE64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47A688);
    }
  }
}

uint64_t sub_251B49D50(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251B49D98()
{
  sub_251B49CE8();
  if (v0 <= 0x3F)
  {
    sub_251A82284();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_251B49E18(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v74 = a2;
  v88 = a3;
  v87 = sub_251C70074();
  v73 = *(v87 - 8);
  v4 = v73[8];
  MEMORY[0x28223BE20](v87);
  v72 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B4B034();
  v85 = *(v6 - 8);
  v86 = v6;
  v7 = *(v85 + 64);
  MEMORY[0x28223BE20](v6);
  v82 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B4B1A4(0, &qword_2813E2368, MEMORY[0x277CBCCD8]);
  v76 = *(v9 - 8);
  v77 = v9;
  v10 = v76[8];
  MEMORY[0x28223BE20](v9);
  v75 = &v71 - v11;
  sub_251B4B1A4(0, &qword_27F47A6A8, MEMORY[0x277CBCD28]);
  v79 = *(v12 - 8);
  v80 = v12;
  v13 = *(v79 + 64);
  MEMORY[0x28223BE20](v12);
  v78 = &v71 - v14;
  sub_251B4B1A4(0, &qword_27F479C30, MEMORY[0x277CBCC38]);
  v83 = *(v15 - 8);
  v84 = v15;
  v16 = *(v83 + 64);
  MEMORY[0x28223BE20](v15);
  v81 = &v71 - v17;
  sub_251B4B2E8(0, &qword_27F479400, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCE78]);
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v71 - v22;
  v24 = MEMORY[0x277CBCF38];
  sub_251AFD990(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v26 = v25;
  v27 = *(v25 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  v30 = &v71 - v29;
  v31 = *a1;
  v91[0] = v31;
  v32 = type metadata accessor for ClinicalSharingSyncContext();

  v89 = v32;
  sub_251C70A24();
  sub_251A82284();
  sub_251C709F4();
  (*(v20 + 8))(v23, v19);
  sub_251AFDA08(&qword_27F479410, &qword_27F479408, v24);
  v33 = sub_251C70A94();
  (*(v27 + 8))(v30, v26);
  v34 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error;
  if (*(v31 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error))
  {
    v35 = v87;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v36 = sub_251C70764();
    __swift_project_value_buffer(v36, qword_2813E8130);

    v37 = sub_251C70744();
    v38 = sub_251C713D4();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v91[0] = v89;
      *v39 = 136315394;
      v40 = v73;
      v41 = v73[2];
      LODWORD(v86) = v38;
      v42 = v72;
      v41(v72, v31 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v35);
      sub_251B4B298(&qword_27F479418, MEMORY[0x277CC95F0]);
      v43 = sub_251C719A4();
      v45 = v44;
      (v40[1])(v42, v35);
      v46 = sub_251B10780(v43, v45, v91);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2080;
      v90 = *(v31 + v34);
      v47 = v90;
      sub_251B4B2E8(0, &qword_2813E1C20, sub_251A82284, MEMORY[0x277D83D88]);
      v48 = sub_251C70F74();
      v50 = sub_251B10780(v48, v49, v91);

      *(v39 + 14) = v50;
      _os_log_impl(&dword_251A6C000, v37, v86, "ClinicalSharingSyncContext for account %s is in error state, will not be able to update DocumentReference. Error: %s", v39, 0x16u);
      v51 = v89;
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v51, -1, -1);
      MEMORY[0x25308E2B0](v39, -1, -1);
    }
  }

  else
  {
    v91[0] = v33;
    v52 = swift_allocObject();
    v53 = v74;
    *(v52 + 16) = v74;
    v73 = v53;
    sub_251C70964();
    v87 = v33;
    v54 = MEMORY[0x277CBCD88];
    sub_251AFD990(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v54);
    v55 = v75;
    sub_251C70B94();

    v74 = MEMORY[0x277CBCCE0];
    sub_251B4B160(&qword_2813E2370, &qword_2813E2368, MEMORY[0x277CBCCD8]);
    v56 = v77;
    v57 = sub_251C70A94();
    v72 = v76[1];
    (v72)(v55, v56);
    v91[0] = v57;
    v58 = swift_allocObject();
    v59 = v73;
    *(v58 + 16) = v73;
    *(v58 + 24) = 3;
    v76 = v59;
    sub_251C70964();
    sub_251C70B94();

    v60 = sub_251C70A94();

    (v72)(v55, v56);
    v91[0] = v60;

    v61 = v78;
    sub_251C70BA4();

    v62 = swift_allocObject();
    v63 = v76;
    *(v62 + 16) = v76;
    v64 = v63;
    sub_251C70964();
    sub_251B4B160(&qword_27F47A6B0, &qword_27F47A6A8, MEMORY[0x277CBCD28]);
    v65 = v82;
    v66 = v80;
    sub_251C70B94();

    sub_251B4B298(&qword_27F47A6B8, sub_251B4B034);
    v67 = v86;
    v68 = sub_251C70A94();
    (*(v85 + 8))(v65, v67);
    (*(v79 + 8))(v61, v66);
    v91[0] = v68;

    v69 = v81;
    sub_251C70B04();

    sub_251B4B160(&qword_27F479C38, &qword_27F479C30, MEMORY[0x277CBCC38]);
    v70 = v84;
    v33 = sub_251C70A94();

    (*(v83 + 8))(v69, v70);
  }

  *v88 = v33;
}

id sub_251B4A9AC@<X0>(void **a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_251B4B2E8(0, &qword_27F479400, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCE78]);
  v8 = v7;
  v35 = *(v7 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v32 - v10;
  sub_251AFD990(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v13 = v12;
  v36 = *(v12 - 8);
  v14 = *(v36 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v32 - v15;
  v17 = *a1;
  if ([*&a2[OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus] userStatus] == 5)
  {
    v33 = v13;
    v34 = a3;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v18 = sub_251C70764();
    __swift_project_value_buffer(v18, qword_2813E8130);
    v19 = v17;
    v20 = sub_251C70744();
    v21 = sub_251C713D4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      v38 = v32[0];
      *v22 = 136315138;
      v37 = v17;
      v23 = v17;
      sub_251A82284();
      sub_251C719F4();
      v24 = HKSensitiveLogItem();
      v32[1] = v3;
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v25 = sub_251C70F74();
      v27 = sub_251B10780(v25, v26, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_251A6C000, v20, v21, "ClinicalSharingSyncTask: Error searching for or updating DocumentReference while deleting the account, ignoring. Error: %s", v22, 0xCu);
      v28 = v32[0];
      __swift_destroy_boxed_opaque_existential_1(v32[0]);
      MEMORY[0x25308E2B0](v28, -1, -1);
      MEMORY[0x25308E2B0](v22, -1, -1);
    }

    v37 = a2;
    type metadata accessor for ClinicalSharingSyncContext();

    sub_251C70A24();
    sub_251A82284();
    sub_251C709F4();
    (*(v35 + 8))(v11, v8);
    sub_251AFDA08(&qword_27F479410, &qword_27F479408, MEMORY[0x277CBCF38]);
    v29 = v33;
    v30 = sub_251C70A94();
    result = (*(v36 + 8))(v16, v29);
    *v34 = v30;
  }

  else
  {
    swift_willThrow();
    return v17;
  }

  return result;
}

uint64_t sub_251B4ADE0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[0] = a3;
  sub_251B4B2E8(0, &qword_27F479400, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCE78]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v20 - v9;
  v11 = MEMORY[0x277CBCF38];
  sub_251AFD990(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = v20 - v16;
  sub_251B26C14(*a1);
  v20[1] = a2;
  type metadata accessor for ClinicalSharingSyncContext();

  sub_251C70A24();
  sub_251A82284();
  sub_251C709F4();
  (*(v7 + 8))(v10, v6);
  sub_251AFDA08(&qword_27F479410, &qword_27F479408, v11);
  v18 = sub_251C70A94();
  result = (*(v14 + 8))(v17, v13);
  *v20[0] = v18;
  return result;
}

void sub_251B4B034()
{
  if (!qword_27F47A6A0)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_251AFD990(255, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    v1 = MEMORY[0x277CBCD28];
    sub_251B4B1A4(255, &qword_27F47A6A8, MEMORY[0x277CBCD28]);
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v0);
    sub_251B4B160(&qword_27F47A6B0, &qword_27F47A6A8, v1);
    v2 = sub_251C708D4();
    if (!v3)
    {
      atomic_store(v2, &qword_27F47A6A0);
    }
  }
}

uint64_t sub_251B4B160(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_251B4B1A4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251B4B1A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = MEMORY[0x277CBCD88];
    sub_251AFD990(255, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    v10[0] = v7;
    v10[1] = v7;
    v11 = sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v6);
    v12 = v11;
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_251B4B298(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251B4B2E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251B4B364()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_251C7BF50[result];
  }

  return result;
}

void sub_251B4B3AC(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_251C7BF50[v2];
  }

  *a1 = v2;
}

uint64_t sub_251B4B3D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B59518();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B4B450()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_251C7BF88[result];
  }

  return result;
}

void sub_251B4B498(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_251C7BF88[v2];
  }

  *a1 = v2;
}

uint64_t sub_251B4B4BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5956C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL sub_251B4B508(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_251C7BF88[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_251C7BF88[v3];
  }

  return v2 == v3;
}

uint64_t sub_251B4B558()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_251C7BF28[result];
  }

  return result;
}

void sub_251B4B5A0(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_251C7BF28[v2];
  }

  *a1 = v2;
}

uint64_t sub_251B4B5C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B595C0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL sub_251B4B610(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_251C7BF28[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_251C7BF28[v3];
  }

  return v2 == v3;
}

uint64_t sub_251B4B660@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_251B4B6C0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_251B4B6FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5977C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B4B748()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1C88);
  __swift_project_value_buffer(v0, qword_27F4A1C88);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "blobs";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "blob_auth";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21888];
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B4B930()
{
  v0 = *(type metadata accessor for PBPushBlobsRequest(0) + 20);
  type metadata accessor for PBBlobs(0);
  sub_251B5438C(&qword_27F479DA0, type metadata accessor for PBBlobs);
  return sub_251C70564();
}

uint64_t sub_251B4B9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B55C24(0, &qword_27F47A938, type metadata accessor for PBBlobs, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBBlobs(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBPushBlobsRequest(0);
  sub_251B59614(a1 + *(v14 + 20), v8, &qword_27F47A938, type metadata accessor for PBBlobs);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251B59694(v8, &qword_27F47A938, type metadata accessor for PBBlobs);
  }

  sub_251B55C88(v8, v13, type metadata accessor for PBBlobs);
  sub_251B5438C(&qword_27F479DA0, type metadata accessor for PBBlobs);
  sub_251C706A4();
  return sub_251B55CF0(v13, type metadata accessor for PBBlobs);
}

uint64_t sub_251B4BCD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A930, type metadata accessor for PBPushBlobsRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B4BD78(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A918, type metadata accessor for PBPushBlobsRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4BDE4()
{
  sub_251B5438C(&qword_27F47A918, type metadata accessor for PBPushBlobsRequest);

  return sub_251C705C4();
}

uint64_t sub_251B4BE64()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1CA0);
  __swift_project_value_buffer(v0, qword_27F4A1CA0);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "certs";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "sig";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "alg";
  *(v12 + 8) = 3;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B4C088()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_251C70534();
        break;
      case 2:
        sub_251C704D4();
        break;
      case 1:
        sub_251C704A4();
        break;
    }
  }

  return result;
}

uint64_t sub_251B4C134()
{
  if (*(*v0 + 16))
  {
    result = sub_251C70614();
    if (v1)
    {
      return result;
    }
  }

  v3 = v0[1];
  v4 = v0[2];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
  }

  else
  {
    if (!v5)
    {
      if ((v4 & 0xFF000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_11:
      result = sub_251C70624();
      if (v1)
      {
        return result;
      }

      goto LABEL_12;
    }

    v6 = v3;
    v7 = v3 >> 32;
  }

  if (v6 != v7)
  {
    goto LABEL_11;
  }

LABEL_12:
  v8 = v0[4];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v0[3] & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_251C70674(), !v1))
  {
    v10 = v0 + *(type metadata accessor for PBBlobAuth(0) + 28);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B4C244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = xmmword_251C745D0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  v2 = a2 + *(a1 + 28);
  return sub_251C703A4();
}

uint64_t sub_251B4C2D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A950, type metadata accessor for PBBlobAuth);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B4C370(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A8F8, type metadata accessor for PBBlobAuth);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4C3DC()
{
  sub_251B5438C(&qword_27F47A8F8, type metadata accessor for PBBlobAuth);

  return sub_251C705C4();
}

uint64_t sub_251B4C47C()
{
  if (!*(*v0 + 16) || (type metadata accessor for PBBlob(0), sub_251B5438C(&qword_27F47A8C0, type metadata accessor for PBBlob), result = sub_251C70694(), !v1))
  {
    v3 = v0 + *(type metadata accessor for PBBlobs(0) + 20);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B4C5F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A958, type metadata accessor for PBBlobs);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B4C690(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F479DA0, type metadata accessor for PBBlobs);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4C6FC()
{
  sub_251B5438C(&qword_27F479DA0, type metadata accessor for PBBlobs);

  return sub_251C705C4();
}

uint64_t sub_251B4C790()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1CD0);
  __swift_project_value_buffer(v0, qword_27F4A1CD0);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "content";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "attributes";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "expiration_time";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v16 = *MEMORY[0x277D21888];
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B4C9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for PBBlobAttribute(0);
          sub_251B5438C(&qword_27F47A8A0, type metadata accessor for PBBlobAttribute);
          sub_251C70554();
        }

        else if (result == 4)
        {
          sub_251B4DBA8(a1, v5, a2, a3, type metadata accessor for PBBlob);
        }
      }

      else if (result == 1)
      {
        sub_251C70534();
      }

      else if (result == 2)
      {
        sub_251C704D4();
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B4CB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_251C70674(), !v4))
  {
    v12 = v3[2];
    v13 = v3[3];
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
        goto LABEL_14;
      }

      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
    }

    else
    {
      if (!v14)
      {
        if ((v13 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_13:
        result = sub_251C70624();
        if (v4)
        {
          return result;
        }

        goto LABEL_14;
      }

      v15 = v12;
      v16 = v12 >> 32;
    }

    if (v15 != v16)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (!*(v3[4] + 16) || (type metadata accessor for PBBlobAttribute(0), sub_251B5438C(&qword_27F47A8A0, type metadata accessor for PBBlobAttribute), result = sub_251C70694(), !v4))
    {
      result = sub_251B4DDA8(v3, a1, a2, a3, type metadata accessor for PBBlob);
      if (!v4)
      {
        v17 = v3 + *(type metadata accessor for PBBlob(0) + 28);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B4CCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_251C745D0;
  *(a2 + 32) = MEMORY[0x277D84F90];
  v4 = a2 + *(a1 + 28);
  sub_251C703A4();
  v5 = *(a1 + 32);
  v6 = sub_251C70384();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_251B4CDD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A960, type metadata accessor for PBBlob);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B4CE78(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A8C0, type metadata accessor for PBBlob);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4CEE4()
{
  sub_251B5438C(&qword_27F47A8C0, type metadata accessor for PBBlob);

  return sub_251C705C4();
}

uint64_t sub_251B4CF64()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1CE8);
  __swift_project_value_buffer(v0, qword_27F4A1CE8);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "name";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "value";
  *(v12 + 8) = 5;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B4D18C()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_251C70534();
    }
  }

  return result;
}

uint64_t sub_251B4D21C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_251C70674(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_251C70674(), !v1))
    {
      v8 = v0[5];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_251C70674(), !v1))
      {
        v10 = v0 + *(type metadata accessor for PBBlobAttribute(0) + 28);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B4D310@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  v2 = a2 + *(a1 + 28);
  return sub_251C703A4();
}

uint64_t sub_251B4D374(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A970, type metadata accessor for PBBlobAttribute);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B4D414(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A8A0, type metadata accessor for PBBlobAttribute);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4D480()
{
  sub_251B5438C(&qword_27F47A8A0, type metadata accessor for PBBlobAttribute);

  return sub_251C705C4();
}

uint64_t sub_251B4D520()
{
  if (!*(*v0 + 16) || (type metadata accessor for PBBlobPushResult(0), sub_251B5438C(&qword_27F47A860, type metadata accessor for PBBlobPushResult), result = sub_251C70694(), !v1))
  {
    v3 = v0 + *(type metadata accessor for PBPushBlobsResponse(0) + 20);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B4D694(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A978, type metadata accessor for PBPushBlobsResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B4D734(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A880, type metadata accessor for PBPushBlobsResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4D7A0()
{
  sub_251B5438C(&qword_27F47A880, type metadata accessor for PBPushBlobsResponse);

  return sub_251C705C4();
}

uint64_t sub_251B4D834()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1D18);
  __swift_project_value_buffer(v0, qword_27F4A1D18);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 3;
  *v11 = "message";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "result_code";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v14 = *MEMORY[0x277D21888];
  v10();
  v15 = (v6 + 3 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "expiration_time";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B4DA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
LABEL_4:
          sub_251C70534();
          goto LABEL_5;
        }

        if (result == 4)
        {
          sub_251B4DBA8(a1, v5, a2, a3, type metadata accessor for PBBlobPushResult);
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          sub_251B59518();
          sub_251C70494();
        }
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B4DBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 32);
  sub_251C70384();
  sub_251B5438C(&qword_27F47A968, MEMORY[0x277D21570]);
  return sub_251C70564();
}

uint64_t sub_251B4DC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_251C70674(), !v4))
  {
    if (!*(v3 + 32) || (v15 = *(v3 + 32), v16 = *(v3 + 40), sub_251B59518(), result = sub_251C70604(), !v4))
    {
      v12 = *(v3 + 24);
      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
      }

      if (!v13 || (result = sub_251C70674(), !v4))
      {
        result = sub_251B4DDA8(v3, a1, a2, a3, type metadata accessor for PBBlobPushResult);
        if (!v4)
        {
          v14 = v3 + *(type metadata accessor for PBBlobPushResult(0) + 28);
          return sub_251C70394();
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B4DDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v19[3] = a4;
  v19[0] = a2;
  v19[1] = a3;
  v7 = MEMORY[0x277D21570];
  sub_251B55C24(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  v12 = sub_251C70384();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5(0);
  sub_251B59614(a1 + *(v17 + 32), v11, &qword_27F479130, v7);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_251B59694(v11, &qword_27F479130, MEMORY[0x277D21570]);
  }

  (*(v13 + 32))(v16, v11, v12);
  sub_251B5438C(&qword_27F47A968, MEMORY[0x277D21570]);
  sub_251C706A4();
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_251B4E060(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A980, type metadata accessor for PBBlobPushResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B4E100(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A860, type metadata accessor for PBBlobPushResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4E16C()
{
  sub_251B5438C(&qword_27F47A860, type metadata accessor for PBBlobPushResult);

  return sub_251C705C4();
}

uint64_t sub_251B4E1E8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1D30);
  __swift_project_value_buffer(v0, qword_27F4A1D30);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_251C75420;
  v5 = v21 + v4 + *(v2 + 56);
  *(v21 + v4) = 0;
  *v5 = "OK";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_251C706B4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v21 + v4 + v3 + *(v2 + 56);
  *(v21 + v4 + v3) = 1;
  *v9 = "INVALID_ID";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v21 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 2;
  *v11 = "BLOB_SIZE_EXCEEDED";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v21 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "BLOB_SIZE_BELOW_MIN";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v21 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 5;
  *v15 = "SERVER_ERROR";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v21 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 6;
  *v17 = "INVALID_EXPIRATION_TIME";
  *(v17 + 1) = 23;
  v17[16] = 2;
  v8();
  v18 = (v21 + v4 + 6 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 7;
  *v19 = "INVALID_NODE";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  return sub_251C706C4();
}

uint64_t sub_251B4E51C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1D48);
  __swift_project_value_buffer(v0, qword_27F4A1D48);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "ids";
  *(v7 + 8) = 3;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "health_institute_id";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21888];
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B4E704()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_251C70504();
    }

    else if (result == 2)
    {
      sub_251C70534();
    }
  }

  return result;
}

uint64_t sub_251B4E790()
{
  if (!*(*v0 + 16) || (result = sub_251C70654(), !v1))
  {
    v3 = v0[2];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_251C70674(), !v1))
    {
      v5 = v0 + *(type metadata accessor for PBPullBlobsRequest(0) + 24);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B4E848@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return sub_251C703A4();
}

uint64_t sub_251B4E8C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A990, type metadata accessor for PBPullBlobsRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B4E968(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A840, type metadata accessor for PBPullBlobsRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4E9D4()
{
  sub_251B5438C(&qword_27F47A840, type metadata accessor for PBPullBlobsRequest);

  return sub_251C705C4();
}

uint64_t sub_251B4EA50(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_251A93C70(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B4EB38()
{
  if (!*(*v0 + 16) || (type metadata accessor for PBBlobPullResult(0), sub_251B5438C(&qword_27F47A800, type metadata accessor for PBBlobPullResult), result = sub_251C70694(), !v1))
  {
    v3 = v0 + *(type metadata accessor for PBPullBlobsResponse(0) + 20);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B4ECAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A998, type metadata accessor for PBPullBlobsResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B4ED4C(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A820, type metadata accessor for PBPullBlobsResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4EDB8()
{
  sub_251B5438C(&qword_27F47A820, type metadata accessor for PBPullBlobsResponse);

  return sub_251C705C4();
}

uint64_t sub_251B4EE4C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1D78);
  __swift_project_value_buffer(v0, qword_27F4A1D78);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 3;
  *v11 = "message";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "result_code";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v14 = *MEMORY[0x277D21888];
  v10();
  v15 = (v6 + 3 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "blob";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B4F0AC()
{
  result = sub_251C70444();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
LABEL_4:
          sub_251C70534();
          goto LABEL_5;
        }

        if (result == 4)
        {
          sub_251B4F1A4();
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          sub_251B5956C();
          sub_251C70494();
        }
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B4F1A4()
{
  v0 = *(type metadata accessor for PBBlobPullResult(0) + 32);
  type metadata accessor for PBBlob(0);
  sub_251B5438C(&qword_27F47A8C0, type metadata accessor for PBBlob);
  return sub_251C70564();
}

uint64_t sub_251B4F258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_251C70674(), !v4))
  {
    if (!*(v3 + 32) || (v15 = *(v3 + 32), v16 = *(v3 + 40), sub_251B5956C(), result = sub_251C70604(), !v4))
    {
      v12 = *(v3 + 24);
      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
      }

      if (!v13 || (result = sub_251C70674(), !v4))
      {
        result = sub_251B4F38C(v3, a1, a2, a3);
        if (!v4)
        {
          v14 = v3 + *(type metadata accessor for PBBlobPullResult(0) + 28);
          return sub_251C70394();
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B4F38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B55C24(0, &qword_27F479148, type metadata accessor for PBBlob, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBBlob(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBBlobPullResult(0);
  sub_251B59614(a1 + *(v14 + 32), v8, &qword_27F479148, type metadata accessor for PBBlob);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251B59694(v8, &qword_27F479148, type metadata accessor for PBBlob);
  }

  sub_251B55C88(v8, v13, type metadata accessor for PBBlob);
  sub_251B5438C(&qword_27F47A8C0, type metadata accessor for PBBlob);
  sub_251C706A4();
  return sub_251B55CF0(v13, type metadata accessor for PBBlob);
}

uint64_t sub_251B4F5E4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v6 = a3 + *(a1 + 28);
  sub_251C703A4();
  v7 = *(a1 + 32);
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a3 + v7, 1, 1, v8);
}

uint64_t sub_251B4F6D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A9A0, type metadata accessor for PBBlobPullResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B4F778(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A800, type metadata accessor for PBBlobPullResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4F7E4()
{
  sub_251B5438C(&qword_27F47A800, type metadata accessor for PBBlobPullResult);

  return sub_251C705C4();
}

uint64_t sub_251B4F864()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1D90);
  __swift_project_value_buffer(v0, qword_27F4A1D90);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "OK";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 4;
  *v11 = "ID_NOT_FOUND";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 5;
  *v13 = "SERVER_ERROR";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 7;
  *v15 = "INVALID_NODE";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B4FB04(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v9 = v5;
  while (1)
  {
    result = sub_251C70444();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v9, a2, a3);
    }

    else if (result == 2)
    {
      sub_251B51D70(a1, v9, a2, a3, a5);
    }
  }

  return result;
}

uint64_t sub_251B4FBB0()
{
  v0 = *(type metadata accessor for PBDeleteBlobsRequest(0) + 20);
  type metadata accessor for PBDeleteBlobs(0);
  sub_251B5438C(&qword_27F479A90, type metadata accessor for PBDeleteBlobs);
  return sub_251C70564();
}

uint64_t sub_251B4FC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    sub_251B52068(v5, a1, a2, a3, a5);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B4FCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B55C24(0, qword_2813E6938, type metadata accessor for PBDeleteBlobs, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBDeleteBlobs(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBDeleteBlobsRequest(0);
  sub_251B59614(a1 + *(v14 + 20), v8, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251B59694(v8, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
  }

  sub_251B55C88(v8, v13, type metadata accessor for PBDeleteBlobs);
  sub_251B5438C(&qword_27F479A90, type metadata accessor for PBDeleteBlobs);
  sub_251C706A4();
  return sub_251B55CF0(v13, type metadata accessor for PBDeleteBlobs);
}

uint64_t sub_251B4FF3C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  sub_251C703A4();
  v6 = *(a1 + 20);
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = *(a1 + 24);
  v9 = type metadata accessor for PBBlobAuth(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a3 + v8, 1, 1, v9);
}

uint64_t sub_251B500A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A9B0, type metadata accessor for PBDeleteBlobsRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B50144(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A7E0, type metadata accessor for PBDeleteBlobsRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B501B0()
{
  sub_251B5438C(&qword_27F47A7E0, type metadata accessor for PBDeleteBlobsRequest);

  return sub_251C705C4();
}

uint64_t sub_251B50250()
{
  if (!*(*v0 + 16) || (type metadata accessor for PBDeleteBlob(0), sub_251B5438C(&qword_27F47A7A8, type metadata accessor for PBDeleteBlob), result = sub_251C70694(), !v1))
  {
    v3 = v0 + *(type metadata accessor for PBDeleteBlobs(0) + 20);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B503C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A9C0, type metadata accessor for PBDeleteBlobs);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B50464(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F479A90, type metadata accessor for PBDeleteBlobs);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B504D0()
{
  sub_251B5438C(&qword_27F479A90, type metadata accessor for PBDeleteBlobs);

  return sub_251C705C4();
}

uint64_t sub_251B50564()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1DD8);
  __swift_project_value_buffer(v0, qword_27F4A1DD8);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "deletion_commitment";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21888];
  v10();
  v13 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v13 = "revocation_authorization";
  *(v13 + 8) = 24;
  *(v13 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B50798()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_251B50848();
        break;
      case 2:
        sub_251C704D4();
        break;
      case 1:
        sub_251C70534();
        break;
    }
  }

  return result;
}

uint64_t sub_251B50848()
{
  v0 = *(type metadata accessor for PBDeleteBlob(0) + 28);
  type metadata accessor for PBRevocationAuthorization();
  sub_251B5438C(&qword_27F479858, type metadata accessor for PBRevocationAuthorization);
  return sub_251C70564();
}

uint64_t sub_251B508FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_251C70674(), !v4))
  {
    v12 = v3[2];
    v13 = v3[3];
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
        goto LABEL_14;
      }

      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
    }

    else
    {
      if (!v14)
      {
        if ((v13 & 0xFF000000000000) == 0)
        {
LABEL_14:
          result = sub_251B50A00(v3, a1, a2, a3);
          if (!v4)
          {
            v17 = v3 + *(type metadata accessor for PBDeleteBlob(0) + 24);
            return sub_251C70394();
          }

          return result;
        }

LABEL_13:
        result = sub_251C70624();
        if (v4)
        {
          return result;
        }

        goto LABEL_14;
      }

      v15 = v12;
      v16 = v12 >> 32;
    }

    if (v15 == v16)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_251B50A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B55C24(0, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBRevocationAuthorization();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBDeleteBlob(0);
  sub_251B59614(a1 + *(v14 + 28), v8, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251B59694(v8, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
  }

  sub_251B55C88(v8, v13, type metadata accessor for PBRevocationAuthorization);
  sub_251B5438C(&qword_27F479858, type metadata accessor for PBRevocationAuthorization);
  sub_251C706A4();
  return sub_251B55CF0(v13, type metadata accessor for PBRevocationAuthorization);
}

uint64_t sub_251B50C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_251C745D0;
  v4 = a2 + *(a1 + 24);
  sub_251C703A4();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for PBRevocationAuthorization();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_251B50D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A9C8, type metadata accessor for PBDeleteBlob);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B50DC0(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A7A8, type metadata accessor for PBDeleteBlob);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B50E2C()
{
  sub_251B5438C(&qword_27F47A7A8, type metadata accessor for PBDeleteBlob);

  return sub_251C705C4();
}

uint64_t sub_251B50ECC()
{
  if (!*(*v0 + 16) || (type metadata accessor for PBBlobDeleteResult(0), sub_251B5438C(&qword_27F47A768, type metadata accessor for PBBlobDeleteResult), result = sub_251C70694(), !v1))
  {
    v3 = v0 + *(type metadata accessor for PBDeleteBlobsResponse(0) + 20);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B51040(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A9D0, type metadata accessor for PBDeleteBlobsResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B510E0(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A788, type metadata accessor for PBDeleteBlobsResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B5114C()
{
  sub_251B5438C(&qword_27F47A788, type metadata accessor for PBDeleteBlobsResponse);

  return sub_251C705C4();
}

uint64_t sub_251B511E0()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1E08);
  __swift_project_value_buffer(v0, qword_27F4A1E08);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 3;
  *v11 = "message";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "result_code";
  *(v12 + 8) = 11;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21888];
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B51410()
{
  result = sub_251C70444();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      switch(result)
      {
        case 3:
          goto LABEL_10;
        case 2:
          sub_251B595C0();
          sub_251C70494();
          break;
        case 1:
LABEL_10:
          sub_251C70534();
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B514DC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_251C70674(), !v1))
  {
    if (!v0[4] || (v9 = v0[4], v10 = *(v0 + 40), sub_251B595C0(), result = sub_251C70604(), !v1))
    {
      v6 = v0[3];
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v0[2] & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (result = sub_251C70674(), !v1))
      {
        v8 = v0 + *(type metadata accessor for PBBlobDeleteResult(0) + 28);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B515F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v2 = a2 + *(a1 + 28);
  return sub_251C703A4();
}

uint64_t sub_251B5167C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A9D8, type metadata accessor for PBBlobDeleteResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B5171C(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A768, type metadata accessor for PBBlobDeleteResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B51788()
{
  sub_251B5438C(&qword_27F47A768, type metadata accessor for PBBlobDeleteResult);

  return sub_251C705C4();
}

uint64_t sub_251B51808()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1E20);
  __swift_project_value_buffer(v0, qword_27F4A1E20);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C747F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "OK";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "INVALID_BLOB";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "UNAUTHORIZED_TO_DELETE";
  *(v13 + 1) = 22;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "ID_NOT_FOUND";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 5;
  *v16 = "SERVER_ERROR";
  *(v16 + 8) = 12;
  *(v16 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B51AE4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_251C706D4();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 72);
  v11 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_251C75800;
  v13 = (v12 + v11);
  v14 = v12 + v11 + *(v9 + 56);
  *v13 = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x277D21888];
  v16 = sub_251C706B4();
  v17 = *(*(v16 - 8) + 104);
  (v17)(v14, v15, v16);
  v18 = v13 + v10 + *(v9 + 56);
  *(v13 + v10) = 2;
  *v18 = "blob_auth";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v17();
  return sub_251C706C4();
}

uint64_t sub_251B51CBC()
{
  v0 = *(type metadata accessor for PBTouchBlobsRequest(0) + 20);
  type metadata accessor for PBTouchBlobs(0);
  sub_251B5438C(&qword_27F47A728, type metadata accessor for PBTouchBlobs);
  return sub_251C70564();
}

uint64_t sub_251B51D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 24);
  type metadata accessor for PBBlobAuth(0);
  sub_251B5438C(&qword_27F47A8F8, type metadata accessor for PBBlobAuth);
  return sub_251C70564();
}

uint64_t sub_251B51E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B55C24(0, &qword_27F47A9F0, type metadata accessor for PBTouchBlobs, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBTouchBlobs(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBTouchBlobsRequest(0);
  sub_251B59614(a1 + *(v14 + 20), v8, &qword_27F47A9F0, type metadata accessor for PBTouchBlobs);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251B59694(v8, &qword_27F47A9F0, type metadata accessor for PBTouchBlobs);
  }

  sub_251B55C88(v8, v13, type metadata accessor for PBTouchBlobs);
  sub_251B5438C(&qword_27F47A728, type metadata accessor for PBTouchBlobs);
  sub_251C706A4();
  return sub_251B55CF0(v13, type metadata accessor for PBTouchBlobs);
}

uint64_t sub_251B52068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v18[3] = a4;
  v18[0] = a2;
  v18[1] = a3;
  sub_251B55C24(0, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for PBBlobAuth(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0);
  sub_251B59614(a1 + *(v16 + 24), v10, qword_2813E7028, type metadata accessor for PBBlobAuth);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_251B59694(v10, qword_2813E7028, type metadata accessor for PBBlobAuth);
  }

  sub_251B55C88(v10, v15, type metadata accessor for PBBlobAuth);
  sub_251B5438C(&qword_27F47A8F8, type metadata accessor for PBBlobAuth);
  sub_251C706A4();
  return sub_251B55CF0(v15, type metadata accessor for PBBlobAuth);
}

uint64_t sub_251B52360(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A9E8, type metadata accessor for PBTouchBlobsRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B52400(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A748, type metadata accessor for PBTouchBlobsRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B5246C()
{
  sub_251B5438C(&qword_27F47A748, type metadata accessor for PBTouchBlobsRequest);

  return sub_251C705C4();
}

uint64_t sub_251B5250C()
{
  if (!*(*v0 + 16) || (type metadata accessor for PBTouchBlob(0), sub_251B5438C(&qword_27F47A708, type metadata accessor for PBTouchBlob), result = sub_251C70694(), !v1))
  {
    v3 = v0 + *(type metadata accessor for PBTouchBlobs(0) + 20);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B52680(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47AA00, type metadata accessor for PBTouchBlobs);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B52720(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A728, type metadata accessor for PBTouchBlobs);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B5278C()
{
  sub_251B5438C(&qword_27F47A728, type metadata accessor for PBTouchBlobs);

  return sub_251C705C4();
}

uint64_t sub_251B52820()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1E68);
  __swift_project_value_buffer(v0, qword_27F4A1E68);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "expiration_time";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21888];
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B52A04()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_251C70534();
    }

    else if (result == 2)
    {
      sub_251B52A94();
    }
  }

  return result;
}

uint64_t sub_251B52A94()
{
  v0 = *(type metadata accessor for PBTouchBlob(0) + 24);
  sub_251C70384();
  sub_251B5438C(&qword_27F47A968, MEMORY[0x277D21570]);
  return sub_251C70564();
}

uint64_t sub_251B52B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_251C70674(), !v4))
  {
    result = sub_251B52BF4(v3, a1, a2, a3);
    if (!v4)
    {
      v12 = v3 + *(type metadata accessor for PBTouchBlob(0) + 20);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B52BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x277D21570];
  sub_251B55C24(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v17 - v8;
  v10 = sub_251C70384();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PBTouchBlob(0);
  sub_251B59614(a1 + *(v15 + 24), v9, &qword_27F479130, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_251B59694(v9, &qword_27F479130, MEMORY[0x277D21570]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_251B5438C(&qword_27F47A968, MEMORY[0x277D21570]);
  sub_251C706A4();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_251B52E40@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[*(a1 + 20)];
  sub_251C703A4();
  v5 = *(a1 + 24);
  v6 = sub_251C70384();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_251B52F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47AA08, type metadata accessor for PBTouchBlob);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B52FB4(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A708, type metadata accessor for PBTouchBlob);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B53020()
{
  sub_251B5438C(&qword_27F47A708, type metadata accessor for PBTouchBlob);

  return sub_251C705C4();
}

uint64_t sub_251B530C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_251C706D4();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 72);
  v13 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_251C74800;
  v15 = v14 + v13 + *(v11 + 56);
  *(v14 + v13) = 1;
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = 2;
  v16 = *a5;
  v17 = sub_251C706B4();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  return sub_251C706C4();
}

uint64_t sub_251B53248(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_251C70444();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_251B5438C(a5, a6);
      sub_251C70554();
    }
  }

  return result;
}

uint64_t sub_251B53324()
{
  if (!*(*v0 + 16) || (type metadata accessor for PBBlobTouchResult(0), sub_251B5438C(&qword_27F47A6C8, type metadata accessor for PBBlobTouchResult), result = sub_251C70694(), !v1))
  {
    v3 = v0 + *(type metadata accessor for PBTouchBlobsResponse(0) + 20);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B53498(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47AA10, type metadata accessor for PBTouchBlobsResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B53538(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A6E8, type metadata accessor for PBTouchBlobsResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B535A4()
{
  sub_251B5438C(&qword_27F47A6E8, type metadata accessor for PBTouchBlobsResponse);

  return sub_251C705C4();
}

uint64_t sub_251B53638(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B536E4()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1E98);
  __swift_project_value_buffer(v0, qword_27F4A1E98);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "result_code";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21888];
  v10();
  v13 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v13 = "expiration_time";
  *(v13 + 8) = 15;
  *(v13 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B53918()
{
  result = sub_251C70444();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_251B539F8();
          break;
        case 2:
          sub_251B5977C();
          sub_251C70494();
          break;
        case 1:
          sub_251C70534();
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B539F8()
{
  v0 = *(type metadata accessor for PBBlobTouchResult(0) + 28);
  sub_251C70384();
  sub_251B5438C(&qword_27F47A968, MEMORY[0x277D21570]);
  return sub_251C70564();
}

uint64_t sub_251B53AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_251C70674(), !v4))
  {
    if (!*(v3 + 16) || (v13 = *(v3 + 16), v14 = *(v3 + 24), sub_251B5977C(), result = sub_251C70604(), !v4))
    {
      result = sub_251B53BA8(v3, a1, a2, a3);
      if (!v4)
      {
        v12 = v3 + *(type metadata accessor for PBBlobTouchResult(0) + 24);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B53BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x277D21570];
  sub_251B55C24(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v17 - v8;
  v10 = sub_251C70384();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PBBlobTouchResult(0);
  sub_251B59614(a1 + *(v15 + 28), v9, &qword_27F479130, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_251B59694(v9, &qword_27F479130, MEMORY[0x277D21570]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_251B5438C(&qword_27F47A968, MEMORY[0x277D21570]);
  sub_251C706A4();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_251B53DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v4 = a2 + *(a1 + 24);
  sub_251C703A4();
  v5 = *(a1 + 28);
  v6 = sub_251C70384();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_251B53ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47AA18, type metadata accessor for PBBlobTouchResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B53F74(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A6C8, type metadata accessor for PBBlobTouchResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B53FE0()
{
  sub_251B5438C(&qword_27F47A6C8, type metadata accessor for PBBlobTouchResult);

  return sub_251C705C4();
}

uint64_t sub_251B54060()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1EB0);
  __swift_project_value_buffer(v0, qword_27F4A1EB0);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "OK";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "ID_NOT_FOUND";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "SERVER_ERROR";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "INVALID_EXPIRATION_TIME";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B5438C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251B55C24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251B55C88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B55CF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251B55D50(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = type metadata accessor for PBBlobAuth(0);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = (&v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x277D83D88];
  sub_251B55C24(0, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = (&v52 - v9);
  sub_251B59704(0, &qword_27F47A940, qword_2813E7028, type metadata accessor for PBBlobAuth);
  v56 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v59 = &v52 - v12;
  v13 = type metadata accessor for PBDeleteBlobs(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251B55C24(0, qword_2813E6938, type metadata accessor for PBDeleteBlobs, v6);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = (&v52 - v20);
  sub_251B59704(0, &qword_27F47A9B8, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v52 - v25;
  v55 = type metadata accessor for PBDeleteBlobsRequest(0);
  v27 = *(v55 + 20);
  v28 = *(v23 + 56);
  v60 = a1;
  sub_251B59614(a1 + v27, v26, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
  v29 = v61 + v27;
  v30 = v61;
  sub_251B59614(v29, &v26[v28], qword_2813E6938, type metadata accessor for PBDeleteBlobs);
  v31 = *(v14 + 48);
  if (v31(v26, 1, v13) == 1)
  {
    if (v31(&v26[v28], 1, v13) == 1)
    {
      sub_251B59694(v26, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
      goto LABEL_4;
    }

LABEL_10:
    v38 = &qword_27F47A9B8;
    v39 = qword_2813E6938;
    v40 = type metadata accessor for PBDeleteBlobs;
    v41 = v26;
LABEL_17:
    sub_251B57694(v41, v38, v39, v40);
    goto LABEL_28;
  }

  sub_251B59614(v26, v21, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
  if (v31(&v26[v28], 1, v13) == 1)
  {
    sub_251B55CF0(v21, type metadata accessor for PBDeleteBlobs);
    goto LABEL_10;
  }

  sub_251B55C88(&v26[v28], v17, type metadata accessor for PBDeleteBlobs);
  if ((sub_251A960BC(*v21, *v17) & 1) == 0)
  {
    sub_251B55CF0(v17, type metadata accessor for PBDeleteBlobs);
    sub_251B55CF0(v21, type metadata accessor for PBDeleteBlobs);
    v45 = qword_2813E6938;
    v46 = type metadata accessor for PBDeleteBlobs;
    v47 = v26;
    goto LABEL_27;
  }

  v42 = *(v13 + 20);
  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8]);
  v43 = sub_251C70ED4();
  sub_251B55CF0(v17, type metadata accessor for PBDeleteBlobs);
  sub_251B55CF0(v21, type metadata accessor for PBDeleteBlobs);
  sub_251B59694(v26, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
  if ((v43 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_4:
  v32 = *(v55 + 24);
  v33 = *(v56 + 48);
  v34 = v59;
  sub_251B59614(v60 + v32, v59, qword_2813E7028, type metadata accessor for PBBlobAuth);
  sub_251B59614(v30 + v32, v34 + v33, qword_2813E7028, type metadata accessor for PBBlobAuth);
  v35 = v58;
  v36 = *(v57 + 48);
  if (v36(v34, 1, v58) != 1)
  {
    v44 = v54;
    sub_251B59614(v34, v54, qword_2813E7028, type metadata accessor for PBBlobAuth);
    if (v36(v34 + v33, 1, v35) == 1)
    {
      sub_251B55CF0(v44, type metadata accessor for PBBlobAuth);
      goto LABEL_16;
    }

    v48 = v34 + v33;
    v49 = v53;
    sub_251B55C88(v48, v53, type metadata accessor for PBBlobAuth);
    if (sub_251A9C778(*v44, *v49) & 1) != 0 && (sub_251A9D1F0(v44[1], v44[2], v49[1], v49[2]) & 1) != 0 && (v44[3] == v49[3] && v44[4] == v49[4] || (sub_251C719D4()))
    {
      v50 = *(v35 + 28);
      sub_251C703B4();
      sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8]);
      LOBYTE(v50) = sub_251C70ED4();
      sub_251B55CF0(v49, type metadata accessor for PBBlobAuth);
      sub_251B55CF0(v44, type metadata accessor for PBBlobAuth);
      sub_251B59694(v34, qword_2813E7028, type metadata accessor for PBBlobAuth);
      if (v50)
      {
        goto LABEL_7;
      }

LABEL_28:
      v37 = 0;
      return v37 & 1;
    }

    sub_251B55CF0(v49, type metadata accessor for PBBlobAuth);
    sub_251B55CF0(v44, type metadata accessor for PBBlobAuth);
    v45 = qword_2813E7028;
    v46 = type metadata accessor for PBBlobAuth;
    v47 = v34;
LABEL_27:
    sub_251B59694(v47, v45, v46);
    goto LABEL_28;
  }

  if (v36(v34 + v33, 1, v35) != 1)
  {
LABEL_16:
    v38 = &qword_27F47A940;
    v39 = qword_2813E7028;
    v40 = type metadata accessor for PBBlobAuth;
    v41 = v34;
    goto LABEL_17;
  }

  sub_251B59694(v34, qword_2813E7028, type metadata accessor for PBBlobAuth);
LABEL_7:
  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8]);
  v37 = sub_251C70ED4();
  return v37 & 1;
}

uint64_t sub_251B565BC(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = type metadata accessor for PBBlobAuth(0);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = (&v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x277D83D88];
  sub_251B55C24(0, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = (&v52 - v9);
  sub_251B59704(0, &qword_27F47A940, qword_2813E7028, type metadata accessor for PBBlobAuth);
  v56 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v59 = &v52 - v12;
  v13 = type metadata accessor for PBTouchBlobs(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251B55C24(0, &qword_27F47A9F0, type metadata accessor for PBTouchBlobs, v6);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = (&v52 - v20);
  sub_251B59704(0, &qword_27F47A9F8, &qword_27F47A9F0, type metadata accessor for PBTouchBlobs);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v52 - v25;
  v55 = type metadata accessor for PBTouchBlobsRequest(0);
  v27 = *(v55 + 20);
  v28 = *(v23 + 56);
  v60 = a1;
  sub_251B59614(a1 + v27, v26, &qword_27F47A9F0, type metadata accessor for PBTouchBlobs);
  v29 = v61 + v27;
  v30 = v61;
  sub_251B59614(v29, &v26[v28], &qword_27F47A9F0, type metadata accessor for PBTouchBlobs);
  v31 = *(v14 + 48);
  if (v31(v26, 1, v13) == 1)
  {
    if (v31(&v26[v28], 1, v13) == 1)
    {
      sub_251B59694(v26, &qword_27F47A9F0, type metadata accessor for PBTouchBlobs);
      goto LABEL_4;
    }

LABEL_10:
    v38 = &qword_27F47A9F8;
    v39 = &qword_27F47A9F0;
    v40 = type metadata accessor for PBTouchBlobs;
    v41 = v26;
LABEL_17:
    sub_251B57694(v41, v38, v39, v40);
    goto LABEL_28;
  }

  sub_251B59614(v26, v21, &qword_27F47A9F0, type metadata accessor for PBTouchBlobs);
  if (v31(&v26[v28], 1, v13) == 1)
  {
    sub_251B55CF0(v21, type metadata accessor for PBTouchBlobs);
    goto LABEL_10;
  }

  sub_251B55C88(&v26[v28], v17, type metadata accessor for PBTouchBlobs);
  if ((sub_251A96DD4(*v21, *v17) & 1) == 0)
  {
    sub_251B55CF0(v17, type metadata accessor for PBTouchBlobs);
    sub_251B55CF0(v21, type metadata accessor for PBTouchBlobs);
    v45 = &qword_27F47A9F0;
    v46 = type metadata accessor for PBTouchBlobs;
    v47 = v26;
    goto LABEL_27;
  }

  v42 = *(v13 + 20);
  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8]);
  v43 = sub_251C70ED4();
  sub_251B55CF0(v17, type metadata accessor for PBTouchBlobs);
  sub_251B55CF0(v21, type metadata accessor for PBTouchBlobs);
  sub_251B59694(v26, &qword_27F47A9F0, type metadata accessor for PBTouchBlobs);
  if ((v43 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_4:
  v32 = *(v55 + 24);
  v33 = *(v56 + 48);
  v34 = v59;
  sub_251B59614(v60 + v32, v59, qword_2813E7028, type metadata accessor for PBBlobAuth);
  sub_251B59614(v30 + v32, v34 + v33, qword_2813E7028, type metadata accessor for PBBlobAuth);
  v35 = v58;
  v36 = *(v57 + 48);
  if (v36(v34, 1, v58) != 1)
  {
    v44 = v54;
    sub_251B59614(v34, v54, qword_2813E7028, type metadata accessor for PBBlobAuth);
    if (v36(v34 + v33, 1, v35) == 1)
    {
      sub_251B55CF0(v44, type metadata accessor for PBBlobAuth);
      goto LABEL_16;
    }

    v48 = v34 + v33;
    v49 = v53;
    sub_251B55C88(v48, v53, type metadata accessor for PBBlobAuth);
    if (sub_251A9C778(*v44, *v49) & 1) != 0 && (sub_251A9D1F0(v44[1], v44[2], v49[1], v49[2]) & 1) != 0 && (v44[3] == v49[3] && v44[4] == v49[4] || (sub_251C719D4()))
    {
      v50 = *(v35 + 28);
      sub_251C703B4();
      sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8]);
      LOBYTE(v50) = sub_251C70ED4();
      sub_251B55CF0(v49, type metadata accessor for PBBlobAuth);
      sub_251B55CF0(v44, type metadata accessor for PBBlobAuth);
      sub_251B59694(v34, qword_2813E7028, type metadata accessor for PBBlobAuth);
      if (v50)
      {
        goto LABEL_7;
      }

LABEL_28:
      v37 = 0;
      return v37 & 1;
    }

    sub_251B55CF0(v49, type metadata accessor for PBBlobAuth);
    sub_251B55CF0(v44, type metadata accessor for PBBlobAuth);
    v45 = qword_2813E7028;
    v46 = type metadata accessor for PBBlobAuth;
    v47 = v34;
LABEL_27:
    sub_251B59694(v47, v45, v46);
    goto LABEL_28;
  }

  if (v36(v34 + v33, 1, v35) != 1)
  {
LABEL_16:
    v38 = &qword_27F47A940;
    v39 = qword_2813E7028;
    v40 = type metadata accessor for PBBlobAuth;
    v41 = v34;
    goto LABEL_17;
  }

  sub_251B59694(v34, qword_2813E7028, type metadata accessor for PBBlobAuth);
LABEL_7:
  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8]);
  v37 = sub_251C70ED4();
  return v37 & 1;
}

uint64_t sub_251B56E28(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = type metadata accessor for PBBlobAuth(0);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = (&v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x277D83D88];
  sub_251B55C24(0, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = (&v52 - v9);
  sub_251B59704(0, &qword_27F47A940, qword_2813E7028, type metadata accessor for PBBlobAuth);
  v56 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v59 = &v52 - v12;
  v13 = type metadata accessor for PBBlobs(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251B55C24(0, &qword_27F47A938, type metadata accessor for PBBlobs, v6);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = (&v52 - v20);
  sub_251B59704(0, &qword_27F47A948, &qword_27F47A938, type metadata accessor for PBBlobs);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v52 - v25;
  v55 = type metadata accessor for PBPushBlobsRequest(0);
  v27 = *(v55 + 20);
  v28 = *(v23 + 56);
  v60 = a1;
  sub_251B59614(a1 + v27, v26, &qword_27F47A938, type metadata accessor for PBBlobs);
  v29 = v61 + v27;
  v30 = v61;
  sub_251B59614(v29, &v26[v28], &qword_27F47A938, type metadata accessor for PBBlobs);
  v31 = *(v14 + 48);
  if (v31(v26, 1, v13) == 1)
  {
    if (v31(&v26[v28], 1, v13) == 1)
    {
      sub_251B59694(v26, &qword_27F47A938, type metadata accessor for PBBlobs);
      goto LABEL_4;
    }

LABEL_10:
    v38 = &qword_27F47A948;
    v39 = &qword_27F47A938;
    v40 = type metadata accessor for PBBlobs;
    v41 = v26;
LABEL_17:
    sub_251B57694(v41, v38, v39, v40);
    goto LABEL_28;
  }

  sub_251B59614(v26, v21, &qword_27F47A938, type metadata accessor for PBBlobs);
  if (v31(&v26[v28], 1, v13) == 1)
  {
    sub_251B55CF0(v21, type metadata accessor for PBBlobs);
    goto LABEL_10;
  }

  sub_251B55C88(&v26[v28], v17, type metadata accessor for PBBlobs);
  if ((sub_251A987D8(*v21, *v17) & 1) == 0)
  {
    sub_251B55CF0(v17, type metadata accessor for PBBlobs);
    sub_251B55CF0(v21, type metadata accessor for PBBlobs);
    v45 = &qword_27F47A938;
    v46 = type metadata accessor for PBBlobs;
    v47 = v26;
    goto LABEL_27;
  }

  v42 = *(v13 + 20);
  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8]);
  v43 = sub_251C70ED4();
  sub_251B55CF0(v17, type metadata accessor for PBBlobs);
  sub_251B55CF0(v21, type metadata accessor for PBBlobs);
  sub_251B59694(v26, &qword_27F47A938, type metadata accessor for PBBlobs);
  if ((v43 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_4:
  v32 = *(v55 + 24);
  v33 = *(v56 + 48);
  v34 = v59;
  sub_251B59614(v60 + v32, v59, qword_2813E7028, type metadata accessor for PBBlobAuth);
  sub_251B59614(v30 + v32, v34 + v33, qword_2813E7028, type metadata accessor for PBBlobAuth);
  v35 = v58;
  v36 = *(v57 + 48);
  if (v36(v34, 1, v58) != 1)
  {
    v44 = v54;
    sub_251B59614(v34, v54, qword_2813E7028, type metadata accessor for PBBlobAuth);
    if (v36(v34 + v33, 1, v35) == 1)
    {
      sub_251B55CF0(v44, type metadata accessor for PBBlobAuth);
      goto LABEL_16;
    }

    v48 = v34 + v33;
    v49 = v53;
    sub_251B55C88(v48, v53, type metadata accessor for PBBlobAuth);
    if (sub_251A9C778(*v44, *v49) & 1) != 0 && (sub_251A9D1F0(v44[1], v44[2], v49[1], v49[2]) & 1) != 0 && (v44[3] == v49[3] && v44[4] == v49[4] || (sub_251C719D4()))
    {
      v50 = *(v35 + 28);
      sub_251C703B4();
      sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8]);
      LOBYTE(v50) = sub_251C70ED4();
      sub_251B55CF0(v49, type metadata accessor for PBBlobAuth);
      sub_251B55CF0(v44, type metadata accessor for PBBlobAuth);
      sub_251B59694(v34, qword_2813E7028, type metadata accessor for PBBlobAuth);
      if (v50)
      {
        goto LABEL_7;
      }

LABEL_28:
      v37 = 0;
      return v37 & 1;
    }

    sub_251B55CF0(v49, type metadata accessor for PBBlobAuth);
    sub_251B55CF0(v44, type metadata accessor for PBBlobAuth);
    v45 = qword_2813E7028;
    v46 = type metadata accessor for PBBlobAuth;
    v47 = v34;
LABEL_27:
    sub_251B59694(v47, v45, v46);
    goto LABEL_28;
  }

  if (v36(v34 + v33, 1, v35) != 1)
  {
LABEL_16:
    v38 = &qword_27F47A940;
    v39 = qword_2813E7028;
    v40 = type metadata accessor for PBBlobAuth;
    v41 = v34;
    goto LABEL_17;
  }

  sub_251B59694(v34, qword_2813E7028, type metadata accessor for PBBlobAuth);
LABEL_7:
  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8]);
  v37 = sub_251C70ED4();
  return v37 & 1;
}

uint64_t sub_251B57694(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251B59704(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_251B576F0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v6 = qword_251C7BF28[v6];
  }

  v7 = *(a2 + 32);
  if (*(a2 + 40))
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        if (v6 != 3)
        {
          return 0;
        }
      }

      else if (v7 == 3)
      {
        if (v6 != 4)
        {
          return 0;
        }
      }

      else if (v6 != 5)
      {
        return 0;
      }

LABEL_20:
      v8 = *(type metadata accessor for PBBlobDeleteResult(0) + 28);
      sub_251C703B4();
      sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8]);
      return sub_251C70ED4() & 1;
    }

    if (v7)
    {
      if (v6 != 2)
      {
        return 0;
      }

      goto LABEL_20;
    }

    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else if (v6 == v7)
  {
    goto LABEL_20;
  }

  return 0;
}

uint64_t sub_251B57850(void *a1, uint64_t a2)
{
  v4 = sub_251C70384();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D21570];
  sub_251B55C24(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v35 - v12;
  sub_251B59704(0, &qword_27F479138, &qword_27F479130, v9);
  v15 = v14;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_25;
  }

  v19 = a1[2];
  v20 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        if (v19 != 2)
        {
          goto LABEL_25;
        }
      }

      else if (v19 != 3)
      {
        goto LABEL_25;
      }
    }

    else if (v20)
    {
      if (v19 != 1)
      {
        goto LABEL_25;
      }
    }

    else if (v19)
    {
      goto LABEL_25;
    }
  }

  else if (v19 != v20)
  {
    goto LABEL_25;
  }

  v35 = v8;
  v21 = v5;
  v36 = type metadata accessor for PBBlobTouchResult(0);
  v22 = *(v36 + 28);
  v23 = *(v15 + 48);
  v24 = MEMORY[0x277D21570];
  sub_251B59614(a1 + v22, v18, &qword_27F479130, MEMORY[0x277D21570]);
  v25 = a2 + v22;
  v26 = v21;
  sub_251B59614(v25, &v18[v23], &qword_27F479130, v24);
  v27 = *(v21 + 48);
  if (v27(v18, 1, v4) != 1)
  {
    sub_251B59614(v18, v13, &qword_27F479130, MEMORY[0x277D21570]);
    if (v27(&v18[v23], 1, v4) == 1)
    {
      (*(v21 + 8))(v13, v4);
      goto LABEL_18;
    }

    v28 = *(v21 + 32);
    v29 = v35;
    v28(v35, &v18[v23], v4);
    sub_251B5438C(&qword_27F479140, MEMORY[0x277D21570]);
    v30 = sub_251C70ED4();
    v31 = *(v26 + 8);
    v31(v29, v4);
    v31(v13, v4);
    sub_251B59694(v18, &qword_27F479130, MEMORY[0x277D21570]);
    if (v30)
    {
      goto LABEL_24;
    }

LABEL_25:
    v33 = 0;
    return v33 & 1;
  }

  if (v27(&v18[v23], 1, v4) != 1)
  {
LABEL_18:
    sub_251B57694(v18, &qword_27F479138, &qword_27F479130, MEMORY[0x277D21570]);
    goto LABEL_25;
  }

  sub_251B59694(v18, &qword_27F479130, MEMORY[0x277D21570]);
LABEL_24:
  v32 = *(v36 + 24);
  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8]);
  v33 = sub_251C70ED4();
  return v33 & 1;
}

uint64_t sub_251B57CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C70384();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D21570];
  sub_251B55C24(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v32 - v12;
  sub_251B59704(0, &qword_27F479138, &qword_27F479130, v9);
  v15 = v14;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_22;
  }

  v19 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v19 = qword_251C7BF50[v19];
  }

  v20 = *(a2 + 32);
  if (*(a2 + 40))
  {
    if (v20 <= 2)
    {
      if (v20)
      {
        if (v20 == 1)
        {
          if (v19 != 1)
          {
            goto LABEL_22;
          }
        }

        else if (v19 != 2)
        {
          goto LABEL_22;
        }
      }

      else if (v19)
      {
        goto LABEL_22;
      }
    }

    else if (v20 > 4)
    {
      if (v20 == 5)
      {
        if (v19 != 6)
        {
          goto LABEL_22;
        }
      }

      else if (v19 != 7)
      {
        goto LABEL_22;
      }
    }

    else if (v20 == 3)
    {
      if (v19 != 3)
      {
        goto LABEL_22;
      }
    }

    else if (v19 != 5)
    {
      goto LABEL_22;
    }
  }

  else if (v19 != v20)
  {
    goto LABEL_22;
  }

  v32 = v8;
  v33 = type metadata accessor for PBBlobPushResult(0);
  v21 = *(v33 + 32);
  v22 = *(v15 + 48);
  v23 = MEMORY[0x277D21570];
  sub_251B59614(a1 + v21, v18, &qword_27F479130, MEMORY[0x277D21570]);
  sub_251B59614(a2 + v21, &v18[v22], &qword_27F479130, v23);
  v24 = *(v5 + 48);
  if (v24(v18, 1, v4) == 1)
  {
    if (v24(&v18[v22], 1, v4) == 1)
    {
      sub_251B59694(v18, &qword_27F479130, MEMORY[0x277D21570]);
LABEL_32:
      v31 = *(v33 + 28);
      sub_251C703B4();
      sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8]);
      v25 = sub_251C70ED4();
      return v25 & 1;
    }

    goto LABEL_21;
  }

  sub_251B59614(v18, v13, &qword_27F479130, MEMORY[0x277D21570]);
  if (v24(&v18[v22], 1, v4) == 1)
  {
    (*(v5 + 8))(v13, v4);
LABEL_21:
    sub_251B57694(v18, &qword_27F479138, &qword_27F479130, MEMORY[0x277D21570]);
    goto LABEL_22;
  }

  v27 = &v18[v22];
  v28 = v32;
  (*(v5 + 32))(v32, v27, v4);
  sub_251B5438C(&qword_27F479140, MEMORY[0x277D21570]);
  v29 = sub_251C70ED4();
  v30 = *(v5 + 8);
  v30(v28, v4);
  v30(v13, v4);
  sub_251B59694(v18, &qword_27F479130, MEMORY[0x277D21570]);
  if (v29)
  {
    goto LABEL_32;
  }

LABEL_22:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_251B58204(void *a1, void *a2)
{
  v4 = sub_251C70384();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D21570];
  sub_251B55C24(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v33 - v12;
  sub_251B59704(0, &qword_27F479138, &qword_27F479130, v9);
  v15 = v14;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_251C719D4() & 1) == 0 || (sub_251A9D1F0(a1[2], a1[3], a2[2], a2[3]) & 1) == 0 || (sub_251A9ACCC(a1[4], a2[4]) & 1) == 0)
  {
    goto LABEL_12;
  }

  v33 = v8;
  v19 = v5;
  v34 = type metadata accessor for PBBlob(0);
  v20 = *(v34 + 32);
  v21 = *(v15 + 48);
  v22 = MEMORY[0x277D21570];
  sub_251B59614(a1 + v20, v18, &qword_27F479130, MEMORY[0x277D21570]);
  v23 = a2 + v20;
  v24 = v19;
  sub_251B59614(v23, &v18[v21], &qword_27F479130, v22);
  v25 = *(v19 + 48);
  if (v25(v18, 1, v4) == 1)
  {
    if (v25(&v18[v21], 1, v4) == 1)
    {
      sub_251B59694(v18, &qword_27F479130, MEMORY[0x277D21570]);
LABEL_15:
      v32 = *(v34 + 28);
      sub_251C703B4();
      sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8]);
      v26 = sub_251C70ED4();
      return v26 & 1;
    }

    goto LABEL_11;
  }

  sub_251B59614(v18, v13, &qword_27F479130, MEMORY[0x277D21570]);
  if (v25(&v18[v21], 1, v4) == 1)
  {
    (*(v19 + 8))(v13, v4);
LABEL_11:
    sub_251B57694(v18, &qword_27F479138, &qword_27F479130, MEMORY[0x277D21570]);
    goto LABEL_12;
  }

  v28 = *(v19 + 32);
  v29 = v33;
  v28(v33, &v18[v21], v4);
  sub_251B5438C(&qword_27F479140, MEMORY[0x277D21570]);
  v30 = sub_251C70ED4();
  v31 = *(v24 + 8);
  v31(v29, v4);
  v31(v13, v4);
  sub_251B59694(v18, &qword_27F479130, MEMORY[0x277D21570]);
  if (v30)
  {
    goto LABEL_15;
  }

LABEL_12:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_251B58668(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBBlob(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B55C24(0, &qword_27F479148, type metadata accessor for PBBlob, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v28 - v11);
  sub_251B59704(0, &qword_27F479150, &qword_27F479148, type metadata accessor for PBBlob);
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_30;
  }

  v18 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v18 = qword_251C7BF88[v18];
  }

  v19 = *(a2 + 32);
  if (*(a2 + 40))
  {
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        if (v18 != 5)
        {
          goto LABEL_30;
        }
      }

      else if (v18 != 7)
      {
        goto LABEL_30;
      }
    }

    else if (v19)
    {
      if (v18 != 4)
      {
        goto LABEL_30;
      }
    }

    else if (v18)
    {
      goto LABEL_30;
    }
  }

  else if (v18 != v19)
  {
    goto LABEL_30;
  }

  v28 = v8;
  v29 = type metadata accessor for PBBlobPullResult(0);
  v20 = *(v29 + 32);
  v21 = *(v14 + 48);
  sub_251B59614(a1 + v20, v17, &qword_27F479148, type metadata accessor for PBBlob);
  sub_251B59614(a2 + v20, &v17[v21], &qword_27F479148, type metadata accessor for PBBlob);
  v22 = *(v5 + 48);
  if (v22(v17, 1, v4) != 1)
  {
    sub_251B59614(v17, v12, &qword_27F479148, type metadata accessor for PBBlob);
    if (v22(&v17[v21], 1, v4) == 1)
    {
      sub_251B55CF0(v12, type metadata accessor for PBBlob);
      goto LABEL_23;
    }

    v23 = v28;
    sub_251B55C88(&v17[v21], v28, type metadata accessor for PBBlob);
    v24 = sub_251B58204(v12, v23);
    sub_251B55CF0(v23, type metadata accessor for PBBlob);
    sub_251B55CF0(v12, type metadata accessor for PBBlob);
    sub_251B59694(v17, &qword_27F479148, type metadata accessor for PBBlob);
    if (v24)
    {
      goto LABEL_29;
    }

LABEL_30:
    v26 = 0;
    return v26 & 1;
  }

  if (v22(&v17[v21], 1, v4) != 1)
  {
LABEL_23:
    sub_251B57694(v17, &qword_27F479150, &qword_27F479148, type metadata accessor for PBBlob);
    goto LABEL_30;
  }

  sub_251B59694(v17, &qword_27F479148, type metadata accessor for PBBlob);
LABEL_29:
  v25 = *(v29 + 28);
  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8]);
  v26 = sub_251C70ED4();
  return v26 & 1;
}

uint64_t sub_251B58AF8(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_251C719D4() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for PBBlobAttribute(0) + 28);
  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B58BFC(void *a1, void *a2)
{
  v4 = type metadata accessor for PBRevocationAuthorization();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B55C24(0, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  sub_251B59704(0, &qword_27F479158, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_251C719D4() & 1) == 0 || (sub_251A9D1F0(a1[2], a1[3], a2[2], a2[3]) & 1) == 0)
  {
    goto LABEL_11;
  }

  v26 = v8;
  v27 = type metadata accessor for PBDeleteBlob(0);
  v18 = *(v27 + 28);
  v19 = *(v14 + 48);
  sub_251B59614(a1 + v18, v17, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
  sub_251B59614(a2 + v18, &v17[v19], &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_251B59694(v17, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
LABEL_14:
      v25 = *(v27 + 24);
      sub_251C703B4();
      sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8]);
      v21 = sub_251C70ED4();
      return v21 & 1;
    }

    goto LABEL_10;
  }

  sub_251B59614(v17, v12, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_251B55CF0(v12, type metadata accessor for PBRevocationAuthorization);
LABEL_10:
    sub_251B57694(v17, &qword_27F479158, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
    goto LABEL_11;
  }

  v23 = v26;
  sub_251B55C88(&v17[v19], v26, type metadata accessor for PBRevocationAuthorization);
  v24 = sub_251ADA68C(v12, v23);
  sub_251B55CF0(v23, type metadata accessor for PBRevocationAuthorization);
  sub_251B55CF0(v12, type metadata accessor for PBRevocationAuthorization);
  sub_251B59694(v17, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
  if (v24)
  {
    goto LABEL_14;
  }

LABEL_11:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_251B59000(void *a1, void *a2)
{
  v4 = sub_251C70384();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D21570];
  sub_251B55C24(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  sub_251B59704(0, &qword_27F479138, &qword_27F479130, v9);
  v15 = v14;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_10;
  }

  v30 = v8;
  v31 = type metadata accessor for PBTouchBlob(0);
  v19 = *(v31 + 24);
  v20 = *(v15 + 48);
  v21 = MEMORY[0x277D21570];
  sub_251B59614(a1 + v19, v18, &qword_27F479130, MEMORY[0x277D21570]);
  sub_251B59614(a2 + v19, &v18[v20], &qword_27F479130, v21);
  v22 = *(v5 + 48);
  if (v22(v18, 1, v4) == 1)
  {
    if (v22(&v18[v20], 1, v4) == 1)
    {
      sub_251B59694(v18, &qword_27F479130, MEMORY[0x277D21570]);
LABEL_12:
      v28 = *(v31 + 20);
      sub_251C703B4();
      sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8]);
      v23 = sub_251C70ED4();
      return v23 & 1;
    }

    goto LABEL_9;
  }

  sub_251B59614(v18, v13, &qword_27F479130, MEMORY[0x277D21570]);
  if (v22(&v18[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v13, v4);
LABEL_9:
    sub_251B57694(v18, &qword_27F479138, &qword_27F479130, MEMORY[0x277D21570]);
    goto LABEL_10;
  }

  v24 = &v18[v20];
  v25 = v30;
  (*(v5 + 32))(v30, v24, v4);
  sub_251B5438C(&qword_27F479140, MEMORY[0x277D21570]);
  v26 = sub_251C70ED4();
  v27 = *(v5 + 8);
  v27(v25, v4);
  v27(v13, v4);
  sub_251B59694(v18, &qword_27F479130, MEMORY[0x277D21570]);
  if (v26)
  {
    goto LABEL_12;
  }

LABEL_10:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_251B5943C(uint64_t *a1, uint64_t *a2)
{
  if ((sub_251A9C778(*a1, *a2) & 1) == 0 || (sub_251A9D1F0(a1[1], a1[2], a2[1], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for PBBlobAuth(0) + 28);
  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

unint64_t sub_251B59518()
{
  result = qword_27F47A988;
  if (!qword_27F47A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A988);
  }

  return result;
}

unint64_t sub_251B5956C()
{
  result = qword_27F47A9A8;
  if (!qword_27F47A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A9A8);
  }

  return result;
}

unint64_t sub_251B595C0()
{
  result = qword_27F47A9E0;
  if (!qword_27F47A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A9E0);
  }

  return result;
}

uint64_t sub_251B59614(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251B55C24(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251B59694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251B55C24(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251B59704(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_251B55C24(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_251B5977C()
{
  result = qword_27F47AA20;
  if (!qword_27F47AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AA20);
  }

  return result;
}

void sub_251B59840()
{
  sub_251B5B1A0(319, &qword_2813E1F88);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_251B59958()
{
  sub_251B55C24(319, &qword_27F47AA60, type metadata accessor for PBBlobAttribute, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      sub_251B55C24(319, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B59B70()
{
  sub_251B5B1A0(319, &qword_2813E1E48);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_26Tm(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = sub_251C703B4();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }

    else
    {
      sub_251B55C24(0, a4, a5, MEMORY[0x277D83D88]);
      v18 = v17;
      v19 = *(*(v17 - 8) + 48);
      v20 = a1 + *(a3 + 32);

      return v19(v20, a2, v18);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_27Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v12 = sub_251C703B4();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      sub_251B55C24(0, a5, a6, MEMORY[0x277D83D88]);
      v18 = v17;
      v19 = *(*(v17 - 8) + 56);
      v20 = v7 + *(a4 + 32);

      return v19(v20, a2, a2, v18);
    }
  }

  return result;
}

void sub_251B59F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_251C703B4();
  if (v8 <= 0x3F)
  {
    sub_251B55C24(319, a5, a6, MEMORY[0x277D83D88]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_35Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_36Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251B5A2D4()
{
  result = sub_251C703B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v10 = sub_251C703B4();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = v10;
    v13 = *(v11 + 48);
    v14 = a1;
LABEL_5:

    return v13(v14, a2, v12);
  }

  sub_251B55C24(0, a4, a5, MEMORY[0x277D83D88]);
  v16 = *(v15 - 8);
  if (*(v16 + 84) == a2)
  {
    v12 = v15;
    v13 = *(v16 + 48);
    v14 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_251B55C24(0, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + *(a3 + 24);

  return v20(v21, a2, v19);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v12 = sub_251C703B4();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = *(v13 + 56);
    v16 = a1;
LABEL_5:

    return v15(v16, a2, a2, v14);
  }

  sub_251B55C24(0, a5, a6, MEMORY[0x277D83D88]);
  v18 = *(v17 - 8);
  if (*(v18 + 84) == a3)
  {
    v14 = v17;
    v15 = *(v18 + 56);
    v16 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_251B55C24(0, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + *(a4 + 24);

  return v22(v23, a2, a2, v21);
}

void sub_251B5A6FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_251C703B4();
  if (v7 <= 0x3F)
  {
    sub_251B55C24(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      sub_251B55C24(319, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B5A864()
{
  sub_251C703B4();
  if (v0 <= 0x3F)
  {
    sub_251B55C24(319, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_17Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_18Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_251B5AAC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_251B55C24(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    sub_251C703B4();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_117Tm(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = sub_251C703B4();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }

    else
    {
      sub_251B55C24(0, a4, a5, MEMORY[0x277D83D88]);
      v18 = v17;
      v19 = *(*(v17 - 8) + 48);
      v20 = a1 + *(a3 + 28);

      return v19(v20, a2, v18);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_118Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v12 = sub_251C703B4();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      sub_251B55C24(0, a5, a6, MEMORY[0x277D83D88]);
      v18 = v17;
      v19 = *(*(v17 - 8) + 56);
      v20 = v7 + *(a4 + 28);

      return v19(v20, a2, a2, v18);
    }
  }

  return result;
}

void sub_251B5AE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_251C703B4();
  if (v8 <= 0x3F)
  {
    sub_251B55C24(319, a5, a6, MEMORY[0x277D83D88]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_251B5AF34()
{
  result = qword_27F47AB38;
  if (!qword_27F47AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AB38);
  }

  return result;
}

uint64_t sub_251B5AFB8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_251B5B1A0(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251B5B00C()
{
  result = qword_27F47AB50;
  if (!qword_27F47AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AB50);
  }

  return result;
}

unint64_t sub_251B5B094()
{
  result = qword_27F47AB68;
  if (!qword_27F47AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AB68);
  }

  return result;
}

unint64_t sub_251B5B11C()
{
  result = qword_27F47AB80;
  if (!qword_27F47AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AB80);
  }

  return result;
}

void sub_251B5B1A0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_251C711A4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_251B5B1F0()
{
  result = qword_27F47AB98;
  if (!qword_27F47AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AB98);
  }

  return result;
}

unint64_t sub_251B5B248()
{
  result = qword_27F47ABA0;
  if (!qword_27F47ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ABA0);
  }

  return result;
}

unint64_t sub_251B5B2A0()
{
  result = qword_27F47ABA8;
  if (!qword_27F47ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ABA8);
  }

  return result;
}

unint64_t sub_251B5B2F8()
{
  result = qword_27F47ABB0;
  if (!qword_27F47ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ABB0);
  }

  return result;
}

unint64_t sub_251B5B350()
{
  result = qword_27F47ABB8;
  if (!qword_27F47ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ABB8);
  }

  return result;
}

unint64_t sub_251B5B3A8()
{
  result = qword_27F47ABC0;
  if (!qword_27F47ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ABC0);
  }

  return result;
}

unint64_t sub_251B5B400()
{
  result = qword_27F47ABC8;
  if (!qword_27F47ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ABC8);
  }

  return result;
}

unint64_t sub_251B5B458()
{
  result = qword_27F47ABD0;
  if (!qword_27F47ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ABD0);
  }

  return result;
}

uint64_t sub_251B5B4AC(uint64_t result)
{
  if (result > 4)
  {
    switch(result)
    {
      case 7:
        return 6;
      case 6:
        return 5;
      case 5:
        return 4;
    }
  }

  return result;
}

uint64_t sub_251B5B51C(uint64_t result)
{
  if (result > 4)
  {
    if (result == 5)
    {
      return 2;
    }

    else if (result == 7)
    {
      return 3;
    }
  }

  else if (result == 4)
  {
    return 1;
  }

  return result;
}

uint64_t sub_251B5B580(uint64_t result)
{
  if (result <= 2)
  {
    if (result == 2)
    {
      return 1;
    }
  }

  else
  {
    switch(result)
    {
      case 3:
        return 2;
      case 4:
        return 3;
      case 5:
        return 4;
    }
  }

  return result;
}

uint64_t sub_251B5B634(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    v4 = a2;
    v5 = [a1 BOOLValue];
    a2 = v4;
  }

  else
  {
    v5 = 2;
  }

  return a3(v5, a2);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_251B5B6B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_251B5B6F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_251B5B838()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for URLSessionCertVerificationDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_251B5B890(void *a1, void *a2, uint64_t a3)
{
  v5 = [a1 protectionSpace];
  v43 = [v5 serverTrust];

  if (v43)
  {
    if (HKAcceptAuthenticationChallengeWithTrust())
    {
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v6 = sub_251C70764();
      __swift_project_value_buffer(v6, qword_2813E8130);
      v7 = a2;
      v8 = sub_251C70744();
      v9 = sub_251C713C4();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v44 = v11;
        *v10 = 136315138;
        v12 = v7;
        v13 = [v12 description];
        v14 = sub_251C70F14();
        v16 = v15;

        v17 = sub_251B10780(v14, v16, &v44);

        *(v10 + 4) = v17;
        _os_log_impl(&dword_251A6C000, v8, v9, "%s: SecTrustStore verification passed for root cert from FHIR API", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x25308E2B0](v11, -1, -1);
        MEMORY[0x25308E2B0](v10, -1, -1);
      }

      (*(a3 + 16))(a3, 1, 0);
    }

    else
    {
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v31 = sub_251C70764();
      __swift_project_value_buffer(v31, qword_2813E8130);
      v32 = a2;
      v33 = sub_251C70744();
      v34 = sub_251C713D4();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v44 = v36;
        *v35 = 136315138;
        v37 = v32;
        v38 = [v37 description];
        v39 = sub_251C70F14();
        v41 = v40;

        v42 = sub_251B10780(v39, v41, &v44);

        *(v35 + 4) = v42;
        _os_log_impl(&dword_251A6C000, v33, v34, "%s: HKAcceptAuthenticationChallengeWithTrust doesn't trust the certificate, cancelling auth challenge", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x25308E2B0](v36, -1, -1);
        MEMORY[0x25308E2B0](v35, -1, -1);
      }

      (*(a3 + 16))(a3, 2, 0);
    }
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v18 = sub_251C70764();
    __swift_project_value_buffer(v18, qword_2813E8130);
    v19 = a2;
    v20 = sub_251C70744();
    v21 = sub_251C713D4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v44 = v23;
      *v22 = 136315138;
      v24 = v19;
      v25 = [v24 description];
      v26 = sub_251C70F14();
      v28 = v27;

      v29 = sub_251B10780(v26, v28, &v44);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_251A6C000, v20, v21, "%s: Could not retrieve serverTrust from FHIR API connection, cancelling auth challenge", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x25308E2B0](v23, -1, -1);
      MEMORY[0x25308E2B0](v22, -1, -1);
    }

    v30 = *(a3 + 16);

    v30(a3, 2, 0);
  }
}

uint64_t sub_251B5BD90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_251B5BD8C(v7, v9) & 1;
}

uint64_t sub_251B5BDFC(uint64_t a1, uint64_t a2)
{
  v57 = sub_251C70074();
  v52 = *(v57 - 8);
  v4 = *(v52 + 64);
  v5 = MEMORY[0x28223BE20](v57);
  v53 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = v47 - v7;
  sub_251B5C8E4(0, &qword_27F47ABE8, sub_251AD1194);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  result = MEMORY[0x28223BE20](v10);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v50 = v47 - v12;
  v14 = 0;
  v48 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v47[1] = v52 + 16;
  v54 = v13;
  v55 = (v52 + 32);
  v49 = (v52 + 8);
  while (v20)
  {
    v56 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v14 << 6);
LABEL_16:
    v28 = v48;
    v29 = v52;
    (*(v52 + 16))(v51, *(v48 + 48) + *(v52 + 72) * v22, v57);
    v30 = *(*(v28 + 56) + 8 * v22);
    sub_251AD1194();
    v32 = v31;
    v33 = *(v31 + 48);
    v25 = v54;
    (*(v29 + 32))();
    *(v25 + v33) = v30;
    (*(*(v32 - 8) + 56))(v25, 0, 1, v32);

LABEL_17:
    v34 = v50;
    sub_251B5C938(v25, v50, &qword_27F47ABE8, sub_251AD1194);
    sub_251AD1194();
    v35 = (*(*(v32 - 8) + 48))(v34, 1, v32);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v32 + 48);
    v38 = v53;
    v39 = v57;
    (*v55)(v53, v34, v57);
    v40 = *(v34 + v37);
    v41 = sub_251AC8AFC(v38);
    LOBYTE(v37) = v42;
    (*v49)(v38, v39);
    if ((v37 & 1) == 0)
    {

      return 0;
    }

    v43 = *(*(a2 + 56) + 8 * v41);

    v45 = sub_251BBF1A4(v44, v40);

    v20 = v56;
    if ((v45 & 1) == 0)
    {
      return v36;
    }
  }

  if (v21 <= v14 + 1)
  {
    v23 = v14 + 1;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 - 1;
  v25 = v54;
  while (1)
  {
    v26 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      sub_251AD1194();
      v32 = v46;
      (*(*(v46 - 8) + 56))(v25, 1, 1, v46);
      v56 = 0;
      v14 = v24;
      goto LABEL_17;
    }

    v27 = *(v16 + 8 * v26);
    ++v14;
    if (v27)
    {
      v56 = (v27 - 1) & v27;
      v22 = __clz(__rbit64(v27)) | (v26 << 6);
      v14 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251B5C264(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C70014();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = &v54 - v9;
  sub_251B5C8E4(0, &qword_27F47ABD8, sub_251B5C820);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  result = MEMORY[0x28223BE20](v12);
  v16 = &v54 - v15;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v57 = a2;
  v58 = v14;
  v56 = v8;
  v17 = 0;
  v18 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 64);
  v22 = (v19 + 63) >> 6;
  v59 = v63 + 16;
  v60 = (v63 + 32);
  v54 = a1;
  v55 = (v63 + 8);
  while (v21)
  {
    v61 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v17 << 6);
LABEL_16:
    v29 = *(v54 + 48) + 16 * v23;
    v30 = *v29;
    v31 = *(v29 + 8);
    v33 = v62;
    v32 = v63;
    (*(v63 + 16))(v62, *(v54 + 56) + *(v63 + 72) * v23, v4);
    sub_251B5C820();
    v35 = v34;
    v36 = *(v34 + 48);
    v37 = v58;
    *v58 = v30;
    *(v37 + 8) = v31;
    v38 = *(v32 + 32);
    v26 = v37;
    v38(v37 + v36, v33, v4);
    (*(*(v35 - 8) + 56))(v26, 0, 1, v35);
LABEL_17:
    sub_251B5C938(v26, v16, &qword_27F47ABD8, sub_251B5C820);
    sub_251B5C820();
    v39 = (*(*(v35 - 8) + 48))(v16, 1, v35);
    v40 = v39 == 1;
    if (v39 == 1)
    {
      return v40;
    }

    v41 = *(v35 + 48);
    v42 = *v16;
    v43 = v16[8];
    v44 = v56;
    (*v60)(v56, &v16[v41], v4);
    v45 = v42;
    v46 = v57;
    v47 = sub_251AC8BD0(v45, v43);
    if ((v48 & 1) == 0)
    {
      (*v55)(v44, v4);
      return 0;
    }

    v50 = v62;
    v49 = v63;
    (*(v63 + 16))(v62, *(v46 + 56) + *(v63 + 72) * v47, v4);
    sub_251B5C88C();
    v51 = sub_251C70ED4();
    v52 = *(v49 + 8);
    v52(v50, v4);
    result = (v52)(v44, v4);
    v21 = v61;
    if ((v51 & 1) == 0)
    {
      return v40;
    }
  }

  if (v22 <= v17 + 1)
  {
    v24 = v17 + 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 - 1;
  v26 = v58;
  while (1)
  {
    v27 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v27 >= v22)
    {
      sub_251B5C820();
      v35 = v53;
      (*(*(v53 - 8) + 56))(v26, 1, 1, v53);
      v61 = 0;
      v17 = v25;
      goto LABEL_17;
    }

    v28 = *(v18 + 8 * v27);
    ++v17;
    if (v28)
    {
      v61 = (v28 - 1) & v28;
      v23 = __clz(__rbit64(v28)) | (v27 << 6);
      v17 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251B5C710(uint64_t *a1, uint64_t *a2)
{
  if ((sub_251A94860(*a1, *a2) & 1) == 0 || (sub_251A94860(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[4];
  v7 = a2[5];
  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  if ((sub_251A9D1F0(v4, v5, v6, v7) & 1) == 0 || (a1[6] != a2[6] || a1[7] != a2[7]) && (sub_251C719D4() & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v8 = a1[10];
  v9 = a2[10];

  return sub_251B5C264(v8, v9);
}

void sub_251B5C820()
{
  if (!qword_27F47ABE0)
  {
    sub_251C70014();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47ABE0);
    }
  }
}

unint64_t sub_251B5C88C()
{
  result = qword_27F479160;
  if (!qword_27F479160)
  {
    sub_251C70014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479160);
  }

  return result;
}

void sub_251B5C8E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_251B5C938(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_251B5C8E4(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_251B5C9A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7566185;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6972755F6F676F6CLL;
    }

    else
    {
      v4 = 0xD000000000000011;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0x8000000251C89CB0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1701667182;
    }

    else
    {
      v4 = 7566185;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0x6972755F6F676F6CLL;
  v8 = 0x8000000251C89CB0;
  if (a2 == 2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (a2)
  {
    v2 = 1701667182;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_251C719D4();
  }

  return v11 & 1;
}

BOOL sub_251B5CAD0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_251C83298[a1];
  }

  if (a4)
  {
    a3 = qword_251C83298[a3];
  }

  return a1 == a3;
}

BOOL sub_251B5CAF4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_251C832D8[a1];
  }

  if (a4)
  {
    a3 = qword_251C832D8[a3];
  }

  return a1 == a3;
}

uint64_t sub_251B5CB18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 5526864;
  if (a1 != 6)
  {
    v5 = 0x4543415254;
    v4 = 0xE500000000000000;
  }

  v6 = 0xE700000000000000;
  v7 = 0x534E4F4954504FLL;
  if (a1 != 4)
  {
    v7 = 1414745936;
    v6 = 0xE400000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE300000000000000;
  v9 = 5522759;
  if (a1 != 2)
  {
    v9 = 1145128264;
    v8 = 0xE400000000000000;
  }

  v10 = 0x4554454C4544;
  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v10 = 0x5443454E4E4F43;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0xE600000000000000;
        if (v11 != 0x4554454C4544)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x5443454E4E4F43)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_43;
    }

    if (a2 != 2)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1145128264)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v13 = 0xE300000000000000;
    v14 = 17735;
LABEL_34:
    if (v11 != (v14 | 0x540000))
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x534E4F4954504FLL)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE400000000000000;
      if (v11 != 1414745936)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_43;
  }

  if (a2 == 6)
  {
    v13 = 0xE300000000000000;
    v14 = 21840;
    goto LABEL_34;
  }

  v13 = 0xE500000000000000;
  if (v11 != 0x4543415254)
  {
LABEL_45:
    v15 = sub_251C719D4();
    goto LABEL_46;
  }

LABEL_43:
  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_251B5CD30@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = v2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 256;
  v3 = a1 + *(type metadata accessor for PBTimeSeries.Value(0) + 80);
  return sub_251C703A4();
}

uint64_t sub_251B5CDA0@<X0>(char *a1@<X8>)
{
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = *(v1 + *(type metadata accessor for PBClinicalRecord(0) + 20));
  v8 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(v7 + v8, v6, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v9 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    sub_251BB3444(v6, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_251BB23C4(v6, a1, type metadata accessor for PBHKConditionRecord);
    }

    sub_251BB2308(v6, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v11 = MEMORY[0x277D84F90];
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  *(a1 + 4) = v11;
  *(a1 + 5) = 0;
  *(a1 + 6) = 0xE000000000000000;
  *(a1 + 7) = 0;
  *(a1 + 8) = 0xE000000000000000;
  v12 = type metadata accessor for PBHKConditionRecord(0);
  v13 = &a1[v12[9]];
  sub_251C703A4();
  v14 = v12[10];
  v15 = type metadata accessor for PBHKConcept(0);
  v16 = *(*(v15 - 8) + 56);
  v16(&a1[v14], 1, 1, v15);
  v16(&a1[v12[11]], 1, 1, v15);
  v16(&a1[v12[12]], 1, 1, v15);
  v16(&a1[v12[13]], 1, 1, v15);
  return (v16)(&a1[v12[14]], 1, 1, v15);
}

uint64_t sub_251B5D054@<X0>(uint64_t a1@<X8>)
{
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for PBClinicalRecord(0) + 20));
  v8 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(v7 + v8, v6, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v9 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    sub_251BB3444(v6, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_251BB23C4(v6, a1, type metadata accessor for PBHKMedicationRecord);
    }

    sub_251BB2308(v6, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  v11 = MEMORY[0x277D84F90];
  *(a1 + 88) = MEMORY[0x277D84F90];
  *(a1 + 96) = v11;
  v12 = type metadata accessor for PBHKMedicationRecord(0);
  v13 = a1 + *(v12 + 48);
  sub_251C703A4();
  v14 = *(v12 + 52);
  v15 = type metadata accessor for PBGeneralMedication(0);
  return (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
}

uint64_t sub_251B5D2D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB2FA8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D360(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB2FFC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D3AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }

      return 1;
    }

    if (!v2)
    {
      return 1;
    }
  }

  else if (v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_251B5D418(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB279C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D4A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB2F54();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D530(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB30D0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D58C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB36D8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D5E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB3124();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D674(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB3220();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D6D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB3274();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D72C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB32C8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D788(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB331C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D7D4@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_251B5D81C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_251B5D858(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB3370();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D8A4()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1EC8);
  __swift_project_value_buffer(v0, qword_27F4A1EC8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C747F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "NONE";
  *(v7 + 8) = 4;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "SINGLE";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "RANGE";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "LIST";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 4;
  *v16 = "TAGGED_LIST";
  *(v16 + 8) = 11;
  *(v16 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B5DB6C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1EE0);
  __swift_project_value_buffer(v0, qword_27F4A1EE0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_251C78760;
  v5 = v33 + v4;
  v6 = v33 + v4 + *(v2 + 56);
  *(v33 + v4) = 0;
  *v6 = "NOT_SPECIFIED";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v33 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "RATIO";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v33 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "MEDICAL_DATE";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v33 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "MEDICAL_DATE_INTERVAL";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v33 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "DATE_COMPONENTS";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v33 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "NULL";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v9();
  v19 = (v33 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "CODED_QUANTITY";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v33 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "MEDICAL_CODINGS";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v9();
  v23 = v33 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "CODED_VALUE_COLLECTION";
  *(v23 + 8) = 22;
  *(v23 + 16) = 2;
  v9();
  v24 = (v33 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "DATA_ABSENT_REASON_CODINGS";
  *(v25 + 1) = 26;
  v25[16] = 2;
  v9();
  v26 = (v33 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "STRING";
  *(v27 + 1) = 6;
  v27[16] = 2;
  v9();
  v28 = (v33 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "INTEGER";
  *(v29 + 1) = 7;
  v29[16] = 2;
  v9();
  v30 = (v33 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "BOOLEAN";
  *(v31 + 1) = 7;
  v31[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B5E00C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1EF8);
  __swift_project_value_buffer(v0, qword_27F4A1EF8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "start_time";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "end_time";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "granularity";
  *(v12 + 8) = 11;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21870];
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B5E240()
{
  result = sub_251C70444();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3)
      {
        sub_251BB2550();
        sub_251C70494();
      }

      else if (result == 2 || result == 1)
      {
        sub_251C70534();
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B5E30C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_251C70674(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_251C70674(), !v1))
    {
      if (!v0[4] || (v9 = v0[4], v10 = *(v0 + 40), sub_251BB2550(), result = sub_251C70604(), !v1))
      {
        v8 = v0 + *(type metadata accessor for PBDateRange(0) + 28);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B5E470(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B5C8, type metadata accessor for PBDateRange);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B5E510(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B5E57C()
{
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange);

  return sub_251C705C4();
}

uint64_t sub_251B5E5F8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1F10);
  __swift_project_value_buffer(v0, qword_27F4A1F10);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "date_range";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 3;
  *v11 = "data_source";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 4;
  *v13 = "unit";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v14 = *MEMORY[0x277D21870];
  v10();
  v15 = (v6 + 3 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "values";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B5E864()
{
  result = sub_251C70444();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          goto LABEL_14;
        }

        if (result == 5)
        {
          type metadata accessor for PBTimeSeries.Value(0);
          sub_251B9ED44(&qword_27F47B518, type metadata accessor for PBTimeSeries.Value);
          sub_251C70554();
        }
      }

      else
      {
        if (result == 1)
        {
          sub_251B5E99C();
          goto LABEL_5;
        }

        if (result == 3)
        {
LABEL_14:
          sub_251C70534();
        }
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B5E99C()
{
  v0 = *(type metadata accessor for PBTimeSeries(0) + 32);
  type metadata accessor for PBDateRange(0);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange);
  return sub_251C70564();
}

uint64_t sub_251B5EA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251B5EBB0(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = *v3;
    v7 = v3[1];
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      sub_251C70674();
    }

    v9 = v3[3];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_251C70674();
    }

    if (*(v3[4] + 16))
    {
      type metadata accessor for PBTimeSeries.Value(0);
      sub_251B9ED44(&qword_27F47B518, type metadata accessor for PBTimeSeries.Value);
      sub_251C70694();
    }

    v11 = v3 + *(type metadata accessor for PBTimeSeries(0) + 28);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B5EBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBDateRange(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBTimeSeries(0);
  sub_251BB33C4(a1 + *(v14 + 32), v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBDateRange);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBDateRange);
}

uint64_t sub_251B5EE00@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = MEMORY[0x277D84F90];
  v4 = &a2[*(a1 + 28)];
  sub_251C703A4();
  v5 = *(a1 + 32);
  v6 = type metadata accessor for PBDateRange(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_251B5EEE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B5D8, type metadata accessor for PBTimeSeries);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B5EF84(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F478FB0, type metadata accessor for PBTimeSeries);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B5EFF0()
{
  sub_251B9ED44(&qword_27F478FB0, type metadata accessor for PBTimeSeries);

  return sub_251C705C4();
}

uint64_t sub_251B5F070()
{
  result = MEMORY[0x25308CDA0](0x65756C61562ELL, 0xE600000000000000);
  qword_27F4A1F28 = 0xD000000000000025;
  unk_27F4A1F30 = 0x8000000251C8CF20;
  return result;
}

uint64_t sub_251B5F0D8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1F38);
  __swift_project_value_buffer(v0, qword_27F4A1F38);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_251C7C1B0;
  v5 = v40 + v4;
  v6 = v40 + v4 + *(v2 + 56);
  *(v40 + v4) = 1;
  *v6 = "min_float";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "max_float";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "mean_float";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "sum_float";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "raw_float";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "recorded_time";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "measure_count";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "unit";
  *(v22 + 1) = 4;
  v22[16] = 2;
  v23 = *MEMORY[0x277D21870];
  v9();
  v24 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v24 = "data_source";
  *(v24 + 8) = 11;
  *(v24 + 16) = 2;
  v9();
  v25 = (v5 + 9 * v3);
  v26 = v25 + *(v2 + 56);
  *v25 = 10;
  *v26 = "min";
  *(v26 + 1) = 3;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v3);
  v28 = v27 + *(v2 + 56);
  *v27 = 11;
  *v28 = "max";
  *(v28 + 1) = 3;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v3);
  v30 = v29 + *(v2 + 56);
  *v29 = 12;
  *v30 = "mean";
  *(v30 + 1) = 4;
  v30[16] = 2;
  v9();
  v31 = (v5 + 12 * v3);
  v32 = v31 + *(v2 + 56);
  *v31 = 13;
  *v32 = "sum";
  *(v32 + 1) = 3;
  v32[16] = 2;
  v9();
  v33 = (v5 + 13 * v3);
  v34 = v33 + *(v2 + 56);
  *v33 = 14;
  *v34 = "raw";
  *(v34 + 1) = 3;
  v34[16] = 2;
  v9();
  v35 = (v5 + 14 * v3);
  v36 = v35 + *(v2 + 56);
  *v35 = 16;
  *v36 = "data_sources";
  *(v36 + 1) = 12;
  v36[16] = 2;
  v9();
  v37 = (v5 + 15 * v3);
  v38 = v37 + *(v2 + 56);
  *v37 = 17;
  *v38 = "glucose_meal_time";
  *(v38 + 1) = 17;
  v38[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B5F654()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        sub_251C704E4();
        break;
      case 6:
      case 8:
      case 9:
        sub_251C70534();
        break;
      case 7:
        sub_251C704F4();
        break;
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
        sub_251C70514();
        break;
      case 16:
        sub_251C70504();
        break;
      case 17:
        sub_251B5F7B0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_251B5F864()
{
  if (!*v0 || (result = sub_251C70634(), !v1))
  {
    if (!*(v0 + 4) || (result = sub_251C70634(), !v1))
    {
      if (!*(v0 + 8) || (result = sub_251C70634(), !v1))
      {
        if (!*(v0 + 12) || (result = sub_251C70634(), !v1))
        {
          if (!*(v0 + 16) || (result = sub_251C70634(), !v1))
          {
            v3 = *(v0 + 32);
            v4 = HIBYTE(v3) & 0xF;
            if ((v3 & 0x2000000000000000) == 0)
            {
              v4 = *(v0 + 24) & 0xFFFFFFFFFFFFLL;
            }

            if (!v4 || (result = sub_251C70674(), !v1))
            {
              if (!*(v0 + 40) || (result = sub_251C70644(), !v1))
              {
                v5 = *(v0 + 56);
                v6 = HIBYTE(v5) & 0xF;
                if ((v5 & 0x2000000000000000) == 0)
                {
                  v6 = *(v0 + 48) & 0xFFFFFFFFFFFFLL;
                }

                if (!v6 || (result = sub_251C70674(), !v1))
                {
                  v7 = *(v0 + 72);
                  v8 = HIBYTE(v7) & 0xF;
                  if ((v7 & 0x2000000000000000) == 0)
                  {
                    v8 = *(v0 + 64) & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v8 || (result = sub_251C70674(), !v1))
                  {
                    if (!*(v0 + 80) || (result = sub_251C70664(), !v1))
                    {
                      if (!*(v0 + 88) || (result = sub_251C70664(), !v1))
                      {
                        if (!*(v0 + 96) || (result = sub_251C70664(), !v1))
                        {
                          if (!*(v0 + 104) || (result = sub_251C70664(), !v1))
                          {
                            if (!*(v0 + 112) || (result = sub_251C70664(), !v1))
                            {
                              if (!*(*(v0 + 120) + 16) || (result = sub_251C70654(), !v1))
                              {
                                result = sub_251B5FB1C(v0);
                                if (!v1)
                                {
                                  v9 = v0 + *(type metadata accessor for PBTimeSeries.Value(0) + 80);
                                  return sub_251C70394();
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
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B5FB1C(uint64_t result)
{
  if ((*(result + 137) & 1) == 0)
  {
    v1 = *(result + 128);
    v2 = *(result + 136) & 1;
    sub_251BB25A4();
    return sub_251C70604();
  }

  return result;
}

uint64_t sub_251B5FBD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}