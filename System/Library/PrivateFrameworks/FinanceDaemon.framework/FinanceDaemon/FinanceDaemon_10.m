void sub_226BAAA34(uint64_t a1@<X0>, char *a2@<X1>, void (**a3)(char *, uint64_t)@<X2>, char *a4@<X3>, void *a5@<X4>, NSObject *a6@<X5>, void *a7@<X8>)
{
  v88 = a5;
  v86 = a1;
  v87 = a6;
  v85 = a4;
  v91 = a2;
  v73 = a7;
  v92 = sub_226D6D06C();
  v72 = *(v92 - 8);
  v8 = *(v72 + 64);
  MEMORY[0x28223BE20](v92);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_226D6A30C();
  v82 = *(v84 - 8);
  v11 = *(v82 + 64);
  MEMORY[0x28223BE20](v84);
  v83 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D68C5C();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v79 = &v72 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v72 - v21;
  if (qword_28105F708 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v23 = sub_226D6E07C();
    v24 = __swift_project_value_buffer(v23, qword_28105F710);
    v80 = v14[2];
    v81 = v14 + 2;
    v80(v22, v91, v13);
    v25 = a3;
    v74 = v24;
    v26 = sub_226D6E05C();
    v27 = sub_226D6E9EC();
    v90 = v25;

    v28 = os_log_type_enabled(v26, v27);
    v77 = v14;
    v76 = v18;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v78 = v13;
      v31 = v30;
      *&v94 = v30;
      *v29 = 136315394;
      v32 = sub_226D68C4C();
      v34 = v33;
      v75 = v14[1];
      v75(v22, v78);
      v35 = sub_226AC4530(v32, v34, &v94);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2080;
      v36 = [v90 id];
      v37 = sub_226D6E39C();
      v39 = v38;

      v40 = sub_226AC4530(v37, v39, &v94);

      *(v29 + 14) = v40;
      _os_log_impl(&dword_226AB4000, v26, v27, "Inserting new consent with consentID: %s for institution with institutionID: %s.", v29, 0x16u);
      swift_arrayDestroy();
      v41 = v31;
      v13 = v78;
      MEMORY[0x22AA8BEE0](v41, -1, -1);
      MEMORY[0x22AA8BEE0](v29, -1, -1);
    }

    else
    {

      v75 = v14[1];
      v75(v22, v13);
    }

    sub_226D6794C();
    v42 = v80;
    v80(v79, v91, v13);
    (*(v82 + 104))(v83, *MEMORY[0x277CC7B60], v84);
    v43 = v90;
    v44 = v85;
    v22 = sub_226D6795C();
    MEMORY[0x28223BE20](v22);
    v45 = v86;
    *(&v72 - 4) = v87;
    *(&v72 - 3) = v44;
    v46 = v88;
    *(&v72 - 2) = v45;
    *(&v72 - 1) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74E0, &unk_226D75240);
    v47 = v89;
    sub_226D6EB8C();
    if (v47)
    {

      return;
    }

    v86 = 0;
    v48 = v94;
    v14 = v76;
    v42(v76, v91, v13);
    v49 = v43;
    v50 = v48;
    v51 = v49;

    v52 = sub_226D6E05C();
    v53 = sub_226D6E9EC();
    v88 = v51;

    LODWORD(v90) = v53;
    v54 = os_log_type_enabled(v52, v53);
    v18 = (v50 >> 62);
    v91 = v44;
    v89 = v50;
    if (v54)
    {
      v87 = v52;
      v55 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v94 = v84;
      *v55 = 134218498;
      v85 = (v50 >> 62);
      v56 = v50 >> 62 ? sub_226D6EDFC() : *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v55 + 4) = v56;

      *(v55 + 12) = 2080;
      v57 = sub_226D68C4C();
      v59 = v58;
      v75(v14, v13);
      v60 = v57;
      v50 = v89;
      v61 = sub_226AC4530(v60, v59, &v94);

      *(v55 + 14) = v61;
      *(v55 + 22) = 2080;
      v62 = [v88 id];
      v63 = sub_226D6E39C();
      v65 = v64;

      v66 = sub_226AC4530(v63, v65, &v94);

      *(v55 + 24) = v66;
      v67 = v87;
      _os_log_impl(&dword_226AB4000, v87, v90, "Merging the accounts granted by %ld consents into the new consent with consentID: %s for institutionID: %s.", v55, 0x20u);
      v14 = v84;
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v14, -1, -1);
      MEMORY[0x22AA8BEE0](v55, -1, -1);

      v18 = v85;
    }

    else
    {

      v75(v14, v13);
    }

    if (v18)
    {
      break;
    }

    v13 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_29;
    }

LABEL_14:
    v68 = 0;
    v90 = (v89 & 0xC000000000000001);
    v87 = v89 + 4;
    v88 = (v89 & 0xFFFFFFFFFFFFFF8);
    a3 = (v72 + 8);
    while (1)
    {
      if (v90)
      {
        v69 = MEMORY[0x22AA8AFD0](v68, v89);
      }

      else
      {
        if (v68 >= *(v88 + 2))
        {
          goto LABEL_26;
        }

        v69 = v87[v68].isa;
      }

      v14 = v69;
      if (__OFADD__(v68++, 1))
      {
        break;
      }

      v71 = [(objc_class *)v69 accountObjects];
      sub_226D6EBEC();

      while (1)
      {
        sub_226D6D05C();
        if (!v95)
        {
          break;
        }

        sub_226B24A98(&v94, &v93);
        sub_226D69F0C();
        if (swift_dynamicCast())
        {
          v18 = v96;
          sub_226D69EEC();
        }
      }

      (*a3)(v10, v92);
      [v91 deleteObject_];

      if (v68 == v13)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

  v13 = sub_226D6EDFC();
  if (v13)
  {
    goto LABEL_14;
  }

LABEL_29:

  *v73 = v22;
}

void sub_226BAB338(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t **a3@<X8>)
{
  v54 = a2;
  v52 = a3;
  v5 = sub_226D6D52C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v51 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v51 - v10;
  v11 = type metadata accessor for BankConnectConsentArbitratingConfiguration();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v51 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v51 - v23;
  sub_226BAE258(a1, v14, type metadata accessor for BankConnectConsentArbitratingConfiguration);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E98, &unk_226D73780);
  v26 = 1;
  if ((*(*(v25 - 8) + 48))(v14, 1, v25) != 1)
  {
    (*(v6 + 32))(v22, v14, v5);
    v26 = 0;
  }

  (*(v6 + 56))(v22, v26, 1, v5);
  sub_226BACBC0(v22, v24);
  sub_226AC40E8(v24, v19, &qword_27D7A6D68, &qword_226D75210);
  if ((*(v6 + 48))(v19, 1, v5) == 1)
  {
    v27 = 0;
    goto LABEL_5;
  }

  v32 = v53;
  (*(v6 + 32))(v53, v19, v5);
  sub_226D6794C();
  v33 = sub_226D678AC();
  if (v3)
  {
    v34 = *(v6 + 8);
LABEL_9:
    v34(v32, v5);
    sub_226AC47B0(v24, &qword_27D7A6D68, &qword_226D75210);
    return;
  }

  v27 = v33;
  if (!v33)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v37 = sub_226D6E07C();
    __swift_project_value_buffer(v37, qword_28105F710);
    v38 = v51;
    (*(v6 + 16))(v51, v32, v5);
    v39 = sub_226D6E05C();
    v40 = sub_226D6E9CC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v52 = v41;
      v54 = swift_slowAlloc();
      v55 = v54;
      *v41 = 136315138;
      v42 = sub_226D6D4CC();
      v44 = v43;
      v34 = *(v6 + 8);
      v34(v38, v5);
      v45 = sub_226AC4530(v42, v44, &v55);

      v46 = v52;
      *(v52 + 4) = v45;
      v32 = v53;
      _os_log_impl(&dword_226AB4000, v39, v40, "Expected consent with UUID: %s due to arbiter configuration but wasn't found in store. Aborting arbitration.", v46, 0xCu);
      v47 = v54;
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x22AA8BEE0](v47, -1, -1);
      MEMORY[0x22AA8BEE0](v46, -1, -1);
    }

    else
    {

      v34 = *(v6 + 8);
      v34(v38, v5);
    }

    v48 = sub_226D6A0DC();
    sub_226BAD9D0(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
    swift_allocError();
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x277CC7AB8], v48);
    swift_willThrow();
    goto LABEL_9;
  }

  (*(v6 + 8))(v32, v5);
LABEL_5:
  sub_226AC47B0(v24, &qword_27D7A6D68, &qword_226D75210);
  sub_226D6794C();
  v28 = sub_226D678BC();
  [v28 setReturnsObjectsAsFaults_];
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_226D70840;
  *(v29 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74E8, &qword_226D75250);
  *(v29 + 64) = sub_226BAE1D0();
  *(v29 + 32) = v54;

  v30 = sub_226D6E91C();
  [v28 setPredicate_];

  v31 = sub_226D6EBBC();
  if (v3)
  {
  }

  else
  {
    v55 = v31;
    if (v27)
    {
      v35 = v27;
      MEMORY[0x22AA8A610]();
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v50 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_226D6E61C();
      }

      sub_226D6E65C();

      *v52 = v55;
    }

    else
    {
      v36 = v31;

      *v52 = v36;
    }
  }
}

uint64_t sub_226BABA94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, size_t *a7)
{
  v81 = a5;
  v82 = a6;
  v84 = a3;
  v80 = a2;
  v79 = sub_226D67C0C();
  v85 = *(v79 - 8);
  v11 = *(v85 + 64);
  MEMORY[0x28223BE20](v79);
  v77 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_226D6A2EC();
  v13 = *(v76 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v76);
  v86 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v75 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v87 = &v68 - v20;
  v21 = sub_226D68C1C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21 - 8);
  v78 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v68 - v26;
  v28 = sub_226D69C6C();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_226D69C5C();
  if (!*(a1 + 16))
  {
  }

  v33 = *(a1 + 16);
  v88 = v7;
  v34 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v74 = (v85 + 56);
  v71 = *(v22 + 72);
  v72 = v13 + 32;
  *&v32 = 136315394;
  v68 = v32;
  v83 = a4;
  v73 = v13;
  v35 = v33;
  v69 = a7;
  while (1)
  {
    v85 = v34;
    sub_226BAE258(v34, v27, MEMORY[0x277CC75A0]);
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v36 = sub_226D6E07C();
    __swift_project_value_buffer(v36, qword_28105F710);
    v37 = v78;
    sub_226BAE258(v27, v78, MEMORY[0x277CC75A0]);

    v38 = sub_226D6E05C();
    v39 = sub_226D6E9EC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = v37;
      v70 = swift_slowAlloc();
      v89 = v70;
      *v40 = v68;
      *(v40 + 4) = sub_226AC4530(v84, a4, &v89);
      *(v40 + 12) = 2080;
      v42 = v35;
      v43 = v31;
      v44 = v27;
      v45 = sub_226D68C0C();
      v47 = v46;
      sub_226BAE2C0(v41, MEMORY[0x277CC75A0]);
      v48 = v45;
      v27 = v44;
      v31 = v43;
      v35 = v42;
      v49 = sub_226AC4530(v48, v47, &v89);

      *(v40 + 14) = v49;
      _os_log_impl(&dword_226AB4000, v38, v39, "Consent with consentID: %s grants access to account with accountID: %s. Inserting or updating account.", v40, 0x16u);
      v50 = v70;
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v50, -1, -1);
      v51 = v40;
      a7 = v69;
      MEMORY[0x22AA8BEE0](v51, -1, -1);
    }

    else
    {

      v52 = sub_226BAE2C0(v37, MEMORY[0x277CC75A0]);
    }

    v53 = v87;
    MEMORY[0x28223BE20](v52);
    *(&v68 - 2) = v27;
    v54 = v88;
    sub_226BA30BC(sub_226BAD9B0, (&v68 - 2), v81);
    v56 = v55;
    if (v55)
    {
      [v55 setIsAccountEnabled_];
      v57 = v56;
      sub_226D67C1C();
      v58 = 0;
    }

    else
    {
      v58 = 1;
    }

    (*v74)(v53, v58, 1, v79);
    v59 = sub_226D69C3C();
    v88 = v54;
    if (v54)
    {
      break;
    }

    v60 = v59;
    sub_226AC40E8(v53, v75, &qword_27D7A6D50, &unk_226D75230);
    v61 = v60;
    sub_226D67C1C();
    sub_226D6A2CC();
    v62 = *a7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v62;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v62 = sub_226BBB9D0(0, v62[2] + 1, 1, v62);
      *a7 = v62;
    }

    v65 = v62[2];
    v64 = v62[3];
    if (v65 >= v64 >> 1)
    {
      *a7 = sub_226BBB9D0(v64 > 1, v65 + 1, 1, v62);
    }

    sub_226AC47B0(v87, &qword_27D7A6D50, &unk_226D75230);
    v66 = *a7;
    v66[2] = v65 + 1;
    (*(v73 + 32))(v66 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v65, v86, v76);
    sub_226BAE2C0(v27, MEMORY[0x277CC75A0]);
    v34 = v85 + v71;
    --v35;
    a4 = v83;
    if (!v35)
    {
    }
  }

  sub_226AC47B0(v53, &qword_27D7A6D50, &unk_226D75230);

  return sub_226BAE2C0(v27, MEMORY[0x277CC75A0]);
}

uint64_t sub_226BAC1EC(id *a1)
{
  v1 = [*a1 accountId];
  v2 = sub_226D6E39C();
  v4 = v3;

  if (v2 == sub_226D68C0C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_226D6F21C();
  }

  return v7 & 1;
}

void sub_226BAC29C(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  v96 = a2;
  v78 = a4;
  v94 = sub_226D6D52C();
  v7 = *(v94 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v94);
  v93 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v92 = v76 - v11;

  v13 = sub_226BADF08(v12, a1);
  v77 = v4;

  v106 = MEMORY[0x277D84FA0];
  if ((v13 & 0xC000000000000001) != 0)
  {
    sub_226D6EDBC();
    sub_226D69F0C();
    sub_226BAD9D0(&qword_27D7A7278, MEMORY[0x277CC7A70]);
    sub_226D6E8DC();
    v13 = v105[1];
    v15 = v105[2];
    v16 = v105[3];
    v17 = v105[4];
    v18 = v105[5];
  }

  else
  {
    v17 = 0;
    v19 = -1 << *(v13 + 32);
    v15 = v13 + 56;
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v13 + 56);
  }

  v76[1] = v16;
  v22 = (v16 + 64) >> 6;
  v81 = *MEMORY[0x277CC7290];
  v88 = (v7 + 8);
  v87 = *MEMORY[0x277CC7298];
  v86 = *MEMORY[0x277CC7278];
  v85 = *MEMORY[0x277CC7288];
  v84 = *MEMORY[0x277CC72A0];
  v83 = *MEMORY[0x277CC7280];
  *&v14 = 136315138;
  v79 = v14;
  v82 = xmmword_226D750B0;
  v80 = xmmword_226D70840;
  v95 = a3;
  v23 = v96;
  v90 = v15;
  v91 = v13;
  v89 = v22;
  while (v13 < 0)
  {
    v31 = sub_226D6EE2C();
    if (!v31 || (v104 = v31, sub_226D69F0C(), swift_dynamicCast(), v30 = v105[0], v28 = v17, v29 = v18, !v105[0]))
    {
LABEL_26:
      sub_226AD3C20();
      *v78 = v106;
      return;
    }

LABEL_18:
    v101 = v29;
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v32 = sub_226D6E07C();
    __swift_project_value_buffer(v32, qword_28105F710);
    v33 = v30;
    v34 = sub_226D6E05C();
    v35 = sub_226D6E9EC();

    v36 = os_log_type_enabled(v34, v35);
    v102 = v28;
    v103 = v33;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v105[0] = v38;
      *v37 = v79;
      v39 = [v33 accountId];
      v40 = sub_226D6E39C();
      v42 = v41;

      v43 = sub_226AC4530(v40, v42, v105);

      *(v37 + 4) = v43;
      v33 = v103;
      _os_log_impl(&dword_226AB4000, v34, v35, "Account with accountID: %s is no longer granted by updated consent. Resetting message status and deleting this account.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x22AA8BEE0](v38, -1, -1);
      MEMORY[0x22AA8BEE0](v37, -1, -1);
    }

    v44 = [v33 externalAccountId];
    if (v44)
    {
      v45 = v44;
      v46 = sub_226D6E39C();
      v48 = v47;

      v49 = v23[11];
      v100 = v23[12];
      __swift_project_boxed_opaque_existential_1(v23 + 8, v49);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74D8, &qword_226D756E0);
      v50 = *(sub_226D6831C() - 8);
      v51 = *(v50 + 72);
      v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = v80;
      v54 = (v53 + v52);
      *v54 = v46;
      v54[1] = v48;
      (*(v50 + 104))();
      v33 = v103;
      sub_226D6AD4C();
    }

    v55 = [v33 accountId];
    v56 = sub_226D6E39C();
    v58 = v57;

    v59 = v23[12];
    v99 = v23[11];
    v100 = v59;
    v98 = __swift_project_boxed_opaque_existential_1(v23 + 8, v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74D8, &qword_226D756E0);
    v60 = sub_226D6831C();
    v61 = *(v60 - 8);
    v62 = *(v61 + 72);
    v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v97 = 4 * v62;
    v64 = swift_allocObject();
    *(v64 + 16) = v82;
    v65 = (v64 + v63);
    *v65 = v56;
    v65[1] = v58;
    v66 = *(v61 + 104);
    (v66)(v65, v87, v60);
    v67 = (v65 + v62);
    *v67 = v56;
    v67[1] = v58;
    v66();
    v68 = (v65 + 2 * v62);
    *v68 = v56;
    v68[1] = v58;
    v66();
    v69 = 3 * v62;
    v70 = v103;
    v71 = (v65 + v69);
    *v71 = v56;
    v71[1] = v58;
    v66();
    v72 = (v65 + v97);
    *v72 = v56;
    v72[1] = v58;
    v66();
    swift_bridgeObjectRetain_n();
    sub_226D6AD4C();

    v73 = [v70 accountMatchObject];
    v74 = v95;
    if (v73)
    {
      v75 = v73;
      [v95 deleteObject_];
    }

    v24 = v93;
    sub_226D69EBC();
    v25 = v92;
    sub_226C2514C(v92, v24);
    (*v88)(v25, v94);
    [v74 deleteObject_];

    v18 = v101;
    v17 = v102;
    v23 = v96;
    v15 = v90;
    v13 = v91;
    v22 = v89;
  }

  v26 = v17;
  v27 = v18;
  v28 = v17;
  if (v18)
  {
LABEL_14:
    v29 = (v27 - 1) & v27;
    v30 = *(*(v13 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
    if (!v30)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v22)
    {
      goto LABEL_26;
    }

    v27 = *(v15 + 8 * v28);
    ++v26;
    if (v27)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t type metadata accessor for BankConnectConsentArbitratingConfiguration()
{
  result = qword_27D7A7508;
  if (!qword_27D7A7508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226BACB7C(unsigned __int8 *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  sub_226BA539C(v1[2], v1[3], a1);
}

uint64_t sub_226BACBC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t *sub_226BACC30(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_226BADA18(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_226BACCCC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_226BACF20(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_226BACD5C(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_226BACF20((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_226BACCCC(v12, v6, a2, a1);

    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_226BACF20(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a2;
  v69 = a1;
  v6 = sub_226D6D52C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v78 = (v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v64 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v79 = (v64 - v15);
  result = MEMORY[0x28223BE20](v14);
  v68 = v64 - v17;
  v18 = *(a3 + 16);
  v19 = *(a4 + 16);
  v80 = v7 + 16;
  v76 = a4;
  v77 = a3;
  v72 = v7;
  if (v19 >= v18)
  {
    v44 = 0;
    v45 = *(a3 + 56);
    v67 = a3 + 56;
    v46 = 1 << *(a3 + 32);
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v48 = v47 & v45;
    v49 = (v46 + 63) >> 6;
    v75 = a4 + 56;
    v79 = (v7 + 8);
    j = v49;
    v71 = 0;
    if (v48)
    {
      goto LABEL_30;
    }

LABEL_31:
    v51 = v44;
    while (1)
    {
      v44 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v44 >= v49)
      {
LABEL_44:

        return sub_226D563B0(v69, v65, v71, a3);
      }

      v52 = *(v67 + 8 * v44);
      ++v51;
      if (v52)
      {
        v50 = __clz(__rbit64(v52));
        for (i = ((v52 - 1) & v52); ; i = ((v48 - 1) & v48))
        {
          v53 = v50 | (v44 << 6);
          v54 = *(a3 + 48);
          v55 = *(v7 + 72);
          v73 = v53;
          v56 = *(v7 + 16);
          v56(v78, v54 + v55 * v53, v6);
          v57 = *(a4 + 40);
          sub_226BAD9D0(&qword_281062B60, MEMORY[0x277CC95F0]);
          v58 = sub_226D6E2FC();
          v59 = -1 << *(a4 + 32);
          v60 = v58 & ~v59;
          if ((*(v75 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
          {
            v68 = (v79 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v61 = ~v59;
            while (1)
            {
              v56(v13, *(v76 + 48) + v60 * v55, v6);
              sub_226BAD9D0(&qword_27D7A6DA0, MEMORY[0x277CC95F0]);
              v62 = sub_226D6E35C();
              v63 = *v79;
              (*v79)(v13, v6);
              if (v62)
              {
                break;
              }

              v60 = (v60 + 1) & v61;
              if (((*(v75 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
              {
                a4 = v76;
                goto LABEL_42;
              }
            }

            result = (v63)(v78, v6);
            v7 = v72;
            *(v69 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
            v49 = j;
            v28 = __OFADD__(v71++, 1);
            a4 = v76;
            a3 = v77;
            v48 = i;
            if (v28)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v63 = *v79;
LABEL_42:
            result = (v63)(v78, v6);
            a3 = v77;
            v7 = v72;
            v49 = j;
            v48 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v50 = __clz(__rbit64(v48));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v71 = 0;
    v20 = a4;
    v21 = 0;
    v23 = v20 + 56;
    v22 = *(v20 + 56);
    v64[0] = v23;
    v24 = 1 << *(v23 - 24);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & v22;
    v27 = (v24 + 63) >> 6;
    v66 = v7 + 32;
    v67 = v27;
    v73 = a3 + 56;
    v78 = (v7 + 8);
    if (v26)
    {
      goto LABEL_9;
    }

LABEL_10:
    v30 = v21;
    while (1)
    {
      v21 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v21 >= v27)
      {
        goto LABEL_44;
      }

      v31 = *(v64[0] + 8 * v21);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        for (j = (v31 - 1) & v31; ; j = (v26 - 1) & v26)
        {
          v32 = *(v7 + 72);
          v33 = *(v76 + 48) + v32 * (v29 | (v21 << 6));
          v34 = v68;
          i = *(v7 + 16);
          v75 = v32;
          i(v68, v33, v6);
          (*(v7 + 32))(v79, v34, v6);
          v35 = *(a3 + 40);
          sub_226BAD9D0(&qword_281062B60, MEMORY[0x277CC95F0]);
          v36 = sub_226D6E2FC();
          v37 = -1 << *(a3 + 32);
          v38 = v36 & ~v37;
          v39 = v38 >> 6;
          v40 = 1 << v38;
          if (((1 << v38) & *(v73 + 8 * (v38 >> 6))) != 0)
          {
            v64[1] = v78 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v41 = ~v37;
            while (1)
            {
              i(v13, *(v77 + 48) + v38 * v75, v6);
              sub_226BAD9D0(&qword_27D7A6DA0, MEMORY[0x277CC95F0]);
              v42 = sub_226D6E35C();
              v43 = *v78;
              (*v78)(v13, v6);
              if (v42)
              {
                break;
              }

              v38 = (v38 + 1) & v41;
              v39 = v38 >> 6;
              v40 = 1 << v38;
              if (((1 << v38) & *(v73 + 8 * (v38 >> 6))) == 0)
              {
                a3 = v77;
                goto LABEL_21;
              }
            }

            result = (v43)(v79, v6);
            v26 = j;
            v69[v39] |= v40;
            v7 = v72;
            v28 = __OFADD__(v71++, 1);
            a3 = v77;
            v27 = v67;
            if (v28)
            {
              goto LABEL_48;
            }

            if (!v26)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v43 = *v78;
LABEL_21:
            result = (v43)(v79, v6);
            v7 = v72;
            v27 = v67;
            v26 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v29 = __clz(__rbit64(v26));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_226BAD608(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D52C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BankConnectConsentArbitratingConfiguration();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7528, &unk_226D753A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_226BAE258(a1, &v24 - v16, type metadata accessor for BankConnectConsentArbitratingConfiguration);
  sub_226BAE258(a2, &v17[v18], type metadata accessor for BankConnectConsentArbitratingConfiguration);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E98, &unk_226D73780);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v17, 1, v19) != 1)
  {
    sub_226BAE258(v17, v12, type metadata accessor for BankConnectConsentArbitratingConfiguration);
    if (v20(&v17[v18], 1, v19) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v21 = sub_226D6D4EC();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_226BAE2C0(v17, type metadata accessor for BankConnectConsentArbitratingConfiguration);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v20(&v17[v18], 1, v19) != 1)
  {
LABEL_6:
    sub_226AC47B0(v17, &qword_27D7A7528, &unk_226D753A0);
    v21 = 0;
    return v21 & 1;
  }

  sub_226BAE2C0(v17, type metadata accessor for BankConnectConsentArbitratingConfiguration);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_226BAD9D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t *sub_226BADA18(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = 0;
  v29 = a4;
  v26 = a2;
  v27 = result;
  v6 = 0;
  v30 = a3;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v33 = v5;
    v12 = __clz(__rbit64(v10));
    v31 = (v10 - 1) & v10;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(v30 + 48) + 8 * v15);
    v17 = [v16 accountId];
    v18 = sub_226D6E39C();
    v20 = v19;

    v32[0] = v18;
    v32[1] = v20;
    MEMORY[0x28223BE20](v21);
    v25[2] = v32;
    v22 = v33;
    LOBYTE(v17) = sub_226CCB428(sub_226BAE5A0, v25, v29);
    v5 = v22;

    v10 = v31;
    if ((v17 & 1) == 0)
    {
      *(v27 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_15:
        v24 = v30;

        return sub_226D568FC(v27, v26, v28, v24);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v33 = v5;
      v12 = __clz(__rbit64(v14));
      v31 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226BADC04(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v38[2] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v31 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v31;
  v35 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v30[1] = v30;
    MEMORY[0x28223BE20](v8);
    v32 = v30 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v7);
    v33 = 0;
    v34 = v4;
    v7 = 0;
    v9 = v4 + 56;
    v10 = 1 << *(v4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v4 + 56);
    v4 = (v10 + 63) >> 6;
    while (v12)
    {
      v13 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
      v37 = v3;
LABEL_12:
      v16 = v13 | (v7 << 6);
      v17 = *(*(v34 + 48) + 8 * v16);
      v18 = [v17 accountId];
      v19 = sub_226D6E39C();
      v21 = v20;

      v38[0] = v19;
      v38[1] = v21;
      MEMORY[0x28223BE20](v22);
      v30[-2] = v38;
      v23 = v37;
      LOBYTE(v18) = sub_226CCB428(sub_226BAE5A0, &v30[-4], v35);
      v3 = v23;

      v12 = v36;
      if ((v18 & 1) == 0)
      {
        *&v32[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_16:
          v25 = sub_226D568FC(v32, v31, v33, v34);
          goto LABEL_17;
        }
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v4)
      {
        goto LABEL_16;
      }

      v15 = *(v9 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
        v37 = v3;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = swift_slowAlloc();
  v29 = v35;

  v25 = sub_226BACC30(v28, v31, v4, v29);

  MEMORY[0x22AA8BEE0](v28, -1, -1);
LABEL_17:

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t sub_226BADF08(int64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_226BADC04(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v28 = MEMORY[0x277D84FA0];

  sub_226D6EDBC();
  v4 = sub_226D6EE2C();
  if (v4)
  {
    v5 = v4;
    sub_226D69F0C();
    v6 = v5;
    do
    {
      v26[0] = v6;
      swift_dynamicCast();
      v7 = [v27 accountId];
      v8 = sub_226D6E39C();
      v10 = v9;

      v26[0] = v8;
      v26[1] = v10;
      MEMORY[0x28223BE20](v11);
      v25[2] = v26;
      LOBYTE(v7) = sub_226CCB428(sub_226BAE190, v25, a2);

      v12 = v27;
      if (v7)
      {
      }

      else
      {
        v13 = *(v3 + 16);
        if (*(v3 + 24) <= v13)
        {
          sub_226C29738(v13 + 1);
        }

        v3 = v28;
        v14 = *(v28 + 40);
        result = sub_226D6EC2C();
        v16 = v3 + 56;
        v17 = -1 << *(v3 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v3 + 56 + 8 * (v18 >> 6))) != 0)
        {
          v20 = __clz(__rbit64((-1 << v18) & ~*(v3 + 56 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = 0;
          v22 = (63 - v17) >> 6;
          do
          {
            if (++v19 == v22 && (v21 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v23 = v19 == v22;
            if (v19 == v22)
            {
              v19 = 0;
            }

            v21 |= v23;
            v24 = *(v16 + 8 * v19);
          }

          while (v24 == -1);
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
        }

        *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v3 + 48) + 8 * v20) = v12;
        ++*(v3 + 16);
      }

      v6 = sub_226D6EE2C();
    }

    while (v6);
  }

  return v3;
}

void sub_226BAE1B0(uint64_t **a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_226BAB338(*(v1 + 16), *(v1 + 40), a1);
}

unint64_t sub_226BAE1D0()
{
  result = qword_27D7A74F0;
  if (!qword_27D7A74F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A74E8, &qword_226D75250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A74F0);
  }

  return result;
}

uint64_t sub_226BAE258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226BAE2C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226BAE320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BAE384(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_226AD827C;

  return sub_226BA91AC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_226BAE490()
{
  sub_226BAE4E8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_226BAE4E8()
{
  if (!qword_27D7A7518)
  {
    v0 = sub_226D6D52C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A7518);
    }
  }
}

unint64_t sub_226BAE534()
{
  result = qword_27D7A7520;
  if (!qword_27D7A7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7520);
  }

  return result;
}

void sub_226BAE5BC()
{
  v1 = sub_226D66DBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x277CC64F0], v1);
  v6 = sub_226D66D6C();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = v0[14];
    v7 = v0[15];

    v9 = sub_226D6E36C();
    v10 = objc_allocWithZone(MEMORY[0x277CF94F8]);
    v11 = sub_226D6E36C();
    aBlock[4] = sub_226BB2780;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_226BB212C;
    aBlock[3] = &block_descriptor_19;
    v12 = _Block_copy(aBlock);
    v13 = [v10 initWithIdentifier:v11 handlerBlock:v12 queue:v7 useCase:v9];

    _Block_release(v12);

    v14 = v0[16];
    v0[16] = v13;
  }
}

uint64_t sub_226BAE7CC(void *a1, void *a2)
{
  v4 = os_transaction_create();
  if (a2)
  {
    v5 = a2;
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v6 = sub_226D6E07C();
    __swift_project_value_buffer(v6, qword_28105F6A8);
    v7 = a2;
    v8 = sub_226D6E05C();
    v9 = sub_226D6E9CC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_226AB4000, v8, v9, "ExtractedOrder set change error: %@", v10, 0xCu);
      sub_226AC47B0(v11, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v11, -1, -1);
      MEMORY[0x22AA8BEE0](v10, -1, -1);
    }

    else
    {
    }
  }

  else if (a1)
  {
    MEMORY[0x28223BE20](v4);
    v14 = a1;
    sub_226D66E6C();

    return swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_226BAEA08(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = sub_226D6DFCC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v11 = sub_226D6DFFC();
  __swift_project_value_buffer(v11, qword_281064510);
  sub_226D6DFBC();
  v12 = sub_226D6DFDC();
  v13 = sub_226D6EABC();
  if (sub_226D6EC8C())
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_226D6DFAC();
    _os_signpost_emit_with_name_impl(&dword_226AB4000, v12, v13, v15, "ExtractedOrderProcessCascadeSetEvent", "", v14, 2u);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
  }

  (*(v4 + 16))(v8, v10, v3);
  v16 = sub_226D6E03C();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_226D6E02C();
  (*(v4 + 8))(v10, v3);

  sub_226BAEF3C(v21, 1, a1);

  sub_226BAEC60("ExtractedOrderProcessCascadeSetEvent", 36, 2);
}

uint64_t sub_226BAEC60(const char *a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = sub_226D6E00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6DFCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v14 = sub_226D6DFFC();
  __swift_project_value_buffer(v14, qword_281064510);
  v15 = sub_226D6DFDC();
  sub_226D6E01C();
  v20 = sub_226D6EAAC();
  result = sub_226D6EC8C();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v21 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_226D6E04C();

      if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v8, v4);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_226D6DFAC();
      _os_signpost_emit_with_name_impl(&dword_226AB4000, v15, v20, v19, a1, v17, v18, 2u);
      MEMORY[0x22AA8BEE0](v18, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v13, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v22;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_226BAEF3C(uint64_t a1, char a2, uint64_t a3)
{
  oslog = sub_226BB2328();
  sub_226BAF3A8(a1, oslog, a2 & 1, a3);
}

uint64_t sub_226BAF10C()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_226BAF178()
{
  v0 = sub_226D6EA3C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_226D6E1BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_226D6EA4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226B2A090();
  (*(v5 + 104))(v8, *MEMORY[0x277D85268], v4);
  sub_226D6E19C();
  v10[1] = MEMORY[0x277D84F90];
  sub_226BB27A4(&qword_28105F478, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C00, &qword_226D73DF0);
  sub_226B2A124();
  sub_226D6ED5C();
  result = sub_226D6EA8C();
  qword_281064528 = result;
  return result;
}

void sub_226BAF3A8(void *a1, void *a2, char a3, uint64_t a4)
{
  v63 = *MEMORY[0x277D85DE8];
  if (qword_28105F6A0 != -1)
  {
    swift_once();
  }

  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_28105F6A8);
  v7 = sub_226D6E05C();
  v8 = sub_226D6E9EC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_226AB4000, v7, v8, "Start processing cascade set updates", v9, 2u);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  v54 = a2;
  v10 = [a2 bookmarkForSet_];
  v11 = sub_226D6E36C();
  v12 = [a1 changePublisherWithUseCase_];

  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v53 = (v13 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = 1;
  if (!v10)
  {
    v32 = sub_226D676AC();
    MEMORY[0x28223BE20](v32);
    sub_226D6EB8C();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v61 = sub_226BB25E8;
  v62 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_226BB0418;
  v60 = &block_descriptor_8;
  v16 = _Block_copy(&aBlock);

  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a1;
  v17[4] = v14;
  v61 = sub_226BB2608;
  v62 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_226BB11D0;
  v60 = &block_descriptor_16;
  v18 = _Block_copy(&aBlock);

  v19 = a1;

  v20 = [v12 drivableSinkWithBookmark:v10 completion:v16 shouldContinue:v18];
  _Block_release(v18);
  _Block_release(v16);

  swift_beginAccess();
  if (*(v14 + 16) == 1 && (swift_beginAccess(), (v21 = *v53) != 0))
  {
    v22 = *v53;
    swift_unknownObjectRetain();
    v23 = sub_226D6E05C();
    v24 = sub_226D6E9EC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_226AB4000, v23, v24, "Finished processing all the cascade set changes. Commiting bookmark.", v25, 2u);
      MEMORY[0x22AA8BEE0](v25, -1, -1);
    }

    v56[0] = 0;
    v26 = [v54 updateBookmark:v21 forSet:v19 error:v56];
    v27 = v56[0];
    if (v26)
    {
      v56[0] = 0;
      v28 = v27;
      v29 = [v54 commitAllBookmarkUpdates_];
      v27 = v56[0];
      if (v29)
      {
        v30 = v56[0];

        swift_unknownObjectRelease();
LABEL_18:
        swift_unknownObjectRelease();
        goto LABEL_25;
      }
    }

    v42 = v27;
    v43 = sub_226D6D04C();

    swift_willThrow();
    v44 = v43;
    v45 = sub_226D6E05C();
    v46 = sub_226D6E9CC();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      v49 = v43;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 4) = v50;
      *v48 = v50;
      _os_log_impl(&dword_226AB4000, v45, v46, "Update bookmark and commit it with error: %@", v47, 0xCu);
      sub_226AC47B0(v48, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v48, -1, -1);
      MEMORY[0x22AA8BEE0](v47, -1, -1);
    }

    [v54 rollbackAllBookmarkUpdates];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v56[0] = 0;
    if ([v54 clearAllBookmarksAndCommit_])
    {
      v31 = v56[0];
      if (a3)
      {
        sub_226BAEF3C(v19, 0, a4);
      }

      goto LABEL_18;
    }

    v33 = v56[0];
    v34 = sub_226D6D04C();

    swift_willThrow();
    v35 = v34;
    v36 = sub_226D6E05C();
    v37 = sub_226D6E9CC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = v34;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_226AB4000, v36, v37, "Failed to clearAllBookmarksAndCommit with error: %@", v38, 0xCu);
      sub_226AC47B0(v39, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v39, -1, -1);
      MEMORY[0x22AA8BEE0](v38, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

LABEL_25:
  v51 = *MEMORY[0x277D85DE8];
}

void sub_226BAFC9C(uint64_t a1)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v2 = sub_226BB2328();
  v33[0] = 0;
  v3 = [v2 clearAllBookmarksAndCommit_];
  v4 = v33[0];
  if (v3)
  {
    v5 = objc_opt_self();
    v6 = v4;
    v7 = sub_226D6E36C();
    v8 = [v5 setEnumeratorWithUseCase_];

    v33[0] = 0;
    v9 = [v8 allSets_];
    swift_unknownObjectRelease();
    v10 = v33[0];
    if (!v9)
    {
      v27 = v33[0];
      v13 = sub_226D6D04C();

      swift_willThrow();
      if (qword_28105F6A0 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7530, qword_226D75420);
    v11 = sub_226D6E5EC();
    v12 = v10;

    if (v11 >> 62)
    {
      v13 = sub_226D6EDFC();
      if (v13)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_5:
        if (v13 >= 1)
        {
          for (i = 0; i != v13; ++i)
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x22AA8AFD0](i, v11);
            }

            else
            {
              v15 = *(v11 + 8 * i + 32);
            }

            v16 = v15;
            sub_226BAF3A8(v15, v2, 1, a1);
          }

          goto LABEL_21;
        }

        __break(1u);
LABEL_24:
        swift_once();
LABEL_16:
        v28 = sub_226D6E07C();
        __swift_project_value_buffer(v28, qword_28105F6A8);
        v29 = v13;
        v20 = sub_226D6E05C();
        v21 = sub_226D6E9CC();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          *v22 = 138412290;
          v30 = v13;
          v31 = _swift_stdlib_bridgeErrorToNSError();
          *(v22 + 4) = v31;
          *v23 = v31;
          v26 = "Failed to query cascade sets with error: %@";
          goto LABEL_18;
        }

LABEL_19:

        goto LABEL_22;
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  v17 = v33[0];
  v13 = sub_226D6D04C();

  swift_willThrow();
  if (qword_28105F6A0 != -1)
  {
    swift_once();
  }

  v18 = sub_226D6E07C();
  __swift_project_value_buffer(v18, qword_28105F6A8);
  v19 = v13;
  v20 = sub_226D6E05C();
  v21 = sub_226D6E9CC();

  if (!os_log_type_enabled(v20, v21))
  {
    goto LABEL_19;
  }

  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  *v22 = 138412290;
  v24 = v13;
  v25 = _swift_stdlib_bridgeErrorToNSError();
  *(v22 + 4) = v25;
  *v23 = v25;
  v26 = "Failed to clearAllBookmarksAndCommit with error: %@";
LABEL_18:
  _os_log_impl(&dword_226AB4000, v20, v21, v26, v22, 0xCu);
  sub_226AC47B0(v23, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v23, -1, -1);
  MEMORY[0x22AA8BEE0](v22, -1, -1);

LABEL_22:
  v32 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226BB0288(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(a3 + 16) == 1 && ![a1 state])
  {
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v10 = sub_226D6E07C();
    __swift_project_value_buffer(v10, qword_28105F6A8);
    v11 = sub_226D6E05C();
    v12 = sub_226D6E9EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_226AB4000, v11, v12, "Successfully processed all cascade set updates. Updating bookmark.", v13, 2u);
      MEMORY[0x22AA8BEE0](v13, -1, -1);
    }

    swift_beginAccess();
    v14 = *(a4 + 16);
    *(a4 + 16) = a2;
    swift_unknownObjectRelease();
    return swift_unknownObjectRetain();
  }

  else
  {
    swift_beginAccess();
    *(a3 + 16) = 0;
    swift_beginAccess();
    v8 = *(a4 + 16);
    *(a4 + 16) = 0;
    return swift_unknownObjectRelease();
  }
}

void sub_226BB0418(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  swift_unknownObjectRetain();
  v6(v7, a3);

  swift_unknownObjectRelease();
}

uint64_t sub_226BB04A0(unint64_t a1, uint64_t a2, void *a3)
{
  v6 = MEMORY[0x22AA8B6A0]();
  sub_226BB0660(a1, a3, a2);
  objc_autoreleasePoolPop(v6);
  return 1;
}

void sub_226BB0660(unint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v99 = a3;
  v94 = type metadata accessor for ManagedExtractedOrderImporter(0);
  v7 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v95 = v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D66E1C();
  v92 = *(v9 - 8);
  v93 = v9;
  v10 = *(v92 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v90 = v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v91 = v85 - v13;
  v14 = sub_226D696EC();
  v96 = *(v14 - 8);
  v97 = v14;
  v15 = *(v96 + 64);
  MEMORY[0x28223BE20](v14);
  v98 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_226D6D52C();
  v17 = *(v100 - 8);
  v18 = *(v17 + 8);
  v19 = MEMORY[0x28223BE20](v100);
  v89 = v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v85 - v21;
  v101 = [a1 sharedItem];
  v102 = v22;
  sub_226BB1228(a2, v101);
  LODWORD(v22) = [a1 sharedItemChangeType];
  if (qword_28105F6A0 != -1)
  {
LABEL_29:
    swift_once();
  }

  v23 = sub_226D6E07C();
  v88 = __swift_project_value_buffer(v23, qword_28105F6A8);
  v24 = sub_226D6E05C();
  v25 = sub_226D6E9EC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_226AB4000, v24, v25, "Begin processing cascade set change", v26, 2u);
    MEMORY[0x22AA8BEE0](v26, -1, -1);
  }

  if (v22 == 2)
  {
    v27 = sub_226D676AC();
    v28 = MEMORY[0x28223BE20](v27);
    v29 = v102;
    v83 = v28;
    v84 = v102;
    sub_226D6EB7C();

    (*(v17 + 1))(v29, v100);
    return;
  }

  if (v22 == 1)
  {
    (*(v17 + 1))(v102, v100);

    return;
  }

  if (v22)
  {
    goto LABEL_41;
  }

  v85[1] = v4;
  v30 = [a1 allLocalInstances];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7658, qword_226D75440);
  a1 = sub_226D6E5EC();

  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v87 = v17;
    if (v22)
    {
      goto LABEL_11;
    }

LABEL_31:
    v32 = MEMORY[0x277D84F90];
    goto LABEL_32;
  }

  v22 = sub_226D6EDFC();
  v87 = v17;
  if (!v22)
  {
    goto LABEL_31;
  }

LABEL_11:
  v31 = 0;
  v32 = MEMORY[0x277D84F90];
  do
  {
    v86 = v32;
    v17 = v31;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x22AA8AFD0](v17, a1);
      }

      else
      {
        if (v17 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v33 = *(a1 + 8 * v17 + 32);
      }

      v34 = v33;
      v31 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v35 = [v33 metaContent];
      if (v35)
      {
        break;
      }

      ++v17;
      if (v31 == v22)
      {
        v32 = v86;
        goto LABEL_32;
      }
    }

    v36 = v35;
    v37 = [v35 sourceItemIdentifier];

    v38 = sub_226D6E39C();
    v85[0] = v39;

    v40 = v86;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_226BBAB0C(0, *(v40 + 2) + 1, 1, v40);
    }

    v42 = *(v40 + 2);
    v41 = *(v40 + 3);
    v43 = v40;
    if (v42 >= v41 >> 1)
    {
      v43 = sub_226BBAB0C((v41 > 1), v42 + 1, 1, v40);
    }

    *(v43 + 2) = v42 + 1;
    v44 = &v43[16 * v42];
    v32 = v43;
    v45 = v85[0];
    *(v44 + 4) = v38;
    *(v44 + 5) = v45;
  }

  while (v31 != v22);
LABEL_32:

  if (*(v32 + 2))
  {
    v47 = *(v32 + 4);
    v46 = *(v32 + 5);

    v48 = [v101 content];
    v49 = v87;
    v50 = v102;
    if (v48)
    {
      v51 = v48;
      objc_opt_self();
      v52 = swift_dynamicCastObjCClassUnconditional();
      v53 = *(v49 + 2);
      v54 = v89;
      v53(v89, v50, v100);

      v88 = v51;
      sub_226C9C0AC(v52, v47, v46, v54, v98);
      v89 = v46;
      v86 = v47;
      if (qword_281060AF8 != -1)
      {
        swift_once();
      }

      v55 = qword_281064530;
      v111 = &type metadata for TrackedOrderBiomeStream;
      v112 = &off_283A6EDD8;
      v56 = sub_226D6B5EC();
      v57 = MEMORY[0x277CC7F68];
      v109[3] = v56;
      v109[4] = MEMORY[0x277CC7F68];
      __swift_allocate_boxed_opaque_existential_1(v109);
      sub_226D6B58C();
      v108[3] = v56;
      v108[4] = v57;
      __swift_allocate_boxed_opaque_existential_1(v108);
      sub_226D6B5AC();
      v58 = v91;
      sub_226D66E0C();
      v59 = type metadata accessor for ExtractedOrderConfigurationProvider();
      v60 = *(v59 + 48);
      v61 = *(v59 + 52);
      v62 = swift_allocObject();
      v64 = v92;
      v63 = v93;
      v65 = v90;
      (*(v92 + 16))(v90, v58, v93);
      v66 = sub_226B686A0(v65, v62);
      (*(v64 + 8))(v58, v63);
      v107[3] = v59;
      v107[4] = &off_283A6D838;
      v107[0] = v66;
      v67 = [objc_allocWithZone(MEMORY[0x277D06D78]) init];
      v106[3] = &type metadata for FoundInMailItemDocumentFinderDefaultIndex;
      v106[4] = &off_283A72E98;
      v106[0] = v67;
      v99 = sub_226D676AC();
      sub_226BB2630(v110, v105);
      v68 = v95;
      sub_226AE532C(v109, (v95 + 48));
      sub_226AE532C(v108, v68 + 88);
      sub_226AE532C(v107, v104);
      type metadata accessor for OrdersAutoBugCaptureReporter();
      v69 = swift_allocObject();
      *(v69 + 16) = [objc_allocWithZone(MEMORY[0x277CC85F0]) init];
      sub_226AE532C(v106, v68 + 176);
      *(v68 + 24) = 0u;
      *(v68 + 40) = 0;
      *(v68 + 8) = 0u;
      *v68 = v55;

      sub_226BB268C(v105, v68 + 8);
      sub_226AE532C(v104, v68 + 128);
      v113 = 0;
      sub_226AE532C(v68 + 48, v103);
      sub_226D6704C();
      v70 = v94;
      v71 = v68 + *(v94 + 44);
      sub_226D6701C();
      v113 = 0;
      sub_226AE532C(v68 + 48, v103);
      v72 = v68 + *(v70 + 48);
      v73 = v99;
      sub_226D6701C();
      __swift_destroy_boxed_opaque_existential_0Tm(v104);
      v74 = sub_226AC47B0(v105, &unk_27D7A7660, &unk_226D7B420);
      *(v68 + 168) = v69;
      MEMORY[0x28223BE20](v74);
      v75 = v86;
      v85[-6] = v73;
      v85[-5] = v75;
      v85[-4] = v89;
      v85[-3] = v68;
      v76 = v98;
      v83 = v98;
      sub_226D6EB7C();

      sub_226BB2720(v68, type metadata accessor for ManagedExtractedOrderImporter);
      sub_226B4FC54(v110);
      (*(v96 + 8))(v76, v97);
      (*(v87 + 1))(v102, v100);
      __swift_destroy_boxed_opaque_existential_0Tm(v106);
      __swift_destroy_boxed_opaque_existential_0Tm(v107);
      __swift_destroy_boxed_opaque_existential_0Tm(v108);
      __swift_destroy_boxed_opaque_existential_0Tm(v109);
      return;
    }

    __break(1u);
LABEL_41:
    sub_226D6F0AC();
    __break(1u);
    return;
  }

  v77 = sub_226D6E05C();
  v78 = sub_226D6E9CC();
  v79 = os_log_type_enabled(v77, v78);
  v80 = v87;
  v81 = v102;
  if (v79)
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_226AB4000, v77, v78, "Failed to find sourceItemIdentifier for added cascade set item.", v82, 2u);
    MEMORY[0x22AA8BEE0](v82, -1, -1);
  }

  (*(v80 + 1))(v81, v100);
}

uint64_t sub_226BB11D0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_226BB1228(void *a1, uint64_t a2)
{
  v2 = [a1 prefixedSharedIdentifier_];
  v3 = sub_226D6D21C();
  v5 = v4;

  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D50C();

  return sub_226B11B98(v3, v5);
}

uint64_t sub_226BB142C(void *a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(char *, uint64_t))
{
  v64 = a2;
  v66[1] = *MEMORY[0x277D85DE8];
  v9 = sub_226D66DBC();
  v63 = *(v9 - 8);
  v10 = *(v63 + 64);
  MEMORY[0x28223BE20](v9);
  v62 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult(0);
  v13 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated - 8);
  v15 = (&v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = [objc_opt_self() currentQueryGenerationToken];
  v66[0] = 0;
  v17 = [a1 setQueryGenerationFromToken:v16 error:v66];

  v18 = &unk_28105F000;
  if (v17)
  {
    v60 = v9;
    v19 = qword_28105F6A0;
    v20 = v66[0];
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = sub_226D6E07C();
    __swift_project_value_buffer(v21, qword_28105F6A8);

    v22 = sub_226D6E05C();
    v23 = sub_226D6E9EC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v61 = a5;
      v25 = v24;
      v26 = a1;
      v27 = v15;
      v28 = a4;
      v29 = swift_slowAlloc();
      v66[0] = v29;
      *v25 = 136315138;
      *(v25 + 4) = sub_226AC4530(v64, a3, v66);
      _os_log_impl(&dword_226AB4000, v22, v23, "Begin processing the extracted order with ID: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      v30 = v29;
      a4 = v28;
      v15 = v27;
      a1 = v26;
      v18 = &unk_28105F000;
      MEMORY[0x22AA8BEE0](v30, -1, -1);
      v31 = v25;
      a5 = v61;
      MEMORY[0x22AA8BEE0](v31, -1, -1);
    }

    v32 = v65;
    sub_226AF5B30(a5, a1, v15);
    v33 = a5;
    v34 = v32;
    if (!v32)
    {
      v61 = v33;

      v35 = sub_226D6E05C();
      v36 = sub_226D6E9EC();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v65 = a4;
        v38 = v37;
        v39 = swift_slowAlloc();
        v66[0] = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_226AC4530(v64, a3, v66);
        _os_log_impl(&dword_226AB4000, v35, v36, "Successfully processed the extracted order with ID: %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        MEMORY[0x22AA8BEE0](v39, -1, -1);
        MEMORY[0x22AA8BEE0](v38, -1, -1);
      }

      v40 = v60;
      v42 = v62;
      v41 = v63;
      (*(v63 + 104))(v62, *MEMORY[0x277CC64F8], v60);
      v43 = sub_226D66D6C();
      (*(v41 + 8))(v42, v40);
      if (v43)
      {
        v44 = sub_226D6C6DC();
        v45 = *(v44 + 48);
        v46 = *(v44 + 52);
        swift_allocObject();
        sub_226D6C6CC();
        sub_226D46A40(v61, a1);
      }

      v66[0] = 0;
      if ([a1 save_])
      {
        v58 = v66[0];
        sub_226AFB524(v15);
        result = sub_226BB2720(v15, type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult);
        goto LABEL_17;
      }

      v59 = v66[0];
      v34 = sub_226D6D04C();

      swift_willThrow();
      sub_226BB2720(v15, type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult);
    }
  }

  else
  {
    v47 = v66[0];
    v34 = sub_226D6D04C();

    swift_willThrow();
  }

  if (v18[212] != -1)
  {
    swift_once();
  }

  v48 = sub_226D6E07C();
  __swift_project_value_buffer(v48, qword_28105F6A8);
  v49 = v34;
  v50 = sub_226D6E05C();
  v51 = sub_226D6E9CC();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v52 = 138412290;
    v54 = v34;
    v55 = _swift_stdlib_bridgeErrorToNSError();
    *(v52 + 4) = v55;
    *v53 = v55;
    _os_log_impl(&dword_226AB4000, v50, v51, "Failed to process extracted order: %@", v52, 0xCu);
    sub_226AC47B0(v53, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v53, -1, -1);
    MEMORY[0x22AA8BEE0](v52, -1, -1);
  }

  result = swift_willThrow();
LABEL_17:
  v57 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_226BB1A88(void *a1, uint64_t a2)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for ManagedCascadeExtractedOrderDeleter.Result();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6D52C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() currentQueryGenerationToken];
  v54[0] = 0;
  v13 = [a1 setQueryGenerationFromToken:v12 error:v54];

  if (v13)
  {
    v50 = v4;
    v14 = qword_28105F6A0;
    v15 = v54[0];
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = sub_226D6E07C();
    __swift_project_value_buffer(v16, qword_28105F6A8);
    v17 = *(v8 + 16);
    v51 = a2;
    v48 = v17;
    v49 = v8 + 16;
    v17(v11, a2, v7);
    v18 = sub_226D6E05C();
    v19 = sub_226D6E9EC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v47 = a1;
      v22 = v21;
      v54[0] = v21;
      *v20 = 136315138;
      sub_226BB27A4(&qword_27D7A6648, MEMORY[0x277CC95F0]);
      v23 = sub_226D6F1CC();
      v25 = v24;
      (*(v8 + 8))(v11, v7);
      v26 = sub_226AC4530(v23, v25, v54);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_226AB4000, v18, v19, "Deleting cascade order with ID: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      v27 = v22;
      a1 = v47;
      MEMORY[0x22AA8BEE0](v27, -1, -1);
      MEMORY[0x22AA8BEE0](v20, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    sub_226D6B1CC();
    v30 = v51;
    v31 = v53;
    v32 = sub_226D6B19C();
    v29 = v31;
    if (v31)
    {
      goto LABEL_10;
    }

    if (v32)
    {
      v43 = v32;
      [a1 deleteObject_];
    }

    v44 = v52;
    v48(v52, v30, v7);
    swift_storeEnumTagMultiPayload();
    sub_226BB2720(v44, type metadata accessor for ManagedCascadeExtractedOrderDeleter.Result);
    v54[0] = 0;
    if ([a1 save_])
    {
      result = v54[0];
      goto LABEL_15;
    }

    v45 = v54[0];
    v29 = sub_226D6D04C();
  }

  else
  {
    v28 = v54[0];
    v29 = sub_226D6D04C();
  }

  swift_willThrow();
LABEL_10:
  if (qword_28105F6A0 != -1)
  {
    swift_once();
  }

  v33 = sub_226D6E07C();
  __swift_project_value_buffer(v33, qword_28105F6A8);
  v34 = v29;
  v35 = sub_226D6E05C();
  v36 = sub_226D6E9CC();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    v39 = v29;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v40;
    *v38 = v40;
    _os_log_impl(&dword_226AB4000, v35, v36, "Failed to delete cascade extracted order: %@", v37, 0xCu);
    sub_226AC47B0(v38, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v38, -1, -1);
    MEMORY[0x22AA8BEE0](v37, -1, -1);
  }

  result = swift_willThrow();
LABEL_15:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_226BB2010(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  sub_226D6B1CC();
  v2 = [swift_getObjCClassFromMetadata() fetchRequest];
  v3 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v9[0] = 0;
  v4 = [a1 executeRequest:v3 error:v9];
  if (v4)
  {
    v5 = v4;
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_226BB212C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

id sub_226BB21B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = sub_226D6E36C();

  v9 = sub_226D6D0DC();
  v19[0] = 0;
  v10 = [v5 initWithFilename:v8 directory:v9 protectionClass:a4 error:v19];

  v11 = v19[0];
  if (v10)
  {
    v12 = sub_226D6D1AC();
    v13 = *(*(v12 - 8) + 8);
    v14 = v11;
    v13(a3, v12);
  }

  else
  {
    v15 = v19[0];
    sub_226D6D04C();

    swift_willThrow();
    v16 = sub_226D6D1AC();
    (*(*(v16 - 8) + 8))(a3, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

id sub_226BB2328()
{
  v0 = sub_226D6D1AC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v26 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v11);
  v26 = &v26 - v14;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v16 = result;
    v17 = sub_226D6E39C();
    v19 = v18;

    v28 = v17;
    v29 = v19;
    MEMORY[0x22AA8A510](0x7972617262694C2FLL, 0xE800000000000000);
    sub_226D6D0BC();

    v20 = *(v1 + 32);
    v20(v10, v7, v0);
    sub_226D6D0FC();
    v21 = *(v1 + 8);
    v21(v10, v0);
    v22 = v26;
    v20(v26, v13, v0);
    v23 = v27;
    (*(v1 + 16))(v27, v22, v0);
    v24 = objc_allocWithZone(MEMORY[0x277CF94F0]);
    v25 = sub_226BB21B8(0xD000000000000010, 0x8000000226D81A70, v23, 3);
    v21(v22, v0);
    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226BB268C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A7660, &unk_226D7B420);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BB2720(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226BB27A4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_226BB280C()
{
  sub_226D6751C();
  v1 = [swift_getObjCClassFromMetadata() entityName];
  if (!v1)
  {
    sub_226D6E39C();
    v1 = sub_226D6E36C();
  }

  v2 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  v3 = sub_226D6742C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D71F40;
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D84958];
  *(v5 + 16) = xmmword_226D70840;
  v7 = MEMORY[0x277D849A0];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v3;
  *(v4 + 32) = sub_226D6E91C();
  *(v4 + 40) = sub_226D6E91C();
  v8 = sub_226D6E5CC();

  v9 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v2 setPredicate_];
  [v2 setResultType_];
  sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
  v10 = sub_226D6EBBC();
  if (v0)
  {

    return;
  }

  v11 = v10;
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_16:

LABEL_17:

    return;
  }

  v12 = sub_226D6EDFC();
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_7:
  v16 = v2;
  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x22AA8AFD0](i, v11);
      }

      else
      {
        v14 = *(v11 + 8 * i + 32);
      }

      v15 = v14;
      MEMORY[0x28223BE20](v14);
      sub_226D6EB7C();
    }

    goto LABEL_17;
  }

  __break(1u);
}

void sub_226BB2CE4(uint64_t a1, uint64_t a2)
{
  sub_226D6751C();
  v4 = sub_226D674AC();
  if (!v2)
  {
    v5 = v4;
    sub_226BB2E58(v4, a2);
  }
}

void sub_226BB2D50(uint64_t *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *a1;
  v5 = sub_226D676AC();
  v6 = sub_226D6E36C();
  [v5 setTransactionAuthor_];

  sub_226D6EB8C();
}

void sub_226BB2E14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_226BB280C();
}

void sub_226BB2E34()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_226BB2CE4(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_226BB2E58(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v84 = *MEMORY[0x277D85DE8];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  v2 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v59 = (&v58 - v3);
  v4 = type metadata accessor for OrderNotificationCenter.Continuation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6D1AC();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult();
  v11 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v61 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D68F4C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6749C();
  v18 = sub_226D68F3C();
  (*(v14 + 8))(v17, v13);
  v19 = [v18 data];

  v68 = sub_226D6D21C();
  v69 = v20;

  v21 = sub_226B31FA8();
  v22 = type metadata accessor for WalletMessageUpdater();
  v23 = swift_allocObject();
  v24 = sub_226D69BFC();
  v64 = MEMORY[0x22AA85C90]();
  *(&v81 + 1) = &type metadata for ClassicOrderBiomeStream;
  *&v82[0] = &off_283A6D820;
  sub_226C02324(v82 + 8);
  v25 = sub_226D6B5EC();
  v26 = MEMORY[0x277CC7F68];
  v78 = v25;
  v79 = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(&v77);
  sub_226D6B58C();
  v75 = v25;
  v76 = v26;
  v27 = v10;
  __swift_allocate_boxed_opaque_existential_1(&v74);
  sub_226D6B5AC();
  v28 = sub_226D6827C();
  v72 = v22;
  v73 = sub_226B1B7F0();
  *&v71 = v23;
  type metadata accessor for ManagedOrderImporter();
  inited = swift_initStackObject();
  *(inited + 312) = 0xD000000000000018;
  *(inited + 320) = 0x8000000226D81BA0;
  sub_226AC484C(&v77, inited + 232);
  sub_226AC484C(&v74, inited + 272);
  v30 = MEMORY[0x277CC7238];
  *(inited + 16) = v28;
  *(inited + 24) = v30;
  *(inited + 72) = v82[4];
  *(inited + 88) = v83;
  *(inited + 96) = &type metadata for WidgetRefresher;
  *(inited + 104) = v21;
  sub_226AC484C(&v71, inited + 112);
  v31 = v82[2];
  *(inited + 40) = v82[3];
  v32 = v80;
  *(inited + 168) = v81;
  v33 = v82[1];
  *(inited + 184) = v82[0];
  *(inited + 200) = v33;
  *(inited + 32) = v64;
  *(inited + 216) = v31;
  v34 = MEMORY[0x277CC79A8];
  *(inited + 56) = v24;
  *(inited + 64) = v34;
  *(inited + 152) = v32;
  sub_226D6727C();
  v35 = [objc_opt_self() defaultManager];
  v36 = [v35 temporaryDirectory];

  v37 = v68;
  sub_226D6D14C();

  v38 = v69;
  v70[3] = sub_226D6920C();
  v70[4] = MEMORY[0x277CC77F0];
  __swift_allocate_boxed_opaque_existential_1(v70);
  sub_226D691FC();
  v39 = v67;
  v40 = sub_226D6724C();
  if (v39)
  {
    (*(v65 + 8))(v27, v66);

    sub_226B11B98(v37, v38);
    result = __swift_destroy_boxed_opaque_existential_0Tm(v70);
  }

  else
  {
    v42 = v40;
    (*(v65 + 8))(v27, v66);
    v43 = __swift_destroy_boxed_opaque_existential_0Tm(v70);
    v67 = &v58;
    MEMORY[0x28223BE20](v43);
    *(&v58 - 6) = inited;
    *(&v58 - 5) = v42;
    *(&v58 - 4) = v37;
    *(&v58 - 3) = v38;
    *(&v58 - 4) = 65793;
    v44 = v37;
    v45 = v63;
    *(&v58 - 1) = v63;
    v46 = v61;
    sub_226D6721C();
    v47 = v46;

    v70[0] = 0;
    if ([v45 save_])
    {
      v48 = qword_281061980;
      v49 = v70[0];
      if (v48 != -1)
      {
        swift_once();
      }

      v50 = v58;
      v51 = __swift_project_value_buffer(v58, qword_281064538);
      v52 = v59;
      sub_226AE532C(v51, v59);
      sub_226BB3658(v51 + *(v50 + 48), v52 + *(v50 + 48));
      v53 = v52 + *(v50 + 48);
      v54 = v60;
      sub_226BB36BC(v53, v60);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      sub_226BE7E54(v47, v54);
      sub_226BB3720(v54, type metadata accessor for OrderNotificationCenter.Continuation);
      [v45 refreshAllObjects];
      sub_226B11B98(v68, v69);
      swift_setDeallocating();
      sub_226AC47B0(inited + 32, &qword_27D7A7790, &unk_226D79770);
      sub_226AC47B0(inited + 72, &qword_27D7A6910, &unk_226D721C0);
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 112));
      sub_226AC47B0(inited + 152, &qword_27D7A6FA0, &qword_226D79780);
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 232));
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 272));
      v55 = *(inited + 320);
    }

    else
    {
      v56 = v70[0];
      sub_226D6D04C();

      swift_willThrow();
      sub_226B11B98(v44, v69);
    }

    result = sub_226BB3720(v47, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
  }

  v57 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_226BB35F4(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (*(v1 + 51))
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 50))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (*(v1 + 49))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  sub_226BBEF20(*(v1 + 24), *(v1 + 32), *(v1 + 40), v5 | *(v1 + 48) | v4 | v3, *(v1 + 56), a1);
}

uint64_t sub_226BB3658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderNotificationCenter.Continuation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BB36BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderNotificationCenter.Continuation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BB3720(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226BB3780(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7798, &unk_226D75570);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v40 - v4;
  v6 = sub_226D6A58C();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D68F4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult();
  v16 = *(*(updated - 8) + 64);
  v17 = MEMORY[0x28223BE20](updated);
  v19 = (&v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = (&v40 - v20);
  sub_226BB8488(a1, &v40 - v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v23 = *v21;
  if (EnumCaseMultiPayload <= 1)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
    sub_226AC47B0(v21 + *(v24 + 48), &qword_27D7A7798, &unk_226D75570);
  }

  sub_226D6749C();
  if ((*(v11 + 88))(v14, v10) == *MEMORY[0x277CC76A8])
  {
    (*(v11 + 96))(v14, v10);
    v25 = *v14;
    v26 = v23;
    v27 = v25;
    sub_226D6A51C();
    sub_226BB8488(a1, v19);
    v28 = swift_getEnumCaseMultiPayload();
    if (v28)
    {
      if (v28 == 1)
      {

        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
        sub_226AFD80C(v19 + *(v29 + 48), v5, &qword_27D7A7798, &unk_226D75570);
        v30 = sub_226BB859C(v9, v5, *(v41 + 16), *(v41 + 24));

        sub_226AC47B0(v5, &qword_27D7A7798, &unk_226D75570);
        (*(v42 + 8))(v9, v43);
        return v30;
      }

      else
      {
        sub_226BB84EC(v19);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A61C0, &qword_226D775E0);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_226D70840;
        v36 = sub_226D6A4FC();
        v38 = v37;
        *(v35 + 56) = &type metadata for OrderImportAnalyticsEventsBuilder.OrderOutdatedEvent;
        *(v35 + 64) = sub_226BB8548();
        v39 = swift_allocObject();
        *(v35 + 32) = v39;
        v39[2] = 0xD000000000000021;
        v39[3] = 0x8000000226D81C00;
        v39[4] = v36;
        v39[5] = v38;

        (*(v42 + 8))(v9, v43);
        return v35;
      }
    }

    else
    {

      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580) + 48);
      v33 = sub_226D675EC();
      (*(*(v33 - 8) + 56))(v5, 1, 1, v33);
      v34 = sub_226BB859C(v9, v5, *(v41 + 16), *(v41 + 24));

      sub_226AC47B0(v5, &qword_27D7A7798, &unk_226D75570);
      (*(v42 + 8))(v9, v43);
      sub_226AC47B0(v19 + v32, &qword_27D7A7798, &unk_226D75570);
      return v34;
    }
  }

  else
  {

    (*(v11 + 8))(v14, v10);
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_226BB3CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v12 = type metadata accessor for OrderImportAnalyticsEventsBuilder.OrderImportedSuccessEvent();
  a6[3] = v12;
  a6[4] = sub_226BB8800();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  v14 = v12[5];
  v15 = sub_226D6A58C();
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1 + v14, a2, v15);
  v16 = v12[6];
  v17 = sub_226D6904C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(boxed_opaque_existential_1 + v16, a1, v17);
  (*(v18 + 56))(boxed_opaque_existential_1 + v16, 0, 1, v17);
  result = sub_226AC40E8(a3, boxed_opaque_existential_1 + v12[7], &qword_27D7A7798, &unk_226D75570);
  *boxed_opaque_existential_1 = 0xD000000000000029;
  boxed_opaque_existential_1[1] = 0x8000000226D81C30;
  v20 = boxed_opaque_existential_1 + v12[8];
  *v20 = a4;
  v20[8] = a5;
  return result;
}

uint64_t sub_226BB3E2C()
{
  v1 = v0;
  v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77E0, &qword_226D75668);
  v512 = *(v513 - 8);
  v2 = *(v512 + 64);
  MEMORY[0x28223BE20](v513);
  v511 = v472 - v3;
  v509 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77E8, &qword_226D75670);
  v508 = *(v509 - 8);
  v4 = *(v508 + 64);
  MEMORY[0x28223BE20](v509);
  v507 = v472 - v5;
  v539 = sub_226D675EC();
  v538 = *(v539 - 8);
  v6 = *(v538 + 64);
  MEMORY[0x28223BE20](v539);
  v510 = v472 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77F0, &qword_226D75678);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v506 = v472 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77F8, &unk_226D75680);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v533 = v472 - v13;
  v563 = sub_226D6900C();
  v554 = *(v563 - 8);
  v14 = *(v554 + 64);
  MEMORY[0x28223BE20](v563);
  v562 = v472 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v529 = sub_226D677AC();
  v528 = *(v529 - 8);
  v16 = *(v528 + 64);
  MEMORY[0x28223BE20](v529);
  v505 = v472 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7800, &unk_226D776D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v551 = (v472 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7808, &qword_226D75690);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v534 = v472 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v532 = v472 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v525 = v472 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v522 = v472 - v30;
  MEMORY[0x28223BE20](v29);
  v520 = v472 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7798, &unk_226D75570);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v535 = v472 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v503 = v472 - v36;
  v494 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7810, &qword_226D75698);
  v493 = *(v494 - 8);
  v37 = *(v493 + 64);
  MEMORY[0x28223BE20](v494);
  v504 = (v472 - v38);
  v564 = sub_226D6801C();
  v515 = *(v564 - 1);
  v39 = *(v515 + 64);
  v40 = MEMORY[0x28223BE20](v564);
  v558 = v472 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v557 = v472 - v43;
  MEMORY[0x28223BE20](v42);
  v556 = v472 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7818, &unk_226D756A0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v491 = v472 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7820, &unk_226D776B0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v488 = v472 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7828, &unk_226D756B0);
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v51 - 8);
  v531 = v472 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v487 = v472 - v55;
  v485 = sub_226D6927C();
  v484 = *(v485 - 8);
  v56 = *(v484 + 64);
  MEMORY[0x28223BE20](v485);
  v483 = v472 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v497 = sub_226D6A82C();
  v496 = *(v497 - 1);
  v58 = *(v496 + 64);
  MEMORY[0x28223BE20](v497);
  v517 = v472 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7830, &unk_226D776C0);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60 - 8);
  v489 = v472 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7838, &qword_226D756C0);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63 - 8);
  v490 = v472 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  v67 = *(*(v66 - 8) + 64);
  v68 = MEMORY[0x28223BE20](v66 - 8);
  v530 = v472 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x28223BE20](v68);
  v526 = v472 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v561 = v472 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v560 = v472 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v492 = v472 - v77;
  MEMORY[0x28223BE20](v76);
  v486 = v472 - v78;
  v481 = sub_226D69FEC();
  v480 = *(v481 - 8);
  v79 = *(v480 + 64);
  MEMORY[0x28223BE20](v481);
  v479 = v472 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v499 = sub_226D6B0EC();
  v498 = *(v499 - 8);
  v81 = *(v498 + 64);
  MEMORY[0x28223BE20](v499);
  v514 = v472 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77B8, &qword_226D75588);
  v84 = *(*(v83 - 8) + 64);
  v85 = MEMORY[0x28223BE20](v83 - 8);
  v478 = v472 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v85);
  v516 = v472 - v87;
  v541 = sub_226D6904C();
  v540 = *(v541 - 8);
  v88 = *(v540 + 64);
  v89 = MEMORY[0x28223BE20](v541);
  v474 = v472 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = MEMORY[0x28223BE20](v89);
  v495 = v472 - v92;
  MEMORY[0x28223BE20](v91);
  v545 = v472 - v93;
  v544 = sub_226D6D4AC();
  v536 = *(v544 - 8);
  v94 = *(v536 + 64);
  MEMORY[0x28223BE20](v544);
  v552 = v472 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v97 = *(*(v96 - 8) + 64);
  v98 = MEMORY[0x28223BE20](v96 - 8);
  v482 = v472 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v98);
  v542 = v472 - v100;
  v565 = sub_226D6D1AC();
  v555 = *(v565 - 8);
  v101 = *(v555 + 64);
  v102 = MEMORY[0x28223BE20](v565);
  v559 = v472 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v102);
  v543 = v472 - v104;
  v105 = sub_226D6731C();
  v106 = *(v105 - 8);
  v549 = v105;
  v550 = v106;
  v107 = *(v106 + 64);
  v108 = MEMORY[0x28223BE20](v105);
  v527 = v472 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = MEMORY[0x28223BE20](v108);
  v524 = v472 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v523 = v472 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v521 = v472 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v519 = v472 - v117;
  MEMORY[0x28223BE20](v116);
  v119 = v472 - v118;
  v120 = sub_226D6797C();
  v121 = *(v120 - 8);
  v122 = *(v121 + 64);
  MEMORY[0x28223BE20](v120);
  v124 = v472 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_226B224E8(MEMORY[0x277D84F90]);
  v547 = type metadata accessor for OrderImportAnalyticsEventsBuilder.OrderImportedSuccessEvent();
  v126 = *(v547 + 20);
  v127 = *(sub_226D6A4BC() + 16);

  v128 = sub_226D6E6BC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v566 = v125;
  sub_226BE6628(v128, 0xD000000000000014, 0x8000000226D81C80, isUniquelyReferenced_nonNull_native);
  v130 = v566;
  sub_226D6A52C();
  sub_226D6796C();
  (*(v121 + 8))(v124, v120);
  v131 = sub_226D6E36C();

  v132 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v130;
  sub_226BE6628(v131, 0x617453726564726FLL, 0xEB00000000737574, v132);
  v133 = v566;
  sub_226D6A4FC();
  v134 = sub_226D6E36C();

  v135 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v133;
  v537 = 0xD000000000000013;
  sub_226BE6628(v134, 0xD000000000000013, 0x8000000226D81C60, v135);
  v136 = v566;
  v553 = v126;
  sub_226D6A55C();
  v137 = v543;
  sub_226D672FC();
  v138 = *(v550 + 8);
  v550 += 8;
  v546 = v138;
  v138(v119, v549);
  sub_226D6D15C();
  v140 = v139;
  v141 = *(v555 + 8);
  v476 = v555 + 8;
  v475 = v141;
  v141(v137, v565);
  if (v140)
  {
    v142 = sub_226D6E36C();

    v143 = swift_isUniquelyReferenced_nonNull_native();
    v566 = v136;
    sub_226BE6628(v142, 0x746E61686372656DLL, 0xEE006E69616D6F44, v143);
    v136 = v566;
  }

  v144 = v542;
  sub_226D6A56C();
  v145 = v536;
  v146 = *(v536 + 56);
  v147 = v544;
  v502 = v536 + 56;
  v501 = v146;
  v146(v144, 0, 1, v544);
  v148 = v552;
  sub_226D6D46C();
  v149 = sub_226BB8800();
  v150 = v547;
  v518 = v149;
  v151 = sub_226D6770C();
  v153 = *(v145 + 8);
  v152 = v145 + 8;
  v500 = v153;
  v153(v148, v147);
  sub_226AC47B0(v144, &qword_27D7A8BE0, &unk_226D718F0);
  v154 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v136;
  v155 = v150;
  v543 = 0xD000000000000010;
  sub_226BE6628(v151, 0xD000000000000010, 0x8000000226D81CA0, v154);
  v156 = v566;
  v157 = (v1 + *(v150 + 32));
  if (*(v157 + 8) <= 2u)
  {
    v158 = *v157;
  }

  v159 = v516;
  v160 = sub_226D6F2CC();
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v156;
  sub_226BE6628(v160, 0x4374706D65747461, 0xEC000000746E756FLL, v161);
  v162 = v566;
  sub_226AC40E8(v1 + *(v155 + 24), v159, &qword_27D7A77B8, &qword_226D75588);
  v163 = v540;
  v164 = (v540 + 48);
  v165 = *(v540 + 48);
  v166 = v541;
  v167 = v165(v159, 1, v541);
  v548 = v1;
  if (v167 == 1)
  {
    sub_226AC47B0(v159, &qword_27D7A77B8, &qword_226D75588);
    sub_226AE59B4(0, &qword_27D7A6498, 0x277CCACA8);
    v168 = sub_226D6EC5C();
    v169 = swift_isUniquelyReferenced_nonNull_native();
    v566 = v162;
    sub_226BE6628(v168, 0x6D6C6C69666C7566, 0xEF65707954746E65, v169);
    v170 = v566;
    v171 = v551;
    v172 = v522;
    v173 = v520;
    goto LABEL_78;
  }

  v516 = v164;
  v174 = *(v163 + 32);
  v472[1] = v163 + 32;
  v472[0] = v174;
  v174(v545, v159, v166);
  v175 = v495;
  (*(v163 + 16))();
  v176 = (*(v163 + 88))(v175, v166);
  v177 = v176 == *MEMORY[0x277CC7728];
  v473 = v165;
  v477 = v152;
  if (v177)
  {
    (*(v163 + 96))(v175, v166);
    (*(v498 + 32))(v514, v175, v499);
    v178 = v479;
    sub_226D6B0AC();
    sub_226D69FDC();
    (*(v480 + 8))(v178, v481);
    v179 = sub_226D6E36C();

    v180 = swift_isUniquelyReferenced_nonNull_native();
    v566 = v162;
    v496 = 0xD000000000000011;
    sub_226BE6628(v179, 0xD000000000000011, 0x8000000226D81F00, v180);
    v181 = v566;
    sub_226AE59B4(0, &qword_27D7A6498, 0x277CCACA8);
    v182 = sub_226D6EC5C();
    v183 = swift_isUniquelyReferenced_nonNull_native();
    v566 = v181;
    sub_226BE6628(v182, 0x6D6C6C69666C7566, 0xEF65707954746E65, v183);
    v184 = v566;
    sub_226D6B06C();
    if (v185)
    {
      v186 = sub_226D6E6BC();
    }

    else
    {
      sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
      v186 = sub_226D6EC0C();
    }

    v211 = swift_isUniquelyReferenced_nonNull_native();
    v566 = v184;
    sub_226BE6628(v186, 0xD000000000000017, 0x8000000226D82060, v211);
    v212 = v566;
    v213 = v486;
    sub_226D6B05C();
    v214 = *(v555 + 48);
    v517 = (v555 + 48);
    v497 = v214;
    v214(v213, 1, v565);
    v215 = sub_226D6E6BC();
    sub_226AC47B0(v213, &unk_27D7A62F8, &unk_226D73B70);
    v216 = swift_isUniquelyReferenced_nonNull_native();
    v566 = v212;
    sub_226BE6628(v215, 0xD000000000000014, 0x8000000226D82080, v216);
    v217 = v566;
    v218 = v482;
    sub_226D6B08C();
    (*(v536 + 48))(v218, 1, v544);
    v219 = sub_226D6E6BC();
    sub_226AC47B0(v218, &qword_27D7A8BE0, &unk_226D718F0);
    v220 = swift_isUniquelyReferenced_nonNull_native();
    v566 = v217;
    sub_226BE6628(v219, 0xD000000000000014, 0x8000000226D820A0, v220);
    v221 = v566;
    v222 = v489;
    sub_226D6B0CC();
    v223 = sub_226D6A84C();
    v224 = *(v223 - 8);
    if ((*(v224 + 48))(v222, 1, v223) == 1)
    {
      sub_226AC47B0(v222, &qword_27D7A7830, &unk_226D776C0);
      v225 = sub_226D670EC();
      v226 = v490;
      (*(*(v225 - 8) + 56))(v490, 1, 1, v225);
    }

    else
    {
      v226 = v490;
      sub_226D6A83C();
      (*(v224 + 8))(v222, v223);
      v227 = sub_226D670EC();
      (*(*(v227 - 8) + 48))(v226, 1, v227);
    }

    v228 = sub_226D6E6BC();
    sub_226AC47B0(v226, &qword_27D7A7838, &qword_226D756C0);
    v229 = swift_isUniquelyReferenced_nonNull_native();
    v566 = v221;
    sub_226BE6628(v228, 0xD00000000000001DLL, 0x8000000226D820C0, v229);
    v230 = v566;
    sub_226D6B0BC();
    if (v231)
    {
      v232 = sub_226D6E6BC();
    }

    else
    {
      sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
      v232 = sub_226D6EC0C();
    }

    v233 = swift_isUniquelyReferenced_nonNull_native();
    v566 = v230;
    v234 = v232;
    v235 = v543;
    sub_226BE6628(v234, v543, 0x8000000226D820E0, v233);
    v236 = v566;
    v536 = "carrierSpecified";
    v237 = v542;
    v238 = v514;
    sub_226D6B0DC();
    sub_226D6D46C();
    v239 = sub_226D6770C();
    v240 = v544;
    v241 = v500;
    v500(v552, v544);
    sub_226AC47B0(v237, &qword_27D7A8BE0, &unk_226D718F0);
    v242 = swift_isUniquelyReferenced_nonNull_native();
    v566 = v236;
    sub_226BE6628(v239, v235, v536 | 0x8000000000000000, v242);
    v243 = v566;
    sub_226D6B04C();
    sub_226D6D46C();
    v244 = v241;
    v245 = sub_226D6770C();
    v241(v552, v240);
    sub_226AC47B0(v237, &qword_27D7A8BE0, &unk_226D718F0);
    v246 = swift_isUniquelyReferenced_nonNull_native();
    v566 = v243;
    sub_226BE6628(v245, 0xD000000000000012, 0x8000000226D82120, v246);
    v247 = v566;
    sub_226D6B09C();
    if (v248)
    {
      v249 = sub_226D6E6BC();
    }

    else
    {
      sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
      v249 = sub_226D6EC0C();
    }

    v250 = swift_isUniquelyReferenced_nonNull_native();
    v566 = v247;
    sub_226BE6628(v249, 0x6570537365746F6ELL, 0xEE00646569666963, v250);
    v251 = v566;
    sub_226D6B07C();
    if (v252 || (sub_226D6A4CC(), v253))
    {
      v254 = sub_226D6E6BC();
    }

    else
    {
      sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
      v254 = sub_226D6EC0C();
    }

    v255 = swift_isUniquelyReferenced_nonNull_native();
    v566 = v251;
    sub_226BE6628(v254, 0xD00000000000001ALL, 0x8000000226D81F80, v255);
    v256 = v566;
    v257 = v492;
    sub_226D6B05C();
    v258 = v238;
    v259 = v565;
    if (v497(v257, 1, v565) == 1)
    {
      (*(v498 + 8))(v258, v499);
      sub_226AC47B0(v257, &unk_27D7A62F8, &unk_226D73B70);
      v148 = v552;
    }

    else
    {
      v148 = v552;
      sub_226D6D15C();
      v261 = v260;
      v475(v257, v259);
      if (v261)
      {
        v262 = sub_226D6E36C();

        v263 = swift_isUniquelyReferenced_nonNull_native();
        v566 = v256;
        sub_226BE6628(v262, v496, 0x8000000226D82140, v263);
        v264 = v566;
        (*(v498 + 8))(v514, v499);
        v265 = v544;
LABEL_38:
        v266 = v542;
        goto LABEL_39;
      }

      (*(v498 + 8))(v514, v499);
    }

    v265 = v544;
    v264 = v256;
    goto LABEL_38;
  }

  if (v176 != *MEMORY[0x277CC7720])
  {
    result = sub_226D6F0AC();
    __break(1u);
    return result;
  }

  (*(v163 + 96))(v175, v166);
  (*(v496 + 32))(v517, v175, v497);
  v187 = v483;
  sub_226D6A7FC();
  sub_226D6926C();
  (*(v484 + 8))(v187, v485);
  v188 = sub_226D6E36C();

  v189 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v162;
  v536 = 0xD000000000000011;
  sub_226BE6628(v188, 0xD000000000000011, 0x8000000226D81F00, v189);
  v190 = v566;
  sub_226AE59B4(0, &qword_27D7A6498, 0x277CCACA8);
  v191 = sub_226D6EC5C();
  v192 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v190;
  sub_226BE6628(v191, 0x6D6C6C69666C7566, 0xEF65707954746E65, v192);
  v193 = v566;
  v194 = v487;
  sub_226D6A80C();
  v195 = sub_226D67C3C();
  (*(*(v195 - 8) + 48))(v194, 1, v195);
  v196 = sub_226D6E6BC();
  sub_226AC47B0(v194, &qword_27D7A7828, &unk_226D756B0);
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v193;
  sub_226BE6628(v196, 0xD000000000000016, 0x8000000226D81F20, v197);
  v198 = v566;
  v199 = v488;
  sub_226D6A81C();
  v200 = sub_226D6728C();
  (*(*(v200 - 8) + 48))(v199, 1, v200);
  v201 = sub_226D6E6BC();
  sub_226AC47B0(v199, &qword_27D7A7820, &unk_226D776B0);
  v202 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v198;
  sub_226BE6628(v201, 0xD000000000000017, 0x8000000226D81F40, v202);
  v203 = v566;
  v204 = v491;
  sub_226D6A7DC();
  v205 = sub_226D6CB6C();
  (*(*(v205 - 8) + 48))(v204, 1, v205);
  v206 = sub_226D6E6BC();
  sub_226AC47B0(v204, &qword_27D7A7818, &unk_226D756A0);
  v207 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v203;
  sub_226BE6628(v206, 0xD000000000000017, 0x8000000226D81F60, v207);
  v208 = v566;
  sub_226D6A7EC();
  if (v209)
  {
    v210 = sub_226D6E6BC();
  }

  else
  {
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v210 = sub_226D6EC0C();
  }

  v266 = v542;
  v267 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v208;
  sub_226BE6628(v210, 0x6570537365746F6ELL, 0xEE00646569666963, v267);
  v268 = v566;
  sub_226D6A7CC();
  if (v269 || (sub_226D6A4CC(), v270))
  {
    v271 = sub_226D6E6BC();
  }

  else
  {
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v271 = sub_226D6EC0C();
  }

  v272 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v268;
  sub_226BE6628(v271, 0xD00000000000001ALL, 0x8000000226D81F80, v272);
  v273 = v566;
  sub_226D6A7BC();
  sub_226D6D46C();
  v514 = sub_226D6770C();
  v265 = v544;
  v244 = v500;
  v500(v148, v544);
  sub_226AC47B0(v266, &qword_27D7A8BE0, &unk_226D718F0);
  v274 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v273;
  sub_226BE6628(v514, v536, 0x8000000226D81FA0, v274);
  v264 = v566;
  (*(v496 + 8))(v517, v497);
LABEL_39:
  sub_226D6A57C();
  v501(v266, 0, 1, v265);
  sub_226D6D46C();
  v275 = sub_226D6770C();
  v244(v148, v265);
  sub_226AC47B0(v266, &qword_27D7A8BE0, &unk_226D718F0);
  v276 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v264;
  sub_226BE6628(v275, v543, 0x8000000226D81FC0, v276);
  v277 = v566;
  v278 = sub_226D6903C();
  v279 = *(v278 + 16);
  if (v279)
  {
    v544 = v277;
    v552 = *(v515 + 16);
    v280 = (*(v515 + 80) + 32) & ~*(v515 + 80);
    v542 = v278;
    v281 = v278 + v280;
    v282 = *(v515 + 72);
    v283 = (v515 + 8);
    v284 = MEMORY[0x277D84F90];
    do
    {
      v286 = v556;
      v287 = v564;
      (v552)(v556, v281, v564);
      v288 = sub_226D67FEC();
      v290 = v289;
      (*v283)(v286, v287);
      if (v290)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v284 = sub_226BBAB0C(0, *(v284 + 2) + 1, 1, v284);
        }

        v292 = *(v284 + 2);
        v291 = *(v284 + 3);
        if (v292 >= v291 >> 1)
        {
          v284 = sub_226BBAB0C((v291 > 1), v292 + 1, 1, v284);
        }

        *(v284 + 2) = v292 + 1;
        v285 = &v284[16 * v292];
        *(v285 + 4) = v288;
        *(v285 + 5) = v290;
      }

      v281 += v282;
      --v279;
    }

    while (v279);

    v277 = v544;
  }

  else
  {

    v284 = MEMORY[0x277D84F90];
  }

  v293 = *(v284 + 2);
  v294 = sub_226D6E6BC();

  v295 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v277;
  sub_226BE6628(v294, 0xD000000000000014, 0x8000000226D81FE0, v295);
  v296 = v566;
  v297 = sub_226D6903C();
  v298 = *(v297 + 16);
  if (v298)
  {
    v544 = v296;
    v556 = *(v515 + 16);
    v299 = (*(v515 + 80) + 32) & ~*(v515 + 80);
    v542 = v297;
    v300 = v297 + v299;
    v552 = *(v515 + 72);
    v301 = (v515 + 8);
    v302 = MEMORY[0x277D84F90];
    v171 = v551;
    do
    {
      v304 = v557;
      v305 = v564;
      (v556)(v557, v300, v564);
      v306 = sub_226D6800C();
      v308 = v307;
      (*v301)(v304, v305);
      if (v308)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v302 = sub_226BBAB0C(0, *(v302 + 2) + 1, 1, v302);
        }

        v310 = *(v302 + 2);
        v309 = *(v302 + 3);
        if (v310 >= v309 >> 1)
        {
          v302 = sub_226BBAB0C((v309 > 1), v310 + 1, 1, v302);
        }

        *(v302 + 2) = v310 + 1;
        v303 = &v302[16 * v310];
        *(v303 + 4) = v306;
        *(v303 + 5) = v308;
        v171 = v551;
      }

      v300 += v552;
      --v298;
    }

    while (v298);

    v296 = v544;
  }

  else
  {

    v302 = MEMORY[0x277D84F90];
    v171 = v551;
  }

  v311 = *(v302 + 2);
  v312 = sub_226D6E6BC();

  v313 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v296;
  sub_226BE6628(v312, 0xD000000000000018, 0x8000000226D82000, v313);
  v314 = v566;
  v315 = sub_226D6903C();
  v316 = *(v315 + 16);
  if (v316)
  {
    v556 = v314;
    v566 = MEMORY[0x277D84F90];
    sub_226AE23A4(0, v316, 0);
    v317 = v566;
    v557 = *(v515 + 16);
    v318 = *(v515 + 80);
    v552 = v315;
    v319 = v315 + ((v318 + 32) & ~v318);
    v320 = *(v515 + 72);
    v321 = (v515 + 8);
    do
    {
      v322 = v558;
      v323 = v564;
      (v557)(v558, v319, v564);
      v324 = sub_226D67FFC();
      (*v321)(v322, v323);
      v566 = v317;
      v326 = *(v317 + 16);
      v325 = *(v317 + 24);
      if (v326 >= v325 >> 1)
      {
        sub_226AE23A4((v325 > 1), v326 + 1, 1);
        v317 = v566;
      }

      *(v317 + 16) = v326 + 1;
      *(v317 + 8 * v326 + 32) = v324;
      v319 += v320;
      --v316;
    }

    while (v316);

    v171 = v551;
    v314 = v556;
  }

  else
  {

    v317 = MEMORY[0x277D84F90];
  }

  v327 = *(v317 + 16);
  v328 = sub_226D6E6BC();

  v329 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v314;
  sub_226BE6628(v328, 0xD000000000000018, 0x8000000226D82020, v329);
  v170 = v566;
  v330 = v503;
  sub_226AC40E8(v548 + *(v547 + 28), v503, &qword_27D7A7798, &unk_226D75570);
  v331 = v538;
  v332 = v539;
  v333 = (*(v538 + 48))(v330, 1, v539);
  v172 = v522;
  v334 = v504;
  if (v333 == 1)
  {
    sub_226AC47B0(v330, &qword_27D7A7798, &unk_226D75570);
LABEL_75:
    v173 = v520;
    v347 = v541;
LABEL_76:
    v346 = v540;
    goto LABEL_77;
  }

  sub_226D6756C();
  (*(v331 + 8))(v330, v332);
  v335 = v493;
  v336 = v494;
  if ((*(v493 + 88))(v334, v494) != *MEMORY[0x277CC8590])
  {
    (*(v335 + 8))(v334, v336);
    goto LABEL_75;
  }

  (*(v335 + 96))(v334, v336);
  v338 = *v334;
  v337 = v334[1];

  if (!v338)
  {
    v341 = v478;
    (*(v540 + 56))(v478, 1, 1, v541);
    goto LABEL_122;
  }

  MEMORY[0x28223BE20](v339);
  v340 = v478;
  sub_226BA3310(sub_226BB8A58, v338, v478);
  v341 = v340;

  v342 = v541;
  if (v473(v340, 1) == 1)
  {
LABEL_122:
    sub_226AC47B0(v341, &qword_27D7A77B8, &qword_226D75588);
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v470 = sub_226D6EC0C();
    v471 = swift_isUniquelyReferenced_nonNull_native();
    v566 = v170;
    sub_226BE6628(v470, 0xD000000000000012, 0x8000000226D82040, v471);
    v347 = v541;
    v170 = v566;
    v173 = v520;
    goto LABEL_76;
  }

  v343 = v474;
  (v472[0])(v474, v340, v342);
  MEMORY[0x22AA850D0](v343, v545);
  v344 = sub_226D6E6BC();
  v345 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v170;
  sub_226BE6628(v344, 0xD000000000000012, 0x8000000226D82040, v345);
  v170 = v566;
  v346 = v540;
  (*(v540 + 8))(v343, v342);
  v347 = v342;
  v173 = v520;
LABEL_77:
  (*(v346 + 8))(v545, v347);
LABEL_78:
  sub_226D6A54C();
  v348 = sub_226D67D3C();
  v349 = *(v348 - 8);
  v551 = *(v349 + 48);
  v552 = v349 + 48;
  v350 = v551(v173, 1, v348);
  v544 = v349;
  if (v350 == 1)
  {
    sub_226AC47B0(v173, &qword_27D7A7808, &qword_226D75690);
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v351 = sub_226D6EC0C();
  }

  else
  {
    v352 = sub_226D67CFC();
    (*(v349 + 8))(v173, v348);
    v353 = *(v352 + 16);
    v351 = sub_226D6E6BC();
  }

  v354 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v170;
  sub_226BE6628(v351, 0xD000000000000015, 0x8000000226D81CC0, v354);
  v355 = v566;
  sub_226D6A54C();
  if (v551(v172, 1, v348) == 1)
  {
    sub_226AC47B0(v172, &qword_27D7A7808, &qword_226D75690);
    v356 = 1;
  }

  else
  {
    sub_226D67D1C();
    (*(v544 + 8))(v172, v348);
    v356 = 0;
  }

  v357 = v348;
  v358 = v528;
  v359 = v529;
  (*(v528 + 56))(v171, v356, 1, v529);
  v360 = sub_226D6E6BC();
  sub_226AC47B0(v171, &qword_27D7A7800, &unk_226D776D0);
  v361 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v355;
  sub_226BE6628(v360, 0xD000000000000016, 0x8000000226D81CE0, v361);
  v362 = v566;
  v363 = v525;
  sub_226D6A54C();
  v364 = v551(v363, 1, v348);
  v545 = v348;
  if (v364 == 1)
  {
    sub_226AC47B0(v363, &qword_27D7A7808, &qword_226D75690);
  }

  else
  {
    v365 = v505;
    sub_226D67D1C();
    (*(v544 + 8))(v363, v357);
    sub_226D6778C();
    (*(v358 + 8))(v365, v359);
  }

  v366 = v549;
  v367 = sub_226D6E36C();

  v368 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v362;
  sub_226BE6628(v367, v543, 0x8000000226D81D00, v368);
  v369 = v566;
  v370 = sub_226D6A50C();
  v371 = *(v370 + 16);
  if (v371)
  {
    v542 = v369;
    v372 = v554 + 16;
    v564 = *(v554 + 16);
    v373 = (*(v554 + 80) + 32) & ~*(v554 + 80);
    v543 = v370;
    v374 = v370 + v373;
    v375 = *(v554 + 72);
    v556 = (v554 + 8);
    v376 = (v555 + 48);
    v557 = (v555 + 32);
    v558 = v375;
    v377 = MEMORY[0x277D84F90];
    v554 += 16;
    do
    {
      v379 = v562;
      v378 = v563;
      v380 = v372;
      (v564)(v562, v374, v563);
      v381 = v561;
      sub_226D68FFC();
      v382 = v381;
      v383 = v560;
      sub_226AFD80C(v382, v560, &unk_27D7A62F8, &unk_226D73B70);
      (*v556)(v379, v378);
      v384 = v565;
      if ((*v376)(v383, 1, v565) == 1)
      {
        sub_226AC47B0(v383, &unk_27D7A62F8, &unk_226D73B70);
        v372 = v380;
      }

      else
      {
        v385 = *v557;
        (*v557)(v559, v383, v384);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v377 = sub_226BBB9F8(0, *(v377 + 2) + 1, 1, v377);
        }

        v387 = *(v377 + 2);
        v386 = *(v377 + 3);
        if (v387 >= v386 >> 1)
        {
          v377 = sub_226BBB9F8(v386 > 1, v387 + 1, 1, v377);
        }

        *(v377 + 2) = v387 + 1;
        v385(&v377[((*(v555 + 80) + 32) & ~*(v555 + 80)) + *(v555 + 72) * v387], v559, v565);
        v372 = v554;
      }

      v374 += v558;
      --v371;
    }

    while (v371);

    v366 = v549;
    v369 = v542;
  }

  else
  {

    v377 = MEMORY[0x277D84F90];
  }

  v388 = *(v377 + 2);
  v389 = sub_226D6E6BC();

  v390 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v369;
  sub_226BE6628(v389, 0xD000000000000012, 0x8000000226D81D20, v390);
  v391 = v566;
  v392 = v519;
  sub_226D6A55C();
  v393 = v526;
  sub_226D6729C();
  v394 = v546;
  v546(v392, v366);
  v395 = *(v555 + 48);
  v555 += 48;
  v564 = v395;
  (v395)(v393, 1, v565);
  v396 = sub_226D6E6BC();
  sub_226AC47B0(v393, &unk_27D7A62F8, &unk_226D73B70);
  v397 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v391;
  sub_226BE6628(v396, 0xD000000000000014, 0x8000000226D81D40, v397);
  v398 = v566;
  v399 = v521;
  sub_226D6A55C();
  sub_226D672BC();
  v401 = v400;
  v394(v399, v366);
  if (v401)
  {
    v402 = sub_226D6E6BC();
  }

  else
  {
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v402 = sub_226D6EC0C();
  }

  v403 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v398;
  sub_226BE6628(v402, 0xD000000000000015, 0x8000000226D81D60, v403);
  v404 = v566;
  v405 = v523;
  sub_226D6A55C();
  v406 = v530;
  sub_226D672DC();
  v407 = v549;
  v408 = v546;
  v546(v405, v549);
  (v564)(v406, 1, v565);
  v409 = sub_226D6E6BC();
  sub_226AC47B0(v406, &unk_27D7A62F8, &unk_226D73B70);
  v410 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v404;
  sub_226BE6628(v409, 0xD000000000000018, 0x8000000226D81D80, v410);
  v411 = v566;
  v412 = v524;
  sub_226D6A55C();
  sub_226D672CC();
  v414 = v413;
  v408(v412, v407);
  if (v414)
  {
    v415 = sub_226D6E6BC();
  }

  else
  {
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v415 = sub_226D6EC0C();
  }

  v416 = v538;
  v417 = v539;
  v418 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v411;
  sub_226BE6628(v415, 0xD000000000000016, 0x8000000226D81DA0, v418);
  v419 = v566;
  v420 = v548;
  v421 = v527;
  sub_226D6A55C();
  sub_226D6730C();
  v423 = v422;
  v546(v421, v549);
  v424 = v417;
  if (v423)
  {
    v425 = sub_226D6E6BC();
  }

  else
  {
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v425 = sub_226D6EC0C();
  }

  v426 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v419;
  sub_226BE6628(v425, 0xD000000000000020, 0x8000000226D81DC0, v426);
  v427 = v566;
  v428 = *(sub_226D6A50C() + 16);
  v429 = sub_226D6E6BC();

  v430 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v427;
  sub_226BE6628(v429, v537, 0x8000000226D81DF0, v430);
  v431 = v566;
  v432 = v531;
  sub_226D6A53C();
  v433 = sub_226D67C3C();
  (*(*(v433 - 8) + 48))(v432, 1, v433);
  v434 = sub_226D6E6BC();
  sub_226AC47B0(v432, &qword_27D7A7828, &unk_226D756B0);
  v435 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v431;
  sub_226BE6628(v434, 0xD000000000000014, 0x8000000226D81E10, v435);
  v436 = v566;
  v437 = v533;
  sub_226D6A4EC();
  v438 = sub_226D6BC2C();
  (*(*(v438 - 8) + 48))(v437, 1, v438);
  v439 = sub_226D6E6BC();
  sub_226AC47B0(v437, &qword_27D7A77F8, &unk_226D75680);
  v440 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v436;
  sub_226BE6628(v439, 0xD00000000000001ALL, 0x8000000226D81E30, v440);
  v441 = v566;
  v442 = v532;
  sub_226D6A54C();
  v443 = v545;
  if (v551(v442, 1, v545) == 1)
  {
    v444 = &qword_27D7A7808;
    v445 = &qword_226D75690;
    v446 = v442;
  }

  else
  {
    v447 = v506;
    sub_226D67D2C();
    (*(v544 + 8))(v442, v443);
    v448 = sub_226D699EC();
    v449 = *(v448 - 8);
    if ((*(v449 + 48))(v447, 1, v448) != 1)
    {
      sub_226D699DC();
      (*(v449 + 8))(v447, v448);
      goto LABEL_114;
    }

    v444 = &qword_27D7A77F0;
    v445 = &qword_226D75678;
    v446 = v447;
  }

  sub_226AC47B0(v446, v444, v445);
LABEL_114:
  v450 = sub_226D6E36C();

  v451 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v441;
  sub_226BE6628(v450, 0x53746E656D796170, 0xED00007375746174, v451);
  v452 = v566;
  v453 = v534;
  sub_226D6A54C();
  v454 = v545;
  if (v551(v453, 1, v545) == 1)
  {
    sub_226AC47B0(v453, &qword_27D7A7808, &qword_226D75690);
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v455 = sub_226D6EC0C();
  }

  else
  {
    v456 = sub_226D67D0C();
    (*(v544 + 8))(v453, v454);
    v457 = *(v456 + 16);
    v455 = sub_226D6E6BC();
  }

  v458 = swift_isUniquelyReferenced_nonNull_native();
  v566 = v452;
  sub_226BE6628(v455, 0xD000000000000017, 0x8000000226D81E50, v458);
  v459 = v566;
  v460 = v535;
  sub_226AC40E8(v420 + *(v547 + 28), v535, &qword_27D7A7798, &unk_226D75570);
  if ((*(v416 + 48))(v460, 1, v424) == 1)
  {
    sub_226AC47B0(v460, &qword_27D7A7798, &unk_226D75570);
  }

  else
  {
    v461 = v510;
    (*(v416 + 32))(v510, v460, v424);
    v462 = v507;
    sub_226D6757C();
    v463 = sub_226BB7DF4(v462);
    (*(v508 + 8))(v462, v509);
    v464 = swift_isUniquelyReferenced_nonNull_native();
    v566 = v459;
    sub_226BE6628(v463, v537, 0x8000000226D81E70, v464);
    v465 = v566;
    v466 = v511;
    sub_226D675CC();
    v467 = sub_226BB805C(v466);
    (*(v512 + 8))(v466, v513);
    v468 = swift_isUniquelyReferenced_nonNull_native();
    v566 = v465;
    sub_226BE6628(v467, 0x6843737574617473, 0xEC00000065676E61, v468);
    v459 = v566;
    (*(v416 + 8))(v461, v424);
  }

  return v459;
}

uint64_t sub_226BB7D58()
{
  v0 = sub_226D6901C();
  v2 = v1;
  if (v0 == sub_226D6901C() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_226D6F21C();
  }

  return v4 & 1;
}

uint64_t sub_226BB7DF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77E8, &qword_226D75670);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v11 - v5;
  (*(v3 + 16))(v11 - v5, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CC8590])
  {
    (*(v3 + 96))(v6, v2);
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7850, &qword_226D756D8) + 48);
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v9 = sub_226D6EC0C();
    sub_226AC47B0(&v6[v8], &qword_27D7A77F0, &qword_226D75678);
    sub_226AC47B0(v6, &qword_27D7A77F0, &qword_226D75678);
    return v9;
  }

  else if (v7 == *MEMORY[0x277CC8598])
  {
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    return sub_226D6EC0C();
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_226D6EEFC();
    MEMORY[0x22AA8A510](0xD000000000000026, 0x8000000226D82160);
    sub_226D6EFBC();
    result = sub_226D6F0AC();
    __break(1u);
  }

  return result;
}

uint64_t sub_226BB805C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77E0, &qword_226D75668);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v11 - v5;
  (*(v3 + 16))(v11 - v5, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CC8590])
  {
    (*(v3 + 96))(v6, v2);
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7840, &qword_226D756C8) + 48);
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v9 = sub_226D6EC0C();
    sub_226AC47B0(&v6[v8], &qword_27D7A7848, &qword_226D756D0);
    sub_226AC47B0(v6, &qword_27D7A7848, &qword_226D756D0);
    return v9;
  }

  else if (v7 == *MEMORY[0x277CC8598])
  {
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    return sub_226D6EC0C();
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_226D6EEFC();
    MEMORY[0x22AA8A510](0xD000000000000026, 0x8000000226D82160);
    sub_226D6EFBC();
    result = sub_226D6F0AC();
    __break(1u);
  }

  return result;
}

unint64_t sub_226BB82C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D70840;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000226D81C60;
  *(inited + 48) = sub_226D6E36C();
  v4 = sub_226B224E8(inited);
  swift_setDeallocating();
  sub_226AC47B0(inited + 32, &qword_27D7A77D8, &qword_226D75660);
  return v4;
}

uint64_t getEnumTagSinglePayload for OrderImportAnalyticsEventsBuilder.Context(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for OrderImportAnalyticsEventsBuilder.Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_226BB8448(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_226BB8460(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_226BB8488(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_226BB84EC(uint64_t a1)
{
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult();
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_226BB8548()
{
  result = qword_27D7A77A0;
  if (!qword_27D7A77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A77A0);
  }

  return result;
}

uint64_t sub_226BB859C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(sub_226D6A4BC() + 16);

  if (v8)
  {
    v9 = sub_226D6A4BC();
    MEMORY[0x28223BE20](v9);
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = a3;
    v20 = a4;
    v10 = sub_226C41508(sub_226BB878C, v19, v9);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A61C0, &qword_226D775E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_226D70840;
    v11 = type metadata accessor for OrderImportAnalyticsEventsBuilder.OrderImportedSuccessEvent();
    *(v10 + 56) = v11;
    *(v10 + 64) = sub_226BB8800();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v10 + 32));
    v13 = v11[6];
    v14 = sub_226D6904C();
    (*(*(v14 - 8) + 56))(boxed_opaque_existential_1 + v13, 1, 1, v14);
    *boxed_opaque_existential_1 = 0xD000000000000029;
    boxed_opaque_existential_1[1] = 0x8000000226D81C30;
    v15 = v11[5];
    v16 = sub_226D6A58C();
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1 + v15, a1, v16);
    sub_226AC40E8(a2, boxed_opaque_existential_1 + v11[7], &qword_27D7A7798, &unk_226D75570);
    v17 = boxed_opaque_existential_1 + v11[8];
    *v17 = a3;
    v17[8] = a4;
  }

  return v10;
}

uint64_t type metadata accessor for OrderImportAnalyticsEventsBuilder.OrderImportedSuccessEvent()
{
  result = qword_27D7A77C0;
  if (!qword_27D7A77C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_226BB8800()
{
  result = qword_27D7A77B0;
  if (!qword_27D7A77B0)
  {
    type metadata accessor for OrderImportAnalyticsEventsBuilder.OrderImportedSuccessEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A77B0);
  }

  return result;
}

void sub_226BB8880()
{
  sub_226D6A58C();
  if (v0 <= 0x3F)
  {
    sub_226BB896C(319, &qword_281062BA8, MEMORY[0x277CC7730]);
    if (v1 <= 0x3F)
    {
      sub_226BB896C(319, &qword_27D7A77D0, MEMORY[0x277CC6C78]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_226BB896C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_226D6EC9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_226BB89C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_226BB8A08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226BB8A78(uint64_t a1)
{
  v55 = sub_226D6B9BC();
  v3 = *(v55 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v55);
  v58 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata(0);
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = sub_226D6EDFC();
  }

  else
  {
    v10 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v52 = v9;
    v64 = MEMORY[0x277D84F90];
    sub_226AE26E0(0, v10 & ~(v10 >> 63), 0);
    v59 = v64;
    if (v56)
    {
      result = sub_226D6EDAC();
    }

    else
    {
      v13 = -1 << *(a1 + 32);
      result = sub_226D6ED6C();
      v12 = *(a1 + 36);
    }

    v61 = result;
    v62 = v12;
    v63 = v56 != 0;
    if ((v10 & 0x8000000000000000) == 0)
    {
      v14 = 0;
      v50 = v10;
      v51 = (v3 + 32);
      v15 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v15 = a1;
      }

      v48 = a1 + 56;
      v49 = v15;
      v46 = v1;
      v47 = a1 + 64;
      while (v14 < v10)
      {
        if (__OFADD__(v14++, 1))
        {
          goto LABEL_40;
        }

        v18 = v61;
        v19 = v63;
        v57 = v62;
        v20 = a1;
        sub_226CCCCEC(v61, v62, v63, a1);
        v22 = v21;
        sub_226D69D5C();
        v23 = [v22 externalAccountId];
        if (v23)
        {
          v24 = v23;
          v25 = sub_226D6E39C();
          v27 = v26;
        }

        else
        {
          v25 = 0;
          v27 = 0;
        }

        v28 = v54;
        v29 = v52;
        v30 = &v52[*(v54 + 24)];
        sub_226D69EBC();
        (*v51)(v29, v58, v55);

        v31 = (v29 + *(v28 + 20));
        *v31 = v25;
        v31[1] = v27;
        v32 = v59;
        v64 = v59;
        v34 = *(v59 + 16);
        v33 = *(v59 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_226AE26E0(v33 > 1, v34 + 1, 1);
          v29 = v52;
          v32 = v64;
        }

        *(v32 + 16) = v34 + 1;
        v35 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v59 = v32;
        result = sub_226BBC070(v29, v32 + v35 + *(v53 + 72) * v34);
        a1 = v20;
        if (v56)
        {
          if (!v19)
          {
            goto LABEL_45;
          }

          if (sub_226D6EDCC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v10 = v50;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7288, &qword_226D74970);
          v16 = sub_226D6E8CC();
          sub_226D6EE4C();
          result = v16(v60, 0);
          if (v14 == v10)
          {
LABEL_37:
            sub_226AE5444(v61, v62, v63);
            return v59;
          }
        }

        else
        {
          if (v19)
          {
            goto LABEL_46;
          }

          if ((v18 & 0x8000000000000000) != 0)
          {
            goto LABEL_41;
          }

          v36 = 1 << *(v20 + 32);
          if (v18 >= v36)
          {
            goto LABEL_41;
          }

          v37 = v18 >> 6;
          v38 = *(v48 + 8 * (v18 >> 6));
          if (((v38 >> v18) & 1) == 0)
          {
            goto LABEL_42;
          }

          if (*(v20 + 36) != v57)
          {
            goto LABEL_43;
          }

          v39 = v38 & (-2 << (v18 & 0x3F));
          if (v39)
          {
            v36 = __clz(__rbit64(v39)) | v18 & 0x7FFFFFFFFFFFFFC0;
            v10 = v50;
          }

          else
          {
            v40 = v37 << 6;
            v41 = v37 + 1;
            v42 = (v47 + 8 * v37);
            v10 = v50;
            while (v41 < (v36 + 63) >> 6)
            {
              v44 = *v42++;
              v43 = v44;
              v40 += 64;
              ++v41;
              if (v44)
              {
                result = sub_226AE5444(v18, v57, 0);
                v36 = __clz(__rbit64(v43)) + v40;
                goto LABEL_36;
              }
            }

            result = sub_226AE5444(v18, v57, 0);
          }

LABEL_36:
          v45 = *(v20 + 36);
          v61 = v36;
          v62 = v45;
          v63 = 0;
          if (v14 == v10)
          {
            goto LABEL_37;
          }
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  return result;
}

uint64_t ManagedConsentDeleter.init(widgetRefresher:walletMessageUpdater:messagesManager:userDefaults:notificationCenter:deletedAccountsApplicationRemover:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_226D67F1C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a7 + 32) = 0;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  sub_226B1B848(a1, a7);
  sub_226AE532C(a2, a7 + 40);
  sub_226AE532C(a3, a7 + 80);
  sub_226AE532C(a4, a7 + 120);
  sub_226AC40E8(a5, &v25, &qword_27D7A6918, &unk_226D7BBC0);
  if (v26)
  {
    sub_226AC47B0(a5, &qword_27D7A6918, &unk_226D7BBC0);
    __swift_destroy_boxed_opaque_existential_0Tm(a4);
    __swift_destroy_boxed_opaque_existential_0Tm(a3);
    __swift_destroy_boxed_opaque_existential_0Tm(a2);
    sub_226AC47B0(a1, &qword_27D7A6910, &unk_226D721C0);
    sub_226AC484C(&v25, &v27);
  }

  else
  {
    sub_226D67E6C();
    sub_226D67F0C();
    v23 = a1;
    v24 = a6;
    (*(v15 + 8))(v18, v14);
    v19 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v20 = sub_226D6E36C();

    v21 = [v19 initWithBundleIdentifier_];

    v28 = sub_226AE59B4(0, &qword_28105F428, 0x277CE2028);
    v29 = MEMORY[0x277CC85E8];
    *&v27 = v21;
    a6 = v24;
    sub_226AC47B0(a5, &qword_27D7A6918, &unk_226D7BBC0);
    __swift_destroy_boxed_opaque_existential_0Tm(a4);
    __swift_destroy_boxed_opaque_existential_0Tm(a3);
    __swift_destroy_boxed_opaque_existential_0Tm(a2);
    sub_226AC47B0(v23, &qword_27D7A6910, &unk_226D721C0);
    if (v26)
    {
      sub_226AC47B0(&v25, &qword_27D7A6918, &unk_226D7BBC0);
    }
  }

  sub_226AC484C(&v27, a7 + 160);
  return sub_226AC484C(a6, a7 + 200);
}

Swift::Void __swiftcall ManagedConsentDeleter.postProcess(_:shouldUpdateWalletMessages:)(Swift::OpaquePointer _, Swift::Bool shouldUpdateWalletMessages)
{
  v41 = shouldUpdateWalletMessages;
  v40 = sub_226D6714C();
  v39 = *(v40 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v40);
  v38 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6831C();
  v55 = *(v5 - 8);
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata(0);
  v8 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(_._rawValue + 2);
  if (v12)
  {
    v13 = _._rawValue + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v52 = *(v9 + 72);
    v51 = *MEMORY[0x277CC7298];
    v50 = v55 + 104;
    v49 = *MEMORY[0x277CC7278];
    v48 = *MEMORY[0x277CC7288];
    v47 = *MEMORY[0x277CC72A0];
    v46 = *MEMORY[0x277CC7280];
    v43 = (v55 + 32);
    v45 = xmmword_226D750B0;
    v42 = *MEMORY[0x277CC7290];
    v53 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      v58 = v13;
      v59 = v12;
      sub_226BBA3E0(v13, v11);
      v15 = sub_226D6B9AC();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74D8, &qword_226D756E0);
      v18 = v55;
      v19 = *(v55 + 72);
      v20 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v57 = v20 + 5 * v19;
      v21 = swift_allocObject();
      *(v21 + 16) = v45;
      v22 = (v21 + v20);
      *v22 = v15;
      v22[1] = v17;
      v23 = *(v18 + 104);
      (v23)(v22, v51, v5);
      v24 = (v22 + v19);
      *v24 = v15;
      v24[1] = v17;
      v23();
      v25 = (v22 + 2 * v19);
      *v25 = v15;
      v25[1] = v17;
      v23();
      v26 = (v22 + 3 * v19);
      *v26 = v15;
      v26[1] = v17;
      v23();
      v27 = (v22 + 4 * v19);
      v11 = v53;
      *v27 = v15;
      v27[1] = v17;
      v23();
      v28 = &v11[*(v54 + 20)];
      v29 = *(v28 + 1);
      if (v29)
      {
        v30 = v44;
        *v44 = *v28;
        v30[1] = v29;
        (v23)(v30, v42, v5);
        swift_bridgeObjectRetain_n();

        v31 = sub_226BBAC40(1uLL, 6, 1, v21, &qword_27D7A74D8, &qword_226D756E0, MEMORY[0x277CC72A8]);
        *(v31 + 16) = 6;
        (*v43)(v31 + v57, v30, v5);
      }

      else
      {
        swift_bridgeObjectRetain_n();
      }

      v14 = v56[14];
      __swift_project_boxed_opaque_existential_1(v56 + 10, v56[13]);
      sub_226D6AD4C();

      sub_226BBC010(v11, type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata);
      v13 = &v58[v52];
      v12 = v59 - 1;
    }

    while (v59 != 1);
  }

  sub_226AC40E8(v56, v60, &qword_27D7A6910, &unk_226D721C0);
  if (v61)
  {
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v32 = v39;
    v33 = v38;
    v34 = v40;
    (*(v39 + 104))(v38, *MEMORY[0x277CC6B40], v40);
    sub_226D680BC();
    (*(v32 + 8))(v33, v34);
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
  }

  else
  {
    sub_226AC47B0(v60, &qword_27D7A6910, &unk_226D721C0);
  }

  if (v41)
  {
    v35 = v56[9];
    __swift_project_boxed_opaque_existential_1(v56 + 5, v56[8]);
    sub_226D69A5C();
  }

  v36 = v56[28];
  v37 = v56[29];
  __swift_project_boxed_opaque_existential_1(v56 + 25, v36);
  (*(v37 + 24))(v36, v37);
}

void sub_226BB9890(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v103) = a5;
  v101 = a4;
  v111 = a3;
  v104 = a6;
  v110 = type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata(0);
  v106 = *(v110 - 8);
  v8 = *(v106 + 64);
  MEMORY[0x28223BE20](v110);
  v108 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_226D6D52C();
  v107 = *(v102 - 1);
  v10 = *(v107 + 64);
  MEMORY[0x28223BE20](v102);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D6B9BC();
  v100 = *(v13 - 8);
  v14 = *(v100 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_226D682FC();
  v105 = *(v17 - 8);
  v18 = *(v105 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6794C();
  v21 = v109;
  v22 = sub_226D6788C();
  if (!v21)
  {
    v95 = a1;
    v109 = a2;
    v97 = v16;
    v98 = v17;
    v96 = v13;
    v94 = v12;
    v99 = v20;
    if (!v22)
    {
      sub_226BBBFBC();
      swift_allocError();
      swift_willThrow();
      return;
    }

    v23 = v22;
    sub_226D6830C();
    v24 = sub_226D6790C();
    v25 = sub_226BB8A78(v24);

    v26 = [v23 institutionObject];
    v27 = [v26 termsAndConditionsObject];

    v28 = v111;
    [v111 deleteObject_];
    sub_226D6996C();
    v29 = sub_226D6991C();
    v109 = 0;
    if (v29)
    {
      v30 = v29;
      [v28 deleteObject_];
    }

    v93 = v27;
    if (v27)
    {
      v91 = sub_226D6842C();
      v31 = v27;
      v95 = sub_226D6840C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_226D71F40;
      v90 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_226D70840;
      v92 = v31;
      v34 = [v31 id];
      v35 = sub_226D6E39C();
      v37 = v36;

      *(v33 + 56) = MEMORY[0x277D837D0];
      *(v33 + 64) = sub_226B16404();
      *(v33 + 32) = v35;
      *(v33 + 40) = v37;
      *(v32 + 32) = sub_226D6E91C();
      *(v32 + 40) = sub_226D6E91C();
      v38 = sub_226D6E5CC();

      v39 = [objc_opt_self() andPredicateWithSubpredicates_];

      v40 = v95;
      [v95 setPredicate_];

      v41 = v40;
      [v40 setResultType_];
      v42 = v109;
      v43 = sub_226D6EBAC();
      if (v42)
      {
        (*(v105 + 8))(v99, v98);

        v44 = v92;

        return;
      }

      v52 = v92;
      v91 = v25;
      v109 = 0;
      v51 = v98;
      v46 = v105;
      if (v43)
      {
        v45 = 0;
      }

      else
      {
        v53 = v92;
        [v92 setReviewedAt_];
        v54 = [v53 id];
        sub_226D6E39C();

        sub_226BBA444();

        v55 = [v53 id];
        v56 = sub_226D6E39C();
        v58 = v57;

        v59 = v56;
        v41 = v95;
        v45 = sub_226BBA604(v59, v58, v28);

        v52 = v53;
      }

      v48 = v102;

      v47 = v110;
      v49 = v108;
      v50 = v103;
    }

    else
    {
      v91 = v25;
      v45 = 0;
      v46 = v105;
      v47 = v110;
      v48 = v102;
      v49 = v108;
      v50 = v103;
      v51 = v98;
    }

    v60 = v104;
    (*(v46 + 16))(v104, v99, v51);
    v61 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
    v62 = v91;
    *(v60 + *(v61 + 20)) = v91;
    *(v60 + *(v61 + 24)) = v45 & 1;
    v89 = v23;
    if ((v50 & 1) != 0 && (v103 = *(v62 + 16)) != 0)
    {
      v63 = 0;
      v64 = (v100 + 16);
      v102 = (v100 + 8);
      v65 = v97;
      while (v63 < *(v62 + 16))
      {
        v66 = v62;
        v67 = v62 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v63;
        sub_226D68E6C();
        v68 = v96;
        (*v64)(v65, v67, v96);
        v69 = v109;
        v70 = sub_226D68E2C();
        v109 = v69;
        if (v69)
        {

          (*v102)(v65, v68);
          (*(v105 + 8))(v99, v98);
          sub_226BBC010(v104, type metadata accessor for ManagedConsentDeleter.Metadata);
          return;
        }

        v71 = v70;
        (*v102)(v65, v68);
        v47 = v110;
        if (v71)
        {
          [v111 deleteObject_];
        }

        ++v63;
        v65 = v97;
        v62 = v66;
        if (v103 == v63)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_23:
      sub_226AE532C((v101 + 25), v112);
      v72 = v113;
      v73 = v114;
      v74 = __swift_project_boxed_opaque_existential_1(v112, v113);
      v75 = v62;
      v76 = *(v62 + 16);
      v77 = MEMORY[0x277D84F90];
      if (v76)
      {
        v101 = v74;
        v102 = v73;
        v103 = v72;
        v115 = MEMORY[0x277D84F90];
        sub_226AE20D4(0, v76, 0);
        v77 = v115;
        v78 = v75 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
        v106 = *(v106 + 72);
        v79 = (v107 + 16);
        v80 = v94;
        do
        {
          sub_226BBA3E0(v78, v49);
          (*v79)(v80, v49 + *(v47 + 24), v48);
          sub_226BBC010(v49, type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata);
          v115 = v77;
          v81 = v48;
          v83 = *(v77 + 16);
          v82 = *(v77 + 24);
          if (v83 >= v82 >> 1)
          {
            sub_226AE20D4(v82 > 1, v83 + 1, 1);
            v77 = v115;
          }

          *(v77 + 16) = v83 + 1;
          (*(v107 + 32))(v77 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v83, v80, v81);
          v78 += v106;
          --v76;
          v47 = v110;
          v48 = v81;
          v49 = v108;
        }

        while (v76);
        v73 = v102;
        v72 = v103;
      }

      v84 = sub_226AE45DC(v77);

      v85 = v109;
      (v73[2])(v84, v111, v72, v73);
      v86 = v104;
      v87 = v89;
      (*(v105 + 8))(v99, v98);

      if (v85)
      {

        sub_226BBC010(v86, type metadata accessor for ManagedConsentDeleter.Metadata);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v112);
    }
  }
}

uint64_t sub_226BBA3E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BBA444()
{
  v1 = v0;
  v2 = sub_226D6C98C();
  v4 = v3;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);

  v6 = sub_226D6E05C();
  v7 = sub_226D6E9EC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_226AC4530(v2, v4, &v13);
    _os_log_impl(&dword_226AB4000, v6, v7, "Removing outstanding T&Cs notification with ID: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  v10 = v1[24];
  __swift_project_boxed_opaque_existential_1(v1 + 20, v1[23]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_226D70840;
  *(v11 + 32) = v2;
  *(v11 + 40) = v4;
  sub_226D6A00C();
}

uint64_t sub_226BBA604(uint64_t a1, uint64_t a2, void *a3)
{
  sub_226D691CC();
  result = sub_226D6915C();
  if (result)
  {
    v5 = result;
    [a3 deleteObject_];

    return 1;
  }

  return result;
}

uint64_t ManagedConsentDeleter.ConsentDeletingError.hashValue.getter()
{
  sub_226D6F2FC();
  MEMORY[0x22AA8B3B0](0);
  return sub_226D6F35C();
}

uint64_t ManagedConsentDeleter.Metadata.deletedConsent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_226D682FC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ManagedConsentDeleter.Metadata.deletedConsent.setter(uint64_t a1)
{
  v3 = sub_226D682FC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ManagedConsentDeleter.Metadata.grantedAccountsMetadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for ManagedConsentDeleter.Metadata(0) + 20));
}

uint64_t ManagedConsentDeleter.Metadata.grantedAccountsMetadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ManagedConsentDeleter.Metadata(0) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ManagedConsentDeleter.Metadata.deletedWalletMessages.setter(char a1)
{
  result = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

char *sub_226BBAB0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
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

size_t sub_226BBAC40(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

char *sub_226BBAE6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68A0, &unk_226D75900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_226BBAF90(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A78C0, &qword_226D758F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A78C8, &qword_226D758F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_226BBB0C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A78A8, &qword_226D758C8);
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

unint64_t sub_226BBB294()
{
  result = qword_27D7A7858;
  if (!qword_27D7A7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7858);
  }

  return result;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_226BBB32C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226BBB374(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_226BBB438()
{
  sub_226D682FC();
  if (v0 <= 0x3F)
  {
    sub_226BBB4C4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_226BBB4C4()
{
  if (!qword_27D7A7870)
  {
    type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata(255);
    v0 = sub_226D6E6AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A7870);
    }
  }
}

void sub_226BBB544()
{
  sub_226D6B9BC();
  if (v0 <= 0x3F)
  {
    sub_226BBB5E0();
    if (v1 <= 0x3F)
    {
      sub_226D6D52C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_226BBB5E0()
{
  if (!qword_28105F548)
  {
    v0 = sub_226D6EC9C();
    if (!v1)
    {
      atomic_store(v0, &qword_28105F548);
    }
  }
}

char *sub_226BBB7A4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

void *sub_226BBBA44(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7900, &unk_226D75958);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_226BBBBA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A78F0, &qword_226D75938);
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

void *sub_226BBBCC8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_226BBBE88(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A78B8, &qword_226D758D8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F78, &unk_226D758E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_226BBBFBC()
{
  result = qword_27D7A7938;
  if (!qword_27D7A7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7938);
  }

  return result;
}

uint64_t sub_226BBC010(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226BBC070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_226BBC0D4(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v129 = a5;
  v121 = a3;
  v119 = a4;
  v120 = a2;
  v130 = a1;
  v115 = a6;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7798, &unk_226D75570);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v106 - v8;
  v10 = sub_226D6E00C();
  v110 = *(v10 - 8);
  v111 = v10;
  v11 = *(v110 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v107 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v108 = &v106 - v14;
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult();
  v15 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v118 = (&v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_226D6B49C();
  v126 = *(v17 - 8);
  v127 = v17;
  v18 = *(v126 + 64);
  MEMORY[0x28223BE20](v17);
  v125 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_226D67CEC();
  v123 = *(v20 - 8);
  v124 = v20;
  v21 = *(v123 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_226D6DFCC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v112 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v114 = &v106 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v113 = &v106 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v117 = &v106 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v106 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v106 - v38;
  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v40 = sub_226D6DFFC();
  v41 = __swift_project_value_buffer(v40, qword_281064510);
  sub_226D6DFBC();
  v122 = v41;
  v42 = sub_226D6DFDC();
  v43 = sub_226D6EABC();
  v44 = sub_226D6EC8C();
  v116 = v9;
  if (v44)
  {
    v45 = v25;
    v46 = v24;
    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = sub_226D6DFAC();
    _os_signpost_emit_with_name_impl(&dword_226AB4000, v42, v43, v48, "InsertOrUpdateOrder", "", v47, 2u);
    v49 = v47;
    v24 = v46;
    v25 = v45;
    MEMORY[0x22AA8BEE0](v49, -1, -1);
  }

  (*(v25 + 16))(v37, v39, v24);
  v50 = sub_226D6E03C();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = sub_226D6E02C();
  v56 = *(v25 + 8);
  v55 = v25 + 8;
  v54 = v56;
  v56(v39, v24);
  v57 = v24;
  sub_226D6751C();
  sub_226D6726C();
  v58 = v125;
  sub_226D67C4C();
  (*(v123 + 8))(v23, v124);
  v59 = v128;
  v60 = v129;
  v61 = sub_226D6745C();
  if (v59)
  {
    (*(v126 + 8))(v58, v127);
  }

  else
  {
    v62 = v61;
    v63 = v54;
    v124 = v53;
    v128 = v57;
    (*(v126 + 8))(v58, v127);
    if (v62)
    {
      v64 = v62;
      v65 = v117;
      sub_226D6DFBC();
      v66 = sub_226D6DFDC();
      v67 = sub_226D6EACC();
      if (sub_226D6EC8C())
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        v69 = sub_226D6DFAC();
        _os_signpost_emit_with_name_impl(&dword_226AB4000, v66, v67, v69, "InsertOrUpdateOrder", "Update", v68, 2u);
        MEMORY[0x22AA8BEE0](v68, -1, -1);
      }

      v63(v65, v128);
      v70 = v118;
      sub_226BBCB6C(v64, v130, v120, v121, v119 & 0x1010101, v129, v118);

      v77 = sub_226D6DFDC();
      v78 = v113;
      sub_226D6E01C();
      LODWORD(v130) = sub_226D6EAAC();
      if (sub_226D6EC8C())
      {

        v79 = v108;
        sub_226D6E04C();
        v80 = v79;

        v81 = v110;
        v82 = v79;
        v83 = v111;
        if ((*(v110 + 88))(v82, v111) == *MEMORY[0x277D85B00])
        {
          v84 = "[Error] Interval already ended";
        }

        else
        {
          (*(v81 + 8))(v80, v83);
          v84 = "";
        }

        v95 = swift_slowAlloc();
        *v95 = 0;
        v78 = v113;
        v96 = sub_226D6DFAC();
        _os_signpost_emit_with_name_impl(&dword_226AB4000, v77, v130, v96, "InsertOrUpdateOrder", v84, v95, 2u);
        MEMORY[0x22AA8BEE0](v95, -1, -1);
        v70 = v118;
      }

      v63(v78, v128);
      sub_226BBF058(v70, v115);
    }

    else
    {
      v71 = v114;
      sub_226D6DFBC();
      v72 = sub_226D6DFDC();
      v73 = sub_226D6EACC();
      if (sub_226D6EC8C())
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        v75 = sub_226D6DFAC();
        _os_signpost_emit_with_name_impl(&dword_226AB4000, v72, v73, v75, "InsertOrUpdateOrder", "Insert", v74, 2u);
        v76 = v74;
        v60 = v129;
        MEMORY[0x22AA8BEE0](v76, -1, -1);
      }

      v54(v71, v128);
      v85 = sub_226BBE008(v116, v130, v120, v121, v119 & 0x1010101, v60);
      v87 = v86;
      v88 = v54;
      v89 = sub_226D6DFDC();
      v90 = v112;
      sub_226D6E01C();
      LODWORD(v130) = sub_226D6EAAC();
      if (sub_226D6EC8C())
      {

        v91 = v107;
        sub_226D6E04C();

        v93 = v110;
        v92 = v111;
        v94 = (*(v110 + 88))(v91, v111) == *MEMORY[0x277D85B00];
        v106 = v55;
        if (v94)
        {
          v97 = "[Error] Interval already ended";
        }

        else
        {
          (*(v93 + 8))(v91, v92);
          v97 = "";
        }

        v98 = swift_slowAlloc();
        *v98 = 0;
        v90 = v112;
        v99 = sub_226D6DFAC();
        _os_signpost_emit_with_name_impl(&dword_226AB4000, v89, v130, v99, "InsertOrUpdateOrder", v97, v98, 2u);
        MEMORY[0x22AA8BEE0](v98, -1, -1);
      }

      v88(v90, v128);
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
      v101 = *(v100 + 48);
      v102 = *(v100 + 64);
      v104 = v115;
      v103 = v116;
      v105 = v115 + v102;
      *v115 = v85;
      sub_226BBEFE8(v103, v104 + v101);
      *v105 = v87 & 1;
      v105[1] = BYTE1(v87) & 1;
      v105[2] = BYTE2(v87) & 1;
      v105[3] = HIBYTE(v87) & 1;
      swift_storeEnumTagMultiPayload();
    }
  }
}

id sub_226BBCB6C@<X0>(void *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unsigned int a5@<W4>, void *a6@<X5>, void *a7@<X8>)
{
  v178 = a6;
  v165 = a4;
  v164 = a3;
  v194 = a1;
  v169 = a7;
  v168 = a5 & 0x100;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v170 = &v161 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v167 = &v161 - v14;
  v172 = sub_226D6D1AC();
  v171 = *(v172 - 8);
  v15 = *(v171 + 64);
  MEMORY[0x28223BE20](v172);
  v162 = &v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_226D675EC();
  v174 = *(v175 - 8);
  v17 = *(v174 + 64);
  MEMORY[0x28223BE20](v175);
  v166 = &v161 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_226D6A58C();
  v184 = *(v19 - 8);
  v185 = v19;
  v20 = *(v184 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v183 = &v161 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7798, &unk_226D75570);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v176 = &v161 - v27;
  v182 = sub_226D68F4C();
  v190 = *(v182 - 8);
  v28 = *(v190 + 64);
  v29 = MEMORY[0x28223BE20](v182);
  v173 = (&v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x28223BE20](v29);
  v163 = (&v161 - v32);
  MEMORY[0x28223BE20](v31);
  v34 = &v161 - v33;
  v186 = sub_226D6D4AC();
  v181 = *(v186 - 8);
  v35 = *(v181 + 64);
  v36 = MEMORY[0x28223BE20](v186);
  v177 = &v161 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v161 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v161 - v41;
  v43 = sub_226D67CEC();
  v188 = *(v43 - 8);
  v189 = v43;
  v44 = *(v188 + 64);
  v45 = MEMORY[0x28223BE20](v43);
  v161 = &v161 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v161 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v161 - v51;
  MEMORY[0x28223BE20](v50);
  v54 = &v161 - v53;
  v179 = a2;
  sub_226D6726C();
  v192 = v54;
  v180 = a5;
  if ((a5 & 0x10000) == 0)
  {
    sub_226D67CDC();
    sub_226D6749C();
    sub_226D68F2C();
    (*(v190 + 8))(v34, v182);
    v55 = v187[3];
    v56 = v187[2];
    if (sub_226D6ACFC())
    {
      sub_226BBF204();
      v57 = v186;
      v58 = sub_226D6E33C();
    }

    else
    {
      v58 = sub_226D6D3FC();
      v57 = v186;
    }

    v59 = *(v181 + 8);
    v59(v40, v57);
    v59(v42, v57);
    v60 = v180;
    v54 = v192;
    if ((v58 & 1) == 0)
    {
      if (qword_28105F5B8 != -1)
      {
        swift_once();
      }

      LODWORD(v190) = v60 & 0x1000000;
      v93 = sub_226D6E07C();
      __swift_project_value_buffer(v93, qword_28105F5C0);
      v94 = v188;
      v95 = v189;
      v96 = *(v188 + 16);
      v97 = v192;
      v96(v49, v192, v189);
      v98 = v161;
      v96(v161, v97, v95);
      v99 = sub_226D6E05C();
      v100 = sub_226D6E9CC();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v187 = swift_slowAlloc();
        *&v193[0] = v187;
        *v101 = 136315394;
        LODWORD(v186) = v100;
        v102 = sub_226D67CBC();
        v104 = v103;
        v105 = *(v94 + 8);
        v105(v49, v95);
        v106 = sub_226AC4530(v102, v104, v193);

        *(v101 + 4) = v106;
        *(v101 + 12) = 2080;
        v107 = sub_226D67C9C();
        v109 = v108;
        v105(v98, v95);
        v110 = sub_226AC4530(v107, v109, v193);

        *(v101 + 14) = v110;
        _os_log_impl(&dword_226AB4000, v99, v186, "Existing order with orderTypeIdentifier=%s and orderIdentifier=%s is newer, cannot update", v101, 0x16u);
        v111 = v187;
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v111, -1, -1);
        MEMORY[0x22AA8BEE0](v101, -1, -1);

        v105(v192, v95);
      }

      else
      {

        v131 = *(v94 + 8);
        v131(v98, v95);
        v131(v49, v95);
        v131(v192, v95);
      }

      v120 = v194;
      v132 = v169;
      *v169 = v194;
      v132[8] = v60 & 1;
      v132[9] = BYTE1(v168);
      v132[10] = 0;
      v132[11] = BYTE3(v190);
LABEL_34:
      type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult();
      swift_storeEnumTagMultiPayload();
      return v120;
    }
  }

  v61 = v188;
  v62 = v189;
  (*(v188 + 16))(v52, v54, v189);
  if ((*(v61 + 88))(v52, v62) == *MEMORY[0x277CC6FA8])
  {
    (*(v61 + 96))(v52, v62);
    v64 = v183;
    v63 = v184;
    v65 = v52;
    v66 = v185;
    (*(v184 + 32))(v183, v65, v185);
    sub_226D6B2AC();
    (*(v63 + 16))(v23, v64, v66);
    sub_226AC40E8((v187 + 4), v193, &qword_27D7A7790, &unk_226D79770);

    v67 = v178;
    v68 = v191;
    v69 = sub_226D6B2BC();
    if (v68)
    {
      (*(v63 + 8))(v64, v66);
      return (*(v61 + 8))(v192, v62);
    }

    v71 = v69;
    v191 = 0;
    sub_226D67F9C();
    v72 = v67;
    sub_226B11B44(v164, v165);
    v73 = sub_226D67F8C();
    [v71 setOrderData_];

    v74 = v163;
    sub_226D6749C();
    v75 = v190;
    v76 = v182;
    v77 = (*(v190 + 88))(v74, v182);
    if (v77 != *MEMORY[0x277CC76A8])
    {
      *&v193[0] = 0;
      *(&v193[0] + 1) = 0xE000000000000000;
      sub_226D6EEFC();
      MEMORY[0x22AA8A510](0xD000000000000018, 0x8000000226D82370);
      sub_226D6EFBC();
      goto LABEL_46;
    }

    v78 = v77;
    (*(v75 + 96))(v74, v76);
    v79 = *v74;
    v80 = v71;
    v81 = v166;
    sub_226D675DC();
    [v72 deleteObject_];

    v82 = v174;
    v83 = v176;
    v84 = v175;
    (*(v174 + 16))(v176, v81, v175);
    (*(v82 + 56))(v83, 0, 1, v84);
    v85 = v173;
    *v173 = v80;
    (*(v75 + 104))(v85, v78, v76);
    v86 = v80;
    v87 = v72;
    v88 = v177;
    sub_226D6D46C();
    sub_226D6741C();
    v89 = v76;
    v90 = v181 + 8;
    v179 = *(v181 + 8);
    v179(v88, v186);
    v91 = *(v75 + 8);
    v190 = v75 + 8;
    v178 = v91;
    (v91)(v85, v89);
    v187 = v87;
    v165 = v90;
    v92 = v194;
    if (v180)
    {
      LODWORD(v164) = sub_226BCA084(v194, v86, v81, v87);
    }

    else
    {
      LODWORD(v164) = HIBYTE(v180) & 1;
    }

    v112 = v192;
    v113 = v170;
    v114 = v172;
    v115 = v167;
    v116 = v184;

    (*(v174 + 8))(v81, v175);
    (*(v116 + 8))(v183, v185);
    sub_226D67C8C();
    v117 = v171;
    v118 = (*(v171 + 48))(v115, 1, v114);
    v119 = v191;
    if (v118 == 1)
    {
      sub_226AC47B0(v115, &unk_27D7A62F8, &unk_226D73B70);
      v120 = v92;
LABEL_26:
      [v120 setOrderWebService_];
      [v120 setAuthenticationToken_];
      v133 = [v120 orderRegistration];
      v130 = v179;
      v134 = v119;
      if (v133)
      {
        v135 = v133;
        v136 = [v120 orderContentModificationDate];
        v137 = v177;
        sub_226D6D45C();

        v138 = sub_226D6D3EC();
        v130(v137, v186);
        [v135 setCancellationDate_];
      }

      [v120 setOrderRegistration_];
      goto LABEL_29;
    }

    v121 = v115;
    v122 = v162;
    (*(v117 + 32))(v162, v121, v114);
    v123 = sub_226D67CAC();
    v120 = v92;
    if (!v124)
    {
      (*(v117 + 8))(v122, v114);
      v113 = v170;
      goto LABEL_26;
    }

    v185 = v123;
    v125 = [v92 orderWebService];
    v126 = [v120 orderType];
    if (v126)
    {
      v127 = v126;
      sub_226D69F6C();
      v128 = v162;
      v129 = sub_226D69F3C();
      v130 = v179;
      if (v119)
      {

        (*(v171 + 8))(v128, v172);
        sub_226AC47B0(v176, &qword_27D7A7798, &unk_226D75570);
        return (*(v188 + 8))(v192, v189);
      }

      v150 = v129;

      v151 = v150;
      v152 = v194;
      [v194 setOrderWebService_];
      v153 = sub_226D6E36C();

      [v152 setAuthenticationToken_];

      if (v125)
      {
        v154 = v125;
        v155 = sub_226D6EC3C();

        v134 = 0;
        if (v155)
        {
          v125 = v151;
          v120 = v194;
LABEL_42:

          (*(v171 + 8))(v162, v172);
          v112 = v192;
          v113 = v170;
LABEL_29:
          [v120 setLastModifiedValue_];
          sub_226D67CCC();
          v139 = v186;
          v140 = 0;
          if ((*(v181 + 48))(v113, 1, v186) != 1)
          {
            v140 = sub_226D6D3EC();
            v130(v113, v139);
          }

          [v120 setAutomaticUpdatesEnabledUntilDate_];

          v141 = v173;
          sub_226D6749C();
          v142 = v177;
          sub_226D68F1C();
          (v178)(v141, v182);
          v143 = sub_226D6D3EC();
          v130(v142, v139);
          [v120 setArchiveDate_];

          memset(v193, 0, sizeof(v193));
          sub_226B42C34(v120, v187);
          if (v134)
          {
            sub_226AFD62C(v193);
            sub_226AC47B0(v176, &qword_27D7A7798, &unk_226D75570);
            return (*(v188 + 8))(v112, v189);
          }

          v144 = v180;
          v145 = BYTE2(v180) & 1;
          sub_226AFD62C(v193);
          (*(v188 + 8))(v112, v189);
          v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
          v147 = *(v146 + 48);
          v148 = v169;
          v149 = v169 + *(v146 + 64);
          *v169 = v120;
          sub_226BBEFE8(v176, v148 + v147);
          *v149 = v144 & 1;
          v149[1] = BYTE1(v168);
          v149[2] = v145;
          v149[3] = v164 & 1;
          goto LABEL_34;
        }
      }

      else
      {

        v134 = 0;
      }

      v120 = v194;
      v156 = [v194 orderRegistration];
      if (v156)
      {
        v157 = v156;
        v158 = [v120 orderContentModificationDate];
        v159 = v177;
        sub_226D6D45C();

        v160 = sub_226D6D3EC();
        v130(v159, v186);
        [v157 setCancellationDate_];
      }

      [v120 setOrderRegistration_];
      v154 = v151;
      goto LABEL_42;
    }

    __break(1u);
  }

  *&v193[0] = 0;
  *(&v193[0] + 1) = 0xE000000000000000;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD00000000000002BLL, 0x8000000226D82340);
  sub_226D6EFBC();
LABEL_46:
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226BBE008(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5, void *a6)
{
  v109 = a5;
  v106 = a4;
  v105 = a3;
  v110 = a1;
  v127 = sub_226D6D4AC();
  v129 = *(v127 - 8);
  v8 = *(v129 + 64);
  MEMORY[0x28223BE20](v127);
  v115 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_226D68F4C();
  v108 = *(v114 - 8);
  v10 = *(v108 + 64);
  MEMORY[0x28223BE20](v114);
  v123 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_226D675EC();
  v112 = *(v113 - 8);
  v12 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v107 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_226D6A58C();
  v121 = *(v14 - 8);
  v122 = v14;
  v15 = *(v121 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v116 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v120 = &v100 - v18;
  v19 = sub_226D6D1AC();
  v125 = *(v19 - 1);
  v126 = v19;
  v20 = *(v125 + 8);
  MEMORY[0x28223BE20](v19);
  v111 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v119 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v128 = &v100 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v118 = &v100 - v29;
  v30 = sub_226D67CEC();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v100 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v100 - v36;
  v124 = a2;
  sub_226D6726C();
  sub_226D6751C();
  v38 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  sub_226D67FDC();
  sub_226D67CBC();
  v39 = v131;
  v40 = sub_226D67FCC();
  if (v39)
  {
    (*(v31 + 8))(v37, v30);

    return v37;
  }

  v41 = v40;
  v102 = 0;
  v100 = v35;
  v131 = a6;
  v103 = v31;
  v104 = v30;

  v101 = v41;
  [v38 setOrderType_];
  sub_226D67CBC();
  v42 = sub_226D6E36C();

  [v38 setOrderTypeIdentifier_];

  sub_226D67C9C();
  v43 = sub_226D6E36C();

  [v38 setOrderIdentifier_];

  v44 = v118;
  sub_226D67CCC();
  v45 = v129;
  v46 = v127;
  v47 = v38;
  if ((*(v129 + 48))(v44, 1, v127) == 1)
  {
    v48 = 0;
  }

  else
  {
    v49 = v45;
    v48 = sub_226D6D3EC();
    (*(v49 + 8))(v44, v46);
  }

  v50 = v128;
  v51 = v125;
  v52 = v119;
  [v38 setAutomaticUpdatesEnabledUntilDate_];

  sub_226D67C8C();
  v119 = sub_226D67CAC();
  v54 = v53;
  sub_226AC40E8(v50, v52, &unk_27D7A62F8, &unk_226D73B70);
  v55 = v126;
  if ((*(v51 + 6))(v52, 1, v126) == 1)
  {
    sub_226AC47B0(v52, &unk_27D7A62F8, &unk_226D73B70);
LABEL_12:
    v61 = v104;
    goto LABEL_13;
  }

  v56 = v52;
  v57 = v111;
  (*(v51 + 4))(v111, v56, v55);
  if (!v54)
  {
    (*(v51 + 1))(v57, v55);
    goto LABEL_12;
  }

  sub_226D69F6C();

  v58 = v101;
  v59 = v102;
  v60 = sub_226D69F3C();
  v61 = v104;
  if (v59)
  {

    swift_bridgeObjectRelease_n();
    (*(v125 + 1))(v57, v126);
    sub_226AC47B0(v50, &unk_27D7A62F8, &unk_226D73B70);
    (*(v103 + 8))(v37, v61);
    return v37;
  }

  v98 = v60;
  v102 = 0;
  [v47 setOrderWebService_];

  v99 = sub_226D6E36C();

  [v47 setAuthenticationToken_];

  (*(v125 + 1))(v57, v126);
LABEL_13:
  v126 = v47;
  v62 = v103;
  v63 = *(v103 + 16);
  v64 = v100;
  v125 = v37;
  v63(v100, v37, v61);
  v65 = (*(v62 + 88))(v64, v61);
  v66 = v120;
  if (v65 == *MEMORY[0x277CC6FA8])
  {

    (*(v62 + 96))(v64, v61);
    v67 = v121;
    v68 = v64;
    v69 = v122;
    (*(v121 + 32))(v66, v68, v122);
    sub_226D6B2AC();
    (*(v67 + 16))(v116, v66, v69);
    sub_226AC40E8(v117 + 32, v130, &qword_27D7A7790, &unk_226D79770);

    v70 = v131;
    v71 = v102;
    v72 = sub_226D6B2BC();
    v73 = v123;
    if (v71)
    {

      v74 = *(v67 + 8);
      v37 = (v67 + 8);
      v74(v66, v69);
      sub_226AC47B0(v128, &unk_27D7A62F8, &unk_226D73B70);
      (*(v62 + 8))(v125, v61);
    }

    else
    {
      v75 = v72;
      sub_226D67F9C();
      v76 = v70;
      sub_226B11B44(v105, v106);
      v131 = v76;
      v77 = sub_226D67F8C();
      [v75 setOrderData_];

      v78 = v75;
      v79 = v107;
      sub_226D675DC();
      v80 = v112;
      v81 = v110;
      v82 = v113;
      (*(v112 + 16))(v110, v79, v113);
      (*(v80 + 56))(v81, 0, 1, v82);
      *v73 = v78;
      v83 = v73;
      v84 = v108;
      v85 = v114;
      (*(v108 + 104))(v83, *MEMORY[0x277CC76A8], v114);
      v86 = v78;
      v37 = v126;
      v87 = [v126 creationDate];
      v88 = v115;
      sub_226D6D45C();

      sub_226D6741C();
      v89 = v85;
      v90 = *(v129 + 8);
      v129 += 8;
      v90(v88, v127);
      v91 = *(v84 + 8);
      v91(v83, v89);
      if (v109)
      {
        LODWORD(v124) = sub_226BCA084(v37, v86, v79, v131);
      }

      else
      {
        LODWORD(v124) = HIBYTE(v109) & 1;
      }

      v93 = v121;
      v92 = v122;

      (*(v112 + 8))(v79, v113);
      (*(v93 + 8))(v120, v92);
      [v37 setLastModifiedValue_];
      v94 = v123;
      sub_226D6749C();
      v95 = v115;
      sub_226D68F1C();
      v91(v94, v114);
      v96 = sub_226D6D3EC();
      v90(v95, v127);
      [v37 setArchiveDate_];

      memset(v130, 0, sizeof(v130));
      sub_226B42C34(v37, v131);

      sub_226AFD62C(v130);
      sub_226AC47B0(v128, &unk_27D7A62F8, &unk_226D73B70);
      (*(v103 + 8))(v125, v104);
    }

    return v37;
  }

  *&v130[0] = 0;
  *(&v130[0] + 1) = 0xE000000000000000;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000018, 0x8000000226D82370);
  sub_226D6EFBC();
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226BBEE64()
{
  sub_226AC47B0((v0 + 4), &qword_27D7A7790, &unk_226D79770);
  sub_226AC47B0((v0 + 9), &qword_27D7A6910, &unk_226D721C0);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  sub_226AC47B0((v0 + 19), &qword_27D7A6FA0, &qword_226D79780);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 29);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 34);
  v1 = v0[40];

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult()
{
  result = qword_27D7A7948;
  if (!qword_27D7A7948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226BBEFE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7798, &unk_226D75570);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BBF058(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult();
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_226BBF0BC(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = a10;
  v28 = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v26);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a6, a10);
  v20 = swift_allocObject();
  *(v20 + 312) = 0xD000000000000018;
  *(v20 + 320) = 0x8000000226D81BA0;
  sub_226AC484C(a1, v20 + 232);
  sub_226AC484C(a2, v20 + 272);
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v21 = *(a5 + 16);
  *(v20 + 72) = *a5;
  *(v20 + 88) = v21;
  *(v20 + 104) = *(a5 + 32);
  sub_226AC484C(&v26, v20 + 112);
  v22 = *(a7 + 16);
  *(v20 + 32) = *a7;
  *(v20 + 48) = v22;
  v23 = *a8;
  *(v20 + 168) = a8[1];
  v24 = a8[3];
  *(v20 + 184) = a8[2];
  *(v20 + 200) = v24;
  *(v20 + 216) = a8[4];
  *(v20 + 64) = *(a7 + 32);
  *(v20 + 152) = v23;
  return v20;
}

unint64_t sub_226BBF204()
{
  result = qword_27D7A66D8;
  if (!qword_27D7A66D8)
  {
    sub_226D6D4AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A66D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManagedOrderImporter.Options(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
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

uint64_t storeEnumTagSinglePayload for ManagedOrderImporter.Options(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_226BBF30C()
{
  sub_226BBF380();
  if (v0 <= 0x3F)
  {
    sub_226BBF404();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_226BBF380()
{
  if (!qword_27D7A7958)
  {
    sub_226D6751C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A7798, &unk_226D75570);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27D7A7958);
    }
  }
}

void sub_226BBF404()
{
  if (!qword_27D7A7960)
  {
    sub_226D6751C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D7A7960);
    }
  }
}

uint64_t sub_226BBF46C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_226D6F2FC();
  if (v2)
  {
    MEMORY[0x22AA8B3B0](1);
    sub_226D6E42C();
    sub_226D6E42C();
  }

  else
  {
    MEMORY[0x22AA8B3B0](0);
  }

  return sub_226D6F35C();
}

uint64_t sub_226BBF4F8()
{
  if (!v0[1])
  {
    return MEMORY[0x22AA8B3B0](0);
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = *v0;
  MEMORY[0x22AA8B3B0](1);
  sub_226D6E42C();

  return sub_226D6E42C();
}

uint64_t sub_226BBF590()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_226D6F2FC();
  if (v2)
  {
    MEMORY[0x22AA8B3B0](1);
    sub_226D6E42C();
    sub_226D6E42C();
  }

  else
  {
    MEMORY[0x22AA8B3B0](0);
  }

  return sub_226D6F35C();
}

uint64_t sub_226BBF618(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = a2[2];
  v8 = a2[3];
  v9 = *a1 == *a2 && v3 == v4;
  if (v9 || (v10 = sub_226D6F21C(), result = 0, (v10 & 1) != 0))
  {
    if (v5 != v7 || v6 != v8)
    {

      return sub_226D6F21C();
    }

    return 1;
  }

  return result;
}

uint64_t sub_226BBF6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X5>, _BYTE *a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66D0, &unk_226D75B80);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v39 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v26 = &v39 - v25;
  if (v24)
  {
    return sub_226BBFAE0(a1, v24, a2, a3, a4, a5);
  }

  v28 = v5;
  v29 = v23;
  sub_226D69D0C();
  v30 = sub_226BDD96C(v14, a4);
  v39 = *(v29 + 48);
  v40 = v30;
  sub_226AFD80C(v14, &v26[v39], &qword_27D7A8BE0, &unk_226D718F0);
  v31 = *(v29 + 48);
  v32 = v5[10];
  v33 = v28[11];
  v34 = __swift_project_boxed_opaque_existential_1(v28 + 7, v28[10]);
  v41[3] = v32;
  v41[4] = *(v33 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  (*(*(v32 - 8) + 16))(boxed_opaque_existential_1, v34, v32);
  LOBYTE(v32) = sub_226B5A79C(&v22[v31]);
  sub_226AFD7B8(v41);
  LOBYTE(v33) = v32 & 1;
  *v22 = v32 & 1;
  v36 = type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata(0);
  sub_226AFD80C(&v26[v39], &a5[v36[5]], &qword_27D7A8BE0, &unk_226D718F0);
  sub_226AFD80C(v22, v19, &qword_27D7A66D0, &unk_226D75B80);
  v37 = *(v29 + 48);
  *a5 = v40 & 1;
  a5[v36[6]] = v33;
  sub_226AFD80C(&v19[v37], &a5[v36[7]], &qword_27D7A8BE0, &unk_226D718F0);
  v38 = type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v38 - 8) + 56))(a5, 0, 1, v38);
}

uint64_t sub_226BBFAE0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v117 = a5;
  v116 = a4;
  v119 = a6;
  v109 = type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata(0);
  v9 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v111 = v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A08, &qword_226D72540);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v107 = v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v106 = v98 - v16;
  MEMORY[0x28223BE20](v15);
  v113 = v98 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v104 = v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v108 = v98 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v112 = v98 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v105 = v98 - v27;
  MEMORY[0x28223BE20](v26);
  v110 = v98 - v28;
  v29 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = v98 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = v98 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
  inited = swift_initStackObject();
  v114 = xmmword_226D70840;
  *(inited + 16) = xmmword_226D70840;
  v115 = a1;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v118 = a2;

  v41 = sub_226B1EC00(inited);
  swift_setDeallocating();
  sub_226BC751C(inited + 32);
  v42 = a3;
  v43 = a3;
  v44 = v116;
  v45 = v117;
  sub_226BDF504(v41, v43, v116, v117);
  v103 = v36;
  v101 = v33;
  v102 = v38;

  sub_226D6990C();
  v46 = v44;
  v100 = sub_226D6985C();

  sub_226D6B1CC();
  v47 = v115;
  v48 = v118;
  v49 = sub_226D6B18C();
  if (v49 | v100)
  {
    v99 = v49;
    v98[2] = sub_226D69D0C();
    v98[1] = v39;
    v59 = swift_initStackObject();
    v60 = v47;
    v61 = v59;
    *(v59 + 16) = v114;
    *(v59 + 32) = v60;
    v62 = v59 + 32;
    *(v59 + 40) = v48;

    v63 = sub_226B1EC00(v61);
    swift_setDeallocating();
    sub_226BC751C(v62);
    v64 = v103;
    v65 = v63;
    v66 = v45;
    sub_226BDBB64(v65, v42, v46, v45, v103);

    sub_226BC5B18(v64, v102, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
    v67 = swift_initStackObject();
    *(v67 + 16) = v114;
    *(v67 + 32) = v115;
    *(v67 + 40) = v48;

    v68 = sub_226B1EC00(v67);
    swift_setDeallocating();
    sub_226BC751C(v67 + 32);
    v69 = v113;
    sub_226BDCB08(v68, v42, v46, v66, v113);

    v70 = v106;
    sub_226AC40E8(v69, v106, &qword_27D7A6A08, &qword_226D72540);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A00, &qword_226D72538);
    v72 = *(*(v71 - 8) + 48);
    if (v72(v70, 1, v71) == 1)
    {
      sub_226AC47B0(v70, &qword_27D7A6A08, &qword_226D72540);
      LODWORD(v118) = 0;
    }

    else
    {
      LODWORD(v118) = *v70;
      v73 = *(v71 + 48);
      v74 = sub_226D6D4AC();
      v75 = &v70[v73];
      v69 = v113;
      (*(*(v74 - 8) + 8))(v75, v74);
    }

    v76 = v109;
    v77 = v110;
    v78 = v107;
    sub_226AFD80C(v69, v107, &qword_27D7A6A08, &qword_226D72540);
    if (v72(v78, 1, v71) == 1)
    {
      sub_226AC47B0(v78, &qword_27D7A6A08, &qword_226D72540);
      v79 = sub_226D6D4AC();
      v80 = v105;
      (*(*(v79 - 8) + 56))(v105, 1, 1, v79);
    }

    else
    {
      v81 = *(v71 + 48);
      v79 = sub_226D6D4AC();
      v82 = *(v79 - 8);
      v83 = v78 + v81;
      v80 = v105;
      (*(v82 + 32))(v105, v83, v79);
      (*(v82 + 56))(v80, 0, 1, v79);
    }

    sub_226AFD80C(v80, v77, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226BC4428(v102, v101, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
    sub_226AC40E8(v77, v112, &qword_27D7A8BE0, &unk_226D718F0);
    v84 = v76[9];
    sub_226D6D4AC();
    v85 = *(*(v79 - 8) + 56);
    v86 = v111;
    v85(&v111[v84], 1, 1, v79);
    v117 = v76[11];
    v85((v86 + v117), 1, 1, v79);
    if (v99)
    {
      *v86 = [v99 objectID];
      v87 = v100;
      if (!v100)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v86 = 0;
      v87 = v100;
      if (!v100)
      {
        v99 = 0;
LABEL_22:
        *(v86 + 8) = 0;
        *(v86 + 16) = 0;
        v93 = v101;
        sub_226BC4428(v101, v86 + v76[7], type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
        *(v86 + v76[8]) = 0;

        sub_226BC4490(v93, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
        sub_226AC47B0(v77, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226BC4490(v102, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
        v94 = v108;
        v85(v108, 1, 1, v79);
        v92 = v94;
LABEL_23:
        v95 = v112;
        sub_226AFD680(v92, v86 + v84, &qword_27D7A8BE0, &unk_226D718F0);
        *(v86 + v76[10]) = v118;
        sub_226AFD680(v95, v86 + v117, &qword_27D7A8BE0, &unk_226D718F0);
        v96 = v119;
        sub_226BC5B18(v86, v119, type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata);
        v97 = type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata(0);
        swift_storeEnumTagMultiPayload();
        return (*(*(v97 - 8) + 56))(v96, 0, 1, v97);
      }
    }

    *(v86 + 8) = [v87 objectID];

    v88 = 1;
    *(v86 + 16) = 1;
    sub_226BC4428(v101, v86 + v76[7], type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
    *(v86 + v76[8]) = [v87 isMarkedAsComplete];
    v89 = [v87 isMarkedAsCompleteModificationDate];
    if (v89)
    {
      v90 = v104;
      v91 = v89;
      sub_226D6D45C();

      v88 = 0;
    }

    else
    {
      v91 = v87;
      v90 = v104;
    }

    sub_226BC4490(v101, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
    sub_226AC47B0(v110, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226BC4490(v102, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
    v85(v90, v88, 1, v79);
    v92 = v108;
    sub_226AFD80C(v90, v108, &qword_27D7A8BE0, &unk_226D718F0);
    v86 = v111;
    v76 = v109;
    goto LABEL_23;
  }

  if (qword_28105F6A0 != -1)
  {
    swift_once();
  }

  v50 = sub_226D6E07C();
  __swift_project_value_buffer(v50, qword_28105F6A8);

  v51 = sub_226D6E05C();
  v52 = sub_226D6E9CC();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = v47;
    v56 = v54;
    v120 = v54;
    *v53 = 136315394;
    *(v53 + 4) = sub_226AC4530(v55, v48, &v120);
    *(v53 + 12) = 2080;
    *(v53 + 14) = sub_226AC4530(v42, v44, &v120);
    _os_log_impl(&dword_226AB4000, v51, v52, "Neither cascade nor extracted order found for messageID: %s orderNumber: %s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v56, -1, -1);
    MEMORY[0x22AA8BEE0](v53, -1, -1);
  }

  v57 = type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata(0);
  return (*(*(v57 - 8) + 56))(v119, 1, 1, v57);
}

void sub_226BC0FB8(uint64_t *a1, void *a2)
{
  v396 = a2;
  v398 = a1;
  v407 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v385 = &v346 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v378 = &v346 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6678, &unk_226D71890);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v377 = &v346 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v376 = &v346 - v13;
  v379 = _s7ChangesV11FulfillmentVMa(0);
  v364 = *(v379 - 8);
  v14 = *(v364 + 64);
  v15 = MEMORY[0x28223BE20](v379);
  v373 = &v346 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v375 = &v346 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6688, &unk_226D718A0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v363 = &v346 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v374 = &v346 - v22;
  v359 = sub_226D677FC();
  v358 = *(v359 - 8);
  v23 = *(v358 + 64);
  v24 = MEMORY[0x28223BE20](v359);
  v351 = &v346 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v355 = &v346 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6690, &qword_226D74720);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v356 = &v346 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v353 = &v346 - v31;
  v32 = _s7ChangesVMa(0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v350 = &v346 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v357 = &v346 - v36;
  v362 = sub_226D6A6BC();
  v360 = *(v362 - 8);
  v37 = *(v360 + 64);
  MEMORY[0x28223BE20](v362);
  v361 = (&v346 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v372 = sub_226D6D71C();
  v371 = *(v372 - 8);
  v39 = *(v371 + 64);
  MEMORY[0x28223BE20](v372);
  v368 = &v346 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v370 = sub_226D6D6DC();
  v369 = *(v370 - 8);
  v41 = *(v369 + 64);
  MEMORY[0x28223BE20](v370);
  v367 = &v346 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v400 = sub_226D6D4AC();
  v397 = *(v400 - 8);
  v43 = *(v397 + 64);
  v44 = MEMORY[0x28223BE20](v400);
  v46 = &v346 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v44);
  v394 = &v346 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v346 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v395 = &v346 - v53;
  MEMORY[0x28223BE20](v52);
  v366 = &v346 - v54;
  v352 = type metadata accessor for ManagedExtractedOrderTracker.TrackingResult(0);
  v55 = *(*(v352 - 8) + 64);
  MEMORY[0x28223BE20](v352);
  v354 = (&v346 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v382 = type metadata accessor for ManagedExtractedOrderTracker(0);
  v57 = *(*(v382 - 8) + 64);
  MEMORY[0x28223BE20](v382);
  v384 = &v346 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v381 = _s21NotificationSchedulerVMa();
  v380 = *(v381 - 1);
  v59 = v380[8];
  MEMORY[0x28223BE20](v381);
  v383 = &v346 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6640, &qword_226D75B50);
  v62 = *(*(v61 - 8) + 64);
  v63 = MEMORY[0x28223BE20](v61 - 8);
  v65 = &v346 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v388 = &v346 - v66;
  v392 = sub_226D696EC();
  v391 = *(v392 - 1);
  v67 = v391[8];
  v68 = MEMORY[0x28223BE20](v392);
  v70 = &v346 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v387 = &v346 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7980, &qword_226D75B58);
  v73 = *(*(v72 - 8) + 64);
  v74 = MEMORY[0x28223BE20](v72 - 8);
  v76 = &v346 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v78 = &v346 - v77;
  v389 = sub_226D6785C();
  v390 = *(v389 - 8);
  v79 = *(v390 + 64);
  v80 = MEMORY[0x28223BE20](v389);
  v365 = &v346 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x28223BE20](v80);
  v84 = &v346 - v83;
  MEMORY[0x28223BE20](v82);
  v386 = &v346 - v85;
  v86 = type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation(0);
  v87 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v89 = &v346 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226BC4428(v398, v89, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v136 = *v89;
      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7988, &qword_226D75B60);
      v138 = v397;
      v139 = v394;
      v140 = v400;
      (*(v397 + 32))(v394, &v89[*(v137 + 48)], v400);
      if (qword_28105F6A0 != -1)
      {
        swift_once();
      }

      v141 = sub_226D6E07C();
      __swift_project_value_buffer(v141, qword_28105F6A8);
      (*(v138 + 16))(v46, v139, v140);
      v142 = sub_226D6E05C();
      v143 = sub_226D6E9EC();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = v138;
        v145 = swift_slowAlloc();
        v398 = swift_slowAlloc();
        *&v402 = v398;
        *v145 = 67109378;
        *(v145 + 4) = v136;
        *(v145 + 8) = 2080;
        sub_226BC7A6C(&qword_281062B80, 255, MEMORY[0x277CC9578]);
        v146 = sub_226D6F1CC();
        v148 = v147;
        v149 = *(v144 + 8);
        LODWORD(v397) = v136;
        v149(v46, v400);
        v139 = v394;
        v150 = sub_226AC4530(v146, v148, &v402);
        v140 = v400;

        *(v145 + 10) = v150;
        v151 = v143;
        v152 = v397;
        _os_log_impl(&dword_226AB4000, v142, v151, "Updating local AutomaticIngestionConsentValue to %{BOOL}d, modificationDate: %s", v145, 0x12u);
        v153 = v398;
        __swift_destroy_boxed_opaque_existential_0Tm(v398);
        MEMORY[0x22AA8BEE0](v153, -1, -1);
        MEMORY[0x22AA8BEE0](v145, -1, -1);
      }

      else
      {

        v149 = *(v138 + 8);
        v152 = v136;
        v149(v46, v140);
      }

      v165 = v393[10];
      v166 = v393[11];
      v167 = __swift_project_boxed_opaque_existential_1(v393 + 7, v165);
      *(&v403 + 1) = v165;
      *&v404 = *(v166 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v402);
      (*(*(v165 - 8) + 16))(boxed_opaque_existential_1, v167, v165);
      sub_226B5A9C8(v152, v139);
      v149(v139, v140);
      sub_226AFD7B8(&v402);
      goto LABEL_78;
    }

    v103 = *v89;
    LODWORD(v394) = v89[8];
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7990, &qword_226D75B68);
    v105 = v397;
    v106 = &v89[*(v104 + 64)];
    v107 = v395;
    v108 = v400;
    (*(v397 + 32))(v395, v106, v400);
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v109 = sub_226D6E07C();
    v110 = __swift_project_value_buffer(v109, qword_28105F6A8);
    v392 = *(v105 + 16);
    v392(v51, v107, v108);
    v111 = v103;
    v393 = v110;
    v112 = sub_226D6E05C();
    v113 = sub_226D6E9EC();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v391 = swift_slowAlloc();
      *&v402 = v391;
      *v114 = 138412802;
      *(v114 + 4) = v111;
      *v115 = v111;
      *(v114 + 12) = 1024;
      *(v114 + 14) = v394;
      *(v114 + 18) = 2080;
      sub_226BC7A6C(&qword_281062B80, 255, MEMORY[0x277CC9578]);
      v116 = v111;
      v117 = sub_226D6F1CC();
      v119 = v118;
      v398 = *(v397 + 8);
      (v398)(v51, v400);
      v120 = sub_226AC4530(v117, v119, &v402);

      *(v114 + 20) = v120;
      _os_log_impl(&dword_226AB4000, v112, v113, "Setting isMarkedAsComplete for an extracted order: %@ with value: %{BOOL}d modificationDate: %s", v114, 0x1Cu);
      sub_226AC47B0(v115, &qword_27D7A5FB0, &qword_226D70870);
      v121 = v115;
      v105 = v397;
      MEMORY[0x22AA8BEE0](v121, -1, -1);
      v122 = v391;
      __swift_destroy_boxed_opaque_existential_0Tm(v391);
      MEMORY[0x22AA8BEE0](v122, -1, -1);
      v123 = v114;
      v107 = v395;
      MEMORY[0x22AA8BEE0](v123, -1, -1);
    }

    else
    {

      v398 = *(v105 + 8);
      (v398)(v51, v108);
    }

    v154 = v396;
    sub_226D6990C();
    v155 = v399;
    v156 = sub_226D698AC();
    if (v155)
    {
      v157 = v155;
    }

    else
    {
      v189 = v156;
      v190 = [v156 isMarkedAsComplete];
      if (v394 != v190)
      {
        v399 = v111;
        v191 = v385;
        v192 = v400;
        v392(v385, v107, v400);
        (*(v105 + 56))(v191, 0, 1, v192);
        sub_226D698BC();
        sub_226AC47B0(v191, &qword_27D7A8BE0, &unk_226D718F0);
        v405 = 0u;
        v406 = 0u;
        v403 = 0u;
        v404 = 0u;
        v402 = 0u;
        sub_226B42120(v189, v154);
        sub_226AFD62C(&v402);
        v111 = v399;
      }

      *&v402 = 0;
      if ([v154 save_])
      {
        v230 = v402;
        (v398)(v107, v400);

        goto LABEL_78;
      }

      v231 = v402;
      v157 = sub_226D6D04C();

      swift_willThrow();
    }

    v158 = v157;
    v159 = sub_226D6E05C();
    v160 = sub_226D6E9CC();

    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      *v161 = 138412290;
      v163 = v157;
      v164 = _swift_stdlib_bridgeErrorToNSError();
      *(v161 + 4) = v164;
      *v162 = v164;
      _os_log_impl(&dword_226AB4000, v159, v160, "Failed to mark order as complete with error: %@", v161, 0xCu);
      sub_226AC47B0(v162, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v162, -1, -1);
      MEMORY[0x22AA8BEE0](v161, -1, -1);
    }

    (v398)(v107, v400);
    goto LABEL_78;
  }

  if (EnumCaseMultiPayload)
  {
    v124 = *v89;
    sub_226D6990C();
    v125 = v396;
    v126 = v399;
    v127 = sub_226D698AC();
    if (!v126)
    {
      v178 = qword_28105F6A0;
      v179 = v127;
      if (v178 != -1)
      {
        swift_once();
      }

      v180 = sub_226D6E07C();
      __swift_project_value_buffer(v180, qword_28105F6A8);
      v181 = v124;
      v182 = sub_226D6E05C();
      v183 = sub_226D6E9EC();

      if (os_log_type_enabled(v182, v183))
      {
        v184 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        *v184 = 138412290;
        *(v184 + 4) = v181;
        *v185 = v181;
        v186 = v181;
        _os_log_impl(&dword_226AB4000, v182, v183, "Deleting an extracted order: %@", v184, 0xCu);
        sub_226AC47B0(v185, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v185, -1, -1);
        v187 = v184;
        v125 = v396;
        MEMORY[0x22AA8BEE0](v187, -1, -1);
      }

      *&v404 = 0;
      v402 = 0u;
      v403 = 0u;
      sub_226AC47B0(&v402, &unk_27D7A7660, &unk_226D7B420);
      sub_226BB2630((v393 + 2), &v402);
      v188 = sub_226CCAA84(v179, v125);
      v207 = v206;
      v208 = v188;

      v401 = 0;
      if ([v125 save_])
      {
        v209 = v401;
        sub_226CCAC20(v208, v207);

        sub_226AFBB78(&v402);
      }

      else
      {
        v232 = v401;

        v233 = sub_226D6D04C();

        swift_willThrow();
        sub_226AFBB78(&v402);
        v234 = v181;
        v235 = v233;
        v236 = sub_226D6E05C();
        v237 = sub_226D6E9CC();

        if (os_log_type_enabled(v236, v237))
        {
          v238 = swift_slowAlloc();
          v239 = swift_slowAlloc();
          *v238 = 138412546;
          *(v238 + 4) = v234;
          *v239 = v234;
          *(v238 + 12) = 2112;
          v234 = v234;
          v240 = v233;
          v241 = _swift_stdlib_bridgeErrorToNSError();
          *(v238 + 14) = v241;
          v239[1] = v241;
          _os_log_impl(&dword_226AB4000, v236, v237, "Failed to delete extracted order %@, error: %@", v238, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FB0, &qword_226D70870);
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v239, -1, -1);
          MEMORY[0x22AA8BEE0](v238, -1, -1);
        }

        else
        {
        }
      }

      goto LABEL_78;
    }

    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v128 = sub_226D6E07C();
    __swift_project_value_buffer(v128, qword_28105F6A8);
    v129 = v126;
    v130 = sub_226D6E05C();
    v131 = sub_226D6E9CC();

    if (!os_log_type_enabled(v130, v131))
    {

      goto LABEL_78;
    }

    v132 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    *v132 = 138412290;
    v134 = v126;
    v135 = _swift_stdlib_bridgeErrorToNSError();
    *(v132 + 4) = v135;
    *v133 = v135;
    _os_log_impl(&dword_226AB4000, v130, v131, "Failed to fetch extracted order object with error: %@", v132, 0xCu);
    sub_226AC47B0(v133, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v133, -1, -1);
    MEMORY[0x22AA8BEE0](v132, -1, -1);

    v102 = v126;
    goto LABEL_18;
  }

  v91 = *v89;
  sub_226D6B1CC();
  v92 = v399;
  v93 = sub_226D6B1BC();
  if (v92)
  {
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v94 = sub_226D6E07C();
    __swift_project_value_buffer(v94, qword_28105F6A8);
    v95 = v92;
    v96 = sub_226D6E05C();
    v97 = sub_226D6E9CC();

    if (!os_log_type_enabled(v96, v97))
    {

      goto LABEL_78;
    }

    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *v98 = 138412290;
    v100 = v92;
    v101 = _swift_stdlib_bridgeErrorToNSError();
    *(v98 + 4) = v101;
    *v99 = v101;
    _os_log_impl(&dword_226AB4000, v96, v97, "Failed to fetch extracted order object with error: %@", v98, 0xCu);
    sub_226AC47B0(v99, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v99, -1, -1);
    MEMORY[0x22AA8BEE0](v98, -1, -1);

    v102 = v92;
LABEL_18:

LABEL_78:
    v276 = *MEMORY[0x277D85DE8];
    return;
  }

  v398 = v91;
  v169 = v93;
  sub_226D696FC();
  sub_226AC40E8(v78, v76, &qword_27D7A7980, &qword_226D75B58);
  v170 = v391;
  v171 = v392;
  if ((v391[6])(v76, 1, v392) == 1)
  {
    sub_226AC47B0(v76, &qword_27D7A7980, &qword_226D75B58);
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v172 = sub_226D6E07C();
    __swift_project_value_buffer(v172, qword_28105F6A8);
    v173 = sub_226D6E05C();
    v174 = sub_226D6E9CC();
    v175 = os_log_type_enabled(v173, v174);
    v176 = v398;
    if (v175)
    {
      v177 = swift_slowAlloc();
      *v177 = 0;
      _os_log_impl(&dword_226AB4000, v173, v174, "Failed to create a cascade order from a managed cascade order", v177, 2u);
      MEMORY[0x22AA8BEE0](v177, -1, -1);
    }

LABEL_52:
    sub_226AC47B0(v78, &qword_27D7A7980, &qword_226D75B58);
    goto LABEL_78;
  }

  v395 = v169;
  v394 = v78;
  v193 = v387;
  (v170[4])(v387, v76, v171);
  (v170[2])(v70, v193, v171);
  v194 = v388;
  sub_226D677CC();
  sub_226AC40E8(v194, v65, &qword_27D7A6640, &qword_226D75B50);
  v195 = v390;
  v196 = v389;
  if ((*(v390 + 48))(v65, 1, v389) == 1)
  {
    sub_226AC47B0(v65, &qword_27D7A6640, &qword_226D75B50);
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v197 = sub_226D6E07C();
    __swift_project_value_buffer(v197, qword_28105F6A8);
    v198 = sub_226D6E05C();
    v199 = sub_226D6E9CC();
    v200 = os_log_type_enabled(v198, v199);
    v201 = v388;
    v202 = v387;
    v78 = v394;
    v203 = v395;
    v204 = v398;
    if (v200)
    {
      v205 = swift_slowAlloc();
      *v205 = 0;
      _os_log_impl(&dword_226AB4000, v198, v199, "Failed to create an extracted order from a cascade order", v205, 2u);
      MEMORY[0x22AA8BEE0](v205, -1, -1);
    }

    sub_226AC47B0(v201, &qword_27D7A6640, &qword_226D75B50);
    (v391[1])(v202, v392);
    goto LABEL_52;
  }

  v399 = 0;
  (*(v195 + 32))(v84, v65, v196);
  v210 = *(v195 + 16);
  v348 = v195 + 16;
  v347 = v210;
  v210(v386, v84, v196);
  sub_226D693FC();
  v385 = sub_226D67B0C();

  v211 = *(v195 + 8);
  v390 = v195 + 8;
  v349 = v211;
  v211(v84, v196);
  sub_226AC47B0(v194, &qword_27D7A6640, &qword_226D75B50);
  (v170[1])(v193, v171);
  sub_226AC47B0(v394, &qword_27D7A7980, &qword_226D75B58);
  if (qword_28105F6A0 != -1)
  {
    swift_once();
  }

  v212 = sub_226D6E07C();
  v213 = __swift_project_value_buffer(v212, qword_28105F6A8);
  v214 = v398;
  v394 = v213;
  v215 = sub_226D6E05C();
  v216 = sub_226D6E9EC();

  if (os_log_type_enabled(v215, v216))
  {
    v217 = swift_slowAlloc();
    v218 = swift_slowAlloc();
    *v217 = 138412290;
    *(v217 + 4) = v214;
    *v218 = v214;
    v219 = v214;
    _os_log_impl(&dword_226AB4000, v215, v216, "Tracking a cascade order: %@", v217, 0xCu);
    sub_226AC47B0(v218, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v218, -1, -1);
    MEMORY[0x22AA8BEE0](v217, -1, -1);
  }

  v398 = v214;

  v220 = v393;
  sub_226AE532C((v393 + 7), &v402);
  sub_226AE532C((v220 + 12), &v401);
  v221 = v383;
  sub_226B836E0(&v402, &v401, v383);
  v222 = v384;
  sub_226BB2630((v220 + 2), v384);
  v223 = *(v382 + 20);
  sub_226BC4428(v221, v222 + v223, _s21NotificationSchedulerVMa);
  (v380[7])(v222 + v223, 0, 1, v381);
  v224 = v386;
  sub_226D677DC();
  sub_226D6990C();
  v225 = v396;
  v226 = v399;
  v227 = sub_226D6986C();
  v399 = v226;
  if (v226)
  {

    sub_226BC4490(v222, type metadata accessor for ManagedExtractedOrderTracker);
    sub_226BC4490(v221, _s21NotificationSchedulerVMa);
    v228 = v395;
    v229 = v399;
    goto LABEL_74;
  }

  v242 = v227;

  sub_226D6B31C();
  v347(v365, v224, v389);
  v243 = v225;
  v244 = sub_226D6B2CC();
  v405 = 0u;
  v406 = 0u;
  v403 = 0u;
  v404 = 0u;
  v402 = 0u;
  v228 = v395;
  if (v242)
  {
    v245 = v242;
    v396 = [v245 orderContent];
    v246 = v366;
    sub_226D6D46C();
    v247 = v367;
    sub_226D6D66C();
    v248 = v368;
    sub_226D6D70C();
    sub_226D6982C();
    (*(v371 + 8))(v248, v372);
    (*(v369 + 8))(v247, v370);
    (*(v397 + 8))(v246, v400);
    sub_226D677DC();
    v249 = sub_226D6E36C();

    [v245 setTrackedOrderIdentifier_];

    [v228 setExtractedOrder_];
    v250 = v384;
    v251 = v399;
    sub_226B4EFDC(v245, v385, v243);
    if (v251)
    {

      sub_226AFD62C(&v402);
      sub_226BC4490(v250, type metadata accessor for ManagedExtractedOrderTracker);
      sub_226BC4490(v383, _s21NotificationSchedulerVMa);
      v224 = v386;
      v229 = v251;
      v228 = v395;
      goto LABEL_74;
    }

    v263 = v396;
    v381 = v244;

    sub_226B42120(v245, v243);
    v277 = v263;
    v278 = v263;
    v279 = v243;
    v280 = v278;
    v281 = v353;
    sub_226D6B2EC();
    (*(v358 + 56))(v281, 0, 1, v359);
    v282 = v381;
    v283 = v355;
    sub_226D6B2EC();
    v284 = v283;
    v285 = v279;
    sub_226D1F888(v277, 1, v281, v282, 1, v284, v357);
    [v279 deleteObject_];

    sub_226AFD62C(&v402);
    v286 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840) + 48);
    v287 = v354;
    *v354 = v245;
    sub_226BC5B18(v357, v287 + v286, _s7ChangesVMa);
    swift_storeEnumTagMultiPayload();
    v288 = v389;
    v224 = v386;
    v228 = v395;
    goto LABEL_112;
  }

  v252 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v253 = v366;
  sub_226D6D46C();
  v254 = v367;
  sub_226D6D66C();
  v255 = v368;
  sub_226D6D70C();
  sub_226D6982C();
  (*(v371 + 8))(v255, v372);
  (*(v369 + 8))(v254, v370);
  (*(v397 + 8))(v253, v400);
  sub_226D677DC();
  v256 = sub_226D6E36C();

  [v252 setTrackedOrderIdentifier_];

  sub_226D6A72C();
  v257 = v361;
  *v361 = v252;
  (*(v360 + 104))(v257, *MEMORY[0x277CC7C58], v362);
  v258 = v243;
  v259 = v252;
  v260 = sub_226D6A6CC();
  [v259 setDashboardItem_];

  [v228 setExtractedOrder_];
  v261 = v384;
  v262 = v399;
  sub_226B4EFDC(v259, v385, v258);
  if (v262)
  {

    sub_226AFD62C(&v402);
    sub_226BC4490(v261, type metadata accessor for ManagedExtractedOrderTracker);
    sub_226BC4490(v383, _s21NotificationSchedulerVMa);
    v224 = v386;
    v229 = v262;
    goto LABEL_74;
  }

  v381 = v244;

  sub_226B42120(v259, v258);
  v372 = v259;
  v380 = v243;
  (*(v358 + 56))(v356, 1, 1, v359);
  sub_226D6B2EC();
  v289 = MEMORY[0x277D84F90];
  v371 = sub_226B22808(MEMORY[0x277D84F90]);
  v290 = sub_226D6B30C();
  v291 = sub_226B22808(v289);
  v292 = v290;
  if (v290 >> 62)
  {
    v293 = sub_226D6EDFC();
    v292 = v290;
  }

  else
  {
    v293 = *((v290 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v288 = v389;
  if (!v293)
  {
LABEL_111:

    v337 = v353;
    sub_226AC40E8(v356, v353, &qword_27D7A6690, &qword_226D74720);
    v338 = v358;
    v339 = v355;
    v340 = v351;
    v341 = v359;
    (*(v358 + 16))(v355, v351, v359);
    sub_226D20CB0(v371, 0, v337, v291, 1, v339, v350);

    (*(v338 + 8))(v340, v341);
    sub_226AC47B0(v356, &qword_27D7A6690, &qword_226D74720);
    sub_226AFD62C(&v402);
    v342 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840) + 48);
    v287 = v354;
    *v354 = v372;
    sub_226BC5B18(v350, v287 + v342, _s7ChangesVMa);
    swift_storeEnumTagMultiPayload();
    v228 = v395;
    v224 = v386;
    v285 = v380;
LABEL_112:
    *&v402 = 0;
    if ([v285 save_])
    {
      v343 = v402;
      v344 = v384;
      sub_226B4E744(v287);

      sub_226BC4490(v287, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
      sub_226BC4490(v344, type metadata accessor for ManagedExtractedOrderTracker);
      sub_226BC4490(v383, _s21NotificationSchedulerVMa);
      v274 = v224;
      v275 = v288;
LABEL_77:
      v349(v274, v275);
      goto LABEL_78;
    }

    v345 = v402;
    v229 = sub_226D6D04C();

    swift_willThrow();
    sub_226BC4490(v287, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
    sub_226BC4490(v384, type metadata accessor for ManagedExtractedOrderTracker);
    sub_226BC4490(v383, _s21NotificationSchedulerVMa);
LABEL_74:
    v264 = v398;
    v265 = v229;
    v266 = sub_226D6E05C();
    v267 = sub_226D6E9CC();

    if (os_log_type_enabled(v266, v267))
    {
      v268 = swift_slowAlloc();
      v269 = swift_slowAlloc();
      *v268 = 138412546;
      *(v268 + 4) = v264;
      *v269 = v264;
      *(v268 + 12) = 2112;
      v270 = v264;
      v271 = v229;
      v272 = _swift_stdlib_bridgeErrorToNSError();
      *(v268 + 14) = v272;
      v269[1] = v272;
      _os_log_impl(&dword_226AB4000, v266, v267, "Failed to track cascade order %@ with error: %@", v268, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FB0, &qword_226D70870);
      swift_arrayDestroy();
      v273 = v269;
      v224 = v386;
      MEMORY[0x22AA8BEE0](v273, -1, -1);
      MEMORY[0x22AA8BEE0](v268, -1, -1);
    }

    v274 = v224;
    v275 = v389;
    goto LABEL_77;
  }

  v294 = 0;
  v391 = (v292 & 0xC000000000000001);
  v388 = (v292 & 0xFFFFFFFFFFFFFF8);
  v392 = (v364 + 56);
  v387 = (v364 + 48);
  v385 = v292;
  v382 = v293;
  v399 = 0;
  while (1)
  {
    if (v391)
    {
      v297 = MEMORY[0x22AA8AFD0](v294, v292);
    }

    else
    {
      if (v294 >= *(v388 + 2))
      {
        goto LABEL_116;
      }

      v297 = *(v292 + 8 * v294 + 32);
    }

    v298 = v297;
    if (__OFADD__(v294, 1))
    {
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
    }

    v299 = [v297 trackingNumber];
    v400 = v291;
    v393 = (v294 + 1);
    if (v299)
    {
      v300 = v299;
      v396 = sub_226D6E39C();
      v397 = v301;
    }

    else
    {
      v396 = 0;
      v397 = 0;
    }

    v302 = v379;
    v303 = *(v379 + 20);
    v304 = sub_226D6763C();
    v305 = v375;
    (*(*(v304 - 8) + 56))(&v375[v303], 1, 1, v304);
    v306 = *(v302 + 24);
    v307 = sub_226D6760C();
    (*(*(v307 - 8) + 56))(v305 + v306, 1, 1, v307);
    v308 = *(v302 + 28);
    v309 = sub_226D6762C();
    (*(*(v309 - 8) + 56))(v305 + v308, 1, 1, v309);
    v310 = v298;
    sub_226D6C6AC();
    v311 = v376;
    sub_226D6C68C();
    sub_226AFD680(v311, v305 + v303, &qword_27D7A6680, &unk_226D74710);
    v312 = v377;
    sub_226D6C66C();
    sub_226AFD680(v312, v305 + v306, &qword_27D7A6678, &unk_226D71890);
    v313 = v378;
    sub_226D6C67C();

    sub_226AFD680(v313, v305 + v308, &qword_27D7A6670, &qword_226D71888);
    v314 = v374;
    sub_226BC4428(v305, v374, _s7ChangesV11FulfillmentVMa);
    v315 = *v392;
    (*v392)(v314, 0, 1, v302);
    sub_226BC4490(v305, _s7ChangesV11FulfillmentVMa);
    if ((*v387)(v314, 1, v302) == 1)
    {
      sub_226AC47B0(v314, &qword_27D7A6688, &unk_226D718A0);
      v291 = v400;
      v316 = sub_226C2FD40(v396, v397);
      v318 = v317;

      if (v318)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v401 = v291;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226C3788C();
          v291 = v401;
        }

        v320 = *(v291[6] + 16 * v316 + 8);

        v296 = v363;
        sub_226BC5B18(v291[7] + *(v364 + 72) * v316, v363, _s7ChangesV11FulfillmentVMa);
        sub_226D4A50C(v316, v291);

        v295 = 0;
      }

      else
      {

        v295 = 1;
        v296 = v363;
      }

      v315(v296, v295, 1, v379);
      sub_226AC47B0(v296, &qword_27D7A6688, &unk_226D718A0);
      v288 = v389;
      goto LABEL_85;
    }

    sub_226BC5B18(v314, v373, _s7ChangesV11FulfillmentVMa);
    v321 = v400;
    v322 = swift_isUniquelyReferenced_nonNull_native();
    v401 = v321;
    v324 = v396;
    v323 = v397;
    v326 = sub_226C2FD40(v396, v397);
    v327 = v321[2];
    v328 = (v325 & 1) == 0;
    v329 = v327 + v328;
    if (__OFADD__(v327, v328))
    {
      goto LABEL_117;
    }

    v330 = v325;
    if (v321[3] < v329)
    {
      break;
    }

    if (v322)
    {
      if ((v325 & 1) == 0)
      {
        goto LABEL_102;
      }
    }

    else
    {
      sub_226C3788C();
      if ((v330 & 1) == 0)
      {
LABEL_102:
        v291 = v401;
        *(v401 + (v326 >> 6) + 8) |= 1 << v326;
        v333 = (v291[6] + 16 * v326);
        *v333 = v324;
        v333[1] = v323;
        sub_226BC5B18(v373, v291[7] + *(v364 + 72) * v326, _s7ChangesV11FulfillmentVMa);

        v334 = v291[2];
        v335 = __OFADD__(v334, 1);
        v336 = v334 + 1;
        if (v335)
        {
          goto LABEL_118;
        }

        v291[2] = v336;
        goto LABEL_107;
      }
    }

LABEL_106:

    v291 = v401;
    sub_226AFD6E8(v373, *(v401 + 7) + *(v364 + 72) * v326);

LABEL_107:
    v288 = v389;
LABEL_85:
    v292 = v385;
    ++v294;
    if (v393 == v382)
    {
      goto LABEL_111;
    }
  }

  sub_226C30E60(v329, v322);
  v331 = sub_226C2FD40(v324, v323);
  if ((v330 & 1) == (v332 & 1))
  {
    v326 = v331;
    if ((v330 & 1) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_106;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6698, &unk_226D718B0);
  sub_226D6F25C();
  __break(1u);
}

uint64_t sub_226BC417C()
{
  sub_226B4FC54(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  return swift_deallocClassInstance();
}

id sub_226BC41E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_226BC5B80(a1);
  *a2 = result;
  return result;
}

id sub_226BC4218@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

uint64_t sub_226BC4248@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_226BC5C9C(*a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_226BC4280@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = a1[1];
  v5 = *v3;
  return sub_226BBF6E8(*a1, a1[2], a1[3], a2, a3);
}

unint64_t sub_226BC4304()
{
  result = qword_27D7A7968;
  if (!qword_27D7A7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7968);
  }

  return result;
}

uint64_t sub_226BC4358(uint64_t a1, uint64_t a2)
{
  result = sub_226BC7A6C(&qword_27D7A7970, a2, type metadata accessor for ExtractedOrderUserEventMappingModel);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226BC43B4()
{
  result = qword_27D7A7978;
  if (!qword_27D7A7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7978);
  }

  return result;
}

uint64_t sub_226BC4428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226BC4490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226BC44F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v75 = v4;
  v76 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v71 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v72 = &v71 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v73 = &v71 - v12;
  MEMORY[0x28223BE20](v11);
  v74 = &v71 - v13;
  v14 = type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v71 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (&v71 - v23);
  MEMORY[0x28223BE20](v22);
  v26 = (&v71 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A08, &qword_226D75D00);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = &v71 - v30;
  v32 = &v71 + *(v29 + 56) - v30;
  sub_226BC4428(a1, &v71 - v30, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
  sub_226BC4428(a2, v32, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_226BC4428(v31, v24, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
      v34 = *v24;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_11:
        v49 = *v32;
        sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
        v50 = sub_226D6EC3C();

LABEL_24:
        sub_226BC4490(v31, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
        return v50 & 1;
      }
    }

    else
    {
      sub_226BC4428(v31, v26, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
      v34 = *v26;
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_11;
      }
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_226BC4428(v31, v18, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7988, &qword_226D75B60) + 48);
    v52 = swift_getEnumCaseMultiPayload();
    v53 = v76;
    if (v52 != 3)
    {
      (*(v76 + 8))(&v18[v51], v75);
      goto LABEL_18;
    }

    v54 = *v18;
    v55 = *v32;
    v56 = *(v76 + 32);
    v57 = &v18[v51];
    v58 = v72;
    v59 = v75;
    v56(v72, v57, v75);
    v60 = &v32[v51];
    v61 = v59;
    v62 = v71;
    v56(v71, v60, v61);
    if (v54 == v55)
    {
      v50 = sub_226D6D44C();
      v65 = *(v53 + 8);
      v65(v62, v61);
      v65(v58, v61);
      goto LABEL_24;
    }

    v63 = *(v53 + 8);
    v63(v62, v61);
    v63(v58, v61);
LABEL_20:
    sub_226BC4490(v31, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
    goto LABEL_21;
  }

  sub_226BC4428(v31, v21, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
  v34 = *v21;
  v35 = v21[8];
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7990, &qword_226D75B68) + 64);
  v37 = swift_getEnumCaseMultiPayload();
  v38 = v76;
  if (v37 == 2)
  {
    LODWORD(v72) = v35;
    v39 = *v32;
    LODWORD(v71) = v32[8];
    v40 = *(v76 + 32);
    v41 = &v21[v36];
    v43 = v74;
    v42 = v75;
    v40(v74, v41, v75);
    v44 = &v32[v36];
    v45 = v42;
    v46 = v73;
    v40(v73, v44, v45);
    sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
    v47 = sub_226D6EC3C();

    if (v47)
    {
      if (v72 == v71)
      {
        v66 = v74;
        v67 = sub_226D6D44C();
        v68 = v46;
        v50 = v67;
        v69 = *(v76 + 8);
        v69(v68, v45);
        v69(v66, v45);
        goto LABEL_24;
      }

      v48 = *(v76 + 8);
      v48(v46, v45);
      v48(v74, v45);
    }

    else
    {
      v64 = *(v38 + 8);
      v64(v46, v45);
      v64(v43, v45);
    }

    goto LABEL_20;
  }

  (*(v76 + 8))(&v21[v36], v75);
LABEL_16:

LABEL_18:
  sub_226AC47B0(v31, &qword_27D7A7A08, &qword_226D75D00);
LABEL_21:
  v50 = 0;
  return v50 & 1;
}