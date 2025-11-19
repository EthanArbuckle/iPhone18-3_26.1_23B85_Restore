uint64_t sub_226B78468()
{
  v0 = sub_226D6D52C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D68D4C();
  v5 = sub_226D6D4EC();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

id sub_226B78554@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v35 = a3;
  v45[1] = *MEMORY[0x277D85DE8];
  v44 = sub_226D6D52C();
  v7 = *(v44 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v44);
  v42 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v15 = *(v7 + 16);
    v14 = v7 + 16;
    v43 = v15;
    v16 = *(v14 + 56);
    v37 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v17 = (a1 + v37);
    v36 = (v14 + 16);
    v41 = (v14 - 8);
    v18 = MEMORY[0x277D84F90];
    v38 = v14;
    v39 = a2;
    v40 = &v35 - v11;
    v15(v12, (a1 + v37), v44);
    while (1)
    {
      sub_226D6980C();
      v24 = sub_226D697BC();
      if (v4)
      {
        break;
      }

      v25 = v24;
      if (v24)
      {
        v43(v42, v12, v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_226BBB95C(0, v18[2] + 1, 1, v18);
        }

        v27 = v18[2];
        v26 = v18[3];
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226BBB95C(v26 > 1, v27 + 1, 1, v18);
          v28 = v16;
          v18 = v29;
        }

        else
        {
          v28 = v16;
        }

        v18[2] = v27 + 1;
        v19 = v18;
        v21 = v44;
        v16 = v28;
        (*v36)(v18 + v37 + v27 * v28, v42, v44);
        v20 = v39;
        [v39 deleteObject_];
      }

      else
      {
        v19 = v18;
        v20 = a2;
        v21 = v44;
      }

      v22 = v40;
      (*v41)(v40, v21);
      v17 += v16;
      --v13;
      v23 = v21;
      a2 = v20;
      v18 = v19;
      v4 = 0;
      v12 = v22;
      if (!v13)
      {
        goto LABEL_15;
      }

      v43(v22, v17, v23);
    }

    (*v41)(v12, v44);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
LABEL_15:
    v45[0] = 0;
    v30 = [a2 save_];
    v31 = v45[0];
    if (v30)
    {
      *v35 = v18;
      result = v31;
    }

    else
    {
      v33 = v45[0];

      sub_226D6D04C();

      result = swift_willThrow();
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226B788B8(void *a1, char *a2, void *a3)
{
  v45 = a2;
  v43 = a3;
  v47[1] = *MEMORY[0x277D85DE8];
  v40 = sub_226D6D52C();
  v42 = *(v40 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6774C();
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = sub_226D68D5C();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[24];
  __swift_project_boxed_opaque_existential_1(a1 + 20, a1[23]);
  v19 = v46;
  result = sub_226D6BBBC();
  if (!v19)
  {
    v38 = v11;
    v39 = v14;
    v21 = v42;
    v22 = v43;
    v23 = v41;
    sub_226D6772C();
    v46 = 0;
    v37 = v13;
    sub_226D6980C();
    v24 = v6;
    sub_226D6771C();
    v25 = v22;
    v26 = v46;
    v27 = sub_226D697BC();
    v46 = v26;
    if (v26)
    {
      (*(v21 + 8))(v24, v40);
      (*(v23 + 8))(v37, v7);
      v28 = v39;
      v29 = v44;
    }

    else
    {
      v31 = v27;
      v45 = v17;
      (*(v21 + 8))(v24, v40);
      if (v31)
      {
        MEMORY[0x22AA85890](v31, v37);
      }

      else
      {
        (*(v23 + 16))(v38, v37, v7);
        v32 = v25;
        v31 = sub_226D6981C();
      }

      v47[0] = 0;
      if ([v25 save_])
      {
        v33 = *(v23 + 8);
        v34 = v47[0];
        v33(v37, v7);
        result = (*(v44 + 8))(v45, v39);
        goto LABEL_7;
      }

      v35 = v47[0];
      v36 = sub_226D6D04C();

      v46 = v36;
      swift_willThrow();
      (*(v23 + 8))(v37, v7);
      v28 = v39;
      v29 = v44;
      v17 = v45;
    }

    result = (*(v29 + 8))(v17, v28);
  }

LABEL_7:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226B78CA8(unint64_t a1)
{
  v36 = sub_226D6D52C();
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v36);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_24:
    v5 = sub_226D6EDFC();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v34 = a1 & 0xFFFFFFFFFFFFFF8;
      v35 = a1 & 0xC000000000000001;
      v31 = (v33 + 8);
      v32 = v33 + 32;
      v7 = MEMORY[0x277D84F98];
      v30 = xmmword_226D71F20;
      while (1)
      {
        if (v35)
        {
          v10 = MEMORY[0x22AA8AFD0](v6, a1);
        }

        else
        {
          if (v6 >= *(v34 + 16))
          {
            goto LABEL_21;
          }

          v10 = *(a1 + 8 * v6 + 32);
        }

        v11 = v10;
        v12 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v13 = v5;
        v14 = [v10 keyIdentifier];
        sub_226D6D4FC();

        v16 = sub_226C3049C(v4);
        v17 = v7[2];
        v18 = (v15 & 1) == 0;
        v19 = v17 + v18;
        if (__OFADD__(v17, v18))
        {
          goto LABEL_22;
        }

        v20 = v15;
        if (v7[3] < v19)
        {
          sub_226C331CC(v19, 1);
          v7 = v37;
          v21 = sub_226C3049C(v4);
          if ((v20 & 1) != (v22 & 1))
          {
            result = sub_226D6F25C();
            __break(1u);
            return result;
          }

          v16 = v21;
        }

        if (v20)
        {
          v8 = (*v31)(v4, v36);
          v9 = (v7[7] + 8 * v16);
          MEMORY[0x22AA8A610](v8);
          v5 = v13;
          if (*((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v27 = *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_226D6E61C();
            v5 = v13;
          }

          sub_226D6E65C();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
          v23 = swift_allocObject();
          *(v23 + 16) = v30;
          *(v23 + 32) = v11;
          v7[(v16 >> 6) + 8] |= 1 << v16;
          (*(v33 + 32))(v7[6] + *(v33 + 72) * v16, v4, v36);
          *(v7[7] + 8 * v16) = v23;
          v24 = v7[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_23;
          }

          v7[2] = v26;
          v5 = v13;
        }

        ++v6;
        if (v12 == v5)
        {
          return v7;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t sub_226B78FF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7150, &qword_226D744E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for PostInstallTaskVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PostInstallPopulateTransactionCategoryTask(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

void sub_226B790DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v106 = a4;
  v113[6] = *MEMORY[0x277D85DE8];
  v111 = sub_226D680EC();
  v7 = *(v111 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v111);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() currentQueryGenerationToken];
  v113[0] = 0;
  v12 = [a1 setQueryGenerationFromToken:v11 error:v113];

  v13 = v113[0];
  if (!v12)
  {
    v30 = v113[0];
    v31 = sub_226D6D04C();

    v111 = v31;
    swift_willThrow();
    goto LABEL_77;
  }

  v105 = sub_226D6AC0C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = v13;
  v16 = [ObjCClassFromMetadata entityName];
  if (!v16)
  {
    sub_226D6E39C();
    v16 = sub_226D6E36C();
  }

  v17 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_226D70840;
  v18 = sub_226D680CC();
  v19 = *(v18 + 16);
  v107 = a1;
  if (v19)
  {
    v102 = v4;
    v103 = v17;
    v113[0] = MEMORY[0x277D84F90];
    sub_226AE24F0(0, v19, 0);
    v20 = v113[0];
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v23 = *(v21 + 64);
    v101 = v18;
    v24 = v18 + ((v23 + 32) & ~v23);
    v108 = *(v21 + 56);
    v109 = v22;
    v110 = v21;
    v25 = (v21 - 8);
    do
    {
      v26 = v111;
      v109(v10, v24, v111);
      v27 = sub_226D680DC();
      (*v25)(v10, v26);
      v113[0] = v20;
      v29 = v20[2];
      v28 = v20[3];
      if (v29 >= v28 >> 1)
      {
        sub_226AE24F0((v28 > 1), v29 + 1, 1);
        v20 = v113[0];
      }

      v20[2] = v29 + 1;
      *(v20 + v29 + 16) = v27;
      v24 += v108;
      --v19;
    }

    while (v19);

    v5 = v102;
    v17 = v103;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7160, &qword_226D7E370);
  v33 = v104;
  *(v104 + 56) = v32;
  *(v33 + 64) = sub_226B79CEC();
  *(v33 + 32) = v20;
  v34 = sub_226D6E91C();
  [v17 setPredicate_];

  [v17 setResultType_];
  v35 = sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
  v36 = sub_226D6EBBC();
  v111 = v5;
  if (v5)
  {

    goto LABEL_77;
  }

  v37 = v36;
  v100 = v36 >> 62;
  if (!(v36 >> 62))
  {
    v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_16;
  }

LABEL_85:
  v38 = sub_226D6EDFC();
LABEL_16:
  v97 = v38;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v39 = sub_226D6E07C();
  v91 = __swift_project_value_buffer(v39, qword_28105F710);
  v40 = sub_226D6E05C();
  v41 = sub_226D6E9EC();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134217984;
    *(v42 + 4) = v97;
    _os_log_impl(&dword_226AB4000, v40, v41, "Strarted populating transaction categories for %ld transactions", v42, 0xCu);
    MEMORY[0x22AA8BEE0](v42, -1, -1);
  }

  v44 = v97;
  if (v97 < 1)
  {
LABEL_74:

    goto LABEL_77;
  }

  v45 = 0;
  v93 = v37 & 0xC000000000000001;
  if (v37 < 0)
  {
    v46 = v37;
  }

  else
  {
    v46 = v37 & 0xFFFFFFFFFFFFFF8;
  }

  v96 = v46;
  v94 = v37 & 0xFFFFFFFFFFFFFF8;
  v90 = (v37 & 0xFFFFFFFFFFFFFF8) + 32;
  v47 = 100;
  *&v43 = 134217984;
  v89 = v43;
  v92 = v37;
  v102 = v35;
  v103 = v17;
  while (1)
  {
    v95 = v47;
    if (v44 >= v47)
    {
      v48 = v47;
    }

    else
    {
      v48 = v44;
    }

    v49 = v44;
    v50 = __OFADD__(v45, 100);
    v51 = MEMORY[0x22AA8B6A0]();
    if (v50)
    {
      goto LABEL_80;
    }

    if (v49 >= v45 + 100)
    {
      v52 = v45 + 100;
    }

    else
    {
      v52 = v49;
    }

    v104 = v52;
    if (v52 < v45)
    {
      goto LABEL_81;
    }

    v101 = v45 + 100;
    v99 = v51;
    if (v100)
    {
      if (sub_226D6EDFC() < v45)
      {
        goto LABEL_82;
      }

      v53 = sub_226D6EDFC();
    }

    else
    {
      v53 = *(v94 + 16);
      if (v53 < v45)
      {
        goto LABEL_82;
      }
    }

    if (v53 < v104)
    {
      goto LABEL_83;
    }

    if (!v93 || v45 == v104)
    {

      if (!v100)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v45 >= v104)
      {
        goto LABEL_84;
      }

      v54 = v45;
      do
      {
        v55 = v54 + 1;
        sub_226D6EF0C();
        v54 = v55;
      }

      while (v48 != v55);
      if (!v100)
      {
LABEL_49:
        v56 = (2 * v104) | 1;
        v57 = v90;
        goto LABEL_52;
      }
    }

    sub_226D6F0CC();
    v57 = v58;
    v45 = v59;
    v56 = v60;
LABEL_52:
    sub_226AE4BCC(v57, v45, v56);
    v62 = v61;
    swift_unknownObjectRelease();
    if ((v62 & 0xC000000000000001) != 0)
    {
      sub_226D6EDBC();
      sub_226AE59FC();
      sub_226D6E8DC();
      v62 = v113[1];
      v63 = v113[2];
      v64 = v113[3];
      v65 = v113[4];
      v66 = v113[5];
    }

    else
    {
      v65 = 0;
      v67 = -1 << *(v62 + 32);
      v63 = (v62 + 56);
      v64 = ~v67;
      v68 = -v67;
      if (v68 < 64)
      {
        v69 = ~(-1 << v68);
      }

      else
      {
        v69 = -1;
      }

      v66 = (v69 & *(v62 + 56));
    }

    v45 = v101;
    v98 = v64;
    v17 = ((v64 + 64) >> 6);
    v109 = v65;
    if ((v62 & 0x8000000000000000) != 0)
    {
LABEL_65:
      v74 = sub_226D6EE2C();
      if (!v74)
      {
        goto LABEL_70;
      }

      v112 = v74;
      swift_dynamicCast();
      v72 = v113[0];
      v35 = v66;
      v73 = v111;
      if (!v113[0])
      {
        goto LABEL_70;
      }

      goto LABEL_67;
    }

    while (1)
    {
      v70 = v65;
      v71 = v66;
      if (!v66)
      {
        while (1)
        {
          v65 = v70 + 1;
          if (__OFADD__(v70, 1))
          {
            break;
          }

          if (v65 >= v17)
          {
            goto LABEL_70;
          }

          v71 = v63[v65];
          ++v70;
          if (v71)
          {
            goto LABEL_63;
          }
        }

        __break(1u);
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
        goto LABEL_85;
      }

LABEL_63:
      v35 = (v71 - 1) & v71;
      v72 = *(*(v62 + 48) + ((v65 << 9) | (8 * __clz(__rbit64(v71)))));
      v73 = v111;
      if (!v72)
      {
        break;
      }

LABEL_67:
      v108 = v66;
      v75 = v63;
      v37 = v45;
      v110 = v72;
      v76 = sub_226D6AB0C();
      if (v73)
      {
        v111 = v73;

        sub_226AD3C20();

        goto LABEL_76;
      }

      v77 = v76;
      sub_226D6C07C();
      v111 = 0;

      v66 = v35;
      v63 = v75;
      v109 = v65;
      if ((v62 & 0x8000000000000000) != 0)
      {
        goto LABEL_65;
      }
    }

LABEL_70:
    sub_226AD3C20();
    v113[0] = 0;
    v78 = v107;
    v79 = [v107 save_];
    v37 = v92;
    v35 = v102;
    if ((v79 & 1) == 0)
    {
      break;
    }

    v80 = v113[0];
    [v78 reset];
    v81 = sub_226D6E05C();
    v82 = sub_226D6E9EC();
    v83 = os_log_type_enabled(v81, v82);
    v17 = v103;
    if (v83)
    {
      v84 = swift_slowAlloc();
      *v84 = v89;
      *(v84 + 4) = v104;
      _os_log_impl(&dword_226AB4000, v81, v82, "Populated transaction categories for %ld transactions", v84, 0xCu);
      MEMORY[0x22AA8BEE0](v84, -1, -1);
    }

    objc_autoreleasePoolPop(v99);
    v47 = v95 + 100;
    v44 = v97;
    if (v101 >= v97)
    {
      goto LABEL_74;
    }
  }

  v87 = v113[0];

  v88 = sub_226D6D04C();

  v111 = v88;
  swift_willThrow();
LABEL_76:
  v85 = v103;
  objc_autoreleasePoolPop(v99);

LABEL_77:
  v86 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226B79B20()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

void sub_226B79B2C(uint64_t *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_226B79B4C(a1);
}

void sub_226B79B4C(uint64_t *a1)
{
  v3 = sub_226D6C09C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_226D6C08C();
  v6 = *a1;
  v7 = sub_226D676AC();
  sub_226D6EB7C();
  if (!v1)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v8 = sub_226D6E07C();
    __swift_project_value_buffer(v8, qword_28105F710);
    v9 = sub_226D6E05C();
    v10 = sub_226D6E9EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_226AB4000, v9, v10, "Finished populating transaction categories", v11, 2u);
      MEMORY[0x22AA8BEE0](v11, -1, -1);
    }
  }
}

unint64_t sub_226B79CEC()
{
  result = qword_28105F500;
  if (!qword_28105F500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A7160, &qword_226D7E370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105F500);
  }

  return result;
}

void sub_226B79E7C(void *a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  sub_226D6C5CC();
  v2 = [swift_getObjCClassFromMetadata() fetchRequest];
  v3 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v13[0] = 0;
  v4 = [a1 executeRequest:v3 error:v13];
  if (v4)
  {
    v5 = v4;
    v6 = v13[0];

    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v7 = sub_226D6E07C();
    __swift_project_value_buffer(v7, qword_28105F5E0);
    v8 = sub_226D6E05C();
    v9 = sub_226D6E9EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_226AB4000, v8, v9, "Deleted all Entity Groups", v10, 2u);
      MEMORY[0x22AA8BEE0](v10, -1, -1);
    }
  }

  else
  {
    v11 = v13[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_226B7A0BC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(void), void (*a5)(void), const char *a6, uint64_t a7)
{
  v43 = a3;
  v44 = a7;
  v42 = a6;
  v40 = a5;
  v10 = sub_226D6D52C();
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a4(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v35[-v17];
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v19 = sub_226D6E07C();
  __swift_project_value_buffer(v19, qword_28105F5E0);
  (*(v15 + 16))(v18, a1, v14);

  v20 = sub_226D6E05C();
  v21 = sub_226D6E9EC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v39 = a1;
    v37 = v20;
    v23 = v22;
    v38 = swift_slowAlloc();
    v45 = v38;
    *v23 = 136315394;
    v36 = v21;
    v40();
    sub_226B7B4F0(&qword_27D7A6648);
    v24 = sub_226D6F1CC();
    v40 = a2;
    v26 = v25;
    (*(v41 + 8))(v13, v10);
    (*(v15 + 8))(v18, v14);
    v27 = sub_226AC4530(v24, v26, &v45);
    a2 = v40;

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    sub_226B7B4F0(&qword_281062B60);
    v28 = sub_226D6E8AC();
    v30 = sub_226AC4530(v28, v29, &v45);

    *(v23 + 14) = v30;
    v31 = v37;
    _os_log_impl(&dword_226AB4000, v37, v36, v42, v23, 0x16u);
    v32 = v38;
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v32, -1, -1);
    a1 = v39;
    MEMORY[0x22AA8BEE0](v23, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
  }

  v33 = *(v43 + 56);
  v34 = sub_226D676AC();
  *&v35[-32] = MEMORY[0x28223BE20](v34);
  *&v35[-24] = a1;
  *&v35[-16] = a2;
  sub_226D6EB7C();
}

uint64_t sub_226B7A4C8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void *), const char *a5, const char *a6)
{
  v34 = a5;
  v35 = a6;
  v37[1] = *MEMORY[0x277D85DE8];
  v11 = sub_226D6C86C();
  v36 = *(v11 - 8);
  v12 = *(v36 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() currentQueryGenerationToken];
  v37[0] = 0;
  v16 = [a1 setQueryGenerationFromToken:v15 error:v37];

  if (v16)
  {
    v17 = v37[0];
    sub_226D6C85C();
    a4(a2, a3, a1);
    if (v6)
    {
LABEL_17:
      result = (*(v36 + 8))(v14, v11);
      goto LABEL_18;
    }

    if ([a1 hasChanges])
    {
      v37[0] = 0;
      if (![a1 save_])
      {
        v31 = v37[0];
        sub_226D6D04C();

        swift_willThrow();
        goto LABEL_17;
      }

      v18 = qword_28105F5D8;
      v19 = v37[0];
      if (v18 != -1)
      {
        swift_once();
      }

      v20 = sub_226D6E07C();
      __swift_project_value_buffer(v20, qword_28105F5E0);
      v21 = sub_226D6E05C();
      v22 = sub_226D6E9EC();
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_15;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v22;
      v25 = v21;
      v26 = v34;
    }

    else
    {
      if (qword_28105F5D8 != -1)
      {
        swift_once();
      }

      v29 = sub_226D6E07C();
      __swift_project_value_buffer(v29, qword_28105F5E0);
      v21 = sub_226D6E05C();
      v30 = sub_226D6E9EC();
      if (!os_log_type_enabled(v21, v30))
      {
        goto LABEL_15;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v30;
      v25 = v21;
      v26 = v35;
    }

    _os_log_impl(&dword_226AB4000, v25, v24, v26, v23, 2u);
    MEMORY[0x22AA8BEE0](v23, -1, -1);
LABEL_15:

    goto LABEL_17;
  }

  v27 = v37[0];
  sub_226D6D04C();

  result = swift_willThrow();
LABEL_18:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_226B7A880(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v30 = a3;
  v31 = a2;
  v7 = sub_226D6D52C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v12 = sub_226D6E07C();
  __swift_project_value_buffer(v12, qword_28105F5E0);
  (*(v8 + 16))(v11, a1, v7);
  v13 = sub_226D6E05C();
  v14 = sub_226D6E9EC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = a1;
    v18 = v17;
    v32 = v17;
    *v16 = 136315138;
    sub_226B7B4F0(&qword_27D7A6648);
    v19 = sub_226D6F1CC();
    v28 = a4;
    v21 = v20;
    (*(v8 + 8))(v11, v7);
    v22 = sub_226AC4530(v19, v21, &v32);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_226AB4000, v13, v14, v30, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    v23 = v18;
    a1 = v27;
    MEMORY[0x22AA8BEE0](v23, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v24 = *(v31 + 56);
  v25 = sub_226D676AC();
  *(&v26 - 2) = MEMORY[0x28223BE20](v25);
  *(&v26 - 1) = a1;
  sub_226D6EB7C();
}

uint64_t sub_226B7AB58(void *a1, uint64_t a2, void (*a3)(uint64_t, void *), const char *a4, const char *a5)
{
  v32 = a4;
  v33 = a5;
  v34[1] = *MEMORY[0x277D85DE8];
  v9 = sub_226D6C79C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() currentQueryGenerationToken];
  v34[0] = 0;
  v15 = [a1 setQueryGenerationFromToken:v14 error:v34];

  if (v15)
  {
    v16 = v34[0];
    sub_226D6C78C();
    a3(a2, a1);
    if (v5)
    {
LABEL_17:
      result = (*(v10 + 8))(v13, v9);
      goto LABEL_18;
    }

    if ([a1 hasChanges])
    {
      v34[0] = 0;
      if (![a1 save_])
      {
        v30 = v34[0];
        sub_226D6D04C();

        swift_willThrow();
        goto LABEL_17;
      }

      v17 = qword_28105F5D8;
      v18 = v34[0];
      if (v17 != -1)
      {
        swift_once();
      }

      v19 = sub_226D6E07C();
      __swift_project_value_buffer(v19, qword_28105F5E0);
      v20 = sub_226D6E05C();
      v21 = sub_226D6E9EC();
      if (!os_log_type_enabled(v20, v21))
      {
        goto LABEL_15;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = v21;
      v24 = v20;
      v25 = v32;
    }

    else
    {
      if (qword_28105F5D8 != -1)
      {
        swift_once();
      }

      v28 = sub_226D6E07C();
      __swift_project_value_buffer(v28, qword_28105F5E0);
      v20 = sub_226D6E05C();
      v29 = sub_226D6E9EC();
      if (!os_log_type_enabled(v20, v29))
      {
        goto LABEL_15;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = v29;
      v24 = v20;
      v25 = v33;
    }

    _os_log_impl(&dword_226AB4000, v24, v23, v25, v22, 2u);
    MEMORY[0x22AA8BEE0](v22, -1, -1);
LABEL_15:

    goto LABEL_17;
  }

  v26 = v34[0];
  sub_226D6D04C();

  result = swift_willThrow();
LABEL_18:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_226B7AEF8(uint64_t a1, const char *a2)
{
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F5E0);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_226AB4000, v5, v6, a2, v7, 2u);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v8 = *(a1 + 56);
  v9 = sub_226D676AC();
  MEMORY[0x28223BE20](v9);
  sub_226D6EB7C();
}

void sub_226B7B044(void *a1)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v39 = sub_226D6D52C();
  v34 = *(v39 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v39);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6C79C();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6C78C();
  sub_226D6B4BC();
  v11 = sub_226D6B4AC();
  v12 = a1;
  v13 = sub_226D6EBBC();
  if (v1)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v14 = v13;
    v37 = v12;
    if (v13 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
    {
      v16 = v37;
      v31 = v11;
      v32 = v7;
      v38 = v10;
      v33 = v6;
      if (!i)
      {
        break;
      }

      v7 = 0;
      v35 = v14 & 0xFFFFFFFFFFFFFF8;
      v36 = v14 & 0xC000000000000001;
      v34 += 8;
      while (1)
      {
        if (v36)
        {
          v17 = MEMORY[0x22AA8AFD0](v7, v14);
        }

        else
        {
          if (v7 >= *(v35 + 16))
          {
            goto LABEL_23;
          }

          v17 = *(v14 + 8 * v7 + 32);
        }

        v6 = v17;
        v10 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = v14;
        v18 = [v17 id];
        sub_226D6D4FC();

        sub_226D6C77C();
        (*v34)(v5, v39);

        ++v7;
        v16 = v37;
        if (v10 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_14:

    v40[0] = 0;
    if ([v16 save_])
    {
      v19 = qword_28105F5D8;
      v20 = v40[0];
      v21 = v33;
      v22 = v38;
      v23 = v31;
      if (v19 != -1)
      {
        swift_once();
      }

      v24 = sub_226D6E07C();
      __swift_project_value_buffer(v24, qword_28105F5E0);
      v25 = sub_226D6E05C();
      v26 = sub_226D6E9EC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_226AB4000, v25, v26, "Deleted all Income Insights.", v27, 2u);
        MEMORY[0x22AA8BEE0](v27, -1, -1);
      }

      (*(v32 + 8))(v22, v21);
    }

    else
    {
      v28 = v40[0];
      sub_226D6D04C();

      swift_willThrow();
      (*(v32 + 8))(v38, v33);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226B7B4F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_226D6D52C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AuthorisationStatusProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  AuthorisationStatusProvider.init()();
  return v0;
}

uint64_t AuthorisationStatusProvider.init()()
{
  v1 = sub_226D6EA4C();
  v22 = *(v1 - 8);
  v23 = v1;
  v2 = *(v22 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6EA3C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_226D6E1BC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  *(v0 + 32) = 0;
  v9 = (v0 + 32);
  v10 = MEMORY[0x277D84F90];
  v11 = sub_226B2379C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7168, &unk_226D74550);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v11;
  *(v0 + 16) = v12;
  v13 = sub_226AE59B4(0, &qword_28105F470, 0x277D85C78);
  v20[1] = "iginTypeValue IN %@";
  v20[2] = v13;
  sub_226D6E19C();
  aBlock[0] = v10;
  sub_226B80204(&qword_28105F478, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C00, &qword_226D73DF0);
  sub_226AC4194(&qword_28105F518, &qword_27D7A6C00, &qword_226D73DF0);
  sub_226D6ED5C();
  (*(v22 + 104))(v4, *MEMORY[0x277D85260], v23);
  v14 = sub_226D6EA8C();
  v15 = v21;
  *(v21 + 24) = v14;
  v16 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_226B7FCA8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226B7BBD4;
  aBlock[3] = &block_descriptor_6;
  v17 = _Block_copy(aBlock);
  v18 = v14;

  swift_beginAccess();
  notify_register_dispatch("com.apple.tcc.access.changed", v9, v18, v17);
  swift_endAccess();
  _Block_release(v17);

  return v15;
}

uint64_t sub_226B7BB48()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);

    os_unfair_lock_lock((v1 + 24));
    v2 = *(v1 + 16);

    *(v1 + 16) = MEMORY[0x277D84F98];
    os_unfair_lock_unlock((v1 + 24));
  }

  return result;
}

uint64_t sub_226B7BBD4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t AuthorisationStatusProvider.authStatus(auditToken:entitlements:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v37 = a6;
  v11 = sub_226D68CEC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v35 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7170, &qword_226D74560);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v29 - v20;
  v22 = *(v6 + 16);
  os_unfair_lock_lock((v22 + 24));
  sub_226B7BEE8((v22 + 16), v21);
  os_unfair_lock_unlock((v22 + 24));
  sub_226B7FCC8(v21, v19);
  v23 = *(v12 + 48);
  v36 = v11;
  if (v23(v19, 1, v11) == 1)
  {
    v31 = HIDWORD(a3);
    v32 = HIDWORD(a4);
    v30 = HIDWORD(a2);
    v33 = 0;
    sub_226AC47B0(v19, &qword_27D7A7170, &qword_226D74560);
    v19 = v35;
    v24 = sub_226B7C10C(a1, a2, a3, a4, v35);
    v34 = &v29;
    MEMORY[0x28223BE20](v24);
    *(&v29 - 6) = a1;
    v26 = v30;
    v25 = v31;
    *(&v29 - 10) = a2;
    *(&v29 - 9) = v26;
    *(&v29 - 8) = a3;
    *(&v29 - 7) = v25;
    v27 = v32;
    *(&v29 - 6) = a4;
    *(&v29 - 5) = v27;
    *(&v29 - 2) = v19;
    os_unfair_lock_lock((v22 + 24));
    sub_226B7FD38(v22 + 16);
    os_unfair_lock_unlock((v22 + 24));
  }

  sub_226AC47B0(v21, &qword_27D7A7170, &qword_226D74560);
  return (*(v12 + 32))(v37, v19, v36);
}

uint64_t sub_226B7BEE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_226D680FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6810C();
  v9 = *a1;
  if (*(*a1 + 16) && (v10 = sub_226C302EC(v8), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(v9 + 56);
    v14 = sub_226D68CEC();
    v15 = *(v14 - 8);
    (*(v15 + 16))(a2, v13 + *(v15 + 72) * v12, v14);
    (*(v5 + 8))(v8, v4);
    return (*(v15 + 56))(a2, 0, 1, v14);
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    v17 = sub_226D68CEC();
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }
}

uint64_t sub_226B7C10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_226D68CEC();
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_226D67DDC())
  {
    v14 = *MEMORY[0x277CC75F8];
    v15 = *(v24 + 104);

    return v15(a5, v14, v10);
  }

  else
  {
    if (qword_27D7A5ED0 != -1)
    {
      swift_once();
    }

    v17 = MEMORY[0x277CC7600];
    if (qword_27D7B61D0)
    {
      v23 = a5;
      v21 = HIDWORD(a3);
      v22 = HIDWORD(a4);
      v18 = qword_27D7B61D0;
      v25 = a1;
      v26 = a2;
      v27 = a3;
      v28 = v21;
      a5 = v23;
      v29 = a4;
      v30 = v22;
      v19 = TCCAccessPreflightWithAuditToken();

      v20 = MEMORY[0x277CC7608];
      if (v19 != 1)
      {
        v20 = v17;
      }

      if (v19)
      {
        v17 = v20;
      }

      else
      {
        v17 = MEMORY[0x277CC75F8];
      }
    }

    (*(v24 + 104))(v13, *v17, v10);
    return (*(v24 + 32))(a5, v13, v10);
  }
}

uint64_t sub_226B7C32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7170, &qword_226D74560);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v18 - v9;
  v11 = sub_226D680FC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6810C();
  v15 = sub_226D68CEC();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v10, a6, v15);
  (*(v16 + 56))(v10, 0, 1, v15);
  return sub_226D48C9C(v10, v14);
}

uint64_t AuthorisationStatusProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AuthorisationStatusProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_226B7C558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[17] = a3;
  v8[18] = a4;
  v8[15] = a1;
  v8[16] = a2;
  v9 = sub_226D69ADC();
  v8[23] = v9;
  v10 = *(v9 - 8);
  v8[24] = v10;
  v11 = *(v10 + 64) + 15;
  v8[25] = swift_task_alloc();
  v12 = sub_226D69A9C();
  v8[26] = v12;
  v13 = *(v12 - 8);
  v8[27] = v13;
  v14 = *(v13 + 64) + 15;
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600) - 8) + 64) + 15;
  v8[30] = swift_task_alloc();
  v16 = sub_226D67F1C();
  v8[31] = v16;
  v17 = *(v16 - 8);
  v8[32] = v17;
  v18 = *(v17 + 64) + 15;
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v19 = sub_226D68CEC();
  v8[37] = v19;
  v20 = *(v19 - 8);
  v8[38] = v20;
  v21 = *(v20 + 64) + 15;
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  sub_226D6E77C();
  v8[43] = sub_226D6E76C();
  v23 = sub_226D6E6CC();
  v8[44] = v23;
  v8[45] = v22;

  return MEMORY[0x2822009F8](sub_226B7C7F8, v23, v22);
}

uint64_t sub_226B7C7F8()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  v4 = *(v0 + 128);
  sub_226B7C10C(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 336));
  v5 = *MEMORY[0x277CC7600];
  *(v0 + 488) = v5;
  v6 = *(v3 + 104);
  *(v0 + 368) = v6;
  *(v0 + 376) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v1, v5, v2);
  v7 = sub_226D68CDC();
  v8 = *(v3 + 8);
  *(v0 + 384) = v8;
  *(v0 + 392) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v2);
  if ((v7 & 1) == 0)
  {
    v19 = *(v0 + 336);
    v18 = *(v0 + 344);
    v20 = *(v0 + 296);
    v21 = *(v0 + 304);
    v22 = *(v0 + 120);

    (*(v21 + 32))(v22, v19, v20);
    goto LABEL_5;
  }

  v9 = *(v0 + 248);
  v10 = *(v0 + 256);
  v11 = *(v0 + 240);
  v12 = *(v0 + 128);
  sub_226D67DFC();
  v13 = (*(v10 + 48))(v11, 1, v9);
  v14 = *(v0 + 240);
  if (v13 == 1)
  {
    v15 = *(v0 + 344);
    v16 = *(v0 + 296);
    v17 = *(v0 + 120);
    v8(*(v0 + 336), v16);

    sub_226AC47B0(v14, &qword_27D7A7180, &qword_226D74600);
    v6(v17, v5, v16);
LABEL_5:
    v24 = *(v0 + 328);
    v23 = *(v0 + 336);
    v26 = *(v0 + 312);
    v25 = *(v0 + 320);
    v28 = *(v0 + 280);
    v27 = *(v0 + 288);
    v30 = *(v0 + 264);
    v29 = *(v0 + 272);
    v32 = *(v0 + 232);
    v31 = *(v0 + 240);
    v37 = *(v0 + 224);
    v38 = *(v0 + 200);

    v33 = *(v0 + 8);

    return v33();
  }

  (*(*(v0 + 256) + 32))(*(v0 + 288), *(v0 + 240), *(v0 + 248));
  sub_226D6D76C();
  *(v0 + 400) = MEMORY[0x22AA89800]();
  v35 = *(MEMORY[0x277D37CB8] + 4);
  v36 = swift_task_alloc();
  *(v0 + 408) = v36;
  *v36 = v0;
  v36[1] = sub_226B7CAEC;

  return MEMORY[0x282198128]();
}

uint64_t sub_226B7CAEC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v7 = *v1;
  *(*v1 + 492) = a1;

  v4 = *(v2 + 360);
  v5 = *(v2 + 352);

  return MEMORY[0x2822009F8](sub_226B7CC14, v5, v4);
}

uint64_t sub_226B7CC14()
{
  v84 = v0;
  if (*(v0 + 492) == 1)
  {
    v1 = *(MEMORY[0x277D37CB0] + 4);
    v2 = swift_task_alloc();
    *(v0 + 416) = v2;
    *v2 = v0;
    v2[1] = sub_226B7D3D4;
    v3 = *(v0 + 400);

    return MEMORY[0x282198120]();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7188, &qword_226D74608);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D70840;
  v5 = *MEMORY[0x277D6C0B8];
  if (!*MEMORY[0x277D6C0B8])
  {
    __break(1u);
    return MEMORY[0x282198120]();
  }

  *(inited + 32) = v5;
  v6 = inited + 32;
  *(inited + 40) = 1;
  v7 = inited;
  v8 = v5;
  sub_226B23BB0(v7);
  swift_setDeallocating();
  sub_226AC47B0(v6, &qword_27D7A7190, &qword_226D74610);
  type metadata accessor for CFString(0);
  sub_226B80204(&qword_27D7A6048, type metadata accessor for CFString);
  v9 = sub_226D6E2AC();
  *(v0 + 424) = v9;

  if (qword_27D7A5ED0 != -1)
  {
    swift_once();
  }

  v10 = qword_27D7B61D0;
  *(v0 + 432) = qword_27D7B61D0;
  v11 = MEMORY[0x277CC75F8];
  if (v10)
  {
    v80 = *(v0 + 320);
    v12 = *(v0 + 304);
    v78 = *(v0 + 312);
    v76 = *(v0 + 376);
    v77 = *(v0 + 296);
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    v15 = v9;
    v16 = *(v0 + 136);
    v17 = *(v0 + 144);
    v18 = HIDWORD(v17);
    v75 = *(v0 + 368);
    v19 = v10;
    *(v0 + 456) = v16;
    *(v0 + 464) = v17;
    v9 = v15;
    *(v0 + 468) = v18;
    *(v0 + 472) = v14;
    *(v0 + 480) = v13;
    LODWORD(v13) = TCCAccessCheckAuditToken();

    v20 = MEMORY[0x277CC7608];
    v21 = v13 == 0;
    v11 = MEMORY[0x277CC75F8];
    if (!v21)
    {
      v20 = MEMORY[0x277CC75F8];
    }

    v75(v78, *v20, v77);
    (*(v12 + 32))(v80, v78, v77);
  }

  else
  {
    (*(v0 + 368))(*(v0 + 320), *(v0 + 488), *(v0 + 296));
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 280);
    v22 = *(v0 + 288);
    v25 = *(v0 + 248);
    v24 = *(v0 + 256);
    v26 = sub_226D6E07C();
    __swift_project_value_buffer(v26, qword_28105F5E0);
    (*(v24 + 16))(v23, v22, v25);
    v27 = sub_226D6E05C();
    v28 = sub_226D6E9CC();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 280);
    v32 = *(v0 + 248);
    v31 = *(v0 + 256);
    if (v29)
    {
      v33 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v83 = v81;
      *v33 = 136315138;
      sub_226B80204(&qword_281062BC0, MEMORY[0x277CC7098]);
      v34 = v9;
      v35 = sub_226D6F1CC();
      v37 = v36;
      (*(v31 + 8))(v30, v32);
      v38 = v35;
      v9 = v34;
      v11 = MEMORY[0x277CC75F8];
      v39 = sub_226AC4530(v38, v37, &v83);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_226AB4000, v27, v28, "Requesting auth status for %s but finance service is not available", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v81);
      MEMORY[0x22AA8BEE0](v81, -1, -1);
      MEMORY[0x22AA8BEE0](v33, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v30, v32);
    }
  }

  v41 = *(v0 + 384);
  v40 = *(v0 + 392);
  v42 = *(v0 + 376);
  v43 = *(v0 + 328);
  v44 = *(v0 + 296);
  (*(v0 + 368))(v43, *v11, v44);
  v45 = sub_226D68CDC();
  v41(v43, v44);
  if (v45)
  {
    v46 = swift_task_alloc();
    *(v0 + 440) = v46;
    *v46 = v0;
    v46[1] = sub_226B7DCA4;
    v47 = *(v0 + 232);
    v48 = *(v0 + 152);
    v49 = *(v0 + 160);
    v50 = *(v0 + 136);
    v51 = *(v0 + 144);
    v52 = *(v0 + 128);

    return sub_226B7EA80(v47, v52, v50, v51, v48, v49);
  }

  else
  {
    v54 = *(v0 + 344);
    v55 = *(v0 + 288);
    v57 = *(v0 + 168);
    v56 = *(v0 + 176);

    v58 = swift_task_alloc();
    v58[2] = v57;
    v58[3] = v55;
    v58[4] = v56;
    sub_226D6EB7C();
    v59 = *(v0 + 392);
    v60 = *(v0 + 400);
    (*(v0 + 384))(*(v0 + 336), *(v0 + 296));

    v61 = *(v0 + 288);
    v62 = *(v0 + 248);
    v63 = *(v0 + 256);
    (*(*(v0 + 304) + 32))(*(v0 + 120), *(v0 + 320), *(v0 + 296));
    (*(v63 + 8))(v61, v62);
    v65 = *(v0 + 328);
    v64 = *(v0 + 336);
    v67 = *(v0 + 312);
    v66 = *(v0 + 320);
    v69 = *(v0 + 280);
    v68 = *(v0 + 288);
    v71 = *(v0 + 264);
    v70 = *(v0 + 272);
    v73 = *(v0 + 232);
    v72 = *(v0 + 240);
    v79 = *(v0 + 224);
    v82 = *(v0 + 200);

    v74 = *(v0 + 8);

    return v74();
  }
}

uint64_t sub_226B7D3D4(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v7 = *v1;
  *(*v1 + 493) = a1;

  v4 = *(v2 + 360);
  v5 = *(v2 + 352);

  return MEMORY[0x2822009F8](sub_226B7D4FC, v5, v4);
}

uint64_t sub_226B7D4FC()
{
  v91 = v0;
  if (*(v0 + 493))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7188, &qword_226D74608);
    result = swift_initStackObject();
    *(result + 16) = xmmword_226D70840;
    v2 = *MEMORY[0x277D6C0B8];
    if (!*MEMORY[0x277D6C0B8])
    {
      __break(1u);
      return result;
    }

    *(result + 32) = v2;
    v3 = result + 32;
    *(result + 40) = 1;
    v4 = result;
    v5 = v2;
    sub_226B23BB0(v4);
    swift_setDeallocating();
    sub_226AC47B0(v3, &qword_27D7A7190, &qword_226D74610);
    type metadata accessor for CFString(0);
    sub_226B80204(&qword_27D7A6048, type metadata accessor for CFString);
    v6 = sub_226D6E2AC();
    *(v0 + 424) = v6;

    if (qword_27D7A5ED0 != -1)
    {
      swift_once();
    }

    v7 = qword_27D7B61D0;
    *(v0 + 432) = qword_27D7B61D0;
    v8 = MEMORY[0x277CC75F8];
    if (v7)
    {
      v86 = *(v0 + 320);
      v9 = *(v0 + 304);
      v84 = *(v0 + 312);
      v82 = *(v0 + 376);
      v83 = *(v0 + 296);
      v11 = *(v0 + 152);
      v10 = *(v0 + 160);
      v12 = v6;
      v13 = *(v0 + 136);
      v14 = *(v0 + 144);
      v15 = HIDWORD(v14);
      v81 = *(v0 + 368);
      v16 = v7;
      *(v0 + 456) = v13;
      *(v0 + 464) = v14;
      v6 = v12;
      *(v0 + 468) = v15;
      *(v0 + 472) = v11;
      *(v0 + 480) = v10;
      LODWORD(v10) = TCCAccessCheckAuditToken();

      v17 = MEMORY[0x277CC7608];
      v18 = v10 == 0;
      v8 = MEMORY[0x277CC75F8];
      if (!v18)
      {
        v17 = MEMORY[0x277CC75F8];
      }

      v81(v84, *v17, v83);
      (*(v9 + 32))(v86, v84, v83);
    }

    else
    {
      (*(v0 + 368))(*(v0 + 320), *(v0 + 488), *(v0 + 296));
      if (qword_28105F5D8 != -1)
      {
        swift_once();
      }

      v41 = *(v0 + 280);
      v40 = *(v0 + 288);
      v43 = *(v0 + 248);
      v42 = *(v0 + 256);
      v44 = sub_226D6E07C();
      __swift_project_value_buffer(v44, qword_28105F5E0);
      (*(v42 + 16))(v41, v40, v43);
      v45 = sub_226D6E05C();
      v46 = sub_226D6E9CC();
      v47 = os_log_type_enabled(v45, v46);
      v48 = *(v0 + 280);
      v50 = *(v0 + 248);
      v49 = *(v0 + 256);
      if (v47)
      {
        v51 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v90 = v89;
        *v51 = 136315138;
        sub_226B80204(&qword_281062BC0, MEMORY[0x277CC7098]);
        v52 = v6;
        v53 = sub_226D6F1CC();
        v55 = v54;
        (*(v49 + 8))(v48, v50);
        v56 = v53;
        v6 = v52;
        v8 = MEMORY[0x277CC75F8];
        v57 = sub_226AC4530(v56, v55, &v90);

        *(v51 + 4) = v57;
        _os_log_impl(&dword_226AB4000, v45, v46, "Requesting auth status for %s but finance service is not available", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v89);
        MEMORY[0x22AA8BEE0](v89, -1, -1);
        MEMORY[0x22AA8BEE0](v51, -1, -1);
      }

      else
      {

        (*(v49 + 8))(v48, v50);
      }
    }

    v59 = *(v0 + 384);
    v58 = *(v0 + 392);
    v60 = *(v0 + 376);
    v61 = *(v0 + 328);
    v62 = *(v0 + 296);
    (*(v0 + 368))(v61, *v8, v62);
    v63 = sub_226D68CDC();
    v59(v61, v62);
    if (v63)
    {
      v64 = swift_task_alloc();
      *(v0 + 440) = v64;
      *v64 = v0;
      v64[1] = sub_226B7DCA4;
      v65 = *(v0 + 232);
      v66 = *(v0 + 152);
      v67 = *(v0 + 160);
      v68 = *(v0 + 136);
      v69 = *(v0 + 144);
      v70 = *(v0 + 128);

      return sub_226B7EA80(v65, v70, v68, v69, v66, v67);
    }

    v71 = *(v0 + 344);
    v72 = *(v0 + 288);
    v74 = *(v0 + 168);
    v73 = *(v0 + 176);

    v75 = swift_task_alloc();
    v75[2] = v74;
    v75[3] = v72;
    v75[4] = v73;
    sub_226D6EB7C();
    v76 = *(v0 + 392);
    v77 = *(v0 + 400);
    (*(v0 + 384))(*(v0 + 336), *(v0 + 296));

    v78 = *(v0 + 288);
    v79 = *(v0 + 248);
    v80 = *(v0 + 256);
    (*(*(v0 + 304) + 32))(*(v0 + 120), *(v0 + 320), *(v0 + 296));
    (*(v80 + 8))(v78, v79);
  }

  else
  {
    v19 = *(v0 + 392);
    v20 = *(v0 + 400);
    v87 = *(v0 + 376);
    v21 = *(v0 + 368);
    v22 = *(v0 + 488);
    v23 = *(v0 + 344);
    v25 = *(v0 + 288);
    v24 = *(v0 + 296);
    v26 = *(v0 + 248);
    v27 = *(v0 + 256);
    v28 = *(v0 + 120);
    (*(v0 + 384))(*(v0 + 336), v24);

    v21(v28, v22, v24);
    (*(v27 + 8))(v25, v26);
  }

  v30 = *(v0 + 328);
  v29 = *(v0 + 336);
  v32 = *(v0 + 312);
  v31 = *(v0 + 320);
  v34 = *(v0 + 280);
  v33 = *(v0 + 288);
  v36 = *(v0 + 264);
  v35 = *(v0 + 272);
  v38 = *(v0 + 232);
  v37 = *(v0 + 240);
  v85 = *(v0 + 224);
  v88 = *(v0 + 200);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_226B7DCA4()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  *(*v1 + 448) = v0;

  v5 = *(v2 + 360);
  v6 = *(v2 + 352);
  if (v0)
  {
    v7 = sub_226B7E918;
  }

  else
  {
    v7 = sub_226B7DDE0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_226B7DDE0()
{
  v172 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  (*(v3 + 16))(v1, *(v0 + 232), v2);
  result = (*(v3 + 88))(v1, v2);
  if (result != *MEMORY[0x277CC7948])
  {
    if (result != *MEMORY[0x277CC7950])
    {
      v57 = *(v0 + 424);
      v58 = *(v0 + 344);
      v139 = *(v0 + 336);
      v143 = *(v0 + 384);
      v152 = *(v0 + 392);
      v157 = *(v0 + 320);
      v59 = *(v0 + 296);
      v60 = *(v0 + 304);
      v61 = *(v0 + 256);
      v162 = *(v0 + 248);
      v167 = *(v0 + 288);
      v62 = *(v0 + 232);
      v147 = *(v0 + 224);
      v64 = *(v0 + 208);
      v63 = *(v0 + 216);
      v65 = *(v0 + 120);

      v66 = *(v63 + 8);
      v66(v62, v64);
      v143(v139, v59);
      (*(v60 + 32))(v65, v157, v59);
      v66(v147, v64);
      (*(v61 + 8))(v167, v162);
LABEL_27:
      v122 = *(v0 + 328);
      v121 = *(v0 + 336);
      v124 = *(v0 + 312);
      v123 = *(v0 + 320);
      v126 = *(v0 + 280);
      v125 = *(v0 + 288);
      v128 = *(v0 + 264);
      v127 = *(v0 + 272);
      v130 = *(v0 + 232);
      v129 = *(v0 + 240);
      v165 = *(v0 + 224);
      v170 = *(v0 + 200);

      v56 = *(v0 + 8);
      goto LABEL_28;
    }

    v13 = *MEMORY[0x277D6C260];
    if (!*MEMORY[0x277D6C260])
    {
      __break(1u);
      return result;
    }

    v14 = *(v0 + 432);
    v15 = *(v0 + 344);

    v16 = v13;
    v17 = sub_226D6E3EC();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7198, &qword_226D74620);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D70840;
    *(inited + 32) = v17;
    v21 = inited + 32;
    *(inited + 40) = v19;
    *(inited + 48) = 1;
    sub_226B23CA0(inited);
    swift_setDeallocating();
    sub_226AC47B0(v21, &qword_27D7A71A0, &qword_226D74628);
    v22 = sub_226D6E2AC();

    if (v14)
    {
      v23 = *(v0 + 288);
      v24 = *(v0 + 432);
      sub_226D67F0C();
      v25 = sub_226D6E36C();

      LODWORD(v23) = TCCAccessResetForBundleIdWithOptions();

      if (v23)
      {
        v26 = *(v0 + 424);
        v27 = v22;
        v28 = *(v0 + 392);
        v29 = *(v0 + 384);
        v166 = *(v0 + 336);
        v30 = *(v0 + 320);
        v31 = *(v0 + 296);
        v32 = *(v0 + 232);
        v33 = *(v0 + 208);
        v34 = *(v0 + 216);

        (*(v34 + 8))(v32, v33);
        v29(v30, v31);
        v29(v166, v31);
LABEL_25:
        v120 = *(v0 + 376);
        v74 = *(v0 + 288);
        v75 = *(v0 + 248);
        v76 = *(v0 + 256);
        (*(v0 + 368))(*(v0 + 120), *(v0 + 488), *(v0 + 296));
        goto LABEL_26;
      }

      if (qword_28105F5D8 != -1)
      {
        swift_once();
      }

      v98 = *(v0 + 288);
      v99 = *(v0 + 272);
      v101 = *(v0 + 248);
      v100 = *(v0 + 256);
      v102 = sub_226D6E07C();
      __swift_project_value_buffer(v102, qword_28105F5E0);
      (*(v100 + 16))(v99, v98, v101);
      v103 = sub_226D6E05C();
      v141 = sub_226D6E9CC();
      v104 = os_log_type_enabled(v103, v141);
      v105 = *(v0 + 384);
      v106 = *(v0 + 336);
      v107 = *(v0 + 320);
      v164 = v107;
      v169 = *(v0 + 296);
      v108 = *(v0 + 272);
      v109 = *(v0 + 248);
      v110 = *(v0 + 256);
      v159 = *(v0 + 232);
      v111 = *(v0 + 216);
      v149 = *(v0 + 424);
      v154 = *(v0 + 208);
      if (!v104)
      {

        (*(v110 + 8))(v108, v109);
        (*(v111 + 8))(v159, v154);
        v105(v164, v169);
        v105(v106, v169);
        goto LABEL_25;
      }

      v135 = *(v0 + 400);
      v137 = *(v0 + 392);
      v112 = swift_slowAlloc();
      v145 = v22;
      v113 = swift_slowAlloc();
      v171[0] = v113;
      *v112 = 136315138;
      sub_226B80204(&qword_281062BC0, MEMORY[0x277CC7098]);
      v131 = v105;
      v133 = v106;
      v114 = sub_226D6F1CC();
      v116 = v115;
      (*(v110 + 8))(v108, v109);
      v117 = sub_226AC4530(v114, v116, v171);

      *(v112 + 4) = v117;
      _os_log_impl(&dword_226AB4000, v103, v141, "Could not reset TCC for application with bundle: %s", v112, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v113);
      MEMORY[0x22AA8BEE0](v113, -1, -1);
      MEMORY[0x22AA8BEE0](v112, -1, -1);

      (*(v111 + 8))(v159, v154);
      v118 = v169;
      v85 = v131;
      v131(v164, v169);
      v119 = v133;
    }

    else
    {
      if (qword_28105F5D8 != -1)
      {
        swift_once();
      }

      v77 = *(v0 + 288);
      v78 = *(v0 + 256);
      v79 = *(v0 + 264);
      v80 = *(v0 + 248);
      v81 = sub_226D6E07C();
      __swift_project_value_buffer(v81, qword_28105F5E0);
      (*(v78 + 16))(v79, v77, v80);
      v82 = sub_226D6E05C();
      v140 = sub_226D6E9CC();
      v83 = os_log_type_enabled(v82, v140);
      v84 = *(v0 + 392);
      v85 = *(v0 + 384);
      v86 = *(v0 + 336);
      v87 = *(v0 + 320);
      v163 = v87;
      v168 = *(v0 + 296);
      v89 = *(v0 + 256);
      v88 = *(v0 + 264);
      v90 = *(v0 + 248);
      v158 = *(v0 + 232);
      v91 = *(v0 + 216);
      v148 = *(v0 + 424);
      v153 = *(v0 + 208);
      if (v83)
      {
        v134 = *(v0 + 400);
        v136 = *(v0 + 384);
        v92 = swift_slowAlloc();
        v144 = v22;
        v93 = swift_slowAlloc();
        v171[0] = v93;
        *v92 = 136315138;
        sub_226B80204(&qword_281062BC0, MEMORY[0x277CC7098]);
        v132 = v86;
        v94 = sub_226D6F1CC();
        v96 = v95;
        (*(v89 + 8))(v88, v90);
        v97 = sub_226AC4530(v94, v96, v171);

        *(v92 + 4) = v97;
        _os_log_impl(&dword_226AB4000, v82, v140, "Trying to reset TCC for %s but finance service is not available", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v93);
        MEMORY[0x22AA8BEE0](v93, -1, -1);
        MEMORY[0x22AA8BEE0](v92, -1, -1);

        (*(v91 + 8))(v158, v153);
        v136(v163, v168);
        v136(v132, v168);
        goto LABEL_25;
      }

      (*(v89 + 8))(v88, v90);
      (*(v91 + 8))(v158, v153);
      v118 = v168;
      v85(v163, v168);
      v119 = v86;
    }

    v85(v119, v118);
    goto LABEL_25;
  }

  v5 = *(v0 + 344);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v9 = *(v0 + 200);
  v8 = *(v0 + 208);
  v10 = *(v0 + 184);
  v11 = *(v0 + 192);

  (*(v7 + 96))(v6, v8);
  (*(v11 + 32))(v9, v6, v10);
  if (sub_226D69ACC())
  {
    v12 = *(v0 + 424);

LABEL_13:
    v68 = *(v0 + 384);
    v67 = *(v0 + 392);
    v69 = *(v0 + 336);
    v70 = *(v0 + 296);
    v72 = *(v0 + 192);
    v71 = *(v0 + 200);
    v73 = *(v0 + 184);
    (*(*(v0 + 216) + 8))(*(v0 + 232), *(v0 + 208));
    v68(v69, v70);
    (*(v72 + 8))(v71, v73);
    v74 = *(v0 + 288);
    v75 = *(v0 + 248);
    v76 = *(v0 + 256);
    (*(*(v0 + 304) + 32))(*(v0 + 120), *(v0 + 320), *(v0 + 296));
LABEL_26:
    (*(v76 + 8))(v74, v75);
    goto LABEL_27;
  }

  v35 = *(v0 + 448);
  v36 = *(v0 + 288);
  v37 = *(v0 + 200);
  v39 = *(v0 + 168);
  v38 = *(v0 + 176);
  v40 = swift_task_alloc();
  v40[2] = v39;
  v40[3] = v36;
  v40[4] = v37;
  v40[5] = v38;
  sub_226D6EB8C();
  v41 = *(v0 + 424);
  v42 = *(v0 + 400);
  if (!v35)
  {

    goto LABEL_13;
  }

  v44 = *(v0 + 384);
  v43 = *(v0 + 392);
  v155 = *(v0 + 320);
  v160 = *(v0 + 336);
  v45 = *(v0 + 296);
  v150 = *(v0 + 232);
  v47 = *(v0 + 208);
  v46 = *(v0 + 216);
  v48 = *(v0 + 192);

  (*(v46 + 8))(v150, v47);
  v44(v155, v45);
  v44(v160, v45);
  v50 = *(v0 + 328);
  v49 = *(v0 + 336);
  v52 = *(v0 + 312);
  v51 = *(v0 + 320);
  v53 = *(v0 + 288);
  v138 = *(v0 + 280);
  v142 = *(v0 + 272);
  v146 = *(v0 + 264);
  v54 = *(v0 + 248);
  v55 = *(v0 + 256);
  v151 = *(v0 + 240);
  v156 = *(v0 + 232);
  v161 = *(v0 + 224);
  (*(v48 + 8))(*(v0 + 200), *(v0 + 184));
  (*(v55 + 8))(v53, v54);

  v56 = *(v0 + 8);
LABEL_28:

  return v56();
}

uint64_t sub_226B7E918()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 392);
  v3 = *(v0 + 384);
  v4 = *(v0 + 344);
  v5 = *(v0 + 320);
  v6 = *(v0 + 296);

  v3(v5, v6);
  v23 = *(v0 + 448);
  v7 = *(v0 + 392);
  v8 = *(v0 + 328);
  v10 = *(v0 + 312);
  v9 = *(v0 + 320);
  v11 = *(v0 + 288);
  v13 = *(v0 + 272);
  v12 = *(v0 + 280);
  v14 = *(v0 + 256);
  v15 = *(v0 + 248);
  v18 = *(v0 + 264);
  v19 = *(v0 + 240);
  v20 = *(v0 + 232);
  v21 = *(v0 + 224);
  v22 = *(v0 + 200);
  (*(v0 + 384))(*(v0 + 336), *(v0 + 296));
  (*(v14 + 8))(v11, v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_226B7EA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600) - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v8 = sub_226D6A5CC();
  v6[31] = v8;
  v9 = *(v8 - 8);
  v6[32] = v9;
  v10 = *(v9 + 64) + 15;
  v6[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B7EB80, 0, 0);
}

uint64_t sub_226B7EB80()
{
  v1 = *(v0 + 256);
  v40 = *(v0 + 248);
  v41 = *(v0 + 264);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v42 = *(v0 + 200);
  v43 = *(v0 + 240);
  v6 = objc_allocWithZone(MEMORY[0x277CF0B98]);
  *(v0 + 320) = v5;
  *(v0 + 328) = v4;
  *(v0 + 336) = v2;
  *(v0 + 344) = v3;
  v7 = [v6 initWithAuditToken_];
  v8 = [objc_opt_self() processHandleForAuditToken_];
  *(v0 + 272) = v8;

  v9 = sub_226D6ACEC();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_226D6ACDC();
  *(v0 + 280) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71A8, &qword_226D74630);

  v14 = sub_226D66DEC();

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71B0, &qword_226D74638);
  v16 = objc_allocWithZone(v15);
  v17 = MEMORY[0x277D85000];
  *(v16 + *((*MEMORY[0x277D85000] & *v16) + 0x60)) = 0;
  v18 = (v16 + *((*v17 & *v16) + 0x68));
  v18[3] = v13;
  v18[4] = sub_226AC4194(&qword_27D7A71B8, &qword_27D7A71A8, &qword_226D74630);
  *v18 = v14;
  *(v16 + *((*v17 & *v16) + 0x70)) = v12;
  *(v16 + *((*v17 & *v16) + 0x78)) = v8;
  *(v0 + 152) = v16;
  *(v0 + 160) = v15;

  v19 = v8;
  v20 = objc_msgSendSuper2((v0 + 152), sel_init);
  *(v0 + 288) = v20;
  *(v0 + 184) = MEMORY[0x277D84F98];
  (*(v1 + 104))(v41, *MEMORY[0x277CC7C28], v40);
  v21 = sub_226D6A5BC();
  v23 = v22;
  (*(v1 + 8))(v41, v40);
  *(v0 + 168) = v21;
  *(v0 + 176) = v23;
  v24 = MEMORY[0x277D837D0];
  sub_226D6EE8C();
  sub_226D67DFC();
  v25 = sub_226D67F1C();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 48))(v43, 1, v25);
  v28 = *(v0 + 240);
  if (v27 == 1)
  {
    sub_226AC47B0(*(v0 + 240), &qword_27D7A7180, &qword_226D74600);
    sub_226D4A15C(v0 + 16, (v0 + 88));
    sub_226AC47B0(v0 + 88, &unk_27D7A8BB0, &unk_226D74340);
    sub_226AE5030(v0 + 16);
    v29 = *(v0 + 184);
  }

  else
  {
    v30 = sub_226D67F0C();
    *(v0 + 80) = v24;
    *(v0 + 56) = v30;
    *(v0 + 64) = v31;
    (*(v26 + 8))(v28, v25);
    sub_226B24A98((v0 + 56), (v0 + 120));
    v32 = *(v0 + 184);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_226BE64DC((v0 + 120), v0 + 16, isUniquelyReferenced_nonNull_native);
    sub_226AE5030(v0 + 16);
    v29 = v32;
    *(v0 + 184) = v32;
  }

  sub_226CDA424(3, v29);

  v34 = swift_task_alloc();
  *(v0 + 296) = v34;
  *(v34 + 16) = v20;
  v35 = *(MEMORY[0x277D85A40] + 4);
  v36 = swift_task_alloc();
  *(v0 + 304) = v36;
  v37 = sub_226D69A9C();
  *v36 = v0;
  v36[1] = sub_226B7F080;
  v38 = *(v0 + 192);

  return MEMORY[0x2822008A0](v38, 0, 0, 0xD000000000000019, 0x8000000226D80CD0, sub_226B80288, v34, v37);
}

uint64_t sub_226B7F080()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v7 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = sub_226B7F228;
  }

  else
  {
    v5 = *(v2 + 296);

    v4 = sub_226B7F19C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226B7F19C()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[30];

  v6 = v0[1];

  return v6();
}

uint64_t sub_226B7F228()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];
  v6 = v0[30];

  v7 = v0[1];
  v8 = v0[39];

  return v7();
}

void sub_226B7F2C8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = sub_226D69AAC();
  FinancialDataAppPermissions.insertOrUpdateApplication(with:for:updateSharingStartDate:in:)(a2, v8, 1, a4);

  if (!v4)
  {
    v9 = sub_226D69ABC();
    v10 = sub_226C3F420(a2, v9, 1, a4);
    v11 = *(*(a1 + 16) + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsLock);
    MEMORY[0x28223BE20](v10);
    os_unfair_lock_lock((v11 + 24));
    sub_226B8024C((v11 + 16));
    os_unfair_lock_unlock((v11 + 24));

    v16[0] = 0;
    if ([a4 save_])
    {
      v12 = v16[0];
      v13 = *MEMORY[0x277D85DE8];
      return;
    }

    v14 = v16[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_226B7F494(uint64_t a1, uint64_t a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  sub_226D683BC();
  sub_226C1DE60(a2, a3);
  if (!v3)
  {
    v8 = *(*(a1 + 16) + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsLock);
    MEMORY[0x28223BE20](v7);
    os_unfair_lock_lock((v8 + 24));
    sub_226B80290((v8 + 16));
    os_unfair_lock_unlock((v8 + 24));
    v13[0] = 0;
    if ([a3 save_])
    {
      v9 = v13[0];
      v10 = *MEMORY[0x277D85DE8];
      return;
    }

    v11 = v13[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226B7F5FC()
{

  sub_226D6B35C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71C0, &unk_226D74640);
  sub_226AC4194(&qword_27D7A71C8, &qword_27D7A71C0, &unk_226D74640);
  return sub_226D66E2C();
}

void sub_226B7F6A4(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v4 = sub_226D6D1AC();
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  if (!*MEMORY[0x277D6C0D0])
  {
    __break(1u);
    goto LABEL_34;
  }

  v14 = *a1;
  v15 = *MEMORY[0x277D6C0D0];
  v16 = [v14 __swift_objectForKeyedSubscript_];

  if (v16)
  {
    sub_226D6ED0C();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44[0] = v42;
  v44[1] = v43;
  if (!*(&v43 + 1))
  {
    sub_226AC47B0(v44, &unk_27D7A8BB0, &unk_226D74340);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0 || v45 != 1)
  {
    goto LABEL_17;
  }

  if (!*MEMORY[0x277D6C0C8])
  {
LABEL_34:
    __break(1u);
    return;
  }

  v17 = *MEMORY[0x277D6C0C8];
  v18 = [v14 __swift_objectForKeyedSubscript_];

  if (!v18)
  {
LABEL_17:
    v28 = v41;
    *v41 = 0;
    v28[1] = 0;
    return;
  }

  sub_226D6ED0C();
  swift_unknownObjectRelease();
  sub_226B24A98(&v42, v44);
  sub_226AC4708(v44, &v42);
  type metadata accessor for CFBundle(0);
  swift_dynamicCast();
  v19 = v45;
  v20 = CFBundleCopyBundleURL(v19);
  if (!v20)
  {
    v29 = CFBundleGetIdentifier(v19);

    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    if (v29)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v42 = 0uLL;
        sub_226D6E38C();

        v30 = *(&v42 + 1);
        if (*(&v42 + 1))
        {
          v31 = v41;
          *v41 = v42;
          v31[1] = v30;
          return;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    goto LABEL_17;
  }

  v21 = v20;
  sub_226D6D14C();

  v22 = v40;
  (*(v40 + 32))(v13, v11, v4);
  (*(v22 + 16))(v8, v13, v4);
  v23 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v24 = sub_226B7FB54(v8, 0);
  if (v2)
  {
    v25 = CFBundleGetIdentifier(v19);

    (*(v22 + 8))(v13, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    if (v25)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v42 = 0uLL;
        sub_226D6E38C();

        v26 = *(&v42 + 1);
        if (*(&v42 + 1))
        {
          v27 = v41;
          *v41 = v42;
          v27[1] = v26;
          return;
        }

        goto LABEL_29;
      }
    }

    else
    {
    }

LABEL_29:
    v38 = v41;
    *v41 = 0;
    v38[1] = 0;
    return;
  }

  v32 = v24;

  v33 = [v32 bundleIdentifier];
  if (v33)
  {
    v34 = v33;
    v35 = sub_226D6E39C();
    v37 = v36;

    v22 = v40;
  }

  else
  {

    v35 = 0;
    v37 = 0;
  }

  (*(v22 + 8))(v13, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  v39 = v41;
  *v41 = v35;
  v39[1] = v37;
}

id sub_226B7FB54(uint64_t a1, char a2)
{
  v3 = v2;
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = sub_226D6D0DC();
  v16[0] = 0;
  v7 = [v3 initWithURL:v6 allowPlaceholder:a2 & 1 error:v16];

  v8 = v16[0];
  if (v7)
  {
    v9 = sub_226D6D1AC();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v16[0];
    sub_226D6D04C();

    swift_willThrow();
    v13 = sub_226D6D1AC();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226B7FCC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7170, &qword_226D74560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_226B7FDC0(uint64_t isUniquelyReferenced_nonNull_native)
{
  if (qword_27D7A5ED0 != -1)
  {
    goto LABEL_25;
  }

  while (qword_27D7B61D0)
  {
    v34 = isUniquelyReferenced_nonNull_native;
    v1 = qword_27D7B61D0;
    v2 = TCCAccessCopyInformation();
    isUniquelyReferenced_nonNull_native = v1;
    if (!v2)
    {
      goto LABEL_42;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      isUniquelyReferenced_nonNull_native = v2;
LABEL_42:
      v35 = isUniquelyReferenced_nonNull_native;

      return;
    }

    v36 = 0;
    sub_226AE59B4(0, &qword_27D7A7178, 0x277CBEAC0);
    sub_226D6E5DC();

    v3 = v36;
    isUniquelyReferenced_nonNull_native = v1;
    if (!v36)
    {
      goto LABEL_42;
    }

    v4 = v36 & 0xFFFFFFFFFFFFFF8;
    if (v36 >> 62)
    {
      isUniquelyReferenced_nonNull_native = sub_226D6EDFC();
      v5 = isUniquelyReferenced_nonNull_native;
      v33 = v1;
      if (!isUniquelyReferenced_nonNull_native)
      {
LABEL_27:
        v7 = MEMORY[0x277D84F90];
LABEL_28:

        v16 = sub_226AE3C28(v7);

        v17 = v34[3];
        v18 = v34[4];
        __swift_project_boxed_opaque_existential_1(v34, v17);
        v19 = (*(v18 + 16))(v17, v18);
        v20 = sub_226AE3C28(v19);

        if (*(v20 + 16) <= *(v16 + 16) >> 3)
        {
          v36 = v16;
          sub_226D53D38(v20);

          v21 = v36;
        }

        else
        {
          v21 = sub_226D549F0(v20, v16);
        }

        v1 = v33;
        v22 = 0;
        v23 = 1 << *(v21 + 32);
        v24 = -1;
        if (v23 < 64)
        {
          v24 = ~(-1 << v23);
        }

        v25 = v24 & *(v21 + 56);
        v26 = (v23 + 63) >> 6;
        while (v25)
        {
          v27 = v22;
LABEL_39:
          v28 = __clz(__rbit64(v25));
          v25 &= v25 - 1;
          v29 = (*(v21 + 48) + ((v27 << 10) | (16 * v28)));
          v30 = *v29;
          v31 = v29[1];

          v32 = sub_226D6E36C();

          TCCAccessSetForBundleId();
        }

        while (1)
        {
          v27 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v27 >= v26)
          {

            isUniquelyReferenced_nonNull_native = v33;
            goto LABEL_42;
          }

          v25 = *(v21 + 56 + 8 * v27);
          ++v22;
          if (v25)
          {
            v22 = v27;
            goto LABEL_39;
          }
        }

        __break(1u);
        return;
      }
    }

    else
    {
      v5 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v33 = v1;
      if (!v5)
      {
        goto LABEL_27;
      }
    }

    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x22AA8AFD0](v6, v3);
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_24;
        }

        isUniquelyReferenced_nonNull_native = *(v3 + 8 * v6 + 32);
      }

      v9 = isUniquelyReferenced_nonNull_native;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v38 = isUniquelyReferenced_nonNull_native;
      sub_226B7F6A4(&v38, &v36);

      v11 = v37;
      if (v37)
      {
        v12 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_226BBAB0C(0, *(v7 + 16) + 1, 1, v7);
          v7 = isUniquelyReferenced_nonNull_native;
        }

        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        if (v14 >= v13 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_226BBAB0C((v13 > 1), v14 + 1, 1, v7);
          v7 = isUniquelyReferenced_nonNull_native;
        }

        *(v7 + 16) = v14 + 1;
        v8 = v7 + 16 * v14;
        *(v8 + 32) = v12;
        *(v8 + 40) = v11;
        v4 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      ++v6;
      if (v10 == v5)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v15 = isUniquelyReferenced_nonNull_native;
    swift_once();
    isUniquelyReferenced_nonNull_native = v15;
  }
}

uint64_t sub_226B80204(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_226B802AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 320);
  FinancialDataAppPermissions.insertOrUpdateApplication(with:for:updateSharingStartDate:in:)(a2, a3, a4, a5);
  if (!v5)
  {
    v12[0] = 0;
    if ([a5 save_])
    {
      v8 = v12[0];
      v9 = *MEMORY[0x277D85DE8];
      return;
    }

    v10 = v12[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_226B80388(uint64_t a1, uint64_t a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 320);
  sub_226D683BC();
  sub_226C1DE60(a2, a3);
  if (!v3)
  {
    v8 = *(*(v6 + 16) + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsLock);
    MEMORY[0x28223BE20](v7);
    os_unfair_lock_lock((v8 + 24));
    sub_226B80290((v8 + 16));
    os_unfair_lock_unlock((v8 + 24));
    v13[0] = 0;
    if ([a3 save_])
    {
      v9 = v13[0];
      v10 = *MEMORY[0x277D85DE8];
      return;
    }

    v11 = v13[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_226B804F0(uint64_t a1, void *a2, uint64_t a3, char a4, void *a5)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 320);
  v8 = sub_226C3F420(a2, a3, a4, a5);
  if (!v5)
  {
    v9 = *(*(v7 + 16) + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsLock);
    MEMORY[0x28223BE20](v8);
    os_unfair_lock_lock((v9 + 24));
    sub_226B8024C((v9 + 16));
    os_unfair_lock_unlock((v9 + 24));
    v14[0] = 0;
    if ([a5 save_])
    {
      v10 = v14[0];
      v11 = *MEMORY[0x277D85DE8];
      return;
    }

    v12 = v14[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226B80654(uint64_t a1, uint64_t a2)
{
  v2[20] = a2;
  v3 = type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError();
  v2[21] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B806E8, 0, 0);
}

uint64_t sub_226B806E8()
{
  v22 = v0;
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  v0[23] = __swift_project_value_buffer(v1, qword_28105F668);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_226AC4530(0xD000000000000022, 0x8000000226D80440, &v21);
    _os_log_impl(&dword_226AB4000, v2, v3, "Performing task: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  sub_226AE532C(v0[20], (v0 + 9));
  v6 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 9), v6);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v0[24] = v9;
  (*(v7 + 16))();
  v0[17] = &type metadata for BankConnectEnvironmentImplementation;
  v10 = sub_226B6A16C();
  v0[18] = v10;
  v11 = swift_allocObject();
  v0[14] = v11;
  memcpy((v11 + 16), v9, 0x3B0uLL);
  type metadata accessor for OfflineLabSystemTask();
  inited = swift_initStackObject();
  v0[25] = inited;
  v13 = v0[17];
  v14 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 14), v13);
  v15 = *(v13 - 8);
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  (*(v15 + 16))(v17, v14, v13);
  inited[5] = &type metadata for BankConnectEnvironmentImplementation;
  inited[6] = v10;
  v18 = swift_allocObject();
  inited[2] = v18;
  memcpy((v18 + 16), v17, 0x3B0uLL);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  v19 = swift_task_alloc();
  v0[26] = v19;
  *v19 = v0;
  v19[1] = sub_226B80A50;

  return sub_226B80F9C();
}

uint64_t sub_226B80A50()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_226B80CDC;
  }

  else
  {
    v3 = sub_226B80B64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B80B64()
{
  v13 = v0;
  v1 = v0[23];
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[24];
  v6 = v0[25];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_226AC4530(0xD000000000000022, 0x8000000226D80440, &v12);
    _os_log_impl(&dword_226AB4000, v2, v3, "Completed offline lab system task: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0Tm((v6 + 16));
  }

  else
  {

    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0Tm((v6 + 16));
  }

  v9 = v0[22];

  v10 = v0[1];

  return v10();
}

uint64_t sub_226B80CDC()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));

  *(v0 + 152) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = *(v0 + 176);
  v8 = sub_226D6D1AC();
  if ((*(*(v8 - 8) + 48))(v7, 3, v8) != 3)
  {
    sub_226B82ED0(v7, type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError);
LABEL_7:
    v13 = *(v0 + 216);
    v14 = *(v0 + 184);

    v15 = v13;
    v16 = sub_226D6E05C();
    v17 = sub_226D6E9CC();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 216);
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v19;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_226AB4000, v16, v17, "Error completing offline lab system task. Error: %@", v20, 0xCu);
      sub_226AC47B0(v21, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v21, -1, -1);
      MEMORY[0x22AA8BEE0](v20, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  v9 = *(v0 + 184);

  v10 = sub_226D6E05C();
  v11 = sub_226D6E9EC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_226AB4000, v10, v11, "Offline lab system task exited due to no permission", v12, 2u);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

LABEL_10:
  v24 = *(v0 + 176);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_226B80F9C()
{
  v1[14] = v0;
  v2 = sub_226D6C84C();
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();
  v5 = sub_226D6D09C();
  v1[18] = v5;
  v6 = *(v5 - 8);
  v1[19] = v6;
  v7 = *(v6 + 64) + 15;
  v1[20] = swift_task_alloc();
  v8 = sub_226D6D1AC();
  v1[21] = v8;
  v9 = *(v8 - 8);
  v1[22] = v9;
  v10 = *(v9 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71D0, &qword_226D76660) - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v12 = sub_226D6D52C();
  v1[26] = v12;
  v13 = *(v12 - 8);
  v1[27] = v13;
  v14 = *(v13 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v15 = sub_226D692FC();
  v1[31] = v15;
  v16 = *(v15 - 8);
  v1[32] = v16;
  v17 = *(v16 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B81234, 0, 0);
}

uint64_t sub_226B81234()
{
  v104 = v0;
  v1 = *(v0 + 112);
  v2 = __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_226B82E60((v2 + 88), v0 + 56);
  if (!*(v0 + 80))
  {
    v4 = *(v0 + 168);
    v5 = *(v0 + 176);
    sub_226AC47B0(v0 + 56, &qword_27D7A7048, &qword_226D74690);
    type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError();
    sub_226B83618(&qword_27D7A71D8, type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError);
    swift_allocError();
    (*(v5 + 56))(v6, 1, 3, v4);
    swift_willThrow();
LABEL_10:
    v23 = *(v0 + 264);
    v22 = *(v0 + 272);
    v25 = *(v0 + 232);
    v24 = *(v0 + 240);
    v26 = *(v0 + 224);
    v28 = *(v0 + 192);
    v27 = *(v0 + 200);
    v29 = *(v0 + 184);
    v30 = *(v0 + 160);
    v31 = *(v0 + 136);

    v32 = *(v0 + 8);
LABEL_11:

    return v32();
  }

  v3 = *(v0 + 272);
  sub_226AC484C((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_226BE2CD0(v3);
  v8 = *(v0 + 264);
  v7 = *(v0 + 272);
  v9 = *(v0 + 248);
  v10 = *(v0 + 256);
  (*(v10 + 104))(v8, *MEMORY[0x277CC7870], v9);
  v11 = sub_226D692EC();
  v12 = *(v10 + 8);
  v12(v8, v9);
  v12(v7, v9);
  if ((v11 & 1) == 0)
  {
    v19 = *(v0 + 168);
    v20 = *(v0 + 176);
    type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError();
    sub_226B83618(&qword_27D7A71D8, type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError);
    swift_allocError();
    (*(v20 + 56))(v21, 3, 3, v19);
    goto LABEL_8;
  }

  v13 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OfflineLabConfigurationManager.userItem.getter(v13);
  v14 = *(v0 + 200);
  v15 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    sub_226AC47B0(v14, &qword_27D7A71D0, &qword_226D76660);
    type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError();
    sub_226B83618(&qword_27D7A71D8, type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError);
    swift_allocError();
    (*(v16 + 56))(v18, 2, 3, v17);
LABEL_8:
    swift_willThrow();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    goto LABEL_10;
  }

  v35 = *(v0 + 232);
  v34 = *(v0 + 240);
  v36 = *(v0 + 208);
  v37 = *(v0 + 216);
  v38 = *(v37 + 16);
  v38(v35, v14 + *(v15 + 20), v36);
  sub_226B82ED0(v14, type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem);
  (*(v37 + 32))(v34, v35, v36);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v87 = v38;
  sub_226BE49B4();
  v39 = *(v0 + 216);
  v40 = *(v0 + 224);
  v41 = *(v0 + 208);
  v42 = *(v0 + 184);
  v94 = *(v0 + 192);
  v97 = *(v0 + 176);
  v100 = *(v0 + 168);
  v43 = *(v0 + 152);
  v90 = *(v0 + 160);
  v92 = *(v0 + 144);
  v44 = [objc_opt_self() defaultManager];
  v45 = [v44 temporaryDirectory];

  sub_226D6D14C();
  *&v102[0] = 0x4C656E696C66666FLL;
  *(&v102[0] + 1) = 0xEB000000002E6261;
  sub_226D6D51C();
  sub_226B83618(&qword_27D7A6648, MEMORY[0x277CC95F0]);
  v46 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v46);

  v47 = *(v39 + 8);
  *(v0 + 280) = v47;
  *(v0 + 288) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v47(v40, v41);
  v48 = *(&v102[0] + 1);
  *(v0 + 96) = *&v102[0];
  *(v0 + 104) = v48;
  (*(v43 + 104))(v90, *MEMORY[0x277CC91D8], v92);
  sub_226AEEF6C();
  sub_226D6D19C();
  (*(v43 + 8))(v90, v92);

  v49 = *(v97 + 8);
  *(v0 + 296) = v49;
  *(v0 + 304) = (v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v49(v42, v100);
  v50 = *__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v51 = sub_226D676AC();
  v103 = 0;
  memset(v102, 0, sizeof(v102));
  sub_226C614FC(v51, v102);
  v52 = sub_226C5EA88(v94);
  *(v0 + 312) = v52;
  v53 = v52;
  v98 = v47;

  if (!v53[2])
  {

    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v69 = sub_226D6E07C();
    __swift_project_value_buffer(v69, qword_28105F668);
    v70 = sub_226D6E05C();
    v71 = sub_226D6E9AC();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_226AB4000, v70, v71, "Nothing to upload. Returning.", v72, 2u);
      MEMORY[0x22AA8BEE0](v72, -1, -1);
    }

    v73 = *(v0 + 296);
    v74 = *(v0 + 304);
    v75 = *(v0 + 280);
    v76 = *(v0 + 288);
    v77 = *(v0 + 272);
    v78 = *(v0 + 240);
    v88 = *(v0 + 264);
    v89 = *(v0 + 232);
    v79 = *(v0 + 208);
    v91 = *(v0 + 224);
    v93 = *(v0 + 200);
    v80 = *(v0 + 192);
    v81 = *(v0 + 168);
    v95 = *(v0 + 184);
    v99 = *(v0 + 160);
    v101 = *(v0 + 136);
    sub_226B82F30(v80);
    v73(v80, v81);
    v75(v78, v79);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v32 = *(v0 + 8);
    goto LABEL_11;
  }

  v54 = *(v0 + 192);
  v55 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
  v56 = sub_226D6D0DC();
  v57 = [v55 initWithURL_];
  *(v0 + 320) = v57;

  v58 = *(v0 + 240);
  if (!v57)
  {
    v96 = *(v0 + 208);
    v82 = *(v0 + 192);
    v83 = *(v0 + 168);
    v84 = *(v0 + 176);

    type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError();
    sub_226B83618(&qword_27D7A71D8, type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError);
    swift_allocError();
    v86 = v85;
    (*(v84 + 16))(v85, v82, v83);
    (*(v84 + 56))(v86, 0, 3, v83);
    swift_willThrow();
    sub_226B82F30(v82);
    v49(v82, v83);
    v98(v58, v96);
    goto LABEL_9;
  }

  v59 = *(v0 + 136);
  v60 = *(v0 + 112);
  v87(*(v0 + 224), *(v0 + 240), *(v0 + 208));
  v61 = v57;
  sub_226D6C83C();
  v62 = __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v63 = v62[5];
  __swift_project_boxed_opaque_existential_1(v62 + 1, v62[4]);
  v64 = sub_226D6C2AC();
  *(v0 + 328) = v64;
  v65 = swift_task_alloc();
  *(v0 + 336) = v65;
  v65[2] = v60;
  v65[3] = v64;
  v65[4] = v59;
  v65[5] = v53;
  v66 = *(MEMORY[0x277CC7D90] + 4);
  v67 = swift_task_alloc();
  *(v0 + 344) = v67;
  *v67 = v0;
  v67[1] = sub_226B81D18;
  v68 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282119B28](v67, &unk_226D746A0, v65, v68);
}

uint64_t sub_226B81D18()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v8 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_226B81F98;
  }

  else
  {
    v5 = *(v2 + 336);
    v6 = *(v2 + 312);

    v4 = sub_226B81E40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226B81E40()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 296);
  v6 = *(v0 + 304);
  v7 = *(v0 + 280);
  v8 = *(v0 + 288);
  v9 = *(v0 + 272);
  v10 = *(v0 + 240);
  v16 = *(v0 + 264);
  v17 = *(v0 + 232);
  v11 = *(v0 + 208);
  v18 = *(v0 + 224);
  v19 = *(v0 + 200);
  v12 = *(v0 + 192);
  v13 = *(v0 + 168);
  v20 = *(v0 + 184);
  v21 = *(v0 + 160);
  v22 = *(v0 + 136);
  sub_226B82F30(v12);
  v5(v12, v13);
  v7(v10, v11);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_226B81F98()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 312);
  v23 = *(v0 + 296);
  v24 = *(v0 + 304);
  v25 = *(v0 + 280);
  v26 = *(v0 + 288);
  v22 = *(v0 + 240);
  v4 = *(v0 + 208);
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);
  v7 = *(v0 + 128);
  v8 = *(v0 + 136);
  v9 = *(v0 + 120);

  (*(v7 + 8))(v8, v9);
  sub_226B82F30(v5);
  v23(v5, v6);
  v25(v22, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v27 = *(v0 + 352);
  v11 = *(v0 + 264);
  v10 = *(v0 + 272);
  v13 = *(v0 + 232);
  v12 = *(v0 + 240);
  v14 = *(v0 + 224);
  v16 = *(v0 + 192);
  v15 = *(v0 + 200);
  v17 = *(v0 + 184);
  v18 = *(v0 + 160);
  v19 = *(v0 + 136);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_226B8211C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  return MEMORY[0x2822009F8](sub_226B82140, 0, 0);
}

uint64_t sub_226B82140()
{
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  v0[6] = __swift_project_value_buffer(v1, qword_28105F668);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Preparing to upload offline lab data", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = *(MEMORY[0x277CC7D78] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226B82298;
  v8 = v0[3];
  v7 = v0[4];

  return MEMORY[0x282119B10](v7);
}

uint64_t sub_226B82298()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_226B82490;
  }

  else
  {
    v3 = sub_226B823AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B823AC()
{
  v1 = v0[6];
  v2 = v0[2];
  sub_226B82600(1, v0[5]);
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_226AB4000, v3, v4, "Finished upload successfully", v5, 2u);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_226B82490()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_226AB4000, v4, v5, "Error uploading offline lab data: %@", v7, 0xCu);
    sub_226AC47B0(v8, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v11 = v0[8];
  v12 = v0[5];
  v13 = v0[2];

  sub_226B82600(0, v12);
  swift_willThrow();
  v14 = v0[1];
  v15 = v0[8];

  return v14();
}

uint64_t sub_226B82600(char a1, uint64_t a2)
{
  v5 = sub_226D6E07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *__swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v11 = sub_226D676AC();
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_28105F668);
  v13 = (*(v6 + 16))(v9, v12, v5);
  MEMORY[0x28223BE20](v13);
  *&v15[-32] = a2;
  *&v15[-24] = v11;
  *&v15[-16] = v9;
  v15[-8] = a1 & 1;
  sub_226D6EB7C();

  return (*(v6 + 8))(v9, v5);
}

uint64_t type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError()
{
  result = qword_27D7A71E0;
  if (!qword_27D7A71E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_226B8294C(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v53 = a4;
  v48 = a3;
  v58 = a2;
  v59[1] = *MEMORY[0x277D85DE8];
  v52 = sub_226D6D4AC();
  v6 = *(v52 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6B9BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = *(a1 + 16);
  if (v16)
  {
    v47 = v13;
    v17 = *(type metadata accessor for OfflineLabAccountInfo() - 8);
    v19 = *(v10 + 16);
    v18 = v10 + 16;
    v50 = (v6 + 8);
    v56 = (v18 - 8);
    v57 = v19;
    v20 = (a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)));
    v54 = *(v17 + 72);
    *&v21 = 136315138;
    v42 = v21;
    v55 = v18;
    v49 = v9;
    v19(v15, v20, v9);
    while (1)
    {
      sub_226D69F0C();
      v23 = sub_226D69D9C();
      if (v4)
      {
        break;
      }

      v24 = v23;
      if (v23)
      {
        sub_226D681FC();
        v22 = v51;
        sub_226D6D46C();
        sub_226D681EC();

        (*v50)(v22, v52);
        (*v56)(v15, v9);
      }

      else
      {
        v25 = v47;
        v57(v47, v15, v9);
        v26 = sub_226D6E05C();
        v27 = sub_226D6E9CC();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v45 = v28;
          v46 = swift_slowAlloc();
          v59[0] = v46;
          *v28 = v42;
          sub_226B83618(&qword_27D7A6E40, MEMORY[0x277CC8058]);
          v44 = v27;
          v29 = sub_226D6F1CC();
          v31 = v30;
          v32 = *v56;
          v43 = v26;
          v32(v25, v49);
          v33 = sub_226AC4530(v29, v31, v59);

          v34 = v45;
          *(v45 + 1) = v33;
          v35 = v43;
          v36 = v34;
          _os_log_impl(&dword_226AB4000, v43, v44, "Account with ID %s not found.", v34, 0xCu);
          v37 = v46;
          __swift_destroy_boxed_opaque_existential_0Tm(v46);
          MEMORY[0x22AA8BEE0](v37, -1, -1);
          MEMORY[0x22AA8BEE0](v36, -1, -1);

          v32(v15, v49);
          v9 = v49;
        }

        else
        {

          v38 = *v56;
          (*v56)(v25, v9);
          v38(v15, v9);
        }
      }

      v20 += v54;
      if (!--v16)
      {
        goto LABEL_11;
      }

      v57(v15, v20, v9);
    }

    result = (*v56)(v15, v9);
  }

  else
  {
LABEL_11:
    v59[0] = 0;
    if ([v58 save_])
    {
      result = v59[0];
    }

    else
    {
      v40 = v59[0];
      sub_226D6D04C();

      result = swift_willThrow();
    }
  }

  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226B82E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7048, &qword_226D74690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B82ED0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226B82F30(uint64_t a1)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v2 = sub_226D6D1AC();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v10 = sub_226D6E07C();
  v11 = __swift_project_value_buffer(v10, qword_28105F668);
  v12 = v3[2];
  v53 = a1;
  v50 = v12;
  v12(v9, a1, v2);
  v52 = v11;
  v13 = sub_226D6E05C();
  v14 = sub_226D6E9AC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v49 = v7;
    v16 = v3;
    v17 = v15;
    v18 = swift_slowAlloc();
    v54[0] = v18;
    *v17 = 136315138;
    sub_226B83618(&qword_27D7A7018, MEMORY[0x277CC9260]);
    v19 = sub_226D6F1CC();
    v21 = v20;
    v51 = v16[1];
    v51(v9, v2);
    v22 = sub_226AC4530(v19, v21, v54);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_226AB4000, v13, v14, "Finished. Removing output data file: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x22AA8BEE0](v18, -1, -1);
    v7 = v49;
    MEMORY[0x22AA8BEE0](v17, -1, -1);
  }

  else
  {

    v51 = v3[1];
    v51(v9, v2);
  }

  v23 = objc_opt_self();
  v24 = [v23 defaultManager];
  v25 = v53;
  sub_226D6D16C();
  v26 = sub_226D6E36C();

  v27 = [v24 fileExistsAtPath_];

  if (!v27)
  {
    v34 = sub_226D6E05C();
    v35 = sub_226D6E9AC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_226AB4000, v34, v35, "Not removing output data file because it does not exist.", v36, 2u);
      MEMORY[0x22AA8BEE0](v36, -1, -1);
    }

    goto LABEL_14;
  }

  v28 = [v23 defaultManager];
  v29 = sub_226D6D0DC();
  v54[0] = 0;
  v30 = [v28 removeItemAtURL:v29 error:v54];

  v31 = v54[0];
  if (!v30)
  {
    v49 = v54[0];
    v38 = v54[0];
    v39 = sub_226D6D04C();

    swift_willThrow();
    v50(v7, v25, v2);
    v40 = sub_226D6E05C();
    v41 = sub_226D6E9DC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = v7;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v54[0] = v44;
      *v43 = 136315138;
      sub_226B83618(&qword_27D7A7018, MEMORY[0x277CC9260]);
      v45 = sub_226D6F1CC();
      v47 = v46;
      v51(v42, v2);
      v48 = sub_226AC4530(v45, v47, v54);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_226AB4000, v40, v41, "Unable to remove lab output file at: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x22AA8BEE0](v44, -1, -1);
      MEMORY[0x22AA8BEE0](v43, -1, -1);
    }

    else
    {

      v51(v7, v2);
    }

LABEL_14:
    v37 = *MEMORY[0x277D85DE8];
    return;
  }

  v32 = *MEMORY[0x277D85DE8];

  v33 = v31;
}

uint64_t sub_226B83534(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226AD827C;

  return sub_226B8211C(a1, v4, v5, v7, v6);
}

uint64_t sub_226B83618(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226B83688()
{
  v0 = sub_226D6D1AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_226B836E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  sub_226AE532C(a1, v9);
  sub_226D6704C();
  sub_226D6701C();
  v6 = *MEMORY[0x277D38658];
  sub_226D6E39C();
  v10 = 0;
  sub_226AE532C(a2, v9);
  v7 = a3 + *(_s21NotificationSchedulerVMa() + 20);
  sub_226D6701C();
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_226B837F4(void (**a1)(uint64_t, char *, uint64_t), void *a2, uint64_t a3)
{
  v250 = a3;
  v256 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v233 = &v223 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v232 = &v223 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6678, &unk_226D71890);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v231 = &v223 - v12;
  v239 = _s21NotificationFormatterV16FulfillmentInputVMa(0);
  v13 = *(*(v239 - 8) + 64);
  MEMORY[0x28223BE20](v239);
  v234 = (&v223 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6688, &unk_226D718A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v244 = &v223 - v17;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A30, &qword_226D738B0);
  v248 = *(v241 - 8);
  v18 = *(v248 + 64);
  v19 = MEMORY[0x28223BE20](v241 - 8);
  v255 = &v223 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v247 = &v223 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F20, &qword_226D738B8);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v223 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v223 - v27;
  v228 = sub_226D6D52C();
  v246 = *(v228 - 8);
  v29 = *(v246 + 64);
  MEMORY[0x28223BE20](v228);
  v227 = &v223 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = sub_226D6D1AC();
  v230 = *(v226 - 8);
  v31 = *(v230 + 64);
  MEMORY[0x28223BE20](v226);
  v225 = &v223 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = _s34NotificationOrderStatusFormatStyleVMa(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v249 = &v223 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_226D6D71C();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v238 = &v223 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_226D6D6DC();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v237 = &v223 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_226D6D5DC();
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v236 = &v223 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = _s21NotificationFormatterVMa(0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v235 = &v223 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = _s21NotificationFormatterV16OrderStatusInputVMa(0);
  v48 = *(*(v245 - 8) + 64);
  MEMORY[0x28223BE20](v245);
  v251 = &v223 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_226D677FC();
  v258 = *(v50 - 8);
  v259 = v50;
  v51 = *(v258 + 64);
  MEMORY[0x28223BE20](v50);
  v252 = &v223 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6690, &qword_226D74720);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v56 = &v223 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71F0, &qword_226D74728);
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  v257 = &v223 - v60;
  v61 = sub_226D6D4AC();
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  v65 = &v223 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = [a2 notificationsEnabled];
  v253 = v26;
  v254 = v28;
  if (v66)
  {
    v67 = [a2 isMarkedAsComplete];
  }

  else
  {
    v67 = 1;
  }

  v68 = *(_s21NotificationSchedulerVMa() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
  sub_226D66FEC();
  result = MEMORY[0x277D84F90];
  if (v261 & 1) != 0 || (v67)
  {
    return result;
  }

  sub_226D66FEC();
  v240 = a2;
  if (v261)
  {
    v70 = v241;
    v71 = v258;
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v72 = sub_226D6E07C();
    __swift_project_value_buffer(v72, qword_28105F6A8);
    v73 = sub_226D6E05C();
    v74 = sub_226D6E9EC();
    v75 = os_log_type_enabled(v73, v74);
    v77 = v256;
    v76 = v257;
    if (v75)
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_226AB4000, v73, v74, "allowOldExtractedOrderNotifications overriden, scheduling notifications for old emails as well.", v78, 2u);
      MEMORY[0x22AA8BEE0](v78, -1, -1);
    }

    v79 = v259;
  }

  else
  {
    v80 = [a2 orderContent];
    v81 = [v80 orderUpdateDate];

    sub_226D6D45C();
    sub_226D6D3BC();
    v82 = v241;
    v71 = v258;
    v79 = v259;
    if (v83 > 604800.0)
    {
      v84 = sub_226D6D48C();
      v86 = v85;
      if (qword_28105F6A0 != -1)
      {
        swift_once();
      }

      v87 = sub_226D6E07C();
      __swift_project_value_buffer(v87, qword_28105F6A8);

      v88 = sub_226D6E05C();
      v89 = sub_226D6E9CC();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v261 = v91;
        *v90 = 136315138;
        v92 = sub_226AC4530(v84, v86, &v261);

        *(v90 + 4) = v92;
        _os_log_impl(&dword_226AB4000, v88, v89, "Extracted order update date %s is older than 7 days, skipping scheduling notifications.", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v91);
        MEMORY[0x22AA8BEE0](v91, -1, -1);
        MEMORY[0x22AA8BEE0](v90, -1, -1);
      }

      else
      {
      }

      (*(v62 + 8))(v65, v61);
      return MEMORY[0x277D84F90];
    }

    (*(v62 + 8))(v65, v61);
    v77 = v256;
    v76 = v257;
    v70 = v82;
  }

  v261 = MEMORY[0x277D84F90];
  v93 = _s7ChangesVMa(0);
  (*(v58 + 16))(v76, v77 + v93[5], v57);
  v94 = (*(v58 + 88))(v76, v57);
  LODWORD(v250) = *MEMORY[0x277CC8590];
  if (v94 != v250)
  {
    v99 = v255;
    if (v94 != *MEMORY[0x277CC8598])
    {
      result = sub_226D6F0AC();
      __break(1u);
      return result;
    }

    v229 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v260 = v93;
  (*(v58 + 96))(v76, v57);
  v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7200, &qword_226D74738) + 48);
  v96 = *(v71 + 48);
  v97 = v96(v76, 1, v79);
  v98 = v252;
  if (v97 != 1 || v96(v95 + v76, 1, v79) == 1)
  {
    goto LABEL_29;
  }

  sub_226B85788(v95 + v76, v56);
  if ((*(v71 + 88))(v56, v79) != *MEMORY[0x277CC6DE0])
  {
    (*(v71 + 8))(v56, v79);
    goto LABEL_29;
  }

  if ((sub_226D208E8() & 1) == 0)
  {
LABEL_29:
    v243 = v95;
    v100 = v240;
    v101 = [v240 orderContent];
    v102 = [v101 merchantDisplayName];

    v103 = sub_226D6E39C();
    v105 = v104;

    v106 = [v100 orderContent];
    sub_226D6B2EC();

    v107 = v251;
    (*(v71 + 16))(v251 + *(v245 + 20), v98, v79);
    *v107 = v103;
    *(v107 + 8) = v105;
    sub_226D6D56C();
    sub_226D6D66C();
    sub_226D6D70C();
    v108 = v235;
    sub_226D69B5C();
    v109 = sub_226D69B8C();
    v110 = v249;
    (*(*(v109 - 8) + 16))(v249, v108, v109);
    sub_226C4DB20(v107);
    v112 = v111;
    sub_226B85728(v110, _s34NotificationOrderStatusFormatStyleVMa);
    sub_226B85728(v108, _s21NotificationFormatterVMa);
    if (v112)
    {
      v113 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
      v114 = sub_226D6E36C();
      [v113 setTitle_];

      v115 = sub_226D6E36C();
      [v113 setBody_];

      [v113 setInterruptionLevel_];
      v116 = [v100 trackedOrderIdentifier];
      [v113 setThreadIdentifier_];

      v117 = [v100 trackedOrderIdentifier];
      sub_226D6E39C();

      v118 = v225;
      sub_226D66DAC();

      v119 = sub_226D6D0DC();
      (*(v230 + 8))(v118, v226);
      [v113 setDefaultActionURL_];

      v120 = v227;
      sub_226D6D51C();
      sub_226D6D4CC();
      (*(v246 + 8))(v120, v228);
      v121 = v113;
      v122 = sub_226D6E36C();

      v123 = [objc_opt_self() requestWithIdentifier:v122 content:v121 trigger:0];

      v124 = v123;
      MEMORY[0x22AA8A610]();
      if (*((v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v221 = *((v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_226D6E61C();
      }

      sub_226D6E65C();

      sub_226B85728(v251, _s21NotificationFormatterV16OrderStatusInputVMa);
      (*(v258 + 8))(v252, v259);
      v229 = v261;
      v77 = v256;
    }

    else
    {
      sub_226B85728(v107, _s21NotificationFormatterV16OrderStatusInputVMa);
      (*(v71 + 8))(v252, v259);
      v229 = MEMORY[0x277D84F90];
    }

    v70 = v241;
    v76 = v257;
    v93 = v260;
    v95 = v243;
    goto LABEL_35;
  }

  v229 = MEMORY[0x277D84F90];
  v93 = v260;
LABEL_35:
  sub_226AC47B0(v95 + v76, &qword_27D7A6690, &qword_226D74720);
  sub_226AC47B0(v76, &qword_27D7A6690, &qword_226D74720);
  v99 = v255;
LABEL_36:
  v125 = *(v77 + v93[6]);
  v126 = *(v125 + 64);
  v252 = (v125 + 64);
  v127 = 1 << *(v125 + 32);
  v128 = -1;
  if (v127 < 64)
  {
    v128 = ~(-1 << v127);
  }

  v258 = v128 & v126;
  v251 = (v127 + 63) >> 6;
  v245 = v248 + 16;
  v256 = (v248 + 32);
  v249 = (v248 + 88);
  v242 = (v248 + 96);
  v243 = (v248 + 8);
  v230 += 8;
  v224 = (v246 + 8);
  v246 = v125;

  v129 = 0;
LABEL_39:
  v131 = v251;
  for (i = v252; ; i = v252)
  {
    v132 = v258;
    if (!v258)
    {
      if (v131 <= v129 + 1)
      {
        v135 = v129 + 1;
      }

      else
      {
        v135 = v131;
      }

      v136 = v135 - 1;
      while (1)
      {
        v134 = v129 + 1;
        if (__OFADD__(v129, 1))
        {
          break;
        }

        if (v134 >= v131)
        {
          v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F28, &unk_226D738C0);
          v145 = v253;
          (*(*(v166 - 8) + 56))(v253, 1, 1, v166);
          v258 = 0;
          v129 = v136;
          goto LABEL_53;
        }

        v132 = *&i[8 * v134];
        ++v129;
        if (v132)
        {
          v133 = v70;
          v129 = v134;
          goto LABEL_52;
        }
      }

      __break(1u);
      goto LABEL_108;
    }

    v133 = v70;
    v134 = v129;
LABEL_52:
    v258 = (v132 - 1) & v132;
    v137 = __clz(__rbit64(v132)) | (v134 << 6);
    v138 = v247;
    v139 = (*(v246 + 48) + 16 * v137);
    v141 = *v139;
    v140 = v139[1];
    v142 = v248;
    (*(v248 + 16))(v247, *(v246 + 56) + *(v248 + 72) * v137, v133);
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F28, &unk_226D738C0);
    v144 = *(v143 + 48);
    v145 = v253;
    *v253 = v141;
    *(v145 + 8) = v140;
    v146 = *(v142 + 32);
    v70 = v133;
    v146(v145 + v144, v138, v133);
    (*(*(v143 - 8) + 56))(v145, 0, 1, v143);

    v99 = v255;
LABEL_53:
    v93 = v254;
    sub_226AFD80C(v145, v254, &qword_27D7A6F20, &qword_226D738B8);
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F28, &unk_226D738C0);
    if ((*(*(v147 - 8) + 48))(v93, 1, v147) == 1)
    {
      break;
    }

    v148 = *(v93 + 1);
    v257 = *v93;
    (*v256)(v99, v93 + *(v147 + 48), v70);
    v149 = (*v249)(v99, v70);
    if (v149 != v250)
    {

      (*v243)(v99, v70);
      goto LABEL_41;
    }

    (*v242)(v99, v70);
    v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71F8, &qword_226D74730);
    v151 = v244;
    v93 = &unk_226D718A0;
    sub_226AFD80C(v99 + *(v150 + 48), v244, &qword_27D7A6688, &unk_226D718A0);
    sub_226AC47B0(v99, &qword_27D7A6688, &unk_226D718A0);
    v152 = _s7ChangesV11FulfillmentVMa(0);
    if ((*(*(v152 - 8) + 48))(v151, 1, v152) == 1)
    {

      sub_226AC47B0(v151, &qword_27D7A6688, &unk_226D718A0);
      goto LABEL_41;
    }

    v153 = [v240 orderContent];
    v154 = sub_226D6B30C();

    if (!(v154 >> 62))
    {
      v155 = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v155)
      {
        goto LABEL_59;
      }

      goto LABEL_84;
    }

    v155 = sub_226D6EDFC();
    if (v155)
    {
LABEL_59:
      v156 = 0;
      v259 = v154 & 0xC000000000000001;
      v260 = v148;
      while (1)
      {
        if (v259)
        {
          v157 = MEMORY[0x22AA8AFD0](v156, v154);
        }

        else
        {
          if (v156 >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_109;
          }

          v157 = *(v154 + 8 * v156 + 32);
        }

        v158 = v157;
        v159 = v156 + 1;
        if (__OFADD__(v156, 1))
        {
          break;
        }

        v160 = [v157 trackingNumber];
        if (v160)
        {
          v161 = v160;
          v162 = sub_226D6E39C();
          v93 = v163;

          if (v260)
          {
            if (v162 == v257 && v260 == v93)
            {

LABEL_79:

              v167 = v158;
              v168 = [v240 orderContent];
              v169 = v239;
              v170 = *(v239 + 24);
              v171 = sub_226D6760C();
              v93 = v234;
              (*(*(v171 - 8) + 56))(v234 + v170, 1, 1, v171);
              v172 = v169[7];
              v259 = v172;
              v173 = sub_226D6762C();
              (*(*(v173 - 8) + 56))(v93 + v172, 1, 1, v173);
              v174 = v169[8];
              v175 = sub_226D6763C();
              (*(*(v175 - 8) + 56))(v93 + v174, 1, 1, v175);
              v176 = v167;
              v177 = [v168 merchantDisplayName];
              v178 = sub_226D6E39C();
              v180 = v179;

              *v93 = v178;
              *(v93 + 1) = v180;
              v181 = v169[5];
              v182 = v168;
              sub_226D6C6AC();
              v183 = v231;
              sub_226D6C66C();
              sub_226AFD680(v183, v93 + v170, &qword_27D7A6678, &unk_226D71890);
              v184 = v232;
              sub_226D6C67C();
              sub_226AFD680(v184, v93 + v259, &qword_27D7A6670, &qword_226D71888);
              v185 = v233;
              v186 = v176;
              sub_226D6C68C();
              sub_226AFD680(v185, v93 + v174, &qword_27D7A6680, &unk_226D74710);
              v187 = sub_226D6B30C();
              if (v187 >> 62)
              {
                v188 = sub_226D6EDFC();
              }

              else
              {
                v188 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v189 = v186;

              *(v93 + *(v239 + 36)) = v188 > 1;
              sub_226D6D56C();
              sub_226D6D66C();
              sub_226D6D70C();
              v190 = v235;
              sub_226D69B5C();
              sub_226C4B068(v93);
              v192 = v191;
              v194 = v193;
              sub_226B85728(v190, _s21NotificationFormatterVMa);
              if (!v192)
              {
                sub_226B85728(v93, _s21NotificationFormatterV16FulfillmentInputVMa);

                v195 = v244;
                goto LABEL_85;
              }

              v196 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
              v197 = sub_226D6E36C();
              [v196 setTitle_];

              v198 = sub_226D6E36C();
              [v196 setBody_];

              [v196 setInterruptionLevel_];
              v199 = v240;
              v200 = [v240 trackedOrderIdentifier];
              [v196 setThreadIdentifier_];

              v201 = [v199 trackedOrderIdentifier];
              sub_226D6E39C();

              v259 = v194;
              v202 = v225;
              sub_226D66DAC();

              v203 = sub_226D6D0DC();
              (*v230)(v202, v226);
              [v196 setDefaultActionURL_];

              v204 = v227;
              sub_226D6D51C();
              sub_226D6D4CC();
              (*v224)(v204, v228);
              v205 = v196;
              v206 = sub_226D6E36C();

              v207 = [objc_opt_self() requestWithIdentifier:v206 content:v205 trigger:0];

              v93 = v207;
              MEMORY[0x22AA8A610]();
              if (*((v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v208 = *((v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_226D6E61C();
              }

              sub_226D6E65C();

              sub_226B85728(v234, _s21NotificationFormatterV16FulfillmentInputVMa);
              v229 = v261;
              sub_226AC47B0(v244, &qword_27D7A6688, &unk_226D718A0);
              v70 = v241;
              v99 = v255;
              goto LABEL_39;
            }

            v165 = sub_226D6F21C();

            if (v165)
            {
              goto LABEL_79;
            }
          }

          else
          {
          }
        }

        else if (!v260)
        {
          goto LABEL_79;
        }

        ++v156;
        if (v159 == v155)
        {
          goto LABEL_84;
        }
      }

LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

LABEL_84:

    v195 = v244;
LABEL_85:
    sub_226AC47B0(v195, &qword_27D7A6688, &unk_226D718A0);
    v70 = v241;
    v99 = v255;
LABEL_41:
    v131 = v251;
  }

  v93 = (v229 >> 62);
  if (!(v229 >> 62))
  {
    v209 = *((v229 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_92;
  }

LABEL_110:
  v209 = sub_226D6EDFC();
LABEL_92:
  if (v209)
  {
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v210 = sub_226D6E07C();
    __swift_project_value_buffer(v210, qword_28105F6A8);
    v211 = v229;

    v212 = sub_226D6E05C();
    v213 = sub_226D6E9EC();
    if (os_log_type_enabled(v212, v213))
    {
      v214 = swift_slowAlloc();
      *v214 = 134217984;
      v211 = v229;
      if (v93)
      {
        v222 = v214;
        v215 = sub_226D6EDFC();
        v214 = v222;
      }

      else
      {
        v215 = *((v229 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v214 + 4) = v215;
      v216 = v214;

      _os_log_impl(&dword_226AB4000, v212, v213, "Scheduled %ld notifications", v216, 0xCu);
      MEMORY[0x22AA8BEE0](v216, -1, -1);
    }

    else
    {
    }

    return v211;
  }

  else
  {
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v217 = sub_226D6E07C();
    __swift_project_value_buffer(v217, qword_28105F6A8);
    v218 = sub_226D6E05C();
    v219 = sub_226D6E9EC();
    if (os_log_type_enabled(v218, v219))
    {
      v220 = swift_slowAlloc();
      *v220 = 0;
      _os_log_impl(&dword_226AB4000, v218, v219, "Order changes did not yield any notifications", v220, 2u);
      MEMORY[0x22AA8BEE0](v220, -1, -1);
    }

    return v229;
  }
}

uint64_t _s21NotificationSchedulerVMa()
{
  result = qword_27D7A7208;
  if (!qword_27D7A7208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226B85728(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226B85788(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6690, &qword_226D74720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_226B85820()
{
  sub_226B8588C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_226B8588C()
{
  if (!qword_27D7A6758)
  {
    v0 = sub_226D6702C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A6758);
    }
  }
}

void sub_226B858EC(void *a1)
{
  v101[1] = *MEMORY[0x277D85DE8];
  v2 = sub_226D6D4AC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6B9BC();
  v96 = *(v6 - 1);
  v7 = *(v96 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v92 = &v68 - v12;
  MEMORY[0x28223BE20](v11);
  v91 = &v68 - v13;
  v14 = sub_226D6D52C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v90 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_226D673EC();
  v94 = *(v17 - 8);
  v18 = *(v94 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v82 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v99 = &v68 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7218, &unk_226D74820);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v93 = &v68 - v24;
  v25 = sub_226D68CBC();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = MEMORY[0x28223BE20](v25);
  v89 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v98 = &v68 - v30;
  v31 = [objc_opt_self() currentQueryGenerationToken];
  v101[0] = 0;
  v32 = [a1 setQueryGenerationFromToken:v31 error:v101];

  v33 = v101[0];
  if (!v32)
  {
    v40 = v101[0];
    sub_226D6D04C();

    swift_willThrow();
    goto LABEL_5;
  }

  v81 = v5;
  v34 = sub_226D69F0C();
  v35 = v33;
  v36 = sub_226D69DDC();
  sub_226B2A4F4();
  v37 = sub_226D6E91C();
  [v36 setPredicate_];

  v38 = v100;
  v39 = sub_226D6EBBC();
  v95 = v38;
  if (!v38)
  {
    v42 = v39;
    v88 = v34;
    if (v39 >> 62)
    {
      goto LABEL_32;
    }

    v43 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v44 = v93;
    if (!v43)
    {
LABEL_33:

      v101[0] = 0;
      if (([a1 save_] & 1) == 0)
      {
        v67 = v101[0];
        sub_226D6D04C();

        swift_willThrow();
        goto LABEL_5;
      }

      v66 = v101[0];
      goto LABEL_3;
    }

LABEL_8:
    v70 = v10;
    v10 = 0;
    v97 = v42 & 0xC000000000000001;
    v79 = v42 & 0xFFFFFFFFFFFFFF8;
    v85 = (v26 + 6);
    v72 = (v26 + 4);
    v71 = (v26 + 2);
    v73 = (v96 + 8);
    v69 = (v94 + 16);
    v74 = (v94 + 8);
    v75 = (v26 + 1);
    v96 = v43;
    v78 = v6;
    v80 = v17;
    v77 = v25;
    v87 = v36;
    v76 = a1;
    v86 = v42;
    while (1)
    {
      if (v97)
      {
        v45 = MEMORY[0x22AA8AFD0](v10, v42);
        v46 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v10 >= *(v79 + 16))
        {
          goto LABEL_31;
        }

        v45 = *(v42 + 8 * v10 + 32);
        v46 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          v43 = sub_226D6EDFC();
          v44 = v93;
          if (!v43)
          {
            goto LABEL_33;
          }

          goto LABEL_8;
        }
      }

      v100 = v46;
      v26 = v45;
      v47 = [v45 externalAccountId];
      if (v47)
      {
        v48 = v47;
        v94 = sub_226D6E39C();
        v50 = v49;

        sub_226D69E5C();
        v51 = v25;
        if ((*v85)(v44, 1, v25) == 1)
        {

          sub_226B86350(v44);
        }

        else
        {
          v52 = v98;
          (*v72)(v98, v44, v51);
          sub_226D6D51C();
          v83 = v50;
          sub_226D69D5C();
          (*v71)(v89, v52, v51);
          v84 = v26;
          [v26 isAccountMismatched];
          sub_226D6D46C();
          v53 = v76;
          sub_226D673DC();
          v54 = sub_226D68E6C();
          v55 = v92;
          sub_226D6738C();
          v56 = v95;
          v57 = sub_226D68E2C();
          if (v56)
          {
            v95 = v56;
            (*v73)(v55, v78);

            (*v74)(v99, v80);
            (*v75)(v98, v77);
            goto LABEL_5;
          }

          v83 = v54;
          v94 = v57;
          v58 = *v73;
          v59 = v78;
          (*v73)(v55, v78);
          v60 = v70;
          sub_226D6738C();
          v61 = v59;
          v6 = v53;
          v62 = sub_226D69D9C();
          v95 = 0;
          v63 = v62;
          v58(v60, v61);
          v26 = v94;
          if (v94)
          {
            MEMORY[0x22AA84F00](v94, v99);
            a1 = v6;
          }

          else
          {
            (*v69)(v82, v99, v80);
            a1 = v6;
            v64 = v6;
            v26 = sub_226D68E7C();
          }

          v25 = v77;
          v44 = v93;
          if (v63)
          {
            sub_226D69EDC();
            v17 = v80;

            v65 = v99;
          }

          else
          {
            v63 = v26;
            v17 = v80;
            v65 = v99;
            v26 = v84;
          }

          (*v74)(v65, v17);
          (*v75)(v98, v25);
        }

        v42 = v86;
        v36 = v87;
      }

      else
      {
      }

      ++v10;
      if (v100 == v96)
      {
        goto LABEL_33;
      }
    }
  }

LABEL_3:

LABEL_5:
  v41 = *MEMORY[0x277D85DE8];
}

void sub_226B862C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_226D676AC();
  sub_226D6EB7C();
}

uint64_t sub_226B86350(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7218, &unk_226D74820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PostInstallScheduleImmediateInstitutionConfigurationUpdateTask(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF2 && a1[17])
  {
    return (*a1 + 242);
  }

  v3 = *a1;
  v4 = v3 >= 0xF;
  v5 = v3 - 15;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PostInstallScheduleImmediateInstitutionConfigurationUpdateTask(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF1)
  {
    *(result + 16) = 0;
    *result = a2 - 242;
    *(result + 8) = 0;
    if (a3 >= 0xF2)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF2)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 14;
    }
  }

  return result;
}

void sub_226B86464(void *a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = sub_226D6D4AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6842C();
  v8 = sub_226D6840C();
  v9 = MEMORY[0x22AA84480]();
  [v8 setPredicate_];

  v10 = sub_226D6EBBC();
  if (!v1)
  {
    v11 = v10;
    v23 = a1;
    if (v10 >> 62)
    {
      v12 = sub_226D6EDFC();
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_4:
        v21[1] = 0;
        v22 = v8;
        if (v12 < 1)
        {
          __break(1u);
        }

        v13 = 0;
        v14 = (v4 + 8);
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x22AA8AFD0](v13, v11);
          }

          else
          {
            v15 = *(v11 + 8 * v13 + 32);
          }

          v16 = v15;
          ++v13;
          sub_226D6D46C();
          v17 = sub_226D6D3EC();
          (*v14)(v7, v3);
          [v16 setEarliestUpdateRequestStartDate_];

          [v16 setUpdateRequestAttemptCount_];
          [v16 setLastUpdateRequestAttemptDate_];
        }

        while (v12 != v13);

        v8 = v22;
        goto LABEL_13;
      }
    }

LABEL_13:
    v24[0] = 0;
    if ([v23 save_])
    {
      v18 = v24[0];
    }

    else
    {
      v19 = v24[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226B86708()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

void sub_226B86714(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_226D676AC();
  sub_226D6EB7C();
}

uint64_t static DisplayUtilities.mainScreenScale.getter()
{
  result = GSMainScreenScaleFactor();
  if ((LODWORD(v1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.2234e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_226B86820(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_226D67C0C();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x277D84F90];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226AE1E98(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_226AE1E98(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:

    return v38;
  }

  return result;
}

uint64_t sub_226B86AF0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v23 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = MEMORY[0x22AA8AFD0](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_226D6EF6C();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v23 + 16);
        sub_226D6EF9C();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        sub_226D6EFAC();
        sub_226D6EF7C();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

uint64_t sub_226B86C9C()
{
  v1[3] = v0;
  v2 = sub_226D6EB9C();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B86D5C, 0, 0);
}

uint64_t sub_226B86D5C()
{
  v1 = v0[3];
  v2 = *(v1 + 24);
  if ((*(*(v1 + 32) + 24))())
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v3 = sub_226D6E07C();
    __swift_project_value_buffer(v3, qword_28105F710);
    v4 = sub_226D6E05C();
    v5 = sub_226D6E9EC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_226AB4000, v4, v5, "Wallet is deleted, Bank Connect pending tasks skipped.", v6, 2u);
      MEMORY[0x22AA8BEE0](v6, -1, -1);
    }

    v7 = v0[6];

    v8 = v0[1];
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }

  else
  {
    v12 = v0[5];
    v11 = v0[6];
    v14 = v0[3];
    v13 = v0[4];
    v15 = *(v14 + 16);
    v16 = sub_226D676AC();
    v0[7] = v16;
    v17 = swift_allocObject();
    v0[8] = v17;
    *(v17 + 16) = v16;
    *(v17 + 24) = v14;
    (*(v12 + 104))(v11, *MEMORY[0x277CBE110], v13);
    v18 = *(MEMORY[0x277CBE118] + 4);
    v16;

    v19 = swift_task_alloc();
    v0[9] = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6170, &qword_226D70BB0);
    *v19 = v0;
    v19[1] = sub_226B86FD0;
    v21 = v0[6];

    return MEMORY[0x28210EE50](v0 + 2, v21, sub_226B8CCA0, v17, v20);
  }
}

uint64_t sub_226B86FD0()
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
    v7 = sub_226B87164;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226B87164()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_226B871D8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_226B87244@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v11[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v11];

  if (v6)
  {
    v7 = v11[0];
    result = sub_226B87344(a1);
    if (!v2)
    {
      *a2 = result;
    }
  }

  else
  {
    v9 = v11[0];
    sub_226D6D04C();

    result = swift_willThrow();
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226B87344(void *a1)
{
  v16 = MEMORY[0x277D84F90];
  v3 = sub_226B874F4(a1);
  if (v1)
  {
  }

  sub_226CEE124(v3);
  v4 = sub_226B87B20();
  sub_226CEE124(v4);
  v5 = sub_226B8870C();
  sub_226CEE124(v5);
  v6 = sub_226B8DD2C();
  sub_226CEE124(v6);
  v7 = sub_226B88B7C(a1);
  sub_226CEE124(v7);
  v8 = sub_226B8E328(a1);
  sub_226CEE124(v8);
  v9 = sub_226B88FB8(a1);
  sub_226CEE124(v9);
  v10 = sub_226B8ECF8(a1);
  sub_226CEE124(v10);
  v11 = sub_226B8F28C();
  sub_226CEE124(v11);
  v12 = sub_226B89394(a1);
  sub_226CEE124(v12);
  v13 = sub_226B8FA80(a1);
  sub_226CEE124(v13);
  v14 = sub_226B90214(a1);
  sub_226CEE124(v14);
  return v16;
}

uint64_t *sub_226B874F4(uint64_t a1)
{
  v54 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v55 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - v5;
  v7 = sub_226D6B9BC();
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226D69F0C();
  v11 = sub_226D69DDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_226D71F40;
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  boxed_opaque_existential_1 = MEMORY[0x277D84F90];
  *(v12 + 32) = sub_226D6E91C();
  *(v12 + 40) = sub_226D6E91C();
  v14 = sub_226D6E5CC();

  v15 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v11 setPredicate_];
  v16 = v56;
  v17 = sub_226D6EBBC();
  v18 = v16;
  if (v16)
  {

    return v10;
  }

  v19 = v51;
  v52 = v7;
  v53 = v10;
  v46 = v11;
  v54 = v6;
  v20 = v17;
  if (v17 >> 62)
  {
    goto LABEL_27;
  }

  v21 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v22 = v54;
  if (!v21)
  {

    return MEMORY[0x277D84F90];
  }

  v45 = v18;
  v60 = boxed_opaque_existential_1;

  v18 = &v60;
  result = sub_226AE2510(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v10 = v60;
    v25 = v20;
    v50 = v20;
    v51 = v20 & 0xC000000000000001;
    v47 = v20 & 0xFFFFFFFFFFFFFF8;
    v48 = (v19 + 32);
    v49 = v21;
    while (1)
    {
      if (v51)
      {
        v26 = MEMORY[0x22AA8AFD0](v24, v25);
      }

      else
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          v21 = sub_226D6EDFC();
          goto LABEL_5;
        }

        if (v24 >= *(v47 + 16))
        {
          goto LABEL_26;
        }

        v26 = *(v25 + 8 * v24 + 32);
      }

      v27 = v26;
      sub_226D69D5C();
      v28 = [v27 earliestAccountRequestStartDate];
      if (v28)
      {
        v29 = v28;
        sub_226D6D45C();

        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      v31 = v22;
      v32 = sub_226D6D4AC();
      v33 = *(*(v32 - 8) + 56);
      v34 = 1;
      v33(v31, v30, 1, v32);
      v56 = [v27 accountRequestAttemptCount];
      v35 = [v27 lastAccountRequestAttemptDate];
      if (v35)
      {
        v36 = v35;
        v37 = v55;
        sub_226D6D45C();

        v34 = 0;
      }

      else
      {
        v37 = v55;
      }

      v33(v37, v34, 1, v32);
      Task = type metadata accessor for BankConnectAccountDataFetchTask();
      v58 = Task;
      v59 = sub_226B8CC58(&qword_27D7A7290, type metadata accessor for BankConnectAccountDataFetchTask);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
      (*v48)(boxed_opaque_existential_1, v53, v52);
      v22 = v54;
      sub_226B72784(v54, boxed_opaque_existential_1 + Task[5]);
      *(boxed_opaque_existential_1 + Task[6]) = v56;
      sub_226B72784(v37, boxed_opaque_existential_1 + Task[7]);

      v60 = v10;
      v20 = v10[2];
      v39 = v10[3];
      if (v20 >= v39 >> 1)
      {
        sub_226AE2510((v39 > 1), v20 + 1, 1);
      }

      ++v24;
      v18 = v58;
      v19 = v59;
      v40 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
      v41 = *(*(v18 - 1) + 64);
      MEMORY[0x28223BE20](v40);
      v43 = &v45 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v44 + 16))(v43);
      sub_226B8CEB8(v20, v43, &v60, v18, v19);
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      v10 = v60;
      v25 = v50;
      if (v49 == v24)
      {

        return v10;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226B87B20()
{
  v116 = *MEMORY[0x277D85DE8];
  v0 = sub_226D6D4AC();
  v109 = *(v0 - 8);
  v1 = *(v109 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v92 - v9;
  sub_226D6794C();
  v11 = sub_226D678BC();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v12 = MEMORY[0x277D84F90];
  v13 = sub_226D6E91C();
  [v11 setPredicate_];

  v14 = v111;
  v15 = sub_226D6EBBC();
  v110 = v14;
  if (v14)
  {

LABEL_111:
    v90 = *MEMORY[0x277D85DE8];
    return v11;
  }

  v16 = v15;
  v101 = v10;
  v111 = v8;
  v93 = v3;
  v107 = v0;
  v114 = v12;
  if (v15 >> 62)
  {
LABEL_88:
    v17 = sub_226D6EDFC();
  }

  else
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = v111;
  v94 = v11;
  if (!v17)
  {
    v11 = v12;
    goto LABEL_19;
  }

  v19 = 0;
  v11 = v16 & 0xFFFFFFFFFFFFFF8;
  while ((v16 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x22AA8AFD0](v19, v16);
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_16;
    }

LABEL_12:
    v12 = v20;
    v22 = [v12 institutionObject];
    v23 = [v22 supportsTransactions];

    if (v23)
    {
      sub_226D6EF6C();
      v24 = *(v114 + 16);
      sub_226D6EF9C();
      sub_226D6EFAC();
      sub_226D6EF7C();
    }

    else
    {
    }

    v18 = v111;
    ++v19;
    if (v21 == v17)
    {
      goto LABEL_17;
    }
  }

  if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_85;
  }

  v20 = *(v16 + 8 * v19 + 32);
  v21 = v19 + 1;
  if (!__OFADD__(v19, 1))
  {
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  v11 = v114;
  v12 = MEMORY[0x277D84F90];
LABEL_19:

  v25 = v109;
  if ((v11 & 0x8000000000000000) == 0 && (v11 & 0x4000000000000000) == 0)
  {
    v16 = *(v11 + 16);
    if (v16)
    {
      goto LABEL_22;
    }

LABEL_90:

    v27 = MEMORY[0x277D84F90];
LABEL_91:
    v76 = *(v27 + 16);
    v77 = v27;
    if (!v76)
    {
      v11 = MEMORY[0x277D84F90];
LABEL_110:

      goto LABEL_111;
    }

    v78 = 0;
    v11 = MEMORY[0x277D84F90];
    v79 = v77;
    v80 = v77 + 32;
    while (2)
    {
      if (v78 >= *(v79 + 16))
      {
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
      }

      v81 = *(v80 + 8 * v78);
      v82 = *(v81 + 16);
      v83 = *(v11 + 16);
      v84 = v83 + v82;
      if (__OFADD__(v83, v82))
      {
        goto LABEL_113;
      }

      v85 = *(v80 + 8 * v78);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v84 <= *(v11 + 24) >> 1)
      {
        if (!*(v81 + 16))
        {
LABEL_93:

          if (v82)
          {
            goto LABEL_114;
          }

LABEL_94:
          if (v76 == ++v78)
          {
            goto LABEL_110;
          }

          continue;
        }
      }

      else
      {
        if (v83 <= v84)
        {
          v87 = v83 + v82;
        }

        else
        {
          v87 = v83;
        }

        v11 = sub_226BBB984(isUniquelyReferenced_nonNull_native, v87, 1, v11);
        if (!*(v81 + 16))
        {
          goto LABEL_93;
        }
      }

      break;
    }

    if ((*(v11 + 24) >> 1) - *(v11 + 16) < v82)
    {
      goto LABEL_115;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6160, &qword_226D70BA0);
    swift_arrayInitWithCopy();

    if (v82)
    {
      v88 = *(v11 + 16);
      v65 = __OFADD__(v88, v82);
      v89 = v88 + v82;
      if (v65)
      {
        goto LABEL_116;
      }

      *(v11 + 16) = v89;
    }

    goto LABEL_94;
  }

  v16 = sub_226D6EDFC();
  if (!v16)
  {
    goto LABEL_90;
  }

LABEL_22:
  v114 = v12;
  sub_226AE2550(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    goto LABEL_117;
  }

  v26 = 0;
  v27 = v114;
  v28 = v11;
  v104 = v11 & 0xC000000000000001;
  v95 = v11 + 32;
  v29 = (v25 + 56);
  v92 = (v25 + 32);
  v30 = MEMORY[0x277D84FA0];
  v96 = v12 >> 62;
  v102 = v16;
  v103 = v11;
  while (2)
  {
    if (__OFADD__(v26, 1))
    {
      goto LABEL_86;
    }

    v109 = v26 + 1;
    if (v104)
    {
      v31 = MEMORY[0x22AA8AFD0]();
    }

    else
    {
      if (v26 >= *(v28 + 16))
      {
        goto LABEL_87;
      }

      v31 = *(v95 + 8 * v26);
    }

    v108 = v31;
    v32 = [v31 accountObjects];
    v115 = 0;
    sub_226D69F0C();
    sub_226B8CC58(&qword_27D7A7278, MEMORY[0x277CC7A70]);
    sub_226D6E88C();

    v11 = v115;
    if (v115)
    {
      goto LABEL_32;
    }

    if (!v96 || (v50 = MEMORY[0x277D84F90], (v33 = sub_226D6EDFC()) == 0))
    {
      v11 = v30;
LABEL_32:
      if ((v11 & 0xC000000000000001) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_33;
    }

    sub_226B1F8F4(v50);
    v11 = v33;
    if ((v33 & 0xC000000000000001) != 0)
    {
LABEL_33:
      v115 = v30;
      v16 = sub_226D6EDBC();
      v34 = sub_226D6EE2C();
      if (v34)
      {
        v11 = v107;
LABEL_38:
        v112 = v34;
        swift_dynamicCast();
        v35 = v113;
        if (![v113 isAccountEnabled])
        {
          goto LABEL_36;
        }

        v36 = [v35 earliestTransactionsRequestStartDate];
        if (!v36)
        {
          (*v29)(v18, 1, 1, v11);
          sub_226B905C4(v18);
LABEL_36:

          goto LABEL_37;
        }

        v37 = v36;
        sub_226D6D45C();

        (*v29)(v18, 0, 1, v11);
        sub_226B905C4(v18);
        v12 = v113;
        v38 = *(v30 + 16);
        if (*(v30 + 24) <= v38)
        {
          sub_226C29738(v38 + 1);
        }

        v30 = v115;
        v39 = *(v115 + 40);
        v40 = sub_226D6EC2C();
        v41 = v30 + 56;
        v42 = -1 << *(v30 + 32);
        v43 = v40 & ~v42;
        v44 = v43 >> 6;
        if (((-1 << v43) & ~*(v30 + 56 + 8 * (v43 >> 6))) != 0)
        {
          v45 = __clz(__rbit64((-1 << v43) & ~*(v30 + 56 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
          goto LABEL_52;
        }

        v46 = 0;
        v47 = (63 - v42) >> 6;
        while (++v44 != v47 || (v46 & 1) == 0)
        {
          v48 = v44 == v47;
          if (v44 == v47)
          {
            v44 = 0;
          }

          v46 |= v48;
          v49 = *(v41 + 8 * v44);
          if (v49 != -1)
          {
            v45 = __clz(__rbit64(~v49)) + (v44 << 6);
LABEL_52:
            *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
            *(*(v30 + 48) + 8 * v45) = v12;
            ++*(v30 + 16);
LABEL_37:
            v34 = sub_226D6EE2C();
            if (!v34)
            {
              goto LABEL_53;
            }

            goto LABEL_38;
          }
        }

        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

LABEL_53:

      goto LABEL_76;
    }

LABEL_56:
    v51 = *(v11 + 32);
    v52 = ((1 << v51) + 63) >> 6;
    if ((v51 & 0x3Fu) <= 0xD)
    {
      goto LABEL_57;
    }

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_57:
      v105 = v27;
      v97 = &v92;
      v98 = v52;
      MEMORY[0x28223BE20](v33);
      v99 = &v92 - ((v53 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v99, v53);
      v100 = 0;
      v54 = 0;
      v55 = 1 << *(v11 + 32);
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      else
      {
        v56 = -1;
      }

      v57 = v56 & *(v11 + 56);
      v16 = (v55 + 63) >> 6;
      while (v57)
      {
        v58 = __clz(__rbit64(v57));
        v57 &= v57 - 1;
LABEL_69:
        v61 = v58 | (v54 << 6);
        v12 = *(*(v11 + 48) + 8 * v61);
        if ([v12 isAccountEnabled])
        {
          v62 = [v12 earliestTransactionsRequestStartDate];
          if (v62)
          {
            v63 = v62;
            sub_226D6D45C();

            v64 = v101;
            v12 = v107;
            (*v92)(v101, v93, v107);
            (*v29)(v64, 0, 1, v12);
            sub_226B905C4(v64);
            *&v99[(v61 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v61;
            v65 = __OFADD__(v100++, 1);
            if (v65)
            {
              goto LABEL_118;
            }
          }

          else
          {

            v12 = v101;
            (*v29)(v101, 1, 1, v107);
            sub_226B905C4(v12);
          }
        }

        else
        {
        }
      }

      v59 = v54;
      v18 = v111;
      v27 = v105;
      while (1)
      {
        v54 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          goto LABEL_84;
        }

        if (v54 >= v16)
        {
          break;
        }

        v60 = *(v11 + 56 + 8 * v54);
        ++v59;
        if (v60)
        {
          v58 = __clz(__rbit64(v60));
          v57 = (v60 - 1) & v60;
          goto LABEL_69;
        }
      }

      v30 = sub_226D568FC(v99, v98, v100, v11);
LABEL_76:
      v66 = v108;
      v67 = [v108 institutionObject];
      [v67 maxAgeTransactionsRefreshRequest];
      v69 = v68;
      v70 = v106;

      v71 = v110;
      v16 = sub_226B8CFE8(v30, v70, v69);
      v110 = v71;

      v114 = v27;
      v12 = *(v27 + 16);
      v72 = *(v27 + 24);
      v11 = v12 + 1;
      if (v12 >= v72 >> 1)
      {
        sub_226AE2550((v72 > 1), v12 + 1, 1);
        v27 = v114;
      }

      *(v27 + 16) = v11;
      *(v27 + 8 * v12 + 32) = v16;
      v26 = v109;
      v28 = v103;
      v30 = MEMORY[0x277D84FA0];
      if (v109 == v102)
      {

        goto LABEL_91;
      }

      continue;
    }

    break;
  }

  v73 = swift_slowAlloc();

  v74 = v110;
  v75 = sub_226B8CCBC(v73, v52, v11, sub_226B8965C);
  v110 = v74;
  if (!v74)
  {
    v30 = v75;
    swift_bridgeObjectRelease_n();
    MEMORY[0x22AA8BEE0](v73, -1, -1);
    goto LABEL_76;
  }

  swift_bridgeObjectRelease_n();
  result = MEMORY[0x22AA8BEE0](v73, -1, -1);
  __break(1u);
  return result;
}

void *sub_226B8870C()
{
  v2 = v0;
  v3 = sub_226D6794C();
  v4 = sub_226D678BC();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v5 = MEMORY[0x277D84F90];
  v6 = sub_226D6E91C();
  [v4 setPredicate_];

  v7 = sub_226D6EBBC();
  if (v1)
  {
LABEL_62:

    return v3;
  }

  v8 = v7;
  v41 = v5;
  if (v7 >> 62)
  {
    goto LABEL_57;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v10 = MEMORY[0x277D84F90];
  v37 = v4;
  v38 = v2;
  if (v9)
  {
    v11 = 0;
    v4 = v8 & 0xC000000000000001;
    v2 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v4)
      {
        v12 = MEMORY[0x22AA8AFD0](v11, v8);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v18 = v41;
          v10 = MEMORY[0x277D84F90];
          goto LABEL_18;
        }
      }

      else
      {
        if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          v9 = sub_226D6EDFC();
          goto LABEL_4;
        }

        v12 = *(v8 + 8 * v11 + 32);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_15;
        }
      }

      v14 = v12;
      v15 = [v14 institutionObject];
      v16 = [v15 supportsTransactions];

      if (v16)
      {
        sub_226D6EF6C();
        v17 = *(v41 + 16);
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
      }

      else
      {
      }

      ++v11;
      if (v13 == v9)
      {
        goto LABEL_16;
      }
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_18:

  if ((v18 & 0x8000000000000000) == 0 && (v18 & 0x4000000000000000) == 0)
  {
    v8 = *(v18 + 16);
    if (v8)
    {
      goto LABEL_21;
    }

LABEL_59:

    v21 = MEMORY[0x277D84F90];
    v27 = *(MEMORY[0x277D84F90] + 16);
    if (v27)
    {
LABEL_32:
      v4 = 0;
      v3 = MEMORY[0x277D84F90];
      v2 = v21 + 32;
      while (1)
      {
        if (v4 >= *(v21 + 16))
        {
          goto LABEL_51;
        }

        v28 = *(v2 + 8 * v4);
        v29 = *(v28 + 16);
        v30 = v3[2];
        v8 = v30 + v29;
        if (__OFADD__(v30, v29))
        {
          goto LABEL_52;
        }

        v31 = *(v2 + 8 * v4);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v8 <= v3[3] >> 1)
        {
          if (!*(v28 + 16))
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (v30 <= v8)
          {
            v33 = v30 + v29;
          }

          else
          {
            v33 = v30;
          }

          v3 = sub_226BBB984(isUniquelyReferenced_nonNull_native, v33, 1, v3);
          if (!*(v28 + 16))
          {
LABEL_33:

            if (v29)
            {
              goto LABEL_53;
            }

            goto LABEL_34;
          }
        }

        if ((v3[3] >> 1) - v3[2] < v29)
        {
          goto LABEL_54;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6160, &qword_226D70BA0);
        swift_arrayInitWithCopy();

        if (v29)
        {
          v34 = v3[2];
          v35 = __OFADD__(v34, v29);
          v36 = v34 + v29;
          if (v35)
          {
            goto LABEL_56;
          }

          v3[2] = v36;
        }

LABEL_34:
        if (v27 == ++v4)
        {
          goto LABEL_61;
        }
      }
    }

    goto LABEL_60;
  }

  v8 = sub_226D6EDFC();
  if (!v8)
  {
    goto LABEL_59;
  }

LABEL_21:
  v41 = v10;
  result = sub_226AE2550(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = v41;
    v4 = v18 & 0xC000000000000001;
    do
    {
      v2 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_50;
      }

      if (v4)
      {
        v22 = MEMORY[0x22AA8AFD0](v20, v18);
      }

      else
      {
        if (v20 >= *(v18 + 16))
        {
          goto LABEL_55;
        }

        v22 = *(v18 + 8 * v20 + 32);
      }

      v23 = v22;
      v39 = v22;
      sub_226B89990(&v39, v38, &v40);

      v24 = v40;
      v41 = v21;
      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_226AE2550((v25 > 1), v26 + 1, 1);
        v21 = v41;
      }

      *(v21 + 16) = v26 + 1;
      *(v21 + 8 * v26 + 32) = v24;
      ++v20;
    }

    while (v2 != v8);

    v27 = *(v21 + 16);
    if (v27)
    {
      goto LABEL_32;
    }

LABEL_60:
    v3 = MEMORY[0x277D84F90];
LABEL_61:

    v4 = v37;
    goto LABEL_62;
  }

  __break(1u);
  return result;
}

void *sub_226B88B7C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v40 - v8;
  sub_226D6996C();
  v10 = sub_226D6992C();
  v11 = a1;
  v12 = sub_226D6EBBC();
  if (v2)
  {

    return v11;
  }

  v13 = v12;
  if (v12 >> 62)
  {
    goto LABEL_21;
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_22:

    return MEMORY[0x277D84F90];
  }

LABEL_5:
  v44 = v9;
  v40[0] = v10;
  v40[1] = v3;
  v50 = MEMORY[0x277D84F90];
  v40[2] = v4;

  result = sub_226AE2510(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v11 = v50;
    v45 = v13 & 0xC000000000000001;
    v41 = v13 & 0xFFFFFFFFFFFFFF8;
    v42 = v14;
    v43 = v13;
    while (1)
    {
      if (v45)
      {
        v17 = MEMORY[0x22AA8AFD0](v16, v13);
      }

      else
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v14 = sub_226D6EDFC();
          if (!v14)
          {
            goto LABEL_22;
          }

          goto LABEL_5;
        }

        if (v16 >= *(v41 + 16))
        {
          goto LABEL_20;
        }

        v17 = *(v13 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = [v17 consentID];
      v46 = sub_226D6E39C();
      v21 = v20;

      v22 = [v18 institutionID];
      v23 = sub_226D6E39C();
      v25 = v24;

      v9 = [v18 consentValidationAttemptCount];
      v26 = [v18 lastConsentValidationAttemptDate];
      if (v26)
      {
        v27 = v44;
        v28 = v26;
        sub_226D6D45C();

        v29 = 0;
      }

      else
      {
        v29 = 1;
        v27 = v44;
      }

      v30 = sub_226D6D4AC();
      (*(*(v30 - 8) + 56))(v27, v29, 1, v30);
      v31 = type metadata accessor for BankConnectPendingConsentProcessingTask();
      v48 = v31;
      v49 = sub_226B8CC58(&qword_27D7A6E68, type metadata accessor for BankConnectPendingConsentProcessingTask);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
      *boxed_opaque_existential_1 = v46;
      boxed_opaque_existential_1[1] = v21;
      boxed_opaque_existential_1[2] = v23;
      boxed_opaque_existential_1[3] = v25;
      boxed_opaque_existential_1[4] = v9;
      sub_226B72784(v27, boxed_opaque_existential_1 + *(v31 + 28));

      v50 = v11;
      v3 = *(v11 + 16);
      v33 = *(v11 + 24);
      if (v3 >= v33 >> 1)
      {
        sub_226AE2510((v33 > 1), v3 + 1, 1);
      }

      ++v16;
      v34 = v48;
      v35 = v49;
      v36 = __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
      v10 = v40;
      v37 = *(*(v34 - 8) + 64);
      MEMORY[0x28223BE20](v36);
      v4 = v40 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v4);
      sub_226B8CEB8(v3, v4, &v50, v34, v35);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      v11 = v50;
      v13 = v43;
      if (v42 == v16)
      {

        return v11;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_226B88FB8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7240, &unk_226D74960);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = sub_226D6826C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x277CC7220], v8);
  v13 = sub_226D6A03C();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_226D6794C();
  v14 = sub_226D678BC();
  v15 = sub_226D6EBBC();
  if (v1)
  {
  }

  else
  {
    v16 = v15;
    v27 = v14;
    if (v15 >> 62)
    {
      goto LABEL_25;
    }

    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = 0; v17; i = v2)
    {
      v18 = 0;
      v29 = v16 & 0xC000000000000001;
      v2 = v16 & 0xFFFFFFFFFFFFFF8;
      a1 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v29)
        {
          v19 = MEMORY[0x22AA8AFD0](v18, v16);
        }

        else
        {
          if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v19 = *(v16 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        sub_226B8C5CC(v19, v7);
        v22 = type metadata accessor for BankConnectNotificationEventsRegisterTask();
        if ((*(*(v22 - 8) + 48))(v7, 1, v22) == 1)
        {
          v38 = 0;
          v36 = 0u;
          v37 = 0u;
        }

        else
        {
          v31 = v22;
          v32 = sub_226B8CC58(&qword_27D7A7248, type metadata accessor for BankConnectNotificationEventsRegisterTask);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
          sub_226B9064C(v7, boxed_opaque_existential_1);
          sub_226AC484C(&v30, &v36);
        }

        v33 = v36;
        v34 = v37;
        v35 = v38;

        if (*(&v34 + 1))
        {
          sub_226AC484C(&v33, &v36);
          sub_226AC484C(&v36, &v33);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_226BBB984(0, a1[2] + 1, 1, a1);
          }

          v25 = a1[2];
          v24 = a1[3];
          if (v25 >= v24 >> 1)
          {
            a1 = sub_226BBB984((v24 > 1), v25 + 1, 1, a1);
          }

          a1[2] = v25 + 1;
          sub_226AC484C(&v33, &a1[5 * v25 + 4]);
        }

        ++v18;
        if (v21 == v17)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v17 = sub_226D6EDFC();
    }

    a1 = MEMORY[0x277D84F90];
LABEL_27:
  }

  return a1;
}

void *sub_226B89394(void *a1)
{
  v3 = v1;
  v5 = *v1;
  sub_226D6842C();
  v6 = sub_226D6840C();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v7 = sub_226D6E91C();
  [v6 setPredicate_];

  v8 = sub_226D6EBBC();
  if (v2)
  {
  }

  else
  {
    v9 = v8;
    v19 = a1;
    if (v8 >> 62)
    {
      goto LABEL_20;
    }

    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v6; v10; i = v6)
    {
      v11 = 0;
      v5 = MEMORY[0x277D84F90];
      v6 = v19;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x22AA8AFD0](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v23 = v12;
        sub_226B8A8C0(&v23, v6, v3, &v20);

        if (v21)
        {
          sub_226AC484C(&v20, v22);
          sub_226AC484C(v22, &v20);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_226BBB984(0, v5[2] + 1, 1, v5);
          }

          v16 = v5[2];
          v15 = v5[3];
          if (v16 >= v15 >> 1)
          {
            v5 = sub_226BBB984((v15 > 1), v16 + 1, 1, v5);
          }

          v5[2] = v16 + 1;
          sub_226AC484C(&v20, &v5[5 * v16 + 4]);
          v6 = v19;
        }

        ++v11;
        if (v14 == v10)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v10 = sub_226D6EDFC();
    }

    v5 = MEMORY[0x277D84F90];
LABEL_22:
  }

  return v5;
}

uint64_t sub_226B89680@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = sub_226D6B9BC();
  v32 = *(v13 - 8);
  v33 = v13;
  v14 = *(v32 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69D5C();
  v17 = [a1 earliestTransactionsRequestStartDate];
  if (v17)
  {
    v18 = v17;
    sub_226D6D45C();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_226D6D4AC();
  v21 = *(*(v20 - 8) + 56);
  v22 = 1;
  v21(v12, v19, 1, v20);
  v31 = [a1 transactionsRequestAttemptCount];
  v23 = [a1 lastTransactionsRequestAttemptDate];
  if (v23)
  {
    v24 = v23;
    sub_226D6D45C();

    v22 = 0;
  }

  v21(v10, v22, 1, v20);
  Task = type metadata accessor for BankConnectTransactionsDataFetchTask();
  a2[3] = Task;
  a2[4] = sub_226B8CC58(&qword_27D7A6FD0, type metadata accessor for BankConnectTransactionsDataFetchTask);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  sub_226D6D46C();
  v27 = Task[7];
  v21(boxed_opaque_existential_1 + v27, 1, 1, v20);
  v28 = Task[9];
  v21(boxed_opaque_existential_1 + v28, 1, 1, v20);
  (*(v32 + 32))(boxed_opaque_existential_1 + Task[5], v16, v33);
  *(boxed_opaque_existential_1 + Task[6]) = a3;
  sub_226B3E298(v12, boxed_opaque_existential_1 + v27);
  *(boxed_opaque_existential_1 + Task[8]) = v31;
  return sub_226B3E298(v10, boxed_opaque_existential_1 + v28);
}

void sub_226B89990(id *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v4 = v3;
  v76 = *MEMORY[0x277D85DE8];
  v72 = sub_226D6D4AC();
  v8 = *(v72 - 8);
  v9 = *(v8 + 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = &v59 - v16;
  v17 = *a1;
  v18 = [*a1 accountObjects];
  v75 = 0;
  sub_226D69F0C();
  sub_226B8CC58(&qword_27D7A7278, MEMORY[0x277CC7A70]);
  sub_226D6E88C();

  v20 = v75;
  if (!v75)
  {
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_47;
    }

LABEL_3:
    v20 = MEMORY[0x277D84FA0];
    goto LABEL_4;
  }

  while (1)
  {
LABEL_4:
    v68 = a2;
    v69 = a3;
    v66 = v4;
    v67 = v17;
    if ((v20 & 0xC000000000000001) != 0)
    {
      a2 = MEMORY[0x277D84FA0];
      v75 = MEMORY[0x277D84FA0];
      sub_226D6EDBC();
      v21 = sub_226D6EE2C();
      if (!v21)
      {
LABEL_25:

        goto LABEL_45;
      }

      v70 = v8 + 32;
      v17 = (v8 + 56);
      v4 = &selRef_setSortDescriptors_;
      while (1)
      {
        v73 = v21;
        swift_dynamicCast();
        v22 = v74;
        if ([v74 isAccountEnabled])
        {
          v23 = [v22 earliestHistoricalTransactionsRequestStartDate];
          if (v23)
          {
            v24 = v71;
            v25 = v23;
            sub_226D6D45C();

            v26 = v72;
            (*v70)(v15, v24, v72);
            (*v17)(v15, 0, 1, v26);
            sub_226B905C4(v15);
            v8 = v74;
            v27 = *(a2 + 16);
            if (*(a2 + 24) <= v27)
            {
              sub_226C29738(v27 + 1);
            }

            a2 = v75;
            v28 = *(v75 + 40);
            a3 = v8;
            v29 = sub_226D6EC2C();
            v30 = a2 + 56;
            v31 = -1 << *(a2 + 32);
            v32 = v29 & ~v31;
            v33 = v32 >> 6;
            if (((-1 << v32) & ~*(a2 + 56 + 8 * (v32 >> 6))) != 0)
            {
              v34 = __clz(__rbit64((-1 << v32) & ~*(a2 + 56 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v35 = 0;
              v36 = (63 - v31) >> 6;
              do
              {
                if (++v33 == v36 && (v35 & 1) != 0)
                {
                  __break(1u);
                  goto LABEL_46;
                }

                v37 = v33 == v36;
                if (v33 == v36)
                {
                  v33 = 0;
                }

                v35 |= v37;
                v38 = *(v30 + 8 * v33);
              }

              while (v38 == -1);
              v34 = __clz(__rbit64(~v38)) + (v33 << 6);
            }

            *(v30 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
            *(*(a2 + 48) + 8 * v34) = v8;
            ++*(a2 + 16);
            goto LABEL_9;
          }

          (*v17)(v15, 1, 1, v72);
          sub_226B905C4(v15);
        }

LABEL_9:
        v21 = sub_226D6EE2C();
        if (!v21)
        {
          goto LABEL_25;
        }
      }
    }

    v39 = *(v20 + 32);
    v40 = ((1 << v39) + 63) >> 6;
    if ((v39 & 0x3Fu) > 0xD)
    {
      break;
    }

LABEL_27:
    v61 = &v59;
    v62 = v40;
    MEMORY[0x28223BE20](v19);
    v63 = &v59 - ((v41 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v63, v41);
    v42 = 0;
    v17 = (v20 + 56);
    v43 = 1 << *(v20 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v15 = v44 & *(v20 + 56);
    v4 = ((v43 + 63) >> 6);
    v64 = 0;
    v65 = (v8 + 56);
    v60 = (v8 + 32);
LABEL_32:
    if (v15)
    {
      v45 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      goto LABEL_39;
    }

    v46 = v42;
    while (1)
    {
      v42 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v42 >= v4)
      {
        goto LABEL_44;
      }

      v47 = v17[v42];
      ++v46;
      if (v47)
      {
        v45 = __clz(__rbit64(v47));
        v15 = (v47 - 1) & v47;
LABEL_39:
        a3 = v45 | (v42 << 6);
        v8 = *(*(v20 + 48) + 8 * a3);
        if ([v8 isAccountEnabled])
        {
          v48 = [v8 earliestHistoricalTransactionsRequestStartDate];
          if (v48)
          {
            v49 = v48;
            sub_226D6D45C();

            a2 = v70;
            (*v60)(v70, v71, v72);
            (*v65)(a2, 0, 1, v72);
            sub_226B905C4(a2);

            *&v63[(a3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a3;
            if (!__OFADD__(v64++, 1))
            {
              goto LABEL_32;
            }

            __break(1u);
LABEL_44:
            a2 = sub_226D568FC(v63, v62, v64, v20);
LABEL_45:
            v51 = v67;
            v52 = [v67 institutionObject];

            v53 = v52;
            v54 = v51;
            v55 = sub_226B8D3E4(a2, v53, v54);

            *v69 = v55;
            v56 = *MEMORY[0x277D85DE8];
            return;
          }

          a3 = v70;
          (*v65)(v70, 1, 1, v72);
          sub_226B905C4(a3);
        }

        goto LABEL_32;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    v19 = sub_226D6EDFC();
    if (!v19)
    {
      goto LABEL_3;
    }

    sub_226B1F8F4(MEMORY[0x277D84F90]);
    v20 = v19;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_27;
  }

  v57 = swift_slowAlloc();
  v58 = sub_226B8CCBC(v57, v40, v20, sub_226B8A144);
  if (!v4)
  {
    a2 = v58;

    MEMORY[0x22AA8BEE0](v57, -1, -1);
    goto LABEL_45;
  }

  MEMORY[0x22AA8BEE0](v57, -1, -1);
  __break(1u);
}

BOOL sub_226B8A168(void **a1, SEL *a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v18 - v11;
  v13 = *a1;
  if (![v13 isAccountEnabled])
  {
    return 0;
  }

  v14 = [v13 *a2];
  v15 = v14 != 0;
  if (v14)
  {
    v16 = v14;
    sub_226D6D45C();

    (*(v5 + 32))(v12, v8, v4);
    (*(v5 + 56))(v12, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
  }

  sub_226B905C4(v12);
  return v15;
}

void sub_226B8A320(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v61 = a2;
  v58 = sub_226D6D61C();
  v3 = *(v58 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v58);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6D6DC();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_226D6D4AC();
  v11 = *(v59 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v59);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v60 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v53 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v24 = *a1;
  v25 = [v24 externalAccountId];
  if (v25)
  {
    v26 = v25;
    v27 = sub_226D6E39C();
    v54 = v28;
    v55 = v27;

    v29 = [v24 lastPassLinkingAttemptDate];
    if (v29)
    {
      v30 = v29;
      sub_226D6D45C();

      v31 = v58;
      (*(v3 + 104))(v6, *MEMORY[0x277CC9810], v58);
      sub_226D6D62C();
      (*(v3 + 8))(v6, v31);
      sub_226D6D23C();
      (*(v56 + 8))(v10, v57);
      v32 = v59;
      (*(v11 + 8))(v14, v59);
      v33 = *(v11 + 56);
      v33(v21, 0, 1, v32);
    }

    else
    {
      v33 = *(v11 + 56);
      v32 = v59;
      v33(v21, 1, 1, v59);
    }

    sub_226B72784(v21, v23);
    v46 = type metadata accessor for BankConnectPassLinkingRequestTask();
    v47 = v61;
    v61[3] = v46;
    v47[4] = sub_226B8CC58(&qword_27D7A7220, type metadata accessor for BankConnectPassLinkingRequestTask);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
    v49 = boxed_opaque_existential_1 + *(v46 + 20);
    sub_226D69D5C();
    v50 = v60;
    sub_226AF265C(v23, v60);
    v33(boxed_opaque_existential_1, 1, 1, v32);
    v51 = (boxed_opaque_existential_1 + *(v46 + 24));
    v52 = v54;
    *v51 = v55;
    v51[1] = v52;
    sub_226B3E298(v50, boxed_opaque_existential_1);
    sub_226B905C4(v23);
  }

  else
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v34 = sub_226D6E07C();
    __swift_project_value_buffer(v34, qword_28105F710);
    v35 = v24;
    v36 = sub_226D6E05C();
    v37 = sub_226D6E9CC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v62 = v39;
      *v38 = 136315138;
      v40 = [v35 accountId];
      v41 = sub_226D6E39C();
      v43 = v42;

      v44 = sub_226AC4530(v41, v43, &v62);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_226AB4000, v36, v37, "externalAccountId is nil for %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x22AA8BEE0](v39, -1, -1);
      MEMORY[0x22AA8BEE0](v38, -1, -1);
    }

    v45 = v61;
    v61[4] = 0;
    *v45 = 0u;
    *(v45 + 1) = 0u;
  }
}

void sub_226B8A8C0(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v151 = a2;
  v147 = a4;
  v148 = a3;
  v5 = sub_226D6B9BC();
  v6 = *(v5 - 8);
  v136 = v5;
  v137 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v134 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v133 = &v127 - v10;
  v138 = sub_226D69FCC();
  v146 = *(v138 - 8);
  v11 = *(v146 + 64);
  v12 = MEMORY[0x28223BE20](v138);
  v145 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v135 = &v127 - v14;
  v15 = sub_226D6BD9C();
  v143 = *(v15 - 8);
  v144 = v15;
  v16 = *(v143 + 64);
  MEMORY[0x28223BE20](v15);
  v142 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_226D6A30C();
  v140 = *(v18 - 8);
  *&v141 = v18;
  v19 = v140[8];
  MEMORY[0x28223BE20](v18);
  v139 = (&v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v127 - v26;
  v28 = sub_226D6D4AC();
  v149 = *(v28 - 8);
  v29 = *(v149 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *a1;
  sub_226D6794C();
  v33 = [v32 id];
  sub_226D6E39C();

  v34 = v150;
  sub_226D6791C();
  if (v34)
  {
    goto LABEL_2;
  }

  v131 = v25;
  v132 = v31;
  v150 = 0;

  v35 = v148[9];
  __swift_project_boxed_opaque_existential_1(v148 + 5, v148[8]);
  sub_226D6B3CC();

  v36 = v149;
  if ((*(v149 + 48))(v27, 1, v28) != 1)
  {
    v43 = v32;
    (*(v36 + 32))(v132, v27, v28);
    v45 = v139;
    v44 = v140;
    v46 = v141;
    (v140[13])(v139, *MEMORY[0x277CC7B60], v141);
    v129 = v28;
    v130 = sub_226D6A2FC();
    (v44[1])(v45, v46);
    v139 = sub_226D69F0C();
    v47 = sub_226D69DDC();
    v140 = v47;
    [v47 setReturnsObjectsAsFaults_];
    v48 = sub_226D6E5CC();
    [v47 setRelationshipKeyPathsForPrefetching_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_226D72B90;
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    *(v49 + 32) = sub_226D6E91C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v50 = swift_allocObject();
    v141 = xmmword_226D70840;
    *(v50 + 16) = xmmword_226D70840;
    v128 = v43;
    v51 = [v43 id];
    v52 = sub_226D6E39C();
    v54 = v53;

    *(v50 + 56) = MEMORY[0x277D837D0];
    *(v50 + 64) = sub_226B16404();
    *(v50 + 32) = v52;
    *(v50 + 40) = v54;
    *(v49 + 40) = sub_226D6E91C();
    v55 = swift_allocObject();
    v56 = MEMORY[0x277D84958];
    *(v55 + 16) = v141;
    v57 = MEMORY[0x277D849A0];
    *(v55 + 56) = v56;
    *(v55 + 64) = v57;
    *(v55 + 32) = v130;
    *(v49 + 48) = sub_226D6E91C();
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_226D71F40;
    *(v58 + 32) = sub_226D6E91C();
    v59 = swift_allocObject();
    *(v59 + 16) = v141;
    v60 = v142;
    sub_226D6BD6C();
    LODWORD(v50) = sub_226D6BD7C();
    (*(v143 + 8))(v60, v144);
    v61 = MEMORY[0x277D84A20];
    *(v59 + 56) = MEMORY[0x277D849A8];
    *(v59 + 64) = v61;
    *(v59 + 32) = v50;
    *(v58 + 40) = sub_226D6E91C();
    v62 = sub_226D6E5CC();

    v63 = objc_opt_self();
    v64 = [v63 orPredicateWithSubpredicates_];

    *(v49 + 56) = v64;
    v65 = sub_226D6E5CC();
    v66 = v140;

    v67 = [v63 andPredicateWithSubpredicates_];

    [v66 setPredicate_];
    v69 = v150;
    v68 = v151;
    v70 = sub_226D6EBBC();
    if (v69)
    {
      (*(v149 + 8))(v132, v129);

      return;
    }

    v71 = v70;
    MEMORY[0x28223BE20](v70);
    *(&v127 - 2) = v72;
    *(&v127 - 1) = v68;

    v73 = sub_226B86AF0(sub_226B9062C, (&v127 - 4), v71);
    v139 = v71;
    v74 = v132;
    v150 = 0;
    if (v73 >> 62)
    {
      v75 = sub_226D6EDFC();
    }

    else
    {
      v75 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v76 = v146;
    v77 = v147;
    v78 = v145;
    v79 = &selRef_setSortDescriptors_;

    if (v75 <= 0)
    {
      goto LABEL_26;
    }

    v80 = v148[19];
    __swift_project_boxed_opaque_existential_1(v148 + 15, v148[18]);
    v81 = sub_226D6B7EC();
    v144 = *(v81 + 16);
    if (v144)
    {
      v82 = 0;
      *&v141 = v76 + 8;
      v142 = (v76 + 32);
      v143 = v76 + 16;
      v83 = MEMORY[0x277D84F90];
      v84 = v138;
      v85 = v135;
      while (v82 < *(v81 + 16))
      {
        v86 = (*(v76 + 80) + 32) & ~*(v76 + 80);
        v87 = *(v76 + 72);
        (*(v76 + 16))(v85, v81 + v86 + v87 * v82, v84);
        if (sub_226D69FBC())
        {
          v88 = *v142;
          (*v142)(v78, v85, v84);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v152 = v83;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_226AE2590(0, *(v83 + 16) + 1, 1);
            v85 = v135;
            v83 = v152;
          }

          v91 = *(v83 + 16);
          v90 = *(v83 + 24);
          if (v91 >= v90 >> 1)
          {
            sub_226AE2590(v90 > 1, v91 + 1, 1);
            v85 = v135;
            v83 = v152;
          }

          *(v83 + 16) = v91 + 1;
          v92 = v83 + v86 + v91 * v87;
          v78 = v145;
          v84 = v138;
          v88(v92, v145, v138);
          v76 = v146;
        }

        else
        {
          (*v141)(v85, v84);
        }

        if (v144 == ++v82)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_45;
    }

    v83 = MEMORY[0x277D84F90];
LABEL_25:

    v93 = *(v83 + 16);

    v77 = v147;
    v74 = v132;
    v79 = &selRef_setSortDescriptors_;
    if (v93)
    {
LABEL_26:
      v94 = [v128 v79[70]];
      v95 = sub_226D6E39C();
      v97 = v96;

      v98 = v150;
      v99 = sub_226B8B904(v139, v95, v97, v151);
      if (v98)
      {
        (*(v149 + 8))(v74, v129);

LABEL_2:

        return;
      }

      v100 = v99;
      v150 = 0;

      if (v100 >> 62)
      {
        v125 = sub_226D6EDFC();
        v102 = v134;
        if (v125)
        {
          v126 = sub_226D6EDFC();
          v103 = MEMORY[0x277D84F90];
          v101 = v126;
          if (!v126)
          {

            v104 = MEMORY[0x277D84F90];
            goto LABEL_43;
          }

LABEL_30:
          v152 = v103;
          sub_226AE2090(0, v101 & ~(v101 >> 63), 0);
          if (v101 < 0)
          {
            __break(1u);
            return;
          }

          v104 = v152;
          v105 = v133;
          if ((v100 & 0xC000000000000001) != 0)
          {
            v106 = 0;
            do
            {
              MEMORY[0x22AA8AFD0](v106, v100);
              sub_226D69D5C();
              swift_unknownObjectRelease();
              v152 = v104;
              v108 = *(v104 + 16);
              v107 = *(v104 + 24);
              if (v108 >= v107 >> 1)
              {
                sub_226AE2090(v107 > 1, v108 + 1, 1);
                v104 = v152;
              }

              ++v106;
              *(v104 + 16) = v108 + 1;
              (*(v137 + 32))(v104 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v108, v105, v136);
            }

            while (v101 != v106);
          }

          else
          {
            v109 = 32;
            do
            {
              v110 = *(v100 + v109);
              sub_226D69D5C();

              v152 = v104;
              v112 = *(v104 + 16);
              v111 = *(v104 + 24);
              if (v112 >= v111 >> 1)
              {
                sub_226AE2090(v111 > 1, v112 + 1, 1);
                v104 = v152;
              }

              *(v104 + 16) = v112 + 1;
              (*(v137 + 32))(v104 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v112, v102, v136);
              v109 += 8;
              --v101;
            }

            while (v101);
          }

LABEL_43:
          [v128 maxAgeTransactionsRefreshRequest];
          v114 = v113;
          v115 = v149;
          v116 = v131;
          v117 = v132;
          v118 = v129;
          (*(v149 + 16))(v131, v132, v129);
          v119 = *(v115 + 56);
          v119(v116, 0, 1, v118);
          refreshed = type metadata accessor for BankConnectBackgroundRefreshTask();
          v121 = v147;
          v147[3] = refreshed;
          v121[4] = sub_226B8CC58(&qword_27D7A7230, type metadata accessor for BankConnectBackgroundRefreshTask);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v121);
          v123 = boxed_opaque_existential_1 + *(refreshed + 28);
          sub_226D6D51C();
          v124 = *(refreshed + 24);
          v119(boxed_opaque_existential_1 + v124, 1, 1, v118);
          *boxed_opaque_existential_1 = v104;
          sub_226B3E298(v116, boxed_opaque_existential_1 + v124);

          boxed_opaque_existential_1[1] = v114;
          (*(v115 + 8))(v117, v118);
          return;
        }
      }

      else
      {
        v101 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v102 = v134;
        v103 = MEMORY[0x277D84F90];
        if (v101)
        {
          goto LABEL_30;
        }
      }

      (*(v149 + 8))(v74, v129);
    }

    else
    {
      (*(v149 + 8))(v132, v129);
    }

    v77[4] = 0;
    *v77 = 0u;
    *(v77 + 1) = 0u;
    return;
  }

  sub_226B905C4(v27);
  if (qword_28105F708 != -1)
  {
LABEL_45:
    swift_once();
  }

  v37 = sub_226D6E07C();
  __swift_project_value_buffer(v37, qword_28105F710);
  v38 = sub_226D6E05C();
  v39 = sub_226D6E9CC();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v147;
  if (v40)
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_226AB4000, v38, v39, "Failed to compute the next background refresh date", v42, 2u);
    MEMORY[0x22AA8BEE0](v42, -1, -1);
  }

  v41[4] = 0;
  *v41 = 0u;
  *(v41 + 1) = 0u;
}

uint64_t sub_226B8B904(void (*a1)(void, void), void *a2, unint64_t a3, uint64_t a4)
{
  v84 = a2;
  v85 = a4;
  v66 = a1;
  v79 = sub_226D6D52C();
  v65 = *(v79 - 8);
  v6 = *(v65 + 64);
  v7 = MEMORY[0x28223BE20](v79);
  v83 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v82 = &v64 - v9;
  v10 = sub_226D67C0C();
  v80 = *(v10 - 8);
  v81 = v10;
  v11 = *(v80 + 64);
  MEMORY[0x28223BE20](v10);
  v78 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v4[13];
  v76 = v4[14];
  v73 = v4;
  v75 = __swift_project_boxed_opaque_existential_1(v4 + 10, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68C8, &qword_226D74270);
  v15 = sub_226D6B7FC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v69 = v14;
  v70 = v17;
  v19 = swift_allocObject();
  v86 = xmmword_226D70840;
  *(v19 + 16) = xmmword_226D70840;
  v20 = *MEMORY[0x277CC8008];
  v21 = *(v16 + 104);
  v71 = v15;
  v67 = v21;
  v21((v19 + v18), v20, v15);
  sub_226D6B80C();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
  v22 = swift_allocObject();
  *(v22 + 16) = v86;
  *(v22 + 32) = v84;
  *(v22 + 40) = a3;
  v74 = a3;

  v23 = v77;
  v24 = sub_226D6C15C();

  if (!v23)
  {
    v68 = 0;
    v77 = sub_226AE4C9C(v24);

    v25 = v73[13];
    v76 = v73[14];
    v75 = __swift_project_boxed_opaque_existential_1(v73 + 10, v25);
    v26 = v70;
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_226D71840;
    v28 = v27 + v18;
    v29 = v71;
    v30 = v67;
    v67(v28, *MEMORY[0x277CC8010], v71);
    v30(&v26[v28], *MEMORY[0x277CC8000], v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8C20, &qword_226D72160);
    v31 = sub_226D6B81C();
    v32 = *(v31 - 8);
    v33 = *(v32 + 72);
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v86;
    (*(v32 + 104))(v35 + v34, *MEMORY[0x277CC8018], v31);
    v36 = swift_allocObject();
    *(v36 + 16) = v86;
    *(v36 + 32) = v84;
    *(v36 + 40) = v74;

    v24 = v75;
    v37 = v68;
    v38 = sub_226D6C15C();
    v68 = v37;
    if (v37)
    {
    }

    else
    {
      v40 = v38;

      v41 = sub_226AE4C9C(v40);

      v85 = sub_226B8C098(v41, v77);
      v87 = MEMORY[0x277D84F90];
      v42 = v66;
      if (v66 >> 62)
      {
        goto LABEL_35;
      }

      for (i = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
      {
        v44 = v81;
        if (!i)
        {
          break;
        }

        v45 = 0;
        v71 = v42 & 0xFFFFFFFFFFFFFF8;
        v72 = v42 & 0xC000000000000001;
        v69 = i;
        v70 = (v42 + 32);
        v73 = (v85 + 56);
        v76 = (v65 + 8);
        v77 = v80 + 16;
        v75 = (v80 + 8);
        while (1)
        {
          if (v72)
          {
            v47 = MEMORY[0x22AA8AFD0](v45, v66);
          }

          else
          {
            if (v45 >= *(v71 + 16))
            {
              goto LABEL_34;
            }

            v47 = *&v70[8 * v45];
          }

          v84 = v47;
          v48 = __OFADD__(v45, 1);
          v49 = v45 + 1;
          if (v48)
          {
            break;
          }

          v74 = v49;
          v50 = 1 << *(v85 + 32);
          if (v50 < 64)
          {
            v51 = ~(-1 << v50);
          }

          else
          {
            v51 = -1;
          }

          v52 = v51 & *(v85 + 56);
          v53 = (v50 + 63) >> 6;

          v54 = 0;
          do
          {
            if (!v52)
            {
              v42 = v82;
              v56 = v83;
              while (1)
              {
                v55 = v54 + 1;
                if (__OFADD__(v54, 1))
                {
                  break;
                }

                if (v55 >= v53)
                {

                  sub_226D6EF6C();
                  v46 = *(v87 + 16);
                  sub_226D6EF9C();
                  sub_226D6EFAC();
                  sub_226D6EF7C();
                  goto LABEL_10;
                }

                v52 = v73[v55];
                ++v54;
                if (v52)
                {
                  v54 = v55;
                  goto LABEL_26;
                }
              }

              __break(1u);
              goto LABEL_33;
            }

            v55 = v54;
            v42 = v82;
            v56 = v83;
LABEL_26:
            v57 = __clz(__rbit64(v52));
            v52 &= v52 - 1;
            v58 = v80;
            v59 = v78;
            (*(v80 + 16))(v78, *(v85 + 48) + *(v80 + 72) * (v57 | (v55 << 6)), v44);
            v60 = v42;
            sub_226D67BDC();
            sub_226D69EBC();
            LODWORD(v86) = sub_226D6D4EC();
            v42 = *v76;
            v61 = v56;
            v62 = v79;
            (*v76)(v61, v79);
            v63 = v60;
            v44 = v81;
            (v42)(v63, v62);
            (*(v58 + 8))(v59, v44);
          }

          while ((v86 & 1) == 0);

LABEL_10:
          v45 = v74;
          if (v74 == v69)
          {
            v24 = v87;
            goto LABEL_31;
          }
        }

LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        ;
      }

      v24 = MEMORY[0x277D84F90];
LABEL_31:
    }
  }

  return v24;
}

uint64_t sub_226B8C098(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D67C0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v26 - v11;
  result = MEMORY[0x28223BE20](v10);
  v15 = v26 - v14;
  v16 = 0;
  v27 = a1;
  v28 = a2;
  v19 = *(a1 + 56);
  v18 = a1 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v5 + 32;
  v26[3] = v5 + 16;
  v26[1] = v5 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v5 + 16))(v15, *(v27 + 48) + *(v5 + 72) * (v25 | (v24 << 6)), v4);
      (*(v5 + 32))(v9, v15, v4);
      sub_226C26E88(v12, v9);
      result = (*(v5 + 8))(v12, v4);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_226B8C2B4(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_226D6EDBC();
    sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
    sub_226AE59FC();
    sub_226D6E8DC();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_226AD3C20();
      return;
    }

    while (1)
    {
      sub_226C264CC(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_226D6EE2C())
      {
        sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_226B8C49C(void **a1, void *a2)
{
  v4 = sub_226D67C0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v11 = v9;
  sub_226D67C1C();
  v12 = sub_226D6C12C();
  (*(v5 + 8))(v8, v4);
  return v12 & 1;
}

uint64_t sub_226B8C5CC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v52 - v9;
  v11 = sub_226D6BD9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v60 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v52 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v52 - v22;
  if (sub_226B8E9C4(a1))
  {
    v53 = v8;
    v57 = v10;
    v24 = [a1 notificationSubscriptionObject];
    v25 = [a1 institutionObject];
    sub_226D6841C();

    sub_226D6BD8C();
    v26 = MEMORY[0x277CC8140];
    sub_226B8CC58(&qword_27D7A7250, MEMORY[0x277CC8140]);
    sub_226D6E53C();
    sub_226B8CC58(&qword_27D7A7258, v26);
    sub_226D6F3DC();
    sub_226B8CC58(&qword_27D7A7260, v26);
    sub_226D6ED2C();
    v56 = *(v12 + 8);
    v56(v18, v11);
    v27 = [a1 consentID];
    v28 = sub_226D6E39C();
    v58 = v29;
    v59 = v28;

    if (v24 && (v30 = [v24 subscriptionID]) != 0)
    {
      v31 = v30;
      v32 = sub_226D6E39C();
      v54 = v33;
      v55 = v32;
    }

    else
    {
      v54 = 0;
      v55 = 0;
    }

    (*(v12 + 16))(v60, v21, v11);
    if (v24)
    {
      v37 = [v24 registerRequestAttemptCount];
      v38 = [v24 lastRegisterRequestAttemptDate];
      if (v38)
      {
        v39 = v53;
        v40 = v38;
        sub_226D6D45C();

        v41 = 0;
      }

      else
      {
        v41 = 1;
        v39 = v53;
      }

      v44 = sub_226D6D4AC();
      (*(*(v44 - 8) + 56))(v39, v41, 1, v44);
      v45 = v39;
      v43 = v57;
      sub_226B72784(v45, v57);
    }

    else
    {
      v42 = sub_226D6D4AC();
      v43 = v57;
      (*(*(v42 - 8) + 56))(v57, 1, 1, v42);
      v37 = 0;
    }

    v46 = type metadata accessor for BankConnectNotificationEventsRegisterTask();
    v47 = &a2[v46[9]];
    sub_226D6D46C();

    v48 = v21;
    v49 = v56;
    v56(v48, v11);
    v49(v23, v11);
    v50 = v58;
    *a2 = v59;
    *(a2 + 1) = v50;
    v51 = v54;
    *(a2 + 2) = v55;
    *(a2 + 3) = v51;
    (*(v12 + 32))(&a2[v46[6]], v60, v11);
    *&a2[v46[7]] = v37;
    sub_226B72784(v43, &a2[v46[8]]);
    return (*(*(v46 - 1) + 56))(a2, 0, 1, v46);
  }

  else
  {
    v34 = type metadata accessor for BankConnectNotificationEventsRegisterTask();
    v35 = *(*(v34 - 8) + 56);

    return v35(a2, 1, 1, v34);
  }
}

uint64_t sub_226B8CB4C()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 5);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 15);
  v2 = v0[21];

  return swift_deallocClassInstance();
}

uint64_t sub_226B8CC58(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_226B8CCBC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_226B8CD4C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_226B8CD4C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_226D568FC(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_226B8CEB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_226AC484C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_226B8CF50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_226AC484C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_226B8CFE8(uint64_t a1, uint64_t a2, double a3)
{
  v5 = a1;
  v46 = a2;
  v47 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_226D6EDFC();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v54 = MEMORY[0x277D84F90];
  sub_226AE2510(0, v6 & ~(v6 >> 63), 0);
  v7 = v54;
  if (v47)
  {
    result = sub_226D6EDAC();
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    result = sub_226D6ED6C();
    v9 = *(v5 + 36);
  }

  v51 = result;
  v52 = v9;
  v53 = v47 != 0;
  if ((v6 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 < 0)
    {
      v12 = v5;
    }

    v42 = v5 + 56;
    v43 = v12;
    v40[1] = v3;
    v41 = v5 + 64;
    v44 = v6;
    v45 = v5;
    while (v11 < v6)
    {
      if (__OFADD__(v11++, 1))
      {
        goto LABEL_37;
      }

      v15 = v51;
      v16 = v52;
      v17 = v53;
      sub_226CCCCEC(v51, v52, v53, v5);
      v19 = v18;
      sub_226B89680(v18, v48, a3);

      v54 = v7;
      v21 = *(v7 + 16);
      v20 = *(v7 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_226AE2510((v20 > 1), v21 + 1, 1);
      }

      v22 = v49;
      v23 = v50;
      v24 = __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
      v25 = *(*(v22 - 8) + 64);
      MEMORY[0x28223BE20](v24);
      v27 = v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v27);
      sub_226B8CEB8(v21, v27, &v54, v22, v23);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v48);
      v7 = v54;
      if (v47)
      {
        if (!v17)
        {
          goto LABEL_42;
        }

        v29 = sub_226D6EDCC();
        v5 = v45;
        if (v29)
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v6 = v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7288, &qword_226D74970);
        v13 = sub_226D6E8CC();
        sub_226D6EE4C();
        result = v13(v48, 0);
        if (v11 == v6)
        {
LABEL_34:
          sub_226AE5444(v51, v52, v53);
          return v7;
        }
      }

      else
      {
        if (v17)
        {
          goto LABEL_43;
        }

        v5 = v45;
        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        v30 = 1 << *(v45 + 32);
        if (v15 >= v30)
        {
          goto LABEL_38;
        }

        v31 = v15 >> 6;
        v32 = *(v42 + 8 * (v15 >> 6));
        if (((v32 >> v15) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v45 + 36) != v16)
        {
          goto LABEL_40;
        }

        v33 = v32 & (-2 << (v15 & 0x3F));
        if (v33)
        {
          v30 = __clz(__rbit64(v33)) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v34 = v31 << 6;
          v35 = v31 + 1;
          v36 = (v41 + 8 * v31);
          while (v35 < (v30 + 63) >> 6)
          {
            v38 = *v36++;
            v37 = v38;
            v34 += 64;
            ++v35;
            if (v38)
            {
              result = sub_226AE5444(v15, v16, 0);
              v30 = __clz(__rbit64(v37)) + v34;
              goto LABEL_33;
            }
          }

          result = sub_226AE5444(v15, v16, 0);
        }

LABEL_33:
        v39 = *(v5 + 36);
        v51 = v30;
        v52 = v39;
        v53 = 0;
        v6 = v44;
        if (v11 == v44)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_226B8D3E4(uint64_t a1, void *a2, void *a3)
{
  v91 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v102 = v79 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v79 - v13;
  v90 = sub_226D6B9BC();
  v15 = *(v90 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v90);
  v100 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_226D6D4AC();
  v18 = *(v104 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v104);
  v99 = v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v98 = v79 - v22;
  v93 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v23 = sub_226D6EDFC();
  }

  else
  {
    v23 = *(a1 + 16);
  }

  v24 = MEMORY[0x277D84F90];
  if (!v23)
  {
    return v24;
  }

  v111 = MEMORY[0x277D84F90];
  v92 = v23;
  sub_226AE2510(0, v23 & ~(v23 >> 63), 0);
  v101 = v111;
  if (v93)
  {
    result = sub_226D6EDAC();
  }

  else
  {
    v27 = -1 << *(a1 + 32);
    result = sub_226D6ED6C();
    v26 = *(a1 + 36);
  }

  v108 = result;
  v109 = v26;
  v110 = v93 != 0;
  v28 = v92;
  if ((v92 & 0x8000000000000000) == 0)
  {
    v87 = v10;
    v79[1] = v3;
    v29 = 0;
    v86 = (v18 + 16);
    v103 = (v18 + 56);
    v85 = (v15 + 32);
    v84 = (v18 + 32);
    v83 = (v18 + 8);
    v81 = a1 + 56;
    v30 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v30 = a1;
    }

    v82 = v30;
    v80 = a1 + 64;
    v89 = a2;
    v31 = v102;
    v88 = a1;
    v97 = v14;
    while (v29 < v28)
    {
      if (__OFADD__(v29++, 1))
      {
        goto LABEL_48;
      }

      v95 = v109;
      v96 = v108;
      v94 = v110;
      sub_226CCCCEC(v108, v109, v110, a1);
      v35 = v34;
      v36 = [a2 firstTransactionsRequestWindow];
      v37 = v36;
      if (v36)
      {
        [v36 doubleValue];
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      [a2 maxAgeTransactionsFirstRequest];
      v41 = v40;
      v42 = [v91 authorizedAt];
      v43 = v98;
      sub_226D6D45C();

      sub_226D69D5C();
      (*v86)(v99, v43, v104);
      v44 = [v35 earliestHistoricalTransactionsRequestStartDate];
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

      v47 = *v103;
      v48 = 1;
      (*v103)(v14, v46, 1, v104);
      v49 = [v35 historicalTransactionsRequestAttemptCount];
      v50 = [v35 lastHistoricalTransactionsRequestAttemptDate];
      if (v50)
      {
        v51 = v50;
        sub_226D6D45C();

        v48 = 0;
      }

      v52 = 1;
      v47(v31, v48, 1, v104);
      v53 = [v35 oldestFetchedHistoricalTransactionTimestamp];
      v54 = v87;
      if (v53)
      {
        v55 = v53;
        sub_226D6D45C();

        v52 = 0;
      }

      v56 = v104;
      v47(v54, v52, 1, v104);
      Task = type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask();
      v106 = Task;
      v107 = sub_226B8CC58(&qword_27D7A7280, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v105);
      (*v85)(boxed_opaque_existential_1, v100, v90);
      *(boxed_opaque_existential_1 + Task[5]) = v41;
      v59 = boxed_opaque_existential_1 + Task[6];
      *v59 = v39;
      v59[8] = v37 == 0;
      (*v84)(boxed_opaque_existential_1 + Task[7], v99, v56);
      sub_226B72784(v97, boxed_opaque_existential_1 + Task[8]);
      *(boxed_opaque_existential_1 + Task[9]) = v49;
      sub_226B72784(v102, boxed_opaque_existential_1 + Task[10]);
      sub_226B72784(v54, boxed_opaque_existential_1 + Task[11]);
      (*v83)(v98, v56);

      v111 = v101;
      v61 = *(v101 + 16);
      v60 = *(v101 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_226AE2510((v60 > 1), v61 + 1, 1);
      }

      v62 = v106;
      v63 = v107;
      v64 = __swift_mutable_project_boxed_opaque_existential_1(v105, v106);
      v65 = *(*(v62 - 8) + 64);
      MEMORY[0x28223BE20](v64);
      v67 = v79 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v68 + 16))(v67);
      sub_226B8CEB8(v61, v67, &v111, v62, v63);
      __swift_destroy_boxed_opaque_existential_0Tm(v105);
      v101 = v111;
      if (v93)
      {
        a2 = v89;
        a1 = v88;
        v31 = v102;
        result = v96;
        v14 = v97;
        if (!v94)
        {
          goto LABEL_53;
        }

        if (sub_226D6EDCC())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7288, &qword_226D74970);
        v32 = sub_226D6E8CC();
        sub_226D6EE4C();
        result = v32(v105, 0);
      }

      else
      {
        a2 = v89;
        a1 = v88;
        v31 = v102;
        result = v96;
        v14 = v97;
        if (v94)
        {
          goto LABEL_54;
        }

        if ((v96 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        v69 = 1 << *(v88 + 32);
        if (v96 >= v69)
        {
          goto LABEL_49;
        }

        v70 = v96 >> 6;
        v71 = *(v81 + 8 * (v96 >> 6));
        if (((v71 >> v96) & 1) == 0)
        {
          goto LABEL_50;
        }

        if (*(v88 + 36) != v95)
        {
          goto LABEL_51;
        }

        v72 = v71 & (-2 << (v96 & 0x3F));
        if (v72)
        {
          v69 = __clz(__rbit64(v72)) | v96 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v73 = v70 << 6;
          v74 = v70 + 1;
          v75 = (v80 + 8 * v70);
          while (v74 < (v69 + 63) >> 6)
          {
            v77 = *v75++;
            v76 = v77;
            v73 += 64;
            ++v74;
            if (v77)
            {
              result = sub_226AE5444(v96, v95, 0);
              v69 = __clz(__rbit64(v76)) + v73;
              goto LABEL_44;
            }
          }

          result = sub_226AE5444(v96, v95, 0);
        }

LABEL_44:
        v78 = *(a1 + 36);
        v108 = v69;
        v109 = v78;
        v110 = 0;
      }

      v28 = v92;
      if (v29 == v92)
      {
        sub_226AE5444(v108, v109, v110);
        return v101;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

void *sub_226B8DD2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v50 - v5;
  sub_226D6842C();
  v7 = sub_226D6840C();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v8 = sub_226D6E91C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_226D71F40;
  *(v9 + 32) = v8;
  v10 = v8;
  *(v9 + 40) = MEMORY[0x22AA84480]();
  v11 = sub_226D6E5CC();

  v12 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v7 setPredicate_];
  v13 = v63;
  v14 = sub_226D6EBBC();
  v15 = v13;
  if (v13)
  {

    return v9;
  }

  v9 = MEMORY[0x277D84F90];
  v52 = v10;
  v63 = v6;
  v16 = v14;
  if (v14 >> 62)
  {
    goto LABEL_24;
  }

  v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v18 = v52;
  if (!v17)
  {
LABEL_25:

    return v9;
  }

LABEL_5:
  v50[1] = v15;
  v51 = v7;
  v56 = v4;
  v67 = v9;
  result = sub_226AE2510(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v9 = v67;
    v21 = v16;
    v57 = v16 & 0xC000000000000001;
    v53 = v16 & 0xFFFFFFFFFFFFFF8;
    v54 = v17;
    v15 = v63;
    v55 = v16;
    while (1)
    {
      if (v57)
      {
        v22 = MEMORY[0x22AA8AFD0](v20, v21);
      }

      else
      {
        if ((v20 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          v17 = sub_226D6EDFC();
          v18 = v52;
          if (!v17)
          {
            goto LABEL_25;
          }

          goto LABEL_5;
        }

        if (v20 >= *(v53 + 16))
        {
          goto LABEL_23;
        }

        v22 = *(v21 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = [v22 id];
      v25 = sub_226D6E39C();
      v27 = v26;

      v28 = [v23 earliestUpdateRequestStartDate];
      v61 = v9;
      v62 = v20;
      v59 = v27;
      v60 = v25;
      if (v28)
      {
        v29 = v28;
        sub_226D6D45C();

        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      v7 = sub_226D6D4AC();
      v31 = *(*(v7 - 1) + 56);
      v32 = 1;
      v31(v15, v30, 1, v7);
      v33 = [v23 updateRequestAttemptCount];
      v34 = [v23 lastUpdateRequestAttemptDate];
      v58 = v33;
      if (v34)
      {
        v35 = v34;
        v4 = v56;
        sub_226D6D45C();

        v32 = 0;
      }

      else
      {
        v4 = v56;
      }

      v31(v4, v32, 1, v7);
      Task = type metadata accessor for BankConnectInstitutionDataFetchTask();
      v65 = Task;
      v66 = sub_226B8CC58(&qword_27D7A7270, type metadata accessor for BankConnectInstitutionDataFetchTask);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
      sub_226D6D46C();
      v38 = Task[6];
      v31(boxed_opaque_existential_1 + v38, 1, 1, v7);
      v39 = Task[8];
      v31(boxed_opaque_existential_1 + v39, 1, 1, v7);
      v40 = (boxed_opaque_existential_1 + Task[5]);
      v41 = v59;
      *v40 = v60;
      v40[1] = v41;
      sub_226B3E298(v63, boxed_opaque_existential_1 + v38);
      *(boxed_opaque_existential_1 + Task[7]) = v58;
      sub_226B3E298(v4, boxed_opaque_existential_1 + v39);

      v67 = v61;
      v16 = *(v61 + 16);
      v42 = *(v61 + 24);
      if (v16 >= v42 >> 1)
      {
        sub_226AE2510((v42 > 1), v16 + 1, 1);
      }

      v20 = v62 + 1;
      v43 = v65;
      v44 = v66;
      v45 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
      v46 = *(*(v43 - 8) + 64);
      MEMORY[0x28223BE20](v45);
      v48 = v50 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v49 + 16))(v48);
      sub_226B8CEB8(v16, v48, &v67, v43, v44);
      __swift_destroy_boxed_opaque_existential_0Tm(v64);
      v9 = v67;
      v21 = v55;
      v15 = v63;
      if (v54 == v20)
      {

        return v9;
      }
    }
  }

  __break(1u);
  return result;
}