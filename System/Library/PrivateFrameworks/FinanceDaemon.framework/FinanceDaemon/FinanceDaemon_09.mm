void *sub_226B8E328(unint64_t a1)
{
  v52 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v53 = &v47 - v3;
  v54 = sub_226D6B9BC();
  v48 = *(v54 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v54);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D68CBC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_226D69F0C();
  v50 = sub_226D69DDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_226D72B90;
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  *(v12 + 32) = sub_226D6E91C();
  *(v12 + 40) = sub_226D6E91C();
  v49 = "consentObject == nil";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_226D70840;
  (*(v8 + 104))(v11, *MEMORY[0x277CC75D0], v7);
  v14 = sub_226D68CAC();
  (*(v8 + 8))(v11, v7);
  v15 = MEMORY[0x277D83C10];
  *(v13 + 56) = MEMORY[0x277D83B88];
  *(v13 + 64) = v15;
  *(v13 + 32) = v14;
  v16 = v50;
  *(v12 + 48) = sub_226D6E91C();
  v17 = MEMORY[0x277D84F90];
  *(v12 + 56) = sub_226D6E91C();
  v18 = sub_226D6E5CC();

  v19 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v16 setPredicate_];
  v20 = v55;
  v21 = sub_226D6EBBC();
  if (v20)
  {

    return v12;
  }

  v22 = v21;
  v23 = v48;
  if (!(v21 >> 62))
  {
    v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_5;
    }

LABEL_18:

    return MEMORY[0x277D84F90];
  }

  v24 = sub_226D6EDFC();
  if (!v24)
  {
    goto LABEL_18;
  }

LABEL_5:
  v49 = 0;
  v59 = v17;
  result = sub_226AE2510(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    v12 = v59;
    v51 = (v23 + 32);
    v52 = v22 & 0xC000000000000001;
    v55 = v6;
    do
    {
      if (v52)
      {
        v27 = MEMORY[0x22AA8AFD0](v26, v22);
      }

      else
      {
        v27 = *(v22 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v54;
      v30 = v24;
      sub_226D69D5C();
      v31 = [v28 earliestAccountValidationStartDate];
      if (v31)
      {
        v32 = v53;
        v33 = v31;
        sub_226D6D45C();

        v34 = 0;
      }

      else
      {
        v34 = 1;
        v32 = v53;
      }

      v35 = sub_226D6D4AC();
      (*(*(v35 - 8) + 56))(v32, v34, 1, v35);
      v36 = type metadata accessor for BankConnectAccountValidationTask();
      v57 = v36;
      v58 = sub_226B8CC58(&qword_27D7A70B8, type metadata accessor for BankConnectAccountValidationTask);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
      (*v51)(boxed_opaque_existential_1, v55, v29);
      sub_226B72784(v32, boxed_opaque_existential_1 + *(v36 + 20));
      v59 = v12;
      v39 = *(v12 + 16);
      v38 = *(v12 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_226AE2510((v38 > 1), v39 + 1, 1);
      }

      ++v26;
      v40 = v57;
      v41 = v58;
      v42 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
      v43 = *(*(v40 - 8) + 64);
      MEMORY[0x28223BE20](v42);
      v45 = &v47 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v46 + 16))(v45);
      sub_226B8CEB8(v39, v45, &v59, v40, v41);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      v12 = v59;
      v24 = v30;
    }

    while (v30 != v26);

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_226B8E9C4(void *a1)
{
  v2 = sub_226D6BD9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  v10 = [a1 institutionObject];
  sub_226D6841C();

  v11 = [a1 notificationSubscriptionObject];
  if (!v11)
  {
    v16 = MEMORY[0x277CC8140];
    sub_226B8CC58(&qword_27D7A7260, MEMORY[0x277CC8140]);
    sub_226D6ED4C();
    sub_226B8CC58(&qword_27D7A7268, v16);
    v17 = sub_226D6E35C();
LABEL_6:
    v19 = *(v3 + 8);
    v19(v7, v2);
    v19(v9, v2);
    v15 = v17 ^ 1;
    return v15 & 1;
  }

  v12 = v11;
  v13 = [v11 subscriptionID];
  if (!v13)
  {
    v18 = MEMORY[0x277CC8140];
    sub_226B8CC58(&qword_27D7A7260, MEMORY[0x277CC8140]);
    sub_226D6ED4C();
    sub_226B8CC58(&qword_27D7A7268, v18);
    v17 = sub_226D6E35C();

    goto LABEL_6;
  }

  sub_226D6C57C();
  sub_226B8CC58(&qword_27D7A7250, MEMORY[0x277CC8140]);
  sub_226D6E53C();
  sub_226D6E53C();

  v14 = *(v3 + 8);
  v14(v7, v2);
  v14(v9, v2);
  v15 = v21[3] != v21[2];
  return v15 & 1;
}

void *sub_226B8ECF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v49 - v5;
  v54 = sub_226D6D52C();
  v7 = *(v54 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v54);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6826C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x277CC7220], v11);
  v16 = sub_226D6A03C();
  (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_226D6C5BC();
  v17 = sub_226D6C59C();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v18 = MEMORY[0x277D84F90];
  v19 = sub_226D6E91C();
  [v17 setPredicate_];

  v20 = a1;
  v21 = sub_226D6EBBC();
  if (v1)
  {

    return v20;
  }

  v50 = v17;
  v22 = v21;
  if (!(v21 >> 62))
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v50;
    if (v23)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  v23 = sub_226D6EDFC();
  v24 = v50;
  if (!v23)
  {
LABEL_19:

    return MEMORY[0x277D84F90];
  }

LABEL_6:
  v49[1] = 0;
  v58 = v18;
  result = sub_226AE2510(0, v23 & ~(v23 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    v20 = v58;
    v27 = v22;
    v51 = v22 & 0xC000000000000001;
    v52 = v23;
    v28 = (v7 + 32);
    v53 = v22;
    do
    {
      if (v51)
      {
        v29 = MEMORY[0x22AA8AFD0](v26, v27);
      }

      else
      {
        v29 = *(v27 + 8 * v26 + 32);
      }

      v30 = v29;
      v31 = [v29 id];
      sub_226D6D4FC();

      v32 = [v30 unregisterRequestAttemptCount];
      v33 = [v30 lastUnregisterRequestAttemptDate];
      if (v33)
      {
        v34 = v33;
        sub_226D6D45C();

        v35 = 0;
      }

      else
      {
        v35 = 1;
      }

      v36 = sub_226D6D4AC();
      (*(*(v36 - 8) + 56))(v6, v35, 1, v36);
      v37 = type metadata accessor for BankConnectNotificationEventsUnregisterTask();
      v56 = v37;
      v57 = sub_226B8CC58(&qword_27D7A6980, type metadata accessor for BankConnectNotificationEventsUnregisterTask);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
      v39 = boxed_opaque_existential_1 + v37[7];
      sub_226D6D46C();

      (*v28)(boxed_opaque_existential_1, v10, v54);
      *(boxed_opaque_existential_1 + v37[5]) = v32;
      sub_226B72784(v6, boxed_opaque_existential_1 + v37[6]);
      v58 = v20;
      v41 = *(v20 + 16);
      v40 = *(v20 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_226AE2510((v40 > 1), v41 + 1, 1);
      }

      ++v26;
      v42 = v56;
      v43 = v57;
      v44 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
      v45 = *(*(v42 - 8) + 64);
      MEMORY[0x28223BE20](v44);
      v47 = v49 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v48 + 16))(v47);
      sub_226B8CEB8(v41, v47, &v58, v42, v43);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      v20 = v58;
      v27 = v53;
    }

    while (v52 != v26);

    return v20;
  }

  __break(1u);
  return result;
}

void *sub_226B8F28C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v76 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v59 - v5;
  v82 = sub_226D6D4AC();
  v7 = *(v82 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v82);
  v64 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v77 = &v59 - v11;
  v12 = sub_226D6826C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x277CC7220], v12);
  v17 = sub_226D6A03C();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v65 = v6;
    v18 = sub_226D6C5BC();
    v19 = sub_226D6C59C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_226D71F30;
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    *(v20 + 32) = sub_226D6E91C();
    *(v20 + 40) = sub_226D6E91C();
    *(v20 + 48) = sub_226D6E91C();
    v21 = sub_226D6E5CC();

    v22 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v19 setPredicate_];
    v23 = sub_226D6EBBC();
    if (v0)
    {
    }

    else
    {
      v24 = v23;
      v59 = v19;
      if (v23 >> 62)
      {
        goto LABEL_34;
      }

      for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
      {
        v26 = v65;
        v61 = 0;
        if (!i)
        {
          break;
        }

        v27 = 0;
        v67 = v24 & 0xC000000000000001;
        v66 = v24 & 0xFFFFFFFFFFFFFF8;
        v68 = (v7 + 32);
        v75 = (v7 + 56);
        v60 = (v7 + 48);
        v18 = MEMORY[0x277D84F90];
        v63 = v24;
        v62 = i;
        while (1)
        {
          if (v67)
          {
            v28 = MEMORY[0x22AA8AFD0](v27, v24);
          }

          else
          {
            if (v27 >= *(v66 + 16))
            {
              goto LABEL_33;
            }

            v28 = *(v24 + 8 * v27 + 32);
          }

          v29 = v28;
          v30 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          v31 = [v28 subscriptionID];
          if (v31)
          {
            v32 = v31;
            v33 = sub_226D6E39C();
            v35 = v34;

            v36 = [v29 lastFetchedAt];
            v71 = v35;
            v72 = v33;
            if (v36)
            {
              v37 = v64;
              v38 = v36;
              sub_226D6D45C();

              v39 = *v68;
              v40 = v37;
              v41 = v82;
              (*v68)(v26, v40, v82);
              v42 = *v75;
              (*v75)(v26, 0, 1, v41);
              v39(v77, v26, v41);
            }

            else
            {
              v42 = *v75;
              v43 = v82;
              (*v75)(v26, 1, 1, v82);
              sub_226D6D39C();
              if ((*v60)(v26, 1, v43) != 1)
              {
                sub_226B905C4(v26);
              }
            }

            v44 = [v29 updateSequenceNumber];
            v45 = [v29 requestAttemptCount];
            v46 = [v29 lastRequestAttemptDate];
            v73 = v27 + 1;
            v74 = v18;
            v69 = v44;
            v70 = v45;
            if (v46)
            {
              v47 = v46;
              sub_226D6D45C();

              v48 = 0;
            }

            else
            {
              v48 = 1;
            }

            v49 = v76;
            v50 = v82;
            v42(v76, v48, 1, v82);
            Task = type metadata accessor for BankConnectNotificationEventsFetchTask();
            v79 = Task;
            v80 = sub_226B8CC58(&qword_27D7A7238, type metadata accessor for BankConnectNotificationEventsFetchTask);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v78);
            v53 = boxed_opaque_existential_1 + Task[9];
            sub_226D6D46C();
            v7 = Task[8];
            v42(boxed_opaque_existential_1 + v7, 1, 1, v50);
            v54 = v71;
            *boxed_opaque_existential_1 = v72;
            boxed_opaque_existential_1[1] = v54;
            v55 = v68;
            *(boxed_opaque_existential_1 + Task[6]) = v69;
            (*v55)(boxed_opaque_existential_1 + Task[5], v77, v50);
            *(boxed_opaque_existential_1 + Task[7]) = v70;
            sub_226B3E298(v49, boxed_opaque_existential_1 + v7);

            sub_226AC484C(&v78, v81);
            v18 = v74;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_226BBB984(0, v18[2] + 1, 1, v18);
            }

            v30 = v73;
            v57 = v18[2];
            v56 = v18[3];
            v26 = v65;
            if (v57 >= v56 >> 1)
            {
              v18 = sub_226BBB984((v56 > 1), v57 + 1, 1, v18);
            }

            v18[2] = v57 + 1;
            sub_226AC484C(v81, &v18[5 * v57 + 4]);
            v24 = v63;
            i = v62;
          }

          else
          {
          }

          ++v27;
          if (v30 == i)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        ;
      }

      v18 = MEMORY[0x277D84F90];
LABEL_30:
    }
  }

  else
  {
    v61 = v0;
    return MEMORY[0x277D84F90];
  }

  return v18;
}

void *sub_226B8FA80(uint64_t a1)
{
  v63 = a1;
  v61 = sub_226D6D4AC();
  v57 = *(v61 - 8);
  v1 = *(v57 + 64);
  v2 = MEMORY[0x28223BE20](v61);
  v62 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v65 = v55 - v4;
  v5 = sub_226D6A30C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = sub_226D6794C();
  v10 = sub_226D678BC();
  [v10 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_226D71F40;
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  *(v11 + 32) = sub_226D6E91C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_226D70840;
  (*(v6 + 104))(v9, *MEMORY[0x277CC7B60], v5);
  v13 = sub_226D6A2FC();
  (*(v6 + 8))(v9, v5);
  v14 = MEMORY[0x277D849A0];
  *(v12 + 56) = MEMORY[0x277D84958];
  *(v12 + 64) = v14;
  *(v12 + 32) = v13;
  *(v11 + 40) = sub_226D6E91C();
  v15 = sub_226D6E5CC();

  v16 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v10 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_226D71840;
  v18 = MEMORY[0x277D837D0];
  *(v17 + 32) = 0x49746E65736E6F63;
  *(v17 + 40) = 0xE900000000000044;
  *(v17 + 88) = v18;
  *(v17 + 56) = v18;
  *(v17 + 64) = 0xD000000000000022;
  *(v17 + 72) = 0x8000000226D80EB0;
  v19 = sub_226D6E5CC();

  [v10 setPropertiesToFetch_];

  v20 = sub_226D6E5CC();
  [v10 setRelationshipKeyPathsForPrefetching_];

  v21 = v64;
  v22 = sub_226D6EBBC();
  if (v21)
  {
  }

  else
  {
    v23 = v22;
    v24 = v57;
    v56 = v10;
    if (v22 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
    {
      v26 = v62;
      v27 = v65;
      v55[1] = 0;
      if (!i)
      {
        break;
      }

      v28 = 0;
      v63 = v23 & 0xFFFFFFFFFFFFFF8;
      v64 = v23 & 0xC000000000000001;
      v57 = v24 + 8;
      v58 = (v24 + 32);
      v9 = MEMORY[0x277D84F90];
      v59 = i;
      v60 = v23;
      while (1)
      {
        if (v64)
        {
          v29 = MEMORY[0x22AA8AFD0](v28, v23);
        }

        else
        {
          if (v28 >= *(v63 + 16))
          {
            goto LABEL_24;
          }

          v29 = *(v23 + 8 * v28 + 32);
        }

        v30 = v29;
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        v32 = [v29 consentTokenIdentifiedAsOutdatedAt];
        if (v32)
        {
          v33 = v32;
          sub_226D6D45C();

          v34 = v27;
          v35 = v61;
          (*v58)(v34, v26, v61);
          v36 = [v30 institutionObject];
          [v36 consentSyncingOutdatedTokenWaitTimeout];

          v37 = type metadata accessor for BankConnectConsentTokenOutdatedTimeoutTask();
          v67 = v37;
          v68 = sub_226B8CC58(&qword_27D7A7228, type metadata accessor for BankConnectConsentTokenOutdatedTimeoutTask);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v66);
          v39 = boxed_opaque_existential_1 + *(v37 + 20);
          sub_226D6D3DC();
          v40 = [v30 consentID];
          v41 = sub_226D6E39C();
          v43 = v42;

          v44 = v35;
          v27 = v65;
          (*v57)(v65, v44);
          *boxed_opaque_existential_1 = v41;
          boxed_opaque_existential_1[1] = v43;
          sub_226AC484C(&v66, v69);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v72 = v9;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v9 = sub_226BBB984(0, v9[2] + 1, 1, v9);
            v72 = v9;
          }

          v47 = v9[2];
          v46 = v9[3];
          if (v47 >= v46 >> 1)
          {
            v9 = sub_226BBB984((v46 > 1), v47 + 1, 1, v9);
            v72 = v9;
          }

          v48 = v70;
          v24 = v71;
          v49 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
          v50 = *(*(v48 - 8) + 64);
          MEMORY[0x28223BE20](v49);
          v52 = v55 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v53 + 16))(v52);
          sub_226B8CF50(v47, v52, &v72, v48, v24);
          __swift_destroy_boxed_opaque_existential_0Tm(v69);
          v26 = v62;
          i = v59;
          v23 = v60;
        }

        else
        {
        }

        ++v28;
        if (v31 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    v9 = MEMORY[0x277D84F90];
LABEL_21:
  }

  return v9;
}

void *sub_226B90214(void *a1)
{
  sub_226D69F0C();
  v3 = sub_226D69DDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D71F40;
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  *(v4 + 32) = sub_226D6E91C();
  *(v4 + 40) = sub_226D6E91C();
  v5 = sub_226D6E5CC();

  v6 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v3 setPredicate_];
  v7 = sub_226D6EBBC();
  if (v1)
  {
  }

  else
  {
    v8 = v7;
    if (v7 >> 62)
    {
      goto LABEL_20;
    }

    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v3; v9; i = v3)
    {
      v10 = 0;
      v27 = v8 & 0xFFFFFFFFFFFFFF8;
      v28 = v8 & 0xC000000000000001;
      a1 = MEMORY[0x277D84F90];
      v25 = v9;
      v26 = v8;
      while (1)
      {
        if (v28)
        {
          v17 = MEMORY[0x22AA8AFD0](v10, v8);
        }

        else
        {
          if (v10 >= *(v27 + 16))
          {
            goto LABEL_19;
          }

          v17 = *(v8 + 8 * v10 + 32);
        }

        v18 = v17;
        v19 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v33 = v17;
        sub_226B8A320(&v33, &v29);

        if (v30)
        {
          sub_226AC484C(&v29, v32);
          sub_226AC484C(v32, &v29);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v34 = a1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            a1 = sub_226BBB984(0, a1[2] + 1, 1, a1);
            v34 = a1;
          }

          v22 = a1[2];
          v21 = a1[3];
          if (v22 >= v21 >> 1)
          {
            a1 = sub_226BBB984((v21 > 1), v22 + 1, 1, a1);
            v34 = a1;
          }

          v11 = v30;
          v12 = v31;
          v13 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
          v14 = *(*(v11 - 8) + 64);
          MEMORY[0x28223BE20](v13);
          v3 = &i - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v16 + 16))(v3);
          sub_226B8CF50(v22, v3, &v34, v11, v12);
          __swift_destroy_boxed_opaque_existential_0Tm(&v29);
          v9 = v25;
          v8 = v26;
        }

        ++v10;
        if (v19 == v9)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v9 = sub_226D6EDFC();
    }

    a1 = MEMORY[0x277D84F90];
LABEL_22:
  }

  return a1;
}

uint64_t sub_226B905C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226B9064C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectNotificationEventsRegisterTask();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t BankConnectServiceImplementation.loadAccount(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = v3;
  v7 = sub_226D6B9BC();
  v4[4] = v7;
  v8 = *(v7 - 8);
  v4[5] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v4[6] = v10;
  v11 = swift_task_alloc();
  v4[7] = v11;
  *v11 = v4;
  v11[1] = sub_226B907DC;

  return sub_226C00808(v10, a2, a3);
}

uint64_t sub_226B907DC()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B90AE4, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[9] = v4;
    *v4 = v3;
    v4[1] = sub_226B90950;
    v5 = v3[6];
    v6 = v3[2];
    v7 = v3[3];

    return BankConnectServiceImplementation.loadAccount(for:)(v6, v5);
  }
}

uint64_t sub_226B90950()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_226B90B48;
  }

  else
  {
    v3 = sub_226B90A64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B90A64()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_226B90AE4()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_226B90B48()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[10];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t BankConnectServiceImplementation.loadAccount(for:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_226D6764C();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_226D67C0C();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  v3[12] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v12 = sub_226D6D4AC();
  v3[15] = v12;
  v13 = *(v12 - 8);
  v3[16] = v13;
  v14 = *(v13 + 64) + 15;
  v3[17] = swift_task_alloc();
  v15 = sub_226D6B9BC();
  v3[18] = v15;
  v16 = *(v15 - 8);
  v3[19] = v16;
  v17 = *(v16 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B90DFC, 0, 0);
}

uint64_t sub_226B90DFC()
{
  v67 = v0;
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[4];
  v8 = v0[5];
  v9 = *(v3 + 16);
  v0[23] = v9;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v7, v2);
  v10 = *__swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
  v11 = sub_226D676AC();
  v0[25] = v11;
  sub_226D6D46C();
  v12 = swift_task_alloc();
  v12[2] = v11;
  v12[3] = v1;
  v12[4] = v4;
  sub_226D6EB7C();
  v14 = v0[13];
  v13 = v0[14];
  v15 = v0[9];
  v16 = v0[10];

  sub_226B91EA0(v13, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_226AC47B0(v0[13], &qword_27D7A6D50, &unk_226D75230);
    if (qword_27D7A5F60 != -1)
    {
      swift_once();
    }

    v17 = v0[21];
    v18 = v0[22];
    v19 = v0[18];
    v20 = sub_226D6E07C();
    v0[26] = __swift_project_value_buffer(v20, qword_27D7A7D10);
    v9(v17, v18, v19);
    v21 = sub_226D6E05C();
    v22 = sub_226D6E9AC();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[21];
    v26 = v0[18];
    v25 = v0[19];
    if (v23)
    {
      v27 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v66[0] = v64;
      *v27 = 136315138;
      sub_226B42070(&qword_27D7A6E40, MEMORY[0x277CC8058]);
      v28 = sub_226D6F1CC();
      v30 = v29;
      v63 = v22;
      v31 = *(v25 + 8);
      v31(v24, v26);
      v32 = sub_226AC4530(v28, v30, v66);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_226AB4000, v21, v63, "Fetching account update for %s.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v64);
      MEMORY[0x22AA8BEE0](v64, -1, -1);
      MEMORY[0x22AA8BEE0](v27, -1, -1);
    }

    else
    {

      v31 = *(v25 + 8);
      v31(v24, v26);
    }

    v0[27] = v31;
    v50 = v0[7];
    v49 = v0[8];
    v51 = v0[6];
    v52 = __swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
    v66[3] = &type metadata for BankConnectEnvironmentImplementation;
    v66[4] = sub_226B41FC0();
    v66[0] = swift_allocObject();
    sub_226B42014(v52, v66[0] + 16);
    v53 = sub_226D6B13C();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();
    v56 = sub_226D6B12C();
    v0[2] = v56;
    v0[28] = v56;
    (*(v50 + 104))(v49, *MEMORY[0x277CC6D38], v51);
    v57 = *(MEMORY[0x277CC7EE8] + 4);
    v58 = swift_task_alloc();
    v0[29] = v58;
    *v58 = v0;
    v58[1] = sub_226B913F8;
    v59 = v0[22];
    v60 = v0[8];
    v61 = v0[3];
    v62 = MEMORY[0x277CC7E10];

    return MEMORY[0x282119F10](v61, v59, v60, v53, v62);
  }

  else
  {
    v33 = v0[13];
    v35 = v0[10];
    v34 = v0[11];
    v36 = v0[9];
    v37 = v0[3];
    sub_226AC47B0(v0[14], &qword_27D7A6D50, &unk_226D75230);

    v38 = *(v35 + 32);
    v38(v34, v33, v36);
    v38(v37, v34, v36);
    v39 = v0[21];
    v40 = v0[22];
    v42 = v0[19];
    v41 = v0[20];
    v43 = v0[18];
    v45 = v0[13];
    v44 = v0[14];
    v46 = v0[11];
    v65 = v0[8];
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v42 + 8))(v40, v43);

    v47 = v0[1];

    return v47();
  }
}

uint64_t sub_226B913F8()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = v2[28];
  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {
    v6 = sub_226B916B8;
  }

  else
  {
    v6 = sub_226B9157C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226B9157C()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[17];
  v4 = v0[14];
  sub_226B91CD4(v0[5]);

  sub_226AC47B0(v4, &qword_27D7A6D50, &unk_226D75230);
  v5 = v0[21];
  v6 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[11];
  v15 = v0[8];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v8 + 8))(v6, v9);

  v13 = v0[1];

  return v13();
}

uint64_t sub_226B916B8()
{
  v45 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  (*(v0 + 184))(*(v0 + 160), *(v0 + 176), *(v0 + 144));
  v4 = v1;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9CC();

  if (os_log_type_enabled(v5, v6))
  {
    v41 = *(v0 + 216);
    v43 = *(v0 + 240);
    v7 = *(v0 + 160);
    v40 = *(v0 + 152);
    v8 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v44 = v11;
    *v9 = 136315394;
    sub_226B42070(&qword_27D7A6E40, MEMORY[0x277CC8058]);
    v12 = sub_226D6F1CC();
    v14 = v13;
    v41(v7, v8);
    v15 = sub_226AC4530(v12, v14, &v44);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    v16 = v43;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_226AB4000, v5, v6, "Failed to update account for %s: %@.", v9, 0x16u);
    sub_226AC47B0(v10, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  else
  {
    v18 = *(v0 + 216);
    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    v21 = *(v0 + 144);

    v18(v19, v21);
  }

  v22 = *(v0 + 240);
  v23 = *(v0 + 200);
  v24 = *(v0 + 176);
  v25 = *(v0 + 136);
  v26 = *(v0 + 112);
  v27 = *(v0 + 40);
  v28 = sub_226D6A0DC();
  sub_226B42070(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
  swift_allocError();
  *v29 = v22;
  (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277CC7AB0], v28);
  swift_willThrow();
  sub_226B91CD4(v27);

  sub_226AC47B0(v26, &qword_27D7A6D50, &unk_226D75230);
  v31 = *(v0 + 168);
  v30 = *(v0 + 176);
  v32 = *(v0 + 152);
  v33 = *(v0 + 160);
  v34 = *(v0 + 144);
  v36 = *(v0 + 104);
  v35 = *(v0 + 112);
  v37 = *(v0 + 88);
  v42 = *(v0 + 64);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  (*(v32 + 8))(v30, v34);

  v38 = *(v0 + 8);

  return v38();
}

void sub_226B91A98(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v18[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v18];

  v7 = v18[0];
  if (v6)
  {
    sub_226D69F0C();
    v8 = v7;
    v9 = sub_226D69D9C();
    if (v2)
    {

LABEL_4:
      v10 = sub_226D67C0C();
      (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
      goto LABEL_7;
    }

    v13 = v9;
    if (!v9)
    {
      goto LABEL_4;
    }

    if (sub_226D69D4C())
    {
      v14 = sub_226D6D3EC();
      [v13 setLastAccountRefreshDate_];

      v18[0] = 0;
      if ([a1 save_])
      {
        v15 = v18[0];

        goto LABEL_4;
      }

      v17 = v18[0];
      sub_226D6D04C();

      swift_willThrow();
    }

    else
    {
      sub_226D67C1C();
      v16 = sub_226D67C0C();
      (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
    }
  }

  else
  {
    v11 = v18[0];
    sub_226D6D04C();

    swift_willThrow();
  }

LABEL_7:
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226B91CD4(uint64_t a1)
{
  v2 = sub_226D6D4AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D46C();
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_226AE532C((v7 + 41), v16);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v8 = sub_226D6B97C();
  v10 = v9;
  sub_226D6D3BC();
  v12 = v11;
  v15[3] = &_s24InstitutionDurationEventVN;
  v15[4] = sub_226B420B8();
  v13 = swift_allocObject();
  v15[0] = v13;
  v13[2] = 0xD00000000000002BLL;
  v13[3] = 0x8000000226D81280;
  v13[4] = v8;
  v13[5] = v10;
  v13[6] = v12;
  sub_226D69AFC();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

void sub_226B91E80(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_226B91A98(*(v1 + 16), a1);
}

uint64_t sub_226B91EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BankConnectServiceImplementation.showBackgroundRefreshAlert(isFirstTimeAskingPermission:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_226B91F34, 0, 0);
}

uint64_t sub_226B91F34()
{
  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_27D7A7D10);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Attempting to show BackgroundRefreshAlert", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  v7 = *(*(v6 + 8) + 8);
  v8 = sub_226D6BAAC();
  *(v0 + 24) = v8;
  v9 = swift_task_alloc();
  *(v0 + 32) = v9;
  *v9 = v0;
  v9[1] = sub_226B920B8;
  v10 = *(v0 + 48);

  return sub_226B1757C(v10, v8);
}

uint64_t sub_226B920B8()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B921F4, 0, 0);
  }

  else
  {
    v4 = v3[3];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_226B921F4()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

void BankConnectServiceImplementation.updateAccountBackgroundRefreshUserPreference(fullyQualifiedAccountIdentifiers:userPreference:asOf:)()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v2 = sub_226D676AC();
  sub_226D6EB8C();
}

id sub_226B922F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = sub_226D6BDEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6BDDC();
  sub_226D6BDCC();
  if (v4)
  {
    result = (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v14[0] = 0;
    if ([a4 save_])
    {
      result = v14[0];
    }

    else
    {
      v12 = v14[0];
      sub_226D6D04C();

      result = swift_willThrow();
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226B924B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B924D4, 0, 0);
}

uint64_t sub_226B924D4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7488, qword_226D74EA0);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7490, &qword_27D7A7488, qword_226D74EA0);
  v1[5] = sub_226AC4194(&qword_27D7A7498, &qword_27D7A7488, qword_226D74EA0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B92660;
  v7 = v0[4];

  return v9(boxed_opaque_existential_1);
}

uint64_t sub_226B92660()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_226B9E338;
  }

  else
  {
    v3 = sub_226B9E32C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B92774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B92798, 0, 0);
}

uint64_t sub_226B92798()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7470, &qword_226D74E90);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7478, &qword_27D7A7470, &qword_226D74E90);
  v1[5] = sub_226AC4194(&qword_27D7A7480, &qword_27D7A7470, &qword_226D74E90);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B92660;
  v7 = v0[4];

  return v9(boxed_opaque_existential_1);
}

uint64_t sub_226B92924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B92948, 0, 0);
}

uint64_t sub_226B92948()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7458, &qword_226D74E80);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7460, &qword_27D7A7458, &qword_226D74E80);
  v1[5] = sub_226AC4194(&qword_27D7A7468, &qword_27D7A7458, &qword_226D74E80);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B92660;
  v7 = v0[4];

  return v9(boxed_opaque_existential_1);
}

uint64_t sub_226B92AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B92AF8, 0, 0);
}

uint64_t sub_226B92AF8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7450, &qword_226D74E70);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_281062C08, &qword_27D7A7450, &qword_226D74E70);
  v1[5] = sub_226AC4194(&qword_281062C10, &qword_27D7A7450, &qword_226D74E70);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B92660;
  v7 = v0[4];

  return v9(boxed_opaque_existential_1);
}

uint64_t sub_226B92C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B92CA8, 0, 0);
}

uint64_t sub_226B92CA8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7438, &qword_226D74E60);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7440, &qword_27D7A7438, &qword_226D74E60);
  v1[5] = sub_226AC4194(&qword_27D7A7448, &qword_27D7A7438, &qword_226D74E60);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B92660;
  v7 = v0[4];

  return v9(boxed_opaque_existential_1);
}

uint64_t sub_226B92E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B92E58, 0, 0);
}

uint64_t sub_226B92E58()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7430, &qword_226D74E50);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_281062BF8, &qword_27D7A7430, &qword_226D74E50);
  v1[5] = sub_226AC4194(&qword_281062C00, &qword_27D7A7430, &qword_226D74E50);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B92660;
  v7 = v0[4];

  return v9(boxed_opaque_existential_1);
}

uint64_t sub_226B92FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B93008, 0, 0);
}

uint64_t sub_226B93008()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7368, &qword_226D74DF0);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7370, &qword_27D7A7368, &qword_226D74DF0);
  v1[5] = sub_226AC4194(&qword_27D7A7378, &qword_27D7A7368, &qword_226D74DF0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B93194;
  v7 = v0[4];

  return v9(boxed_opaque_existential_1);
}

uint64_t sub_226B93194()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_226B93338;
  }

  else
  {
    v3 = sub_226B932A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B932A8()
{
  (*(*(v0[5] - 8) + 104))(v0[6], *MEMORY[0x277CC67C0]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_226B93338()
{
  v1 = v0[8];
  v2 = v0[2];
  __swift_deallocate_boxed_opaque_existential_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
  v2[3] = v3;
  v2[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
  v2[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2);
  v5 = v1;
  sub_226D66FBC();
  (*(*(v3 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CC67B0], v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_226B934A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B934CC, 0, 0);
}

uint64_t sub_226B934CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7418, &qword_226D74E38);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7420, &qword_27D7A7418, &qword_226D74E38);
  v1[5] = sub_226AC4194(&qword_27D7A7428, &qword_27D7A7418, &qword_226D74E38);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B92660;
  v7 = v0[4];

  return v9(boxed_opaque_existential_1);
}

uint64_t sub_226B93658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B9367C, 0, 0);
}

uint64_t sub_226B9367C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7400, &qword_226D74E28);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7408, &qword_27D7A7400, &qword_226D74E28);
  v1[5] = sub_226AC4194(&qword_27D7A7410, &qword_27D7A7400, &qword_226D74E28);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B92660;
  v7 = v0[4];

  return v9(boxed_opaque_existential_1);
}

uint64_t sub_226B93808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B9382C, 0, 0);
}

uint64_t sub_226B9382C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A73E0, &qword_226D74E18);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A73E8, &qword_27D7A73E0, &qword_226D74E18);
  v1[5] = sub_226AC4194(&qword_27D7A73F0, &qword_27D7A73E0, &qword_226D74E18);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B92660;
  v7 = v0[4];

  return v9(boxed_opaque_existential_1);
}

uint64_t sub_226B939B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B939DC, 0, 0);
}

uint64_t sub_226B939DC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A73C8, &qword_226D74E10);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A73D0, &qword_27D7A73C8, &qword_226D74E10);
  v1[5] = sub_226AC4194(&qword_27D7A73D8, &qword_27D7A73C8, &qword_226D74E10);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B92660;
  v7 = v0[4];

  return v9(boxed_opaque_existential_1);
}

uint64_t sub_226B93B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B93B8C, 0, 0);
}

uint64_t sub_226B93B8C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A73B0, &qword_226D74E08);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A73B8, &qword_27D7A73B0, &qword_226D74E08);
  v1[5] = sub_226AC4194(&qword_27D7A73C0, &qword_27D7A73B0, &qword_226D74E08);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B92660;
  v7 = v0[4];

  return v9(boxed_opaque_existential_1);
}

uint64_t sub_226B93D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B93D3C, 0, 0);
}

uint64_t sub_226B93D3C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7398, &qword_226D74E00);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A73A0, &qword_27D7A7398, &qword_226D74E00);
  v1[5] = sub_226AC4194(&qword_27D7A73A8, &qword_27D7A7398, &qword_226D74E00);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B92660;
  v7 = v0[4];

  return v9(boxed_opaque_existential_1);
}

uint64_t sub_226B93EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B93EEC, 0, 0);
}

uint64_t sub_226B93EEC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7380, &qword_226D74DF8);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7388, &qword_27D7A7380, &qword_226D74DF8);
  v1[5] = sub_226AC4194(&qword_27D7A7390, &qword_27D7A7380, &qword_226D74DF8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B92660;
  v7 = v0[4];

  return v9(boxed_opaque_existential_1);
}

uint64_t sub_226B94078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B9409C, 0, 0);
}

uint64_t sub_226B9409C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7368, &qword_226D74DF0);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7370, &qword_27D7A7368, &qword_226D74DF0);
  v1[5] = sub_226AC4194(&qword_27D7A7378, &qword_27D7A7368, &qword_226D74DF0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B92660;
  v7 = v0[4];

  return v9(boxed_opaque_existential_1);
}

uint64_t sub_226B94228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B9424C, 0, 0);
}

uint64_t sub_226B9424C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7350, &qword_226D74DE8);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7358, &qword_27D7A7350, &qword_226D74DE8);
  v1[5] = sub_226AC4194(&qword_27D7A7360, &qword_27D7A7350, &qword_226D74DE8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B92660;
  v7 = v0[4];

  return v9(boxed_opaque_existential_1);
}

uint64_t sub_226B943D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B943FC, 0, 0);
}

uint64_t sub_226B943FC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7338, &qword_226D74DE0);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7340, &qword_27D7A7338, &qword_226D74DE0);
  v1[5] = sub_226AC4194(&qword_27D7A7348, &qword_27D7A7338, &qword_226D74DE0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B92660;
  v7 = v0[4];

  return v9(boxed_opaque_existential_1);
}

uint64_t sub_226B94588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B945AC, 0, 0);
}

uint64_t sub_226B945AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7320, &qword_226D74DD8);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7328, &qword_27D7A7320, &qword_226D74DD8);
  v1[5] = sub_226AC4194(&qword_27D7A7330, &qword_27D7A7320, &qword_226D74DD8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B92660;
  v7 = v0[4];

  return v9(boxed_opaque_existential_1);
}

uint64_t sub_226B94738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B9475C, 0, 0);
}

uint64_t sub_226B9475C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7308, &qword_226D74DD0);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7310, &qword_27D7A7308, &qword_226D74DD0);
  v1[5] = sub_226AC4194(&qword_27D7A7318, &qword_27D7A7308, &qword_226D74DD0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B92660;
  v7 = v0[4];

  return v9(boxed_opaque_existential_1);
}

uint64_t sub_226B948E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B9490C, 0, 0);
}

uint64_t sub_226B9490C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72F0, &qword_226D74DC8);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A72F8, &qword_27D7A72F0, &qword_226D74DC8);
  v1[5] = sub_226AC4194(&qword_27D7A7300, &qword_27D7A72F0, &qword_226D74DC8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B92660;
  v7 = v0[4];

  return v9(boxed_opaque_existential_1);
}

uint64_t sub_226B94A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B94ABC, 0, 0);
}

uint64_t sub_226B94ABC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72D8, &qword_226D74DC0);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A72E0, &qword_27D7A72D8, &qword_226D74DC0);
  v1[5] = sub_226AC4194(&qword_27D7A72E8, &qword_27D7A72D8, &qword_226D74DC0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B92660;
  v7 = v0[4];

  return v9(boxed_opaque_existential_1);
}

uint64_t sub_226B94C48@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v336 = a3;
  v337 = a2;
  v299 = sub_226D6B81C();
  v298 = *(v299 - 8);
  v4 = *(v298 + 64);
  MEMORY[0x28223BE20](v299);
  v297 = &v292 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_226D6D4AC();
  v300 = *(v301 - 8);
  v6 = *(v300 + 64);
  v7 = MEMORY[0x28223BE20](v301);
  v296 = &v292 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = v8;
  MEMORY[0x28223BE20](v7);
  v293 = &v292 - v9;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7298, &qword_226D74990);
  v312 = *(v313 - 8);
  v310 = *(v312 + 64);
  MEMORY[0x28223BE20](v313);
  v311 = &v292 - v10;
  v324 = sub_226D6C3CC();
  v318 = *(v324 - 8);
  v11 = *(v318 + 64);
  v12 = MEMORY[0x28223BE20](v324);
  v325 = &v292 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = v13;
  MEMORY[0x28223BE20](v12);
  v316 = &v292 - v14;
  v323 = sub_226D6B82C();
  v315 = *(v323 - 8);
  v15 = *(v315 + 64);
  v16 = MEMORY[0x28223BE20](v323);
  v322 = &v292 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v320 = &v292 - v17;
  v326 = sub_226D6B8CC();
  v314 = *(v326 - 8);
  v18 = *(v314 + 64);
  v19 = MEMORY[0x28223BE20](v326);
  v321 = &v292 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v319 = &v292 - v20;
  v21 = sub_226D671FC();
  v330 = *(v21 - 8);
  v331 = v21;
  v22 = *(v330 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v328 = &v292 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v329 = &v292 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72A0, &unk_226D7C550);
  v327 = *(v25 - 8);
  v26 = *(v327 + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v292 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v292 - v29;
  v31 = sub_226D6B9BC();
  v32 = *(v31 - 8);
  v334 = v31;
  v335 = v32;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v332 = v34;
  v333 = &v292 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_226D6832C();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v292 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72A8, &qword_226D74998) + 44));
  v41 = v40[1];
  v302 = *v40;
  v303 = v41;
  v42 = v40[3];
  v304 = v40[2];
  v305 = v42;
  v43 = v40[5];
  v306 = v40[4];
  v307 = v43;
  v44 = v40[6];
  LODWORD(v40) = v40[7];
  v308 = v44;
  v309 = v40;
  v45 = *(v36 + 16);
  v295 = a1;
  v45(v39, a1, v35);
  v46 = (*(v36 + 88))(v39, v35);
  if (v46 != *MEMORY[0x277CC7318])
  {
    if (v46 == *MEMORY[0x277CC7340])
    {
      (*(v36 + 96))(v39, v35);
      v52 = v334;
      v54 = v335 + 32;
      v53 = *(v335 + 32);
      v55 = v333;
      v53(v333, v39, v334);
      v56 = (*(v54 + 48) + 24) & ~*(v54 + 48);
      v57 = swift_allocObject();
      *(v57 + 16) = v337;
      v53((v57 + v56), v55, v52);
      v50 = swift_allocObject();
      *(v50 + 16) = &unk_226D74D90;
      *(v50 + 24) = v57;
      v51 = &unk_226D74DA0;
      goto LABEL_5;
    }

    if (v46 == *MEMORY[0x277CC7348])
    {
      (*(v36 + 96))(v39, v35);
      v60 = *v39;
      v332 = *(v39 + 1);
      v333 = v60;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72D0, &qword_226D74D60);
      v62 = v61[12];
      v63 = v61[16];
      LODWORD(v335) = v39[v61[20]];
      LODWORD(v334) = v39[v61[24]];
      sub_226B9DC00(&v39[v62], v30);
      v64 = v331;
      v66 = v330 + 32;
      v65 = *(v330 + 32);
      v67 = &v39[v63];
      v68 = v329;
      v65(v329, v67, v331);
      sub_226B9DC00(v30, v28);
      v69 = v328;
      v65(v328, v68, v64);
      v70 = (*(v327 + 80) + 40) & ~*(v327 + 80);
      v71 = (v26 + *(v66 + 48) + v70) & ~*(v66 + 48);
      v72 = swift_allocObject();
      v73 = v332;
      v74 = v333;
      *(v72 + 2) = v337;
      *(v72 + 3) = v74;
      *(v72 + 4) = v73;
      sub_226B9DC00(v28, &v72[v70]);
      v65(&v72[v71], v69, v64);
      v75 = &v72[v71 + v22];
      *v75 = v335;
      v75[1] = v334;
      v76 = swift_allocObject();
      *(v76 + 16) = &unk_226D74D70;
      *(v76 + 24) = v72;
      v77 = v336;
      *v336 = &unk_226D74D80;
      *(v77 + 8) = v76;
      *(v77 + 48) = 1;
    }

    if (v46 == *MEMORY[0x277CC7388])
    {
      (*(v36 + 96))(v39, v35);
      v78 = v329;
      v80 = v330 + 32;
      v79 = *(v330 + 32);
      v81 = v331;
      v79(v329, v39, v331);
      v82 = (*(v80 + 48) + 24) & ~*(v80 + 48);
      v83 = swift_allocObject();
      *(v83 + 16) = v337;
      v79((v83 + v82), v78, v81);
      v50 = swift_allocObject();
      *(v50 + 16) = &unk_226D74D48;
      *(v50 + 24) = v83;
      v51 = &unk_226D74D58;
      goto LABEL_5;
    }

    if (v46 == *MEMORY[0x277CC7338])
    {
      (*(v36 + 96))(v39, v35);
      v84 = v334;
      v86 = v335 + 32;
      v85 = *(v335 + 32);
      v87 = v333;
      v85(v333, v39, v334);
      v88 = (*(v86 + 48) + 24) & ~*(v86 + 48);
      v89 = swift_allocObject();
      *(v89 + 16) = v337;
      v85((v89 + v88), v87, v84);
      v50 = swift_allocObject();
      *(v50 + 16) = &unk_226D74D30;
      *(v50 + 24) = v89;
      v51 = &unk_226D74D38;
      goto LABEL_5;
    }

    if (v46 == *MEMORY[0x277CC7320])
    {
      (*(v36 + 96))(v39, v35);
      v91 = *v39;
      v90 = *(v39 + 1);
      v92 = swift_allocObject();
      v92[2] = v337;
      v92[3] = v91;
      v92[4] = v90;
      v50 = swift_allocObject();
      *(v50 + 16) = &unk_226D74D18;
      *(v50 + 24) = v92;
      v51 = &unk_226D74D20;
      goto LABEL_5;
    }

    if (v46 == *MEMORY[0x277CC7428])
    {
      (*(v36 + 96))(v39, v35);
      v93 = *v39;
      v94 = *(v39 + 1);
      v95 = v337;
      v96 = v337[6];
      __swift_project_boxed_opaque_existential_1(v337 + 2, v337[5]);
      v97 = *(*(v96 + 8) + 8);
      sub_226D6BAAC();
      v98 = sub_226D676AC();

      v99 = __swift_project_boxed_opaque_existential_1(v95 + 2, v95[5]);
      v100 = *__swift_project_boxed_opaque_existential_1(v99 + 103, v99[106]);
      sub_226D098E8(v93, v94);

      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
      v102 = v336;
      *(v336 + 24) = v101;
      *(v102 + 32) = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
      *(v102 + 40) = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v102);
      result = (*(*(v101 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CC67B8], v101);
      *(v102 + 48) = 0;
      return result;
    }

    if (v46 == *MEMORY[0x277CC73D8])
    {
      (*(v36 + 96))(v39, v35);
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72C8, &qword_226D74CE8);
      v105 = v104[12];
      v334 = *&v39[v104[16]];
      v106 = v104[20];
      v107 = v314 + 32;
      v335 = *(v314 + 32);
      (v335)(v319, v39, v326);
      v109 = v315 + 32;
      v108 = *(v315 + 32);
      v110 = v323;
      v108(v320, &v39[v105], v323);
      v111 = v318 + 32;
      v112 = &v39[v106];
      v113 = v316;
      v114 = v324;
      v115 = *(v318 + 32);
      v333 = v115;
      (v115)(v316, v112, v324);
      (v335)(v321, v319, v326);
      v108(v322, v320, v110);
      (v115)(v325, v113, v114);
      v116 = (*(v107 + 48) + 24) & ~*(v107 + 48);
      v117 = (v18 + *(v109 + 48) + v116) & ~*(v109 + 48);
      v118 = (v15 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
      v119 = (*(v111 + 48) + v118 + 8) & ~*(v111 + 48);
      v120 = swift_allocObject();
      *(v120 + 16) = v337;
      (v335)(v120 + v116, v321, v326);
      v108((v120 + v117), v322, v323);
      v121 = v333;
      *(v120 + v118) = v334;
      v121(v120 + v119, v325, v324);
      v122 = swift_allocObject();
      *(v122 + 16) = &unk_226D74CF8;
      *(v122 + 24) = v120;
      v123 = v336;
      *v336 = &unk_226D74D08;
      *(v123 + 8) = v122;
      *(v123 + 48) = 1;
    }

    if (v46 == *MEMORY[0x277CC73F8])
    {
      (*(v36 + 96))(v39, v35);
      v124 = *v39;
      v125 = swift_allocObject();
      *(v125 + 16) = v337;
      *(v125 + 24) = v124;
      v126 = swift_allocObject();
      *(v126 + 16) = &unk_226D74CD0;
      *(v126 + 24) = v125;
      v127 = &unk_226D74CE0;
      goto LABEL_22;
    }

    v129 = v337;
    if (v46 == *MEMORY[0x277CC73F0])
    {
      (*(v36 + 96))(v39, v35);
      v131 = *v39;
      v130 = *(v39 + 1);
      v132 = swift_allocObject();
      v132[2] = v129;
      v132[3] = v131;
      v132[4] = v130;
      v133 = swift_allocObject();
      *(v133 + 16) = &unk_226D74CB0;
      *(v133 + 24) = v132;
      v134 = &unk_226D74CC0;
    }

    else if (v46 == *MEMORY[0x277CC73E8])
    {
      (*(v36 + 96))(v39, v35);
      v136 = *v39;
      v135 = *(v39 + 1);
      v137 = swift_allocObject();
      v137[2] = v129;
      v137[3] = v136;
      v137[4] = v135;
      v133 = swift_allocObject();
      *(v133 + 16) = &unk_226D74C98;
      *(v133 + 24) = v137;
      v134 = &unk_226D74CA0;
    }

    else if (v46 == *MEMORY[0x277CC7400])
    {
      (*(v36 + 96))(v39, v35);
      v138 = v334;
      v140 = v335 + 32;
      v139 = *(v335 + 32);
      v141 = v333;
      v139(v333, v39, v334);
      v142 = (*(v140 + 48) + 24) & ~*(v140 + 48);
      v143 = swift_allocObject();
      *(v143 + 16) = v129;
      v139((v143 + v142), v141, v138);
      v133 = swift_allocObject();
      *(v133 + 16) = &unk_226D74C80;
      *(v133 + 24) = v143;
      v134 = &unk_226D74C88;
    }

    else if (v46 == *MEMORY[0x277CC7370])
    {
      (*(v36 + 96))(v39, v35);
      v145 = *v39;
      v144 = *(v39 + 1);
      v146 = swift_allocObject();
      v146[2] = v129;
      v146[3] = v145;
      v146[4] = v144;
      v133 = swift_allocObject();
      *(v133 + 16) = &unk_226D74C60;
      *(v133 + 24) = v146;
      v134 = &unk_226D74C70;
    }

    else if (v46 == *MEMORY[0x277CC73B0])
    {
      (*(v36 + 96))(v39, v35);
      v148 = *v39;
      v147 = *(v39 + 1);
      v149 = swift_allocObject();
      v149[2] = v129;
      v149[3] = v148;
      v149[4] = v147;
      v133 = swift_allocObject();
      *(v133 + 16) = &unk_226D74C48;
      *(v133 + 24) = v149;
      v134 = &unk_226D74C50;
    }

    else
    {
      if (v46 == *MEMORY[0x277CC73A0])
      {
        (*(v36 + 96))(v39, v35);
        v152 = v312 + 32;
        v151 = *(v312 + 32);
        v153 = v311;
        v154 = v313;
        v151(v311, v39, v313);
        v155 = (*(v152 + 48) + 24) & ~*(v152 + 48);
        v156 = swift_allocObject();
        *(v156 + 16) = v337;
        v151((v156 + v155), v153, v154);
        v50 = swift_allocObject();
        *(v50 + 16) = &unk_226D74C30;
        *(v50 + 24) = v156;
        v51 = &unk_226D74C38;
        goto LABEL_5;
      }

      if (v46 == *MEMORY[0x277CC7420])
      {
        (*(v36 + 96))(v39, v35);
        v158 = *v39;
        v157 = *(v39 + 1);
        v159 = swift_allocObject();
        v159[2] = v337;
        v159[3] = v158;
        v159[4] = v157;
        v50 = swift_allocObject();
        *(v50 + 16) = &unk_226D74C10;
        *(v50 + 24) = v159;
        v51 = &unk_226D74C20;
        goto LABEL_5;
      }

      if (v46 == *MEMORY[0x277CC73E0])
      {
        (*(v36 + 96))(v39, v35);
        v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72C0, &qword_226D74BE0);
        v161 = &v39[v160[12]];
        v162 = *v161;
        v333 = *(v161 + 1);
        v334 = v162;
        v163 = v160[16];
        LODWORD(v335) = *&v39[v160[20]];
        v164 = v329;
        v165 = v330 + 32;
        v166 = *(v330 + 32);
        v167 = v331;
        v166(v329, v39, v331);
        v168 = v318 + 32;
        v169 = *(v318 + 32);
        v170 = &v39[v163];
        v171 = v316;
        v172 = v324;
        v169(v316, v170, v324);
        v332 = v169;
        v166(v328, v164, v167);
        v169(v325, v171, v172);
        v173 = (*(v165 + 48) + 24) & ~*(v165 + 48);
        v174 = (v22 + v173 + 7) & 0xFFFFFFFFFFFFFFF8;
        v175 = (*(v168 + 48) + v174 + 16) & ~*(v168 + 48);
        v176 = (v317 + v175 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v177 = swift_allocObject();
        *(v177 + 16) = v337;
        v166((v177 + v173), v328, v167);
        v178 = (v177 + v174);
        v179 = v333;
        *v178 = v334;
        v178[1] = v179;
        v332((v177 + v175), v325, v172);
        *(v177 + v176) = v335;
        v180 = swift_allocObject();
        *(v180 + 16) = &unk_226D74BF0;
        *(v180 + 24) = v177;
        v181 = v336;
        *v336 = &unk_226D74C00;
        *(v181 + 8) = v180;
        *(v181 + 48) = 1;
      }

      if (v46 == *MEMORY[0x277CC73D0])
      {
        (*(v36 + 96))(v39, v35);
        v182 = *v39;
        v183 = swift_allocObject();
        *(v183 + 16) = v337;
        *(v183 + 24) = v182;
        v126 = swift_allocObject();
        *(v126 + 16) = &unk_226D74B90;
        *(v126 + 24) = v183;
        v127 = &unk_226D74B98;
        goto LABEL_22;
      }

      if (v46 != *MEMORY[0x277CC7410])
      {
        if (v46 == *MEMORY[0x277CC7438])
        {
          (*(v36 + 96))(v39, v35);
          v193 = *v39;
          v192 = *(v39 + 1);
          v194 = swift_allocObject();
          v194[2] = v337;
          v194[3] = v193;
          v194[4] = v192;
          v50 = swift_allocObject();
          *(v50 + 16) = &unk_226D74B48;
          *(v50 + 24) = v194;
          v51 = &unk_226D74B50;
          goto LABEL_5;
        }

        if (v46 == *MEMORY[0x277CC7350])
        {
          (*(v36 + 96))(v39, v35);
          v195 = v334;
          v197 = v335 + 32;
          v196 = *(v335 + 32);
          v198 = v333;
          v196(v333, v39, v334);
          v199 = (*(v197 + 48) + 24) & ~*(v197 + 48);
          v200 = swift_allocObject();
          *(v200 + 16) = v337;
          v196((v200 + v199), v198, v195);
          v50 = swift_allocObject();
          *(v50 + 16) = &unk_226D74B30;
          *(v50 + 24) = v200;
          v51 = &unk_226D74B38;
          goto LABEL_5;
        }

        if (v46 == *MEMORY[0x277CC7450])
        {
          (*(v36 + 96))(v39, v35);
          v202 = *v39;
          v201 = *(v39 + 1);
          v203 = swift_allocObject();
          v203[2] = v337;
          v203[3] = v202;
          v203[4] = v201;
          v50 = swift_allocObject();
          *(v50 + 16) = &unk_226D74B18;
          *(v50 + 24) = v203;
          v51 = &unk_226D74B20;
          goto LABEL_5;
        }

        if (v46 == *MEMORY[0x277CC7380])
        {
          (*(v36 + 96))(v39, v35);
          v204 = v334;
          v206 = v335 + 32;
          v205 = *(v335 + 32);
          v207 = v333;
          v205(v333, v39, v334);
          v208 = (*(v206 + 48) + 24) & ~*(v206 + 48);
          v209 = swift_allocObject();
          *(v209 + 16) = v337;
          v205((v209 + v208), v207, v204);
          v50 = swift_allocObject();
          *(v50 + 16) = &unk_226D74B00;
          *(v50 + 24) = v209;
          v51 = &unk_226D74B08;
          goto LABEL_5;
        }

        if (v46 == *MEMORY[0x277CC7430])
        {
          (*(v36 + 96))(v39, v35);
          v211 = *v39;
          v210 = *(v39 + 1);
          v212 = swift_allocObject();
          v212[2] = v337;
          v212[3] = v211;
          v212[4] = v210;
          v50 = swift_allocObject();
          *(v50 + 16) = &unk_226D74AE8;
          *(v50 + 24) = v212;
          v51 = &unk_226D74AF0;
          goto LABEL_5;
        }

        if (v46 == *MEMORY[0x277CC73C8])
        {
          (*(v36 + 96))(v39, v35);
          v214 = *v39;
          v213 = *(v39 + 1);
          v215 = swift_allocObject();
          v215[2] = v337;
          v215[3] = v214;
          v215[4] = v213;
          v50 = swift_allocObject();
          *(v50 + 16) = &unk_226D74AD0;
          *(v50 + 24) = v215;
          v51 = &unk_226D74AD8;
          goto LABEL_5;
        }

        if (v46 == *MEMORY[0x277CC7440])
        {
          (*(v36 + 96))(v39, v35);
          v217 = *v39;
          v216 = *(v39 + 1);
          v218 = swift_allocObject();
          v218[2] = v337;
          v218[3] = v217;
          v218[4] = v216;
          v50 = swift_allocObject();
          *(v50 + 16) = &unk_226D74AB8;
          *(v50 + 24) = v218;
          v51 = &unk_226D74AC0;
          goto LABEL_5;
        }

        if (v46 == *MEMORY[0x277CC7358])
        {
          (*(v36 + 96))(v39, v35);
          v219 = v334;
          v221 = v335 + 32;
          v220 = *(v335 + 32);
          v222 = v333;
          v220(v333, v39, v334);
          v223 = (*(v221 + 48) + 24) & ~*(v221 + 48);
          v224 = swift_allocObject();
          *(v224 + 16) = v337;
          v220((v224 + v223), v222, v219);
          v50 = swift_allocObject();
          *(v50 + 16) = &unk_226D74AA0;
          *(v50 + 24) = v224;
          v51 = &unk_226D74AA8;
          goto LABEL_5;
        }

        if (v46 == *MEMORY[0x277CC7360])
        {
          (*(v36 + 96))(v39, v35);
          v225 = v334;
          v227 = v335 + 32;
          v226 = *(v335 + 32);
          v228 = v333;
          v226(v333, v39, v334);
          v229 = (*(v227 + 48) + 24) & ~*(v227 + 48);
          v230 = swift_allocObject();
          *(v230 + 16) = v337;
          v226((v230 + v229), v228, v225);
          v50 = swift_allocObject();
          *(v50 + 16) = &unk_226D74A88;
          *(v50 + 24) = v230;
          v51 = &unk_226D74A90;
          goto LABEL_5;
        }

        if (v46 == *MEMORY[0x277CC73A8])
        {
          (*(v36 + 96))(v39, v35);
          v231 = v334;
          v233 = v335 + 32;
          v232 = *(v335 + 32);
          v234 = v333;
          v232(v333, v39, v334);
          v235 = (*(v233 + 48) + 24) & ~*(v233 + 48);
          v236 = swift_allocObject();
          *(v236 + 16) = v337;
          v232((v236 + v235), v234, v231);
          v50 = swift_allocObject();
          *(v50 + 16) = &unk_226D74A70;
          *(v50 + 24) = v236;
          v51 = &unk_226D74A78;
          goto LABEL_5;
        }

        if (v46 == *MEMORY[0x277CC7418])
        {
          (*(v36 + 96))(v39, v35);
          v237 = *v39;
          v238 = v39[8];
          v239 = swift_allocObject();
          *(v239 + 16) = v337;
          *(v239 + 24) = v237;
          *(v239 + 32) = v238;
          v50 = swift_allocObject();
          *(v50 + 16) = &unk_226D74A58;
          *(v50 + 24) = v239;
          v51 = &unk_226D74A60;
          goto LABEL_5;
        }

        if (v46 == *MEMORY[0x277CC7408])
        {
          (*(v36 + 96))(v39, v35);
          v241 = *v39;
          v240 = *(v39 + 1);
          v242 = swift_allocObject();
          v242[2] = v337;
          v242[3] = v241;
          v242[4] = v240;
          v50 = swift_allocObject();
          *(v50 + 16) = &unk_226D74A20;
          *(v50 + 24) = v242;
          v51 = &unk_226D74A30;
          goto LABEL_5;
        }

        if (v46 == *MEMORY[0x277CC7330])
        {
          (*(v36 + 96))(v39, v35);
          v244 = *v39;
          v243 = *(v39 + 1);
          v245 = swift_allocObject();
          v245[2] = v337;
          v245[3] = v244;
          v245[4] = v243;
          v50 = swift_allocObject();
          *(v50 + 16) = &unk_226D74A00;
          *(v50 + 24) = v245;
          v51 = &unk_226D74A10;
          goto LABEL_5;
        }

        if (v46 == *MEMORY[0x277CC7328])
        {
          (*(v36 + 96))(v39, v35);
          v246 = *v39;
          v247 = *(v39 + 1);
          v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72B8, &qword_226D749D8);
          v250 = v300 + 32;
          v249 = *(v300 + 32);
          v251 = v293;
          v252 = v301;
          v249(v293, &v39[*(v248 + 48)], v301);
          v253 = (*(v250 + 48) + 40) & ~*(v250 + 48);
          v254 = swift_allocObject();
          *(v254 + 2) = v337;
          *(v254 + 3) = v246;
          *(v254 + 4) = v247;
          v249(&v254[v253], v251, v252);
          v255 = swift_allocObject();
          *(v255 + 16) = &unk_226D749E8;
          *(v255 + 24) = v254;
          v256 = v336;
          *v336 = &unk_226D749F0;
          *(v256 + 8) = v255;
          *(v256 + 48) = 1;
        }

        if (v46 == *MEMORY[0x277CC7398])
        {
          (*(v36 + 96))(v39, v35);
          v257 = v329;
          v259 = v330 + 32;
          v258 = *(v330 + 32);
          v260 = v331;
          v258(v329, v39, v331);
          v261 = (*(v259 + 48) + 24) & ~*(v259 + 48);
          v262 = swift_allocObject();
          *(v262 + 16) = v337;
          v258((v262 + v261), v257, v260);
          v50 = swift_allocObject();
          *(v50 + 16) = &unk_226D74A40;
          *(v50 + 24) = v262;
          v51 = &unk_226D74A48;
          goto LABEL_5;
        }

        if (v46 != *MEMORY[0x277CC73B8])
        {
          if (v46 == *MEMORY[0x277CC7448])
          {
            (*(v36 + 96))(v39, v35);
            v265 = *v39;
            v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72B0, &qword_226D749A0);
            v267 = *(v266 + 64);
            v268 = v297;
            (*(v298 + 32))(v297, &v39[*(v266 + 48)], v299);
            v269 = &v39[v267];
            v270 = v296;
            (*(v300 + 32))(v296, v269, v301);
            v271 = *__swift_project_boxed_opaque_existential_1(v337 + 2, v337[5]);
            v272 = sub_226D676AC();
            v273 = MEMORY[0x28223BE20](v272);
            *(&v292 - 4) = v265;
            *(&v292 - 3) = v268;
            v290 = v270;
            v291 = v273;
            sub_226D6EB8C();

            v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
            v279 = v336;
            *(v336 + 24) = v278;
            v279[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418);
            v279[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418);
            v280 = __swift_allocate_boxed_opaque_existential_1(v279);
            (*(*(v278 - 8) + 104))(v280, *MEMORY[0x277CC67B8], v278);
            *(v336 + 48) = 0;
            (*(v300 + 8))(v296, v301);
            return (*(v298 + 8))(v297, v299);
          }

          if (v46 == *MEMORY[0x277CC7378])
          {
            v274 = swift_allocObject();
            v275 = v337;
            *(v274 + 16) = &unk_226D74BC8;
            *(v274 + 24) = v275;
            v276 = &unk_226D74BD8;
          }

          else if (v46 == *MEMORY[0x277CC73C0])
          {
            v274 = swift_allocObject();
            v277 = v337;
            *(v274 + 16) = &unk_226D74BA8;
            *(v274 + 24) = v277;
            v276 = &unk_226D74BB8;
          }

          else
          {
            if (v46 == *MEMORY[0x277CC7368])
            {
              v281 = swift_allocObject();
              *(v281 + 16) = v337;
              v282 = v303;
              *(v281 + 24) = v302;
              *(v281 + 28) = v282;
              v283 = v305;
              *(v281 + 32) = v304;
              *(v281 + 36) = v283;
              v284 = v307;
              *(v281 + 40) = v306;
              *(v281 + 44) = v284;
              v285 = v309;
              *(v281 + 48) = v308;
              *(v281 + 52) = v285;
              v286 = swift_allocObject();
              *(v286 + 16) = &unk_226D74B78;
              *(v286 + 24) = v281;
              v287 = v336;
              *v336 = &unk_226D74B80;
              *(v287 + 8) = v286;
              *(v287 + 48) = 1;
            }

            if (v46 != *MEMORY[0x277CC7390])
            {
              v338 = 0;
              v339 = 0xE000000000000000;
              sub_226D6EEFC();
              MEMORY[0x22AA8A510](0xD000000000000017, 0x8000000226D812F0);
              sub_226D6EFBC();
              result = sub_226D6F0AC();
              __break(1u);
              return result;
            }

            v274 = swift_allocObject();
            v288 = v337;
            *(v274 + 16) = &unk_226D749C8;
            *(v274 + 24) = v288;
            v276 = &unk_226D749D0;
          }

          v289 = v336;
          *v336 = v276;
          *(v289 + 8) = v274;
          *(v289 + 48) = 1;
        }

        (*(v36 + 96))(v39, v35);
        v263 = *v39;
        v264 = swift_allocObject();
        *(v264 + 16) = v337;
        *(v264 + 24) = v263;
        v126 = swift_allocObject();
        *(v126 + 16) = &unk_226D749B0;
        *(v126 + 24) = v264;
        v127 = &unk_226D749B8;
LABEL_22:
        v128 = v336;
        *v336 = v127;
        *(v128 + 8) = v126;
        *(v128 + 48) = 1;
      }

      (*(v36 + 96))(v39, v35);
      v184 = *v39;
      v185 = *(v39 + 1);
      v186 = v39[16];
      v187 = swift_allocObject();
      *(v187 + 16) = v337;
      *(v187 + 24) = v184;
      *(v187 + 32) = v185;
      *(v187 + 40) = v186;
      v188 = v303;
      *(v187 + 44) = v302;
      *(v187 + 48) = v188;
      v189 = v305;
      *(v187 + 52) = v304;
      *(v187 + 56) = v189;
      v190 = v307;
      *(v187 + 60) = v306;
      *(v187 + 64) = v190;
      v191 = v309;
      *(v187 + 68) = v308;
      *(v187 + 72) = v191;
      v133 = swift_allocObject();
      *(v133 + 16) = &unk_226D74B60;
      *(v133 + 24) = v187;
      v134 = &unk_226D74B68;
    }

    v150 = v336;
    *v336 = v134;
    *(v150 + 8) = v133;
    *(v150 + 48) = 1;
  }

  (*(v36 + 96))(v39, v35);
  v48 = *v39;
  v47 = *(v39 + 1);
  v49 = swift_allocObject();
  v49[2] = v337;
  v49[3] = v48;
  v49[4] = v47;
  v50 = swift_allocObject();
  *(v50 + 16) = &unk_226D74DB0;
  *(v50 + 24) = v49;
  v51 = &unk_226D74DB8;
LABEL_5:
  v58 = v336;
  *v336 = v51;
  *(v58 + 8) = v50;
  *(v58 + 48) = 1;
}

uint64_t sub_226B97630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v7 = sub_226D6B9BC();
  v4[4] = v7;
  v8 = *(v7 - 8);
  v4[5] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v4[6] = v10;
  v11 = swift_task_alloc();
  v4[7] = v11;
  *v11 = v4;
  v11[1] = sub_226B97748;

  return sub_226C00808(v10, a3, a4);
}

uint64_t sub_226B97748()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B90AE4, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[9] = v4;
    *v4 = v3;
    v4[1] = sub_226B90950;
    v5 = v3[6];
    v6 = v3[2];
    v7 = v3[3];

    return BankConnectServiceImplementation.loadAccount(for:)(v6, v5);
  }
}

uint64_t sub_226B978C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.loadAccount(for:)(a1, a3);
}

uint64_t sub_226B97974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.connectAccounts(primaryAccountIdentifier:primaryPassAccountFQAI:institution:shouldConnectSecondaryAccounts:ignoreConnectedAccounts:)(a1, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_226B97A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_226D6764C();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B97B24, 0, 0);
}

uint64_t sub_226B97B24()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1((*(v0 + 64) + 16), *(*(v0 + 64) + 40));
  sub_226D1F120((v0 + 16));
  v5 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  *(v0 + 144) = sub_226D6718C() & 1;
  (*(v2 + 104))(v1, *MEMORY[0x277CC6D38], v3);
  *(v0 + 104) = *v5;
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_226B97C38;
  v7 = *(v0 + 72);

  return sub_226D1392C(v7);
}

uint64_t sub_226B97C38(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(v3 + 120) = a1;

  v6 = swift_task_alloc();
  *(v3 + 128) = v6;
  *v6 = v5;
  v6[1] = sub_226B97DB8;
  v7 = *(v3 + 104);
  v8 = *(v3 + 144);
  v9 = *(v3 + 96);
  v10 = *(v3 + 72);

  return sub_226D14A8C(a1, v10, v8, v9);
}

uint64_t sub_226B97DB8(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 136) = a1;

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_226B97F34, 0, 0);
}

uint64_t sub_226B97F34()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[7];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  *v3 = v1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_226B97FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.getConsent(for:)(a1, a3);
}

uint64_t sub_226B9806C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.updateConsentStatus(forConsentID:)(a2, a3);
}

uint64_t sub_226B9811C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_226D6C3CC();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v6[10] = *(v8 + 64);
  v6[11] = swift_task_alloc();
  v9 = sub_226D6B82C();
  v6[12] = v9;
  v10 = *(v9 - 8);
  v6[13] = v10;
  v6[14] = *(v10 + 64);
  v6[15] = swift_task_alloc();
  v11 = sub_226D6B8CC();
  v6[16] = v11;
  v12 = *(v11 - 8);
  v6[17] = v12;
  v6[18] = *(v12 + 64);
  v6[19] = swift_task_alloc();
  v13 = sub_226D6B8AC();
  v6[20] = v13;
  v14 = *(v13 - 8);
  v6[21] = v14;
  v15 = *(v14 + 64) + 15;
  v6[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B98310, 0, 0);
}

uint64_t sub_226B98310()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[3] + 16), *(v0[3] + 40));
  sub_226D6B8BC();
  v5 = sub_226D6B88C();
  v7 = v6;
  v0[23] = v6;
  (*(v2 + 8))(v1, v3);
  v8 = *(MEMORY[0x277CC8088] + 4);
  v9 = swift_task_alloc();
  v0[24] = v9;
  v10 = sub_226B41FC0();
  *v9 = v0;
  v9[1] = sub_226B98420;

  return MEMORY[0x28211A3F8](v5, v7, &type metadata for BankConnectEnvironmentImplementation, v10);
}

uint64_t sub_226B98420(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_226B98540, 0, 0);
}

uint64_t sub_226B98540()
{
  v1 = v0[16];
  v2 = v0[17];
  v26 = v1;
  v27 = v0[19];
  v3 = v0[15];
  v24 = v0[18];
  v25 = v0[14];
  v5 = v0[12];
  v4 = v0[13];
  v28 = v5;
  v6 = v0[11];
  v29 = v3;
  v8 = v0[8];
  v7 = v0[9];
  v30 = v8;
  v31 = v6;
  v9 = v0[7];
  v10 = v0[4];
  v11 = v0[5];
  v33 = v0[3];
  v34 = v0[6];
  (*(v2 + 16))();
  (*(v4 + 16))(v3, v11, v5);
  (*(v7 + 16))(v6, v9, v8);
  v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v13 = (v24 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (*(v4 + 80) + v13 + 8) & ~*(v4 + 80);
  v15 = (v25 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (*(v7 + 80) + v15 + 8) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v0[26] = v17;
  (*(v2 + 32))(v17 + v12, v27, v26);
  *(v17 + v13) = v33;
  (*(v4 + 32))(v17 + v14, v29, v28);
  *(v17 + v15) = v34;
  (*(v7 + 32))(v17 + v16, v31, v30);
  v18 = *(MEMORY[0x277CC7780] + 4);
  v32 = (*MEMORY[0x277CC7780] + MEMORY[0x277CC7780]);

  v19 = swift_task_alloc();
  v0[27] = v19;
  v20 = sub_226D682FC();
  *v19 = v0;
  v19[1] = sub_226B987A4;
  v21 = v0[25];
  v22 = v0[2];

  return v32(v22, &unk_226D73A08, v17, v20);
}

uint64_t sub_226B987A4()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_226B988C0;
  }

  else
  {
    v5 = *(v2 + 208);

    v4 = sub_226B51E6C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226B988C0()
{
  v2 = v0[25];
  v1 = v0[26];

  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v3 = v0[28];
  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_27D7A7D10);
  v5 = v3;
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[28];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_226AB4000, v6, v7, "Failed to complete connection authorization: %@.", v9, 0xCu);
    sub_226B17298(v10);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  v13 = v0[28];
  v14 = v0[22];
  v15 = v0[19];
  v16 = v0[15];
  v17 = v0[11];

  v18 = sub_226D6C63C();
  sub_226B9E270();
  swift_allocError();
  *v19 = v13;
  (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277CC82C8], v18);
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_226B98AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_226B98BA0;

  return BankConnectServiceImplementation.encrypt(_:)(a3);
}

uint64_t sub_226B98BA0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return MEMORY[0x2822009F8](sub_226B98CFC, 0, 0);
  }
}

uint64_t sub_226B98D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_226B98DD8;

  return BankConnectServiceImplementation.decrypt(accountPaymentInformation:)(a3, a4);
}

uint64_t sub_226B98DD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_226B98F24, 0, 0);
  }
}

uint64_t sub_226B98F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.loadGrantedAccounts(forConsentID:)(a2, a3);
}

uint64_t sub_226B98FF8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.scheduleHistoricalTransactionTask(for:)(a2);
}

uint64_t sub_226B99098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_226B9914C;

  return BankConnectServiceImplementation.logo(forInstitutionID:)(a3, a4);
}

uint64_t sub_226B9914C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  v6 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return MEMORY[0x2822009F8](sub_226B9924C, 0, 0);
}

uint64_t sub_226B99270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B99294, 0, 0);
}

uint64_t sub_226B99294()
{
  v0[5] = __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40))[51];
  v1 = *(MEMORY[0x277CC81B0] + 4);

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_226B99350;
  v4 = v0[3];
  v3 = v0[4];

  return MEMORY[0x28211A630](v4, v3);
}

uint64_t sub_226B99350()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_226B99464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_226B99488, 0, 0);
}

uint64_t sub_226B99488()
{
  v2 = v0[8];
  v1 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7298, &qword_226D74990);
  v3 = sub_226D6B60C();
  v4 = [v3 primaryAccountIdentifier];

  v5 = sub_226D6E39C();
  v7 = v6;

  v0[10] = v7;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_226D1F020(v0 + 2);
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v10 = *(v9 + 8);
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_226B99630;
  v13 = v0[7];

  return v15(v13, v5, v7, v8, v9);
}

uint64_t sub_226B99630()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226B99748, 0, 0);
}

uint64_t sub_226B99748()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B997AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_226B997D0, 0, 0);
}

uint64_t sub_226B997D0()
{
  __swift_project_boxed_opaque_existential_1((v0[8] + 16), *(v0[8] + 40));
  sub_226D1F020(v0 + 2);
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 8);
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_226B9991C;
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[7];

  return v10(v8, v6, v7, v1, v2);
}

uint64_t sub_226B9991C()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226B9E33C, 0, 0);
}

uint64_t sub_226B99A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7)
{
  *(v7 + 112) = a7;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = sub_226D671FC();
  *(v7 + 64) = v8;
  v9 = *(v8 - 8);
  *(v7 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B99AE4, 0, 0);
}

uint64_t sub_226B99AE4()
{
  v34 = v0;
  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_27D7A7D10);
  (*(v2 + 16))(v1, v5, v3);

  v7 = sub_226D6E05C();
  v8 = sub_226D6E9AC();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);
  v12 = *(v0 + 64);
  if (v9)
  {
    v30 = *(v0 + 48);
    v31 = *(v0 + 40);
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v13 = 136315394;
    v14 = sub_226D671AC();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_226AC4530(v14, v16, &v33);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    if (v30)
    {
      v18 = v31;
    }

    else
    {
      v18 = 0x3E6C696E3CLL;
    }

    if (v30)
    {
      v19 = v4;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    v20 = sub_226AC4530(v18, v19, &v33);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_226AB4000, v7, v8, "Initiating consent for institutionID: %s with fpanID: %s.", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v32, -1, -1);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v21 = swift_task_alloc();
  *(v0 + 88) = v21;
  *v21 = v0;
  v21[1] = sub_226B99DA0;
  v22 = *(v0 + 48);
  v23 = *(v0 + 56);
  v24 = *(v0 + 32);
  v25 = *(v0 + 40);
  v26 = *(v0 + 16);
  v27 = *(v0 + 24);
  v28 = *(v0 + 112);

  return sub_226BD5D38(v26, v24, v25, v22, v23, v28);
}

uint64_t sub_226B99DA0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[10];

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v2[12] = v8;
    *v8 = v4;
    v8[1] = sub_226B99F1C;
    v9 = v2[3];
    v10 = v2[2];

    return sub_226BD6E30(v10);
  }
}

uint64_t sub_226B99F1C()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B9A058, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_226B9A058()
{
  v1 = v0[2];
  v2 = sub_226D6B8CC();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = v0[13];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_226B9A0F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.offlineLabPermission()(a1);
}

uint64_t sub_226B9A198(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.offlineLabSharingPreference()(a1);
}

uint64_t sub_226B9A238(uint64_t a1, char a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.setOfflineLabSharingPermission(_:)(a2);
}

uint64_t sub_226B9A2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_226AE5A84;

  return sub_226BE1EB8(a2, a3, a4, a5);
}

uint64_t sub_226B9A39C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_226AE5A84;

  return sub_226BE239C(a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_226B9A480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v6 = sub_226D6B9BC();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_226B9A598;

  return sub_226C00808(v9, a2, a3);
}

uint64_t sub_226B9A598()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B40E90, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[8] = v4;
    *v4 = v3;
    v4[1] = sub_226B40CFC;
    v5 = v3[2];
    v6 = v3[5];

    return BankConnectServiceImplementation.loadPaymentInfo(for:)(v6);
  }
}

uint64_t sub_226B9A710(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.loadPaymentInfo(for:)(a2);
}

uint64_t sub_226B9A7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v6 = sub_226D6B9BC();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_226B9A8C8;

  return sub_226C00808(v9, a2, a3);
}

uint64_t sub_226B9A8C8()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B9E334, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[8] = v4;
    *v4 = v3;
    v4[1] = sub_226B9AA40;
    v5 = v3[2];
    v6 = v3[5];

    return BankConnectServiceImplementation.loadScheduledPayments(for:)(v6);
  }
}

uint64_t sub_226B9AA40()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_226B9E330;
  }

  else
  {
    v3 = sub_226B9E328;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B9AB54(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.loadScheduledPayments(for:)(a2);
}

uint64_t sub_226B9ABF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.revokeConnectionAuthorization(forConsentID:)(a2, a3);
}

uint64_t sub_226B9ACA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.revokeConsents(forInstitutionID:)(a2, a3);
}

uint64_t sub_226B9AD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v6 = sub_226D6B9BC();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_226B9AE6C;

  return sub_226C00808(v9, a2, a3);
}

uint64_t sub_226B9AE6C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B9E334, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[8] = v4;
    *v4 = v3;
    v4[1] = sub_226B9AA40;
    v5 = v3[2];
    v6 = v3[5];

    return BankConnectServiceImplementation.loadTransactions(for:)(v6);
  }
}

uint64_t sub_226B9AFE4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.loadTransactions(for:)(a2);
}

uint64_t sub_226B9B084(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.disconnectAccount(with:)(a2);
}

uint64_t sub_226B9B124(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.validateAccountConnection(with:)(a2);
}

uint64_t sub_226B9B1C4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.classifyTransactions(with:forceClassification:)(a2, a3);
}

uint64_t sub_226B9B274(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_226B9B294, 0, 0);
}

uint64_t sub_226B9B294()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v4 = *(*(v3 + 8) + 8);
  sub_226D6BAAC();
  v5 = sub_226D676AC();

  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  *(v6 + 24) = v5;
  sub_226D6EB7C();

  v7 = v0[1];

  return v7();
}

uint64_t sub_226B9B394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_226B9B3B8, 0, 0);
}

uint64_t sub_226B9B3B8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  v6 = *(*(v5 + 8) + 8);
  sub_226D6BAAC();
  v7 = sub_226D676AC();

  v8 = swift_task_alloc();
  v8[2] = v7;
  v8[3] = v2;
  v8[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A73F8, &qword_226D74E20);
  sub_226D6EB8C();

  v9 = v0[1];

  return v9();
}

uint64_t sub_226B9B4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_226AD827C;

  return BankConnectServiceImplementation.termsAndConditionsURL(forTermsAndConditionsID:)(a1, a3, a4);
}

uint64_t sub_226B9B594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_226B9B5B8, 0, 0);
}

uint64_t sub_226B9B5B8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  v6 = *(*(v5 + 8) + 8);
  sub_226D6BAAC();
  v7 = sub_226D676AC();

  v8 = swift_task_alloc();
  v8[2] = v7;
  v8[3] = v3;
  v8[4] = v2;
  v8[5] = v4;
  v8[6] = v1;
  sub_226D6EB7C();

  v9 = v0[1];

  return v9();
}

uint64_t sub_226B9B6CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.reevaluateBankConnectEligibility()();
}

uint64_t sub_226B9B760(uint64_t a1, char a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.showBackgroundRefreshAlert(isFirstTimeAskingPermission:)(a2);
}

uint64_t sub_226B9B800()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_226AE5A84;

  return sub_226B9B760(v2, v3);
}

uint64_t sub_226B9B89C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B3FD70(a1, v5);
}

uint64_t sub_226B9B948()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226AE5A84;

  return sub_226B9B6CC();
}

uint64_t sub_226B9B9D8()
{
  v2 = *(sub_226D6D4AC() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_226AE5A84;

  return sub_226B9B594(v4, v5, v6, v0 + v3);
}

uint64_t sub_226B9BAC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AD827C;

  return sub_226B9B4D8(a1, v4, v5, v6);
}

uint64_t sub_226B9BB78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226B93658(a1, v5, v4);
}

uint64_t sub_226B9BC24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B9B394(a1, v4, v5, v6);
}

uint64_t sub_226B9BCD8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B93808(a1, v5, v4);
}

uint64_t sub_226B9BD84()
{
  v2 = *(sub_226D671FC() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9B274(v4, v0 + v3);
}

uint64_t sub_226B9BE5C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9B1C4(v2, v3, v4);
}

uint64_t sub_226B9BF04()
{
  v2 = *(sub_226D6B9BC() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9B124(v4, v0 + v3);
}

uint64_t sub_226B9BFDC()
{
  v2 = *(sub_226D6B9BC() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9B084(v4, v0 + v3);
}

uint64_t sub_226B9C0B4()
{
  v2 = *(sub_226D6B9BC() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9AFE4(v4, v0 + v3);
}

uint64_t sub_226B9C18C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9AD54(v2, v3, v4);
}

uint64_t sub_226B9C234()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9ACA4(v2, v3, v4);
}

uint64_t sub_226B9C2DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9ABF4(v2, v3, v4);
}

uint64_t sub_226B9C384()
{
  v2 = *(sub_226D6B9BC() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9AB54(v4, v0 + v3);
}

uint64_t sub_226B9C45C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9A7B0(v2, v3, v4);
}

uint64_t sub_226B9C504()
{
  v2 = *(sub_226D6B9BC() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9A710(v4, v0 + v3);
}

uint64_t sub_226B9C5DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9A480(v2, v3, v4);
}

uint64_t sub_226B9C684()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 44);
  v7 = *(v0 + 52);
  v8 = *(v0 + 60);
  v9 = *(v0 + 68);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_226AE5A84;

  return sub_226B9A39C(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_226B9C764()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_226AE5A84;

  return sub_226B9A2D8(v2, v3, v4, v5, v6);
}

uint64_t sub_226B9C820()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_226AE5A84;

  return sub_226B9A238(v2, v3);
}

uint64_t sub_226B9C8BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226B9A198(a1);
}

uint64_t sub_226B9C958(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B939B8(a1, v5, v4);
}

uint64_t sub_226B9CA04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226B9A0F8(a1);
}

uint64_t sub_226B9CAA0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B93B68(a1, v5, v4);
}

uint64_t sub_226B9CB4C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_226D671FC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_226D6C3CC() - 8);
  v9 = (v7 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = v1 + v7;
  v12 = *(v1 + v7);
  v13 = *(v11 + 8);
  v14 = *(v1 + ((*(v8 + 64) + v9 + 1) & 0xFFFFFFFFFFFFFFFELL));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_226AE5A84;

  return sub_226B99A18(a1, v10, v1 + v6, v12, v13, v1 + v9, v14);
}

uint64_t sub_226B9CCEC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B93D18(a1, v5, v4);
}

uint64_t sub_226B9CD98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B997AC(a1, v4, v5, v6);
}

uint64_t sub_226B9CE4C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B93EC8(a1, v5, v4);
}

uint64_t sub_226B9CEF8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7298, &qword_226D74990) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B99464(a1, v6, v1 + v5);
}

uint64_t sub_226B9CFE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B99270(v2, v3, v4);
}

uint64_t sub_226B9D090(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B99098(a1, v4, v5, v6);
}

uint64_t sub_226B9D144(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B94078(a1, v5, v4);
}

uint64_t sub_226B9D1F0()
{
  v2 = *(sub_226D6B9BC() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B98FF8(v4, v0 + v3);
}

uint64_t sub_226B9D2C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B98F48(v2, v3, v4);
}

uint64_t sub_226B9D370(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B98D24(a1, v4, v5, v6);
}

uint64_t sub_226B9D424(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B94228(a1, v5, v4);
}

uint64_t objectdestroy_47Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_226B9D51C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B98AFC(a1, v5, v4);
}

uint64_t sub_226B9D5C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B943D8(a1, v5, v4);
}

uint64_t sub_226B9D674(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_226D6B8CC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_226D6B82C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_226D6C3CC() - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + v10);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_226AE5A84;

  return sub_226B9811C(a1, v13, v1 + v6, v1 + v9, v14, v1 + v12);
}

uint64_t sub_226B9D838(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B94588(a1, v5, v4);
}

uint64_t sub_226B9D8E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9806C(v2, v3, v4);
}

uint64_t sub_226B9D98C(uint64_t a1)
{
  v4 = *(sub_226D6B9BC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B97FB8(a1, v6, v1 + v5);
}

uint64_t sub_226B9DA70(uint64_t a1)
{
  v4 = *(sub_226D671FC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B97A60(a1, v6, v1 + v5);
}

uint64_t sub_226B9DB54(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B94738(a1, v5, v4);
}

uint64_t sub_226B9DC00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72A0, &unk_226D7C550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B9DC70(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72A0, &unk_226D7C550) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_226D671FC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1 + v9;
  v14 = v1 + v9 + *(v8 + 64);
  v15 = *v14;
  v16 = v14[1];
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_226AE5A84;

  return sub_226B97974(a1, v10, v11, v12, v1 + v6, v13, v15, v16);
}

uint64_t sub_226B9DE18(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B948E8(a1, v5, v4);
}

uint64_t objectdestroy_38Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_226B9DF90(uint64_t a1)
{
  v4 = *(sub_226D6B9BC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B978C0(a1, v6, v1 + v5);
}

uint64_t sub_226B9E074(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B94A98(a1, v5, v4);
}

uint64_t objectdestroy_22Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_226B9E16C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B97630(a1, v4, v5, v6);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_2(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x22AA8BEE0);
  }

  return result;
}

unint64_t sub_226B9E270()
{
  result = qword_27D7A6F48;
  if (!qword_27D7A6F48)
  {
    sub_226D6C63C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6F48);
  }

  return result;
}

void *sub_226B9E2E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_226C87424(*(v1 + 16), a1);
}

void sub_226B9E304()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_226C876A0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

void sub_226B9E364()
{
  v0 = sub_226D67F1C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v23 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_226AC4530(0xD00000000000001ELL, 0x8000000226D81360, &v23);
    _os_log_impl(&dword_226AB4000, v6, v7, "Firing the %s engagement event", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  v10 = objc_opt_self();
  v11 = [v10 bagSubProfile];
  if (v11)
  {
    v6 = v11;
    v12 = [v10 bagSubProfileVersion];
    if (v12)
    {
      v13 = v12;
      v14 = [objc_opt_self() bagForProfile:v6 profileVersion:v12];

      v15 = objc_allocWithZone(MEMORY[0x277CEE598]);
      v16 = v14;
      v17 = sub_226D6E36C();
      v18 = [v15 initWithContainerID:v17 bag:v16];

      v19 = [objc_allocWithZone(MEMORY[0x277CEE5A8]) initForEngagement];
      v20 = sub_226D6E36C();
      [v19 setEventType_];

      sub_226D67E6C();
      sub_226D67F0C();
      (*(v1 + 8))(v4, v0);
      v21 = sub_226D6E36C();

      [v19 setApp_];

      [v18 enqueueEvent_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_226B9E6E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_226B9E704, 0, 0);
}

uint64_t sub_226B9E704()
{
  v1 = v0[6];
  v2 = v0[7];
  type metadata accessor for InstrumentationSystemTask();
  inited = swift_initStackObject();
  *(inited + 16) = v1;
  *(inited + 24) = v2;

  sub_226D66E6C();
  swift_setDeallocating();
  v4 = *(inited + 16);

  v5 = *(inited + 24);

  v6 = v0[1];

  return v6();
}

uint64_t sub_226B9E7EC(uint64_t a1)
{
  v2 = sub_226D6B5EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_226D6D4AC();
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v11 = sub_226D6E07C();
  __swift_project_value_buffer(v11, qword_28105F5E0);
  v12 = sub_226D6E05C();
  v13 = sub_226D6E9EC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = v3;
    v15 = v14;
    *v14 = 0;
    _os_log_impl(&dword_226AB4000, v12, v13, "Running instrumentation task", v14, 2u);
    v3 = v20;
    MEMORY[0x22AA8BEE0](v15, -1, -1);
  }

  v16 = *(a1 + 24);
  sub_226C0B9EC();
  v17 = *(a1 + 16);
  sub_226C940F4();
  sub_226CAD354();
  sub_226D6D46C();
  sub_226D6B58C();
  sub_226B9EA88(v10, v6, v17);
  (*(v7 + 8))(v10, v21);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_226B9EA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v52 = a1;
  v4 = sub_226D6D4AC();
  v51 = *(v4 - 8);
  v5 = *(v51 + 8);
  v6 = MEMORY[0x28223BE20](v4);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v47 - v17;
  v19 = sub_226D6CD7C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_226D6B5EC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v28, a2, v24);
  sub_226C95100(v18);
  v52 = v20;
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    v32 = *(v52 + 32);
    v47 = v19;
    v32(v23, v18, v19);
    sub_226D69A4C();
    v33 = v23;
    if (v55)
    {
      v34 = v53;
      v35 = swift_dynamicCast();
      v36 = v51;
      (*(v51 + 7))(v34, v35 ^ 1u, 1, v4);
    }

    else
    {
      sub_226AC47B0(v54, &unk_27D7A8BB0, &unk_226D74340);
      v36 = v51;
      v34 = v53;
      (*(v51 + 7))(v53, 1, 1, v4);
    }

    sub_226AF265C(v34, v13);
    if ((*(v36 + 6))(v13, 1, v4) == 1)
    {
      sub_226AC47B0(v13, &qword_27D7A8BE0, &unk_226D718F0);
    }

    else
    {
      v37 = *(v36 + 4);
      v51 = "strumentationSystemTask";
      v38 = v48;
      v37(v48, v13, v4);
      v39 = v49;
      sub_226D6CD2C();
      v40 = sub_226D6D44C();
      v41 = *(v36 + 1);
      v41(v39, v4);
      v41(v38, v4);
      if (v40)
      {
        (*(v52 + 8))(v33, v47);
        (*(v25 + 8))(v28, v24);
LABEL_15:
        v29 = &qword_27D7A8BE0;
        v30 = &unk_226D718F0;
        v31 = v53;
        return sub_226AC47B0(v31, v29, v30);
      }
    }

    v55 = v4;
    __swift_allocate_boxed_opaque_existential_1(v54);
    sub_226D6CD2C();
    sub_226D69A2C();
    (*(v25 + 8))(v28, v24);
    sub_226AC47B0(v54, &unk_27D7A8BB0, &unk_226D74340);
    v42 = v50;
    v43 = sub_226C95844();
    v44 = v43;
    if (v43 >> 62)
    {
      if (sub_226D6EDFC() >= 1)
      {
        goto LABEL_12;
      }
    }

    else if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_12:
      sub_226C95B98(v44, v33);

      v45 = __swift_project_boxed_opaque_existential_1((v42 + 112), *(v42 + 136));
      sub_226AE532C((v45 + 41), v54);
      __swift_project_boxed_opaque_existential_1(v54, v55);
      sub_226D69AEC();

      (*(v52 + 8))(v33, v47);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      goto LABEL_15;
    }

    (*(v52 + 8))(v33, v47);

    goto LABEL_15;
  }

  (*(v25 + 8))(v28, v24);
  v29 = &qword_27D7A6558;
  v30 = &qword_226D7CCE0;
  v31 = v18;
  return sub_226AC47B0(v31, v29, v30);
}

void sub_226B9F100(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedScheduler];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = sub_226D6E36C();
  v7 = swift_allocObject();
  v7[2] = 0xD000000000000022;
  v7[3] = 0x8000000226D813B0;
  v7[4] = &unk_226D74F48;
  v7[5] = v5;
  v14[4] = sub_226B173EC;
  v14[5] = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_226C01160;
  v14[3] = &block_descriptor_7;
  v8 = _Block_copy(v14);

  v9 = [v4 registerForTaskWithIdentifier:v6 usingQueue:0 launchHandler:v8];
  _Block_release(v8);

  if ((v9 & 1) == 0)
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v10 = sub_226D6E07C();
    __swift_project_value_buffer(v10, qword_28105F5E0);
    v11 = sub_226D6E05C();
    v12 = sub_226D6E9DC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_226AB4000, v11, v12, "Unable to register maintenance tasks", v13, 2u);
      MEMORY[0x22AA8BEE0](v13, -1, -1);
    }
  }
}

uint64_t sub_226B9F34C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_226AD827C;

  return sub_226B9E6E4(v2, v3);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226B9F418@<X0>(uint64_t a1@<X8>)
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
  Task = type metadata accessor for BankConnectInstitutionDataFetchTask();
  sub_226AF265C(v1 + Task[8], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226AC47B0(v6, &qword_27D7A8BE0, &unk_226D718F0);
    return sub_226AF265C(v1 + Task[6], a1);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = *(v1 + Task[7]);
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

unint64_t sub_226B9F630()
{
  sub_226D6EEFC();

  Task = type metadata accessor for BankConnectInstitutionDataFetchTask();
  MEMORY[0x22AA8A510](*(v0 + *(Task + 20)), *(v0 + *(Task + 20) + 8));
  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0xD000000000000035;
}

uint64_t sub_226B9F6C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_226D684AC();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_226D6BCEC();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  Task = type metadata accessor for BankConnectInstitutionDataFetchTask();
  v2[11] = Task;
  v11 = *(*(Task - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B9F850, 0, 0);
}

uint64_t sub_226B9F850()
{
  v30 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  v3 = sub_226D6E07C();
  *(v0 + 112) = __swift_project_value_buffer(v3, qword_28105F710);
  sub_226BA1E6C(v2, v1, type metadata accessor for BankConnectInstitutionDataFetchTask);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9AC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29[0] = v10;
    *v9 = 136315138;
    sub_226D6EEFC();

    v29[1] = 0xD000000000000035;
    v29[2] = 0x8000000226D81450;
    MEMORY[0x22AA8A510](*(v7 + *(v8 + 20)), *(v7 + *(v8 + 20) + 8));
    MEMORY[0x22AA8A510](41, 0xE100000000000000);
    sub_226BA1ED4(v7, type metadata accessor for BankConnectInstitutionDataFetchTask);
    v11 = sub_226AC4530(0xD000000000000035, 0x8000000226D81450, v29);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_226AB4000, v4, v5, "%s: Starting to update institution", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  else
  {

    sub_226BA1ED4(v7, type metadata accessor for BankConnectInstitutionDataFetchTask);
  }

  v12 = (*(v0 + 24) + *(*(v0 + 88) + 20));
  if (MEMORY[0x22AA83210](*v12, v12[1]))
  {
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
    v15 = *(v0 + 64);
    v16 = sub_226D6BD1C();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_226D6BD0C();
    (*(v14 + 104))(v13, *MEMORY[0x277CC8130], v15);
    sub_226D6BCFC();

    (*(v14 + 8))(v13, v15);
  }

  v19 = *(v0 + 24);
  v20 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v21 = v20[5];
  __swift_project_boxed_opaque_existential_1(v20 + 1, v20[4]);
  v22 = sub_226D6C2AC();
  *(v0 + 120) = v22;
  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *(v23 + 16) = v22;
  *(v23 + 24) = v19;
  v24 = *(MEMORY[0x277CC7D90] + 4);
  v25 = swift_task_alloc();
  *(v0 + 136) = v25;
  *v25 = v0;
  v25[1] = sub_226B9FBE8;
  v26 = *(v0 + 56);
  v27 = *(v0 + 40);

  return MEMORY[0x282119B28](v26, &unk_226D75008, v23, v27);
}

uint64_t sub_226B9FBE8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_226BA07E4;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_226B9FD04;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226B9FD04()
{
  *(v0 + 152) = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24))[51];
  v1 = *(MEMORY[0x277CC81B8] + 4);

  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_226B9FDC0;
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);

  return MEMORY[0x28211A638](v4, v3);
}

uint64_t sub_226B9FDC0()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226B9FED8, 0, 0);
}

uint64_t sub_226B9FED8()
{
  v46 = v0;
  v1 = *(v0 + 32);
  v2 = sub_226D6D1AC();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_226AC47B0(v1, &unk_27D7A62F8, &unk_226D73B70);
  if (v3 == 1)
  {
    v4 = *(v0 + 56);
    *(v0 + 168) = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24))[51];

    v5 = sub_226D6848C();
    v7 = v6;
    *(v0 + 176) = v6;
    v8 = *(MEMORY[0x277CC81B0] + 4);
    v9 = swift_task_alloc();
    *(v0 + 184) = v9;
    *v9 = v0;
    v9[1] = sub_226BA0350;

    return MEMORY[0x28211A630](v5, v7);
  }

  else
  {
    v10 = *(v0 + 144);
    v11 = *(v0 + 56);
    v12 = *(v0 + 16);
    v13 = *(v0 + 24);
    v14 = *__swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v15 = sub_226D676AC();
    v16 = swift_task_alloc();
    v16[2] = v13;
    v16[3] = v15;
    v16[4] = v11;
    v16[5] = v12;
    sub_226D6EB7C();
    if (v10)
    {
      v17 = *(v0 + 120);
      v19 = *(v0 + 48);
      v18 = *(v0 + 56);
      v20 = *(v0 + 40);

      (*(v19 + 8))(v18, v20);
      v22 = *(v0 + 96);
      v21 = *(v0 + 104);
      v23 = *(v0 + 80);
      v24 = *(v0 + 56);
      v25 = *(v0 + 32);

      v26 = *(v0 + 8);
    }

    else
    {
      v27 = *(v0 + 112);
      v28 = *(v0 + 96);
      v29 = *(v0 + 24);

      sub_226BA1E6C(v29, v28, type metadata accessor for BankConnectInstitutionDataFetchTask);
      v30 = sub_226D6E05C();
      v31 = sub_226D6E9AC();
      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 120);
      v34 = *(v0 + 96);
      if (v32)
      {
        v35 = *(v0 + 88);
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v45[0] = v37;
        *v36 = 136315138;
        sub_226D6EEFC();

        v45[1] = 0xD000000000000035;
        v45[2] = 0x8000000226D81450;
        MEMORY[0x22AA8A510](*(v34 + *(v35 + 20)), *(v34 + *(v35 + 20) + 8));
        MEMORY[0x22AA8A510](41, 0xE100000000000000);
        sub_226BA1ED4(v34, type metadata accessor for BankConnectInstitutionDataFetchTask);
        v38 = sub_226AC4530(0xD000000000000035, 0x8000000226D81450, v45);

        *(v36 + 4) = v38;
        _os_log_impl(&dword_226AB4000, v30, v31, "%s: Successfully updated institution.", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        MEMORY[0x22AA8BEE0](v37, -1, -1);
        MEMORY[0x22AA8BEE0](v36, -1, -1);
      }

      else
      {
        v39 = *(v0 + 120);

        sub_226BA1ED4(v34, type metadata accessor for BankConnectInstitutionDataFetchTask);
      }

      v40 = *(v0 + 96);
      v41 = *(v0 + 104);
      v42 = *(v0 + 80);
      v43 = *(v0 + 32);
      (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

      v26 = *(v0 + 8);
    }

    return v26();
  }
}

uint64_t sub_226BA0350()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_226BA0484, 0, 0);
}

uint64_t sub_226BA0484()
{
  v37 = v0;
  v1 = v0[18];
  v2 = v0[7];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *__swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v6 = sub_226D676AC();
  v7 = swift_task_alloc();
  v7[2] = v4;
  v7[3] = v6;
  v7[4] = v2;
  v7[5] = v3;
  sub_226D6EB7C();
  if (v1)
  {
    v8 = v0[15];
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];

    (*(v10 + 8))(v9, v11);
    v13 = v0[12];
    v12 = v0[13];
    v14 = v0[10];
    v15 = v0[7];
    v16 = v0[4];

    v17 = v0[1];
  }

  else
  {
    v18 = v0[14];
    v19 = v0[12];
    v20 = v0[3];

    sub_226BA1E6C(v20, v19, type metadata accessor for BankConnectInstitutionDataFetchTask);
    v21 = sub_226D6E05C();
    v22 = sub_226D6E9AC();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[15];
    v25 = v0[12];
    if (v23)
    {
      v26 = v0[11];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36[0] = v28;
      *v27 = 136315138;
      sub_226D6EEFC();

      v36[1] = 0xD000000000000035;
      v36[2] = 0x8000000226D81450;
      MEMORY[0x22AA8A510](*(v25 + *(v26 + 20)), *(v25 + *(v26 + 20) + 8));
      MEMORY[0x22AA8A510](41, 0xE100000000000000);
      sub_226BA1ED4(v25, type metadata accessor for BankConnectInstitutionDataFetchTask);
      v29 = sub_226AC4530(0xD000000000000035, 0x8000000226D81450, v36);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_226AB4000, v21, v22, "%s: Successfully updated institution.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x22AA8BEE0](v28, -1, -1);
      MEMORY[0x22AA8BEE0](v27, -1, -1);
    }

    else
    {
      v30 = v0[15];

      sub_226BA1ED4(v25, type metadata accessor for BankConnectInstitutionDataFetchTask);
    }

    v31 = v0[12];
    v32 = v0[13];
    v33 = v0[10];
    v34 = v0[4];
    (*(v0[6] + 8))(v0[7], v0[5]);

    v17 = v0[1];
  }

  return v17();
}

uint64_t sub_226BA07E4()
{
  v1 = v0[15];
  v2 = v0[16];

  v3 = v0[18];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[4];

  v9 = v0[1];

  return v9();
}

uint64_t sub_226BA0894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_226D6C5FC();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BA0958, 0, 0);
}

uint64_t sub_226BA0958()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = (v2 + *(type metadata accessor for BankConnectInstitutionDataFetchTask() + 20));
  v4 = *v3;
  v5 = v3[1];

  sub_226D6C5EC();
  v6 = *(MEMORY[0x277CC7D30] + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_226B4BF14;
  v8 = v0[7];
  v9 = v0[2];
  v10 = v0[3];

  return MEMORY[0x282119AC8](v9, v8);
}

void sub_226BA0A30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v76 = a4;
  v82 = a3;
  v86[5] = *MEMORY[0x277D85DE8];
  v81 = sub_226D6D61C();
  v84 = *(v81 - 8);
  v6 = v84[8];
  MEMORY[0x28223BE20](v81);
  v78 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_226D6D6DC();
  v79 = *(v83 - 8);
  v8 = *(v79 + 64);
  MEMORY[0x28223BE20](v83);
  v77 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6D4AC();
  v80 = *(v10 - 8);
  v11 = v80[8];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v72 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v72 - v22;
  v24 = a1;
  v25 = (a1 + *(type metadata accessor for BankConnectInstitutionDataFetchTask() + 20));
  v26 = *v25;
  v27 = v25[1];
  sub_226D6842C();
  v28 = v85;
  v29 = sub_226D683EC();
  if (!v28)
  {
    v73 = v21;
    v74 = v16;
    v30 = v80;
    v72 = v14;
    v75 = v10;
    v85 = v23;
    v31 = v24;
    v32 = v29;
    v33 = [v29 termsAndConditionsObject];

    if (v33)
    {
      v34 = [v33 publishedAt];

      v35 = v85;
      sub_226D6D45C();

      v36 = v30;
      (*(v30 + 56))(v35, 0, 1, v75);
    }

    else
    {
      v36 = v30;
      (*(v30 + 56))(v85, 1, 1, v75);
    }

    v37 = sub_226D6AA6C();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    sub_226D6AA5C();
    v40 = sub_226D6AA4C();
    v82 = 0;
    v41 = v81;
    v43 = v83;
    v42 = v84;
    v45 = v40;
    v80 = a2;

    v46 = v78;
    (v42[13])(v78, *MEMORY[0x277CC9810], v41);
    v47 = v77;
    sub_226D6D62C();
    (v42[1])(v46, v41);
    v48 = v74;
    v81 = v31;
    sub_226D6D23C();
    (*(v79 + 8))(v47, v43);
    v49 = sub_226D6D3EC();
    v50 = *(v36 + 8);
    v51 = v75;
    v50(v48, v75);
    [v45 setEarliestUpdateRequestStartDate_];

    [v45 setUpdateRequestAttemptCount_];
    [v45 setLastUpdateRequestAttemptDate_];
    v84 = v45;
    v52 = [v45 termsAndConditionsObject];
    if (v52)
    {
      v53 = v52;
      v54 = v85;
      v55 = v73;
      sub_226AF265C(v85, v73);
      if ((*(v36 + 48))(v55, 1, v51) == 1)
      {
        sub_226AC47B0(v55, &qword_27D7A8BE0, &unk_226D718F0);

        v56 = v76;
LABEL_12:
        v60 = v84;
        v61 = [v84 id];
        v62 = sub_226D6E39C();
        v64 = v63;

        v65 = v56[4];
        __swift_project_boxed_opaque_existential_1(v56, v56[3]);
        v66 = *(v65 + 8);
        sub_226D6BADC();
        v67 = v62;
        v68 = v80;
        v69 = v82;
        sub_226BA1184(v67, v64, v80, v86);
        v82 = v69;
        if (v69)
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v86);
          sub_226AC47B0(v54, &qword_27D7A8BE0, &unk_226D718F0);
          goto LABEL_6;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v86);

        goto LABEL_16;
      }

      v57 = v72;
      (*(v36 + 32))(v72, v55, v51);
      v58 = v53;
      v59 = [v58 publishedAt];
      sub_226D6D45C();

      LOBYTE(v59) = sub_226D6D3FC();
      v50(v48, v51);
      v50(v57, v51);

      v56 = v76;
      if (v59)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v54 = v85;
    }

    v60 = v84;
    v68 = v80;
LABEL_16:
    v86[0] = 0;
    if ([v68 save_])
    {
      v70 = v86[0];
      sub_226AC47B0(v54, &qword_27D7A8BE0, &unk_226D718F0);
    }

    else
    {
      v71 = v86[0];
      sub_226D6D04C();

      swift_willThrow();
      sub_226AC47B0(v54, &qword_27D7A8BE0, &unk_226D718F0);
    }
  }

LABEL_6:
  v44 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226BA1184(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_226D6831C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226D69F0C();
  result = sub_226D69E4C();
  if (v4)
  {
    return result;
  }

  v12 = result;
  if (!(result >> 62))
  {
    result = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }
  }

  result = sub_226D6EDFC();
  if (!result)
  {
  }

LABEL_4:
  v30 = a4;
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v22 = 0;
    v13 = 0;
    v26 = v12 & 0xC000000000000001;
    v25 = *MEMORY[0x277CC7280];
    v23 = (v7 + 8);
    v24 = (v7 + 104);
    v28 = v12;
    v29 = v6;
    v27 = result;
    do
    {
      if (v26)
      {
        v14 = MEMORY[0x22AA8AFD0](v13, v12);
      }

      else
      {
        v14 = *(v12 + 8 * v13 + 32);
      }

      v15 = v14;
      ++v13;
      v16 = v30[4];
      __swift_project_boxed_opaque_existential_1(v30, v30[3]);
      v17 = [v15 accountId];
      v18 = sub_226D6E39C();
      v20 = v19;

      *v10 = v18;
      v10[1] = v20;
      v21 = v29;
      (*v24)(v10, v25, v29);
      sub_226D6AD5C();

      (*v23)(v10, v21);
      v12 = v28;
    }

    while (v27 != v13);
  }

  return result;
}

uint64_t sub_226BA13EC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D66DFC();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  Task = type metadata accessor for BankConnectInstitutionDataFetchTask();
  v3[7] = Task;
  v7 = *(*(Task - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BA14B4, 0, 0);
}

uint64_t sub_226BA14B4()
{
  v29 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  sub_226BA1E6C(v3, v1, type metadata accessor for BankConnectInstitutionDataFetchTask);
  sub_226BA1E6C(v4, v2, MEMORY[0x277CC6528]);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 64);
  if (v8)
  {
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    v27 = *(v0 + 40);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28[0] = v14;
    *v12 = 136315394;
    sub_226D6EEFC();

    v28[1] = 0xD000000000000035;
    v28[2] = 0x8000000226D81450;
    MEMORY[0x22AA8A510](*(v9 + *(v11 + 20)), *(v9 + *(v11 + 20) + 8));
    MEMORY[0x22AA8A510](41, 0xE100000000000000);
    sub_226BA1ED4(v9, type metadata accessor for BankConnectInstitutionDataFetchTask);
    v15 = sub_226AC4530(0xD000000000000035, 0x8000000226D81450, v28);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2112;
    sub_226BA2164(&qword_27D7A6990, MEMORY[0x277CC6528]);
    swift_allocError();
    sub_226BA1E6C(v10, v16, MEMORY[0x277CC6528]);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    sub_226BA1ED4(v10, MEMORY[0x277CC6528]);
    *(v12 + 14) = v17;
    *v13 = v17;
    _os_log_impl(&dword_226AB4000, v6, v7, "%s: Failed to update institution with error: %@", v12, 0x16u);
    sub_226AC47B0(v13, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  else
  {
    v18 = *(v0 + 48);

    sub_226BA1ED4(v18, MEMORY[0x277CC6528]);
    sub_226BA1ED4(v9, type metadata accessor for BankConnectInstitutionDataFetchTask);
  }

  v19 = *(v0 + 64);
  v20 = *(v0 + 48);
  v21 = *(v0 + 32);
  v22 = *__swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v23 = sub_226D676AC();
  v24 = swift_task_alloc();
  *(v24 + 16) = v21;
  *(v24 + 24) = v23;
  sub_226D6EB7C();

  v25 = *(v0 + 8);

  return v25();
}

void sub_226BA18B8(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  sub_226D6842C();
  v5 = (a1 + *(type metadata accessor for BankConnectInstitutionDataFetchTask() + 20));
  v6 = *v5;
  v7 = v5[1];
  v8 = sub_226D683EC();
  if (!v2)
  {
    v10 = v8;
    if (v8)
    {
      v11 = [v8 updateRequestAttemptCount];
      if (__OFADD__(v11, 1))
      {
        __break(1u);
      }

      [v10 setUpdateRequestAttemptCount_];
      v12 = sub_226D6D3EC();
      [v10 setLastUpdateRequestAttemptDate_];

      v15[0] = 0;
      if ([a2 save_])
      {
        v13 = v15[0];
      }

      else
      {
        v14 = v15[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226BA1A0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226B9F6C0(a1);
}

uint64_t sub_226BA1AA0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE5A84;

  return sub_226BA13EC(a1, a2);
}

uint64_t sub_226BA1B44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (v2 + *(a1 + 20));
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_226BA1BA0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6998, &unk_226D73D10);
  v3 = *(type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226D71840;
  v7 = (v6 + v5);
  v8 = (v1 + *(a1 + 20));
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();

  v10 = sub_226B1ED68(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v10;
}

uint64_t sub_226BA1D70(uint64_t a1)
{
  result = sub_226BA2164(&qword_27D7A74A0, type metadata accessor for BankConnectInstitutionDataFetchTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BankConnectInstitutionDataFetchTask()
{
  result = qword_281060338;
  if (!qword_281060338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226BA1E14(uint64_t a1)
{
  result = sub_226BA2164(&qword_27D7A74A8, type metadata accessor for BankConnectInstitutionDataFetchTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226BA1E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226BA1ED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226BA1F50(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226BA0894(a1, v5, v4);
}

void sub_226BA2044()
{
  sub_226D6D4AC();
  if (v0 <= 0x3F)
  {
    sub_226B20350();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_226BA20E0(uint64_t a1)
{
  *(a1 + 8) = sub_226BA2164(&qword_27D7A74B0, type metadata accessor for BankConnectInstitutionDataFetchTask);
  result = sub_226BA2164(&qword_27D7A74B8, type metadata accessor for BankConnectInstitutionDataFetchTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226BA2164(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_226BA21E0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x73694D726564726FLL;
    v7 = 0x52796E614D6F6F74;
    if (a1 != 10)
    {
      v7 = 0xD00000000000001ALL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000019;
    v9 = 0x61766E4961746164;
    if (a1 != 7)
    {
      v9 = 0x766E49726564726FLL;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6E776F6E6B6E75;
    v2 = 0x65736E6F70736572;
    v3 = 0xD000000000000015;
    if (a1 != 4)
    {
      v3 = 0xD00000000000001CLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000015;
    if (a1 != 1)
    {
      v4 = 0x4674736575716572;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_226BA23AC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v3 = 0xD000000000000028;
    if (a1 == 7)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 <= 6u)
    {
      return 0xD000000000000016;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v1 = 0x6E776F6E6B6E75;
    if (a1)
    {
      v1 = 0xD000000000000016;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return 0xD000000000000016;
    }
  }
}

void sub_226BA253C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  sub_226BA2760(1);

  sub_226BA27FC();
  sub_226D6ECDC();

  sub_226BA2850(1uLL, v4, v6);

  sub_226BA2900();
  sub_226D6E45C();

  v7 = *(v3 + 16);
  v8 = sub_226D6E36C();
  v9 = sub_226D6E36C();
  v10 = sub_226D6E36C();
  v11 = sub_226D6E36C();

  v12 = sub_226D6E2AC();
  [v7 reportIssueWithDomain:v8 type:v9 subtype:v10 subtypeContext:v11 event:v12];
}

uint64_t sub_226BA2704()
{

  return swift_deallocClassInstance();
}

uint64_t sub_226BA2760(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_226D6E44C();

    return sub_226D6E50C();
  }

  return result;
}

unint64_t sub_226BA27FC()
{
  result = qword_27D7A74C0;
  if (!qword_27D7A74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A74C0);
  }

  return result;
}

unint64_t sub_226BA2850(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_226D6E44C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_226D6E50C();
}

unint64_t sub_226BA2900()
{
  result = qword_27D7A74C8;
  if (!qword_27D7A74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A74C8);
  }

  return result;
}

void sub_226BA2954()
{
  v1 = v0;
  v23 = sub_226BA2760(1);
  v24 = v2;
  v25 = v3;
  v26 = v4;
  sub_226BA27FC();
  v5 = sub_226D6ECDC();
  v7 = v6;

  v21 = v5;
  v22 = v7;
  v17 = sub_226BA2850(1uLL, 0xD00000000000001DLL, 0x8000000226D816F0);
  v18 = v8;
  v19 = v9;
  v20 = v10;
  sub_226BA2900();
  sub_226D6E45C();

  v11 = *(v1 + 16);
  v12 = sub_226D6E36C();
  v13 = sub_226D6E36C();
  v14 = sub_226D6E36C();
  v15 = sub_226D6E36C();

  v16 = sub_226D6E2AC();
  [v11 reportIssueWithDomain:v12 type:v13 subtype:v14 subtypeContext:v15 event:{v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26}];
}

void sub_226BA2B08()
{
  v1 = v0;
  v23 = sub_226BA2760(1);
  v24 = v2;
  v25 = v3;
  v26 = v4;
  sub_226BA27FC();
  v5 = sub_226D6ECDC();
  v7 = v6;

  v21 = v5;
  v22 = v7;
  v17 = sub_226BA2850(1uLL, 0x6C69614674696E69, 0xEA00000000006465);
  v18 = v8;
  v19 = v9;
  v20 = v10;
  sub_226BA2900();
  sub_226D6E45C();

  v11 = *(v1 + 16);
  v12 = sub_226D6E36C();
  v13 = sub_226D6E36C();
  v14 = sub_226D6E36C();
  v15 = sub_226D6E36C();

  v16 = sub_226D6E2AC();
  [v11 reportIssueWithDomain:v12 type:v13 subtype:v14 subtypeContext:v15 event:{v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26}];
}

void *sub_226BA2CBC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA8AFD0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_226BA2DD0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v33 = a1;
  v29 = a3;
  v39 = sub_226D68D5C();
  v6 = *(*(v39 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v39);
  v38 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = &v29 - v10;
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v34 = v9 + 32;
  v35 = v9;
  v30 = (v9 + 8);
  v31 = v9 + 16;
  v36 = a2;

  v17 = 0;
  v18 = v32;
  if (v14)
  {
    while (1)
    {
      v37 = v4;
      v19 = v17;
LABEL_9:
      v20 = v35;
      v21 = v39;
      (*(v35 + 16))(v18, *(v36 + 48) + *(v35 + 72) * (__clz(__rbit64(v14)) | (v19 << 6)), v39);
      v22 = *(v20 + 32);
      v23 = v38;
      v22(v38, v18, v21);
      v24 = v37;
      v25 = v33(v23);
      v4 = v24;
      if (v24)
      {
        (*v30)(v38, v39);
      }

      if (v25)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v30)(v38, v39);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v29;
    v22(v29, v38, v39);
    v27 = v28;
    v26 = 0;
    return (*(v35 + 56))(v27, v26, 1, v39);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        v26 = 1;
        v27 = v29;
        return (*(v35 + 56))(v27, v26, 1, v39);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v37 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_226BA30BC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_226D6EDBC();
    sub_226D69F0C();
    sub_226BAD9D0(&qword_27D7A7278, MEMORY[0x277CC7A70]);
    sub_226D6E8DC();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_226D6EE2C())
        {
          sub_226D69F0C();
          swift_dynamicCast();
          v17 = v26;
          v15 = v8;
          v16 = v9;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

LABEL_23:
    sub_226AD3C20();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_226BA333C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v25 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v8;
    v23 = a4;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v7);
      v18 = v25(v11);
      if (v4)
      {
        return (*v15)(v11, v7);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v7);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v8 = v22;
        a4 = v23;
        return (*(v8 + 56))(a4, v19, 1, v7);
      }
    }

    v8 = v22;
    a4 = v23;
    (*(v22 + 32))(v23, v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a4, v19, 1, v7);
}

uint64_t sub_226BA3514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 96) = a6;
  *(v8 + 104) = v7;
  *(v8 + 385) = a7;
  *(v8 + 80) = a4;
  *(v8 + 88) = a5;
  *(v8 + 64) = a2;
  *(v8 + 72) = a3;
  *(v8 + 56) = a1;
  v9 = *(sub_226D68C1C() - 8);
  *(v8 + 112) = v9;
  v10 = *(v9 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  v11 = sub_226D685DC();
  *(v8 + 128) = v11;
  v12 = *(v11 - 8);
  *(v8 + 136) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210) - 8) + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74D0, &qword_226D75218);
  *(v8 + 168) = v15;
  v16 = *(v15 - 8);
  *(v8 + 176) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  v18 = sub_226D6B5EC();
  *(v8 + 200) = v18;
  v19 = *(v18 - 8);
  *(v8 + 208) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v21 = *(*(type metadata accessor for BankConnectConsentArbitratingConfiguration() - 8) + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  v22 = sub_226D68C5C();
  *(v8 + 240) = v22;
  v23 = *(v22 - 8);
  *(v8 + 248) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BA382C, 0, 0);
}

uint64_t sub_226BA382C()
{
  v98 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 64);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E90, &qword_226D75220);
  MEMORY[0x22AA87740]();
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  v7 = *(v0 + 232);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = sub_226D6E07C();
  *(v0 + 312) = __swift_project_value_buffer(v10, qword_28105F710);
  v11 = *(v6 + 16);
  *(v0 + 320) = v11;
  *(v0 + 328) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v95 = v11;
  v11(v3, v4, v5);
  sub_226BAE258(v8, v7, type metadata accessor for BankConnectConsentArbitratingConfiguration);

  v12 = sub_226D6E05C();
  v13 = sub_226D6E9EC();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 296);
  v17 = *(v0 + 240);
  v16 = *(v0 + 248);
  v18 = *(v0 + 232);
  if (v14)
  {
    v91 = *(v0 + 72);
    v92 = *(v0 + 80);
    v19 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v97[0] = v94;
    *v19 = 136315650;
    v93 = v13;
    v20 = sub_226D68C4C();
    v22 = v21;
    v23 = *(v16 + 8);
    v23(v15, v17);
    v24 = sub_226AC4530(v20, v22, v97);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_226AC4530(v91, v92, v97);
    *(v19 + 22) = 2080;
    v25 = sub_226BA5194();
    v27 = v26;
    v28 = v18;
    v29 = v23;
    sub_226BAE2C0(v28, type metadata accessor for BankConnectConsentArbitratingConfiguration);
    v30 = sub_226AC4530(v25, v27, v97);

    *(v19 + 24) = v30;
    _os_log_impl(&dword_226AB4000, v12, v93, "Arbitrating a consent with consentID: %s for institutionID: %s using configuration: %s.", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v94, -1, -1);
    MEMORY[0x22AA8BEE0](v19, -1, -1);
  }

  else
  {

    sub_226BAE2C0(v18, type metadata accessor for BankConnectConsentArbitratingConfiguration);
    v29 = *(v16 + 8);
    v29(v15, v17);
  }

  *(v0 + 336) = v29;
  v31 = *(*(v0 + 104) + 16);
  v32 = sub_226D676AC();
  *(v0 + 344) = v32;
  *(swift_task_alloc() + 16) = v32;
  sub_226D6EB8C();
  v33 = *(v0 + 104);
  v35 = *(v0 + 72);
  v34 = *(v0 + 80);

  v36 = swift_task_alloc();
  v36[2] = v35;
  v36[3] = v34;
  v36[4] = v32;
  v36[5] = v33;
  sub_226D6EB8C();
  v38 = *(v0 + 208);
  v37 = *(v0 + 216);
  v39 = *(v0 + 200);

  v40 = *(v0 + 384);
  sub_226D6B58C();
  v41 = sub_226D6B5CC();
  (*(v38 + 8))(v37, v39);
  if (v41)
  {
    v42 = *(v0 + 80);

    v43 = sub_226D6E05C();
    v44 = sub_226D6E9CC();

    if (os_log_type_enabled(v43, v44))
    {
      v46 = *(v0 + 72);
      v45 = *(v0 + 80);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v97[0] = v48;
      *v47 = 136315394;
      *(v47 + 4) = sub_226AC4530(v46, v45, v97);
      *(v47 + 12) = 1024;
      *(v47 + 14) = v40;
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x22AA8BEE0](v48, -1, -1);
      MEMORY[0x22AA8BEE0](v47, -1, -1);
    }
  }

  else if (!v40)
  {
    v69 = *(v0 + 256);
    v68 = *(v0 + 264);
    v70 = *(v0 + 240);
    v71 = *(v0 + 64);
    MEMORY[0x22AA87740](v96);
    v95(v69, v68, v70);
    v72 = sub_226D6E05C();
    v73 = sub_226D6E9EC();
    v74 = os_log_type_enabled(v72, v73);
    v76 = *(v0 + 248);
    v75 = *(v0 + 256);
    v77 = *(v0 + 240);
    if (v74)
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v97[0] = v79;
      *v78 = 136315138;
      v80 = sub_226D68C4C();
      v81 = v29;
      v83 = v82;
      v81(v75, v77);
      v84 = sub_226AC4530(v80, v83, v97);

      *(v78 + 4) = v84;
      _os_log_impl(&dword_226AB4000, v72, v73, "Attempting to insert or update consent with consentID: %s using single  consent mode.", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v79);
      MEMORY[0x22AA8BEE0](v79, -1, -1);
      MEMORY[0x22AA8BEE0](v78, -1, -1);
    }

    else
    {

      v29(v75, v77);
    }

    v85 = swift_task_alloc();
    *(v0 + 368) = v85;
    *v85 = v0;
    v85[1] = sub_226BA4BFC;
    v67 = *(v0 + 184);
    goto LABEL_19;
  }

  v50 = *(v0 + 280);
  v49 = *(v0 + 288);
  v51 = *(v0 + 240);
  v52 = *(v0 + 64);
  MEMORY[0x22AA87740](v96);
  v95(v50, v49, v51);
  v53 = sub_226D6E05C();
  v54 = sub_226D6E9EC();
  v55 = os_log_type_enabled(v53, v54);
  v56 = *(v0 + 280);
  v57 = *(v0 + 240);
  v58 = *(v0 + 248);
  if (v55)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v97[0] = v60;
    *v59 = 136315138;
    v61 = sub_226D68C4C();
    v62 = v29;
    v64 = v63;
    v62(v56, v57);
    v65 = sub_226AC4530(v61, v64, v97);

    *(v59 + 4) = v65;
    _os_log_impl(&dword_226AB4000, v53, v54, "Attempting to insert or update consent with consentID: %s using multiple  consent mode.", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
    MEMORY[0x22AA8BEE0](v60, -1, -1);
    MEMORY[0x22AA8BEE0](v59, -1, -1);
  }

  else
  {

    v29(v56, v57);
  }

  v66 = swift_task_alloc();
  *(v0 + 352) = v66;
  *v66 = v0;
  v66[1] = sub_226BA416C;
  v67 = *(v0 + 192);
LABEL_19:
  v86 = *(v0 + 385);
  v87 = *(v0 + 96);
  v88 = *(v0 + 104);
  v89 = *(v0 + 64);

  return sub_226BA55E4(v67, v89, v87, v86);
}

uint64_t sub_226BA416C()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_226BA4A88;
  }

  else
  {
    v3 = sub_226BA4280;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226BA4280()
{
  v123 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 88);
  sub_226AE532C(*(v0 + 104) + 200, v0 + 16);
  v116 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_226BAE258(v2, v1, type metadata accessor for BankConnectConsentArbitratingConfiguration);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E98, &unk_226D73780);
  v4 = 1;
  LODWORD(v2) = (*(*(v3 - 8) + 48))(v1, 1, v3);
  v5 = sub_226D6D52C();
  v6 = *(v5 - 8);
  if (v2 != 1)
  {
    (*(*(v5 - 8) + 32))(*(v0 + 152), *(v0 + 224), v5);
    v4 = 0;
  }

  v7 = *(v0 + 192);
  v9 = *(v0 + 160);
  v8 = *(v0 + 168);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  v12 = *(v0 + 136);
  v111 = *(v0 + 128);
  (*(v6 + 56))(v10, v4, 1, v5);
  sub_226BACBC0(v10, v9);
  MEMORY[0x22AA87770](v8);
  v13 = sub_226D685CC();
  (*(v12 + 8))(v11, v111);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = *(v0 + 112);
    v122 = MEMORY[0x277D84F90];
    sub_226AE1D68(0, v14, 0);
    v16 = v122;
    v17 = v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v18 = *(v15 + 72);
    do
    {
      v19 = *(v0 + 120);
      v20 = MEMORY[0x277CC75A0];
      sub_226BAE258(v17, v19, MEMORY[0x277CC75A0]);
      v21 = sub_226D68C0C();
      v23 = v22;
      sub_226BAE2C0(v19, v20);
      v122 = v16;
      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226AE1D68((v24 > 1), v25 + 1, 1);
        v16 = v122;
      }

      *(v16 + 16) = v25 + 1;
      v26 = v16 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v17 += v18;
      --v14;
    }

    while (v14);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v27 = *(v0 + 360);
  v28 = *(v0 + 344);
  v29 = *(v0 + 160);
  v31 = *(v0 + 72);
  v30 = *(v0 + 80);
  sub_226AE3C28(v16);

  v32 = sub_226D6BF1C();
  if (v27)
  {
    v33 = *(v0 + 336);
    v34 = *(v0 + 288);
    v35 = *(v0 + 240);
    v36 = *(v0 + 248);
    v37 = *(v0 + 192);
    v38 = *(v0 + 168);
    v39 = *(v0 + 176);
    v40 = *(v0 + 160);

    sub_226AC47B0(v40, &qword_27D7A6D68, &qword_226D75210);
    v33(v34, v35);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    (*(v39 + 8))(v37, v38);
  }

  else
  {
    v41 = v32;
    sub_226AC47B0(*(v0 + 160), &qword_27D7A6D68, &qword_226D75210);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    if (sub_226BA8088(v41))
    {
      v42 = *(v0 + 344);
      v43 = *(v0 + 192);
      v44 = *(v0 + 104);
      v46 = *(v0 + 80);
      v45 = *(v0 + 88);
      v47 = *(v0 + 72);
      v48 = *(v0 + 56);
      v49 = swift_task_alloc();
      v49[2] = v47;
      v49[3] = v46;
      v49[4] = v42;
      v49[5] = v44;
      v49[6] = v43;
      v49[7] = v41;
      v49[8] = v45;
      sub_226D682FC();
      sub_226D6EB7C();
      v50 = *(v0 + 192);
      v51 = *(v0 + 168);
      v52 = *(v0 + 176);
      v53 = *(v0 + 248) + 8;
      (*(v0 + 336))(*(v0 + 288), *(v0 + 240));

      (*(v52 + 8))(v50, v51);
      v93 = *(v0 + 336);
      v95 = *(v0 + 296);
      v94 = *(v0 + 304);
      v96 = *(v0 + 280);
      v97 = *(v0 + 288);
      v98 = *(v0 + 264);
      v99 = *(v0 + 272);
      v100 = *(v0 + 240);
      v102 = *(v0 + 256);
      v103 = *(v0 + 232);
      v104 = *(v0 + 224);
      v106 = *(v0 + 216);
      v108 = *(v0 + 192);
      v110 = *(v0 + 184);
      v113 = *(v0 + 160);
      v115 = *(v0 + 152);
      v119 = *(v0 + 144);
      v121 = *(v0 + 120);

      v93(v94, v100);

      v101 = *(v0 + 8);
      goto LABEL_19;
    }

    v55 = *(v0 + 320);
    v54 = *(v0 + 328);
    v56 = *(v0 + 312);
    v57 = *(v0 + 288);
    v58 = *(v0 + 272);
    v59 = *(v0 + 240);

    v55(v58, v57, v59);
    v60 = sub_226D6E05C();
    v61 = sub_226D6E9CC();
    v62 = os_log_type_enabled(v60, v61);
    v63 = *(v0 + 336);
    v64 = *(v0 + 272);
    v65 = *(v0 + 240);
    v66 = *(v0 + 248);
    if (v62)
    {
      v120 = *(v0 + 336);
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v122 = v68;
      *v67 = 136315138;
      v117 = sub_226D68C4C();
      v70 = v69;
      v120(v64, v65);
      v71 = sub_226AC4530(v117, v70, &v122);

      *(v67 + 4) = v71;
      _os_log_impl(&dword_226AB4000, v60, v61, "Partial overlap detected between consent with consentID: %s and existing consents on device. Invalid configuration, aborting arbitration.", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
      MEMORY[0x22AA8BEE0](v68, -1, -1);
      MEMORY[0x22AA8BEE0](v67, -1, -1);
    }

    else
    {

      v63(v64, v65);
    }

    v72 = *(v0 + 336);
    v73 = *(v0 + 288);
    v74 = *(v0 + 240);
    v75 = *(v0 + 192);
    v76 = *(v0 + 168);
    v77 = *(v0 + 176);
    sub_226B4E26C();
    swift_allocError();
    *v78 = 0;
    swift_willThrow();
    v72(v73, v74);
    (*(v77 + 8))(v75, v76);
  }

  v79 = *(v0 + 336);
  v80 = *(v0 + 304);
  v81 = *(v0 + 240);

  v79(v80, v81);
  v83 = *(v0 + 296);
  v82 = *(v0 + 304);
  v85 = *(v0 + 280);
  v84 = *(v0 + 288);
  v87 = *(v0 + 264);
  v86 = *(v0 + 272);
  v88 = *(v0 + 256);
  v90 = *(v0 + 224);
  v89 = *(v0 + 232);
  v91 = *(v0 + 216);
  v105 = *(v0 + 192);
  v107 = *(v0 + 184);
  v109 = *(v0 + 160);
  v112 = *(v0 + 152);
  v114 = *(v0 + 144);
  v118 = *(v0 + 120);

  v101 = *(v0 + 8);
LABEL_19:

  return v101();
}

uint64_t sub_226BA4A88()
{
  v1 = *(v0 + 248) + 8;
  (*(v0 + 336))(*(v0 + 288), *(v0 + 240));
  v23 = *(v0 + 360);
  v2 = *(v0 + 336);
  v3 = *(v0 + 304);
  v4 = *(v0 + 240);

  v2(v3, v4);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);
  v8 = *(v0 + 280);
  v7 = *(v0 + 288);
  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v11 = *(v0 + 256);
  v13 = *(v0 + 224);
  v12 = *(v0 + 232);
  v14 = *(v0 + 216);
  v17 = *(v0 + 192);
  v18 = *(v0 + 184);
  v19 = *(v0 + 160);
  v20 = *(v0 + 152);
  v21 = *(v0 + 144);
  v22 = *(v0 + 120);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_226BA4BFC()
{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_226BA5024;
  }

  else
  {
    v3 = sub_226BA4D10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226BA4D10()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 344);
  v3 = *(v0 + 184);
  v4 = *(v0 + 104);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v2;
  v8[5] = v4;
  v8[6] = v3;
  sub_226D682FC();
  sub_226D6EB7C();
  v9 = *(v0 + 336);
  v10 = *(v0 + 264);
  v11 = *(v0 + 240);
  if (v1)
  {
    v12 = *(v0 + 176);
    v9(v10, v11);

    v14 = *(v0 + 336);
    v13 = *(v0 + 344);
    v15 = *(v0 + 304);
    v16 = *(v0 + 240);
    (*(v12 + 8))(*(v0 + 184), *(v0 + 168));

    v14(v15, v16);
    v18 = *(v0 + 296);
    v17 = *(v0 + 304);
    v20 = *(v0 + 280);
    v19 = *(v0 + 288);
    v22 = *(v0 + 264);
    v21 = *(v0 + 272);
    v23 = *(v0 + 256);
    v24 = *(v0 + 224);
    v25 = *(v0 + 232);
    v26 = *(v0 + 216);
    v44 = *(v0 + 192);
    v46 = *(v0 + 184);
    v48 = *(v0 + 160);
    v50 = *(v0 + 152);
    v52 = *(v0 + 144);
    v54 = *(v0 + 120);
  }

  else
  {
    v29 = *(v0 + 176);
    v28 = *(v0 + 184);
    v30 = *(v0 + 248) + 8;
    v31 = *(v0 + 168);
    v9(v10, v11);

    (*(v29 + 8))(v28, v31);
    v32 = *(v0 + 336);
    v34 = *(v0 + 296);
    v33 = *(v0 + 304);
    v36 = *(v0 + 280);
    v35 = *(v0 + 288);
    v37 = *(v0 + 264);
    v38 = *(v0 + 272);
    v39 = *(v0 + 240);
    v41 = *(v0 + 256);
    v42 = *(v0 + 232);
    v43 = *(v0 + 224);
    v45 = *(v0 + 216);
    v47 = *(v0 + 192);
    v49 = *(v0 + 184);
    v51 = *(v0 + 160);
    v53 = *(v0 + 152);
    v55 = *(v0 + 144);
    v56 = *(v0 + 120);

    v32(v33, v39);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_226BA5024()
{
  v1 = v0[30];
  v23 = v0[47];
  v2 = v0[42];
  v3 = v0[43];
  v4 = v0[38];
  v2(v0[33], v1);

  v2(v4, v1);
  v6 = v0[37];
  v5 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v10 = v0[33];
  v9 = v0[34];
  v11 = v0[32];
  v13 = v0[28];
  v12 = v0[29];
  v14 = v0[27];
  v17 = v0[24];
  v18 = v0[23];
  v19 = v0[20];
  v20 = v0[19];
  v21 = v0[18];
  v22 = v0[15];

  v15 = v0[1];

  return v15();
}

uint64_t sub_226BA5194()
{
  v1 = v0;
  v2 = sub_226D6D52C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BankConnectConsentArbitratingConfiguration();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226BAE258(v1, v10, type metadata accessor for BankConnectConsentArbitratingConfiguration);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E98, &unk_226D73780);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    return 0x746E65736E6F632ELL;
  }

  (*(v3 + 32))(v6, v10, v2);
  v15[0] = 0x65736E6F6365722ELL;
  v15[1] = 0xEB0000000028746ELL;
  v13 = sub_226D6D4CC();
  MEMORY[0x22AA8A510](v13);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  v12 = v15[0];
  (*(v3 + 8))(v6, v2);
  return v12;
}

void sub_226BA539C(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X8>)
{
  sub_226D6842C();
  v7 = sub_226D683EC();
  if (!v3)
  {
    if (v7)
    {
      v8 = v7;
      v9 = [v7 multipleConsentsEnabled];

      *a3 = v9;
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v10 = sub_226D6E07C();
      __swift_project_value_buffer(v10, qword_28105F710);

      v11 = sub_226D6E05C();
      v12 = sub_226D6E9CC();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v17 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_226AC4530(a1, a2, &v17);
        _os_log_impl(&dword_226AB4000, v11, v12, "Expected institution with institutionID: %s, but it wasn't found in the store. Aborting arbitration.", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x22AA8BEE0](v14, -1, -1);
        MEMORY[0x22AA8BEE0](v13, -1, -1);
      }

      v15 = sub_226D6A0DC();
      sub_226BAD9D0(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
      swift_allocError();
      (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277CC7AB8], v15);
      swift_willThrow();
    }
  }
}

uint64_t sub_226BA55E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 336) = a4;
  *(v5 + 80) = a3;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = sub_226D6A99C();
  *(v5 + 96) = v6;
  v7 = *(v6 - 8);
  *(v5 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v9 = sub_226D6851C();
  *(v5 + 120) = v9;
  v10 = *(v9 - 8);
  *(v5 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v12 = *(*(sub_226D67F1C() - 8) + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v13 = sub_226D68DAC();
  *(v5 + 152) = v13;
  v14 = *(v13 - 8);
  *(v5 + 160) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v16 = sub_226D6885C();
  *(v5 + 176) = v16;
  v17 = *(v16 - 8);
  *(v5 + 184) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  v19 = sub_226D68C5C();
  *(v5 + 200) = v19;
  v20 = *(v19 - 8);
  *(v5 + 208) = v20;
  v21 = *(v20 + 64) + 15;
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BA5854, 0, 0);
}

uint64_t sub_226BA5854()
{
  v33 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  v3 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E90, &qword_226D75220);
  MEMORY[0x22AA87740]();
  sub_226D6B6AC();
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v6 = *(v0 + 200);
  v7 = *(v0 + 208);
  v8 = sub_226D6E07C();
  *(v0 + 232) = __swift_project_value_buffer(v8, qword_28105F710);
  (*(v7 + 16))(v4, v5, v6);
  v9 = sub_226D6E05C();
  v10 = sub_226D6E9EC();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 208);
  v12 = *(v0 + 216);
  v14 = *(v0 + 200);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32 = v16;
    *v15 = 136315138;
    v31 = sub_226D68C4C();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_226AC4530(v31, v18, &v32);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_226AB4000, v9, v10, "Fetching granted accounts for consent with consentID: %s.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
    MEMORY[0x22AA8BEE0](v15, -1, -1);
  }

  else
  {

    v19 = *(v13 + 8);
    v19(v12, v14);
  }

  *(v0 + 240) = v19;
  v21 = *(v0 + 144);
  v22 = *(v0 + 88);
  v23 = MEMORY[0x277CC7640];
  if (!*(v0 + 336))
  {
    v23 = MEMORY[0x277CC7638];
  }

  (*(*(v0 + 160) + 104))(*(v0 + 168), *v23, *(v0 + 152));
  v24 = v22[33];
  v25 = v22[34];
  __swift_project_boxed_opaque_existential_1(v22 + 30, v24);
  sub_226AE59B4(0, &qword_27D7A7500, 0x277CCA8D8);
  sub_226D67E7C();
  v26 = sub_226D6EBFC();
  *(v0 + 248) = v26;
  v27 = *(MEMORY[0x277CC7990] + 4);
  v28 = swift_task_alloc();
  *(v0 + 256) = v28;
  *v28 = v0;
  v28[1] = sub_226BA5B60;
  v29 = *(v0 + 168);

  return MEMORY[0x282118D88](v29, v26, v24, v25);
}

uint64_t sub_226BA5B60()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226BA5C74, 0, 0);
}

uint64_t sub_226BA5C74()
{
  v1 = v0[24];
  sub_226AE532C(v0[11] + 240, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = sub_226D6884C();
  if (*(v4 + 16))
  {
    v6 = v0[16];
    v5 = v0[17];
    v7 = v0[15];
    (*(v6 + 16))(v5, v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v7);

    v8 = sub_226D6850C();
    (*(v6 + 8))(v5, v7);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v0[33] = v8;
  v9 = *(MEMORY[0x277CC7988] + 4);
  v10 = swift_task_alloc();
  v0[34] = v10;
  *v10 = v0;
  v10[1] = sub_226BA5DE0;
  v11 = v0[21];

  return MEMORY[0x282118D80](v11, v8, v2, v3);
}

uint64_t sub_226BA5DE0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {
    v7 = sub_226BA62C0;
  }

  else
  {
    v8 = *(v4 + 264);

    *(v4 + 288) = a1;
    v7 = sub_226BA5F10;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226BA5F10()
{
  v0[7] = v0[36];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[28];
  v2 = v0[21];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v6 = sub_226D6C2AC();
  v0[37] = v6;
  v7 = swift_task_alloc();
  v0[38] = v7;
  v7[2] = v6;
  v7[3] = v1;
  v7[4] = v0 + 7;
  v7[5] = v4;
  v7[6] = v3;
  v7[7] = v2;
  v8 = *(MEMORY[0x277CC7D90] + 4);
  v9 = swift_task_alloc();
  v0[39] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74D0, &qword_226D75218);
  *v9 = v0;
  v9[1] = sub_226BA6054;
  v11 = v0[8];

  return MEMORY[0x282119B28](v11, &unk_226D75268, v7, v10);
}

uint64_t sub_226BA6054()
{
  v2 = *(*v1 + 312);
  v3 = *(*v1 + 304);
  v6 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_226BA6768;
  }

  else
  {
    v4 = sub_226BA6184;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226BA6184()
{
  v1 = v0[37];
  v2 = v0[28];
  v14 = v0[30];
  v15 = v0[27];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[19];
  v10 = v0[20];
  v16 = v0[18];
  v17 = v0[17];
  v18 = v0[14];

  (*(v5 + 8))(v6, v7);
  v11 = v0[7];

  (*(v10 + 8))(v8, v9);
  v14(v2, v3);

  v12 = v0[1];

  return v12();
}

uint64_t sub_226BA62C0()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[29];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v4 = v1;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[35];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_226AB4000, v5, v6, "Fraud assessment computation has failed, proceeding without it: %@.", v8, 0xCu);
    sub_226AC47B0(v9, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  v13 = v0[13];
  v12 = v0[14];
  v15 = v0[11];
  v14 = v0[12];

  v16 = sub_226D6979C();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v0[7] = sub_226D6977C();
  v19 = v15[33];
  v20 = v15[34];
  __swift_project_boxed_opaque_existential_1(v15 + 30, v19);
  (*(v13 + 104))(v12, *MEMORY[0x277CC7CD8], v14);
  v21 = *(MEMORY[0x277CC7998] + 4);
  v22 = swift_task_alloc();
  v0[41] = v22;
  *v22 = v0;
  v22[1] = sub_226BA64D4;
  v23 = v0[21];
  v24 = v0[14];

  return MEMORY[0x282118D90](v23, v24, v19, v20);
}

uint64_t sub_226BA64D4()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_226BA662C, 0, 0);
}

uint64_t sub_226BA662C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 168);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v6 = sub_226D6C2AC();
  *(v0 + 296) = v6;
  v7 = swift_task_alloc();
  *(v0 + 304) = v7;
  v7[2] = v6;
  v7[3] = v1;
  v7[4] = v0 + 56;
  v7[5] = v4;
  v7[6] = v3;
  v7[7] = v2;
  v8 = *(MEMORY[0x277CC7D90] + 4);
  v9 = swift_task_alloc();
  *(v0 + 312) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74D0, &qword_226D75218);
  *v9 = v0;
  v9[1] = sub_226BA6054;
  v11 = *(v0 + 64);

  return MEMORY[0x282119B28](v11, &unk_226D75268, v7, v10);
}

uint64_t sub_226BA6768()
{
  v1 = v0[37];
  v2 = v0[28];
  v15 = v0[30];
  v16 = v0[27];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[19];
  v10 = v0[20];
  v17 = v0[18];
  v18 = v0[17];
  v19 = v0[14];

  (*(v5 + 8))(v6, v7);
  v11 = v0[7];

  (*(v10 + 8))(v8, v9);
  v15(v2, v3);

  v12 = v0[1];
  v13 = v0[40];

  return v12();
}

void sub_226BA68A4(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v97 = a3;
  v93 = a4;
  v94 = a5;
  v95 = a2;
  v86 = a6;
  v7 = sub_226D68C1C();
  v88 = *(v7 - 8);
  v8 = *(v88 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v87 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_226D685DC();
  v92 = *(v90 - 8);
  v10 = *(v92 + 64);
  v11 = MEMORY[0x28223BE20](v90);
  v89 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v81 - v13;
  v15 = sub_226D68C5C();
  v91 = *(v15 - 8);
  v16 = v91[8];
  MEMORY[0x28223BE20](v15);
  v18 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_226D6A94C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6842C();
  v24 = a1;
  v25 = v96;
  v26 = v95;
  v27 = sub_226D683EC();
  if (!v25)
  {
    v84 = v20;
    v85 = v19;
    v96 = v15;
    v82 = v14;
    v83 = v24;
    if (v27)
    {
      v28 = v27;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74D0, &qword_226D75218);
      sub_226D6B6BC();
      sub_226D6A93C();
      v84[1](v23, v85);
      v30 = v93;
      v31 = sub_226BA7230(v18, v28, v97);
      v95 = 0;
      v41 = v31;
      (v91[1])(v18, v96);
      v91 = v41;
      v42 = sub_226D6790C();
      v43 = v82;
      v85 = v29;
      MEMORY[0x22AA87770](v29);
      v44 = sub_226D685CC();
      v45 = *(v92 + 8);
      v92 += 8;
      v84 = v45;
      (v45)(v43, v90);
      v46 = *(v44 + 16);
      if (v46)
      {
        v82 = v42;
        v83 = v28;
        v98 = MEMORY[0x277D84F90];
        sub_226AE1D68(0, v46, 0);
        v47 = v98;
        v48 = v87;
        v49 = *(v88 + 80);
        v81[1] = v44;
        v50 = v44 + ((v49 + 32) & ~v49);
        v96 = *(v88 + 72);
        do
        {
          v51 = MEMORY[0x277CC75A0];
          sub_226BAE258(v50, v48, MEMORY[0x277CC75A0]);
          v52 = sub_226D68C0C();
          v54 = v53;
          sub_226BAE2C0(v48, v51);
          v98 = v47;
          v56 = *(v47 + 16);
          v55 = *(v47 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_226AE1D68((v55 > 1), v56 + 1, 1);
            v47 = v98;
          }

          *(v47 + 16) = v56 + 1;
          v57 = v47 + 16 * v56;
          *(v57 + 32) = v52;
          *(v57 + 40) = v54;
          v50 += v96;
          --v46;
        }

        while (v46);

        v42 = v82;
        v28 = v83;
        v30 = v93;
      }

      else
      {

        v47 = MEMORY[0x277D84F90];
      }

      MEMORY[0x28223BE20](v58);
      v81[-4] = v42;
      v81[-3] = v47;
      v59 = v97;
      v81[-2] = v30;
      v81[-1] = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6560, &qword_226D7CCF0);
      v60 = v95;
      sub_226D6EB8C();
      v95 = v60;

      v96 = v98;
      v61 = v89;
      MEMORY[0x22AA87770](v85);
      v62 = v30;
      v63 = sub_226D685CC();
      (v84)(v61, v90);
      v64 = v91;
      v65 = sub_226D6790C();
      v66 = [v64 consentID];
      v67 = sub_226D6E39C();
      v69 = v68;

      v70 = v95;
      v71 = sub_226BA7964(v63, v65, v67, v69, v59);
      if (v70)
      {

LABEL_18:
        return;
      }

      v72 = v96;
      v73 = v71;

      v74 = *(v62 + 184);
      if (((*(*(v62 + 192) + 24))() & 1) == 0)
      {
        v80 = sub_226BACD5C(v73, v72);

        sub_226BA7F44(v80, v97);

        sub_226D6830C();
        goto LABEL_18;
      }

      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v75 = sub_226D6E07C();
      __swift_project_value_buffer(v75, qword_28105F710);
      v76 = sub_226D6E05C();
      v77 = sub_226D6E9EC();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_226AB4000, v76, v77, "Wallet has been deleted, aborting arbitration.", v78, 2u);
        MEMORY[0x22AA8BEE0](v78, -1, -1);
      }

      sub_226B4E26C();
      swift_allocError();
      *v79 = 1;
      swift_willThrow();
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v32 = sub_226D6E07C();
      __swift_project_value_buffer(v32, qword_28105F710);

      v33 = sub_226D6E05C();
      v34 = sub_226D6E9CC();

      v35 = os_log_type_enabled(v33, v34);
      v36 = v83;
      if (v35)
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v98 = v38;
        *v37 = 136315138;
        *(v37 + 4) = sub_226AC4530(v36, v26, &v98);
        _os_log_impl(&dword_226AB4000, v33, v34, "Institution with ID %s not found, aborting arbitration.", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v38);
        MEMORY[0x22AA8BEE0](v38, -1, -1);
        MEMORY[0x22AA8BEE0](v37, -1, -1);
      }

      v39 = sub_226D6A0DC();
      sub_226BAD9D0(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
      swift_allocError();
      (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277CC7AB8], v39);
      swift_willThrow();
    }
  }
}

uint64_t sub_226BA7230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v56 = a2;
  v59 = a1;
  v58 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  v55 = *(v58 - 8);
  v6 = *(v55 + 64);
  v7 = MEMORY[0x28223BE20](v58);
  v57 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = v54 - v9;
  v10 = sub_226D67F1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v81, 0, 40);
  sub_226AE532C(v4 + 104, v80);
  sub_226AE532C(v4 + 64, v79);
  v78 = 0;
  memset(v77, 0, sizeof(v77));
  v15 = type metadata accessor for BankConnectConsentArbiter.NoOPDeletedAccountsRemover();
  v16 = swift_allocObject();
  v17 = type metadata accessor for BankConnectConsentArbiter.NoOPDeletedAccountsManager();
  v18 = swift_allocObject();
  v16[5] = v17;
  v16[6] = &off_283A6D1A0;
  v16[2] = v18;
  v75 = v15;
  v76 = &off_283A6D180;
  *&v74 = v16;
  v73[3] = sub_226D6B5EC();
  v73[4] = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(v73);
  sub_226D6B58C();
  *&v68[0] = 0;
  v66 = 0u;
  v67 = 0u;
  sub_226B1B848(v81, &v66);
  sub_226AE532C(v80, v68 + 8);
  sub_226AE532C(v79, v69);
  sub_226AE532C(v73, v70 + 8);
  sub_226AC40E8(v77, &v61, &qword_27D7A6918, &unk_226D7BBC0);
  if (v62)
  {
    sub_226AC47B0(v77, &qword_27D7A6918, &unk_226D7BBC0);
    __swift_destroy_boxed_opaque_existential_0Tm(v79);
    __swift_destroy_boxed_opaque_existential_0Tm(v80);
    sub_226AC47B0(v81, &qword_27D7A6910, &unk_226D721C0);
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
    sub_226AC484C(&v61, &v63);
  }

  else
  {
    sub_226D67E6C();
    sub_226D67F0C();
    (*(v11 + 8))(v14, v10);
    v19 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v20 = sub_226D6E36C();

    v21 = [v19 initWithBundleIdentifier_];

    v64 = sub_226AE59B4(0, &qword_28105F428, 0x277CE2028);
    v65 = MEMORY[0x277CC85E8];
    *&v63 = v21;
    sub_226AC47B0(v77, &qword_27D7A6918, &unk_226D7BBC0);
    __swift_destroy_boxed_opaque_existential_0Tm(v79);
    __swift_destroy_boxed_opaque_existential_0Tm(v80);
    sub_226AC47B0(v81, &qword_27D7A6910, &unk_226D721C0);
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
    if (v62)
    {
      sub_226AC47B0(&v61, &qword_27D7A6918, &unk_226D7BBC0);
    }
  }

  sub_226AC484C(&v63, v71);
  v22 = sub_226AC484C(&v74, v72 + 8);
  v23 = v54;
  v82[12] = v72[0];
  v82[13] = v72[1];
  v82[14] = v72[2];
  v82[8] = v70[1];
  v82[9] = v70[2];
  v82[10] = v71[0];
  v82[11] = v71[1];
  v82[4] = v68[2];
  v82[5] = v69[0];
  v82[6] = v69[1];
  v82[7] = v70[0];
  v24 = v66;
  *&v66 = MEMORY[0x277D84F90];
  v82[0] = v24;
  v82[1] = v67;
  v82[2] = v68[0];
  v82[3] = v68[1];
  MEMORY[0x28223BE20](v22);
  v54[-6] = v56;
  v54[-5] = a3;
  v25 = v59;
  v54[-4] = v4;
  v54[-3] = v25;
  v54[-2] = v82;
  v54[-1] = &v66;
  sub_226D6794C();
  v26 = v83;
  sub_226D6EB8C();
  if (v26)
  {

    sub_226B1B944(v82);
    return v23;
  }

  v23 = v81[0];
  v27 = *(v66 + 16);
  if (!v27)
  {

    goto LABEL_30;
  }

  v54[0] = v81[0];
  v54[1] = 0;
  v59 = *(v58 + 20);
  v28 = *(v55 + 80);
  v56 = v66;
  v29 = v66 + ((v28 + 32) & ~v28);
  v83 = *(v55 + 72);
  v30 = MEMORY[0x277D84F90];
  v31 = v29;
  v55 = v27;
  do
  {
    v33 = v60;
    sub_226BAE258(v31, v60, type metadata accessor for ManagedConsentDeleter.Metadata);
    v34 = *(v33 + v59);

    result = sub_226BAE2C0(v33, type metadata accessor for ManagedConsentDeleter.Metadata);
    v35 = *(v34 + 16);
    v36 = v30[2];
    v37 = v36 + v35;
    if (__OFADD__(v36, v35))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v37 <= v30[3] >> 1)
    {
      if (!*(v34 + 16))
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (v36 <= v37)
      {
        v39 = v36 + v35;
      }

      else
      {
        v39 = v36;
      }

      v30 = sub_226BBB630(isUniquelyReferenced_nonNull_native, v39, 1, v30);
      if (!*(v34 + 16))
      {
LABEL_9:

        if (v35)
        {
          goto LABEL_33;
        }

        goto LABEL_10;
      }
    }

    v40 = (v30[3] >> 1) - v30[2];
    result = type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata(0);
    v41 = *(result - 8);
    if (v40 < v35)
    {
      goto LABEL_34;
    }

    v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v43 = *(v41 + 72);
    swift_arrayInitWithCopy();

    if (v35)
    {
      v44 = v30[2];
      v45 = __OFADD__(v44, v35);
      v46 = v44 + v35;
      if (v45)
      {
        goto LABEL_36;
      }

      v30[2] = v46;
    }

LABEL_10:
    v31 += v83;
    --v27;
  }

  while (v27);
  v47 = -v55;
  v48 = -1;
  do
  {
    v49 = v47 + v48;
    if (v47 + v48 == -1)
    {
      break;
    }

    if (++v48 >= *(v56 + 16))
    {
      goto LABEL_35;
    }

    v50 = v29 + v83;
    v51 = v29;
    v52 = v57;
    sub_226BAE258(v51, v57, type metadata accessor for ManagedConsentDeleter.Metadata);
    v53 = *(v52 + *(v58 + 24));
    result = sub_226BAE2C0(v52, type metadata accessor for ManagedConsentDeleter.Metadata);
    v29 = v50;
  }

  while (v53 != 1);
  ManagedConsentDeleter.postProcess(_:shouldUpdateWalletMessages:)(v30, v49 != -1);

  v23 = v54[0];
LABEL_30:
  sub_226B1B944(v82);
  return v23;
}

uint64_t sub_226BA7964(void *a1, uint64_t a2, char *a3, char *a4, void *a5)
{
  v62 = a5;
  v59 = a2;
  v60 = a4;
  v57 = a1;
  v58 = a3;
  v50 = sub_226D67C0C();
  v54 = *(v50 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v50);
  v61 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v47 - v10;
  v12 = sub_226D6D52C();
  v49 = *(v12 - 8);
  v13 = *(v49 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v47 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v47 - v20;
  v22 = sub_226D6A2EC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x277D84F90];
  v64 = v57;
  v65 = v5;
  v57 = v5;
  v66 = v58;
  v67 = v60;
  v27 = v63;
  v68 = v59;
  v69 = v62;
  v70 = &v71;
  sub_226D6EB8C();
  if (v27)
  {
    v28 = v27;

    return v28;
  }

  v63 = v26;
  v47[1] = 0;
  v59 = v22;
  v48 = v21;
  v60 = v19;
  v58 = v16;
  v29 = v57[22];
  __swift_project_boxed_opaque_existential_1(v57 + 18, v57[21]);
  v30 = v71;
  result = sub_226D6AE9C();
  v32 = v30;
  v57 = *(v30 + 16);
  if (!v57)
  {
    v62 = MEMORY[0x277D84F90];
LABEL_15:
    v28 = sub_226AE45DC(v62);

    return v28;
  }

  v33 = 0;
  v55 = v23 + 16;
  v34 = (v49 + 32);
  v53 = (v49 + 56);
  v54 += 8;
  v52 = v23 + 8;
  v51 = (v49 + 48);
  v62 = MEMORY[0x277D84F90];
  v35 = v50;
  v37 = v59;
  v36 = v60;
  v38 = v63;
  v56 = v32;
  while (v33 < *(v32 + 16))
  {
    (*(v23 + 16))(v38, v32 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v33, v37);
    v39 = v61;
    sub_226D6A2BC();
    sub_226D67BDC();
    v37 = v59;
    v40 = v36;
    v41 = *v34;
    (*v34)(v11, v40, v12);
    v42 = v39;
    v38 = v63;
    (*v54)(v42, v35);
    (*v53)(v11, 0, 1, v12);
    (*(v23 + 8))(v38, v37);
    if ((*v51)(v11, 1, v12) == 1)
    {
      result = sub_226AC47B0(v11, &qword_27D7A6D68, &qword_226D75210);
    }

    else
    {
      v43 = v48;
      v41(v48, v11, v12);
      v41(v58, v43, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_226BBB95C(0, v62[2] + 1, 1, v62);
      }

      v45 = v62[2];
      v44 = v62[3];
      if (v45 >= v44 >> 1)
      {
        v62 = sub_226BBB95C(v44 > 1, v45 + 1, 1, v62);
      }

      v46 = v62;
      v62[2] = v45 + 1;
      result = (v41)(v46 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v45);
      v35 = v50;
      v38 = v63;
    }

    ++v33;
    v32 = v56;
    v36 = v60;
    if (v57 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226BA7F44(uint64_t a1, void *a2)
{
  v4 = v2;
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = v4[43];
  v8 = v4[44];
  __swift_project_boxed_opaque_existential_1(v4 + 40, v7);
  result = (*(v8 + 16))(a1, a2, v7, v8);
  if (!v3)
  {
    v18[0] = 0;
    v10 = [a2 save_];
    v11 = v18[0];
    if (v10)
    {
      v12 = v4[43];
      v13 = v4[44];
      __swift_project_boxed_opaque_existential_1(v4 + 40, v12);
      v14 = *(v13 + 24);
      v15 = v11;
      result = v14(v12, v13);
    }

    else
    {
      v16 = v18[0];
      sub_226D6D04C();

      result = swift_willThrow();
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226BA8088(uint64_t a1)
{
  v38 = sub_226D6B3FC();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v38);
  v36 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74F8, &qword_226D75258);
  v5 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v34 = v30 - v6;
  v7 = *(a1 + 64);
  v30[0] = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7;
  v11 = (v8 + 63) >> 6;
  v32 = v2 + 88;
  v33 = v2 + 16;
  v31 = *MEMORY[0x277CC7F00];
  v37 = v2;
  v30[1] = v2 + 8;
  v39 = a1;

  v13 = 0;
  v14 = v37;
  v15 = v34;
  while (v10)
  {
    v16 = v13;
LABEL_10:
    v17 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v18 = v17 | (v16 << 6);
    v19 = v38;
    v20 = *(v39 + 56);
    v21 = (*(v39 + 48) + 16 * v18);
    v22 = v21[1];
    v40 = *v21;
    v23 = *(v35 + 48);
    v24 = *(v14 + 16);
    v24(&v15[v23], v20 + *(v14 + 72) * v18, v38);
    *v15 = v40;
    *(v15 + 1) = v22;
    v25 = &v15[v23];
    v26 = v36;
    v24(v36, v25, v19);
    v27 = (*(v14 + 88))(v26, v19);
    v28 = *(v14 + 8);

    v28(v26, v19);
    result = sub_226AC47B0(v15, &qword_27D7A74F8, &qword_226D75258);
    if (v27 == v31)
    {
      v29 = 0;
LABEL_13:

      return v29;
    }
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
      v29 = 1;
      goto LABEL_13;
    }

    v10 = *(v30[0] + 8 * v16);
    ++v13;
    if (v10)
    {
      v13 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_226BA8344(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v102 = a3;
  v96 = a7;
  v94 = a6;
  v98 = a5;
  v99 = a4;
  v100 = a2;
  v92 = a8;
  v9 = sub_226D68C1C();
  v90 = *(v9 - 8);
  v10 = *(v90 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v89 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_226D685DC();
  v97 = *(v93 - 8);
  v12 = *(v97 + 64);
  v13 = MEMORY[0x28223BE20](v93);
  v91 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v85 - v15;
  v17 = sub_226D68C5C();
  v95 = *(v17 - 8);
  v18 = *(v95 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_226D6A94C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6842C();
  v26 = a1;
  v27 = v101;
  v28 = v100;
  v29 = sub_226D683EC();
  if (!v27)
  {
    v87 = v16;
    v88 = v22;
    v101 = v17;
    if (v29)
    {
      v30 = v29;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74D0, &qword_226D75218);
      sub_226D6B6BC();
      sub_226D6A93C();
      v88[1](v25, v21);
      v32 = sub_226BA8D50(v94);
      v33 = MEMORY[0x28223BE20](v32);
      *(&v85 - 6) = v99;
      *(&v85 - 5) = v20;
      v34 = v102;
      *(&v85 - 4) = v30;
      *(&v85 - 3) = v34;
      v35 = v96;
      *(&v85 - 2) = v33;
      *(&v85 - 1) = v35;
      sub_226D6794C();
      sub_226D6EB8C();
      v100 = 0;
      v94 = v30;

      v44 = v103;
      (*(v95 + 8))(v20, v101);
      v96 = v44;
      v86 = sub_226D6790C();
      v45 = v87;
      v95 = v31;
      MEMORY[0x22AA87770](v31);
      v46 = sub_226D685CC();
      v47 = *(v97 + 8);
      v97 += 8;
      v88 = v47;
      (v47)(v45, v93);
      v48 = *(v46 + 16);
      if (v48)
      {
        v103 = MEMORY[0x277D84F90];
        sub_226AE1D68(0, v48, 0);
        v49 = v103;
        v50 = v89;
        v51 = *(v90 + 80);
        v87 = v46;
        v52 = v46 + ((v51 + 32) & ~v51);
        v101 = *(v90 + 72);
        do
        {
          v53 = MEMORY[0x277CC75A0];
          sub_226BAE258(v52, v50, MEMORY[0x277CC75A0]);
          v54 = sub_226D68C0C();
          v56 = v55;
          sub_226BAE2C0(v50, v53);
          v103 = v49;
          v58 = *(v49 + 16);
          v57 = *(v49 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_226AE1D68((v57 > 1), v58 + 1, 1);
            v49 = v103;
          }

          *(v49 + 16) = v58 + 1;
          v59 = v49 + 16 * v58;
          *(v59 + 32) = v54;
          *(v59 + 40) = v56;
          v52 += v101;
          --v48;
        }

        while (v48);
      }

      else
      {

        v49 = MEMORY[0x277D84F90];
      }

      MEMORY[0x28223BE20](v60);
      *(&v85 - 4) = v86;
      *(&v85 - 3) = v49;
      v61 = v99;
      v62 = v102;
      *(&v85 - 2) = v99;
      *(&v85 - 1) = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6560, &qword_226D7CCF0);
      v63 = v100;
      sub_226D6EB8C();

      v101 = v103;
      v64 = v91;
      MEMORY[0x22AA87770](v95);
      v65 = sub_226D685CC();
      (v88)(v64, v93);
      v66 = v96;
      v67 = sub_226D6790C();
      v68 = [v66 consentID];
      v69 = sub_226D6E39C();
      v71 = v70;

      v72 = sub_226BA7964(v65, v67, v69, v71, v62);
      if (v63)
      {

        v73 = v94;
LABEL_18:

        return;
      }

      v74 = v101;
      v75 = v72;

      v76 = *(v61 + 184);
      if (((*(*(v61 + 192) + 24))() & 1) == 0)
      {
        v84 = sub_226BACD5C(v75, v74);

        sub_226BA7F44(v84, v102);
        v73 = v94;

        sub_226D6830C();
        goto LABEL_18;
      }

      v77 = v94;
      v78 = v96;
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v79 = sub_226D6E07C();
      __swift_project_value_buffer(v79, qword_28105F710);
      v80 = sub_226D6E05C();
      v81 = sub_226D6E9EC();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_226AB4000, v80, v81, "Wallet has been deleted, aborting arbitration.", v82, 2u);
        MEMORY[0x22AA8BEE0](v82, -1, -1);
      }

      sub_226B4E26C();
      swift_allocError();
      *v83 = 1;
      swift_willThrow();
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v36 = sub_226D6E07C();
      __swift_project_value_buffer(v36, qword_28105F710);
      v37 = v28;

      v38 = sub_226D6E05C();
      v39 = sub_226D6E9CC();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v103 = v41;
        *v40 = 136315138;
        *(v40 + 4) = sub_226AC4530(v26, v37, &v103);
        _os_log_impl(&dword_226AB4000, v38, v39, "Institution with ID %s not found, aborting arbitration.", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        MEMORY[0x22AA8BEE0](v41, -1, -1);
        MEMORY[0x22AA8BEE0](v40, -1, -1);
      }

      v42 = sub_226D6A0DC();
      sub_226BAD9D0(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
      swift_allocError();
      (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277CC7AB8], v42);
      swift_willThrow();
    }
  }
}

uint64_t sub_226BA8D50(uint64_t a1)
{
  v49 = sub_226D6B3FC();
  v2 = *(v49 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v49);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74F8, &qword_226D75258);
  v6 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v51 = &v35[-v7];
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v45 = v2 + 88;
  v46 = v2 + 16;
  v44 = *MEMORY[0x277CC7F00];
  v39 = *MEMORY[0x277CC7F08];
  v48 = v2;
  v38 = (v2 + 8);
  v36 = *MEMORY[0x277CC7EF8];
  v50 = a1;

  v13 = 0;
  v37 = MEMORY[0x277D84F90];
  v42 = v12;
  v43 = a1 + 64;
  v41 = v5;
  for (i = v51; v11; v8 = v43)
  {
LABEL_11:
    while (1)
    {
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v18 = v17 | (v13 << 6);
      v19 = v49;
      v20 = (*(v50 + 48) + 16 * v18);
      v21 = *v20;
      v22 = v20[1];
      v23 = v48;
      v24 = *(v47 + 48);
      v25 = *(v48 + 16);
      v25(&i[v24], *(v50 + 56) + *(v48 + 72) * v18, v49);
      v40 = v21;
      *i = v21;
      *(i + 1) = v22;
      v26 = v22;
      v27 = v41;
      v25(v41, &i[v24], v19);
      v28 = (*(v23 + 88))(v27, v19);
      if (v28 != v44)
      {
        break;
      }

      v15 = *v38;

      v15(v27, v19);
LABEL_6:
      v12 = v42;
      v8 = v43;
      sub_226AC47B0(v51, &qword_27D7A74F8, &qword_226D75258);
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    if (v28 == v39)
    {

      goto LABEL_6;
    }

    if (v28 != v36)
    {
      goto LABEL_23;
    }

    swift_bridgeObjectRetain_n();
    sub_226AC47B0(v51, &qword_27D7A74F8, &qword_226D75258);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_226BBAB0C(0, *(v37 + 2) + 1, 1, v37);
    }

    v30 = *(v37 + 2);
    v29 = *(v37 + 3);
    if (v30 >= v29 >> 1)
    {
      v37 = sub_226BBAB0C((v29 > 1), v30 + 1, 1, v37);
    }

    v31 = v37;
    *(v37 + 2) = v30 + 1;
    v32 = &v31[16 * v30];
    *(v32 + 4) = v40;
    *(v32 + 5) = v26;
    v12 = v42;
  }

LABEL_7:
  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      v33 = sub_226AE3C28(v37);

      return v33;
    }

    v11 = *(v8 + 8 * v16);
    ++v13;
    if (v11)
    {
      v13 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  v52 = 0;
  v53 = 0xE000000000000000;

  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000015, 0x8000000226D81900);
  sub_226D6EFBC();
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226BA91AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_226D6A99C();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();
  v11 = sub_226D6764C();
  v7[12] = v11;
  v12 = *(v11 - 8);
  v7[13] = v12;
  v13 = *(v12 + 64) + 15;
  v7[14] = swift_task_alloc();
  v14 = sub_226D6C27C();
  v7[15] = v14;
  v15 = *(v14 - 8);
  v7[16] = v15;
  v16 = *(v15 + 64) + 15;
  v7[17] = swift_task_alloc();
  v17 = sub_226D6C29C();
  v7[18] = v17;
  v18 = *(v17 - 8);
  v7[19] = v18;
  v19 = *(v18 + 64) + 15;
  v7[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BA938C, 0, 0);
}

uint64_t sub_226BA938C()
{
  v18 = v0[20];
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];
  v10 = sub_226D68C5C();
  (*(*(v10 - 8) + 16))(v1, v9, v10);
  (*(v2 + 104))(v1, *MEMORY[0x277CC8228], v3);
  v11 = *v7;

  sub_226D6978C();

  (*(v6 + 16))(v4, v8, v5);
  sub_226D6C28C();
  v12 = *(MEMORY[0x277CC7DA8] + 4);
  v13 = swift_task_alloc();
  v0[21] = v13;
  *v13 = v0;
  v13[1] = sub_226BA9518;
  v14 = v0[20];
  v15 = v0[2];
  v16 = v0[3];

  return MEMORY[0x282119B50](v15, v14);
}

uint64_t sub_226BA9518()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  (*(v2[19] + 8))(v2[20], v2[18]);
  if (v0)
  {
    v5 = sub_226BA9934;
  }

  else
  {
    v5 = sub_226BA9680;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226BA9680()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v4[33];
  v6 = v4[34];
  __swift_project_boxed_opaque_existential_1(v4 + 30, v5);
  (*(v2 + 104))(v1, *MEMORY[0x277CC7CE0], v3);
  v7 = *(MEMORY[0x277CC7998] + 4);
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_226BA977C;
  v9 = v0[11];
  v10 = v0[8];

  return MEMORY[0x282118D90](v10, v9, v5, v6);
}

uint64_t sub_226BA977C()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 112);
  v5 = *(*v0 + 88);
  v6 = *(*v0 + 80);
  v7 = *(*v0 + 72);
  v10 = *v0;

  (*(v6 + 8))(v5, v7);

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_226BA9934()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v4[33];
  v6 = v4[34];
  __swift_project_boxed_opaque_existential_1(v4 + 30, v5);
  (*(v2 + 104))(v1, *MEMORY[0x277CC7CE8], v3);
  v7 = *(MEMORY[0x277CC7998] + 4);
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_226BA9A30;
  v9 = v0[11];
  v10 = v0[8];

  return MEMORY[0x282118D90](v10, v9, v5, v6);
}

uint64_t sub_226BA9A30()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_226BA9B88, 0, 0);
}

uint64_t sub_226BA9B88()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[22];

  return v6();
}

uint64_t sub_226BA9C2C()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 25);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 30);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 35);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_226BA9D40@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X5>, uint64_t *a6@<X8>)
{
  v133 = a5;
  v135 = a4;
  v128 = a3;
  v125 = a6;
  v134 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  v132 = *(v134 - 8);
  v8 = *(v132 + 64);
  v9 = MEMORY[0x28223BE20](v134);
  v136 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v137 = &v115 - v11;
  v12 = sub_226D6D4AC();
  v120 = *(v12 - 1);
  v121 = v12;
  v13 = *(v120 + 64);
  MEMORY[0x28223BE20](v12);
  v119 = (&v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_226D6A30C();
  v122 = *(v15 - 8);
  v123 = v15;
  v16 = *(v122 + 64);
  MEMORY[0x28223BE20](v15);
  v124 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_226D68C5C();
  v127 = *(v18 - 8);
  v19 = *(v127 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v115 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v115 - v26;
  v28 = sub_226D6794C();
  v126 = a1;
  v29 = [a1 id];
  sub_226D6E39C();

  v30 = v131;
  v31 = sub_226D6791C();
  if (v30)
  {
  }

  v33 = v31;
  v116 = v25;
  v117 = 0;
  v118 = v18;
  v34 = v126;
  v129 = a2;
  v130 = v27;
  v115 = v28;

  v35 = (v33 >> 62);
  if (v33 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
  {
    v37 = v117;
    v38 = v118;
    v39 = v127;
    v40 = v34;
    v41 = v22;
    v131 = v33;
    v42 = v116;
    if (i == 1)
    {
      break;
    }

    if (!i)
    {

      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v43 = sub_226D6E07C();
      __swift_project_value_buffer(v43, qword_28105F710);
      v44 = v40;
      v45 = sub_226D6E05C();
      v46 = sub_226D6E9EC();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v138 = v48;
        *v47 = 136315138;
        v49 = [v44 id];
        v50 = sub_226D6E39C();
        v52 = v51;

        v53 = sub_226AC4530(v50, v52, &v138);
        v38 = v118;

        *(v47 + 4) = v53;
        _os_log_impl(&dword_226AB4000, v45, v46, "No existing consent found for institutionID: %s, inserting a new consent.", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v48);
        MEMORY[0x22AA8BEE0](v48, -1, -1);
        MEMORY[0x22AA8BEE0](v47, -1, -1);
      }

      v55 = v124;
      v54 = v125;
      v57 = v122;
      v56 = v123;
      (*(v127 + 16))(v130, v128, v38);
      (*(v57 + 104))(v55, *MEMORY[0x277CC7B60], v56);
      v58 = v44;
      v59 = v129;
      result = sub_226D6795C();
      *v54 = result;
      return result;
    }

    if (qword_28105F708 != -1)
    {
      goto LABEL_53;
    }

LABEL_17:
    v74 = sub_226D6E07C();
    __swift_project_value_buffer(v74, qword_28105F710);
    v119 = *(v39 + 16);
    v120 = v39 + 16;
    v119(v41, v128, v38);
    v75 = v40;
    v76 = sub_226D6E05C();
    v33 = sub_226D6E9EC();

    v77 = os_log_type_enabled(v76, v33);
    v121 = v75;
    if (v77)
    {
      v78 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v138 = v127;
      *v78 = 136315394;
      v79 = [v75 id];
      v80 = sub_226D6E39C();
      LODWORD(v126) = v33;
      v81 = v80;
      v83 = v82;

      v84 = sub_226AC4530(v81, v83, &v138);

      *(v78 + 4) = v84;
      *(v78 + 12) = 2080;
      v85 = sub_226D68C4C();
      v33 = v86;
      (*(v39 + 8))(v41, v118);
      v87 = sub_226AC4530(v85, v33, &v138);

      *(v78 + 14) = v87;
      _os_log_impl(&dword_226AB4000, v76, v126, "Multiple consents found for institutionID: %s. It's client configuration indicates that only a single consent is supported. Removing existing consents and replacing it them with consentID: %s.", v78, 0x16u);
      v88 = v127;
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v88, -1, -1);
      MEMORY[0x22AA8BEE0](v78, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v41, v38);
    }

    v34 = v130;
    v22 = v131;
    if (v35)
    {
      v96 = sub_226D6EDFC();
      if (!v96)
      {
LABEL_47:

        v119(v34, v128, v118);
        (*(v122 + 104))(v124, *MEMORY[0x277CC7B60], v123);
        v113 = v121;
        v114 = v129;
        result = sub_226D6795C();
        *v125 = result;
        return result;
      }
    }

    else
    {
      v96 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v96)
      {
        goto LABEL_47;
      }
    }

    v97 = 0;
    v126 = v22 & 0xFFFFFFFFFFFFFF8;
    v127 = v22 & 0xC000000000000001;
    while (1)
    {
      if (v127)
      {
        v98 = MEMORY[0x22AA8AFD0](v97, v22);
      }

      else
      {
        if (v97 >= *(v126 + 16))
        {
          goto LABEL_50;
        }

        v98 = *(v22 + 8 * v97 + 32);
      }

      v99 = v98;
      v34 = (v97 + 1);
      if (__OFADD__(v97, 1))
      {
        break;
      }

      v100 = [(objc_class *)v98 consentID];
      v101 = sub_226D6E39C();
      v103 = v102;

      MEMORY[0x28223BE20](v104);
      *(&v115 - 6) = v101;
      *(&v115 - 5) = v103;
      v105 = v135;
      *(&v115 - 4) = v129;
      *(&v115 - 3) = v105;
      *(&v115 - 16) = 1;
      v106 = v137;
      sub_226D6EB8C();
      if (v37)
      {
      }

      sub_226BAE258(v106, v136, type metadata accessor for ManagedConsentDeleter.Metadata);
      v35 = v133;
      v107 = *v133;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v35 = v107;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v107 = sub_226BBB9A8(0, v107[2] + 1, 1, v107);
        *v35 = v107;
      }

      v110 = v107[2];
      v109 = v107[3];
      v33 = v110 + 1;
      if (v110 >= v109 >> 1)
      {
        *v35 = sub_226BBB9A8(v109 > 1, v110 + 1, 1, v107);
      }

      sub_226BAE2C0(v137, type metadata accessor for ManagedConsentDeleter.Metadata);
      v111 = *v35;
      *(v111 + 16) = v33;
      sub_226BAE320(v136, v111 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v110);
      ++v97;
      v112 = v34 == v96;
      v34 = v130;
      v22 = v131;
      if (v112)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  v137 = v35;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v60 = sub_226D6E07C();
  __swift_project_value_buffer(v60, qword_28105F710);
  (*(v39 + 16))(v42, v128, v38);
  v35 = v40;
  v41 = sub_226D6E05C();
  v61 = sub_226D6E9EC();

  if (os_log_type_enabled(v41, v61))
  {
    v62 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v138 = v136;
    *v62 = 136315394;
    v63 = [v35 id];
    v64 = sub_226D6E39C();
    LODWORD(v135) = v61;
    v65 = v64;
    v35 = v66;

    v67 = sub_226AC4530(v65, v35, &v138);

    *(v62 + 4) = v67;
    *(v62 + 12) = 2080;
    v68 = sub_226D68C4C();
    v70 = v69;
    v71 = *(v39 + 8);
    v39 += 8;
    v71(v42, v38);
    v72 = sub_226AC4530(v68, v70, &v138);

    *(v62 + 14) = v72;
    _os_log_impl(&dword_226AB4000, v41, v135, "Existing consent found for institutionID: %s, updating the existing consent with values from consent with consentID: %s.", v62, 0x16u);
    v73 = v136;
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v73, -1, -1);
    MEMORY[0x22AA8BEE0](v62, -1, -1);
  }

  else
  {

    v89 = *(v39 + 8);
    v39 += 8;
    v89(v42, v38);
  }

  v40 = v124;
  v38 = v125;
  v90 = v123;
  if (v137)
  {
    result = sub_226D6EDFC();
  }

  else
  {
    result = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {
    __break(1u);
LABEL_53:
    swift_once();
    goto LABEL_17;
  }

  if ((v131 & 0xC000000000000001) != 0)
  {
    v91 = MEMORY[0x22AA8AFD0](0, v131);
    goto LABEL_27;
  }

  if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v91 = *(v131 + 32);
LABEL_27:
    v92 = v91;

    v93 = v122;
    (*(v122 + 104))(v40, *MEMORY[0x277CC7B60], v90);
    v94 = v90;
    v95 = v119;
    sub_226D6D46C();
    sub_226D6793C();
    (*(v120 + 8))(v95, v121);
    result = (*(v93 + 8))(v40, v94);
    *v38 = v92;
    return result;
  }

  __break(1u);
  return result;
}