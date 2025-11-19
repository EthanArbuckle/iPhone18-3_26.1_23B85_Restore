uint64_t sub_226C887C4()
{
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226D70840;
  v1 = sub_226D6D4DC();
  *(v0 + 56) = sub_226AE59B4(0, &qword_27D7A8890, 0x277CCAD78);
  *(v0 + 64) = sub_226C8BE70(&qword_27D7A8898, &qword_27D7A8890, 0x277CCAD78);
  *(v0 + 32) = v1;
  return sub_226D6E91C();
}

uint64_t sub_226C888AC()
{
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226D70840;
  v1 = sub_226D67F0C();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_226B16404();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  return sub_226D6E91C();
}

uint64_t sub_226C88970@<X0>(uint64_t a1@<X8>)
{
  if ([v1 userInfo])
  {
    sub_226D6ED0C();
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
    sub_226AC47B0(v11, &unk_27D7A8BB0, &unk_226D74340);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6260, &qword_226D70C80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!*(v8 + 16) || (v3 = sub_226C2FDD4(0x4449656C646E7562, 0xE800000000000000), (v4 & 1) == 0))
  {

    goto LABEL_12;
  }

  sub_226AC4708(*(v8 + 56) + 32 * v3, v11);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v5 = 1;
    goto LABEL_13;
  }

  sub_226D67EFC();
  v5 = 0;
LABEL_13:
  v6 = sub_226D67F1C();
  return (*(*(v6 - 8) + 56))(a1, v5, 1, v6);
}

uint64_t sub_226C88B00(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16[-v5];
  v7 = sub_226D67F1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226C88D90(a1);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226AC47B0(v6, &qword_27D7A7180, &qword_226D74600);
    sub_226C8BE1C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6660, &qword_226D74320);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D70840;
    *(inited + 32) = 0x4449656C646E7562;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = sub_226D67F0C();
    *(inited + 56) = v14;
    sub_226B224FC(inited);
    swift_setDeallocating();
    sub_226AC47B0(inited + 32, &qword_27D7A6668, &qword_226D71880);
    v15 = sub_226D6E2AC();

    [v1 setUserInfo_];

    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_226C88D90(uint64_t a1)
{
  v3 = sub_226D67E0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226AC40E8(a1, &v9, &qword_27D7A7028, &qword_226D73F30);
  if (v10)
  {
    sub_226AC484C(&v9, v11);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_226D68CFC();
    return __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  else
  {
    sub_226AC47B0(&v9, &qword_27D7A7028, &qword_226D73F30);
    [v1 auditToken];
    sub_226D69A6C();
    sub_226D67DAC();
    return (*(v4 + 8))(v7, v3);
  }
}

id DaemonCoreDataStoreServerHandlingPolicy.init<A>(bundleInfoProvider:policyLevelProvider:authStatusProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_226C8A468(a1, a2, a3, a4, a5);
  (*(*(a4 - 8) + 8))(a3, a4);
  return v7;
}

uint64_t sub_226C88F7C()
{
  v0 = sub_226C8A5C8(&unk_283A69FA8);
  result = swift_arrayDestroy();
  qword_27D7B61F8 = v0;
  return result;
}

uint64_t sub_226C88FC8(void *a1)
{
  v44 = sub_226D68CEC();
  v48 = *(v44 - 8);
  v3 = *(v48 + 64);
  v4 = MEMORY[0x28223BE20](v44);
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = &v38 - v6;
  v7 = sub_226D67E0C();
  v45 = *(v7 - 8);
  v8 = *(v45 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = sub_226D6A34C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_entitlementChecker);
  v49 = a1;
  sub_226C88B00(v1 + OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_bundleInfoProvider);
  v39 = v11;
  v40 = v13;
  v41 = v14;
  v42 = v18;
  v43 = v15;
  v20 = OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_authStatusProvider;
  sub_226AC40E8(v1 + OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_policyLevelProvider, &v50, &qword_27D7A7030, &qword_226D73F38);
  if (v52)
  {
    sub_226AC484C(&v50, v53);
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v21 = v42;
    sub_226D6923C();
  }

  else
  {
    sub_226AC47B0(&v50, &qword_27D7A7030, &qword_226D73F38);
    sub_226AE532C(v1 + v20, v53);
    [v49 auditToken];
    v22 = v50;
    v24 = v51;
    v23 = v52;
    v25 = v40;
    sub_226D69A6C();
    v27 = v54;
    v26 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v28 = v46;
    (*(v26 + 8))(v22, *(&v22 + 1), v24, v23, v25, v27, v26);
    v29 = v45;
    v30 = v39;
    (*(v45 + 16))(v39, v25, v7);
    v32 = v47;
    v31 = v48;
    v33 = v44;
    (*(v48 + 16))(v47, v28, v44);
    v21 = v42;
    sub_226C87A98(v30, v32, v42);
    (*(v31 + 8))(v28, v33);
    (*(v29 + 8))(v25, v7);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v53);
  v34 = v41;
  v35 = v43;
  v36 = sub_226C8A8F0();
  (*(v35 + 8))(v21, v34);
  return v36 & 1;
}

id sub_226C89634(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = &v73 - v7;
  v77 = sub_226D68CEC();
  v83 = *(v77 - 8);
  v8 = *(v83 + 64);
  v9 = MEMORY[0x28223BE20](v77);
  v80 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = &v73 - v11;
  v12 = sub_226D67E0C();
  v81 = *(v12 - 8);
  v82 = v12;
  v13 = *(v81 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v78 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v73 - v16;
  v85 = sub_226D6A34C();
  v18 = *(v85 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v85);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v73 - v24;
  result = MEMORY[0x28223BE20](v23);
  v28 = &v73 - v27;
  if (a1)
  {
    v76 = a1;
    if (a2)
    {
      v29 = *(v2 + OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_entitlementChecker);
      v30 = OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_authStatusProvider;
      sub_226AC40E8(v2 + OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_policyLevelProvider, &v86, &qword_27D7A7030, &qword_226D73F38);
      if (v88)
      {
        sub_226AC484C(&v86, v89);
        __swift_project_boxed_opaque_existential_1(v89, v90);
        sub_226D6923C();
      }

      else
      {
        sub_226AC47B0(&v86, &qword_27D7A7030, &qword_226D73F38);
        sub_226AE532C(v2 + v30, v89);
        [a2 auditToken];
        v74 = v18;
        v34 = *(&v86 + 1);
        v33 = v86;
        v36 = v87;
        v35 = v88;
        v75 = v17;
        sub_226D69A6C();
        v37 = v90;
        v38 = v91;
        __swift_project_boxed_opaque_existential_1(v89, v90);
        v39 = v79;
        v40 = v34;
        v18 = v74;
        v41 = v35;
        v42 = v75;
        (*(v38 + 8))(v33, v40, v36, v41, v75, v37, v38);
        v44 = v81;
        v43 = v82;
        v45 = v78;
        (*(v81 + 16))(v78, v42, v82);
        v46 = v83;
        v47 = v80;
        v48 = v77;
        (*(v83 + 16))(v80, v39, v77);
        sub_226C87A98(v45, v47, v25);
        (*(v46 + 8))(v39, v48);
        (*(v44 + 8))(v75, v43);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v89);
      v49 = v76;
      v50 = v84;
      sub_226C88970(v84);
      result = [a2 managedObjectContext];
      if (result)
      {
        v51 = result;
        v52 = sub_226C8B12C(v25, v49, v50, result);

        sub_226AC47B0(v50, &qword_27D7A7180, &qword_226D74600);
        (*(v18 + 8))(v25, v85);
        return v52;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else if (a2)
  {
    v31 = *(v2 + OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_entitlementChecker);
    v32 = OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_authStatusProvider;
    sub_226AC40E8(v2 + OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_policyLevelProvider, &v86, &qword_27D7A7030, &qword_226D73F38);
    if (v88)
    {
      sub_226AC484C(&v86, v89);
      __swift_project_boxed_opaque_existential_1(v89, v90);
      sub_226D6922C();
    }

    else
    {
      sub_226AC47B0(&v86, &qword_27D7A7030, &qword_226D73F38);
      sub_226AE532C(v2 + v32, v89);
      [a2 auditToken];
      v53 = v86;
      v54 = v87;
      v84 = v88;
      v75 = v17;
      sub_226D69A6C();
      v55 = v90;
      v56 = v91;
      __swift_project_boxed_opaque_existential_1(v89, v90);
      v57 = v79;
      v58 = v54;
      v59 = v75;
      (*(v56 + 8))(v53, *(&v53 + 1), v58, v84, v75, v55, v56);
      v60 = v81;
      v61 = v82;
      v62 = v78;
      (*(v81 + 16))(v78, v59, v82);
      v63 = v83;
      v64 = v80;
      v65 = v77;
      (*(v83 + 16))(v80, v57, v77);
      sub_226C87A98(v62, v64, v28);
      (*(v63 + 8))(v57, v65);
      (*(v60 + 8))(v75, v61);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v89);
    v66 = *(v18 + 104);
    v67 = v85;
    v66(v22, *MEMORY[0x277CC7BB8], v85);
    v68 = sub_226D6A33C();
    v69 = *(v18 + 8);
    v69(v22, v67);
    if (v68 & 1) != 0 || (v70 = v85, v66(v22, *MEMORY[0x277CC7BA8], v85), v71 = sub_226D6A33C(), v69(v22, v70), (v71))
    {
      v72 = [objc_opt_self() predicateWithValue_];
    }

    else
    {
      v72 = [objc_opt_self() predicateWithValue_];
    }

    v52 = v72;
    v69(v28, v85);
    return v52;
  }

  __break(1u);
  return result;
}

uint64_t sub_226C89E80(void *a1)
{
  v3 = sub_226D68CEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v48 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v47 = &v40 - v8;
  v49 = sub_226D67E0C();
  v46 = *(v49 - 8);
  v9 = *(v46 + 64);
  v10 = MEMORY[0x28223BE20](v49);
  v45 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = &v40 - v12;
  v13 = sub_226D6A34C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v21 = &v40 - v20;
  if (a1)
  {
    v22 = *(v1 + OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_entitlementChecker);
    v23 = OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_authStatusProvider;
    sub_226AC40E8(v1 + OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_policyLevelProvider, &v51, &qword_27D7A7030, &qword_226D73F38);
    if (v53)
    {
      sub_226AC484C(&v51, v54);
      __swift_project_boxed_opaque_existential_1(v54, v55);
      sub_226D6923C();
    }

    else
    {
      sub_226AC47B0(&v51, &qword_27D7A7030, &qword_226D73F38);
      sub_226AE532C(v1 + v23, v54);
      [a1 auditToken];
      v24 = *(&v51 + 1);
      v41 = v51;
      v43 = v4;
      v44 = v13;
      v25 = v52;
      v26 = v53;
      sub_226D69A6C();
      v42 = v3;
      v27 = v55;
      v28 = v56;
      __swift_project_boxed_opaque_existential_1(v54, v55);
      v29 = v47;
      v30 = v25;
      v13 = v44;
      v31 = v26;
      v32 = v50;
      (*(v28 + 8))(v41, v24, v30, v31, v50, v27, v28);
      v34 = v45;
      v33 = v46;
      (*(v46 + 16))(v45, v32, v49);
      v35 = v42;
      v36 = v43;
      v37 = v48;
      (*(v43 + 16))(v48, v29, v42);
      sub_226C87A98(v34, v37, v21);
      (*(v36 + 8))(v29, v35);
      (*(v33 + 8))(v50, v49);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    (*(v14 + 104))(v18, *MEMORY[0x277CC7BB8], v13);
    v38 = sub_226D6A33C();
    v39 = *(v14 + 8);
    v39(v18, v13);
    v39(v21, v13);
    return v38 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id DaemonCoreDataStoreServerHandlingPolicy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DaemonCoreDataStoreServerHandlingPolicy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonCoreDataStoreServerHandlingPolicy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_226C8A468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_entitlementChecker;
  v12 = sub_226D69A8C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *&v5[v11] = sub_226D69A7C();
  sub_226AC40E8(a1, &v5[OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_bundleInfoProvider], &qword_27D7A7028, &qword_226D73F30);
  sub_226AC40E8(a2, &v5[OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_policyLevelProvider], &qword_27D7A7030, &qword_226D73F38);
  v15 = &v5[OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_authStatusProvider];
  v15[3] = a4;
  v15[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a3, a4);
  v19.receiver = v5;
  v19.super_class = type metadata accessor for DaemonCoreDataStoreServerHandlingPolicy();
  v17 = objc_msgSendSuper2(&v19, sel_init);
  sub_226AC47B0(a2, &qword_27D7A7030, &qword_226D73F38);
  sub_226AC47B0(a1, &qword_27D7A7028, &qword_226D73F30);
  return v17;
}

uint64_t sub_226C8A5C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 56);
    v42 = MEMORY[0x277D84F98];
    while (1)
    {
      v37 = v1;
      v5 = *(v2 - 2);
      v41 = *(v2 - 3);
      v7 = *(v2 - 1);
      v6 = *v2;
      v9 = v2[1];
      v8 = v2[2];
      v11 = v2[3];
      v10 = v2[4];
      v13 = v2[5];
      v12 = v2[6];

      sub_226ACD178(v7);
      sub_226ACD178(v9);
      sub_226ACD178(v11);
      sub_226ACD178(v13);

      sub_226ACD178(v7);
      sub_226ACD178(v9);
      v38 = v10;
      sub_226ACD178(v11);
      v39 = v13;
      v40 = v12;
      sub_226ACD178(v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = sub_226C2FDD4(v41, v5);
      v17 = v42[2];
      v18 = (v15 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        break;
      }

      v20 = v15;
      if (v42[3] >= v19)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226C39B3C();
        }
      }

      else
      {
        sub_226C35390(v19, isUniquelyReferenced_nonNull_native);
        v21 = sub_226C2FDD4(v41, v5);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_18;
        }

        v16 = v21;
      }

      if (v20)
      {
        v3 = (v42[7] + 80 * v16);
        v4 = v3[1];
        v29 = v3[3];
        v30 = v3[2];
        v32 = v3[4];
        v31 = v3[5];
        v33 = v3[7];
        v34 = v3[6];
        v36 = v3[8];
        v35 = v3[9];
        *v3 = v41;
        v3[1] = v5;
        v3[2] = v7;
        v3[3] = v6;
        v3[4] = v9;
        v3[5] = v8;
        v3[6] = v11;
        v3[7] = v38;
        v3[8] = v39;
        v3[9] = v40;

        sub_226AC7B44(v30);
        sub_226AC7B44(v32);
        sub_226AC7B44(v34);
        sub_226AC7B44(v36);

        sub_226AC7B44(v7);
        sub_226AC7B44(v9);
        sub_226AC7B44(v11);
        sub_226AC7B44(v39);
      }

      else
      {
        v42[(v16 >> 6) + 8] |= 1 << v16;
        v23 = (v42[6] + 16 * v16);
        *v23 = v41;
        v23[1] = v5;
        v24 = (v42[7] + 80 * v16);
        *v24 = v41;
        v24[1] = v5;
        v24[2] = v7;
        v24[3] = v6;
        v24[4] = v9;
        v24[5] = v8;
        v24[6] = v11;
        v24[7] = v38;
        v24[8] = v39;
        v24[9] = v40;
        sub_226AC7B44(v7);
        sub_226AC7B44(v9);
        sub_226AC7B44(v11);
        sub_226AC7B44(v39);
        v25 = v42[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_17;
        }

        v42[2] = v27;
      }

      v2 += 10;
      v1 = v37 - 1;
      if (v37 == 1)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = sub_226D6F25C();
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_226C8A8F0()
{
  v0 = sub_226D6A34C();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v1[13];
  v5(v4, *MEMORY[0x277CC7BB0], v0);
  v6 = sub_226D6A33C();
  v7 = v1[1];
  v7(v4, v0);
  if ((v6 & 1) == 0)
  {
    v5(v4, *MEMORY[0x277CC7BC0], v0);
    v8 = sub_226D6A33C();
    v7(v4, v0);
    if ((v8 & 1) == 0)
    {
      return 1;
    }
  }

  if (qword_28105F5F8 != -1)
  {
    swift_once();
  }

  v9 = sub_226D6E07C();
  __swift_project_value_buffer(v9, qword_28105F600);
  v10 = sub_226D6E05C();
  v11 = sub_226D6E9CC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_226AB4000, v10, v11, "Caller did not have entitlements or TCC rights, declining connection", v12, 2u);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  return 0;
}

uint64_t sub_226C8AB00()
{
  v10 = MEMORY[0x277D84F90];
  sub_226D6A96C();
  v0 = sub_226D6A95C();
  sub_226CEE2B0(v0);
  sub_226D6A9BC();
  v1 = sub_226D6A9AC();
  sub_226CEE2B0(v1);
  sub_226D6B8DC();
  v2 = [swift_getObjCClassFromMetadata() allowedTopLevelClasses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8880, &qword_226D7A040);
  v3 = sub_226D6E5EC();

  sub_226CEE2B0(v3);
  sub_226D6C4FC();
  v4 = sub_226D6C4EC();
  sub_226CEE2B0(v4);
  sub_226D6B57C();
  v5 = sub_226D6B56C();
  sub_226CEE2B0(v5);
  sub_226D6A2AC();
  v6 = sub_226D6A29C();
  sub_226CEE2B0(v6);
  sub_226CB2F2C(v10);

  v7 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v8 = sub_226D6E5CC();

  [v7 initWithArray_];

  result = sub_226D6E87C();
  __break(1u);
  return result;
}

uint64_t sub_226C8ACA0(void *a1)
{
  v3 = sub_226D68CEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v54 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = &v45 - v8;
  v9 = sub_226D67E0C();
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v50 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - v13;
  v15 = sub_226D6A34C();
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v17);
  v22 = &v45 - v21;
  if (a1)
  {
    v23 = *(v1 + OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_entitlementChecker);
    v24 = OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_authStatusProvider;
    sub_226AC40E8(v1 + OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_policyLevelProvider, &v56, &qword_27D7A7030, &qword_226D73F38);
    if (v58)
    {
      sub_226AC484C(&v56, v59);
      __swift_project_boxed_opaque_existential_1(v59, v60);
      sub_226D6923C();
    }

    else
    {
      sub_226AC47B0(&v56, &qword_27D7A7030, &qword_226D73F38);
      sub_226AE532C(v1 + v24, v59);
      [a1 auditToken];
      v47 = v22;
      v48 = v15;
      v26 = *(&v56 + 1);
      v25 = v56;
      v46 = v3;
      v27 = v57;
      v28 = v58;
      v49 = v14;
      sub_226D69A6C();
      v30 = v60;
      v29 = v61;
      __swift_project_boxed_opaque_existential_1(v59, v60);
      v31 = v51;
      v32 = v26;
      v33 = v27;
      v34 = v28;
      v22 = v47;
      v15 = v48;
      v35 = v49;
      (*(v29 + 8))(v25, v32, v33, v34, v49, v30, v29);
      v37 = v52;
      v36 = v53;
      v38 = v50;
      (*(v52 + 16))(v50, v35, v53);
      v39 = v54;
      v40 = v46;
      (*(v4 + 16))(v54, v31, v46);
      sub_226C87A98(v38, v39, v22);
      (*(v4 + 8))(v31, v40);
      (*(v37 + 8))(v49, v36);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    v41 = v55;
    (*(v55 + 104))(v19, *MEMORY[0x277CC7BB8], v15);
    v42 = sub_226D6A33C();
    v43 = *(v41 + 8);
    v43(v19, v15);
    if (v42)
    {
      v44 = [objc_opt_self() predicateWithValue_];
    }

    else
    {
      v44 = 0;
    }

    v43(v22, v15);
    return v44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_226C8B12C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v108 = a4;
  v111 = a3;
  v109 = type metadata accessor for AccountAndStartingDate();
  v116 = *(v109 - 8);
  v5 = *(v116 + 64);
  v6 = MEMORY[0x28223BE20](v109);
  v114 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v115 = &v106 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v106 - v11;
  v13 = sub_226D67F1C();
  v112 = *(v13 - 8);
  v113 = v13;
  v14 = *(v112 + 64);
  MEMORY[0x28223BE20](v13);
  v110 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_226D6A34C();
  v17 = *(v16 - 8);
  v18 = v17[8];
  MEMORY[0x28223BE20](v16);
  v20 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v17[13];
  (v21)(v20, *MEMORY[0x277CC7BB0], v16);
  v22 = sub_226D6A33C();
  v23 = v17[1];
  (v23)(v20, v16);
  if (v22)
  {
    goto LABEL_3;
  }

  (v21)(v20, *MEMORY[0x277CC7BC0], v16);
  v24 = sub_226D6A33C();
  (v23)(v20, v16);
  if (v24)
  {
    goto LABEL_3;
  }

  (v21)(v20, *MEMORY[0x277CC7BB8], v16);
  v27 = sub_226D6A33C();
  (v23)(v20, v16);
  if (v27 & 1) != 0 || ((v21)(v20, *MEMORY[0x277CC7BA8], v16), v28 = sub_226D6A33C(), (v23)(v20, v16), (v28))
  {
    v25 = [objc_opt_self() predicateWithValue_];
    return v25;
  }

  if (!a2 || (v29 = [a2 name]) == 0)
  {
LABEL_3:
    v25 = [objc_opt_self() predicateWithValue_];
    return v25;
  }

  v30 = v29;
  v107 = sub_226D6E39C();
  v32 = v31;

  if (qword_27D7A5F98 != -1)
  {
    goto LABEL_69;
  }

  while (1)
  {
    if (!*(qword_27D7B61F8 + 16) || (v106 = qword_27D7B61F8, sub_226C2FDD4(v107, v32), (v33 & 1) == 0))
    {

      goto LABEL_3;
    }

    (v21)(v20, *MEMORY[0x277CC7BA0], v16);
    v34 = sub_226D6A33C();
    (v23)(v20, v16);
    if ((v34 & 1) == 0)
    {

      v25 = [objc_opt_self() predicateWithValue_];
      return v25;
    }

    sub_226AC40E8(v111, v12, &qword_27D7A7180, &qword_226D74600);
    v36 = v112;
    v35 = v113;
    if ((*(v112 + 48))(v12, 1, v113) == 1)
    {

      sub_226AC47B0(v12, &qword_27D7A7180, &qword_226D74600);
      v25 = [objc_opt_self() predicateWithValue_];
      return v25;
    }

    v111 = v32;
    v37 = v110;
    v38 = (*(v36 + 32))(v110, v12, v35);
    MEMORY[0x28223BE20](v38);
    v16 = (&v106 - 4);
    *(&v106 - 2) = v108;
    *(&v106 - 1) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8878, &unk_226D7A030);
    sub_226D6EB8C();
    v23 = 0;
    v39 = MEMORY[0x277D84F90];
    v32 = v118 + 56;
    v40 = *(v118 + 56);
    v41 = v118;
    v42 = 1 << *(v118 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v118 = MEMORY[0x277D84F90];
    v21 = v43 & v40;
    v12 = ((v42 + 63) >> 6);
    v44 = MEMORY[0x277D84F90];
    v20 = v114;
    v45 = v106;
    if ((v43 & v40) != 0)
    {
      do
      {
LABEL_27:
        v47 = v115;
        sub_226AE51A0(*(v41 + 48) + *(v116 + 72) * (__clz(__rbit64(v21)) | (v23 << 6)), v115);
        sub_226B72720(v47, v20);
        v117 = v39;
        if (*(v45 + 16))
        {
          v48 = sub_226C2FDD4(v107, v111);
          if ((v49 & 1) != 0 && (v50 = *(v45 + 56) + 80 * v48, v53 = *(v50 + 16), v51 = v50 + 16, (v52 = v53) != 0))
          {
            v54 = *(v51 + 8);

            v55 = v52(v20);
            sub_226AC7B44(v52);
            v56 = v55;
            MEMORY[0x22AA8A610]();
            if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v71 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_226D6E61C();
            }

            sub_226D6E65C();

            v16 = v117;
            v20 = v114;
            v45 = v106;
          }

          else
          {
            v16 = v39;
          }

          if (*(v45 + 16) && (v57 = *(v109 + 20), v58 = sub_226C2FDD4(v107, v111), (v59 & 1) != 0))
          {
            v60 = *(v45 + 56) + 80 * v58;
            v63 = *(v60 + 48);
            v61 = v60 + 48;
            v62 = v63;
            if (v63)
            {
              v64 = *(v61 + 8);

              v65 = v62(&v114[v57]);
              sub_226AC7B44(v62);
              if (v65)
              {
                if (v16 >> 62)
                {
                  v66 = sub_226D6EDFC();
                }

                else
                {
                  v66 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v20 = v114;
                v45 = v106;
                if (v66 != 1)
                {
                  goto LABEL_46;
                }

                v67 = v65;
                MEMORY[0x22AA8A610]();
                if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v72 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_226D6E61C();
                  v20 = v114;
                }

                sub_226D6E65C();

                v16 = v117;
              }

              else
              {
                v20 = v114;
              }

              v45 = v106;
            }

            else
            {
              v65 = 0;
              v20 = v114;
            }
          }

          else
          {
            v65 = 0;
          }
        }

        else
        {
          v16 = v39;
          v65 = 0;
        }

LABEL_46:
        if (v16 >> 62)
        {
          v68 = sub_226D6EDFC();
        }

        else
        {
          v68 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v21 &= v21 - 1;
        if (v68)
        {
          sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
          v69 = sub_226D6E5CC();

          v16 = [objc_opt_self() andPredicateWithSubpredicates_];

          MEMORY[0x22AA8A610]();
          if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v70 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_226D6E61C();
            v20 = v114;
          }

          sub_226D6E65C();

          sub_226AE5204(v20);
          v44 = v118;
          v45 = v106;
        }

        else
        {
          sub_226AE5204(v20);
        }

        v39 = MEMORY[0x277D84F90];
      }

      while (v21);
    }

LABEL_23:
    v46 = v23 + 1;
    if (!__OFADD__(v23, 1))
    {
      break;
    }

    __break(1u);
LABEL_69:
    swift_once();
  }

  if (v46 < v12)
  {
    v21 = *(v32 + 8 * v46);
    ++v23;
    if (v21)
    {
      v23 = v46;
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (v44 >> 62)
  {
    v94 = sub_226D6EDFC();
    v74 = v111;
    if (!v94)
    {
      goto LABEL_71;
    }

LABEL_62:
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v75 = sub_226D6E5CC();

    v76 = objc_opt_self();
    v77 = [v76 orPredicateWithSubpredicates_];

    v78 = v106;
    if (*(v106 + 16))
    {
      v79 = sub_226C2FDD4(v107, v74);
      v81 = v80;

      if (v81)
      {
        v82 = *(v78 + 56) + 80 * v79;
        v85 = *(v82 + 64);
        v83 = v82 + 64;
        v84 = v85;
        if (v85)
        {
          v86 = *(v83 + 8);

          v88 = v84(v87);
          sub_226AC7B44(v84);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
          v89 = swift_allocObject();
          *(v89 + 16) = xmmword_226D71F40;
          *(v89 + 32) = v77;
          *(v89 + 40) = v88;
          v90 = v77;
          v91 = v88;
          v92 = sub_226D6E5CC();

          v93 = [v76 andPredicateWithSubpredicates_];

          (*(v112 + 8))(v110, v113);
          return v93;
        }
      }
    }

    else
    {
    }

    (*(v112 + 8))(v110, v113);
    return v77;
  }

  else
  {
    v73 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v74 = v111;
    if (v73)
    {
      goto LABEL_62;
    }

LABEL_71:

    if (*(v45 + 16))
    {
      v95 = sub_226C2FDD4(v107, v74);
      v97 = v96;

      if (v97)
      {
        v98 = *(v45 + 56) + 80 * v95;
        v101 = *(v98 + 32);
        v99 = v98 + 32;
        v100 = v101;
        if (v101)
        {
          v102 = *(v99 + 8);

          v103 = v110;
          v104 = v100(v110);
          sub_226AC7B44(v100);
          (*(v112 + 8))(v103, v113);
          return v104;
        }
      }
    }

    else
    {
    }

    v105 = [objc_opt_self() predicateWithValue_];
    (*(v112 + 8))(v110, v113);
    return v105;
  }
}

uint64_t sub_226C8BDE8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = sub_226B71D90();
  *a1 = result;
  return result;
}

unint64_t sub_226C8BE1C()
{
  result = qword_27D7A8888;
  if (!qword_27D7A8888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8888);
  }

  return result;
}

uint64_t sub_226C8BE70(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_226AE59B4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226C8BED0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_226C8BF18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_226C8BF80()
{
  result = qword_27D7A88B0;
  if (!qword_27D7A88B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A88B0);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BankConnectServiceImplementation.refreshCardArt(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v6 = *(v1 + 40);
  v5 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v2 + 16), v6);
  v7 = *(*(v5 + 8) + 8);
  sub_226D6BAAC();
  v8 = sub_226D676AC();

  v9 = __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v10 = *__swift_project_boxed_opaque_existential_1(v9 + 103, v9[106]);
  sub_226D098E8(countAndFlagsBits, object);
}

uint64_t type metadata accessor for OrderWebServiceLogTask()
{
  result = qword_27D7A88B8;
  if (!qword_27D7A88B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226C8C11C()
{
  sub_226D6D1AC();
  if (v0 <= 0x3F)
  {
    sub_226B20350();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_226C8C1B8()
{
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD00000000000001FLL, 0x8000000226D86130);
  v1 = type metadata accessor for OrderWebServiceLogTask();
  MEMORY[0x22AA8A510](*(v0 + *(v1 + 20)), *(v0 + *(v1 + 20) + 8));
  MEMORY[0x22AA8A510](0xD000000000000010, 0x8000000226D85840);
  sub_226D6D1AC();
  sub_226C8FAB0(&qword_27D7A7018, MEMORY[0x277CC9260]);
  v2 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v2);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_226C8C2DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for OrderWebServiceLogTask();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C8C37C, 0, 0);
}

uint64_t sub_226C8C37C()
{
  v26 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F5C0);
  sub_226C8F844(v3, v2);
  sub_226C8F844(v3, v1);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[5];
  v9 = v0[6];
  if (v7)
  {
    v10 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315394;
    v13 = (v9 + *(v10 + 20));
    v14 = *v13;
    v15 = v13[1];

    sub_226C8FB04(v9, type metadata accessor for OrderWebServiceLogTask);
    v16 = sub_226AC4530(v14, v15, &v25);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_226D6D1AC();
    sub_226C8FAB0(&qword_27D7A7018, MEMORY[0x277CC9260]);
    v17 = sub_226D6F1CC();
    v19 = v18;
    sub_226C8FB04(v8, type metadata accessor for OrderWebServiceLogTask);
    v20 = sub_226AC4530(v17, v19, &v25);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_226AB4000, v5, v6, "Starting log task for %s at %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
  }

  else
  {

    sub_226C8FB04(v8, type metadata accessor for OrderWebServiceLogTask);
    sub_226C8FB04(v9, type metadata accessor for OrderWebServiceLogTask);
  }

  v21 = swift_task_alloc();
  v0[7] = v21;
  *v21 = v0;
  v21[1] = sub_226C8C664;
  v22 = v0[2];
  v23 = v0[3];

  return sub_226C8CE28(v22);
}

uint64_t sub_226C8C664(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {
    v7 = *(v3 + 40);
    v6 = *(v3 + 48);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_226C8C7BC, 0, 0);
  }
}

uint64_t sub_226C8C7BC()
{
  if (*(v0[8] + 16))
  {
    v1 = swift_task_alloc();
    v0[9] = v1;
    *v1 = v0;
    v1[1] = sub_226C8C8A8;
    v2 = v0[8];
    v3 = v0[2];
    v4 = v0[3];

    return sub_226C8D36C(v2);
  }

  else
  {

    v7 = v0[5];
    v6 = v0[6];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_226C8C8A8()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[8];

    return MEMORY[0x2822009F8](sub_226C8CBF4, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[11] = v5;
    *v5 = v3;
    v5[1] = sub_226C8CA24;
    v6 = v3[2];
    v7 = v3[3];
    v8 = v3[8];

    return sub_226C8D754(v8, v6);
  }
}

uint64_t sub_226C8CA24()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 64);
  v8 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_226C8CB74()
{
  v1 = v0[10];

  v3 = v0[5];
  v2 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_226C8CBF4()
{
  v1 = *(v0 + 80);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_226C8CC94;
  v3 = *(v0 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return sub_226C8DB28(v3, v4);
}

uint64_t sub_226C8CC94()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_226C8CDA8;
  }

  else
  {
    v3 = sub_226C8CB74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226C8CDA8()
{
  v1 = v0[10];

  v2 = v0[13];
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_226C8CE28(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D6EB9C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(type metadata accessor for OrderWebServiceLogTask() - 8);
  v2[8] = v6;
  v2[9] = *(v6 + 64);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C8CF48, 0, 0);
}

uint64_t sub_226C8CF48()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8 = **(v0 + 24);
  v9 = sub_226D676AC();
  *(v0 + 88) = v9;
  sub_226C8F844(v7, v1);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v0 + 96) = v11;
  sub_226C8F9B4(v1, v11 + v10);
  *(v11 + ((v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  (*(v6 + 104))(v3, *MEMORY[0x277CBE110], v5);
  v12 = *(MEMORY[0x277CBE118] + 4);
  v9;
  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A88E8, &unk_226D7A368);
  *v13 = v0;
  v13[1] = sub_226C8D0D8;
  v15 = *(v0 + 56);

  return MEMORY[0x28210EE50](v0 + 16, v15, sub_226C8FA18, v11, v14);
}

uint64_t sub_226C8D0D8()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 112) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_226C8D2F4;
  }

  else
  {
    v7 = sub_226C8D26C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226C8D26C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  v3 = *(v0 + 16);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_226C8D2F4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);
  v4 = *(v0 + 112);

  return v3();
}

uint64_t sub_226C8D36C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for OrderWebServiceLogTask();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C8D40C, 0, 0);
}

uint64_t sub_226C8D40C()
{
  v30 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F5C0);
  sub_226C8F844(v3, v2);
  sub_226C8F844(v3, v1);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[5];
  v9 = v0[6];
  if (v7)
  {
    v10 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315394;
    v13 = (v9 + *(v10 + 20));
    v14 = *v13;
    v15 = v13[1];

    sub_226C8FB04(v9, type metadata accessor for OrderWebServiceLogTask);
    v16 = sub_226AC4530(v14, v15, &v29);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_226D6D1AC();
    sub_226C8FAB0(&qword_27D7A7018, MEMORY[0x277CC9260]);
    v17 = sub_226D6F1CC();
    v19 = v18;
    sub_226C8FB04(v8, type metadata accessor for OrderWebServiceLogTask);
    v20 = sub_226AC4530(v17, v19, &v29);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_226AB4000, v5, v6, "Sending logs for %s to %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
  }

  else
  {

    sub_226C8FB04(v8, type metadata accessor for OrderWebServiceLogTask);
    sub_226C8FB04(v9, type metadata accessor for OrderWebServiceLogTask);
  }

  v22 = v0[2];
  v21 = v0[3];
  v23 = sub_226C0B798(v21);
  v0[7] = v23;
  v24 = swift_task_alloc();
  v0[8] = v24;
  v24[2] = v23;
  v24[3] = v21;
  v24[4] = v22;
  v25 = *(MEMORY[0x277CC7900] + 4);
  v28 = (*MEMORY[0x277CC7900] + MEMORY[0x277CC7900]);
  v26 = swift_task_alloc();
  v0[9] = v26;
  *v26 = v0;
  v26[1] = sub_226C6242C;

  return v28();
}

uint64_t sub_226C8D754(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for OrderWebServiceLogTask();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C8D7F8, 0, 0);
}

uint64_t sub_226C8D7F8()
{
  v31 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F5C0);
  sub_226C8F844(v3, v2);
  sub_226C8F844(v3, v1);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  if (v7)
  {
    v10 = *(v0 + 40);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30[0] = v12;
    *v11 = 136315394;
    v13 = (v9 + *(v10 + 20));
    v14 = *v13;
    v15 = v13[1];

    sub_226C8FB04(v9, type metadata accessor for OrderWebServiceLogTask);
    v16 = sub_226AC4530(v14, v15, v30);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_226D6D1AC();
    sub_226C8FAB0(&qword_27D7A7018, MEMORY[0x277CC9260]);
    v17 = sub_226D6F1CC();
    v19 = v18;
    sub_226C8FB04(v8, type metadata accessor for OrderWebServiceLogTask);
    v20 = sub_226AC4530(v17, v19, v30);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_226AB4000, v5, v6, "Sent logs for %s to %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
  }

  else
  {

    sub_226C8FB04(v8, type metadata accessor for OrderWebServiceLogTask);
    sub_226C8FB04(v9, type metadata accessor for OrderWebServiceLogTask);
  }

  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  v23 = *(v0 + 32);
  v24 = *(v0 + 16);
  v25 = **(v0 + 24);
  v26 = sub_226D676AC();
  v27 = swift_task_alloc();
  v27[2] = v24;
  v27[3] = v26;
  v27[4] = v23;
  sub_226D6EB8C();

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_226C8DB28(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for OrderWebServiceLogTask();
  v3[10] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C8DBCC, 0, 0);
}

uint64_t sub_226C8DBCC()
{
  v45 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  type metadata accessor for OrdersAutoBugCaptureReporter();
  inited = swift_initStackObject();
  v4 = [objc_allocWithZone(MEMORY[0x277CC85F0]) init];
  *(inited + 16) = v4;
  v5 = sub_226C778C0(v2);
  v6 = sub_226C6E52C(v2);
  sub_226BA21B0(v5, v6);

  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v9 = *(v0 + 72);
  v10 = *(v0 + 56);
  v11 = sub_226D6E07C();
  __swift_project_value_buffer(v11, qword_28105F5C0);
  sub_226C8F844(v9, v8);
  sub_226C8F844(v9, v7);
  v12 = v10;
  v13 = sub_226D6E05C();
  v14 = sub_226D6E9CC();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 88);
  v17 = *(v0 + 96);
  if (!v15)
  {

    sub_226C8FB04(v16, type metadata accessor for OrderWebServiceLogTask);
    sub_226C8FB04(v17, type metadata accessor for OrderWebServiceLogTask);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v18 = *(v0 + 80);
  v42 = *(v0 + 56);
  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v43 = swift_slowAlloc();
  v44[0] = v43;
  *v19 = 136315650;
  v21 = (v17 + *(v18 + 20));
  v23 = *v21;
  v22 = v21[1];

  sub_226C8FB04(v17, type metadata accessor for OrderWebServiceLogTask);
  v24 = sub_226AC4530(v23, v22, v44);

  *(v19 + 4) = v24;
  *(v19 + 12) = 2080;
  sub_226D6D1AC();
  sub_226C8FAB0(&qword_27D7A7018, MEMORY[0x277CC9260]);
  v25 = sub_226D6F1CC();
  v27 = v26;
  sub_226C8FB04(v16, type metadata accessor for OrderWebServiceLogTask);
  v28 = sub_226AC4530(v25, v27, v44);

  *(v19 + 14) = v28;
  *(v19 + 22) = 2112;
  v29 = v42;
  v30 = _swift_stdlib_bridgeErrorToNSError();
  *(v19 + 24) = v30;
  *v20 = v30;
  _os_log_impl(&dword_226AB4000, v13, v14, "Failed to send logs for %s to %s with error: %@", v19, 0x20u);
  sub_226B17298(v20);
  MEMORY[0x22AA8BEE0](v20, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x22AA8BEE0](v43, -1, -1);
  MEMORY[0x22AA8BEE0](v19, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v31 = *(v0 + 72);
    v32 = **(v0 + 64);
    v33 = sub_226D676AC();
    v34 = swift_task_alloc();
    *(v34 + 16) = v31;
    *(v34 + 24) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F0, &unk_226D79950);
    sub_226D6EB7C();
    v36 = *(v0 + 64);
    v35 = *(v0 + 72);
    v37 = *(v0 + 56);

    sub_226C6EE84(v37, *(v0 + 40), *(v0 + 48), v36 + 136);
  }

LABEL_8:
  v39 = *(v0 + 88);
  v38 = *(v0 + 96);

  v40 = *(v0 + 8);

  return v40();
}

void sub_226C8E030(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for OrderWebServiceLogTask();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v54 - v10;
  v12 = sub_226D69F6C();
  v13 = (a1 + *(v5 + 20));
  v14 = *v13;
  v15 = v13[1];
  v16 = sub_226D69F2C();
  if (!v2)
  {
    v56 = a2;
    v57 = 0;
    if (v16)
    {
      v17 = v16;
      sub_226D6B7BC();
      v18 = sub_226D6B79C();
      sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_226D70840;
      *(v19 + 56) = v12;
      *(v19 + 64) = sub_226C8FAB0(&qword_27D7A88F0, MEMORY[0x277CC7A78]);
      *(v19 + 32) = v17;
      v20 = v17;
      v21 = sub_226D6E91C();
      [v18 setPredicate_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_226D71F20;
      sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
      swift_getKeyPath();
      *(v22 + 32) = sub_226D6E9FC();
      v23 = sub_226D6E5CC();

      [v18 setSortDescriptors_];

      [v18 setFetchLimit_];
      [v18 setReturnsObjectsAsFaults_];
      v24 = v57;
      v25 = sub_226D6EBBC();
      if (v24)
      {
      }

      else
      {
        v55 = v20;
        v39 = v25;
        if (v25 >> 62)
        {
          v40 = sub_226D6EDFC();
        }

        else
        {
          v40 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v41 = v56;
        v57 = 0;
        if (v40)
        {
          v54 = v18;
          v60 = MEMORY[0x277D84F90];
          sub_226AE28DC(0, v40 & ~(v40 >> 63), 0);
          if (v40 < 0)
          {
            __break(1u);
          }

          else
          {
            v42 = 0;
            v43 = v60;
            v44 = v39;
            v58 = v39 & 0xC000000000000001;
            v59 = v39;
            do
            {
              if (v58)
              {
                v45 = MEMORY[0x22AA8AFD0](v42, v44);
              }

              else
              {
                v45 = *(v44 + 8 * v42 + 32);
              }

              v46 = v45;
              v47 = [v45 objectID];
              v48 = sub_226D6B7AC();
              v50 = v49;

              v60 = v43;
              v52 = *(v43 + 16);
              v51 = *(v43 + 24);
              if (v52 >= v51 >> 1)
              {
                sub_226AE28DC((v51 > 1), v52 + 1, 1);
                v43 = v60;
              }

              ++v42;
              *(v43 + 16) = v52 + 1;
              v53 = (v43 + 24 * v52);
              v53[4] = v47;
              v53[5] = v48;
              v53[6] = v50;
              v44 = v59;
            }

            while (v40 != v42);

            *v56 = v43;
          }
        }

        else
        {

          *v41 = MEMORY[0x277D84F90];
        }
      }
    }

    else
    {
      if (qword_28105F5B8 != -1)
      {
        swift_once();
      }

      v26 = sub_226D6E07C();
      __swift_project_value_buffer(v26, qword_28105F5C0);
      sub_226C8F844(a1, v11);
      sub_226C8F844(a1, v9);
      v27 = sub_226D6E05C();
      v28 = sub_226D6E9AC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v60 = v30;
        *v29 = 136315394;
        v31 = &v11[*(v5 + 20)];
        v32 = *v31;
        v33 = v31[1];

        sub_226C8FB04(v11, type metadata accessor for OrderWebServiceLogTask);
        v34 = sub_226AC4530(v32, v33, &v60);

        *(v29 + 4) = v34;
        *(v29 + 12) = 2080;
        sub_226D6D1AC();
        sub_226C8FAB0(&qword_27D7A7018, MEMORY[0x277CC9260]);
        v35 = sub_226D6F1CC();
        v37 = v36;
        sub_226C8FB04(v9, type metadata accessor for OrderWebServiceLogTask);
        v38 = sub_226AC4530(v35, v37, &v60);

        *(v29 + 14) = v38;
        _os_log_impl(&dword_226AB4000, v27, v28, "OrderWebService (%s, %s) not found", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v30, -1, -1);
        MEMORY[0x22AA8BEE0](v29, -1, -1);
      }

      else
      {

        sub_226C8FB04(v9, type metadata accessor for OrderWebServiceLogTask);
        sub_226C8FB04(v11, type metadata accessor for OrderWebServiceLogTask);
      }

      *v56 = MEMORY[0x277D84F90];
    }
  }
}

void sub_226C8E6A8(id *a1)
{
  v1 = [*a1 date];
  sub_226D6D45C();
}

uint64_t sub_226C8E708(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_226AE1D68(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_226AE1D68((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return MEMORY[0x282119580](v2);
}

uint64_t sub_226C8E7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = sub_226D6A78C();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C8E8BC, 0, 0);
}

uint64_t sub_226C8E8BC()
{
  v1 = v0[7];
  v2 = v0[3];
  sub_226C8E708(v0[4]);
  v3 = *(MEMORY[0x277CC7908] + 4);
  v8 = (*MEMORY[0x277CC7908] + MEMORY[0x277CC7908]);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_226B4BF14;
  v5 = v0[7];
  v6 = v0[2];

  return v8(v5);
}

void sub_226C8E974(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3)
  {
    v18[0] = MEMORY[0x277D84F90];
    sub_226D6EF8C();
    v5 = (a1 + 32);
    do
    {
      v6 = *v5;
      v5 += 3;
      v7 = v6;
      sub_226D6EF6C();
      v8 = *(v18[0] + 2);
      sub_226D6EF9C();
      sub_226D6EFAC();
      sub_226D6EF7C();
      --v3;
    }

    while (v3);
  }

  v9 = objc_allocWithZone(MEMORY[0x277CBE360]);
  sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
  v10 = sub_226D6E5CC();

  v11 = [v9 initWithObjectIDs_];

  v18[0] = 0;
  v12 = [a2 executeRequest:v11 error:v18];
  if (v12)
  {
    v13 = v12;
    v14 = v18[0];

    MEMORY[0x28223BE20](v15);
    sub_226D6EB7C();
  }

  else
  {
    v16 = v18[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_226C8EB70(uint64_t a1, void *a2)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for OrderWebServiceLogTask();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  sub_226D69F6C();
  v12 = (a1 + *(v5 + 20));
  v13 = *v12;
  v14 = v12[1];
  v15 = sub_226D69F2C();
  if (!v2)
  {
    if (v15)
    {
      v16 = v15;
      [v15 setRequestAttemptCount_];
      [v16 setLastRequestAttemptDate_];
      v35[0] = 0;
      if ([a2 save_])
      {
        v17 = v35[0];
      }

      else
      {
        v31 = v35[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_28105F5B8 != -1)
      {
        swift_once();
      }

      v18 = sub_226D6E07C();
      __swift_project_value_buffer(v18, qword_28105F5C0);
      sub_226C8F844(a1, v11);
      sub_226C8F844(a1, v9);
      v19 = sub_226D6E05C();
      v20 = sub_226D6E9AC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35[0] = v34;
        *v21 = 136315394;
        v22 = &v11[*(v5 + 20)];
        v23 = *v22;
        v24 = v22[1];

        sub_226C8FB04(v11, type metadata accessor for OrderWebServiceLogTask);
        v25 = sub_226AC4530(v23, v24, v35);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2080;
        sub_226D6D1AC();
        sub_226C8FAB0(&qword_27D7A7018, MEMORY[0x277CC9260]);
        v26 = sub_226D6F1CC();
        v28 = v27;
        sub_226C8FB04(v9, type metadata accessor for OrderWebServiceLogTask);
        v29 = sub_226AC4530(v26, v28, v35);

        *(v21 + 14) = v29;
        _os_log_impl(&dword_226AB4000, v19, v20, "OrderWebService (%s, %s) not found", v21, 0x16u);
        v30 = v34;
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v30, -1, -1);
        MEMORY[0x22AA8BEE0](v21, -1, -1);
      }

      else
      {

        sub_226C8FB04(v9, type metadata accessor for OrderWebServiceLogTask);
        sub_226C8FB04(v11, type metadata accessor for OrderWebServiceLogTask);
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_226C8EF38(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v48[1] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for OrderWebServiceLogTask();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v44 - v10);
  v12 = sub_226D6D4AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69F6C();
  v17 = (a1 + *(v5 + 20));
  v18 = *v17;
  v19 = v17[1];
  v20 = v47;
  v21 = sub_226D69F2C();
  if (v20)
  {
    goto LABEL_13;
  }

  v47 = 0;
  if (!v21)
  {
    v12 = 0;
    if (qword_28105F5B8 == -1)
    {
LABEL_7:
      v27 = sub_226D6E07C();
      __swift_project_value_buffer(v27, qword_28105F5C0);
      sub_226C8F844(a1, v11);
      v28 = v9;
      sub_226C8F844(a1, v9);
      v29 = sub_226D6E05C();
      v30 = sub_226D6E9AC();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v48[0] = v45;
        *v31 = 136315394;
        v32 = (v11 + *(v5 + 20));
        v33 = v30;
        v34 = *v32;
        v35 = v32[1];

        sub_226C8FB04(v11, type metadata accessor for OrderWebServiceLogTask);
        v36 = sub_226AC4530(v34, v35, v48);

        *(v31 + 4) = v36;
        *(v31 + 12) = 2080;
        sub_226D6D1AC();
        sub_226C8FAB0(&qword_27D7A7018, MEMORY[0x277CC9260]);
        v37 = sub_226D6F1CC();
        v39 = v38;
        sub_226C8FB04(v28, type metadata accessor for OrderWebServiceLogTask);
        v40 = sub_226AC4530(v37, v39, v48);

        *(v31 + 14) = v40;
        _os_log_impl(&dword_226AB4000, v29, v33, "OrderWebService (%s, %s) not found", v31, 0x16u);
        v41 = v45;
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v41, -1, -1);
        MEMORY[0x22AA8BEE0](v31, -1, -1);
      }

      else
      {

        sub_226C8FB04(v28, type metadata accessor for OrderWebServiceLogTask);
        sub_226C8FB04(v11, type metadata accessor for OrderWebServiceLogTask);
      }

      v25 = 0;
      v26 = v46;
      goto LABEL_12;
    }

LABEL_15:
    swift_once();
    goto LABEL_7;
  }

  v11 = &selRef_setSortDescriptors_;
  v9 = v21;
  v22 = [v21 requestAttemptCount];
  if (__OFADD__(v22, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  [v9 setRequestAttemptCount_];
  sub_226D6D46C();
  v23 = sub_226D6D3EC();
  (*(v13 + 8))(v16, v12);
  [v9 setLastRequestAttemptDate_];

  v48[0] = 0;
  if ([a2 save_])
  {
    v24 = v48[0];
    v25 = [v9 requestAttemptCount];

    v26 = v46;
    v12 = v9;
LABEL_12:
    *v26 = v25;
    *(v26 + 8) = v12 == 0;
    goto LABEL_13;
  }

  v42 = v48[0];
  sub_226D6D04C();

  swift_willThrow();
LABEL_13:
  v43 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226C8F3FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
  v6 = (v2 + *(a1 + 20));
  v7 = v6[1];
  *a2 = *v6;
  *(a2 + 1) = v7;
  v8 = sub_226D6D1AC();
  (*(*(v8 - 8) + 16))(&a2[v5], v2, v8);
  type metadata accessor for OrderWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_226C8F4B8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8630, &unk_226D79550);
  v3 = *(type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226D70840;
  v7 = (v6 + v5);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
  v9 = (v1 + *(a1 + 20));
  v10 = v9[1];
  *v7 = *v9;
  *(v7 + 1) = v10;
  v11 = sub_226D6D1AC();
  (*(*(v11 - 8) + 16))(&v7[v8], v1, v11);
  swift_storeEnumTagMultiPayload();

  v12 = sub_226B1FBC0(v6);
  swift_setDeallocating();
  sub_226C8FB04(v7, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
  swift_deallocClassInstance();
  return v12;
}

uint64_t sub_226C8F640(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226C8C2DC(a1);
}

uint64_t sub_226C8F6D8(uint64_t a1)
{
  *(a1 + 8) = sub_226C8FAB0(&qword_27D7A88D0, type metadata accessor for OrderWebServiceLogTask);
  result = sub_226C8FAB0(&qword_27D7A88D8, type metadata accessor for OrderWebServiceLogTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226C8F7EC(uint64_t a1)
{
  result = sub_226C8FAB0(&qword_27D7A88E0, type metadata accessor for OrderWebServiceLogTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226C8F844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderWebServiceLogTask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226C8F900(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AD827C;

  return sub_226C8E7F8(a1, v4, v5, v6);
}

uint64_t sub_226C8F9B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderWebServiceLogTask();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_226C8FA18(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for OrderWebServiceLogTask() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_226C8E030(v1 + v4, a1);
}

uint64_t sub_226C8FAB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226C8FB04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226C8FB64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_226C8FBAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226C8FC00()
{
  v1[3] = v0;
  v2 = sub_226D6EB9C();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C8FCC0, 0, 0);
}

uint64_t sub_226C8FCC0()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v4 + 16);
  v6 = sub_226D676AC();
  v0[7] = v6;
  v7 = swift_allocObject();
  v0[8] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v8 = *(MEMORY[0x277CBE118] + 4);
  v6;

  v9 = swift_task_alloc();
  v0[9] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A88F8, &qword_226D7A450);
  *v9 = v0;
  v9[1] = sub_226C8FE10;
  v11 = v0[6];

  return MEMORY[0x28210EE50](v0 + 2, v11, sub_226C93D10, v7, v10);
}

uint64_t sub_226C8FE10()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v9 = *v1;
  *(*v1 + 80) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_226B871D8;
  }

  else
  {
    v7 = sub_226C8FFA4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226C8FFA4()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_226C90018@<X0>(void *a1@<X0>, id *a2@<X8>)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v18[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v18];

  v7 = v18[0];
  if (v6)
  {
    v18[0] = MEMORY[0x277D84F90];
    v8 = v7;
    v9 = sub_226C901E4();
    if (v2)
    {
    }

    else
    {
      sub_226CEE39C(v9);
      v10 = sub_226C9042C(a1);
      sub_226CEE39C(v10);
      v11 = sub_226C909B0();
      sub_226CEE39C(v11);
      v12 = sub_226C90EF0(a1);
      sub_226CEE39C(v12);
      v13 = sub_226C916E8();
      sub_226CEE39C(v13);
      v14 = sub_226C91EA4();
      result = sub_226CEE39C(v14);
      *a2 = v18[0];
    }
  }

  else
  {
    v16 = v18[0];
    sub_226D6D04C();

    result = swift_willThrow();
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_226C901E4()
{
  v2 = v0;
  sub_226D6AF9C();
  v3 = sub_226D6AF7C();
  [v3 setReturnsObjectsAsFaults_];
  v4 = sub_226D6E5CC();
  [v3 setRelationshipKeyPathsForPrefetching_];

  v5 = sub_226D6EBBC();
  if (v1)
  {
  }

  else
  {
    v6 = v5;
    if (v5 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
    {
      v14 = v3;
      v18 = v2;
      swift_retain_n();
      if (!i)
      {
        break;
      }

      v8 = 0;
      v2 = v6 & 0xFFFFFFFFFFFFFF8;
      v4 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x22AA8AFD0](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        sub_226C922A8(v9, &v15);

        if (v16)
        {
          sub_226AC484C(&v15, v17);
          sub_226AC484C(v17, &v15);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_226BBBCA4(0, v4[2] + 1, 1, v4);
          }

          v3 = v4[2];
          v12 = v4[3];
          if (v3 >= v12 >> 1)
          {
            v4 = sub_226BBBCA4((v12 > 1), v3 + 1, 1, v4);
          }

          v4[2] = v3 + 1;
          sub_226AC484C(&v15, &v4[5 * v3 + 4]);
        }

        ++v8;
        if (v11 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

    v4 = MEMORY[0x277D84F90];
LABEL_20:
  }

  return v4;
}

void *sub_226C9042C(uint64_t a1)
{
  v3 = v1;
  v5 = sub_226D6707C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 32);
  v11 = *(v1 + 24);
  sub_226D68D6C();
  LOBYTE(v11) = sub_226D6706C();
  (*(v6 + 8))(v9, v5);
  if ((v11 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v40[1] = v3;
  v44 = sub_226D67FDC();
  v45 = sub_226D67FAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v12 = swift_allocObject();
  v43 = a1;
  v13 = v12;
  v41 = xmmword_226D71F30;
  *(v12 + 16) = xmmword_226D71F30;
  v14 = swift_allocObject();
  v49 = v2;
  v15 = v14;
  v42 = xmmword_226D71F40;
  *(v14 + 16) = xmmword_226D71F40;
  sub_226B2A4F4();
  v16 = MEMORY[0x277D84F90];
  *(v15 + 32) = sub_226D6E91C();
  *(v15 + 40) = sub_226D6E91C();
  v17 = sub_226D6E5CC();

  v18 = objc_opt_self();
  v19 = [v18 andPredicateWithSubpredicates_];

  v13[4] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = v41;
  *(v20 + 32) = sub_226D6E91C();
  *(v20 + 40) = sub_226D6E91C();
  *(v20 + 48) = sub_226D6E91C();
  v21 = sub_226D6E5CC();

  v22 = [v18 andPredicateWithSubpredicates_];

  v13[5] = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = v42;
  *(v23 + 32) = sub_226D6E91C();
  *(v23 + 40) = sub_226D6E91C();
  v24 = sub_226D6E5CC();

  v25 = [v18 andPredicateWithSubpredicates_];

  v13[6] = v25;
  v26 = sub_226D6E5CC();

  v27 = [v18 orPredicateWithSubpredicates_];

  v28 = v45;
  [v45 setPredicate_];

  [v28 setReturnsObjectsAsFaults_];
  v29 = v49;
  v30 = sub_226D6EBBC();
  if (v29)
  {
  }

  else
  {
    v31 = v30;
    v49 = 0;
    if (v30 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
    {
      swift_retain_n();
      if (!i)
      {
        break;
      }

      v33 = 0;
      while (1)
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x22AA8AFD0](v33, v31);
        }

        else
        {
          if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v34 = *(v31 + 8 * v33 + 32);
        }

        v35 = v34;
        v36 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        sub_226C926DC(v34, &v46);

        if (v47)
        {
          sub_226AC484C(&v46, v48);
          sub_226AC484C(v48, &v46);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_226BBBCA4(0, v16[2] + 1, 1, v16);
          }

          v38 = v16[2];
          v37 = v16[3];
          if (v38 >= v37 >> 1)
          {
            v16 = sub_226BBBCA4((v37 > 1), v38 + 1, 1, v16);
          }

          v16[2] = v38 + 1;
          sub_226AC484C(&v46, &v16[5 * v38 + 4]);
        }

        ++v33;
        if (v36 == i)
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

LABEL_21:
  }

  return v16;
}

void *sub_226C909B0()
{
  v2 = v1;
  v3 = sub_226D6707C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D69F6C();
  v34 = sub_226D69F1C();
  v39 = MEMORY[0x277D84F90];
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v35 = v0;
  sub_226D68D6C();
  v11 = sub_226D6706C();
  (*(v4 + 8))(v7, v3);
  v12 = 0x277CCA000uLL;
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_226D71F30;
    sub_226B2A4F4();
    *(v13 + 32) = sub_226D6E91C();
    *(v13 + 40) = sub_226D6E91C();
    *(v13 + 48) = sub_226D6E91C();
    v14 = sub_226D6E5CC();

    v15 = [objc_opt_self() andPredicateWithSubpredicates_];

    v16 = v15;
    MEMORY[0x22AA8A610]();
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v32 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_226D6E61C();
    }

    sub_226D6E65C();
  }

  sub_226B2A4F4();
  sub_226D6E91C();
  MEMORY[0x22AA8A610]();
  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    sub_226D6E65C();
    v17 = v39;
    v18 = sub_226D6E5CC();
    v19 = *(v12 + 2336);
    v20 = [objc_opt_self() orPredicateWithSubpredicates_];

    v21 = v34;
    [v34 setPredicate_];

    [v21 setReturnsObjectsAsFaults_];
    v22 = sub_226D6E5CC();
    [v21 setRelationshipKeyPathsForPrefetching_];

    v23 = sub_226D6EBBC();
    if (v2)
    {

      return v8;
    }

    v24 = v23;
    v25 = v23 >> 62 ? sub_226D6EDFC() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33[0] = 0;
    v33[1] = v17;
    swift_retain_n();
    if (!v25)
    {
      break;
    }

    v12 = 0;
    v2 = v24 & 0xFFFFFFFFFFFFFF8;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x22AA8AFD0](v12, v24);
      }

      else
      {
        if (v12 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v26 = *(v24 + 8 * v12 + 32);
      }

      v27 = v26;
      v28 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      sub_226C92CD4(v26, &v36);

      if (v37)
      {
        sub_226AC484C(&v36, v38);
        sub_226AC484C(v38, &v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_226BBBCA4(0, v8[2] + 1, 1, v8);
        }

        v30 = v8[2];
        v29 = v8[3];
        if (v30 >= v29 >> 1)
        {
          v8 = sub_226BBBCA4((v29 > 1), v30 + 1, 1, v8);
        }

        v8[2] = v30 + 1;
        sub_226AC484C(&v36, &v8[5 * v30 + 4]);
      }

      ++v12;
      if (v28 == v25)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    sub_226D6E61C();
  }

  v8 = MEMORY[0x277D84F90];
LABEL_25:

  return v8;
}

void *sub_226C90EF0(uint64_t a1)
{
  v3 = v1;
  v5 = sub_226D6707C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 32);
  v11 = *(v1 + 24);
  sub_226D68D6C();
  LOBYTE(v11) = sub_226D6706C();
  (*(v6 + 8))(v9, v5);
  if ((v11 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v47 = v3;
  v54 = sub_226D6751C();
  v55 = sub_226D6748C();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v12 = swift_allocObject();
  v53 = a1;
  v13 = v12;
  v52 = xmmword_226D7A3E0;
  *(v12 + 16) = xmmword_226D7A3E0;
  v14 = swift_allocObject();
  v51 = xmmword_226D71F30;
  *(v14 + 16) = xmmword_226D71F30;
  sub_226B2A4F4();
  v56 = v2;
  *(v14 + 32) = sub_226D6E91C();
  *(v14 + 40) = sub_226D6E91C();
  *(v14 + 48) = sub_226D6E91C();
  v15 = sub_226D6E5CC();

  v16 = objc_opt_self();
  v17 = [v16 andPredicateWithSubpredicates_];

  v13[4] = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = v51;
  *(v18 + 32) = sub_226D6E91C();
  v50 = "icUpdatesEnabled = TRUE";
  *(v18 + 40) = sub_226D6E91C();
  *(v18 + 48) = sub_226D6E91C();
  v19 = sub_226D6E5CC();

  v20 = [v16 andPredicateWithSubpredicates_];

  v13[5] = v20;
  v48 = v13;
  v21 = swift_allocObject();
  v51 = xmmword_226D72B90;
  *(v21 + 16) = xmmword_226D72B90;
  *(v21 + 32) = sub_226D6E91C();
  *(v21 + 40) = sub_226D6E91C();
  v49 = "n.isMaybeRegistered = TRUE";
  *(v21 + 48) = sub_226D6E91C();
  *(v21 + 56) = sub_226D6E91C();
  v22 = sub_226D6E5CC();

  v23 = [v16 andPredicateWithSubpredicates_];

  v13[6] = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v51;
  *(v24 + 32) = sub_226D6E91C();
  *(v24 + 40) = sub_226D6E91C();
  *(v24 + 48) = sub_226D6E91C();
  *(v24 + 56) = sub_226D6E91C();
  v25 = sub_226D6E5CC();

  v26 = [v16 andPredicateWithSubpredicates_];

  v27 = v48;
  v48[7] = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = v52;
  *(v28 + 32) = sub_226D6E91C();
  *(v28 + 40) = sub_226D6E91C();
  v29 = v55;
  *(v28 + 48) = sub_226D6E91C();
  *(v28 + 56) = sub_226D6E91C();
  *(v28 + 64) = sub_226D6E91C();
  v30 = sub_226D6E5CC();

  v31 = [v16 andPredicateWithSubpredicates_];

  v27[8] = v31;
  v32 = sub_226D6E5CC();

  v33 = [v16 orPredicateWithSubpredicates_];

  [v29 setPredicate_];
  [v29 setReturnsObjectsAsFaults_];
  v34 = sub_226D6E5CC();
  [v29 setRelationshipKeyPathsForPrefetching_];

  v35 = v56;
  v36 = sub_226D6EBBC();
  v37 = v35;
  if (v35)
  {
  }

  else
  {
    v38 = v36;
    if (v36 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
    {
      v56 = v37;
      swift_retain_n();
      if (!i)
      {
        break;
      }

      v40 = 0;
      v37 = v38 & 0xFFFFFFFFFFFFFF8;
      v31 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v41 = MEMORY[0x22AA8AFD0](v40, v38);
        }

        else
        {
          if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v41 = *(v38 + 8 * v40 + 32);
        }

        v42 = v41;
        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        sub_226C933B8(v41, &v57);

        if (v58)
        {
          sub_226AC484C(&v57, v59);
          sub_226AC484C(v59, &v57);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_226BBBCA4(0, v31[2] + 1, 1, v31);
          }

          v45 = v31[2];
          v44 = v31[3];
          if (v45 >= v44 >> 1)
          {
            v31 = sub_226BBBCA4((v44 > 1), v45 + 1, 1, v31);
          }

          v31[2] = v45 + 1;
          sub_226AC484C(&v57, &v31[5 * v45 + 4]);
        }

        ++v40;
        if (v43 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    v31 = MEMORY[0x277D84F90];
LABEL_22:
  }

  return v31;
}

void *sub_226C916E8()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v70 - v5;
  v74 = sub_226D6D1AC();
  v7 = *(v74 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v74);
  v90 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6707C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 24);
  v16 = *(v0 + 32);
  v70 = v0;
  sub_226D68D6C();
  v17 = sub_226D6706C();
  (*(v11 + 8))(v14, v10);
  if ((v17 & 1) == 0)
  {
    v71 = v1;
    return MEMORY[0x277D84F90];
  }

  sub_226D6A47C();
  v18 = sub_226D6A46C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_226D71F40;
  sub_226B2A4F4();
  *(v19 + 32) = sub_226D6E91C();
  *(v19 + 40) = sub_226D6E91C();
  v20 = sub_226D6E5CC();

  v21 = [objc_opt_self() orPredicateWithSubpredicates_];

  [v18 setPredicate_];
  [v18 setReturnsObjectsAsFaults_];
  v22 = sub_226D6E5CC();
  [v18 setRelationshipKeyPathsForPrefetching_];

  v23 = sub_226D6EBBC();
  if (v1)
  {

    return v2;
  }

  v24 = v23;
  if (v23 >> 62)
  {
LABEL_34:
    v25 = sub_226D6EDFC();
  }

  else
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v71 = 0;
  swift_retain_n();
  if (!v25)
  {
    v2 = MEMORY[0x277D84F90];
LABEL_30:

    return v2;
  }

  v26 = 0;
  v76 = v24 & 0xFFFFFFFFFFFFFF8;
  v77 = v24 & 0xC000000000000001;
  v73 = v7 + 4;
  v2 = MEMORY[0x277D84F90];
  v75 = v25;
  v72 = v24;
  while (1)
  {
    if (v77)
    {
      v27 = MEMORY[0x22AA8AFD0](v26, v24);
    }

    else
    {
      if (v26 >= *(v76 + 16))
      {
        goto LABEL_33;
      }

      v27 = *(v24 + 8 * v26 + 32);
    }

    v7 = v27;
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v29 = [v27 order];
    if (!v29)
    {
      break;
    }

    v30 = v29;
    v31 = [v29 effectiveAutomaticUpdatesEnabled];

    if (!v31)
    {
      break;
    }

    v88 = 0;
    v86 = 0u;
    v87 = 0u;
LABEL_23:

    v67 = v75;
    if (*(&v87 + 1))
    {
      sub_226AC484C(&v86, v89);
      sub_226AC484C(v89, &v86);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_226BBBCA4(0, v2[2] + 1, 1, v2);
      }

      v69 = v2[2];
      v68 = v2[3];
      v7 = (v69 + 1);
      if (v69 >= v68 >> 1)
      {
        v2 = sub_226BBBCA4((v68 > 1), v69 + 1, 1, v2);
      }

      v2[2] = v7;
      sub_226AC484C(&v86, &v2[5 * v69 + 4]);
    }

    ++v26;
    if (v28 == v67)
    {
      goto LABEL_30;
    }
  }

  v85 = v2;
  v32 = v18;
  result = [v7 orderWebService];
  if (result)
  {
    v34 = result;
    v35 = [result baseURL];

    sub_226D6D14C();
    v36 = [v7 deviceLibraryIdentifier];
    v37 = sub_226D6E39C();
    v84 = v38;

    v39 = [v7 orderTypeIdentifier];
    v40 = sub_226D6E39C();
    v82 = v41;
    v83 = v40;

    v42 = [v7 orderIdentifier];
    v43 = sub_226D6E39C();
    v80 = v44;
    v81 = v43;

    v45 = [v7 authenticationToken];
    v46 = sub_226D6E39C();
    v78 = v47;
    v79 = v46;

    v48 = [v7 requestAttemptCount];
    v49 = [v7 lastRequestAttemptDate];
    if (v49)
    {
      v50 = v49;
      sub_226D6D45C();

      v51 = 0;
    }

    else
    {
      v51 = 1;
    }

    v52 = sub_226D6D4AC();
    (*(*(v52 - 8) + 56))(v6, v51, 1, v52);
    v53 = type metadata accessor for OrderWebServiceUnregisterTask();
    *(&v87 + 1) = v53;
    v88 = sub_226C94010(&qword_27D7A8908, type metadata accessor for OrderWebServiceUnregisterTask);
    v54 = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v86);
    (*v73)(boxed_opaque_existential_1, v90, v74);
    v56 = (boxed_opaque_existential_1 + v53[5]);
    v58 = v83;
    v57 = v84;
    *v56 = v37;
    v56[1] = v57;
    v59 = (boxed_opaque_existential_1 + v53[6]);
    v60 = v81;
    v61 = v82;
    *v59 = v58;
    v59[1] = v61;
    v62 = (boxed_opaque_existential_1 + v53[7]);
    *v62 = v60;
    v63 = v79;
    v62[1] = v80;
    v64 = (boxed_opaque_existential_1 + v53[8]);
    v65 = v78;
    *v64 = v63;
    v64[1] = v65;
    *(boxed_opaque_existential_1 + v53[9]) = v48;
    v66 = boxed_opaque_existential_1 + v53[10];
    v6 = v54;
    sub_226B72784(v54, v66);
    v18 = v32;
    v24 = v72;
    v2 = v85;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

unint64_t sub_226C91EA4()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v29 - v6;
  v8 = sub_226D6B3BC();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6C8EC();
  v13 = sub_226D6C89C();
  [v13 setReturnsObjectsAsFaults_];
  result = sub_226D6EBBC();
  v15 = v1;
  if (v1)
  {

    return v2;
  }

  v30 = v13;
  if (result >> 62)
  {
    goto LABEL_21;
  }

  v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  v17 = v30;
  if (!v16)
  {
LABEL_22:

    return MEMORY[0x277D84F90];
  }

LABEL_5:
  v35 = result;
  v29[1] = v15;
  v33 = v8;
  v39 = MEMORY[0x277D84F90];
  v29[2] = v3;

  v15 = &v39;
  result = sub_226AE28FC(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v2 = v39;
    v34 = v35 & 0xC000000000000001;
    v31 = v35 & 0xFFFFFFFFFFFFFF8;
    v32 = v16;
    v8 = (v9 + 32);
    while (1)
    {
      if (v34)
      {
        v19 = MEMORY[0x22AA8AFD0](v18, v35);
      }

      else
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v28 = result;
          v16 = sub_226D6EDFC();
          result = v28;
          v17 = v30;
          if (!v16)
          {
            goto LABEL_22;
          }

          goto LABEL_5;
        }

        if (v18 >= *(v31 + 16))
        {
          goto LABEL_20;
        }

        v19 = *(v35 + 8 * v18 + 32);
      }

      v15 = v19;
      sub_226D6C8CC();
      v20 = [v15 registrationAttemptCount];
      v21 = [v15 lastRegistrationAttemptDate];
      if (v21)
      {
        v22 = v21;
        sub_226D6D45C();

        v23 = 0;
      }

      else
      {
        v23 = 1;
      }

      v24 = sub_226D6D4AC();
      (*(*(v24 - 8) + 56))(v7, v23, 1, v24);
      v25 = type metadata accessor for PrismWebServiceRegisterTransactionTask();
      v37 = v25;
      v38 = sub_226C94010(&qword_27D7A8900, type metadata accessor for PrismWebServiceRegisterTransactionTask);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
      (*v8)(boxed_opaque_existential_1, v12, v33);
      *(boxed_opaque_existential_1 + *(v25 + 20)) = v20;
      sub_226B72784(v7, boxed_opaque_existential_1 + *(v25 + 24));

      v39 = v2;
      v3 = v2[2];
      v27 = v2[3];
      v9 = v3 + 1;
      if (v3 >= v27 >> 1)
      {
        v15 = &v39;
        sub_226AE28FC((v27 > 1), v3 + 1, 1);
        v2 = v39;
      }

      ++v18;
      v2[2] = v9;
      result = sub_226AC484C(&v36, &v2[5 * v3 + 4]);
      if (v32 == v18)
      {

        return v2;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_226C922A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v51 - v6;
  v8 = sub_226D6D1AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D6D4AC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D46C();
  v18 = sub_226D6AF8C();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v56 = v8;
    result = [a1 orderWebService];
    if (result)
    {
      v20 = result;
      v21 = [result baseURL];

      sub_226D6D14C();
      v22 = [a1 orderTypeIdentifier];
      v23 = sub_226D6E39C();
      v54 = v24;
      v55 = v23;

      v25 = [a1 orderIdentifier];
      v26 = sub_226D6E39C();
      v52 = v27;
      v53 = v26;

      v28 = [a1 authenticationToken];
      v29 = sub_226D6E39C();
      v31 = v30;

      v32 = [a1 requestAttemptCount];
      v33 = [a1 lastRequestAttemptDate];
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

      (*(v14 + 56))(v7, v35, 1, v13);
      PendingApplePayOrderTask = type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask();
      a2[3] = PendingApplePayOrderTask;
      a2[4] = sub_226C94010(&qword_27D7A8740, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      (*(v9 + 32))(boxed_opaque_existential_1, v12, v56);
      v46 = (boxed_opaque_existential_1 + PendingApplePayOrderTask[5]);
      v47 = v54;
      *v46 = v55;
      v46[1] = v47;
      v48 = (boxed_opaque_existential_1 + PendingApplePayOrderTask[6]);
      v49 = v52;
      *v48 = v53;
      v48[1] = v49;
      v50 = (boxed_opaque_existential_1 + PendingApplePayOrderTask[7]);
      *v50 = v29;
      v50[1] = v31;
      *(boxed_opaque_existential_1 + PendingApplePayOrderTask[8]) = v32;
      return sub_226B72784(v7, boxed_opaque_existential_1 + PendingApplePayOrderTask[9]);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v36 = [a1 orderTypeIdentifier];
    v37 = sub_226D6E39C();
    v39 = v38;

    v40 = [a1 orderIdentifier];
    v41 = sub_226D6E39C();
    v43 = v42;

    a2[3] = &type metadata for OrderWebServiceDeletePendingApplePayOrderTask;
    a2[4] = sub_226C5E860();
    result = swift_allocObject();
    *a2 = result;
    result[2] = v37;
    result[3] = v39;
    result[4] = v41;
    result[5] = v43;
  }

  return result;
}

unint64_t sub_226C926DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TokenBucket.State();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  v15 = [a1 countOfOrdersWithEffectiveAutomaticUpdatesEnabled];
  result = [a1 hasPushToken];
  if (v15 < 1)
  {
    if (result)
    {
      v22 = [a1 orderTypeIdentifier];
      v23 = sub_226D6E39C();
      v25 = v24;

      *(a2 + 24) = &type metadata for OrderWebServiceInvalidateTokenTask;
      result = sub_226C82888();
      *(a2 + 32) = result;
      *a2 = v23;
      *(a2 + 8) = v25;
      return result;
    }

    goto LABEL_8;
  }

  if (result)
  {
    v17 = [a1 updateSequenceNumber];
    result = [a1 propagateUpdateSequenceNumber];
    if (v17 != result)
    {
      v18 = [a1 updateTokenCount];
      v19 = [a1 updateTokenRefillDate];
      if (v19)
      {
        v20 = v19;
        sub_226D6D45C();

        v21 = sub_226D6D4AC();
        (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
      }

      else
      {
        v21 = sub_226D6D4AC();
        (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
      }

      v37 = *(v4 + 20);
      sub_226D6D4AC();
      result = (*(*(v21 - 8) + 56))(&v7[v37], 1, 1, v21);
      if ((v18 & 0x80000000) != 0)
      {
        __break(1u);
      }

      else
      {
        *v7 = v18;
        sub_226B3E298(v12, &v7[v37]);
        v38 = [a1 orderTypeIdentifier];
        v39 = sub_226D6E39C();
        v41 = v40;

        v42 = [a1 updateSequenceNumber];
        updated = type metadata accessor for OrderWebServicePropagateUpdateTask();
        *(a2 + 24) = updated;
        *(a2 + 32) = sub_226C94010(&qword_27D7A8928, type metadata accessor for OrderWebServicePropagateUpdateTask);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
        *boxed_opaque_existential_1 = v39;
        boxed_opaque_existential_1[1] = v41;
        boxed_opaque_existential_1[2] = v42;
        return sub_226C93FA8(v7, boxed_opaque_existential_1 + *(updated + 24), type metadata accessor for TokenBucket.State);
      }

      return result;
    }

LABEL_8:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v26 = [a1 orderTypeIdentifier];
  v27 = sub_226D6E39C();
  v29 = v28;

  v30 = [a1 requestTokenAttemptCount];
  v31 = [a1 lastRequestTokenAttemptDate];
  if (v31)
  {
    v32 = v31;
    sub_226D6D45C();

    v33 = sub_226D6D4AC();
    (*(*(v33 - 8) + 56))(v14, 0, 1, v33);
  }

  else
  {
    v34 = sub_226D6D4AC();
    (*(*(v34 - 8) + 56))(v14, 1, 1, v34);
  }

  v35 = type metadata accessor for OrderWebServiceRequestTokenTask();
  *(a2 + 24) = v35;
  *(a2 + 32) = sub_226C94010(&qword_27D7A8920, type metadata accessor for OrderWebServiceRequestTokenTask);
  v36 = __swift_allocate_boxed_opaque_existential_1(a2);
  *v36 = v27;
  v36[1] = v29;
  v36[2] = v30;
  return sub_226B72784(v14, v36 + *(v35 + 24));
}

BOOL sub_226C92BA4(void *a1)
{
  v3 = sub_226D6707C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 32);
  v9 = *(v1 + 24);
  sub_226D68D6C();
  LOBYTE(v9) = sub_226D6706C();
  (*(v4 + 8))(v7, v3);
  if ((v9 & 1) == 0 || [a1 countOfOrdersWithEffectiveAutomaticUpdatesEnabled] < 1)
  {
    return 0;
  }

  v10 = [a1 updateSequenceNumber];
  return v10 != [a1 fetchChangesSequenceNumber];
}

void sub_226C92CD4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v62 - v9;
  v11 = sub_226D6D1AC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v62 - v17;
  if ([a1 requestAttemptCount] > 19)
  {
    goto LABEL_15;
  }

  if (sub_226C92BA4(a1))
  {
    v19 = [a1 orderType];
    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = v19;
    v21 = [v19 deviceLibraryIdentifier];
    if (v21)
    {
      v22 = v21;
      v69 = sub_226D6E39C();
      v24 = v23;

      v25 = [v20 pushToken];
      if (v25)
      {
        v68 = v12;
        v26 = v25;
        v27 = sub_226D6D21C();
        v66 = v28;
        v67 = v27;

        v29 = [a1 baseURL];
        sub_226D6D14C();

        v30 = [a1 orderTypeIdentifier];
        v31 = sub_226D6E39C();
        v64 = v32;
        v65 = v31;

        v63 = [a1 updateSequenceNumber];
        v33 = [a1 lastModifiedValue];
        if (v33)
        {
          v34 = v33;
          v35 = sub_226D6E39C();
          v37 = v36;
        }

        else
        {
          v35 = 0;
          v37 = 0;
        }

        v51 = [a1 requestAttemptCount];
        v52 = [a1 lastRequestAttemptDate];
        if (v52)
        {
          v53 = v52;
          sub_226D6D45C();

          v54 = 0;
        }

        else
        {
          v54 = 1;
        }

        v55 = sub_226D6D4AC();
        (*(*(v55 - 8) + 56))(v10, v54, 1, v55);
        ChangesTask = type metadata accessor for OrderWebServiceFetchChangesTask();
        *(a2 + 24) = ChangesTask;
        *(a2 + 32) = sub_226C94010(&qword_27D7A86B8, type metadata accessor for OrderWebServiceFetchChangesTask);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
        (*(v68 + 32))(boxed_opaque_existential_1, v18, v11);
        v58 = (boxed_opaque_existential_1 + ChangesTask[5]);
        *v58 = v69;
        v58[1] = v24;
        v59 = (boxed_opaque_existential_1 + ChangesTask[6]);
        v60 = v64;
        *v59 = v65;
        v59[1] = v60;
        *(boxed_opaque_existential_1 + ChangesTask[7]) = v63;
        v61 = (boxed_opaque_existential_1 + ChangesTask[8]);
        *v61 = v35;
        v61[1] = v37;
        *(boxed_opaque_existential_1 + ChangesTask[9]) = v51;
        sub_226B72784(v10, boxed_opaque_existential_1 + ChangesTask[10]);

        sub_226B11B98(v67, v66);
        return;
      }
    }

    else
    {
    }

LABEL_15:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  if ([a1 countOfLogEntries] < 1)
  {
    goto LABEL_15;
  }

  v38 = [a1 baseURL];
  sub_226D6D14C();

  v39 = [a1 orderTypeIdentifier];
  v40 = sub_226D6E39C();
  v42 = v41;

  v43 = [a1 requestAttemptCount];
  v44 = [a1 lastRequestAttemptDate];
  if (v44)
  {
    v45 = v44;
    sub_226D6D45C();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v47 = sub_226D6D4AC();
  (*(*(v47 - 8) + 56))(v8, v46, 1, v47);
  v48 = type metadata accessor for OrderWebServiceLogTask();
  *(a2 + 24) = v48;
  *(a2 + 32) = sub_226C94010(&qword_27D7A88C8, type metadata accessor for OrderWebServiceLogTask);
  v49 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(v12 + 32))(v49, v16, v11);
  v50 = (v49 + v48[5]);
  *v50 = v40;
  v50[1] = v42;
  *(v49 + v48[6]) = v43;
  sub_226B72784(v8, v49 + v48[7]);
}

uint64_t sub_226C9327C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 orderWebService];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 authenticationToken];
    if (v6)
    {
      v7 = v6;
      v8 = sub_226D6E39C();
      v10 = v9;

      v11 = [v5 baseURL];
      sub_226D6D14C();

      v12 = type metadata accessor for OrderWebServicePendingTaskSource.AutomaticUpdatesInfo();
      v13 = (a2 + *(v12 + 20));
      *v13 = v8;
      v13[1] = v10;
      v14 = *(*(v12 - 8) + 56);
      v15 = v12;
      v16 = a2;
      v17 = 0;
      goto LABEL_6;
    }
  }

  v18 = type metadata accessor for OrderWebServicePendingTaskSource.AutomaticUpdatesInfo();
  v14 = *(*(v18 - 8) + 56);
  v15 = v18;
  v16 = a2;
  v17 = 1;
LABEL_6:

  return v14(v16, v17, 1, v15);
}

id sub_226C933B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v95 - v9;
  v11 = sub_226D6D1AC();
  v107 = *(v11 - 8);
  v108 = v11;
  v12 = *(v107 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v95 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8910, &qword_226D7A458);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v95 - v20;
  v22 = type metadata accessor for OrderWebServicePendingTaskSource.AutomaticUpdatesInfo();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 effectiveAutomaticUpdatesEnabled];
  if (!result)
  {
    goto LABEL_17;
  }

  sub_226C9327C(a1, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    result = sub_226C93D78(v21);
LABEL_14:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
    return result;
  }

  sub_226C93FA8(v21, v26, type metadata accessor for OrderWebServicePendingTaskSource.AutomaticUpdatesInfo);
  result = [a1 orderType];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v28 = result;
  v29 = [result deviceLibraryIdentifier];
  if (!v29)
  {

LABEL_13:
    result = sub_226C93DE0(v26);
    goto LABEL_14;
  }

  v103 = v8;
  v30 = v29;
  v104 = sub_226D6E39C();
  v32 = v31;

  v33 = [v28 pushToken];
  if (!v33)
  {

    goto LABEL_13;
  }

  v34 = v33;
  v105 = v32;
  v35 = sub_226D6D21C();
  v106 = v36;

  if ([a1 requestAttemptCount] > 19)
  {
    sub_226C93DE0(v26);

    v50 = v35;
    v51 = v106;
LABEL_16:
    result = sub_226B11B98(v50, v51);
LABEL_17:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v37 = sub_226C93E3C(a1, v104, v105);
  v102 = v35;
  if (v37)
  {
    (*(v107 + 16))(v17, v26, v108);

    v38 = [a1 orderTypeIdentifier];
    v103 = sub_226D6E39C();
    v101 = v39;

    v40 = [a1 orderIdentifier];
    v41 = sub_226D6E39C();
    v99 = v42;
    v100 = v41;

    v43 = &v26[*(v22 + 20)];
    v44 = *(v43 + 1);
    v98 = *v43;

    v45 = v106;
    sub_226B11B44(v35, v106);
    v46 = [a1 requestAttemptCount];
    v47 = [a1 lastRequestAttemptDate];
    if (v47)
    {
      v48 = v47;
      sub_226D6D45C();

      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    sub_226C93DE0(v26);
    v65 = sub_226D6D4AC();
    (*(*(v65 - 8) + 56))(v10, v49, 1, v65);
    v66 = type metadata accessor for OrderWebServiceRegisterTask();
    *(a2 + 24) = v66;
    *(a2 + 32) = sub_226C94010(&qword_27D7A8918, type metadata accessor for OrderWebServiceRegisterTask);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    (*(v107 + 32))(boxed_opaque_existential_1, v17, v108);
    v68 = (boxed_opaque_existential_1 + v66[5]);
    v69 = v105;
    *v68 = v104;
    v68[1] = v69;
    v70 = (boxed_opaque_existential_1 + v66[6]);
    v71 = v102;
    v72 = v100;
    v73 = v101;
    *v70 = v103;
    v70[1] = v73;
    v74 = (boxed_opaque_existential_1 + v66[7]);
    *v74 = v72;
    v75 = v98;
    v74[1] = v99;
    v76 = (boxed_opaque_existential_1 + v66[8]);
    *v76 = v75;
    v76[1] = v44;
    v77 = (boxed_opaque_existential_1 + v66[9]);
    *v77 = v71;
    v77[1] = v45;
    *(boxed_opaque_existential_1 + v66[10]) = v46;
    sub_226B72784(v10, boxed_opaque_existential_1 + v66[11]);

    return sub_226B11B98(v71, v45);
  }

  v52 = v106;
  v53 = [a1 updateSequenceNumber];
  if (v53 == [a1 fetchSequenceNumber])
  {
    sub_226C93DE0(v26);

    v50 = v102;
    v51 = v52;
    goto LABEL_16;
  }

  (*(v107 + 16))(v15, v26, v108);
  v54 = [a1 orderTypeIdentifier];
  v104 = sub_226D6E39C();
  v101 = v55;

  v56 = [a1 orderIdentifier];
  v57 = sub_226D6E39C();
  v99 = v58;
  v100 = v57;

  v59 = &v26[*(v22 + 20)];
  v60 = *(v59 + 1);
  v98 = *v59;

  v97 = [a1 updateSequenceNumber];
  v61 = [a1 lastModifiedValue];
  if (v61)
  {
    v62 = v61;
    v63 = sub_226D6E39C();
    v95 = v64;
    v96 = v63;
  }

  else
  {
    v95 = 0;
    v96 = 0;
  }

  v78 = v103;
  v79 = [a1 requestAttemptCount];
  v80 = [a1 lastRequestAttemptDate];
  if (v80)
  {
    v81 = v80;
    sub_226D6D45C();

    sub_226B11B98(v102, v106);

    sub_226C93DE0(v26);
    v82 = 0;
  }

  else
  {
    sub_226C93DE0(v26);

    sub_226B11B98(v102, v106);
    v82 = 1;
  }

  v83 = sub_226D6D4AC();
  (*(*(v83 - 8) + 56))(v78, v82, 1, v83);
  Task = type metadata accessor for OrderWebServiceFetchTask();
  *(a2 + 24) = Task;
  *(a2 + 32) = sub_226C94010(&qword_27D7A87C0, type metadata accessor for OrderWebServiceFetchTask);
  v85 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(v107 + 32))(v85, v15, v108);
  v86 = (v85 + Task[5]);
  v87 = v100;
  v88 = v101;
  *v86 = v104;
  v86[1] = v88;
  v89 = (v85 + Task[6]);
  *v89 = v87;
  v90 = v98;
  v89[1] = v99;
  v91 = (v85 + Task[7]);
  *v91 = v90;
  v91[1] = v60;
  v92 = v96;
  *(v85 + Task[8]) = v97;
  v93 = (v85 + Task[9]);
  v94 = v95;
  *v93 = v92;
  v93[1] = v94;
  *(v85 + Task[10]) = v79;
  return sub_226B72784(v78, v85 + Task[11]);
}

uint64_t sub_226C93C24()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OrderWebServicePendingTaskSource.AutomaticUpdatesInfo()
{
  result = qword_27D7A8930;
  if (!qword_27D7A8930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226C93D78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8910, &qword_226D7A458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226C93DE0(uint64_t a1)
{
  v2 = type metadata accessor for OrderWebServicePendingTaskSource.AutomaticUpdatesInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_226C93E3C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 orderRegistration];
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  if ([v6 isMaybeRegistered])
  {
    goto LABEL_3;
  }

  v9 = [v7 deviceLibraryIdentifier];
  v10 = sub_226D6E39C();
  v12 = v11;

  if (v10 == a2 && v12 == a3)
  {
  }

  else
  {
    v14 = sub_226D6F21C();

    if ((v14 & 1) == 0)
    {
LABEL_3:

      return 1;
    }
  }

  v15 = [a1 orderWebService];
  v16 = [v7 orderWebService];
  v17 = v16;
  if (!v15)
  {

    if (v17)
    {

      return 1;
    }

    return 0;
  }

  if (!v16)
  {

    goto LABEL_3;
  }

  sub_226D69F6C();
  v18 = sub_226D6EC3C();

  return (v18 & 1) == 0;
}

uint64_t sub_226C93FA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226C94010(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226C94080()
{
  result = sub_226D6D1AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_226C940F4()
{
  v1 = v0;
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_1((v1 + 112), v2);
  v4 = *(*(v3 + 8) + 8);
  sub_226D6BAAC();
  v5 = sub_226D676AC();

  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_226C97D4C;
  *(v7 + 24) = v6;
  v11[4] = sub_226B1BA20;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_226CAD254;
  v11[3] = &block_descriptor_15;
  v8 = _Block_copy(v11);

  v9 = v5;

  [v9 performBlockAndWait_];

  _Block_release(v8);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226C94290(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v89 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7218, &unk_226D74820);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v123 = &v89 - v12;
  v13 = sub_226D6BCBC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v102 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v111 = &v89 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v89 - v20;
  v22 = sub_226D6BC9C();
  v109 = *(v22 + 16);
  if (!v109)
  {
  }

  v23 = v22;
  v116 = sub_226D69F0C();
  result = v23;
  v25 = 0;
  v26 = 0;
  v108 = v23 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v114 = v14 + 16;
  v107 = v14 + 88;
  v106 = *MEMORY[0x277CC8110];
  v110 = (v14 + 8);
  v100 = *MEMORY[0x277CC8120];
  v94 = *MEMORY[0x277CC8118];
  v96 = "dOrderNotifications";
  v101 = "externalAccountId";
  v92 = "accountMatchObject != nil";
  v91 = 0x8000000226D86610;
  v93 = "Object.fpanID MATCHES %@";
  v99 = "accountMatchObject == nil";
  v98 = "externalAccountId = nil";
  *(&v27 + 1) = 5;
  v112 = xmmword_226D71F40;
  *&v27 = 136315394;
  v95 = v27;
  v90 = xmmword_226D71F30;
  v89 = xmmword_226D70840;
  v103 = a2;
  v122 = v6;
  v119 = v11;
  v113 = v13;
  v105 = v14;
  v120 = v21;
  v104 = v23;
  while (v25 < *(result + 16))
  {
    v30 = *(v14 + 72);
    v115 = v25;
    v31 = *(v14 + 16);
    v31(v21, v108 + v30 * v25, v13);
    v32 = sub_226D6BD1C();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v121 = sub_226D6BD0C();
    v117 = sub_226D69DDC();
    v35 = v111;
    v31(v111, v21, v13);
    v36 = (*(v14 + 88))(v35, v13);
    if (v36 == v106)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      v37 = swift_allocObject();
      *(v37 + 16) = v112;
      v38 = swift_allocObject();
      *(v38 + 16) = v112;
      sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
      *(v38 + 32) = sub_226D6E91C();
      *(v38 + 40) = sub_226D6E91C();
      v39 = sub_226D6E5CC();

      v40 = objc_opt_self();
      v41 = [v40 orPredicateWithSubpredicates_];

      *(v37 + 32) = v41;
      *(v37 + 40) = sub_226D6E91C();
      v42 = sub_226D6E5CC();

      v43 = [v40 andPredicateWithSubpredicates_];
LABEL_13:
      v48 = v43;

      goto LABEL_14;
    }

    if (v36 == v100)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      v44 = swift_allocObject();
      *(v44 + 16) = v112;
      sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
      *(v44 + 32) = sub_226D6E91C();
      *(v44 + 40) = sub_226D6E91C();
      v42 = sub_226D6E5CC();

      v43 = [objc_opt_self() andPredicateWithSubpredicates_];
      goto LABEL_13;
    }

    if (v36 == v94)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      v45 = swift_allocObject();
      *(v45 + 16) = v90;
      sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
      *(v45 + 32) = sub_226D6E91C();
      *(v45 + 40) = sub_226D6E91C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v46 = swift_allocObject();
      *(v46 + 16) = v89;
      *(v46 + 56) = MEMORY[0x277D837D0];
      *(v46 + 64) = sub_226B16404();
      v47 = v91;
      *(v46 + 32) = 0xD000000000000011;
      *(v46 + 40) = v47;
      *(v45 + 48) = sub_226D6E91C();
      v42 = sub_226D6E5CC();

      v43 = [objc_opt_self() andPredicateWithSubpredicates_];
      goto LABEL_13;
    }

    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v48 = sub_226D6E91C();
    (*v110)(v111, v13);
LABEL_14:
    [v117 setPredicate_];

    v49 = sub_226D6EBBC();
    if (v26)
    {
      v50 = v102;
      if (qword_28105F5D8 != -1)
      {
        swift_once();
      }

      v51 = sub_226D6E07C();
      __swift_project_value_buffer(v51, qword_28105F5E0);
      v21 = v120;
      v13 = v113;
      v31(v50, v120, v113);
      v52 = v26;
      v53 = v50;
      v54 = sub_226D6E05C();
      v55 = sub_226D6E9CC();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v124 = v118;
        *v56 = v95;
        v58 = sub_226D6BCAC();
        v60 = v59;
        v61 = *v110;
        (*v110)(v53, v113);
        v62 = sub_226AC4530(v58, v60, &v124);

        *(v56 + 4) = v62;
        *(v56 + 12) = 2112;
        v63 = v26;
        v64 = _swift_stdlib_bridgeErrorToNSError();
        *(v56 + 14) = v64;
        *v57 = v64;
        _os_log_impl(&dword_226AB4000, v54, v55, "Failed to load accounts for account match issue reporting: %s: %@", v56, 0x16u);
        sub_226AC47B0(v57, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v57, -1, -1);
        v65 = v118;
        __swift_destroy_boxed_opaque_existential_0Tm(v118);
        v21 = v120;
        MEMORY[0x22AA8BEE0](v65, -1, -1);
        v13 = v113;
        MEMORY[0x22AA8BEE0](v56, -1, -1);

        v61(v21, v13);
        v11 = v119;
      }

      else
      {

        v28 = *v110;
        (*v110)(v50, v13);
        v28(v21, v13);
      }

      v26 = 0;
      v14 = v105;
      result = v104;
      v29 = v115;
      goto LABEL_5;
    }

    v66 = v49;
    if (!(v49 >> 62))
    {
      v67 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v67)
      {
        goto LABEL_41;
      }

      goto LABEL_21;
    }

    v88 = v49;
    if (sub_226D6EDFC() < 1)
    {
LABEL_41:
      v21 = v120;
      v13 = v113;
      (*v110)(v120, v113);

      v14 = v105;
      result = v104;
      v29 = v115;
      goto LABEL_5;
    }

    v97 = 0;
    result = sub_226D6EDFC();
    v66 = v88;
    if (result)
    {
      v67 = result;
      if (result < 1)
      {
        goto LABEL_47;
      }

      v26 = v97;
LABEL_21:
      v97 = v26;
      v68 = 0;
      v118 = (v66 & 0xC000000000000001);
      v69 = v66;
      do
      {
        if (v118)
        {
          v75 = MEMORY[0x22AA8AFD0](v68);
        }

        else
        {
          v75 = *(v66 + 8 * v68 + 32);
        }

        v76 = v75;
        v77 = [v75 institutionId];
        sub_226D6E39C();

        sub_226D69E5C();
        [v76 isAccountMismatched];
        v78 = [v76 accountMatchObject];
        if (v78)
        {
          v79 = v78;
          sub_226D68E3C();

          v80 = 0;
        }

        else
        {
          v80 = 1;
        }

        v81 = sub_226D68CBC();
        v82 = 1;
        (*(*(v81 - 8) + 56))(v11, v80, 1, v81);
        v83 = [v76 accountMatchObject];
        if (v83)
        {
          v84 = v83;
          v85 = [v83 lastUpdatedAt];

          v71 = v122;
          sub_226D6D45C();

          v82 = 0;
        }

        else
        {
          v71 = v122;
        }

        v86 = sub_226D6D4AC();
        (*(*(v86 - 8) + 56))(v71, v82, 1, v86);
        v87 = [v76 accountMatchObject];
        if (v87)
        {
          v70 = v87;
          [v87 isMismatched];

          v71 = v122;
        }

        ++v68;
        v72 = v119;
        v73 = v123;
        sub_226D6BCDC();

        v74 = v71;
        v11 = v72;
        sub_226AC47B0(v74, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226AC47B0(v72, &qword_27D7A7218, &unk_226D74820);
        sub_226AC47B0(v73, &qword_27D7A7218, &unk_226D74820);
        v66 = v69;
      }

      while (v67 != v68);
    }

    v21 = v120;
    v13 = v113;
    (*v110)(v120, v113);
    v14 = v105;
    result = v104;
    v29 = v115;
    v26 = v97;
LABEL_5:
    v25 = v29 + 1;
    if (v25 == v109)
    {
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_226C95100@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v58 = v54 - v3;
  v4 = sub_226D6CD7C();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6D6CC();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v54 - v14;
  v16 = sub_226D6D4AC();
  v64 = *(v16 - 8);
  v65 = v16;
  v17 = *(v64 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v55 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v54[1] = v54 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v57 = v54 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = v54 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8008, &unk_226D77290);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = v54 - v28;
  v30 = sub_226D6D61C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = v54 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_226D6D6DC();
  v59 = *(v35 - 8);
  v60 = v35;
  v36 = *(v59 + 64);
  MEMORY[0x28223BE20](v35);
  v38 = v54 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 104))(v34, *MEMORY[0x277CC9830], v30);
  sub_226D6D62C();
  (*(v31 + 8))(v34, v30);
  sub_226D6D64C();
  sub_226D6D6EC();
  v39 = sub_226D6D71C();
  result = (*(*(v39 - 8) + 48))(v29, 1, v39);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_226D6D6BC();
    v41 = v8[13];
    v41(v11, *MEMORY[0x277CC9968], v7);
    sub_226D6D68C();
    v42 = v8[1];
    v42(v11, v7);
    if ((*(v64 + 48))(v15, 1, v65) == 1)
    {
      (*(v59 + 8))(v38, v60);
      sub_226AC47B0(v15, &qword_27D7A8BE0, &unk_226D718F0);
      v43 = 1;
      v45 = v62;
      v44 = v63;
      v46 = v61;
    }

    else
    {
      (*(v64 + 32))(v25, v15, v65);
      v41(v11, *MEMORY[0x277CC9940], v7);
      v47 = v58;
      sub_226D6D63C();
      v42(v11, v7);
      v46 = v61;
      v45 = v62;
      if ((*(v61 + 48))(v47, 1, v62) == 1)
      {
        (*(v64 + 8))(v25, v65);
        (*(v59 + 8))(v38, v60);
        sub_226AC47B0(v47, &qword_27D7A6558, &qword_226D7CCE0);
        v43 = 1;
        v44 = v63;
      }

      else
      {
        v48 = v56;
        (*(v46 + 32))(v56, v47, v45);
        sub_226D6CD4C();
        v49 = v55;
        sub_226D6CD2C();
        sub_226D6D3DC();
        v50 = *(v64 + 8);
        v51 = v49;
        v52 = v65;
        v50(v51, v65);
        v53 = v63;
        sub_226D6CD3C();
        (*(v46 + 8))(v48, v45);
        v50(v25, v52);
        (*(v59 + 8))(v38, v60);
        v44 = v53;
        v43 = 0;
      }
    }

    return (*(v46 + 56))(v44, v43, 1, v45);
  }

  return result;
}

id sub_226C95844()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
  sub_226AE532C((v1 + 16), v27);
  v2 = v28;
  v3 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (*(v3 + 8))(&v26, v2, v3);
  v4 = BankConnectPaymentPassDataSource.paymentPasses()();

  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  v27[0] = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
  {
    v6 = MEMORY[0x277D84F90];
    if (i)
    {
      v7 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x22AA8AFD0](v7, v4);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            v15 = v27[0];
            v6 = MEMORY[0x277D84F90];
            goto LABEL_23;
          }
        }

        else
        {
          if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_40;
          }

          v8 = *(v4 + 8 * v7 + 32);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_20;
          }
        }

        v10 = v8;
        if ([v10 cardType] == 1)
        {
          v11 = [v10 isEMoneyPass] ^ 1;
        }

        else
        {
          v11 = 0;
        }

        v12 = [v10 hasAssociatedPeerPaymentAccount];
        v13 = [v10 associatedAccountServiceAccountIdentifier];

        if (v13)
        {
        }

        else if (v11 && (v12 & 1) == 0)
        {
          sub_226D6EF6C();
          v14 = *(v27[0] + 16);
          sub_226D6EF9C();
          sub_226D6EFAC();
          sub_226D6EF7C();
        }

        else
        {
        }

        ++v7;
        if (v9 == i)
        {
          goto LABEL_21;
        }
      }
    }

    v15 = MEMORY[0x277D84F90];
LABEL_23:

    v27[0] = v6;

    v4 = *(v15 + 16);
    if (!v4)
    {
      goto LABEL_44;
    }

LABEL_26:
    v16 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x22AA8AFD0](v16, v15);
      }

      else
      {
        if (v16 >= *(v15 + 16))
        {
          goto LABEL_41;
        }

        v17 = *(v15 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v20 = [v17 devicePrimaryPaymentApplication];
      if (!v20)
      {
        goto LABEL_27;
      }

      result = [v18 devicePrimaryPaymentApplication];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v22 = result;
      v23 = [result state];

      if (v23 == 1)
      {
        sub_226D6EF6C();
        v24 = *(v27[0] + 16);
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
      }

      else
      {
LABEL_27:
      }

      ++v16;
      if (v19 == v4)
      {
        v25 = v27[0];
        goto LABEL_45;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  v4 = sub_226D6EDFC();
  if (v4)
  {
    goto LABEL_26;
  }

LABEL_44:
  v25 = MEMORY[0x277D84F90];
LABEL_45:

  return v25;
}

uint64_t sub_226C95B98(unint64_t a1, uint64_t a2)
{
  v5 = sub_226D6D52C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D51C();
  v49 = v2;
  if (a1 >> 62)
  {
    v10 = sub_226D6EDFC();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
LABEL_16:
    v29 = v49;
    v30 = v49[18];
    __swift_project_boxed_opaque_existential_1(v49 + 14, v49[17]);
    v31 = *(*(v30 + 8) + 8);
    sub_226D6BAAC();
    v32 = sub_226D676AC();

    MEMORY[0x28223BE20](v33);
    *(&v44 - 6) = v32;
    *(&v44 - 5) = v29;
    *(&v44 - 4) = v11;
    *(&v44 - 3) = a2;
    *(&v44 - 2) = a1;
    *(&v44 - 1) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8760, &unk_226D79760);
    sub_226D6EB8C();

    v42 = v50;
    (*(v6 + 8))(v9, v5);
    return v42;
  }

  v50 = MEMORY[0x277D84F90];
  sub_226AE1D68(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v45 = a2;
    v46 = v6;
    v47 = v9;
    v48 = v5;
    v11 = v50;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      do
      {
        MEMORY[0x22AA8AFD0](v12, a1);
        v13 = [swift_unknownObjectRetain() primaryAccountIdentifier];
        v14 = sub_226D6E39C();
        v16 = v15;
        swift_unknownObjectRelease_n();

        v50 = v11;
        v18 = *(v11 + 16);
        v17 = *(v11 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_226AE1D68((v17 > 1), v18 + 1, 1);
          v11 = v50;
        }

        ++v12;
        *(v11 + 16) = v18 + 1;
        v19 = v11 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
      }

      while (v10 != v12);
    }

    else
    {
      v20 = (a1 + 32);
      do
      {
        v21 = *v20;
        v22 = [v21 primaryAccountIdentifier];
        v23 = sub_226D6E39C();
        v25 = v24;

        v50 = v11;
        v27 = *(v11 + 16);
        v26 = *(v11 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_226AE1D68((v26 > 1), v27 + 1, 1);
          v11 = v50;
        }

        *(v11 + 16) = v27 + 1;
        v28 = v11 + 16 * v27;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
        ++v20;
        --v10;
      }

      while (v10);
    }

    v9 = v47;
    v5 = v48;
    a2 = v45;
    v6 = v46;
    goto LABEL_16;
  }

  __break(1u);
  swift_once();
  v34 = sub_226D6E07C();
  __swift_project_value_buffer(v34, qword_28105F5E0);
  v35 = a1;
  v36 = sub_226D6E05C();
  v37 = sub_226D6E9CC();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    v40 = a1;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 4) = v41;
    *v39 = v41;
    _os_log_impl(&dword_226AB4000, v36, v37, "Failed to create payment pass events: %@", v38, 0xCu);
    sub_226AC47B0(v39, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v39, -1, -1);
    MEMORY[0x22AA8BEE0](v38, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_226C96040@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v13 = [objc_opt_self() currentQueryGenerationToken];
  v24[0] = 0;
  v14 = [a1 setQueryGenerationFromToken:v13 error:v24];

  if (v14)
  {
    v15 = v24[0];
    result = sub_226C96D28(a2);
    if (!v6)
    {
      v17 = result;
      sub_226C97148(a2, a3, a1);
      v23[2] = v17;
      v23[3] = MEMORY[0x28223BE20](v20);
      v23[4] = a5;
      v23[5] = a3;
      sub_226C419A8(sub_226C97C84, v23, a4);
      v22 = v21;

      *a6 = v22;
    }
  }

  else
  {
    v18 = v24[0];
    sub_226D6D04C();

    result = swift_willThrow();
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_226C961F8@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  v12 = [*a1 primaryAccountIdentifier];
  v13 = sub_226D6E39C();
  v15 = v14;

  v16 = sub_226D4D7A0(v13, v15, a2);
  if (!*(a3 + 16))
  {

    goto LABEL_5;
  }

  v17 = sub_226C2FDD4(v13, v15);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_5:
    v20 = 0;
    goto LABEL_6;
  }

  v20 = *(*(a3 + 56) + 8 * v17);
LABEL_6:
  v21 = _s28WeeklyTransactionsCountEventVMa();
  a6[3] = v21;
  a6[4] = sub_226C97CF4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  v23 = v21[5];
  v24 = sub_226D6D52C();
  (*(*(v24 - 8) + 16))(boxed_opaque_existential_1 + v23, a4, v24);
  v25 = v21[6];
  v26 = sub_226D6CD7C();
  (*(*(v26 - 8) + 16))(boxed_opaque_existential_1 + v25, a5, v26);
  *boxed_opaque_existential_1 = 0xD00000000000002BLL;
  boxed_opaque_existential_1[1] = 0x8000000226D86460;
  *(boxed_opaque_existential_1 + v21[7]) = v11;
  *(boxed_opaque_existential_1 + v21[8]) = v16 & 1;
  *(boxed_opaque_existential_1 + v21[9]) = v20;
  return v11;
}

void sub_226C963B4()
{
  v1 = v0;
  v45 = sub_226D6D52C();
  v44 = *(v45 - 8);
  v2 = *(v44 + 64);
  MEMORY[0x28223BE20](v45);
  v43 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s28WeeklyTransactionsCountEventVMa();
  v46 = *(v0 + *(v9 + 28));
  v10 = [v46 devicePrimaryPaymentApplication];
  v11 = v10;
  if (v10)
  {
    [v10 paymentNetworkIdentifier];
  }

  v12 = 0x6E776F6E6B6E75;
  v13 = PKPaymentNetworkNameForPaymentCredentialType();
  if (v13)
  {
    v14 = v13;
    v41 = sub_226D6E39C();
    v16 = v15;

    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v16 = 0xE700000000000000;
  v41 = 0x6E776F6E6B6E75;
  if (v11)
  {
LABEL_5:
    [v11 paymentType];
  }

LABEL_7:
  v17 = PKPaymentMethodTypeToString();
  if (v17)
  {
    v18 = v17;
    v12 = sub_226D6E39C();
    v39[0] = v19;
  }

  else
  {
    v39[0] = 0xE700000000000000;
  }

  v42 = v16;
  v39[1] = v12;
  v40 = v11;
  if (qword_27D7A5FA0 != -1)
  {
    swift_once();
  }

  v20 = qword_27D7B6200;
  v47 = v9;
  v21 = *(v9 + 24);
  sub_226D6CD4C();
  v22 = sub_226D6D3EC();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v24 = v1;
  v25 = [v20 stringFromDate_];

  if (!v25)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_226D6CD2C();
  v26 = sub_226D6D3EC();
  v23(v8, v4);
  v27 = [v20 stringFromDate_];

  if (!v27)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D7A480;
  *(inited + 32) = 0x444972657375;
  *(inited + 40) = 0xE600000000000000;
  v29 = v47;
  v30 = v24 + *(v47 + 20);
  sub_226D6D4CC();
  *(inited + 48) = sub_226D6E36C();
  *(inited + 56) = 0x444964726163;
  *(inited + 64) = 0xE600000000000000;
  v31 = v43;
  sub_226D6D51C();
  sub_226D6D4CC();
  (*(v44 + 8))(v31, v45);
  *(inited + 72) = sub_226D6E36C();
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x8000000226D866E0;
  *(inited + 96) = v25;
  *(inited + 104) = 0x655074726F706572;
  *(inited + 112) = 0xEF646E45646F6972;
  *(inited + 120) = v27;
  strcpy((inited + 128), "paymentNetwork");
  *(inited + 143) = -18;
  v32 = v27;
  v33 = v25;
  *(inited + 144) = sub_226D6E36C();
  *(inited + 152) = 0x726575737369;
  *(inited + 160) = 0xE600000000000000;
  v34 = [v46 organizationName];
  if (v34)
  {
    v35 = v34;

    *(inited + 168) = v35;
    *(inited + 176) = 0xD000000000000011;
    *(inited + 184) = 0x8000000226D86700;
    v36 = sub_226D6E36C();

    *(inited + 192) = v36;
    *(inited + 200) = 0x63656E6E6F437369;
    *(inited + 208) = 0xEF64726143646574;
    v37 = *(v24 + *(v29 + 32));
    *(inited + 216) = sub_226D6E6BC();
    *(inited + 224) = 0xD000000000000010;
    *(inited + 232) = 0x8000000226D86560;
    v38 = *(v24 + *(v29 + 36));
    *(inited + 240) = sub_226D6E8EC();
    sub_226B224E8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77D8, &qword_226D75660);
    swift_arrayDestroy();

    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_226C96998()
{
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000031, 0x8000000226D86720);
  MEMORY[0x22AA8A510](*v0, v0[1]);
  MEMORY[0x22AA8A510](0xD000000000000014, 0x8000000226D86760);
  sub_226C963B4();
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  v1 = sub_226D6E2CC();
  v3 = v2;

  MEMORY[0x22AA8A510](v1, v3);

  return 0;
}

uint64_t sub_226C96AA0()
{
  result = sub_226C96AC0();
  qword_27D7B6200 = result;
  return result;
}

uint64_t sub_226C96AC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8008, &unk_226D77290);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v15 - v2;
  v4 = sub_226D6D5DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_226D6D53C();
  v10 = sub_226D6D55C();
  (*(v5 + 8))(v8, v4);
  [v9 setLocale_];

  sub_226D6D6EC();
  v11 = sub_226D6D71C();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v3, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = sub_226D6D6FC();
    (*(v12 + 8))(v3, v11);
    [v9 setTimeZone_];

    [v9 setDateStyle_];
    [v9 setTimeStyle_];
    return v9;
  }

  return result;
}

uint64_t sub_226C96D28(uint64_t a1)
{
  v2 = v1;
  sub_226D69F0C();
  v4 = sub_226D69E8C();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D70840;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
  *(v5 + 64) = sub_226C64634();
  *(v5 + 32) = a1;

  v6 = sub_226D6E91C();
  [v4 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_226D70840;
  *(v7 + 56) = MEMORY[0x277D837D0];
  v8 = 0x8000000226D86610;
  *(v7 + 32) = 0xD000000000000011;
  *(v7 + 40) = 0x8000000226D86610;
  v9 = sub_226D6E5CC();

  [v4 setPropertiesToFetch_];

  sub_226AE59B4(0, &qword_27D7A7178, 0x277CBEAC0);
  v10 = sub_226D6EBBC();
  v11 = v1;
  if (!v1)
  {
    v12 = v10;
    if (v10 >> 62)
    {
LABEL_30:
      v28 = v12 & 0xFFFFFFFFFFFFFF8;
      v13 = sub_226D6EDFC();
      if (v13)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v28 = v10 & 0xFFFFFFFFFFFFFF8;
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_5:
        v14 = v8;
        v8 = 0;
        v15 = MEMORY[0x277D84F90];
        v26 = v11;
        v27 = v4;
        while (1)
        {
          v34 = v15;
          v16 = v8;
          while (1)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x22AA8AFD0](v16, v12);
            }

            else
            {
              if (v16 >= *(v28 + 16))
              {
                goto LABEL_29;
              }

              v17 = *(v12 + 8 * v16 + 32);
            }

            v11 = v17;
            v8 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

            *&v29 = 0xD000000000000011;
            *(&v29 + 1) = v14;
            v4 = [v17 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            if (v4)
            {
              sub_226D6ED0C();
              swift_unknownObjectRelease();
            }

            else
            {

              v29 = 0u;
              v30 = 0u;
            }

            v31[0] = v29;
            v31[1] = v30;
            if (*(&v30 + 1))
            {
              break;
            }

            sub_226AC47B0(v31, &unk_27D7A8BB0, &unk_226D74340);
LABEL_8:
            ++v16;
            if (v8 == v13)
            {
              v4 = v27;
              v15 = v34;
              goto LABEL_32;
            }
          }

          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_8;
          }

          v4 = v33;
          if (!v33)
          {
            goto LABEL_8;
          }

          v18 = v32;
          v19 = v34;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v19 = sub_226BBAB0C(0, *(v19 + 2) + 1, 1, v19);
          }

          v22 = *(v19 + 2);
          v21 = *(v19 + 3);
          v23 = v19;
          if (v22 >= v21 >> 1)
          {
            v23 = sub_226BBAB0C((v21 > 1), v22 + 1, 1, v19);
          }

          *(v23 + 2) = v22 + 1;
          v24 = &v23[16 * v22];
          v15 = v23;
          *(v24 + 4) = v18;
          *(v24 + 5) = v4;
          v11 = v26;
          v4 = v27;
          if (v8 == v13)
          {
LABEL_32:

            v2 = sub_226AE3C28(v15);

            return v2;
          }
        }
      }
    }

    v15 = MEMORY[0x277D84F90];
    goto LABEL_32;
  }

  return v2;
}

void sub_226C97148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v69 = a2;
  v67 = sub_226D6D4AC();
  v77 = *(v67 - 1);
  v4 = v77[8];
  MEMORY[0x28223BE20](v67);
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_226D72B90;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226D71F40;
  v63 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v8 = swift_allocObject();
  v70 = xmmword_226D70840;
  *(v8 + 16) = xmmword_226D70840;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
  *(v8 + 56) = v9;
  v10 = sub_226C64634();
  *(v8 + 64) = v10;
  *(v8 + 32) = a1;

  *(v6 + 32) = sub_226D6E91C();
  v62 = v7;
  v11 = swift_allocObject();
  *(v11 + 16) = v70;
  *(v11 + 56) = v9;
  *(v11 + 64) = v10;
  *(v11 + 32) = a1;

  *(v6 + 40) = sub_226D6E91C();
  v12 = sub_226D6E5CC();

  v64 = objc_opt_self();
  v13 = [v64 orPredicateWithSubpredicates_];

  v14 = v68;
  *(v68 + 32) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v70;
  v16 = v61;
  sub_226D6CD4C();
  v17 = sub_226D6D3EC();
  v18 = v77[1];
  ++v77;
  v19 = v67;
  v18(v16, v67);
  v20 = sub_226AE59B4(0, &qword_28105F410, 0x277CBEAA8);
  *(v15 + 56) = v20;
  v21 = sub_226C19454();
  *(v15 + 64) = v21;
  *(v15 + 32) = v17;
  *(v14 + 40) = sub_226D6E91C();
  v22 = swift_allocObject();
  *(v22 + 16) = v70;
  sub_226D6CD2C();
  v23 = sub_226D6D3EC();
  v18(v16, v19);
  *(v22 + 56) = v20;
  *(v22 + 64) = v21;
  *(v22 + 32) = v23;
  v24 = sub_226D6E91C();
  v25 = v68;
  *(v68 + 48) = v24;
  *(v25 + 56) = sub_226D6E91C();
  sub_226D6AC0C();
  v26 = sub_226D6AB7C();
  v67 = v26;
  v27 = sub_226D6E5CC();

  v28 = [v64 andPredicateWithSubpredicates_];

  [v26 setPredicate_];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v29 = swift_allocObject();
  *(v29 + 16) = v70;
  v30 = objc_opt_self();
  v31 = [v30 expressionForEvaluatedObject];
  *(v29 + 56) = sub_226AE59B4(0, &unk_27D7A8C60, 0x277CCA9C0);
  *(v29 + 32) = v31;
  v32 = sub_226D6E36C();
  v33 = sub_226D6E5CC();

  v34 = [v30 expressionForFunction:v32 arguments:v33];

  v35 = [objc_allocWithZone(MEMORY[0x277CBE410]) init];
  v64 = 0x8000000226D86560;
  v36 = sub_226D6E36C();
  [v35 setName_];

  *&v70 = v34;
  [v35 setExpression_];
  [v35 setExpressionResultType_];
  v68 = 0x8000000226D86580;
  v37 = 0x8000000226D865D0;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_226D71190;
  v39 = MEMORY[0x277D837D0];
  *(v38 + 32) = 0xD000000000000024;
  *(v38 + 40) = 0x8000000226D86580;
  *(v38 + 56) = v39;
  *(v38 + 64) = 0xD000000000000017;
  *(v38 + 72) = 0x8000000226D865B0;
  *(v38 + 120) = v39;
  *(v38 + 88) = v39;
  *(v38 + 96) = 0xD00000000000001FLL;
  *(v38 + 104) = 0x8000000226D865D0;
  *(v38 + 152) = sub_226AE59B4(0, &qword_27D7A8948, 0x277CBE410);
  *(v38 + 128) = v35;
  v77 = v35;
  v40 = sub_226D6E5CC();

  v41 = v67;
  [v67 setPropertiesToFetch_];

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_226D72130;
  *(v42 + 32) = 0xD000000000000024;
  v43 = v41;
  *(v42 + 40) = v68;
  *(v42 + 56) = v39;
  *(v42 + 64) = 0xD000000000000017;
  *(v42 + 72) = 0x8000000226D865B0;
  *(v42 + 120) = v39;
  *(v42 + 88) = v39;
  *(v42 + 96) = 0xD00000000000001FLL;
  *(v42 + 104) = 0x8000000226D865D0;
  v44 = sub_226D6E5CC();

  [v43 setPropertiesToGroupBy_];

  sub_226AE59B4(0, &qword_27D7A7178, 0x277CBEAC0);
  v45 = v66;
  v46 = sub_226D6EBBC();
  if (v45)
  {

    return;
  }

  v47 = v46;
  v65 = 0;
  v69 = 0x8000000226D865B0;
  if (v46 >> 62)
  {
LABEL_44:
    v68 = v47 & 0xFFFFFFFFFFFFFF8;
    v48 = sub_226D6EDFC();
  }

  else
  {
    v68 = v46 & 0xFFFFFFFFFFFFFF8;
    v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = v70;
  v50 = v77;
  if (!v48)
  {
    v66 = MEMORY[0x277D84F98];
    goto LABEL_40;
  }

  v63 = v37;
  v37 = 0;
  v66 = MEMORY[0x277D84F98];
  while (2)
  {
    v43 = v37;
    while (1)
    {
      if ((v47 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x22AA8AFD0](v43, v47);
      }

      else
      {
        if (v43 >= *(v68 + 16))
        {
          goto LABEL_43;
        }

        v51 = *(v47 + 8 * v43 + 32);
      }

      v52 = v51;
      v37 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      *&v73 = 0xD000000000000017;
      *(&v73 + 1) = v69;
      v53 = [v51 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v53)
      {
        sub_226D6ED0C();
        swift_unknownObjectRelease();
      }

      else
      {
        v73 = 0u;
        v74 = 0u;
      }

      v75 = v73;
      v76 = v74;
      if (*(&v74 + 1))
      {
        break;
      }

      sub_226AC47B0(&v75, &unk_27D7A8BB0, &unk_226D74340);
LABEL_9:

      ++v43;
      v49 = v70;
      v50 = v77;
      if (v37 == v48)
      {
        v43 = v67;
        goto LABEL_40;
      }
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    v61 = v71;
    v62 = v72;
    *&v75 = 0xD00000000000001FLL;
    *(&v75 + 1) = v63;
    v54 = [v52 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v54)
    {
      sub_226D6ED0C();
      swift_unknownObjectRelease();
    }

    else
    {
      v73 = 0u;
      v74 = 0u;
    }

    v75 = v73;
    v76 = v74;
    if (*(&v74 + 1))
    {
      if (swift_dynamicCast())
      {
        v55 = v72;
        v61 = v71;

        v62 = v55;
      }
    }

    else
    {
      sub_226AC47B0(&v75, &unk_27D7A8BB0, &unk_226D74340);
    }

    *&v75 = 0xD000000000000010;
    *(&v75 + 1) = v64;
    v56 = [v52 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v56)
    {
      sub_226D6ED0C();
      swift_unknownObjectRelease();
    }

    else
    {
      v73 = 0u;
      v74 = 0u;
    }

    v57 = v66;
    v75 = v73;
    v76 = v74;
    if (!*(&v74 + 1))
    {
      sub_226AC47B0(&v75, &unk_27D7A8BB0, &unk_226D74340);
      goto LABEL_35;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_35:
      v58 = 0;
      goto LABEL_36;
    }

    v58 = v71;
LABEL_36:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v75 = v57;
    sub_226BE6B3C(v58, v61, v62, isUniquelyReferenced_nonNull_native);

    v66 = v75;
    v43 = v67;
    v49 = v70;
    v50 = v77;
    if (v37 != v48)
    {
      continue;
    }

    break;
  }

LABEL_40:
}

uint64_t _s28WeeklyTransactionsCountEventVMa()
{
  result = qword_27D7A8950;
  if (!qword_27D7A8950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_226C97CF4()
{
  result = qword_27D7A8940;
  if (!qword_27D7A8940)
  {
    _s28WeeklyTransactionsCountEventVMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8940);
  }

  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226C97D94()
{
  result = sub_226D6D52C();
  if (v1 <= 0x3F)
  {
    result = sub_226D6CD7C();
    if (v2 <= 0x3F)
    {
      result = sub_226AE59B4(319, &qword_27D7A8960, 0x277D38080);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_226C97E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v61 = a2;
  v56 = type metadata accessor for WebServicePendingTasksRetryState.TaskState();
  v55 = *(v56 - 8);
  v7 = *(v55 + 64);
  v8 = MEMORY[0x28223BE20](v56);
  v54 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = (&v53 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v53 - v13;
  v15 = sub_226D6D4AC();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v60 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v59 = &v53 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v24 = *(a1 + 16);
  if (v24)
  {
    v53 = a4;
    v71 = v21;
    sub_226D6D3AC();
    v25 = a1 + 32;
    v57 = (v71 + 56);
    v65 = (v71 + 48);
    v62 = (v71 + 32);
    v64 = (v71 + 8);
    v58 = (v71 + 16);
    v67 = v14;
    v68 = v15;
    v66 = v23;
    do
    {
      v70 = v25;
      v71 = v24;
      sub_226AE532C(v25, v73);
      v26 = v74;
      v27 = v75;
      __swift_project_boxed_opaque_existential_1(v73, v74);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v69 = &v53;
      v29 = *(AssociatedTypeWitness - 8);
      v30 = *(v29 + 64);
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v31 = (*(v27 + 56))(v26, v27);
      MEMORY[0x28223BE20](v31);
      (*(v29 + 32))(&v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), &v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      sub_226D6EE8C();
      if (*(a3 + 16) && (v32 = sub_226C2FE4C(v72), (v33 & 1) != 0))
      {
        v34 = v54;
        sub_226C9B568(*(a3 + 56) + *(v55 + 72) * v32, v54);
        sub_226AE5030(v72);
        v35 = v34;
        v36 = v63;
        sub_226C9B628(v35, v63);
        v37 = v67;
        if (*v36 >= 1)
        {
          exp2((*v36 - 1));
        }

        v40 = v68;
        v41 = v66;
        v42 = v63;
        v43 = v63 + *(v56 + 20);
        sub_226D6D3DC();
        sub_226C9B5CC(v42);
        (*v57)(v37, 0, 1, v40);
      }

      else
      {
        sub_226AE5030(v72);
        v38 = v74;
        v39 = v75;
        __swift_project_boxed_opaque_existential_1(v73, v74);
        v37 = v67;
        (*(v39 + 72))(v38, v39);
        v40 = v68;
        v41 = v66;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v73);
      if ((*v65)(v37, 1, v40) == 1)
      {
        (*v64)(v41, v40);
        sub_226AC47B0(v37, &qword_27D7A8BE0, &unk_226D718F0);
        (*v58)(v41, v61, v40);
      }

      else
      {
        v44 = *v62;
        v45 = v59;
        (*v62)(v59, v37, v40);
        sub_226C9B8E8(&qword_27D7A66D8, MEMORY[0x277CC9578]);
        v46 = sub_226D6E32C();
        v47 = (v46 & 1) == 0;
        if (v46)
        {
          v48 = v41;
        }

        else
        {
          v48 = v45;
        }

        if (v47)
        {
          v45 = v41;
        }

        (*v64)(v48, v40);
        v49 = v60;
        v44(v60, v45, v40);
        v44(v41, v49, v40);
      }

      v25 = v70 + 40;
      v24 = v71 - 1;
    }

    while (v71 != 1);
    v50 = v53;
    (*v62)(v53, v41, v40);
    return (*v57)(v50, 0, 1, v40);
  }

  else
  {
    v52 = *(v21 + 56);

    return v52(a4, 1, 1, v15);
  }
}

uint64_t sub_226C985A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v28 = type metadata accessor for WebServicePendingTasksRetryState.TaskState();
  v25 = *(v28 - 8);
  v5 = *(v25 + 64);
  v6 = MEMORY[0x28223BE20](v28);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v27 = (&v25 - v8);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = (*(v10 + 56))(v9, v10);
  MEMORY[0x28223BE20](v14);
  (*(v12 + 32))(&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_226D6EE8C();
  if (*(a2 + 16) && (v15 = sub_226C2FE4C(v30), (v16 & 1) != 0))
  {
    v17 = v26;
    sub_226C9B568(*(a2 + 56) + *(v25 + 72) * v15, v26);
    sub_226AE5030(v30);
    v18 = v27;
    sub_226C9B628(v17, v27);
    if (*v18 >= 1)
    {
      exp2((*v18 - 1));
    }

    v22 = v29;
    v23 = v18 + *(v28 + 20);
    sub_226D6D3DC();
    sub_226C9B5CC(v18);
    v24 = sub_226D6D4AC();
    return (*(*(v24 - 8) + 56))(v22, 0, 1, v24);
  }

  else
  {
    sub_226AE5030(v30);
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    return (*(v20 + 72))(v19, v20);
  }
}

uint64_t sub_226C988E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v29 - v12;
  v14 = sub_226D6D4AC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v5 >= v5[1])
  {
    goto LABEL_5;
  }

  v30 = a1;
  v31 = v16;
  v29 = a2;
  (*(a4 + 64))(a3, a4);
  v19 = v5[2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v20 = sub_226D6EE5C();

  v21 = sub_226C99964(v20, v19);

  if (v21)
  {
    v22 = v5[3];
    v23 = v5[4];
    v24 = v5[5];
    v32[3] = a3;
    v32[4] = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, v30, a3);
    sub_226C985A4(v32, v22, v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    v26 = v31;
    if ((*(v31 + 48))(v13, 1, v14) == 1)
    {
      sub_226AC47B0(v13, &qword_27D7A8BE0, &unk_226D718F0);
      v27 = 1;
    }

    else
    {
      (*(v26 + 32))(v18, v13, v14);
      sub_226C9B8E8(&qword_27D7A66D8, MEMORY[0x277CC9578]);
      v27 = sub_226D6E34C();
      (*(v26 + 8))(v18, v14);
    }
  }

  else
  {
LABEL_5:
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_226C98C10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v80 = v6 + 56;

  v82 = v6;

  v12 = 0;
  v74 = v4;
  v71 = v10;
  v72 = v4 + 56;
  while (1)
  {
    do
    {
LABEL_13:
      if (v9)
      {
        v13 = v9;
        goto LABEL_19;
      }

      do
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          return result;
        }

        if (v14 >= v10)
        {

          return 1;
        }

        v13 = *(v5 + 8 * v14);
        ++v12;
      }

      while (!v13);
      v12 = v14;
LABEL_19:
      v9 = (v13 - 1) & v13;
    }

    while (!*(v82 + 16));
    v15 = *(v4 + 48) + 56 * (__clz(__rbit64(v13)) | (v12 << 6));
    v86 = *v15;
    v87 = *(v15 + 8);
    v16 = *(v15 + 24);
    v83 = *(v15 + 32);
    v84 = *(v15 + 16);
    v85 = *(v15 + 40);
    v17 = *(v15 + 48);
    v18 = *(v82 + 40);
    sub_226D6F2FC();
    v81 = v17;
    if (v17)
    {
      if (v17 == 1)
      {
        v19 = 1;
        goto LABEL_24;
      }

      MEMORY[0x22AA8B3B0](2);

      sub_226D6E42C();
      sub_226D6E42C();
    }

    else
    {
      v19 = 0;
LABEL_24:
      MEMORY[0x22AA8B3B0](v19);

      sub_226D6E42C();
    }

    sub_226D6E42C();
    v20 = sub_226D6F35C();
    v21 = -1 << *(v82 + 32);
    v22 = v20 & ~v21;
    if ((*(v80 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      break;
    }

    result = sub_226AE5134(v86, v87, v84, v16, v83, v85, v17);
  }

  v73 = v9;
  v78 = v16;
  v79 = ~v21;
  v23 = v85;
  for (i = v83; ; i = v83)
  {
    v25 = v84;
    v26 = *(v82 + 48) + 56 * v22;
    v28 = *v26;
    v27 = *(v26 + 8);
    v30 = *(v26 + 16);
    v29 = *(v26 + 24);
    v31 = *(v26 + 32);
    v32 = *(v26 + 40);
    v33 = *(v26 + 48);
    v88[0] = *v26;
    v88[1] = v27;
    v88[2] = v30;
    v88[3] = v29;
    v88[4] = v31;
    v88[5] = v32;
    v89 = v33;
    v90 = v86;
    v91 = v87;
    v92 = v84;
    v93 = v16;
    v94 = i;
    v95 = v23;
    v96 = v81;
    v34 = v81;
    if (!v33)
    {
      if (v81)
      {
        goto LABEL_73;
      }

      if (v28 != v86 || v27 != v87)
      {
        v42 = sub_226D6F21C();
        i = v83;
        v25 = v84;
        v23 = v85;
        v34 = 0;
        if ((v42 & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      if (v30 == v25 && v29 == v16)
      {
        v61 = v25;
        sub_226AFD74C(v86, v87, v25, v16, i, v23, 0);
        sub_226AFD74C(v28, v27, v61, v16, v31, v32, 0);
        sub_226AC47B0(v88, &unk_27D7A9640, &qword_226D7A5E0);
LABEL_84:

        v54 = v86;
        v55 = v87;
        v57 = v83;
        v56 = v84;
        v58 = v16;
        v59 = v85;
        v60 = 0;
LABEL_85:
        sub_226AE5134(v54, v55, v56, v58, v57, v59, v60);
        return 0;
      }

      v44 = v25;
      v76 = sub_226D6F21C();
      sub_226AFD74C(v86, v87, v44, v16, v83, v85, 0);
      sub_226AFD74C(v28, v27, v30, v29, v31, v32, 0);
      sub_226AC47B0(v88, &unk_27D7A9640, &qword_226D7A5E0);
      if (v76)
      {
        goto LABEL_84;
      }

      goto LABEL_74;
    }

    if (v33 != 1)
    {
      break;
    }

    if (v81 != 1)
    {
      goto LABEL_73;
    }

    if (v28 != v86 || v27 != v87)
    {
      v36 = sub_226D6F21C();
      i = v83;
      v25 = v84;
      v23 = v85;
      if ((v36 & 1) == 0)
      {
        v34 = 1;
        goto LABEL_73;
      }
    }

    if (v30 == v25 && v29 == v16)
    {
      v53 = v25;
      sub_226AFD74C(v86, v87, v25, v16, i, v23, 1u);
      sub_226AFD74C(v28, v27, v53, v16, v31, v32, 1u);
      sub_226AC47B0(v88, &unk_27D7A9640, &qword_226D7A5E0);
LABEL_82:

      v54 = v86;
      v55 = v87;
      v57 = v83;
      v56 = v84;
      v58 = v16;
      v59 = v85;
      v60 = 1;
      goto LABEL_85;
    }

    v38 = v25;
    v39 = i;
    v75 = sub_226D6F21C();
    v40 = v39;
    v16 = v78;
    sub_226AFD74C(v86, v87, v38, v78, v40, v85, 1u);
    sub_226AFD74C(v28, v27, v30, v29, v31, v32, 1u);
    sub_226AC47B0(v88, &unk_27D7A9640, &qword_226D7A5E0);
    if (v75)
    {
      goto LABEL_82;
    }

LABEL_74:
    v22 = (v22 + 1) & v79;
    if (((*(v80 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      result = sub_226AE5134(v86, v87, v84, v16, v83, v85, v81);
      v9 = v73;
      v4 = v74;
      v10 = v71;
      v5 = v72;
      goto LABEL_13;
    }

    v23 = v85;
  }

  if (v81 != 2)
  {
    goto LABEL_73;
  }

  if (v28 != v86 || v27 != v87)
  {
    v46 = sub_226D6F21C();
    i = v83;
    v25 = v84;
    v23 = v85;
    if ((v46 & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  if (v30 != v25 || v29 != v16)
  {
    v48 = sub_226D6F21C();
    i = v83;
    v25 = v84;
    v23 = v85;
    if ((v48 & 1) == 0)
    {
LABEL_71:
      v34 = 2;
LABEL_73:
      sub_226AFD74C(v86, v87, v25, v16, i, v23, v34);
      sub_226AFD74C(v28, v27, v30, v29, v31, v32, v33);
      sub_226AC47B0(v88, &unk_27D7A9640, &qword_226D7A5E0);
      goto LABEL_74;
    }
  }

  if (v31 != i || v32 != v23)
  {
    v50 = i;
    v51 = v23;
    v77 = sub_226D6F21C();
    v52 = v50;
    v16 = v78;
    sub_226AFD74C(v86, v87, v84, v78, v52, v51, 2u);
    sub_226AFD74C(v28, v27, v30, v29, v31, v32, 2u);
    sub_226AC47B0(v88, &unk_27D7A9640, &qword_226D7A5E0);
    if (v77)
    {

      v65 = v86;
      v66 = v87;
      v68 = v83;
      v67 = v84;
      v69 = v78;
      v70 = v85;
      goto LABEL_87;
    }

    goto LABEL_74;
  }

  v62 = v25;
  v63 = i;
  v64 = v23;
  sub_226AFD74C(v86, v87, v25, v16, i, v23, 2u);
  sub_226AFD74C(v28, v27, v30, v29, v63, v64, 2u);
  sub_226AC47B0(v88, &unk_27D7A9640, &qword_226D7A5E0);

  v65 = v86;
  v66 = v87;
  v67 = v62;
  v69 = v16;
  v68 = v63;
  v70 = v64;
LABEL_87:
  sub_226AE5134(v65, v66, v67, v69, v68, v70, 2u);

  return 0;
}

uint64_t sub_226C993BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v26 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v6 + 40);
      sub_226D6F2FC();

      sub_226D6E42C();
      v20 = sub_226D6F35C();
      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v6 + 48) + 16 * v22);
          v25 = *v24 == v18 && v24[1] == v17;
          if (v25 || (sub_226D6F21C() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v26;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226C995A4(void *a1, void *a2)
{
  v4 = sub_226D6715C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v47 = &v36 - v11;
  MEMORY[0x28223BE20](v10);
  v42 = &v36 - v12;
  v13 = a2[2];
  if (!v13)
  {
    return 1;
  }

  v14 = a1[2];
  if (!v14)
  {
    return 1;
  }

  if (v13 >= v14)
  {
    v15 = a1;
  }

  else
  {
    v15 = a2;
  }

  if (v13 < v14)
  {
    a2 = a1;
  }

  v16 = v15 + 7;
  v17 = 1 << *(v15 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v15[7];
  v20 = (v17 + 63) >> 6;
  v45 = v5 + 16;
  v40 = v5 + 32;
  v41 = v15;
  v43 = a2 + 7;
  v21 = (v5 + 8);

  v46 = a2;

  v23 = 0;
  v37 = v20;
  v38 = v16;
  v39 = v5;
  while (v19)
  {
LABEL_18:
    v25 = v42;
    v26 = v41[6];
    v44 = *(v5 + 72);
    v27 = *(v5 + 16);
    v27(v42, v26 + v44 * (__clz(__rbit64(v19)) | (v23 << 6)), v4);
    (*(v5 + 32))(v47, v25, v4);
    if (v46[2])
    {
      v28 = v46;
      v29 = v46[5];
      sub_226C9B8E8(&qword_27D7A6230, MEMORY[0x277CC6B60]);
      v30 = sub_226D6E2FC();
      v31 = -1 << *(v28 + 32);
      v32 = v30 & ~v31;
      if ((*(v43 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        v33 = ~v31;
        while (1)
        {
          v27(v9, v46[6] + v32 * v44, v4);
          sub_226C9B8E8(&qword_27D7A6548, MEMORY[0x277CC6B60]);
          v34 = sub_226D6E35C();
          v35 = *v21;
          (*v21)(v9, v4);
          if (v34)
          {
            break;
          }

          v32 = (v32 + 1) & v33;
          if (((*(v43 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v35(v47, v4);
        return 0;
      }
    }

LABEL_12:
    v19 &= v19 - 1;
    result = (*v21)(v47, v4);
    v16 = v38;
    v5 = v39;
    v20 = v37;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v20)
    {

      return 1;
    }

    v19 = v16[v24];
    ++v23;
    if (v19)
    {
      v23 = v24;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226C99964(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
  v21 = v4;

  v13 = 0;
  while (v9)
  {
LABEL_19:
    sub_226AE4FD4(*(v21 + 48) + 40 * (__clz(__rbit64(v9)) | (v13 << 6)), v25);
    v23[0] = v25[0];
    v23[1] = v25[1];
    v24 = v26;
    if (*(v6 + 16))
    {
      v15 = *(v6 + 40);
      v16 = sub_226D6EE6C();
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      if ((*(v11 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        v19 = ~v17;
        while (1)
        {
          sub_226AE4FD4(*(v6 + 48) + 40 * v18, v22);
          v20 = MEMORY[0x22AA8AF20](v22, v23);
          sub_226AE5030(v22);
          if (v20)
          {
            break;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v11 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        sub_226AE5030(v23);
        return 0;
      }
    }

LABEL_13:
    v9 &= v9 - 1;
    result = sub_226AE5030(v23);
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v9 = *(v5 + 8 * v14);
    ++v13;
    if (v9)
    {
      v13 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_226C99B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(*v3, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v3;
    (*(a3 + 64))(a2, a3);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v4 = sub_226D6EE5C();

    sub_226B04718(v4);
  }
}

uint64_t sub_226C99C2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFSUB__(*v3, 1))
  {
    __break(1u);
  }

  else
  {
    --*v3;
    v6 = result;
    (*(a3 + 64))(a2, a3);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v7 = sub_226D6EE5C();

    sub_226D53E64(v7);

    return sub_226C9ADE4(v6, (v3 + 3), a2, a3);
  }

  return result;
}

uint64_t sub_226C99D50(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (__OFSUB__(*v4, 1))
  {
    __break(1u);
  }

  else
  {
    --*v4;
    v8 = result;
    (*(a4 + 64))(a3, a4);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v9 = sub_226D6EE5C();

    sub_226D53E64(v9);

    return sub_226C9B028(v8, a2, v4 + 3, a3, a4);
  }

  return result;
}

uint64_t sub_226C99E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v9 = a3 + 16;
  v8 = *(a3 + 16);
  v7 = *(v9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C99F60, 0, 0);
}

uint64_t sub_226C99F60()
{
  v1 = v0[10];
  v14 = v0[6];
  v2 = (v0[7] + *(v0[4] + 36));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  (*(v4 + 16))(v3, v4);
  v5 = *(v14 + 80);
  v13 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_226C9A0C0;
  v8 = v0[10];
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[3];

  return v13(v8, v9, v10);
}

uint64_t sub_226C9A0C0()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_226C9A2A8;
  }

  else
  {
    v3 = sub_226C9A1D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226C9A1D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 24) = v3;
  v4 = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v2, v4);
  v6 = *(v0 + 96) != 0;
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

  v7 = *(v0 + 8);

  return v7(0, v6);
}

uint64_t sub_226C9A2A8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v2 + 24) = v4;
  v5 = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v3, v5);
  v7 = *(v0 + 96) != 0;
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

  v8 = *(v0 + 8);

  return v8(v1, v7);
}

uint64_t sub_226C9A388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v9 = *(a5 - 8);
  v7[18] = v9;
  v7[19] = *(v9 + 64);
  v7[20] = swift_task_alloc();
  v10 = *(a4 - 8);
  v7[21] = v10;
  v7[22] = *(v10 + 64);
  v7[23] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0) - 8) + 64) + 15;
  v7[24] = swift_task_alloc();
  v12 = sub_226D6D4AC();
  v7[25] = v12;
  v13 = *(v12 - 8);
  v7[26] = v13;
  v14 = *(v13 + 64) + 15;
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C9A53C, 0, 0);
}

uint64_t sub_226C9A53C()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 104);
  v7 = *(v0 + 88);
  v9 = v6[1];
  v8 = v6[2];
  *(v0 + 16) = *v6;
  *(v0 + 32) = v9;
  *(v0 + 48) = v8;
  sub_226D6D46C();
  v10 = sub_226C988E4(v7, v1, v5, v4);
  (*(v2 + 8))(v1, v3);
  if (v10)
  {
    v12 = *(v0 + 184);
    v11 = *(v0 + 192);
    v13 = *(v0 + 168);
    v14 = *(v0 + 160);
    v35 = v14;
    v36 = *(v0 + 176);
    v16 = *(v0 + 136);
    v15 = *(v0 + 144);
    v17 = *(v0 + 120);
    v37 = *(v0 + 128);
    v38 = v11;
    v18 = *(v0 + 112);
    v19 = *(v0 + 88);
    v39 = *(v0 + 96);
    v20 = sub_226D6E79C();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    (*(v13 + 16))(v12, v16, v18);
    (*(v15 + 16))(v14, v19, v17);
    v21 = (*(v13 + 80) + 64) & ~*(v13 + 80);
    v22 = (v36 + *(v15 + 80) + v21) & ~*(v15 + 80);
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    *(v23 + 4) = *(v18 + 16);
    *(v23 + 5) = v17;
    *(v23 + 6) = *(v18 + 24);
    *(v23 + 7) = v37;
    (*(v13 + 32))(&v23[v21], v12, v18);
    (*(v15 + 32))(&v23[v22], v35, v17);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v25 = swift_getAssociatedTypeWitness();
    v26 = swift_getAssociatedTypeWitness();
    *(v0 + 64) = AssociatedTypeWitness;
    *(v0 + 72) = v25;
    *(v0 + 80) = v26;
    swift_getExtendedExistentialTypeMetadata_unique();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A8970, &qword_226D7A5B8);
    swift_getTupleTypeMetadata2();
    v27 = sub_226D6E73C();
    LOBYTE(v21) = sub_226C9AABC(v38, &unk_226D7A5A8, v23, v27);
    sub_226AC47B0(v38, &unk_27D7A8BA0, &qword_226D734E0);
    if (v21)
    {
      v28 = *(v0 + 104);
      sub_226C99B40(*(v0 + 88), *(v0 + 120), *(v0 + 128));
    }
  }

  v29 = *(v0 + 216);
  v30 = *(v0 + 184);
  v31 = *(v0 + 192);
  v32 = *(v0 + 160);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_226C9A898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v11 = swift_task_alloc();
  *(v7 + 24) = v11;
  v12 = type metadata accessor for WebServicePerformPendingTasksActivity();
  *v11 = v7;
  v11[1] = sub_226C9A98C;

  return sub_226C99E84(a1, a5, v12, a7, v15);
}

uint64_t sub_226C9A98C(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  v6 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return MEMORY[0x2822009F8](sub_226C9AA90, 0, 0);
}

uint64_t sub_226C9AA90()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *(v2 + 40) = *(v0 + 32);
  *(v2 + 48) = v1 & 1;
  return (*(v0 + 8))();
}

uint64_t sub_226C9AABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v24 - v11;
  v13 = *v4;
  v14 = swift_taskGroup_addPending();
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_226B6F240(a1, v12);
  v15 = sub_226D6E79C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v12, 1, v15) != 1)
  {
    sub_226D6E78C();
    (*(v16 + 8))(v12, v15);
    if (*(a3 + 16))
    {
      goto LABEL_4;
    }

LABEL_7:
    v18 = 0;
    v20 = 0;
    goto LABEL_8;
  }

  sub_226AC47B0(v12, &unk_27D7A8BA0, &qword_226D734E0);
  if (!*(a3 + 16))
  {
    goto LABEL_7;
  }

LABEL_4:
  v17 = *(a3 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v18 = sub_226D6E6CC();
  v20 = v19;
  swift_unknownObjectRelease();
LABEL_8:
  v21 = swift_allocObject();
  v21[2] = *(a4 + 16);
  v21[3] = a2;
  v21[4] = a3;
  v22 = (v20 | v18);
  if (v20 | v18)
  {
    v25[0] = 0;
    v25[1] = 0;
    v22 = v25;
    v25[2] = v18;
    v25[3] = v20;
  }

  v24[1] = 1;
  v24[2] = v22;
  v24[3] = v13;
  swift_task_create();
LABEL_11:

  return v14 & 1;
}

uint64_t sub_226C9ACEC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226B68114;

  return v7(a1);
}

uint64_t sub_226C9ADE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8968, &unk_226D7E430);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18[-v9];
  v20 = a3;
  v21 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v12 = v20;
  v13 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(a4 + 56))(v12, v13);
  swift_getAssociatedConformanceWitness();
  sub_226D6EE8C();
  v16 = type metadata accessor for WebServicePendingTasksRetryState.TaskState();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  sub_226D490F4(v10, v18);
  return __swift_destroy_boxed_opaque_existential_0Tm(v19);
}

uint64_t type metadata accessor for WebServicePendingTasksRetryState.TaskState()
{
  result = qword_281060518;
  if (!qword_281060518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226C9B028(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v48 = a3;
  v43 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8968, &unk_226D7E430);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v45 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v46 = (v41 - v13);
  MEMORY[0x28223BE20](v12);
  v15 = v41 - v14;
  v47 = type metadata accessor for WebServicePendingTasksRetryState.TaskState();
  v16 = *(v47 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v47);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a4;
  v52 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v22 = v51;
  v21 = v52;
  v23 = __swift_project_boxed_opaque_existential_1(v50, v51);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v41[0] = *(a5 + 56);
  v41[1] = v23;
  v44 = a5 + 56;
  (v41[0])(v22, v21);
  v42 = v21;
  swift_getAssociatedConformanceWitness();
  sub_226D6EE8C();
  v26 = *v48;
  if (*(*v48 + 16) && (v27 = sub_226C2FE4C(v49), (v28 & 1) != 0))
  {
    sub_226C9B568(*(v26 + 56) + *(v16 + 72) * v27, v15);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = *(v16 + 56);
  v31 = v47;
  v30(v15, v29, 1, v47);
  v32 = v15;
  v33 = v46;
  sub_226C9B4F8(v32, v46);
  if ((*(v16 + 48))(v33, 1, v31) == 1)
  {
    *v19 = 0;
    v34 = &v19[*(v31 + 20)];
    sub_226D6D46C();
    sub_226AE5030(v49);
    result = sub_226AC47B0(v33, &qword_27D7A8968, &unk_226D7E430);
  }

  else
  {
    sub_226AE5030(v49);
    result = sub_226C9B628(v33, v19);
  }

  if (__OFADD__(*v19, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v19;
    v36 = *(v31 + 20);
    v37 = sub_226D6D4AC();
    (*(*(v37 - 8) + 24))(&v19[v36], v43, v37);
    v46 = v30;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v38 = swift_getAssociatedTypeWitness();
    v43 = v41;
    v39 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v38);
    (v41[0])(v22, v42);
    swift_getAssociatedConformanceWitness();
    sub_226D6EE8C();
    v40 = v45;
    sub_226C9B568(v19, v45);
    v46(v40, 0, 1, v31);
    sub_226D490F4(v40, v49);
    sub_226C9B5CC(v19);
    return __swift_destroy_boxed_opaque_existential_0Tm(v50);
  }

  return result;
}

uint64_t sub_226C9B4F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8968, &unk_226D7E430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226C9B568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebServicePendingTasksRetryState.TaskState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226C9B5CC(uint64_t a1)
{
  v2 = type metadata accessor for WebServicePendingTasksRetryState.TaskState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226C9B628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebServicePendingTasksRetryState.TaskState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226C9B6A4(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = *(type metadata accessor for WebServicePerformPendingTasksActivity() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = (v9 + *(v8 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_226AD827C;

  return sub_226C9A898(a1, v11, v12, v1 + v9, v1 + v10, v5, v4);
}

uint64_t sub_226C9B820(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AD827C;

  return sub_226C9ACEC(a1, v5);
}

uint64_t sub_226C9B8E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226C9B940(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    swift_getExtendedExistentialTypeMetadata_unique();
    v3 = sub_226D6E07C();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_226C9BA18(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_226D6E07C();
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v7 == v13)
      {
        v22 = *(v6 + 48);

        return v22(a1, v7, v5);
      }

      else
      {
        v23 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        if ((v12 & 0x80000000) != 0)
        {
          v25 = *(v9 + 48);

          return v25((v23 + v11 + 40) & ~v11);
        }

        else
        {
          v24 = *(v23 + 24);
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          return (v24 + 1);
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

double sub_226C9BCBC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v26 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_226D6E07C() - 8);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v9 <= *(v10 + 84))
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = v9;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v13) + *(v10 + 64);
  if (a3 <= v15)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v15 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v15 < a2)
  {
    v18 = ~v15 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_52:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return result;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v17)
    {
      a1[v16] = v19;
    }

    return result;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v9 == v15)
  {
    v23 = *(v26 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v24 = &a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8;
    if ((v14 & 0x80000000) != 0)
    {
      v25 = *(v10 + 56);

      v25((v24 + v13 + 40) & ~v13, a2);
    }

    else if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v24 + 8) = 0u;
      *(v24 + 24) = 0u;
      *v24 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v24 + 24) = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_226C9C028()
{
  result = sub_226D6D4AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_226C9C0AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v137 = a4;
  v122 = sub_226D693EC();
  v121 = *(v122 - 8);
  v9 = *(v121 + 64);
  v10 = MEMORY[0x28223BE20](v122);
  v120 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v132 = &v112 - v12;
  v112 = sub_226D6948C();
  v139 = *(v112 - 8);
  v13 = *(v139 + 64);
  MEMORY[0x28223BE20](v112);
  v127 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v131 = &v112 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v112 - v22;
  v24 = sub_226D6964C();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v129 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_226D696BC();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v128 = &v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_226D696DC();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v133 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_226D693DC();
  v33 = *(v113 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v113);
  v36 = &v112 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_226D6D52C();
  v135 = *(v37 - 8);
  v136 = v37;
  v38 = *(v135 + 64);
  MEMORY[0x28223BE20](v37);
  v134 = &v112 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = [a1 orderEmails];
  if (v40)
  {
    v41 = v40;
    sub_226AE59B4(0, &qword_27D7A8980, 0x277D21198);
    v141 = sub_226D6E5EC();
  }

  else
  {
    v141 = MEMORY[0x277D84F90];
  }

  v42 = [a1 shippingFulfillments];
  v43 = MEMORY[0x277D84F90];
  if (v42)
  {
    v44 = v42;
    sub_226AE59B4(0, &qword_27D7A8978, 0x277D211A0);
    v43 = sub_226D6E5EC();
  }

  (*(v135 + 16))(v134, v137, v136);
  v45 = [a1 orderTypeIdentifier];
  if (v45)
  {
    v46 = v45;
    v119 = sub_226D6E39C();
    v118 = v47;
  }

  else
  {
    v119 = 0;
    v118 = 0;
  }

  v48 = [a1 orderIdentifier];
  if (v48)
  {
    v49 = v48;
    v117 = sub_226D6E39C();
    v116 = v50;
  }

  else
  {
    v117 = 0;
    v116 = 0;
  }

  v51 = [a1 orderNumber];
  if (v51)
  {
    v52 = v51;
    v115 = sub_226D6E39C();
    v114 = v53;
  }

  else
  {
    v115 = 0;
    v114 = 0;
  }

  v54 = v43;
  v130 = v23;
  v138 = a1;
  v55 = v141;
  if (v141 >> 62)
  {
    v110 = v141;
    v111 = sub_226D6EDFC();
    v54 = v43;
    v56 = v111;
    v55 = v110;
  }

  else
  {
    v56 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v140 = v54;
  v125 = a2;
  v126 = a3;
  v123 = v19;
  v124 = a5;
  if (v56)
  {
    v57 = v55;
    v142 = MEMORY[0x277D84F90];
    sub_226AE265C(0, v56 & ~(v56 >> 63), 0);
    if (v56 < 0)
    {
      __break(1u);
      goto LABEL_58;
    }

    v58 = 0;
    v59 = v142;
    v60 = v57;
    v61 = v57 & 0xC000000000000001;
    v62 = v113;
    do
    {
      if (v61)
      {
        v63 = MEMORY[0x22AA8AFD0](v58, v60);
      }

      else
      {
        v63 = *(v60 + 8 * v58 + 32);
      }

      sub_226C9CC84(v63, v36);
      v142 = v59;
      v65 = *(v59 + 16);
      v64 = *(v59 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_226AE265C(v64 > 1, v65 + 1, 1);
        v62 = v113;
        v59 = v142;
      }

      ++v58;
      *(v59 + 16) = v65 + 1;
      (*(v33 + 32))(v59 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v65, v36, v62);
      v60 = v141;
    }

    while (v56 != v58);

    v43 = v140;
  }

  else
  {
  }

  v66 = v138;
  v67 = [v138 orderDate];
  if (v67)
  {
    v68 = v67;
    v69 = sub_226D6E39C();
    v71 = v70;
  }

  else
  {
    v69 = 0;
    v71 = 0;
  }

  sub_226C9D800([v66 merchant]);
  if (v43 >> 62)
  {
    v72 = sub_226D6EDFC();
  }

  else
  {
    v72 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = v127;
  v141 = v69;
  v113 = v71;
  if (!v72)
  {
    goto LABEL_42;
  }

  v142 = MEMORY[0x277D84F90];
  sub_226AE2618(0, v72 & ~(v72 >> 63), 0);
  if (v72 < 0)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    result = sub_226D6F0AC();
    __break(1u);
    return result;
  }

  v74 = 0;
  v75 = v142;
  v76 = v43;
  v77 = v43 & 0xC000000000000001;
  v78 = v112;
  do
  {
    if (v77)
    {
      v79 = MEMORY[0x22AA8AFD0](v74, v76);
    }

    else
    {
      v79 = *(v76 + 8 * v74 + 32);
    }

    sub_226C9DA40(v79, v73);
    v142 = v75;
    v80 = v73;
    v82 = *(v75 + 16);
    v81 = *(v75 + 24);
    if (v82 >= v81 >> 1)
    {
      sub_226AE2618(v81 > 1, v82 + 1, 1);
      v78 = v112;
      v75 = v142;
    }

    ++v74;
    *(v75 + 16) = v82 + 1;
    (*(v139 + 32))(v75 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v82, v80, v78);
    v73 = v80;
    v76 = v140;
  }

  while (v72 != v74);
LABEL_42:

  v83 = v138;
  sub_226C9DEF0([v138 customer]);
  v84 = [v83 payment];
  sub_226C9E430(v84, v129);
  v85 = [v83 orderUpdateDate];
  if (v85)
  {
    v86 = v130;
    v87 = v85;
    sub_226D6D45C();

    v88 = 0;
  }

  else
  {
    v88 = 1;
    v86 = v130;
  }

  v89 = sub_226D6D4AC();
  v90 = *(*(v89 - 8) + 56);
  v90(v86, v88, 1, v89);
  v91 = [v83 trackedOrderIdentifier];
  if (v91)
  {
    v92 = v91;
    v93 = sub_226D6E39C();
    v139 = v94;
    v140 = v93;

    v83 = v138;
  }

  else
  {
    v139 = 0;
    v140 = 0;
  }

  v95 = v137;
  v96 = [v83 orderStatus];
  if (v96 >= 5)
  {
    goto LABEL_59;
  }

  v97 = v121;
  v98 = v120;
  v99 = v122;
  (*(v121 + 104))(v120, **(&unk_2785C8A68 + v96), v122);
  (*(v97 + 32))(v132, v98, v99);
  v100 = [v83 orderStatusUpdateDate];
  if (v100)
  {
    v101 = v131;
    v102 = v100;
    sub_226D6D45C();

    v103 = v101;
    v104 = 0;
  }

  else
  {
    v104 = 1;
    v103 = v131;
  }

  v105 = 1;
  v90(v103, v104, 1, v89);
  v106 = [v138 earliestEmailDateSent];
  v107 = v123;
  if (v106)
  {
    v108 = v106;
    sub_226D6D45C();

    v105 = 0;
  }

  v90(v107, v105, 1, v89);
  sub_226D6949C();

  return (*(v135 + 8))(v95, v136);
}

void sub_226C9CC84(void *a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v133 = sub_226D6936C();
  v3 = *(v133 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v133);
  v7 = v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v104 - v8;
  v10 = sub_226D6946C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v137 = v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D6935C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v136 = v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_226D6939C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_226D693AC();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v134 = v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_226D693BC();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = v104 - v32;
  v34 = [a1 emailMetadata];
  v35 = [a1 orderDetails];
  v138 = v33;
  v139 = v35;
  if (v34)
  {
    v36 = a1;
    v37 = v19;
    v38 = [v34 messageID];
    if (v38)
    {
      v39 = v38;
      v131 = sub_226D6E39C();
      v132 = v40;
    }

    else
    {
      v131 = 0;
      v132 = 0;
    }

    v42 = [v34 dateSent];
    if (v42)
    {
      v43 = v42;
      sub_226D6D45C();

      v44 = sub_226D6D4AC();
      (*(*(v44 - 8) + 56))(v31, 0, 1, v44);
    }

    else
    {
      v45 = sub_226D6D4AC();
      (*(*(v45 - 8) + 56))(v31, 1, 1, v45);
    }

    v19 = v37;
    sub_226B72784(v31, v138);
    v46 = [v34 subject];
    a1 = v36;
    if (v46)
    {
      v47 = v46;
      v48 = sub_226D6E39C();
      v129 = v49;
      v130 = v48;
    }

    else
    {
      v129 = 0;
      v130 = 0;
    }

    v50 = [v34 senderDomain];
    if (v50)
    {
      v51 = v50;
      v52 = sub_226D6E39C();
      v127 = v53;
      v128 = v52;
    }

    else
    {
      v127 = 0;
      v128 = 0;
    }

    v54 = [v34 fromEmailAddress];
    if (v54)
    {
      v55 = v54;
      v56 = sub_226D6E39C();
      v125 = v57;
      v126 = v56;
    }

    else
    {
      v125 = 0;
      v126 = 0;
    }

    v58 = [v34 fromDisplayName];
    if (v58)
    {
      v59 = v58;
      v60 = sub_226D6E39C();
      v123 = v61;
      v124 = v60;
    }

    else
    {
      v123 = 0;
      v124 = 0;
    }

    v62 = [v34 toEmailAddress];
    if (v62)
    {
      v63 = v62;
      v64 = sub_226D6E39C();
      v121 = v65;
      v122 = v64;
    }

    else
    {
      v121 = 0;
      v122 = 0;
    }

    v66 = [v34 toDisplayName];
    if (v66)
    {
      v67 = v66;
      v68 = sub_226D6E39C();
      v119 = v69;
      v120 = v68;
    }

    else
    {
      v119 = 0;
      v120 = 0;
    }

    v70 = [v34 replyToEmailAddress];
    if (v70)
    {
      v71 = v70;
      v118 = sub_226D6E39C();
      v117 = v72;
    }

    else
    {
      v118 = 0;
      v117 = 0;
    }

    v73 = [v34 replyToDisplayName];
    if (v73)
    {
      v74 = v73;
      v116 = sub_226D6E39C();
      v115 = v75;
    }

    else
    {
      v116 = 0;
      v115 = 0;
    }
  }

  else
  {
    v41 = sub_226D6D4AC();
    (*(*(v41 - 8) + 56))(v33, 1, 1, v41);
    v131 = 0;
    v132 = 0;
    v116 = 0;
    v115 = 0;
    v118 = 0;
    v117 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0;
    v122 = 0;
    v123 = 0;
    v124 = 0;
    v125 = 0;
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v129 = 0;
    v130 = 0;
  }

  sub_226C9E760([a1 emailType], v26);
  v76 = [a1 spotlightUniqueIdentifier];
  if (v76)
  {
    v77 = v76;
    v114 = sub_226D6E39C();
    v113 = v78;
  }

  else
  {
    v114 = 0;
    v113 = 0;
  }

  v79 = [a1 spotlightDomainIdentifier];
  v110 = v34;
  if (v79)
  {
    v80 = v79;
    v112 = sub_226D6E39C();
    v111 = v81;
  }

  else
  {
    v112 = 0;
    v111 = 0;
  }

  v82 = v139;
  if (!v139)
  {
    v88 = v9;
    sub_226D6938C();
    sub_226C9E824(0, v137);
    sub_226D6934C();
    v89 = MEMORY[0x277CC7888];
LABEL_65:
    v103 = v133;
    (*(v3 + 104))(v7, *v89, v133);
    (*(v3 + 32))(v88, v7, v103);
    sub_226D6937C();
    sub_226D693CC();

    return;
  }

  v105 = a1;
  v83 = [v139 orderNumber];
  v84 = v82;
  v109 = v19;
  if (v83)
  {
    v85 = v83;
    sub_226D6E39C();
    v87 = v86;
  }

  else
  {
    v87 = 0;
  }

  v108 = v3;
  v90 = [v84 merchant];
  v107 = v9;
  v106 = v7;
  v104[1] = v87;
  if (v90)
  {
    v91 = v90;
    v92 = [v90 displayName];

    if (v92)
    {
      sub_226D6E39C();
    }
  }

  sub_226D6938C();
  v93 = [v84 shippingDetails];
  if (v93)
  {
    v94 = v93;
    v95 = [v93 status];
  }

  else
  {
    v95 = 0;
  }

  sub_226C9E824(v95, v137);
  v96 = [v84 shippingDetails];
  if (v96)
  {
    v97 = v96;
    v98 = [v96 trackingNumber];

    if (v98)
    {
      sub_226D6E39C();
    }
  }

  v99 = [v84 shippingDetails];
  if (v99)
  {
    v100 = v99;
    v101 = [v99 carrierName];

    if (v101)
    {
      sub_226D6E39C();
    }

    v84 = v139;
  }

  sub_226D6934C();
  v102 = [v84 orderContentType];
  if (!v102)
  {
    v89 = MEMORY[0x277CC7888];
    v3 = v108;
    v88 = v107;
    v7 = v106;
    goto LABEL_62;
  }

  v3 = v108;
  v88 = v107;
  v7 = v106;
  if (v102 == 2)
  {
    v89 = MEMORY[0x277CC7878];
LABEL_62:
    a1 = v105;
    goto LABEL_65;
  }

  a1 = v105;
  if (v102 == 1)
  {
    v89 = MEMORY[0x277CC7880];
    goto LABEL_65;
  }

  sub_226D6F0AC();
  __break(1u);
}

void sub_226C9D800(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  if (a1)
  {
    v9 = [a1 displayName];
    if (v9)
    {
      v10 = v9;
      sub_226D6E39C();
    }

    v12 = [a1 displayNameUpdateDate];
    if (v12)
    {
      v13 = v12;
      sub_226D6D45C();

      v14 = sub_226D6D4AC();
      (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    }

    else
    {
      v15 = sub_226D6D4AC();
      (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    }

    sub_226B72784(v6, v8);
    v16 = [a1 domainName];
    if (v16)
    {
      v17 = v16;
      sub_226D6E39C();
    }
  }

  else
  {
    v11 = sub_226D6D4AC();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  sub_226D696CC();
}

void sub_226C9DA40(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v55 - v5;
  v7 = sub_226D6945C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v72 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6946C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 status];
  v70 = v13;
  sub_226C9E8E8(v14, v13);
  v15 = [a1 trackingNumber];
  if (v15)
  {
    v16 = v15;
    v17 = sub_226D6E39C();
    v68 = v18;
    v69 = v17;
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  v19 = [a1 carrierName];
  if (v19)
  {
    v20 = v19;
    v21 = sub_226D6E39C();
    v66 = v22;
    v67 = v21;
  }

  else
  {
    v66 = 0;
    v67 = 0;
  }

  v23 = [a1 shippingMethod];
  if (v23)
  {
    v24 = v23;
    v25 = sub_226D6E39C();
    v64 = v26;
    v65 = v25;
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  v27 = [a1 shippingDate];
  if (v27)
  {
    v28 = v27;
    v29 = sub_226D6E39C();
    v62 = v30;
    v63 = v29;
  }

  else
  {
    v62 = 0;
    v63 = 0;
  }

  v31 = [a1 shippingTime];
  if (v31)
  {
    v32 = v31;
    v33 = sub_226D6E39C();
    v60 = v34;
    v61 = v33;
  }

  else
  {
    v60 = 0;
    v61 = 0;
  }

  v35 = [a1 estimatedDeliveryStartDate];
  if (v35)
  {
    v36 = v35;
    v37 = sub_226D6E39C();
    v58 = v38;
    v59 = v37;
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  v39 = [a1 estimatedDeliveryStartTime];
  if (v39)
  {
    v40 = v39;
    v41 = sub_226D6E39C();
    v56 = v42;
    v57 = v41;
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  v43 = [a1 estimatedDeliveryEndDate];
  if (v43)
  {
    v44 = v43;
    v55 = sub_226D6E39C();
  }

  else
  {
    v55 = 0;
  }

  v45 = [a1 estimatedDeliveryEndTime];
  if (v45)
  {
    v46 = v45;
    sub_226D6E39C();
  }

  v47 = [a1 deliveryDate];
  if (v47)
  {
    v48 = v47;
    sub_226D6E39C();
  }

  v49 = [a1 deliveryTime];
  if (v49)
  {
    v50 = v49;
    sub_226D6E39C();
  }

  sub_226C9E9AC([a1 shippingRecipient]);
  v51 = [a1 fulfillmentUpdateDate];
  if (v51)
  {
    v52 = v51;
    sub_226D6D45C();

    v53 = 0;
  }

  else
  {
    v53 = 1;
  }

  v54 = sub_226D6D4AC();
  (*(*(v54 - 8) + 56))(v6, v53, 1, v54);
  sub_226D6947C();
}

void sub_226C9DEF0(void *a1)
{
  v2 = sub_226D6952C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_226D694FC();
  sub_226D6943C();
  if (a1)
  {
    v4 = [a1 fullName];
    if (v4)
    {
      v5 = v4;
      sub_226D6E39C();
    }

    sub_226D6944C();
    v6 = [a1 phoneNumber];
    if (v6)
    {
      v7 = v6;
      sub_226D6E39C();
    }

    sub_226D6940C();
    v8 = [a1 emailAddress];
    if (v8)
    {
      v9 = v8;
      sub_226D6E39C();
    }

    sub_226D6941C();
    v10 = [a1 billingAddress];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 street];

      if (v12)
      {
        sub_226D6E39C();
      }
    }
  }

  else
  {
    sub_226D6944C();
    sub_226D6940C();
    sub_226D6941C();
  }

  v13 = sub_226D6968C();
  sub_226D6950C();
  v13(v32, 0);
  if (a1)
  {
    v14 = [a1 billingAddress];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 city];

      if (v16)
      {
        sub_226D6E39C();
      }
    }

    v17 = sub_226D6968C();
    sub_226D694DC();
    v17(v32, 0);
    v18 = [a1 billingAddress];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 state];

      if (v20)
      {
        sub_226D6E39C();
      }
    }
  }

  else
  {
    v21 = sub_226D6968C();
    sub_226D694DC();
    v21(v32, 0);
  }

  v22 = sub_226D6968C();
  sub_226D694EC();
  v22(v32, 0);
  if (a1)
  {
    v23 = [a1 billingAddress];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 postalCode];

      if (v25)
      {
        sub_226D6E39C();
      }
    }

    v26 = sub_226D6968C();
    sub_226D694CC();
    v26(v32, 0);
    v27 = [a1 billingAddress];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 country];

      if (v29)
      {
        sub_226D6E39C();
      }
    }
  }

  else
  {
    v30 = sub_226D6968C();
    sub_226D694CC();
    v30(v32, 0);
  }

  v31 = sub_226D6968C();
  sub_226D6951C();
  v31(v32, 0);
}

void sub_226C9E430(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = sub_226D695EC();
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v24);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F90];
  sub_226D695FC();
  if (a1)
  {
    v9 = [a1 totalAmount];
    if (v9)
    {
      v10 = v9;
      sub_226D6E39C();
    }

    sub_226D6960C();
    v11 = [a1 totalIsoCurrencyCode];
    if (v11)
    {
      v12 = v11;
      sub_226D6E39C();
    }

    sub_226D6963C();
    v13 = [a1 transactions];
    if (v13)
    {
      v14 = v13;
      sub_226AE59B4(0, &qword_27D7A8988, 0x277D211A8);
      v15 = sub_226D6E5EC();

      if (v15 >> 62)
      {
        goto LABEL_9;
      }

LABEL_12:
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_226D6960C();
    sub_226D6963C();
  }

  v15 = MEMORY[0x277D84F90];
  if (!(MEMORY[0x277D84F90] >> 62))
  {
    goto LABEL_12;
  }

LABEL_9:
  v16 = sub_226D6EDFC();
  if (!v16)
  {
LABEL_10:

LABEL_22:
    sub_226D6962C();

    return;
  }

LABEL_13:
  v25 = v8;
  sub_226AE25D4(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v22 = a2;
    v23 = a1;
    v17 = 0;
    v18 = v25;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x22AA8AFD0](v17, v15);
      }

      else
      {
        v19 = *(v15 + 8 * v17 + 32);
      }

      sub_226C9EEEC(v19);
      v25 = v18;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_226AE25D4(v20 > 1, v21 + 1, 1);
        v18 = v25;
      }

      ++v17;
      *(v18 + 16) = v21 + 1;
      (*(v4 + 32))(v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21, v7, v24);
    }

    while (v16 != v17);

    a1 = v23;
    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_226C9E760@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 9)
  {
    result = sub_226D6F0AC();
    __break(1u);
  }

  else
  {
    v3 = **(&unk_2785C8A90 + a1);
    v4 = sub_226D693BC();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  return result;
}

uint64_t sub_226C9E824@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 0xA)
  {
    result = sub_226D6F0AC();
    __break(1u);
  }

  else
  {
    v3 = **(&unk_2785C8AD8 + a1);
    v4 = sub_226D6946C();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  return result;
}

uint64_t sub_226C9E8E8@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 0xA)
  {
    result = sub_226D6F0AC();
    __break(1u);
  }

  else
  {
    v3 = **(&unk_2785C8AD8 + a1);
    v4 = sub_226D6946C();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  return result;
}

void sub_226C9E9AC(void *a1)
{
  v2 = sub_226D6952C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_226D694FC();
  sub_226D6943C();
  if (a1)
  {
    v4 = [a1 fullName];
    if (v4)
    {
      v5 = v4;
      sub_226D6E39C();
    }

    sub_226D6944C();
    v6 = [a1 phoneNumber];
    if (v6)
    {
      v7 = v6;
      sub_226D6E39C();
    }

    sub_226D6940C();
    v8 = [a1 emailAddress];
    if (v8)
    {
      v9 = v8;
      sub_226D6E39C();
    }

    sub_226D6941C();
    v10 = [a1 address];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 street];

      if (v12)
      {
        sub_226D6E39C();
      }
    }
  }

  else
  {
    sub_226D6944C();
    sub_226D6940C();
    sub_226D6941C();
  }

  v13 = sub_226D6942C();
  sub_226D6950C();
  v13(v32, 0);
  if (a1)
  {
    v14 = [a1 address];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 city];

      if (v16)
      {
        sub_226D6E39C();
      }
    }

    v17 = sub_226D6942C();
    sub_226D694DC();
    v17(v32, 0);
    v18 = [a1 address];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 state];

      if (v20)
      {
        sub_226D6E39C();
      }
    }
  }

  else
  {
    v21 = sub_226D6942C();
    sub_226D694DC();
    v21(v32, 0);
  }

  v22 = sub_226D6942C();
  sub_226D694EC();
  v22(v32, 0);
  if (a1)
  {
    v23 = [a1 address];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 postalCode];

      if (v25)
      {
        sub_226D6E39C();
      }
    }

    v26 = sub_226D6942C();
    sub_226D694CC();
    v26(v32, 0);
    v27 = [a1 address];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 country];

      if (v29)
      {
        sub_226D6E39C();
      }
    }
  }

  else
  {
    v30 = sub_226D6942C();
    sub_226D694CC();
    v30(v32, 0);
  }

  v31 = sub_226D6942C();
  sub_226D6951C();
  v31(v32, 0);
}