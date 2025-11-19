void sub_226C9EEEC(void *a1)
{
  v2 = sub_226D6957C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_226D6954C();
  sub_226D695CC();
  v4 = [a1 amount];
  if (v4)
  {
    v5 = v4;
    sub_226D6E39C();
  }

  sub_226D695DC();
  v6 = [a1 isoCurrencyCode];
  if (v6)
  {
    v7 = v6;
    sub_226D6E39C();
  }

  sub_226D6958C();
  v8 = [a1 paymentMethod];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 displayName];

    if (v10)
    {
      sub_226D6E39C();
    }
  }

  v11 = sub_226D6959C();
  sub_226D6955C();
  v11(v21, 0);
  v12 = [a1 paymentMethod];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 lastFourDigits];

    if (v14)
    {
      sub_226D6E39C();
    }
  }

  v15 = sub_226D6959C();
  sub_226D6956C();
  v15(v21, 0);
  v16 = [a1 paymentMethod];
  if (v16)
  {
    v17 = v16;
    [v16 isApplePay];
  }

  v18 = sub_226D6959C();
  sub_226D6953C();
  v18(v21, 0);
  v19 = [a1 transactionIdenifier];
  if (v19)
  {
    v20 = v19;
    sub_226D6E39C();
  }

  sub_226D695BC();
}

void sub_226C9F234(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A08, qword_226D7A708);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  v7 = [objc_opt_self() defaultWorkspace];
  if (v7)
  {
    v8 = v7;
    v9 = *(v3 + 16);
    v9(v6, a1, v2);
    v10 = type metadata accessor for ApplicationWorkspaceObserver(0);
    v11 = objc_allocWithZone(v10);
    v9(&v11[OBJC_IVAR____TtC13FinanceDaemonP33_00696368646FB3072A3FCAFA2C38021D28ApplicationWorkspaceObserver_continuation], v6, v2);
    v16.receiver = v11;
    v16.super_class = v10;
    v12 = objc_msgSendSuper2(&v16, sel_init);
    (*(v3 + 8))(v6, v2);
    v13 = swift_allocObject();
    *(v13 + 16) = v8;
    *(v13 + 24) = v12;
    v14 = v8;
    v15 = v12;
    sub_226D6E7BC();
    [v14 addObserver_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_226C9F41C(uint64_t a1, int a2)
{
  v5 = type metadata accessor for ApplicationWorkspaceEvent(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A00, &qword_226D7A700);
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = sub_226D67F1C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_226CA0208(a1);
  v19 = v18[2];
  if (v19)
  {
    v33 = a2;
    v20 = v14 + 16;
    v21 = *(v14 + 16);
    v22 = *(v14 + 80);
    v27 = v18;
    v28 = v9;
    v23 = v18 + ((v22 + 32) & ~v22);
    v31 = *(v20 + 56);
    v32 = OBJC_IVAR____TtC13FinanceDaemonP33_00696368646FB3072A3FCAFA2C38021D28ApplicationWorkspaceObserver_continuation;
    v29 = v5;
    v30 = v2;
    v24 = (v34 + 8);
    v34 = v20;
    v25 = (v20 - 8);
    do
    {
      v21(v17, v23, v13);
      v21(v8, v17, v13);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A08, qword_226D7A708);
      sub_226D6E7CC();
      (*v24)(v12, v28);
      (*v25)(v17, v13);
      v23 += v31;
      --v19;
    }

    while (v19);
  }
}

uint64_t sub_226C9F6F4(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a3)
  {
    v6 = sub_226D6E5EC();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  sub_226C9F41C(v6, a4);
}

uint64_t sub_226C9F770(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_226D6EF8C();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_226AC4708(i, v6);
    sub_226CA0534();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_226D6EF6C();
    v4 = *(v7 + 16);
    sub_226D6EF9C();
    sub_226D6EFAC();
    sub_226D6EF7C();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_226C9F85C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v12 = MEMORY[0x277D84F90];
  sub_226AE2980(0, v3 & ~(v3 >> 63), 0);
  v4 = v12;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AA8AFD0](i, a1);
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v6 = *(a1 + 8 * i + 32);
        swift_unknownObjectRetain();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = sub_226D6EDFC();
          goto LABEL_3;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CD0, &qword_226D7AE80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6260, &qword_226D70C80);
      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_226AE2980((v8 > 1), v9 + 1, 1);
      }

      *(v12 + 16) = v9 + 1;
      *(v12 + 8 * v9 + 32) = v11;
      if (v7 == v2)
      {
        return v4;
      }
    }
  }

  v2 = sub_226D6EDFC();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

void sub_226C9FAE0()
{
  sub_226C9FB70();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_226C9FB70()
{
  if (!qword_28105F4F0)
  {
    type metadata accessor for ApplicationWorkspaceEvent(255);
    v0 = sub_226D6E7DC();
    if (!v1)
    {
      atomic_store(v0, &qword_28105F4F0);
    }
  }
}

uint64_t sub_226C9FBE8()
{
  result = sub_226D67F1C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_226C9FC48(uint64_t a1, uint64_t a2)
{
  v34 = sub_226D67F1C();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v34);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v11 = type metadata accessor for ApplicationWorkspaceEvent(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A89F0, &qword_226D7A6F8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v33 - v21;
  v23 = *(v20 + 56);
  sub_226CA0088(a1, &v33 - v21);
  sub_226CA0088(a2, &v22[v23]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_226CA0088(v22, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v34;
      (*(v4 + 32))(v8, &v22[v23], v34);
      sub_226CA0154();
      sub_226D6E53C();
      sub_226D6E53C();
      if (v37 == v35 && v38 == v36)
      {
        v25 = *(v4 + 8);
        v25(v8, v24);

        v25(v15, v24);
        goto LABEL_11;
      }

      v29 = sub_226D6F21C();
      v30 = *(v4 + 8);
      v30(v8, v24);

      v30(v15, v24);
      if (v29)
      {
        goto LABEL_11;
      }

LABEL_19:
      sub_226CA01AC(v22);
      return 0;
    }

    v17 = v15;
  }

  else
  {
    sub_226CA0088(v22, v17);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v26 = v34;
      (*(v4 + 32))(v10, &v22[v23], v34);
      sub_226CA0154();
      sub_226D6E53C();
      sub_226D6E53C();
      if (v37 == v35 && v38 == v36)
      {
        v27 = *(v4 + 8);
        v27(v10, v26);

        v27(v17, v26);
        goto LABEL_11;
      }

      v31 = sub_226D6F21C();
      v32 = *(v4 + 8);
      v32(v10, v26);

      v32(v17, v26);
      if (v31)
      {
LABEL_11:
        sub_226CA01AC(v22);
        return 1;
      }

      goto LABEL_19;
    }
  }

  (*(v4 + 8))(v17, v34);
  sub_226CA00EC(v22);
  return 0;
}

uint64_t sub_226CA0088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationWorkspaceEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CA00EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A89F0, &qword_226D7A6F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_226CA0154()
{
  result = qword_281062BC8;
  if (!qword_281062BC8)
  {
    sub_226D67F1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281062BC8);
  }

  return result;
}

uint64_t sub_226CA01AC(uint64_t a1)
{
  v2 = type metadata accessor for ApplicationWorkspaceEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_226CA0208(uint64_t a1)
{
  v27 = sub_226D67F1C();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v27);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = sub_226C9F770(a1);
    if (v6)
    {
      v7 = v6;
      v8 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v6 >> 62)
      {
        v9 = sub_226D6EDFC();
        if (v9)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
LABEL_5:
          v24[0] = v8;
          v28 = MEMORY[0x277D84F90];
          result = sub_226AE23C4(0, v9 & ~(v9 >> 63), 0);
          if (v9 < 0)
          {
            __break(1u);
LABEL_29:
            __break(1u);
            return result;
          }

          v11 = 0;
          v12 = v28;
          v25 = v9;
          v26 = v7 & 0xC000000000000001;
          v24[1] = v2 + 32;
          while (1)
          {
            v13 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            if (v26)
            {
              v14 = MEMORY[0x22AA8AFD0](v11, v7);
            }

            else
            {
              if (v11 >= *(v24[0] + 16))
              {
                goto LABEL_24;
              }

              v14 = *(v7 + 8 * v11 + 32);
            }

            v15 = v14;
            v16 = v7;
            result = [v14 bundleIdentifier];
            if (!result)
            {
              goto LABEL_29;
            }

            v17 = result;
            sub_226D6E39C();

            sub_226D67EFC();
            v28 = v12;
            v19 = *(v12 + 16);
            v18 = *(v12 + 24);
            if (v19 >= v18 >> 1)
            {
              sub_226AE23C4(v18 > 1, v19 + 1, 1);
              v12 = v28;
            }

            *(v12 + 16) = v19 + 1;
            (*(v2 + 32))(v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v19, v5, v27);
            ++v11;
            v7 = v16;
            if (v13 == v25)
            {

              return v12;
            }
          }

          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      return MEMORY[0x277D84F90];
    }
  }

  if (qword_28105F5D8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v20 = sub_226D6E07C();
  __swift_project_value_buffer(v20, qword_28105F5E0);
  v21 = sub_226D6E05C();
  v22 = sub_226D6E9CC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_226AB4000, v21, v22, "Unable to cast appProxies to LSApplicationProxy!", v23, 2u);
    MEMORY[0x22AA8BEE0](v23, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_226CA0534()
{
  result = qword_28105F460;
  if (!qword_28105F460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28105F460);
  }

  return result;
}

void sub_226CA0590(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 labRequestObject];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 failedAttemptCount];

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v4 == 0;
}

uint64_t sub_226CA0628@<X0>(void *a1@<X0>, SEL *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  v10 = [a1 labRequestObject];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 *a2];

    if (v12)
    {
      sub_226D6D45C();

      v13 = sub_226D6D4AC();
      (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
    }

    else
    {
      v17 = sub_226D6D4AC();
      (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    }

    return sub_226B72784(v9, a3);
  }

  else
  {
    v14 = sub_226D6D4AC();
    v15 = *(*(v14 - 8) + 56);

    return v15(a3, 1, 1, v14);
  }
}

unint64_t sub_226CA07D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a2;
  v69 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v65 - v6;
  v8 = sub_226D6D4AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v68 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v67 = &v65 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v65 - v15;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A10, qword_226D7A750);
  v83 = *(v81 - 8);
  v17 = *(v83 + 64);
  v18 = MEMORY[0x28223BE20](v81);
  v77 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v65 - v20;
  v22 = sub_226D6D52C();
  v70 = *(v22 - 8);
  v71 = v22;
  v23 = *(v70 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [a1 publicAccountObject];
  v27 = [v26 id];

  sub_226D6D4FC();
  sub_226CA0628(a1, &selRef_lastSuccessDate, v7);
  v28 = (*(v9 + 48))(v7, 1, v8);
  v82 = v25;
  if (v28 == 1)
  {
    v29 = sub_226B905C4(v7);
    MEMORY[0x28223BE20](v29);
    *(&v65 - 2) = v25;
    v76 = sub_226D6737C();
    v84 = v76;
    sub_226D6D72C();
  }

  else
  {
    v30 = (*(v9 + 32))(v16, v7, v8);
    MEMORY[0x28223BE20](v30);
    *(&v65 - 2) = v25;
    *(&v65 - 1) = v16;
    v76 = sub_226D6737C();
    v84 = v76;
    sub_226D6D72C();
    (*(v9 + 8))(v16, v8);
  }

  v78 = v21;
  v31 = sub_226D6845C();
  v32 = sub_226D6844C();
  [v32 setFetchLimit_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v33 = swift_allocObject();
  v75 = xmmword_226D71F20;
  *(v33 + 16) = xmmword_226D71F20;
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  swift_getKeyPath();
  *(v33 + 32) = sub_226D6E9FC();
  v34 = sub_226D6E5CC();

  v72 = v32;
  [v32 setSortDescriptors_];

  v35 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v36 = *(v83 + 16);
  v73 = v35;
  v74 = v36;
  v37 = v77;
  v38 = v81;
  v36(v77, v21, v81);
  sub_226D6737C();
  v39 = sub_226D6E90C();
  [v32 setPredicate_];

  v40 = v31;
  v41 = sub_226D6844C();
  [v41 setFetchLimit_];
  v42 = swift_allocObject();
  *(v42 + 16) = v75;
  swift_getKeyPath();
  *(v42 + 32) = sub_226D6E9FC();
  v43 = sub_226D6E5CC();
  v44 = v38;
  v45 = v78;

  [v41 setSortDescriptors_];

  v74(v37, v45, v38);
  v46 = v72;
  v47 = sub_226D6E90C();
  [v41 setPredicate_];

  v48 = v79;
  result = sub_226D6EBBC();
  if (v48)
  {
    (*(v83 + 8))(v45, v44);
    v50 = v82;

    return (*(v70 + 8))(v50, v71);
  }

  v51 = v45;
  if (!(result >> 62))
  {
    v53 = v82;
    v52 = v83;
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_20:
    (*(v52 + 8))(v51, v44);

LABEL_26:

    v59 = 1;
    goto LABEL_27;
  }

  v40 = v41;
  v60 = result;
  v61 = sub_226D6EDFC();
  result = v60;
  v41 = v40;
  v53 = v82;
  v52 = v83;
  if (!v61)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((result & 0xC000000000000001) != 0)
  {
    v54 = v41;
    v55 = MEMORY[0x22AA8AFD0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }

    v54 = v41;
    v55 = *(result + 32);
  }

  v40 = v55;

  v41 = v54;
  result = sub_226D6EBBC();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_24:
    (*(v83 + 8))(v51, v44);

LABEL_25:
    v46 = v41;
    v41 = v40;
    v53 = v82;
    goto LABEL_26;
  }

LABEL_23:
  v62 = result;
  v63 = sub_226D6EDFC();
  result = v62;
  if (!v63)
  {
    goto LABEL_24;
  }

LABEL_13:
  v66 = v41;
  if ((result & 0xC000000000000001) != 0)
  {
    v56 = MEMORY[0x22AA8AFD0](0);
    goto LABEL_16;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v56 = *(result + 32);
LABEL_16:
    v41 = v56;

    if ((sub_226D6EC3C() & 1) == 0)
    {
      v57 = [v40 transactionDate];
      sub_226D6D45C();

      v58 = [v41 transactionDate];
      sub_226D6D45C();

      sub_226D6CD3C();
      (*(v83 + 8))(v51, v44);
      v59 = 0;
      v53 = v82;
LABEL_27:
      v64 = sub_226D6CD7C();
      (*(*(v64 - 8) + 56))(v69, v59, 1, v64);
      return (*(v70 + 8))(v53, v71);
    }

    (*(v83 + 8))(v51, v44);

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_226CA1174@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v69 = a3;
  v54 = a2;
  v75 = a4;
  v5 = sub_226D6CFFC();
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  MEMORY[0x28223BE20](v5);
  v65 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A18, &qword_226D7A798);
  v9 = *(v8 - 8);
  v71 = v8;
  v72 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v64 = v53 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A20, &qword_226D7A7A0);
  v70 = *(v66 - 8);
  v12 = *(v70 + 64);
  MEMORY[0x28223BE20](v66);
  v60 = v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A28, &qword_226D7A7A8);
  v15 = *(v14 - 8);
  v73 = v14;
  v74 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v62 = v53 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A30, &qword_226D7A7B0);
  v19 = *(v18 - 8);
  v58 = v18;
  v59 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v53 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A38, &qword_226D7A7B8);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v53 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A40, &qword_226D7A7C0);
  v29 = *(v28 - 8);
  v55 = v28;
  v56 = v29;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = v53 - v31;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A48, &qword_226D7A7C8);
  v63 = *(v61 - 8);
  v33 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  v57 = v53 - v34;
  v53[1] = *a1;
  sub_226AC4194(&qword_27D7A8A50, &qword_27D7A8A38, &qword_226D7A7B8);
  sub_226D6D01C();
  swift_getKeyPath();
  sub_226D6CFCC();

  v35 = v24 + 8;
  v36 = *(v24 + 8);
  v53[0] = v35;
  v36(v27, v23);
  sub_226D6D52C();
  sub_226D6D00C();
  v54 = MEMORY[0x277CC90C0];
  sub_226AC4194(&qword_27D7A8A58, &qword_27D7A8A40, &qword_226D7A7C0);
  v53[2] = MEMORY[0x277CC9080];
  sub_226AC4194(&qword_27D7A8A60, &qword_27D7A8A30, &qword_226D7A7B0);
  sub_226CA22A4(&qword_27D7A6DA0, MEMORY[0x277CC95F0]);
  v37 = v55;
  v38 = v58;
  sub_226D6CFBC();
  (*(v59 + 8))(v22, v38);
  (*(v56 + 8))(v32, v37);
  sub_226D6D01C();
  swift_getKeyPath();
  v39 = v60;
  sub_226D6CFCC();

  v36(v27, v23);
  sub_226D6D4AC();
  v40 = v64;
  sub_226D6D00C();
  v42 = v67;
  v41 = v68;
  v43 = v65;
  (*(v67 + 104))(v65, *MEMORY[0x277CC8FC0], v68);
  sub_226AC4194(&qword_27D7A8A68, &qword_27D7A8A20, &qword_226D7A7A0);
  sub_226AC4194(&qword_27D7A8A70, &qword_27D7A8A18, &qword_226D7A798);
  sub_226CA22A4(&qword_27D7A66D8, MEMORY[0x277CC9578]);
  v44 = v62;
  v45 = v66;
  v46 = v71;
  sub_226D6CFDC();
  (*(v42 + 8))(v43, v41);
  (*(v72 + 8))(v40, v46);
  (*(v70 + 8))(v39, v45);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A78, &qword_226D7A830);
  v48 = v75;
  v75[3] = v47;
  v48[4] = sub_226CA1E68();
  __swift_allocate_boxed_opaque_existential_1(v48);
  sub_226AC4194(&qword_27D7A8AD0, &qword_27D7A8A48, &qword_226D7A7C8);
  sub_226AC4194(&qword_27D7A8AD8, &qword_27D7A8A28, &qword_226D7A7A8);
  v49 = v57;
  v50 = v61;
  v51 = v73;
  sub_226D6CFEC();
  (*(v74 + 8))(v44, v51);
  return (*(v63 + 8))(v49, v50);
}

uint64_t sub_226CA1A50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A30, &qword_226D7A7B0);
  v6 = *(v5 - 8);
  v24 = v5;
  v25 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A38, &qword_226D7A7B8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A40, &qword_226D7A7C0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v23 - v18;
  v20 = *a1;
  sub_226AC4194(&qword_27D7A8A50, &qword_27D7A8A38, &qword_226D7A7B8);
  sub_226D6D01C();
  swift_getKeyPath();
  sub_226D6CFCC();

  (*(v11 + 8))(v14, v10);
  sub_226D6D52C();
  sub_226D6D00C();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A48, &qword_226D7A7C8);
  a3[4] = sub_226CA1EF4();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_226AC4194(&qword_27D7A8A58, &qword_27D7A8A40, &qword_226D7A7C0);
  sub_226AC4194(&qword_27D7A8A60, &qword_27D7A8A30, &qword_226D7A7B0);
  sub_226CA22A4(&qword_27D7A6DA0, MEMORY[0x277CC95F0]);
  v21 = v24;
  sub_226D6CFBC();
  (*(v25 + 8))(v9, v21);
  return (*(v16 + 8))(v19, v15);
}

void sub_226CA1E00(id *a1)
{
  v1 = [*a1 transactionDate];
  sub_226D6D45C();
}

unint64_t sub_226CA1E68()
{
  result = qword_27D7A8A80;
  if (!qword_27D7A8A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A8A78, &qword_226D7A830);
    sub_226CA1EF4();
    sub_226CA2080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8A80);
  }

  return result;
}

unint64_t sub_226CA1EF4()
{
  result = qword_27D7A8A88;
  if (!qword_27D7A8A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A8A48, &qword_226D7A7C8);
    sub_226CA2124(&qword_27D7A8A90, &qword_27D7A8A40, &qword_226D7A7C0);
    sub_226CA1F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8A88);
  }

  return result;
}

unint64_t sub_226CA1F98()
{
  result = qword_27D7A8AA0;
  if (!qword_27D7A8AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A8A30, &qword_226D7A7B0);
    v1 = MEMORY[0x277CC95F0];
    sub_226CA22A4(&qword_27D7A7DE8, MEMORY[0x277CC95F0]);
    sub_226CA22A4(&qword_27D7A7DD8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8AA0);
  }

  return result;
}

unint64_t sub_226CA2080()
{
  result = qword_27D7A8AA8;
  if (!qword_27D7A8AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A8A28, &qword_226D7A7A8);
    sub_226CA2124(&qword_27D7A8AB0, &qword_27D7A8A20, &qword_226D7A7A0);
    sub_226CA21BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8AA8);
  }

  return result;
}

uint64_t sub_226CA2124(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_226AC4194(&qword_27D7A8A98, &qword_27D7A8A38, &qword_226D7A7B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_226CA21BC()
{
  result = qword_27D7A8AB8;
  if (!qword_27D7A8AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A8A18, &qword_226D7A798);
    v1 = MEMORY[0x277CC9578];
    sub_226CA22A4(&qword_27D7A8AC0, MEMORY[0x277CC9578]);
    sub_226CA22A4(&qword_27D7A8AC8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8AB8);
  }

  return result;
}

uint64_t sub_226CA22A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226CA22EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_226CA2334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226CA2380()
{
  v2 = *v0;
  v3 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8AE0, &qword_226D7A898);
  sub_226D6EB8C();
  return v4;
}

uint64_t BackgroundDeliveryRegistrationManager.__allocating_init(context:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_226CA24D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6C35C();
  v11 = *(a2 + 16);
  v12 = sub_226D6C34C();
  if (!v3)
  {
    v13 = v7;
    v22 = v12;
    v14 = *(a3 + 16);
    if (v14)
    {
      v21 = v6;
      v15 = *(sub_226D66F6C() - 8);
      v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v17 = *(v15 + 72);
      sub_226D6C44C();
      do
      {
        sub_226D6D46C();

        (*(v13 + 8))(v10, v21);
        v16 += v17;
        --v14;
      }

      while (v14);
    }

    v23[0] = 0;
    if ([v11 save_])
    {
      v18 = v23[0];
    }

    else
    {
      v19 = v23[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

id sub_226CA278C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 16);
  while (v7 != v6)
  {
    v8 = *(sub_226D66F6C() - 8);
    v9 = v6 + 1;
    v10 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6;
    sub_226D6C44C();
    v11 = *(a3 + 16);
    result = sub_226D6C3EC();
    v6 = v9;
    if (v3)
    {
      goto LABEL_8;
    }
  }

  v13 = *(a3 + 16);
  v16[0] = 0;
  if ([v13 save_])
  {
    result = v16[0];
  }

  else
  {
    v14 = v16[0];
    sub_226D6D04C();

    result = swift_willThrow();
  }

LABEL_8:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_226CA2968(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  sub_226D6C35C();
  v4 = *(a2 + 16);
  result = sub_226D6C33C();
  if (!v2)
  {
    v9[0] = 0;
    if ([v4 save_])
    {
      result = v9[0];
      v6 = *MEMORY[0x277D85DE8];
      return result;
    }

    v7 = v9[0];
    sub_226D6D04C();

    result = swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BackgroundDeliveryRegistrationManager.getAllPendingRegistrations(newestDeliveryDate:)()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8AE8, &qword_226D7A8F0);
  sub_226D6EB8C();
  return v3;
}

void sub_226CA2B48(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = sub_226D6B64C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v35 - v11;
  sub_226D6C44C();
  v13 = *(a1 + 16);
  v14 = sub_226D6C42C();
  if (v2)
  {
    if (qword_28105F680 != -1)
    {
      swift_once();
    }

    v15 = sub_226D6E07C();
    __swift_project_value_buffer(v15, qword_28105F688);
    v16 = v2;
    v17 = sub_226D6E05C();
    v18 = sub_226D6E9CC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v2;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_226AB4000, v17, v18, "Error fetching pending registrations: %@", v19, 0xCu);
      sub_226B17298(v20);
      MEMORY[0x22AA8BEE0](v20, -1, -1);
      MEMORY[0x22AA8BEE0](v19, -1, -1);
    }

    v23 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v36 = a2;
  if (!(v14 >> 62))
  {
    v24 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_9;
    }

LABEL_22:

    v23 = MEMORY[0x277D84F90];
    a2 = v36;
LABEL_23:
    *a2 = v23;
    return;
  }

  v34 = v14;
  v24 = sub_226D6EDFC();
  v14 = v34;
  if (!v24)
  {
    goto LABEL_22;
  }

LABEL_9:
  v25 = v14;
  v38 = MEMORY[0x277D84F90];
  sub_226AE293C(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v35[1] = 0;
    v23 = v38;
    v26 = v25;
    v37 = v5;
    if ((v25 & 0xC000000000000001) != 0)
    {
      v27 = 0;
      do
      {
        MEMORY[0x22AA8AFD0](v27, v26);
        sub_226D6B65C();
        v38 = v23;
        v29 = *(v23 + 16);
        v28 = *(v23 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_226AE293C(v28 > 1, v29 + 1, 1);
          v23 = v38;
        }

        ++v27;
        *(v23 + 16) = v29 + 1;
        (*(v6 + 32))(v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v29, v12, v37);
        v26 = v25;
      }

      while (v24 != v27);
    }

    else
    {
      v30 = 32;
      do
      {
        v31 = *(v26 + v30);
        sub_226D6B65C();
        v38 = v23;
        v33 = *(v23 + 16);
        v32 = *(v23 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_226AE293C(v32 > 1, v33 + 1, 1);
          v23 = v38;
        }

        *(v23 + 16) = v33 + 1;
        (*(v6 + 32))(v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v33, v10, v37);
        v30 += 8;
        --v24;
        v26 = v25;
      }

      while (v24);
    }

    a2 = v36;
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_226CA2F84()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8AE8, &qword_226D7A8F0);
  sub_226D6EB8C();
  return v3;
}

void sub_226CA2FF4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, const char *a5@<X4>, uint64_t *a6@<X8>)
{
  v52 = a5;
  v57 = a4;
  v10 = sub_226D66F5C();
  v54 = *(v10 - 8);
  v55 = v10;
  v11 = *(v54 + 64);
  MEMORY[0x28223BE20](v10);
  v53 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D6B64C();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v52 - v19;
  sub_226D6C44C();
  v21 = v56;
  v22 = (v57)(a1, a2, *(a3 + 16));
  if (v21)
  {
    v56 = a6;
    if (qword_28105F680 != -1)
    {
      swift_once();
    }

    v23 = sub_226D6E07C();
    __swift_project_value_buffer(v23, qword_28105F688);
    v25 = v53;
    v24 = v54;
    v26 = a1;
    v27 = v55;
    (*(v54 + 16))(v53, v26, v55);
    v28 = v21;
    v29 = sub_226D6E05C();
    v30 = sub_226D6E9CC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v25;
      v57 = swift_slowAlloc();
      v58 = v57;
      *v31 = 136315394;
      sub_226CA4238();
      v34 = sub_226D6F1CC();
      v35 = v27;
      v37 = v36;
      (*(v24 + 8))(v33, v35);
      v38 = sub_226AC4530(v34, v37, &v58);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2112;
      v39 = v21;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v40;
      *v32 = v40;
      _os_log_impl(&dword_226AB4000, v29, v30, v52, v31, 0x16u);
      sub_226B17298(v32);
      MEMORY[0x22AA8BEE0](v32, -1, -1);
      v41 = v57;
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      MEMORY[0x22AA8BEE0](v41, -1, -1);
      MEMORY[0x22AA8BEE0](v31, -1, -1);
    }

    else
    {

      (*(v24 + 8))(v25, v27);
    }

    a6 = v56;

    goto LABEL_17;
  }

  v42 = v22;
  v57 = v13;
  if (!(v22 >> 62))
  {
    v43 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
      goto LABEL_8;
    }

LABEL_25:

LABEL_17:
    v44 = MEMORY[0x277D84F90];
LABEL_23:
    *a6 = v44;
    return;
  }

  v43 = sub_226D6EDFC();
  if (!v43)
  {
    goto LABEL_25;
  }

LABEL_8:
  v58 = MEMORY[0x277D84F90];
  sub_226AE293C(0, v43 & ~(v43 >> 63), 0);
  if ((v43 & 0x8000000000000000) == 0)
  {
    v55 = 0;
    v56 = a6;
    v44 = v58;
    if ((v42 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v43; ++i)
      {
        MEMORY[0x22AA8AFD0](i, v42);
        sub_226D6B65C();
        v58 = v44;
        v47 = *(v44 + 16);
        v46 = *(v44 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_226AE293C(v46 > 1, v47 + 1, 1);
          v44 = v58;
        }

        *(v44 + 16) = v47 + 1;
        (*(v14 + 32))(v44 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v47, v20, v57);
      }
    }

    else
    {
      v48 = 32;
      do
      {
        v49 = *(v42 + v48);
        sub_226D6B65C();
        v58 = v44;
        v51 = *(v44 + 16);
        v50 = *(v44 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_226AE293C(v50 > 1, v51 + 1, 1);
          v44 = v58;
        }

        *(v44 + 16) = v51 + 1;
        (*(v14 + 32))(v44 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v51, v18, v57);
        v48 += 8;
        --v43;
      }

      while (v43);
    }

    a6 = v56;
    goto LABEL_23;
  }

  __break(1u);
}

id sub_226CA35FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v28[1] = *MEMORY[0x277D85DE8];
  v25 = sub_226D67F1C();
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v25);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_226D66F6C();
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v24);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(sub_226D6B64C() - 8);
    v15 = (v5 + 8);
    v16 = (v9 + 8);
    v17 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v23[0] = *(v14 + 72);
    v23[1] = sub_226D6C44C();
    while (1)
    {
      sub_226D6B63C();
      sub_226D6B62C();
      sub_226D6B61C();
      v18 = *(v27 + 16);
      sub_226D6C40C();
      if (v3)
      {
        break;
      }

      (*v15)(v8, v25);
      (*v16)(v12, v24);
      v17 += v23[0];
      if (!--v13)
      {
        goto LABEL_5;
      }
    }

    (*v15)(v8, v25);
    result = (*v16)(v12, v24);
  }

  else
  {
LABEL_5:
    v19 = *(v27 + 16);
    v28[0] = 0;
    if ([v19 save_])
    {
      result = v28[0];
    }

    else
    {
      v21 = v28[0];
      sub_226D6D04C();

      result = swift_willThrow();
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BackgroundDeliveryRegistrationManager.updateScheduledRegistrations(for:)()
{
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8AE8, &qword_226D7A8F0);
  result = sub_226D6EB7C();
  if (!v1)
  {
    return v4;
  }

  return result;
}

unint64_t sub_226CA3988@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6B64C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  sub_226D6C44C();
  v13 = *(a1 + 16);
  result = sub_226D6C41C();
  if (v2)
  {
    goto LABEL_29;
  }

  v15 = result;
  v38 = v10;
  v39 = 0;
  v40 = result >> 62;
  v41 = a2;
  v42 = v5;
  if (result >> 62)
  {
    goto LABEL_31;
  }

  v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
    while (v16 >= 1)
    {
      v17 = 0;
      while (1)
      {
        v18 = (v15 & 0xC000000000000001) != 0 ? MEMORY[0x22AA8AFD0](v17, v15) : *(v15 + 8 * v17 + 32);
        v19 = v18;
        if (__OFADD__([v18 scheduleSequenceNumber], 1))
        {
          break;
        }

        ++v17;
        sub_226D6C43C();

        if (v16 == v17)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_31:
      v16 = sub_226D6EDFC();
      if (!v16)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

LABEL_11:
  v43[0] = 0;
  v20 = [v13 save_];
  v21 = v43[0];
  if (!v20)
  {
    v30 = v43[0];

    sub_226D6D04C();

    result = swift_willThrow();
    goto LABEL_29;
  }

  if (v40)
  {
    v22 = sub_226D6EDFC();
    v23 = v41;
    if (v22)
    {
      goto LABEL_14;
    }

LABEL_23:
    v31 = v21;

    *v23 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v22 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v23 = v41;
  if (!v22)
  {
    goto LABEL_23;
  }

LABEL_14:
  v43[0] = MEMORY[0x277D84F90];
  v24 = v21;
  sub_226AE293C(0, v22 & ~(v22 >> 63), 0);
  if (v22 < 0)
  {
    goto LABEL_34;
  }

  v25 = v43[0];
  v26 = v38;
  if ((v15 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v22; ++i)
    {
      MEMORY[0x22AA8AFD0](i, v15);
      sub_226D6B65C();
      v43[0] = v25;
      v29 = v25[2];
      v28 = v25[3];
      if (v29 >= v28 >> 1)
      {
        sub_226AE293C(v28 > 1, v29 + 1, 1);
        v25 = v43[0];
      }

      v25[2] = v29 + 1;
      (*(v6 + 32))(v25 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v29, v12, v42);
    }
  }

  else
  {
    v32 = 32;
    do
    {
      v33 = *(v15 + v32);
      sub_226D6B65C();
      v43[0] = v25;
      v35 = v25[2];
      v34 = v25[3];
      if (v35 >= v34 >> 1)
      {
        sub_226AE293C(v34 > 1, v35 + 1, 1);
        v25 = v43[0];
      }

      v25[2] = v35 + 1;
      (*(v6 + 32))(v25 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v35, v26, v42);
      v32 += 8;
      --v22;
    }

    while (v22);
  }

  *v41 = v25;
LABEL_29:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BackgroundDeliveryRegistrationManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_226CA3EF0()
{
  v1 = *(*v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8AE8, &qword_226D7A8F0);
  sub_226D6EB8C();
  return v3;
}

uint64_t sub_226CA3F80()
{
  v1 = *(*v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8AE8, &qword_226D7A8F0);
  sub_226D6EB8C();
  return v3;
}

uint64_t sub_226CA4068()
{
  v2 = *(*v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8AE8, &qword_226D7A8F0);
  result = sub_226D6EB7C();
  if (!v1)
  {
    return v4;
  }

  return result;
}

unint64_t sub_226CA4238()
{
  result = qword_281062C38;
  if (!qword_281062C38)
  {
    sub_226D66F5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281062C38);
  }

  return result;
}

uint64_t sub_226CA4350(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 16) = a1;
  if (!a2)
  {
    v4 = sub_226B31FA8();
    v5 = type metadata accessor for WalletMessageUpdater();
    v6 = swift_allocObject();
    v7 = sub_226D69BFC();

    v9 = MEMORY[0x22AA85C90](v8);
    *(&v29 + 1) = &type metadata for ClassicOrderBiomeStream;
    *&v30[0] = &off_283A6D820;
    sub_226C02324(v30 + 8);
    v10 = sub_226D6B5EC();
    v11 = MEMORY[0x277CC7F68];
    v26 = v10;
    v27 = MEMORY[0x277CC7F68];
    __swift_allocate_boxed_opaque_existential_1(&v25);
    sub_226D6B58C();
    v23 = v10;
    v24 = v11;
    __swift_allocate_boxed_opaque_existential_1(&v22);
    sub_226D6B5AC();
    v12 = sub_226D6827C();
    v20 = v5;
    v21 = sub_226CA9294(&qword_281062070, 255, type metadata accessor for WalletMessageUpdater);
    *&v19 = v6;
    type metadata accessor for ManagedOrderImporter();
    v13 = swift_allocObject();

    *(v13 + 312) = 0xD000000000000018;
    *(v13 + 320) = 0x8000000226D81BA0;
    sub_226AC484C(&v25, v13 + 232);
    sub_226AC484C(&v22, v13 + 272);
    v14 = MEMORY[0x277CC7238];
    *(v13 + 16) = v12;
    *(v13 + 24) = v14;
    *(v13 + 96) = &type metadata for WidgetRefresher;
    *(v13 + 104) = v4;
    sub_226AC484C(&v19, v13 + 112);
    a2 = v13;
    *(v13 + 32) = v9;
    v15 = MEMORY[0x277CC79A8];
    *(v13 + 56) = v7;
    *(v13 + 64) = v15;
    v16 = v30[0];
    *(v13 + 168) = v29;
    *(v13 + 184) = v16;
    v17 = v30[2];
    *(v13 + 200) = v30[1];
    *(v13 + 216) = v17;
    *(v13 + 152) = v28;
  }

  *(v3 + 24) = a2;
  return v3;
}

unint64_t sub_226CA4544@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = sub_226D6D52C();
  v4 = *(v3 - 8);
  v80 = v3;
  v81 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v75[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v75[-v9];
  sub_226D6AF5C();
  v11 = sub_226D6AF3C();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_226D70840;
  *(v12 + 56) = sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
  *(v12 + 64) = sub_226CA93D4();
  *(v12 + 32) = a1;
  v13 = a1;
  v14 = sub_226D6E91C();
  [v11 setPredicate_];

  [v11 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_226D71840;
  v16 = MEMORY[0x277D837D0];
  *(v15 + 32) = 0x616D656863536B63;
  *(v15 + 40) = 0xEF6E6F6973726556;
  *(v15 + 88) = v16;
  *(v15 + 56) = v16;
  *(v15 + 64) = 0xD000000000000014;
  *(v15 + 72) = 0x8000000226D86940;
  v17 = sub_226D6E5CC();

  [v11 setPropertiesToFetch_];

  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v18 = sub_226D6E07C();
  __swift_project_value_buffer(v18, qword_28105F5C0);
  v19 = v13;
  v20 = sub_226D6E05C();
  v21 = sub_226D6E9EC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v78 = v11;
    v23 = v22;
    v24 = v8;
    v25 = v10;
    v26 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v19;
    *v26 = v19;
    v27 = v19;
    _os_log_impl(&dword_226AB4000, v20, v21, "Fetching metadata for dropbox order %@", v23, 0xCu);
    sub_226AC47B0(v26, &qword_27D7A5FB0, &qword_226D70870);
    v28 = v26;
    v10 = v25;
    v8 = v24;
    MEMORY[0x22AA8BEE0](v28, -1, -1);
    v11 = v78;
    MEMORY[0x22AA8BEE0](v23, -1, -1);
  }

  result = sub_226D6EBBC();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_23:

    v66 = v19;
    v67 = sub_226D6E05C();
    v68 = sub_226D6E9CC();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138412290;
      *(v69 + 4) = v66;
      *v70 = v66;
      v71 = v66;
      _os_log_impl(&dword_226AB4000, v67, v68, "Dropbox order %@ not found", v69, 0xCu);
      sub_226AC47B0(v70, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v70, -1, -1);
      MEMORY[0x22AA8BEE0](v69, -1, -1);
    }

    goto LABEL_26;
  }

  v64 = result;
  v65 = sub_226D6EDFC();
  result = v64;
  if (!v65)
  {
    goto LABEL_23;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x22AA8AFD0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v30 = *(result + 32);
  }

  v31 = v30;

  v32 = [v31 ckSchemaVersion];
  if (v32 == 1)
  {
    v33 = [v31 credentialIdentifier];
    if (v33)
    {
      v34 = v33;
      sub_226D6D4FC();

      v35 = v80;
      (*(v81 + 16))(v8, v10, v80);
      v36 = v19;
      v37 = sub_226D6E05C();
      v38 = sub_226D6E9EC();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v77 = v40;
        v78 = swift_slowAlloc();
        v82 = v78;
        *v39 = 138412546;
        *(v39 + 4) = v36;
        *v40 = v36;
        *(v39 + 12) = 2080;
        sub_226CA9294(&qword_27D7A6648, 255, MEMORY[0x277CC95F0]);
        v76 = v38;
        v41 = v36;
        v42 = sub_226D6F1CC();
        v44 = v43;
        (*(v81 + 8))(v8, v35);
        v45 = sub_226AC4530(v42, v44, &v82);

        *(v39 + 14) = v45;
        _os_log_impl(&dword_226AB4000, v37, v76, "Dropbox order %@ requires credential %s", v39, 0x16u);
        v46 = v77;
        sub_226AC47B0(v77, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v46, -1, -1);
        v47 = v78;
        __swift_destroy_boxed_opaque_existential_0Tm(v78);
        MEMORY[0x22AA8BEE0](v47, -1, -1);
        MEMORY[0x22AA8BEE0](v39, -1, -1);
      }

      else
      {

        (*(v81 + 8))(v8, v35);
      }

      v63 = v79;
      (*(v81 + 32))(v79, v10, v35);
      return (*(v81 + 56))(v63, 0, 1, v35);
    }

    v60 = v19;
    v50 = sub_226D6E05C();
    v61 = sub_226D6E9CC();

    if (!os_log_type_enabled(v50, v61))
    {
      goto LABEL_19;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v52 = 138412290;
    *(v52 + 4) = v60;
    *v53 = v60;
    v62 = v60;
    v55 = "Dropbox order %@ without credential identifier is invalid";
    v56 = v61;
    v57 = v50;
    v58 = v52;
    v59 = 12;
    goto LABEL_18;
  }

  v48 = v32;
  v49 = v19;
  v50 = sub_226D6E05C();
  v51 = sub_226D6E9CC();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v52 = 138412546;
    *(v52 + 4) = v49;
    *v53 = v49;
    *(v52 + 12) = 512;
    *(v52 + 14) = v48;
    v54 = v49;
    v55 = "Dropbox order %@ with CloudKit schema version %hd not supported";
    v56 = v51;
    v57 = v50;
    v58 = v52;
    v59 = 16;
LABEL_18:
    _os_log_impl(&dword_226AB4000, v57, v56, v55, v58, v59);
    sub_226AC47B0(v53, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v53, -1, -1);
    MEMORY[0x22AA8BEE0](v52, -1, -1);
  }

LABEL_19:

LABEL_26:
  v72 = v80;
  v73 = *(v81 + 56);
  v74 = v79;

  return v73(v74, 1, 1, v72);
}

id sub_226CA4F9C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6110, &qword_226D70B18) + 48);
  v7 = sub_226D6D52C();
  (*(*(v7 - 8) + 16))(a3, a2, v7);
  *(a3 + v6) = v5;
  return v5;
}

void sub_226CA5038(uint64_t a1, void (*a2)(void, void), void *a3)
{
  v409 = a3;
  v422 = a2;
  v425 = a1;
  v427[6] = *MEMORY[0x277D85DE8];
  v363 = sub_226D67C7C();
  v362 = *(v363 - 8);
  v3 = *(v362 + 64);
  v4 = MEMORY[0x28223BE20](v363);
  v361 = &v352 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v366 = &v352 - v6;
  v377 = sub_226D6B34C();
  v365 = *(v377 - 8);
  v7 = *(v365 + 64);
  MEMORY[0x28223BE20](v377);
  v376 = &v352 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v400 = sub_226D6CBBC();
  v399 = *(v400 - 8);
  v9 = *(v399 + 64);
  v10 = MEMORY[0x28223BE20](v400);
  v398 = &v352 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v397 = &v352 - v12;
  v407 = sub_226D6CBCC();
  v404 = *(v407 - 8);
  v13 = *(v404 + 8);
  v14 = MEMORY[0x28223BE20](v407);
  v406 = (&v352 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v405 = &v352 - v16;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  v17 = *(*(v357 - 8) + 64);
  MEMORY[0x28223BE20](v357);
  v356 = (&v352 - v18);
  v19 = type metadata accessor for OrderNotificationCenter.Continuation();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v355 = &v352 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult();
  v22 = *(*(updated - 8) + 64);
  v23 = MEMORY[0x28223BE20](updated);
  v359 = (&v352 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v374 = (&v352 - v25);
  v375 = sub_226D6D4AC();
  v370 = *(v375 - 8);
  v26 = *(v370 + 64);
  v27 = MEMORY[0x28223BE20](v375);
  v373 = &v352 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v380 = &v352 - v30;
  MEMORY[0x28223BE20](v29);
  v368 = &v352 - v31;
  v379 = sub_226D67CEC();
  v384 = *(v379 - 8);
  v32 = *(v384 + 64);
  MEMORY[0x28223BE20](v379);
  v378 = &v352 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v386 = sub_226D6B49C();
  v385 = *(v386 - 8);
  v34 = *(v385 + 64);
  v35 = MEMORY[0x28223BE20](v386);
  v364 = &v352 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v354 = &v352 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v360 = &v352 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v372 = &v352 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v369 = &v352 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v367 = &v352 - v46;
  MEMORY[0x28223BE20](v45);
  v387 = &v352 - v47;
  v383 = sub_226D6D1AC();
  v382 = *(v383 - 8);
  v48 = *(v382 + 64);
  MEMORY[0x28223BE20](v383);
  v381 = &v352 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v394 = sub_226D6E23C();
  v393 = *(v394 - 8);
  v50 = *(v393 + 64);
  MEMORY[0x28223BE20](v394);
  v392 = &v352 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v389 = sub_226D6B3BC();
  v388 = *(v389 - 8);
  v52 = *(v388 + 64);
  v53 = MEMORY[0x28223BE20](v389);
  v371 = &v352 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v53);
  v391 = &v352 - v56;
  MEMORY[0x28223BE20](v55);
  v390 = &v352 - v57;
  v396 = sub_226D6912C();
  v395 = *(v396 - 8);
  v58 = *(v395 + 64);
  v59 = MEMORY[0x28223BE20](v396);
  v401 = &v352 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v403 = &v352 - v61;
  v411 = sub_226D6C3BC();
  v412 = *(v411 - 8);
  v62 = *(v412 + 64);
  MEMORY[0x28223BE20](v411);
  v410 = &v352 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8AF8, &qword_226D7A9F8);
  v65 = *(*(v64 - 8) + 64);
  v66 = MEMORY[0x28223BE20](v64 - 8);
  v416 = (&v352 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = MEMORY[0x28223BE20](v66);
  v415 = (&v352 - v69);
  MEMORY[0x28223BE20](v68);
  v414 = &v352 - v70;
  v71 = sub_226D6D52C();
  v72 = *(v71 - 8);
  v73 = *(v72 + 64);
  v74 = MEMORY[0x28223BE20](v71);
  v413 = &v352 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x28223BE20](v74);
  v408 = &v352 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v418 = (&v352 - v79);
  v80 = MEMORY[0x28223BE20](v78);
  v424 = &v352 - v81;
  MEMORY[0x28223BE20](v80);
  v83 = &v352 - v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6110, &qword_226D70B18);
  v85 = v84 - 8;
  v86 = *(*(v84 - 8) + 64);
  v87 = MEMORY[0x28223BE20](v84);
  v89 = &v352 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v87);
  v91 = &v352 - v90;
  v93 = (v72 + 16);
  v92 = *(v72 + 16);
  v92(&v352 - v90, v425, v71);
  v94 = v422;
  *&v91[*(v85 + 56)] = v422;
  v420 = v91;
  sub_226AC40E8(v91, v89, &qword_27D7A6110, &qword_226D70B18);
  v95 = v83;
  v96 = *&v89[*(v85 + 56)];
  v425 = v72;
  v426 = v71;
  (*(v72 + 32))(v83, v89, v71);
  v97 = qword_28105F5B8;
  v98 = v94;
  if (v97 != -1)
  {
    swift_once();
  }

  v99 = sub_226D6E07C();
  v100 = __swift_project_value_buffer(v99, qword_28105F5C0);
  v92(v424, v95, v426);
  v101 = v96;
  v102 = sub_226D6E05C();
  v103 = v95;
  v104 = sub_226D6E9EC();

  v105 = os_log_type_enabled(v102, v104);
  v106 = v93;
  v107 = v92;
  v423 = v103;
  v417 = v101;
  if (v105)
  {
    v108 = swift_slowAlloc();
    v402 = v100;
    v109 = v108;
    v352 = swift_slowAlloc();
    v353 = swift_slowAlloc();
    v427[0] = v353;
    *v109 = 136315394;
    sub_226CA9294(&qword_27D7A6648, 255, MEMORY[0x277CC95F0]);
    v110 = v101;
    v111 = v424;
    v112 = v92;
    v113 = v426;
    v114 = v106;
    v115 = sub_226D6F1CC();
    v116 = v113;
    v118 = v117;
    v422 = *(v425 + 8);
    v422(v111, v116);
    v119 = sub_226AC4530(v115, v118, v427);
    v107 = v112;
    v106 = v114;

    *(v109 + 4) = v119;
    *(v109 + 12) = 2112;
    *(v109 + 14) = v110;
    v120 = v352;
    *v352 = v110;
    v121 = v110;
    _os_log_impl(&dword_226AB4000, v102, v104, "Retrieving credential %s for dropbox order %@", v109, 0x16u);
    sub_226AC47B0(v120, &qword_27D7A5FB0, &qword_226D70870);
    v103 = v423;
    MEMORY[0x22AA8BEE0](v120, -1, -1);
    v122 = v353;
    __swift_destroy_boxed_opaque_existential_0Tm(v353);
    MEMORY[0x22AA8BEE0](v122, -1, -1);
    v123 = v109;
    v100 = v402;
    MEMORY[0x22AA8BEE0](v123, -1, -1);
  }

  else
  {

    v422 = *(v425 + 8);
    v422(v424, v426);
  }

  v125 = v418;
  v124 = v419;
  v126 = v415;
  v127 = v416;
  v128 = v421[2];
  sub_226D6C74C();
  if (v124)
  {
    v129 = v413;
    v107(v413, v103, v426);
    v130 = v124;
    v131 = sub_226D6E05C();
    v132 = sub_226D6E9CC();

    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v424 = v124;
      v134 = v133;
      v135 = swift_slowAlloc();
      v421 = swift_slowAlloc();
      v427[0] = v421;
      *v134 = 136315394;
      sub_226CA9294(&qword_27D7A6648, 255, MEMORY[0x277CC95F0]);
      v136 = v426;
      v137 = sub_226D6F1CC();
      v139 = v138;
      v140 = v129;
      v141 = v422;
      v422(v140, v136);
      v142 = sub_226AC4530(v137, v139, v427);

      *(v134 + 4) = v142;
      *(v134 + 12) = 2112;
      v143 = v424;
      v144 = v424;
      v145 = _swift_stdlib_bridgeErrorToNSError();
      *(v134 + 14) = v145;
      *v135 = v145;
      _os_log_impl(&dword_226AB4000, v131, v132, "Failed to retrieve credential %s with error: %@", v134, 0x16u);
      sub_226AC47B0(v135, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v135, -1, -1);
      v146 = v421;
      __swift_destroy_boxed_opaque_existential_0Tm(v421);
      MEMORY[0x22AA8BEE0](v146, -1, -1);
      MEMORY[0x22AA8BEE0](v134, -1, -1);

      v141(v423, v136);
    }

    else
    {

      v164 = v426;
      v165 = v422;
      v422(v129, v426);
      v165(v103, v164);
    }

LABEL_20:
    sub_226AC47B0(v420, &qword_27D7A6110, &qword_226D70B18);
    goto LABEL_21;
  }

  v147 = v126;
  v148 = v414;
  sub_226CA92DC(v147, v414);
  sub_226AC40E8(v148, v127, &qword_27D7A8AF8, &qword_226D7A9F8);
  v149 = v412;
  v150 = v411;
  if ((*(v412 + 48))(v127, 1, v411) == 1)
  {
    sub_226AC47B0(v127, &qword_27D7A8AF8, &qword_226D7A9F8);
    v151 = v408;
    v107(v408, v103, v426);
    v152 = sub_226D6E05C();
    v153 = sub_226D6E9CC();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v424 = 0;
      v155 = v154;
      v156 = swift_slowAlloc();
      v427[0] = v156;
      *v155 = 136315138;
      sub_226CA9294(&qword_27D7A6648, 255, MEMORY[0x277CC95F0]);
      v157 = v426;
      v158 = sub_226D6F1CC();
      v160 = v159;
      v161 = v151;
      v162 = v422;
      v422(v161, v157);
      v163 = sub_226AC4530(v158, v160, v427);

      *(v155 + 4) = v163;
      _os_log_impl(&dword_226AB4000, v152, v153, "Credential %s not found", v155, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v156);
      MEMORY[0x22AA8BEE0](v156, -1, -1);
      MEMORY[0x22AA8BEE0](v155, -1, -1);

      sub_226AC47B0(v414, &qword_27D7A8AF8, &qword_226D7A9F8);
      v162(v423, v157);
    }

    else
    {

      v173 = v426;
      v174 = v422;
      v422(v151, v426);
      sub_226AC47B0(v414, &qword_27D7A8AF8, &qword_226D7A9F8);
      v174(v103, v173);
    }

    goto LABEL_20;
  }

  v424 = v106;
  (*(v149 + 32))(v410, v127, v150);
  v166 = v417;
  v167 = sub_226D6E05C();
  v168 = sub_226D6E9EC();

  if (os_log_type_enabled(v167, v168))
  {
    v169 = swift_slowAlloc();
    v419 = v107;
    v170 = v169;
    v171 = swift_slowAlloc();
    *v170 = 138412290;
    *(v170 + 4) = v166;
    *v171 = v166;
    v172 = v166;
    _os_log_impl(&dword_226AB4000, v167, v168, "Fetching dropbox order %@", v170, 0xCu);
    sub_226AC47B0(v171, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v171, -1, -1);
    v107 = v419;
    MEMORY[0x22AA8BEE0](v170, -1, -1);
  }

  sub_226D6AF5C();
  v175 = sub_226D6AF4C();
  v176 = v166;
  v419 = v175;
  v177 = sub_226D6E05C();
  v178 = sub_226D6E9EC();

  if (os_log_type_enabled(v177, v178))
  {
    v179 = swift_slowAlloc();
    v180 = v100;
    v181 = swift_slowAlloc();
    *v179 = 138412290;
    *(v179 + 4) = v176;
    *v181 = v176;
    v182 = v176;
    _os_log_impl(&dword_226AB4000, v177, v178, "Validating dropbox order %@", v179, 0xCu);
    sub_226AC47B0(v181, &qword_27D7A5FB0, &qword_226D70870);
    v183 = v181;
    v100 = v180;
    MEMORY[0x22AA8BEE0](v183, -1, -1);
    MEMORY[0x22AA8BEE0](v179, -1, -1);
  }

  v184 = v401;
  sub_226D690FC();
  (*(v395 + 32))(v403, v184, v396);
  v107(v125, v423, v426);
  v186 = v176;
  v402 = v100;
  v187 = sub_226D6E05C();
  v188 = sub_226D6E9EC();

  if (os_log_type_enabled(v187, v188))
  {
    v189 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    v418 = v190;
    v424 = swift_slowAlloc();
    v427[0] = v424;
    *v189 = 138412546;
    *(v189 + 4) = v186;
    *v190 = v186;
    *(v189 + 12) = 2080;
    sub_226CA9294(&qword_27D7A6648, 255, MEMORY[0x277CC95F0]);
    v191 = v426;
    v192 = v125;
    v193 = v186;
    v194 = sub_226D6F1CC();
    v196 = v195;
    v422(v192, v191);
    v197 = sub_226AC4530(v194, v196, v427);

    *(v189 + 14) = v197;
    _os_log_impl(&dword_226AB4000, v187, v188, "Decrypting dropbox order %@ using credential %s", v189, 0x16u);
    v198 = v418;
    sub_226AC47B0(v418, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v198, -1, -1);
    v199 = v424;
    __swift_destroy_boxed_opaque_existential_0Tm(v424);
    MEMORY[0x22AA8BEE0](v199, -1, -1);
    MEMORY[0x22AA8BEE0](v189, -1, -1);
  }

  else
  {

    v422(v125, v426);
  }

  v200 = v391;
  v201 = v392;
  sub_226D6C3AC();
  v202 = sub_226D6910C();
  v417 = v203;
  v418 = v202;
  (*(v393 + 8))(v201, v394);
  (*(v388 + 32))(v390, v200, v389);
  v204 = v186;
  v205 = sub_226D6E05C();
  v206 = sub_226D6E9EC();

  if (os_log_type_enabled(v205, v206))
  {
    v207 = swift_slowAlloc();
    v208 = swift_slowAlloc();
    *v207 = 138412290;
    *(v207 + 4) = v204;
    *v208 = v204;
    v209 = v204;
    _os_log_impl(&dword_226AB4000, v205, v206, "Opening dropbox order %@", v207, 0xCu);
    sub_226AC47B0(v208, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v208, -1, -1);
    MEMORY[0x22AA8BEE0](v207, -1, -1);
  }

  sub_226D6727C();
  v210 = [objc_opt_self() defaultManager];
  v211 = [v210 temporaryDirectory];

  v212 = v381;
  sub_226D6D14C();

  sub_226D6827C();
  v427[3] = sub_226D6920C();
  v427[4] = MEMORY[0x277CC77F0];
  __swift_allocate_boxed_opaque_existential_1(v427);
  sub_226D691FC();
  v213 = sub_226D6724C();
  (*(v382 + 8))(v212, v383);
  __swift_destroy_boxed_opaque_existential_0Tm(v427);

  v214 = v378;
  v415 = v213;
  sub_226D6726C();
  v215 = v387;
  sub_226D67C4C();
  v216 = *(v384 + 8);
  v384 += 8;
  v404 = v216;
  v216(v214, v379);
  v217 = v385;
  v218 = *(v385 + 16);
  v219 = v367;
  v220 = v386;
  v413 = (v385 + 16);
  v408 = v218;
  (v218)(v367, v215, v386);
  v221 = v204;
  v222 = sub_226D6E05C();
  v223 = sub_226D6E9EC();

  v224 = os_log_type_enabled(v222, v223);
  v405 = v221;
  v424 = 0;
  if (v224)
  {
    v225 = swift_slowAlloc();
    LODWORD(v407) = v223;
    v226 = v225;
    v227 = swift_slowAlloc();
    v228 = swift_slowAlloc();
    v427[0] = v228;
    *v226 = 138412546;
    *(v226 + 4) = v221;
    *v227 = v221;
    *(v226 + 12) = 2080;
    sub_226CA9294(&qword_27D7A6658, 255, MEMORY[0x277CC7F28]);
    v229 = v221;
    v230 = sub_226D6F1CC();
    v232 = v231;
    v416 = *(v217 + 8);
    v416(v219, v220);
    v233 = sub_226AC4530(v230, v232, v427);

    *(v226 + 14) = v233;
    _os_log_impl(&dword_226AB4000, v222, v407, "Dropbox order %@ is order %s", v226, 0x16u);
    sub_226AC47B0(v227, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v227, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v228);
    MEMORY[0x22AA8BEE0](v228, -1, -1);
    MEMORY[0x22AA8BEE0](v226, -1, -1);
  }

  else
  {

    v416 = *(v217 + 8);
    v416(v219, v220);
  }

  v234 = v220;
  v235 = v373;
  v236 = v368;
  sub_226D6D46C();
  v237 = sub_226D6911C();
  v238 = v370;
  v239 = *(v370 + 8);
  v240 = v375;
  v407 = v370 + 8;
  v406 = v239;
  v239(v236, v375);
  v241 = v372;
  v242 = v369;
  LODWORD(v401) = v237;
  if (v237)
  {
    (v408)(v369, v387, v234);
    v243 = sub_226D6E05C();
    v244 = sub_226D6E9AC();
    if (os_log_type_enabled(v243, v244))
    {
      v245 = swift_slowAlloc();
      v246 = swift_slowAlloc();
      v427[0] = v246;
      *v245 = 136315138;
      sub_226CA9294(&qword_27D7A6658, 255, MEMORY[0x277CC7F28]);
      v247 = sub_226D6F1CC();
      v249 = v248;
      v416(v242, v386);
      v250 = sub_226AC4530(v247, v249, v427);
      v234 = v386;

      *(v245 + 4) = v250;
      _os_log_impl(&dword_226AB4000, v243, v244, "Enabling import notifications for order %s", v245, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v246);
      v251 = v246;
      v241 = v372;
      MEMORY[0x22AA8BEE0](v251, -1, -1);
      v252 = v245;
      v235 = v373;
      MEMORY[0x22AA8BEE0](v252, -1, -1);
    }

    else
    {

      v416(v242, v234);
    }
  }

  v253 = v378;
  sub_226D6726C();
  v254 = v380;
  sub_226D67CDC();
  v404(v253, v379);
  (v408)(v241, v387, v234);
  (*(v238 + 16))(v235, v254, v240);
  v255 = sub_226D6E05C();
  v256 = sub_226D6E9EC();
  if (os_log_type_enabled(v255, v256))
  {
    v257 = v235;
    v258 = swift_slowAlloc();
    v259 = swift_slowAlloc();
    v427[0] = v259;
    *v258 = 136315394;
    sub_226CA9294(&qword_27D7A6658, 255, MEMORY[0x277CC7F28]);
    v260 = sub_226D6F1CC();
    v262 = v261;
    v416(v241, v386);
    v263 = sub_226AC4530(v260, v262, v427);

    *(v258 + 4) = v263;
    *(v258 + 12) = 2080;
    sub_226CA9294(&qword_281062B80, 255, MEMORY[0x277CC9578]);
    v264 = sub_226D6F1CC();
    v266 = v265;
    v406(v257, v240);
    v267 = sub_226AC4530(v264, v266, v427);
    v234 = v386;

    *(v258 + 14) = v267;
    _os_log_impl(&dword_226AB4000, v255, v256, "Importing order %s updated at %s", v258, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v259, -1, -1);
    MEMORY[0x22AA8BEE0](v258, -1, -1);
  }

  else
  {

    v406(v235, v240);
    v416(v241, v234);
  }

  v268 = v409;
  v269 = v374;
  v270 = v421[3];
  v271 = v424;
  sub_226BBC0D4(v415, v418, v417, v401 & 1 | 0x100, v409, v374);
  v272 = v371;
  v424 = v271;
  if (v271)
  {

LABEL_59:
    v406(v380, v240);
    v329 = v364;
    (v408)(v364, v387, v234);
    v330 = v424;
    v331 = v424;
    v332 = sub_226D6E05C();
    v333 = sub_226D6E9CC();

    v334 = os_log_type_enabled(v332, v333);
    v335 = v419;
    if (v334)
    {
      v336 = swift_slowAlloc();
      v337 = swift_slowAlloc();
      v421 = swift_slowAlloc();
      v427[0] = v421;
      *v336 = 136315394;
      sub_226CA9294(&qword_27D7A6658, 255, MEMORY[0x277CC7F28]);
      v338 = sub_226D6F1CC();
      v340 = v339;
      v341 = v329;
      v342 = v416;
      v416(v341, v386);
      v343 = sub_226AC4530(v338, v340, v427);
      v234 = v386;

      *(v336 + 4) = v343;
      *(v336 + 12) = 2112;
      v344 = v330;
      v345 = _swift_stdlib_bridgeErrorToNSError();
      *(v336 + 14) = v345;
      *v337 = v345;
      _os_log_impl(&dword_226AB4000, v332, v333, "Failed to import order %s with error: %@", v336, 0x16u);
      sub_226AC47B0(v337, &qword_27D7A5FB0, &qword_226D70870);
      v346 = v337;
      v335 = v419;
      MEMORY[0x22AA8BEE0](v346, -1, -1);
      v347 = v421;
      __swift_destroy_boxed_opaque_existential_0Tm(v421);
      MEMORY[0x22AA8BEE0](v347, -1, -1);
      MEMORY[0x22AA8BEE0](v336, -1, -1);
    }

    else
    {

      v348 = v329;
      v342 = v416;
      v416(v348, v234);
    }

    v349 = v426;
    v350 = v420;
    v351 = v422;
    swift_willThrow();
    v342(v387, v234);
    sub_226CA8C50();

    sub_226B11B98(v418, v417);
    (*(v388 + 8))(v390, v389);
    (*(v395 + 8))(v403, v396);
    (*(v412 + 8))(v410, v411);
    sub_226AC47B0(v414, &qword_27D7A8AF8, &qword_226D7A9F8);
    v351(v423, v349);
    sub_226AC47B0(v350, &qword_27D7A6110, &qword_226D70B18);
    goto LABEL_21;
  }

  v401 = v270;

  v273 = v359;
  sub_226CA934C(v269, v359, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v421 = *v273;
  v275 = v389;
  v276 = v388;
  if (EnumCaseMultiPayload <= 1)
  {
    v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
    sub_226AC47B0(v273 + *(v277 + 48), &qword_27D7A7798, &unk_226D75570);
  }

  v278 = v360;
  (v408)(v360, v387, v234);
  (*(v276 + 16))(v272, v390, v275);
  v279 = v276;
  v280 = sub_226D6E05C();
  v281 = sub_226D6E9EC();
  if (os_log_type_enabled(v280, v281))
  {
    v282 = swift_slowAlloc();
    v283 = swift_slowAlloc();
    v427[0] = v283;
    *v282 = 136315394;
    sub_226CA9294(&qword_27D7A6658, 255, MEMORY[0x277CC7F28]);
    v284 = v279;
    v285 = sub_226D6F1CC();
    v286 = v278;
    v288 = v287;
    v416(v286, v386);
    v289 = sub_226AC4530(v285, v288, v427);

    *(v282 + 4) = v289;
    *(v282 + 12) = 2080;
    sub_226CA9294(&qword_27D7A8B08, 255, MEMORY[0x277CC7ED0]);
    v290 = sub_226D6F1CC();
    v292 = v291;
    v404 = *(v284 + 8);
    v404(v272, v275);
    v293 = sub_226AC4530(v290, v292, v427);

    *(v282 + 14) = v293;
    _os_log_impl(&dword_226AB4000, v280, v281, "Relating order %s to transaction %s", v282, 0x16u);
    swift_arrayDestroy();
    v294 = v283;
    v234 = v386;
    v268 = v409;
    MEMORY[0x22AA8BEE0](v294, -1, -1);
    v295 = v282;
    v269 = v374;
    MEMORY[0x22AA8BEE0](v295, -1, -1);
  }

  else
  {

    v404 = *(v279 + 8);
    v404(v272, v275);
    v416(v278, v234);
  }

  sub_226D6B38C();
  v296 = sub_226D6E36C();

  [v421 setApplePayTransactionIdentifier_];

  v297 = [v268 transactionAuthor];
  if (v297)
  {
    v298 = v297;
    v299 = sub_226D6E39C();
    v301 = v300;
  }

  else
  {
    v299 = 0;
    v301 = 0;
  }

  v302 = sub_226D6E36C();
  [v268 setTransactionAuthor_];

  v427[0] = 0;
  if (![v268 save_])
  {
    v321 = v427[0];
    v322 = sub_226D6D04C();

    v424 = v322;
    swift_willThrow();
    if (v301)
    {
      v323 = sub_226D6E36C();
    }

    else
    {
      v323 = 0;
    }

    v240 = v375;
    [v268 setTransactionAuthor_];

    sub_226BB3720(v269, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
    goto LABEL_59;
  }

  v303 = qword_281061980;
  v304 = v427[0];
  if (v303 != -1)
  {
    swift_once();
  }

  v305 = v357;
  v306 = __swift_project_value_buffer(v357, qword_281064538);
  v307 = v356;
  sub_226AE532C(v306, v356);
  sub_226CA934C(v306 + *(v305 + 48), v307 + *(v305 + 48), type metadata accessor for OrderNotificationCenter.Continuation);
  v308 = v307 + *(v305 + 48);
  v309 = v355;
  sub_226BB36BC(v308, v355);
  __swift_destroy_boxed_opaque_existential_0Tm(v307);
  sub_226BE7E54(v269, v309);
  sub_226BB3720(v309, type metadata accessor for OrderNotificationCenter.Continuation);
  v310 = v354;
  (v408)(v354, v387, v234);
  v311 = sub_226D6E05C();
  v312 = sub_226D6E9EC();
  v313 = os_log_type_enabled(v311, v312);
  v400 = v299;
  if (v313)
  {
    v314 = swift_slowAlloc();
    v315 = swift_slowAlloc();
    v427[0] = v315;
    *v314 = 136315138;
    sub_226CA9294(&qword_27D7A6658, 255, MEMORY[0x277CC7F28]);
    v316 = sub_226D6F1CC();
    v317 = v310;
    v319 = v318;
    v416(v317, v234);
    v320 = sub_226AC4530(v316, v319, v427);

    *(v314 + 4) = v320;
    _os_log_impl(&dword_226AB4000, v311, v312, "Imported order %s", v314, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v315);
    MEMORY[0x22AA8BEE0](v315, -1, -1);
    MEMORY[0x22AA8BEE0](v314, -1, -1);
  }

  else
  {

    v416(v310, v234);
  }

  v324 = v426;
  v325 = v420;
  v326 = v422;
  v327 = v409;
  if (v301)
  {
    v328 = sub_226D6E36C();
  }

  else
  {
    v328 = 0;
  }

  [v327 setTransactionAuthor_];

  sub_226BB3720(v374, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
  v406(v380, v375);
  [v327 reset];
  v416(v387, v234);
  sub_226CA8C50();

  sub_226B11B98(v418, v417);
  v404(v390, v389);
  (*(v395 + 8))(v403, v396);
  (*(v412 + 8))(v410, v411);
  sub_226AC47B0(v414, &qword_27D7A8AF8, &qword_226D7A9F8);
  v326(v423, v324);
  sub_226AC47B0(v325, &qword_27D7A6110, &qword_226D70B18);
LABEL_21:
  v185 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226CA8E04()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_226CA8E68@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_226CA943C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_226CA8EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8B10, &unk_226D7AA00) + 48);
  v7 = sub_226D6D52C();
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  *(a3 + v6) = a2;
}

uint64_t sub_226CA8F64(uint64_t a1)
{
  v2 = sub_226D6D52C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8B10, &unk_226D7AA00);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v20[-v13];
  v15 = *(a1 + *(v8 + 56));
  (*(v3 + 16))(&v20[-v13], a1, v2);
  *&v14[*(v8 + 56)] = v15;
  sub_226AC40E8(v14, v12, &qword_27D7A8B10, &unk_226D7AA00);
  v16 = *&v12[*(v8 + 56)];
  (*(v3 + 32))(v6, v12, v2);
  v21 = v6;

  sub_226C412CC(sub_226CA93B4, v20, v16);
  v18 = v17;

  sub_226AC47B0(v14, &qword_27D7A8B10, &unk_226D7AA00);
  (*(v3 + 8))(v6, v2);
  return v18;
}

void sub_226CA9174(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6110, &qword_226D70B18);
  v6 = *v2;
  sub_226CA5038(a1, *(a1 + *(v5 + 48)), a2);
}

uint64_t sub_226CA923C(uint64_t a1, uint64_t a2)
{
  result = sub_226CA9294(&qword_27D7A8AF0, a2, type metadata accessor for DropboxApplePayOrderMappingModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226CA9294(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_226CA92DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8AF8, &qword_226D7A9F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CA934C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_226CA93D4()
{
  result = qword_27D7A8B18;
  if (!qword_27D7A8B18)
  {
    sub_226AE59B4(255, &qword_27D7A6370, 0x277CBE448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8B18);
  }

  return result;
}

id sub_226CA943C(void *a1)
{
  if ([a1 changeType])
  {
    return 0;
  }

  v3 = [a1 changedObjectID];
  v4 = [v3 entity];
  v5 = [v4 name];

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = sub_226D6E39C();
  v8 = v7;

  if (v6 == 0xD000000000000014 && 0x8000000226D86960 == v8)
  {
  }

  else
  {
    v10 = sub_226D6F21C();

    if ((v10 & 1) == 0)
    {
LABEL_9:

      return 0;
    }
  }

  return v3;
}

uint64_t type metadata accessor for OrderWebServicePropagateUpdateTask()
{
  result = qword_27D7A8B20;
  if (!qword_27D7A8B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226CA95C4()
{
  result = type metadata accessor for TokenBucket.State();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_226CA9648(void *a1)
{
  v2 = v1;
  v22[33] = *MEMORY[0x277D85DE8];
  v4 = objc_allocWithZone(MEMORY[0x277CBE380]);
  v5 = sub_226D6E36C();
  v6 = [v4 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86E0, &unk_226D7AAB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D72130;
  v8 = MEMORY[0x277D837D0];
  sub_226D6EE8C();
  v9 = sub_226AE59B4(0, &unk_27D7A8C60, 0x277CCA9C0);
  v10 = sub_226D6E92C();
  *(inited + 96) = v9;
  *(inited + 72) = v10;
  sub_226D6EE8C();
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = 0;
  v22[0] = 0xD000000000000016;
  v22[1] = 0x8000000226D85790;
  sub_226D6EE8C();
  v11 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 240) = sub_226AE59B4(0, &qword_27D7A86E8, 0x277CBEB68);
  *(inited + 216) = v11;
  sub_226B229F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AB0, &unk_226D79520);
  swift_arrayDestroy();
  v12 = sub_226D6E2AC();

  [v6 setPropertiesToUpdate_];

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_226D70840;
  v15 = *v2;
  v14 = v2[1];
  *(v13 + 56) = v8;
  *(v13 + 64) = sub_226B16404();
  *(v13 + 32) = v15;
  *(v13 + 40) = v14;

  v16 = sub_226D6E91C();
  [v6 setPredicate_];

  v22[0] = 0;
  v17 = [a1 executeRequest:v6 error:v22];
  if (v17)
  {
    v18 = v17;
    v19 = v22[0];
  }

  else
  {
    v20 = v22[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226CA9A00(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_226D6D4AC();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(type metadata accessor for TokenBucket.State() - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  updated = type metadata accessor for OrderWebServicePropagateUpdateTask();
  v2[9] = updated;
  v8 = *(*(updated - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CA9B28, 0, 0);
}

uint64_t sub_226CA9B28()
{
  v31 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F5C0);
  sub_226CAA854(v2, v1, type metadata accessor for OrderWebServicePropagateUpdateTask);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315138;
    v10 = *v7;
    v11 = v7[1];

    sub_226CAA8FC(v7, type metadata accessor for OrderWebServicePropagateUpdateTask);
    v12 = sub_226AC4530(v10, v11, &v30);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226AB4000, v4, v5, "Starting propagate update task for order type %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {

    sub_226CAA8FC(v7, type metadata accessor for OrderWebServicePropagateUpdateTask);
  }

  v13 = *(v0 + 64);
  v15 = *(v0 + 40);
  v14 = *(v0 + 48);
  v16 = *(v0 + 32);
  sub_226CAA854(*(v0 + 24) + *(*(v0 + 72) + 24), v13, type metadata accessor for TokenBucket.State);
  sub_226D6D46C();
  sub_226D3DB10(v13, v14, 12, 0.00166666667);
  (*(v15 + 8))(v14, v16);
  v17 = *v13;
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v19 < 0 == v18)
  {
    **(v0 + 64) = v19;
  }

  v20 = *(v0 + 80);
  v21 = *(v0 + 56);
  v22 = *(v0 + 64);
  v23 = *(v0 + 48);
  v24 = *(v0 + 24);
  v25 = **(v0 + 16);
  v26 = sub_226D676AC();
  sub_226CAA854(v22, v21, type metadata accessor for TokenBucket.State);
  v27 = swift_task_alloc();
  v27[2] = v24;
  v27[3] = v26;
  v27[4] = v21;
  sub_226D6EB8C();
  sub_226CAA8FC(v22, type metadata accessor for TokenBucket.State);

  sub_226CAA8FC(v21, type metadata accessor for TokenBucket.State);

  v28 = *(v0 + 8);

  return v28();
}

void sub_226CA9E84(uint64_t a1, void *a2)
{
  sub_226CA9648(a2);
  if (!v2)
  {
    MEMORY[0x28223BE20](v3);
    sub_226D6EB7C();
  }
}

void sub_226CA9F1C(uint64_t *a1, void *a2, __int16 *a3)
{
  v34[1] = *MEMORY[0x277D85DE8];
  updated = type metadata accessor for OrderWebServicePropagateUpdateTask();
  v8 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated - 8);
  v10 = (v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v34 - v13;
  sub_226D67FDC();
  v15 = *a1;
  v16 = a1[1];
  v17 = sub_226D67FBC();
  if (!v3)
  {
    v18 = v17;
    if (v17)
    {
      [v17 setPropagateUpdateSequenceNumber_];
      [v18 setUpdateTokenCount_];
      v19 = type metadata accessor for TokenBucket.State();
      sub_226AF265C(a3 + *(v19 + 20), v14);
      v20 = sub_226D6D4AC();
      v21 = *(v20 - 8);
      v22 = 0;
      if ((*(v21 + 48))(v14, 1, v20) != 1)
      {
        v22 = sub_226D6D3EC();
        (*(v21 + 8))(v14, v20);
      }

      [v18 setUpdateTokenRefillDate_];

      v34[0] = 0;
      if ([a2 save_])
      {
        v23 = v34[0];
      }

      else
      {
        v32 = v34[0];
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

      v24 = sub_226D6E07C();
      __swift_project_value_buffer(v24, qword_28105F5C0);
      sub_226CAA854(a1, v10, type metadata accessor for OrderWebServicePropagateUpdateTask);
      v25 = sub_226D6E05C();
      v26 = sub_226D6E9AC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v34[0] = v28;
        *v27 = 136315138;
        v29 = *v10;
        v30 = v10[1];

        sub_226CAA8FC(v10, type metadata accessor for OrderWebServicePropagateUpdateTask);
        v31 = sub_226AC4530(v29, v30, v34);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_226AB4000, v25, v26, "Order type %s doesn't exist", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        MEMORY[0x22AA8BEE0](v28, -1, -1);
        MEMORY[0x22AA8BEE0](v27, -1, -1);
      }

      else
      {

        sub_226CAA8FC(v10, type metadata accessor for OrderWebServicePropagateUpdateTask);
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226CAA2FC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for OrderWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_226CAA350()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8630, &unk_226D79550);
  v1 = *(type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D70840;
  v5 = (v4 + v3);
  v6 = *v0;
  v7 = v0[1];
  *v5 = v6;
  v5[1] = v7;
  swift_storeEnumTagMultiPayload();

  v8 = sub_226B1FBC0(v4);
  swift_setDeallocating();
  sub_226CAA8FC(v5, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
  swift_deallocClassInstance();
  return v8;
}

uint64_t sub_226CAA470@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_226D6D4AC();
  v13 = *(v5 - 8);
  v6 = *(v13 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (PKDisableRateLimiting())
  {
    v9 = *(v13 + 56);

    return v9(a2, 1, 1, v5);
  }

  else
  {
    v11 = *(a1 + 24);
    sub_226D6D46C();
    sub_226D3D740((v2 + v11), a2);
    return (*(v13 + 8))(v8, v5);
  }
}

uint64_t sub_226CAA5B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226CA9A00(a1);
}

unint64_t sub_226CAA64C()
{
  sub_226D6EEFC();

  MEMORY[0x22AA8A510](*v0, v0[1]);
  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0xD00000000000002BLL;
}

uint64_t sub_226CAA6CC(uint64_t a1)
{
  result = sub_226CAA80C(&qword_27D7A8928, type metadata accessor for OrderWebServicePropagateUpdateTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226CAA7B4(uint64_t a1)
{
  result = sub_226CAA80C(&qword_27D7A8B30, type metadata accessor for OrderWebServicePropagateUpdateTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226CAA80C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226CAA854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226CAA8FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226CAA96C()
{
  v1 = *v0;
  sub_226D69F6C();
  v2 = sub_226D69F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226D72B90;
  sub_226B2A4F4();
  *(v3 + 32) = sub_226D6E91C();
  *(v3 + 40) = sub_226D6E91C();
  *(v3 + 48) = sub_226D6E91C();
  *(v3 + 56) = sub_226D6E91C();
  v4 = sub_226D6E5CC();

  v5 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v2 setPredicate_];
  v6 = sub_226D6EBBC();

  return v6;
}

uint64_t type metadata accessor for OrderWebServiceRegisterTask()
{
  result = qword_27D7A8B38;
  if (!qword_27D7A8B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226CAAB88()
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

uint64_t sub_226CAAC38()
{
  v1 = v0;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000023, 0x8000000226D869D0);
  v2 = type metadata accessor for OrderWebServiceRegisterTask();
  MEMORY[0x22AA8A510](*(v1 + v2[6]), *(v1 + v2[6] + 8));
  MEMORY[0x22AA8A510](0xD000000000000012, 0x8000000226D856A0);
  MEMORY[0x22AA8A510](*(v1 + v2[7]), *(v1 + v2[7] + 8));
  MEMORY[0x22AA8A510](0xD000000000000013, 0x8000000226D85820);
  MEMORY[0x22AA8A510](*(v1 + v2[5]), *(v1 + v2[5] + 8));
  MEMORY[0x22AA8A510](0xD000000000000010, 0x8000000226D85840);
  sub_226D6D1AC();
  sub_226CAD0D4(&qword_27D7A7018, MEMORY[0x277CC9260]);
  v3 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v3);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_226CAADC0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_226D6B00C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for OrderWebServiceRegisterTask();
  v2[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CAAEB0, 0, 0);
}

uint64_t sub_226CAAEB0()
{
  v38 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[3];
  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F5C0);
  sub_226CAD034(v2, v1);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v35 = v5;
    v8 = v0[6];
    v9 = v0[7];
    v31 = v0[4];
    v32 = v0[5];
    buf = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v37 = v34;
    *buf = 136315138;
    v10 = v9[5];
    v11 = (v7 + v9[6]);
    v12 = *v11;
    v13 = v11[1];
    v14 = (v7 + v9[7]);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(v7 + v10);
    v18 = *(v7 + v10 + 8);

    sub_226D6AFFC();
    sub_226CAD0D4(&qword_27D7A8B68, MEMORY[0x277CC7DD8]);
    v19 = sub_226D6F1CC();
    v21 = v20;
    (*(v32 + 8))(v8, v31);
    sub_226CAD1C8(v7, type metadata accessor for OrderWebServiceRegisterTask);
    v22 = sub_226AC4530(v19, v21, &v37);

    *(buf + 4) = v22;
    _os_log_impl(&dword_226AB4000, v4, v35, "Attempting to establish order registration %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x22AA8BEE0](v34, -1, -1);
    MEMORY[0x22AA8BEE0](buf, -1, -1);
  }

  else
  {

    sub_226CAD1C8(v7, type metadata accessor for OrderWebServiceRegisterTask);
  }

  v23 = v0[3];
  v24 = sub_226C0B798(v23);
  v0[9] = v24;
  v25 = swift_task_alloc();
  v0[10] = v25;
  *(v25 + 16) = v24;
  *(v25 + 24) = v23;
  v26 = *(MEMORY[0x277CC7900] + 4);
  v36 = (*MEMORY[0x277CC7900] + MEMORY[0x277CC7900]);
  v27 = swift_task_alloc();
  v0[11] = v27;
  v28 = sub_226D6BA4C();
  *v27 = v0;
  v27[1] = sub_226CAB20C;
  v29 = v0[2];

  return v36(v29, &unk_226D7AC20, v25, v28);
}

uint64_t sub_226CAB20C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_226CAB3A0;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_226CAB328;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226CAB328()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_226CAB3A0()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[6];

  v5 = v0[1];
  v6 = v0[12];

  return v5();
}

uint64_t sub_226CAB42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_226D6B7DC();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CAB4F0, 0, 0);
}

uint64_t sub_226CAB4F0()
{
  v24 = v0[7];
  v1 = v0[4];
  v2 = type metadata accessor for OrderWebServiceRegisterTask();
  v3 = v2[6];
  v4 = (v1 + v2[5]);
  v5 = v4[1];
  v23 = *v4;
  v6 = *(v1 + v3);
  v7 = *(v1 + v3 + 8);
  v8 = v2[8];
  v9 = (v1 + v2[7]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = (v1 + v2[9]);
  v16 = *v14;
  v15 = v14[1];

  sub_226B11B44(v16, v15);
  sub_226D6B7CC();
  v17 = *(MEMORY[0x277CC7918] + 4);
  v25 = (*MEMORY[0x277CC7918] + MEMORY[0x277CC7918]);
  v18 = swift_task_alloc();
  v0[8] = v18;
  *v18 = v0;
  v18[1] = sub_226B4BF14;
  v19 = v0[7];
  v20 = v0[2];
  v21 = v0[3];

  return v25(v20, v19);
}

uint64_t sub_226CAB65C(uint64_t a1, uint64_t a2)
{
  v3[2] = a2;
  v3[3] = v2;
  v4 = sub_226D6B00C();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v7 = type metadata accessor for OrderWebServiceRegisterTask();
  v3[7] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CAB74C, 0, 0);
}

uint64_t sub_226CAB74C()
{
  v37 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F5C0);
  sub_226CAD034(v2, v1);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v35 = v5;
    v8 = *(v0 + 48);
    v9 = *(v0 + 56);
    v31 = *(v0 + 32);
    v32 = *(v0 + 40);
    buf = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *buf = 136315138;
    v10 = v9[5];
    v11 = (v7 + v9[6]);
    v12 = *v11;
    v13 = v11[1];
    v14 = (v7 + v9[7]);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(v7 + v10);
    v18 = *(v7 + v10 + 8);

    sub_226D6AFFC();
    sub_226CAD0D4(&qword_27D7A8B68, MEMORY[0x277CC7DD8]);
    v19 = sub_226D6F1CC();
    v21 = v20;
    (*(v32 + 8))(v8, v31);
    sub_226CAD1C8(v7, type metadata accessor for OrderWebServiceRegisterTask);
    v22 = sub_226AC4530(v19, v21, &v36);

    *(buf + 4) = v22;
    _os_log_impl(&dword_226AB4000, v4, v35, "Successfully established order registration %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x22AA8BEE0](v34, -1, -1);
    MEMORY[0x22AA8BEE0](buf, -1, -1);
  }

  else
  {

    sub_226CAD1C8(v7, type metadata accessor for OrderWebServiceRegisterTask);
  }

  v23 = *(v0 + 64);
  v24 = *(v0 + 48);
  v25 = *(v0 + 24);
  v26 = **(v0 + 16);
  v27 = sub_226D676AC();
  v28 = swift_task_alloc();
  *(v28 + 16) = v27;
  *(v28 + 24) = v25;
  sub_226D6EB7C();

  v29 = *(v0 + 8);

  return v29();
}

void sub_226CABA88(void *a1, uint64_t *a2)
{
  v78[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for OrderWebServiceRegisterTask();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v72 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6B49C();
  v73 = *(v7 - 8);
  v8 = *(v73 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v66 - v12;
  sub_226D6A47C();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  sub_226D67FDC();
  v74 = v4;
  v75 = a2;
  v15 = a2 + *(v4 + 24);
  v17 = *v15;
  v16 = *(v15 + 1);
  v76 = a1;
  v18 = v77;
  v19 = sub_226D67FCC();
  if (v18)
  {

    goto LABEL_14;
  }

  v20 = v19;
  v69 = v16;
  v70 = v17;
  v77 = v13;
  v68 = v11;
  v71 = v7;
  [v14 setOrderType_];
  v21 = [v20 orderTypeIdentifier];
  [v14 setOrderTypeIdentifier_];

  v23 = v74;
  v22 = v75;
  v24 = (v75 + v74[7]);
  v26 = *v24;
  v25 = v24[1];
  v27 = v76;
  v28 = sub_226D6E36C();
  [v14 setOrderIdentifier_];

  sub_226D69F6C();
  v29 = sub_226D69F3C();
  v67 = v20;
  [v14 setOrderWebService_];
  v30 = (v22 + v23[5]);
  v31 = *v30;
  v32 = v30[1];
  v33 = sub_226D6E36C();
  [v14 setDeviceLibraryIdentifier_];

  v34 = (v22 + v23[8]);
  v35 = *v34;
  v36 = v34[1];
  v37 = sub_226D6E36C();
  [v14 setAuthenticationToken_];

  sub_226D6751C();

  v38 = v77;
  sub_226D6B45C();
  v39 = sub_226D6745C();
  v40 = v27;
  v70 = v14;
  v42 = v73 + 8;
  v41 = *(v73 + 8);
  v41(v38, v71);
  if (!v39)
  {
    v77 = v29;
    if (qword_28105F5B8 == -1)
    {
LABEL_7:
      v44 = sub_226D6E07C();
      __swift_project_value_buffer(v44, qword_28105F5C0);
      v45 = v72;
      sub_226CAD034(v22, v72);
      v46 = sub_226D6E05C();
      v47 = sub_226D6E9AC();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v78[0] = v75;
        *v48 = 136315138;
        v49 = v23[7];
        v50 = (v45 + v23[6]);
        v51 = v46;
        v53 = *v50;
        v52 = v50[1];
        v73 = v42;
        v54 = *(v45 + v49);
        v55 = *(v45 + v49 + 8);

        LODWORD(v74) = v47;
        v56 = v68;
        sub_226D6B45C();
        sub_226CAD0D4(&qword_27D7A6658, MEMORY[0x277CC7F28]);
        v57 = v71;
        v58 = sub_226D6F1CC();
        v60 = v59;
        v41(v56, v57);
        sub_226CAD1C8(v45, type metadata accessor for OrderWebServiceRegisterTask);
        v61 = sub_226AC4530(v58, v60, v78);

        *(v48 + 4) = v61;
        _os_log_impl(&dword_226AB4000, v51, v74, "Order %s doesn't exist", v48, 0xCu);
        v62 = v75;
        __swift_destroy_boxed_opaque_existential_0Tm(v75);
        MEMORY[0x22AA8BEE0](v62, -1, -1);
        MEMORY[0x22AA8BEE0](v48, -1, -1);
      }

      else
      {

        sub_226CAD1C8(v45, type metadata accessor for OrderWebServiceRegisterTask);
      }

      v40 = v76;
      v29 = v77;
      goto LABEL_11;
    }

LABEL_16:
    swift_once();
    goto LABEL_7;
  }

  v43 = [v39 updateSequenceNumber];
  if (__OFADD__(v43, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  [v39 setUpdateSequenceNumber_];
  [v39 setRequestAttemptCount_];
  [v39 setLastRequestAttemptDate_];
  [v39 setOrderRegistration_];

LABEL_11:
  v78[0] = 0;
  if ([v40 save_])
  {
    v63 = v78[0];
  }

  else
  {
    v64 = v78[0];
    sub_226D6D04C();

    swift_willThrow();
  }

LABEL_14:
  v65 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226CAC154(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_226D6B00C();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = type metadata accessor for OrderWebServiceRegisterTask();
  v3[13] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CAC248, 0, 0);
}

uint64_t sub_226CAC248()
{
  v54 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  type metadata accessor for OrdersAutoBugCaptureReporter();
  inited = swift_initStackObject();
  v4 = [objc_allocWithZone(MEMORY[0x277CC85F0]) init];
  *(inited + 16) = v4;
  v5 = sub_226C778C0(v2);
  v6 = sub_226C6E1E0(v2);
  sub_226BA21B0(v5, v6);

  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 112);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);
  v10 = sub_226D6E07C();
  __swift_project_value_buffer(v10, qword_28105F5C0);
  sub_226CAD034(v8, v7);
  v11 = v9;
  v12 = sub_226D6E05C();
  v13 = sub_226D6E9CC();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 112);
  if (!v14)
  {

    sub_226CAD1C8(v15, type metadata accessor for OrderWebServiceRegisterTask);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v51 = v13;
  log = v12;
  v17 = *(v0 + 96);
  v16 = *(v0 + 104);
  v46 = *(v0 + 80);
  v47 = *(v0 + 88);
  v49 = *(v0 + 56);
  v18 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  v50 = swift_slowAlloc();
  v53 = v50;
  *v18 = 136315394;
  v19 = v16[5];
  v20 = (v15 + v16[6]);
  v22 = *v20;
  v21 = v20[1];
  v23 = (v15 + v16[7]);
  v25 = *v23;
  v24 = v23[1];
  v27 = *(v15 + v19);
  v26 = *(v15 + v19 + 8);

  sub_226D6AFFC();
  sub_226CAD0D4(&qword_27D7A8B68, MEMORY[0x277CC7DD8]);
  v28 = sub_226D6F1CC();
  v30 = v29;
  (*(v47 + 8))(v17, v46);
  sub_226CAD1C8(v15, type metadata accessor for OrderWebServiceRegisterTask);
  v31 = sub_226AC4530(v28, v30, &v53);

  *(v18 + 4) = v31;
  *(v18 + 12) = 2112;
  v32 = v49;
  v33 = _swift_stdlib_bridgeErrorToNSError();
  *(v18 + 14) = v33;
  *v48 = v33;
  _os_log_impl(&dword_226AB4000, log, v51, "Failed to establish order registration %s with error: %@", v18, 0x16u);
  sub_226B17298(v48);
  MEMORY[0x22AA8BEE0](v48, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  MEMORY[0x22AA8BEE0](v50, -1, -1);
  MEMORY[0x22AA8BEE0](v18, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v34 = *(v0 + 72);
    v35 = *(v0 + 56);
    v36 = **(v0 + 64);
    v37 = sub_226D676AC();
    v38 = swift_task_alloc();
    v38[2] = v34;
    v38[3] = v37;
    v38[4] = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F0, &unk_226D79950);
    sub_226D6EB7C();
    v40 = *(v0 + 64);
    v39 = *(v0 + 72);
    v41 = *(v0 + 56);

    sub_226C6EB80(v41, *(v0 + 40), *(v0 + 48), v40 + 136);
  }

LABEL_8:
  v42 = *(v0 + 112);
  v43 = *(v0 + 96);

  v44 = *(v0 + 8);

  return v44();
}

void sub_226CAC6D0(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a2;
  v69 = a3;
  v67 = a4;
  v73[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6D4AC();
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = *(v65 + 64);
  MEMORY[0x28223BE20](v5);
  v64 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OrderWebServiceRegisterTask();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v70 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6B49C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v63 - v17;
  sub_226D6751C();
  v19 = *(v8 + 28);
  v20 = (a1 + *(v8 + 24));
  v21 = *v20;
  v22 = v20[1];
  v68 = a1;
  v23 = a1 + v19;
  v24 = *(a1 + v19);
  v25 = *(v23 + 1);

  sub_226D6B45C();
  v26 = v71;
  v27 = sub_226D6745C();
  v71 = v26;
  if (!v26)
  {
    v28 = v27;
    v29 = v68;
    v30 = v69;
    v63 = v16;
    v31 = v70;
    v32 = *(v12 + 8);
    v32(v18, v11);
    if (v28)
    {
      v31 = [v28 orderWebService];
      sub_226C6EAE0(v30, v31);

      v33 = [v28 requestAttemptCount];
      if (!__OFADD__(v33, 1))
      {
        [v28 setRequestAttemptCount_];
        v34 = v64;
        sub_226D6D46C();
        v35 = sub_226D6D3EC();
        (*(v65 + 8))(v34, v66);
        [v28 setLastRequestAttemptDate_];

        v73[0] = 0;
        if (![v72 save_])
        {
          v60 = v73[0];
          v61 = sub_226D6D04C();

          v71 = v61;
          swift_willThrow();

          goto LABEL_14;
        }

        v36 = v73[0];
        v37 = [v28 requestAttemptCount];

        v38 = v67;
LABEL_13:
        *v38 = v37;
        *(v38 + 8) = v28 == 0;
        goto LABEL_14;
      }

      __break(1u);
    }

    else
    {
      v69 = v11;
      v72 = 0;
      v11 = v29;
      if (qword_28105F5B8 == -1)
      {
LABEL_8:
        v39 = sub_226D6E07C();
        __swift_project_value_buffer(v39, qword_28105F5C0);
        v40 = v31;
        sub_226CAD034(v11, v31);
        v41 = sub_226D6E05C();
        v42 = sub_226D6E9AC();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v73[0] = v68;
          *v43 = 136315138;
          v44 = *(v8 + 28);
          v45 = (v40 + *(v8 + 24));
          v46 = v42;
          v48 = *v45;
          v47 = v45[1];
          v49 = v40 + v44;
          v50 = *(v40 + v44);
          v51 = *(v49 + 8);

          v52 = v63;
          sub_226D6B45C();
          sub_226CAD0D4(&qword_27D7A6658, MEMORY[0x277CC7F28]);
          v53 = v32;
          v54 = v69;
          v55 = sub_226D6F1CC();
          v57 = v56;
          v53(v52, v54);
          sub_226CAD1C8(v70, type metadata accessor for OrderWebServiceRegisterTask);
          v58 = sub_226AC4530(v55, v57, v73);

          *(v43 + 4) = v58;
          _os_log_impl(&dword_226AB4000, v41, v46, "Order %s doesn't exist", v43, 0xCu);
          v59 = v68;
          __swift_destroy_boxed_opaque_existential_0Tm(v68);
          MEMORY[0x22AA8BEE0](v59, -1, -1);
          MEMORY[0x22AA8BEE0](v43, -1, -1);
        }

        else
        {

          sub_226CAD1C8(v40, type metadata accessor for OrderWebServiceRegisterTask);
        }

        v37 = 0;
        v38 = v67;
        v28 = v72;
        goto LABEL_13;
      }
    }

    swift_once();
    goto LABEL_8;
  }

  (*(v12 + 8))(v18, v11);
LABEL_14:
  v62 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226CACC9C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  v4 = v2[1];
  v5 = (v1 + *(a1 + 28));
  v6 = *v5;
  v7 = v5[1];

  sub_226D6B45C();
  type metadata accessor for OrderWebServiceTaskIdentifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_226CACD2C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8630, &unk_226D79550);
  v3 = *(type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226D70840;
  v7 = *(a1 + 28);
  v8 = (v1 + *(a1 + 24));
  v9 = *v8;
  v10 = v8[1];
  v11 = v1 + v7;
  v12 = *(v1 + v7);
  v13 = *(v11 + 8);

  sub_226D6B45C();
  swift_storeEnumTagMultiPayload();
  v14 = sub_226B1FBC0(v6);
  swift_setDeallocating();
  sub_226CAD1C8(v6 + v5, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
  swift_deallocClassInstance();
  return v14;
}

uint64_t sub_226CACECC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  *(a1 + 8) = sub_226CAD0D4(&qword_27D7A8B48, type metadata accessor for OrderWebServiceRegisterTask);
  result = sub_226CAD0D4(a4, type metadata accessor for OrderWebServiceRegisterTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226CACFDC(uint64_t a1)
{
  result = sub_226CAD0D4(&qword_27D7A8B60, type metadata accessor for OrderWebServiceRegisterTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226CAD034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderWebServiceRegisterTask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CAD0D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226CAD11C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226CAB42C(a1, v5, v4);
}

uint64_t sub_226CAD1C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226CAD27C()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    MEMORY[0x22AA8AFD0](0, v1);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v4 = *v0;
  }

  else
  {
    v4 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!sub_226D6EDFC())
  {
    goto LABEL_20;
  }

  if (!sub_226D6EDFC())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    *(v1 + 32);
    if (!v2)
    {
LABEL_6:
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v3 = sub_226D6EDFC();
LABEL_16:
    if (v3)
    {
      sub_226CBD494(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_226CAD354()
{
  v1 = v0;
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_1((v1 + 112), v2);
  v4 = *(*(v3 + 8) + 8);
  sub_226D6BAAC();
  v5 = sub_226D676AC();

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_226CBED50;
  *(v7 + 24) = v6;
  v11[4] = sub_226B2A194;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_226CAD254;
  v11[3] = &block_descriptor_198;
  v8 = _Block_copy(v11);
  v9 = v5;

  [v9 performBlockAndWait_];

  _Block_release(v8);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226CAD510()
{
  v1 = v0[2];
  if (*(v1 + *(*v1 + 144) + 40) == 1 && (v2 = v1[25], ((*(v1[26] + 16))() & 1) != 0))
  {
    v3 = swift_task_alloc();
    v0[3] = v3;
    *v3 = v0;
    v3[1] = sub_226CBEF1C;
    v4 = v0[2];

    return sub_226CAE190();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[4] = v6;
    *v6 = v0;
    v6[1] = sub_226CBEF20;
    v7 = v0[2];

    return sub_226CAFB00();
  }
}

uint64_t sub_226CAD670()
{
  v1 = v0[2];
  if (*(v1 + *(*v1 + 144) + 40) == 1 && (v2 = v1[25], ((*(v1[26] + 16))() & 1) != 0))
  {
    v3 = swift_task_alloc();
    v0[3] = v3;
    *v3 = v0;
    v3[1] = sub_226CAD7B0;
    v4 = v0[2];

    return sub_226CAE4F0();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[4] = v6;
    *v6 = v0;
    v6[1] = sub_226B6507C;
    v7 = v0[2];

    return sub_226CB04E0();
  }
}

uint64_t sub_226CAD7B0()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_226CAD8A4()
{
  v1 = v0;
  v2 = *(v0 + *(*v0 + 144));
  v3 = v0 + *(*v0 + 136);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = 0xD00000000000001FLL;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136315138;
    if (v2)
    {
      if (v2 == 1)
      {
        v9 = "com.apple.financed.orders.tasks";
        v6 = 0xD000000000000025;
      }

      else
      {
        v9 = "ed.bankconnect.reboot";
        v6 = 0xD000000000000024;
      }
    }

    else
    {
      v9 = "com.apple.springboard";
    }

    v10 = sub_226AC4530(v6, v9 | 0x8000000000000000, v19);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_226AB4000, v4, v5, "Registering for pending tasks activity with identifier %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v11 = __swift_project_boxed_opaque_existential_1((v1 + 112), *(v1 + 136));
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = *v11;
  v14 = *(*v11 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v2;
  *(v15 + 32) = sub_226CBE4B4;
  *(v15 + 40) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_226CBEF24;
  *(v16 + 24) = v15;
  v19[4] = sub_226CBEEEC;
  v19[5] = v16;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_226CAD254;
  v19[3] = &block_descriptor_183;
  v17 = _Block_copy(v19);
  swift_retain_n();

  dispatch_sync(v14, v17);
  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226CADBA4()
{
  v1 = v0;
  v2 = *(v0 + *(*v0 + 144));
  v3 = v0 + *(*v0 + 136);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = 0xD00000000000001FLL;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136315138;
    if (v2)
    {
      if (v2 == 1)
      {
        v9 = "com.apple.financed.orders.tasks";
        v6 = 0xD000000000000025;
      }

      else
      {
        v9 = "ed.bankconnect.reboot";
        v6 = 0xD000000000000024;
      }
    }

    else
    {
      v9 = "com.apple.springboard";
    }

    v10 = sub_226AC4530(v6, v9 | 0x8000000000000000, v19);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_226AB4000, v4, v5, "Registering for pending tasks activity with identifier %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v11 = __swift_project_boxed_opaque_existential_1((v1 + 112), *(v1 + 136));
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = *v11;
  v14 = *(*v11 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v2;
  *(v15 + 32) = sub_226CBE224;
  *(v15 + 40) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_226CBE25C;
  *(v16 + 24) = v15;
  v19[4] = sub_226CBEEEC;
  v19[5] = v16;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_226CAD254;
  v19[3] = &block_descriptor_132;
  v17 = _Block_copy(v19);
  swift_retain_n();

  dispatch_sync(v14, v17);
  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226CADEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = result + *(*result + 136);
    v11 = sub_226D6E05C();
    v12 = sub_226D6E9EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_226AB4000, v11, v12, "Running pending tasks activity", v13, 2u);
      MEMORY[0x22AA8BEE0](v13, -1, -1);
    }

    v14 = sub_226D6E79C();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v9;

    sub_226B60364(0, 0, v7, a3, v15);
  }

  return result;
}

uint64_t sub_226CAE070()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226AE5A84;

  return sub_226CAE190();
}

uint64_t sub_226CAE100()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226AD827C;

  return sub_226CAE4F0();
}

uint64_t sub_226CAE1B0()
{
  v1 = v0[2];
  v2 = *v1;
  v3 = *(*v1 + 160);
  v0[3] = v3;
  if (*(v1 + v3))
  {
    v4 = v1 + *(v2 + 136);
    v5 = sub_226D6E05C();
    v6 = sub_226D6E9BC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_226AB4000, v5, v6, "Performing pending tasks already, skipping", v7, 2u);
      MEMORY[0x22AA8BEE0](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    *(v1 + v3) = 1;
    v10 = swift_task_alloc();
    v0[4] = v10;
    *v10 = v0;
    v10[1] = sub_226CAE348;
    v11 = v0[2];

    return sub_226CAE850();
  }
}

uint64_t sub_226CAE348()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226CAE458, v2, 0);
}

uint64_t sub_226CAE458()
{
  *(v0[2] + v0[3]) = 0;
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_226CBEEDC;
  v2 = v0[2];

  return sub_226CAFB00();
}

uint64_t sub_226CAE510()
{
  v1 = v0[2];
  v2 = *v1;
  v3 = *(*v1 + 160);
  v0[3] = v3;
  if (*(v1 + v3))
  {
    v4 = v1 + *(v2 + 136);
    v5 = sub_226D6E05C();
    v6 = sub_226D6E9BC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_226AB4000, v5, v6, "Performing pending tasks already, skipping", v7, 2u);
      MEMORY[0x22AA8BEE0](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    *(v1 + v3) = 1;
    v10 = swift_task_alloc();
    v0[4] = v10;
    *v10 = v0;
    v10[1] = sub_226CAE6A8;
    v11 = v0[2];

    return sub_226CAF148();
  }
}

uint64_t sub_226CAE6A8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226CAE7B8, v2, 0);
}

uint64_t sub_226CAE7B8()
{
  *(v0[2] + v0[3]) = 0;
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_226AD4F38;
  v2 = v0[2];

  return sub_226CB04E0();
}

uint64_t sub_226CAE850()
{
  v6 = *MEMORY[0x277D85DE8];
  v1[5] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE8, &qword_226D7AE08);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_226CAE91C, v0, 0);
}

uint64_t sub_226CAE91C()
{
  v35 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 40);
  v2 = *(*v1 + 136);
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_226AB4000, v3, v4, "Creating transaction for pending tasks activity", v5, 2u);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v6 = *(v0 + 40);

  v7 = (v6 + *(*v6 + 144));
  v8 = v7[3];
  v9 = v7[4];
  sub_226D6E40C();
  *(v0 + 64) = os_transaction_create();

  *(v0 + 144) = 0;
  v10 = sub_226D6E05C();
  v11 = sub_226D6E9AC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_226AB4000, v10, v11, "Creating power assertion for pending tasks activity", v12, 2u);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  v13 = sub_226D6E36C();
  v14 = v7[1];
  v15 = v7[2];
  v16 = sub_226D6E36C();
  v17 = IOPMAssertionCreateWithDescription(v13, v16, 0, 0, 0, 60.0, 0, (v0 + 144));

  if (v17)
  {
    v18 = sub_226D6E05C();
    v19 = sub_226D6E9CC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_226AB4000, v18, v19, "Failed to create power assertion for pending tasks activity", v20, 2u);
      MEMORY[0x22AA8BEE0](v20, -1, -1);
    }

    *(v0 + 144) = 0;
  }

  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  v23 = *(v0 + 40);
  v24 = *(v23 + 152);
  sub_226AE532C(v23 + 160, (v21 + 8));
  v25 = *(v22 + 40);
  v26 = sub_226D6E07C();
  (*(*(v26 - 8) + 16))(&v21[v25], v1 + v2, v26);
  *v21 = v24;

  v27 = sub_226D6E05C();
  v28 = sub_226D6E9EC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_226AB4000, v27, v28, "Starting pending tasks activity", v29, 2u);
    MEMORY[0x22AA8BEE0](v29, -1, -1);
  }

  v30 = *(v0 + 40);

  v31 = *(*v30 + 152);
  *(v0 + 72) = v31;
  v32 = (v30 + v31);
  *(v0 + 80) = *v32;
  *(v0 + 88) = v32[1];
  *(v0 + 96) = v32[2];

  v33 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_226CAECE4, 0, 0);
}

uint64_t sub_226CAECE4()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BF0, &qword_226D7AE10);
  v6 = swift_task_alloc();
  v0[13] = v6;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v4;
  v7 = *(MEMORY[0x277D858E8] + 4);
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_226CAEE38;
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200600](v0 + 2, v5);
}

uint64_t sub_226CAEE38()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_226CAEFA0, 0, 0);
}

uint64_t sub_226CAEFA0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 40);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 128) = *(v0 + 24);
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_226CAF03C, v1, 0);
}

uint64_t sub_226CAF03C()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = (v5 + *(v0 + 72));
  sub_226AC47B0(*(v0 + 56), &qword_27D7A8BE8, &qword_226D7AE08);
  v7 = *v6;
  *v6 = v3;
  v6[1] = v2;
  v6[2] = v1;

  sub_226CAFA40(v5, (v0 + 144));
  sub_226CB2D3C(v5, v4, "Releasing transaction for pending tasks activity");
  swift_unknownObjectRelease();

  v8 = *(v0 + 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_226CAF148()
{
  v6 = *MEMORY[0x277D85DE8];
  v1[5] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BC0, &unk_226D7AD50);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_226CAF214, v0, 0);
}

uint64_t sub_226CAF214()
{
  v35 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 40);
  v2 = *(*v1 + 136);
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_226AB4000, v3, v4, "Creating transaction for pending tasks activity", v5, 2u);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v6 = *(v0 + 40);

  v7 = (v6 + *(*v6 + 144));
  v8 = v7[3];
  v9 = v7[4];
  sub_226D6E40C();
  *(v0 + 64) = os_transaction_create();

  *(v0 + 144) = 0;
  v10 = sub_226D6E05C();
  v11 = sub_226D6E9AC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_226AB4000, v10, v11, "Creating power assertion for pending tasks activity", v12, 2u);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  v13 = sub_226D6E36C();
  v14 = v7[1];
  v15 = v7[2];
  v16 = sub_226D6E36C();
  v17 = IOPMAssertionCreateWithDescription(v13, v16, 0, 0, 0, 60.0, 0, (v0 + 144));

  if (v17)
  {
    v18 = sub_226D6E05C();
    v19 = sub_226D6E9CC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_226AB4000, v18, v19, "Failed to create power assertion for pending tasks activity", v20, 2u);
      MEMORY[0x22AA8BEE0](v20, -1, -1);
    }

    *(v0 + 144) = 0;
  }

  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  v23 = *(v0 + 40);
  v24 = *(v23 + 152);
  sub_226AE532C(v23 + 160, (v21 + 8));
  v25 = *(v22 + 40);
  v26 = sub_226D6E07C();
  (*(*(v26 - 8) + 16))(&v21[v25], v1 + v2, v26);
  *v21 = v24;

  v27 = sub_226D6E05C();
  v28 = sub_226D6E9EC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_226AB4000, v27, v28, "Starting pending tasks activity", v29, 2u);
    MEMORY[0x22AA8BEE0](v29, -1, -1);
  }

  v30 = *(v0 + 40);

  v31 = *(*v30 + 152);
  *(v0 + 72) = v31;
  v32 = (v30 + v31);
  *(v0 + 80) = *v32;
  *(v0 + 88) = v32[1];
  *(v0 + 96) = v32[2];

  v33 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_226CAF5DC, 0, 0);
}

uint64_t sub_226CAF5DC()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BC8, &qword_226D7AD60);
  v6 = swift_task_alloc();
  v0[13] = v6;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v4;
  v7 = *(MEMORY[0x277D858E8] + 4);
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_226CAF730;
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200600](v0 + 2, v5);
}

uint64_t sub_226CAF730()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_226CAF898, 0, 0);
}

uint64_t sub_226CAF898()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 40);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 128) = *(v0 + 24);
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_226CAF934, v1, 0);
}

uint64_t sub_226CAF934()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = (v5 + *(v0 + 72));
  sub_226AC47B0(*(v0 + 56), &qword_27D7A8BC0, &unk_226D7AD50);
  v7 = *v6;
  *v6 = v3;
  v6[1] = v2;
  v6[2] = v1;

  sub_226CAFA40(v5, (v0 + 144));
  sub_226CB2D3C(v5, v4, "Releasing transaction for pending tasks activity");
  swift_unknownObjectRelease();

  v8 = *(v0 + 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_226CAFA40(uint64_t a1, IOPMAssertionID *a2)
{
  v3 = a1 + *(*a1 + 136);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9AC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_226AB4000, v4, v5, "Releasing power assertion for pending tasks activity", v6, 2u);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v7 = *a2;

  return IOPMAssertionRelease(v7);
}

uint64_t sub_226CAFB00()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CAFB9C, v0, 0);
}

uint64_t sub_226CAFB9C()
{
  v1 = v0[2];
  v2 = *(*v1 + 168);
  v0[4] = v2;
  *(v1 + v2) = 1;
  v3 = *v1;
  v4 = *(*v1 + 176);
  v0[5] = v4;
  v5 = *(v1 + v4);
  v0[6] = v5;
  if (v5)
  {
    v6 = v0[2];
    v0[7] = *(v3 + 136);

    v7 = sub_226D6E05C();
    v8 = sub_226D6E9BC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_226AB4000, v7, v8, "Awaiting concurrent pending tasks scheduling", v9, 2u);
      MEMORY[0x22AA8BEE0](v9, -1, -1);
    }

    v10 = *(MEMORY[0x277D857E0] + 4);
    v11 = swift_task_alloc();
    v0[8] = v11;
    *v11 = v0;
    v12 = sub_226CAFE58;
  }

  else
  {
    v14 = v0[2];
    v13 = v0[3];
    v15 = sub_226D6E79C();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    v16 = sub_226AC4194(&qword_281061838, &unk_27D7A8C10, &qword_226D775A8);
    v17 = swift_allocObject();
    v17[2] = v14;
    v17[3] = v16;
    v17[4] = v14;
    swift_retain_n();
    v18 = sub_226B60364(0, 0, v13, &unk_226D7AE48, v17);
    v0[11] = v18;
    v19 = *(v14 + v4);
    *(v14 + v4) = v18;

    v20 = *(MEMORY[0x277D857E0] + 4);
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v12 = sub_226CB03D0;
  }

  v11[1] = v12;

  return MEMORY[0x282200460]();
}

uint64_t sub_226CAFE58()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226CAFF68, v2, 0);
}

uint64_t sub_226CAFF68()
{
  v1 = v0[2];
  if (*(v1 + v0[4]) == 1)
  {
    v2 = *(v1 + v0[5]);
    v0[9] = v2;
    if (v2)
    {
      v3 = v0[7];

      v4 = sub_226D6E05C();
      v5 = sub_226D6E9BC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_226AB4000, v4, v5, "Awaiting another concurrent pending tasks scheduling", v6, 2u);
        MEMORY[0x22AA8BEE0](v6, -1, -1);
      }

      v7 = *(MEMORY[0x277D857E0] + 4);
      v8 = swift_task_alloc();
      v0[10] = v8;
      *v8 = v0;
      v9 = sub_226CB02C0;
    }

    else
    {
      v19 = v0[6];

      v20 = v0[5];
      v22 = v0[2];
      v21 = v0[3];
      v23 = sub_226D6E79C();
      (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
      v24 = sub_226AC4194(&qword_281061838, &unk_27D7A8C10, &qword_226D775A8);
      v25 = swift_allocObject();
      v25[2] = v22;
      v25[3] = v24;
      v25[4] = v22;
      swift_retain_n();
      v26 = sub_226B60364(0, 0, v21, &unk_226D7AE48, v25);
      v0[11] = v26;
      v27 = *(v22 + v20);
      *(v22 + v20) = v26;

      v28 = *(MEMORY[0x277D857E0] + 4);
      v8 = swift_task_alloc();
      v0[12] = v8;
      *v8 = v0;
      v9 = sub_226CB03D0;
    }

    v8[1] = v9;

    return MEMORY[0x282200460]();
  }

  else
  {
    v10 = v1 + v0[7];
    v11 = sub_226D6E05C();
    v12 = sub_226D6E9BC();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[6];
    if (v13)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_226AB4000, v11, v12, "Pending tasks scheduling no longer needed, skipping", v15, 2u);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }

    else
    {
    }

    v16 = v0[3];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_226CB02C0()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226CBEF28, v2, 0);
}

uint64_t sub_226CB03D0()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226CBEEE0, v2, 0);
}

uint64_t sub_226CB04E0()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CB057C, v0, 0);
}

uint64_t sub_226CB057C()
{
  v1 = v0[2];
  v2 = *(*v1 + 168);
  v0[4] = v2;
  *(v1 + v2) = 1;
  v3 = *v1;
  v4 = *(*v1 + 176);
  v0[5] = v4;
  v5 = *(v1 + v4);
  v0[6] = v5;
  if (v5)
  {
    v6 = v0[2];
    v0[7] = *(v3 + 136);

    v7 = sub_226D6E05C();
    v8 = sub_226D6E9BC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_226AB4000, v7, v8, "Awaiting concurrent pending tasks scheduling", v9, 2u);
      MEMORY[0x22AA8BEE0](v9, -1, -1);
    }

    v10 = *(MEMORY[0x277D857E0] + 4);
    v11 = swift_task_alloc();
    v0[8] = v11;
    *v11 = v0;
    v12 = sub_226CB0838;
  }

  else
  {
    v14 = v0[2];
    v13 = v0[3];
    v15 = sub_226D6E79C();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    v16 = sub_226AC4194(qword_281061840, &qword_27D7A8BD8, &qword_226D7AD98);
    v17 = swift_allocObject();
    v17[2] = v14;
    v17[3] = v16;
    v17[4] = v14;
    swift_retain_n();
    v18 = sub_226B60364(0, 0, v13, &unk_226D7ADA8, v17);
    v0[11] = v18;
    v19 = *(v14 + v4);
    *(v14 + v4) = v18;

    v20 = *(MEMORY[0x277D857E0] + 4);
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v12 = sub_226CB0EC8;
  }

  v11[1] = v12;

  return MEMORY[0x282200460]();
}

uint64_t sub_226CB0838()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226CB0948, v2, 0);
}

uint64_t sub_226CB0948()
{
  v1 = v0[2];
  if (*(v1 + v0[4]) == 1)
  {
    v2 = *(v1 + v0[5]);
    v0[9] = v2;
    if (v2)
    {
      v3 = v0[7];

      v4 = sub_226D6E05C();
      v5 = sub_226D6E9BC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_226AB4000, v4, v5, "Awaiting another concurrent pending tasks scheduling", v6, 2u);
        MEMORY[0x22AA8BEE0](v6, -1, -1);
      }

      v7 = *(MEMORY[0x277D857E0] + 4);
      v8 = swift_task_alloc();
      v0[10] = v8;
      *v8 = v0;
      v9 = sub_226CB0CA0;
    }

    else
    {
      v19 = v0[6];

      v20 = v0[5];
      v22 = v0[2];
      v21 = v0[3];
      v23 = sub_226D6E79C();
      (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
      v24 = sub_226AC4194(qword_281061840, &qword_27D7A8BD8, &qword_226D7AD98);
      v25 = swift_allocObject();
      v25[2] = v22;
      v25[3] = v24;
      v25[4] = v22;
      swift_retain_n();
      v26 = sub_226B60364(0, 0, v21, &unk_226D7ADA8, v25);
      v0[11] = v26;
      v27 = *(v22 + v20);
      *(v22 + v20) = v26;

      v28 = *(MEMORY[0x277D857E0] + 4);
      v8 = swift_task_alloc();
      v0[12] = v8;
      *v8 = v0;
      v9 = sub_226CB0EC8;
    }

    v8[1] = v9;

    return MEMORY[0x282200460]();
  }

  else
  {
    v10 = v1 + v0[7];
    v11 = sub_226D6E05C();
    v12 = sub_226D6E9BC();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[6];
    if (v13)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_226AB4000, v11, v12, "Pending tasks scheduling no longer needed, skipping", v15, 2u);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }

    else
    {
    }

    v16 = v0[3];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_226CB0CA0()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226CB0DB0, v2, 0);
}

uint64_t sub_226CB0DB0()
{
  v1 = v0[2] + v0[7];
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9BC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[9];
  v6 = v0[6];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Pending tasks scheduled already, skipping", v7, 2u);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  else
  {
  }

  v8 = v0[3];

  v9 = v0[1];

  return v9();
}

uint64_t sub_226CB0EC8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226CB0FD8, v2, 0);
}

uint64_t sub_226CB0FD8()
{
  v1 = v0[11];

  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_226CB1060()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 168)) = 0;
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_226CB110C;
  v2 = *(v0 + 16);

  return sub_226CB1474();
}

uint64_t sub_226CB110C()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226CBEF2C, v2, 0);
}

uint64_t sub_226CB123C()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 168)) = 0;
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_226CB12E8;
  v2 = *(v0 + 16);

  return sub_226CB1FFC();
}

uint64_t sub_226CB12E8()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226CB13F8, v2, 0);
}

uint64_t sub_226CB13F8()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + 176);
  v3 = *(v1 + v2);
  *(v1 + v2) = 0;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226CB1474()
{
  v1[8] = v0;
  v2 = type metadata accessor for ActivityRequest(0);
  v1[9] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = sub_226D6D4AC();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CB15B4, v0, 0);
}

uint64_t sub_226CB15B4()
{
  *(v0 + 136) = *(**(v0 + 64) + 136);
  v1 = sub_226D6E05C();
  v2 = sub_226D6E9AC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_226AB4000, v1, v2, "Creating transaction for scheduling pending tasks", v3, 2u);
    MEMORY[0x22AA8BEE0](v3, -1, -1);
  }

  v4 = *(v0 + 64);

  v5 = *(*v4 + 144);
  *(v0 + 144) = v5;
  v6 = v4 + v5;
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  sub_226D6E40C();
  v9 = os_transaction_create();
  *(v0 + 152) = v9;

  v10 = *(*v4 + 160);
  *(v0 + 160) = v10;
  v11 = *(v4 + v10);
  v12 = sub_226D6E05C();
  v13 = sub_226D6E9BC();
  v14 = os_log_type_enabled(v12, v13);
  if (v11)
  {
    if (v14)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_226AB4000, v12, v13, "Performing pending tasks already, not scheduling now (before fetch)", v15, 2u);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }

    v16 = *(v0 + 64);

    sub_226CB2D3C(v16, v9, "Releasing transaction for scheduling pending tasks");
    swift_unknownObjectRelease();
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    v19 = *(v0 + 112);
    v21 = *(v0 + 80);
    v20 = *(v0 + 88);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    if (v14)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_226AB4000, v12, v13, "Retrieving pending tasks from source", v24, 2u);
      MEMORY[0x22AA8BEE0](v24, -1, -1);
    }

    v25 = *(v0 + 64);

    v26 = *(v25 + 152);
    v27 = swift_task_alloc();
    *(v0 + 168) = v27;
    *v27 = v0;
    v27[1] = sub_226CB1890;

    return sub_226C8FC00();
  }
}

uint64_t sub_226CB1890(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  v4[22] = v1;

  v7 = v4[8];
  if (v1)
  {
    v8 = sub_226CBEF18;
  }

  else
  {
    v4[23] = a1;
    v8 = sub_226CB19CC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_226CB19CC()
{
  v68 = v0;
  v1 = v0[20];
  v2 = v0[8];
  v3 = sub_226CB2DFC(v0[23], &unk_27D7A8C00, &qword_226D70BE0);

  if ((*(v2 + v1) & 1) == 0)
  {
    v11 = v0[15];
    v12 = v0[12];
    v13 = v0[13];
    v14 = v0[11];
    v15 = (v0[8] + *(*v0[8] + 152));
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];

    sub_226D6D46C();
    sub_226C97E78(v3, v11, v16, v14);

    v19 = *(v13 + 8);
    (v19)(v11, v12);
    if ((*(v13 + 48))(v14, 1, v12) == 1)
    {
      v20 = v0[17];
      v21 = v0[8];
      sub_226AC47B0(v0[11], &qword_27D7A8BE0, &unk_226D718F0);
      v22 = sub_226D6E05C();
      v23 = sub_226D6E9EC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_226AB4000, v22, v23, "Cancelling any previous pending tasks activity request", v24, 2u);
        MEMORY[0x22AA8BEE0](v24, -1, -1);
      }

      v25 = v0[18];
      v26 = v0[8];

      v27 = __swift_project_boxed_opaque_existential_1((v26 + 112), *(v26 + 136));
      LOBYTE(v26) = *(v26 + v25);
      v28 = *v27;
      v29 = *(*v27 + 16);
      v19 = swift_allocObject();
      *(v19 + 16) = v28;
      *(v19 + 24) = v26;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_226CBEEF0;
      *(v30 + 24) = v19;
      v0[6] = sub_226CBEEEC;
      v0[7] = v30;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_226CAD254;
      v0[5] = &block_descriptor_167;
      v31 = _Block_copy(v0 + 2);
      v32 = v0[7];

      dispatch_sync(v29, v31);
      _Block_release(v31);
      LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

      if ((v31 & 1) == 0)
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    v33 = v0[18];
    v64 = v0[17];
    v66 = v19;
    v34 = v0[16];
    v35 = v0[13];
    v63 = v0[14];
    v36 = v0[12];
    v37 = v0[9];
    v38 = v0[10];
    v39 = v0[8];
    (*(v35 + 32))(v34, v0[11], v36);
    LOBYTE(v33) = *(v39 + v33);
    v40 = *(v35 + 16);
    v40(&v38[*(v37 + 20)], v34, v36);
    *v38 = v33;
    v38[*(v37 + 24)] = 5;
    v40(v63, v34, v36);
    v41 = sub_226D6E05C();
    v42 = sub_226D6E9EC();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[14];
    v45 = v0[12];
    if (v43)
    {
      v46 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v67 = v65;
      *v46 = 136315138;
      sub_226CBDA0C(&qword_281062B80, MEMORY[0x277CC9578]);
      v47 = sub_226D6F1CC();
      v49 = v48;
      v50 = v66;
      v66(v44, v45);
      v51 = sub_226AC4530(v47, v49, &v67);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_226AB4000, v41, v42, "Submitting pending tasks activity request for %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x22AA8BEE0](v65, -1, -1);
      MEMORY[0x22AA8BEE0](v46, -1, -1);
    }

    else
    {

      v50 = v66;
      v66(v44, v45);
    }

    v52 = v0[16];
    v53 = v0[12];
    v54 = v0[10];
    v55 = *__swift_project_boxed_opaque_existential_1((v0[8] + 112), *(v0[8] + 136));
    sub_226B26CC0(v54);
    sub_226CBE058(v54);
    v50(v52, v53);
LABEL_14:
    v9 = v0[19];
    v10 = v0[8];
    goto LABEL_15;
  }

  v4 = v0[17];
  v5 = v0[8];

  v6 = sub_226D6E05C();
  v7 = sub_226D6E9BC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_226AB4000, v6, v7, "Performing pending tasks already, not scheduling now (after fetch)", v8, 2u);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  v9 = v0[19];
  v10 = v0[8];

LABEL_15:
  sub_226CB2D3C(v10, v9, "Releasing transaction for scheduling pending tasks");
  swift_unknownObjectRelease();
  v57 = v0[15];
  v56 = v0[16];
  v58 = v0[14];
  v60 = v0[10];
  v59 = v0[11];

  v61 = v0[1];

  return v61();
}

uint64_t sub_226CB1FFC()
{
  v1[8] = v0;
  v2 = type metadata accessor for ActivityRequest(0);
  v1[9] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = sub_226D6D4AC();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CB213C, v0, 0);
}

uint64_t sub_226CB213C()
{
  *(v0 + 136) = *(**(v0 + 64) + 136);
  v1 = sub_226D6E05C();
  v2 = sub_226D6E9AC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_226AB4000, v1, v2, "Creating transaction for scheduling pending tasks", v3, 2u);
    MEMORY[0x22AA8BEE0](v3, -1, -1);
  }

  v4 = *(v0 + 64);

  v5 = *(*v4 + 144);
  *(v0 + 144) = v5;
  v6 = v4 + v5;
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  sub_226D6E40C();
  v9 = os_transaction_create();
  *(v0 + 152) = v9;

  v10 = *(*v4 + 160);
  *(v0 + 160) = v10;
  v11 = *(v4 + v10);
  v12 = sub_226D6E05C();
  v13 = sub_226D6E9BC();
  v14 = os_log_type_enabled(v12, v13);
  if (v11)
  {
    if (v14)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_226AB4000, v12, v13, "Performing pending tasks already, not scheduling now (before fetch)", v15, 2u);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }

    v16 = *(v0 + 64);

    sub_226CB2D3C(v16, v9, "Releasing transaction for scheduling pending tasks");
    swift_unknownObjectRelease();
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    v19 = *(v0 + 112);
    v21 = *(v0 + 80);
    v20 = *(v0 + 88);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    if (v14)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_226AB4000, v12, v13, "Retrieving pending tasks from source", v24, 2u);
      MEMORY[0x22AA8BEE0](v24, -1, -1);
    }

    v25 = *(v0 + 64);

    v26 = *(v25 + 152);
    v27 = swift_task_alloc();
    *(v0 + 168) = v27;
    *v27 = v0;
    v27[1] = sub_226CB2418;

    return sub_226B86C9C();
  }
}

uint64_t sub_226CB2418(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  v4[22] = v1;

  v7 = v4[8];
  if (v1)
  {
    v8 = sub_226CB2B84;
  }

  else
  {
    v4[23] = a1;
    v8 = sub_226CB2554;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_226CB2554()
{
  v68 = v0;
  v1 = v0[20];
  v2 = v0[8];
  v3 = sub_226CB2DFC(v0[23], &qword_27D7A6160, &qword_226D70BA0);

  if ((*(v2 + v1) & 1) == 0)
  {
    v11 = v0[15];
    v12 = v0[12];
    v13 = v0[13];
    v14 = v0[11];
    v15 = (v0[8] + *(*v0[8] + 152));
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];

    sub_226D6D46C();
    sub_226C97E78(v3, v11, v16, v14);

    v19 = *(v13 + 8);
    (v19)(v11, v12);
    if ((*(v13 + 48))(v14, 1, v12) == 1)
    {
      v20 = v0[17];
      v21 = v0[8];
      sub_226AC47B0(v0[11], &qword_27D7A8BE0, &unk_226D718F0);
      v22 = sub_226D6E05C();
      v23 = sub_226D6E9EC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_226AB4000, v22, v23, "Cancelling any previous pending tasks activity request", v24, 2u);
        MEMORY[0x22AA8BEE0](v24, -1, -1);
      }

      v25 = v0[18];
      v26 = v0[8];

      v27 = __swift_project_boxed_opaque_existential_1((v26 + 112), *(v26 + 136));
      LOBYTE(v26) = *(v26 + v25);
      v28 = *v27;
      v29 = *(*v27 + 16);
      v19 = swift_allocObject();
      *(v19 + 16) = v28;
      *(v19 + 24) = v26;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_226CBE04C;
      *(v30 + 24) = v19;
      v0[6] = sub_226B2A000;
      v0[7] = v30;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_226CAD254;
      v0[5] = &block_descriptor_104;
      v31 = _Block_copy(v0 + 2);
      v32 = v0[7];

      dispatch_sync(v29, v31);
      _Block_release(v31);
      LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

      if ((v31 & 1) == 0)
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    v33 = v0[18];
    v64 = v0[17];
    v66 = v19;
    v34 = v0[16];
    v35 = v0[13];
    v63 = v0[14];
    v36 = v0[12];
    v37 = v0[9];
    v38 = v0[10];
    v39 = v0[8];
    (*(v35 + 32))(v34, v0[11], v36);
    LOBYTE(v33) = *(v39 + v33);
    v40 = *(v35 + 16);
    v40(&v38[*(v37 + 20)], v34, v36);
    *v38 = v33;
    v38[*(v37 + 24)] = 5;
    v40(v63, v34, v36);
    v41 = sub_226D6E05C();
    v42 = sub_226D6E9EC();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[14];
    v45 = v0[12];
    if (v43)
    {
      v46 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v67 = v65;
      *v46 = 136315138;
      sub_226CBDA0C(&qword_281062B80, MEMORY[0x277CC9578]);
      v47 = sub_226D6F1CC();
      v49 = v48;
      v50 = v66;
      v66(v44, v45);
      v51 = sub_226AC4530(v47, v49, &v67);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_226AB4000, v41, v42, "Submitting pending tasks activity request for %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x22AA8BEE0](v65, -1, -1);
      MEMORY[0x22AA8BEE0](v46, -1, -1);
    }

    else
    {

      v50 = v66;
      v66(v44, v45);
    }

    v52 = v0[16];
    v53 = v0[12];
    v54 = v0[10];
    v55 = *__swift_project_boxed_opaque_existential_1((v0[8] + 112), *(v0[8] + 136));
    sub_226B26CC0(v54);
    sub_226CBE058(v54);
    v50(v52, v53);
LABEL_14:
    v9 = v0[19];
    v10 = v0[8];
    goto LABEL_15;
  }

  v4 = v0[17];
  v5 = v0[8];

  v6 = sub_226D6E05C();
  v7 = sub_226D6E9BC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_226AB4000, v6, v7, "Performing pending tasks already, not scheduling now (after fetch)", v8, 2u);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  v9 = v0[19];
  v10 = v0[8];

LABEL_15:
  sub_226CB2D3C(v10, v9, "Releasing transaction for scheduling pending tasks");
  swift_unknownObjectRelease();
  v57 = v0[15];
  v56 = v0[16];
  v58 = v0[14];
  v60 = v0[10];
  v59 = v0[11];

  v61 = v0[1];

  return v61();
}

uint64_t sub_226CB2B84()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[8];
  v4 = v1;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9CC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[22];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_226AB4000, v5, v6, "Failed to retrieve pending tasks with error %@", v9, 0xCu);
    sub_226AC47B0(v10, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  else
  {
  }

  sub_226CB2D3C(v0[8], v0[19], "Releasing transaction for scheduling pending tasks");
  swift_unknownObjectRelease();
  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[14];
  v17 = v0[10];
  v16 = v0[11];

  v18 = v0[1];

  return v18();
}

void sub_226CB2D3C(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = a1 + *(*a1 + 136);
  oslog = sub_226D6E05C();
  v5 = sub_226D6E9AC();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_226AB4000, oslog, v5, a3, v6, 2u);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }
}

uint64_t sub_226CB2DFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v14 = MEMORY[0x277D84F90];
    sub_226AE244C(0, v3, 0);
    v4 = v14;
    v8 = a1 + 32;
    do
    {
      sub_226AE532C(v8, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6140, &qword_226D70B40);
      swift_dynamicCast();
      v14 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_226AE244C((v9 > 1), v10 + 1, 1);
        v4 = v14;
      }

      *(v4 + 16) = v10 + 1;
      sub_226AC484C(&v13, v4 + 40 * v10 + 32);
      v8 += 40;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_226CB2F2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_226AE28BC(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8880, &qword_226D7A040);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_226AE28BC((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_226B24A98(&v9, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_226CB303C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_226D6EDFC();
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

  v17 = MEMORY[0x277D84F90];
  result = sub_226AE2A48(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x22AA8AFD0](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_226AE2A48((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_226AE59B4(0, &unk_27D7A8C30, 0x277CBE4A8);
        v16 = &off_283A6AF18;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_226AC484C(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_226AE2A48((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_226AE59B4(0, &unk_27D7A8C30, 0x277CBE4A8);
        v16 = &off_283A6AF18;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_226AC484C(&v14, v3 + 40 * v12 + 32);
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

void *sub_226CB321C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_226D6EDFC();
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

  v17 = MEMORY[0x277D84F90];
  result = sub_226AE2A48(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x22AA8AFD0](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_226AE2A48((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_226D6A26C();
        v16 = &off_283A6AF40;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_226AC484C(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);
        v13 = v10;
        if (v11 >= v12 >> 1)
        {
          sub_226AE2A48((v12 > 1), v11 + 1, 1);
          v3 = v17;
        }

        v15 = sub_226D6A26C();
        v16 = &off_283A6AF40;
        *&v14 = v13;
        *(v3 + 16) = v11 + 1;
        sub_226AC484C(&v14, v3 + 40 * v11 + 32);
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

uint64_t sub_226CB33D4(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return MEMORY[0x2822009F8](sub_226CB33F8, 0, 0);
}

uint64_t sub_226CB33F8()
{
  if (sub_226D6E82C())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = **(v0 + 112);
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_226CB34C4;

    return sub_226C8FC00();
  }
}

uint64_t sub_226CB34C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_226CB3924;
  }

  else
  {
    v5 = sub_226CB35D8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226CB35D8()
{
  v1 = v0[13];
  v2 = sub_226CB2DFC(v0[16], &unk_27D7A8C00, &qword_226D70BE0);
  v3 = *(v2 + 16);
  if (v3)
  {
    v29 = v1;
    v30 = MEMORY[0x277D84F90];
    sub_226AE248C(0, v3, 0);
    v4 = v30;
    v5 = v2 + 32;
    do
    {
      sub_226AE532C(v5, (v0 + 2));
      v7 = v0[5];
      v6 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
      v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64) + 15;
      swift_task_alloc();
      (*(v6 + 56))(v7, v6);
      swift_getAssociatedConformanceWitness();
      sub_226D6EE8C();

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
      v10 = *(v30 + 16);
      v9 = *(v30 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_226AE248C((v9 > 1), v10 + 1, 1);
      }

      *(v30 + 16) = v10 + 1;
      v11 = v30 + 40 * v10;
      *(v11 + 64) = v33;
      *(v11 + 32) = v31;
      *(v11 + 48) = v32;
      v5 += 40;
      --v3;
    }

    while (v3);

    v1 = v29;
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v13 = v0[16];
  v12 = v0[17];
  v14 = sub_226AE4B40(v4);

  v15 = *(v1 + 24);

  v16 = sub_226CBDDD8(v15, v14);
  swift_bridgeObjectRelease_n();

  *(v1 + 24) = v16;
  v17 = *(v13 + 16);
  v0[18] = v17;
  v18 = v0[16];
  if (v17)
  {
    v0[19] = 0;
    sub_226AE532C(v18 + 32, (v0 + 7));
    v20 = v0[10];
    v19 = v0[11];
    v21 = __swift_project_boxed_opaque_existential_1(v0 + 7, v20);
    v22 = swift_task_alloc();
    v0[20] = v22;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE8, &qword_226D7AE08);
    *v22 = v0;
    v22[1] = sub_226CB3AA0;
    v24 = v0[13];
    v25 = v0[14];
    v26 = v0[12];

    return sub_226C9A388(v21, v26, v24, v23, v20, v19);
  }

  else
  {

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_226CB3924()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE8, &qword_226D7AE08) + 40);
  v4 = v1;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9CC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[17];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_226AB4000, v5, v6, "Failed to retrieve pending tasks with error %@", v9, 0xCu);
    sub_226AC47B0(v10, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_226CB3AA0()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226CB3B9C, 0, 0);
}

uint64_t sub_226CB3B9C()
{
  v1 = v0[18];
  v2 = v0[19] + 1;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  if (v2 == v1)
  {
    v3 = v0[16];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[19];
    v0[19] = v6 + 1;
    sub_226AE532C(v0[16] + 40 * v6 + 72, (v0 + 7));
    v8 = v0[10];
    v7 = v0[11];
    v9 = __swift_project_boxed_opaque_existential_1(v0 + 7, v8);
    v10 = swift_task_alloc();
    v0[20] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE8, &qword_226D7AE08);
    *v10 = v0;
    v10[1] = sub_226CB3AA0;
    v12 = v0[13];
    v13 = v0[14];
    v14 = v0[12];

    return sub_226C9A388(v9, v14, v12, v11, v8, v7);
  }
}

uint64_t sub_226CB3CF8(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return MEMORY[0x2822009F8](sub_226CB3D1C, 0, 0);
}

uint64_t sub_226CB3D1C()
{
  if (sub_226D6E82C())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = **(v0 + 112);
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_226CB3DE8;

    return sub_226B86C9C();
  }
}

uint64_t sub_226CB3DE8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_226CB4248;
  }

  else
  {
    v5 = sub_226CB3EFC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226CB3EFC()
{
  v1 = v0[13];
  v2 = sub_226CB2DFC(v0[16], &qword_27D7A6160, &qword_226D70BA0);
  v3 = *(v2 + 16);
  if (v3)
  {
    v29 = v1;
    v30 = MEMORY[0x277D84F90];
    sub_226AE248C(0, v3, 0);
    v4 = v30;
    v5 = v2 + 32;
    do
    {
      sub_226AE532C(v5, (v0 + 2));
      v7 = v0[5];
      v6 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
      v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64) + 15;
      swift_task_alloc();
      (*(v6 + 56))(v7, v6);
      swift_getAssociatedConformanceWitness();
      sub_226D6EE8C();

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
      v10 = *(v30 + 16);
      v9 = *(v30 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_226AE248C((v9 > 1), v10 + 1, 1);
      }

      *(v30 + 16) = v10 + 1;
      v11 = v30 + 40 * v10;
      *(v11 + 64) = v33;
      *(v11 + 32) = v31;
      *(v11 + 48) = v32;
      v5 += 40;
      --v3;
    }

    while (v3);

    v1 = v29;
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v13 = v0[16];
  v12 = v0[17];
  v14 = sub_226AE4B40(v4);

  v15 = *(v1 + 24);

  v16 = sub_226CBDDD8(v15, v14);
  swift_bridgeObjectRelease_n();

  *(v1 + 24) = v16;
  v17 = *(v13 + 16);
  v0[18] = v17;
  v18 = v0[16];
  if (v17)
  {
    v0[19] = 0;
    sub_226AE532C(v18 + 32, (v0 + 7));
    v20 = v0[10];
    v19 = v0[11];
    v21 = __swift_project_boxed_opaque_existential_1(v0 + 7, v20);
    v22 = swift_task_alloc();
    v0[20] = v22;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BC0, &unk_226D7AD50);
    *v22 = v0;
    v22[1] = sub_226CB43C4;
    v24 = v0[13];
    v25 = v0[14];
    v26 = v0[12];

    return sub_226C9A388(v21, v26, v24, v23, v20, v19);
  }

  else
  {

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_226CB4248()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BC0, &unk_226D7AD50) + 40);
  v4 = v1;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9CC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[17];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_226AB4000, v5, v6, "Failed to retrieve pending tasks with error %@", v9, 0xCu);
    sub_226AC47B0(v10, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_226CB43C4()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226CB44C0, 0, 0);
}

uint64_t sub_226CB44C0()
{
  v1 = v0[18];
  v2 = v0[19] + 1;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  if (v2 == v1)
  {
    v3 = v0[16];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[19];
    v0[19] = v6 + 1;
    sub_226AE532C(v0[16] + 40 * v6 + 72, (v0 + 7));
    v8 = v0[10];
    v7 = v0[11];
    v9 = __swift_project_boxed_opaque_existential_1(v0 + 7, v8);
    v10 = swift_task_alloc();
    v0[20] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BC0, &unk_226D7AD50);
    *v10 = v0;
    v10[1] = sub_226CB43C4;
    v12 = v0[13];
    v13 = v0[14];
    v14 = v0[12];

    return sub_226C9A388(v9, v14, v12, v11, v8, v7);
  }
}

uint64_t sub_226CB461C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 192) = a3;
  *(v5 + 176) = a4;
  *(v5 + 184) = a5;
  *(v5 + 160) = a1;
  *(v5 + 168) = a2;
  v6 = sub_226D6D4AC();
  *(v5 + 200) = v6;
  v7 = *(v6 - 8);
  *(v5 + 208) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 216) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BF8, &qword_226D7AE30);
  *(v5 + 224) = v9;
  v10 = *(v9 - 8);
  *(v5 + 232) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CB474C, 0, 0);
}

uint64_t sub_226CB474C()
{
  v1 = *(v0 + 168);
  *(v0 + 72) = xmmword_226D7AC30;
  *(v0 + 88) = MEMORY[0x277D84FA0];
  *(v0 + 96) = v1;
  *(v0 + 104) = *(v0 + 176);

  v2 = swift_task_alloc();
  *(v0 + 248) = v2;
  *v2 = v0;
  v2[1] = sub_226CB4820;
  v3 = *(v0 + 192);
  v4 = *(v0 + 160);

  return sub_226CB33D4(v4, v0 + 72);
}

uint64_t sub_226CB4820()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226CB491C, 0, 0);
}

uint64_t sub_226CB491C()
{
  v1 = *(v0 + 240);
  v2 = **(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BF0, &qword_226D7AE10);
  sub_226D6E71C();
  v3 = *(MEMORY[0x277D856B0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_226CB49F4;
  v5 = *(v0 + 240);
  v6 = *(v0 + 224);

  return MEMORY[0x2822002E8](v0 + 16, 0, 0, v6);
}

uint64_t sub_226CB49F4()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226CB4AF0, 0, 0);
}

uint64_t sub_226CB4AF0()
{
  if (*(v0 + 40))
  {
    *(v0 + 264) = *(v0 + 56);
    v1 = *(v0 + 64);
    *(v0 + 65) = v1;
    sub_226AC484C((v0 + 16), v0 + 120);
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    v4 = __swift_project_boxed_opaque_existential_1((v0 + 120), v2);
    if (v1)
    {
      v6 = *(v0 + 208);
      v5 = *(v0 + 216);
      v7 = *(v0 + 200);
      v8 = v4;
      sub_226D6D46C();
      sub_226C99D50(v8, v5, v2, v3);
      (*(v6 + 8))(v5, v7);
    }

    else
    {
      sub_226C99C2C(v4, v2, v3);
    }

    v18 = swift_task_alloc();
    *(v0 + 272) = v18;
    *v18 = v0;
    v18[1] = sub_226CB4CC0;
    v19 = *(v0 + 192);
    v20 = *(v0 + 160);

    return sub_226CB33D4(v20, v0 + 72);
  }

  else
  {
    v9 = *(v0 + 216);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    v10 = *(v0 + 104);
    v11 = *(v0 + 112);
    v12 = *(v0 + 88);
    v13 = *(v0 + 96);

    v14 = *(v0 + 8);
    v15.n128_u64[0] = v10;
    v16.n128_u64[0] = v11;

    return v14(v13, v15, v16);
  }
}

uint64_t sub_226CB4CC0()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226CB4DBC, 0, 0);
}

uint64_t sub_226CB4DBC()
{
  sub_226CBDBE8(*(v0 + 264), *(v0 + 65));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));
  v1 = *(MEMORY[0x277D856B0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  *v2 = v0;
  v2[1] = sub_226CB49F4;
  v3 = *(v0 + 240);
  v4 = *(v0 + 224);

  return MEMORY[0x2822002E8](v0 + 16, 0, 0, v4);
}

uint64_t sub_226CB4E78(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 192) = a3;
  *(v5 + 176) = a4;
  *(v5 + 184) = a5;
  *(v5 + 160) = a1;
  *(v5 + 168) = a2;
  v6 = sub_226D6D4AC();
  *(v5 + 200) = v6;
  v7 = *(v6 - 8);
  *(v5 + 208) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 216) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BD0, &qword_226D7AD80);
  *(v5 + 224) = v9;
  v10 = *(v9 - 8);
  *(v5 + 232) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CB4FA8, 0, 0);
}

uint64_t sub_226CB4FA8()
{
  v1 = *(v0 + 168);
  *(v0 + 72) = xmmword_226D7AC30;
  *(v0 + 88) = MEMORY[0x277D84FA0];
  *(v0 + 96) = v1;
  *(v0 + 104) = *(v0 + 176);

  v2 = swift_task_alloc();
  *(v0 + 248) = v2;
  *v2 = v0;
  v2[1] = sub_226CB507C;
  v3 = *(v0 + 192);
  v4 = *(v0 + 160);

  return sub_226CB3CF8(v4, v0 + 72);
}

uint64_t sub_226CB507C()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226CB5178, 0, 0);
}

uint64_t sub_226CB5178()
{
  v1 = *(v0 + 240);
  v2 = **(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BC8, &qword_226D7AD60);
  sub_226D6E71C();
  v3 = *(MEMORY[0x277D856B0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_226CB5250;
  v5 = *(v0 + 240);
  v6 = *(v0 + 224);

  return MEMORY[0x2822002E8](v0 + 16, 0, 0, v6);
}

uint64_t sub_226CB5250()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226CB534C, 0, 0);
}

uint64_t sub_226CB534C()
{
  if (*(v0 + 40))
  {
    *(v0 + 264) = *(v0 + 56);
    v1 = *(v0 + 64);
    *(v0 + 65) = v1;
    sub_226AC484C((v0 + 16), v0 + 120);
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    v4 = __swift_project_boxed_opaque_existential_1((v0 + 120), v2);
    if (v1)
    {
      v6 = *(v0 + 208);
      v5 = *(v0 + 216);
      v7 = *(v0 + 200);
      v8 = v4;
      sub_226D6D46C();
      sub_226C99D50(v8, v5, v2, v3);
      (*(v6 + 8))(v5, v7);
    }

    else
    {
      sub_226C99C2C(v4, v2, v3);
    }

    v18 = swift_task_alloc();
    *(v0 + 272) = v18;
    *v18 = v0;
    v18[1] = sub_226CB551C;
    v19 = *(v0 + 192);
    v20 = *(v0 + 160);

    return sub_226CB3CF8(v20, v0 + 72);
  }

  else
  {
    v9 = *(v0 + 216);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    v10 = *(v0 + 104);
    v11 = *(v0 + 112);
    v12 = *(v0 + 88);
    v13 = *(v0 + 96);

    v14 = *(v0 + 8);
    v15.n128_u64[0] = v10;
    v16.n128_u64[0] = v11;

    return v14(v13, v15, v16);
  }
}

uint64_t sub_226CB551C()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226CB5618, 0, 0);
}

uint64_t sub_226CB5618()
{
  sub_226CBDBE8(*(v0 + 264), *(v0 + 65));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));
  v1 = *(MEMORY[0x277D856B0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  *v2 = v0;
  v2[1] = sub_226CB5250;
  v3 = *(v0 + 240);
  v4 = *(v0 + 224);

  return MEMORY[0x2822002E8](v0 + 16, 0, 0, v4);
}

uint64_t sub_226CB56D4()
{
  v1 = v0;
  v2 = sub_226D6E07C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = sub_226D6D6DC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  if (v0[34])
  {
    v9 = v0[34];
  }

  else
  {
    sub_226AE532C((v0 + 19), v37);
    v11 = v0[17];
    v10 = v0[18];
    __swift_project_boxed_opaque_existential_1(v1 + 14, v1[17]);
    v12 = *(*(v10 + 8) + 8);
    v13 = sub_226D6BAAC();
    v35 = sub_226D6BFCC();
    v36 = MEMORY[0x277CC81C8];
    __swift_allocate_boxed_opaque_existential_1(&v34);
    sub_226D6BFBC();
    v32 = sub_226D67F7C();
    v33 = MEMORY[0x277CC70E0];
    __swift_allocate_boxed_opaque_existential_1(&v31);
    sub_226D67F6C();
    v30[3] = sub_226D6B5EC();
    v30[4] = MEMORY[0x277CC7F70];
    __swift_allocate_boxed_opaque_existential_1(v30);
    sub_226D6B58C();
    type metadata accessor for BankConnectWebServiceTaskSource();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &type metadata for WalletInfo;
    v14[4] = &protocol witness table for WalletInfo;
    v14[20] = sub_226B906C8;
    v14[21] = 0;
    sub_226AE532C(v30, v29);
    sub_226D6D66C();
    v15 = sub_226D6B11C();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = sub_226D6B10C();
    v19 = MEMORY[0x277CC7E08];
    v14[8] = v15;
    v14[9] = v19;
    v14[5] = v18;
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    sub_226AC484C(&v34, (v14 + 10));
    sub_226AC484C(&v31, (v14 + 15));
    v28 = *(v1 + 12);
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v2, qword_28105F710);
    (*(v3 + 16))(v6, v20, v2);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BD8, &qword_226D7AD98);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    v9 = swift_allocObject();
    swift_defaultActor_initialize();
    v24 = v9 + *(*v9 + 152);
    *v24 = sub_226B239BC(MEMORY[0x277D84F90]);
    *(v24 + 8) = xmmword_226D77480;
    *(v9 + *(*v9 + 160)) = 0;
    *(v9 + *(*v9 + 168)) = 0;
    *(v9 + *(*v9 + 176)) = 0;
    sub_226AE532C(v37, v9 + 112);
    *(v9 + 152) = v14;
    v35 = type metadata accessor for BankConnectWebServiceCoordinator();
    v36 = &off_28183DDB8;
    *&v34 = v1;

    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    sub_226AC484C(&v34, v9 + 160);
    *(v9 + 200) = v28;
    (*(v3 + 32))(v9 + *(*v9 + 136), v6, v2);
    v25 = v9 + *(*v9 + 144);
    *v25 = 2;
    *(v25 + 8) = 0xD00000000000001CLL;
    *(v25 + 16) = 0x8000000226D86D00;
    *(v25 + 24) = 0xD00000000000002CLL;
    *(v25 + 32) = 0x8000000226D86D20;
    *(v25 + 40) = 1;
    v26 = v1[34];
    v1[34] = v9;
  }

  return v9;
}

uint64_t sub_226CB5B5C()
{
  if (v0[33])
  {
    v1 = v0[33];

    sub_226D6E80C();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 26);
  v2 = v0[33];

  v3 = v0[34];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_226CB5C18()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CB5CB4, v0, 0);
}

uint64_t sub_226CB5CB4()
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_28105F710);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Starting BankConnect web service coordinator", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = sub_226CB56D4();
  *(v0 + 32) = v6;

  return MEMORY[0x2822009F8](sub_226CB5DDC, v6, 0);
}

uint64_t sub_226CB5DDC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_226CADBA4();
  v4 = sub_226D6E79C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_226AC4194(qword_281061840, &qword_27D7A8BD8, &qword_226D7AD98);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;

  sub_226B60364(0, 0, v2, &unk_226D7ADD8, v6);

  return MEMORY[0x2822009F8](sub_226CB5F20, v3, 0);
}

uint64_t sub_226CB5F20()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_226CB5F8C();
  sub_226CB6518();

  v3 = v0[1];

  return v3();
}

void sub_226CB5F8C()
{
  v1 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_226AC4530(0xD000000000000025, 0x8000000226D7E820, v9);
    _os_log_impl(&dword_226AB4000, v3, v4, "Registering for reboot activity with identifier %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v7 = *MEMORY[0x277D86238];
  v9[4] = sub_226CBE0B4;
  v9[5] = v1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_226B27F7C;
  v9[3] = &block_descriptor_107;
  v8 = _Block_copy(v9);

  xpc_activity_register("com.apple.financed.bankconnect.reboot", v7, v8);
  _Block_release(v8);
}

xpc_activity_state_t sub_226CB6170(_xpc_activity_s *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  result = xpc_activity_get_state(a1);
  if (result == 2)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v9 = sub_226D6E07C();
    __swift_project_value_buffer(v9, qword_28105F710);
    v10 = sub_226D6E05C();
    v11 = sub_226D6E9EC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_226AB4000, v10, v11, "Running reboot activity", v12, 2u);
      MEMORY[0x22AA8BEE0](v12, -1, -1);
    }

    v13 = sub_226D6E79C();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a2;

    sub_226B60364(0, 0, v7, &unk_226D7ADC8, v14);
  }

  return result;
}

uint64_t sub_226CB636C()
{
  v1 = *(v0 + 16);
  v2 = sub_226CB56D4();
  *(v0 + 24) = v2;

  return MEMORY[0x2822009F8](sub_226CB63D8, v2, 0);
}

uint64_t sub_226CB63D8()
{
  v1 = v0[3];
  if (*(v1 + *(*v1 + 144) + 40) == 1 && (v2 = v1[25], ((*(v1[26] + 16))() & 1) != 0))
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_226CBEEE4;
    v4 = v0[3];

    return sub_226CAE4F0();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = sub_226CBEEE8;
    v7 = v0[3];

    return sub_226CB04E0();
  }
}

uint64_t sub_226CB6518()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_28105F710);
  v7 = sub_226D6E05C();
  v8 = sub_226D6E9EC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_226AB4000, v7, v8, "Starting to observe persistent store remote change notifications", v9, 2u);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  if (*(v1 + 264))
  {
    v10 = *(v1 + 264);

    sub_226D6E80C();
  }

  v11 = sub_226D6E79C();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  v14 = sub_226B60364(0, 0, v5, &unk_226D7AD08, v13);
  v15 = *(v1 + 264);
  *(v1 + 264) = v14;
}

uint64_t sub_226CB673C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v6 = sub_226D6B70C();
  v4[26] = v6;
  v7 = *(v6 - 8);
  v4[27] = v7;
  v8 = *(v7 + 64) + 15;
  v4[28] = swift_task_alloc();
  v9 = sub_226D6CD9C();
  v4[29] = v9;
  v10 = *(v9 - 8);
  v4[30] = v10;
  v11 = *(v10 + 64) + 15;
  v4[31] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67B8, &unk_226D71D80) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v13 = sub_226D6EAEC();
  v4[33] = v13;
  v14 = *(v13 - 8);
  v4[34] = v14;
  v15 = *(v14 + 64) + 15;
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CB6930, 0, 0);
}

uint64_t sub_226CB6930()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 184);
  *(v0 + 288) = [objc_opt_self() defaultCenter];
  v3 = *MEMORY[0x277CBE260];
  *(v0 + 296) = sub_226D6EAFC();

  sub_226D6EADC();
  swift_beginAccess();
  *(v0 + 304) = *MEMORY[0x277CBE300];
  *(v0 + 328) = *MEMORY[0x277CC7FF0];
  v4 = sub_226CBDA0C(&qword_28105F440, MEMORY[0x277CC9D68]);
  v5 = *(MEMORY[0x277D856D0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 312) = v6;
  *v6 = v0;
  v6[1] = sub_226CB6A9C;
  v7 = *(v0 + 280);
  v8 = *(v0 + 256);
  v9 = *(v0 + 264);

  return MEMORY[0x282200308](v8, v9, v4);
}

uint64_t sub_226CB6A9C()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_226C0EB50;
  }

  else
  {
    v3 = sub_226CB6BB0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226CB6BCC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 288);
    v5 = *(v0 + 296);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

LABEL_18:
    v41 = *(v0 + 280);
    v42 = *(v0 + 248);
    v43 = *(v0 + 256);
    v44 = *(v0 + 224);
    v46 = *(v0 + 192);
    v45 = *(v0 + 200);

    v47 = *(v0 + 8);

    return v47();
  }

  v6 = *(v0 + 184);
  (*(v3 + 32))(*(v0 + 248), v1, v2);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v34 = *(v0 + 296);
    v36 = *(v0 + 272);
    v35 = *(v0 + 280);
    v37 = *(v0 + 264);
    v39 = *(v0 + 240);
    v38 = *(v0 + 248);
    v40 = *(v0 + 232);

    (*(v39 + 8))(v38, v40);
    (*(v36 + 8))(v35, v37);
    goto LABEL_18;
  }

  v8 = Strong;
  v9 = *(v0 + 248);
  v10 = sub_226D6CD8C();
  if (!v10)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_24;
  }

  v11 = v10;
  v12 = *(v0 + 304);
  *(v0 + 144) = sub_226D6E39C();
  *(v0 + 152) = v13;
  sub_226D6EE8C();
  if (!*(v11 + 16) || (v14 = sub_226C2FE4C(v0 + 16), (v15 & 1) == 0))
  {

    sub_226AE5030(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_22;
  }

  sub_226AC4708(*(v11 + 56) + 32 * v14, v0 + 56);
  sub_226AE5030(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_22:
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

LABEL_24:
    sub_226AC47B0(v0 + 56, &unk_27D7A8BB0, &unk_226D74340);
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
LABEL_30:

    goto LABEL_25;
  }

  v16 = *(v0 + 328);
  v17 = *(v0 + 216);
  v18 = *(v0 + 224);
  v19 = *(v0 + 208);
  v20 = *(v0 + 168);
  v78 = *(v0 + 160);
  v21 = v8[18];
  __swift_project_boxed_opaque_existential_1(v8 + 14, v8[17]);
  v22 = *(*(v21 + 8) + 8);
  sub_226D6BAAC();
  v23 = sub_226D6769C();

  v24 = [v23 persistentStoreCoordinator];

  v25 = [v24 persistentStores];
  sub_226AE59B4(0, &unk_28105F480, 0x277CBE4D0);
  sub_226D6E5EC();

  (*(v17 + 104))(v18, v16, v19);
  v26 = sub_226D6E5AC();

  (*(v17 + 8))(v18, v19);
  if (!v26)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

    goto LABEL_30;
  }

  v27 = [v26 identifier];
  if (v27)
  {
    v28 = v27;
    v29 = sub_226D6E39C();
    v31 = v30;

    if (v78 == v29 && v20 == v31)
    {

LABEL_34:
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v58 = sub_226D6E07C();
      __swift_project_value_buffer(v58, qword_28105F710);
      v59 = sub_226D6E05C();
      v60 = sub_226D6E9EC();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_226AB4000, v59, v60, "Received remote change notification for local persistent store", v61, 2u);
        MEMORY[0x22AA8BEE0](v61, -1, -1);
      }

      v62 = *(v0 + 192);
      v63 = *(v0 + 200);

      v64 = sub_226D6E79C();
      v65 = *(v64 - 8);
      (*(v65 + 56))(v63, 1, 1, v64);
      v66 = swift_allocObject();
      swift_weakInit();
      v67 = swift_allocObject();
      v67[2] = 0;
      v67[3] = 0;
      v67[4] = v66;
      sub_226B6F240(v63, v62);
      LODWORD(v63) = (*(v65 + 48))(v62, 1, v64);

      v68 = *(v0 + 192);
      if (v63 == 1)
      {
        sub_226AC47B0(*(v0 + 192), &unk_27D7A8BA0, &qword_226D734E0);
      }

      else
      {
        sub_226D6E78C();
        (*(v65 + 8))(v68, v64);
      }

      v70 = v67[2];
      v69 = v67[3];
      swift_unknownObjectRetain();

      if (v70)
      {
        swift_getObjectType();
        v71 = sub_226D6E6CC();
        v73 = v72;
        swift_unknownObjectRelease();
      }

      else
      {
        v71 = 0;
        v73 = 0;
      }

      sub_226AC47B0(*(v0 + 200), &unk_27D7A8BA0, &qword_226D734E0);
      v74 = swift_allocObject();
      *(v74 + 16) = &unk_226D7AD20;
      *(v74 + 24) = v67;
      if (v73 | v71)
      {
        *(v0 + 88) = 0;
        *(v0 + 96) = 0;
        *(v0 + 104) = v71;
        *(v0 + 112) = v73;
      }

      v76 = *(v0 + 240);
      v75 = *(v0 + 248);
      v77 = *(v0 + 232);
      swift_task_create();

      (*(v76 + 8))(v75, v77);
      goto LABEL_25;
    }

    v33 = sub_226D6F21C();

    if (v33)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v56 = *(v0 + 240);
  v55 = *(v0 + 248);
  v57 = *(v0 + 232);

  (*(v56 + 8))(v55, v57);
LABEL_25:
  v49 = sub_226CBDA0C(&qword_28105F440, MEMORY[0x277CC9D68]);
  v50 = *(MEMORY[0x277D856D0] + 4);
  v51 = swift_task_alloc();
  *(v0 + 312) = v51;
  *v51 = v0;
  v51[1] = sub_226CB6A9C;
  v52 = *(v0 + 280);
  v53 = *(v0 + 256);
  v54 = *(v0 + 264);

  return MEMORY[0x282200308](v53, v54, v49);
}

uint64_t sub_226CB745C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_226CB7514, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_226CB7514()
{
  v1 = *(v0 + 48);
  v2 = sub_226CB56D4();
  *(v0 + 56) = v2;

  return MEMORY[0x2822009F8](sub_226CB7580, v2, 0);
}

uint64_t sub_226CB7580()
{
  v1 = v0[7];
  if (*(v1 + *(*v1 + 144) + 40) == 1 && (v2 = v1[25], ((*(v1[26] + 16))() & 1) != 0))
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_226C0EE60;
    v4 = v0[7];

    return sub_226CAE4F0();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_226C0EFD8;
    v7 = v0[7];

    return sub_226CB04E0();
  }
}

void sub_226CB76C0(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_226D6D61C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6D6DC();
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_226D6D4AC();
  v12 = *(v27 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v27);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  v20 = *(v1 + 136);
  v19 = *(v1 + 144);
  __swift_project_boxed_opaque_existential_1((v2 + 112), v20);
  v21 = *(*(v19 + 8) + 8);
  sub_226D6BAAC();
  v29 = sub_226D676AC();

  sub_226CBC8AC(v29);
  sub_226CBCBD4(v28, v29);
  sub_226CB84CC();
  sub_226CBD1D8();
  if (sub_226CB7B4C())
  {
    sub_226D6D46C();
    (*(v4 + 104))(v7, *MEMORY[0x277CC9810], v3);
    sub_226D6D62C();
    (*(v4 + 8))(v7, v3);
    sub_226D6D23C();
    (*(v25 + 8))(v11, v26);
    v22 = *(v12 + 8);
    v23 = v27;
    v22(v16, v27);
    sub_226CB7C98(v18);
    v22(v18, v23);
  }

  else
  {
    v24 = v29;
  }
}

uint64_t sub_226CB7B4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9[-v4];
  v9[47] = 1;
  v9[46] = 0;
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  sub_226AE532C(v0 + 208, v9);
  sub_226D6700C();
  sub_226D66FEC();
  (*(v2 + 8))(v5, v1);
  return v9[0];
}

uint64_t sub_226CB7C98(uint64_t a1)
{
  v4 = sub_226D6D4AC();
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - v9;
  v11 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v1[17]);
  v12 = *(*(v11 + 8) + 8);
  v13 = sub_226D6BAAC();
  v49 = &type metadata for FinanceKitCloudSyncDateProvider;
  v50 = &off_283A70C00;
  type metadata accessor for PersistentHistoryPruner();
  inited = swift_initStackObject();
  __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
  inited[6] = &type metadata for FinanceKitCloudSyncDateProvider;
  inited[7] = &off_283A70C00;
  inited[2] = v13;
  __swift_destroy_boxed_opaque_existential_0Tm(v48);
  sub_226D676CC();
  sub_226D676BC();
  sub_226CC6678();
  v16 = v15;

  if (v2)
  {
    swift_setDeallocating();
    v17 = inited[2];

    return __swift_destroy_boxed_opaque_existential_0Tm(inited + 3);
  }

  v19 = v47;
  v46 = v16;
  if (v16)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v20 = sub_226D6E07C();
    __swift_project_value_buffer(v20, qword_28105F710);
    v21 = v4;
    (*(v19 + 16))(v8, a1, v4);
    v22 = sub_226D6E05C();
    v23 = sub_226D6E9AC();
    if (!os_log_type_enabled(v22, v23))
    {

      (*(v19 + 8))(v8, v21);
      return v46 & 1;
    }

    v24 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v51 = v45;
    *v24 = 136315394;
    sub_226CBDA0C(&qword_281062B80, MEMORY[0x277CC9578]);
    v25 = sub_226D6F1CC();
    v26 = v19;
    v28 = v27;
    (*(v26 + 8))(v8, v21);
    v29 = sub_226AC4530(v25, v28, &v51);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_226AC4530(0xD000000000000029, 0x8000000226D86BE0, &v51);
    _os_log_impl(&dword_226AB4000, v22, v23, "History pruning at date %s skipped, reason: %s", v24, 0x16u);
    v30 = v45;
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v30, -1, -1);
    v31 = v24;
  }

  else
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v32 = sub_226D6E07C();
    __swift_project_value_buffer(v32, qword_28105F710);
    v33 = v10;
    v34 = v10;
    v35 = v4;
    (*(v19 + 16))(v34, a1, v4);
    v22 = sub_226D6E05C();
    v36 = v19;
    v37 = sub_226D6E9AC();
    if (!os_log_type_enabled(v22, v37))
    {

      (*(v36 + 8))(v33, v35);
      return v46 & 1;
    }

    v38 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v51 = v45;
    *v38 = 136315138;
    sub_226CBDA0C(&qword_281062B80, MEMORY[0x277CC9578]);
    v39 = sub_226D6F1CC();
    v40 = v35;
    v42 = v41;
    (*(v36 + 8))(v33, v40);
    v43 = sub_226AC4530(v39, v42, &v51);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_226AB4000, v22, v37, "History pruning before date %s successful", v38, 0xCu);
    v44 = v45;
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    MEMORY[0x22AA8BEE0](v44, -1, -1);
    v31 = v38;
  }

  MEMORY[0x22AA8BEE0](v31, -1, -1);

  return v46 & 1;
}

void sub_226CB8218(void *a1, void (*a2)(void), const char *a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  a2(0);
  v5 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v6 = sub_226D6E91C();
  [v5 setPredicate:v6];

  v7 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v21[0] = 0;
  v8 = [a1 executeRequest:v7 error:v21];
  if (v8)
  {
    v9 = v8;
    v10 = v21[0];

LABEL_8:
    v5 = v9;
    goto LABEL_9;
  }

  v11 = v21[0];
  v12 = sub_226D6D04C();

  swift_willThrow();
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v13 = sub_226D6E07C();
  __swift_project_value_buffer(v13, qword_28105F710);
  v14 = v12;
  v9 = sub_226D6E05C();
  v15 = sub_226D6E9CC();

  if (!os_log_type_enabled(v9, v15))
  {

    goto LABEL_8;
  }

  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  *v16 = 138412290;
  v18 = v12;
  v19 = _swift_stdlib_bridgeErrorToNSError();
  *(v16 + 4) = v19;
  *v17 = v19;
  _os_log_impl(&dword_226AB4000, v9, v15, a3, v16, 0xCu);
  sub_226AC47B0(v17, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v17, -1, -1);
  MEMORY[0x22AA8BEE0](v16, -1, -1);

LABEL_9:
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226CB84CC()
{
  v1 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_226AB4000, v3, v4, "Pruning invalid transaction objects.", v5, 2u);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  MEMORY[0x28223BE20](v6);
  sub_226D6EB7C();
  v7 = v16;
  v11 = v15;
  v12 = v14;
  v8 = __swift_project_boxed_opaque_existential_1((v1 + 112), *(v1 + 136));
  sub_226AE532C((v8 + 41), &v14);
  __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
  v13[3] = &type metadata for InvalidObjectsPrunedEvent;
  v13[4] = sub_226CBB898();
  v9 = swift_allocObject();
  v13[0] = v9;
  *(v9 + 16) = v12;
  *(v9 + 32) = v11;
  *(v9 + 48) = v7;
  sub_226D69AFC();
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  return __swift_destroy_boxed_opaque_existential_0Tm(&v14);
}

void sub_226CB87A0(void (*a1)(char *, uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v98 = a1;
  v87 = a2;
  v103[1] = *MEMORY[0x277D85DE8];
  v2 = sub_226D6823C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v94 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v82 - v7;
  v101 = sub_226D6AC0C();
  v100 = sub_226D6AAFC();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v9 = swift_allocObject();
  v96 = xmmword_226D71F40;
  *(v9 + 16) = xmmword_226D71F40;
  v102 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v92 = "nator";
  *(v9 + 32) = sub_226D6E91C();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v10 = swift_allocObject();
  v90 = xmmword_226D70840;
  *(v10 + 16) = xmmword_226D70840;
  v11 = *MEMORY[0x277CC71E0];
  v89 = v3[13];
  v89(v8, v11, v2);
  v12 = sub_226D6822C();
  v13 = v3[1];
  v14 = v8;
  v95 = v2;
  v15 = v98;
  v88 = v3 + 1;
  v13(v14, v2);
  v16 = MEMORY[0x277D849A0];
  *(v10 + 56) = MEMORY[0x277D84958];
  *(v10 + 64) = v16;
  *(v10 + 32) = v12;
  v93 = "accountObject == nil";
  *(v9 + 40) = sub_226D6E91C();
  v17 = sub_226D6E5CC();
  v18 = v100;

  v19 = objc_opt_self();
  v20 = [v19 andPredicateWithSubpredicates_];

  [v18 setPredicate_];
  v21 = v99;
  v22 = sub_226D6EBBC();
  if (v21)
  {
    goto LABEL_26;
  }

  v23 = v22;
  v84 = v3 + 13;
  v99 = v19;
  v24 = v15;
  v85 = v13;
  v86 = 0;
  if (v22 >> 62)
  {
    v83 = sub_226D6EDFC();
    v25 = sub_226D6EDFC();
    v26 = v97;
    if (!v25)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v83 = v25;
    v26 = v97;
    if (!v25)
    {
      goto LABEL_11;
    }
  }

  if (v25 < 1)
  {
    __break(1u);
    goto LABEL_22;
  }

  for (i = 0; i != v25; ++i)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x22AA8AFD0](i, v23);
    }

    else
    {
      v28 = *(v23 + 8 * i + 32);
    }

    v29 = v28;
    [v24 deleteObject_];
  }

LABEL_11:

  v18 = sub_226D6AAFC();
  v31 = v94;
  v30 = v95;
  v89(v94, *MEMORY[0x277CC71E8], v95);
  v32 = swift_allocObject();
  *(v32 + 16) = v96;
  v26 = v102;
  *(v32 + 32) = sub_226D6E91C();
  v33 = swift_allocObject();
  *(v33 + 16) = v90;
  v34 = sub_226D6822C();
  *(v33 + 56) = MEMORY[0x277D84958];
  *(v33 + 64) = MEMORY[0x277D849A0];
  *(v33 + 32) = v34;
  *(v32 + 40) = sub_226D6E91C();
  v35 = sub_226D6E5CC();

  v36 = [v99 andPredicateWithSubpredicates_];

  [v18 setPredicate_];
  v37 = v86;
  v38 = sub_226D6EBBC();
  if (v37)
  {
    v85(v31, v30);
    v39 = v100;
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v23 = v38;
  v15 = v31;
  v13 = 0;
  v98 = v18;
  if (v38 >> 62)
  {
LABEL_22:
    v101 = sub_226D6EDFC();
    v40 = sub_226D6EDFC();
    if (!v40)
    {
      goto LABEL_23;
    }

    goto LABEL_15;
  }

  v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v101 = v40;
  if (!v40)
  {
    goto LABEL_23;
  }

LABEL_15:
  if (v40 < 1)
  {
    __break(1u);
    goto LABEL_37;
  }

  for (j = 0; j != v40; ++j)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x22AA8AFD0](j, v23);
    }

    else
    {
      v42 = *(v23 + 8 * j + 32);
    }

    v43 = v42;
    [v24 deleteObject_];
  }

LABEL_23:

  sub_226D6845C();
  v18 = sub_226D6844C();
  v44 = swift_allocObject();
  *(v44 + 16) = v96;
  *(v44 + 32) = sub_226D6E91C();
  *(v44 + 40) = sub_226D6E91C();
  v45 = sub_226D6E5CC();

  v26 = &selRef_setSortDescriptors_;
  v46 = [v99 orPredicateWithSubpredicates_];

  [v18 setPredicate_];
  v47 = sub_226D6EBBC();
  if (v13)
  {
    v85(v15, v95);

    v39 = v98;
    goto LABEL_25;
  }

  v23 = v47;
  v86 = 0;
  if (v47 >> 62)
  {
LABEL_37:
    v92 = sub_226D6EDFC();
    v49 = sub_226D6EDFC();
    v93 = v18;
    if (!v49)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

  v49 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v92 = v49;
  v93 = v18;
  if (!v49)
  {
    goto LABEL_38;
  }

LABEL_30:
  if (v49 < 1)
  {
    __break(1u);
    goto LABEL_49;
  }

  for (k = 0; k != v49; ++k)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v51 = MEMORY[0x22AA8AFD0](k, v23);
    }

    else
    {
      v51 = *(v23 + 8 * k + 32);
    }

    v52 = v51;
    [v24 deleteObject_];
  }

LABEL_38:

  sub_226D6A74C();
  v53 = sub_226D6A73C();
  v54 = swift_allocObject();
  *(v54 + 16) = v96;
  v18 = 0xD000000000000011;
  *(v54 + 32) = sub_226D6E91C();
  *(v54 + 40) = sub_226D6E91C();
  v55 = sub_226D6E5CC();

  v56 = [v99 v26[2]];

  [v53 setPredicate_];
  v57 = v86;
  v58 = sub_226D6EBBC();
  if (v57)
  {
    v85(v15, v95);

    goto LABEL_27;
  }

  v23 = v58;
  v49 = 0;
  v91 = v53;
  if (v58 >> 62)
  {
LABEL_49:
    v99 = sub_226D6EDFC();
    v59 = sub_226D6EDFC();
    if (!v59)
    {
      goto LABEL_50;
    }

    goto LABEL_42;
  }

  v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v99 = v59;
  if (!v59)
  {
    goto LABEL_50;
  }

LABEL_42:
  if (v59 < 1)
  {
    __break(1u);
    goto LABEL_61;
  }

  v60 = 0;
  v18 = (v23 & 0xC000000000000001);
  do
  {
    if (v18)
    {
      v61 = MEMORY[0x22AA8AFD0](v60, v23);
    }

    else
    {
      v61 = *(v23 + 8 * v60 + 32);
    }

    v62 = v61;
    ++v60;
    [v24 deleteObject_];
  }

  while (v59 != v60);
LABEL_50:

  sub_226D6AC5C();
  v59 = sub_226D6AC4C();
  v63 = sub_226D6E91C();
  [v59 setPredicate_];

  v64 = sub_226D6EBBC();
  if (v49)
  {
    v85(v15, v95);

    goto LABEL_27;
  }

  v23 = v64;
  if (!(v64 >> 62))
  {
    v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v102 = v65;
    if (!v65)
    {
      goto LABEL_62;
    }

    goto LABEL_54;
  }

LABEL_61:
  v102 = sub_226D6EDFC();
  v65 = sub_226D6EDFC();
  if (!v65)
  {
    goto LABEL_62;
  }

LABEL_54:
  if (v65 >= 1)
  {
    for (m = 0; m != v65; ++m)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v67 = MEMORY[0x22AA8AFD0](m, v23);
      }

      else
      {
        v67 = *(v23 + 8 * m + 32);
      }

      v68 = v67;
      [v24 deleteObject_];
    }

LABEL_62:

    v103[0] = 0;
    if (![v24 save_])
    {
      v81 = v103[0];
      sub_226D6D04C();

      swift_willThrow();
      v85(v94, v95);
      goto LABEL_27;
    }

    v69 = qword_28105F708;
    v70 = v103[0];
    v18 = v94;
    v24 = v85;
    if (v69 == -1)
    {
      goto LABEL_64;
    }

    goto LABEL_69;
  }

  __break(1u);
LABEL_69:
  swift_once();
LABEL_64:
  v71 = sub_226D6E07C();
  __swift_project_value_buffer(v71, qword_28105F710);
  v72 = sub_226D6E05C();
  v73 = sub_226D6E9EC();
  v74 = os_log_type_enabled(v72, v73);
  v75 = v87;
  v76 = v83;
  if (v74)
  {
    v77 = swift_slowAlloc();
    *v77 = 134218752;
    *(v77 + 4) = v76;
    *(v77 + 12) = 2048;
    *(v77 + 14) = v92;
    *(v77 + 22) = 2048;
    *(v77 + 24) = v99;
    *(v77 + 32) = 2048;
    *(v77 + 34) = v102;
    _os_log_impl(&dword_226AB4000, v72, v73, "Successfully pruned: %ld invalid PassKit transaction(s) and %ld dangling public transaction(s). and %ld dangling action(s). and %ld dangling insight(s).", v77, 0x2Au);
    v78 = v77;
    v24 = v85;
    MEMORY[0x22AA8BEE0](v78, -1, -1);
  }

  v24(v18, v95);
  v79 = v101;
  *v75 = v76;
  v75[1] = v79;
  v80 = v99;
  v75[2] = v92;
  v75[3] = v80;
  v75[4] = v102;
LABEL_27:
  v48 = *MEMORY[0x277D85DE8];
}

void sub_226CB950C(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_226D6E36C();
  v5 = [v3 initWithEntityName_];

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226D70840;
  v7 = sub_226D6D3EC();
  *(v6 + 56) = sub_226AE59B4(0, &qword_28105F410, 0x277CBEAA8);
  *(v6 + 64) = sub_226C19454();
  *(v6 + 32) = v7;
  v8 = sub_226D6E91C();
  [v5 setPredicate:v8];

  v9 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v23[0] = 0;
  v10 = [a2 executeRequest:v9 error:v23];
  if (v10)
  {
    v11 = v10;
    v12 = v23[0];

LABEL_8:
    v5 = v11;
    goto LABEL_9;
  }

  v13 = v23[0];
  v14 = sub_226D6D04C();

  swift_willThrow();
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v15 = sub_226D6E07C();
  __swift_project_value_buffer(v15, qword_28105F710);
  v16 = v14;
  v11 = sub_226D6E05C();
  v17 = sub_226D6E9CC();

  if (!os_log_type_enabled(v11, v17))
  {

    goto LABEL_8;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  *v18 = 138412290;
  v20 = v14;
  v21 = _swift_stdlib_bridgeErrorToNSError();
  *(v18 + 4) = v21;
  *v19 = v21;
  _os_log_impl(&dword_226AB4000, v11, v17, "Failed to prune debug entities with error: %@", v18, 0xCu);
  sub_226AC47B0(v19, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v19, -1, -1);
  MEMORY[0x22AA8BEE0](v18, -1, -1);

LABEL_9:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_226CB9850(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_226D6E36C();
  v5 = [v3 initWithEntityName_];

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226D70840;
  v7 = sub_226D6D3EC();
  *(v6 + 56) = sub_226AE59B4(0, &qword_28105F410, 0x277CBEAA8);
  *(v6 + 64) = sub_226C19454();
  *(v6 + 32) = v7;
  v8 = sub_226D6E91C();
  [v5 setPredicate:v8];

  v9 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v23[0] = 0;
  v10 = [a2 executeRequest:v9 error:v23];
  if (v10)
  {
    v11 = v10;
    v12 = v23[0];

LABEL_8:
    v5 = v11;
    goto LABEL_9;
  }

  v13 = v23[0];
  v14 = sub_226D6D04C();

  swift_willThrow();
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v15 = sub_226D6E07C();
  __swift_project_value_buffer(v15, qword_28105F710);
  v16 = v14;
  v11 = sub_226D6E05C();
  v17 = sub_226D6E9CC();

  if (!os_log_type_enabled(v11, v17))
  {

    goto LABEL_8;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  *v18 = 138412290;
  v20 = v14;
  v21 = _swift_stdlib_bridgeErrorToNSError();
  *(v18 + 4) = v21;
  *v19 = v21;
  _os_log_impl(&dword_226AB4000, v11, v17, "Failed to prune debug map lookup requests with error: %@", v18, 0xCu);
  sub_226AC47B0(v19, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v19, -1, -1);
  MEMORY[0x22AA8BEE0](v18, -1, -1);

LABEL_9:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_226CB9B8C(void *a1)
{
  v47[1] = *MEMORY[0x277D85DE8];
  sub_226D6842C();
  v3 = sub_226D6840C();
  v4 = MEMORY[0x22AA84480]();
  [v3 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D71F20;
  v6 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v7 = sub_226D6E36C();
  v8 = [v6 initWithKey:v7 ascending:0];

  *(v5 + 32) = v8;
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v9 = sub_226D6E5CC();

  [v3 setSortDescriptors_];

  v10 = a1;
  v11 = sub_226D6EBBC();
  if (v1)
  {

    goto LABEL_40;
  }

  v41 = v3;
  v12 = sub_226CBD56C(v11);

  v13 = 0;
  v14 = v12 + 64;
  v15 = 1 << *(v12 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v12 + 64);
  v18 = (v15 + 63) >> 6;
  v45 = v10;
  v43 = v12;
  v39 = v18;
  v40 = v12 + 64;
LABEL_6:
  if (v17)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    if (v19 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v19);
    ++v13;
    if (v17)
    {
      v13 = v19;
LABEL_11:
      v20 = *(*(v12 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v17)))));
      v47[0] = v20;
      if (v20 >> 62)
      {
        v21 = sub_226D6EDFC();
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 &= v17 - 1;
      if (v21 <= 1)
      {
        goto LABEL_6;
      }

      sub_226CAD27C();
      v23 = v22;
      v24 = v47[0];
      if (!(v47[0] >> 62))
      {
        v25 = *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        v42 = v17;
        if (v25)
        {
          goto LABEL_16;
        }

LABEL_35:

        v17 = v42;
        v12 = v43;
        v18 = v39;
        v14 = v40;
        goto LABEL_6;
      }

      v25 = sub_226D6EDFC();
      v42 = v17;
      if (!v25)
      {
        goto LABEL_35;
      }

LABEL_16:
      v26 = 0;
      v44 = v25;
      while (2)
      {
        if ((v47[0] & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x22AA8AFD0](v26, v24);
        }

        else
        {
          if (v26 >= *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v27 = *(v47[0] + v26 + 4);
        }

        v28 = v27;
        if (__OFADD__(v26++, 1))
        {
          goto LABEL_42;
        }

        sub_226D6794C();
        v30 = [v28 objectID];
        v31 = sub_226D6792C();

        v46 = v28;
        if (v31 >> 62)
        {
          v32 = sub_226D6EDFC();
          if (v32)
          {
LABEL_24:
            if (v32 < 1)
            {
              goto LABEL_44;
            }

            for (i = 0; i != v32; ++i)
            {
              if ((v31 & 0xC000000000000001) != 0)
              {
                v34 = MEMORY[0x22AA8AFD0](i, v31);
              }

              else
              {
                v34 = *(v31 + 8 * i + 32);
              }

              v35 = v34;
              [v34 setInstitutionObject_];
            }
          }
        }

        else
        {
          v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v32)
          {
            goto LABEL_24;
          }
        }

        v10 = v45;
        [v45 deleteObject_];

        v24 = v47[0];
        if (v26 == v44)
        {
          goto LABEL_35;
        }

        continue;
      }
    }
  }

  v47[0] = 0;
  if ([v10 save_])
  {
    v36 = v47[0];
  }

  else
  {
    v37 = v47[0];
    sub_226D6D04C();

    swift_willThrow();
  }

LABEL_40:
  v38 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226CBA070@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, BOOL *a5@<X8>)
{
  v108 = a4;
  v109 = a3;
  *&v111 = a2;
  v106 = a5;
  v110 = sub_226D67C0C();
  v105 = *(v110 - 8);
  v6 = *(v105 + 64);
  MEMORY[0x28223BE20](v110);
  v8 = v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6D52C();
  v114 = *(v9 - 8);
  v10 = *(v114 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v92 - v14;
  v16 = sub_226D69FCC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v92 - v22;
  v24 = v112;
  result = sub_226CBE5E0(a1);
  if (v24)
  {
    return result;
  }

  v113 = v15;
  v97 = v13;
  v98 = v23;
  v107 = v21;
  v99 = v8;
  v100 = v16;
  v104 = v17;
  v26 = result;
  v27 = sub_226CBE88C(result, a1);
  v95 = v26;
  v112 = v9;
  v28 = MEMORY[0x28223BE20](v27);
  v29 = v111;
  v92[-2] = v111;
  v92[-1] = a1;
  v30 = v28;

  v31 = sub_226B906B0(sub_226B9062C, &v92[-4], v30);
  v94 = v30;
  v93 = 0;
  v92[1] = a1;
  if (v31 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
  {

    if (i > 0)
    {
      v33 = *(v109 + 32);
      __swift_project_boxed_opaque_existential_1(v109, *(v109 + 24));
      v34 = sub_226D6B7EC();
      v109 = *(v34 + 16);
      if (v109)
      {
        v35 = 0;
        v36 = v104;
        v96 = (v104 + 8);
        v102 = (v104 + 32);
        v103 = v104 + 16;
        v37 = MEMORY[0x277D84F90];
        v38 = v100;
        v39 = v98;
        while (v35 < *(v34 + 16))
        {
          v40 = (*(v36 + 80) + 32) & ~*(v36 + 80);
          v41 = v34;
          v42 = *(v36 + 72);
          (*(v36 + 16))(v39, v34 + v40 + v42 * v35, v38);
          v29 = v38;
          if (sub_226D69FBC())
          {
            v101 = *v102;
            v101(v107, v39, v38);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v115 = v37;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_226AE2590(0, *(v37 + 16) + 1, 1);
              v38 = v100;
              v37 = v115;
            }

            v29 = *(v37 + 16);
            v44 = *(v37 + 24);
            if (v29 >= v44 >> 1)
            {
              sub_226AE2590(v44 > 1, v29 + 1, 1);
              v38 = v100;
              v37 = v115;
            }

            *(v37 + 16) = v29 + 1;
            v101((v37 + v40 + v29 * v42), v107, v38);
            v36 = v104;
          }

          else
          {
            (*v96)(v39, v38);
          }

          ++v35;
          v34 = v41;
          if (v109 == v35)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_44;
      }

      v37 = MEMORY[0x277D84F90];
LABEL_17:

      v45 = *(v37 + 16);

      v29 = v111;
      if (!v45)
      {

        *v106 = 0;
        return result;
      }
    }

    v46 = *(v29 + 32);
    __swift_project_boxed_opaque_existential_1(v29, *(v29 + 24));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68C8, &qword_226D74270);
    v47 = sub_226D6B7FC();
    v48 = *(v47 - 8);
    v49 = *(v48 + 72);
    v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v51 = swift_allocObject();
    v111 = xmmword_226D70840;
    *(v51 + 16) = xmmword_226D70840;
    (*(v48 + 104))(v51 + v50, *MEMORY[0x277CC8008], v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8C20, &qword_226D72160);
    v52 = sub_226D6B81C();
    v53 = *(v52 - 8);
    v54 = *(v53 + 72);
    v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v111;
    (*(v53 + 104))(v56 + v55, *MEMORY[0x277CC8028], v52);
    v57 = v93;
    v58 = sub_226D6C13C();

    if (v57)
    {
    }

    v59 = *(v29 + 32);
    __swift_project_boxed_opaque_existential_1(v29, *(v29 + 24));
    v60 = sub_226D6C14C();
    v93 = 0;
    v61 = v60;

    v115 = v58;
    sub_226CEE14C(v61);
    v62 = v115;
    v63 = *(v115 + 16);
    v64 = MEMORY[0x277D84F90];
    if (v63)
    {
      v115 = MEMORY[0x277D84F90];
      sub_226AE20D4(0, v63, 0);
      v65 = v115;
      v66 = v105 + 16;
      *&v111 = *(v105 + 16);
      v67 = &v62[(*(v105 + 80) + 32) & ~*(v105 + 80)];
      v109 = *(v105 + 72);
      v68 = (v105 + 8);
      v107 = v62;
      v108 = v114 + 32;
      v69 = v97;
      v70 = v99;
      do
      {
        v71 = v110;
        v72 = v70;
        v73 = v66;
        (v111)();
        sub_226D67BDC();
        (*v68)(v72, v71);
        v115 = v65;
        v75 = *(v65 + 16);
        v74 = *(v65 + 24);
        if (v75 >= v74 >> 1)
        {
          sub_226AE20D4(v74 > 1, v75 + 1, 1);
          v65 = v115;
        }

        *(v65 + 16) = v75 + 1;
        v76 = v114;
        (*(v114 + 32))(v65 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v75, v69, v112);
        v67 += v109;
        --v63;
        v66 = v73;
        v70 = v99;
      }

      while (v63);

      v64 = MEMORY[0x277D84F90];
    }

    else
    {

      v65 = MEMORY[0x277D84F90];
      v76 = v114;
    }

    v115 = v64;
    v77 = v94;
    if (!(v94 >> 62))
    {
      v29 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v29)
      {
        break;
      }

      goto LABEL_31;
    }

    v89 = sub_226D6EDFC();
    v77 = v94;
    v29 = v89;
    if (!v89)
    {
      break;
    }

LABEL_31:
    v78 = 0;
    v110 = v77 & 0xFFFFFFFFFFFFFF8;
    *&v111 = v77 & 0xC000000000000001;
    v109 = v77 + 32;
    v79 = (v76 + 8);
    while (1)
    {
      if (v111)
      {
        v80 = MEMORY[0x22AA8AFD0](v78);
      }

      else
      {
        if (v78 >= *(v110 + 16))
        {
          goto LABEL_45;
        }

        v80 = *(v109 + 8 * v78);
      }

      v81 = v80;
      if (__OFADD__(v78++, 1))
      {
        break;
      }

      sub_226D69EBC();
      v83 = 0;
      v84 = *(v65 + 16);
      do
      {
        if (v84 == v83)
        {
          (*v79)(v113, v112);

          goto LABEL_33;
        }

        v85 = v83 + 1;
        v86 = v65 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v83;
        sub_226CBDA0C(&qword_27D7A6DA0, MEMORY[0x277CC95F0]);
        v87 = sub_226D6E35C();
        v83 = v85;
      }

      while ((v87 & 1) == 0);
      (*v79)(v113, v112);
      sub_226D6EF6C();
      v88 = *(v115 + 16);
      sub_226D6EF9C();
      sub_226D6EFAC();
      sub_226D6EF7C();
LABEL_33:
      if (v78 == v29)
      {
        goto LABEL_48;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

LABEL_48:

  if (v115 < 0 || (v115 & 0x4000000000000000) != 0)
  {
    v90 = sub_226D6EDFC();
  }

  else
  {
    v90 = *(v115 + 16);
  }

  v91 = v106;

  *v91 = v90 != 0;
  return result;
}

uint64_t sub_226CBAB54()
{
  v1 = *(v0 + 16);
  v2 = sub_226CB56D4();
  *(v0 + 24) = v2;

  return MEMORY[0x2822009F8](sub_226CBABC0, v2, 0);
}

uint64_t sub_226CBABC0()
{
  v1 = v0[3];
  if (*(v1 + *(*v1 + 144) + 40) == 1 && (v2 = v1[25], ((*(v1[26] + 16))() & 1) != 0))
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_226C0D0E4;
    v4 = v0[3];

    return sub_226CAE4F0();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = sub_226C0D1F4;
    v7 = v0[3];

    return sub_226CB04E0();
  }
}

uint64_t sub_226CBAD00@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(v3 + 144);
  v6 = __swift_project_boxed_opaque_existential_1((v3 + 112), v4);
  a1[3] = v4;
  a1[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(*(v4 - 8) + 16);

  return v8(boxed_opaque_existential_1, v6, v4);
}

unint64_t sub_226CBADAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D750B0;
  strcpy((inited + 32), "passKitCount");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v2 = *v0;
  *(inited + 48) = sub_226D6E8EC();
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x8000000226D86DF0;
  v3 = v0[1];
  *(inited + 72) = sub_226D6E8EC();
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x8000000226D86E10;
  v4 = v0[2];
  *(inited + 96) = sub_226D6E8EC();
  strcpy((inited + 104), "actionsCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  v5 = v0[3];
  *(inited + 120) = sub_226D6E8EC();
  strcpy((inited + 128), "insightsCount");
  *(inited + 142) = -4864;
  v6 = v0[4];
  *(inited + 144) = sub_226D6E8EC();
  v7 = sub_226B224E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77D8, &qword_226D75660);
  swift_arrayDestroy();
  return v7;
}

unint64_t sub_226CBAF34()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_226CBADAC();
}

void sub_226CBAF70(uint64_t a1, uint64_t a2)
{
  v2 = sub_226D6EB1C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = [objc_allocWithZone(MEMORY[0x277CBE410]) init];
  sub_226D6EB0C();
  sub_226D6EBDC();
  v5 = v4;
  v6 = sub_226D6E36C();
  [v5 setName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_226D70840;
  v8 = sub_226D6E36C();
  v9 = objc_opt_self();
  v10 = [v9 expressionForKeyPath_];

  *(v7 + 56) = sub_226AE59B4(0, &unk_27D7A8C60, 0x277CCA9C0);
  *(v7 + 32) = v10;
  v11 = sub_226D6E36C();
  v12 = sub_226D6E5CC();

  v13 = [v9 expressionForFunction:v11 arguments:v12];

  [v5 setExpression_];
  sub_226D6AC0C();
  v14 = [swift_getObjCClassFromMetadata() entityName];
  if (!v14)
  {
    sub_226D6E39C();
    v14 = sub_226D6E36C();
  }

  v15 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_226D70840;
  v17 = MEMORY[0x277D837D0];
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 32) = 0xD00000000000004ELL;
  *(v16 + 40) = 0x8000000226D86D70;
  v18 = sub_226D6E5CC();

  [v15 setPropertiesToGroupBy_];

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_226D71840;
  *(v19 + 56) = v17;
  *(v19 + 32) = 0xD00000000000004ELL;
  *(v19 + 40) = 0x8000000226D86D70;
  *(v19 + 88) = sub_226AE59B4(0, &qword_27D7A8948, 0x277CBE410);
  *(v19 + 64) = v5;
  v20 = v5;
  v21 = sub_226D6E5CC();

  [v15 setPropertiesToFetch_];

  [v15 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CD0, &qword_226D7AE80);
  v22 = sub_226D6EBBC();
  v31 = sub_226C9F85C(v22);

  if (v31)
  {
    v32 = v31[2];
    if (v32)
    {
      v54 = v20;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 1;
      v38 = 4;
      do
      {
        v39 = v31[v38];
        if (*(v39 + 16))
        {
          v40 = v31[v38];

          v41 = sub_226C2FDD4(0x746E756F63, 0xE500000000000000);
          if (v42)
          {
            sub_226AC4708(*(v39 + 56) + 32 * v41, v56);

            if (swift_dynamicCast())
            {
              v43 = __OFADD__(v36++, 1);
              if (v43)
              {
                __break(1u);
LABEL_39:
                __break(1u);
                swift_once();
                v23 = sub_226D6E07C();
                __swift_project_value_buffer(v23, qword_28105F5E0);
                v24 = v31;
                v25 = sub_226D6E05C();
                v26 = sub_226D6E9CC();

                if (os_log_type_enabled(v25, v26))
                {
                  v27 = swift_slowAlloc();
                  v28 = swift_slowAlloc();
                  *v27 = 138412290;
                  v29 = v31;
                  v30 = _swift_stdlib_bridgeErrorToNSError();
                  *(v27 + 4) = v30;
                  *v28 = v30;
                  _os_log_impl(&dword_226AB4000, v25, v26, "Unable to log transaction group insights with error: %@", v27, 0xCu);
                  sub_226AC47B0(v28, &qword_27D7A5FB0, &qword_226D70870);
                  MEMORY[0x22AA8BEE0](v28, -1, -1);
                  MEMORY[0x22AA8BEE0](v27, -1, -1);
                }

                else
                {
                }

                return;
              }

              v43 = __OFADD__(v35, v55[0]);
              v35 += v55[0];
              if (v43)
              {
                goto LABEL_39;
              }

              if (v55[0] >= v34)
              {
                v44 = v34;
              }

              else
              {
                v44 = v55[0];
              }

              v45 = (v37 & 1) == 0;
              v37 = 0;
              if (v45)
              {
                v34 = v44;
              }

              else
              {
                v34 = v55[0];
              }

              if (v55[0] > v33)
              {
                v33 = v55[0];
              }
            }
          }

          else
          {
          }
        }

        ++v38;
        --v32;
      }

      while (v32);

      if (v36)
      {
        v46 = v35 / v36;
      }

      else
      {
        v46 = 0.0;
      }

      v47 = __swift_project_boxed_opaque_existential_1((a2 + 112), *(a2 + 136));
      sub_226AE532C((v47 + 41), v56);
      __swift_project_boxed_opaque_existential_1(v56, v56[3]);
      if (v37)
      {
        v34 = 0;
      }

      v55[3] = &type metadata for TransactionGroupInsightsEvent;
      v55[4] = sub_226CBED58();
      v48 = swift_allocObject();
      v55[0] = v48;
      *(v48 + 16) = 0xD000000000000020;
      *(v48 + 24) = 0x8000000226D86DC0;
      *(v48 + 32) = v36;
      *(v48 + 40) = v46;
      *(v48 + 48) = v34;
      *(v48 + 56) = v33;
      sub_226D69AFC();

      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
    }

    else
    {

      if (qword_28105F5D8 != -1)
      {
        swift_once();
      }

      v49 = sub_226D6E07C();
      __swift_project_value_buffer(v49, qword_28105F5E0);
      v50 = sub_226D6E05C();
      v51 = sub_226D6E9CC();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_226AB4000, v50, v51, "No transaction groups, unable to log insights.", v52, 2u);
        MEMORY[0x22AA8BEE0](v52, -1, -1);
      }
    }
  }

  else
  {
  }
}