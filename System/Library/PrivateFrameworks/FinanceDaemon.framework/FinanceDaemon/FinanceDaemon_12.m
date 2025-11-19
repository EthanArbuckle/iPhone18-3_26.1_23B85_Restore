unint64_t sub_226BDD96C(uint64_t a1, void *a2)
{
  v94 = a2;
  v83 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v79 = &v78 - v4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68A8, &qword_226D72090);
  v5 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v82 = &v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68B0, qword_226D72098);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v78 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v85 = &v78 - v12;
  MEMORY[0x28223BE20](v11);
  v86 = &v78 - v13;
  v99 = sub_226D69CAC();
  v98 = *(v99 - 8);
  v14 = v98;
  v15 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_226D69CBC();
  v92 = sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  swift_getKeyPath();
  v91 = sub_226D6E9FC();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_226D71F40;
  v19 = *MEMORY[0x277CC7A38];
  v96 = *(v14 + 104);
  v80 = v19;
  v96(v17);
  v87 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v20 = swift_allocObject();
  v88 = xmmword_226D70840;
  *(v20 + 16) = xmmword_226D70840;
  v21 = sub_226D69C9C();
  v23 = v22;
  *(v20 + 56) = MEMORY[0x277D837D0];
  v24 = sub_226B16404();
  *(v20 + 64) = v24;
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  v25 = sub_226D6E91C();
  v26 = *(v98 + 8);
  v27 = v99;
  v26(v17, v99);
  *(v18 + 32) = v25;
  v28 = *MEMORY[0x277CC7A40];
  v81 = v14 + 104;
  (v96)(v17, v28, v27);
  v29 = v97;
  v30 = swift_allocObject();
  *(v30 + 16) = v88;
  v31 = sub_226D69C9C();
  *(v30 + 56) = MEMORY[0x277D837D0];
  *(v30 + 64) = v24;
  v32 = v17;
  v33 = v26;
  *(v30 + 32) = v31;
  *(v30 + 40) = v34;
  v35 = v32;
  v36 = sub_226D6E91C();
  v26(v35, v99);
  *(v18 + 40) = v36;
  v37 = sub_226D6E5CC();

  v38 = [objc_opt_self() orPredicateWithSubpredicates_];

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_226D71F20;
  v40 = v91;
  *(v39 + 32) = v91;
  v41 = v40;
  v42 = sub_226D6E5CC();

  [v29 setSortDescriptors_];

  [v29 setPredicate_];
  [v29 setFetchLimit_];
  v43 = v94;
  v44 = v95;
  result = sub_226D6EBBC();
  if (v44)
  {

    return v43 & 1;
  }

  v90 = v35;
  v91 = v33;
  v94 = v41;
  v95 = v38;
  v46 = v84;
  v47 = v99;
  if (result >> 62)
  {
    v77 = result;
    v48 = sub_226D6EDFC();
    result = v77;
  }

  else
  {
    v48 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = v85;
  v50 = v46;
  if (!v48)
  {

    goto LABEL_12;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v51 = MEMORY[0x22AA8AFD0](0);
LABEL_9:
    v52 = v51;

    if (v52)
    {
      v53 = v52;
      v54 = v86;
      sub_226D69CFC();
      v93 = v53;

      LODWORD(v92) = 0;
      v55 = v98;
      goto LABEL_13;
    }

LABEL_12:
    v55 = v98;
    v56 = *(v98 + 56);
    LODWORD(v92) = 1;
    v54 = v86;
    v56(v86, 1, 1, v47);
    v93 = 0;
LABEL_13:
    (v96)(v49, v80, v47);
    (*(v55 + 56))(v49, 0, 1, v47);
    v57 = *(v50 + 48);
    v58 = v54;
    v59 = v82;
    sub_226AC40E8(v58, v82, &qword_27D7A68B0, qword_226D72098);
    sub_226AC40E8(v49, v59 + v57, &qword_27D7A68B0, qword_226D72098);
    v60 = *(v55 + 48);
    if (v60(v59, 1, v47) == 1)
    {
      sub_226AC47B0(v49, &qword_27D7A68B0, qword_226D72098);
      v61 = v60(v59 + v57, 1, v47);
      v62 = v83;
      v63 = v92;
      if (v61 == 1)
      {
        sub_226AC47B0(v59, &qword_27D7A68B0, qword_226D72098);
        v43 = 1;
        goto LABEL_19;
      }
    }

    else
    {
      v64 = v78;
      sub_226AC40E8(v59, v78, &qword_27D7A68B0, qword_226D72098);
      if (v60(v59 + v57, 1, v47) != 1)
      {
        v70 = v90;
        (*(v98 + 32))(v90, v59 + v57, v47);
        sub_226BDF4BC(&qword_27D7A68B8, MEMORY[0x277CC7A48]);
        v43 = sub_226D6E35C();
        v71 = v91;
        v91(v70, v47);
        sub_226AC47B0(v85, &qword_27D7A68B0, qword_226D72098);
        v71(v64, v47);
        v68 = v86;
        sub_226AC47B0(v59, &qword_27D7A68B0, qword_226D72098);
        v62 = v83;
        v66 = v94;
        v65 = v95;
        v67 = v93;
        if (v92)
        {
          goto LABEL_20;
        }

        goto LABEL_22;
      }

      sub_226AC47B0(v85, &qword_27D7A68B0, qword_226D72098);
      v91(v64, v47);
      v62 = v83;
      v63 = v92;
    }

    sub_226AC47B0(v59, &qword_27D7A68A8, &qword_226D72090);
    v43 = 0;
LABEL_19:
    v66 = v94;
    v65 = v95;
    v67 = v93;
    v68 = v86;
    if (v63)
    {
LABEL_20:
      sub_226AC47B0(v68, &qword_27D7A68B0, qword_226D72098);

      v69 = sub_226D6D4AC();
      (*(*(v69 - 8) + 56))(v62, 1, 1, v69);
      return v43 & 1;
    }

LABEL_22:
    v72 = [v67 timestamp];
    if (v72)
    {
      v73 = v79;
      v74 = v72;
      sub_226D6D45C();

      sub_226AC47B0(v68, &qword_27D7A68B0, qword_226D72098);
      v75 = 0;
    }

    else
    {
      sub_226AC47B0(v68, &qword_27D7A68B0, qword_226D72098);

      v75 = 1;
      v73 = v79;
    }

    v76 = sub_226D6D4AC();
    (*(*(v76 - 8) + 56))(v73, v75, 1, v76);
    sub_226AFD80C(v73, v62, &qword_27D7A8BE0, &unk_226D718F0);
    return v43 & 1;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v51 = *(result + 32);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

unint64_t ManagedCloudOrderEvent.TrackingStatus.description.getter()
{
  v1 = v0;
  v2 = sub_226D6B49C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226BDE698(v1, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
  v12 = (*(*(v11 - 8) + 48))(v10, 4, v11);
  if (v12 <= 1)
  {
    if (v12)
    {
      return 0xD000000000000018;
    }

    else
    {
      (*(v3 + 32))(v6, v10, v2);
      v16 = 0;
      v17 = 0xE000000000000000;
      sub_226D6EEFC();

      v16 = 0xD000000000000023;
      v17 = 0x8000000226D82A80;
      sub_226BDF4BC(&qword_27D7A6658, MEMORY[0x277CC7F28]);
      v14 = sub_226D6F1CC();
      MEMORY[0x22AA8A510](v14);

      MEMORY[0x22AA8A510](41, 0xE100000000000000);
      v15 = v16;
      (*(v3 + 8))(v6, v2);
      return v15;
    }
  }

  else if (v12 == 2)
  {
    return 0xD000000000000015;
  }

  else if (v12 == 3)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t type metadata accessor for ManagedCloudOrderEvent.TrackingStatus()
{
  result = qword_27D7A7D88;
  if (!qword_27D7A7D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226BDE698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BDE708@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_226D6B49C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7DA8, &unk_226D765A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68B0, qword_226D72098);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v54 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6638, &unk_226D71860);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v51 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v50 - v20;
  v21 = *a1;
  v22 = [v21 classicOrderTypeIdentifier];
  if (v22)
  {
    v23 = v22;
    sub_226D6E39C();
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = [v21 classicOrderIdentifier];
  if (v26)
  {
    v27 = v26;
    v28 = v3;
    v53 = v15;
    sub_226D6E39C();
    v30 = v29;

    if (v25)
    {
      v31 = v56;
      if (v30)
      {
        sub_226D6B45C();
        v3 = v28;
        (*(v4 + 56))(v31, 0, 1, v28);
        v32 = v55;
        v15 = v53;
        goto LABEL_16;
      }

      v32 = v55;
      v15 = v53;
      v3 = v28;
      goto LABEL_12;
    }

    v32 = v55;
    v15 = v53;
    v31 = v56;
LABEL_14:

    v3 = v28;
    goto LABEL_15;
  }

  if (!v25)
  {
    v28 = v3;
    v31 = v56;
    v32 = v55;
    goto LABEL_14;
  }

  v31 = v56;
  v32 = v55;
LABEL_12:

LABEL_15:
  (*(v4 + 56))(v31, 1, 1, v3);
LABEL_16:
  sub_226D69CFC();
  v33 = sub_226D69CAC();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v15, 1, v33) == 1)
  {
    sub_226AC47B0(v31, &qword_27D7A6638, &unk_226D71860);
LABEL_18:
    v35 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus();
    (*(*(v35 - 8) + 56))(v32, 1, 1, v35);
    return sub_226AC47B0(v15, &qword_27D7A68B0, qword_226D72098);
  }

  v36 = v54;
  sub_226AC40E8(v15, v54, &qword_27D7A68B0, qword_226D72098);
  v37 = (*(v34 + 88))(v36, v33);
  if (v37 == *MEMORY[0x277CC79F0])
  {
    sub_226AC47B0(v31, &qword_27D7A6638, &unk_226D71860);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    (*(*(v38 - 8) + 56))(v32, 2, 4, v38);
LABEL_25:
    v41 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus();
    (*(*(v41 - 8) + 56))(v32, 0, 1, v41);
    return sub_226AC47B0(v15, &qword_27D7A68B0, qword_226D72098);
  }

  if (v37 == *MEMORY[0x277CC79E0])
  {
    sub_226AC47B0(v31, &qword_27D7A6638, &unk_226D71860);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    (*(*(v39 - 8) + 56))(v32, 3, 4, v39);
    goto LABEL_25;
  }

  if (v37 == *MEMORY[0x277CC79E8])
  {
    sub_226AC47B0(v31, &qword_27D7A6638, &unk_226D71860);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    (*(*(v40 - 8) + 56))(v32, 4, 4, v40);
    goto LABEL_25;
  }

  if (v37 != *MEMORY[0x277CC79F8])
  {
    sub_226AC47B0(v31, &qword_27D7A6638, &unk_226D71860);
    (*(v34 + 8))(v54, v33);
    goto LABEL_18;
  }

  v43 = v51;
  sub_226AFD80C(v31, v51, &qword_27D7A6638, &unk_226D71860);
  if ((*(v4 + 48))(v43, 1, v3) == 1)
  {
    sub_226AC47B0(v43, &qword_27D7A6638, &unk_226D71860);
    v44 = 1;
    v45 = v52;
  }

  else
  {
    v46 = *(v4 + 32);
    v47 = v50;
    v46(v50, v43, v3);
    v45 = v52;
    v46(v52, v47, v3);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    (*(*(v48 - 8) + 56))(v45, 0, 4, v48);
    v44 = 0;
  }

  v49 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus();
  (*(*(v49 - 8) + 56))(v45, v44, 1, v49);
  sub_226AFD80C(v45, v32, &qword_27D7A7DA8, &unk_226D765A8);
  return sub_226AC47B0(v15, &qword_27D7A68B0, qword_226D72098);
}

void sub_226BDEEA4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 sender];
  if (v3)
  {
    v4 = v3;
    v5 = sub_226D6E39C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_226BDEF0C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v8 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v9 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v9 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v9 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = *v3;
  if (!v8)
  {
LABEL_10:
    v14 = isUniquelyReferenced_nonNull_native;
    sub_226C2CBBC();
    isUniquelyReferenced_nonNull_native = v14;
    v9 = v15;
  }

  v10 = (*(v9 + 48) + 16 * isUniquelyReferenced_nonNull_native);
  v11 = *v10;
  v12 = v10[1];
  sub_226D5303C(isUniquelyReferenced_nonNull_native);
  *v3 = v15;
  return v11;
}

unint64_t sub_226BDEFE0@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((a1 & 0x8000000000000000) != 0 || (v10 = *v4, 1 << *(*v4 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v10 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v10 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
LABEL_10:
    sub_226C2CD40();
    v10 = v15;
  }

  v11 = *(v10 + 48) + 56 * a1;
  v12 = *(v11 + 48);
  v13 = *(v11 + 16);
  *a3 = *v11;
  *(a3 + 16) = v13;
  *(a3 + 32) = *(v11 + 32);
  *(a3 + 48) = v12;
  result = sub_226D53200(a1);
  *v4 = v15;
  return result;
}

uint64_t _s10FinanceKit22ManagedCloudOrderEventC0A6DaemonE14TrackingStatusO2eeoiySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6B49C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7DA0, &qword_226D765A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v25 - v16;
  v18 = *(v15 + 56);
  sub_226BDE698(a1, &v25 - v16);
  sub_226BDE698(a2, &v17[v18]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
  v20 = *(*(v19 - 8) + 48);
  v21 = v20(v17, 4, v19);
  if (v21 <= 1)
  {
    if (!v21)
    {
      sub_226BDE698(v17, v12);
      if (!v20(&v17[v18], 4, v19))
      {
        (*(v5 + 32))(v8, &v17[v18], v4);
        v22 = MEMORY[0x22AA87530](v12, v8);
        v24 = *(v5 + 8);
        v24(v8, v4);
        v24(v12, v4);
        sub_226BDFDA8(v17);
        return v22 & 1;
      }

      (*(v5 + 8))(v12, v4);
      goto LABEL_12;
    }

    if (v20(&v17[v18], 4, v19) == 1)
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_226AC47B0(v17, &qword_27D7A7DA0, &qword_226D765A0);
    v22 = 0;
    return v22 & 1;
  }

  if (v21 == 2)
  {
    if (v20(&v17[v18], 4, v19) == 2)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v21 != 3)
  {
    if (v20(&v17[v18], 4, v19) == 4)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v20(&v17[v18], 4, v19) != 3)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_226BDFDA8(v17);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_226BDF41C()
{
  sub_226BDF474();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_226BDF474()
{
  if (!qword_27D7A7D98)
  {
    v0 = sub_226D6B49C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A7D98);
    }
  }
}

uint64_t sub_226BDF4BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_226BDF504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v81 = a4;
  v80 = a3;
  v79 = a2;
  v78 = sub_226D69CAC();
  v7 = *(v78 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v78);
  v77 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = MEMORY[0x277D84FA0];
  v92 = a1;
  v10 = *(a1 + 16);

  if (!v10)
  {
LABEL_39:

    return;
  }

  v82 = v5;
  v76 = (v7 + 104);
  v75 = *MEMORY[0x277CC79C8];
  v74 = "Unknown classification outcome";
  v73 = (v7 + 8);
  v72 = "emailMessageID in %@";
  v71 = "sanitizedOrderNumber == %@";
  v70 = "emailMessageID == %@";
  v69 = xmmword_226D71F30;
  v84 = xmmword_226D70840;
  v68 = xmmword_226D71F40;
  while (1)
  {
    v11 = -1 << *(a1 + 32);
    v12 = sub_226D6ED6C();
    v13 = sub_226BDEF0C(v12, *(a1 + 36));
    v87 = v13;
    v15 = v14;
    v90 = v14;

    sub_226C24D14(&v91, v13, v15);

    v89 = sub_226D69D0C();
    v83 = sub_226D69CBC();
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v16 = swift_allocObject();
    *(v16 + 16) = v69;
    v17 = v77;
    v18 = v78;
    (*v76)(v77, v75, v78);
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v19 = swift_allocObject();
    *(v19 + 16) = v84;
    v20 = sub_226D69C9C();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x277D837D0];
    v23 = sub_226B16404();
    *(v19 + 64) = v23;
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    v24 = sub_226D6E91C();
    (*v73)(v17, v18);
    *(v16 + 32) = v24;
    v25 = swift_allocObject();
    *(v25 + 16) = v84;
    v26 = MEMORY[0x277D837D0];
    *(v25 + 56) = MEMORY[0x277D837D0];
    *(v25 + 64) = v23;
    *(v25 + 32) = v79;
    *(v25 + 40) = v80;

    *(v16 + 40) = sub_226D6E91C();
    v27 = swift_allocObject();
    *(v27 + 16) = v68;
    v28 = swift_allocObject();
    *(v28 + 16) = v84;
    *(v28 + 56) = v26;
    *(v28 + 64) = v23;
    v29 = v87;
    *(v28 + 32) = v87;
    v30 = v90;
    *(v28 + 40) = v90;
    v31 = v30;

    *(v27 + 32) = sub_226D6E91C();
    v32 = v31;
    v33 = swift_allocObject();
    *(v33 + 16) = v84;
    *(v33 + 56) = v26;
    *(v33 + 64) = v23;
    *(v33 + 32) = v29;
    *(v33 + 40) = v31;

    *(v27 + 40) = sub_226D6E91C();
    v34 = sub_226D6E5CC();

    v35 = objc_opt_self();
    v36 = [v35 orPredicateWithSubpredicates_];

    *(v16 + 48) = v36;
    v37 = sub_226D6E5CC();

    v38 = [v35 andPredicateWithSubpredicates_];

    v39 = v83;
    [v83 setPredicate_];

    sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
    v40 = sub_226D6E5CC();
    [v39 setSortDescriptors_];

    v41 = v82;
    v42 = sub_226D6EBBC();
    if (v41)
    {

      return;
    }

    v82 = 0;
    v88 = v42;
    if (v42 >> 62)
    {
      break;
    }

    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
      goto LABEL_7;
    }

LABEL_3:

    a1 = v92;
    if (!*(v92 + 16))
    {
      goto LABEL_39;
    }
  }

  v43 = sub_226D6EDFC();
  if (!v43)
  {
    goto LABEL_3;
  }

LABEL_7:
  v44 = 0;
  v89 = v88 & 0xC000000000000001;
  v85 = v88 + 32;
  v86 = v88 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v89)
    {
      v45 = MEMORY[0x22AA8AFD0](v44, v88);
    }

    else
    {
      if (v44 >= *(v86 + 16))
      {
        goto LABEL_41;
      }

      v45 = *(v85 + 8 * v44);
    }

    v46 = v45;
    if (__OFADD__(v44++, 1))
    {
      break;
    }

    v48 = [v45 emailMessageID];
    if (v48)
    {
      v49 = v48;
      v50 = sub_226D6E39C();
      v52 = v51;

      if (v50 == v87 && v52 == v32)
      {

LABEL_24:
        v55 = [v46 otherEmailMessageID];
        if (!v55)
        {
          goto LABEL_43;
        }

        goto LABEL_25;
      }

      v54 = sub_226D6F21C();

      if (v54)
      {
        goto LABEL_24;
      }
    }

    v55 = [v46 emailMessageID];
    if (!v55)
    {
      goto LABEL_42;
    }

LABEL_25:
    v56 = v55;
    v57 = sub_226D6E39C();
    v59 = v58;

    v60 = v93;
    if (*(v93 + 16) && (v61 = *(v93 + 40), sub_226D6F2FC(), sub_226D6E42C(), v62 = sub_226D6F35C(), v63 = -1 << *(v60 + 32), v64 = v62 & ~v63, ((*(v60 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) != 0))
    {
      v65 = ~v63;
      while (1)
      {
        v66 = (*(v60 + 48) + 16 * v64);
        v67 = *v66 == v57 && v66[1] == v59;
        if (v67 || (sub_226D6F21C() & 1) != 0)
        {
          break;
        }

        v64 = (v64 + 1) & v65;
        if (((*(v60 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      sub_226C24D14(&v91, v57, v59);
    }

    v32 = v90;
    if (v44 == v43)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_226BDFD44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BDFDA8(uint64_t a1)
{
  v2 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_226BDFE04(void *a1, uint64_t a2, uint64_t a3)
{
  v90 = a3;
  v84 = a1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68A8, &qword_226D72090);
  v4 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v77 = &v74 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68B0, qword_226D72098);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v74 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v79 = &v74 - v11;
  MEMORY[0x28223BE20](v10);
  v80 = &v74 - v12;
  v83 = sub_226D69CAC();
  v13 = *(v83 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v83);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_226D69D0C();
  v92 = sub_226D69CBC();
  v88 = sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  swift_getKeyPath();
  v87 = sub_226D6E9FC();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v17 = swift_allocObject();
  v82 = xmmword_226D71F40;
  *(v17 + 16) = xmmword_226D71F40;
  v18 = v17;
  v85 = v17;
  v93 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v19 = swift_allocObject();
  v94 = xmmword_226D70840;
  *(v19 + 16) = xmmword_226D70840;
  *(v19 + 56) = MEMORY[0x277D837D0];
  v95 = sub_226B16404();
  *(v19 + 64) = v95;
  *(v19 + 32) = v84;
  *(v19 + 40) = a2;

  *(v18 + 32) = sub_226D6E91C();
  v20 = swift_allocObject();
  *(v20 + 16) = v82;
  v21 = v13 + 13;
  v22 = v13[13];
  v23 = v16;
  v24 = v16;
  v76 = *MEMORY[0x277CC7A00];
  v25 = v83;
  v22(v24);
  v26 = swift_allocObject();
  *(v26 + 16) = v94;
  v27 = v23;
  v28 = sub_226D69C9C();
  v29 = v95;
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 64) = v29;
  *(v26 + 32) = v28;
  *(v26 + 40) = v30;
  v31 = sub_226D6E91C();
  v84 = v13;
  v32 = v13 + 1;
  v33 = v13[1];
  v33(v27, v25);
  *(v20 + 32) = v31;
  v34 = *MEMORY[0x277CC7A08];
  *&v82 = v21;
  v75 = v22;
  (v22)(v27, v34, v25);
  v35 = v32;
  v36 = v27;
  v37 = swift_allocObject();
  *(v37 + 16) = v94;
  v38 = sub_226D69C9C();
  v39 = v95;
  *(v37 + 56) = MEMORY[0x277D837D0];
  *(v37 + 64) = v39;
  *(v37 + 32) = v38;
  *(v37 + 40) = v40;
  v41 = v92;
  v42 = sub_226D6E91C();
  v43 = v25;
  v44 = v33;
  v45 = v35;
  v46 = v43;
  v44(v36);
  *(v20 + 40) = v42;
  v47 = sub_226D6E5CC();

  v48 = objc_opt_self();
  v49 = [v48 orPredicateWithSubpredicates_];

  *(v85 + 40) = v49;
  v50 = sub_226D6E5CC();

  v51 = [v48 andPredicateWithSubpredicates_];

  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_226D71F20;
  v53 = v87;
  *(v52 + 32) = v87;
  v54 = v53;
  v55 = sub_226D6E5CC();

  [v41 setSortDescriptors_];

  [v41 setPredicate_];
  [v41 setFetchLimit_];
  v56 = v91;
  v57 = sub_226D6EBBC();
  if (v56)
  {

    return;
  }

  v95 = 0;
  v93 = v45;
  *&v94 = v54;
  v91 = v44;
  v88 = v36;
  if (v57 >> 62)
  {
    v73 = v57;
    v58 = sub_226D6EDFC();
    v57 = v73;
  }

  else
  {
    v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v59 = v79;
  v60 = v80;
  v61 = v84;
  if (!v58)
  {

    return;
  }

  if ((v57 & 0xC000000000000001) != 0)
  {
    v62 = MEMORY[0x22AA8AFD0](0);
  }

  else
  {
    if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v62 = *(v57 + 32);
  }

  v89 = v62;

  sub_226D69CFC();
  (v75)(v59, v76, v46);
  (v61[7])(v59, 0, 1, v46);
  v63 = *(v78 + 48);
  v64 = v77;
  sub_226AC40E8(v60, v77, &qword_27D7A68B0, qword_226D72098);
  v90 = v63;
  v65 = v46;
  v66 = v64;
  sub_226AC40E8(v59, v64 + v63, &qword_27D7A68B0, qword_226D72098);
  v67 = v61[6];
  if (v67(v64, 1, v65) == 1)
  {

    sub_226AC47B0(v59, &qword_27D7A68B0, qword_226D72098);
    sub_226AC47B0(v60, &qword_27D7A68B0, qword_226D72098);
    if (v67(v64 + v90, 1, v65) == 1)
    {
      sub_226AC47B0(v64, &qword_27D7A68B0, qword_226D72098);
      return;
    }

    goto LABEL_15;
  }

  v68 = v89;
  v69 = v74;
  sub_226AC40E8(v64, v74, &qword_27D7A68B0, qword_226D72098);
  v70 = v90;
  if (v67(v66 + v90, 1, v65) == 1)
  {

    sub_226AC47B0(v79, &qword_27D7A68B0, qword_226D72098);
    sub_226AC47B0(v80, &qword_27D7A68B0, qword_226D72098);
    (v91)(v69, v65);
LABEL_15:
    sub_226AC47B0(v66, &qword_27D7A68A8, &qword_226D72090);
    return;
  }

  v71 = v88;
  (v84[4])(v88, v66 + v70, v65);
  sub_226BDF4BC(&qword_27D7A68B8, MEMORY[0x277CC7A48]);
  sub_226D6E35C();

  v72 = v91;
  (v91)(v71, v65);
  sub_226AC47B0(v79, &qword_27D7A68B0, qword_226D72098);
  sub_226AC47B0(v80, &qword_27D7A68B0, qword_226D72098);
  v72(v69, v65);
  sub_226AC47B0(v66, &qword_27D7A68B0, qword_226D72098);
}

void sub_226BE07D4(uint64_t a1)
{
  v54 = a1;
  v1 = sub_226D69CAC();
  v2 = *(v1 - 8);
  v3 = v2;
  v49 = v1;
  v50 = v2;
  v4 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69D0C();
  v52 = sub_226D69CDC();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_226D71F40;
  v8 = *MEMORY[0x277CC7A00];
  v51 = *(v3 + 104);
  v51(v6, v8, v1);
  v48[0] = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v48[1] = "Unknown classification outcome";
  v48[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v9 = swift_allocObject();
  v56 = xmmword_226D70840;
  *(v9 + 16) = xmmword_226D70840;
  v10 = sub_226D69C9C();
  v12 = v11;
  *(v9 + 56) = MEMORY[0x277D837D0];
  v13 = sub_226B16404();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v14 = sub_226D6E91C();
  v15 = v49;
  v16 = *(v50 + 8);
  v16(v6, v49);
  *(v7 + 32) = v14;
  v51(v6, *MEMORY[0x277CC7A08], v15);
  v17 = swift_allocObject();
  *(v17 + 16) = v56;
  v18 = sub_226D69C9C();
  v19 = MEMORY[0x277D837D0];
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = v13;
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  v21 = sub_226D6E91C();
  v16(v6, v15);
  v22 = v52;
  v23 = 0x7265646E6573;
  *(v7 + 40) = v21;
  v24 = sub_226D6E5CC();

  v25 = [objc_opt_self() orPredicateWithSubpredicates_];

  [v22 setPredicate_];
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_226D71F20;
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  swift_getKeyPath();
  *(v26 + 32) = sub_226D6E9FC();
  v27 = sub_226D6E5CC();

  [v22 setSortDescriptors_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v28 = swift_allocObject();
  *(v28 + 16) = v56;
  *(v28 + 56) = v19;
  *(v28 + 32) = 0x7265646E6573;
  *(v28 + 40) = 0xE600000000000000;
  v29 = MEMORY[0x277D84F70];
  v30 = sub_226D6E5CC();

  [v22 setPropertiesToFetch_];

  [v22 setReturnsDistinctResults_];
  sub_226AE59B4(0, &qword_27D7A7178, 0x277CBEAC0);
  v31 = v55;
  v32 = sub_226D6EBBC();
  v33 = v31;
  if (v31)
  {
  }

  else
  {
    v34 = v32;
    if (v32 >> 62)
    {
      goto LABEL_19;
    }

    v35 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      while (1)
      {
        v51 = v33;
        v61 = MEMORY[0x277D84F90];
        sub_226AE1D68(0, v35 & ~(v35 >> 63), 0);
        if (v35 < 0)
        {
          break;
        }

        v36 = 0;
        v37 = v61;
        v38 = v34;
        v55 = v34;
        *&v56 = v34 & 0xC000000000000001;
        v53 = v34 & 0xFFFFFFFFFFFFFF8;
        v54 = v35;
        while (1)
        {
          v39 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            break;
          }

          if (v56)
          {
            v40 = MEMORY[0x22AA8AFD0](v36, v38);
          }

          else
          {
            if (v36 >= *(v53 + 16))
            {
              goto LABEL_18;
            }

            v40 = *(v38 + 8 * v36 + 32);
          }

          v41 = v40;
          v34 = v23;
          v42 = sub_226D6E36C();
          v43 = [v41 valueForKeyPath_];

          if (!v43)
          {
            goto LABEL_22;
          }

          sub_226D6ED0C();
          swift_unknownObjectRelease();

          sub_226B24A98(&v57, &v58);
          v22 = v29;
          swift_dynamicCast();
          v33 = v59;
          v44 = v60;
          v61 = v37;
          v46 = *(v37 + 16);
          v45 = *(v37 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_226AE1D68((v45 > 1), v46 + 1, 1);
            v37 = v61;
          }

          *(v37 + 16) = v46 + 1;
          v47 = v37 + 16 * v46;
          *(v47 + 32) = v33;
          *(v47 + 40) = v44;
          ++v36;
          v38 = v55;
          v23 = v34;
          v29 = v22;
          if (v39 == v54)
          {

            return;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        v35 = sub_226D6EDFC();
        if (!v35)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
LABEL_20:
    }
  }
}

uint64_t sub_226BE0E00(void *a1, uint64_t a2)
{
  type metadata accessor for PostInstallSystemTask();
  inited = swift_initStackObject();
  *(inited + 16) = a2;

  sub_226D66E6C();
  [a1 setTaskCompleted];
  swift_setDeallocating();
  v5 = *(inited + 16);
}

void sub_226BE0EAC(uint64_t a1)
{
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F5E0);
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_226AB4000, v3, v4, "Starting post install tasks", v5, 2u);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v6 = *(a1 + 16);
  v7 = sub_226CFBD40();
  if (*(v7 + 16))
  {
    v8 = v7;
    v9 = sub_226D6E05C();
    v10 = sub_226D6E9DC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
      v14 = MEMORY[0x22AA8A6A0](v8, v13);
      v16 = v15;

      v17 = sub_226AC4530(v14, v16, &v18);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_226AB4000, v9, v10, "Error running post install tasks: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x22AA8BEE0](v12, -1, -1);
      MEMORY[0x22AA8BEE0](v11, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_226BE10EC(uint64_t a1)
{
  v2 = [objc_opt_self() sharedScheduler];
  v3 = sub_226D6E36C();
  v9[4] = sub_226BE12C8;
  v9[5] = a1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_226C01160;
  v9[3] = &block_descriptor_11;
  v4 = _Block_copy(v9);

  LOBYTE(a1) = [v2 registerForTaskWithIdentifier:v3 usingQueue:0 launchHandler:v4];
  _Block_release(v4);

  if ((a1 & 1) == 0)
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v5 = sub_226D6E07C();
    __swift_project_value_buffer(v5, qword_28105F5E0);
    v6 = sub_226D6E05C();
    v7 = sub_226D6E9DC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_226AB4000, v6, v7, "Unable to register post install tasks", v8, 2u);
      MEMORY[0x22AA8BEE0](v8, -1, -1);
    }
  }
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t BankConnectServiceImplementation.offlineLabPermission()(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_226BE1324, 0, 0);
}

uint64_t sub_226BE1324()
{
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_28105F668);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Obtaining local offline lab consent status.", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = *(v0 + 104);

  v6 = __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  sub_226AC40E8((v6 + 88), v0 + 56, &qword_27D7A7048, &qword_226D74690);
  if (*(v0 + 80))
  {
    v7 = *(v0 + 96);
    sub_226AC484C((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_226BE2CD0(v7);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v8 = *(v0 + 8);
  }

  else
  {
    sub_226AC47B0(v0 + 56, &qword_27D7A7048, &qword_226D74690);
    v9 = sub_226D6A0DC();
    sub_226BE38A0(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
    v10 = swift_allocError();
    *v11 = 0xD000000000000030;
    v11[1] = 0x8000000226D82C10;
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277CC7AC0], v9);
    swift_willThrow();
    v12 = v10;
    v13 = sub_226D6E05C();
    v14 = sub_226D6E9DC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v10;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_226AB4000, v13, v14, "Unable to retrieve offline lab consent locally. Error: %@", v15, 0xCu);
      sub_226AC47B0(v16, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }

    v19 = sub_226D6A0DC();
    sub_226BE38A0(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
    swift_allocError();
    *v20 = v10;
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277CC7AB0], v19);
    swift_willThrow();
    v8 = *(v0 + 8);
  }

  return v8();
}

uint64_t BankConnectServiceImplementation.offlineLabSharingPreference()(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_226D692FC();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BE17DC, 0, 0);
}

uint64_t sub_226BE17DC()
{
  v1 = *(v0 + 104);
  v2 = __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_226AC40E8((v2 + 88), v0 + 56, &qword_27D7A7048, &qword_226D74690);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 136);
    sub_226AC484C((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_226BE2CD0(v3);
    v8 = *(v0 + 104);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v9 = *(v8 + 48);
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v10 = *(*(v9 + 8) + 8);
    sub_226D6BAAC();
    v11 = sub_226D676AC();

    *(swift_task_alloc() + 16) = v11;
    sub_226D6EB8C();
    v12 = *(v0 + 136);
    v20 = *(v0 + 120);
    v19 = *(v0 + 128);
    v21 = *(v0 + 112);

    v31 = *(v0 + 144);
    v22 = *MEMORY[0x277CC7870];
    v23 = *(v20 + 104);
    v23(v19, v22, v21);
    sub_226D692EC();
    v24 = *(v20 + 8);
    v24(v19, v21);
    if ((v31 & 1) == 0)
    {
      v25 = *(v0 + 128);
      v26 = *(v0 + 112);
      v23(v25, v22, v26);
      sub_226D692EC();
      v24(v25, v26);
    }

    v28 = *(v0 + 128);
    v27 = *(v0 + 136);
    v29 = *(v0 + 112);
    v30 = *(v0 + 96);
    sub_226D6930C();

    v24(v27, v29);

    v17 = *(v0 + 8);
  }

  else
  {
    sub_226AC47B0(v0 + 56, &qword_27D7A7048, &qword_226D74690);
    v4 = sub_226D6A0DC();
    sub_226BE38A0(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
    v5 = swift_allocError();
    *v6 = 0xD000000000000030;
    v6[1] = 0x8000000226D82C10;
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277CC7AC0], v4);
    swift_willThrow();
    v7 = v5;
    v13 = *(v0 + 128);
    v14 = *(v0 + 136);
    v15 = sub_226D6A0DC();
    sub_226BE38A0(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
    swift_allocError();
    *v16 = v7;
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277CC7AB0], v15);
    swift_willThrow();

    v17 = *(v0 + 8);
  }

  return v17();
}

uint64_t BankConnectServiceImplementation.setOfflineLabSharingPermission(_:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x2822009F8](sub_226BE1C3C, 0, 0);
}

uint64_t sub_226BE1C3C()
{
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_28105F668);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_226AB4000, v2, v3, "Updating offline lab sharing permission to: %{BOOL}d.", v5, 8u);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  sub_226BE2918(v7);
  v8 = sub_226D6E05C();
  v9 = sub_226D6E9AC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 24);
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v10;
    _os_log_impl(&dword_226AB4000, v8, v9, "Done updating offline lab sharing permission to: %{BOOL}d.", v11, 8u);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_226BE1EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x2822009F8](sub_226BE1EE0, 0, 0);
}

uint64_t sub_226BE1EE0()
{
  sub_226BE33B8(v0[19], v0[20], v0[21], v0[22]);
  sub_226AE532C(v0[23] + 16, (v0 + 9));
  v1 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 9), v1);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64) + 15;
  v4 = swift_task_alloc();
  v0[24] = v4;
  (*(v2 + 16))();
  v0[17] = &type metadata for BankConnectEnvironmentImplementation;
  v5 = sub_226B6A16C();
  v0[18] = v5;
  v6 = swift_allocObject();
  v0[14] = v6;
  memcpy((v6 + 16), v4, 0x3B0uLL);
  type metadata accessor for OfflineLabSystemTask();
  inited = swift_initStackObject();
  v0[25] = inited;
  v8 = v0[17];
  v9 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 14), v8);
  v10 = *(v8 - 8);
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  (*(v10 + 16))(v12, v9, v8);
  inited[5] = &type metadata for BankConnectEnvironmentImplementation;
  inited[6] = v5;
  v13 = swift_allocObject();
  inited[2] = v13;
  memcpy((v13 + 16), v12, 0x3B0uLL);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  v14 = swift_task_alloc();
  v0[26] = v14;
  *v14 = v0;
  v14[1] = sub_226BE2198;

  return sub_226B80F9C();
}

uint64_t sub_226BE2198()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_226BE2324;
  }

  else
  {
    v3 = sub_226BE22AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226BE22AC()
{
  v1 = v0[24];
  v2 = v0[25];
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));

  v3 = v0[1];

  return v3();
}

uint64_t sub_226BE2324()
{
  v1 = v0[24];
  v2 = v0[25];
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));

  v3 = v0[27];
  v4 = v0[1];

  return v4();
}

uint64_t sub_226BE239C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 136) = a7;
  *(v8 + 144) = v7;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 104) = a2;
  *(v8 + 112) = a4;
  *(v8 + 176) = a3;
  *(v8 + 96) = a1;
  return MEMORY[0x2822009F8](sub_226BE23CC, 0, 0);
}

uint64_t sub_226BE23CC()
{
  sub_226BE33B8(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  v3 = *(v0 + 144);
  v4 = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_226AC40E8((v4 + 88), v0 + 56, &qword_27D7A7048, &qword_226D74690);
  if (*(v0 + 80))
  {
    sub_226AC484C((v0 + 56), v0 + 16);
    v5 = *__swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    v6 = sub_226D676AC();
    *(v0 + 152) = v6;
    v7 = swift_task_alloc();
    *(v0 + 160) = v7;
    *v7 = v0;
    v7[1] = sub_226BE2604;
    v8 = *(v0 + 176);
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);

    return sub_226B50ED8(v10, v9, v6, v0 + 16, v8);
  }

  else
  {
    sub_226AC47B0(v0 + 56, &qword_27D7A7048, &qword_226D74690);
    v11 = sub_226D6A0DC();
    sub_226BE38A0(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
    swift_allocError();
    *v12 = 0xD00000000000002BLL;
    v12[1] = 0x8000000226D82C50;
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277CC7AC0], v11);
    swift_willThrow();
    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_226BE2604()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v5 = sub_226BE2738;
  }

  else
  {
    v5 = sub_226B99748;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226BE2738()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[21];
  v2 = v0[1];

  return v2();
}

uint64_t sub_226BE279C@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  v11[3] = type metadata accessor for OfflineLabDefaultLogicProvider();
  v11[4] = &off_283A6E4A0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  sub_226C0639C(boxed_opaque_existential_1);
  v12[3] = sub_226D6B5EC();
  v12[4] = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_226D6B58C();
  v11[5] = a1;
  v12[5] = a1;
  sub_226D6842C();
  a1;
  v6 = sub_226D6840C();
  v7 = sub_226D683CC();
  [v6 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7DB0, &qword_226D76620);
  sub_226D6EB8C();

  if (v2)
  {
    return sub_226BE3240(v11);
  }

  sub_226BE3240(v11);
  if (v10 >> 62)
  {
    v9 = sub_226D6EDFC();
  }

  else
  {
    v9 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a2 = v9 != 0;
  return result;
}

void sub_226BE2918(char a1)
{
  v2 = v1;
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F668);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9AC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_226AB4000, v5, v6, "Setting permission locally to %{BOOL}d...", v7, 8u);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v8 = __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_226AC40E8((v8 + 88), &v23, &qword_27D7A7048, &qword_226D74690);
  if (!v24)
  {
    sub_226AC47B0(&v23, &qword_27D7A7048, &qword_226D74690);
    v11 = sub_226D6A0DC();
    sub_226BE38A0(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
    v10 = swift_allocError();
    *v12 = 0xD000000000000030;
    v12[1] = 0x8000000226D82C10;
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277CC7AC0], v11);
    swift_willThrow();
    goto LABEL_9;
  }

  sub_226AC484C(&v23, v25);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  OfflineLabConfigurationManager.setHasPermission(_:)(a1 & 1);
  v10 = v9;
  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
LABEL_9:
    v13 = v10;
    v14 = sub_226D6E05C();
    v15 = sub_226D6E9CC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 67109378;
      *(v16 + 4) = a1 & 1;
      *(v16 + 8) = 2112;
      v18 = v10;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 10) = v19;
      *v17 = v19;
      _os_log_impl(&dword_226AB4000, v14, v15, "Unable to set lab permission to: %{BOOL}d locally: %@", v16, 0x12u);
      sub_226AC47B0(v17, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
    }

    swift_willThrow();
    return;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  v20 = sub_226D6E05C();
  v21 = sub_226D6E9AC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_226AB4000, v20, v21, "Done setting permission locally.", v22, 2u);
    MEMORY[0x22AA8BEE0](v22, -1, -1);
  }
}

uint64_t sub_226BE2CD0@<X0>(char *a1@<X8>)
{
  v63 = a1;
  v1 = sub_226D692FC();
  v2 = *(v1 - 8);
  v61 = v1;
  v62 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v60 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v53 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71D0, &qword_226D76660);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v53 - v13;
  v15 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v53 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v53 - v24;
  v26 = v64;
  result = OfflineLabConfigurationManager.userItem.getter(v14);
  if (!v26)
  {
    v57 = v20;
    v58 = v23;
    v59 = v10;
    v28 = v61;
    v64 = 0;
    v29 = (*(v16 + 48))(v14, 1, v15);
    v30 = v62;
    v31 = (v62 + 104);
    if (v29 == 1)
    {
      sub_226AC47B0(v14, &qword_27D7A71D0, &qword_226D76660);
      return (*v31)(v63, *MEMORY[0x277CC7860], v28);
    }

    else
    {
      v56 = v15;
      sub_226BE3294(v14, v25);
      if (*v25)
      {
        v32 = MEMORY[0x277CC7870];
      }

      else
      {
        v32 = MEMORY[0x277CC7868];
      }

      v33 = v59;
      (*v31)(v59, *v32, v28);
      if (qword_28105F660 != -1)
      {
        swift_once();
      }

      v34 = sub_226D6E07C();
      __swift_project_value_buffer(v34, qword_28105F668);
      v35 = v30;
      v36 = *(v30 + 16);
      v37 = v8;
      v36(v8, v33, v28);
      v38 = v58;
      sub_226BE32F8(v25, v58);
      v39 = sub_226D6E05C();
      v55 = sub_226D6E9AC();
      if (os_log_type_enabled(v39, v55))
      {
        v40 = swift_slowAlloc();
        v53 = v39;
        v41 = v40;
        v65 = swift_slowAlloc();
        v54 = v25;
        v42 = v65;
        *v41 = 136315394;
        v36(v60, v37, v28);
        v43 = sub_226D6E3FC();
        v45 = v44;
        (*(v35 + 8))(v37, v28);
        v46 = sub_226AC4530(v43, v45, &v65);
        v33 = v59;

        *(v41 + 4) = v46;
        *(v41 + 12) = 2080;
        sub_226BE32F8(v38, v57);
        v47 = sub_226D6E3FC();
        v49 = v48;
        sub_226BE335C(v38);
        v50 = sub_226AC4530(v47, v49, &v65);

        *(v41 + 14) = v50;
        v51 = v53;
        _os_log_impl(&dword_226AB4000, v53, v55, "Returning permission: %s for userItem: %s", v41, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v42, -1, -1);
        MEMORY[0x22AA8BEE0](v41, -1, -1);

        v52 = v54;
      }

      else
      {

        sub_226BE335C(v38);
        (*(v35 + 8))(v37, v28);
        v52 = v25;
      }

      sub_226BE335C(v52);
      return (*(v35 + 32))(v63, v33, v28);
    }
  }

  return result;
}

uint64_t sub_226BE3294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BE32F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BE335C(uint64_t a1)
{
  v2 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226BE33B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v4 = sub_226D67F1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7DB8, &qword_226D76630);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v35 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  sub_226D68CCC();
  sub_226D67EDC();
  (*(v5 + 56))(v19, 0, 1, v4);
  v22 = *(v9 + 56);
  sub_226AC40E8(v21, v12, &qword_27D7A7180, &qword_226D74600);
  sub_226AC40E8(v19, &v12[v22], &qword_27D7A7180, &qword_226D74600);
  v23 = *(v5 + 48);
  if (v23(v12, 1, v4) == 1)
  {
    sub_226AC47B0(v19, &qword_27D7A7180, &qword_226D74600);
    sub_226AC47B0(v21, &qword_27D7A7180, &qword_226D74600);
    if (v23(&v12[v22], 1, v4) == 1)
    {
      return sub_226AC47B0(v12, &qword_27D7A7180, &qword_226D74600);
    }

    goto LABEL_6;
  }

  sub_226AC40E8(v12, v35, &qword_27D7A7180, &qword_226D74600);
  if (v23(&v12[v22], 1, v4) == 1)
  {
    sub_226AC47B0(v19, &qword_27D7A7180, &qword_226D74600);
    sub_226AC47B0(v21, &qword_27D7A7180, &qword_226D74600);
    (*(v5 + 8))(v35, v4);
LABEL_6:
    sub_226AC47B0(v12, &qword_27D7A7DB8, &qword_226D76630);
LABEL_7:
    v25 = sub_226D66EDC();
    sub_226BE38A0(&qword_27D7A7DC0, MEMORY[0x277CC65F8]);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277CC65E0], v25);
    return swift_willThrow();
  }

  v27 = v31;
  (*(v5 + 32))(v31, &v12[v22], v4);
  sub_226BE38A0(&qword_281062BD0, MEMORY[0x277CC7098]);
  v28 = v35;
  LODWORD(v34) = sub_226D6E35C();
  v29 = *(v5 + 8);
  v29(v27, v4);
  sub_226AC47B0(v19, &qword_27D7A7180, &qword_226D74600);
  sub_226AC47B0(v21, &qword_27D7A7180, &qword_226D74600);
  v29(v28, v4);
  result = sub_226AC47B0(v12, &qword_27D7A7180, &qword_226D74600);
  if ((v34 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_226BE38A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OfflineLabConfigurationManager.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_226D67F1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226D67EEC();
  v7 = sub_226D67F0C();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v13[3] = sub_226D6B5EC();
  v13[4] = MEMORY[0x277CC7F70];
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_226D6B58C();
  *a1 = v7;
  a1[1] = v9;
  a1[2] = 0xD000000000000021;
  a1[3] = 0x8000000226D7F6B0;
  sub_226AE532C(v13, v12);
  v10 = a1 + *(type metadata accessor for OfflineLabConfigurationManager(0) + 24);
  sub_226D6B5FC();
  return __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

uint64_t OfflineLabConfigurationManager.OfflineLabUserItem.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0) + 20);
  v4 = sub_226D6D52C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_226BE3B30()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x6F43656369766564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696D726550736168;
  }
}

uint64_t sub_226BE3BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_226BE6DB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_226BE3BE4(uint64_t a1)
{
  v2 = sub_226BE3E50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_226BE3C20(uint64_t a1)
{
  v2 = sub_226BE3E50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OfflineLabConfigurationManager.OfflineLabUserItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7DC8, &qword_226D76650);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226BE3E50();
  sub_226D6F38C();
  v11 = *v3;
  v18[15] = 0;
  sub_226D6F18C();
  if (!v2)
  {
    v12 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
    v13 = *(v12 + 20);
    v18[14] = 1;
    sub_226D6D52C();
    sub_226BE4228(&qword_27D7A7DD8, MEMORY[0x277CC95F0]);
    sub_226D6F19C();
    v14 = &v3[*(v12 + 24)];
    v15 = *v14;
    v16 = v14[1];
    v18[13] = 2;
    sub_226D6F17C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_226BE3E50()
{
  result = qword_27D7A7DD0;
  if (!qword_27D7A7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7DD0);
  }

  return result;
}

uint64_t OfflineLabConfigurationManager.OfflineLabUserItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_226D6D52C();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7DE0, &qword_226D76658);
  v29 = *(v32 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v32);
  v10 = &v25 - v9;
  v11 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226BE3E50();
  sub_226D6F37C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v27 = a1;
  v17 = v29;
  v16 = v30;
  v18 = v31;
  v35 = 0;
  v19 = sub_226D6F15C();
  v26 = v14;
  *v14 = v19 & 1;
  v34 = 1;
  sub_226BE4228(&qword_27D7A7DE8, MEMORY[0x277CC95F0]);
  sub_226D6F16C();
  v20 = *(v16 + 32);
  v21 = v26;
  v25 = *(v11 + 20);
  v20(&v26[v25], v7, v18);
  v33 = 2;
  v22 = sub_226D6F14C();
  (*(v17 + 8))(v10, v32);
  v23 = (v21 + *(v11 + 24));
  *v23 = v22;
  v23[1] = HIBYTE(v22) & 1;
  sub_226BE32F8(v21, v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  return sub_226BE335C(v21);
}

uint64_t sub_226BE4228(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_226BE42A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7E40, &qword_226D76968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D76640;
  v2 = *MEMORY[0x277CDC228];
  *(inited + 32) = *MEMORY[0x277CDC228];
  v31 = v2;
  v3 = *MEMORY[0x277CDC238];
  v30 = *MEMORY[0x277CDC238];
  type metadata accessor for CFString(0);
  *(inited + 40) = v3;
  v4 = *MEMORY[0x277CDBEC8];
  *(inited + 64) = v5;
  *(inited + 72) = v4;
  v6 = v0[1];
  v7 = MEMORY[0x277D837D0];
  *(inited + 80) = *v0;
  *(inited + 88) = v6;
  v8 = *MEMORY[0x277CDC120];
  *(inited + 104) = v7;
  *(inited + 112) = v8;
  v9 = v0[3];
  v10 = MEMORY[0x277CDBF20];
  *(inited + 120) = v0[2];
  *(inited + 128) = v9;
  v11 = *v10;
  *(inited + 144) = v7;
  *(inited + 152) = v11;
  v12 = MEMORY[0x277CDBFC0];
  *(inited + 160) = 0xD00000000000002ALL;
  *(inited + 168) = 0x8000000226D82CB0;
  v13 = *v12;
  *(inited + 184) = v7;
  *(inited + 192) = v13;
  v14 = MEMORY[0x277D839B0];
  *(inited + 200) = 1;
  v15 = *MEMORY[0x277CDBED8];
  *(inited + 224) = v14;
  *(inited + 232) = v15;
  v16 = *MEMORY[0x277CDBEE0];
  v17 = MEMORY[0x277CDC140];
  *(inited + 240) = *MEMORY[0x277CDBEE0];
  v18 = *v17;
  *(inited + 264) = v5;
  *(inited + 272) = v18;
  *(inited + 304) = v14;
  *(inited + 280) = 1;
  v19 = v31;
  v20 = v30;
  v21 = v4;

  v22 = v8;

  v23 = v11;
  v24 = v13;
  v25 = v15;
  v26 = v16;
  v27 = v18;
  v28 = sub_226B23454(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AC8, &unk_226D76970);
  swift_arrayDestroy();
  return v28;
}

uint64_t OfflineLabConfigurationManager.userItem.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  sub_226BE42A0();
  v3 = *MEMORY[0x277CDC558];
  v21 = MEMORY[0x277D839B0];
  LOBYTE(v20) = 1;
  sub_226B24A98(&v20, result);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_226BE5BEC(result, v3, isUniquelyReferenced_nonNull_native);
  result[0] = 0;
  type metadata accessor for CFString(0);
  sub_226BE4228(&qword_27D7A6048, type metadata accessor for CFString);
  v5 = sub_226D6E2AC();

  v6 = SecItemCopyMatching(v5, result);

  if (v6 == -25300)
  {
    v12 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
    (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
    goto LABEL_15;
  }

  if (v6)
  {
    sub_226AE59B4(0, &qword_27D7A7DF0, 0x277CCA9B8);
    v13 = sub_226BE47FC(v6);
    sub_226BE5D2C();
    swift_allocError();
    *v14 = v13;
    *(v14 + 8) = 0;
LABEL_14:
    swift_willThrow();
    goto LABEL_15;
  }

  if (!result[0])
  {
    goto LABEL_12;
  }

  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {
    if (result[0])
    {
      ObjectType = swift_getObjectType();
      sub_226BE5D2C();
      swift_allocError();
      *v16 = ObjectType;
LABEL_13:
      *(v16 + 8) = 1;
      goto LABEL_14;
    }

LABEL_12:
    sub_226BE5D2C();
    swift_allocError();
    *v16 = 0;
    goto LABEL_13;
  }

  v7 = v20;
  v8 = sub_226D6CC1C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_226D6CC0C();
  v11 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
  sub_226BE4228(&qword_27D7A7E00, type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem);
  sub_226D6CBFC();
  if (v1)
  {

    sub_226B11B98(v7, *(&v7 + 1));
  }

  else
  {
    sub_226B11B98(v7, *(&v7 + 1));

    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

LABEL_15:
  v17 = swift_unknownObjectRelease();
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

id sub_226BE47FC(OSStatus a1)
{
  v2 = SecCopyErrorMessageString(a1, 0);
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_226D6E38C();
    }
  }

  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = *MEMORY[0x277CCA590];
  v6 = [v4 initWithDomain:v5 code:a1 userInfo:0];

  return v6;
}

uint64_t sub_226BE49B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71D0, &qword_226D76660);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11[-v3];
  result = OfflineLabConfigurationManager.userItem.getter(&v11[-v3]);
  if (!v0)
  {
    v6 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
    if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
    {
      sub_226AC47B0(v4, &qword_27D7A71D0, &qword_226D76660);
LABEL_8:
      v9 = 2;
LABEL_9:
      sub_226BE5D2C();
      swift_allocError();
      *v10 = v9;
      *(v10 + 8) = 5;
      return swift_willThrow();
    }

    v7 = *v4;
    sub_226BE335C(v4);
    if (v7 != 1)
    {
      goto LABEL_8;
    }

    v8 = *(type metadata accessor for OfflineLabConfigurationManager(0) + 24);
    sub_226D6B5DC();
    if (v12)
    {
      if (swift_dynamicCast())
      {
        return v13;
      }
    }

    else
    {
      sub_226AC47B0(v11, &unk_27D7A8BB0, &unk_226D74340);
    }

    sub_226BE4C04();
    sub_226D6B5DC();
    if (v12)
    {
      if (swift_dynamicCast())
      {
        return v13;
      }
    }

    else
    {
      sub_226AC47B0(v11, &unk_27D7A8BB0, &unk_226D74340);
    }

    v9 = 0;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_226BE4C04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71D0, &qword_226D76660);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v25[-v3];
  v5 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v25[-v11];
  result = OfflineLabConfigurationManager.userItem.getter(v4);
  if (!v0)
  {
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_226AC47B0(v4, &qword_27D7A71D0, &qword_226D76660);
      sub_226BE5D2C();
      swift_allocError();
      *v14 = 1;
      *(v14 + 8) = 5;
      return swift_willThrow();
    }

    else
    {
      sub_226BE3294(v4, v12);
      v15 = *(v5 + 20);
      v16 = &v12[*(v5 + 24)];
      v17 = *v16;
      v18 = v16[1];
      if (v17 < 0x7F)
      {
        v19 = v17 + 1;
      }

      else
      {
        v19 = 127;
      }

      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19;
      }

      v21 = *v12;
      v22 = sub_226D6D52C();
      (*(*(v22 - 8) + 16))(&v10[v15], &v12[v15], v22);
      *v10 = v21;
      v23 = &v10[*(v5 + 24)];
      *v23 = v20;
      v23[1] = 0;
      sub_226BE4ED0();
      v24 = *(type metadata accessor for OfflineLabConfigurationManager(0) + 24);
      v26 = MEMORY[0x277D84B78];
      v25[0] = v20;
      sub_226D6B5BC();
      sub_226BE335C(v10);
      sub_226BE335C(v12);
      return sub_226AC47B0(v25, &unk_27D7A8BB0, &unk_226D74340);
    }
  }

  return result;
}

void sub_226BE4ED0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7E40, &qword_226D76968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D70840;
  v2 = *MEMORY[0x277CDC5E8];
  *(inited + 32) = *MEMORY[0x277CDC5E8];
  v3 = sub_226D6CCAC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = v2;
  sub_226D6CC9C();
  type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
  sub_226BE4228(&qword_27D7A7E08, type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem);
  v7 = sub_226D6CC8C();
  if (v0)
  {

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AC8, &unk_226D76970);
    swift_arrayDestroy();
  }

  else
  {
    v9 = v7;
    v10 = v8;

    *(inited + 64) = MEMORY[0x277CC9318];
    *(inited + 40) = v9;
    *(inited + 48) = v10;
    sub_226B23454(inited);
    swift_setDeallocating();
    sub_226AC47B0(inited + 32, &qword_27D7A6AC8, &unk_226D76970);
    sub_226BE42A0();
    type metadata accessor for CFString(0);
    sub_226BE4228(&qword_27D7A6048, type metadata accessor for CFString);
    v11 = sub_226D6E2AC();

    v12 = sub_226D6E2AC();

    v13 = SecItemUpdate(v11, v12);

    if (v13)
    {
      sub_226AE59B4(0, &qword_27D7A7DF0, 0x277CCA9B8);
      v14 = sub_226BE47FC(v13);
      sub_226BE5D2C();
      swift_allocError();
      *v15 = v14;
      *(v15 + 8) = 3;
      swift_willThrow();
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OfflineLabConfigurationManager.setHasPermission(_:)(Swift::Bool a1)
{
  v49 = a1;
  v2 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71D0, &qword_226D76660);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  OfflineLabConfigurationManager.userItem.getter(&v46 - v18);
  if (!v1)
  {
    v20 = v49;
    v47 = v19;
    v48 = 0;
    sub_226BE5D80(v19, v17);
    if ((*(v3 + 48))(v17, 1, v2) == 1)
    {
      sub_226AC47B0(v17, &qword_27D7A71D0, &qword_226D76660);
      v21 = v7;
      v22 = &v7[*(v2 + 20)];
      sub_226D6D51C();
      *v7 = v20;
      *&v7[*(v2 + 24)] = 256;
      v23 = sub_226BE42A0();
      v24 = *MEMORY[0x277CDC5E8];
      v25 = sub_226D6CCAC();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v28 = v24;
      sub_226D6CC9C();
      sub_226BE4228(&qword_27D7A7E08, type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem);
      v29 = v48;
      v30 = sub_226D6CC8C();
      v48 = v29;
      if (v29)
      {

        sub_226BE335C(v21);
        sub_226AC47B0(v47, &qword_27D7A71D0, &qword_226D76660);

        return;
      }

      v39 = v30;
      v40 = v31;

      v52 = MEMORY[0x277CC9318];
      *&v51 = v39;
      *(&v51 + 1) = v40;
      sub_226B24A98(&v51, v50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v23;
      sub_226BE5BEC(v50, v28, isUniquelyReferenced_nonNull_native);

      type metadata accessor for CFString(0);
      sub_226BE4228(&qword_27D7A6048, type metadata accessor for CFString);
      v42 = sub_226D6E2AC();

      v43 = SecItemAdd(v42, 0);

      v38 = v47;
      if (v43)
      {
        sub_226AE59B4(0, &qword_27D7A7DF0, 0x277CCA9B8);
        v44 = sub_226BE47FC(v43);
        sub_226BE5D2C();
        swift_allocError();
        *v45 = v44;
        *(v45 + 8) = 2;
        swift_willThrow();
        sub_226BE335C(v21);
        sub_226AC47B0(v38, &qword_27D7A71D0, &qword_226D76660);
        return;
      }

      v12 = v21;
    }

    else
    {
      sub_226BE3294(v17, v12);
      if (*v12 != v20)
      {
        v32 = *(v2 + 20);
        v33 = sub_226D6D52C();
        (*(*(v33 - 8) + 16))(&v10[v32], &v12[v32], v33);
        v34 = *(v2 + 24);
        v35 = v12[v34];
        v36 = v12[v34 + 1];
        *v10 = v20;
        v37 = &v10[v34];
        *v37 = v35;
        v37[1] = v36;
        sub_226BE4ED0();
        sub_226BE335C(v10);
        sub_226BE335C(v12);
        sub_226AC47B0(v47, &qword_27D7A71D0, &qword_226D76660);
        return;
      }

      v38 = v47;
    }

    sub_226BE335C(v12);
    sub_226AC47B0(v38, &qword_27D7A71D0, &qword_226D76660);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OfflineLabConfigurationManager.deleteUserItem()()
{
  sub_226BE42A0();
  type metadata accessor for CFString(0);
  sub_226BE4228(&qword_27D7A6048, type metadata accessor for CFString);
  v1 = sub_226D6E2AC();

  v2 = SecItemDelete(v1);

  v3 = v0 + *(type metadata accessor for OfflineLabConfigurationManager(0) + 24);
  sub_226D6B59C();
  if (v2)
  {
    v4 = v2 == -25300;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    sub_226AE59B4(0, &qword_27D7A7DF0, 0x277CCA9B8);
    v5 = sub_226BE47FC(v2);
    sub_226BE5D2C();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = 4;
    swift_willThrow();
  }
}

uint64_t sub_226BE57C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_226C2FDD4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_226C37EBC();
      v13 = v21;
      goto LABEL_8;
    }

    sub_226C31844(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_226C2FDD4(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_226D6F25C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_226C36244(v13, a3, a4, a1, a2, v24);
  }
}

uint64_t sub_226BE5918(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_226C30098(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for XPCActivityScheduler.ActivityInfo(0);
      return sub_226BE6EE4(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for XPCActivityScheduler.ActivityInfo);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_226C38488();
    goto LABEL_7;
  }

  sub_226C32284(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_226C30098(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_226D6F25C();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_226C36294(v10, a2, a1, v16);
}

id sub_226BE5A6C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_226C3015C(a2);
  v10 = *(v7 + 16);
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = *(v7 + 24);
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_226C386BC();
      goto LABEL_7;
    }

    sub_226C3264C(v12, a3 & 1);
    v23 = *v4;
    v24 = sub_226C3015C(a2);
    if ((v13 & 1) == (v25 & 1))
    {
      v9 = v24;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
    result = sub_226D6F25C();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = sub_226D6D52C();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v9;

    return v19(v21, a1, v20);
  }

LABEL_13:
  sub_226C3633C(v9, a2, a1, v15);

  return a2;
}

_OWORD *sub_226BE5BEC(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_226C301A0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_226C38A98();
      v8 = v16;
      goto LABEL_8;
    }

    sub_226C329AC(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_226C301A0(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_226D6F25C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);

    return sub_226B24A98(a1, v20);
  }

  else
  {
    sub_226C36430(v8, a2, a1, v19);

    return a2;
  }
}

unint64_t sub_226BE5D2C()
{
  result = qword_27D7A7DF8;
  if (!qword_27D7A7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7DF8);
  }

  return result;
}

uint64_t sub_226BE5D80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71D0, &qword_226D76660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BE5E18()
{
  result = sub_226D6B5EC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_226BE5EBC()
{
  sub_226D6D52C();
  if (v0 <= 0x3F)
  {
    sub_226BE5F50();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_226BE5F50()
{
  if (!qword_27D7A7E20)
  {
    v0 = sub_226D6EC9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A7E20);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13FinanceDaemon30OfflineLabConfigurationManagerV0cdeF5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 7u) <= 4)
  {
    return *(a1 + 8) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_226BE5FBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_226BE6004(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_226BE6048(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_226BE6084()
{
  result = qword_27D7A7E28;
  if (!qword_27D7A7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7E28);
  }

  return result;
}

unint64_t sub_226BE60DC()
{
  result = qword_27D7A7E30;
  if (!qword_27D7A7E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7E30);
  }

  return result;
}

unint64_t sub_226BE6134()
{
  result = qword_27D7A7E38;
  if (!qword_27D7A7E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7E38);
  }

  return result;
}

_OWORD *sub_226BE6188(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_226C2FDD4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_226C38D90();
      v11 = v19;
      goto LABEL_8;
    }

    sub_226C32F14(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_226C2FDD4(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_226D6F25C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return sub_226B24A98(a1, v23);
  }

  else
  {
    sub_226C36498(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_226BE62D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_226D680FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_226C302EC(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_226C38F34();
      goto LABEL_7;
    }

    sub_226C335AC(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_226C302EC(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_226C36504(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_226D6F25C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_226D68CEC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

_OWORD *sub_226BE64DC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_226C2FE4C(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_226C38F70();
      goto LABEL_7;
    }

    sub_226C33A58(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_226C2FE4C(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_226AE4FD4(a2, v22);
      return sub_226C36530(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_226D6F25C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);

  return sub_226B24A98(a1, v17);
}

uint64_t sub_226BE6628(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_226C2FDD4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_226C39114();
      v11 = v19;
      goto LABEL_8;
    }

    sub_226C34598(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_226C2FDD4(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      sub_226D6F25C();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  sub_226C363E8(v11, a2, a3, a1, v22);
}

uint64_t sub_226BE676C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_226D6B9BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_226C3064C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_226C39298();
      goto LABEL_7;
    }

    sub_226C3485C(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_226C3064C(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_226C365AC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_226D6F25C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_226BE6938(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_226D6D52C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_226C3049C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_226C392C0();
      goto LABEL_7;
    }

    sub_226C34C3C(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_226C3049C(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_226C365C4(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_226D6F25C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_226D67E5C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_226BE6B3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_226C2FDD4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_226C39D4C();
      result = v19;
      goto LABEL_8;
    }

    sub_226C356F0(v16, a4 & 1);
    v20 = *v5;
    result = sub_226C2FDD4(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_226D6F25C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
  }

  else
  {
    sub_226C363E8(result, a2, a3, a1, v22);
  }

  return result;
}

uint64_t sub_226BE6C6C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_226C2FE4C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for WebServicePendingTasksRetryState.TaskState();
      return sub_226BE6EE4(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_226C39EB8();
    goto LABEL_7;
  }

  sub_226C3599C(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_226C2FE4C(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_226D6F25C();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_226AE4FD4(a2, v23);
  return sub_226C367AC(v10, v23, a1, v16);
}

uint64_t sub_226BE6DB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696D726550736168 && a2 == 0xED00006E6F697373;
  if (v4 || (sub_226D6F21C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_226D6F21C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43656369766564 && a2 == 0xEB00000000746E75)
  {

    return 2;
  }

  else
  {
    v6 = sub_226D6F21C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_226BE6EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_226BE6F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_226BE6F70, 0, 0);
}

uint64_t sub_226BE6F70()
{
  v1 = v0[5];
  v2 = *(v1 + 56);
  if ((*(*(v1 + 64) + 8))())
  {
    v3 = v0[3];
    if (v3)
    {
      v4 = v0[4];
      v5 = swift_task_alloc();
      v0[6] = v5;
      *v5 = v0;
      v5[1] = sub_226BE734C;
      v6 = v0[5];

      return sub_226BE86AC(v3, v4);
    }

    v13 = v0[2];
    if (v13 >> 62)
    {
      if (v13 < 0)
      {
        v29 = v0[2];
      }

      v14 = sub_226D6EDFC();
      v0[7] = v14;
      if (v14)
      {
LABEL_16:
        if (v14 < 1)
        {
          __break(1u);
        }

        else
        {
          v15 = v0[2];
          v0[8] = 0;
          if ((v15 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x22AA8AFD0](0);
          }

          else
          {
            v16 = *(v15 + 32);
          }

          v2 = v16;
          v0[9] = v16;
          if (qword_28105F6C0 == -1)
          {
            goto LABEL_21;
          }
        }

        swift_once();
LABEL_21:
        v17 = sub_226D6E07C();
        v0[10] = __swift_project_value_buffer(v17, qword_28105F6C8);
        v18 = v2;
        v19 = sub_226D6E05C();
        v20 = sub_226D6E9AC();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412290;
          *(v21 + 4) = v18;
          *v22 = v18;
          v23 = v18;
          _os_log_impl(&dword_226AB4000, v19, v20, "Scheduling notification request: %@", v21, 0xCu);
          sub_226AC47B0(v22, &qword_27D7A5FB0, &qword_226D70870);
          MEMORY[0x22AA8BEE0](v22, -1, -1);
          MEMORY[0x22AA8BEE0](v21, -1, -1);
        }

        v24 = v0[5];

        v25 = v24[5];
        v26 = v24[6];
        __swift_project_boxed_opaque_existential_1(v24 + 2, v25);
        v27 = *(MEMORY[0x277CC7A88] + 4);
        v28 = swift_task_alloc();
        v0[11] = v28;
        *v28 = v0;
        v28[1] = sub_226BE778C;

        return MEMORY[0x282119030](v18, v25, v26);
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0[7] = v14;
      if (v14)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (qword_28105F6C0 != -1)
    {
      swift_once();
    }

    v8 = sub_226D6E07C();
    __swift_project_value_buffer(v8, qword_28105F6C8);
    v9 = sub_226D6E05C();
    v10 = sub_226D6E9AC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_226AB4000, v9, v10, "Wallet isn't visible, suppressing notifications", v11, 2u);
      MEMORY[0x22AA8BEE0](v11, -1, -1);
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_226BE734C(char a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_226BE744C, 0, 0);
}

uint64_t sub_226BE744C()
{
  if (*(v1 + 104) == 1)
  {
    if (qword_28105F6C0 != -1)
    {
      swift_once();
    }

    v2 = sub_226D6E07C();
    __swift_project_value_buffer(v2, qword_28105F6C8);
    v3 = sub_226D6E05C();
    v4 = sub_226D6E9AC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_226AB4000, v3, v4, "Associated app is installed, suppressing notifications", v5, 2u);
      MEMORY[0x22AA8BEE0](v5, -1, -1);
    }

    goto LABEL_22;
  }

  v6 = *(v1 + 16);
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v22 = *(v1 + 16);
    }

    v7 = sub_226D6EDFC();
    *(v1 + 56) = v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v1 + 56) = v7;
    if (!v7)
    {
LABEL_22:
      v23 = *(v1 + 8);

      return v23();
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v1 + 16);
    *(v1 + 64) = 0;
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x22AA8AFD0](0);
    }

    else
    {
      v9 = *(v8 + 32);
    }

    v0 = v9;
    *(v1 + 72) = v9;
    if (qword_28105F6C0 == -1)
    {
      goto LABEL_14;
    }
  }

  swift_once();
LABEL_14:
  v10 = sub_226D6E07C();
  *(v1 + 80) = __swift_project_value_buffer(v10, qword_28105F6C8);
  v11 = v0;
  v12 = sub_226D6E05C();
  v13 = sub_226D6E9AC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_226AB4000, v12, v13, "Scheduling notification request: %@", v14, 0xCu);
    sub_226AC47B0(v15, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v15, -1, -1);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
  }

  v17 = *(v1 + 40);

  v18 = v17[5];
  v19 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v18);
  v20 = *(MEMORY[0x277CC7A88] + 4);
  v21 = swift_task_alloc();
  *(v1 + 88) = v21;
  *v21 = v1;
  v21[1] = sub_226BE778C;

  return MEMORY[0x282119030](v11, v18, v19);
}

uint64_t sub_226BE778C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_226BE7AFC;
  }

  else
  {
    v3 = sub_226BE78A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226BE78A0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 64) + 1;
    *(v0 + 64) = v5;
    v6 = *(v0 + 16);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x22AA8AFD0]();
    }

    else
    {
      v7 = *(v6 + 8 * v5 + 32);
    }

    v8 = v7;
    *(v0 + 72) = v7;
    if (qword_28105F6C0 != -1)
    {
      swift_once();
    }

    v9 = sub_226D6E07C();
    *(v0 + 80) = __swift_project_value_buffer(v9, qword_28105F6C8);
    v10 = v8;
    v11 = sub_226D6E05C();
    v12 = sub_226D6E9AC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&dword_226AB4000, v11, v12, "Scheduling notification request: %@", v13, 0xCu);
      sub_226AC47B0(v14, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v14, -1, -1);
      MEMORY[0x22AA8BEE0](v13, -1, -1);
    }

    v16 = *(v0 + 40);

    v17 = v16[5];
    v18 = v16[6];
    __swift_project_boxed_opaque_existential_1(v16 + 2, v17);
    v19 = *(MEMORY[0x277CC7A88] + 4);
    v20 = swift_task_alloc();
    *(v0 + 88) = v20;
    *v20 = v0;
    v20[1] = sub_226BE778C;

    return MEMORY[0x282119030](v10, v17, v18);
  }
}

uint64_t sub_226BE7AFC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 96);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to schedule notification request with error: %@", v8, 0xCu);
    sub_226AC47B0(v9, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);

    v4 = *(v0 + 72);
  }

  else
  {
  }

  v13 = *(v0 + 56);
  v12 = *(v0 + 64);

  if (v12 + 1 == v13)
  {
    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 64) + 1;
    *(v0 + 64) = v16;
    v17 = *(v0 + 16);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x22AA8AFD0]();
    }

    else
    {
      v18 = *(v17 + 8 * v16 + 32);
    }

    v19 = v18;
    *(v0 + 72) = v18;
    if (qword_28105F6C0 != -1)
    {
      swift_once();
    }

    v20 = sub_226D6E07C();
    *(v0 + 80) = __swift_project_value_buffer(v20, qword_28105F6C8);
    v21 = v19;
    v22 = sub_226D6E05C();
    v23 = sub_226D6E9AC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&dword_226AB4000, v22, v23, "Scheduling notification request: %@", v24, 0xCu);
      sub_226AC47B0(v25, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v25, -1, -1);
      MEMORY[0x22AA8BEE0](v24, -1, -1);
    }

    v27 = *(v0 + 40);

    v28 = v27[5];
    v29 = v27[6];
    __swift_project_boxed_opaque_existential_1(v27 + 2, v28);
    v30 = *(MEMORY[0x277CC7A88] + 4);
    v31 = swift_task_alloc();
    *(v0 + 88) = v31;
    *v31 = v0;
    v31[1] = sub_226BE778C;

    return MEMORY[0x282119030](v21, v28, v29);
  }
}

uint64_t sub_226BE7E54(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v4 = sub_226D6714C();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult();
  v7 = *(*(updated - 8) + 64);
  v8 = MEMORY[0x28223BE20](updated);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = (&v49 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC0, &unk_226D73820);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v49 - v19;
  v21 = sub_226D6D1AC();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = type metadata accessor for NotificationAttachmentStore();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = NotificationAttachmentStore.init(notificationAttachmentDirectory:)(v20);
  v26 = a1;
  v53 = v2;
  v27 = sub_226BD0228(a1, v25);
  v29 = v28;
  v31 = v30;

  if (v27)
  {

    sub_226BE998C(v29);
    v32 = os_transaction_create();
    v56[0] = v27;
    v56[1] = v29;
    v56[2] = v31;
    v57 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6ED8, &qword_226D73848);
    sub_226D6E7CC();
    (*(v13 + 8))(v16, v12);
    sub_226B6AE3C(v29);
  }

  sub_226BB8488(v26, v11);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    return sub_226BB84EC(v11);
  }

  v33 = *v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
  sub_226AC47B0(v11 + *(v34 + 48), &qword_27D7A7798, &unk_226D75570);
  v35 = v53;
  sub_226AC40E8((v53 + 9), v56, &qword_27D7A6910, &unk_226D721C0);
  if (v57)
  {
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v37 = v49;
    v36 = v50;
    v38 = v51;
    (*(v50 + 104))(v49, *MEMORY[0x277CC6B48], v51);
    sub_226D680BC();
    (*(v36 + 8))(v37, v38);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
  }

  else
  {
    sub_226AC47B0(v56, &qword_27D7A6910, &unk_226D721C0);
  }

  v40 = v52;
  sub_226BB8488(v26, v52);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v42 = *v40;
  if (!EnumCaseMultiPayload)
  {

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
    v47 = *(v40 + *(v46 + 64) + 3);
    sub_226AC47B0(v40 + *(v46 + 48), &qword_27D7A7798, &unk_226D75570);
    if (v47 != 1)
    {
      goto LABEL_12;
    }

LABEL_11:
    v45 = v35[18];
    __swift_project_boxed_opaque_existential_1(v35 + 14, v35[17]);
    sub_226D69A5C();
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
    v44 = *(v40 + *(v43 + 64) + 3);
    sub_226AC47B0(v40 + *(v43 + 48), &qword_27D7A7798, &unk_226D75570);
    if ((v44 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v48 = *(v40 + 11);

  if (v48)
  {
    goto LABEL_11;
  }

LABEL_12:
  sub_226AC40E8((v35 + 19), v56, &qword_27D7A6FA0, &qword_226D79780);
  if (v57)
  {
    sub_226BC7B60(v33);

    return sub_226B5BD20(v56);
  }

  else
  {

    return sub_226AC47B0(v56, &qword_27D7A6FA0, &qword_226D79780);
  }
}

uint64_t sub_226BE8540()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7E48, &unk_226D769C8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  __swift_allocate_value_buffer(v5, qword_281064538);
  v6 = __swift_project_value_buffer(v5, qword_281064538);
  v7 = *(v5 + 48);
  (*(v1 + 104))(v4, *MEMORY[0x277D85778], v0);
  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7E50, &unk_226D769D8);
  v6[4] = sub_226BE9928();
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_226D6E7AC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_226BE86AC(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_226D690AC();
  v3[25] = v4;
  v5 = *(v4 - 8);
  v3[26] = v5;
  v6 = *(v5 + 64) + 15;
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BE8770, 0, 0);
}

uint64_t sub_226BE8770()
{
  sub_226AC40E8(*(v0 + 192) + 72, v0 + 56, &qword_27D7A5FD0, &qword_226D708A0);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 176);
    sub_226AC484C((v0 + 56), v0 + 16);
    v2 = *(v1 + 16);
    *(v0 + 224) = v2;
    if (v2)
    {
      v3 = *(v0 + 176);
      *(v0 + 232) = 0;
      v4 = *(v0 + 216);
      v5 = *(v3 + 32);
      v6 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      sub_226D67D4C();
      v7 = *(MEMORY[0x277CC7758] + 4);
      v8 = swift_task_alloc();
      *(v0 + 240) = v8;
      *v8 = v0;
      v8[1] = sub_226BE8C7C;
      v9 = *(v0 + 216);

      return MEMORY[0x282118688]();
    }

    v10 = *(v0 + 184);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = *(v0 + 192);
      v13 = *(v12 + 112);
      v14 = *(v12 + 120);
      v15 = *(v14 + 8);
      v29 = sub_226D6EC9C();
      v30 = *(*(v29 - 8) + 64) + 15;
      v28 = (*(v29 - 8) + 8);
      v16 = (v10 + 40);
      do
      {
        v18 = *(v16 - 1);
        v17 = *v16;
        v19 = swift_task_alloc();

        v15(v18, v17, v13, v14);
        v20 = *(v13 - 8);
        if ((*(v20 + 48))(v19, 1, v13) == 1)
        {
          (*v28)(v19, v29);

          *(v0 + 168) = 0;
          *(v0 + 152) = 0u;
          *(v0 + 136) = 0u;
        }

        else
        {
          *(v0 + 120) = v13;
          *(v0 + 128) = v14;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
          (*(v20 + 32))(boxed_opaque_existential_1, v19, v13);

          v22 = *(v0 + 112);
          v23 = *(v0 + 120);
          *(v0 + 136) = *(v0 + 96);
          *(v0 + 152) = v22;
          *(v0 + 160) = v23;
          if (v23)
          {
            sub_226AC47B0(v0 + 136, &qword_27D7A7E58, &qword_226D769F8);
            __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
            v26 = 1;
            goto LABEL_16;
          }
        }

        v16 += 2;
        sub_226AC47B0(v0 + 136, &qword_27D7A7E58, &qword_226D769F8);
        --v11;
      }

      while (v11);
    }

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  else
  {
    sub_226AC47B0(v0 + 56, &qword_27D7A5FD0, &qword_226D708A0);
  }

  v26 = 0;
LABEL_16:
  v24 = *(v0 + 216);

  v25 = *(v0 + 8);

  return v25(v26);
}

uint64_t sub_226BE8C7C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v7 = sub_226BE9298;
  }

  else
  {
    *(v4 + 256) = a1 & 1;
    v7 = sub_226BE8DA8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226BE8DA8()
{
  v1 = *(v0 + 256);
  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
  if (v1)
  {
LABEL_2:
    v2 = 1;
LABEL_22:
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v36 = *(v0 + 216);

    v37 = *(v0 + 8);

    return v37(v2);
  }

  v3 = *(v0 + 232) + 1;
  if (v3 == *(v0 + 224))
  {
    v4 = *(v0 + 184);
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_21:
      v2 = 0;
      goto LABEL_22;
    }

    v6 = *(v0 + 248);
    v7 = *(v0 + 192);
    v8 = *(v7 + 112);
    v9 = *(v7 + 120);
    v10 = v9 + 8;
    v43 = *(v9 + 8);
    v40 = sub_226D6EC9C();
    v42 = *(*(v40 - 8) + 64) + 15;
    v39 = (*(v40 - 8) + 8);
    v11 = (v4 + 40);
    v41 = v8;
    while (1)
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v14 = swift_task_alloc();

      v43(v13, v12, v8, v9);
      if (v6)
      {
        break;
      }

      v26 = *(v8 - 8);
      if ((*(v26 + 48))(v14, 1, v8) == 1)
      {
        (*v39)(v14, v40);

LABEL_7:
        *(v0 + 168) = 0;
        *(v0 + 152) = 0u;
        *(v0 + 136) = 0u;
        goto LABEL_8;
      }

      *(v0 + 120) = v8;
      *(v0 + 128) = v9;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
      (*(v26 + 32))(boxed_opaque_existential_1, v14, v8);

      v28 = *(v0 + 112);
      v29 = *(v0 + 120);
      *(v0 + 136) = *(v0 + 96);
      *(v0 + 152) = v28;
      *(v0 + 160) = v29;
      if (v29)
      {
        sub_226AC47B0(v0 + 136, &qword_27D7A7E58, &qword_226D769F8);
        goto LABEL_2;
      }

LABEL_8:
      v11 += 2;
      sub_226AC47B0(v0 + 136, &qword_27D7A7E58, &qword_226D769F8);
      v6 = 0;
      if (!--v5)
      {
        goto LABEL_21;
      }
    }

    if (qword_28105F6C0 != -1)
    {
      swift_once();
    }

    v15 = sub_226D6E07C();
    __swift_project_value_buffer(v15, qword_28105F6C8);
    v16 = v6;
    v17 = sub_226D6E05C();
    v18 = sub_226D6E9CC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = v9;
      v21 = v10;
      v22 = swift_slowAlloc();
      *v19 = 138412290;
      v23 = v6;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_226AB4000, v17, v18, "Failed to check bundle presence with error: %@", v19, 0xCu);
      sub_226AC47B0(v22, &qword_27D7A5FB0, &qword_226D70870);
      v25 = v22;
      v10 = v21;
      v9 = v20;
      v8 = v41;
      MEMORY[0x22AA8BEE0](v25, -1, -1);
      MEMORY[0x22AA8BEE0](v19, -1, -1);
    }

    else
    {
    }

    goto LABEL_7;
  }

  *(v0 + 232) = v3;
  v30 = *(v0 + 216);
  v31 = *(*(v0 + 176) + 8 * v3 + 32);
  v32 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_226D67D4C();
  v33 = *(MEMORY[0x277CC7758] + 4);
  v34 = swift_task_alloc();
  *(v0 + 240) = v34;
  *v34 = v0;
  v34[1] = sub_226BE8C7C;
  v35 = *(v0 + 216);

  return MEMORY[0x282118688]();
}

uint64_t sub_226BE9298()
{
  if (qword_28105F6C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 248);
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F6C8);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 248);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to check app installation with error: %@", v7, 0xCu);
    sub_226AC47B0(v8, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v11 = *(v0 + 248);
  v12 = *(v0 + 208);
  v13 = *(v0 + 216);
  v14 = *(v0 + 200);

  (*(v12 + 8))(v13, v14);
  v15 = *(v0 + 232) + 1;
  if (v15 == *(v0 + 224))
  {
    v16 = *(v0 + 184);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = *(v0 + 192);
      v19 = *(v18 + 112);
      v20 = *(v18 + 120);
      v42 = *(v20 + 8);
      v40 = sub_226D6EC9C();
      v41 = *(*(v40 - 8) + 64) + 15;
      v39 = (*(v40 - 8) + 8);
      v21 = (v16 + 40);
      do
      {
        v23 = *(v21 - 1);
        v22 = *v21;
        v24 = swift_task_alloc();

        v42(v23, v22, v19, v20);
        v25 = *(v19 - 8);
        if ((*(v25 + 48))(v24, 1, v19) == 1)
        {
          (*v39)(v24, v40);

          *(v0 + 168) = 0;
          *(v0 + 152) = 0u;
          *(v0 + 136) = 0u;
        }

        else
        {
          *(v0 + 120) = v19;
          *(v0 + 128) = v20;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
          (*(v25 + 32))(boxed_opaque_existential_1, v24, v19);

          v27 = *(v0 + 112);
          v28 = *(v0 + 120);
          *(v0 + 136) = *(v0 + 96);
          *(v0 + 152) = v27;
          *(v0 + 160) = v28;
          if (v28)
          {
            sub_226AC47B0(v0 + 136, &qword_27D7A7E58, &qword_226D769F8);
            v37 = 1;
            goto LABEL_17;
          }
        }

        v21 += 2;
        sub_226AC47B0(v0 + 136, &qword_27D7A7E58, &qword_226D769F8);
        --v17;
      }

      while (v17);
    }

    v37 = 0;
LABEL_17:
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v35 = *(v0 + 216);

    v36 = *(v0 + 8);

    return v36(v37);
  }

  else
  {
    *(v0 + 232) = v15;
    v29 = *(v0 + 216);
    v30 = *(*(v0 + 176) + 8 * v15 + 32);
    v31 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_226D67D4C();
    v32 = *(MEMORY[0x277CC7758] + 4);
    v33 = swift_task_alloc();
    *(v0 + 240) = v33;
    *v33 = v0;
    v33[1] = sub_226BE8C7C;
    v34 = *(v0 + 216);

    return MEMORY[0x282118688]();
  }
}

uint64_t sub_226BE98B4()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  sub_226AC47B0(v0 + 72, &qword_27D7A5FD0, &qword_226D708A0);

  return swift_deallocClassInstance();
}

unint64_t sub_226BE9928()
{
  result = qword_28105F4D0;
  if (!qword_28105F4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A7E50, &unk_226D769D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105F4D0);
  }

  return result;
}

uint64_t sub_226BE998C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for OrderNotificationCenter.Continuation()
{
  result = qword_2810619E0;
  if (!qword_2810619E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226BE9A40()
{
  sub_226BE9AAC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_226BE9AAC()
{
  if (!qword_28105F4F8)
  {
    v0 = sub_226D6E7DC();
    if (!v1)
    {
      atomic_store(v0, &qword_28105F4F8);
    }
  }
}

uint64_t sub_226BE9AFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_226BE9B44(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_226BE9BAC()
{
  v0 = sub_226D6E07C();
  __swift_allocate_value_buffer(v0, qword_27D7A7E60);
  v1 = __swift_project_value_buffer(v0, qword_27D7A7E60);
  if (qword_28105F680 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28105F688);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_226BE9C8C(uint64_t *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v12;
}

uint64_t sub_226BE9D80(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226BE9DA4, v2, 0);
}

uint64_t sub_226BE9DA4()
{
  v31 = v0;
  if (qword_27D7A5F78 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_27D7A7E60);

  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30[0] = v7;
    *v6 = 136315138;
    v8 = sub_226D66F6C();
    v9 = MEMORY[0x22AA8A6A0](v5, v8);
    v11 = sub_226AC4530(v9, v10, v30);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_226AB4000, v3, v4, "Detected data changes for: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v13 = v0[3];
  v12 = v0[4];
  v14 = v12[17];
  v15 = v12[18];
  __swift_project_boxed_opaque_existential_1(v12 + 14, v14);
  v16 = (*(v15 + 64))(v13, v14, v15);
  v0[5] = v16;
  v17 = v16;
  v18 = *(v16 + 16);
  if (v18 == 1)
  {
    v19 = 0xE800000000000000;
  }

  else
  {
    v19 = 0xEA00000000007365;
  }

  v20 = sub_226D6E05C();
  v21 = sub_226D6E9EC();

  if (os_log_type_enabled(v20, v21))
  {
    if (v18 == 1)
    {
      v22 = 0x79726576696C6564;
    }

    else
    {
      v22 = 0x69726576696C6564;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v30[0] = v24;
    *v23 = 134218242;
    *(v23 + 4) = v18;
    *(v23 + 12) = 2080;
    v25 = sub_226AC4530(v22, v19, v30);

    *(v23 + 14) = v25;
    _os_log_impl(&dword_226AB4000, v20, v21, "Marked %ld %s registrations as scheduled", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x22AA8BEE0](v24, -1, -1);
    MEMORY[0x22AA8BEE0](v23, -1, -1);
  }

  else
  {
  }

  v26 = swift_task_alloc();
  v0[6] = v26;
  *v26 = v0;
  v26[1] = sub_226BEA150;
  v27 = v0[4];
  v28 = v0[2];

  return sub_226BEA260(v17, v28);
}

uint64_t sub_226BEA150()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_226BEA260(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v5 = sub_226D6D4AC();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v8 = sub_226D66F5C();
  v3[13] = v8;
  v9 = *(v8 - 8);
  v3[14] = v9;
  v10 = *(v9 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BEA418, v2, 0);
}

uint64_t sub_226BEA418()
{
  v1 = v0[19];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[2];
  v5 = sub_226D6E59C();
  v6 = *(v3 + 104);
  v6(v1, *MEMORY[0x277CC6688], v2);
  if (*(v5 + 16) && (v7 = sub_226C303C4(v0[19]), (v8 & 1) != 0))
  {
    v9 = v0[19];
    v10 = v0[13];
    v11 = *(*(v5 + 56) + 8 * v7);
    v12 = *(v0[14] + 8);

    v12(v9, v10);
    v13 = *(v11 + 16);

    if (v13)
    {
      v14 = v0[4];
      sub_226BEAAF8(v0[3]);
    }
  }

  else
  {
    v12 = *(v0[14] + 8);
    v12(v0[19], v0[13]);
  }

  v15 = *MEMORY[0x277CC6678];
  v6(v0[18], v15, v0[13]);
  v97 = v6;
  v98 = v12;
  if (!*(v5 + 16) || (v16 = sub_226C303C4(v0[18]), (v17 & 1) == 0))
  {
    v32 = v0[8];
    v33 = v0[9];
    v34 = v0[7];
    v35 = v0[14] + 8;
    v12(v0[18], v0[13]);
    (*(v33 + 56))(v34, 1, 1, v32);
    goto LABEL_11;
  }

  v18 = v0[13];
  v19 = v12;
  v20 = v0[9];
  v90 = v0[18];
  v91 = v0[8];
  v21 = v0[7];
  v22 = *(*(v5 + 56) + 8 * v16);
  v23 = v0[14] + 8;

  v19(v90, v18);
  sub_226D6E58C();

  v24 = v21;
  v6 = v97;
  if ((*(v20 + 48))(v24, 1, v91) == 1)
  {
LABEL_11:
    sub_226AC47B0(v0[7], &qword_27D7A8BE0, &unk_226D718F0);
    goto LABEL_12;
  }

  v25 = v0[17];
  v27 = v0[12];
  v26 = v0[13];
  v28 = v0[8];
  v29 = v0[9];
  v30 = v0[3];
  v92 = v0[4];
  (*(v29 + 32))(v27, v0[7], v28);
  v97(v25, v15, v26);
  sub_226BEAFF4(v27, v25, v30);
  v98(v25, v26);
  v31 = v27;
  v6 = v97;
  (*(v29 + 8))(v31, v28);
LABEL_12:
  v36 = *MEMORY[0x277CC6670];
  v6(v0[16], v36, v0[13]);
  if (!*(v5 + 16) || (v37 = sub_226C303C4(v0[16]), (v38 & 1) == 0))
  {
    v53 = v0[8];
    v54 = v0[9];
    v55 = v0[6];
    v56 = v0[14] + 8;
    v98(v0[16], v0[13]);
    (*(v54 + 56))(v55, 1, 1, v53);
    goto LABEL_17;
  }

  v39 = v0[16];
  v40 = v0[13];
  v41 = v0[9];
  v93 = v0[8];
  v42 = v0[6];
  v43 = *(*(v5 + 56) + 8 * v37);
  v44 = v0[14] + 8;

  v98(v39, v40);
  sub_226D6E58C();

  v45 = v42;
  v6 = v97;
  if ((*(v41 + 48))(v45, 1, v93) == 1)
  {
LABEL_17:
    sub_226AC47B0(v0[6], &qword_27D7A8BE0, &unk_226D718F0);
    goto LABEL_18;
  }

  v46 = v0[17];
  v47 = v0[13];
  v48 = v0[11];
  v49 = v0[8];
  v50 = v0[9];
  v51 = v0[3];
  v94 = v0[4];
  (*(v50 + 32))(v48, v0[6], v49);
  v97(v46, v36, v47);
  sub_226BEAFF4(v48, v46, v51);
  v98(v46, v47);
  v52 = v48;
  v6 = v97;
  (*(v50 + 8))(v52, v49);
LABEL_18:
  v57 = *MEMORY[0x277CC6680];
  v6(v0[15], v57, v0[13]);
  if (*(v5 + 16) && (v58 = sub_226C303C4(v0[15]), (v59 & 1) != 0))
  {
    v60 = v0[15];
    v61 = v0[13];
    v62 = v0[9];
    v95 = v0[8];
    v63 = v0[5];
    v64 = *(*(v5 + 56) + 8 * v58);
    v65 = v0[14] + 8;

    v98(v60, v61);

    sub_226D6E58C();

    if ((*(v62 + 48))(v63, 1, v95) != 1)
    {
      v66 = v0[17];
      v67 = v0[13];
      v69 = v0[9];
      v68 = v0[10];
      v70 = v0[8];
      v96 = v0[4];
      v71 = v0[3];
      (*(v69 + 32))(v68, v0[5], v70);
      v97(v66, v57, v67);
      sub_226BEAFF4(v68, v66, v71);
      v98(v66, v67);
      (*(v69 + 8))(v68, v70);
      goto LABEL_24;
    }
  }

  else
  {
    v73 = v0[14];
    v72 = v0[15];
    v74 = v0[13];
    v75 = v0[8];
    v76 = v0[9];
    v77 = v0[5];

    v98(v72, v74);
    (*(v76 + 56))(v77, 1, 1, v75);
  }

  sub_226AC47B0(v0[5], &qword_27D7A8BE0, &unk_226D718F0);
LABEL_24:
  v79 = v0[18];
  v78 = v0[19];
  v81 = v0[16];
  v80 = v0[17];
  v82 = v0[15];
  v84 = v0[11];
  v83 = v0[12];
  v85 = v0[10];
  v87 = v0[6];
  v86 = v0[7];
  v99 = v0[5];

  v88 = v0[1];

  return v88();
}

uint64_t sub_226BEAAF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_226D66F5C();
  v44 = *(v4 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  if (qword_27D7A5F78 != -1)
  {
    swift_once();
  }

  v15 = sub_226D6E07C();
  v16 = __swift_project_value_buffer(v15, qword_27D7A7E60);
  v17 = v8[2];
  v42 = a1;
  v17(v14, a1, v7);
  v40 = v16;
  v18 = sub_226D6E05C();
  v19 = sub_226D6E9EC();
  v20 = os_log_type_enabled(v18, v19);
  v41 = v8;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v38 = v2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v39 = v4;
    v24 = v23;
    v45 = v23;
    *v22 = 136315138;
    sub_226BEEB10(&qword_281062B80, 255, MEMORY[0x277CC9578]);
    v25 = sub_226D6F1CC();
    v27 = v26;
    v28 = v8[1];
    v28(v14, v7);
    v29 = sub_226AC4530(v25, v27, &v45);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_226AB4000, v18, v19, "Scheduling immediate background task starting at: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    v30 = v24;
    v4 = v39;
    MEMORY[0x22AA8BEE0](v30, -1, -1);
    v31 = v22;
    v2 = v38;
    MEMORY[0x22AA8BEE0](v31, -1, -1);
  }

  else
  {

    v28 = v8[1];
    v28(v14, v7);
  }

  v33 = v43;
  v32 = v44;
  (*(v44 + 104))(v43, *MEMORY[0x277CC6688], v4);
  v34 = v2[22];
  v35 = v2[23];
  __swift_project_boxed_opaque_existential_1(v2 + 19, v34);
  sub_226D66F4C();
  sub_226D6D41C();
  (*(v35 + 8))(v33, v12, v34, v35);
  v28(v12, v7);
  return (*(v32 + 8))(v33, v4);
}

uint64_t sub_226BEAFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D66F5C();
  v64 = *(v6 - 8);
  v7 = v64[8];
  v8 = MEMORY[0x28223BE20](v6);
  v58 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v52 - v10;
  v12 = sub_226D6D4AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v62 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v52 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v52 - v20;
  sub_226BEEB10(&qword_27D7A66D8, 255, MEMORY[0x277CC9578]);
  v22 = sub_226D6E33C();
  v63 = v13;
  v23 = *(v13 + 16);
  if (v22)
  {
    v24 = a3;
  }

  else
  {
    v24 = a1;
  }

  v23(v21, v24, v12);
  if (qword_27D7A5F78 != -1)
  {
    swift_once();
  }

  v25 = sub_226D6E07C();
  v26 = __swift_project_value_buffer(v25, qword_27D7A7E60);
  v27 = v64[2];
  v61 = a2;
  v55 = v27;
  v56 = v64 + 2;
  v27(v11, a2, v6);
  v23(v19, v21, v12);
  v23(v62, a3, v12);
  v57 = v26;
  v28 = sub_226D6E05C();
  v29 = sub_226D6E9EC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v52[1] = v6;
    v31 = v30;
    v53 = swift_slowAlloc();
    v65[0] = v53;
    *v31 = 136315650;
    sub_226BEEB10(&qword_281062C38, 255, MEMORY[0x277CC6690]);
    v32 = sub_226D6F1CC();
    v59 = v21;
    v34 = v33;
    v54 = v64[1];
    v54(v11, v6);
    v35 = sub_226AC4530(v32, v34, v65);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    sub_226BEEB10(&qword_281062B80, 255, MEMORY[0x277CC9578]);
    v36 = sub_226D6F1CC();
    v38 = v37;
    v39 = *(v63 + 8);
    v39(v19, v12);
    v40 = sub_226AC4530(v36, v38, v65);

    *(v31 + 14) = v40;
    *(v31 + 22) = 2080;
    v41 = v62;
    v42 = sub_226D6F1CC();
    v44 = v43;
    v39(v41, v12);
    v45 = sub_226AC4530(v42, v44, v65);
    v21 = v59;

    *(v31 + 24) = v45;
    _os_log_impl(&dword_226AB4000, v28, v29, "Scheduling %s background task for %s at %s", v31, 0x20u);
    v46 = v53;
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v46, -1, -1);
    v47 = v31;
    v48 = v39;
    MEMORY[0x22AA8BEE0](v47, -1, -1);
  }

  else
  {

    v48 = *(v63 + 8);
    v48(v62, v12);
    v48(v19, v12);
    v54 = v64[1];
    v54(v11, v6);
  }

  v49 = v60[22];
  v50 = v60[23];
  __swift_project_boxed_opaque_existential_1(v60 + 19, v49);
  (*(v50 + 16))(v61, v21, v49, v50);
  return (v48)(v21, v12);
}

uint64_t sub_226BEB7D0()
{
  v1 = v0;
  v2 = sub_226D66F5C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[22];
  v8 = v0[23];
  __swift_project_boxed_opaque_existential_1(v0 + 19, v7);
  v9 = *MEMORY[0x277CC6688];
  v23 = v3[13];
  v23(v6, v9, v2);
  v26 = v3 + 13;
  v10 = *(v8 + 24);

  v10(v6, &unk_226D76AA8, v0, v7, v8);

  v24 = v3[1];
  v25 = v3 + 1;
  v24(v6, v2);
  v11 = v0[22];
  v12 = v0[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v1[22]);
  v13 = v23;
  v23(v6, *MEMORY[0x277CC6678], v2);
  v14 = *(v12 + 32);

  v14(v6, &unk_226D76AB8, v0, v11, v12);

  v15 = v24;
  v24(v6, v2);
  v16 = v0[22];
  v17 = v0[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v1[22]);
  v13(v6, *MEMORY[0x277CC6670], v2);
  v18 = *(v17 + 32);

  v18(v6, &unk_226D76AC8, v0, v16, v17);

  v15(v6, v2);
  v19 = v0[22];
  v20 = v0[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v1[22]);
  v13(v6, *MEMORY[0x277CC6680], v2);
  v21 = *(v20 + 32);

  v21(v6, &unk_226D76AD8, v0, v19, v20);

  return (v24)(v6, v2);
}

uint64_t sub_226BEBB00(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_226D6D4AC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BEBBC0, 0, 0);
}

uint64_t sub_226BEBBC0()
{
  v1 = v0[5];
  v2 = v0[2];
  v0[6] = os_transaction_create();
  sub_226D6D46C();

  return MEMORY[0x2822009F8](sub_226BEBC40, v2, 0);
}

uint64_t sub_226BEBC40()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277CC6558] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_226BEBD28;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282116CE0](v5, "backgroundDelivery/immediate", 28, 2, &unk_226D76BF8, v3, v6);
}

uint64_t sub_226BEBD28()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_226BEBF34;
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 16);

    v5 = sub_226BEBE50;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_226BEBE50()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  return MEMORY[0x2822009F8](sub_226BEBEC8, 0, 0);
}

uint64_t sub_226BEBEC8()
{
  v2 = v0[5];
  v1 = v0[6];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_226BEBF34()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_226BEBFC4, 0, 0);
}

uint64_t sub_226BEBFC4()
{
  v2 = v0[5];
  v1 = v0[6];
  swift_unknownObjectRelease();

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_226BEC030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_226D6D4AC();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BEC0F4, 0, 0);
}

uint64_t sub_226BEC0F4()
{
  v1 = v0[7];
  v2 = v0[4];
  v0[8] = os_transaction_create();
  sub_226D6D46C();

  return MEMORY[0x2822009F8](sub_226BEC174, v2, 0);
}

uint64_t sub_226BEC174()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = *(MEMORY[0x277CC6558] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_226BEC264;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282116CE0](v6, "backgroundDelivery/hourly", 25, 2, &unk_226D76BE8, v3, v7);
}

void sub_226BEC264()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 72);
    v6 = *(v2 + 32);

    MEMORY[0x2822009F8](sub_226BEC3A4, v6, 0);
  }
}

uint64_t sub_226BEC3A4()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  return MEMORY[0x2822009F8](sub_226BEC41C, 0, 0);
}

uint64_t sub_226BEC41C()
{
  v2 = v0[7];
  v1 = v0[8];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_226BEC484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_226D6D4AC();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BEC548, 0, 0);
}

uint64_t sub_226BEC548()
{
  v1 = v0[7];
  v2 = v0[4];
  v0[8] = os_transaction_create();
  sub_226D6D46C();

  return MEMORY[0x2822009F8](sub_226BEC5C8, v2, 0);
}

uint64_t sub_226BEC5C8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = *(MEMORY[0x277CC6558] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_226BEC6B8;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282116CE0](v6, "backgroundDelivery/daily", 24, 2, &unk_226D76BD8, v3, v7);
}

void sub_226BEC6B8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 72);
    v6 = *(v2 + 32);

    MEMORY[0x2822009F8](sub_226BEC7F8, v6, 0);
  }
}

uint64_t sub_226BEC7F8()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  return MEMORY[0x2822009F8](sub_226BEEE44, 0, 0);
}

uint64_t sub_226BEC870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_226D6D4AC();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BEC934, 0, 0);
}

uint64_t sub_226BEC934()
{
  v1 = v0[7];
  v2 = v0[4];
  v0[8] = os_transaction_create();
  sub_226D6D46C();

  return MEMORY[0x2822009F8](sub_226BEC9B4, v2, 0);
}

uint64_t sub_226BEC9B4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = *(MEMORY[0x277CC6558] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_226BEC6B8;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282116CE0](v6, "backgroundDelivery/weekly", 25, 2, &unk_226D76BC8, v3, v7);
}

uint64_t sub_226BECAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = sub_226D66F5C();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BECB64, 0, 0);
}

uint64_t sub_226BECB64()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = v5[17];
  v7 = v5[18];
  __swift_project_boxed_opaque_existential_1(v5 + 14, v6);
  v8 = *MEMORY[0x277CC6688];
  v22 = *(v2 + 104);
  v22(v1, v8, v4);
  v9 = (*(v7 + 32))(v1, v3, v6, v7);
  v0[7] = v9;
  v10 = *(v2 + 8);
  v0[8] = v10;
  v0[9] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v4);
  if (*(v9 + 16))
  {
    v11 = v0[6];
    v12 = v0[4];
    v13 = v0[2];
    v14 = v13[27];
    v15 = v13[28];
    __swift_project_boxed_opaque_existential_1(v13 + 24, v14);
    v22(v11, v8, v12);
    v16 = *(MEMORY[0x277CC7D28] + 4);
    v17 = swift_task_alloc();
    v0[10] = v17;
    *v17 = v0;
    v17[1] = sub_226BECD64;
    v18 = v0[6];

    return MEMORY[0x282119A98](v9, v18, v14, v15);
  }

  else
  {

    v19 = v0[6];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_226BECD64(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 32);
  v9 = *v1;
  *(*v1 + 88) = a1;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_226BECEF0, 0, 0);
}

uint64_t sub_226BECEF0()
{
  v1 = v0[11];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v2[17];
  v5 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v4);
  (*(v5 + 56))(v1, v3, v4, v5);

  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_226BECFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = sub_226D66F5C();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BED084, 0, 0);
}

uint64_t sub_226BED084()
{
  (*(v0[7] + 104))(v0[8], *MEMORY[0x277CC6678], v0[6]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_226BEEE48;
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  return sub_226BED5A8(v2, v5, v3, v4);
}

uint64_t sub_226BED144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = sub_226D66F5C();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BED208, 0, 0);
}

uint64_t sub_226BED208()
{
  (*(v0[7] + 104))(v0[8], *MEMORY[0x277CC6670], v0[6]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_226BED2C8;
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  return sub_226BED5A8(v2, v5, v3, v4);
}

uint64_t sub_226BED2C8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_226BED424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = sub_226D66F5C();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BED4E8, 0, 0);
}

uint64_t sub_226BED4E8()
{
  (*(v0[7] + 104))(v0[8], *MEMORY[0x277CC6680], v0[6]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_226BEEE48;
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  return sub_226BED5A8(v2, v5, v3, v4);
}

uint64_t sub_226BED5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = sub_226D6D4AC();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = sub_226D66F5C();
  v5[11] = v10;
  v11 = *(v10 - 8);
  v5[12] = v11;
  v12 = *(v11 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BED710, v4, 0);
}

uint64_t sub_226BED710()
{
  v58 = v0;
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = v1[17];
  v5 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v4);
  v6 = (*(v5 + 32))(v3, v2, v4, v5);
  *(v0 + 120) = v6;
  v7 = v1[17];
  v8 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v7);
  v9 = (*(v8 + 48))(v3, v2, v7, v8);
  *(v0 + 128) = v9;
  if (qword_27D7A5F78 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 112);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  v13 = *(v0 + 16);
  v14 = sub_226D6E07C();
  *(v0 + 136) = __swift_project_value_buffer(v14, qword_27D7A7E60);
  v15 = *(v12 + 16);
  *(v0 + 144) = v15;
  *(v0 + 152) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v10, v13, v11);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v16 = sub_226D6E05C();
  v17 = sub_226D6E9EC();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 112);
  v21 = *(v0 + 88);
  v20 = *(v0 + 96);
  if (v18)
  {
    v55 = v17;
    v22 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57 = v56;
    *v22 = 136315650;
    sub_226BEEB10(&qword_281062C38, 255, MEMORY[0x277CC6690]);
    v23 = sub_226D6F1CC();
    v25 = v24;
    log = v16;
    v26 = *(v20 + 8);
    v26(v19, v21);
    v27 = sub_226AC4530(v23, v25, &v57);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2048;
    v28 = *(v6 + 16);

    *(v22 + 14) = v28;

    *(v22 + 22) = 2048;
    v29 = *(v9 + 16);

    *(v22 + 24) = v29;

    _os_log_impl(&dword_226AB4000, log, v55, "Handling %s delivery for %ld pending and %ld upcoming", v22, 0x20u);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    MEMORY[0x22AA8BEE0](v56, -1, -1);
    MEMORY[0x22AA8BEE0](v22, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v26 = *(v20 + 8);
    v26(v19, v21);
  }

  *(v0 + 160) = v26;
  if (*(v6 + 16))
  {
    v30 = *(v0 + 48);
    v31 = v30[27];
    v32 = v30[28];
    __swift_project_boxed_opaque_existential_1(v30 + 24, v31);
    v33 = *(MEMORY[0x277CC7D28] + 4);
    v34 = swift_task_alloc();
    *(v0 + 168) = v34;
    *v34 = v0;
    v34[1] = sub_226BEDBF8;
    v35 = *(v0 + 16);

    return MEMORY[0x282119A98](v6, v35, v31, v32);
  }

  else
  {

    v37 = *(v0 + 128);
    v38 = *(v0 + 64);
    v39 = *(v0 + 72);
    v40 = *(v0 + 56);
    v41 = *(v0 + 40);
    (*(v0 + 32))(v36);
    sub_226D6E58C();

    if ((*(v39 + 48))(v40, 1, v38) == 1)
    {
      sub_226AC47B0(*(v0 + 56), &qword_27D7A8BE0, &unk_226D718F0);
    }

    else
    {
      v43 = *(v0 + 72);
      v42 = *(v0 + 80);
      v44 = *(v0 + 64);
      v45 = *(v0 + 48);
      v47 = *(v0 + 16);
      v46 = *(v0 + 24);
      (*(v43 + 32))(v42, *(v0 + 56), v44);
      sub_226BEAFF4(v42, v47, v46);
      (*(v43 + 8))(v42, v44);
    }

    v49 = *(v0 + 104);
    v48 = *(v0 + 112);
    v50 = *(v0 + 80);
    v51 = *(v0 + 56);

    v52 = *(v0 + 8);

    return v52();
  }
}

uint64_t sub_226BEDBF8(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_226BEDD2C, v4, 0);
}

uint64_t sub_226BEDD2C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = v2[17];
  v5 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v4);
  (*(v5 + 56))(v1, v3, v4, v5);
  v6 = *(v0 + 176);

  v8 = *(v0 + 128);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 56);
  v12 = *(v0 + 40);
  (*(v0 + 32))(v7);
  sub_226D6E58C();

  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    sub_226AC47B0(*(v0 + 56), &qword_27D7A8BE0, &unk_226D718F0);
  }

  else
  {
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
    v15 = *(v0 + 64);
    v16 = *(v0 + 48);
    v18 = *(v0 + 16);
    v17 = *(v0 + 24);
    (*(v14 + 32))(v13, *(v0 + 56), v15);
    sub_226BEAFF4(v13, v18, v17);
    (*(v14 + 8))(v13, v15);
  }

  v20 = *(v0 + 104);
  v19 = *(v0 + 112);
  v21 = *(v0 + 80);
  v22 = *(v0 + 56);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t *BackgroundDeliveryScheduler.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t BackgroundDeliveryScheduler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_226BEE170(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AD827C;

  return sub_226BE9D80(a1, a2);
}

void *sub_226BEE214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  (*(v6 + 32))(&v16 - v11);
  type metadata accessor for BackgroundDeliveryScheduler();
  v13 = swift_allocObject();
  (*(v6 + 16))(v10, v12, a3);
  v14 = sub_226BEE35C(v10, v13, a3, a4);
  (*(v6 + 8))(v12, a3);
  return v14;
}

void *sub_226BEE35C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_226D68D9C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v28[3] = a3;
  v28[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  swift_defaultActor_initialize();
  sub_226AE532C(v28, (a2 + 14));
  v11 = type metadata accessor for BackgroundDeliveryTasks();
  v12 = swift_allocObject();
  a2[22] = v11;
  a2[23] = &off_283A6E388;
  a2[19] = v12;
  v13 = sub_226D679FC();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_226D679EC();
  v26 = sub_226D6929C();
  v27 = MEMORY[0x277CC7820];
  __swift_allocate_boxed_opaque_existential_1(&v25);
  sub_226D6928C();
  sub_226D68D8C();
  v17 = sub_226D69A8C();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_226D69A7C();
  *&v25 = v16;
  v20 = sub_226D6A61C();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_226D6A60C();
  v26 = v20;
  v27 = MEMORY[0x277CC7C48];
  *&v25 = v23;
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  sub_226AC484C(&v25, (a2 + 24));
  return a2;
}

uint64_t sub_226BEE564()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226AE5A84;

  return sub_226BEBB00(v0);
}

uint64_t sub_226BEE5F4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AD827C;

  return sub_226BEC030(a1, a2, v2);
}

uint64_t sub_226BEE69C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AE5A84;

  return sub_226BEC484(a1, a2, v2);
}

uint64_t sub_226BEE744(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AE5A84;

  return sub_226BEC870(a1, a2, v2);
}

uint64_t sub_226BEE7EC(uint64_t a1, uint64_t a2)
{
  result = sub_226BEEB10(&qword_27D7A7E78, a2, type metadata accessor for BackgroundDeliveryScheduler);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of BackgroundDeliverySchedulerProviding.receivedData(deliveryDate:dataTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_226AE5A84;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BackgroundDeliveryScheduler.receivedData(deliveryDate:dataTypes:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_226AD827C;

  return v10(a1, a2);
}

uint64_t sub_226BEEB10(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_226BEEB58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226AE5A84;

  return sub_226BED424(a1, v4, v5, v7, v6);
}

uint64_t sub_226BEEC18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226AE5A84;

  return sub_226BED144(a1, v4, v5, v7, v6);
}

uint64_t sub_226BEECD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226AE5A84;

  return sub_226BECFC0(a1, v4, v5, v7, v6);
}

uint64_t sub_226BEED98(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226BECAA4(a1, v5, v4);
}

void sub_226BEEE4C(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v23 = a2;
  v22 = a1;
  v24 = a3;
  v25 = sub_226D6D4AC();
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v25);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6B40C();
  v21 = *(v10 - 8);
  v11 = *(v21 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_store);
  v27 = sub_226D676AC();
  v15 = *(v5 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_userIdentifierProvider + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_userIdentifierProvider), *(v5 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_userIdentifierProvider + 24));
  sub_226D6D46C();
  sub_226D6C00C();
  if (v4)
  {
    (*(v6 + 8))(v9, v25);
  }

  else
  {
    v16 = v21;
    v20 = v10;
    (*(v6 + 8))(v9, v25);
    v17 = sub_226AE532C(v5 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_piiProcessor, v26);
    MEMORY[0x28223BE20](v17);
    v18 = v27;
    *(&v19 - 6) = v27;
    *(&v19 - 5) = v5;
    *(&v19 - 4) = v22;
    *(&v19 - 24) = v23 & 1;
    *(&v19 - 2) = v26;
    *(&v19 - 1) = v13;
    sub_226D6C2CC();
    sub_226D6EB8C();

    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    (*(v16 + 8))(v13, v20);
  }
}

uint64_t sub_226BEF0EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v53 = a2;
  v49 = a7;
  v50 = a5;
  v51 = a4;
  v54[1] = *MEMORY[0x277D85DE8];
  v10 = sub_226D6B40C();
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v10);
  v45 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226D6893C();
  v44 = *(v46 - 8);
  v13 = *(v44 + 64);
  v14 = MEMORY[0x28223BE20](v46);
  v43 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  v18 = sub_226D6D4AC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_opt_self() currentQueryGenerationToken];
  v54[0] = 0;
  v24 = [a1 setQueryGenerationFromToken:v23 error:v54];

  v25 = v54[0];
  if (v24)
  {
    v42 = a6;
    v26 = *__swift_project_boxed_opaque_existential_1((v53 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_classifiableTransactionSource), *(v53 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_classifiableTransactionSource + 24));
    v27 = v25;
    sub_226D6D46C();
    v28 = v52;
    v29 = sub_226D47648(a3, 1, v51 & 1, v22, a1);
    if (v28)
    {
      result = (*(v19 + 8))(v22, v18);
    }

    else
    {
      v32 = v29;
      (*(v19 + 8))(v22, v18);
      v33 = v53;
      v34 = *(v53 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_paymentPassDataSourceProvider + 24);
      v35 = *(v53 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_paymentPassDataSourceProvider + 32);
      __swift_project_boxed_opaque_existential_1((v53 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_paymentPassDataSourceProvider), v34);
      (*(v35 + 8))(v54, v34, v35);
      v36 = v54[0];
      v54[0] = sub_226B23E98(MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v54[0]);
      *(&v42 - 6) = v33;
      *(&v42 - 5) = v54;
      *(&v42 - 4) = v36;
      *(&v42 - 3) = a1;
      *(&v42 - 2) = v50;
      sub_226C41710(sub_226BF1B60, &v42 - 8, v32);
      v38 = v37;

      __swift_project_boxed_opaque_existential_1((v33 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_transactionsSigner), *(v33 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_transactionsSigner + 24));
      sub_226B3E484(v38, v17);
      v39 = v44;
      v40 = v46;
      (*(v44 + 16))(v43, v17, v46);
      (*(v47 + 16))(v45, v42, v48);
      sub_226D6C2BC();

      (*(v39 + 8))(v17, v40);
    }
  }

  else
  {
    v31 = v54[0];
    sub_226D6D04C();

    result = swift_willThrow();
  }

  v41 = *MEMORY[0x277D85DE8];
  return result;
}

size_t sub_226BEF584@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v53 = a5;
  v57 = a4;
  v58 = a3;
  v59 = a2;
  v52 = a6;
  v7 = sub_226D6872C();
  v8 = *(v7 - 8);
  v64 = v7;
  v65 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v62 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_226D6D6DC();
  v61 = *(v63 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v60 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v48 - v15;
  v54 = sub_226D6D52C();
  v17 = *(v54 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v54);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_226D6D4AC();
  v55 = *(v21 - 8);
  v56 = v21;
  v22 = *(v55 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_226D6882C();
  v50 = *(v25 - 8);
  v51 = v25;
  v26 = *(v50 + 64);
  MEMORY[0x28223BE20](v25);
  v49 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;
  v29 = [*a1 accountObject];
  v66 = v57;
  v59 = sub_226BF0A04(v29, v58, &v66);

  v30 = v28;
  sub_226D6AB3C();
  v31 = [v30 accountObject];
  sub_226D69EBC();

  v58 = v30;
  sub_226D6ABCC();
  v32 = v54;
  (*(v17 + 56))(v16, 0, 1, v54);
  v33 = v60;
  sub_226D6D6AC();
  v34 = sub_226D6C16C();
  (*(v61 + 8))(v33, v63);
  sub_226AC47B0(v16, &qword_27D7A6D68, &qword_226D75210);
  (*(v17 + 8))(v20, v32);
  (*(v55 + 8))(v24, v56);
  if (!(v34 >> 62))
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v62;
    if (v35)
    {
      goto LABEL_3;
    }

LABEL_13:

    v40 = MEMORY[0x277D84F90];
LABEL_14:
    v47 = v49;
    sub_226BEFB80(v58, v40, v49);
    sub_226BF0208(v47, v59, v53, v52);

    return (*(v50 + 8))(v47, v51);
  }

  v35 = sub_226D6EDFC();
  v36 = v62;
  if (!v35)
  {
    goto LABEL_13;
  }

LABEL_3:
  v66 = MEMORY[0x277D84F90];
  result = sub_226AE27AC(0, v35 & ~(v35 >> 63), 0);
  if ((v35 & 0x8000000000000000) == 0)
  {
    v38 = 0;
    v39 = v34;
    v63 = v34 & 0xC000000000000001;
    v40 = v66;
    v41 = v34;
    do
    {
      if (v63)
      {
        v42 = MEMORY[0x22AA8AFD0](v38, v39);
      }

      else
      {
        v42 = *(v39 + 8 * v38 + 32);
      }

      v43 = v42;
      [v42 coordinate];
      [v43 coordinate];
      sub_226D6871C();

      v66 = v40;
      v44 = v36;
      v46 = v40[2];
      v45 = v40[3];
      if (v46 >= v45 >> 1)
      {
        sub_226AE27AC(v45 > 1, v46 + 1, 1);
        v40 = v66;
      }

      ++v38;
      v40[2] = v46 + 1;
      (*(v65 + 32))(v40 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v46, v44, v64);
      v36 = v44;
      v39 = v41;
    }

    while (v35 != v38);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_226BEFB80@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v77 = a3;
  v4 = sub_226D67D7C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v74 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D684BC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v75 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v73 = &v59 - v12;
  v13 = sub_226D6D52C();
  v71 = *(v13 - 8);
  v72 = v13;
  v14 = *(v71 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_226D6825C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7EE0, &unk_226D76CD8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_226D690EC();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7ED0, &qword_226D76CC8);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v59 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7EC8, &qword_226D76CC0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v36 = &v59 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v59 - v37;
  v39 = sub_226D6AB2C();
  if (v39)
  {
    sub_226BF10E0(v39, v38);
    v40 = sub_226D6877C();
    (*(*(v40 - 8) + 56))(v38, 0, 1, v40);
  }

  else
  {
    v41 = sub_226D6877C();
    (*(*(v41 - 8) + 56))(v38, 1, 1, v41);
  }

  if (sub_226D6ABDC())
  {
    sub_226D686DC();
    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v43 = sub_226D686CC();
  (*(*(v43 - 8) + 56))(v31, v42, 1, v43);
  sub_226D6AB5C();
  v70 = sub_226BF1B88(v24);
  v44 = sub_226D6AAEC();
  if (v44)
  {
    v45 = v44;
    v46 = v38;
    v47 = [v44 failedAttemptsCount];

    v69 = v47;
    v38 = v46;
  }

  else
  {
    v69 = 0;
  }

  v63 = v38;
  v68 = v36;
  sub_226AC40E8(v38, v36, &qword_27D7A7EC8, &qword_226D76CC0);
  v48 = sub_226D6ABFC();
  v66 = v49;
  v67 = v48;
  v50 = sub_226D6AB8C();
  v64 = v51;
  v65 = v50;
  v52 = [a1 accountObject];
  v53 = [v52 institutionId];

  v54 = sub_226D6E39C();
  v61 = v55;
  v62 = v54;

  sub_226AC40E8(v31, v29, &qword_27D7A7ED0, &qword_226D76CC8);
  v59 = sub_226D6AADC();
  v60 = v31;
  sub_226D6AA8C();
  sub_226D6ABEC();
  sub_226D684DC();
  sub_226D6ABCC();
  sub_226D6D4CC();
  (*(v71 + 8))(v16, v72);
  v56 = v73;
  sub_226D6AB3C();
  v57 = sub_226D6D4AC();
  (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
  sub_226D6AB4C();
  sub_226D684CC();
  sub_226D687AC();

  sub_226AC47B0(v60, &qword_27D7A7ED0, &qword_226D76CC8);
  return sub_226AC47B0(v63, &qword_27D7A7EC8, &qword_226D76CC0);
}

uint64_t sub_226BF0208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7EC8, &qword_226D76CC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v78 = &v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7ED0, &qword_226D76CC8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v77 = &v74 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7ED8, &qword_226D76CD0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v75 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v74 = &v74 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (&v74 - v21);
  MEMORY[0x28223BE20](v20);
  v24 = (&v74 - v23);
  v25 = sub_226D6882C();
  v26 = *(*(v25 - 8) + 16);
  v85 = a4;
  v26(a4, a1, v25);
  v86 = a1;
  v27 = sub_226D6878C();
  v29 = v28;
  v31 = a3[3];
  v30 = a3[4];
  v32 = __swift_project_boxed_opaque_existential_1(a3, v31);
  v89 = v27;
  v90 = v29;
  v81 = v32;
  v82 = v30;
  v83 = v31;
  sub_226D676DC();
  v33 = *(v14 + 88);
  v34 = v33(v24, v13);
  v80 = *MEMORY[0x277CC7710];
  v35 = v34 != v80;
  if (v34 == v80)
  {
    (*(v14 + 8))(v24, v13);
  }

  else
  {
    if (v34 != *MEMORY[0x277CC7718])
    {
      goto LABEL_30;
    }

    (*(v14 + 96))(v24, v13);
    v37 = *v24;
    v36 = v24[1];
  }

  sub_226D6879C();
  v89 = sub_226D6880C();
  v90 = v38;
  sub_226D676DC();
  v39 = v33(v22, v13);
  if (v39 == v80)
  {
    v79 = v35;
    (*(v14 + 8))(v22, v13);
  }

  else
  {
    if (v39 != *MEMORY[0x277CC7718])
    {
      goto LABEL_30;
    }

    (*(v14 + 96))(v22, v13);
    v41 = *v22;
    v40 = v22[1];
    v79 = 1;
  }

  sub_226D6881C();
  v42 = v77;
  sub_226D687FC();
  v43 = sub_226D686CC();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  v46 = v45(v42, 1, v43);
  v76 = v33;
  if (v46 == 1)
  {
    sub_226AC47B0(v42, &qword_27D7A7ED0, &qword_226D76CC8);
  }

  else
  {
    v47 = sub_226D686AC();
    v48 = v42;
    v50 = v49;
    (*(v44 + 8))(v48, v43);
    if (v50)
    {
      v51 = v47;
      v52 = sub_226D687EC();
      if (v45(v53, 1, v43))
      {

        v52(&v89, 0);
      }

      else
      {
        v87 = v51;
        v88 = v50;
        v65 = v74;
        sub_226D676DC();
        v66 = v76(v65, v13);
        if (v66 == v80)
        {
          (*(v14 + 8))(v65, v13);
        }

        else
        {
          if (v66 != *MEMORY[0x277CC7718])
          {
            goto LABEL_30;
          }

          (*(v14 + 96))(v65, v13);
          v69 = *v65;
          v70 = v65[1];
          v79 = 1;
        }

        sub_226D686BC();
        v52(&v89, 0);
      }
    }
  }

  v54 = v78;
  sub_226D687DC();
  v55 = sub_226D6877C();
  v56 = *(v55 - 8);
  v57 = *(v56 + 48);
  if (v57(v54, 1, v55) == 1)
  {
    sub_226AC47B0(v54, &qword_27D7A7EC8, &qword_226D76CC0);
    return sub_226D687BC();
  }

  v86 = v14;
  v58 = sub_226D6874C();
  v59 = v54;
  v60 = v58;
  v62 = v61;
  (*(v56 + 8))(v59, v55);
  if (!v62)
  {
    return sub_226D687BC();
  }

  v63 = sub_226D687CC();
  if (v57(v64, 1, v55))
  {

    v63(&v89, 0);
    return sub_226D687BC();
  }

  v87 = v60;
  v88 = v62;
  v67 = v75;
  sub_226D676DC();
  v68 = v76(v67, v13);
  if (v68 == v80)
  {
    (*(v86 + 8))(v67, v13);
LABEL_28:
    sub_226D6875C();
    v63(&v89, 0);
    return sub_226D687BC();
  }

  if (v68 == *MEMORY[0x277CC7718])
  {

    (*(v86 + 96))(v67, v13);
    v72 = *v67;
    v71 = v67[1];
    v79 = 1;
    goto LABEL_28;
  }

LABEL_30:
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226BF0A04(void *a1, uint64_t *a2, void **a3)
{
  v6 = sub_226D6B9BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = *a3;
  sub_226D69D5C();
  v15 = *a2;
  if (*(*a2 + 16) && (v16 = sub_226C3064C(v13), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
    v19 = *(v7 + 8);

    v19(v13, v6);
  }

  else
  {
    v42 = v11;
    v43 = v6;
    v20 = *(v7 + 8);
    v40 = v14;
    v41 = v20;
    v20(v13, v6);
    sub_226D6842C();
    v21 = [a1 institutionId];
    sub_226D6E39C();

    v22 = sub_226D683EC();

    v23 = v22;
    if (v22)
    {
      v24 = v23;
      v25 = [v23 piiRedactionConfiguration];

      v26 = v42;
      if (v25)
      {
        v27 = [v25 countryCodes];

        v18 = sub_226D6E89C();
      }

      else
      {
        v18 = MEMORY[0x277D84FA0];
      }
    }

    else
    {
      v18 = MEMORY[0x277D84FA0];
      v26 = v42;
    }

    v45 = v18;
    v28 = [a1 externalAccountId];
    if (v28)
    {
      v29 = v28;
      v30 = [v40 passWithFPANIdentifier_];

      if (v30)
      {
        v31 = [v30 issuerCountryCode];
        if (v31)
        {
          v32 = v31;
          v33 = sub_226D6E39C();
          v35 = v34;

          sub_226C24D14(&v44, v33, v35);

          v18 = v45;
        }

        else
        {
        }
      }
    }

    sub_226D69D5C();

    v36 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *a2;
    sub_226BE676C(v18, v26, isUniquelyReferenced_nonNull_native);
    v41(v26, v43);

    *a2 = v44;
  }

  return v18;
}

uint64_t sub_226BF0EF8()
{
  v1 = OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_logger;
  v2 = sub_226D6E07C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_store);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_classifiableTransactionSource));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_paymentPassDataSourceProvider));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_userIdentifierProvider));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_transactionsSigner));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_piiProcessor));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for BankConnectInsightsRequestBuilder()
{
  result = qword_27D7A7EB8;
  if (!qword_27D7A7EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226BF1024()
{
  result = sub_226D6E07C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_226BF10E0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v124 = &v91 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7EE8, &qword_226D76CE8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v91 - v8;
  v10 = sub_226D6A8DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v91 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7EF0, &qword_226D76CF0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v91 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7EF8, &unk_226D76CF8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v126 = &v91 - v27;
  v121 = sub_226D6BE7C();
  v120 = v28;
  v29 = [a1 industryCategory];
  if (v29)
  {
    v30 = v29;
    v31 = sub_226D6E39C();
    v122 = v32;
    v123 = v31;
  }

  else
  {
    v122 = 0;
    v123 = 0;
  }

  v118 = sub_226D6BE6C();
  v119 = sub_226D6BE8C();
  sub_226D6BEAC();
  sub_226AC40E8(v24, v22, &qword_27D7A7EF0, &qword_226D76CF0);
  v33 = 1;
  if ((*(v11 + 48))(v22, 1, v10) != 1)
  {
    (*(v11 + 32))(v17, v22, v10);
    (*(v11 + 16))(v15, v17, v10);
    sub_226D6A8AC();
    sub_226D6A8BC();
    sub_226D6A8CC();
    sub_226D6871C();
    v34 = sub_226D6872C();
    (*(*(v34 - 8) + 56))(v9, 0, 1, v34);
    sub_226D6A89C();
    sub_226D6A88C();
    sub_226D6852C();
    v35 = *(v11 + 8);
    v35(v15, v10);
    v35(v17, v10);
    v33 = 0;
  }

  sub_226AC47B0(v24, &qword_27D7A7EF0, &qword_226D76CF0);
  v36 = sub_226D6853C();
  (*(*(v36 - 8) + 56))(v126, v33, 1, v36);
  v37 = [a1 merchantAdditionalData];
  if (v37)
  {
    v38 = v37;
    v39 = sub_226D6E39C();
    v116 = v40;
    v117 = v39;
  }

  else
  {
    v116 = 0;
    v117 = 0;
  }

  v41 = [a1 merchantCity];
  if (v41)
  {
    v42 = v41;
    v43 = sub_226D6E39C();
    v114 = v44;
    v115 = v43;
  }

  else
  {
    v114 = 0;
    v115 = 0;
  }

  v111 = sub_226D6BE9C();
  v45 = [a1 merchantCountryCode];
  if (v45)
  {
    v46 = v45;
    v47 = sub_226D6E39C();
    v112 = v48;
    v113 = v47;
  }

  else
  {
    v112 = 0;
    v113 = 0;
  }

  v49 = [a1 merchantIdentifier];
  if (v49)
  {
    v50 = v49;
    v51 = sub_226D6E39C();
    v109 = v52;
    v110 = v51;
  }

  else
  {
    v109 = 0;
    v110 = 0;
  }

  v53 = [a1 merchantName];
  if (v53)
  {
    v54 = v53;
    v55 = sub_226D6E39C();
    v107 = v56;
    v108 = v55;
  }

  else
  {
    v107 = 0;
    v108 = 0;
  }

  v57 = [a1 merchantRawCANL];
  if (v57)
  {
    v58 = v57;
    v106 = sub_226D6E39C();
    v105 = v59;
  }

  else
  {
    v106 = 0;
    v105 = 0;
  }

  v60 = [a1 merchantRawCity];
  if (v60)
  {
    v61 = v60;
    v104 = sub_226D6E39C();
    v103 = v62;
  }

  else
  {
    v104 = 0;
    v103 = 0;
  }

  v63 = [a1 merchantRawName];
  if (v63)
  {
    v64 = v63;
    v102 = sub_226D6E39C();
    v101 = v65;
  }

  else
  {
    v102 = 0;
    v101 = 0;
  }

  v66 = [a1 merchantRawState];
  if (v66)
  {
    v67 = v66;
    v100 = sub_226D6E39C();
    v99 = v68;
  }

  else
  {
    v100 = 0;
    v99 = 0;
  }

  v69 = [a1 merchantState];
  if (v69)
  {
    v70 = v69;
    v98 = sub_226D6E39C();
    v97 = v71;
  }

  else
  {
    v98 = 0;
    v97 = 0;
  }

  v72 = [a1 merchantType];
  if (v72)
  {
    v73 = v72;
    v96 = sub_226D6E39C();
    v95 = v74;
  }

  else
  {
    v96 = 0;
    v95 = 0;
  }

  v75 = [a1 merchantZip];
  if (v75)
  {
    v76 = v75;
    v94 = sub_226D6E39C();
    v93 = v77;
  }

  else
  {
    v94 = 0;
    v93 = 0;
  }

  v78 = [a1 paymentNetwork];
  if (v78)
  {
    v79 = v78;
    v92 = sub_226D6E39C();
  }

  else
  {
    v92 = 0;
  }

  v80 = [a1 terminalIdentifier];
  if (v80)
  {
    v81 = v80;
    sub_226D6E39C();
  }

  v82 = [a1 webMerchantIdentifier];
  if (v82)
  {
    v83 = v82;
    sub_226D6E39C();
  }

  v84 = [a1 webMerchantName];
  if (v84)
  {
    v85 = v84;
    sub_226D6E39C();
  }

  v86 = v124;
  v87 = [a1 webURL];
  if (v87)
  {
    v88 = v87;
    sub_226D6D14C();

    v89 = 0;
  }

  else
  {
    v89 = 1;
  }

  v90 = sub_226D6D1AC();
  (*(*(v90 - 8) + 56))(v86, v89, 1, v90);
  sub_226D6876C();
}

uint64_t sub_226BF1B88(uint64_t a1)
{
  v2 = sub_226D690EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CC7790] || v7 == *MEMORY[0x277CC7788])
  {
    v9 = v7 == *MEMORY[0x277CC7790];
    (*(v3 + 8))(a1, v2);
    return v9;
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_226D6EEFC();
    MEMORY[0x22AA8A510](0x206E776F6E6B6E55, 0xEE002065756C6176);
    sub_226D6EFBC();
    result = sub_226D6F0AC();
    __break(1u);
  }

  return result;
}

unint64_t sub_226BF1D54(char a1)
{
  result = 0xD000000000000012;
  switch(a1)
  {
    case 2:
      result = 0xD00000000000002FLL;
      break;
    case 3:
    case 13:
      result = 0xD000000000000035;
      break;
    case 4:
    case 11:
      result = 0xD000000000000015;
      break;
    case 5:
    case 7:
    case 9:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    case 8:
      result = 0xD000000000000022;
      break;
    case 10:
      result = 0xD00000000000003CLL;
      break;
    case 12:
      result = 0xD000000000000023;
      break;
    case 14:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t type metadata accessor for PostInstallTaskEnvironment()
{
  result = qword_27D7A7F00;
  if (!qword_27D7A7F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226BF1F28()
{
  result = sub_226D676CC();
  if (v1 <= 0x3F)
  {
    result = sub_226D6B5EC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PostInstallTaskIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PostInstallTaskIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PostInstallTaskVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_226BF212C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226BF2148(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_226BF217C()
{
  result = qword_27D7A7F10;
  if (!qword_27D7A7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7F10);
  }

  return result;
}

uint64_t sub_226BF21D0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_226BF1D54(*a1);
  v5 = v4;
  if (v3 == sub_226BF1D54(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_226D6F21C();
  }

  return v8 & 1;
}

uint64_t sub_226BF2258@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_226BF23CC();
  *a2 = result;
  return result;
}

unint64_t sub_226BF2288@<X0>(unint64_t *a1@<X8>)
{
  result = sub_226BF1D54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_226BF22B4()
{
  v1 = *v0;
  sub_226D6F2FC();
  sub_226BF1D54(v1);
  sub_226D6E42C();

  return sub_226D6F35C();
}

uint64_t sub_226BF2318()
{
  sub_226BF1D54(*v0);
  sub_226D6E42C();
}

uint64_t sub_226BF236C()
{
  v1 = *v0;
  sub_226D6F2FC();
  sub_226BF1D54(v1);
  sub_226D6E42C();

  return sub_226D6F35C();
}

uint64_t sub_226BF23CC()
{
  v0 = sub_226D6F13C();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_226BF2498(uint64_t a1, void *a2)
{
  v4 = sub_226D673EC();
  v5 = *(v4 - 8);
  v32 = v4;
  v33 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6B9BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = sub_226D68E6C();
  v34 = a1;
  sub_226D6738C();
  v18 = v35;
  v19 = sub_226D68E2C();
  if (!v18)
  {
    v31 = v17;
    v35 = v19;
    v29 = v8;
    v22 = a2;
    v23 = *(v10 + 8);
    v23(v16, v9);
    sub_226D69F0C();
    v24 = v34;
    sub_226D6738C();
    v30 = v22;
    v26 = sub_226D69D9C();
    v27 = v30;
    v23(v14, v9);
    v20 = v35;
    if (v35)
    {
      MEMORY[0x22AA84F00](v35, v24);
      if (!v26)
      {
        return v20;
      }
    }

    else
    {
      (*(v33 + 16))(v29, v24, v32);
      v28 = v27;
      v20 = sub_226D68E7C();
      if (!v26)
      {
        return v20;
      }

      v35 = v20;
    }

    sub_226D69EDC();

    return v35;
  }

  v21 = *(v10 + 8);
  v20 = v10 + 8;
  v21(v16, v9);
  return v20;
}

uint64_t sub_226BF2778@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Task = type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask();
  sub_226AF265C(v1 + Task[10], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226AC47B0(v6, &qword_27D7A8BE0, &unk_226D718F0);
    return sub_226AF265C(v1 + Task[8], a1);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = *(v1 + Task[9]);
    v15 = v14 < 1;
    v16 = v14 - 1;
    if (!v15)
    {
      exp2(v16);
    }

    sub_226D6D3DC();
    (*(v8 + 8))(v11, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_226BF2990(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D6764C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_226D6BE1C();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_226D67B9C();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  Task = type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask();
  v2[16] = Task;
  v14 = *(*(Task - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v15 = sub_226D6D4AC();
  v2[19] = v15;
  v16 = *(v15 - 8);
  v2[20] = v16;
  v17 = *(v16 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BF2C2C, 0, 0);
}

uint64_t sub_226BF2C2C()
{
  v134 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 32);
  v3 = (v2 + v1[6]);
  if ((v3[1] & 1) == 0)
  {
    v5 = *(v0 + 208);
    v4 = *(v0 + 216);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *v3;
    v9 = v2 + v1[7];
    sub_226D6D3DC();
    sub_226D6D46C();
    sub_226BF62E0(&qword_27D7A66D8, MEMORY[0x277CC9578]);
    LOBYTE(v9) = sub_226D6E34C();
    v10 = *(v7 + 8);
    v10(v5, v6);
    if (v9)
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v11 = *(v0 + 216);
      v12 = *(v0 + 200);
      v13 = *(v0 + 152);
      v14 = *(v0 + 160);
      v15 = *(v0 + 144);
      v16 = *(v0 + 32);
      v17 = sub_226D6E07C();
      __swift_project_value_buffer(v17, qword_28105F710);
      sub_226BF6018(v16, v15, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      (*(v14 + 16))(v12, v11, v13);
      v18 = sub_226D6E05C();
      v19 = sub_226D6E9CC();
      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 200);
      v23 = *(v0 + 144);
      v22 = *(v0 + 152);
      if (v20)
      {
        v24 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v133[0] = v125;
        *v24 = 136315394;
        sub_226D6B9BC();
        sub_226BF62E0(&qword_27D7A6E40, MEMORY[0x277CC8058]);
        v25 = sub_226D6F1CC();
        MEMORY[0x22AA8A510](v25);

        sub_226BF6080(v23, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        v26 = sub_226AC4530(0xD00000000000002FLL, 0x8000000226D82FD0, v133);

        *(v24 + 4) = v26;
        *(v24 + 12) = 2080;
        v27 = sub_226D6D48C();
        v29 = v28;
        v10(v21, v22);
        v30 = sub_226AC4530(v27, v29, v133);

        *(v24 + 14) = v30;
        _os_log_impl(&dword_226AB4000, v18, v19, "%s: Historical request cutoff date (%s) passed. Cancelling task, and removing\nfuture scheduling.", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v125, -1, -1);
        MEMORY[0x22AA8BEE0](v24, -1, -1);
      }

      else
      {

        v10(v21, v22);
        sub_226BF6080(v23, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      }

      v91 = *(v0 + 32);
      v92 = *__swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
      v93 = sub_226D676AC();
      v94 = swift_task_alloc();
      *(v94 + 16) = v91;
      *(v94 + 24) = v93;
      sub_226D6EB7C();
      v10(*(v0 + 216), *(v0 + 152));

LABEL_23:
      v104 = *(v0 + 208);
      v103 = *(v0 + 216);
      v106 = *(v0 + 192);
      v105 = *(v0 + 200);
      v108 = *(v0 + 176);
      v107 = *(v0 + 184);
      v109 = *(v0 + 168);
      v111 = *(v0 + 136);
      v110 = *(v0 + 144);
      v112 = *(v0 + 120);
      v121 = *(v0 + 112);
      v124 = *(v0 + 104);
      v128 = *(v0 + 80);
      v131 = *(v0 + 56);

      v113 = *(v0 + 8);

      return v113();
    }

    v10(*(v0 + 216), *(v0 + 152));
    v1 = *(v0 + 128);
    v2 = *(v0 + 32);
  }

  v31 = *(v0 + 192);
  v32 = *(v0 + 152);
  v33 = *(v0 + 160);
  v34 = *(v0 + 120);
  v35 = -*(v2 + v1[5]);
  v36 = v2 + v1[7];
  sub_226D6D3DC();
  v37 = v1[11];
  sub_226AF265C(v2 + v37, v34);
  if ((*(v33 + 48))(v34, 1, v32) == 1)
  {
    sub_226AC47B0(*(v0 + 120), &qword_27D7A8BE0, &unk_226D718F0);
  }

  else
  {
    v38 = *(v0 + 192);
    (*(*(v0 + 160) + 32))(*(v0 + 184), *(v0 + 120), *(v0 + 152));
    if (sub_226D6D3FC())
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v39 = *(v0 + 184);
      v40 = *(v0 + 192);
      v42 = *(v0 + 168);
      v41 = *(v0 + 176);
      v43 = *(v0 + 152);
      v44 = *(v0 + 160);
      v45 = *(v0 + 136);
      v46 = *(v0 + 32);
      v47 = sub_226D6E07C();
      __swift_project_value_buffer(v47, qword_28105F710);
      sub_226BF6018(v46, v45, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      v48 = *(v44 + 16);
      v48(v41, v39, v43);
      v48(v42, v40, v43);
      v49 = sub_226D6E05C();
      v50 = sub_226D6E9CC();
      v51 = os_log_type_enabled(v49, v50);
      v52 = *(v0 + 168);
      v53 = *(v0 + 176);
      v55 = *(v0 + 152);
      v54 = *(v0 + 160);
      v56 = *(v0 + 136);
      if (v51)
      {
        v126 = *(v0 + 168);
        v57 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v133[0] = v129;
        *v57 = 136315650;
        sub_226D6B9BC();
        sub_226BF62E0(&qword_27D7A6E40, MEMORY[0x277CC8058]);
        v122 = v50;
        v58 = sub_226D6F1CC();
        MEMORY[0x22AA8A510](v58);

        sub_226BF6080(v56, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        v59 = sub_226AC4530(0xD00000000000002FLL, 0x8000000226D82FD0, v133);

        *(v57 + 4) = v59;
        *(v57 + 12) = 2080;
        v60 = sub_226D6D48C();
        v62 = v61;
        v63 = *(v54 + 8);
        v63(v53, v55);
        v64 = sub_226AC4530(v60, v62, v133);

        *(v57 + 14) = v64;
        *(v57 + 22) = 2080;
        v65 = sub_226D6D48C();
        v67 = v66;
        v63(v126, v55);
        v68 = sub_226AC4530(v65, v67, v133);

        *(v57 + 24) = v68;
        _os_log_impl(&dword_226AB4000, v49, v122, "%s: Last successfully fetched transaction timestamp (%s) is earlier than the start date (%s. Cancelling task, and removing future scheduling.", v57, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v129, -1, -1);
        MEMORY[0x22AA8BEE0](v57, -1, -1);
      }

      else
      {

        v63 = *(v54 + 8);
        v63(v52, v55);
        v63(v53, v55);
        sub_226BF6080(v56, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      }

      v95 = *(v0 + 32);
      v96 = *__swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
      v97 = sub_226D676AC();
      v98 = swift_task_alloc();
      *(v98 + 16) = v95;
      *(v98 + 24) = v97;
      sub_226D6EB7C();
      v100 = *(v0 + 184);
      v99 = *(v0 + 192);
      v101 = *(v0 + 152);
      v102 = *(v0 + 160);

      v63(v100, v101);
      v63(v99, v101);
      goto LABEL_23;
    }

    (*(*(v0 + 160) + 8))(*(v0 + 184), *(v0 + 152));
  }

  v69 = *(v0 + 104);
  v71 = *(v0 + 24);
  v70 = *(v0 + 32);
  sub_226D67B8C();
  v72 = *__swift_project_boxed_opaque_existential_1(v71, v71[3]);
  v73 = sub_226D676AC();
  v74 = swift_task_alloc();
  v74[2] = v70;
  v74[3] = v73;
  v74[4] = v69;
  sub_226D6EB7C();
  v116 = *(v0 + 208);
  v117 = *(v0 + 192);
  v75 = *(v0 + 160);
  v115 = *(v0 + 152);
  v76 = *(v0 + 104);
  v118 = v37;
  v119 = *(v0 + 112);
  v78 = *(v0 + 88);
  v77 = *(v0 + 96);
  v120 = *(v0 + 80);
  v123 = *(v0 + 48);
  v127 = *(v0 + 40);
  v130 = *(v0 + 56);
  v79 = *(v0 + 24);

  (*(v77 + 8))(v76, v78);
  v80 = __swift_project_boxed_opaque_existential_1(v79, v71[3]);
  sub_226B41FC0();
  v132 = swift_allocObject();
  sub_226B42014(v80, v132 + 16);
  v81 = sub_226D6BE3C();
  v82 = *(v81 + 48);
  v83 = *(v81 + 52);
  swift_allocObject();
  v84 = sub_226D6BDFC();
  *(v0 + 224) = v84;
  *(v0 + 16) = v84;
  (*(v75 + 16))(v116, v117, v115);
  sub_226AF265C(v2 + v118, v119);
  sub_226D6BE0C();
  (*(v123 + 104))(v130, *MEMORY[0x277CC6D38], v127);
  v85 = *(MEMORY[0x277CC81D0] + 4);
  v86 = swift_task_alloc();
  *(v0 + 232) = v86;
  *v86 = v0;
  v86[1] = sub_226BF38CC;
  v87 = *(v0 + 80);
  v88 = *(v0 + 56);
  v89 = *(v0 + 32);
  v90 = MEMORY[0x277CC8178];

  return MEMORY[0x28211A680](v89, v87, v88, v81, v90);
}

uint64_t sub_226BF38CC()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = v2[28];
  v6 = v2[10];
  v7 = v2[9];
  v8 = v2[8];
  (*(v2[6] + 8))(v2[7], v2[5]);
  (*(v7 + 8))(v6, v8);

  if (v0)
  {
    v9 = sub_226BF3C48;
  }

  else
  {
    v9 = sub_226BF3AB4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_226BF3AB4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 32);
  v3 = *__swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v4 = sub_226D676AC();
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  sub_226D6EB7C();
  (*(*(v0 + 160) + 8))(*(v0 + 192), *(v0 + 152));

  v7 = *(v0 + 208);
  v6 = *(v0 + 216);
  v9 = *(v0 + 192);
  v8 = *(v0 + 200);
  v11 = *(v0 + 176);
  v10 = *(v0 + 184);
  v12 = *(v0 + 168);
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);
  v15 = *(v0 + 120);
  v18 = *(v0 + 112);
  v19 = *(v0 + 104);
  v20 = *(v0 + 80);
  v21 = *(v0 + 56);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_226BF3C48()
{
  (*(v0[20] + 8))(v0[24], v0[19]);
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[15];
  v13 = v0[14];
  v14 = v0[13];
  v15 = v0[10];
  v16 = v0[7];
  v17 = v0[30];

  v11 = v0[1];

  return v11();
}

void sub_226BF3D7C(uint64_t a1, void *a2, uint64_t a3)
{
  v163 = a3;
  v171[1] = *MEMORY[0x277D85DE8];
  Task = type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask();
  v5 = *(*(Task - 8) + 64);
  v6 = MEMORY[0x28223BE20](Task);
  v160 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v165 = (&v146 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v161 = &v146 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v158 = &v146 - v13;
  MEMORY[0x28223BE20](v12);
  v153 = &v146 - v14;
  v167 = sub_226D6D4AC();
  v164 = *(v167 - 8);
  v15 = *(v164 + 8);
  v16 = MEMORY[0x28223BE20](v167);
  v162 = (&v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v156 = &v146 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v154 = &v146 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v152 = &v146 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v155 = &v146 - v25;
  MEMORY[0x28223BE20](v24);
  v159 = &v146 - v26;
  v166 = sub_226D66DFC();
  v27 = *(*(v166 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v166);
  v30 = &v146 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v146 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = &v146 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v146 - v38;
  v40 = sub_226D67B9C();
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = sub_226D69DEC();
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  sub_226D69F0C();
  v44 = v168;
  v168 = sub_226D69D9C();
  if (v44)
  {
    goto LABEL_38;
  }

  v147 = v37;
  v45 = v165;
  v151 = a1;
  v148 = v39;
  v149 = a2;
  v150 = 0;
  if (!v168)
  {
    if (qword_28105F708 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

  sub_226D67B7C();
  sub_226D69DFC();
  sub_226D69E1C();
  v46 = v163;
  sub_226BF6018(v163, v32, MEMORY[0x277CC6528]);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v47 = v148;
    sub_226B72784(v32, v148);
    v48 = v147;
    sub_226AF265C(v47, v147);
    v49 = v164;
    if ((*(v164 + 6))(v48, 1, v167) == 1)
    {
      sub_226AC47B0(v47, &qword_27D7A8BE0, &unk_226D718F0);
      sub_226AC47B0(v48, &qword_27D7A8BE0, &unk_226D718F0);
      v50 = v151;
      v46 = v163;
      goto LABEL_10;
    }

    v91 = v159;
    (*(v49 + 32))(v159, v48, v167);
    v92 = v158;
    v93 = v151;
    v94 = (v151 + *(Task + 24));
    if ((v94[1] & 1) == 0)
    {
      v95 = *v94;
      v96 = v151 + *(Task + 28);
      v97 = v155;
      sub_226D6D3DC();
      if (sub_226D6D3FC())
      {
        if (qword_28105F708 != -1)
        {
          swift_once();
        }

        v98 = sub_226D6E07C();
        __swift_project_value_buffer(v98, qword_28105F710);
        v99 = v153;
        sub_226BF6018(v93, v153, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        v100 = *(v49 + 16);
        v101 = v152;
        v102 = v167;
        v100(v152, v91, v167);
        v100(v154, v97, v102);
        v103 = sub_226D6E05C();
        v104 = sub_226D6E9CC();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v166 = v106;
          *v105 = 136315650;
          v169 = 0xD00000000000002FLL;
          v170 = 0x8000000226D82FD0;
          v171[0] = v106;
          sub_226D6B9BC();
          sub_226BF62E0(&qword_27D7A6E40, MEMORY[0x277CC8058]);
          LODWORD(v165) = v104;
          v107 = sub_226D6F1CC();
          MEMORY[0x22AA8A510](v107);

          v108 = v169;
          v109 = v170;
          sub_226BF6080(v99, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
          v110 = sub_226AC4530(v108, v109, v171);

          *(v105 + 4) = v110;
          *(v105 + 12) = 2080;
          v111 = sub_226D6D48C();
          v113 = v112;
          v114 = *(v49 + 8);
          v114(v101, v102);
          v115 = sub_226AC4530(v111, v113, v171);

          *(v105 + 14) = v115;
          *(v105 + 22) = 2080;
          v116 = v154;
          v117 = sub_226D6D48C();
          v119 = v118;
          v114(v116, v102);
          v91 = v159;
          v120 = sub_226AC4530(v117, v119, v171);
          v97 = v155;

          *(v105 + 24) = v120;
          _os_log_impl(&dword_226AB4000, v103, v165, "%s: Retry-After date (%s) pushes the earliest start date past the historical request cutoff date (%s). Cancelling task, and removing future scheduling.", v105, 0x20u);
          v121 = v166;
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v121, -1, -1);
          MEMORY[0x22AA8BEE0](v105, -1, -1);
        }

        else
        {

          v140 = v99;
          v114 = *(v49 + 8);
          v114(v154, v102);
          v114(v101, v102);
          sub_226BF6080(v140, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        }

        v137 = v148;
        v141 = v168;
        [v168 setEarliestHistoricalTransactionsRequestStartDate_];
        [v141 setOldestFetchedHistoricalTransactionTimestamp_];
        v114(v97, v167);
        v139 = v149;
LABEL_33:
        v142 = v168;
        [v168 setHistoricalTransactionsRequestAttemptCount_];
        [v142 setLastHistoricalTransactionsRequestAttemptDate_];
        v114(v91, v167);
        sub_226AC47B0(v137, &qword_27D7A8BE0, &unk_226D718F0);
        v90 = v139;
        goto LABEL_34;
      }

      (*(v49 + 8))(v97, v167);
    }

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v122 = sub_226D6E07C();
    __swift_project_value_buffer(v122, qword_28105F710);
    sub_226BF6018(v93, v92, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
    v123 = v156;
    (*(v49 + 16))(v156, v91, v167);
    v124 = sub_226D6E05C();
    v125 = sub_226D6E9CC();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *v126 = 136315394;
      v169 = 0xD00000000000002FLL;
      v170 = 0x8000000226D82FD0;
      v171[0] = v127;
      sub_226D6B9BC();
      v128 = v123;
      sub_226BF62E0(&qword_27D7A6E40, MEMORY[0x277CC8058]);
      v129 = sub_226D6F1CC();
      MEMORY[0x22AA8A510](v129);

      v130 = v169;
      v131 = v170;
      sub_226BF6080(v92, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      v132 = sub_226AC4530(v130, v131, v171);

      *(v126 + 4) = v132;
      *(v126 + 12) = 2080;
      v133 = sub_226D6D48C();
      v135 = v134;
      v114 = *(v164 + 1);
      v114(v128, v167);
      v136 = sub_226AC4530(v133, v135, v171);
      v91 = v159;

      *(v126 + 14) = v136;
      _os_log_impl(&dword_226AB4000, v124, v125, "%s: Retry-After date (%s) received, throttling the next retry until then.", v126, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v127, -1, -1);
      MEMORY[0x22AA8BEE0](v126, -1, -1);
    }

    else
    {

      v114 = *(v49 + 8);
      v114(v123, v167);
      sub_226BF6080(v92, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
    }

    v137 = v148;
    v138 = sub_226D6D3EC();
    [v168 setEarliestHistoricalTransactionsRequestStartDate_];

    v139 = v149;
    goto LABEL_33;
  }

  sub_226BF6080(v32, MEMORY[0x277CC6528]);
  v49 = v164;
  v50 = v151;
LABEL_10:
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v68 = sub_226D6E07C();
  __swift_project_value_buffer(v68, qword_28105F710);
  v69 = v50;
  v70 = v161;
  sub_226BF6018(v69, v161, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
  sub_226BF6018(v46, v30, MEMORY[0x277CC6528]);
  v71 = sub_226D6E05C();
  v72 = sub_226D6E9CC();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v164 = v30;
    v74 = v73;
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v165 = v76;
    *v74 = 136315394;
    v169 = 0xD00000000000002FLL;
    v170 = 0x8000000226D82FD0;
    v171[0] = v76;
    sub_226D6B9BC();
    v77 = v70;
    sub_226BF62E0(&qword_27D7A6E40, MEMORY[0x277CC8058]);
    v78 = sub_226D6F1CC();
    MEMORY[0x22AA8A510](v78);

    v79 = v169;
    v80 = v170;
    sub_226BF6080(v77, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
    v81 = sub_226AC4530(v79, v80, v171);

    *(v74 + 4) = v81;
    *(v74 + 12) = 2112;
    sub_226BF62E0(&qword_27D7A6990, MEMORY[0x277CC6528]);
    swift_allocError();
    v82 = MEMORY[0x277CC6528];
    v83 = v164;
    sub_226BF6018(v164, v84, MEMORY[0x277CC6528]);
    v85 = _swift_stdlib_bridgeErrorToNSError();
    sub_226BF6080(v83, v82);
    *(v74 + 14) = v85;
    *v75 = v85;
    _os_log_impl(&dword_226AB4000, v71, v72, "%s: Failed with error: %@.", v74, 0x16u);
    sub_226AC47B0(v75, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v75, -1, -1);
    v86 = v165;
    __swift_destroy_boxed_opaque_existential_0Tm(v165);
    MEMORY[0x22AA8BEE0](v86, -1, -1);
    MEMORY[0x22AA8BEE0](v74, -1, -1);
  }

  else
  {

    sub_226BF6080(v30, MEMORY[0x277CC6528]);
    sub_226BF6080(v70, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
  }

  v45 = v162;
  v87 = [v168 historicalTransactionsRequestAttemptCount];
  if (__OFADD__(v87, 1))
  {
    __break(1u);
LABEL_40:
    swift_once();
LABEL_7:
    v51 = sub_226D6E07C();
    __swift_project_value_buffer(v51, qword_28105F710);
    v52 = v151;
    v53 = v45;
    sub_226BF6018(v151, v45, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
    v54 = v160;
    sub_226BF6018(v52, v160, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
    v55 = sub_226D6E05C();
    v56 = sub_226D6E9CC();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v168 = v58;
      *v57 = 136315394;
      v169 = 0xD00000000000002FLL;
      v170 = 0x8000000226D82FD0;
      v171[0] = v58;
      sub_226D6B9BC();
      sub_226BF62E0(&qword_27D7A6E40, MEMORY[0x277CC8058]);
      LODWORD(v167) = v56;
      v59 = sub_226D6F1CC();
      MEMORY[0x22AA8A510](v59);

      v60 = v169;
      v61 = v170;
      sub_226BF6080(v53, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      v62 = sub_226AC4530(v60, v61, v171);

      *(v57 + 4) = v62;
      *(v57 + 12) = 2080;
      v63 = sub_226D6F1CC();
      v65 = v64;
      sub_226BF6080(v54, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      v66 = sub_226AC4530(v63, v65, v171);

      *(v57 + 14) = v66;
      _os_log_impl(&dword_226AB4000, v55, v167, "%s: Unable to find account for %s, unable to update scheduling.", v57, 0x16u);
      v67 = v168;
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v67, -1, -1);
      MEMORY[0x22AA8BEE0](v57, -1, -1);
    }

    else
    {

      sub_226BF6080(v54, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      sub_226BF6080(v53, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
    }

    goto LABEL_38;
  }

  v88 = v168;
  [v168 setHistoricalTransactionsRequestAttemptCount_];
  sub_226D6D46C();
  v89 = sub_226D6D3EC();
  (*(v49 + 8))(v45, v167);
  [v88 setLastHistoricalTransactionsRequestAttemptDate_];

  v90 = v149;
LABEL_34:
  v169 = 0;
  if ([v90 save_])
  {
    v143 = v169;
  }

  else
  {
    v144 = v169;
    sub_226D6D04C();

    swift_willThrow();
  }

LABEL_38:
  v145 = *MEMORY[0x277D85DE8];
}

void sub_226BF509C(uint64_t a1, void *a2, uint64_t a3)
{
  v42 = a3;
  v45[1] = *MEMORY[0x277D85DE8];
  Task = type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask();
  v7 = *(*(Task - 8) + 64);
  v8 = MEMORY[0x28223BE20](Task - 8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v40 - v11;
  v13 = sub_226D67B9C();
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_226D69DEC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  sub_226D69F0C();
  v19 = sub_226D69D9C();
  if (!v3)
  {
    v20 = v19;
    v40[1] = 0;
    if (v19)
    {
      (*(v41 + 16))(v16, v42, v13);
      sub_226D69DFC();
      sub_226D69E1C();
      v43 = 0;
      if ([a2 save_])
      {
        v21 = v43;
      }

      else
      {
        v38 = v43;
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v22 = sub_226D6E07C();
      __swift_project_value_buffer(v22, qword_28105F710);
      v23 = v12;
      sub_226BF6018(a1, v12, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      v24 = v10;
      sub_226BF6018(a1, v10, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      v25 = sub_226D6E05C();
      v26 = sub_226D6E9CC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v42 = v28;
        *v27 = 136315394;
        v43 = 0xD00000000000002FLL;
        v44 = 0x8000000226D82FD0;
        v45[0] = v28;
        sub_226D6B9BC();
        sub_226BF62E0(&qword_27D7A6E40, MEMORY[0x277CC8058]);
        v29 = sub_226D6F1CC();
        MEMORY[0x22AA8A510](v29);

        v30 = v43;
        v31 = v44;
        sub_226BF6080(v23, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        v32 = sub_226AC4530(v30, v31, v45);

        *(v27 + 4) = v32;
        *(v27 + 12) = 2080;
        v33 = sub_226D6F1CC();
        v35 = v34;
        sub_226BF6080(v24, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        v36 = sub_226AC4530(v33, v35, v45);

        *(v27 + 14) = v36;
        _os_log_impl(&dword_226AB4000, v25, v26, "%s: Unable to find account for %s, unable to update account loading status.", v27, 0x16u);
        v37 = v42;
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v37, -1, -1);
        MEMORY[0x22AA8BEE0](v27, -1, -1);
      }

      else
      {

        sub_226BF6080(v24, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        sub_226BF6080(v23, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

void sub_226BF5578(uint64_t a1, void *a2)
{
  v41[1] = *MEMORY[0x277D85DE8];
  Task = type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask();
  v6 = *(*(Task - 8) + 64);
  v7 = MEMORY[0x28223BE20](Task - 8);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v35[-v10];
  v12 = sub_226D67B9C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_226D69DEC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_226D69F0C();
  v16 = sub_226D69D9C();
  if (!v2)
  {
    v17 = v16;
    v38 = 0;
    if (v16)
    {
      [v16 setEarliestHistoricalTransactionsRequestStartDate_];
      [v17 setHistoricalTransactionsRequestAttemptCount_];
      [v17 setLastHistoricalTransactionsRequestAttemptDate_];
      [v17 setOldestFetchedHistoricalTransactionTimestamp_];
      sub_226D67B7C();
      sub_226D69DFC();
      sub_226D69E1C();
      v39 = 0;
      if ([a2 save_])
      {
        v18 = v39;
      }

      else
      {
        v33 = v39;
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v19 = sub_226D6E07C();
      __swift_project_value_buffer(v19, qword_28105F710);
      sub_226BF6018(a1, v11, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      sub_226BF6018(a1, v9, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      v20 = sub_226D6E05C();
      v21 = sub_226D6E9CC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v37 = v23;
        *v22 = 136315394;
        v39 = 0xD00000000000002FLL;
        v40 = 0x8000000226D82FD0;
        v41[0] = v23;
        sub_226D6B9BC();
        sub_226BF62E0(&qword_27D7A6E40, MEMORY[0x277CC8058]);
        v36 = v21;
        v24 = sub_226D6F1CC();
        MEMORY[0x22AA8A510](v24);

        v25 = v39;
        v26 = v40;
        sub_226BF6080(v11, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        v27 = sub_226AC4530(v25, v26, v41);

        *(v22 + 4) = v27;
        *(v22 + 12) = 2080;
        v28 = sub_226D6F1CC();
        v30 = v29;
        sub_226BF6080(v9, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        v31 = sub_226AC4530(v28, v30, v41);

        *(v22 + 14) = v31;
        _os_log_impl(&dword_226AB4000, v20, v36, "%s: Unable to find account for %s, unable to update scheduling.", v22, 0x16u);
        v32 = v37;
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v32, -1, -1);
        MEMORY[0x22AA8BEE0](v22, -1, -1);
      }

      else
      {

        sub_226BF6080(v9, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        sub_226BF6080(v11, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226BF5A54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226BF2990(a1);
}

uint64_t sub_226BF5AE8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226BF5B0C, 0, 0);
}

uint64_t sub_226BF5B0C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *__swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v4 = sub_226D676AC();
  v5 = swift_task_alloc();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v2;
  sub_226D6EB7C();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_226BF5BEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_226D6B9BC();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_226BF5C6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6998, &unk_226D73D10);
  v1 = *(type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D71840;
  v5 = sub_226D6B9BC();
  (*(*(v5 - 8) + 16))(v4 + v3, v0, v5);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v6 = sub_226B1ED68(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v6;
}

unint64_t sub_226BF5DC8()
{
  sub_226D6B9BC();
  sub_226BF62E0(&qword_27D7A6E40, MEMORY[0x277CC8058]);
  v0 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v0);

  return 0xD00000000000002FLL;
}

uint64_t sub_226BF5EFC(uint64_t a1)
{
  result = sub_226BF62E0(&qword_27D7A7F18, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask()
{
  result = qword_27D7A7F28;
  if (!qword_27D7A7F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226BF5FA0(uint64_t a1)
{
  result = sub_226BF62E0(&qword_27D7A7F20, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226BF6018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226BF6080(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226BF6144()
{
  sub_226D6B9BC();
  if (v0 <= 0x3F)
  {
    sub_226BF620C();
    if (v1 <= 0x3F)
    {
      sub_226D6D4AC();
      if (v2 <= 0x3F)
      {
        sub_226B20350();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_226BF620C()
{
  if (!qword_27D7A7F38)
  {
    v0 = sub_226D6EC9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A7F38);
    }
  }
}

uint64_t sub_226BF625C(uint64_t a1)
{
  *(a1 + 8) = sub_226BF62E0(&qword_27D7A6798, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
  result = sub_226BF62E0(&qword_27D7A7F40, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226BF62E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226BF6364()
{
  v10 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  *(v0 + 136) = __swift_project_value_buffer(v1, qword_28105F710);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_226AC4530(0xD000000000000027, 0x8000000226D80470, &v9);
    _os_log_impl(&dword_226AB4000, v2, v3, "Performing background system task: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  sub_226AE532C(*(v0 + 128), v0 + 88);
  type metadata accessor for InstitutionsRefreshSystemTask();
  inited = swift_initStackObject();
  *(v0 + 144) = inited;
  *(inited + 16) = 0xD00000000000001BLL;
  *(inited + 24) = 0x8000000226D83080;
  sub_226AC484C((v0 + 88), inited + 32);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  v7[1] = sub_226BF6554;

  return sub_226BF6954();
}

uint64_t sub_226BF6554()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_226BF67D8;
  }

  else
  {
    v3 = sub_226BF6668;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226BF6668()
{
  v13 = v0;
  v1 = v0[17];
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[18];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_226AC4530(0xD000000000000027, 0x8000000226D80470, &v12);
    _os_log_impl(&dword_226AB4000, v2, v3, "Completed background system task: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
    swift_setDeallocating();
    v8 = *(v5 + 24);

    __swift_destroy_boxed_opaque_existential_0Tm((v5 + 32));
  }

  else
  {

    swift_setDeallocating();
    v9 = *(v5 + 24);

    __swift_destroy_boxed_opaque_existential_0Tm((v5 + 32));
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_226BF67D8()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  swift_setDeallocating();
  v4 = *(v3 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v3 + 32));
  v5 = v1;
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[20];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_226AB4000, v6, v7, "Error completing institutions refresh system task. Error: %@", v10, 0xCu);
    sub_226AC47B0(v11, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_226BF6954()
{
  v1[6] = v0;
  v2 = sub_226D6B5EC();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BF6A14, 0, 0);
}

uint64_t sub_226BF6A14()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  sub_226BF6C54();
  sub_226D6B58C();
  v0[5] = sub_226D6D4AC();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_226D6D46C();
  v5 = v4[2];
  v6 = v4[3];
  sub_226D6B5BC();
  (*(v2 + 8))(v1, v3);
  sub_226AC47B0((v0 + 2), &unk_27D7A8BB0, &unk_226D74340);
  v7 = v4[7];
  v8 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v7);
  v9 = *(MEMORY[0x277CC8218] + 4);
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_226BF6B44;

  return MEMORY[0x28211A7C0](v7, v8);
}

uint64_t sub_226BF6B44()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_226BF6C54()
{
  v1 = sub_226D6BC8C();
  v35 = *(v1 - 8);
  v36 = v1;
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6B5EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v35 - v12;
  v14 = sub_226D6D4AC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  sub_226D6B58C();
  v22 = *(v0 + 16);
  v23 = *(v0 + 24);
  sub_226D6B5DC();
  (*(v6 + 8))(v9, v5);
  if (!v38)
  {
    sub_226AC47B0(v37, &unk_27D7A8BB0, &unk_226D74340);
    (*(v15 + 56))(v13, 1, 1, v14);
    return sub_226AC47B0(v13, &qword_27D7A8BE0, &unk_226D718F0);
  }

  v24 = swift_dynamicCast();
  (*(v15 + 56))(v13, v24 ^ 1u, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_226AC47B0(v13, &qword_27D7A8BE0, &unk_226D718F0);
  }

  (*(v15 + 32))(v21, v13, v14);
  sub_226D6D46C();
  sub_226D6D43C();
  v26 = v25;
  v27 = *(v15 + 8);
  v27(v19, v14);
  sub_226D6D43C();
  if (v26 - v28 < 2588400.0)
  {
    v29 = sub_226D6BD1C();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    sub_226D6BD0C();
    v33 = v35;
    v32 = v36;
    (*(v35 + 104))(v4, *MEMORY[0x277CC8108], v36);
    sub_226D6BCCC();

    (*(v33 + 8))(v4, v32);
  }

  return (v27)(v21, v14);
}

uint64_t sub_226BF706C()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_226BF70D0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_226BF712C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_226BF718C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 changedObjectID];
  v5 = [v4 entity];

  v6 = [v5 name];
  if (!v6)
  {
LABEL_12:
    v13 = type metadata accessor for AccountMatchMappingModel.Change();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }

  v7 = sub_226D6E39C();
  v9 = v8;

  v10 = v7 == 0x4D746E756F636341 && v9 == 0xEC00000068637461;
  if (v10 || (sub_226D6F21C() & 1) != 0 || (v7 == 0xD000000000000011 ? (v11 = 0x8000000226D830D0 == v9) : (v11 = 0), v11))
  {
  }

  else
  {
    v12 = sub_226D6F21C();

    if ((v12 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v16 = a1;

  return sub_226BF7348(v16, a2);
}

uint64_t sub_226BF7348@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for AccountMatchMappingModel.Change();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v50[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 changedObjectID];
  *&v7[*(v3 + 24)] = v8;
  v9 = [v8 entityName];
  v10 = sub_226D6E39C();
  v12 = v11;

  v13 = v10 == 0x4D746E756F636341 && v12 == 0xEC00000068637461;
  if (v13 || (sub_226D6F21C() & 1) != 0)
  {

    v14 = 1;
  }

  else if (v10 == 0xD000000000000011 && 0x8000000226D830D0 == v12)
  {

    v14 = 0;
  }

  else
  {
    v29 = sub_226D6F21C();

    v14 = 0;
    if ((v29 & 1) == 0)
    {
      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v30 = sub_226D6E07C();
      __swift_project_value_buffer(v30, qword_28105F628);
      v31 = sub_226D6E05C();
      v32 = sub_226D6E9CC();
      if (!os_log_type_enabled(v31, v32))
      {
        goto LABEL_54;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Change was not for a cloud or local account match";
      goto LABEL_46;
    }
  }

  v7[*(v3 + 20)] = v14;
  v15 = [a1 changeType];
  if (!v15)
  {

    v17 = sub_226D6B9BC();
    (*(*(v17 - 8) + 56))(v7, 1, 2, v17);
    goto LABEL_11;
  }

  if (v15 == 1)
  {

    v16 = sub_226D6B9BC();
    (*(*(v16 - 8) + 56))(v7, 2, 2, v16);
LABEL_11:
    v18 = v49;
    sub_226BFB5F4(v7, v49, type metadata accessor for AccountMatchMappingModel.Change);
    (*(v4 + 56))(v18, 0, 1, v3);
    return sub_226BFB65C(v7, type metadata accessor for AccountMatchMappingModel.Change);
  }

  if (v15 == 2)
  {
    v20 = [a1 tombstone];
    if (v20)
    {
      v21 = v20;
      v22 = sub_226D6E2BC();

      if (v14)
      {
LABEL_15:
        strcpy(v50, "accountID");
        WORD1(v50[1]) = 0;
        HIDWORD(v50[1]) = -385875968;
        sub_226D6EE8C();
        if (*(v22 + 16))
        {
          v23 = sub_226C2FE4C(v51);
          if (v24)
          {
            sub_226AC4708(*(v22 + 56) + 32 * v23, &v52);
            sub_226AE5030(v51);
            if ((swift_dynamicCast() & 1) == 0)
            {
LABEL_55:

              goto LABEL_42;
            }

            strcpy(v50, "institutionID");
            HIWORD(v50[1]) = -4864;
            sub_226D6EE8C();
            if (*(v22 + 16))
            {
              v25 = sub_226C2FE4C(v51);
              if (v26)
              {
                sub_226AC4708(*(v22 + 56) + 32 * v25, &v52);
                sub_226AE5030(v51);

                if (swift_dynamicCast())
                {
                  sub_226D6B99C();

                  v27 = sub_226D6B9BC();
                  (*(*(v27 - 8) + 56))(v7, 0, 2, v27);
                  goto LABEL_11;
                }

                goto LABEL_55;
              }
            }
          }
        }

        sub_226AE5030(v51);
LABEL_42:
        if (qword_28105F620 != -1)
        {
          swift_once();
        }

        v40 = sub_226D6E07C();
        __swift_project_value_buffer(v40, qword_28105F628);
        v31 = sub_226D6E05C();
        v32 = sub_226D6E9CC();
        if (!os_log_type_enabled(v31, v32))
        {
          goto LABEL_54;
        }

        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = "Received delete change but tombstone missing identifier";
        goto LABEL_46;
      }

      v50[0] = 0x616D656863536B63;
      v50[1] = 0xEF6E6F6973726556;
      sub_226D6EE8C();
      if (*(v22 + 16) && (v36 = sub_226C2FE4C(v51), (v37 & 1) != 0))
      {
        sub_226AC4708(*(v22 + 56) + 32 * v36, &v52);
        sub_226AE5030(v51);
        if (swift_dynamicCast())
        {
          v38 = v50[0];
          if (LOWORD(v50[0]) == 1)
          {
            goto LABEL_15;
          }

          v39 = 0;
LABEL_49:
          if (qword_28105F620 != -1)
          {
            swift_once();
          }

          v42 = sub_226D6E07C();
          __swift_project_value_buffer(v42, qword_28105F628);
          v31 = sub_226D6E05C();
          v43 = sub_226D6E9CC();
          if (!os_log_type_enabled(v31, v43))
          {
            goto LABEL_54;
          }

          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v51[0] = v45;
          *v44 = 136315138;
          v52 = v38;
          v53 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DE8, &unk_226D731F0);
          v46 = sub_226D6E3FC();
          v48 = sub_226AC4530(v46, v47, v51);

          *(v44 + 4) = v48;
          _os_log_impl(&dword_226AB4000, v31, v43, "Deleted cloud account match has an unsupported ckSchemaVersion (%s, ignoring change.", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v45);
          MEMORY[0x22AA8BEE0](v45, -1, -1);
          v41 = v44;
          goto LABEL_53;
        }
      }

      else
      {

        sub_226AE5030(v51);
      }

      v38 = 0;
      v39 = 1;
      goto LABEL_49;
    }

    if (qword_28105F620 != -1)
    {
      swift_once();
    }

    v35 = sub_226D6E07C();
    __swift_project_value_buffer(v35, qword_28105F628);
    v31 = sub_226D6E05C();
    v32 = sub_226D6E9CC();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_54;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "Received delete change but no tombstone";
LABEL_46:
    _os_log_impl(&dword_226AB4000, v31, v32, v34, v33, 2u);
    v41 = v33;
LABEL_53:
    MEMORY[0x22AA8BEE0](v41, -1, -1);
LABEL_54:

    return (*(v4 + 56))(v49, 1, 1, v3);
  }

  result = sub_226D6F0AC();
  __break(1u);
  return result;
}